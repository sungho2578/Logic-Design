`timescale 1ns / 1ps
module comparatorgen_st #(parameter NBITS = 16)(
	output r,
	input [NBITS-1:0] a,
	input [NBITS-1:0] b
    );
	 
wire [NBITS-1:0] iresult;

genvar k;
generate
for (k = 0; k < NBITS; k = k+1)
	begin : blk
		xor c1(iresult[k], a[k], b[k]);
	end
endgenerate

// Reduction plus negation
assign r = ~(|iresult); 

endmodule
