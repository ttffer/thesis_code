`timescale 1ns / 10ps
`define CYCLE_TIME 30.0
`define DC_SDFFILE "../../../dc/run/CHIP_syn.sdf"
`define ICC_SDFFILE "../../../icc/run/CHIP_pr.sdf"
module tb_for_combine;

    parameter DATA_WIDTH = 32;




    reg top_axi_clk = 1'b0;
    reg top_reset_n = 1'b0;
    reg top_s_axis_valid = 0;
    reg [DATA_WIDTH-1:0] top_s_axis_data;

    reg top_m_axis_ready;
    reg top_s_axis_last;
    wire [3:0] top_m_axis_data;
    wire top_axis_ready, top_m_axis_valid, top_m_axis_last;
    reg [ 31:0] count;

    reg [8-1:0] test1 [0:1280];

    always #(`CYCLE_TIME / 2) top_axi_clk = (~top_axi_clk);
    integer now;
    always @(posedge top_axi_clk) begin
        if (~top_reset_n) now <= 0;
        else now = now + 1;
    end
    localparam foot = 4;
    always @(negedge top_axi_clk) begin
        if (~top_reset_n) count <= 0;
        else begin
            if (top_axis_ready) begin
                count = count + 1'b1;
                top_s_axis_data = {
                    test1[count*foot+3], test1[count*foot+2], test1[count*foot+1], test1[count*foot]
                };
            end
        end
    end
    //axis_top_ver1211 #(DATA_WIDTH) DUT1 
    axis_top_ver1126 DUT1 (
        .axi_clk(top_axi_clk),  //input
        .axi_reset_n(top_reset_n),  //input
        .s_axis_valid(top_s_axis_valid),  //input
        .s_axis_data(top_s_axis_data),  //input

        .s_axis_ready(top_axis_ready),  //output

        .m_axis_valid(top_m_axis_valid),  //output
        .m_axis_data (top_m_axis_data),   //output

        .m_axis_ready(top_m_axis_ready),  //input
        .s_axis_last (top_s_axis_last),   //input

        .m_axis_last(top_m_axis_last)  //output
    );
    initial begin
        $monitor("M_AXI_DATA:%d", top_m_axis_data);
        $readmemb("/users/m1053011/Desktop/tcbnn/verilog/img_10.txt", test1);
    end
    initial begin
        top_axi_clk = 0;
        count = 0;
        top_s_axis_valid = 1'b1;
        top_m_axis_ready = 1'b1;
        top_s_axis_last = 1'b0;
        top_s_axis_data = {32{1'b0}};
        #(`CYCLE_TIME * 2) @(posedge top_axi_clk) #(`CYCLE_TIME / 2) top_reset_n = 1'b0;
        @(posedge top_axi_clk) #(`CYCLE_TIME / 2) top_reset_n = 1'b1;
        #(`CYCLE_TIME / 2) count = -1;

        #(`CYCLE_TIME * 500) $finish;
    end


    initial begin
`ifdef RTL_SIM
        begin
            $display("*****************RTL Simulation begins dump_waveform*****************\n\n");
            $fsdbDumpfile("rtl_sim_axis_top.fsdb");
            $fsdbDumpMDA;
            $fsdbDumpvars;
        end
`endif

`ifdef PRE_SIM
        begin
            $display(
                "*****************PRE_SIM Gate Level Simulation begins dump_waveform*****************\n\n");
            $fsdbDumpfile("pre_sim_axis_top_gate_level.fsdb");
            $fsdbDumpMDA;
            $fsdbDumpvars;
        end
`endif

`ifdef POST_SIM
        begin
            $display(
                "*****************POST_SIM Gate Level Simulation begins dump_waveform*****************\n\n");
            $fsdbDumpfile("post_sim_axis_top_gate_level.fsdb");
            $fsdbDumpMDA;
            $fsdbDumpvars;

            $sdf_annotate(`DC_SDFFILE, DUT1);
        end
`endif
`ifdef DUMP_VCD
        begin
            $display("*****************Dumping VCD waveform*****************\n\n");
            $dumpfile("axis_top_ver1126_syn.vcd");
            $dumpvars(0, DUT1);
        end
`endif
`ifdef SDF
        begin
            $display(
                "*****************Post Layout Simulation begins dump_waveform*****************\n\n");
            $fsdbDumpfile("post_layout_sim_axis_top_gate_level.fsdb");
            $fsdbDumpMDA;
            $fsdbDumpvars;

            $sdf_annotate(`ICC_SDFFILE, DUT1);
        end
`endif
    end




endmodule
