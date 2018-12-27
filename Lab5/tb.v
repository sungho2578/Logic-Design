`timescale 1ns / 1ps
module tb;

	// Inputs
	reg clk;
	reg reset;
	reg enable;
	reg cin;
	reg [3:0] x;
	reg [3:0] y;

	// Outputs
	wire cout;
	wire [3:0] r;

	// Instantiate the Unit Under Test (UUT)
	carrylookahead_st uut (
		.clk(clk), 
		.reset(reset), 
		.enable(enable), 
		.cin(cin), 
		.x(x), 
		.y(y), 
		.cout(cout), 
		.r(r)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		enable = 0;
		cin = 0;
		x = 1100;
		y = 0111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

