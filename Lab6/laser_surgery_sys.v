`timescale 1ns / 1ps
module laser_surgery_sys #(parameter NBITS = 32)(
	input b,
	input clk,
	input reset,
	output reg light
	);

wire timer;
reg rest_count;

reg [1:0] current_state;
reg [1:0] next_state;

localparam OFF = 2'b00;
localparam START = 2'b01;
localparam ON = 2'b10;

wire [NBITS-1:0] cnt_ini;
wire [NBITS-1:0] cnt_rst;

// -----------------
// Sequential logic
// -----------------
always @(posedge clk) begin
	current_state = next_state; // your code *****
end

// ------------
// Comb. Logic
// ------------
assign cnt_ini = 32'b0000; // initial value
assign cnt_rst = 32'b00010010100101010100101011000001; // target value, 10 secs (25 MHZ internal clock)

// ------------------
// Comb. Logic - FSM
// ------------------
always @(current_state or b) begin
	case (current_state)
		OFF: begin
				rest_count = 1'b1;	// your code *****
				light = 1'b0;
				next_state = timer ? START : OFF;	
				end
				
		START: begin
					rest_count = 1'b0;	// your code *****
					light = 1'b0;
					next_state = ON;
				end

		ON: begin
					rest_count = 1'b0;	// your code *****
					light = 1'b1;
					next_state = timer ? OFF : ON;
				end			

		default: begin
				   rest_count = 1'b0;	// your code *****
					light = 1'b0;
					next_state = OFF; 
				end
	endcase
end

// --------------------
// Timer instantiation
// --------------------
timer_st #(.NBITS(NBITS)) timerst(
		.timer(timer),
		.clk(clk),
		.reset(rest_count),
		.cnt_ini(cnt_ini),
		.cnt_rst(cnt_rst)
	);
	
endmodule