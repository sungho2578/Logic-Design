`timescale 1ns / 1ps

// UCR CS 120 
// Decoder. Behavioral description   
// Initial implementation  And 3 Inputs Enable 

module and4(
input wire enable , 
input wire a, 
input wire b, 
input wire c, 
output wire r 
 );

// 

assign r = enable & a & b & c ; 

endmodule
