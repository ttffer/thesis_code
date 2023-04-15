module layer2_tcb_121x16x10
(
    input clk,
    input rst,
   input valid,
   output  reg ready,
    input [19*16-1:0]  layer_in,
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
       layer_in_buffer[0]<=layer_in[18:0];
       layer_in_buffer[1]<=layer_in[37:19];
       layer_in_buffer[2]<=layer_in[56:38];
       layer_in_buffer[3]<=layer_in[75:57];
       layer_in_buffer[4]<=layer_in[94:76];
       layer_in_buffer[5]<=layer_in[113:95];
       layer_in_buffer[6]<=layer_in[132:114];
       layer_in_buffer[7]<=layer_in[151:133];
       layer_in_buffer[8]<=layer_in[170:152];
       layer_in_buffer[9]<=layer_in[189:171];
       layer_in_buffer[10]<=layer_in[208:190];
       layer_in_buffer[11]<=layer_in[227:209];
       layer_in_buffer[12]<=layer_in[246:228];
       layer_in_buffer[13]<=layer_in[265:247];
       layer_in_buffer[14]<=layer_in[284:266];
       layer_in_buffer[15]<=layer_in[303:285];
        end
   end

wire [DATA_WIDTH-1:0]   in_buffer_weight0;
assign in_buffer_weight0=0+(0-(layer_in_buffer[0]<<0)-(layer_in_buffer[0]<<2)+(layer_in_buffer[0]<<7))-(0-(layer_in_buffer[2]<<0)+(layer_in_buffer[2]<<3)+(layer_in_buffer[2]<<6))-(0+(layer_in_buffer[3]<<0)+(layer_in_buffer[3]<<3)+(layer_in_buffer[3]<<5))-(0+(layer_in_buffer[4]<<0)+(layer_in_buffer[4]<<6)+(layer_in_buffer[4]<<7))-(0+(layer_in_buffer[5]<<1)+(layer_in_buffer[5]<<2))-(0+(layer_in_buffer[6]<<1))-(0-(layer_in_buffer[7]<<0)+(layer_in_buffer[7]<<3)+(layer_in_buffer[7]<<5)+(layer_in_buffer[7]<<6))+(0+(layer_in_buffer[8]<<2)+(layer_in_buffer[8]<<3)+(layer_in_buffer[8]<<6))-(0+(layer_in_buffer[9]<<1)+(layer_in_buffer[9]<<3)+(layer_in_buffer[9]<<5)+(layer_in_buffer[9]<<6))+(0-(layer_in_buffer[10]<<1)+(layer_in_buffer[10]<<5)+(layer_in_buffer[10]<<6))-(0+(layer_in_buffer[11]<<0)-(layer_in_buffer[11]<<4)+(layer_in_buffer[11]<<7))-(0+(layer_in_buffer[12]<<0)-(layer_in_buffer[12]<<3)+(layer_in_buffer[12]<<7))-(0+(layer_in_buffer[13]<<0)+(layer_in_buffer[13]<<2)+(layer_in_buffer[13]<<4)+(layer_in_buffer[13]<<5))+(0+(layer_in_buffer[14]<<0)+(layer_in_buffer[14]<<1)+(layer_in_buffer[14]<<6))+(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight1;
assign in_buffer_weight1=0-(0-(layer_in_buffer[0]<<1)+(layer_in_buffer[0]<<5)+(layer_in_buffer[0]<<7))-(0-(layer_in_buffer[1]<<0)+(layer_in_buffer[1]<<4))+(0+(layer_in_buffer[2]<<3)+(layer_in_buffer[2]<<6))+(0-(layer_in_buffer[3]<<1)-(layer_in_buffer[3]<<3)+(layer_in_buffer[3]<<5)+(layer_in_buffer[3]<<6))+(0+(layer_in_buffer[4]<<1)+(layer_in_buffer[4]<<5)+(layer_in_buffer[4]<<6))+(0+(layer_in_buffer[5]<<0)+(layer_in_buffer[5]<<5)+(layer_in_buffer[5]<<7))-(0-(layer_in_buffer[6]<<0)+(layer_in_buffer[6]<<2)+(layer_in_buffer[6]<<3)+(layer_in_buffer[6]<<6))-(0-(layer_in_buffer[7]<<2)+(layer_in_buffer[7]<<6))-(0+(layer_in_buffer[8]<<6))-(0+(layer_in_buffer[9]<<2)+(layer_in_buffer[9]<<5)+(layer_in_buffer[9]<<6))-(0+(layer_in_buffer[10]<<2)+(layer_in_buffer[10]<<6))-(0+(layer_in_buffer[11]<<0)+(layer_in_buffer[11]<<1)-(layer_in_buffer[11]<<4)+(layer_in_buffer[11]<<6)+(layer_in_buffer[11]<<7))+(0+(layer_in_buffer[12]<<1)+(layer_in_buffer[12]<<7))+(0-(layer_in_buffer[13]<<1)-(layer_in_buffer[13]<<4)+(layer_in_buffer[13]<<7))-(0+(layer_in_buffer[14]<<2)+(layer_in_buffer[14]<<7))-(0+(layer_in_buffer[15]<<3)+(layer_in_buffer[15]<<5)+(layer_in_buffer[15]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight2;
assign in_buffer_weight2=0+(0+(layer_in_buffer[0]<<0)+(layer_in_buffer[0]<<1))-(0+(layer_in_buffer[1]<<1)+(layer_in_buffer[1]<<3))+(0-(layer_in_buffer[2]<<0)+(layer_in_buffer[2]<<2)+(layer_in_buffer[2]<<3)+(layer_in_buffer[2]<<6))+(0+(layer_in_buffer[3]<<1)+(layer_in_buffer[3]<<3)+(layer_in_buffer[3]<<4))-(0+(layer_in_buffer[4]<<0)+(layer_in_buffer[4]<<2)+(layer_in_buffer[4]<<3)+(layer_in_buffer[4]<<6))-(0+(layer_in_buffer[5]<<0)+(layer_in_buffer[5]<<6))-(0+(layer_in_buffer[6]<<0)-(layer_in_buffer[6]<<3)+(layer_in_buffer[6]<<7))-(0+(layer_in_buffer[7]<<5))-(0+(layer_in_buffer[8]<<2)+(layer_in_buffer[8]<<7))-(0+(layer_in_buffer[9]<<2)+(layer_in_buffer[9]<<4))-(0+(layer_in_buffer[10]<<5))+(0-(layer_in_buffer[12]<<2)+(layer_in_buffer[12]<<5)+(layer_in_buffer[12]<<6))-(0-(layer_in_buffer[13]<<0)-(layer_in_buffer[13]<<4)+(layer_in_buffer[13]<<7))+(0+(layer_in_buffer[14]<<2)+(layer_in_buffer[14]<<3)+(layer_in_buffer[14]<<6))+(0+(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<3)+(layer_in_buffer[15]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight3;
assign in_buffer_weight3=0-(0-(layer_in_buffer[0]<<2)+(layer_in_buffer[0]<<5)+(layer_in_buffer[0]<<6))+(0+(layer_in_buffer[1]<<2)+(layer_in_buffer[1]<<4))+(0-(layer_in_buffer[2]<<3)+(layer_in_buffer[2]<<6))-(0+(layer_in_buffer[3]<<0)+(layer_in_buffer[3]<<6))-(0+(layer_in_buffer[4]<<0)-(layer_in_buffer[4]<<3)+(layer_in_buffer[4]<<7))+(0-(layer_in_buffer[5]<<0)+(layer_in_buffer[5]<<3)+(layer_in_buffer[5]<<6))+(0+(layer_in_buffer[6]<<3)+(layer_in_buffer[6]<<5)+(layer_in_buffer[6]<<6))-(0-(layer_in_buffer[7]<<0)+(layer_in_buffer[7]<<4)+(layer_in_buffer[7]<<5))-(0+(layer_in_buffer[8]<<1)+(layer_in_buffer[8]<<4)+(layer_in_buffer[8]<<7))+(0-(layer_in_buffer[9]<<3)+(layer_in_buffer[9]<<5)+(layer_in_buffer[9]<<6))+(0+(layer_in_buffer[10]<<0)+(layer_in_buffer[10]<<2)+(layer_in_buffer[10]<<4)+(layer_in_buffer[10]<<6))-(0-(layer_in_buffer[11]<<4)+(layer_in_buffer[11]<<7))+(0+(layer_in_buffer[12]<<2)+(layer_in_buffer[12]<<5))-(0-(layer_in_buffer[14]<<2)+(layer_in_buffer[14]<<4)+(layer_in_buffer[14]<<5))-(0+(layer_in_buffer[15]<<0)+(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<5));
wire [DATA_WIDTH-1:0]   in_buffer_weight4;
assign in_buffer_weight4=0-(0-(layer_in_buffer[1]<<0)+(layer_in_buffer[1]<<3))-(0+(layer_in_buffer[2]<<0)+(layer_in_buffer[2]<<2)+(layer_in_buffer[2]<<4)+(layer_in_buffer[2]<<6))-(0+(layer_in_buffer[3]<<0)-(layer_in_buffer[3]<<2)+(layer_in_buffer[3]<<5)+(layer_in_buffer[3]<<6))+(0+(layer_in_buffer[4]<<1)+(layer_in_buffer[4]<<2))-(0+(layer_in_buffer[5]<<1)+(layer_in_buffer[5]<<2)+(layer_in_buffer[5]<<6)+(layer_in_buffer[5]<<7))+(0-(layer_in_buffer[6]<<0)-(layer_in_buffer[6]<<2)+(layer_in_buffer[6]<<6))+(0+(layer_in_buffer[7]<<0)-(layer_in_buffer[7]<<3)+(layer_in_buffer[7]<<6))-(0+(layer_in_buffer[8]<<1))-(0+(layer_in_buffer[9]<<0)+(layer_in_buffer[9]<<3)+(layer_in_buffer[9]<<4))-(0-(layer_in_buffer[10]<<0)+(layer_in_buffer[10]<<4)+(layer_in_buffer[10]<<6)+(layer_in_buffer[10]<<7))+(0+(layer_in_buffer[11]<<0)+(layer_in_buffer[11]<<2)+(layer_in_buffer[11]<<4)+(layer_in_buffer[11]<<6))-(0+(layer_in_buffer[12]<<1)+(layer_in_buffer[12]<<2)+(layer_in_buffer[12]<<6))+(0-(layer_in_buffer[13]<<1)-(layer_in_buffer[13]<<3)+(layer_in_buffer[13]<<7))-(0+(layer_in_buffer[14]<<3)+(layer_in_buffer[14]<<5)+(layer_in_buffer[14]<<7))+(0+(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<5)+(layer_in_buffer[15]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight5;
assign in_buffer_weight5=0-(0-(layer_in_buffer[0]<<0)+(layer_in_buffer[0]<<4))+(0+(layer_in_buffer[1]<<3)+(layer_in_buffer[1]<<4))+(0+(layer_in_buffer[2]<<0)-(layer_in_buffer[2]<<2)+(layer_in_buffer[2]<<5))-(0+(layer_in_buffer[3]<<0)-(layer_in_buffer[3]<<2)+(layer_in_buffer[3]<<6)+(layer_in_buffer[3]<<7))+(0+(layer_in_buffer[4]<<4)+(layer_in_buffer[4]<<6))+(0+(layer_in_buffer[5]<<5))-(0+(layer_in_buffer[6]<<0)+(layer_in_buffer[6]<<2)+(layer_in_buffer[6]<<5))+(0+(layer_in_buffer[7]<<6))+(0+(layer_in_buffer[8]<<0)+(layer_in_buffer[8]<<1)+(layer_in_buffer[8]<<5)+(layer_in_buffer[8]<<6))+(0+(layer_in_buffer[9]<<5)+(layer_in_buffer[9]<<6))+(0-(layer_in_buffer[10]<<0)+(layer_in_buffer[10]<<3)+(layer_in_buffer[10]<<5))-(0-(layer_in_buffer[11]<<0)-(layer_in_buffer[11]<<2)-(layer_in_buffer[11]<<4)+(layer_in_buffer[11]<<7))-(0-(layer_in_buffer[12]<<0)+(layer_in_buffer[12]<<3)+(layer_in_buffer[12]<<5))-(0-(layer_in_buffer[13]<<0)-(layer_in_buffer[13]<<3)+(layer_in_buffer[13]<<6)+(layer_in_buffer[13]<<7))-(0+(layer_in_buffer[14]<<3)+(layer_in_buffer[14]<<7))+(0+(layer_in_buffer[15]<<1)+(layer_in_buffer[15]<<3)+(layer_in_buffer[15]<<5));
wire [DATA_WIDTH-1:0]   in_buffer_weight6;
assign in_buffer_weight6=0-(0+(layer_in_buffer[0]<<1)+(layer_in_buffer[0]<<2)+(layer_in_buffer[0]<<6))+(0+(layer_in_buffer[1]<<2))-(0-(layer_in_buffer[2]<<2)-(layer_in_buffer[2]<<4)+(layer_in_buffer[2]<<7))-(0+(layer_in_buffer[3]<<1)+(layer_in_buffer[3]<<2)+(layer_in_buffer[3]<<5)+(layer_in_buffer[3]<<7))-(0-(layer_in_buffer[4]<<2)-(layer_in_buffer[4]<<4)+(layer_in_buffer[4]<<6)+(layer_in_buffer[4]<<7))+(0+(layer_in_buffer[5]<<0)+(layer_in_buffer[5]<<7))-(0-(layer_in_buffer[6]<<2)+(layer_in_buffer[6]<<5)+(layer_in_buffer[6]<<6))+(0+(layer_in_buffer[7]<<0)-(layer_in_buffer[7]<<2)+(layer_in_buffer[7]<<7))+(0-(layer_in_buffer[8]<<0)-(layer_in_buffer[8]<<4)+(layer_in_buffer[8]<<7))-(0+(layer_in_buffer[9]<<0)-(layer_in_buffer[9]<<3)+(layer_in_buffer[9]<<6)+(layer_in_buffer[9]<<7))-(0-(layer_in_buffer[10]<<1)+(layer_in_buffer[10]<<5))+(0-(layer_in_buffer[11]<<3)+(layer_in_buffer[11]<<5)+(layer_in_buffer[11]<<6))+(0+(layer_in_buffer[12]<<0)+(layer_in_buffer[12]<<2)+(layer_in_buffer[12]<<3)+(layer_in_buffer[12]<<6))+(0+(layer_in_buffer[13]<<3)+(layer_in_buffer[13]<<4))+(0+(layer_in_buffer[14]<<1)+(layer_in_buffer[14]<<2))+(0+(layer_in_buffer[15]<<0)+(layer_in_buffer[15]<<3));
wire [DATA_WIDTH-1:0]   in_buffer_weight7;
assign in_buffer_weight7=0+(0-(layer_in_buffer[0]<<0)+(layer_in_buffer[0]<<3)+(layer_in_buffer[0]<<6))-(0-(layer_in_buffer[1]<<1)+(layer_in_buffer[1]<<4))-(0-(layer_in_buffer[2]<<0)+(layer_in_buffer[2]<<3)+(layer_in_buffer[2]<<7))+(0+(layer_in_buffer[3]<<0)+(layer_in_buffer[3]<<4)+(layer_in_buffer[3]<<6))+(0-(layer_in_buffer[4]<<0)+(layer_in_buffer[4]<<4)+(layer_in_buffer[4]<<6))+(0-(layer_in_buffer[5]<<2)+(layer_in_buffer[5]<<6))+(0-(layer_in_buffer[6]<<0)+(layer_in_buffer[6]<<2)+(layer_in_buffer[6]<<3)+(layer_in_buffer[6]<<6))-(0-(layer_in_buffer[7]<<0)-(layer_in_buffer[7]<<2)-(layer_in_buffer[7]<<4)+(layer_in_buffer[7]<<6)+(layer_in_buffer[7]<<7))-(0+(layer_in_buffer[8]<<0)+(layer_in_buffer[8]<<1)+(layer_in_buffer[8]<<5)+(layer_in_buffer[8]<<6))+(0+(layer_in_buffer[9]<<0)-(layer_in_buffer[9]<<4)+(layer_in_buffer[9]<<7))-(0+(layer_in_buffer[10]<<0)+(layer_in_buffer[10]<<3)+(layer_in_buffer[10]<<4)+(layer_in_buffer[10]<<7))+(0+(layer_in_buffer[11]<<1))+(0+(layer_in_buffer[12]<<2)+(layer_in_buffer[12]<<3)+(layer_in_buffer[12]<<6))-(0-(layer_in_buffer[13]<<0)+(layer_in_buffer[13]<<3)+(layer_in_buffer[13]<<5))+(0-(layer_in_buffer[14]<<1)-(layer_in_buffer[14]<<3)+(layer_in_buffer[14]<<6))-(0+(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<3)+(layer_in_buffer[15]<<5)+(layer_in_buffer[15]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight8;
assign in_buffer_weight8=0-(0+(layer_in_buffer[0]<<1)+(layer_in_buffer[0]<<3)+(layer_in_buffer[0]<<7))+(0+(layer_in_buffer[1]<<0)+(layer_in_buffer[1]<<1)+(layer_in_buffer[1]<<4))+(0+(layer_in_buffer[2]<<0)+(layer_in_buffer[2]<<1)+(layer_in_buffer[2]<<5))+(0-(layer_in_buffer[3]<<0)+(layer_in_buffer[3]<<6))+(0+(layer_in_buffer[4]<<0)-(layer_in_buffer[4]<<2)+(layer_in_buffer[4]<<4)+(layer_in_buffer[4]<<5))-(0+(layer_in_buffer[5]<<0)-(layer_in_buffer[5]<<3)+(layer_in_buffer[5]<<7))+(0+(layer_in_buffer[6]<<0)+(layer_in_buffer[6]<<1)+(layer_in_buffer[6]<<4)+(layer_in_buffer[6]<<5))-(0+(layer_in_buffer[7]<<0)-(layer_in_buffer[7]<<3)+(layer_in_buffer[7]<<6))+(0+(layer_in_buffer[8]<<0)+(layer_in_buffer[8]<<3)+(layer_in_buffer[8]<<6))-(0+(layer_in_buffer[9]<<1)-(layer_in_buffer[9]<<3)+(layer_in_buffer[9]<<7))+(0+(layer_in_buffer[10]<<1)+(layer_in_buffer[10]<<6))+(0-(layer_in_buffer[11]<<0)+(layer_in_buffer[11]<<4)+(layer_in_buffer[11]<<5))-(0+(layer_in_buffer[12]<<0)+(layer_in_buffer[12]<<6))-(0+(layer_in_buffer[13]<<3)+(layer_in_buffer[13]<<4))-(0+(layer_in_buffer[14]<<3));
wire [DATA_WIDTH-1:0]   in_buffer_weight9;
assign in_buffer_weight9=0+(0+(layer_in_buffer[0]<<0)+(layer_in_buffer[0]<<2)+(layer_in_buffer[0]<<3)+(layer_in_buffer[0]<<6))+(0+(layer_in_buffer[1]<<2)+(layer_in_buffer[1]<<4))-(0+(layer_in_buffer[2]<<2)+(layer_in_buffer[2]<<4))+(0-(layer_in_buffer[3]<<3)+(layer_in_buffer[3]<<5)+(layer_in_buffer[3]<<6))+(0+(layer_in_buffer[4]<<1)+(layer_in_buffer[4]<<2)+(layer_in_buffer[4]<<5))-(0+(layer_in_buffer[5]<<5)+(layer_in_buffer[5]<<7))+(0+(layer_in_buffer[6]<<1)+(layer_in_buffer[6]<<6))+(0-(layer_in_buffer[7]<<2)-(layer_in_buffer[7]<<4)+(layer_in_buffer[7]<<7))-(0+(layer_in_buffer[8]<<2)+(layer_in_buffer[8]<<3)+(layer_in_buffer[8]<<6))-(0-(layer_in_buffer[9]<<0)+(layer_in_buffer[9]<<5))-(0+(layer_in_buffer[10]<<0)+(layer_in_buffer[10]<<5))+(0+(layer_in_buffer[11]<<2)+(layer_in_buffer[11]<<3))-(0-(layer_in_buffer[12]<<0)+(layer_in_buffer[12]<<8))+(0-(layer_in_buffer[13]<<1)-(layer_in_buffer[13]<<3)+(layer_in_buffer[13]<<6))+(0+(layer_in_buffer[14]<<3))-(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<7));
wire [DATA_WIDTH-1:0]   weight_bias0;
assign weight_bias0=in_buffer_weight0+(1);
wire [DATA_WIDTH-1:0]   weight_bias1;
assign weight_bias1=in_buffer_weight1+(51);
wire [DATA_WIDTH-1:0]   weight_bias2;
assign weight_bias2=in_buffer_weight2+(44);
wire [DATA_WIDTH-1:0]   weight_bias3;
assign weight_bias3=in_buffer_weight3+(0);
wire [DATA_WIDTH-1:0]   weight_bias4;
assign weight_bias4=in_buffer_weight4+(2);
wire [DATA_WIDTH-1:0]   weight_bias5;
assign weight_bias5=in_buffer_weight5+(85);
wire [DATA_WIDTH-1:0]   weight_bias6;
assign weight_bias6=in_buffer_weight6+(-32);
wire [DATA_WIDTH-1:0]   weight_bias7;
assign weight_bias7=in_buffer_weight7+(18);
wire [DATA_WIDTH-1:0]   weight_bias8;
assign weight_bias8=in_buffer_weight8+(-65);
wire [DATA_WIDTH-1:0]   weight_bias9;
assign weight_bias9=in_buffer_weight9+(1);
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
