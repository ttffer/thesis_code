module andecoder_testbench();

reg [2:0]in_q;
reg [3:0]in_r;
wire [2:0]out_msg;


an_decoder_n13 DUT0(.quotient(in_q),.residue(in_r),.message(out_msg));


initial begin 
in_q='d0;in_r='d0;
/*
#10 in_q='d0;in_r='d1;
#10 in_q='d0;in_r='d2;
#10 in_q='d0;in_r='d4;
#10 in_q='d0;in_r='d8;
#10 in_q='d1;in_r='d3;
#10 in_q='d2;in_r='d6;
*/
#10 in_q='d0;in_r='d1;
#10 in_q='d0;in_r='d12;
#10 in_q='d2;in_r='d1;
#10 in_q='d2;in_r='d12;
#10 in_q='d4;in_r='d1;
#10 in_q='d0;in_r='d2;
#10 in_q='d1;in_r='d2;
#10 in_q='d1;in_r='d11;
#10 in_q='d2;in_r='d11;
#10 in_q='d4;in_r='d2;
#10 in_q='d0;in_r='d4;
#10 in_q='d0;in_r='d9;
#10 in_q='d2;in_r='d4;
#10 in_q='d2;in_r='d9;
#10 in_q='d3;in_r='d9;
#10 in_q='d0;in_r='d8;
#10 in_q='d0;in_r='d5;
#10 in_q='d1;in_r='d5;
#10 in_q='d3;in_r='d8;
#10 in_q='d4;in_r='d8;
#10 in_q='d1;in_r='d3;
#10 in_q='d2;in_r='d3;
#10 in_q='d0;in_r='d10;
#10 in_q='d4;in_r='d3;
#10 in_q='d2;in_r='d10;
#10 in_q='d2;in_r='d6;
#10 in_q='d3;in_r='d6;
#10 in_q='d4;in_r='d6;
#10 in_q='d0;in_r='d7;
#10 in_q='d1;in_r='d7;

$stop;


end


endmodule
