module an_decoder_n29 (input [13:0] codeword,input [4:0]residue, output reg [9:0] message);
    parameter A=29;
    always@(codeword)begin
        case(residue)
           5'd1:message = (codeword -1)/A;
           5'd2:message = (codeword -2)/A;
           5'd4:message = (codeword -4)/A;
           5'd8:message = (codeword -8)/A;
           5'd16:message = (codeword -16)/A;
           5'd3:message = (codeword -32)/A;
           5'd6:message = (codeword -64)/A;
           5'd12:message = (codeword -128)/A;
           5'd24:message = (codeword -256)/A;
           5'd19:message = (codeword -512)/A;
           5'd9:message = (codeword -1024)/A;
           5'd18:message = (codeword -2048)/A;
           5'd7:message = (codeword -4096)/A;
           5'd14:message = (codeword -8192)/A;
           5'd28:message = (codeword +1)/A;
           5'd27:message = (codeword +2)/A;
           5'd25:message = (codeword +4)/A;
           5'd21:message = (codeword +8)/A;
           5'd13:message = (codeword +16)/A;
           5'd26:message = (codeword +32)/A;
           5'd23:message = (codeword +64)/A;
           5'd17:message = (codeword +128)/A;
           5'd5:message = (codeword +256)/A;
           5'd10:message = (codeword +512)/A;
           5'd20:message = (codeword +1024)/A;
           5'd11:message = (codeword +2048)/A;
           5'd22:message = (codeword +4096)/A;
           5'd15:message = (codeword +8192)/A;
            default:message =codeword /A;
     endcase
   end
endmodule