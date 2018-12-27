`timescale 1ns / 1ps
module main_tb;

	// Inputs
	reg clk;
	reg sw0;
	reg sw1;
	reg sw2;
	reg sw3;

	// Outputs
	wire [3:0] an;
	wire [7:0] sseg;

	// Instantiate the Unit Under Test (UUT)
	Mux_main uut (
		.clk(clk), 
		.sw0(sw0), 
		.sw1(sw1), 
		.sw2(sw2), 
		.sw3(sw3), 
		.an(an), 
		.sseg(sseg)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		sw0 = 0;
		sw1 = 0;
		sw2 = 0;
		sw3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

