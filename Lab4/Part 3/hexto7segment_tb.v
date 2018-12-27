`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:40:34 11/08/2018
// Design Name:   hexto7segment
// Module Name:   C:/Users/SH-HP/UCR/CS 120A/Lab4/Lab4_Part3/hexto7segment_tb.v
// Project Name:  Lab4_Part3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hexto7segment
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hexto7segment_tb;

	// Inputs
	reg [3:0] x;

	// Outputs
	wire [6:0] r;

	// Instantiate the Unit Under Test (UUT)
	hexto7segment uut (
		.x(x), 
		.r(r)
	);

	initial begin
		// Initialize Inputs
		x = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

