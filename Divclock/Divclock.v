`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:32:25 09/03/2025 
// Design Name: 
// Module Name:    Divclock 
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
module Divclock(
    input rst,clk,
    output reg clk_1hz
    );

reg [27:0] count;

always @(posedge clk)
begin
if (rst)
	begin
	clk_1hz <=0;
	count <= 0;
	end
else
	if (count == 25_000_000)
	begin
	clk_1hz <= ~clk_1hz;
	count <=0;
	end
	else
	count <= count + 1;
	
end
endmodule
