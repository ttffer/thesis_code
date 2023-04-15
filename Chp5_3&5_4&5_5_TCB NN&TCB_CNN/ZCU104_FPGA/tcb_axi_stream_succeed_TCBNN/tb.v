`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2022 12:40:51 PM
// Design Name: 
// Module Name: tb
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


module tb_for_combine;

parameter CYCLE_TIME=10;
parameter DATA_WIDTH =32;
parameter NUMBER_OF_INPUT_WORDS = 4;
axis_top_ver1211 #(DATA_WIDTH) DUT1 
(
.axi_clk(axi_clk),//input
.axi_reset_n(axi_reset_n),//input
.s_axis_valid(s_axis_valid),//input
.s_axis_data(s_axis_data),//input

.s_axis_ready(s_axis_ready),//output

.m_axis_valid(m_axis_valid),//output
.m_axis_data(m_axis_data),//output

.m_axis_ready(m_axis_ready),//input
.s_axis_last(s_axis_last),//input

.m_axis_last(m_axis_last)//output
);

reg axi_clk=0;
reg axi_reset_n=0;
reg s_axis_valid=0;
reg [DATA_WIDTH-1:0] s_axis_data;

reg m_axis_ready;
reg s_axis_last;
wire [32-1:0] m_axis_data;
wire s_axis_ready,m_axis_valid,m_axis_last;
reg [31:0] count;

reg [7:0]   test1 [0:127];

always # (CYCLE_TIME/2) axi_clk =~axi_clk;

always@ (negedge axi_clk)begin  
    count=count+1'b1;
//    s_axis_data=count;
    s_axis_data =  {test1[3+count*4],test1[2+count*4],test1[1+count*4],test1[0+count*4]};
end

initial 
    begin
    $readmemb("img.mem",test1);
    end
initial begin
    axi_clk=0;
    count=0;
    s_axis_valid=1'b1;
    m_axis_ready=1'b1;
    s_axis_last=1'b0;

    #20
    @(posedge axi_clk) #(CYCLE_TIME/2) axi_reset_n=1'b0;
    @(posedge axi_clk) #(CYCLE_TIME/2) axi_reset_n=1'b1; 
    #5 count=-1;
    
     #400 $finish;
end

endmodule