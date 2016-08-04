`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:20:20 03/28/2016 
// Design Name: 
// Module Name:    negCell 
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
module negCell(clk,
					x,
					xOut,zOut);
				
parameter SZ = 8;

input clk;
input [SZ-1:0]x;
output [SZ-1:0]xOut,zOut;

reg [SZ-1:0]xReg = 0;
reg [SZ-1:0]zReg = 0;

wire [SZ-1:0]neg;
wire [SZ-1:0]c;

assign neg[0] = ~x[0];
assign neg[1] = ~x[1];
assign neg[2] = ~x[2];
assign neg[3] = ~x[3];
assign neg[4] = ~x[4];
assign neg[5] = ~x[5];
assign neg[6] = ~x[6];
assign neg[7] = ~x[7];
assign c = neg + 8'b00000001;

always@(posedge clk)
begin
	xReg <= x;
	zReg <= c;
end

assign xOut = xReg;
assign zOut = zReg;

endmodule
