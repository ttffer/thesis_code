// an decoder for n-13 with LUT
`timescale 1ns / 1ps
module an_decoder_n13(input [2:0] quotient,input [3:0]residue,output reg [2:0]message

    );
   //parameter A=13;
   
   always@(*)begin
   case(residue)
        4'd1:  message =     quotient;
        4'd2:  message =     quotient;
        4'd4:  message =     quotient;
        4'd8:  message =     quotient;
        4'd3:  message =     quotient-'d1;
        4'd6:  message =     quotient-'d2;
        4'd12: message =     quotient+'d1;
        4'd11: message =     quotient+'d1;
        4'd9:  message =     quotient+'d1;
        4'd5:  message =     quotient+'d1;
        4'd10: message =     quotient+'d2;
        4'd7:  message =     quotient+'d3;
        default:message =quotient;
       endcase
    end
endmodule

