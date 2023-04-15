module lfsr_32bit_w_CE_sync_active_high
    (
        input clk,
        input clk_en,
        input rst,
        output  reg  [31:0]   random_32bit_number
    );
   reg [31:0] temp_reg = 32'h00000000;

   always @(posedge clk)
      if (rst)
         random_32bit_number <= 32'h00000000;
      else if (clk_en) begin
         random_32bit_number[31:1] <= random_32bit_number[30:0];
         random_32bit_number[0] <= ~^{random_32bit_number[31], random_32bit_number[21], random_32bit_number[1:0]};
      end
endmodule