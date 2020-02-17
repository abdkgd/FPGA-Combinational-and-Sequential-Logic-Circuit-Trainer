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
// CREATED		"Tue Feb 04 23:56:28 2020"

module TopSchematic2(
	input_DECa,
	input_DECb,
	input_DECc,
	input_FAa,
	input_FAb,
	input_FAc,
	input_FSa,
	input_FSb,
	input_FSc,
	input_HAa,
	input_HAb,
	input_COUNTclk,
	input_COUNTrst,
	input_PISOclk,
	input_SIPO,
	input_SIPOclk,
	input_clkin,
	input_BCD,
	input_ENC,
	input_PENC,
	input_PISO,
	output_FAs,
	output_FAco,
	output_FSborrow,
	output_FSdiff,
	output_HAs,
	output_HAco,
	output_PISO,
	output_clkq,
	input_BCDb,
	input_BCDc,
	output_COUNT,
	output_DEC,
	output_ENC,
	output_PENC,
	output_SIPO
);


input wire	input_DECa;
input wire	input_DECb;
input wire	input_DECc;
input wire	input_FAa;
input wire	input_FAb;
input wire	input_FAc;
input wire	input_FSa;
input wire	input_FSb;
input wire	input_FSc;
input wire	input_HAa;
input wire	input_HAb;
input wire	input_COUNTclk;
input wire	input_COUNTrst;
input wire	input_PISOclk;
input wire	input_SIPO;
input wire	input_SIPOclk;
input wire	input_clkin;
input wire	[3:0] input_BCD;
input wire	[7:0] input_ENC;
input wire	[7:0] input_PENC;
input wire	[3:0] input_PISO;
output wire	output_FAs;
output wire	output_FAco;
output wire	output_FSborrow;
output wire	output_FSdiff;
output wire	output_HAs;
output wire	output_HAco;
output wire	output_PISO;
output wire	output_clkq;
output wire	[6:0] input_BCDb;
output wire	[6:0] input_BCDc;
output wire	[3:0] output_COUNT;
output wire	[3:0] output_DEC;
output wire	[2:0] output_ENC;
output wire	[2:0] output_PENC;
output wire	[3:0] output_SIPO;






bcd	b2v_inst(
	.a(input_BCD),
	.b(input_BCDb),
	.c(input_BCDc));


clockN	b2v_inst1(
	.clk(input_clkin),
	.q(output_clkq));


decoder24	b2v_inst16(
	.a(input_DECa),
	.b(input_DECb),
	.e(input_DECc),
	.c(output_DEC));


encoder83	b2v_inst18(
	.i(input_ENC),
	.o(output_ENC));


fa	b2v_inst19(
	.a(input_FAa),
	.b(input_FAb),
	.ci(input_FAc),
	.s(output_FAs),
	.co(output_FAco));


priority	b2v_inst2(
	.sel(input_PENC),
	.code(output_PENC));


full_subtractor	b2v_inst22(
	.a(input_FSa),
	.b(input_FSb),
	.c(input_FSc),
	.diff(output_FSdiff),
	.borrow(output_FSborrow));


piso1	b2v_inst25(
	.clk(input_PISOclk),
	.sin(input_PISO),
	.sout(output_PISO));


sipo	b2v_inst26(
	.sin(input_SIPO),
	.clk(input_SIPOclk),
	.sout(output_SIPO));


up_counter	b2v_inst30(
	.clk(input_COUNTclk),
	.reset(input_COUNTrst),
	.counter(output_COUNT));


ha	b2v_inst31(
	.a(input_HAa),
	.b(input_HAb),
	.s(output_HAs),
	.co(output_HAco));


endmodule
