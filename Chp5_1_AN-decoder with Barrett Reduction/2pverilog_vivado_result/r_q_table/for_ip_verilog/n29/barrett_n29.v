`timescale 1ns / 1ps
module barrett_n29(input [13:0] codeword,output [9:0]q,output [4:0]r,output error);
    wire[24:0]q_temp;
    wire[5:0]r_temp;
	assign q_temp=( (codeword<<<0) +(codeword<<<2) +(codeword<<<3) +(codeword<<<7) ) >>>12;
    assign r_temp=codeword-( (q_temp<<<0) +(q_temp<<<2) +(q_temp<<<3) +(q_temp<<<4) );
    assign q=r_temp<5'd29 ? q_temp:q_temp+1'b1;
    assign r=r_temp<5'd29 ? r_temp:r_temp-5'd29;
    assign error = r|5'b0 ? 1'b1:1'b0;
   // assign receive = codeword;
endmodule