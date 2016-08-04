`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:34:40 03/28/2016 
// Design Name: 
// Module Name:    systolicArray 
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
module systolicArray(iL1,iL2,iL3,iL4,iL5,iL6,iL7,
							lL1,lL2,lL3,
							uL1,uL2,uL3,uL4,
							clk);
							
parameter iSZ = 8;
parameter oSZ = 16;

input clk;
input [iSZ-1:0]iL1,iL2,iL3,iL4,iL5,iL6,iL7;
output [iSZ-1:0]lL1,lL2,lL3;
output [iSZ-1:0]uL1,uL2,uL3,uL4;

wire [iSZ-1:0] x1,x2,x3,x4,x5,x6,x7,x8,x9;
wire [iSZ-1:0] y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11;
wire [iSZ-1:0] yInv,pass;
wire [iSZ-1:0] z1,z2,z3,z4,z5,z6,z7,z8,z9;
wire [iSZ-1:0] u2W,u3W,u4W;

vertexCell v1(clk,x1,y1,iL4,z1);
vertexCell v2(clk,iL1,y11,8'b00000000,y3);

edgeCell   e1(clk,y3,x7,iL2,y2,z4);
edgeCell   e2(clk,y2,x4,iL3,y1,z2);
edgeCell	  e3(clk,x2,y4,iL5,x1,z3);
edgeCell   e4(clk,x3,y7,iL6,x2,z6);
//edgeCell   e5(clk,iL7,x11,0,uL4,x3);
edgeCell   e6(clk,y10,z4,8'b00000000,y11,y6);
edgeCell   e7(clk,yInv,z7,8'b00000000,y10,y9);

basicCell b1(clk,x5,y5,z1,x4,y4,z5);
basicCell b2(clk,x8,y6,z2,x7,y5,z7);
basicCell b3(clk,x6,y8,z3,x5,y7,z8);
basicCell b4(clk,x9,y9,z5,x8,y8,z9);
//basicCell b5(clk,x10,z6,0,x11,uL3,x6);
//basicCell b6(clk,-1,z8,0,x10,uL2,x9);

negCell n1(clk,z8,u2W,x9);
negCell n2(clk,z6,u3W,x6);
negCell n3(clk,iL7,u4W,x3);

circularCell c1(clk,z9,yInv,pass);

assign lL1 = y3;
assign lL2 = y6;
assign lL3 = y9;

assign uL1 = pass;
assign uL2 = u2W;
assign uL3 = u3W;
assign uL4 = u4W;
 
endmodule
