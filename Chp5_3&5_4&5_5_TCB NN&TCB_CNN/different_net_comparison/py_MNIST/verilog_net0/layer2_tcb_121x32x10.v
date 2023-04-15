module layer2_tcb_121x32x10
(
    input clk,
    input rst,
   input valid,
   output  reg ready,
    input [18*32-1:0]  layer_in,
    output [28*10-1:0]   layer_out
);
parameter DATA_WIDTH   =   28;
reg [DATA_WIDTH-1:0]    layer_in_buffer    [0:32-1];
integer i;
always@(posedge clk )
    begin
        if(rst)
            begin
                for(i=0;i<32;i=i+1)
                    begin
                        layer_in_buffer[i]<=0;
                    end
            end
        else
        begin
       layer_in_buffer[0]<=layer_in[17:0];
       layer_in_buffer[1]<=layer_in[35:18];
       layer_in_buffer[2]<=layer_in[53:36];
       layer_in_buffer[3]<=layer_in[71:54];
       layer_in_buffer[4]<=layer_in[89:72];
       layer_in_buffer[5]<=layer_in[107:90];
       layer_in_buffer[6]<=layer_in[125:108];
       layer_in_buffer[7]<=layer_in[143:126];
       layer_in_buffer[8]<=layer_in[161:144];
       layer_in_buffer[9]<=layer_in[179:162];
       layer_in_buffer[10]<=layer_in[197:180];
       layer_in_buffer[11]<=layer_in[215:198];
       layer_in_buffer[12]<=layer_in[233:216];
       layer_in_buffer[13]<=layer_in[251:234];
       layer_in_buffer[14]<=layer_in[269:252];
       layer_in_buffer[15]<=layer_in[287:270];
       layer_in_buffer[16]<=layer_in[305:288];
       layer_in_buffer[17]<=layer_in[323:306];
       layer_in_buffer[18]<=layer_in[341:324];
       layer_in_buffer[19]<=layer_in[359:342];
       layer_in_buffer[20]<=layer_in[377:360];
       layer_in_buffer[21]<=layer_in[395:378];
       layer_in_buffer[22]<=layer_in[413:396];
       layer_in_buffer[23]<=layer_in[431:414];
       layer_in_buffer[24]<=layer_in[449:432];
       layer_in_buffer[25]<=layer_in[467:450];
       layer_in_buffer[26]<=layer_in[485:468];
       layer_in_buffer[27]<=layer_in[503:486];
       layer_in_buffer[28]<=layer_in[521:504];
       layer_in_buffer[29]<=layer_in[539:522];
       layer_in_buffer[30]<=layer_in[557:540];
       layer_in_buffer[31]<=layer_in[575:558];
        end
   end

