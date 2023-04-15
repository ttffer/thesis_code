module n13sys1x1(input[5:0]IN0
                ,output[2:0]DUT0_q
                ,output[3:0]DUT0_r
                ,output DUT0_error
                ,output[2:0]OUT0);

wire [2:0]DUT0_q;
wire [3:0]DUT0_r;
wire DUT0_error;
wire [2:0] OUT0;

barrett_n13 DUT0(.codeword(IN0),.q(DUT0_q),.r(DUT0_r),.error(DUT0_error));  
an_decoder_n13 DUT_AN (.quotient(DUT0_q),.residue(DUT0_r),.message(OUT0));
endmodule