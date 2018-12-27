// Verilog test fixture created from schematic C:\Users\SH-HP\UCR\CS 120A\Lab1\Lab1\Lab1Src.sch - Thu Oct 11 16:07:57 2018

`timescale 1ns / 1ps

module Lab1Src_Lab1Src_sch_tb();

// Inputs
   reg INPUT_1;
   reg INPUT_2;

// Output
   wire OUTPUT_1;
   wire OUTPUT_2;
   wire OUTPUT_3;
   wire OUTPUT_4;

// Clocks
	reg clk;

// Bidirs

// Instantiate the UUT
   Lab1Src UUT (
		.INPUT_1(INPUT_1), 
		.INPUT_2(INPUT_2), 
		.OUTPUT_1(OUTPUT_1), 
		.OUTPUT_2(OUTPUT_2), 
		.OUTPUT_3(OUTPUT_3), 
		.OUTPUT_4(OUTPUT_4)
   );
 
   initial begin
		clk = 0 ;
		forever begin
			#20 clk = ~clk;
			end
		end
	
	initial begin
		#40 ;
		INPUT_1 = 1'b1;
		INPUT_2 = 1'b1;
		#40 ;

	$display("TC1 ");
	if ( {OUTPUT_1,OUTPUT_2,OUTPUT_3,OUTPUT_4} != 4'b1010 ) $display  ("Result is wrong %b ", {OUTPUT_1,OUTPUT_2,OUTPUT_3,OUTPUT_4});
	INPUT_1 = 1'b0;
	INPUT_2 = 1'b0;
	#40 ;
	$display("TC2 ");
	if ( {OUTPUT_1,OUTPUT_2,OUTPUT_3,OUTPUT_4} != 4'b0101 ) $display  ("Result is wrong %b ", {OUTPUT_1,OUTPUT_2,OUTPUT_3,OUTPUT_4});
	
// Initialize Inputs
   `ifdef auto_init
       initial begin
		INPUT_1 = 0;
		INPUT_2 = 0;
   `endif
	end
endmodule

