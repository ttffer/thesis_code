// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Wed Dec  7 15:54:59 2022
// Host        : c1-System-Product-Name running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog /home/kuanyu/Desktop/reliability/verilog/macc_synthesis_result.v
// Design      : macc_tcb_shift
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* SIZEIN = "16" *) (* SIZEOUT = "40" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module macc_tcb_shift_synthesis_error
   (clk,
    ce,
    sload,
    a,
    accum_out
    
    ,const_input
    ,rst
    
    );
    input [31:0]    const_input;
  input clk;
  input ce,rst;
  input sload;
  input [15:0]a;
  output [39:0]accum_out;



  wire \<const0> ;
  wire \<const1> ;
  wire GND_2;
  wire VCC_2;
  wire [15:0]a;
  wire [15:0]a_IBUF;
  wire [15:0]a_reg;
  wire [39:0]accum_out;
  wire [39:0]accum_out_OBUF;
  wire \adder_out[0]_i_2_n_0 ;
  wire \adder_out[0]_i_3_n_0 ;
  wire \adder_out[0]_i_4_n_0 ;
  wire \adder_out[0]_i_5_n_0 ;
  wire \adder_out[0]_i_6_n_0 ;
  wire \adder_out[0]_i_7_n_0 ;
  wire \adder_out[0]_i_8_n_0 ;
  wire \adder_out[0]_i_9_n_0 ;
  wire \adder_out[16]_i_2_n_0 ;
  wire \adder_out[16]_i_3_n_0 ;
  wire \adder_out[16]_i_4_n_0 ;
  wire \adder_out[16]_i_5_n_0 ;
  wire \adder_out[16]_i_6_n_0 ;
  wire \adder_out[16]_i_7_n_0 ;
  wire \adder_out[16]_i_8_n_0 ;
  wire \adder_out[16]_i_9_n_0 ;
  wire \adder_out[24]_i_2_n_0 ;
  wire \adder_out[24]_i_3_n_0 ;
  wire \adder_out[24]_i_4_n_0 ;
  wire \adder_out[24]_i_5_n_0 ;
  wire \adder_out[24]_i_6_n_0 ;
  wire \adder_out[24]_i_7_n_0 ;
  wire \adder_out[24]_i_8_n_0 ;
  wire \adder_out[24]_i_9_n_0 ;
  wire \adder_out[32]_i_2_n_0 ;
  wire \adder_out[32]_i_3_n_0 ;
  wire \adder_out[32]_i_4_n_0 ;
  wire \adder_out[32]_i_5_n_0 ;
  wire \adder_out[32]_i_6_n_0 ;
  wire \adder_out[32]_i_7_n_0 ;
  wire \adder_out[32]_i_8_n_0 ;
  wire \adder_out[32]_i_9_n_0 ;
  wire \adder_out[8]_i_2_n_0 ;
  wire \adder_out[8]_i_3_n_0 ;
  wire \adder_out[8]_i_4_n_0 ;
  wire \adder_out[8]_i_5_n_0 ;
  wire \adder_out[8]_i_6_n_0 ;
  wire \adder_out[8]_i_7_n_0 ;
  wire \adder_out[8]_i_8_n_0 ;
  wire \adder_out[8]_i_9_n_0 ;
  wire \adder_out_reg[0]_i_1_n_0 ;
  wire \adder_out_reg[0]_i_1_n_1 ;
  wire \adder_out_reg[0]_i_1_n_10 ;
  wire \adder_out_reg[0]_i_1_n_11 ;
  wire \adder_out_reg[0]_i_1_n_12 ;
  wire \adder_out_reg[0]_i_1_n_13 ;
  wire \adder_out_reg[0]_i_1_n_14 ;
  wire \adder_out_reg[0]_i_1_n_15 ;
  wire \adder_out_reg[0]_i_1_n_2 ;
  wire \adder_out_reg[0]_i_1_n_3 ;
  wire \adder_out_reg[0]_i_1_n_4 ;
  wire \adder_out_reg[0]_i_1_n_5 ;
  wire \adder_out_reg[0]_i_1_n_6 ;
  wire \adder_out_reg[0]_i_1_n_7 ;
  wire \adder_out_reg[0]_i_1_n_8 ;
  wire \adder_out_reg[0]_i_1_n_9 ;
  wire \adder_out_reg[16]_i_1_n_0 ;
  wire \adder_out_reg[16]_i_1_n_1 ;
  wire \adder_out_reg[16]_i_1_n_10 ;
  wire \adder_out_reg[16]_i_1_n_11 ;
  wire \adder_out_reg[16]_i_1_n_12 ;
  wire \adder_out_reg[16]_i_1_n_13 ;
  wire \adder_out_reg[16]_i_1_n_14 ;
  wire \adder_out_reg[16]_i_1_n_15 ;
  wire \adder_out_reg[16]_i_1_n_2 ;
  wire \adder_out_reg[16]_i_1_n_3 ;
  wire \adder_out_reg[16]_i_1_n_4 ;
  wire \adder_out_reg[16]_i_1_n_5 ;
  wire \adder_out_reg[16]_i_1_n_6 ;
  wire \adder_out_reg[16]_i_1_n_7 ;
  wire \adder_out_reg[16]_i_1_n_8 ;
  wire \adder_out_reg[16]_i_1_n_9 ;
  wire \adder_out_reg[24]_i_1_n_0 ;
  wire \adder_out_reg[24]_i_1_n_1 ;
  wire \adder_out_reg[24]_i_1_n_10 ;
  wire \adder_out_reg[24]_i_1_n_11 ;
  wire \adder_out_reg[24]_i_1_n_12 ;
  wire \adder_out_reg[24]_i_1_n_13 ;
  wire \adder_out_reg[24]_i_1_n_14 ;
  wire \adder_out_reg[24]_i_1_n_15 ;
  wire \adder_out_reg[24]_i_1_n_2 ;
  wire \adder_out_reg[24]_i_1_n_3 ;
  wire \adder_out_reg[24]_i_1_n_4 ;
  wire \adder_out_reg[24]_i_1_n_5 ;
  wire \adder_out_reg[24]_i_1_n_6 ;
  wire \adder_out_reg[24]_i_1_n_7 ;
  wire \adder_out_reg[24]_i_1_n_8 ;
  wire \adder_out_reg[24]_i_1_n_9 ;
  wire \adder_out_reg[32]_i_1_n_1 ;
  wire \adder_out_reg[32]_i_1_n_10 ;
  wire \adder_out_reg[32]_i_1_n_11 ;
  wire \adder_out_reg[32]_i_1_n_12 ;
  wire \adder_out_reg[32]_i_1_n_13 ;
  wire \adder_out_reg[32]_i_1_n_14 ;
  wire \adder_out_reg[32]_i_1_n_15 ;
  wire \adder_out_reg[32]_i_1_n_2 ;
  wire \adder_out_reg[32]_i_1_n_3 ;
  wire \adder_out_reg[32]_i_1_n_4 ;
  wire \adder_out_reg[32]_i_1_n_5 ;
  wire \adder_out_reg[32]_i_1_n_6 ;
  wire \adder_out_reg[32]_i_1_n_7 ;
  wire \adder_out_reg[32]_i_1_n_8 ;
  wire \adder_out_reg[32]_i_1_n_9 ;
  wire \adder_out_reg[8]_i_1_n_0 ;
  wire \adder_out_reg[8]_i_1_n_1 ;
  wire \adder_out_reg[8]_i_1_n_10 ;
  wire \adder_out_reg[8]_i_1_n_11 ;
  wire \adder_out_reg[8]_i_1_n_12 ;
  wire \adder_out_reg[8]_i_1_n_13 ;
  wire \adder_out_reg[8]_i_1_n_14 ;
  wire \adder_out_reg[8]_i_1_n_15 ;
  wire \adder_out_reg[8]_i_1_n_2 ;
  wire \adder_out_reg[8]_i_1_n_3 ;
  wire \adder_out_reg[8]_i_1_n_4 ;
  wire \adder_out_reg[8]_i_1_n_5 ;
  wire \adder_out_reg[8]_i_1_n_6 ;
  wire \adder_out_reg[8]_i_1_n_7 ;
  wire \adder_out_reg[8]_i_1_n_8 ;
  wire \adder_out_reg[8]_i_1_n_9 ;
  wire ce;
  wire ce_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire load;
  wire [31:0]mult_reg;
  wire \mult_reg[17]_i_10_n_0 ;
  wire \mult_reg[17]_i_11_n_0 ;
  wire \mult_reg[17]_i_12_n_0 ;
  wire \mult_reg[17]_i_13_n_0 ;
  wire \mult_reg[17]_i_14_n_0 ;
  wire \mult_reg[17]_i_15_n_0 ;
  wire \mult_reg[17]_i_16_n_0 ;
  wire \mult_reg[17]_i_17_n_0 ;
  wire \mult_reg[17]_i_2_n_0 ;
  wire \mult_reg[17]_i_3_n_0 ;
  wire \mult_reg[17]_i_4_n_0 ;
  wire \mult_reg[17]_i_5_n_0 ;
  wire \mult_reg[17]_i_6_n_0 ;
  wire \mult_reg[17]_i_7_n_0 ;
  wire \mult_reg[17]_i_8_n_0 ;
  wire \mult_reg[17]_i_9_n_0 ;
  wire \mult_reg[31]_i_2_n_0 ;
  wire \mult_reg[31]_i_3_n_0 ;
  wire \mult_reg[31]_i_4_n_0 ;
  wire \mult_reg[31]_i_5_n_0 ;
  wire \mult_reg[9]_i_10_n_0 ;
  wire \mult_reg[9]_i_11_n_0 ;
  wire \mult_reg[9]_i_12_n_0 ;
  wire \mult_reg[9]_i_13_n_0 ;
  wire \mult_reg[9]_i_14_n_0 ;
  wire \mult_reg[9]_i_15_n_0 ;
  wire \mult_reg[9]_i_16_n_0 ;
  wire \mult_reg[9]_i_2_n_0 ;
  wire \mult_reg[9]_i_3_n_0 ;
  wire \mult_reg[9]_i_4_n_0 ;
  wire \mult_reg[9]_i_5_n_0 ;
  wire \mult_reg[9]_i_6_n_0 ;
  wire \mult_reg[9]_i_7_n_0 ;
  wire \mult_reg[9]_i_8_n_0 ;
  wire \mult_reg[9]_i_9_n_0 ;
  wire \mult_reg_reg[17]_i_1_n_0 ;
  wire \mult_reg_reg[17]_i_1_n_1 ;
  wire \mult_reg_reg[17]_i_1_n_2 ;
  wire \mult_reg_reg[17]_i_1_n_3 ;
  wire \mult_reg_reg[17]_i_1_n_4 ;
  wire \mult_reg_reg[17]_i_1_n_5 ;
  wire \mult_reg_reg[17]_i_1_n_6 ;
  wire \mult_reg_reg[17]_i_1_n_7 ;
  wire \mult_reg_reg[31]_i_1_n_5 ;
  wire \mult_reg_reg[31]_i_1_n_6 ;
  wire \mult_reg_reg[31]_i_1_n_7 ;
  wire \mult_reg_reg[9]_i_1_n_0 ;
  wire \mult_reg_reg[9]_i_1_n_1 ;
  wire \mult_reg_reg[9]_i_1_n_2 ;
  wire \mult_reg_reg[9]_i_1_n_3 ;
  wire \mult_reg_reg[9]_i_1_n_4 ;
  wire \mult_reg_reg[9]_i_1_n_5 ;
  wire \mult_reg_reg[9]_i_1_n_6 ;
  wire \mult_reg_reg[9]_i_1_n_7 ;
  wire [31:2]p_0_in;
  wire sload;
  wire sload_IBUF;

//
wire infected_bit_line_DUT;
error_insert 
    EI_DUT(
    .i_clk(clk),
    .i_clk_en(ce),
    .i_rst(rst),
    .constant(const_input),
    .original_bit_line(mult_reg[16]),
    .infected_bit_line(infected_bit_line_DUT)
    );

//


  GND GND
       (.G(\<const0> ));
  GND GND_1
       (.G(GND_2));
  VCC VCC
       (.P(\<const1> ));
  VCC VCC_1
       (.P(VCC_2));
  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[10]_inst 
       (.I(a[10]),
        .O(a_IBUF[10]));
  IBUF \a_IBUF[11]_inst 
       (.I(a[11]),
        .O(a_IBUF[11]));
  IBUF \a_IBUF[12]_inst 
       (.I(a[12]),
        .O(a_IBUF[12]));
  IBUF \a_IBUF[13]_inst 
       (.I(a[13]),
        .O(a_IBUF[13]));
  IBUF \a_IBUF[14]_inst 
       (.I(a[14]),
        .O(a_IBUF[14]));
  IBUF \a_IBUF[15]_inst 
       (.I(a[15]),
        .O(a_IBUF[15]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF \a_IBUF[4]_inst 
       (.I(a[4]),
        .O(a_IBUF[4]));
  IBUF \a_IBUF[5]_inst 
       (.I(a[5]),
        .O(a_IBUF[5]));
  IBUF \a_IBUF[6]_inst 
       (.I(a[6]),
        .O(a_IBUF[6]));
  IBUF \a_IBUF[7]_inst 
       (.I(a[7]),
        .O(a_IBUF[7]));
  IBUF \a_IBUF[8]_inst 
       (.I(a[8]),
        .O(a_IBUF[8]));
  IBUF \a_IBUF[9]_inst 
       (.I(a[9]),
        .O(a_IBUF[9]));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(a_IBUF[0]),
        .Q(a_reg[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(a_IBUF[10]),
        .Q(a_reg[10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(a_IBUF[11]),
        .Q(a_reg[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(a_IBUF[12]),
        .Q(a_reg[12]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(a_IBUF[13]),
        .Q(a_reg[13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(a_IBUF[14]),
        .Q(a_reg[14]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(a_IBUF[15]),
        .Q(a_reg[15]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(a_IBUF[1]),
        .Q(a_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(a_IBUF[2]),
        .Q(a_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(a_IBUF[3]),
        .Q(a_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(a_IBUF[4]),
        .Q(a_reg[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(a_IBUF[5]),
        .Q(a_reg[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(a_IBUF[6]),
        .Q(a_reg[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(a_IBUF[7]),
        .Q(a_reg[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(a_IBUF[8]),
        .Q(a_reg[8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \a_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(a_IBUF[9]),
        .Q(a_reg[9]),
        .R(\<const0> ));
  OBUF \accum_out_OBUF[0]_inst 
       (.I(accum_out_OBUF[0]),
        .O(accum_out[0]));
  OBUF \accum_out_OBUF[10]_inst 
       (.I(accum_out_OBUF[10]),
        .O(accum_out[10]));
  OBUF \accum_out_OBUF[11]_inst 
       (.I(accum_out_OBUF[11]),
        .O(accum_out[11]));
  OBUF \accum_out_OBUF[12]_inst 
       (.I(accum_out_OBUF[12]),
        .O(accum_out[12]));
  OBUF \accum_out_OBUF[13]_inst 
       (.I(accum_out_OBUF[13]),
        .O(accum_out[13]));
  OBUF \accum_out_OBUF[14]_inst 
       (.I(accum_out_OBUF[14]),
        .O(accum_out[14]));
  OBUF \accum_out_OBUF[15]_inst 
       (.I(accum_out_OBUF[15]),
        .O(accum_out[15]));
  OBUF \accum_out_OBUF[16]_inst 
       (.I(accum_out_OBUF[16]),
        .O(accum_out[16]));
  OBUF \accum_out_OBUF[17]_inst 
       (.I(accum_out_OBUF[17]),
        .O(accum_out[17]));
  OBUF \accum_out_OBUF[18]_inst 
       (.I(accum_out_OBUF[18]),
        .O(accum_out[18]));
  OBUF \accum_out_OBUF[19]_inst 
       (.I(accum_out_OBUF[19]),
        .O(accum_out[19]));
  OBUF \accum_out_OBUF[1]_inst 
       (.I(accum_out_OBUF[1]),
        .O(accum_out[1]));
  OBUF \accum_out_OBUF[20]_inst 
       (.I(accum_out_OBUF[20]),
        .O(accum_out[20]));
  OBUF \accum_out_OBUF[21]_inst 
       (.I(accum_out_OBUF[21]),
        .O(accum_out[21]));
  OBUF \accum_out_OBUF[22]_inst 
       (.I(accum_out_OBUF[22]),
        .O(accum_out[22]));
  OBUF \accum_out_OBUF[23]_inst 
       (.I(accum_out_OBUF[23]),
        .O(accum_out[23]));
  OBUF \accum_out_OBUF[24]_inst 
       (.I(accum_out_OBUF[24]),
        .O(accum_out[24]));
  OBUF \accum_out_OBUF[25]_inst 
       (.I(accum_out_OBUF[25]),
        .O(accum_out[25]));
  OBUF \accum_out_OBUF[26]_inst 
       (.I(accum_out_OBUF[26]),
        .O(accum_out[26]));
  OBUF \accum_out_OBUF[27]_inst 
       (.I(accum_out_OBUF[27]),
        .O(accum_out[27]));
  OBUF \accum_out_OBUF[28]_inst 
       (.I(accum_out_OBUF[28]),
        .O(accum_out[28]));
  OBUF \accum_out_OBUF[29]_inst 
       (.I(accum_out_OBUF[29]),
        .O(accum_out[29]));
  OBUF \accum_out_OBUF[2]_inst 
       (.I(accum_out_OBUF[2]),
        .O(accum_out[2]));
  OBUF \accum_out_OBUF[30]_inst 
       (.I(accum_out_OBUF[30]),
        .O(accum_out[30]));
  OBUF \accum_out_OBUF[31]_inst 
       (.I(accum_out_OBUF[31]),
        .O(accum_out[31]));
  OBUF \accum_out_OBUF[32]_inst 
       (.I(accum_out_OBUF[32]),
        .O(accum_out[32]));
  OBUF \accum_out_OBUF[33]_inst 
       (.I(accum_out_OBUF[33]),
        .O(accum_out[33]));
  OBUF \accum_out_OBUF[34]_inst 
       (.I(accum_out_OBUF[34]),
        .O(accum_out[34]));
  OBUF \accum_out_OBUF[35]_inst 
       (.I(accum_out_OBUF[35]),
        .O(accum_out[35]));
  OBUF \accum_out_OBUF[36]_inst 
       (.I(accum_out_OBUF[36]),
        .O(accum_out[36]));
  OBUF \accum_out_OBUF[37]_inst 
       (.I(accum_out_OBUF[37]),
        .O(accum_out[37]));
  OBUF \accum_out_OBUF[38]_inst 
       (.I(accum_out_OBUF[38]),
        .O(accum_out[38]));
  OBUF \accum_out_OBUF[39]_inst 
       (.I(accum_out_OBUF[39]),
        .O(accum_out[39]));
  OBUF \accum_out_OBUF[3]_inst 
       (.I(accum_out_OBUF[3]),
        .O(accum_out[3]));
  OBUF \accum_out_OBUF[4]_inst 
       (.I(accum_out_OBUF[4]),
        .O(accum_out[4]));
  OBUF \accum_out_OBUF[5]_inst 
       (.I(accum_out_OBUF[5]),
        .O(accum_out[5]));
  OBUF \accum_out_OBUF[6]_inst 
       (.I(accum_out_OBUF[6]),
        .O(accum_out[6]));
  OBUF \accum_out_OBUF[7]_inst 
       (.I(accum_out_OBUF[7]),
        .O(accum_out[7]));
  OBUF \accum_out_OBUF[8]_inst 
       (.I(accum_out_OBUF[8]),
        .O(accum_out[8]));
  OBUF \accum_out_OBUF[9]_inst 
       (.I(accum_out_OBUF[9]),
        .O(accum_out[9]));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[0]_i_2 
       (.I0(mult_reg[7]),
        .I1(load),
        .I2(accum_out_OBUF[7]),
        .O(\adder_out[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[0]_i_3 
       (.I0(mult_reg[6]),
        .I1(load),
        .I2(accum_out_OBUF[6]),
        .O(\adder_out[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[0]_i_4 
       (.I0(mult_reg[5]),
        .I1(load),
        .I2(accum_out_OBUF[5]),
        .O(\adder_out[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[0]_i_5 
       (.I0(mult_reg[4]),
        .I1(load),
        .I2(accum_out_OBUF[4]),
        .O(\adder_out[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[0]_i_6 
       (.I0(mult_reg[3]),
        .I1(load),
        .I2(accum_out_OBUF[3]),
        .O(\adder_out[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[0]_i_7 
       (.I0(mult_reg[2]),
        .I1(load),
        .I2(accum_out_OBUF[2]),
        .O(\adder_out[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[0]_i_8 
       (.I0(mult_reg[1]),
        .I1(load),
        .I2(accum_out_OBUF[1]),
        .O(\adder_out[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[0]_i_9 
       (.I0(mult_reg[0]),
        .I1(load),
        .I2(accum_out_OBUF[0]),
        .O(\adder_out[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[16]_i_2 
       (.I0(mult_reg[31]),
        .I1(load),
        .I2(accum_out_OBUF[23]),
        .O(\adder_out[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[16]_i_3 
       (.I0(mult_reg[31]),
        .I1(load),
        .I2(accum_out_OBUF[22]),
        .O(\adder_out[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[16]_i_4 
       (.I0(mult_reg[31]),
        .I1(load),
        .I2(accum_out_OBUF[21]),
        .O(\adder_out[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[16]_i_5 
       (.I0(mult_reg[20]),
        .I1(load),
        .I2(accum_out_OBUF[20]),
        .O(\adder_out[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[16]_i_6 
       (.I0(mult_reg[19]),
        .I1(load),
        .I2(accum_out_OBUF[19]),
        .O(\adder_out[16]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[16]_i_7 
       (.I0(mult_reg[18]),
        .I1(load),
        .I2(accum_out_OBUF[18]),
        .O(\adder_out[16]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[16]_i_8 
       (.I0(mult_reg[17]),
        .I1(load),
        .I2(accum_out_OBUF[17]),
        .O(\adder_out[16]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[16]_i_9 
//    (.I0(mult_reg[16]),
        (.I0(infected_bit_line_DUT),
        .I1(load),
        .I2(accum_out_OBUF[16]),
        .O(\adder_out[16]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[24]_i_2 
       (.I0(mult_reg[31]),
        .I1(load),
        .I2(accum_out_OBUF[31]),
        .O(\adder_out[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[24]_i_3 
       (.I0(mult_reg[31]),
        .I1(load),
        .I2(accum_out_OBUF[30]),
        .O(\adder_out[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[24]_i_4 
       (.I0(mult_reg[31]),
        .I1(load),
        .I2(accum_out_OBUF[29]),
        .O(\adder_out[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[24]_i_5 
       (.I0(mult_reg[31]),
        .I1(load),
        .I2(accum_out_OBUF[28]),
        .O(\adder_out[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[24]_i_6 
       (.I0(mult_reg[31]),
        .I1(load),
        .I2(accum_out_OBUF[27]),
        .O(\adder_out[24]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[24]_i_7 
       (.I0(mult_reg[31]),
        .I1(load),
        .I2(accum_out_OBUF[26]),
        .O(\adder_out[24]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[24]_i_8 
       (.I0(mult_reg[31]),
        .I1(load),
        .I2(accum_out_OBUF[25]),
        .O(\adder_out[24]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[24]_i_9 
       (.I0(mult_reg[31]),
        .I1(load),
        .I2(accum_out_OBUF[24]),
        .O(\adder_out[24]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[32]_i_2 
       (.I0(mult_reg[31]),
        .I1(load),
        .I2(accum_out_OBUF[39]),
        .O(\adder_out[32]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[32]_i_3 
       (.I0(mult_reg[31]),
        .I1(load),
        .I2(accum_out_OBUF[38]),
        .O(\adder_out[32]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[32]_i_4 
       (.I0(mult_reg[31]),
        .I1(load),
        .I2(accum_out_OBUF[37]),
        .O(\adder_out[32]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[32]_i_5 
       (.I0(mult_reg[31]),
        .I1(load),
        .I2(accum_out_OBUF[36]),
        .O(\adder_out[32]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[32]_i_6 
       (.I0(mult_reg[31]),
        .I1(load),
        .I2(accum_out_OBUF[35]),
        .O(\adder_out[32]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[32]_i_7 
       (.I0(mult_reg[31]),
        .I1(load),
        .I2(accum_out_OBUF[34]),
        .O(\adder_out[32]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[32]_i_8 
       (.I0(mult_reg[31]),
        .I1(load),
        .I2(accum_out_OBUF[33]),
        .O(\adder_out[32]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[32]_i_9 
       (.I0(mult_reg[31]),
        .I1(load),
        .I2(accum_out_OBUF[32]),
        .O(\adder_out[32]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[8]_i_2 
       (.I0(mult_reg[15]),
        .I1(load),
        .I2(accum_out_OBUF[15]),
        .O(\adder_out[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[8]_i_3 
       (.I0(mult_reg[14]),
        .I1(load),
        .I2(accum_out_OBUF[14]),
        .O(\adder_out[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[8]_i_4 
       (.I0(mult_reg[13]),
        .I1(load),
        .I2(accum_out_OBUF[13]),
        .O(\adder_out[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[8]_i_5 
       (.I0(mult_reg[12]),
        .I1(load),
        .I2(accum_out_OBUF[12]),
        .O(\adder_out[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[8]_i_6 
       (.I0(mult_reg[11]),
        .I1(load),
        .I2(accum_out_OBUF[11]),
        .O(\adder_out[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[8]_i_7 
       (.I0(mult_reg[10]),
        .I1(load),
        .I2(accum_out_OBUF[10]),
        .O(\adder_out[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[8]_i_8 
       (.I0(mult_reg[9]),
        .I1(load),
        .I2(accum_out_OBUF[9]),
        .O(\adder_out[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \adder_out[8]_i_9 
       (.I0(mult_reg[8]),
        .I1(load),
        .I2(accum_out_OBUF[8]),
        .O(\adder_out[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[0]_i_1_n_15 ),
        .Q(accum_out_OBUF[0]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \adder_out_reg[0]_i_1 
       (.CI(\<const0> ),
        .CI_TOP(GND_2),
        .CO({\adder_out_reg[0]_i_1_n_0 ,\adder_out_reg[0]_i_1_n_1 ,\adder_out_reg[0]_i_1_n_2 ,\adder_out_reg[0]_i_1_n_3 ,\adder_out_reg[0]_i_1_n_4 ,\adder_out_reg[0]_i_1_n_5 ,\adder_out_reg[0]_i_1_n_6 ,\adder_out_reg[0]_i_1_n_7 }),
        .DI(mult_reg[7:0]),
        .O({\adder_out_reg[0]_i_1_n_8 ,\adder_out_reg[0]_i_1_n_9 ,\adder_out_reg[0]_i_1_n_10 ,\adder_out_reg[0]_i_1_n_11 ,\adder_out_reg[0]_i_1_n_12 ,\adder_out_reg[0]_i_1_n_13 ,\adder_out_reg[0]_i_1_n_14 ,\adder_out_reg[0]_i_1_n_15 }),
        .S({\adder_out[0]_i_2_n_0 ,\adder_out[0]_i_3_n_0 ,\adder_out[0]_i_4_n_0 ,\adder_out[0]_i_5_n_0 ,\adder_out[0]_i_6_n_0 ,\adder_out[0]_i_7_n_0 ,\adder_out[0]_i_8_n_0 ,\adder_out[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[8]_i_1_n_13 ),
        .Q(accum_out_OBUF[10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[8]_i_1_n_12 ),
        .Q(accum_out_OBUF[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[8]_i_1_n_11 ),
        .Q(accum_out_OBUF[12]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[8]_i_1_n_10 ),
        .Q(accum_out_OBUF[13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[8]_i_1_n_9 ),
        .Q(accum_out_OBUF[14]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[8]_i_1_n_8 ),
        .Q(accum_out_OBUF[15]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[16]_i_1_n_15 ),
        .Q(accum_out_OBUF[16]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \adder_out_reg[16]_i_1 
       (.CI(\adder_out_reg[8]_i_1_n_0 ),
        .CI_TOP(GND_2),
        .CO({\adder_out_reg[16]_i_1_n_0 ,\adder_out_reg[16]_i_1_n_1 ,\adder_out_reg[16]_i_1_n_2 ,\adder_out_reg[16]_i_1_n_3 ,\adder_out_reg[16]_i_1_n_4 ,\adder_out_reg[16]_i_1_n_5 ,\adder_out_reg[16]_i_1_n_6 ,\adder_out_reg[16]_i_1_n_7 }),
        .DI({mult_reg[31],mult_reg[31],mult_reg[31],mult_reg[20:16]}),
        .O({\adder_out_reg[16]_i_1_n_8 ,\adder_out_reg[16]_i_1_n_9 ,\adder_out_reg[16]_i_1_n_10 ,\adder_out_reg[16]_i_1_n_11 ,\adder_out_reg[16]_i_1_n_12 ,\adder_out_reg[16]_i_1_n_13 ,\adder_out_reg[16]_i_1_n_14 ,\adder_out_reg[16]_i_1_n_15 }),
        .S({\adder_out[16]_i_2_n_0 ,\adder_out[16]_i_3_n_0 ,\adder_out[16]_i_4_n_0 ,\adder_out[16]_i_5_n_0 ,\adder_out[16]_i_6_n_0 ,\adder_out[16]_i_7_n_0 ,\adder_out[16]_i_8_n_0 ,\adder_out[16]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[16]_i_1_n_14 ),
        .Q(accum_out_OBUF[17]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[16]_i_1_n_13 ),
        .Q(accum_out_OBUF[18]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[16]_i_1_n_12 ),
        .Q(accum_out_OBUF[19]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[0]_i_1_n_14 ),
        .Q(accum_out_OBUF[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[16]_i_1_n_11 ),
        .Q(accum_out_OBUF[20]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[16]_i_1_n_10 ),
        .Q(accum_out_OBUF[21]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[16]_i_1_n_9 ),
        .Q(accum_out_OBUF[22]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[16]_i_1_n_8 ),
        .Q(accum_out_OBUF[23]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[24]_i_1_n_15 ),
        .Q(accum_out_OBUF[24]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \adder_out_reg[24]_i_1 
       (.CI(\adder_out_reg[16]_i_1_n_0 ),
        .CI_TOP(GND_2),
        .CO({\adder_out_reg[24]_i_1_n_0 ,\adder_out_reg[24]_i_1_n_1 ,\adder_out_reg[24]_i_1_n_2 ,\adder_out_reg[24]_i_1_n_3 ,\adder_out_reg[24]_i_1_n_4 ,\adder_out_reg[24]_i_1_n_5 ,\adder_out_reg[24]_i_1_n_6 ,\adder_out_reg[24]_i_1_n_7 }),
        .DI({mult_reg[31],mult_reg[31],mult_reg[31],mult_reg[31],mult_reg[31],mult_reg[31],mult_reg[31],mult_reg[31]}),
        .O({\adder_out_reg[24]_i_1_n_8 ,\adder_out_reg[24]_i_1_n_9 ,\adder_out_reg[24]_i_1_n_10 ,\adder_out_reg[24]_i_1_n_11 ,\adder_out_reg[24]_i_1_n_12 ,\adder_out_reg[24]_i_1_n_13 ,\adder_out_reg[24]_i_1_n_14 ,\adder_out_reg[24]_i_1_n_15 }),
        .S({\adder_out[24]_i_2_n_0 ,\adder_out[24]_i_3_n_0 ,\adder_out[24]_i_4_n_0 ,\adder_out[24]_i_5_n_0 ,\adder_out[24]_i_6_n_0 ,\adder_out[24]_i_7_n_0 ,\adder_out[24]_i_8_n_0 ,\adder_out[24]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[24]_i_1_n_14 ),
        .Q(accum_out_OBUF[25]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[24]_i_1_n_13 ),
        .Q(accum_out_OBUF[26]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[24]_i_1_n_12 ),
        .Q(accum_out_OBUF[27]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[24]_i_1_n_11 ),
        .Q(accum_out_OBUF[28]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[24]_i_1_n_10 ),
        .Q(accum_out_OBUF[29]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[0]_i_1_n_13 ),
        .Q(accum_out_OBUF[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[24]_i_1_n_9 ),
        .Q(accum_out_OBUF[30]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[24]_i_1_n_8 ),
        .Q(accum_out_OBUF[31]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[32]_i_1_n_15 ),
        .Q(accum_out_OBUF[32]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \adder_out_reg[32]_i_1 
       (.CI(\adder_out_reg[24]_i_1_n_0 ),
        .CI_TOP(GND_2),
        .CO({\adder_out_reg[32]_i_1_n_1 ,\adder_out_reg[32]_i_1_n_2 ,\adder_out_reg[32]_i_1_n_3 ,\adder_out_reg[32]_i_1_n_4 ,\adder_out_reg[32]_i_1_n_5 ,\adder_out_reg[32]_i_1_n_6 ,\adder_out_reg[32]_i_1_n_7 }),
        .DI({\<const0> ,mult_reg[31],mult_reg[31],mult_reg[31],mult_reg[31],mult_reg[31],mult_reg[31],mult_reg[31]}),
        .O({\adder_out_reg[32]_i_1_n_8 ,\adder_out_reg[32]_i_1_n_9 ,\adder_out_reg[32]_i_1_n_10 ,\adder_out_reg[32]_i_1_n_11 ,\adder_out_reg[32]_i_1_n_12 ,\adder_out_reg[32]_i_1_n_13 ,\adder_out_reg[32]_i_1_n_14 ,\adder_out_reg[32]_i_1_n_15 }),
        .S({\adder_out[32]_i_2_n_0 ,\adder_out[32]_i_3_n_0 ,\adder_out[32]_i_4_n_0 ,\adder_out[32]_i_5_n_0 ,\adder_out[32]_i_6_n_0 ,\adder_out[32]_i_7_n_0 ,\adder_out[32]_i_8_n_0 ,\adder_out[32]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[32]_i_1_n_14 ),
        .Q(accum_out_OBUF[33]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[32]_i_1_n_13 ),
        .Q(accum_out_OBUF[34]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[32]_i_1_n_12 ),
        .Q(accum_out_OBUF[35]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[32]_i_1_n_11 ),
        .Q(accum_out_OBUF[36]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[32]_i_1_n_10 ),
        .Q(accum_out_OBUF[37]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[32]_i_1_n_9 ),
        .Q(accum_out_OBUF[38]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[32]_i_1_n_8 ),
        .Q(accum_out_OBUF[39]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[0]_i_1_n_12 ),
        .Q(accum_out_OBUF[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[0]_i_1_n_11 ),
        .Q(accum_out_OBUF[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[0]_i_1_n_10 ),
        .Q(accum_out_OBUF[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[0]_i_1_n_9 ),
        .Q(accum_out_OBUF[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[0]_i_1_n_8 ),
        .Q(accum_out_OBUF[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[8]_i_1_n_15 ),
        .Q(accum_out_OBUF[8]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \adder_out_reg[8]_i_1 
       (.CI(\adder_out_reg[0]_i_1_n_0 ),
        .CI_TOP(GND_2),
        .CO({\adder_out_reg[8]_i_1_n_0 ,\adder_out_reg[8]_i_1_n_1 ,\adder_out_reg[8]_i_1_n_2 ,\adder_out_reg[8]_i_1_n_3 ,\adder_out_reg[8]_i_1_n_4 ,\adder_out_reg[8]_i_1_n_5 ,\adder_out_reg[8]_i_1_n_6 ,\adder_out_reg[8]_i_1_n_7 }),
        .DI(mult_reg[15:8]),
        .O({\adder_out_reg[8]_i_1_n_8 ,\adder_out_reg[8]_i_1_n_9 ,\adder_out_reg[8]_i_1_n_10 ,\adder_out_reg[8]_i_1_n_11 ,\adder_out_reg[8]_i_1_n_12 ,\adder_out_reg[8]_i_1_n_13 ,\adder_out_reg[8]_i_1_n_14 ,\adder_out_reg[8]_i_1_n_15 }),
        .S({\adder_out[8]_i_2_n_0 ,\adder_out[8]_i_3_n_0 ,\adder_out[8]_i_4_n_0 ,\adder_out[8]_i_5_n_0 ,\adder_out[8]_i_6_n_0 ,\adder_out[8]_i_7_n_0 ,\adder_out[8]_i_8_n_0 ,\adder_out[8]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \adder_out_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(\adder_out_reg[8]_i_1_n_14 ),
        .Q(accum_out_OBUF[9]),
        .R(\<const0> ));
  IBUF ce_IBUF_inst
       (.I(ce),
        .O(ce_IBUF));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    clk_IBUF_BUFG_inst
       (.CE(VCC_2),
        .I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT6 #(
    .INIT(64'hF00FB44B4BB4F00F)) 
    \mult_reg[17]_i_10 
       (.I0(a_reg[10]),
        .I1(a_reg[13]),
        .I2(a_reg[12]),
        .I3(a_reg[15]),
        .I4(a_reg[11]),
        .I5(a_reg[14]),
        .O(\mult_reg[17]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hC36996C3)) 
    \mult_reg[17]_i_11 
       (.I0(a_reg[15]),
        .I1(a_reg[11]),
        .I2(a_reg[14]),
        .I3(a_reg[10]),
        .I4(a_reg[13]),
        .O(\mult_reg[17]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9669696996969669)) 
    \mult_reg[17]_i_12 
       (.I0(a_reg[15]),
        .I1(a_reg[10]),
        .I2(a_reg[13]),
        .I3(a_reg[14]),
        .I4(a_reg[9]),
        .I5(a_reg[12]),
        .O(\mult_reg[17]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \mult_reg[17]_i_13 
       (.I0(\mult_reg[17]_i_5_n_0 ),
        .I1(a_reg[9]),
        .I2(a_reg[12]),
        .I3(a_reg[14]),
        .O(\mult_reg[17]_i_13_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \mult_reg[17]_i_14 
       (.I0(a_reg[11]),
        .I1(a_reg[8]),
        .I2(a_reg[13]),
        .I3(\mult_reg[17]_i_6_n_0 ),
        .O(\mult_reg[17]_i_14_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \mult_reg[17]_i_15 
       (.I0(a_reg[10]),
        .I1(a_reg[7]),
        .I2(a_reg[12]),
        .I3(\mult_reg[17]_i_7_n_0 ),
        .O(\mult_reg[17]_i_15_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \mult_reg[17]_i_16 
       (.I0(a_reg[9]),
        .I1(a_reg[6]),
        .I2(a_reg[11]),
        .I3(\mult_reg[17]_i_8_n_0 ),
        .O(\mult_reg[17]_i_16_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \mult_reg[17]_i_17 
       (.I0(a_reg[8]),
        .I1(a_reg[5]),
        .I2(a_reg[10]),
        .I3(\mult_reg[17]_i_9_n_0 ),
        .O(\mult_reg[17]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0DD0)) 
    \mult_reg[17]_i_2 
       (.I0(a_reg[13]),
        .I1(a_reg[10]),
        .I2(a_reg[14]),
        .I3(a_reg[11]),
        .O(\mult_reg[17]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \mult_reg[17]_i_3 
       (.I0(a_reg[13]),
        .I1(a_reg[10]),
        .I2(a_reg[15]),
        .O(\mult_reg[17]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \mult_reg[17]_i_4 
       (.I0(a_reg[15]),
        .I1(a_reg[10]),
        .I2(a_reg[13]),
        .O(\mult_reg[17]_i_4_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \mult_reg[17]_i_5 
       (.I0(a_reg[11]),
        .I1(a_reg[8]),
        .I2(a_reg[13]),
        .O(\mult_reg[17]_i_5_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \mult_reg[17]_i_6 
       (.I0(a_reg[10]),
        .I1(a_reg[7]),
        .I2(a_reg[12]),
        .O(\mult_reg[17]_i_6_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \mult_reg[17]_i_7 
       (.I0(a_reg[9]),
        .I1(a_reg[6]),
        .I2(a_reg[11]),
        .O(\mult_reg[17]_i_7_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \mult_reg[17]_i_8 
       (.I0(a_reg[8]),
        .I1(a_reg[5]),
        .I2(a_reg[10]),
        .O(\mult_reg[17]_i_8_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \mult_reg[17]_i_9 
       (.I0(a_reg[7]),
        .I1(a_reg[4]),
        .I2(a_reg[9]),
        .O(\mult_reg[17]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hEE8E)) 
    \mult_reg[31]_i_2 
       (.I0(a_reg[15]),
        .I1(a_reg[12]),
        .I2(a_reg[14]),
        .I3(a_reg[11]),
        .O(\mult_reg[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mult_reg[31]_i_3 
       (.I0(a_reg[14]),
        .I1(a_reg[15]),
        .O(\mult_reg[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mult_reg[31]_i_4 
       (.I0(a_reg[13]),
        .I1(a_reg[14]),
        .O(\mult_reg[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFBB0044F)) 
    \mult_reg[31]_i_5 
       (.I0(a_reg[11]),
        .I1(a_reg[14]),
        .I2(a_reg[12]),
        .I3(a_reg[15]),
        .I4(a_reg[13]),
        .O(\mult_reg[31]_i_5_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \mult_reg[9]_i_10 
       (.I0(a_reg[6]),
        .I1(a_reg[3]),
        .I2(a_reg[8]),
        .I3(\mult_reg[9]_i_3_n_0 ),
        .O(\mult_reg[9]_i_10_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \mult_reg[9]_i_11 
       (.I0(a_reg[5]),
        .I1(a_reg[2]),
        .I2(a_reg[7]),
        .I3(\mult_reg[9]_i_4_n_0 ),
        .O(\mult_reg[9]_i_11_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \mult_reg[9]_i_12 
       (.I0(a_reg[4]),
        .I1(a_reg[1]),
        .I2(a_reg[6]),
        .I3(\mult_reg[9]_i_5_n_0 ),
        .O(\mult_reg[9]_i_12_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69966969)) 
    \mult_reg[9]_i_13 
       (.I0(a_reg[3]),
        .I1(a_reg[0]),
        .I2(a_reg[5]),
        .I3(a_reg[2]),
        .I4(a_reg[4]),
        .O(\mult_reg[9]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \mult_reg[9]_i_14 
       (.I0(a_reg[1]),
        .I1(a_reg[3]),
        .I2(a_reg[2]),
        .I3(a_reg[4]),
        .O(\mult_reg[9]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \mult_reg[9]_i_15 
       (.I0(a_reg[0]),
        .I1(a_reg[2]),
        .I2(a_reg[1]),
        .I3(a_reg[3]),
        .O(\mult_reg[9]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mult_reg[9]_i_16 
       (.I0(a_reg[2]),
        .I1(a_reg[0]),
        .O(\mult_reg[9]_i_16_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \mult_reg[9]_i_2 
       (.I0(a_reg[6]),
        .I1(a_reg[3]),
        .I2(a_reg[8]),
        .O(\mult_reg[9]_i_2_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \mult_reg[9]_i_3 
       (.I0(a_reg[5]),
        .I1(a_reg[2]),
        .I2(a_reg[7]),
        .O(\mult_reg[9]_i_3_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \mult_reg[9]_i_4 
       (.I0(a_reg[4]),
        .I1(a_reg[1]),
        .I2(a_reg[6]),
        .O(\mult_reg[9]_i_4_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \mult_reg[9]_i_5 
       (.I0(a_reg[3]),
        .I1(a_reg[0]),
        .I2(a_reg[5]),
        .O(\mult_reg[9]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \mult_reg[9]_i_6 
       (.I0(a_reg[5]),
        .I1(a_reg[3]),
        .I2(a_reg[0]),
        .O(\mult_reg[9]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mult_reg[9]_i_7 
       (.I0(a_reg[3]),
        .I1(a_reg[1]),
        .O(\mult_reg[9]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \mult_reg[9]_i_8 
       (.I0(a_reg[2]),
        .I1(a_reg[0]),
        .O(\mult_reg[9]_i_8_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \mult_reg[9]_i_9 
       (.I0(a_reg[7]),
        .I1(a_reg[4]),
        .I2(a_reg[9]),
        .I3(\mult_reg[9]_i_2_n_0 ),
        .O(\mult_reg[9]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mult_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(a_reg[0]),
        .Q(mult_reg[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mult_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(p_0_in[10]),
        .Q(mult_reg[10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mult_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(p_0_in[11]),
        .Q(mult_reg[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mult_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(p_0_in[12]),
        .Q(mult_reg[12]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mult_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(p_0_in[13]),
        .Q(mult_reg[13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mult_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(p_0_in[14]),
        .Q(mult_reg[14]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mult_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(p_0_in[15]),
        .Q(mult_reg[15]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mult_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(p_0_in[16]),
        .Q(mult_reg[16]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mult_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(p_0_in[17]),
        .Q(mult_reg[17]),
        .R(\<const0> ));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \mult_reg_reg[17]_i_1 
       (.CI(\mult_reg_reg[9]_i_1_n_0 ),
        .CI_TOP(GND_2),
        .CO({\mult_reg_reg[17]_i_1_n_0 ,\mult_reg_reg[17]_i_1_n_1 ,\mult_reg_reg[17]_i_1_n_2 ,\mult_reg_reg[17]_i_1_n_3 ,\mult_reg_reg[17]_i_1_n_4 ,\mult_reg_reg[17]_i_1_n_5 ,\mult_reg_reg[17]_i_1_n_6 ,\mult_reg_reg[17]_i_1_n_7 }),
        .DI({\mult_reg[17]_i_2_n_0 ,\mult_reg[17]_i_3_n_0 ,\mult_reg[17]_i_4_n_0 ,\mult_reg[17]_i_5_n_0 ,\mult_reg[17]_i_6_n_0 ,\mult_reg[17]_i_7_n_0 ,\mult_reg[17]_i_8_n_0 ,\mult_reg[17]_i_9_n_0 }),
        .O(p_0_in[17:10]),
        .S({\mult_reg[17]_i_10_n_0 ,\mult_reg[17]_i_11_n_0 ,\mult_reg[17]_i_12_n_0 ,\mult_reg[17]_i_13_n_0 ,\mult_reg[17]_i_14_n_0 ,\mult_reg[17]_i_15_n_0 ,\mult_reg[17]_i_16_n_0 ,\mult_reg[17]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mult_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(p_0_in[18]),
        .Q(mult_reg[18]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mult_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(p_0_in[19]),
        .Q(mult_reg[19]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mult_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(a_reg[1]),
        .Q(mult_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mult_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(p_0_in[20]),
        .Q(mult_reg[20]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mult_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(p_0_in[2]),
        .Q(mult_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mult_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(p_0_in[31]),
        .Q(mult_reg[31]),
        .R(\<const0> ));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \mult_reg_reg[31]_i_1 
       (.CI(\mult_reg_reg[17]_i_1_n_0 ),
        .CI_TOP(GND_2),
        .CO({\mult_reg_reg[31]_i_1_n_5 ,\mult_reg_reg[31]_i_1_n_6 ,\mult_reg_reg[31]_i_1_n_7 }),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,a_reg[14:13],\mult_reg[31]_i_2_n_0 }),
        .O({p_0_in[31],p_0_in[20:18]}),
        .S({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\mult_reg[31]_i_3_n_0 ,\mult_reg[31]_i_4_n_0 ,\mult_reg[31]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \mult_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(p_0_in[3]),
        .Q(mult_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mult_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(p_0_in[4]),
        .Q(mult_reg[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mult_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(p_0_in[5]),
        .Q(mult_reg[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mult_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(p_0_in[6]),
        .Q(mult_reg[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mult_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(p_0_in[7]),
        .Q(mult_reg[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mult_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(p_0_in[8]),
        .Q(mult_reg[8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \mult_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(p_0_in[9]),
        .Q(mult_reg[9]),
        .R(\<const0> ));
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \mult_reg_reg[9]_i_1 
       (.CI(\<const0> ),
        .CI_TOP(GND_2),
        .CO({\mult_reg_reg[9]_i_1_n_0 ,\mult_reg_reg[9]_i_1_n_1 ,\mult_reg_reg[9]_i_1_n_2 ,\mult_reg_reg[9]_i_1_n_3 ,\mult_reg_reg[9]_i_1_n_4 ,\mult_reg_reg[9]_i_1_n_5 ,\mult_reg_reg[9]_i_1_n_6 ,\mult_reg_reg[9]_i_1_n_7 }),
        .DI({\mult_reg[9]_i_2_n_0 ,\mult_reg[9]_i_3_n_0 ,\mult_reg[9]_i_4_n_0 ,\mult_reg[9]_i_5_n_0 ,\mult_reg[9]_i_6_n_0 ,\mult_reg[9]_i_7_n_0 ,\mult_reg[9]_i_8_n_0 ,\<const0> }),
        .O(p_0_in[9:2]),
        .S({\mult_reg[9]_i_9_n_0 ,\mult_reg[9]_i_10_n_0 ,\mult_reg[9]_i_11_n_0 ,\mult_reg[9]_i_12_n_0 ,\mult_reg[9]_i_13_n_0 ,\mult_reg[9]_i_14_n_0 ,\mult_reg[9]_i_15_n_0 ,\mult_reg[9]_i_16_n_0 }));
  IBUF sload_IBUF_inst
       (.I(sload),
        .O(sload_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    sload_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(ce_IBUF),
        .D(sload_IBUF),
        .Q(load),
        .R(\<const0> ));
endmodule
