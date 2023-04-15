module layer2_tcb_144x64x10
(
    input clk,
    input rst,
   input valid,
   output  reg ready,
    input [20*64-1:0]  layer_in,
    output [27*10-1:0]   layer_out
);
parameter DATA_WIDTH   =   27;
reg [DATA_WIDTH-1:0]    layer_in_buffer    [0:64-1];
integer i;
always@(posedge clk )
    begin
        if(rst)
            begin
                for(i=0;i<64;i=i+1)
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
       layer_in_buffer[16]<=layer_in[339:320];
       layer_in_buffer[17]<=layer_in[359:340];
       layer_in_buffer[18]<=layer_in[379:360];
       layer_in_buffer[19]<=layer_in[399:380];
       layer_in_buffer[20]<=layer_in[419:400];
       layer_in_buffer[21]<=layer_in[439:420];
       layer_in_buffer[22]<=layer_in[459:440];
       layer_in_buffer[23]<=layer_in[479:460];
       layer_in_buffer[24]<=layer_in[499:480];
       layer_in_buffer[25]<=layer_in[519:500];
       layer_in_buffer[26]<=layer_in[539:520];
       layer_in_buffer[27]<=layer_in[559:540];
       layer_in_buffer[28]<=layer_in[579:560];
       layer_in_buffer[29]<=layer_in[599:580];
       layer_in_buffer[30]<=layer_in[619:600];
       layer_in_buffer[31]<=layer_in[639:620];
       layer_in_buffer[32]<=layer_in[659:640];
       layer_in_buffer[33]<=layer_in[679:660];
       layer_in_buffer[34]<=layer_in[699:680];
       layer_in_buffer[35]<=layer_in[719:700];
       layer_in_buffer[36]<=layer_in[739:720];
       layer_in_buffer[37]<=layer_in[759:740];
       layer_in_buffer[38]<=layer_in[779:760];
       layer_in_buffer[39]<=layer_in[799:780];
       layer_in_buffer[40]<=layer_in[819:800];
       layer_in_buffer[41]<=layer_in[839:820];
       layer_in_buffer[42]<=layer_in[859:840];
       layer_in_buffer[43]<=layer_in[879:860];
       layer_in_buffer[44]<=layer_in[899:880];
       layer_in_buffer[45]<=layer_in[919:900];
       layer_in_buffer[46]<=layer_in[939:920];
       layer_in_buffer[47]<=layer_in[959:940];
       layer_in_buffer[48]<=layer_in[979:960];
       layer_in_buffer[49]<=layer_in[999:980];
       layer_in_buffer[50]<=layer_in[1019:1000];
       layer_in_buffer[51]<=layer_in[1039:1020];
       layer_in_buffer[52]<=layer_in[1059:1040];
       layer_in_buffer[53]<=layer_in[1079:1060];
       layer_in_buffer[54]<=layer_in[1099:1080];
       layer_in_buffer[55]<=layer_in[1119:1100];
       layer_in_buffer[56]<=layer_in[1139:1120];
       layer_in_buffer[57]<=layer_in[1159:1140];
       layer_in_buffer[58]<=layer_in[1179:1160];
       layer_in_buffer[59]<=layer_in[1199:1180];
       layer_in_buffer[60]<=layer_in[1219:1200];
       layer_in_buffer[61]<=layer_in[1239:1220];
       layer_in_buffer[62]<=layer_in[1259:1240];
       layer_in_buffer[63]<=layer_in[1279:1260];
        end
   end

