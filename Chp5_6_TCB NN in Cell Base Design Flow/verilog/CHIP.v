module CHIP (
    input axi_clk,
    input axi_reset_n,
    input s_axis_valid,
    input [31:0] s_axis_data,
    output s_axis_ready,
    output m_axis_valid,
    output [3:0] m_axis_data,
    input m_axis_ready,
    input s_axis_last,
    output m_axis_last
);
    wire i_axi_clk;
    wire i_axi_reset_n;
    wire i_s_axis_valid;
    wire [31:0] i_s_axis_data;
    wire i_s_axis_ready;
    wire i_m_axis_valid;
    wire [3:0] i_m_axis_data;
    wire i_m_axis_ready;
    wire i_s_axis_last;
    wire i_m_axis_last;
    axis_top_ver1126 DUT (
        .axi_clk(i_axi_clk),
        .axi_reset_n(i_axi_reset_n),
        .s_axis_valid(i_s_axis_valid),
        .s_axis_data(i_s_axis_data),
        .s_axis_ready(i_s_axis_ready),
        .m_axis_valid(i_m_axis_valid),
        .m_axis_data(i_m_axis_data),
        .m_axis_ready(i_m_axis_ready),
        .s_axis_last(i_s_axis_last),
        .m_axis_last(i_m_axis_last)
    );

    XMC ipad_in0 (
        .O  (i_axi_clk),
        .I  (axi_clk),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in1 (
        .O  (i_axi_reset_n),
        .I  (axi_reset_n),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in2 (
        .O  (i_s_axis_valid),
        .I  (s_axis_valid),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in3 (
        .O  (i_s_axis_data[0]),
        .I  (s_axis_data[0]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in4 (
        .O  (i_s_axis_data[1]),
        .I  (s_axis_data[1]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in5 (
        .O  (i_s_axis_data[2]),
        .I  (s_axis_data[2]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in6 (
        .O  (i_s_axis_data[3]),
        .I  (s_axis_data[3]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in7 (
        .O  (i_s_axis_data[4]),
        .I  (s_axis_data[4]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in8 (
        .O  (i_s_axis_data[5]),
        .I  (s_axis_data[5]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in9 (
        .O  (i_s_axis_data[6]),
        .I  (s_axis_data[6]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in10 (
        .O  (i_s_axis_data[7]),
        .I  (s_axis_data[7]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in11 (
        .O  (i_s_axis_data[8]),
        .I  (s_axis_data[8]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in12 (
        .O  (i_s_axis_data[9]),
        .I  (s_axis_data[9]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in13 (
        .O  (i_s_axis_data[10]),
        .I  (s_axis_data[10]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in14 (
        .O  (i_s_axis_data[11]),
        .I  (s_axis_data[11]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in15 (
        .O  (i_s_axis_data[12]),
        .I  (s_axis_data[12]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in16 (
        .O  (i_s_axis_data[13]),
        .I  (s_axis_data[13]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in17 (
        .O  (i_s_axis_data[14]),
        .I  (s_axis_data[14]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in18 (
        .O  (i_s_axis_data[15]),
        .I  (s_axis_data[15]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in19 (
        .O  (i_s_axis_data[16]),
        .I  (s_axis_data[16]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in20 (
        .O  (i_s_axis_data[17]),
        .I  (s_axis_data[17]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in21 (
        .O  (i_s_axis_data[18]),
        .I  (s_axis_data[18]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in22 (
        .O  (i_s_axis_data[19]),
        .I  (s_axis_data[19]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in23 (
        .O  (i_s_axis_data[20]),
        .I  (s_axis_data[20]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in24 (
        .O  (i_s_axis_data[21]),
        .I  (s_axis_data[21]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in25 (
        .O  (i_s_axis_data[22]),
        .I  (s_axis_data[22]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in26 (
        .O  (i_s_axis_data[23]),
        .I  (s_axis_data[23]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in27 (
        .O  (i_s_axis_data[24]),
        .I  (s_axis_data[24]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in28 (
        .O  (i_s_axis_data[25]),
        .I  (s_axis_data[25]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in29 (
        .O  (i_s_axis_data[26]),
        .I  (s_axis_data[26]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in30 (
        .O  (i_s_axis_data[27]),
        .I  (s_axis_data[27]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in31 (
        .O  (i_s_axis_data[28]),
        .I  (s_axis_data[28]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in32 (
        .O  (i_s_axis_data[29]),
        .I  (s_axis_data[29]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in33 (
        .O  (i_s_axis_data[30]),
        .I  (s_axis_data[30]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in34 (
        .O  (i_s_axis_data[31]),
        .I  (s_axis_data[31]),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );




    XMC ipad_in35 (
        .O  (i_m_axis_ready),
        .I  (m_axis_ready),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );
    XMC ipad_in36 (
        .O  (i_s_axis_last),
        .I  (s_axis_last),
        .PU (n_Logic0_),
        .PD (n_Logic0_),
        .SMT(n_Logic0_)
    );





    YA2GSC opad_out37 (
        .SR(n_Logic0_),
        .O (s_axis_ready),
        .I (i_s_axis_ready),
        .E (n_Logic1_),
        .E2(n_Logic1_),
        .E4(n_Logic1_),
        .E8(n_Logic1_)
    );
    YA2GSC opad_out38 (
        .SR(n_Logic0_),
        .O (m_axis_valid),
        .I (i_m_axis_valid),
        .E (n_Logic1_),
        .E2(n_Logic1_),
        .E4(n_Logic1_),
        .E8(n_Logic1_)
    );
    YA2GSC opad_out39 (
        .SR(n_Logic0_),
        .O (m_axis_data[0]),
        .I (i_m_axis_data[0]),
        .E (n_Logic1_),
        .E2(n_Logic1_),
        .E4(n_Logic1_),
        .E8(n_Logic1_)
    );
    YA2GSC opad_out40 (
        .SR(n_Logic0_),
        .O (m_axis_data[1]),
        .I (i_m_axis_data[1]),
        .E (n_Logic1_),
        .E2(n_Logic1_),
        .E4(n_Logic1_),
        .E8(n_Logic1_)
    );
    YA2GSC opad_out41 (
        .SR(n_Logic0_),
        .O (m_axis_data[2]),
        .I (i_m_axis_data[2]),
        .E (n_Logic1_),
        .E2(n_Logic1_),
        .E4(n_Logic1_),
        .E8(n_Logic1_)
    );
    YA2GSC opad_out42 (
        .SR(n_Logic0_),
        .O (m_axis_data[3]),
        .I (i_m_axis_data[3]),
        .E (n_Logic1_),
        .E2(n_Logic1_),
        .E4(n_Logic1_),
        .E8(n_Logic1_)
    );



    YA2GSC opad_out43 (
        .SR(n_Logic0_),
        .O (m_axis_last),
        .I (i_m_axis_last),
        .E (n_Logic1_),
        .E2(n_Logic1_),
        .E4(n_Logic1_),
        .E8(n_Logic1_)
    );
    TIE0 U1 (.O(n_Logic0_));
    TIE1 U2 (.O(n_Logic1_));
endmodule
