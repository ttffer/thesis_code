module an_decoder_n13 (input [5:0] codeword,input [3:0]residue, output reg [2:0] message);
    parameter A=13;
    always@(codeword)begin
        case(residue)
           4'd1:message = (codeword -1)/A;
           4'd2:message = (codeword -2)/A;
           4'd4:message = (codeword -4)/A;
           4'd8:message = (codeword -8)/A;
           4'd3:message = (codeword -16)/A;
           4'd6:message = (codeword -32)/A;
           4'd12:message = (codeword +1)/A;
           4'd11:message = (codeword +2)/A;
           4'd9:message = (codeword +4)/A;
           4'd5:message = (codeword +8)/A;
           4'd10:message = (codeword +16)/A;
           4'd7:message = (codeword +32)/A;
            default:message =codeword /A;
     endcase
   end
endmodule