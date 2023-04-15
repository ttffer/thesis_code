module barrett_n19(input [8:0] codeword,output [4:0]q,output [4:0]r,output error,output[8:0] receive);
    wire[14:0]q_temp;
    wire[5:0]r_temp;
    assign q_temp=codeword*6'd53>>10;
    assign r_temp=codeword-q_temp*5'd19;
    assign q=r_temp<5'd19 ? q_temp:q_temp+1'b1;
    assign r=r_temp<5'd19 ? r_temp:r_temp-5'd19;
    assign error = r|5'b0 ? 1'b1:1'b0;
    assign receive = codeword;
endmodule