`timescale 1ns / 1ps

module barrett_n13(input [5:0] codeword,
                     output  [2:0]q,
                     output [3:0]r ,
                     output error,
                     output  [5:0] receive

                    );


  // wire [2:0]q;
  // wire [3:0]r;
  wire  [9:0]q_temp;
  wire  [4:0]r_temp;
  // wire error;
  // wire [5:0]receive;

  assign q_temp = codeword*4'd9 >>7;
  assign r_temp = codeword-q_temp*4'd13;
  assign q = r_temp <4'd13 ? q_temp:q_temp+1'b1;
  assign r= r_temp <4'd13 ? r_temp:r_temp-4'd13;
  assign error = r | 6'b0 ? 1'b1:1'b0;
  assign receive = codeword;

endmodule
