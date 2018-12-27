`timescale 1ns / 1ps
module bcdto7led_bh(
	input wire sw0, 	// switches
	input wire sw1,
	input wire sw2,
	input wire sw3,
	output reg sseg0,	// LED segments
	output reg sseg1,
	output reg sseg2,
	output reg sseg3,
	output reg sseg4,
	output reg sseg5,
	output reg sseg6,
	output reg an0,	// LED display control
	output reg an1,
	output reg an2,
	output reg an3
    );
	 
// Internal wire
wire [3:0] bundle;
assign bundle = {sw3, sw2, sw1, sw0};

always @(*) begin
	// Setting the ANs signals
	an0 = 1'b0;
	an1 = 1'b0;
	an2 = 1'b0;
	an3 = 1'b0;			// Display in the module AN3
	// Setting the segments signals
	sseg0 = 1'b1;
	sseg1 = 1'b1;
	sseg2 = 1'b1;
	sseg3 = 1'b1;
	sseg4 = 1'b1;
	sseg5 = 1'b1;
	sseg6 = 1'b1;
	
	case (bundle)
		4'b0000 : begin  	// 0
			sseg0 = 1'b0;
			sseg1 = 1'b0;
			sseg2 = 1'b0;
			sseg3 = 1'b0;
			sseg4 = 1'b0;
			sseg5 = 1'b0;
			sseg6 = 1'b1;
			end
			
		4'b0001 : begin  	// 1
			sseg0 = 1'b1;
			sseg1 = 1'b0;
			sseg2 = 1'b0;
			sseg3 = 1'b1;
			sseg4 = 1'b1;
			sseg5 = 1'b1;
			sseg6 = 1'b1;
			end
			
		4'b0010 : begin  	// 2
			sseg0 = 1'b0;
			sseg1 = 1'b0;
			sseg2 = 1'b1;
			sseg3 = 1'b0;
			sseg4 = 1'b0;
			sseg5 = 1'b1;
			sseg6 = 1'b0;
			end	
			
		4'b0011 : begin  	// 3
			sseg0 = 1'b0;
			sseg1 = 1'b0;
			sseg2 = 1'b0;
			sseg3 = 1'b0;
			sseg4 = 1'b1;
			sseg5 = 1'b1;
			sseg6 = 1'b0;
			end	
			
		4'b0100 : begin  	// 4
			sseg0 = 1'b1;
			sseg1 = 1'b0;
			sseg2 = 1'b0;
			sseg3 = 1'b1;
			sseg4 = 1'b1;
			sseg5 = 1'b0;
			sseg6 = 1'b0;
			end
			
		4'b0101 : begin  	// 5
			sseg0 = 1'b0;
			sseg1 = 1'b1;
			sseg2 = 1'b0;
			sseg3 = 1'b0;
			sseg4 = 1'b1;
			sseg5 = 1'b0;
			sseg6 = 1'b0;
			end
			
		4'b0110 : begin  	// 6
			sseg0 = 1'b0;
			sseg1 = 1'b1;
			sseg2 = 1'b0;
			sseg3 = 1'b0;
			sseg4 = 1'b0;
			sseg5 = 1'b0;
			sseg6 = 1'b0;
			end
			
	 	4'b0111 : begin  	// 7
			sseg0 = 1'b0;
			sseg1 = 1'b0;
			sseg2 = 1'b0;
			sseg3 = 1'b1;
			sseg4 = 1'b1;
			sseg5 = 1'b1;
			sseg6 = 1'b1;
			end
			
		4'b1000 : begin  	// 8
			sseg0 = 1'b0;
			sseg1 = 1'b0;
			sseg2 = 1'b0;
			sseg3 = 1'b0;
			sseg4 = 1'b0;
			sseg5 = 1'b0;
			sseg6 = 1'b0;
			end
			
		4'b1001 : begin  	// 9
			sseg0 = 1'b0;
			sseg1 = 1'b0;
			sseg2 = 1'b0;
			sseg3 = 1'b1;
			sseg4 = 1'b1;
			sseg5 = 1'b0;
			sseg6 = 1'b0;
			end
	endcase
end
endmodule

