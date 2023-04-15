module an_decoder_n37 (input [17:0] codeword,input [5:0]residue, output reg [12:0] message);
    parameter A=37;
    always@(codeword)begin
        case(residue)
           6'd1:message = (codeword -1)/A;
           6'd2:message = (codeword -2)/A;
           6'd4:message = (codeword -4)/A;
           6'd8:message = (codeword -8)/A;
           6'd16:message = (codeword -16)/A;
           6'd32:message = (codeword -32)/A;
           6'd27:message = (codeword -64)/A;
           6'd17:message = (codeword -128)/A;
           6'd34:message = (codeword -256)/A;
           6'd31:message = (codeword -512)/A;
           6'd25:message = (codeword -1024)/A;
           6'd13:message = (codeword -2048)/A;
           6'd26:message = (codeword -4096)/A;
           6'd15:message = (codeword -8192)/A;
           6'd30:message = (codeword -16384)/A;
           6'd23:message = (codeword -32768)/A;
           6'd9:message = (codeword -65536)/A;
           6'd18:message = (codeword -131072)/A;
           6'd36:message = (codeword +1)/A;
           6'd35:message = (codeword +2)/A;
           6'd33:message = (codeword +4)/A;
           6'd29:message = (codeword +8)/A;
           6'd21:message = (codeword +16)/A;
           6'd5:message = (codeword +32)/A;
           6'd10:message = (codeword +64)/A;
           6'd20:message = (codeword +128)/A;
           6'd3:message = (codeword +256)/A;
           6'd6:message = (codeword +512)/A;
           6'd12:message = (codeword +1024)/A;
           6'd24:message = (codeword +2048)/A;
           6'd11:message = (codeword +4096)/A;
           6'd22:message = (codeword +8192)/A;
           6'd7:message = (codeword +16384)/A;
           6'd14:message = (codeword +32768)/A;
           6'd28:message = (codeword +65536)/A;
           6'd19:message = (codeword +131072)/A;
            default:message =codeword /A;
     endcase
   end
endmodule