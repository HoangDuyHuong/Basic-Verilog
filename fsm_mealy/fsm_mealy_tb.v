`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:40:49 09/04/2025
// Design Name:   fsm_mealy
// Module Name:   /home/ise/fsm_mealy/fsm_mealy_tb.v
// Project Name:  fsm_mealy
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fsm_mealy
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fsm_mealy_tb;

	// Inputs
	reg clk;
	reg rst;
	reg a;
	reg b;

	// Outputs
	wire y1;
	wire y0;

	// Instantiate the Unit Under Test (UUT)
	fsm_mealy uut (
		.clk(clk), 
		.rst(rst), 
		.a(a), 
		.b(b), 
		.y1(y1), 
		.y0(y0)
	);

initial begin
clk = 0;
forever #10 clk = ~clk;
end

	initial begin
	
		rst = 1;
		a = 0;
		b = 0;
		#100;
		rst = 0;
		a = 1;
		b = 1;
		#100;
		rst = 0;
		a = 1;
		b = 0;
		#100;
		rst = 0;
		a = 0;
		b = 0;
		#100;
		rst = 0;
		a = 0;
		b = 0;
		#100;
        

	end
      
endmodule

