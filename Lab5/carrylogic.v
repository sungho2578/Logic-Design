`timescale 1ns / 1ps

module carrylogic(
	output [3:0] cout,
	input [3:0] x,
	input [3:0] y,
	input cin
	);
	
// Computing all gx		// Generate
	wire g0, g1, g2, g3;
	assign g0 = x[0] & y[0];
	assign g1 = x[1] & y[1];
	assign g2 = x[2] & y[2];
	assign g3 = x[3] & y[3];
// Computing all px		// Propagate
	wire p0, p1, p2, p3;
	assign p0 = x[0] + y[0];
	assign p1 = x[1] + y[1];
	assign p2 = x[2] + y[2]; //*
	assign p3 = x[3] + y[3]; //*
// Computing all carries	// Carry
	assign cout[0] = g0 | (p0 & cin);
	assign cout[1] = g1 | (p1 & g0) | (p1 & p0 & cin);
	assign cout[2] = g2 | (p2 & g1) | (p2 & p1 & g0) | (p2 & p1 & p0 & cin); //**
	assign cout[3] = g3 | (p3 & g2) | (p3 & p2 & g1) | (p3 & p2 & p1 & g0) | (p3 & p2 & p1 & p0 & cin);
endmodule