`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2022 08:58:20 PM
// Design Name: 
// Module Name: n29sys5x5_testbench
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


module n29sys5x5_testbench(

    );
      reg [13:0] word0,word1,word2,word3,word4,word5,word6,word7,word8,word9,word10,word11,word12,word13,word14,word15,word16,word17,word18,word19,word20,word21,word22,word23,word24;
    wire [4:0] d_word0,d_word1,d_word2,d_word3,d_word4,d_word5,d_word6,d_word7,d_word8,d_word9,d_word10,d_word11,d_word12,d_word13,d_word14,d_word15,d_word16,d_word17,d_word18,d_word19,d_word20,d_word21,d_word22,d_word23,d_word24;
    n29sys_5x5 DUT_n13(.IN0(word0),.IN1(word1),.IN2(word2),.IN3(word3),.IN4(word4),.IN5(word5),.IN6(word6),.IN7(word7),.IN8(word8),.IN9(word9),.IN10(word10),.IN11(word11),.IN12(word12),.IN13(word13),.IN14(word14),.IN15(word15),.IN16(word16),.IN17(word17),.IN18(word18),.IN19(word19),.IN20(word20),.IN21(word21),.IN22(word22),.IN23(word23),.IN24(word24),.OUT0(d_word0),.OUT1(d_word1),.OUT2(d_word2),.OUT3(d_word3),.OUT4(d_word4),.OUT5(d_word5),.OUT6(d_word6),.OUT7(d_word7),.OUT8(d_word8),.OUT9(d_word9),.OUT10(d_word10),.OUT11(d_word11),.OUT12(d_word12),.OUT13(d_word13),.OUT14(d_word14),.OUT15(d_word15),.OUT16(d_word16),.OUT17(d_word17),.OUT18(d_word18),.OUT19(d_word19),.OUT20(d_word20),.OUT21(d_word21),.OUT22(d_word22),.OUT23(d_word23),.OUT24(d_word24));
    
    initial begin  
word0=6'd0;word1=6'd0;word2=6'd0;word3=6'd0;word4=6'd0;word5=6'd0;word6=6'd0;word7=6'd0;word8=6'd0;word9=6'd0;word10=6'd0;word11=6'd0;word12=6'd0;word13=6'd0;word14=6'd0;word15=6'd0;word16=6'd0;word17=6'd0;word18=6'd0;word19=6'd0;word20=6'd0;word21=6'd0;word22=6'd0;word23=6'd0;word24=6'd0;
 #10 word0='d1;
#10 word0='d0;#10 word1='d1;
#10 word1='d0;#10 word2='d1;
#10 word2='d0;#10 word3='d1;
#10 word3='d0;#10 word4='d1;
#10 word4='d0;#10 word5='d1;
#10 word5='d0;#10 word6='d1;
#10 word6='d0;#10 word7='d1;
#10 word7='d0;#10 word8='d1;
#10 word8='d0;#10 word9='d1;
#10 word9='d0;#10 word10='d1;
#10 word10='d0;#10 word11='d1;
#10 word11='d0;#10 word12='d1;
#10 word12='d0;#10 word13='d1;
#10 word13='d0;#10 word14='d1;
#10 word14='d0;#10 word15='d1;
#10 word15='d0;#10 word0='d2;
#10 word0='d0;#10 word1='d2;
#10 word1='d0;#10 word2='d2;
#10 word2='d0;#10 word3='d2;
#10 word3='d0;#10 word4='d2;
#10 word4='d0;#10 word5='d2;
#10 word5='d0;#10 word6='d2;
#10 word6='d0;#10 word7='d2;
#10 word7='d0;#10 word8='d2;
#10 word8='d0;#10 word9='d2;
#10 word9='d0;#10 word10='d2;
#10 word10='d0;#10 word11='d2;
#10 word11='d0;#10 word12='d2;
#10 word12='d0;#10 word13='d2;
#10 word13='d0;#10 word14='d2;
#10 word14='d0;#10 word15='d2;
#10 word15='d0;#10 word0='d4;
#10 word0='d0;#10 word1='d4;
#10 word1='d0;#10 word2='d4;
#10 word2='d0;#10 word3='d4;
#10 word3='d0;#10 word4='d4;
#10 word4='d0;#10 word5='d4;
#10 word5='d0;#10 word6='d4;
#10 word6='d0;#10 word7='d4;
#10 word7='d0;#10 word8='d4;
#10 word8='d0;#10 word9='d4;
#10 word9='d0;#10 word10='d4;
#10 word10='d0;#10 word11='d4;
#10 word11='d0;#10 word12='d4;
#10 word12='d0;#10 word13='d4;
#10 word13='d0;#10 word14='d4;
#10 word14='d0;#10 word15='d4;
#10 word15='d0;#10 word0='d8;
#10 word0='d0;#10 word1='d8;
#10 word1='d0;#10 word2='d8;
#10 word2='d0;#10 word3='d8;
#10 word3='d0;#10 word4='d8;
#10 word4='d0;#10 word5='d8;
#10 word5='d0;#10 word6='d8;
#10 word6='d0;#10 word7='d8;
#10 word7='d0;#10 word8='d8;
#10 word8='d0;#10 word9='d8;
#10 word9='d0;#10 word10='d8;
#10 word10='d0;#10 word11='d8;
#10 word11='d0;#10 word12='d8;
#10 word12='d0;#10 word13='d8;
#10 word13='d0;#10 word14='d8;
#10 word14='d0;#10 word15='d8;
#10 word15='d0;#10 word0='d16;
#10 word0='d0;#10 word1='d16;
#10 word1='d0;#10 word2='d16;
#10 word2='d0;#10 word3='d16;
#10 word3='d0;#10 word4='d16;
#10 word4='d0;#10 word5='d16;
#10 word5='d0;#10 word6='d16;
#10 word6='d0;#10 word7='d16;
#10 word7='d0;#10 word8='d16;
#10 word8='d0;#10 word9='d16;
#10 word9='d0;#10 word10='d16;
#10 word10='d0;#10 word11='d16;
#10 word11='d0;#10 word12='d16;
#10 word12='d0;#10 word13='d16;
#10 word13='d0;#10 word14='d16;
#10 word14='d0;#10 word15='d16;
#10 word15='d0;#10 word0='d32;

#10 word15='d0;

    $stop;
    end
endmodule
