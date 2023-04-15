
module n13sus1x1_testbench();

	reg [5:0] word0;
	wire [2:0] ans0;  
	wire [2:0]DUT0_q;
	wire [3:0]DUT0_r;
	wire DUT0_error;
	
	n13sys1x1 DUT(.IN0(word0)
			,.DUT0_q(DUT0_q)
			,.DUT0_r(DUT0_r)
			,.DUT0_error(DUT0_error)
			,.OUT0(ans0));
	
	initial begin 
	 word0='d13;
	 #10 word0='d26;
	 #10 word0='d39;
	 #10 word0='d52;
    #10 word0='d1;
    #10 word0='d12;
    #10 word0='d27;
    #10 word0='d38;
    #10 word0='d53;
    #10 word0='d2;
    #10 word0='d15;
    #10 word0='d24;
    #10 word0='d37;
    #10 word0='d54;
    #10 word0='d4;
    #10 word0='d9;
    #10 word0='d30;
    #10 word0='d35;
    #10 word0='d48;
    #10 word0='d8;
    #10 word0='d5;
    #10 word0='d18;
    #10 word0='d47;
    #10 word0='d60;
    #10 word0='d16;
    #10 word0='d29;
    #10 word0='d10;
    #10 word0='d55;
    #10 word0='d36;
    #10 word0='d32;
    #10 word0='d45;
    #10 word0='d58;
    #10 word0='d7;
    #10 word0='d20;

	
	$stop;
	end
	
endmodule