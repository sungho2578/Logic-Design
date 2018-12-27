`timescale 1ns / 1ps
module addergen_st #(parameter NBITS = 16)(
	output [NBITS-1:0] r,
	output cout,
	
	input [NBITS-1:0] a,
	input [NBITS-1:0] b,
	input cin
    );
	 
wire [NBITS:0] carry;

assign carry[0] = cin;

genvar k;
generate
for (k = 0; k < NBITS; k = k+1)
	begin : blk
		fulladder_st FA(
			.r(r[k]),
			.cout(carry[k+1]),
			.a(a[k]),
			.b(b[k]),
			.cin(carry[k]));
	end
endgenerate

assign cout = carry[NBITS];

endmodule
