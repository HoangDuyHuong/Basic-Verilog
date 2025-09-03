`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:25:14 09/03/2025 
// Design Name: 
// Module Name:    Encoder_8to3 
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
module Encoder_8to3(
    input [7:0] in,
    output reg [2:0] out
    );

always @ (*) 
begin
case (in)
8'b00000001: out = 3'h0;
8'b00000010: out = 3'h1;
8'b00000100: out = 3'h2;
8'b00001000: out = 3'h3;
8'b00010000: out = 3'h4;
8'b00100000: out = 3'h5;
8'b01000000: out = 3'h6;
8'b10000000: out = 3'h7;
default out = 3'bxxx;
endcase
end
endmodule
