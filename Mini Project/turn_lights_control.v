`timescale 1ns / 1ps

module turn_lights_control(
    input clk,
    input reset,
    input Left,
    input Right,
    input Hazard,
    output reg [0:7] LED
);

wire slow_clk;

clkdiv c1(clk, slow_clk);

parameter IDLE = 8'b00000000,
				L4 = 8'b11110000,
            L3 = 8'b01110000,
            L2 = 8'b00110000,
            L1 = 8'b00010000,
            R1 = 8'b00001000,
            R2 = 8'b00001100,
            R3 = 8'b00001110,
				R4 = 8'b00001111,
				LR4= 8'b11111111;

always @ (posedge slow_clk)
    if
      (reset) LED <= IDLE; else
        case (LED)
        IDLE : if (Hazard || (Left && Right)) LED <= LR4;
          else if (Left && ~Hazard && ~Right) LED <= L1;
          else if (Right && ~Hazard && ~Left) LED <= R1;
          else LED <= IDLE;
				L1  : LED <= L2;
				L2  : LED <= L3;
				L3  : LED <= L4;
				L4  : LED <= IDLE;
				R1  : LED <= R2;
				R2  : LED <= R3;
				R3  : LED <= R4;
				R4  : LED <= IDLE;
				LR4 : LED <= IDLE;
				default : ;
        endcase
endmodule

// slow clock
module clkdiv(clk, clk_out);
input clk;
output clk_out;

reg [22:0] COUNT;
assign clk_out = COUNT[22];

always @(posedge clk)
begin
	COUNT = COUNT + 1;
end
endmodule
