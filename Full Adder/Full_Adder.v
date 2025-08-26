`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:47:20 08/17/2025 
// Design Name: 
// Module Name:    Full_Adder 
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
module Full_Adder(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
    );

assign S = A^B^Cin;
assign Cout = (A & B)|(B & Cin)|(Cin & A);

endmodule
