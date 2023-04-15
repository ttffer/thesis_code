`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2022 02:28:02 PM
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb(

    );
    reg clk,rst;
    reg [1024-1:0] img;
    reg valid;
    wire ready;
    wire [31:0]     predict_number;    
    //
    reg                     clk_enable;
    reg     [30-1:0]        test_original_codeword_line;
    wire    [30-1:0]        test_infected_codeword_line;
    reg [31:0]      cons_number ;
    
    reg [4:0] random_idx_in_tb;
    error_insert  
    ERROR_INSERTION_CODEWORD
    (
    .i_clk                  (clk),
    .i_clk_en               (clk_enable),
    .i_rst                  (rst),
    .constant               (cons_number),
    .original_codeword_line (test_original_codeword_line),
    .infected_codeword_line (test_infected_codeword_line)
    );
    
    top_tcb_12132_10 TOP_DUT(
    .clk        (clk),
    .rst        (rst),
    .img_source (img),
    .number     (predict_number),
    .valid_top  (valid),
    .ready_top  (ready)       
    );
    wire [31:0] infected_predic_number;
    top_tcb_stuck_at_fault TOP_STUCK_AT_FAULT_DUT(
    .clk        (clk),
    .rst        (rst),
    .img_source (img),
    .number     (infected_predic_number),
    .valid_top  (valid),
    
    .ready_top  (TOP_STUCK_AT_FAULT_DUT_ready),
    .clk_enable(clk_enable),
    .constant_number(cons_number)
    ,.random_idx(random_idx_in_tb)

    );
    wire [31:0] infected_inlayer_predic_number;
    top_tcb_stuck_at_fault_inlayer TOP_STUCK_AT_FAULT_INLAYER_DUT(
    .clk        (clk),
    .rst        (rst),
    .img_source (img),
    .number     (infected_inlayer_predic_number),
    .valid_top  (valid),
    
    .ready_top  (TOP_STUCK_AT_FAULT_DUT_ready),
    .clk_enable(clk_enable),
    .constant_number(cons_number)
    );
    wire [31:0] ancoded_predic_number;
    top_tcb_12132_10_ancoded_ver2 TOP_DUT_ancoded    
    (
    .clk        (clk),
    .rst        (rst),
    .img_source (img),
    .number     (ancoded_predic_number),
    .valid_top  (valid),
    
    .ready_top  (TOP_DUT_ancoded_ready)    , 
    .clk_enable(clk_enable),
    .constant_number(cons_number)  
    ,.random_idx(random_idx_in_tb)

    );
    wire [31:0] infected_in_layer_ancoded_predic_number;
    top_tcb_ancoded_fault_in_layer TOP_DUT_ancoded_inlayer_infected    
    (
    .clk        (clk),
    .rst        (rst),
    .img_source (img),
    .number     (infected_in_layer_ancoded_predic_number),
    .valid_top  (valid),
    
    .ready_top  (TOP_DUT_ancoded_ready)    , 
    .clk_enable(clk_enable),
    .constant_number(cons_number)  
    );
    
     wire [31:0] ancoded_predic_number_with_decoder;
    top_tcb_12132_10_ancoded_ver2_with_decoder TOP_DUT_ancoded_with_decoder    
    (
    .clk        (clk),
    .rst        (rst),
    .img_source (img),
    .number     (ancoded_predic_number_with_decoder),
    .valid_top  (valid),
    
    .ready_top  (TOP_DUT_ancoded_ready)    , 
    .clk_enable(clk_enable),
    .constant_number(cons_number)  
    ,.random_idx(random_idx_in_tb)
    
    );
    
    parameter test_data_size =1000;
    always #5 clk=~clk;
    //ans
    reg [31:0] ans_array [0:test_data_size-1];
    initial
    begin
        $readmemh("label.mem",ans_array);
    end
    //remember the hw output in reg
    reg [31:0]  hw_result   [0:test_data_size-1];
    reg [31:0]  hw_infected_result   [0:test_data_size-1];
    reg [31:0]  hw_ancoded_infected_result   [0:test_data_size-1];
     reg [31:0]  hw_ancoded_decoded_result   [0:test_data_size-1];
     reg [31:0]  hw_infected_inlayer_result   [0:test_data_size-1];
     reg [31:0]  hw_ancoded_infected_inlayer_result   [0:test_data_size-1];
    integer i,k;
    reg two_clk;
    always@(posedge clk) two_clk=~two_clk;
    
    always@(posedge two_clk or rst)
    begin 
        if(rst)
            begin
            k=-3;
                for (i=0;i<test_data_size;i=i+1)
                    hw_result[i] =0;
                    hw_infected_result[i]=0;
            end
        else
            begin
                hw_result[k] = predict_number;
                hw_infected_result[k] = infected_predic_number;
                hw_ancoded_infected_result[k] = ancoded_predic_number;
                 hw_ancoded_decoded_result[k] = ancoded_predic_number_with_decoder;
               hw_infected_inlayer_result[k] = infected_inlayer_predic_number;
               hw_ancoded_infected_inlayer_result[k] = infected_in_layer_ancoded_predic_number;
                k=k+1;
            end
    end
    
    
    reg end_flag;
    reg [31:0] hit;
    reg [31:0] infected_hit;
    reg [31:0] infected_inlayer_hit;
    reg [31:0] infected_ancoded_hit;
    reg [31:0] decoded_ancoded_hit;
    reg [31:0] infected_inlayer_ancoded_hit;
    integer temp;
    always@( end_flag)
        begin 
            if(end_flag==1'b0)
                begin
                    hit=0;
                    infected_hit=0;
                    infected_ancoded_hit=0;
                    decoded_ancoded_hit=0;
                    infected_inlayer_hit=0;
                    infected_inlayer_ancoded_hit=0;
                end
            else
                begin
                    for(temp=0;temp<test_data_size;temp=temp+1)
                    begin
                        //$display("temp is %d hw is %d ans is %d ", temp,hw_result[temp],ans_array[temp]);
                        if(hw_result[temp]==ans_array[temp])
                            begin
                                hit=hit+1;
                            end
                        if(hw_infected_result[temp]==ans_array[temp])
                            begin
                                infected_hit=infected_hit+1;
                            end
                        if(hw_ancoded_infected_result[temp]==ans_array[temp])
                            begin
                                infected_ancoded_hit=infected_ancoded_hit+1;
                            end
                        if(hw_ancoded_decoded_result[temp]==ans_array[temp])
                            begin
                                decoded_ancoded_hit=decoded_ancoded_hit+1;
                            end
                        if(hw_infected_inlayer_result[temp]==ans_array[temp])
                            begin
                                infected_inlayer_hit=infected_inlayer_hit+1;
                            end
                        if(hw_ancoded_infected_inlayer_result[temp]==ans_array[temp])
                            begin
                                infected_inlayer_ancoded_hit=infected_inlayer_ancoded_hit+1;
                            end
//                        if(hw_ancoded_decoded_result[temp]!=hw_ancoded_infected_result[temp])
//                            begin
//                                $display("decdoe result %d, infected result %d , temp %d"
//                                ,hw_ancoded_decoded_result[temp],hw_ancoded_infected_result[temp],temp);
//                            end
                        else
                            begin
                               // $display("temp is %d hw ils %d ans is %d ", temp,hw_result[temp],ans_array[temp]);
                            end
                    end//end for
                end//end else
        end//end always
        
integer error_index ;
initial    
    begin

    for(error_index=0;error_index<29;error_index=error_index+1)
        begin
    
        cons_number=32'd4294967295;
    //    cons_number =0;
        test_original_codeword_line=0;
        clk_enable=1'b1;
        
        random_idx_in_tb =error_index;
        clk=0;
        valid=1'b1;
        rst=1'b1; 
        
        end_flag=1'b0;  
        two_clk=0;
        #20 
        
        
        @(posedge clk)begin     
            rst=1'b0;
        end
        `include "/home/kuanyu/Desktop/TCB_test/TCB_CNN/py/py_out/pic_test_input.txt"
        #100 
        end_flag=1'b1;
        #10
        $display("***************************");
        $display("Error Index  %d", error_index);
        $display("hit %d", hit);
        $display("infected_hit %d", infected_hit);
        $display("infected_ancoded_hit %d", infected_ancoded_hit);
        $display("decoded_ancoded_hit %d", decoded_ancoded_hit);
        //$display("infected_inlayer_hit %d", infected_inlayer_hit);
        //$display("infected_inlayer_ancoded_hit %d", infected_inlayer_ancoded_hit);
        
    end
    $display("***************************");
    $finish;
    end
    
    

endmodule
