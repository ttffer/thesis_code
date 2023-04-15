`timescale 1ns/1ps
module tb;
reg clk,rst,valid;
reg [968-1:0] img;
wire [7:0] number;
top_tcb_121_16_10 top_DUT(
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
@(negedge clk) #(10/4) img=968'b00000000000000000000000000000000000000010001110000111111000001100000000000000000000000000000000000000000000000000000000000000010010001100100110100000100000000000000000000000000000000000000000000000000000000000001010101010101000110000000000000000000000000000000000000000000000000000000000000000100010001010011010000000010000000000000000000000000000000000000000000000000000000000001111001001000000001110000000000000000000000000000000000000000000000000000000000001000010011010010011100000000000000000000000000000000000000000000000000000000000000000010010001010011000110010001000100001100000001010000001100000000000000000000000000000000001001110101000101001101010010110100110101001000001010010000000000000000000000000000000000000010000001100000011000000110000011000001100000001101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
@(negedge clk) #(10/4) img=968'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000100000001111000011100000100100000100000000000000000000000000000110010011101001001011010100110101111101100100010111010100001100000100000000000000000000010100001100000010011000011000000101010001110101000101011000010000011100000000000000000000000000000000000000000000000000000000000011010101101100111000000000100000000000000000000000000000000000000000000000000000001000110111010110110000101100000000000000000000000000000000000000000000000000000000000111010110000100100100000000000000000000000000000000000000000000000000000000000000001101001111010001000000100000010100000001000000000000000000000000000000000000000000000010000101101000111001001111100101001100001010000000000000000000000000000000000000000000000010001101000101100001001011000111000000000100000000000000000000000000000000000000000000000000000011000001100000010000000001000000000000000000000000;
@(negedge clk) #(10/4) img=968'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010110001101100000001000000000000000000000000000000000000000000000000000000000000000100110101001111010000000100000000000000000000000000000000000000000000000000000000000001000100101000100010000000000000000000000000000000000000000000000000000000000000000000001011010011000000111000000000000000000000000000000000000000000000000000000000000000000010000001000011000001000000000000000000000000000000000000000000000000000000000000000000001111100010010100000000000000000000000000000000000000000000000000000000000000000000010101000010000011010000000000000000000000000000000000000000000000000000000000000000000101010011100000000010000000000000000000000000000000000000000000000000000000000000000000001111000100110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
@(negedge clk) #(10/4) img=968'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001101001001010010011100001001000000010000000000000000000000000000000000000010001000000101101001111000011101000101000100001011000000000000000000000000000000000001001101101000011011100100100000110110011010010001110100000000000000000000000000000010010001010110100000100011000000100000101101100010000111000000000000000000000000000000011001011010010010000000001100000001001000010101111100001110000000000000000000000000000000010011001101100000000111100011001001101010010110000000100000000000000000000000000000000000000001100100011101100111011110010111000000100001000000010000000000000000000000000000000000000000000010000100001001110010001010110000001100000000000000000000000000000000000000000000000000000000000100110010011100000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
@(negedge clk) #(10/4) img=968'b00000000000000000000000000000001000000110000000000000000000000000000000000000000000000000000000000000000000000000001010000101110000000010000000000000000000000000000000000000000000000000000000000000000001110000100001100000001000000000000000000000000000000000000000000000000000000000000000100111101010011000001100100100000000100100000001000000000000000000000000000000000000000110100011101010110001101000011010001001011000101100000000000000000000000000000000000000111010100100001111000000001000000100011110000100001000000000000000000000000000000000001101101001110000010000000000000001100010010100001000000000000000000000000000000000000001000110011000100000000000000010011000000101011000000010000000000000000000000000000000000010010000111010000000000000001001100110000101000000000000000000000000000000000000000000000000100000010000000000000000000000111000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
@(negedge clk) #(10/4) img=968'b00000000000000000000000000000000000000000000001000000010000000000000000000000000000000000000000000000000000000000000000000000000001000000010011000000000000000000000000000000000000000000000000000000000000000000000000100111010010000110000000000000000000000000000000000000000000000000000000000000000000001110101011000110000000000000000000000000000000000000000000000000000000000000000000000011001011001010001011000000000000000000000000000000000000000000000000000000000000000000011011001010110000001110000000000000000000000000000000000000000000000000000000000000110010110100011100000000001000000000000000000000000000000000000000000000000000000000001110001100111000110000000000000000000000000000000000000000000000000000000000000000000001010110100011100000100000000000000000000000000000000000000000000000000000000000000000000000101000001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
@(negedge clk) #(10/4) img=968'b00000000000000000000000000000000000000100000001100000000000000000000000000000000000000000000000000000000000000000000101100110010001110100000010100000000000000000000000000000000000000000000000000000000000011100011010001010101000001110000000000000000000000000000000000000000000000000000000000000001001101110011100000000001000000000000000000000000000000000000000000000000000000000000101101001110000110000000100000000100000000010000000000000000000000000000000000000001001101000110010101000101010100110100110000011010000000000000000000000000000000000000111101010001001010110001001100010110010011000011101100000000000000000000000000000010001110000010111000000010000000000000110101001110000110010000000000000000000000000000101100110010000001110000000000000001001011110011001000000011000000000000000000000000000000010000001000000000000000000000000100000111000000110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
@(negedge clk) #(10/4) img=968'b00000000000010000000110000000000000000000000000000000000000000000000000000000000000000000000000000010001001111010000011000000000000000000000000000000000000000000000000000000000000000000000001000111100001011000000000100000000000000000000000000000000000000000000000000000000000000000001010001010000000011110000001000001000000000010000000000000000000000000000000000000000000000110011110000111111001100100101100000011111000000010000000000000000000000000000000000000000000101100110100001001101001101110100011000000011000000000000000000000000000000000000000000001100011000100101010000111011001111110000001000000000000000000000000000000000000000000000000100100010011001010110111000011111000000000000000000000000000000000000000000000000000000000000000100100101001001000000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
@(negedge clk) #(10/4) img=968'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000010100000101010000001000000000000000000000000000000000000000000000000000000010001011000110011001100101000110110000000000000000000000000000000000000000000000000000010101010101011011110111001001001100000101110000011000000000000000000000000000000000000000100010110001011100011000010110010001101011010100000000100100000000000000000000000000000000000000010000010100000111000011000011001001100000000011010000000000000000000000000000000000000000000000010000000100000100001110110011011100000011000000000000000100001110000101000010000100110111001110100001010100101111000001110000000000000000000001100100111001100100011011000110001001000000000010010000001000000000000000000000000000000010000101100001100100010111000010110000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
@(negedge clk) #(10/4) img=968'b00000000000000000000000000000000000000000000001000110000000111100000000000000000000000000000000000000000000000000000000000000000000101110110011000101010000000000000000000000000000000000000000000000000000000000000100101010001010110000000100100000000000000000000000000000000000000000000000000000001001110100110111000100100000000000000000000000000000000000000000000000000000001000010101101101111010011100010000000010010000000100000000000000000000000000000001100111000011100000110101001010111010101000110001000100001000000000000000000000000000100000110011101010110001010000001110001000110010111100001100000000000000000000000000000000110001111110110000001011010010101100011110100010010000000010000000000000000000000000000000000000100000011110001101000001101000000110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
#100 $finish;
end
endmodule
