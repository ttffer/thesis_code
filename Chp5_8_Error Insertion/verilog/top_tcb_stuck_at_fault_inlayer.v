`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/20/2022 01:04:27 PM
// Design Name: 
// Module Name: top_tcb_stuck_at_fault_inlayer
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


module top_tcb_stuck_at_fault_inlayer(
input clk,
input rst,
input [1024-1:0] img_source,
output [31:0] number,
input valid_top,
output  ready_top

,input clk_enable
,input [31:0]   constant_number
);
//wire clk_enable;
wire [121*8-1:0] img_re_assign; 
wire layer0_ready,layer2_ready
;wire   [20*32-1:0] layer0_out;
wire   [30*10-1:0] layer2_out;
assign img_re_assign = img_source[121*8-1:0];
layer0_tcb_121x32x10 DUT_layer0   (.clk(clk),.rst(rst),.img(img_re_assign),.layer_out(layer0_out),.ready(layer0_ready),.valid(valid_top));



wire    [20*32-1:0] infected_layer0_out;
wire    [20-1:0]    TCB_original_codeword_line;
wire    [20-1:0]    TCB_infected_codeword_line;

assign TCB_original_codeword_line=layer0_out[20-1:0];
eorro_inLayer  
    ERROR_INSERTION_CODEWORD_INLAYER_TCB_TOP
    (
    .i_clk                  (clk),
    .i_clk_en               (clk_enable),
    .i_rst                  (rst),
    .constant               (constant_number),
    .original_codeword_line (TCB_original_codeword_line),
    .infected_codeword_line (TCB_infected_codeword_line)
    );
    
assign infected_layer0_out={layer0_out[20*32-1:20],TCB_infected_codeword_line};


layer2_tcb_121x32x10 DUT_layer2   (.clk(clk),.rst(rst),.layer_in(infected_layer0_out),.layer_out(layer2_out),.ready(layer2_ready),.valid(layer0_ready));
comparator DUT_comparator (.clk(clk),.rst(rst),.layer_out(layer2_out),.predict(number),.ready(ready_top),.valid(layer2_ready));

endmodule
