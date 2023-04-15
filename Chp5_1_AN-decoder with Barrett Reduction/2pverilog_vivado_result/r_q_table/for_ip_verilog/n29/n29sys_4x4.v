`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2022 03:08:38 PM
// Design Name: 
// Module Name: n29sys_4x4
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


module n29sys_4x4(	
    input [13:0] IN0,
    input [13:0] IN1,
    input [13:0] IN2,
    input [13:0] IN3,
    input [13:0] IN4,
    input [13:0] IN5,
    input [13:0] IN6,
    input [13:0] IN7,
    input [13:0] IN8,
    input [13:0] IN9,
    input [13:0] IN10,
    input [13:0] IN11,
    input [13:0] IN12,
    input [13:0] IN13,
    input [13:0] IN14,
    input [13:0] IN15,
    
    output [9:0] OUT0,
    output [9:0] OUT1,
    output [9:0] OUT2,
    output [9:0] OUT3,
    output [9:0] OUT4,
    output [9:0] OUT5,
    output [9:0] OUT6,
    output [9:0] OUT7,
    output [9:0] OUT8,
    output [9:0] OUT9,
    output [9:0] OUT10,
    output [9:0] OUT11,
    output [9:0] OUT12,
    output [9:0] OUT13,
    output [9:0] OUT14,
    output [9:0] OUT15
    );
     wire [9:0] DUT0_q,DUT1_q,DUT2_q,DUT3_q,DUT4_q,DUT5_q,DUT6_q,DUT7_q,DUT8_q,DUT9_q,DUT10_q,DUT11_q,DUT12_q,DUT13_q,DUT14_q,DUT15_q;
    wire [4:0] DUT0_r,DUT1_r,DUT2_r,DUT3_r,DUT4_r,DUT5_r,DUT6_r,DUT7_r,DUT8_r,DUT9_r,DUT10_r,DUT11_r,DUT12_r,DUT13_r,DUT14_r,DUT15_r;
    //wire [13:0] DUT0_receive,DUT1_receive,DUT2_receive,DUT3_receive,DUT4_receive,DUT5_receive,DUT6_receive,DUT7_receive,DUT8_receive,DUT9_receive,DUT10_receive,DUT11_receive,DUT12_receive,DUT13_receive,DUT14_receive,DUT15_receive;
    wire DDUT0_error,DUT1_error,DUT2_error,DUT3_error,DUT4_error,DUT5_error,DUT6_error,DUT7_error,DUT8_error,DUT9_error,DUT10_error,DUT11_error,DUT12_error,DUT13_error,DUT14_error,DUT15_error;
    wire Er0,Er1,Er2,Er3 ,Ec0,Ec1,Ec2,Ec3;
    
    barrett_n29 DUT0(.codeword(IN0),.q(DUT0_q),.r(DUT0_r),.error(DUT0_error));
	barrett_n29 DUT1(.codeword(IN1),.q(DUT1_q),.r(DUT1_r),.error(DUT1_error));
	barrett_n29 DUT2(.codeword(IN2),.q(DUT2_q),.r(DUT2_r),.error(DUT2_error));
	barrett_n29 DUT3(.codeword(IN3),.q(DUT3_q),.r(DUT3_r),.error(DUT3_error));
	barrett_n29 DUT4(.codeword(IN4),.q(DUT4_q),.r(DUT4_r),.error(DUT4_error));
	barrett_n29 DUT5(.codeword(IN5),.q(DUT5_q),.r(DUT5_r),.error(DUT5_error));
	barrett_n29 DUT6(.codeword(IN6),.q(DUT6_q),.r(DUT6_r),.error(DUT6_error));
	barrett_n29 DUT7(.codeword(IN7),.q(DUT7_q),.r(DUT7_r),.error(DUT7_error));
	barrett_n29 DUT8(.codeword(IN8),.q(DUT8_q),.r(DUT8_r),.error(DUT8_error));
	barrett_n29 DUT9(.codeword(IN9),.q(DUT9_q),.r(DUT9_r),.error(DUT9_error));
	barrett_n29 DUT10(.codeword(IN10),.q(DUT10_q),.r(DUT10_r),.error(DUT10_error));
	barrett_n29 DUT11(.codeword(IN11),.q(DUT11_q),.r(DUT11_r),.error(DUT11_error));
	barrett_n29 DUT12(.codeword(IN12),.q(DUT12_q),.r(DUT12_r),.error(DUT12_error));
	barrett_n29 DUT13(.codeword(IN13),.q(DUT13_q),.r(DUT13_r),.error(DUT13_error));
	barrett_n29 DUT14(.codeword(IN14),.q(DUT14_q),.r(DUT14_r),.error(DUT14_error));
	barrett_n29 DUT15(.codeword(IN15),.q(DUT15_q),.r(DUT15_r),.error(DUT15_error));
	//
	wire [13:0] DUT_AN_quotient;
    wire [4:0] DUT_AN_residue;
    wire [9:0] DUT_AN_message;
    
    an_decoder_n29 DUT_AN (.quotient(DUT_AN_quotient),.residue(DUT_AN_residue),.message(DUT_AN_message));
    
    assign Er0 = DUT0_error | DUT1_error| DUT2_error| DUT3_error;
    assign Er1 = DUT4_error | DUT5_error| DUT6_error| DUT7_error;
    assign Er2 = DUT8_error | DUT9_error| DUT10_error| DUT11_error;
    assign Er3 = DUT12_error | DUT13_error| DUT14_error| DUT15_error;

    assign Ec0 = DUT0_error | DUT4_error| DUT8_error| DUT12_error;
    assign Ec1 = DUT1_error | DUT5_error| DUT9_error| DUT13_error;
    assign Ec2 = DUT2_error | DUT6_error| DUT10_error| DUT14_error;
    assign Ec3=  DUT3_error | DUT7_error| DUT11_error| DUT15_error;
    
    assign DUT_AN_residue =  Er0&Ec0 ? DUT0_r :
                            (Er0&Ec1 ? DUT1_r :
                            (Er0&Ec2 ? DUT2_r :
                            (Er0&Ec3 ? DUT3_r :
                            (Er1&Ec0 ? DUT4_r :
                            (Er1&Ec1 ? DUT5_r :
                            (Er1&Ec2 ? DUT6_r :
                            (Er1&Ec3 ? DUT7_r :
                            (Er2&Ec0 ? DUT8_r :
                            (Er2&Ec1 ? DUT9_r :
                            (Er2&Ec2 ? DUT10_r :
                            (Er2&Ec3 ? DUT11_r :
                            (Er3&Ec0 ? DUT12_r :
                            (Er3&Ec1 ? DUT13_r :
                            (Er3&Ec2 ? DUT14_r :
                            (Er3&Ec3 ? DUT15_r :1'b0)))))))))))))));
      assign DUT_AN_quotient= Er0&Ec0 ? DUT0_q :
                            (Er0&Ec1 ? DUT1_q :
                            (Er0&Ec2 ? DUT2_q :
                            (Er0&Ec3 ? DUT3_q :
                            (Er1&Ec0 ? DUT4_q :
                            (Er1&Ec1 ? DUT5_q :
                            (Er1&Ec2 ? DUT6_q :
                            (Er1&Ec3 ? DUT7_q :
                            (Er2&Ec0 ? DUT8_q :
                            (Er2&Ec1 ? DUT9_q :
                            (Er2&Ec2 ? DUT10_q :
                            (Er2&Ec3 ? DUT11_q :
                            (Er3&Ec0 ? DUT12_q :
                            (Er3&Ec1 ? DUT13_q :
                            (Er3&Ec2 ? DUT14_q :
                            (Er3&Ec3 ? DUT15_q :1'b0)))))))))))))));
    assign OUT0=Er0&Ec0 ? DUT_AN_message:DUT0_q;
    assign OUT1=Er0&Ec1 ? DUT_AN_message:DUT1_q;
    assign OUT2=Er0&Ec2 ? DUT_AN_message:DUT2_q;
    assign OUT3=Er0&Ec3 ? DUT_AN_message:DUT3_q;
    assign OUT4=Er1&Ec0 ? DUT_AN_message:DUT4_q;
    assign OUT5=Er1&Ec1 ? DUT_AN_message:DUT5_q;
    assign OUT6=Er1&Ec2 ? DUT_AN_message:DUT6_q;
    assign OUT7=Er1&Ec3 ? DUT_AN_message:DUT7_q;
    assign OUT8=Er2&Ec0 ? DUT_AN_message:DUT8_q;
    assign OUT9=Er2&Ec1 ? DUT_AN_message:DUT9_q;
    assign OUT10=Er2&Ec2 ? DUT_AN_message:DUT10_q;
    assign OUT11=Er2&Ec3 ? DUT_AN_message:DUT11_q;
    assign OUT12=Er3&Ec0 ? DUT_AN_message:DUT12_q;
    assign OUT13=Er3&Ec1 ? DUT_AN_message:DUT13_q;
    assign OUT14=Er3&Ec2 ? DUT_AN_message:DUT14_q;
    assign OUT15=Er3&Ec3 ? DUT_AN_message:DUT15_q;
                                     
       
    
    
endmodule
