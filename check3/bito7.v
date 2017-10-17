`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:46:53 10/17/2017 
// Design Name: 
// Module Name:    bito7 
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
module bito7(
    input [3:0] i,
    output [7:0] o
    );
	 
	 reg [7:0] data_out;
	 
	 assign o = data_out;
	 always@ (i)
	 case (i)
		4'b0000: data_out = 7'b00111111;
		4'b0001: data_out = 7'b00000110;
		4'b0010: data_out = 7'b01011011;
		4'b0011: data_out = 7'b01001111;
		4'b0100: data_out = 7'b01100110;
		4'b0101: data_out = 7'b01101101;
		4'b0110: data_out = 7'b01111101;
		4'b0111: data_out = 7'b00000111;
		4'b1000: data_out = 7'b01111111;
		4'b1001: data_out = 7'b01101111;
		4'b1010: data_out = 7'b01110111;
		4'b1011: data_out = 7'b01111100;
		4'b1100: data_out = 7'b00111001;
		4'b1101: data_out = 7'b01011110;
		4'b1110: data_out = 7'b01111001;
		4'b1111: data_out = 7'b01110001;
		endcase

endmodule
