module mac_top(
    input clk,
    input rst,
    input clk_en,
    input [31:0]    constant_threshold,
    
    input ce,
    input sload,
    input [15:0]    var_a,
    input [15:0]    var_b,

    output [39:0]   mac_out,
    output [39:0]   mac_tcb_out,
    output [39:0]   mac_tcb_shift_out
//    ,output [39:0]   mac_tcb_synthesis_shift_out
);



macc                                DUT_mac                         (.clk(clk), .ce(ce),  .sload(sload),   .a(var_a),   .b(var_b),                          .accum_out(mac_out));
macc_tcb                            DUT_mac_tcb                     (.clk(clk), .ce(ce),  .sload(sload),   .a(var_a),                                       .accum_out(mac_tcb_out));
macc_tcb_shift                      DUT_mac_tcb_shift               (.clk(clk), .ce(ce),  .sload(sload),   .a(var_a),                                       .accum_out(mac_tcb_shift_out));
//macc_tcb_shift_synthesis_error      DUT_Error                       (.clk(clk), .ce(ce),  .sload(sload),   .a(var_a),   .const_input(constant_threshold),  .accum_out(mac_tcb_synthesis_shift_out));



endmodule