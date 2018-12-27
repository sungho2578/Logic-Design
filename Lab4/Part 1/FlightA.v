`timescale 1ns / 1ps
module FlightA;

	// Inputs
	reg clk;
	reg call_button;
	reg cancel_button;

	// Outputs
	wire light_state;

	// Instantiate the Unit Under Test (UUT)
	FlightAttendance uut (
		.clk(clk), 
		.call_button(call_button), 
		.cancel_button(cancel_button), 
		.light_state(light_state)
	);

	initial begin
		// Initialize Inputs
		clk = 50;
		call_button = 0;
		cancel_button = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

