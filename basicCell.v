`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:43:16 03/18/2016 
// Design Name: 
// Module Name:    basicCell 
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
module basicCell(clk,
					  x,y,z,
					  xOut,yOut,zOut);

parameter SZ = 8;
parameter mSZ = 16;

input clk;
input [SZ-1:0]x,y,z;
output [SZ-1:0]xOut,yOut,zOut;

reg [SZ-1:0]xReg = 0;
reg [SZ-1:0]yReg = 0;
reg [SZ-1:0]zReg = 0;

wire [SZ-1:0]c,mS;
wire [mSZ-1:0]m;

assign m = x*y;
//assign mS = (m >> 8);
assign mS = m[7:0];
assign c = z + mS;	//Optimize

always@(posedge clk)
begin
xReg <= x;
yReg <= y;
zReg <= c;
end

assign xOut = xReg;
assign yOut = yReg;
assign zOut = zReg;

endmodule
