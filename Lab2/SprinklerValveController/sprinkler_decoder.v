`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:08:13 10/25/2018 
// Design Name: 
// Module Name:    sprinkler_decoder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module sprinkler_decoder(
//I/o ports
	input wire E,
	input wire A,
	input wire B,
	input wire C,
	output wire d0,
	output wire d1,
	output wire d2,
	output wire d3,
	output wire d4,
	output wire d5,
	output wire d6,
	output wire d7
);

// Using the and4 module to set all outputs  
 
and4 c1(E, ~A, ~B, ~C, d0); // E = 0 is enable
and4 c2(E, ~A, ~B, C, d1);
and4 c3(E, ~A, B, ~C, d2);
and4 c4(E, ~A, B, C, d3);
and4 c5(E, A, ~B, ~C, d4);
and4 c6(E, A, ~B, C, d5);
and4 c7(E, A, B, ~C, d6);
and4 c8(E, A, B, C, d7);
// code

endmodule
