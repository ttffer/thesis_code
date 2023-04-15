`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2022 06:28:57 PM
// Design Name: 
// Module Name: error_insertion_stuck_at_fault
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


module error_insertion_stuck_at_fault

   
    #(parameter CODEWORD_LENGTH=29)
    (
    input i_clk,
    input i_clk_en,
    input i_rst,
    
    input   [31:0]                constant,
    input   [CODEWORD_LENGTH-1:0] original_codeword_line,
    output  [CODEWORD_LENGTH-1:0] infected_codeword_line
    ,input [4:0]random_idx
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
    //wire [4:0]                  random_idx ;
//    assign random_idx= wire_rnd_number % CODEWORD_LENGTH;
    //assign random_idx= 5'd28;
    //select random line
    
    //
    genvar i;
    generate
        for( i=0;i<CODEWORD_LENGTH;i=i+1)
            begin:error_insertion_block

                  //stuck at 1
                assign error_idx_line[i]=   (random_idx==i) ? 1'b1:1'b0;
                or (infected_codeword_line[i],original_codeword_line[i],error_idx_line[i]&&comparator_result);

                //stuck at 0
//                assign error_idx_line[i]=   (random_idx==i) ? 1'b0:1'b1;
//                and (infected_codeword_line[i],original_codeword_line[i],error_idx_line[i]&&comparator_result);

        end
    endgenerate
    
endmodule