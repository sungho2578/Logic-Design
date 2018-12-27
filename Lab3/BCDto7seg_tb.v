`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:17:00 11/08/2018
// Design Name:   bcdto7led_bh
// Module Name:   C:/Users/SH-HP/UCR/CS 120A/Lab3/Lab3_Project/BCDto7seg_tb.v
// Project Name:  Lab3_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bcdto7led_bh
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BCDto7seg_tb;

	// Inputs
	reg sw0;
	reg sw1;
	reg sw2;
	reg sw3;

	// Outputs
	wire a;
	wire b;
	wire c;
	wire d;
	wire e;
	wire f;
	wire g;
	wire an0;
	wire an1;
	wire an2;
	wire an3;

	// Instantiate the Unit Under Test (UUT)
	bcdto7led_bh uut (
		.sw0(sw0), 
		.sw1(sw1), 
		.sw2(sw2), 
		.sw3(sw3), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e), 
		.f(f), 
		.g(g), 
		.an0(an0), 
		.an1(an1), 
		.an2(an2), 
		.an3(an3)
	);

	initial begin
		// Initialize Inputs
		sw0 = 1;
		sw1 = 0;
		sw2 = 1;
		sw3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

