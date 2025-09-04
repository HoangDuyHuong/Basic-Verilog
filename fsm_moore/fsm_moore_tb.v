`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:56:57 09/04/2025
// Design Name:   fsm_moore
// Module Name:   /home/ise/fsm_moore/fsm_moore_tb.v
// Project Name:  fsm_moore
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fsm_moore
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fsm_moore_tb;

	// Inputs
	reg clk;
	reg rst;
	reg w;

	// Outputs
	wire z;

	// Instantiate the Unit Under Test (UUT)
	fsm_moore uut (
		.clk(clk), 
		.rst(rst), 
		.w(w), 
		.z(z)
	);

initial begin
clk = 0;
forever #10 clk = ~clk;
end


	initial begin
		rst = 0;
		w = 0;
		#200;
		rst = 1;
		w = 0;
		#200;
		rst = 1;
		w = 1;
		#200;
		rst = 1;
		w = 1;
		#200;
        
	end
      
endmodule

