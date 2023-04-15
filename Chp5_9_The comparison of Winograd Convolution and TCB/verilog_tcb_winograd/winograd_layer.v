module winograd_layer
    #(
        parameter   OUTPUT_BIT  =   19,
                    OUTPUT_NODE =   100,
                    DATA_WIDTH  =   19,
                    IMG_SZ    =   144
)
(
    input   clk,
    input   rst,
    input   [IMG_SZ*8-1:0]   img,
    input   valid,
    output  reg ready,
    output reg [OUTPUT_BIT*OUTPUT_NODE-1:0] layer_out
);

reg    signed [8-1:0]  in_buffer[0:IMG_SZ-1];
integer j;

always@(posedge clk)
    begin
        if(rst)
            begin
                for(j=0;j<IMG_SZ;j=j+1)
                    begin
                        in_buffer[j]<=0;
                    end
            end
        else
            begin
                for(j=0;j<IMG_SZ;j=j+1)
                    begin
                        in_buffer[j]<=img[j*8+:8];
                    end
            end
    end

//wire declatation
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight0;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight1;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight2;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight3;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight4;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight5;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight6;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight7;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight8;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight9;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight10;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight11;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight12;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight13;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight14;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight15;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight16;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight17;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight18;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight19;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight20;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight21;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight22;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight23;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight24;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight25;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight26;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight27;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight28;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight29;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight30;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight31;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight32;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight33;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight34;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight35;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight36;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight37;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight38;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight39;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight40;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight41;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight42;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight43;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight44;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight45;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight46;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight47;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight48;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight49;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight50;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight51;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight52;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight53;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight54;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight55;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight56;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight57;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight58;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight59;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight60;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight61;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight62;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight63;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight64;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight65;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight66;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight67;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight68;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight69;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight70;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight71;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight72;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight73;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight74;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight75;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight76;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight77;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight78;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight79;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight80;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight81;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight82;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight83;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight84;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight85;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight86;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight87;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight88;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight89;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight90;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight91;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight92;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight93;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight94;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight95;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight96;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight97;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight98;
wire signed    [DATA_WIDTH-1:0]   in_buffer_weight99;

