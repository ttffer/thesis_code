`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2022 10:15:50 PM
// Design Name: 
// Module Name: n13sys_6x6
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


module n13sys_6x6(
    input [5:0]IN0,
    input [5:0]IN1,
    input [5:0]IN2,
    input [5:0]IN3,
    input [5:0]IN4,
    input [5:0]IN5,
    input [5:0]IN6,
    input [5:0]IN7,
    input [5:0]IN8,
    input [5:0]IN9,
    input [5:0]IN10,
    input [5:0]IN11,
    input [5:0]IN12,
    input [5:0]IN13,
    input [5:0]IN14,
    input [5:0]IN15,
    input [5:0]IN16,
    input [5:0]IN17,
    input [5:0]IN18,
    input [5:0]IN19,
    input [5:0]IN20,
    input [5:0]IN21,
    input [5:0]IN22,
    input [5:0]IN23,
    input [5:0]IN24,
    input [5:0]IN25,
    input [5:0]IN26,
    input [5:0]IN27,
    input [5:0]IN28,
    input [5:0]IN29,
    input [5:0]IN30,
    input [5:0]IN31,
    input [5:0]IN32,
    input [5:0]IN33,
    input [5:0]IN34,
    input [5:0]IN35,
output [2:0]OUT0,
output [2:0]OUT1,
output [2:0]OUT2,
output [2:0]OUT3,
output [2:0]OUT4,
output [2:0]OUT5,
output [2:0]OUT6,
output [2:0]OUT7,
output [2:0]OUT8,
output [2:0]OUT9,
output [2:0]OUT10,
output [2:0]OUT11,
output [2:0]OUT12,
output [2:0]OUT13,
output [2:0]OUT14,
output [2:0]OUT15,
output [2:0]OUT16,
output [2:0]OUT17,
output [2:0]OUT18,
output [2:0]OUT19,
output [2:0]OUT20,
output [2:0]OUT21,
output [2:0]OUT22,
output [2:0]OUT23,
output [2:0]OUT24,
output [2:0]OUT25,
output [2:0]OUT26,
output [2:0]OUT27,
output [2:0]OUT28,
output [2:0]OUT29,
output [2:0]OUT30,
output [2:0]OUT31,
output [2:0]OUT32,
output [2:0]OUT33,
output [2:0]OUT34,
output [2:0]OUT35



    );
    wire [2:0]DUT0_q,DUT1_q,DUT2_q,DUT3_q,DUT4_q,DUT5_q,DUT6_q,DUT7_q,DUT8_q,DUT9_q,DUT10_q,DUT11_q,DUT12_q,DUT13_q,DUT14_q,DUT15_q,DUT16_q,DUT17_q,DUT18_q,DUT19_q,DUT20_q,DUT21_q,DUT22_q,DUT23_q,DUT24_q,DUT25_q,DUT26_q,DUT27_q,DUT28_q,DUT29_q,DUT30_q,DUT31_q,DUT32_q,DUT33_q,DUT34_q,DUT35_q;
    wire [3:0]DUT0_r,DUT1_r,DUT2_r,DUT3_r,DUT4_r,DUT5_r,DUT6_r,DUT7_r,DUT8_r,DUT9_r,DUT10_r,DUT11_r,DUT12_r,DUT13_r,DUT14_r,DUT15_r,DUT16_r,DUT17_r,DUT18_r,DUT19_r,DUT20_r,DUT21_r,DUT22_r,DUT23_r,DUT24_r,DUT25_r,DUT26_r,DUT27_r,DUT28_r,DUT29_r,DUT30_r,DUT31_r,DUT32_r,DUT33_r,DUT34_r,DUT35_r;
    wire [5:0]DUT0_receive,DUT1_receive,DUT2_receive,DUT3_receive,DUT4_receive,DUT5_receive,DUT6_receive,DUT7_receive,DUT8_receive,DUT9_receive,DUT10_receive,DUT11_receive,DUT12_receive,DUT13_receive,DUT14_receive,DUT15_receive,DUT16_receive,DUT17_receive,DUT18_receive,DUT19_receive,DUT20_receive,DUT21_receive,DUT22_receive,DUT23_receive,DUT24_receive,DUT25_receive,DUT26_receive,DUT27_receive,DUT28_receive,DUT29_receive,DUT30_receive,DUT31_receive,DUT32_receive,DUT33_receive,DUT34_receive,DUT35_receive;
    wire DUT0_error,DUT1_error,DUT2_error,DUT3_error,DUT4_error,DUT5_error,DUT6_error,DUT7_error,DUT8_error,DUT9_error,DUT10_error,DUT11_error,DUT12_error,DUT13_error,DUT14_error,DUT15_error,DUT16_error,DUT17_error,DUT18_error,DUT19_error,DUT20_error,DUT21_error,DUT22_error,DUT23_error,DUT24_error,DUT25_error,DUT26_error,DUT27_error,DUT28_error,DUT29_error,DUT30_error,DUT31_error,DUT32_error,DUT33_error,DUT34_error,DUT35_error;
    wire Ec0,Ec1,Ec2,Ec3,Ec4,Ec5,Ec6,Ec7,Ec8,Ec9,Ec10,Ec11,Ec12,Ec13,Ec14,Ec15,Ec16,Ec17,Ec18,Ec19,Ec20,Ec21,Ec22,Ec23,Ec24,Ec25,Ec26,Ec27,Ec28,Ec29,Ec30,Ec31,Ec32,Ec33,Ec34,Ec35;
    wire Er0,Er1,Er2,Er3,Er4,Er5,Er6,Er7,Er8,Er9,Er10,Er11,Er12,Er13,Er14,Er15,Er16,Er17,Er18,Er19,Er20,Er21,Er22,Er23,Er24,Er25,Er26,Er27,Er28,Er29,Er30,Er31,Er32,Er33,Er34,Er35;
    
barrett_n13 DUT0(.codeword(IN0),.q(DUT0_q),.r(DUT0_r),.receive(DUT0_receive),.error(DUT0_error));
barrett_n13 DUT1(.codeword(IN1),.q(DUT1_q),.r(DUT1_r),.receive(DUT1_receive),.error(DUT1_error));
barrett_n13 DUT2(.codeword(IN2),.q(DUT2_q),.r(DUT2_r),.receive(DUT2_receive),.error(DUT2_error));
barrett_n13 DUT3(.codeword(IN3),.q(DUT3_q),.r(DUT3_r),.receive(DUT3_receive),.error(DUT3_error));
barrett_n13 DUT4(.codeword(IN4),.q(DUT4_q),.r(DUT4_r),.receive(DUT4_receive),.error(DUT4_error));
barrett_n13 DUT5(.codeword(IN5),.q(DUT5_q),.r(DUT5_r),.receive(DUT5_receive),.error(DUT5_error));
barrett_n13 DUT6(.codeword(IN6),.q(DUT6_q),.r(DUT6_r),.receive(DUT6_receive),.error(DUT6_error));
barrett_n13 DUT7(.codeword(IN7),.q(DUT7_q),.r(DUT7_r),.receive(DUT7_receive),.error(DUT7_error));
barrett_n13 DUT8(.codeword(IN8),.q(DUT8_q),.r(DUT8_r),.receive(DUT8_receive),.error(DUT8_error));
barrett_n13 DUT9(.codeword(IN9),.q(DUT9_q),.r(DUT9_r),.receive(DUT9_receive),.error(DUT9_error));
barrett_n13 DUT10(.codeword(IN10),.q(DUT10_q),.r(DUT10_r),.receive(DUT10_receive),.error(DUT10_error));
barrett_n13 DUT11(.codeword(IN11),.q(DUT11_q),.r(DUT11_r),.receive(DUT11_receive),.error(DUT11_error));
barrett_n13 DUT12(.codeword(IN12),.q(DUT12_q),.r(DUT12_r),.receive(DUT12_receive),.error(DUT12_error));
barrett_n13 DUT13(.codeword(IN13),.q(DUT13_q),.r(DUT13_r),.receive(DUT13_receive),.error(DUT13_error));
barrett_n13 DUT14(.codeword(IN14),.q(DUT14_q),.r(DUT14_r),.receive(DUT14_receive),.error(DUT14_error));
barrett_n13 DUT15(.codeword(IN15),.q(DUT15_q),.r(DUT15_r),.receive(DUT15_receive),.error(DUT15_error));
barrett_n13 DUT16(.codeword(IN16),.q(DUT16_q),.r(DUT16_r),.receive(DUT16_receive),.error(DUT16_error));
barrett_n13 DUT17(.codeword(IN17),.q(DUT17_q),.r(DUT17_r),.receive(DUT17_receive),.error(DUT17_error));
barrett_n13 DUT18(.codeword(IN18),.q(DUT18_q),.r(DUT18_r),.receive(DUT18_receive),.error(DUT18_error));
barrett_n13 DUT19(.codeword(IN19),.q(DUT19_q),.r(DUT19_r),.receive(DUT19_receive),.error(DUT19_error));
barrett_n13 DUT20(.codeword(IN20),.q(DUT20_q),.r(DUT20_r),.receive(DUT20_receive),.error(DUT20_error));
barrett_n13 DUT21(.codeword(IN21),.q(DUT21_q),.r(DUT21_r),.receive(DUT21_receive),.error(DUT21_error));
barrett_n13 DUT22(.codeword(IN22),.q(DUT22_q),.r(DUT22_r),.receive(DUT22_receive),.error(DUT22_error));
barrett_n13 DUT23(.codeword(IN23),.q(DUT23_q),.r(DUT23_r),.receive(DUT23_receive),.error(DUT23_error));
barrett_n13 DUT24(.codeword(IN24),.q(DUT24_q),.r(DUT24_r),.receive(DUT24_receive),.error(DUT24_error));
barrett_n13 DUT25(.codeword(IN25),.q(DUT25_q),.r(DUT25_r),.receive(DUT25_receive),.error(DUT25_error));
barrett_n13 DUT26(.codeword(IN26),.q(DUT26_q),.r(DUT26_r),.receive(DUT26_receive),.error(DUT26_error));
barrett_n13 DUT27(.codeword(IN27),.q(DUT27_q),.r(DUT27_r),.receive(DUT27_receive),.error(DUT27_error));
barrett_n13 DUT28(.codeword(IN28),.q(DUT28_q),.r(DUT28_r),.receive(DUT28_receive),.error(DUT28_error));
barrett_n13 DUT29(.codeword(IN29),.q(DUT29_q),.r(DUT29_r),.receive(DUT29_receive),.error(DUT29_error));
barrett_n13 DUT30(.codeword(IN30),.q(DUT30_q),.r(DUT30_r),.receive(DUT30_receive),.error(DUT30_error));
barrett_n13 DUT31(.codeword(IN31),.q(DUT31_q),.r(DUT31_r),.receive(DUT31_receive),.error(DUT31_error));
barrett_n13 DUT32(.codeword(IN32),.q(DUT32_q),.r(DUT32_r),.receive(DUT32_receive),.error(DUT32_error));
barrett_n13 DUT33(.codeword(IN33),.q(DUT33_q),.r(DUT33_r),.receive(DUT33_receive),.error(DUT33_error));
barrett_n13 DUT34(.codeword(IN34),.q(DUT34_q),.r(DUT34_r),.receive(DUT34_receive),.error(DUT34_error));
barrett_n13 DUT35(.codeword(IN35),.q(DUT35_q),.r(DUT35_r),.receive(DUT35_receive),.error(DUT35_error));
    wire [5:0] DUT_AN_codeword;
    wire [3:0] DUT_AN_residue;
    wire [2:0] DUT_AN_message;
    
an_decoder_n13  DUT_AN (.codeword(DUT_AN_codeword),.residue(DUT_AN_residue),.message(DUT_AN_message));

assign Er0 = DUT0_error | DUT1_error| DUT2_error| DUT3_error| DUT4_error | DUT5_error;
assign Er1 = DUT6_error | DUT7_error| DUT8_error| DUT9_error| DUT10_error | DUT11_error;
assign Er2 = DUT12_error | DUT13_error| DUT14_error| DUT15_error| DUT16_error | DUT17_error;
assign Er3 = DUT18_error | DUT19_error| DUT20_error| DUT21_error| DUT22_error | DUT23_error;
assign Er4 = DUT24_error | DUT25_error| DUT26_error| DUT27_error| DUT28_error | DUT29_error;
assign Er5 = DUT30_error | DUT31_error| DUT32_error| DUT33_error| DUT34_error | DUT35_error;

assign Ec0 = DUT0_error | DUT6_error| DUT12_error| DUT18_error| DUT24_error| DUT30_error;
assign Ec1 = DUT1_error | DUT7_error| DUT13_error| DUT19_error| DUT25_error| DUT31_error;
assign Ec2 = DUT2_error | DUT8_error| DUT14_error| DUT20_error| DUT26_error| DUT32_error;
assign Ec3 = DUT3_error | DUT9_error| DUT15_error| DUT21_error| DUT27_error| DUT33_error;
assign Ec4 = DUT4_error | DUT10_error| DUT16_error| DUT22_error| DUT28_error| DUT34_error;
assign Ec5 = DUT5_error | DUT11_error| DUT17_error| DUT23_error| DUT29_error| DUT35_error;

assign DUT_AN_residue =  Er0&Ec0 ? DUT0_r :
                        (Er0&Ec1 ? DUT1_r :
                        (Er0&Ec2 ? DUT2_r :
                        (Er0&Ec3 ? DUT3_r :
                        (Er0&Ec4 ? DUT4_r :
                        (Er0&Ec5 ? DUT5_r :
                        (Er1&Ec0 ? DUT6_r :
                        (Er1&Ec1 ? DUT7_r :
                        (Er1&Ec2 ? DUT8_r :
                        (Er1&Ec3 ? DUT9_r :
                        (Er1&Ec4 ? DUT10_r :
                        (Er1&Ec5 ? DUT11_r :
                        (Er2&Ec0 ? DUT12_r :
                        (Er2&Ec1 ? DUT13_r :
                        (Er2&Ec2 ? DUT14_r :
                        (Er2&Ec3 ? DUT15_r :
                        (Er2&Ec4 ? DUT16_r :
                        (Er2&Ec5 ? DUT17_r :
                        (Er3&Ec0 ? DUT18_r :
                        (Er3&Ec1 ? DUT19_r :
                        (Er3&Ec2 ? DUT20_r :
                        (Er3&Ec3 ? DUT21_r :
                        (Er3&Ec4 ? DUT22_r :
                        (Er3&Ec5 ? DUT23_r :
                        (Er4&Ec0 ? DUT24_r :
                        (Er4&Ec1 ? DUT25_r :
                        (Er4&Ec2 ? DUT26_r :
                        (Er4&Ec3 ? DUT27_r :
                        (Er4&Ec4 ? DUT28_r :
                        (Er4&Ec5 ? DUT29_r :
                        (Er5&Ec0 ? DUT30_r :
                        (Er5&Ec1 ? DUT31_r :
                        (Er5&Ec2 ? DUT32_r :
                        (Er5&Ec3 ? DUT33_r :
                        (Er5&Ec4 ? DUT34_r :
                        (Er5&Ec5 ? DUT35_r :1'b0)))))))))))))))))))))))))))))))))));
   assign DUT_AN_codeword= Er0&Ec0 ? DUT0_receive :
                        (Er0&Ec1 ? DUT1_receive :
                        (Er0&Ec2 ? DUT2_receive :
                        (Er0&Ec3 ? DUT3_receive :
                        (Er0&Ec4 ? DUT4_receive :
                        (Er0&Ec5 ? DUT5_receive :
                        (Er1&Ec0 ? DUT6_receive :
                        (Er1&Ec1 ? DUT7_receive :
                        (Er1&Ec2 ? DUT8_receive :
                        (Er1&Ec3 ? DUT9_receive :
                        (Er1&Ec4 ? DUT10_receive :
                        (Er1&Ec5 ? DUT11_receive :
                        (Er2&Ec0 ? DUT12_receive :
                        (Er2&Ec1 ? DUT13_receive :
                        (Er2&Ec2 ? DUT14_receive :
                        (Er2&Ec3 ? DUT15_receive :
                        (Er2&Ec4 ? DUT16_receive :
                        (Er2&Ec5 ? DUT17_receive :
                        (Er3&Ec0 ? DUT18_receive :
                        (Er3&Ec1 ? DUT19_receive :
                        (Er3&Ec2 ? DUT20_receive :
                        (Er3&Ec3 ? DUT21_receive :
                        (Er3&Ec4 ? DUT22_receive :
                        (Er3&Ec5 ? DUT23_receive :
                        (Er4&Ec0 ? DUT24_receive :
                        (Er4&Ec1 ? DUT25_receive :
                        (Er4&Ec2 ? DUT26_receive :
                        (Er4&Ec3 ? DUT27_receive :
                        (Er4&Ec4 ? DUT28_receive :
                        (Er4&Ec5 ? DUT29_receive :
                        (Er5&Ec0 ? DUT30_receive :
                        (Er5&Ec1 ? DUT31_receive :
                        (Er5&Ec2 ? DUT32_receive :
                        (Er5&Ec3 ? DUT33_receive :
                        (Er5&Ec4 ? DUT34_receive :
                        (Er5&Ec5 ? DUT35_receive :1'b0)))))))))))))))))))))))))))))))))));                    
                        
assign OUT0=Er0&Ec0 ? DUT_AN_message:DUT0_q;
assign OUT1=Er0&Ec1 ? DUT_AN_message:DUT1_q;
assign OUT2=Er0&Ec2 ? DUT_AN_message:DUT2_q;
assign OUT3=Er0&Ec3 ? DUT_AN_message:DUT3_q;
assign OUT4=Er0&Ec4 ? DUT_AN_message:DUT4_q;
assign OUT5=Er0&Ec5 ? DUT_AN_message:DUT5_q;

assign OUT6=Er1&Ec0 ? DUT_AN_message:DUT6_q;
assign OUT7=Er1&Ec1 ? DUT_AN_message:DUT7_q;
assign OUT8=Er1&Ec2 ? DUT_AN_message:DUT8_q;
assign OUT9=Er1&Ec3 ? DUT_AN_message:DUT9_q;
assign OUT10=Er1&Ec4 ? DUT_AN_message:DUT10_q;
assign OUT11=Er1&Ec5 ? DUT_AN_message:DUT11_q;

assign OUT12=Er2&Ec0 ? DUT_AN_message:DUT12_q;
assign OUT13=Er2&Ec1 ? DUT_AN_message:DUT13_q;
assign OUT14=Er2&Ec2 ? DUT_AN_message:DUT14_q;
assign OUT15=Er2&Ec3 ? DUT_AN_message:DUT15_q;
assign OUT16=Er2&Ec4 ? DUT_AN_message:DUT16_q;
assign OUT17=Er2&Ec5 ? DUT_AN_message:DUT17_q;

assign OUT18=Er3&Ec0 ? DUT_AN_message:DUT18_q;
assign OUT19=Er3&Ec1 ? DUT_AN_message:DUT19_q;
assign OUT20=Er3&Ec2 ? DUT_AN_message:DUT20_q;
assign OUT21=Er3&Ec3 ? DUT_AN_message:DUT21_q;
assign OUT22=Er3&Ec4 ? DUT_AN_message:DUT22_q;
assign OUT23=Er3&Ec5 ? DUT_AN_message:DUT23_q;

assign OUT24=Er4&Ec0 ? DUT_AN_message:DUT24_q;
assign OUT25=Er4&Ec1 ? DUT_AN_message:DUT25_q;
assign OUT26=Er4&Ec2 ? DUT_AN_message:DUT26_q;
assign OUT27=Er4&Ec3 ? DUT_AN_message:DUT27_q;
assign OUT28=Er4&Ec4 ? DUT_AN_message:DUT28_q;
assign OUT29=Er4&Ec5 ? DUT_AN_message:DUT29_q;

assign OUT30=Er5&Ec0 ? DUT_AN_message:DUT30_q;
assign OUT31=Er5&Ec1 ? DUT_AN_message:DUT31_q;
assign OUT32=Er5&Ec2 ? DUT_AN_message:DUT32_q;
assign OUT33=Er5&Ec3 ? DUT_AN_message:DUT33_q;
assign OUT34=Er5&Ec4 ? DUT_AN_message:DUT34_q;
assign OUT35=Er5&Ec5 ? DUT_AN_message:DUT35_q;

endmodule
