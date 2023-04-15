module layer0_tcb_144x16x10
(
    input clk,
    input rst,
    input [144*8-1:0] img,
    input valid,
    output  reg ready,
    output [20*16-1:0] layer_out
);
parameter DATA_WIDTH = 20;
parameter IMG_SZ   =   144;
reg    signed [8-1:0]  in_buffer[0:IMG_SZ-1];
integer i;
always@(posedge clk )
    begin
        if(rst)
            begin
                for(i=0;i<IMG_SZ;i=i+1)
                    begin
                        in_buffer[i]<=0;
                    end
            end
        else
        begin
       in_buffer[0]<=img[7:0];
       in_buffer[1]<=img[15:8];
       in_buffer[2]<=img[23:16];
       in_buffer[3]<=img[31:24];
       in_buffer[4]<=img[39:32];
       in_buffer[5]<=img[47:40];
       in_buffer[6]<=img[55:48];
       in_buffer[7]<=img[63:56];
       in_buffer[8]<=img[71:64];
       in_buffer[9]<=img[79:72];
       in_buffer[10]<=img[87:80];
       in_buffer[11]<=img[95:88];
       in_buffer[12]<=img[103:96];
       in_buffer[13]<=img[111:104];
       in_buffer[14]<=img[119:112];
       in_buffer[15]<=img[127:120];
       in_buffer[16]<=img[135:128];
       in_buffer[17]<=img[143:136];
       in_buffer[18]<=img[151:144];
       in_buffer[19]<=img[159:152];
       in_buffer[20]<=img[167:160];
       in_buffer[21]<=img[175:168];
       in_buffer[22]<=img[183:176];
       in_buffer[23]<=img[191:184];
       in_buffer[24]<=img[199:192];
       in_buffer[25]<=img[207:200];
       in_buffer[26]<=img[215:208];
       in_buffer[27]<=img[223:216];
       in_buffer[28]<=img[231:224];
       in_buffer[29]<=img[239:232];
       in_buffer[30]<=img[247:240];
       in_buffer[31]<=img[255:248];
       in_buffer[32]<=img[263:256];
       in_buffer[33]<=img[271:264];
       in_buffer[34]<=img[279:272];
       in_buffer[35]<=img[287:280];
       in_buffer[36]<=img[295:288];
       in_buffer[37]<=img[303:296];
       in_buffer[38]<=img[311:304];
       in_buffer[39]<=img[319:312];
       in_buffer[40]<=img[327:320];
       in_buffer[41]<=img[335:328];
       in_buffer[42]<=img[343:336];
       in_buffer[43]<=img[351:344];
       in_buffer[44]<=img[359:352];
       in_buffer[45]<=img[367:360];
       in_buffer[46]<=img[375:368];
       in_buffer[47]<=img[383:376];
       in_buffer[48]<=img[391:384];
       in_buffer[49]<=img[399:392];
       in_buffer[50]<=img[407:400];
       in_buffer[51]<=img[415:408];
       in_buffer[52]<=img[423:416];
       in_buffer[53]<=img[431:424];
       in_buffer[54]<=img[439:432];
       in_buffer[55]<=img[447:440];
       in_buffer[56]<=img[455:448];
       in_buffer[57]<=img[463:456];
       in_buffer[58]<=img[471:464];
       in_buffer[59]<=img[479:472];
       in_buffer[60]<=img[487:480];
       in_buffer[61]<=img[495:488];
       in_buffer[62]<=img[503:496];
       in_buffer[63]<=img[511:504];
       in_buffer[64]<=img[519:512];
       in_buffer[65]<=img[527:520];
       in_buffer[66]<=img[535:528];
       in_buffer[67]<=img[543:536];
       in_buffer[68]<=img[551:544];
       in_buffer[69]<=img[559:552];
       in_buffer[70]<=img[567:560];
       in_buffer[71]<=img[575:568];
       in_buffer[72]<=img[583:576];
       in_buffer[73]<=img[591:584];
       in_buffer[74]<=img[599:592];
       in_buffer[75]<=img[607:600];
       in_buffer[76]<=img[615:608];
       in_buffer[77]<=img[623:616];
       in_buffer[78]<=img[631:624];
       in_buffer[79]<=img[639:632];
       in_buffer[80]<=img[647:640];
       in_buffer[81]<=img[655:648];
       in_buffer[82]<=img[663:656];
       in_buffer[83]<=img[671:664];
       in_buffer[84]<=img[679:672];
       in_buffer[85]<=img[687:680];
       in_buffer[86]<=img[695:688];
       in_buffer[87]<=img[703:696];
       in_buffer[88]<=img[711:704];
       in_buffer[89]<=img[719:712];
       in_buffer[90]<=img[727:720];
       in_buffer[91]<=img[735:728];
       in_buffer[92]<=img[743:736];
       in_buffer[93]<=img[751:744];
       in_buffer[94]<=img[759:752];
       in_buffer[95]<=img[767:760];
       in_buffer[96]<=img[775:768];
       in_buffer[97]<=img[783:776];
       in_buffer[98]<=img[791:784];
       in_buffer[99]<=img[799:792];
       in_buffer[100]<=img[807:800];
       in_buffer[101]<=img[815:808];
       in_buffer[102]<=img[823:816];
       in_buffer[103]<=img[831:824];
       in_buffer[104]<=img[839:832];
       in_buffer[105]<=img[847:840];
       in_buffer[106]<=img[855:848];
       in_buffer[107]<=img[863:856];
       in_buffer[108]<=img[871:864];
       in_buffer[109]<=img[879:872];
       in_buffer[110]<=img[887:880];
       in_buffer[111]<=img[895:888];
       in_buffer[112]<=img[903:896];
       in_buffer[113]<=img[911:904];
       in_buffer[114]<=img[919:912];
       in_buffer[115]<=img[927:920];
       in_buffer[116]<=img[935:928];
       in_buffer[117]<=img[943:936];
       in_buffer[118]<=img[951:944];
       in_buffer[119]<=img[959:952];
       in_buffer[120]<=img[967:960];
       in_buffer[121]<=img[975:968];
       in_buffer[122]<=img[983:976];
       in_buffer[123]<=img[991:984];
       in_buffer[124]<=img[999:992];
       in_buffer[125]<=img[1007:1000];
       in_buffer[126]<=img[1015:1008];
       in_buffer[127]<=img[1023:1016];
       in_buffer[128]<=img[1031:1024];
       in_buffer[129]<=img[1039:1032];
       in_buffer[130]<=img[1047:1040];
       in_buffer[131]<=img[1055:1048];
       in_buffer[132]<=img[1063:1056];
       in_buffer[133]<=img[1071:1064];
       in_buffer[134]<=img[1079:1072];
       in_buffer[135]<=img[1087:1080];
       in_buffer[136]<=img[1095:1088];
       in_buffer[137]<=img[1103:1096];
       in_buffer[138]<=img[1111:1104];
       in_buffer[139]<=img[1119:1112];
       in_buffer[140]<=img[1127:1120];
       in_buffer[141]<=img[1135:1128];
       in_buffer[142]<=img[1143:1136];
       in_buffer[143]<=img[1151:1144];
        end
   end
