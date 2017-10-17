`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:28:25 10/17/2017 
// Design Name: 
// Module Name:    bito7sec 
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

module bito7sec(
    input [2:0] i,
    output [6:0] o
    );
	 
	 reg [6:0] data_out;
	 
	 assign o = data_out;
	 always@ (i)
	 case (i)
		4'b0000: data_out = 7'b1111110;
		4'b001: data_out = 7'b0110000;
		4'b010: data_out = 7'b1101101;
		4'b011: data_out = 7'b1111001;
		4'b100: data_out = 7'b0110011;
		4'b101: data_out = 7'b1011011;
		4'b110: data_out = 7'b1011111;
		4'b111: data_out = 7'b1110000;
		default: data_out = 7'b00000000;
		endcase

endmodule