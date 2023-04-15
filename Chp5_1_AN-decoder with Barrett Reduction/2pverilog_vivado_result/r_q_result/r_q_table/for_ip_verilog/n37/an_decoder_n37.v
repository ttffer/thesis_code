`timescale 1ns / 1ps
module an_decoder_n37 (input [17:0] quotient,input [5:0]residue, output reg [12:0] message);
    //parameter A=37;
    always@(*)begin
        case(residue)
		6'd1: message= quotient;
		6'd2: message= quotient;
		6'd4: message= quotient;
		6'd8: message= quotient;
		6'd16: message= quotient;
		6'd32: message= quotient;
		6'd27:  message= quotient-'d1;
		6'd17:  message= quotient-'d3;
		6'd34:  message= quotient-'d6;
		6'd31:  message= quotient-'d13;
		6'd25:  message= quotient-'d27;
		6'd13:  message= quotient-'d55;
		6'd26:  message= quotient-'d110;
		6'd15:  message= quotient-'d221;
		6'd30:  message= quotient-'d442;
		6'd23:  message= quotient-'d885;
		6'd9:  message= quotient-'d1771;
		6'd18:  message= quotient-'d3542;
		6'd36:  message= quotient+'d1;
		6'd35:  message= quotient+'d1;
		6'd33:  message= quotient+'d1;
		6'd29:  message= quotient+'d1;
		6'd21:  message= quotient+'d1;
		6'd5:  message= quotient+'d1;
		6'd10:  message= quotient+'d2;
		6'd20:  message= quotient+'d4;
		6'd3:  message= quotient+'d7;
		6'd6:  message= quotient+'d14;
		6'd12:  message= quotient+'d28;
		6'd24:  message= quotient+'d56;
		6'd11:  message= quotient+'d111;
		6'd22:  message= quotient+'d222;
		6'd7:  message= quotient+'d443;
		6'd14:  message= quotient+'d886;
		6'd28:  message= quotient+'d1772;
		6'd19:  message= quotient+'d3543;
            default:message =quotient ;
     endcase
   end
endmodule