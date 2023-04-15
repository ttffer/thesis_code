module barrett_n29(input [13:0] codeword,output [9:0]q,output [4:0]r,output error,output[13:0] receive);
    wire[24:0]q_temp;
    wire[5:0]r_temp;
    assign q_temp=codeword*11'd1129>>15;
    assign r_temp=codeword-q_temp*5'd29;
    assign q=r_temp<5'd29 ? q_temp:q_temp+1'b1;
    assign r=r_temp<5'd29 ? r_temp:r_temp-5'd29;
    assign error = r|5'b0 ? 1'b1:1'b0;
    assign receive = codeword;
endmodule