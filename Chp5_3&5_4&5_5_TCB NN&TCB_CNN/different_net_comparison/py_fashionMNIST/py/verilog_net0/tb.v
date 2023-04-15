`timescale 1ns/1ps
module tb;
reg clk,rst,valid;
reg [968-1:0] img;
wire [7:0] number;
top_tcb_121_32_10 top_DUT(
    .clk(clk),
    .rst(rst),
    .img_source(img),
    .valid_top(valid),
    .ready_top(ready_top),
    .number(number)
);
always #5 clk=~clk;
initial 
begin
$monitor("number is %d",number);
clk=0;rst=1'b1;valid=1'b1;
img=121'b0;
#10 rst=1'b0;
//@(negedge clk) #(10/4) img=968'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001010100011111101000001001001000010001100110110001110000011011000110000000111100001000001001001010111000101110101010101010100000100011100111111001110110011101000110111001010000011111101001100010011010100110101000110001111010011001100100001000100100000101100000100001010010100110101001111010010100011110100110000000011100000000100000001000000000000000000010111010001100100101001001010001110010001000100000001000000000000000000000000000000000000110100011001000011000001011100011001000000010000000000000000000000000000000000000000000000100000001000000000000000010000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
//@(negedge clk) #(10/4) img=968'b00000011010001000010111100000111000001110000011100000111000010100101000000011101000000000000010101010000010010110101011101011001010110010101101001010010011000110010100100000000000001000100111001011111011100010111011001110110011101100110111001101110001011000000000000000100010010010110000101101000011101100111011001110110011001100110101100101101000000000000001001000010011010000110100101110110011101010111010101011110011011110010110100000000000000010011110001110011011100000111010101110101011101100110100001110010001010000000000000000000001101010111100001010111011000010101101001001111011100010111001100100000000000000000000000101111011100110011110000110011001010000011110101100100011100000001011100000000000000000010000001101111010011100100110001001011010110010101100001101101000100010000000000000000000011010101111001110100011101010111011001110011011100010101100100001001000000000000000000000001000110110100100001011000010101100101011000111111000101010000000100000000;
//@(negedge clk) #(10/4) img=968'b00000000000000000000001101000011001111110011010101000001000000010000000000000000000000000000000000000000000000110100011001001100001100100101101000001000000000000000000000000000000000000000000000000011010010010101001000011101011001000001001100000000000000000000000000000000000000000000001101001001010101100001010001100110001001000000000000000000000000000000000000000000000000110100100101010111000011100110001100110101000000000000000000000000000000000000000000000100010010110101111100011010011010010011100100000000000000000000000000000000000000000000010001001110011010110010110101101111001110000000000000000000000000000000000000000000000001000101000001110000010100010111001100110011000000000000000000000000000000000000000000000110010100110111001101110010011100000010010000000000000000000000000000000000000000000000010101010000011100100111001101101101000101100000000000000000000000000000000000000000000000100011111001101001011010000101111000001101000000000000000000000000;
//@(negedge clk) #(10/4) img=968'b00000000000000000000000000010111010000010000111101001000000001110000000000000000000000000000000000000000000000000010001101001110000101000101100100001110000000000000000000000000000000000000000000000000001010000101001100010111010110010001000000000000000000000000000000000000000000000000000000100001010010110001101001010010000011110000000000000000000000000000000000000000000000000000111000111101001010010011010100001010000000000000000000000000000000000000000000000000000011000100000000110010001100010000110000000000000000000000000000000000000000000000000000010010010001110011010000110011000100100000000000000000000000000000000000000000000000010001011101001010010000010011010100010110000000000000000000000000000000000000000000000001001000000101100101011100010000110001101100000000000000000000000000000000000000000000001000110001011010010110101101100101001000110000000000000000000000000000000000000000000000100010110001010011010110000101100100011101000000000000000000000000;
//@(negedge clk) #(10/4) img=968'b00000000000000000001111000111101010000100100001100111101001011010000100000000000000000000000000000000000001100010100010000111100001111000011100100110111000011100000000000000000000001010001011100101101010001100011100100111011001101110010111100011100000011100000000100010001010010000011111001000011001110100011011100110111001011000100000100101001000000100000110001000110010001000100000000111001001110010011010100101011001111010010001000000001000001110100000101001100010000010011101000111000001101000011001000111110000111000000000000000101001110110101010001001010001110100011010100110011001111000011111100010111000000000000001000110000010110000100101100110111001101100011001100110110001111010000111000000000000000000010010001010000010000100011110100111100001100100011010000110011000001110000000000000000000100000100000001000010010001010100110000111000001101110010001000000010000000000000000000000001000100110011000001000011010001010011100100011011000001100000000100000000;
//@(negedge clk) #(10/4) img=968'b00000000000000000001001101011000000111010011110100110111000000010000000000000000000000000000000000000000000101100110001100011111001100100101000000000111000000000000000000000000000000000000000000010101011000110010001000011011010111000001100000000000000000000000000000000000000000000001010101011001001001000001000001011101001010110000000000000000000000000000000000000000000100110100101000101110000001100100111100111000000000110000000000000000000000000000000000010010010010110100001000001100010101010100001000000101000000000000000000000000000000000001000101010101010100010010001001011110010010000000010100000000000000000000000000000000000100100101100001100011010011000110001001000001000000110000000000000000000000000000000000010100010110110110101001101010011001000011011100000001000000000000000000000000000000000000111001010101011001110110100101100111001001110000000000000000000000000000000000000000000001100100110001100100011001010110000000010100000000000000000000000000;
@(negedge clk) #(10/4) img=968'b00000000000001010001111000001101000000010000001000000010000011100010000100001101000000000000000000000011001001010010001000001100000101100001100100101101001010000000101000000000000000000000010000100000001010110000101100011011000110100011100000100101000010010000000000000000000000110001111000110001000010100001101000010111001111100010000100001000000000000000000000000011000110100011001100001001000110010001010100111101000111000000011100000000000000000000001000010010001011010000101000011001000101100011011000011010000001010000000000000000000000010000110100010110000011000001101000010101001011100001101000000100000000000000000000000001000011010000111000010000000111000001010100101000000110100000001100000000000000000000000000001010000100110001010000100000000110110010010000010110000000010000000000000000000000000000001100001001001010000101011000110010000111010000011000000000000000000000000000000000000000000000010101000000010101000100011000001111000000000000000000000000;
//@(negedge clk) #(10/4) img=968'b00000000000101100010011000011011001011110011010000101110000110000011001000001010000000000000000100011111001011110001111100101101001100010010110000100000001100010001001000000000000000010010000000111010001010010011011000110110001100010010011100110100000101000000000000000010001000100100000000100100001011100010111000101010001010100011111000011000000000000000000100011100001111110010100000101101001011100010100000110000001110100001011000000000000000000001010100111010001100100011011100110100001100000011011000110010000100000000000000000000000101000011011000101010001100010010111000101010001011010010111100010000000000000000000000001110001100110010100000110000001001110010011000100110001011010000101100000000000000000000100000101001001010100011001100110000001011110010101100101000000001100000000000000000000000100001011100100110001011110011111000100111001001010001010000000001000000000000000000000000000000010000100100111011010101100010000100000110000000010000000000000000;
//@(negedge clk) #(10/4) img=968'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001001100010110000101010000111100010001000101100001110000100000001000010001111000010010000110100001110100011100001010000100110000111110001010000010010000101010000011010000010100000000000000000000000000000011000100100010001100101001001001000000111000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
//@(negedge clk) #(10/4) img=968'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000001000000010000000100000001000000010000000100000001000000010000000010000000000010000000100010001001000010100000100000001000000010000000101100001001000001110000001100010000000100110001000110011001100111001010000010011111100111111001111100011110000101111010001100100110101010001010100000100111101000100001110010011100100101100001000110001111001000100010000000010101001000011010000000011101000101100000100110000010100000000000000000001111000001011000000000000110100100011000110000000001000000000000000000000000000000000000000000000000000000000000000010000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;

#100 $finish;
end
endmodule
