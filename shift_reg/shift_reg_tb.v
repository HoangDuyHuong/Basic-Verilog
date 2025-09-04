`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:27:10 09/04/2025
// Design Name:   shift_reg
// Module Name:   /home/ise/shift_reg/shift_reg_tb.v
// Project Name:  shift_reg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shift_reg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

	module shift_reg_tb;

	// Inputs
	reg clk;
	reg rst;
	reg mode;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	shift_reg uut (
		.clk(clk), 
		.rst(rst), 
		.mode(mode), 
		.out(out)
	);

initial begin
clk = 0;
forever #10 clk = ~clk;
end


	initial begin
		rst = 1;
		mode = 0;
		#500;
		rst = 0;
		mode = 0;
		#1000;
		rst = 0;
		mode = 1;
		#1000;
		

	end
      
endmodule