wire [DATA_WIDTH-1:0]   in_buffer_weight0;
assign in_buffer_weight0=0+(0-(layer_in_buffer[0]<<0)-(layer_in_buffer[0]<<2)+(layer_in_buffer[0]<<6))+(0-(layer_in_buffer[2]<<0)-(layer_in_buffer[2]<<2)+(layer_in_buffer[2]<<6))+(0-(layer_in_buffer[3]<<0)-(layer_in_buffer[3]<<2)+(layer_in_buffer[3]<<6))-(0-(layer_in_buffer[5]<<1)-(layer_in_buffer[5]<<3)+(layer_in_buffer[5]<<7))-(0-(layer_in_buffer[6]<<1)-(layer_in_buffer[6]<<3)+(layer_in_buffer[6]<<7))-(0-(layer_in_buffer[7]<<0)-(layer_in_buffer[7]<<2)+(layer_in_buffer[7]<<6))-(0-(layer_in_buffer[8]<<0)-(layer_in_buffer[8]<<2)+(layer_in_buffer[8]<<6))-(0-(layer_in_buffer[10]<<1)-(layer_in_buffer[10]<<3)+(layer_in_buffer[10]<<7))+(0-(layer_in_buffer[11]<<0)-(layer_in_buffer[11]<<2)+(layer_in_buffer[11]<<6))-(0-(layer_in_buffer[12]<<0)-(layer_in_buffer[12]<<2)+(layer_in_buffer[12]<<6))-(0+(layer_in_buffer[13]<<0)-(layer_in_buffer[13]<<4)+(layer_in_buffer[13]<<6)+(layer_in_buffer[13]<<7))-(0-(layer_in_buffer[14]<<1)-(layer_in_buffer[14]<<3)+(layer_in_buffer[14]<<7))+(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<6))-(0-(layer_in_buffer[17]<<0)-(layer_in_buffer[17]<<2)+(layer_in_buffer[17]<<6))+(0-(layer_in_buffer[20]<<0)-(layer_in_buffer[20]<<2)+(layer_in_buffer[20]<<6))+(0-(layer_in_buffer[21]<<0)-(layer_in_buffer[21]<<2)+(layer_in_buffer[21]<<6))-(0-(layer_in_buffer[22]<<1)-(layer_in_buffer[22]<<3)+(layer_in_buffer[22]<<7))+(0-(layer_in_buffer[23]<<0)-(layer_in_buffer[23]<<2)+(layer_in_buffer[23]<<6))-(0-(layer_in_buffer[25]<<1)-(layer_in_buffer[25]<<3)+(layer_in_buffer[25]<<7))+(0-(layer_in_buffer[26]<<0)-(layer_in_buffer[26]<<2)+(layer_in_buffer[26]<<6))-(0-(layer_in_buffer[27]<<0)-(layer_in_buffer[27]<<2)+(layer_in_buffer[27]<<6))-(0+(layer_in_buffer[28]<<0)-(layer_in_buffer[28]<<4)+(layer_in_buffer[28]<<6)+(layer_in_buffer[28]<<7))-(0-(layer_in_buffer[29]<<0)-(layer_in_buffer[29]<<2)+(layer_in_buffer[29]<<6))+(0-(layer_in_buffer[30]<<0)-(layer_in_buffer[30]<<2)+(layer_in_buffer[30]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight1;
assign in_buffer_weight1=0-(0-(layer_in_buffer[0]<<1)-(layer_in_buffer[0]<<3)+(layer_in_buffer[0]<<7))-(0-(layer_in_buffer[1]<<1)-(layer_in_buffer[1]<<3)+(layer_in_buffer[1]<<7))-(0-(layer_in_buffer[2]<<1)-(layer_in_buffer[2]<<3)+(layer_in_buffer[2]<<7))-(0-(layer_in_buffer[3]<<1)-(layer_in_buffer[3]<<3)+(layer_in_buffer[3]<<7))-(0+(layer_in_buffer[6]<<0)-(layer_in_buffer[6]<<4)+(layer_in_buffer[6]<<6)+(layer_in_buffer[6]<<7))+(0-(layer_in_buffer[7]<<1)-(layer_in_buffer[7]<<3)+(layer_in_buffer[7]<<7))+(0-(layer_in_buffer[8]<<0)-(layer_in_buffer[8]<<2)+(layer_in_buffer[8]<<6))-(0+(layer_in_buffer[9]<<0)-(layer_in_buffer[9]<<4)+(layer_in_buffer[9]<<6)+(layer_in_buffer[9]<<7))-(0-(layer_in_buffer[10]<<1)-(layer_in_buffer[10]<<3)+(layer_in_buffer[10]<<7))+(0-(layer_in_buffer[12]<<1)-(layer_in_buffer[12]<<3)+(layer_in_buffer[12]<<7))+(0-(layer_in_buffer[13]<<0)-(layer_in_buffer[13]<<2)+(layer_in_buffer[13]<<6))+(0-(layer_in_buffer[14]<<0)-(layer_in_buffer[14]<<2)+(layer_in_buffer[14]<<6))+(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<6))+(0-(layer_in_buffer[20]<<0)-(layer_in_buffer[20]<<2)+(layer_in_buffer[20]<<6))-(0-(layer_in_buffer[21]<<1)-(layer_in_buffer[21]<<3)+(layer_in_buffer[21]<<7))+(0-(layer_in_buffer[22]<<0)-(layer_in_buffer[22]<<2)+(layer_in_buffer[22]<<6))-(0-(layer_in_buffer[23]<<1)-(layer_in_buffer[23]<<3)+(layer_in_buffer[23]<<7))+(0-(layer_in_buffer[25]<<0)-(layer_in_buffer[25]<<2)+(layer_in_buffer[25]<<6))-(0-(layer_in_buffer[26]<<1)-(layer_in_buffer[26]<<3)+(layer_in_buffer[26]<<7))+(0-(layer_in_buffer[27]<<0)-(layer_in_buffer[27]<<2)+(layer_in_buffer[27]<<6))+(0-(layer_in_buffer[28]<<0)-(layer_in_buffer[28]<<2)+(layer_in_buffer[28]<<6))+(0-(layer_in_buffer[29]<<0)-(layer_in_buffer[29]<<2)+(layer_in_buffer[29]<<6))-(0-(layer_in_buffer[30]<<1)-(layer_in_buffer[30]<<3)+(layer_in_buffer[30]<<7))-(0-(layer_in_buffer[31]<<1)-(layer_in_buffer[31]<<3)+(layer_in_buffer[31]<<7));
wire [DATA_WIDTH-1:0]   in_buffer_weight2;
assign in_buffer_weight2=0-(0-(layer_in_buffer[0]<<0)-(layer_in_buffer[0]<<2)+(layer_in_buffer[0]<<6))+(0-(layer_in_buffer[1]<<0)-(layer_in_buffer[1]<<2)+(layer_in_buffer[1]<<6))+(0-(layer_in_buffer[2]<<0)-(layer_in_buffer[2]<<2)+(layer_in_buffer[2]<<6))-(0-(layer_in_buffer[3]<<0)-(layer_in_buffer[3]<<2)+(layer_in_buffer[3]<<6))-(0-(layer_in_buffer[4]<<0)-(layer_in_buffer[4]<<2)+(layer_in_buffer[4]<<6))-(0-(layer_in_buffer[5]<<0)-(layer_in_buffer[5]<<2)+(layer_in_buffer[5]<<6))+(0-(layer_in_buffer[7]<<0)-(layer_in_buffer[7]<<2)+(layer_in_buffer[7]<<6))-(0+(layer_in_buffer[8]<<0)-(layer_in_buffer[8]<<4)+(layer_in_buffer[8]<<6)+(layer_in_buffer[8]<<7))-(0-(layer_in_buffer[9]<<0)-(layer_in_buffer[9]<<2)+(layer_in_buffer[9]<<6))-(0-(layer_in_buffer[10]<<0)-(layer_in_buffer[10]<<2)+(layer_in_buffer[10]<<6))+(0-(layer_in_buffer[11]<<0)-(layer_in_buffer[11]<<2)+(layer_in_buffer[11]<<6))+(0-(layer_in_buffer[12]<<0)-(layer_in_buffer[12]<<2)+(layer_in_buffer[12]<<6))+(0-(layer_in_buffer[13]<<1)-(layer_in_buffer[13]<<3)+(layer_in_buffer[13]<<7))+(0-(layer_in_buffer[14]<<0)-(layer_in_buffer[14]<<2)+(layer_in_buffer[14]<<6))+(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<6))+(0-(layer_in_buffer[17]<<0)-(layer_in_buffer[17]<<2)+(layer_in_buffer[17]<<6))+(0-(layer_in_buffer[18]<<1)-(layer_in_buffer[18]<<3)+(layer_in_buffer[18]<<7))+(0-(layer_in_buffer[21]<<0)-(layer_in_buffer[21]<<2)+(layer_in_buffer[21]<<6))-(0-(layer_in_buffer[22]<<0)-(layer_in_buffer[22]<<2)+(layer_in_buffer[22]<<6))-(0-(layer_in_buffer[25]<<0)-(layer_in_buffer[25]<<2)+(layer_in_buffer[25]<<6))+(0-(layer_in_buffer[27]<<0)-(layer_in_buffer[27]<<2)+(layer_in_buffer[27]<<6))+(0-(layer_in_buffer[28]<<0)-(layer_in_buffer[28]<<2)+(layer_in_buffer[28]<<6))-(0+(layer_in_buffer[29]<<0)-(layer_in_buffer[29]<<4)+(layer_in_buffer[29]<<6)+(layer_in_buffer[29]<<7))+(0-(layer_in_buffer[30]<<0)-(layer_in_buffer[30]<<2)+(layer_in_buffer[30]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight3;
assign in_buffer_weight3=0+(0-(layer_in_buffer[0]<<0)-(layer_in_buffer[0]<<2)+(layer_in_buffer[0]<<6))+(0-(layer_in_buffer[2]<<0)-(layer_in_buffer[2]<<2)+(layer_in_buffer[2]<<6))-(0-(layer_in_buffer[3]<<0)-(layer_in_buffer[3]<<2)+(layer_in_buffer[3]<<6))-(0-(layer_in_buffer[5]<<0)-(layer_in_buffer[5]<<2)+(layer_in_buffer[5]<<6))+(0-(layer_in_buffer[6]<<0)-(layer_in_buffer[6]<<2)+(layer_in_buffer[6]<<6))+(0-(layer_in_buffer[7]<<0)-(layer_in_buffer[7]<<2)+(layer_in_buffer[7]<<6))-(0-(layer_in_buffer[8]<<0)-(layer_in_buffer[8]<<2)+(layer_in_buffer[8]<<6))-(0-(layer_in_buffer[9]<<1)-(layer_in_buffer[9]<<3)+(layer_in_buffer[9]<<7))+(0-(layer_in_buffer[10]<<0)-(layer_in_buffer[10]<<2)+(layer_in_buffer[10]<<6))-(0-(layer_in_buffer[11]<<1)-(layer_in_buffer[11]<<3)+(layer_in_buffer[11]<<7))+(0-(layer_in_buffer[12]<<0)-(layer_in_buffer[12]<<2)+(layer_in_buffer[12]<<6))+(0-(layer_in_buffer[13]<<0)-(layer_in_buffer[13]<<2)+(layer_in_buffer[13]<<6))-(0-(layer_in_buffer[14]<<0)-(layer_in_buffer[14]<<2)+(layer_in_buffer[14]<<6))+(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<6))+(0-(layer_in_buffer[17]<<0)-(layer_in_buffer[17]<<2)+(layer_in_buffer[17]<<6))-(0-(layer_in_buffer[18]<<1)-(layer_in_buffer[18]<<3)+(layer_in_buffer[18]<<7))+(0-(layer_in_buffer[20]<<0)-(layer_in_buffer[20]<<2)+(layer_in_buffer[20]<<6))-(0-(layer_in_buffer[21]<<0)-(layer_in_buffer[21]<<2)+(layer_in_buffer[21]<<6))-(0-(layer_in_buffer[24]<<1)-(layer_in_buffer[24]<<3)+(layer_in_buffer[24]<<7))+(0-(layer_in_buffer[28]<<0)-(layer_in_buffer[28]<<2)+(layer_in_buffer[28]<<6))-(0-(layer_in_buffer[29]<<0)-(layer_in_buffer[29]<<2)+(layer_in_buffer[29]<<6))-(0-(layer_in_buffer[30]<<1)-(layer_in_buffer[30]<<3)+(layer_in_buffer[30]<<7))+(0-(layer_in_buffer[31]<<0)-(layer_in_buffer[31]<<2)+(layer_in_buffer[31]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight4;
assign in_buffer_weight4=0-(0-(layer_in_buffer[0]<<0)-(layer_in_buffer[0]<<2)+(layer_in_buffer[0]<<6))+(0-(layer_in_buffer[1]<<0)-(layer_in_buffer[1]<<2)+(layer_in_buffer[1]<<6))-(0-(layer_in_buffer[2]<<1)-(layer_in_buffer[2]<<3)+(layer_in_buffer[2]<<7))+(0-(layer_in_buffer[6]<<0)-(layer_in_buffer[6]<<2)+(layer_in_buffer[6]<<6))+(0-(layer_in_buffer[9]<<0)-(layer_in_buffer[9]<<2)+(layer_in_buffer[9]<<6))+(0-(layer_in_buffer[12]<<0)-(layer_in_buffer[12]<<2)+(layer_in_buffer[12]<<6))+(0-(layer_in_buffer[13]<<0)-(layer_in_buffer[13]<<2)+(layer_in_buffer[13]<<6))+(0-(layer_in_buffer[14]<<0)-(layer_in_buffer[14]<<2)+(layer_in_buffer[14]<<6))-(0-(layer_in_buffer[15]<<2)-(layer_in_buffer[15]<<4)+(layer_in_buffer[15]<<8))-(0-(layer_in_buffer[16]<<1)-(layer_in_buffer[16]<<3)+(layer_in_buffer[16]<<7))-(0-(layer_in_buffer[17]<<0)-(layer_in_buffer[17]<<2)+(layer_in_buffer[17]<<6))-(0-(layer_in_buffer[18]<<1)-(layer_in_buffer[18]<<3)+(layer_in_buffer[18]<<7))-(0-(layer_in_buffer[20]<<0)-(layer_in_buffer[20]<<2)+(layer_in_buffer[20]<<6))-(0-(layer_in_buffer[22]<<0)-(layer_in_buffer[22]<<2)+(layer_in_buffer[22]<<6))+(0-(layer_in_buffer[23]<<0)-(layer_in_buffer[23]<<2)+(layer_in_buffer[23]<<6))+(0-(layer_in_buffer[24]<<0)-(layer_in_buffer[24]<<2)+(layer_in_buffer[24]<<6))+(0-(layer_in_buffer[25]<<0)-(layer_in_buffer[25]<<2)+(layer_in_buffer[25]<<6))-(0-(layer_in_buffer[26]<<0)-(layer_in_buffer[26]<<2)+(layer_in_buffer[26]<<6))-(0-(layer_in_buffer[27]<<1)-(layer_in_buffer[27]<<3)+(layer_in_buffer[27]<<7))-(0-(layer_in_buffer[28]<<1)-(layer_in_buffer[28]<<3)+(layer_in_buffer[28]<<7))+(0-(layer_in_buffer[29]<<0)-(layer_in_buffer[29]<<2)+(layer_in_buffer[29]<<6))+(0-(layer_in_buffer[30]<<0)-(layer_in_buffer[30]<<2)+(layer_in_buffer[30]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight5;
assign in_buffer_weight5=0+(0-(layer_in_buffer[1]<<0)-(layer_in_buffer[1]<<2)+(layer_in_buffer[1]<<6))+(0-(layer_in_buffer[5]<<1)-(layer_in_buffer[5]<<3)+(layer_in_buffer[5]<<7))-(0-(layer_in_buffer[6]<<0)-(layer_in_buffer[6]<<2)+(layer_in_buffer[6]<<6))+(0-(layer_in_buffer[8]<<1)-(layer_in_buffer[8]<<3)+(layer_in_buffer[8]<<7))+(0-(layer_in_buffer[9]<<0)-(layer_in_buffer[9]<<2)+(layer_in_buffer[9]<<6))-(0-(layer_in_buffer[11]<<0)-(layer_in_buffer[11]<<2)+(layer_in_buffer[11]<<6))-(0+(layer_in_buffer[12]<<1)-(layer_in_buffer[12]<<5)+(layer_in_buffer[12]<<7)+(layer_in_buffer[12]<<8))+(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<6))+(0-(layer_in_buffer[17]<<0)-(layer_in_buffer[17]<<2)+(layer_in_buffer[17]<<6))+(0-(layer_in_buffer[20]<<0)-(layer_in_buffer[20]<<2)+(layer_in_buffer[20]<<6))-(0-(layer_in_buffer[22]<<0)-(layer_in_buffer[22]<<2)+(layer_in_buffer[22]<<6))-(0-(layer_in_buffer[24]<<1)-(layer_in_buffer[24]<<3)+(layer_in_buffer[24]<<7))-(0-(layer_in_buffer[25]<<1)-(layer_in_buffer[25]<<3)+(layer_in_buffer[25]<<7))-(0-(layer_in_buffer[26]<<0)-(layer_in_buffer[26]<<2)+(layer_in_buffer[26]<<6))-(0-(layer_in_buffer[27]<<0)-(layer_in_buffer[27]<<2)+(layer_in_buffer[27]<<6))+(0-(layer_in_buffer[28]<<0)-(layer_in_buffer[28]<<2)+(layer_in_buffer[28]<<6))+(0-(layer_in_buffer[30]<<0)-(layer_in_buffer[30]<<2)+(layer_in_buffer[30]<<6))-(0-(layer_in_buffer[31]<<1)-(layer_in_buffer[31]<<3)+(layer_in_buffer[31]<<7));
wire [DATA_WIDTH-1:0]   in_buffer_weight6;
assign in_buffer_weight6=0-(0-(layer_in_buffer[0]<<0)-(layer_in_buffer[0]<<2)+(layer_in_buffer[0]<<6))+(0-(layer_in_buffer[1]<<0)-(layer_in_buffer[1]<<2)+(layer_in_buffer[1]<<6))-(0-(layer_in_buffer[2]<<0)-(layer_in_buffer[2]<<2)+(layer_in_buffer[2]<<6))+(0-(layer_in_buffer[4]<<1)-(layer_in_buffer[4]<<3)+(layer_in_buffer[4]<<7))+(0-(layer_in_buffer[5]<<0)-(layer_in_buffer[5]<<2)+(layer_in_buffer[5]<<6))-(0-(layer_in_buffer[6]<<1)-(layer_in_buffer[6]<<3)+(layer_in_buffer[6]<<7))-(0-(layer_in_buffer[7]<<0)-(layer_in_buffer[7]<<2)+(layer_in_buffer[7]<<6))+(0-(layer_in_buffer[8]<<1)-(layer_in_buffer[8]<<3)+(layer_in_buffer[8]<<7))+(0-(layer_in_buffer[9]<<0)-(layer_in_buffer[9]<<2)+(layer_in_buffer[9]<<6))-(0+(layer_in_buffer[10]<<0)-(layer_in_buffer[10]<<4)+(layer_in_buffer[10]<<6)+(layer_in_buffer[10]<<7))+(0-(layer_in_buffer[11]<<1)-(layer_in_buffer[11]<<3)+(layer_in_buffer[11]<<7))-(0+(layer_in_buffer[12]<<0)-(layer_in_buffer[12]<<4)+(layer_in_buffer[12]<<6)+(layer_in_buffer[12]<<7))-(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<6))+(0-(layer_in_buffer[16]<<0)-(layer_in_buffer[16]<<2)+(layer_in_buffer[16]<<6))-(0-(layer_in_buffer[18]<<1)-(layer_in_buffer[18]<<3)+(layer_in_buffer[18]<<7))-(0-(layer_in_buffer[20]<<0)-(layer_in_buffer[20]<<2)+(layer_in_buffer[20]<<6))-(0-(layer_in_buffer[22]<<1)-(layer_in_buffer[22]<<3)+(layer_in_buffer[22]<<7))+(0-(layer_in_buffer[24]<<1)-(layer_in_buffer[24]<<3)+(layer_in_buffer[24]<<7))+(0-(layer_in_buffer[25]<<0)-(layer_in_buffer[25]<<2)+(layer_in_buffer[25]<<6))+(0-(layer_in_buffer[26]<<0)-(layer_in_buffer[26]<<2)+(layer_in_buffer[26]<<6))-(0-(layer_in_buffer[27]<<1)-(layer_in_buffer[27]<<3)+(layer_in_buffer[27]<<7))-(0-(layer_in_buffer[28]<<0)-(layer_in_buffer[28]<<2)+(layer_in_buffer[28]<<6))-(0-(layer_in_buffer[29]<<1)-(layer_in_buffer[29]<<3)+(layer_in_buffer[29]<<7))-(0-(layer_in_buffer[30]<<1)-(layer_in_buffer[30]<<3)+(layer_in_buffer[30]<<7))-(0-(layer_in_buffer[31]<<0)-(layer_in_buffer[31]<<2)+(layer_in_buffer[31]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight7;
assign in_buffer_weight7=0-(0-(layer_in_buffer[1]<<1)-(layer_in_buffer[1]<<3)+(layer_in_buffer[1]<<7))+(0-(layer_in_buffer[2]<<0)-(layer_in_buffer[2]<<2)+(layer_in_buffer[2]<<6))+(0-(layer_in_buffer[3]<<0)-(layer_in_buffer[3]<<2)+(layer_in_buffer[3]<<6))+(0-(layer_in_buffer[4]<<0)-(layer_in_buffer[4]<<2)+(layer_in_buffer[4]<<6))-(0-(layer_in_buffer[5]<<1)-(layer_in_buffer[5]<<3)+(layer_in_buffer[5]<<7))+(0-(layer_in_buffer[6]<<0)-(layer_in_buffer[6]<<2)+(layer_in_buffer[6]<<6))+(0+(layer_in_buffer[7]<<0)-(layer_in_buffer[7]<<4)+(layer_in_buffer[7]<<6)+(layer_in_buffer[7]<<7))-(0-(layer_in_buffer[8]<<1)-(layer_in_buffer[8]<<3)+(layer_in_buffer[8]<<7))-(0-(layer_in_buffer[9]<<0)-(layer_in_buffer[9]<<2)+(layer_in_buffer[9]<<6))+(0-(layer_in_buffer[12]<<0)-(layer_in_buffer[12]<<2)+(layer_in_buffer[12]<<6))+(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<6))-(0-(layer_in_buffer[16]<<1)-(layer_in_buffer[16]<<3)+(layer_in_buffer[16]<<7))+(0-(layer_in_buffer[17]<<0)-(layer_in_buffer[17]<<2)+(layer_in_buffer[17]<<6))+(0-(layer_in_buffer[18]<<0)-(layer_in_buffer[18]<<2)+(layer_in_buffer[18]<<6))-(0+(layer_in_buffer[20]<<0)-(layer_in_buffer[20]<<4)+(layer_in_buffer[20]<<6)+(layer_in_buffer[20]<<7))-(0-(layer_in_buffer[21]<<1)-(layer_in_buffer[21]<<3)+(layer_in_buffer[21]<<7))+(0-(layer_in_buffer[22]<<0)-(layer_in_buffer[22]<<2)+(layer_in_buffer[22]<<6))-(0-(layer_in_buffer[23]<<1)-(layer_in_buffer[23]<<3)+(layer_in_buffer[23]<<7))-(0-(layer_in_buffer[24]<<0)-(layer_in_buffer[24]<<2)+(layer_in_buffer[24]<<6))-(0-(layer_in_buffer[25]<<0)-(layer_in_buffer[25]<<2)+(layer_in_buffer[25]<<6))-(0-(layer_in_buffer[26]<<0)-(layer_in_buffer[26]<<2)+(layer_in_buffer[26]<<6))-(0-(layer_in_buffer[27]<<0)-(layer_in_buffer[27]<<2)+(layer_in_buffer[27]<<6))+(0-(layer_in_buffer[29]<<0)-(layer_in_buffer[29]<<2)+(layer_in_buffer[29]<<6))+(0-(layer_in_buffer[30]<<0)-(layer_in_buffer[30]<<2)+(layer_in_buffer[30]<<6))+(0-(layer_in_buffer[31]<<0)-(layer_in_buffer[31]<<2)+(layer_in_buffer[31]<<6));
wire [DATA_WIDTH-1:0]   in_buffer_weight8;
assign in_buffer_weight8=0+(0-(layer_in_buffer[0]<<0)-(layer_in_buffer[0]<<2)+(layer_in_buffer[0]<<6))-(0-(layer_in_buffer[1]<<0)-(layer_in_buffer[1]<<2)+(layer_in_buffer[1]<<6))-(0+(layer_in_buffer[4]<<0)-(layer_in_buffer[4]<<4)+(layer_in_buffer[4]<<6)+(layer_in_buffer[4]<<7))+(0-(layer_in_buffer[5]<<0)-(layer_in_buffer[5]<<2)+(layer_in_buffer[5]<<6))-(0-(layer_in_buffer[6]<<1)-(layer_in_buffer[6]<<3)+(layer_in_buffer[6]<<7))-(0-(layer_in_buffer[7]<<1)-(layer_in_buffer[7]<<3)+(layer_in_buffer[7]<<7))+(0-(layer_in_buffer[8]<<0)-(layer_in_buffer[8]<<2)+(layer_in_buffer[8]<<6))+(0-(layer_in_buffer[9]<<0)-(layer_in_buffer[9]<<2)+(layer_in_buffer[9]<<6))+(0-(layer_in_buffer[10]<<0)-(layer_in_buffer[10]<<2)+(layer_in_buffer[10]<<6))-(0-(layer_in_buffer[12]<<0)-(layer_in_buffer[12]<<2)+(layer_in_buffer[12]<<6))-(0-(layer_in_buffer[15]<<0)-(layer_in_buffer[15]<<2)+(layer_in_buffer[15]<<6))+(0-(layer_in_buffer[16]<<0)-(layer_in_buffer[16]<<2)+(layer_in_buffer[16]<<6))+(0-(layer_in_buffer[18]<<0)-(layer_in_buffer[18]<<2)+(layer_in_buffer[18]<<6))+(0-(layer_in_buffer[24]<<0)-(layer_in_buffer[24]<<2)+(layer_in_buffer[24]<<6))+(0-(layer_in_buffer[25]<<0)-(layer_in_buffer[25]<<2)+(layer_in_buffer[25]<<6))+(0-(layer_in_buffer[27]<<0)-(layer_in_buffer[27]<<2)+(layer_in_buffer[27]<<6))-(0-(layer_in_buffer[29]<<0)-(layer_in_buffer[29]<<2)+(layer_in_buffer[29]<<6))-(0+(layer_in_buffer[30]<<0)-(layer_in_buffer[30]<<4)+(layer_in_buffer[30]<<6)+(layer_in_buffer[30]<<7));
wire [DATA_WIDTH-1:0]   in_buffer_weight9;
assign in_buffer_weight9=0-(0-(layer_in_buffer[0]<<0)-(layer_in_buffer[0]<<2)+(layer_in_buffer[0]<<6))+(0-(layer_in_buffer[2]<<0)-(layer_in_buffer[2]<<2)+(layer_in_buffer[2]<<6))+(0-(layer_in_buffer[3]<<0)-(layer_in_buffer[3]<<2)+(layer_in_buffer[3]<<6))-(0-(layer_in_buffer[4]<<0)-(layer_in_buffer[4]<<2)+(layer_in_buffer[4]<<6))+(0-(layer_in_buffer[6]<<0)-(layer_in_buffer[6]<<2)+(layer_in_buffer[6]<<6))-(0-(layer_in_buffer[7]<<0)+(layer_in_buffer[7]<<3)+(layer_in_buffer[7]<<5)+(layer_in_buffer[7]<<8))+(0-(layer_in_buffer[8]<<0)-(layer_in_buffer[8]<<2)+(layer_in_buffer[8]<<6))+(0-(layer_in_buffer[10]<<0)-(layer_in_buffer[10]<<2)+(layer_in_buffer[10]<<6))-(0-(layer_in_buffer[11]<<0)-(layer_in_buffer[11]<<2)+(layer_in_buffer[11]<<6))+(0-(layer_in_buffer[12]<<0)-(layer_in_buffer[12]<<2)+(layer_in_buffer[12]<<6))-(0+(layer_in_buffer[13]<<0)-(layer_in_buffer[13]<<4)+(layer_in_buffer[13]<<6)+(layer_in_buffer[13]<<7))-(0-(layer_in_buffer[15]<<1)-(layer_in_buffer[15]<<3)+(layer_in_buffer[15]<<7))+(0-(layer_in_buffer[16]<<0)-(layer_in_buffer[16]<<2)+(layer_in_buffer[16]<<6))-(0+(layer_in_buffer[17]<<0)-(layer_in_buffer[17]<<4)+(layer_in_buffer[17]<<6)+(layer_in_buffer[17]<<7))-(0-(layer_in_buffer[18]<<0)-(layer_in_buffer[18]<<2)+(layer_in_buffer[18]<<6))-(0-(layer_in_buffer[21]<<0)-(layer_in_buffer[21]<<2)+(layer_in_buffer[21]<<6))+(0-(layer_in_buffer[22]<<0)-(layer_in_buffer[22]<<2)+(layer_in_buffer[22]<<6))-(0-(layer_in_buffer[24]<<0)-(layer_in_buffer[24]<<2)+(layer_in_buffer[24]<<6))-(0-(layer_in_buffer[25]<<0)-(layer_in_buffer[25]<<2)+(layer_in_buffer[25]<<6))+(0-(layer_in_buffer[26]<<0)-(layer_in_buffer[26]<<2)+(layer_in_buffer[26]<<6))-(0-(layer_in_buffer[28]<<1)-(layer_in_buffer[28]<<3)+(layer_in_buffer[28]<<7))+(0-(layer_in_buffer[29]<<0)-(layer_in_buffer[29]<<2)+(layer_in_buffer[29]<<6))+(0-(layer_in_buffer[31]<<1)-(layer_in_buffer[31]<<3)+(layer_in_buffer[31]<<7));
wire [DATA_WIDTH-1:0]   weight_bias0;
assign weight_bias0=in_buffer_weight0+(0);
wire [DATA_WIDTH-1:0]   weight_bias1;
assign weight_bias1=in_buffer_weight1+(59);
wire [DATA_WIDTH-1:0]   weight_bias2;
assign weight_bias2=in_buffer_weight2+(0);
wire [DATA_WIDTH-1:0]   weight_bias3;
assign weight_bias3=in_buffer_weight3+(0);
wire [DATA_WIDTH-1:0]   weight_bias4;
assign weight_bias4=in_buffer_weight4+(0);
wire [DATA_WIDTH-1:0]   weight_bias5;
assign weight_bias5=in_buffer_weight5+(59);
wire [DATA_WIDTH-1:0]   weight_bias6;
assign weight_bias6=in_buffer_weight6+(0);
wire [DATA_WIDTH-1:0]   weight_bias7;
assign weight_bias7=in_buffer_weight7+(59);
wire [DATA_WIDTH-1:0]   weight_bias8;
assign weight_bias8=in_buffer_weight8+(-59);
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
