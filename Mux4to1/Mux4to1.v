`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:14:32 08/17/2025 
// Design Name: 
// Module Name:    Mux4to1 
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
module Mux4to1(
    input A,
    input B,
    input C,
    input D,
	 input [1:0] Sel,
    output reg Out
    );

always @(A or B or C or D or Sel)
begin
case (Sel)
	2'b00: Out <= A;
	2'b01: Out <= B;
	2'b10: Out <= C;
	2'b11: Out <= D;
	endcase
end
endmodule
