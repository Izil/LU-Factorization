`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:08:22 04/17/2016 
// Design Name: 
// Module Name:    globalCounter 
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
module globalCounter(count,clk);

input clk;
output [4:0]count;

parameter limit = 21;

reg [4:0]countReg = 0;

always@(posedge clk)
begin
	if(countReg == limit)
		countReg <= 0;
	else
		countReg <= countReg + 1;
end

assign count = countReg;

endmodule
