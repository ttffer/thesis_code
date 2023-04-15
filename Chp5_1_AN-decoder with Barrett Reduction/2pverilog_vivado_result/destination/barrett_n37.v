module barrett_n37(input [17:0] codeword,output [12:0]q,output [5:0]r,output error,output[17:0] receive);
    wire[31:0]q_temp;
    wire[6:0]r_temp;
    assign q_temp=codeword*14'd14169>>19;
    assign r_temp=codeword-q_temp*6'd37;
    assign q=r_temp<6'd37 ? q_temp:q_temp+1'b1;
    assign r=r_temp<6'd37 ? r_temp:r_temp-6'd37;
    assign error = r|6'b0 ? 1'b1:1'b0;
    assign receive = codeword;
endmodule