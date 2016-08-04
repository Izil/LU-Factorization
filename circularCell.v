`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:17:54 03/21/2016 
// Design Name: 
// Module Name:    circularCell 
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
module circularCell(clk,
						  x,
						  xInv,xOut);

parameter SZ = 8;

input clk;
input [SZ-1:0]x;
output [SZ-1:0]xInv;
output [SZ-1:0]xOut;

reg [SZ-1:0]xReg;
reg [SZ-1:0]xInvReg;

wire [SZ-1:0]I;
assign I = x;

always @(posedge clk)
begin
	xReg <= x;
	xInvReg <= I;
end

assign xInv = xInvReg;
assign xOut = xReg;

endmodule
