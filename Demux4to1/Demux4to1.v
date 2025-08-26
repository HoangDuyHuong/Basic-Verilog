`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:29:25 08/17/2025 
// Design Name: 
// Module Name:    Demux1to4 
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
module Demux1to4(
    input In,
    input [1:0] Sel,
    output reg Y0,Y1,Y2,Y3
    );

always @(*)
begin
case (Sel)
	2'h0: {Y0, Y1, Y2, Y3} = {In, 3'b0};
	2'h1: {Y0, Y1, Y2, Y3} = {1'b0, In, 2'b0};
	2'h2: {Y0, Y1, Y2, Y3} = {2'b0, In, 1'b0};
	2'h3: {Y0, Y1, Y2, Y3} = {3'b0, In};
endcase
end

endmodule
