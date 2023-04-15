`timescale 1ns / 1ps

module barrett_n13(input [5:0] codeword,
					output  [2:0]q,
					output [3:0]r ,
					output error
					//,output  [5:0] receive

    );

    

	   wire  [15:0]q_temp;
	   wire  [15:0]r_temp;
		
		assign q_temp = ( (codeword<<<1) +(codeword<<<2) +(codeword<<<3) +(codeword<<<6) ) >>>10; 
        assign r_temp = codeword-((q_temp<<<0)+(q_temp<<<2)+(q_temp<<<3));
        assign q = r_temp <4'd13 ? q_temp:q_temp+1'b1;
        assign r= r_temp <4'd13 ? r_temp:r_temp-4'd13;
		assign error = r |4'd0 ? 1'b1:1'b0;
 
endmodule
