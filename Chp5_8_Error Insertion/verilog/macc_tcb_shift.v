module macc_tcb_shift
# (
                parameter SIZEIN = 16,   // width of the inputs
                          SIZEOUT = 40   // width of output
               )
    (
        input clk,
        input ce,
        input sload,
        input signed [SIZEIN-1:0]   a,
        output signed [SIZEOUT-1:0] accum_out
    );



// Declare registers for intermediate values
reg signed [SIZEIN-1:0]   a_reg;
reg                       sload_reg;
reg signed [2*SIZEIN-1:0] mult_reg;
reg signed [SIZEOUT-1:0]  adder_out, old_result;

always @(sload_reg or adder_out)
begin
 if (sload_reg)
    old_result <= 0;
 else
  // 'sload' is now and opens the accumulation loop.
  // The accumulator takes the next multiplier output
  // in the same cycle.
    old_result <= adder_out;
end

always @(posedge clk)
 if (ce)
  begin
    a_reg     <= a;
    mult_reg  <= (0+(a_reg<<0)-(a_reg<<2)+(a_reg<<5));
    sload_reg <= sload;
    // Store accumulation result into a register
    adder_out <= old_result + mult_reg;
 end

// Output accumulation result
assign accum_out = adder_out;

endmodule // macc