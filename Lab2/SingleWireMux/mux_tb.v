// Verilog test fixture created from schematic C:\Users\SH-HP\UCR\CS 120A\Lab2\single_wire_mux\mux_circuit.sch - Thu Oct 25 12:35:36 2018

`timescale 1ns / 1ps

module mux_circuit_mux_circuit_sch_tb();

// Inputs
   reg s1;
   reg s0;
   reg i0;
   reg i1;
   reg i2;
   reg i3;

// Output
   wire d;

// Bidirs

// Instantiate the UUT
   mux_circuit UUT (
		.s1(s1), 
		.s0(s0), 
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.d(d)
   );
// Initialize Inputs
   initial begin
		i0 = 1;
		i1 = 0;
		i2 = 1;
		i3 = 0;
		
		s1 = 0;
		s0 = 0;
		#100;
		$display("TC11 ");
		if(d!=i0)$display("Result is wrong");
		
		s1 = 0;
		s0 = 1;
		#100;
		$display("TC12 ");
		if(d!=i1)$display("Result is wrong");
		
		s1 = 1;
		s0 = 0;
		#100;
		$display("TC13 ");
		if(d!=i2)$display("Result is wrong");
		
		s1 = 1;
		s0 = 1;
		#100;
		$display("TC14 ");
		if(d!=i3)$display("Result is wrong");
		
		//test cases
		i0 = 1;
		i1 = 0;
		i2 = 1;
		i3 = 0;
		
   end
endmodule
