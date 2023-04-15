module an_decoder_n19 (input [8:0] codeword,input [4:0]residue, output reg [4:0] message);
    parameter A=19;
    always@(codeword)begin
        case(residue)
           5'd1:message = (codeword -1)/A;
           5'd2:message = (codeword -2)/A;
           5'd4:message = (codeword -4)/A;
           5'd8:message = (codeword -8)/A;
           5'd16:message = (codeword -16)/A;
           5'd13:message = (codeword -32)/A;
           5'd7:message = (codeword -64)/A;
           5'd14:message = (codeword -128)/A;
           5'd9:message = (codeword -256)/A;
           5'd18:message = (codeword +1)/A;
           5'd17:message = (codeword +2)/A;
           5'd15:message = (codeword +4)/A;
           5'd11:message = (codeword +8)/A;
           5'd3:message = (codeword +16)/A;
           5'd6:message = (codeword +32)/A;
           5'd12:message = (codeword +64)/A;
           5'd5:message = (codeword +128)/A;
           5'd10:message = (codeword +256)/A;
            default:message =codeword /A;
     endcase
   end
endmodule