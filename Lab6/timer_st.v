`timescale 1ns / 1ps
module timer_st #(parameter NBITS = 32)(
	output timer,
	input clk,
	input reset,
	input [NBITS-1:0] cnt_ini,
	input [NBITS-1:0] cnt_rst
    );

wire [NBITS-1:0] q;
wire [NBITS-1:0] qnext;

// Compute the next value
adder #(.NBITS(NBITS))
	c1(.q(q),
		.cnt_ini(cnt_ini),
		.cnt_rst(cnt_rst),
		.nextq(qnext),
		.tick(timer));
		
// Save the next state
flopr #(.NBITS(NBITS))
	c2(.clk(clk),
		.reset(reset),
		.cnt_ini(cnt_ini),
		.nextq(qnext),
		.q(q));

endmodule
