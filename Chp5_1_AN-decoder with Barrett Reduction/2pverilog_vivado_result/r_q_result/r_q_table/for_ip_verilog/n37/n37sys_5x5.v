`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2022 05:19:10 PM
// Design Name: 
// Module Name: n13sys_5x5
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


module n37sys_5x5(
    input [17:0] IN0,
    input [17:0] IN1,
    input [17:0] IN2,
    input [17:0] IN3,
    input [17:0] IN4,
    input [17:0] IN5,
    input [17:0] IN6,
    input [17:0] IN7,
    input [17:0] IN8,
    input [17:0] IN9,
    input [17:0] IN10,
    input [17:0] IN11,
    input [17:0] IN12,
    input [17:0] IN13,
    input [17:0] IN14,
    input [17:0] IN15,
    input [17:0] IN16,
    input [17:0] IN17,
    input [17:0] IN18,
    input [17:0] IN19,
    input [17:0] IN20,
    input [17:0] IN21,
    input [17:0] IN22,
    input [17:0] IN23,
    input [17:0] IN24,
    output [12:0] OUT0,
    output [12:0] OUT1,
    output [12:0] OUT2,
    output [12:0] OUT3,
    output [12:0] OUT4,
    output [12:0] OUT5,
    output [12:0] OUT6,
    output [12:0] OUT7,
    output [12:0] OUT8,
    output [12:0] OUT9,
    output [12:0] OUT10,
    output [12:0] OUT11,
    output [12:0] OUT12,
    output [12:0] OUT13,
    output [12:0] OUT14,
    output [12:0] OUT15,
    output [12:0] OUT16,
    output [12:0] OUT17,
    output [12:0] OUT18,
    output [12:0] OUT19,
    output [12:0] OUT20,
    output [12:0] OUT21,
    output [12:0] OUT22,
    output [12:0] OUT23,
    output [12:0] OUT24
    

    );
    wire [12:0]DUT0_q,DUT1_q,DUT2_q,DUT3_q,DUT4_q,DUT5_q,DUT6_q,DUT7_q,DUT8_q,DUT9_q,DUT10_q,DUT11_q,DUT12_q,DUT13_q,DUT14_q,DUT15_q,DUT16_q,DUT17_q,DUT18_q,DUT19_q,DUT20_q,DUT21_q,DUT22_q,DUT23_q,DUT24_q;
    wire [5:0]DUT0_r,DUT1_r,DUT2_r,DUT3_r,DUT4_r,DUT5_r,DUT6_r,DUT7_r,DUT8_r,DUT9_r,DUT10_r,DUT11_r,DUT12_r,DUT13_r,DUT14_r,DUT15_r,DUT16_r,DUT17_r,DUT18_r,DUT19_r,DUT20_r,DUT21_r,DUT22_r,DUT23_r,DUT24_r;
   //wire [17:0]DUT0_receive,DUT1_receive,DUT2_receive,DUT3_receive,DUT4_receive,DUT5_receive,DUT6_receive,DUT7_receive,DUT8_receive,DUT9_receive,DUT10_receive,DUT11_receive,DUT12_receive,DUT13_receive,DUT14_receive,DUT15_receive,DUT16_receive,DUT17_receive,DUT18_receive,DUT19_receive,DUT20_receive,DUT21_receive,DUT22_receive,DUT23_receive,DUT24_receive;
    wire DUT0_error,DUT1_error,DUT2_error,DUT3_error,DUT4_error,DUT5_error,DUT6_error,DUT7_error,DUT8_error,DUT9_error,DUT10_error,DUT11_error,DUT12_error,DUT13_error,DUT14_error,DUT15_error,DUT16_error,DUT17_error,DUT18_error,DUT19_error,DUT20_error,DUT21_error,DUT22_error,DUT23_error,DUT24_error;
    wire Ec0,Ec1,Ec2,Ec3,Ec4,Ec5,Ec6,Ec7,Ec8,Ec9,Ec10,Ec11,Ec12,Ec13,Ec14,Ec15,Ec16,Ec17,Ec18,Ec19,Ec20,Ec21,Ec22,Ec23,Ec24;
    wire Er0,Er1,Er2,Er3,Er4,Er5,Er6,Er7,Er8,Er9,Er10,Er11,Er12,Er13,Er14,Er15,Er16,Er17,Er18,Er19,Er20,Er21,Er22,Er23,Er24;
    
    barrett_n37  DUT0(.codeword(IN0),.q(DUT0_q),.r(DUT0_r),.error(DUT0_error));
    barrett_n37  DUT1(.codeword(IN1),.q(DUT1_q),.r(DUT1_r),.error(DUT1_error));
    barrett_n37  DUT2(.codeword(IN2),.q(DUT2_q),.r(DUT2_r),.error(DUT2_error));
    barrett_n37  DUT3(.codeword(IN3),.q(DUT3_q),.r(DUT3_r),.error(DUT3_error));
    barrett_n37  DUT4(.codeword(IN4),.q(DUT4_q),.r(DUT4_r),.error(DUT4_error));
    barrett_n37  DUT5(.codeword(IN5),.q(DUT5_q),.r(DUT5_r),.error(DUT5_error));
    barrett_n37  DUT6(.codeword(IN6),.q(DUT6_q),.r(DUT6_r),.error(DUT6_error));
    barrett_n37  DUT7(.codeword(IN7),.q(DUT7_q),.r(DUT7_r),.error(DUT7_error));
    barrett_n37  DUT8(.codeword(IN8),.q(DUT8_q),.r(DUT8_r),.error(DUT8_error));
    barrett_n37  DUT9(.codeword(IN9),.q(DUT9_q),.r(DUT9_r),.error(DUT9_error));
    barrett_n37  DUT10(.codeword(IN10),.q(DUT10_q),.r(DUT10_r),.error(DUT10_error));
    barrett_n37  DUT11(.codeword(IN11),.q(DUT11_q),.r(DUT11_r),.error(DUT11_error));
    barrett_n37  DUT12(.codeword(IN12),.q(DUT12_q),.r(DUT12_r),.error(DUT12_error));
    barrett_n37  DUT13(.codeword(IN13),.q(DUT13_q),.r(DUT13_r),.error(DUT13_error));
    barrett_n37  DUT14(.codeword(IN14),.q(DUT14_q),.r(DUT14_r),.error(DUT14_error));
    barrett_n37  DUT15(.codeword(IN15),.q(DUT15_q),.r(DUT15_r),.error(DUT15_error));
    barrett_n37  DUT16(.codeword(IN16),.q(DUT16_q),.r(DUT16_r),.error(DUT16_error));
    barrett_n37  DUT17(.codeword(IN17),.q(DUT17_q),.r(DUT17_r),.error(DUT17_error));
    barrett_n37  DUT18(.codeword(IN18),.q(DUT18_q),.r(DUT18_r),.error(DUT18_error));
    barrett_n37  DUT19(.codeword(IN19),.q(DUT19_q),.r(DUT19_r),.error(DUT19_error));
    barrett_n37  DUT20(.codeword(IN20),.q(DUT20_q),.r(DUT20_r),.error(DUT20_error));
    barrett_n37  DUT21(.codeword(IN21),.q(DUT21_q),.r(DUT21_r),.error(DUT21_error));
    barrett_n37  DUT22(.codeword(IN22),.q(DUT22_q),.r(DUT22_r),.error(DUT22_error));
    barrett_n37  DUT23(.codeword(IN23),.q(DUT23_q),.r(DUT23_r),.error(DUT23_error));
    barrett_n37  DUT24(.codeword(IN24),.q(DUT24_q),.r(DUT24_r),.error(DUT24_error));
    wire [17:0] DUT_AN_quotient;
    wire [5:0] DUT_AN_residue;
    wire [12:0] DUT_AN_message;
    an_decoder_n37  DUT_AN (.quotient(DUT_AN_quotient),.residue(DUT_AN_residue),.message(DUT_AN_message));

    assign Er0 = DUT0_error | DUT1_error| DUT2_error| DUT3_error| DUT4_error;
    assign Er1 = DUT5_error | DUT6_error| DUT7_error| DUT8_error| DUT9_error;
    assign Er2 = DUT10_error | DUT11_error| DUT12_error| DUT13_error| DUT14_error;
    assign Er3 = DUT15_error | DUT16_error| DUT17_error| DUT18_error| DUT19_error;
    assign Er4 = DUT20_error | DUT21_error| DUT22_error| DUT23_error| DUT24_error;
    
    assign Ec0 = DUT0_error | DUT5_error| DUT10_error| DUT15_error| DUT20_error;
    assign Ec1 = DUT1_error | DUT6_error| DUT11_error| DUT16_error| DUT21_error;
    assign Ec2 = DUT2_error | DUT7_error| DUT12_error| DUT17_error| DUT22_error;
    assign Ec3 = DUT3_error | DUT8_error| DUT13_error| DUT18_error| DUT23_error;
    assign Ec4 = DUT4_error | DUT9_error| DUT14_error| DUT19_error| DUT24_error;
    
    assign DUT_AN_residue =  Er0&Ec0 ? DUT0_r :
                            (Er0&Ec1 ? DUT1_r :
                            (Er0&Ec2 ? DUT2_r :
                            (Er0&Ec3 ? DUT3_r :
                            (Er0&Ec4 ? DUT4_r :
                            (Er1&Ec0 ? DUT5_r :
                            (Er1&Ec1 ? DUT6_r :
                            (Er1&Ec2 ? DUT7_r :
                            (Er1&Ec3 ? DUT8_r :
                            (Er1&Ec4 ? DUT9_r :
                            (Er2&Ec0 ? DUT10_r :
                            (Er2&Ec1 ? DUT11_r :
                            (Er2&Ec2 ? DUT12_r :
                            (Er2&Ec3 ? DUT13_r :
                            (Er2&Ec4 ? DUT14_r :
                            (Er3&Ec0 ? DUT15_r :
                            (Er3&Ec1 ? DUT16_r :
                            (Er3&Ec2 ? DUT17_r :
                            (Er3&Ec3 ? DUT18_r :
                            (Er3&Ec4 ? DUT19_r :
                            (Er4&Ec0 ? DUT20_r :
                            (Er4&Ec1 ? DUT21_r :
                            (Er4&Ec2 ? DUT22_r :
                            (Er4&Ec3 ? DUT23_r :
                            (Er4&Ec4 ? DUT24_r :1'b0))))))))))))))))))))))));
       assign DUT_AN_quotient = Er0&Ec0 ? DUT0_q :
                            (Er0&Ec1 ? DUT1_q :
                            (Er0&Ec2 ? DUT2_q :
                            (Er0&Ec3 ? DUT3_q :
                            (Er0&Ec4 ? DUT4_q :
                            (Er1&Ec0 ? DUT5_q :
                            (Er1&Ec1 ? DUT6_q :
                            (Er1&Ec2 ? DUT7_q :
                            (Er1&Ec3 ? DUT8_q :
                            (Er1&Ec4 ? DUT9_q :
                            (Er2&Ec0 ? DUT10_q :
                            (Er2&Ec1 ? DUT11_q :
                            (Er2&Ec2 ? DUT12_q :
                            (Er2&Ec3 ? DUT13_q :
                            (Er2&Ec4 ? DUT14_q :
                            (Er3&Ec0 ? DUT15_q :
                            (Er3&Ec1 ? DUT16_q :
                            (Er3&Ec2 ? DUT17_q :
                            (Er3&Ec3 ? DUT18_q :
                            (Er3&Ec4 ? DUT19_q :
                            (Er4&Ec0 ? DUT20_q :
                            (Er4&Ec1 ? DUT21_q :
                            (Er4&Ec2 ? DUT22_q :
                            (Er4&Ec3 ? DUT23_q :
                            (Er4&Ec4 ? DUT24_q :1'b0))))))))))))))))))))))));
                            
     assign OUT0=Er0&Ec0 ? DUT_AN_message:DUT0_q;
     assign OUT1=Er0&Ec1 ? DUT_AN_message:DUT1_q;
     assign OUT2=Er0&Ec2 ? DUT_AN_message:DUT2_q;
     assign OUT3=Er0&Ec3 ? DUT_AN_message:DUT3_q;
     assign OUT4=Er0&Ec4 ? DUT_AN_message:DUT4_q;
     
     assign OUT5=Er1&Ec0 ? DUT_AN_message:DUT5_q;
     assign OUT6=Er1&Ec1 ? DUT_AN_message:DUT6_q;
     assign OUT7=Er1&Ec2 ? DUT_AN_message:DUT7_q;
     assign OUT8=Er1&Ec3 ? DUT_AN_message:DUT8_q;
     assign OUT9=Er1&Ec4 ? DUT_AN_message:DUT9_q;
     
     assign OUT10=Er2&Ec0 ? DUT_AN_message:DUT10_q;
     assign OUT11=Er2&Ec1 ? DUT_AN_message:DUT11_q;
     assign OUT12=Er2&Ec2 ? DUT_AN_message:DUT12_q;
     assign OUT13=Er2&Ec3 ? DUT_AN_message:DUT13_q;
     assign OUT14=Er2&Ec4 ? DUT_AN_message:DUT14_q;
     
     assign OUT15=Er3&Ec0 ? DUT_AN_message:DUT15_q;
     assign OUT16=Er3&Ec1 ? DUT_AN_message:DUT16_q;
     assign OUT17=Er3&Ec2 ? DUT_AN_message:DUT17_q;
     assign OUT18=Er3&Ec3 ? DUT_AN_message:DUT18_q;
     assign OUT19=Er3&Ec4 ? DUT_AN_message:DUT19_q;
     
     assign OUT20=Er4&Ec0 ? DUT_AN_message:DUT20_q;
     assign OUT21=Er4&Ec1 ? DUT_AN_message:DUT21_q;
     assign OUT22=Er4&Ec2 ? DUT_AN_message:DUT22_q;
     assign OUT23=Er4&Ec3 ? DUT_AN_message:DUT23_q;
     assign OUT24=Er4&Ec4 ? DUT_AN_message:DUT24_q;                      
    
endmodule
