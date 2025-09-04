`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:14:22 09/04/2025 
// Design Name: 
// Module Name:    fsm_moore 
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
module fsm_moore(
    input clk,
    input rst,
    input w,
    output z
    );

reg [1:0] ht, kt;
parameter [1:0] A = 2'b00, B = 2'b01, C = 2'b 10;

always @(w, ht)
case (ht)
A: if (w) kt = B;
	else kt = A;
B: if (w) kt = C;
	else kt = A;
C: if (w) kt = C;
	else kt = A;
default kt = 2'bxx;
endcase

always @(posedge clk, negedge rst)
if (rst == 0)
ht <= A;
else 
ht <= kt;
assign z = (ht == C);

endmodule
