`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:33:39 08/17/2025
// Design Name:   Demux1to4
// Module Name:   /home/ise/Demux1to4/Demux1to4_tb.v
// Project Name:  Demux1to4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Demux1to4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Demux1to4_tb;

	// Inputs
	reg In;
	reg [1:0] Sel;

	// Outputs
	wire Y0;
	wire Y1;
	wire Y2;
	wire Y3;

	// Instantiate the Unit Under Test (UUT)
	Demux1to4 uut (
		.In(In), 
		.Sel(Sel), 
		.Y0(Y0), 
		.Y1(Y1), 
		.Y2(Y2), 
		.Y3(Y3)
	);

	initial begin
		// Initialize Inputs
		In = 1;
		Sel = 2'h0;
		#100;
		
		In = 1;
		Sel = 2'h1;
		#100;

		In = 1;
		Sel = 2'h2;
		#100;

		In = 1;
		Sel = 2'h3;
		#100;

        

	end
      
endmodule