wire [DATA_WIDTH-1:0]   in_buffer_weight0;
assign in_buffer_weight0=0-(0-(layer_in_buffer[11]<<0)-(layer_in_buffer[11]<<2)+(layer_in_buffer[11]<<6))-(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<6))-(0-(layer_in_buffer[16]<<0)-(layer_in_buffer[16]<<2)+(layer_in_buffer[16]<<6))-(0-(layer_in_buffer[18]<<0)-(layer_in_buffer[18]<<2)+(layer_in_buffer[18]<<6))+(0-(layer_in_buffer[28]<<0)-(layer_in_buffer[28]<<2)+(layer_in_buffer[28]<<6))-(0-(layer_in_buffer[31]<<0)-(layer_in_buffer[31]<<2)+(layer_in_buffer[31]<<6))+(0-(layer_in_buffer[33]<<0)-(layer_in_buffer[33]<<2)+(layer_in_buffer[33]<<6))-(0-(layer_in_buffer[34]<<0)-(layer_in_buffer[34]<<2)+(layer_in_buffer[34]<<6))+(0-(layer_in_buffer[39]<<0)-(layer_in_buffer[39]<<2)+(layer_in_buffer[39]<<6))+(0-(layer_in_buffer[49]<<0)-(layer_in_buffer[49]<<2)+(layer_in_buffer[49]<<6))+(0-(layer_in_buffer[52]<<0)-(layer_in_buffer[52]<<2)+(layer_in_buffer[52]<<6))+(0-(layer_in_buffer[57]<<0)-(layer_in_buffer[57]<<2)+(layer_in_buffer[57]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight1;
assign in_buffer_weight1=0+(0-(layer_in_buffer[1]<<0)-(layer_in_buffer[1]<<2)+(layer_in_buffer[1]<<6))-(0-(layer_in_buffer[6]<<0)-(layer_in_buffer[6]<<2)+(layer_in_buffer[6]<<6))-(0-(layer_in_buffer[9]<<0)-(layer_in_buffer[9]<<2)+(layer_in_buffer[9]<<6))-(0-(layer_in_buffer[14]<<0)-(layer_in_buffer[14]<<2)+(layer_in_buffer[14]<<6))-(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<6))+(0-(layer_in_buffer[16]<<0)-(layer_in_buffer[16]<<2)+(layer_in_buffer[16]<<6))-(0-(layer_in_buffer[19]<<0)-(layer_in_buffer[19]<<2)+(layer_in_buffer[19]<<6))+(0-(layer_in_buffer[24]<<1)-(layer_in_buffer[24]<<3)+(layer_in_buffer[24]<<7))-(0-(layer_in_buffer[31]<<0)-(layer_in_buffer[31]<<2)+(layer_in_buffer[31]<<6))-(0-(layer_in_buffer[36]<<0)-(layer_in_buffer[36]<<2)+(layer_in_buffer[36]<<6))+(0-(layer_in_buffer[39]<<1)-(layer_in_buffer[39]<<3)+(layer_in_buffer[39]<<7))-(0-(layer_in_buffer[40]<<0)-(layer_in_buffer[40]<<2)+(layer_in_buffer[40]<<6))+(0-(layer_in_buffer[52]<<1)-(layer_in_buffer[52]<<3)+(layer_in_buffer[52]<<7))+(0-(layer_in_buffer[54]<<0)-(layer_in_buffer[54]<<2)+(layer_in_buffer[54]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight2;
assign in_buffer_weight2=0-(0-(layer_in_buffer[11]<<0)-(layer_in_buffer[11]<<2)+(layer_in_buffer[11]<<6))-(0-(layer_in_buffer[16]<<0)-(layer_in_buffer[16]<<2)+(layer_in_buffer[16]<<6))+(0-(layer_in_buffer[19]<<0)-(layer_in_buffer[19]<<2)+(layer_in_buffer[19]<<6))-(0-(layer_in_buffer[24]<<0)-(layer_in_buffer[24]<<2)+(layer_in_buffer[24]<<6))+(0-(layer_in_buffer[34]<<0)-(layer_in_buffer[34]<<2)+(layer_in_buffer[34]<<6))+(0-(layer_in_buffer[36]<<0)-(layer_in_buffer[36]<<2)+(layer_in_buffer[36]<<6))-(0-(layer_in_buffer[39]<<0)-(layer_in_buffer[39]<<2)+(layer_in_buffer[39]<<6))-(0-(layer_in_buffer[52]<<0)-(layer_in_buffer[52]<<2)+(layer_in_buffer[52]<<6))-(0-(layer_in_buffer[54]<<1)-(layer_in_buffer[54]<<3)+(layer_in_buffer[54]<<7));
wire [DATA_WIDTH-1:0]   in_buffer_weight3;
assign in_buffer_weight3=0+(0-(layer_in_buffer[1]<<0)-(layer_in_buffer[1]<<2)+(layer_in_buffer[1]<<6))+(0-(layer_in_buffer[6]<<0)-(layer_in_buffer[6]<<2)+(layer_in_buffer[6]<<6))+(0-(layer_in_buffer[18]<<0)-(layer_in_buffer[18]<<2)+(layer_in_buffer[18]<<6))-(0-(layer_in_buffer[24]<<0)-(layer_in_buffer[24]<<2)+(layer_in_buffer[24]<<6))+(0-(layer_in_buffer[31]<<0)-(layer_in_buffer[31]<<2)+(layer_in_buffer[31]<<6))-(0-(layer_in_buffer[39]<<0)-(layer_in_buffer[39]<<2)+(layer_in_buffer[39]<<6))-(0-(layer_in_buffer[52]<<1)-(layer_in_buffer[52]<<3)+(layer_in_buffer[52]<<7))-(0-(layer_in_buffer[54]<<0)-(layer_in_buffer[54]<<2)+(layer_in_buffer[54]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight4;
assign in_buffer_weight4=0-(0-(layer_in_buffer[1]<<0)-(layer_in_buffer[1]<<2)+(layer_in_buffer[1]<<6))-(0-(layer_in_buffer[6]<<0)-(layer_in_buffer[6]<<2)+(layer_in_buffer[6]<<6))+(0-(layer_in_buffer[9]<<0)-(layer_in_buffer[9]<<2)+(layer_in_buffer[9]<<6))+(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<6))-(0-(layer_in_buffer[16]<<0)-(layer_in_buffer[16]<<2)+(layer_in_buffer[16]<<6))-(0-(layer_in_buffer[18]<<0)-(layer_in_buffer[18]<<2)+(layer_in_buffer[18]<<6))+(0-(layer_in_buffer[19]<<0)-(layer_in_buffer[19]<<2)+(layer_in_buffer[19]<<6))-(0-(layer_in_buffer[24]<<0)-(layer_in_buffer[24]<<2)+(layer_in_buffer[24]<<6))-(0-(layer_in_buffer[31]<<0)-(layer_in_buffer[31]<<2)+(layer_in_buffer[31]<<6))-(0-(layer_in_buffer[39]<<1)-(layer_in_buffer[39]<<3)+(layer_in_buffer[39]<<7))-(0-(layer_in_buffer[54]<<0)-(layer_in_buffer[54]<<2)+(layer_in_buffer[54]<<6))-(0-(layer_in_buffer[57]<<0)-(layer_in_buffer[57]<<2)+(layer_in_buffer[57]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight5;
assign in_buffer_weight5=0-(0-(layer_in_buffer[14]<<0)-(layer_in_buffer[14]<<2)+(layer_in_buffer[14]<<6))+(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<6))+(0-(layer_in_buffer[18]<<0)-(layer_in_buffer[18]<<2)+(layer_in_buffer[18]<<6))-(0-(layer_in_buffer[24]<<0)-(layer_in_buffer[24]<<2)+(layer_in_buffer[24]<<6))+(0-(layer_in_buffer[31]<<0)-(layer_in_buffer[31]<<2)+(layer_in_buffer[31]<<6))+(0-(layer_in_buffer[33]<<0)-(layer_in_buffer[33]<<2)+(layer_in_buffer[33]<<6))-(0-(layer_in_buffer[49]<<0)-(layer_in_buffer[49]<<2)+(layer_in_buffer[49]<<6))-(0-(layer_in_buffer[52]<<0)-(layer_in_buffer[52]<<2)+(layer_in_buffer[52]<<6))-(0-(layer_in_buffer[54]<<0)-(layer_in_buffer[54]<<2)+(layer_in_buffer[54]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight6;
assign in_buffer_weight6=0-(0-(layer_in_buffer[1]<<0)-(layer_in_buffer[1]<<2)+(layer_in_buffer[1]<<6))-(0-(layer_in_buffer[11]<<0)-(layer_in_buffer[11]<<2)+(layer_in_buffer[11]<<6))-(0-(layer_in_buffer[14]<<0)-(layer_in_buffer[14]<<2)+(layer_in_buffer[14]<<6))-(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<6))+(0-(layer_in_buffer[19]<<0)-(layer_in_buffer[19]<<2)+(layer_in_buffer[19]<<6))-(0-(layer_in_buffer[24]<<0)-(layer_in_buffer[24]<<2)+(layer_in_buffer[24]<<6))+(0-(layer_in_buffer[31]<<0)-(layer_in_buffer[31]<<2)+(layer_in_buffer[31]<<6))+(0-(layer_in_buffer[33]<<0)-(layer_in_buffer[33]<<2)+(layer_in_buffer[33]<<6))-(0-(layer_in_buffer[36]<<0)-(layer_in_buffer[36]<<2)+(layer_in_buffer[36]<<6))-(0-(layer_in_buffer[39]<<1)-(layer_in_buffer[39]<<3)+(layer_in_buffer[39]<<7))-(0-(layer_in_buffer[52]<<1)-(layer_in_buffer[52]<<3)+(layer_in_buffer[52]<<7))-(0-(layer_in_buffer[54]<<1)-(layer_in_buffer[54]<<3)+(layer_in_buffer[54]<<7))+(0-(layer_in_buffer[62]<<0)-(layer_in_buffer[62]<<2)+(layer_in_buffer[62]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight7;
assign in_buffer_weight7=0+(0-(layer_in_buffer[6]<<0)-(layer_in_buffer[6]<<2)+(layer_in_buffer[6]<<6))+(0-(layer_in_buffer[9]<<0)-(layer_in_buffer[9]<<2)+(layer_in_buffer[9]<<6))+(0-(layer_in_buffer[11]<<0)-(layer_in_buffer[11]<<2)+(layer_in_buffer[11]<<6))-(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<6))-(0-(layer_in_buffer[16]<<0)-(layer_in_buffer[16]<<2)+(layer_in_buffer[16]<<6))-(0-(layer_in_buffer[24]<<0)-(layer_in_buffer[24]<<2)+(layer_in_buffer[24]<<6))-(0-(layer_in_buffer[33]<<0)-(layer_in_buffer[33]<<2)+(layer_in_buffer[33]<<6))+(0-(layer_in_buffer[40]<<0)-(layer_in_buffer[40]<<2)+(layer_in_buffer[40]<<6))-(0-(layer_in_buffer[49]<<0)-(layer_in_buffer[49]<<2)+(layer_in_buffer[49]<<6))+(0-(layer_in_buffer[54]<<0)-(layer_in_buffer[54]<<2)+(layer_in_buffer[54]<<6))+(0-(layer_in_buffer[57]<<0)-(layer_in_buffer[57]<<2)+(layer_in_buffer[57]<<6))-(0-(layer_in_buffer[62]<<0)-(layer_in_buffer[62]<<2)+(layer_in_buffer[62]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight8;
assign in_buffer_weight8=0+(0-(layer_in_buffer[11]<<0)-(layer_in_buffer[11]<<2)+(layer_in_buffer[11]<<6))+(0-(layer_in_buffer[16]<<0)-(layer_in_buffer[16]<<2)+(layer_in_buffer[16]<<6))-(0-(layer_in_buffer[18]<<0)-(layer_in_buffer[18]<<2)+(layer_in_buffer[18]<<6))-(0-(layer_in_buffer[19]<<0)-(layer_in_buffer[19]<<2)+(layer_in_buffer[19]<<6))+(0-(layer_in_buffer[24]<<0)-(layer_in_buffer[24]<<2)+(layer_in_buffer[24]<<6))-(0-(layer_in_buffer[33]<<1)-(layer_in_buffer[33]<<3)+(layer_in_buffer[33]<<7))-(0-(layer_in_buffer[34]<<1)-(layer_in_buffer[34]<<3)+(layer_in_buffer[34]<<7))-(0-(layer_in_buffer[39]<<0)-(layer_in_buffer[39]<<2)+(layer_in_buffer[39]<<6))-(0-(layer_in_buffer[40]<<1)-(layer_in_buffer[40]<<3)+(layer_in_buffer[40]<<7))+(0-(layer_in_buffer[49]<<0)-(layer_in_buffer[49]<<2)+(layer_in_buffer[49]<<6))+(0-(layer_in_buffer[52]<<0)-(layer_in_buffer[52]<<2)+(layer_in_buffer[52]<<6))-(0-(layer_in_buffer[57]<<0)-(layer_in_buffer[57]<<2)+(layer_in_buffer[57]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight9;
assign in_buffer_weight9=0+(0-(layer_in_buffer[14]<<0)-(layer_in_buffer[14]<<2)+(layer_in_buffer[14]<<6))-(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<6))+(0-(layer_in_buffer[16]<<0)-(layer_in_buffer[16]<<2)+(layer_in_buffer[16]<<6))+(0-(layer_in_buffer[18]<<0)-(layer_in_buffer[18]<<2)+(layer_in_buffer[18]<<6))-(0-(layer_in_buffer[19]<<0)-(layer_in_buffer[19]<<2)+(layer_in_buffer[19]<<6))+(0-(layer_in_buffer[24]<<0)-(layer_in_buffer[24]<<2)+(layer_in_buffer[24]<<6))-(0-(layer_in_buffer[28]<<0)-(layer_in_buffer[28]<<2)+(layer_in_buffer[28]<<6))-(0-(layer_in_buffer[33]<<0)-(layer_in_buffer[33]<<2)+(layer_in_buffer[33]<<6))+(0-(layer_in_buffer[34]<<0)-(layer_in_buffer[34]<<2)+(layer_in_buffer[34]<<6))-(0-(layer_in_buffer[36]<<0)-(layer_in_buffer[36]<<2)+(layer_in_buffer[36]<<6))+(0-(layer_in_buffer[39]<<1)-(layer_in_buffer[39]<<3)+(layer_in_buffer[39]<<7))-(0-(layer_in_buffer[40]<<0)-(layer_in_buffer[40]<<2)+(layer_in_buffer[40]<<6))+(0-(layer_in_buffer[52]<<0)-(layer_in_buffer[52]<<2)+(layer_in_buffer[52]<<6))+(0-(layer_in_buffer[54]<<0)-(layer_in_buffer[54]<<2)+(layer_in_buffer[54]<<6));
wire [DATA_WIDTH-1:0]   weight_bias0;
assign weight_bias0=in_buffer_weight0+(-118);
wire [DATA_WIDTH-1:0]   weight_bias1;
assign weight_bias1=in_buffer_weight1+(0);
wire [DATA_WIDTH-1:0]   weight_bias2;
assign weight_bias2=in_buffer_weight2+(59);
wire [DATA_WIDTH-1:0]   weight_bias3;
assign weight_bias3=in_buffer_weight3+(59);
wire [DATA_WIDTH-1:0]   weight_bias4;
assign weight_bias4=in_buffer_weight4+(59);
wire [DATA_WIDTH-1:0]   weight_bias5;
assign weight_bias5=in_buffer_weight5+(-59);
wire [DATA_WIDTH-1:0]   weight_bias6;
assign weight_bias6=in_buffer_weight6+(59);
wire [DATA_WIDTH-1:0]   weight_bias7;
assign weight_bias7=in_buffer_weight7+(0);
wire [DATA_WIDTH-1:0]   weight_bias8;
assign weight_bias8=in_buffer_weight8+(0);
wire [DATA_WIDTH-1:0]   weight_bias9;
assign weight_bias9=in_buffer_weight9+(0);
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
