`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:04:14 09/03/2025 
// Design Name: 
// Module Name:    Decoder_3to8 
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
module Decoder_3to8(
    input [2:0] in,
    output reg [7:0] out
    );
always @(*) begin
case (in)
3'h0: out = 8'b00000001;
3'h1: out = 8'b00000010;
3'h2: out = 8'b00000100;
3'h3: out = 8'b00001000;
3'h4: out = 8'b00010000;
3'h5: out = 8'b00100000;
3'h6: out = 8'b01000000;
3'h7: out = 8'b10000000;
endcase
end
endmodule
