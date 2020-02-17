// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"
// CREATED		"Tue Feb 04 23:56:13 2020"

module TopSchematic(
	input1_and,
	input2_and,
	input1_or,
	input2_or,
	input1_not,
	input1_nand,
	input2_nand,
	input1_nor,
	input2_nor,
	input1_xor,
	input2_xor,
	input1_xnor,
	input2_xnor,
	input_DL,
	input_DLrst,
	input_SRLs,
	input_SRLr,
	input_COMPa,
	input_COMPb,
	input1_and3,
	input2_and3,
	input3_and3,
	input1_and4,
	input2_and4,
	input3_and4,
	input4_and4,
	input1_or3,
	input2_or3,
	input3_or3,
	input1_or4,
	input2_or4,
	input3_or4,
	input4_or4,
	input_JKclk,
	input_J,
	input_K,
	input_R,
	input_S,
	input_SRclk,
	input_T,
	input_Tclk,
	input_4x1muxI0,
	input_4x1muxI1,
	input_4x1muxI2,
	input_4x1muxI3,
	input_4x1muxS2,
	input_4x1muxS1,
	input_4x1demuxS2,
	input_4x1demuxS1,
	input_4x1demuxI,
	input_D,
	input_Dclk,
	input_clkin,
	input_ALUa,
	input_ALUb,
	input_ALUo,
	output_and,
	output_or,
	output_not,
	output_nand,
	output_nor,
	output_xor,
	output_xnor,
	output_SRLq,
	output_SRLnq,
	output_ALUresult,
	output_COMPl,
	output_COMPe,
	output_COMPg,
	output_and3,
	output_and4,
	output_or3,
	output_or4,
	output_JKq,
	output_JKnq,
	output_SRq,
	output_SRnq,
	output_Tq,
	output_Tnq,
	output_4x1mux,
	output_4x1demuxY0,
	output_4x1demuxY1,
	output_4x1demuxY2,
	output_4x1demuxY3,
	output_Dq,
	output_Dq1,
	output_DLq,
	output_DLqn,
	output_clkq
);


input wire	input1_and;
input wire	input2_and;
input wire	input1_or;
input wire	input2_or;
input wire	input1_not;
input wire	input1_nand;
input wire	input2_nand;
input wire	input1_nor;
input wire	input2_nor;
input wire	input1_xor;
input wire	input2_xor;
input wire	input1_xnor;
input wire	input2_xnor;
input wire	input_DL;
input wire	input_DLrst;
input wire	input_SRLs;
input wire	input_SRLr;
input wire	input_COMPa;
input wire	input_COMPb;
input wire	input1_and3;
input wire	input2_and3;
input wire	input3_and3;
input wire	input1_and4;
input wire	input2_and4;
input wire	input3_and4;
input wire	input4_and4;
input wire	input1_or3;
input wire	input2_or3;
input wire	input3_or3;
input wire	input1_or4;
input wire	input2_or4;
input wire	input3_or4;
input wire	input4_or4;
input wire	input_JKclk;
input wire	input_J;
input wire	input_K;
input wire	input_R;
input wire	input_S;
input wire	input_SRclk;
input wire	input_T;
input wire	input_Tclk;
input wire	input_4x1muxI0;
input wire	input_4x1muxI1;
input wire	input_4x1muxI2;
input wire	input_4x1muxI3;
input wire	input_4x1muxS2;
input wire	input_4x1muxS1;
input wire	input_4x1demuxS2;
input wire	input_4x1demuxS1;
input wire	input_4x1demuxI;
input wire	input_D;
input wire	input_Dclk;
input wire	input_clkin;
input wire	[1:0] input_ALUa;
input wire	[1:0] input_ALUb;
input wire	[1:0] input_ALUo;
output wire	output_and;
output wire	output_or;
output wire	output_not;
output wire	output_nand;
output wire	output_nor;
output wire	output_xor;
output wire	output_xnor;
output wire	output_SRLq;
output wire	output_SRLnq;
output wire	output_ALUresult;
output wire	output_COMPl;
output wire	output_COMPe;
output wire	output_COMPg;
output wire	output_and3;
output wire	output_and4;
output wire	output_or3;
output wire	output_or4;
output wire	output_JKq;
output wire	output_JKnq;
output wire	output_SRq;
output wire	output_SRnq;
output wire	output_Tq;
output wire	output_Tnq;
output wire	output_4x1mux;
output wire	output_4x1demuxY0;
output wire	output_4x1demuxY1;
output wire	output_4x1demuxY2;
output wire	output_4x1demuxY3;
output wire	output_Dq;
output wire	output_Dq1;
output wire	output_DLq;
output wire	output_DLqn;
output wire	output_clkq;





assign	output_and = input1_and & input2_and;

assign	output_and3 = input1_and3 & input2_and3 & input3_and3;


clockN	b2v_inst10(
	.clk(input_clkin),
	.q(output_clkq));

assign	output_or3 = input2_or3 | input3_or3 | input1_or3;


b_comp1	b2v_inst12(
	.a(input_COMPa),
	.b(input_COMPb),
	.L(output_COMPl),
	.E(output_COMPe),
	.G(output_COMPg));

assign	output_or4 = input1_or4 | input3_or4 | input4_or4 | input2_or4;


mux4_1	b2v_inst15(
	.I0(input_4x1muxI0),
	.I1(input_4x1muxI1),
	.I2(input_4x1muxI2),
	.I3(input_4x1muxI3),
	.s2(input_4x1muxS2),
	.s1(input_4x1muxS1),
	.y(output_4x1mux));


demux1_4	b2v_inst16(
	.s2(input_4x1demuxS2),
	.s1(input_4x1demuxS1),
	.I(input_4x1demuxI),
	.y0(output_4x1demuxY0),
	.y1(output_4x1demuxY1),
	.y2(output_4x1demuxY2),
	.y3(output_4x1demuxY3));


d	b2v_inst18(
	.D(input_D),
	.clk(input_Dclk),
	.q(output_Dq),
	.q1(output_Dq1));

assign	output_or = input2_or | input1_or;


dlatch2	b2v_inst20(
	.d(input_DL),
	.rstn(input_DLrst),
	.q(output_DLq),
	.qn(output_DLqn));


jk	b2v_inst23(
	.j(input_J),
	.k(input_K),
	.c(input_JKclk),
	.q(output_JKq),
	.q1(output_JKnq));


sr	b2v_inst26(
	.r(input_R),
	.s(input_S),
	.clk(input_SRclk),
	.q(output_SRq),
	.q1(output_SRnq));


sr_latch	b2v_inst27(
	.S(input_SRLs),
	.R(input_SRLr),
	.Q(output_SRLq),
	.Qn(output_SRLnq));


t	b2v_inst29(
	.t(input_T),
	.c(input_Tclk),
	.q(output_Tq),
	.q1(output_Tnq));

assign	output_not =  ~input1_not;

assign	output_nand = ~(input2_nand & input1_nand);

assign	output_nor = ~(input2_nor | input1_nor);

assign	output_and4 = input1_and4 & input2_and4 & input3_and4 & input4_and4;

assign	output_xor = input1_xor ^ input2_xor;

assign	output_xnor = input1_xnor ~^ input2_xnor;


ALU_1_bit	b2v_inst9(
	.a(input_ALUa),
	.b(input_ALUb),
	.operation(input_ALUo),
	.Result(output_ALUresult));


endmodule
