`timescale 1ns / 1ps
module EdgeDetector(
input wire clk,
input wire signal,
output reg outedge
);

wire slow_clk;
reg [1:0] c_state;
reg [1:0] r_state;

localparam ZERO = 'd0;
localparam CHANGE = 'd1;
localparam ONE = 'd2;

clkdiv c1(clk, slow_clk);

// Comb. Logic
always @(*) begin
	case (r_state)
		ZERO : begin
			outedge = 1'd0;
			if (signal) c_state = CHANGE;
			else c_state = ZERO;
			end
		
		CHANGE : begin
			outedge = 1'd1;
			if (signal) c_state = ONE;
			else c_state = ZERO;
			end
			
		ONE : begin
			outedge = 1'd0;
			if (signal) c_state = ONE;
			else c_state = ZERO;
			end
			
	default : begin
			c_state = ZERO;
			outedge = 'd0;
			end
	endcase
end

// Seq. Logic
always @(posedge slow_clk) begin
	r_state <= c_state;
end
endmodule

//--

module clkdiv(clk, clk_out);
input clk;
output clk_out;

reg [15:0] COUNT;
assign clk_out = COUNT[15];

always @(posedge clk)
begin
	COUNT = COUNT + 1;
end
endmodule






