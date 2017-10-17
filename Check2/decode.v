`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:57:50 10/17/2017 
// Design Name: 
// Module Name:    decode 
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
module decode(
    input [2:0] i,
    output [7:0] o
    );
	 
	 reg [7:0] data_out;
	 
	 assign o = data_out;
	 always@ (i)
	 case (i)
		3'b000: data_out = 8'b00000001;
		3'b001: data_out = 8'b00000010;
		3'b010: data_out = 8'b00000100;
		3'b011: data_out = 8'b00001000;
		3'b100: data_out = 8'b00010000;
		3'b101: data_out = 8'b00100000;
		3'b110: data_out = 8'b01000000;
		3'b111: data_out = 8'b10000000;
		default: data_out = 8'b00000000;
		endcase

endmodule
