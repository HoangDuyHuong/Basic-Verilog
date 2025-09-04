`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:20:14 09/04/2025 
// Design Name: 
// Module Name:    fsm_mealy 
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
module fsm_mealy(
    input clk,
    input rst,
    input a,
    input b,
    output y1,
    output y0
    );

localparam [1:0] S0 = 2'b00, S1 = 2'b01, S2 = 2'b10;
reg [1:0] ht, kt; // trang thai hien tai, trang thai ke tiep
always @(posedge clk, posedge rst)
if (rst) ht = S0;
else ht = kt;

always @(*)
case(ht)
S0:  if(a) if(b) kt = S2;
				else kt = S1;
			else kt = S0;
S1: if (a) kt = S0;
	else kt = S1;
S2: kt = S0;
default: kt = S0;
endcase

// output moore machine 
assign y1 = (ht == S0)||(ht == S1);
// out put mealy machine
assign y0 = (ht == S0)&a&b;
endmodule
