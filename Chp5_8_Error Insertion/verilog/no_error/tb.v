`timescale 1ns/1ps
module tb();
reg clk,rst,clk_en,ce,sload;
reg [31:0]  cons;
reg [15:0]  in_var_a,in_var_b;

wire [39:0] out,tcb_out,shift_out,shift_synthesis_error_out;

mac_top DUT_MAC_TOP     (
    .clk(clk),
    .rst(rst),
    .clk_en(clk_en),
    .constant_threshold(cons),
    .ce(ce),
    .sload(sload),
    .var_a(in_var_a),
    .var_b(in_var_b),
    .mac_out(out),
    .mac_tcb_out(tcb_out),
    .mac_tcb_shift_out(shift_out)
//    ,.mac_tcb_synthesis_shift_out(shift_synthesis_out)
);

//macc_tcb_shift_synthesis    DUT_mac_tcb_synthesis_shift     (
//    .clk(clk), 
//    .ce(ce),  
//    .sload(sload),   
//    .a(in_var_a),                
//    .accum_out(shift_synthesis_out));
macc_tcb_shift_synthesis_error      
    DUT_Error
    (
    .clk(clk), 
    .ce(ce),  
    .sload(sload),  
    .rst(rst), 
    .a(in_var_a),   
    .const_input(cons),  
    .accum_out(shift_synthesis_error_out)
    );
always #(5) begin
    clk=~clk;
end
initial begin
    clk     =   1'b0;
    rst     =   1'b1;
    clk_en  =   1'b1;
    ce      =   1'b1;
    sload   =   1'b1;
    cons    =   32'd2147483647;
    in_var_a=   16'b0;
    in_var_b=   16'b0;
    @(posedge clk) sload   =   1'b1;
    #30;
    @(posedge clk) 
    begin
        rst  =1'b0;sload   =   1'b0;
    end
    @(negedge clk)  #(10/4)
    begin 
        in_var_a=   16'd1;
        in_var_b=   16'd29;
    end
    #100;
    @(negedge clk)  #(10/4)
    begin 
        in_var_a=   16'd0;
        in_var_b=   16'd29;
    end

//    @(negedge clk)  #(10/4)
//    begin 
//        in_var_a=   16'd3;
//        in_var_b=   16'd29;
//    end

//    @(negedge clk)  #(10/4)
//    begin 
//        in_var_a=   16'd4;
//        in_var_b=   16'd29;
//    end
//    @(negedge clk)  #(10/4)
//    begin 
//        in_var_a=   16'd5;
//        in_var_b=   16'd29;
//    end

    #100 $finish;
end

endmodule