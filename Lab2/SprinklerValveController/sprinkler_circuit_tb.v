// Verilog test fixture created from schematic C:\Users\SH-HP\UCR\CS 120A\Lab2\Lab2_sprinkler_valve_controller\sprinkler_circuit.sch - Thu Oct 18 15:08:06 2018

`timescale 1ns / 1ps

module sprinkler_decoder_sprinker_decoder_v_tb();

// Inputs
   reg E;
   reg A;
   reg B;
   reg C;

// Output
   wire d0;
   wire d1;
   wire d2;
   wire d3;
   wire d4;
   wire d5;
   wire d6;
   wire d7;

// Bidirs

// Instantiate the UUT
   sprinkler_decoder UUT (
		.d0(d0), 
		.d1(d1), 
		.d2(d2), 
		.d3(d3), 
		.d4(d4), 
		.d5(d5), 
		.d6(d6), 
		.d7(d7), 
		.E(E), 
		.A(A), 
		.B(B), 
		.C(C)
   );
// Initialize Inputs
       initial begin
		 
		E = 1;
		
		A = 0;
		B = 0;
		C = 0;	
		#100; // Wait for 100ns
		$display("TC11 ");   
		if ( d0 != 1'b1 ) $display  ("Result is wrong"); 
 
		A = 0;
		B = 0;
		C = 1;
		#100;   
		$display("TC12 ");   
		if ( d1 != 1'b1 ) $display  ("Result is wrong");
		
		A = 0;
		B = 1;
		C = 0;
		#100;   
		$display("TC13 ");   
		if ( d2 != 1'b1 ) $display  ("Result is wrong");
		
		A = 0;
		B = 1;
		C = 1;
		#100;   
		$display("TC14 ");   
		if ( d3 != 1'b1 ) $display  ("Result is wrong");
		
		A = 1;
		B = 0;
		C = 0;
		#100;   
		$display("TC15 ");   
		if ( d4 != 1'b1 ) $display  ("Result is wrong");
		
		A = 1;
		B = 0;
		C = 1;
		#100;   
		$display("TC16 ");   
		if ( d5 != 1'b1 ) $display  ("Result is wrong");
		
		A = 1;
		B = 1;
		C = 0;
		#100;   
		$display("TC17 ");   
		if ( d6 != 1'b1 ) $display  ("Result is wrong");
		
		A = 1;
		B = 1;
		C = 1;
		#100;   
		$display("TC18 ");   
		if ( d7 != 1'b1 ) $display  ("Result is wrong");
		
		// Test cases
		E = 1;
		A = 0;
		B = 0;
		C = 0;
		
   end
endmodule


