`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:55:21 09/03/2025
// Design Name:   FFT
// Module Name:   /home/ise/FFT/FFT_tb.v
// Project Name:  FFT
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FFT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FFT_tb;

	// Inputs
	reg clk;
	reg t;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	FFT uut (
		.clk(clk), 
		.t(t), 
		.q(q)
	);
initial begin
clk =0;
forever #10 clk = ~clk;
end

	initial begin
		t = 0;
		#500;
		t = 1;
		#500;        
		t = 0;
		#500;
		t = 1;
		#500;
		t = 1;
		#500;
	end
      
endmodule

