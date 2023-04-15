`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2022 02:50:41 PM
// Design Name: 
// Module Name: n29sys4x4_testbench
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


module n29sys4x4_testbench(

    );
    reg [13:0] word0,word1,word2,word3,word4,word5,word6,word7,word8,word9,word10,word11,word12,word13,word14,word15;
    wire [9:0] d_word0,d_word1,d_word2,d_word3,d_word4,d_word5,d_word6,d_word7,d_word8,d_word9,d_word10,d_word11,d_word12,d_word13,d_word14,d_word15;
    n29sys_4x4 DUT_n29(.IN0(word0),.IN1(word1),.IN2(word2),.IN3(word3),.IN4(word4),.IN5(word5),.IN6(word6),.IN7(word7),.IN8(word8),.IN9(word9),.IN10(word10),.IN11(word11),.IN12(word12),.IN13(word13),.IN14(word14),.IN15(word15),.OUT0(d_word0),.OUT1(d_word1),.OUT2(d_word2),.OUT3(d_word3),.OUT4(d_word4),.OUT5(d_word5),.OUT6(d_word6),.OUT7(d_word7),.OUT8(d_word8),.OUT9(d_word9),.OUT10(d_word10),.OUT11(d_word11),.OUT12(d_word12),.OUT13(d_word13),.OUT14(d_word14),.OUT15(d_word15));
    initial begin 
    #10 word0=6'd0;word1=6'd0;word2=6'd0;word3=6'd0;word4=6'd0;word5=6'd0;word6=6'd0;word7=6'd0;word8=6'd0;word9=6'd0;word10=6'd0;word11=6'd0;word12=6'd0;word13=6'd0;word14=6'd0;word15=6'd0;
    //possible codeword
    #10 word0='d29;
#10 word0='d58;
#10 word0='d87;
#10 word0='d116;
#10 word0='d145;
#10 word0='d174;
#10 word0='d203;
#10 word0='d232;
#10 word0='d261;
#10 word0='d290;
#10 word0='d319;
#10 word0='d348;
#10 word0='d377;
#10 word0='d406;
#10 word0='d435;
#10 word0='d464;
#10 word0='d493;
#10 word0='d522;
#10 word0='d551;
#10 word0='d580;
#10 word0='d609;
#10 word0='d638;
#10 word0='d667;
#10 word0='d696;
#10 word0='d725;
#10 word0='d754;
#10 word0='d783;
#10 word0='d812;
#10 word0='d841;
#10 word0='d870;
#10 word0='d899;
#10 word0='d928;
#10 word0='d957;
#10 word0='d986;
#10 word0='d1015;
#10 word0='d1044;
#10 word0='d1073;
#10 word0='d1102;
#10 word0='d1131;


#20 $stop;
 
    end
endmodule
