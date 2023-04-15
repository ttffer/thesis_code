`timescale 1ns / 1ps
// for test
module barrett_n13_test(input [5:0] codeword,
                    output [15:0]q_temp,
                    output [15:0]r_temp,
					output  [2:0]q,
					output [3:0]r ,
					output [15:0]codeword_shift_left_1,
					output [15:0]codeword_shift_left_2,
					output [15:0]codeword_shift_left_3,
					output [15:0]codeword_shift_left_6,
					output [15:0]shift_codeword_sum,
					output [15:0]shift_codeword_sum_shift,
					output [15:0]shift_q_temp_0,
					output [15:0]shift_q_temp_2,
					output [15:0]shift_q_temp_3,
					output [15:0]shift_q_temp_sum,
					output [15:0]c_sum,
					
					output error
					//,output  [5:0] receive

    );

    

	   wire  [15:0]q_temp,shift_q_temp_0,shift_q_temp_2,shift_q_temp_3,shift_q_temp_sum,c_sum;
	   wire  [15:0]r_temp;
	   wire [15:0] shift_codeword_sum,shift_codeword_sum_shift;
	   
		wire[15:0] codeword_shift_left_1,codeword_shift_left_2,codeword_shift_left_3
				,codeword_shift_left_6;
		
		assign codeword_shift_left_1=codeword<<<1;
		assign codeword_shift_left_2=codeword<<<2;
		assign codeword_shift_left_3=codeword<<<3;
		assign codeword_shift_left_6=codeword<<<6;
		assign shift_codeword_sum=codeword_shift_left_1+codeword_shift_left_2+codeword_shift_left_3+codeword_shift_left_6;
		assign shift_codeword_sum_shift=shift_codeword_sum>>>10;
		
		
		assign q_temp = ( (codeword<<<1) +(codeword<<<2) +(codeword<<<3) +(codeword<<<6) ) >>>10; 
		
		
		
		
        assign r_temp = codeword-((q_temp<<<0)+(q_temp<<<2)+(q_temp<<<3));
		
		assign shift_q_temp_0=q_temp<<<0;
		assign shift_q_temp_2=q_temp<<<2;
		assign shift_q_temp_3=q_temp<<<3;
		assign shift_q_temp_sum =shift_q_temp_0+shift_q_temp_2+shift_q_temp_3;
		assign c_sum =codeword-shift_q_temp_sum;
		
        
        assign q = r_temp <4'd13 ? q_temp:q_temp+1'b1;
        //assign q = r_temp <4'd13 ? q_temp:q_temp+1'b1;
        assign r= r_temp <4'd13 ? r_temp:r_temp-4'd13;
		
		assign error = 'd12<'d13 ? 1'b1:1'b0;
        //assign error = r | 6'b0 ? 1'b1:1'b0; 
        //assign receive = codeword;                
                                
endmodule
