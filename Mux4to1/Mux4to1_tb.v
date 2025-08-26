`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:18:16 08/17/2025
// Design Name:   Mux4to1
// Module Name:   /home/ise/Mux4to1/Mux4to1_tb.v
// Project Name:  Mux4to1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux4to1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux4to1_tb;

	// Inputs
	reg A;
	reg B;
	reg C;
	reg D;
	reg [1:0] Sel;

	// Outputs
	wire Out;

	// Instantiate the Unit Under Test (UUT)
	Mux4to1 uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.Sel(Sel), 
		.Out(Out)
	);

	initial begin
		A = 1;
		B = 0;
		C = 1;
		D = 0;
		Sel = 2'b00;
		#100;

		A = 1;
		B = 0;
		C = 1;
		D = 0;
		Sel = 2'b01;
		#100;
		
		A = 1;
		B = 0;
		C = 1;
		D = 0;
		Sel = 2'b10;
		#100;
		
		A = 1;
		B = 0;
		C = 1;
		D = 0;
		Sel = 2'b11;
		#100;


	end
      
endmodule

