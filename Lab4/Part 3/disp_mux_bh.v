`timescale 1ns / 1ps
module disp_mux_bh(
input clk,
input wire [7:0] in0,
input wire [7:0] in1,
input wire [7:0] in2,
input wire [7:0] in3,

output reg [3:0] an,
output reg [7:0] sseg
);

wire slow_clk;
reg [16:0] r_qreg;
reg [16:0] c_next;

clkdiv c6(clk, slow_clk);

// Mux ***
always @(*) begin
	case (r_qreg[1:0])
		2'b00 : sseg = in0;
		2'b01 : sseg = in1;
		2'b10 : sseg = in2;
		2'b11 : sseg = in3;
	endcase
end

// Decoder ***
always @(*) begin
	case (r_qreg[1:0])
		2'b00 : an = ~(4'b0001);
		2'b01 : an = ~(4'b0010);
		2'b10 : an = ~(4'b0100);
		2'b11 : an = ~(4'b1000);
	endcase
end



// Counter ***
always @(*) begin
	c_next = r_qreg + 'd1;
end

// Register ***
always @(posedge slow_clk) begin
	r_qreg <= c_next;
end


endmodule