wire signed  [DATA_WIDTH-1:0]   in_buffer_weight0;
assign in_buffer_weight0=0;
wire signed  [DATA_WIDTH-1:0]   in_buffer_weight1;
assign in_buffer_weight1=0;
wire signed  [DATA_WIDTH-1:0]   in_buffer_weight2;
assign in_buffer_weight2=0-(0-(in_buffer[27]<<0)-(in_buffer[27]<<2)+(in_buffer[27]<<6))-(0-(in_buffer[28]<<0)-(in_buffer[28]<<2)+(in_buffer[28]<<6))-(0-(in_buffer[29]<<0)-(in_buffer[29]<<2)+(in_buffer[29]<<6))-(0-(in_buffer[39]<<0)-(in_buffer[39]<<2)+(in_buffer[39]<<6))-(0-(in_buffer[40]<<0)-(in_buffer[40]<<2)+(in_buffer[40]<<6))-(0-(in_buffer[41]<<0)-(in_buffer[41]<<2)+(in_buffer[41]<<6))-(0-(in_buffer[42]<<0)-(in_buffer[42]<<2)+(in_buffer[42]<<6))-(0-(in_buffer[43]<<0)-(in_buffer[43]<<2)+(in_buffer[43]<<6))-(0-(in_buffer[52]<<0)-(in_buffer[52]<<2)+(in_buffer[52]<<6))-(0-(in_buffer[53]<<0)-(in_buffer[53]<<2)+(in_buffer[53]<<6))-(0-(in_buffer[54]<<0)-(in_buffer[54]<<2)+(in_buffer[54]<<6))-(0-(in_buffer[55]<<0)-(in_buffer[55]<<2)+(in_buffer[55]<<6))+(0-(in_buffer[61]<<0)-(in_buffer[61]<<2)+(in_buffer[61]<<6))-(0-(in_buffer[65]<<0)-(in_buffer[65]<<2)+(in_buffer[65]<<6))+(0-(in_buffer[69]<<0)-(in_buffer[69]<<2)+(in_buffer[69]<<6))+(0-(in_buffer[73]<<0)-(in_buffer[73]<<2)+(in_buffer[73]<<6))+(0-(in_buffer[74]<<0)-(in_buffer[74]<<2)+(in_buffer[74]<<6))+(0-(in_buffer[75]<<0)-(in_buffer[75]<<2)+(in_buffer[75]<<6))-(0-(in_buffer[77]<<0)-(in_buffer[77]<<2)+(in_buffer[77]<<6))-(0-(in_buffer[78]<<0)-(in_buffer[78]<<2)+(in_buffer[78]<<6))-(0-(in_buffer[89]<<0)-(in_buffer[89]<<2)+(in_buffer[89]<<6))-(0-(in_buffer[90]<<0)-(in_buffer[90]<<2)+(in_buffer[90]<<6))-(0-(in_buffer[119]<<0)-(in_buffer[119]<<2)+(in_buffer[119]<<6))-(0-(in_buffer[120]<<0)-(in_buffer[120]<<2)+(in_buffer[120]<<6))-(0-(in_buffer[131]<<0)-(in_buffer[131]<<2)+(in_buffer[131]<<6))-(0-(in_buffer[132]<<0)-(in_buffer[132]<<2)+(in_buffer[132]<<6))-(0-(in_buffer[136]<<0)-(in_buffer[136]<<2)+(in_buffer[136]<<6))-(0-(in_buffer[142]<<0)-(in_buffer[142]<<2)+(in_buffer[142]<<6))-(0-(in_buffer[143]<<0)-(in_buffer[143]<<2)+(in_buffer[143]<<6));
wire signed  [DATA_WIDTH-1:0]   in_buffer_weight3;
assign in_buffer_weight3=0;
wire signed  [DATA_WIDTH-1:0]   in_buffer_weight4;
assign in_buffer_weight4=0;
wire signed  [DATA_WIDTH-1:0]   in_buffer_weight5;
assign in_buffer_weight5=0-(0-(in_buffer[11]<<0)-(in_buffer[11]<<2)+(in_buffer[11]<<6))-(0-(in_buffer[29]<<0)-(in_buffer[29]<<2)+(in_buffer[29]<<6))-(0-(in_buffer[30]<<0)-(in_buffer[30]<<2)+(in_buffer[30]<<6))+(0-(in_buffer[36]<<0)-(in_buffer[36]<<2)+(in_buffer[36]<<6))+(0-(in_buffer[37]<<0)-(in_buffer[37]<<2)+(in_buffer[37]<<6))-(0-(in_buffer[39]<<0)-(in_buffer[39]<<2)+(in_buffer[39]<<6))-(0-(in_buffer[40]<<0)-(in_buffer[40]<<2)+(in_buffer[40]<<6))-(0-(in_buffer[41]<<0)-(in_buffer[41]<<2)+(in_buffer[41]<<6))-(0-(in_buffer[42]<<1)-(in_buffer[42]<<3)+(in_buffer[42]<<7))-(0-(in_buffer[43]<<0)-(in_buffer[43]<<2)+(in_buffer[43]<<6))-(0-(in_buffer[44]<<0)-(in_buffer[44]<<2)+(in_buffer[44]<<6))+(0-(in_buffer[46]<<0)-(in_buffer[46]<<2)+(in_buffer[46]<<6))+(0-(in_buffer[47]<<0)-(in_buffer[47]<<2)+(in_buffer[47]<<6))+(0-(in_buffer[48]<<0)-(in_buffer[48]<<2)+(in_buffer[48]<<6))+(0-(in_buffer[49]<<0)-(in_buffer[49]<<2)+(in_buffer[49]<<6))-(0-(in_buffer[52]<<0)-(in_buffer[52]<<2)+(in_buffer[52]<<6))-(0-(in_buffer[53]<<0)-(in_buffer[53]<<2)+(in_buffer[53]<<6))-(0-(in_buffer[54]<<0)-(in_buffer[54]<<2)+(in_buffer[54]<<6))-(0-(in_buffer[55]<<0)-(in_buffer[55]<<2)+(in_buffer[55]<<6))+(0-(in_buffer[58]<<0)-(in_buffer[58]<<2)+(in_buffer[58]<<6))+(0-(in_buffer[59]<<0)-(in_buffer[59]<<2)+(in_buffer[59]<<6))+(0-(in_buffer[61]<<0)-(in_buffer[61]<<2)+(in_buffer[61]<<6))+(0-(in_buffer[62]<<0)-(in_buffer[62]<<2)+(in_buffer[62]<<6))+(0-(in_buffer[70]<<0)-(in_buffer[70]<<2)+(in_buffer[70]<<6))+(0-(in_buffer[72]<<0)-(in_buffer[72]<<2)+(in_buffer[72]<<6))+(0-(in_buffer[74]<<0)-(in_buffer[74]<<2)+(in_buffer[74]<<6))+(0-(in_buffer[75]<<0)-(in_buffer[75]<<2)+(in_buffer[75]<<6))+(0-(in_buffer[80]<<0)-(in_buffer[80]<<2)+(in_buffer[80]<<6))+(0-(in_buffer[84]<<0)-(in_buffer[84]<<2)+(in_buffer[84]<<6))+(0-(in_buffer[88]<<0)-(in_buffer[88]<<2)+(in_buffer[88]<<6))+(0-(in_buffer[95]<<0)-(in_buffer[95]<<2)+(in_buffer[95]<<6))+(0-(in_buffer[96]<<0)-(in_buffer[96]<<2)+(in_buffer[96]<<6))-(0-(in_buffer[97]<<0)-(in_buffer[97]<<2)+(in_buffer[97]<<6))+(0-(in_buffer[107]<<0)-(in_buffer[107]<<2)+(in_buffer[107]<<6))+(0-(in_buffer[108]<<0)-(in_buffer[108]<<2)+(in_buffer[108]<<6))-(0-(in_buffer[109]<<0)-(in_buffer[109]<<2)+(in_buffer[109]<<6))-(0-(in_buffer[118]<<0)-(in_buffer[118]<<2)+(in_buffer[118]<<6))+(0-(in_buffer[119]<<0)-(in_buffer[119]<<2)+(in_buffer[119]<<6))+(0-(in_buffer[120]<<0)-(in_buffer[120]<<2)+(in_buffer[120]<<6))-(0-(in_buffer[121]<<0)-(in_buffer[121]<<2)+(in_buffer[121]<<6))-(0-(in_buffer[126]<<0)-(in_buffer[126]<<2)+(in_buffer[126]<<6))+(0-(in_buffer[131]<<0)-(in_buffer[131]<<2)+(in_buffer[131]<<6));
wire signed  [DATA_WIDTH-1:0]   in_buffer_weight6;
assign in_buffer_weight6=0;
wire signed  [DATA_WIDTH-1:0]   in_buffer_weight7;
assign in_buffer_weight7=0;
wire signed  [DATA_WIDTH-1:0]   in_buffer_weight8;
assign in_buffer_weight8=0;
wire signed  [DATA_WIDTH-1:0]   in_buffer_weight9;
assign in_buffer_weight9=0;
wire signed  [DATA_WIDTH-1:0]   in_buffer_weight10;
assign in_buffer_weight10=0+(0-(in_buffer[1]<<0)-(in_buffer[1]<<2)+(in_buffer[1]<<6))+(0-(in_buffer[23]<<0)-(in_buffer[23]<<2)+(in_buffer[23]<<6))-(0-(in_buffer[69]<<0)-(in_buffer[69]<<2)+(in_buffer[69]<<6))-(0-(in_buffer[73]<<0)-(in_buffer[73]<<2)+(in_buffer[73]<<6))-(0-(in_buffer[80]<<0)-(in_buffer[80]<<2)+(in_buffer[80]<<6))-(0-(in_buffer[87]<<0)-(in_buffer[87]<<2)+(in_buffer[87]<<6))-(0-(in_buffer[94]<<0)-(in_buffer[94]<<2)+(in_buffer[94]<<6))-(0-(in_buffer[108]<<0)-(in_buffer[108]<<2)+(in_buffer[108]<<6))+(0-(in_buffer[135]<<0)-(in_buffer[135]<<2)+(in_buffer[135]<<6))+(0-(in_buffer[140]<<0)-(in_buffer[140]<<2)+(in_buffer[140]<<6));
wire signed  [DATA_WIDTH-1:0]   in_buffer_weight11;
assign in_buffer_weight11=0;
wire signed  [DATA_WIDTH-1:0]   in_buffer_weight12;
assign in_buffer_weight12=0;
wire signed  [DATA_WIDTH-1:0]   in_buffer_weight13;
assign in_buffer_weight13=0;
wire signed  [DATA_WIDTH-1:0]   in_buffer_weight14;
assign in_buffer_weight14=0;
wire signed  [DATA_WIDTH-1:0]   in_buffer_weight15;
assign in_buffer_weight15=0+(0-(in_buffer[0]<<0)-(in_buffer[0]<<2)+(in_buffer[0]<<6))+(0-(in_buffer[2]<<0)-(in_buffer[2]<<2)+(in_buffer[2]<<6))+(0-(in_buffer[7]<<0)-(in_buffer[7]<<2)+(in_buffer[7]<<6))+(0-(in_buffer[8]<<0)-(in_buffer[8]<<2)+(in_buffer[8]<<6))+(0-(in_buffer[9]<<0)-(in_buffer[9]<<2)+(in_buffer[9]<<6))+(0-(in_buffer[10]<<0)-(in_buffer[10]<<2)+(in_buffer[10]<<6))+(0-(in_buffer[19]<<0)-(in_buffer[19]<<2)+(in_buffer[19]<<6))-(0-(in_buffer[64]<<0)-(in_buffer[64]<<2)+(in_buffer[64]<<6))-(0-(in_buffer[65]<<0)-(in_buffer[65]<<2)+(in_buffer[65]<<6))-(0-(in_buffer[66]<<0)-(in_buffer[66]<<2)+(in_buffer[66]<<6))-(0-(in_buffer[67]<<0)-(in_buffer[67]<<2)+(in_buffer[67]<<6))-(0-(in_buffer[77]<<0)-(in_buffer[77]<<2)+(in_buffer[77]<<6))+(0-(in_buffer[93]<<0)-(in_buffer[93]<<2)+(in_buffer[93]<<6))-(0-(in_buffer[96]<<0)-(in_buffer[96]<<2)+(in_buffer[96]<<6))+(0-(in_buffer[98]<<0)-(in_buffer[98]<<2)+(in_buffer[98]<<6))+(0-(in_buffer[100]<<0)-(in_buffer[100]<<2)+(in_buffer[100]<<6))+(0-(in_buffer[101]<<0)-(in_buffer[101]<<2)+(in_buffer[101]<<6))+(0-(in_buffer[102]<<0)-(in_buffer[102]<<2)+(in_buffer[102]<<6))+(0-(in_buffer[103]<<0)-(in_buffer[103]<<2)+(in_buffer[103]<<6))+(0-(in_buffer[104]<<0)-(in_buffer[104]<<2)+(in_buffer[104]<<6))+(0-(in_buffer[105]<<0)-(in_buffer[105]<<2)+(in_buffer[105]<<6))-(0-(in_buffer[107]<<0)-(in_buffer[107]<<2)+(in_buffer[107]<<6))-(0-(in_buffer[108]<<0)-(in_buffer[108]<<2)+(in_buffer[108]<<6))+(0-(in_buffer[110]<<0)-(in_buffer[110]<<2)+(in_buffer[110]<<6))+(0-(in_buffer[111]<<0)-(in_buffer[111]<<2)+(in_buffer[111]<<6))+(0-(in_buffer[112]<<0)-(in_buffer[112]<<2)+(in_buffer[112]<<6))+(0-(in_buffer[113]<<0)-(in_buffer[113]<<2)+(in_buffer[113]<<6))+(0-(in_buffer[114]<<0)-(in_buffer[114]<<2)+(in_buffer[114]<<6))+(0-(in_buffer[115]<<0)-(in_buffer[115]<<2)+(in_buffer[115]<<6))+(0-(in_buffer[117]<<0)-(in_buffer[117]<<2)+(in_buffer[117]<<6))-(0-(in_buffer[119]<<0)-(in_buffer[119]<<2)+(in_buffer[119]<<6))-(0-(in_buffer[120]<<0)-(in_buffer[120]<<2)+(in_buffer[120]<<6))+(0-(in_buffer[123]<<0)-(in_buffer[123]<<2)+(in_buffer[123]<<6))+(0-(in_buffer[124]<<0)-(in_buffer[124]<<2)+(in_buffer[124]<<6))+(0-(in_buffer[127]<<0)-(in_buffer[127]<<2)+(in_buffer[127]<<6))-(0-(in_buffer[131]<<0)-(in_buffer[131]<<2)+(in_buffer[131]<<6))-(0-(in_buffer[132]<<1)-(in_buffer[132]<<3)+(in_buffer[132]<<7))-(0-(in_buffer[133]<<0)-(in_buffer[133]<<2)+(in_buffer[133]<<6))-(0-(in_buffer[141]<<0)-(in_buffer[141]<<2)+(in_buffer[141]<<6))-(0-(in_buffer[142]<<0)-(in_buffer[142]<<2)+(in_buffer[142]<<6))-(0-(in_buffer[143]<<1)-(in_buffer[143]<<3)+(in_buffer[143]<<7));
wire signed [DATA_WIDTH-1:0]   weight_bias0;
wire signed [DATA_WIDTH-1:0]   weight_bias1;
wire signed [DATA_WIDTH-1:0]   weight_bias2;
wire signed [DATA_WIDTH-1:0]   weight_bias3;
wire signed [DATA_WIDTH-1:0]   weight_bias4;
wire signed [DATA_WIDTH-1:0]   weight_bias5;
wire signed [DATA_WIDTH-1:0]   weight_bias6;
wire signed [DATA_WIDTH-1:0]   weight_bias7;
wire signed [DATA_WIDTH-1:0]   weight_bias8;
wire signed [DATA_WIDTH-1:0]   weight_bias9;
wire signed [DATA_WIDTH-1:0]   weight_bias10;
wire signed [DATA_WIDTH-1:0]   weight_bias11;
wire signed [DATA_WIDTH-1:0]   weight_bias12;
wire signed [DATA_WIDTH-1:0]   weight_bias13;
wire signed [DATA_WIDTH-1:0]   weight_bias14;
wire signed [DATA_WIDTH-1:0]   weight_bias15;
assign weight_bias0=in_buffer_weight0+(0);
assign weight_bias1=in_buffer_weight1+(0);
assign weight_bias2=in_buffer_weight2+(-59);
assign weight_bias3=in_buffer_weight3+(0);
assign weight_bias4=in_buffer_weight4+(0);
assign weight_bias5=in_buffer_weight5+(118);
assign weight_bias6=in_buffer_weight6+(0);
assign weight_bias7=in_buffer_weight7+(0);
assign weight_bias8=in_buffer_weight8+(0);
assign weight_bias9=in_buffer_weight9+(0);
assign weight_bias10=in_buffer_weight10+(236);
assign weight_bias11=in_buffer_weight11+(0);
assign weight_bias12=in_buffer_weight12+(0);
assign weight_bias13=in_buffer_weight13+(0);
assign weight_bias14=in_buffer_weight14+(0);
assign weight_bias15=in_buffer_weight15+(0);
wire signed [DATA_WIDTH-1:0]   bias_relu0;
wire signed [DATA_WIDTH-1:0]   bias_relu1;
wire signed [DATA_WIDTH-1:0]   bias_relu2;
wire signed [DATA_WIDTH-1:0]   bias_relu3;
wire signed [DATA_WIDTH-1:0]   bias_relu4;
wire signed [DATA_WIDTH-1:0]   bias_relu5;
wire signed [DATA_WIDTH-1:0]   bias_relu6;
wire signed [DATA_WIDTH-1:0]   bias_relu7;
wire signed [DATA_WIDTH-1:0]   bias_relu8;
wire signed [DATA_WIDTH-1:0]   bias_relu9;
wire signed [DATA_WIDTH-1:0]   bias_relu10;
wire signed [DATA_WIDTH-1:0]   bias_relu11;
wire signed [DATA_WIDTH-1:0]   bias_relu12;
wire signed [DATA_WIDTH-1:0]   bias_relu13;
wire signed [DATA_WIDTH-1:0]   bias_relu14;
wire signed [DATA_WIDTH-1:0]   bias_relu15;
assign bias_relu0=(weight_bias0[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias0;
assign bias_relu1=(weight_bias1[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias1;
assign bias_relu2=(weight_bias2[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias2;
assign bias_relu3=(weight_bias3[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias3;
assign bias_relu4=(weight_bias4[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias4;
assign bias_relu5=(weight_bias5[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias5;
assign bias_relu6=(weight_bias6[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias6;
assign bias_relu7=(weight_bias7[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias7;
assign bias_relu8=(weight_bias8[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias8;
assign bias_relu9=(weight_bias9[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias9;
assign bias_relu10=(weight_bias10[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias10;
assign bias_relu11=(weight_bias11[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias11;
assign bias_relu12=(weight_bias12[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias12;
assign bias_relu13=(weight_bias13[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias13;
assign bias_relu14=(weight_bias14[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias14;
assign bias_relu15=(weight_bias15[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias15;
assign layer_out={bias_relu15,bias_relu14,bias_relu13,bias_relu12,bias_relu11,bias_relu10,bias_relu9,bias_relu8,bias_relu7,bias_relu6,bias_relu5,bias_relu4,bias_relu3,bias_relu2,bias_relu1,bias_relu0};
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