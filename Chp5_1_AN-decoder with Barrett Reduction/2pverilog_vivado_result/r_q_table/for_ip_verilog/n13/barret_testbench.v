module barret_testbench();
	reg [5:0]word;
	wire[2:0]q;
	wire[3:0]r;
	wire  [15:0]q_temp,shift_q_temp_0,shift_q_temp_2,shift_q_temp_3,shift_q_temp_sum,c_sum;
    wire  [15:0]r_temp;
	wire[15:0] codeword_shift_left_1,codeword_shift_left_2,codeword_shift_left_3,codeword_shift_left_6;
	wire [15:0]shift_codeword_sum,shift_codeword_sum_shift;
	wire error;
	barrett_n13 DUT1 (.codeword(word)
				,.q_temp(q_temp)
				,.r_temp(r_temp)
				,.q(q),.r(r)
				,.codeword_shift_left_1(codeword_shift_left_1)
				,.codeword_shift_left_2(codeword_shift_left_2)
				,.codeword_shift_left_3(codeword_shift_left_3)
				,.codeword_shift_left_6(codeword_shift_left_6)
				,.shift_codeword_sum(shift_codeword_sum)
				,.shift_codeword_sum_shift(shift_codeword_sum_shift)
				,.shift_q_temp_0(shift_q_temp_0)
				,.shift_q_temp_2(shift_q_temp_2)
				,.shift_q_temp_3(shift_q_temp_3)
				,.shift_q_temp_sum(shift_q_temp_sum)
				,.c_sum(c_sum)
				,.error(error)
				);
	
	
	initial begin 
	word='d13;
	#10 word='d26;
	#10 word='d39;
	#10 word='d52;
	#10 word='d1;
	#10 word='d12;
	#10 word='d27;
	#10 word='d38;
	#10 word='d53;
	#10 word='d2;
	$stop;
	end
	endmodule