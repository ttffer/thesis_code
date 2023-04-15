`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2022 04:20:55 PM
// Design Name: 
// Module Name: error_insert
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module error_insert(
    input i_clk,
    input i_clk_en,
    input i_rst,
    
    input [31:0]    constant,
    input original_bit_line,
    output infected_bit_line

    );
    
    wire comparator_result;
    wire [31:0] wire_rnd_number;
    lfsr_32bit_w_CE_sync_active_high    Device_under_error_insert_lfsr   (.random_32bit_number(wire_rnd_number )
                                                    ,.clk(i_clk),.clk_en(i_clk_en),.rst(i_rst));
     reg [31:0] in_buffer;
     always@(posedge i_clk)
     begin
        in_buffer<=constant;
     end
    //Comparator                                                 
    assign comparator_result  =  (wire_rnd_number<in_buffer) ?     1'b1:1'b0;                                       
    //Error insertion
    xor(  infected_bit_line, comparator_result, original_bit_line);                                            
endmodule
