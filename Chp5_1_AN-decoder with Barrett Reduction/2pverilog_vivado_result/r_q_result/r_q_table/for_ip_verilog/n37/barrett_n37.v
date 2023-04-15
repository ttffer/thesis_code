`timescale 1ns / 1ps
module barrett_n37(input [17:0] codeword,output [12:0]q,output [5:0]r,output error);
    wire[31:0]q_temp;
    wire[6:0]r_temp;
	assign q_temp=((codeword<<0)+(codeword<<1)+(codeword<<3)+(codeword<<5)+(codeword<<6)+(codeword<<7)+(codeword<<9)+(codeword<<10))>>16; 
    assign r_temp = codeword-((q_temp<<0)+(q_temp<<2)+(q_temp<<5));
    
    assign q=r_temp<6'd37 ? q_temp:q_temp+1'b1;
    assign r=r_temp<6'd37 ? r_temp:r_temp-6'd37;
    assign error = r|6'b0 ? 1'b1:1'b0;
   // assign receive = codeword;
endmodule