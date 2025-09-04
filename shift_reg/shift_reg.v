`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:10:38 09/03/2025 
// Design Name: 
// Module Name:    shift_reg 
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
module shift_reg(
	 input clk,
    input rst,
    input mode,
    output reg [7:0] out
    );
	 
reg next;

initial 
begin
out <= 8'b00000000;
next <= 1'b0;
end

always @(posedge clk)
begin
if(rst)
begin
	out <= 8'b00000000;
	next <= 1'b0;
end
else begin  
	if (mode == 0) 
	begin // sang dan tat dan phai sang trai
		if (next == 1'b0)// huong sang
		begin
			if (out == 8'b11111111) next <= 1'b1;// doi -> tat
			else 
				out <= (out << 1)|1;		
		end
		else 	
			begin
			if (out == 8'h0) next <= 1'b0; // doi -> sang
				else
				out <= out <<1;
			end 
		end
	else begin // sang dan tat dan phai sang trai 

		if (next == 1'b0) // huong sang
		begin
			if (out == 8'b11111111) next <= 1'b1;// tat dan
			else out <= (out >> 1)| 8'b10000000;
			end 
		else // tat
		begin
		if (out <= 8'h0) next <= 1'b0;
		else out <= out >> 1;
		end
	end
	end
	end
endmodule
