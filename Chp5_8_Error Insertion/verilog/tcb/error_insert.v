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

//stuck at fault
module error_insert

    #(parameter CODEWORD_LENGTH=30)
    (
    input i_clk,
    input i_clk_en,
    input i_rst,
    
    input   [31:0]                constant,
    input   [CODEWORD_LENGTH-1:0] original_codeword_line,
    output  [CODEWORD_LENGTH-1:0] infected_codeword_line

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
    //xor(  infected_codeword_line, comparator_result, original_codeword_line); 
    wire [CODEWORD_LENGTH-1:0]  error_idx_line;
    wire [4:0]                  random_idx ;
//    assign random_idx= wire_rnd_number % CODEWORD_LENGTH;
    assign random_idx= 5'd28;
    //select random line
    
    //
    genvar i;
    generate
        for( i=0;i<CODEWORD_LENGTH;i=i+1)
            begin:error_insertion_block
                assign error_idx_line[i]=   (random_idx==i) ? 1'b1:1'b0;
                or (infected_codeword_line[i],original_codeword_line[i],error_idx_line[i]);
        end
    endgenerate
    
endmodule