win_top DUT0(
.rst(rst),
.clk(clk),
.img({
in_buffer[0],in_buffer[1],in_buffer[2],in_buffer[3],
in_buffer[12],in_buffer[13],in_buffer[14],in_buffer[15],
in_buffer[24],in_buffer[25],in_buffer[26],in_buffer[27],
in_buffer[36],in_buffer[37],in_buffer[38],in_buffer[39]}),
.win_result_0(in_buffer_weight0),
.win_result_1(in_buffer_weight1),
.win_result_2(in_buffer_weight10),
.win_result_3(in_buffer_weight11)
);
win_top DUT1(
.rst(rst),
.clk(clk),
.img({
in_buffer[2],in_buffer[3],in_buffer[4],in_buffer[5],
in_buffer[14],in_buffer[15],in_buffer[16],in_buffer[17],
in_buffer[26],in_buffer[27],in_buffer[28],in_buffer[29],
in_buffer[38],in_buffer[39],in_buffer[40],in_buffer[41]}),
.win_result_0(in_buffer_weight2),
.win_result_1(in_buffer_weight3),
.win_result_2(in_buffer_weight12),
.win_result_3(in_buffer_weight13)
);
win_top DUT2(
.rst(rst),
.clk(clk),
.img({
in_buffer[4],in_buffer[5],in_buffer[6],in_buffer[7],
in_buffer[16],in_buffer[17],in_buffer[18],in_buffer[19],
in_buffer[28],in_buffer[29],in_buffer[30],in_buffer[31],
in_buffer[40],in_buffer[41],in_buffer[42],in_buffer[43]}),
.win_result_0(in_buffer_weight4),
.win_result_1(in_buffer_weight5),
.win_result_2(in_buffer_weight14),
.win_result_3(in_buffer_weight15)
);
win_top DUT3(
.rst(rst),
.clk(clk),
.img({
in_buffer[6],in_buffer[7],in_buffer[8],in_buffer[9],
in_buffer[18],in_buffer[19],in_buffer[20],in_buffer[21],
in_buffer[30],in_buffer[31],in_buffer[32],in_buffer[33],
in_buffer[42],in_buffer[43],in_buffer[44],in_buffer[45]}),
.win_result_0(in_buffer_weight6),
.win_result_1(in_buffer_weight7),
.win_result_2(in_buffer_weight16),
.win_result_3(in_buffer_weight17)
);
win_top DUT4(
.rst(rst),
.clk(clk),
.img({
in_buffer[8],in_buffer[9],in_buffer[10],in_buffer[11],
in_buffer[20],in_buffer[21],in_buffer[22],in_buffer[23],
in_buffer[32],in_buffer[33],in_buffer[34],in_buffer[35],
in_buffer[44],in_buffer[45],in_buffer[46],in_buffer[47]}),
.win_result_0(in_buffer_weight8),
.win_result_1(in_buffer_weight9),
.win_result_2(in_buffer_weight18),
.win_result_3(in_buffer_weight19)
);
win_top DUT5(
.rst(rst),
.clk(clk),
.img({
in_buffer[24],in_buffer[25],in_buffer[26],in_buffer[27],
in_buffer[36],in_buffer[37],in_buffer[38],in_buffer[39],
in_buffer[48],in_buffer[49],in_buffer[50],in_buffer[51],
in_buffer[60],in_buffer[61],in_buffer[62],in_buffer[63]}),
.win_result_0(in_buffer_weight20),
.win_result_1(in_buffer_weight21),
.win_result_2(in_buffer_weight30),
.win_result_3(in_buffer_weight31)
);
win_top DUT6(
.rst(rst),
.clk(clk),
.img({
in_buffer[26],in_buffer[27],in_buffer[28],in_buffer[29],
in_buffer[38],in_buffer[39],in_buffer[40],in_buffer[41],
in_buffer[50],in_buffer[51],in_buffer[52],in_buffer[53],
in_buffer[62],in_buffer[63],in_buffer[64],in_buffer[65]}),
.win_result_0(in_buffer_weight22),
.win_result_1(in_buffer_weight23),
.win_result_2(in_buffer_weight32),
.win_result_3(in_buffer_weight33)
);
win_top DUT7(
.rst(rst),
.clk(clk),
.img({
in_buffer[28],in_buffer[29],in_buffer[30],in_buffer[31],
in_buffer[40],in_buffer[41],in_buffer[42],in_buffer[43],
in_buffer[52],in_buffer[53],in_buffer[54],in_buffer[55],
in_buffer[64],in_buffer[65],in_buffer[66],in_buffer[67]}),
.win_result_0(in_buffer_weight24),
.win_result_1(in_buffer_weight25),
.win_result_2(in_buffer_weight34),
.win_result_3(in_buffer_weight35)
);
win_top DUT8(
.rst(rst),
.clk(clk),
.img({
in_buffer[30],in_buffer[31],in_buffer[32],in_buffer[33],
in_buffer[42],in_buffer[43],in_buffer[44],in_buffer[45],
in_buffer[54],in_buffer[55],in_buffer[56],in_buffer[57],
in_buffer[66],in_buffer[67],in_buffer[68],in_buffer[69]}),
.win_result_0(in_buffer_weight26),
.win_result_1(in_buffer_weight27),
.win_result_2(in_buffer_weight36),
.win_result_3(in_buffer_weight37)
);
win_top DUT9(
.rst(rst),
.clk(clk),
.img({
in_buffer[32],in_buffer[33],in_buffer[34],in_buffer[35],
in_buffer[44],in_buffer[45],in_buffer[46],in_buffer[47],
in_buffer[56],in_buffer[57],in_buffer[58],in_buffer[59],
in_buffer[68],in_buffer[69],in_buffer[70],in_buffer[71]}),
.win_result_0(in_buffer_weight28),
.win_result_1(in_buffer_weight29),
.win_result_2(in_buffer_weight38),
.win_result_3(in_buffer_weight39)
);
win_top DUT10(
.rst(rst),
.clk(clk),
.img({
in_buffer[48],in_buffer[49],in_buffer[50],in_buffer[51],
in_buffer[60],in_buffer[61],in_buffer[62],in_buffer[63],
in_buffer[72],in_buffer[73],in_buffer[74],in_buffer[75],
in_buffer[84],in_buffer[85],in_buffer[86],in_buffer[87]}),
.win_result_0(in_buffer_weight40),
.win_result_1(in_buffer_weight41),
.win_result_2(in_buffer_weight50),
.win_result_3(in_buffer_weight51)
);
win_top DUT11(
.rst(rst),
.clk(clk),
.img({
in_buffer[50],in_buffer[51],in_buffer[52],in_buffer[53],
in_buffer[62],in_buffer[63],in_buffer[64],in_buffer[65],
in_buffer[74],in_buffer[75],in_buffer[76],in_buffer[77],
in_buffer[86],in_buffer[87],in_buffer[88],in_buffer[89]}),
.win_result_0(in_buffer_weight42),
.win_result_1(in_buffer_weight43),
.win_result_2(in_buffer_weight52),
.win_result_3(in_buffer_weight53)
);
win_top DUT12(
.rst(rst),
.clk(clk),
.img({
in_buffer[52],in_buffer[53],in_buffer[54],in_buffer[55],
in_buffer[64],in_buffer[65],in_buffer[66],in_buffer[67],
in_buffer[76],in_buffer[77],in_buffer[78],in_buffer[79],
in_buffer[88],in_buffer[89],in_buffer[90],in_buffer[91]}),
.win_result_0(in_buffer_weight44),
.win_result_1(in_buffer_weight45),
.win_result_2(in_buffer_weight54),
.win_result_3(in_buffer_weight55)
);
win_top DUT13(
.rst(rst),
.clk(clk),
.img({
in_buffer[54],in_buffer[55],in_buffer[56],in_buffer[57],
in_buffer[66],in_buffer[67],in_buffer[68],in_buffer[69],
in_buffer[78],in_buffer[79],in_buffer[80],in_buffer[81],
in_buffer[90],in_buffer[91],in_buffer[92],in_buffer[93]}),
.win_result_0(in_buffer_weight46),
.win_result_1(in_buffer_weight47),
.win_result_2(in_buffer_weight56),
.win_result_3(in_buffer_weight57)
);
win_top DUT14(
.rst(rst),
.clk(clk),
.img({
in_buffer[56],in_buffer[57],in_buffer[58],in_buffer[59],
in_buffer[68],in_buffer[69],in_buffer[70],in_buffer[71],
in_buffer[80],in_buffer[81],in_buffer[82],in_buffer[83],
in_buffer[92],in_buffer[93],in_buffer[94],in_buffer[95]}),
.win_result_0(in_buffer_weight48),
.win_result_1(in_buffer_weight49),
.win_result_2(in_buffer_weight58),
.win_result_3(in_buffer_weight59)
);
win_top DUT15(
.rst(rst),
.clk(clk),
.img({
in_buffer[72],in_buffer[73],in_buffer[74],in_buffer[75],
in_buffer[84],in_buffer[85],in_buffer[86],in_buffer[87],
in_buffer[96],in_buffer[97],in_buffer[98],in_buffer[99],
in_buffer[108],in_buffer[109],in_buffer[110],in_buffer[111]}),
.win_result_0(in_buffer_weight60),
.win_result_1(in_buffer_weight61),
.win_result_2(in_buffer_weight70),
.win_result_3(in_buffer_weight71)
);
win_top DUT16(
.rst(rst),
.clk(clk),
.img({
in_buffer[74],in_buffer[75],in_buffer[76],in_buffer[77],
in_buffer[86],in_buffer[87],in_buffer[88],in_buffer[89],
in_buffer[98],in_buffer[99],in_buffer[100],in_buffer[101],
in_buffer[110],in_buffer[111],in_buffer[112],in_buffer[113]}),
.win_result_0(in_buffer_weight62),
.win_result_1(in_buffer_weight63),
.win_result_2(in_buffer_weight72),
.win_result_3(in_buffer_weight73)
);
win_top DUT17(
.rst(rst),
.clk(clk),
.img({
in_buffer[76],in_buffer[77],in_buffer[78],in_buffer[79],
in_buffer[88],in_buffer[89],in_buffer[90],in_buffer[91],
in_buffer[100],in_buffer[101],in_buffer[102],in_buffer[103],
in_buffer[112],in_buffer[113],in_buffer[114],in_buffer[115]}),
.win_result_0(in_buffer_weight64),
.win_result_1(in_buffer_weight65),
.win_result_2(in_buffer_weight74),
.win_result_3(in_buffer_weight75)
);
win_top DUT18(
.rst(rst),
.clk(clk),
.img({
in_buffer[78],in_buffer[79],in_buffer[80],in_buffer[81],
in_buffer[90],in_buffer[91],in_buffer[92],in_buffer[93],
in_buffer[102],in_buffer[103],in_buffer[104],in_buffer[105],
in_buffer[114],in_buffer[115],in_buffer[116],in_buffer[117]}),
.win_result_0(in_buffer_weight66),
.win_result_1(in_buffer_weight67),
.win_result_2(in_buffer_weight76),
.win_result_3(in_buffer_weight77)
);
win_top DUT19(
.rst(rst),
.clk(clk),
.img({
in_buffer[80],in_buffer[81],in_buffer[82],in_buffer[83],
in_buffer[92],in_buffer[93],in_buffer[94],in_buffer[95],
in_buffer[104],in_buffer[105],in_buffer[106],in_buffer[107],
in_buffer[116],in_buffer[117],in_buffer[118],in_buffer[119]}),
.win_result_0(in_buffer_weight68),
.win_result_1(in_buffer_weight69),
.win_result_2(in_buffer_weight78),
.win_result_3(in_buffer_weight79)
);
win_top DUT20(
.rst(rst),
.clk(clk),
.img({
in_buffer[96],in_buffer[97],in_buffer[98],in_buffer[99],
in_buffer[108],in_buffer[109],in_buffer[110],in_buffer[111],
in_buffer[120],in_buffer[121],in_buffer[122],in_buffer[123],
in_buffer[132],in_buffer[133],in_buffer[134],in_buffer[135]}),
.win_result_0(in_buffer_weight80),
.win_result_1(in_buffer_weight81),
.win_result_2(in_buffer_weight90),
.win_result_3(in_buffer_weight91)
);
win_top DUT21(
.rst(rst),
.clk(clk),
.img({
in_buffer[98],in_buffer[99],in_buffer[100],in_buffer[101],
in_buffer[110],in_buffer[111],in_buffer[112],in_buffer[113],
in_buffer[122],in_buffer[123],in_buffer[124],in_buffer[125],
in_buffer[134],in_buffer[135],in_buffer[136],in_buffer[137]}),
.win_result_0(in_buffer_weight82),
.win_result_1(in_buffer_weight83),
.win_result_2(in_buffer_weight92),
.win_result_3(in_buffer_weight93)
);
win_top DUT22(
.rst(rst),
.clk(clk),
.img({
in_buffer[100],in_buffer[101],in_buffer[102],in_buffer[103],
in_buffer[112],in_buffer[113],in_buffer[114],in_buffer[115],
in_buffer[124],in_buffer[125],in_buffer[126],in_buffer[127],
in_buffer[136],in_buffer[137],in_buffer[138],in_buffer[139]}),
.win_result_0(in_buffer_weight84),
.win_result_1(in_buffer_weight85),
.win_result_2(in_buffer_weight94),
.win_result_3(in_buffer_weight95)
);
win_top DUT23(
.rst(rst),
.clk(clk),
.img({
in_buffer[102],in_buffer[103],in_buffer[104],in_buffer[105],
in_buffer[114],in_buffer[115],in_buffer[116],in_buffer[117],
in_buffer[126],in_buffer[127],in_buffer[128],in_buffer[129],
in_buffer[138],in_buffer[139],in_buffer[140],in_buffer[141]}),
.win_result_0(in_buffer_weight86),
.win_result_1(in_buffer_weight87),
.win_result_2(in_buffer_weight96),
.win_result_3(in_buffer_weight97)
);
win_top DUT24(
.rst(rst),
.clk(clk),
.img({
in_buffer[104],in_buffer[105],in_buffer[106],in_buffer[107],
in_buffer[116],in_buffer[117],in_buffer[118],in_buffer[119],
in_buffer[128],in_buffer[129],in_buffer[130],in_buffer[131],
in_buffer[140],in_buffer[141],in_buffer[142],in_buffer[143]}),
.win_result_0(in_buffer_weight88),
.win_result_1(in_buffer_weight89),
.win_result_2(in_buffer_weight98),
.win_result_3(in_buffer_weight99)
);
wire signed    [DATA_WIDTH-1:0]   weight_bias0;
assign weight_bias0= in_buffer_weight0+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias1;
assign weight_bias1= in_buffer_weight1+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias2;
assign weight_bias2= in_buffer_weight2+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias3;
assign weight_bias3= in_buffer_weight3+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias4;
assign weight_bias4= in_buffer_weight4+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias5;
assign weight_bias5= in_buffer_weight5+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias6;
assign weight_bias6= in_buffer_weight6+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias7;
assign weight_bias7= in_buffer_weight7+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias8;
assign weight_bias8= in_buffer_weight8+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias9;
assign weight_bias9= in_buffer_weight9+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias10;
assign weight_bias10= in_buffer_weight10+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias11;
assign weight_bias11= in_buffer_weight11+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias12;
assign weight_bias12= in_buffer_weight12+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias13;
assign weight_bias13= in_buffer_weight13+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias14;
assign weight_bias14= in_buffer_weight14+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias15;
assign weight_bias15= in_buffer_weight15+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias16;
assign weight_bias16= in_buffer_weight16+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias17;
assign weight_bias17= in_buffer_weight17+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias18;
assign weight_bias18= in_buffer_weight18+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias19;
assign weight_bias19= in_buffer_weight19+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias20;
assign weight_bias20= in_buffer_weight20+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias21;
assign weight_bias21= in_buffer_weight21+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias22;
assign weight_bias22= in_buffer_weight22+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias23;
assign weight_bias23= in_buffer_weight23+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias24;
assign weight_bias24= in_buffer_weight24+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias25;
assign weight_bias25= in_buffer_weight25+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias26;
assign weight_bias26= in_buffer_weight26+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias27;
assign weight_bias27= in_buffer_weight27+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias28;
assign weight_bias28= in_buffer_weight28+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias29;
assign weight_bias29= in_buffer_weight29+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias30;
assign weight_bias30= in_buffer_weight30+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias31;
assign weight_bias31= in_buffer_weight31+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias32;
assign weight_bias32= in_buffer_weight32+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias33;
assign weight_bias33= in_buffer_weight33+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias34;
assign weight_bias34= in_buffer_weight34+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias35;
assign weight_bias35= in_buffer_weight35+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias36;
assign weight_bias36= in_buffer_weight36+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias37;
assign weight_bias37= in_buffer_weight37+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias38;
assign weight_bias38= in_buffer_weight38+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias39;
assign weight_bias39= in_buffer_weight39+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias40;
assign weight_bias40= in_buffer_weight40+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias41;
assign weight_bias41= in_buffer_weight41+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias42;
assign weight_bias42= in_buffer_weight42+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias43;
assign weight_bias43= in_buffer_weight43+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias44;
assign weight_bias44= in_buffer_weight44+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias45;
assign weight_bias45= in_buffer_weight45+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias46;
assign weight_bias46= in_buffer_weight46+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias47;
assign weight_bias47= in_buffer_weight47+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias48;
assign weight_bias48= in_buffer_weight48+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias49;
assign weight_bias49= in_buffer_weight49+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias50;
assign weight_bias50= in_buffer_weight50+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias51;
assign weight_bias51= in_buffer_weight51+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias52;
assign weight_bias52= in_buffer_weight52+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias53;
assign weight_bias53= in_buffer_weight53+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias54;
assign weight_bias54= in_buffer_weight54+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias55;
assign weight_bias55= in_buffer_weight55+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias56;
assign weight_bias56= in_buffer_weight56+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias57;
assign weight_bias57= in_buffer_weight57+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias58;
assign weight_bias58= in_buffer_weight58+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias59;
assign weight_bias59= in_buffer_weight59+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias60;
assign weight_bias60= in_buffer_weight60+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias61;
assign weight_bias61= in_buffer_weight61+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias62;
assign weight_bias62= in_buffer_weight62+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias63;
assign weight_bias63= in_buffer_weight63+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias64;
assign weight_bias64= in_buffer_weight64+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias65;
assign weight_bias65= in_buffer_weight65+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias66;
assign weight_bias66= in_buffer_weight66+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias67;
assign weight_bias67= in_buffer_weight67+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias68;
assign weight_bias68= in_buffer_weight68+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias69;
assign weight_bias69= in_buffer_weight69+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias70;
assign weight_bias70= in_buffer_weight70+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias71;
assign weight_bias71= in_buffer_weight71+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias72;
assign weight_bias72= in_buffer_weight72+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias73;
assign weight_bias73= in_buffer_weight73+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias74;
assign weight_bias74= in_buffer_weight74+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias75;
assign weight_bias75= in_buffer_weight75+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias76;
assign weight_bias76= in_buffer_weight76+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias77;
assign weight_bias77= in_buffer_weight77+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias78;
assign weight_bias78= in_buffer_weight78+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias79;
assign weight_bias79= in_buffer_weight79+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias80;
assign weight_bias80= in_buffer_weight80+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias81;
assign weight_bias81= in_buffer_weight81+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias82;
assign weight_bias82= in_buffer_weight82+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias83;
assign weight_bias83= in_buffer_weight83+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias84;
assign weight_bias84= in_buffer_weight84+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias85;
assign weight_bias85= in_buffer_weight85+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias86;
assign weight_bias86= in_buffer_weight86+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias87;
assign weight_bias87= in_buffer_weight87+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias88;
assign weight_bias88= in_buffer_weight88+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias89;
assign weight_bias89= in_buffer_weight89+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias90;
assign weight_bias90= in_buffer_weight90+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias91;
assign weight_bias91= in_buffer_weight91+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias92;
assign weight_bias92= in_buffer_weight92+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias93;
assign weight_bias93= in_buffer_weight93+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias94;
assign weight_bias94= in_buffer_weight94+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias95;
assign weight_bias95= in_buffer_weight95+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias96;
assign weight_bias96= in_buffer_weight96+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias97;
assign weight_bias97= in_buffer_weight97+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias98;
assign weight_bias98= in_buffer_weight98+0;
wire signed    [DATA_WIDTH-1:0]   weight_bias99;
assign weight_bias99= in_buffer_weight99+0;
wire signed    [DATA_WIDTH-1:0]   bias_relu0;
wire signed    [DATA_WIDTH-1:0]   bias_relu1;
wire signed    [DATA_WIDTH-1:0]   bias_relu2;
wire signed    [DATA_WIDTH-1:0]   bias_relu3;
wire signed    [DATA_WIDTH-1:0]   bias_relu4;
wire signed    [DATA_WIDTH-1:0]   bias_relu5;
wire signed    [DATA_WIDTH-1:0]   bias_relu6;
wire signed    [DATA_WIDTH-1:0]   bias_relu7;
wire signed    [DATA_WIDTH-1:0]   bias_relu8;
wire signed    [DATA_WIDTH-1:0]   bias_relu9;
wire signed    [DATA_WIDTH-1:0]   bias_relu10;
wire signed    [DATA_WIDTH-1:0]   bias_relu11;
wire signed    [DATA_WIDTH-1:0]   bias_relu12;
wire signed    [DATA_WIDTH-1:0]   bias_relu13;
wire signed    [DATA_WIDTH-1:0]   bias_relu14;
wire signed    [DATA_WIDTH-1:0]   bias_relu15;
wire signed    [DATA_WIDTH-1:0]   bias_relu16;
wire signed    [DATA_WIDTH-1:0]   bias_relu17;
wire signed    [DATA_WIDTH-1:0]   bias_relu18;
wire signed    [DATA_WIDTH-1:0]   bias_relu19;
wire signed    [DATA_WIDTH-1:0]   bias_relu20;
wire signed    [DATA_WIDTH-1:0]   bias_relu21;
wire signed    [DATA_WIDTH-1:0]   bias_relu22;
wire signed    [DATA_WIDTH-1:0]   bias_relu23;
wire signed    [DATA_WIDTH-1:0]   bias_relu24;
wire signed    [DATA_WIDTH-1:0]   bias_relu25;
wire signed    [DATA_WIDTH-1:0]   bias_relu26;
wire signed    [DATA_WIDTH-1:0]   bias_relu27;
wire signed    [DATA_WIDTH-1:0]   bias_relu28;
wire signed    [DATA_WIDTH-1:0]   bias_relu29;
wire signed    [DATA_WIDTH-1:0]   bias_relu30;
wire signed    [DATA_WIDTH-1:0]   bias_relu31;
wire signed    [DATA_WIDTH-1:0]   bias_relu32;
wire signed    [DATA_WIDTH-1:0]   bias_relu33;
wire signed    [DATA_WIDTH-1:0]   bias_relu34;
wire signed    [DATA_WIDTH-1:0]   bias_relu35;
wire signed    [DATA_WIDTH-1:0]   bias_relu36;
wire signed    [DATA_WIDTH-1:0]   bias_relu37;
wire signed    [DATA_WIDTH-1:0]   bias_relu38;
wire signed    [DATA_WIDTH-1:0]   bias_relu39;
wire signed    [DATA_WIDTH-1:0]   bias_relu40;
wire signed    [DATA_WIDTH-1:0]   bias_relu41;
wire signed    [DATA_WIDTH-1:0]   bias_relu42;
wire signed    [DATA_WIDTH-1:0]   bias_relu43;
wire signed    [DATA_WIDTH-1:0]   bias_relu44;
wire signed    [DATA_WIDTH-1:0]   bias_relu45;
wire signed    [DATA_WIDTH-1:0]   bias_relu46;
wire signed    [DATA_WIDTH-1:0]   bias_relu47;
wire signed    [DATA_WIDTH-1:0]   bias_relu48;
wire signed    [DATA_WIDTH-1:0]   bias_relu49;
wire signed    [DATA_WIDTH-1:0]   bias_relu50;
wire signed    [DATA_WIDTH-1:0]   bias_relu51;
wire signed    [DATA_WIDTH-1:0]   bias_relu52;
wire signed    [DATA_WIDTH-1:0]   bias_relu53;
wire signed    [DATA_WIDTH-1:0]   bias_relu54;
wire signed    [DATA_WIDTH-1:0]   bias_relu55;
wire signed    [DATA_WIDTH-1:0]   bias_relu56;
wire signed    [DATA_WIDTH-1:0]   bias_relu57;
wire signed    [DATA_WIDTH-1:0]   bias_relu58;
wire signed    [DATA_WIDTH-1:0]   bias_relu59;
wire signed    [DATA_WIDTH-1:0]   bias_relu60;
wire signed    [DATA_WIDTH-1:0]   bias_relu61;
wire signed    [DATA_WIDTH-1:0]   bias_relu62;
wire signed    [DATA_WIDTH-1:0]   bias_relu63;
wire signed    [DATA_WIDTH-1:0]   bias_relu64;
wire signed    [DATA_WIDTH-1:0]   bias_relu65;
wire signed    [DATA_WIDTH-1:0]   bias_relu66;
wire signed    [DATA_WIDTH-1:0]   bias_relu67;
wire signed    [DATA_WIDTH-1:0]   bias_relu68;
wire signed    [DATA_WIDTH-1:0]   bias_relu69;
wire signed    [DATA_WIDTH-1:0]   bias_relu70;
wire signed    [DATA_WIDTH-1:0]   bias_relu71;
wire signed    [DATA_WIDTH-1:0]   bias_relu72;
wire signed    [DATA_WIDTH-1:0]   bias_relu73;
wire signed    [DATA_WIDTH-1:0]   bias_relu74;
wire signed    [DATA_WIDTH-1:0]   bias_relu75;
wire signed    [DATA_WIDTH-1:0]   bias_relu76;
wire signed    [DATA_WIDTH-1:0]   bias_relu77;
wire signed    [DATA_WIDTH-1:0]   bias_relu78;
wire signed    [DATA_WIDTH-1:0]   bias_relu79;
wire signed    [DATA_WIDTH-1:0]   bias_relu80;
wire signed    [DATA_WIDTH-1:0]   bias_relu81;
wire signed    [DATA_WIDTH-1:0]   bias_relu82;
wire signed    [DATA_WIDTH-1:0]   bias_relu83;
wire signed    [DATA_WIDTH-1:0]   bias_relu84;
wire signed    [DATA_WIDTH-1:0]   bias_relu85;
wire signed    [DATA_WIDTH-1:0]   bias_relu86;
wire signed    [DATA_WIDTH-1:0]   bias_relu87;
wire signed    [DATA_WIDTH-1:0]   bias_relu88;
wire signed    [DATA_WIDTH-1:0]   bias_relu89;
wire signed    [DATA_WIDTH-1:0]   bias_relu90;
wire signed    [DATA_WIDTH-1:0]   bias_relu91;
wire signed    [DATA_WIDTH-1:0]   bias_relu92;
wire signed    [DATA_WIDTH-1:0]   bias_relu93;
wire signed    [DATA_WIDTH-1:0]   bias_relu94;
wire signed    [DATA_WIDTH-1:0]   bias_relu95;
wire signed    [DATA_WIDTH-1:0]   bias_relu96;
wire signed    [DATA_WIDTH-1:0]   bias_relu97;
wire signed    [DATA_WIDTH-1:0]   bias_relu98;
wire signed    [DATA_WIDTH-1:0]   bias_relu99;
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
assign bias_relu16=(weight_bias16[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias16;
assign bias_relu17=(weight_bias17[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias17;
assign bias_relu18=(weight_bias18[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias18;
assign bias_relu19=(weight_bias19[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias19;
assign bias_relu20=(weight_bias20[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias20;
assign bias_relu21=(weight_bias21[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias21;
assign bias_relu22=(weight_bias22[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias22;
assign bias_relu23=(weight_bias23[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias23;
assign bias_relu24=(weight_bias24[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias24;
assign bias_relu25=(weight_bias25[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias25;
assign bias_relu26=(weight_bias26[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias26;
assign bias_relu27=(weight_bias27[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias27;
assign bias_relu28=(weight_bias28[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias28;
assign bias_relu29=(weight_bias29[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias29;
assign bias_relu30=(weight_bias30[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias30;
assign bias_relu31=(weight_bias31[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias31;
assign bias_relu32=(weight_bias32[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias32;
assign bias_relu33=(weight_bias33[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias33;
assign bias_relu34=(weight_bias34[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias34;
assign bias_relu35=(weight_bias35[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias35;
assign bias_relu36=(weight_bias36[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias36;
assign bias_relu37=(weight_bias37[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias37;
assign bias_relu38=(weight_bias38[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias38;
assign bias_relu39=(weight_bias39[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias39;
assign bias_relu40=(weight_bias40[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias40;
assign bias_relu41=(weight_bias41[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias41;
assign bias_relu42=(weight_bias42[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias42;
assign bias_relu43=(weight_bias43[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias43;
assign bias_relu44=(weight_bias44[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias44;
assign bias_relu45=(weight_bias45[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias45;
assign bias_relu46=(weight_bias46[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias46;
assign bias_relu47=(weight_bias47[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias47;
assign bias_relu48=(weight_bias48[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias48;
assign bias_relu49=(weight_bias49[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias49;
assign bias_relu50=(weight_bias50[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias50;
assign bias_relu51=(weight_bias51[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias51;
assign bias_relu52=(weight_bias52[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias52;
assign bias_relu53=(weight_bias53[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias53;
assign bias_relu54=(weight_bias54[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias54;
assign bias_relu55=(weight_bias55[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias55;
assign bias_relu56=(weight_bias56[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias56;
assign bias_relu57=(weight_bias57[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias57;
assign bias_relu58=(weight_bias58[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias58;
assign bias_relu59=(weight_bias59[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias59;
assign bias_relu60=(weight_bias60[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias60;
assign bias_relu61=(weight_bias61[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias61;
assign bias_relu62=(weight_bias62[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias62;
assign bias_relu63=(weight_bias63[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias63;
assign bias_relu64=(weight_bias64[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias64;
assign bias_relu65=(weight_bias65[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias65;
assign bias_relu66=(weight_bias66[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias66;
assign bias_relu67=(weight_bias67[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias67;
assign bias_relu68=(weight_bias68[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias68;
assign bias_relu69=(weight_bias69[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias69;
assign bias_relu70=(weight_bias70[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias70;
assign bias_relu71=(weight_bias71[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias71;
assign bias_relu72=(weight_bias72[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias72;
assign bias_relu73=(weight_bias73[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias73;
assign bias_relu74=(weight_bias74[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias74;
assign bias_relu75=(weight_bias75[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias75;
assign bias_relu76=(weight_bias76[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias76;
assign bias_relu77=(weight_bias77[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias77;
assign bias_relu78=(weight_bias78[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias78;
assign bias_relu79=(weight_bias79[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias79;
assign bias_relu80=(weight_bias80[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias80;
assign bias_relu81=(weight_bias81[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias81;
assign bias_relu82=(weight_bias82[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias82;
assign bias_relu83=(weight_bias83[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias83;
assign bias_relu84=(weight_bias84[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias84;
assign bias_relu85=(weight_bias85[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias85;
assign bias_relu86=(weight_bias86[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias86;
assign bias_relu87=(weight_bias87[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias87;
assign bias_relu88=(weight_bias88[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias88;
assign bias_relu89=(weight_bias89[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias89;
assign bias_relu90=(weight_bias90[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias90;
assign bias_relu91=(weight_bias91[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias91;
assign bias_relu92=(weight_bias92[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias92;
assign bias_relu93=(weight_bias93[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias93;
assign bias_relu94=(weight_bias94[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias94;
assign bias_relu95=(weight_bias95[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias95;
assign bias_relu96=(weight_bias96[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias96;
assign bias_relu97=(weight_bias97[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias97;
assign bias_relu98=(weight_bias98[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias98;
assign bias_relu99=(weight_bias99[DATA_WIDTH-1]==1'b1)   ?   {DATA_WIDTH{1'b0}}:weight_bias99;
always@(posedge clk)
    begin
        if(~rst)
            begin
           layer_out <={bias_relu99,bias_relu98,bias_relu97,bias_relu96,bias_relu95,bias_relu94,bias_relu93,bias_relu92,bias_relu91,bias_relu90,bias_relu89,bias_relu88,bias_relu87,bias_relu86,bias_relu85,bias_relu84,bias_relu83,bias_relu82,bias_relu81,bias_relu80,bias_relu79,bias_relu78,bias_relu77,bias_relu76,bias_relu75,bias_relu74,bias_relu73,bias_relu72,bias_relu71,bias_relu70,bias_relu69,bias_relu68,bias_relu67,bias_relu66,bias_relu65,bias_relu64,bias_relu63,bias_relu62,bias_relu61,bias_relu60,bias_relu59,bias_relu58,bias_relu57,bias_relu56,bias_relu55,bias_relu54,bias_relu53,bias_relu52,bias_relu51,bias_relu50,bias_relu49,bias_relu48,bias_relu47,bias_relu46,bias_relu45,bias_relu44,bias_relu43,bias_relu42,bias_relu41,bias_relu40,bias_relu39,bias_relu38,bias_relu37,bias_relu36,bias_relu35,bias_relu34,bias_relu33,bias_relu32,bias_relu31,bias_relu30,bias_relu29,bias_relu28,bias_relu27,bias_relu26,bias_relu25,bias_relu24,bias_relu23,bias_relu22,bias_relu21,bias_relu20,bias_relu19,bias_relu18,bias_relu17,bias_relu16,bias_relu15,bias_relu14,bias_relu13,bias_relu12,bias_relu11,bias_relu10,bias_relu9,bias_relu8,bias_relu7,bias_relu6,bias_relu5,bias_relu4,bias_relu3,bias_relu2,bias_relu1,bias_relu0};
            end
        else
            begin
           layer_out<= {(OUTPUT_BIT*OUTPUT_NODE){1'b0}};
        end
    end
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