`timescale 1ns / 1ps
module an_decoder_n29 (input [13:0] quotient,input [4:0]residue, output reg [9:0] message);
    //parameter A=29;
    always@(*)begin
        case(residue)
	5'd1: message= quotient;
	5'd2: message= quotient;
	5'd4: message= quotient;
	5'd8: message= quotient;
	5'd16: message= quotient;
	5'd3:  message= quotient-'d1;
	5'd6:  message= quotient-'d2;
	5'd12:  message= quotient-'d4;
	5'd24:  message= quotient-'d8;
	5'd19:  message= quotient-'d17;
	5'd9:  message= quotient-'d35;
	5'd18:  message= quotient-'d70;
	5'd7:  message= quotient-'d141;
	5'd14:  message= quotient-'d282;
	5'd28:  message= quotient+'d1;
	5'd27:  message= quotient+'d1;
	5'd25:  message= quotient+'d1;
	5'd21:  message= quotient+'d1;
	5'd13:  message= quotient+'d1;
	5'd26:  message= quotient+'d2;
	5'd23:  message= quotient+'d3;
	5'd17:  message= quotient+'d5;
	5'd5:  message= quotient+'d9;
	5'd10:  message= quotient+'d18;
	5'd20:  message= quotient+'d36;
	5'd11:  message= quotient+'d71;
	5'd22:  message= quotient+'d142;
	5'd15:  message= quotient+'d283;


            default:message =quotient ;
     endcase
   end
endmodule