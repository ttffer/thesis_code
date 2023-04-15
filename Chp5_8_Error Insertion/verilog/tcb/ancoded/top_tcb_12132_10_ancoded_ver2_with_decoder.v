`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2022 03:39:42 PM
// Design Name: 
// Module Name: top_tcb_12132_10_ancoded_ver2_with_decoder
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


module top_tcb_12132_10_ancoded_ver2_with_decoder(
input clk,
input rst,
input [121*8-1:0] img_source,
output [31:0] number,
input valid_top,
output  ready_top

,input clk_enable
,input [31:0]   constant_number
,input [4:0] random_idx

);
wire layer0_ready,layer2_ready
;wire   [20*32-1:0] layer0_out;
wire   [29*10-1:0] layer2_out;
layer0_tcb_121x32x10_ancoded_ver2 DUT_layer0   (.clk(clk),.rst(rst),.img(img_source),.layer_out(layer0_out),.ready(layer0_ready),.valid(valid_top));
layer2_tcb_121x32x10_ancoded_ver2 DUT_layer2   (.clk(clk),.rst(rst),.layer_in(layer0_out),.layer_out(layer2_out),.ready(layer2_ready),.valid(layer0_ready));




wire    [29*10-1:0] infected_layer2_out;
wire    [29-1:0]    TCB_original_codeword_line;
wire    [29-1:0]    TCB_infected_codeword_line;

assign TCB_original_codeword_line=layer2_out[29-1:0];
error_insertion_in_decoder  
    ERROR_INSERTION_CODEWORD_IN_TCB_TOP
    (
    .i_clk                  (clk),
    .i_clk_en               (clk_enable),
    .i_rst                  (rst),
    .constant               (constant_number),
    .original_codeword_line (TCB_original_codeword_line),
    .infected_codeword_line (TCB_infected_codeword_line)
    ,.random_idx(random_idx)

    );
   
assign infected_layer2_out={layer2_out[29*10-1:29],TCB_infected_codeword_line};


wire    [24*10-1:0] decoder_layer2_out;
generate
    genvar i;
    for(i=0;i<10;i=i+1)
        begin:ANdecdoer_array
            A59_decoder UDT_decoder 
            (
            .clk(clk),
//            .codeword(infected_layer2_out[29*i+:29]),
//            .message(decoder_layer2_out[24*i+:24])
                .codeword(infected_layer2_out[29*i+28:29*i+0]),
                .message(decoder_layer2_out[24*i+23:24*i+0])
            );
        end

endgenerate

comparator_quotient DUT_comparator (.clk(clk),.rst(rst),.layer_out(decoder_layer2_out),.predict(number),.ready(ready_top),.valid(layer2_ready));





endmodule
