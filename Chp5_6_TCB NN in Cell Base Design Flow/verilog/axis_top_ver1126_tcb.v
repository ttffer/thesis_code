`timescale 1ns / 1ps


module axis_top_ver1126 #(
    parameter DATA_WIDTH = 32,
    parameter OUT_WIDTH = 4,
    parameter NUMBER_OF_INPUT_WORDS = 32

) (
    input                       axi_clk,
    input                       axi_reset_n,
    input                       s_axis_valid,  //AXI4-S slave i/f
    input      [DATA_WIDTH-1:0] s_axis_data,
    output                      s_axis_ready,
    output                      m_axis_valid,  //AXI4-S master i/f
    output reg [ OUT_WIDTH-1:0] m_axis_data,
    input                       m_axis_ready,

    input  s_axis_last,
    output m_axis_last
);


    localparam bit_num = clogb2(NUMBER_OF_INPUT_WORDS - 1);  //Total number of input data.
    wire               fifo_wren;  // FIFO write enable
    reg  [bit_num-1:0] write_pointer;  // FIFO write pointer

    reg  [        3:0] mst_exec_state;  // State variable
    parameter [3:0] IDLE = 4'b0001,  // This is the initial/idle state 
    WRITE_FIFO = 4'b0010,  // In this state FIFO is written with the
                           // input stream data S_AXIS_TDATA 
    EXECUTION_STATE = 4'b0100,  // calculating fifo addition
    SEND_STATE = 4'b1000;  // sending msg to DMA

    wire top_ready_top;
    wire out_reg_wren;
    //wire out_reg_send_wren;

    wire axis_tlast;  //last signal


    reg  axis_tlast_delay;
    reg  axis_tvalid_delay;

    //I/O Connctions assignments
    assign m_axis_last = axis_tlast_delay;
    assign m_axis_valid = axis_tvalid_delay;
    assign s_axis_ready =   ((mst_exec_state == WRITE_FIFO) & (write_pointer <= NUMBER_OF_INPUT_WORDS-1));
    assign out_reg_wren = (mst_exec_state == EXECUTION_STATE);  //write enable out reg/ reg_send
    assign out_reg_send_wren =((mst_exec_state==SEND_STATE)& m_axis_ready);  //next part/output needs to be ready to receive signal


    wire writes_done;
    assign writes_done = ((write_pointer == (NUMBER_OF_INPUT_WORDS - 1)) || s_axis_last);
    //Control state machine 
    always @(posedge axi_clk) begin
        if (!axi_reset_n) begin
            mst_exec_state <= IDLE;
        end else begin
            case (mst_exec_state)
                IDLE:
                if (s_axis_valid) begin
                    mst_exec_state <= WRITE_FIFO;
                end else begin
                    mst_exec_state <= IDLE;
                end
                WRITE_FIFO:
                if (writes_done) begin
                    mst_exec_state <= EXECUTION_STATE;
                end else begin
                    mst_exec_state <= WRITE_FIFO;
                end
                EXECUTION_STATE: begin
                    if (top_ready_top) begin
                        mst_exec_state <= SEND_STATE;
                    end else begin
                        mst_exec_state <= EXECUTION_STATE;
                    end
                end
                SEND_STATE: begin
                    mst_exec_state <= IDLE;
                end


            endcase
        end
    end



    //pointer moving
    always @(posedge axi_clk) begin
        case (mst_exec_state)
            IDLE: begin
                begin
                    write_pointer <= {bit_num{1'b0}};
                end
            end
            WRITE_FIFO: begin
                if (write_pointer <= NUMBER_OF_INPUT_WORDS - 1) begin
                    if (fifo_wren) begin
                        write_pointer <= write_pointer + 1;
                    end
                    if ((write_pointer == (NUMBER_OF_INPUT_WORDS - 1)) || s_axis_last) begin
                        write_pointer <= {bit_num{1'b0}};
                    end
                end
            end
        endcase
    end  //end always


         //INPUT BUFFER PHASE
    reg [(DATA_WIDTH)-1:0] stream_data_fifo[0 : NUMBER_OF_INPUT_WORDS-1];
    // FIFO write enable generation
    assign fifo_wren = s_axis_valid & s_axis_ready;
    // Streaming input data is stored in FIFO
    integer i;
    always @(posedge axi_clk) begin
        if (fifo_wren) begin
            stream_data_fifo[write_pointer] <= s_axis_data;
        end else
            for (i = 0; i < NUMBER_OF_INPUT_WORDS; i = i + 1) begin
                stream_data_fifo[i] <= 0;
            end
    end


    wire rst;
    assign rst = !axi_reset_n;
    reg    [DATA_WIDTH*NUMBER_OF_INPUT_WORDS-1:0] img;

    wire [OUT_WIDTH-1:0] top_tcb_number;
    wire [121*8-1:0]tcb_img;
    assign tcb_img = img[121*8-1:0];
    top_tcb_121_16_10 top_tcb_DUT (
        .clk(axi_clk),
        .rst(rst),
        .img_source(tcb_img),
        .valid_top(out_reg_wren),
        .ready_top(top_ready_top),
        .number(top_tcb_number)
    );

    //EXECUTION PHASE
    integer j;
    always @(posedge axi_clk) begin
        if (out_reg_wren) begin
            for (j = 0; j < NUMBER_OF_INPUT_WORDS; j = j + 1)
            img[DATA_WIDTH*j+:DATA_WIDTH] <= stream_data_fifo[j];
        end else begin
            for (j = 0; j < NUMBER_OF_INPUT_WORDS; j = j + 1) img[DATA_WIDTH*j+:DATA_WIDTH] <= 0;
        end
    end

    //SEND PHASE
    always @(posedge axi_clk) begin
        if (out_reg_send_wren) begin
            m_axis_data <= top_tcb_number;
        end else m_axis_data <= 0;
    end

    wire m_axis_valid_last;
    assign m_axis_valid_last = ((mst_exec_state == SEND_STATE));
    wire axis_valid;
    assign axis_tlast = m_axis_valid_last;
    assign axis_valid = m_axis_valid_last;

    always @(posedge axi_clk) begin
        if (!axi_reset_n) begin
            axis_tlast_delay  <= 1'b0;
            axis_tvalid_delay <= 1'b0;
        end else begin
            axis_tlast_delay  <= axis_tlast;
            axis_tvalid_delay <= axis_valid;
        end
    end

    function integer clogb2(input integer bit_depth);
        begin
            for (clogb2 = 0; bit_depth > 0; clogb2 = clogb2 + 1) bit_depth = bit_depth >> 1;
        end
    endfunction
endmodule
