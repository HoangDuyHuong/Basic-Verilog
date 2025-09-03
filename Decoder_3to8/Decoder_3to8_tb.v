`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:08:20 09/03/2025
// Design Name:   Decoder_3to8
// Module Name:   /home/ise/Decoder_3to8/Dencoder_3to8_tb.v
// Project Name:  Decoder_3to8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decoder_3to8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Dencoder_3to8_tb;

	// Inputs
	reg [2:0] in;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	Decoder_3to8 uut (
		.in(in), 
		.out(out)
	);

	initial begin
		in = 3'h0;
		#100;
		in = 3'h1;
		#100;
		in = 3'h2;
		#100;
		in = 3'h3;
		#100;
		in = 3'h4;
		#100;
		in = 3'h5;
		#100;
		in = 3'h6;
		#100;
		in = 3'h7;
		#100;		
	end
      
endmodule

