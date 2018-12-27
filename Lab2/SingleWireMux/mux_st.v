`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:13:43 10/25/2018 
// Design Name: 
// Module Name:    mux_st 
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
module mux_st(

// Ports I/O
input wire s1,
input wire s0,
input wire i0,
input wire i1,
input wire i2,
input wire i3,
output wire d
);

wire r1, r2, r3, r4;

and3 c1(~s1,~s0,i0,r1);
and3 c2(~s1,s0,i1,r2);
and3 c3(s1,~s0,i2,r3);
and3 c4(s1,s0,i3,r4);
//code

assign d = r1|r2|r3|r4;
endmodule
