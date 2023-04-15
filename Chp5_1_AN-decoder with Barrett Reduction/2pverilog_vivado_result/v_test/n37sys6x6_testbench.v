`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2022 04:22:55 AM
// Design Name: 
// Module Name: n13sys6x6_testbench
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


module n37sys6x6_testbench(

    );
    
    reg [17:0]word0,word1,word2,word3,word4,word5,word6,word7,word8,word9,word10,word11,word12,word13,word14,word15,word16,word17,word18,word19,word20,word21,word22,word23,word24,word25,word26,word27,word28,word29,word30,word31,word32,word33,word34,word35;
    wire [12:0]d_word0,d_word1,d_word2,d_word3,d_word4,d_word5,d_word6,d_word7,d_word8,d_word9,d_word10,d_word11,d_word12,d_word13,d_word14,d_word15,d_word16,d_word17,d_word18,d_word19,d_word20,d_word21,d_word22,d_word23,d_word24,d_word25,d_word26,d_word27,d_word28,d_word29,d_word30,d_word31,d_word32,d_word33,d_word34,d_word35;
    n37sys_6x6 DUT_n13(.IN0(word0),.IN1(word1),.IN2(word2),.IN3(word3),.IN4(word4),.IN5(word5),.IN6(word6),.IN7(word7),.IN8(word8),.IN9(word9),.IN10(word10),.IN11(word11),.IN12(word12),.IN13(word13),.IN14(word14),.IN15(word15),.IN16(word16),.IN17(word17),.IN18(word18),.IN19(word19),.IN20(word20),.IN21(word21),.IN22(word22),.IN23(word23),.IN24(word24),.IN25(word25),.IN26(word26),.IN27(word27),.IN28(word28),.IN29(word29),.IN30(word30),.IN31(word31),.IN32(word32),.IN33(word33),.IN34(word34),.IN35(word35)
                    ,.OUT0(d_word0),.OUT1(d_word1),.OUT2(d_word2),.OUT3(d_word3),.OUT4(d_word4),.OUT5(d_word5),.OUT6(d_word6),.OUT7(d_word7),.OUT8(d_word8),.OUT9(d_word9),.OUT10(d_word10),.OUT11(d_word11),.OUT12(d_word12),.OUT13(d_word13),.OUT14(d_word14),.OUT15(d_word15),.OUT16(d_word16),.OUT17(d_word17),.OUT18(d_word18),.OUT19(d_word19),.OUT20(d_word20),.OUT21(d_word21),.OUT22(d_word22),.OUT23(d_word23),.OUT24(d_word24),.OUT25(d_word25),.OUT26(d_word26),.OUT27(d_word27),.OUT28(d_word28),.OUT29(d_word29),.OUT30(d_word30),.OUT31(d_word31),.OUT32(d_word32),.OUT33(d_word33),.OUT34(d_word34),.OUT35(d_word35));
    
    initial begin 
  
    #20 $stop;
    end
endmodule
