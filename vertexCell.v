`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:21:49 03/28/2016 
// Design Name: 
// Module Name:    vertexCell 
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
module vertexCell(clk,
						x,y,z,
						zOut);
						
parameter SZ = 8;
parameter mSZ = 16;

input clk;
input [SZ-1:0]x,y,z;
output [SZ-1:0]zOut;

reg [SZ-1:0]zReg = 0;

wire [SZ-1:0]c,mS;
wire [mSZ-1:0]m;

assign m = x*y;
//assign mS = (m >> 8);
assign mS = m[7:0];
assign c = z + mS;	//Optimize

always@(posedge clk)
begin
zReg <= c;
end

assign zOut = zReg;
			
endmodule
