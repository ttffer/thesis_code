module layer2_tcb_144x16x10
(
    input clk,
    input rst,
   input valid,
   output  reg ready,
    input [20*16-1:0]  layer_in,
    output [29*10-1:0]   layer_out
);
parameter DATA_WIDTH   =   29;
reg [DATA_WIDTH-1:0]    layer_in_buffer    [0:16-1];
integer i;
always@(posedge clk )
    begin
        if(rst)
            begin
                for(i=0;i<16;i=i+1)
                    begin
                        layer_in_buffer[i]<=0;
                    end
            end
        else
        begin
       layer_in_buffer[0]<=layer_in[19:0];
       layer_in_buffer[1]<=layer_in[39:20];
       layer_in_buffer[2]<=layer_in[59:40];
       layer_in_buffer[3]<=layer_in[79:60];
       layer_in_buffer[4]<=layer_in[99:80];
       layer_in_buffer[5]<=layer_in[119:100];
       layer_in_buffer[6]<=layer_in[139:120];
       layer_in_buffer[7]<=layer_in[159:140];
       layer_in_buffer[8]<=layer_in[179:160];
       layer_in_buffer[9]<=layer_in[199:180];
       layer_in_buffer[10]<=layer_in[219:200];
       layer_in_buffer[11]<=layer_in[239:220];
       layer_in_buffer[12]<=layer_in[259:240];
       layer_in_buffer[13]<=layer_in[279:260];
       layer_in_buffer[14]<=layer_in[299:280];
       layer_in_buffer[15]<=layer_in[319:300];
        end
   end

