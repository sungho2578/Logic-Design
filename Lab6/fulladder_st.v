`timescale 1ns / 1ps
module fulladder_st(
	output r,
	output cout,
	input a,
	input b,
	input cin
    );

assign r = (a^b) ^ (cin);
assign cout = (a&b)|(a&cin)|(b&cin);

endmodule
