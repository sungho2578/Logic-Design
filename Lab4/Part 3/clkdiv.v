`timescale 1ns / 1ps
module clkdiv(clk, clk_out);
input clk;
output clk_out;

reg [20:0] COUNT;
assign clk_out = COUNT[20];

always @(posedge clk)
begin
	COUNT = COUNT + 1;
end
endmodule
