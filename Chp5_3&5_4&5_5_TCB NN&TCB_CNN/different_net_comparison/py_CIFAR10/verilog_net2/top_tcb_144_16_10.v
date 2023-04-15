module top_tcb_144_16_10(
input clk,
input rst,
input [144*8-1:0] img_source,
output [31:0] number,
input valid_top,
output  ready_top
);
wire layer0_ready,layer2_ready
;wire   [20*16-1:0] layer0_out;
wire   [29*10-1:0] layer2_out;
layer0_tcb_144x16x10 DUT_layer0   (.clk(clk),.rst(rst),.img(img_source),.layer_out(layer0_out),.ready(layer0_ready),.valid(valid_top));
layer2_tcb_144x16x10 DUT_layer2   (.clk(clk),.rst(rst),.layer_in(layer0_out),.layer_out(layer2_out),.ready(layer2_ready),.valid(layer0_ready));
comparator DUT_comparator (.clk(clk),.rst(rst),.layer_out(layer2_out),.predict(number),.ready(ready_top),.valid(layer2_ready));
endmodule
