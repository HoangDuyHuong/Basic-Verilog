`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:51:33 09/03/2025 
// Design Name: 
// Module Name:    FFT 
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
module FFT(
    input clk,
    input t,
    output reg q
    );
initial 
begin
q <= 0;
end

always @(posedge clk)
begin
if(t==0)
	q <= q;
else
	q <= ~q;
	
end
endmodule
