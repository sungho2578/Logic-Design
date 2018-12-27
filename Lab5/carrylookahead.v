`timescale 1ns / 1ps

module carrylookahead_st(
	input clk,
	input reset,
	input enable,
	input cin,
	input [3:0] x,
	input [3:0] y,
	output cout,
	output [3:0] r
	);
	
	wire [3:0] c;
	wire [3:0] ir1;
	wire [4:0] ir2;
	
// Compute Carries
carrylogic cx2 (c, x, y, cin);	//*

// Compute R
falogic cx6 (ir1[0], x[0], y[0], cin);
falogic cx7 (ir1[1], x[1], y[1], c[0]);
falogic cx8 (ir1[2], x[2], y[2], c[1]);		//*
falogic cx9 (ir1[3], x[3], y[3], c[2]);

// Regster
register_logic cx10(clk, reset, enable, {c[3],ir1}, ir2);

// Results
assign r[0] = ir2[0];
assign r[1] = ir2[1];
assign r[2] = ir2[2];
assign r[3] = ir2[3];
assign cout = ir2[4];
endmodule