`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:51:23 08/17/2025
// Design Name:   Full_Adder
// Module Name:   /home/ise/Full_Adder/Full_Adder_tb.v
// Project Name:  Full_Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Full_Adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Full_Adder_tb;

	// Inputs
	reg A;
	reg B;
	reg Cin;

	// Outputs
	wire S;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	Full_Adder uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.S(S), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		A = 1'b0;
		B = 1'b0;
		Cin = 1'b0;
		#100;
		
		A = 1'b0;
		B = 1'b0;
		Cin = 1'b1;
		#100;

		A = 1'b0;
		B = 1'b1;
		Cin = 1'b0;
		#100;

		A = 1'b1;
		B = 1'b0;
		Cin = 1'b1;
		#100;

		A = 1'b1;
		B = 1'b1;
		Cin = 1'b1;
		#100;

		
	

	end
      
endmodule