wire [DATA_WIDTH-1:0]   in_buffer_weight0;
assign in_buffer_weight0=0+(0-(layer_in_buffer[1]<<0)-(layer_in_buffer[1]<<2)+(layer_in_buffer[1]<<6))+(0-(layer_in_buffer[2]<<0)-(layer_in_buffer[2]<<2)+(layer_in_buffer[2]<<6))-(0-(layer_in_buffer[3]<<0)-(layer_in_buffer[3]<<2)+(layer_in_buffer[3]<<6))-(0-(layer_in_buffer[5]<<0)-(layer_in_buffer[5]<<2)+(layer_in_buffer[5]<<6))-(0-(layer_in_buffer[8]<<0)-(layer_in_buffer[8]<<2)+(layer_in_buffer[8]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight1;
assign in_buffer_weight1=0+(0-(layer_in_buffer[1]<<0)-(layer_in_buffer[1]<<2)+(layer_in_buffer[1]<<6))+(0+(layer_in_buffer[5]<<0)-(layer_in_buffer[5]<<4)+(layer_in_buffer[5]<<6)+(layer_in_buffer[5]<<7))-(0-(layer_in_buffer[10]<<0)-(layer_in_buffer[10]<<2)+(layer_in_buffer[10]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight2;
assign in_buffer_weight2=0-(0-(layer_in_buffer[2]<<0)-(layer_in_buffer[2]<<2)+(layer_in_buffer[2]<<6))-(0-(layer_in_buffer[5]<<0)-(layer_in_buffer[5]<<2)+(layer_in_buffer[5]<<6))-(0-(layer_in_buffer[9]<<0)-(layer_in_buffer[9]<<2)+(layer_in_buffer[9]<<6))+(0-(layer_in_buffer[10]<<0)-(layer_in_buffer[10]<<2)+(layer_in_buffer[10]<<6))-(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight3;
assign in_buffer_weight3=0+(0-(layer_in_buffer[1]<<0)-(layer_in_buffer[1]<<2)+(layer_in_buffer[1]<<6))-(0-(layer_in_buffer[2]<<0)-(layer_in_buffer[2]<<2)+(layer_in_buffer[2]<<6))+(0-(layer_in_buffer[4]<<0)-(layer_in_buffer[4]<<2)+(layer_in_buffer[4]<<6))+(0-(layer_in_buffer[8]<<0)-(layer_in_buffer[8]<<2)+(layer_in_buffer[8]<<6))+(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight4;
assign in_buffer_weight4=0-(0-(layer_in_buffer[2]<<0)-(layer_in_buffer[2]<<2)+(layer_in_buffer[2]<<6))-(0-(layer_in_buffer[5]<<1)-(layer_in_buffer[5]<<3)+(layer_in_buffer[5]<<7))+(0-(layer_in_buffer[10]<<0)-(layer_in_buffer[10]<<2)+(layer_in_buffer[10]<<6))+(0-(layer_in_buffer[11]<<0)-(layer_in_buffer[11]<<2)+(layer_in_buffer[11]<<6))+(0-(layer_in_buffer[12]<<0)-(layer_in_buffer[12]<<2)+(layer_in_buffer[12]<<6))-(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight5;
assign in_buffer_weight5=0-(0-(layer_in_buffer[2]<<0)-(layer_in_buffer[2]<<2)+(layer_in_buffer[2]<<6))+(0-(layer_in_buffer[10]<<0)-(layer_in_buffer[10]<<2)+(layer_in_buffer[10]<<6))+(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight6;
assign in_buffer_weight6=0-(0-(layer_in_buffer[2]<<1)-(layer_in_buffer[2]<<3)+(layer_in_buffer[2]<<7))-(0-(layer_in_buffer[5]<<0)-(layer_in_buffer[5]<<2)+(layer_in_buffer[5]<<6))+(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight7;
assign in_buffer_weight7=0-(0-(layer_in_buffer[5]<<1)-(layer_in_buffer[5]<<3)+(layer_in_buffer[5]<<7))-(0+(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<4)+(layer_in_buffer[15]<<6)+(layer_in_buffer[15]<<7));
wire [DATA_WIDTH-1:0]   in_buffer_weight8;
assign in_buffer_weight8=0+(0-(layer_in_buffer[2]<<0)-(layer_in_buffer[2]<<2)+(layer_in_buffer[2]<<6))-(0-(layer_in_buffer[5]<<0)-(layer_in_buffer[5]<<2)+(layer_in_buffer[5]<<6))-(0-(layer_in_buffer[9]<<0)-(layer_in_buffer[9]<<2)+(layer_in_buffer[9]<<6))-(0-(layer_in_buffer[10]<<1)-(layer_in_buffer[10]<<3)+(layer_in_buffer[10]<<7))+(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight9;
assign in_buffer_weight9=0+(0-(layer_in_buffer[5]<<0)-(layer_in_buffer[5]<<2)+(layer_in_buffer[5]<<6))-(0-(layer_in_buffer[7]<<0)-(layer_in_buffer[7]<<2)+(layer_in_buffer[7]<<6))-(0-(layer_in_buffer[10]<<1)-(layer_in_buffer[10]<<3)+(layer_in_buffer[10]<<7))-(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<6));
wire [DATA_WIDTH-1:0]   weight_bias0;
assign weight_bias0=in_buffer_weight0+(-177);
wire [DATA_WIDTH-1:0]   weight_bias1;
assign weight_bias1=in_buffer_weight1+(-118);
wire [DATA_WIDTH-1:0]   weight_bias2;
assign weight_bias2=in_buffer_weight2+(-59);
wire [DATA_WIDTH-1:0]   weight_bias3;
assign weight_bias3=in_buffer_weight3+(-59);
wire [DATA_WIDTH-1:0]   weight_bias4;
assign weight_bias4=in_buffer_weight4+(59);
wire [DATA_WIDTH-1:0]   weight_bias5;
assign weight_bias5=in_buffer_weight5+(-118);
wire [DATA_WIDTH-1:0]   weight_bias6;
assign weight_bias6=in_buffer_weight6+(118);
wire [DATA_WIDTH-1:0]   weight_bias7;
assign weight_bias7=in_buffer_weight7+(177);
wire [DATA_WIDTH-1:0]   weight_bias8;
assign weight_bias8=in_buffer_weight8+(-118);
wire [DATA_WIDTH-1:0]   weight_bias9;
assign weight_bias9=in_buffer_weight9+(177);
assign layer_out={
            weight_bias9,
            weight_bias8,
            weight_bias7,
            weight_bias6,
            weight_bias5,
            weight_bias4,
            weight_bias3,
            weight_bias2,
            weight_bias1,
            weight_bias0};
always@(posedge clk)
    begin
        if(rst)
            begin
                ready<=1'b0;
            end
        else
            begin
                ready<=valid;
            end
    end
endmodule
