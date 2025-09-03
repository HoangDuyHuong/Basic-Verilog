`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:40:38 09/03/2025
// Design Name:   Divclock
// Module Name:   /home/ise/Divclock/Divclock_tb.v
// Project Name:  Divclock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Divclock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Divclock_tb;

	// Inputs
	reg rst;
	reg clk;

	// Outputs
	wire clk_1hz;

	// Instantiate the Unit Under Test (UUT)
	Divclock uut (
		.rst(rst), 
		.clk(clk), 
		.clk_1hz(clk_1hz)
	);

initial 
begin
clk = 0;
forever #10 clk = ~clk;
end 


	initial begin
		// Initialize Inputs
		rst = 1;
		#100;
		rst = 0;
		#100;
        

	end
      
endmodule

