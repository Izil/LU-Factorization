`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:50:12 04/18/2016 
// Design Name: 
// Module Name:    luFactorizer 
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
module luFactorizer(clk,
							a11,a12,a13,a14,
							a21,a22,a23,a24,a25,
							a31,a32,a33,a34,a35,a36,
							a41,a42,a43,a44,a45,a46,a47,
								 a52,a53,a54,a55,a56,a57,a58,
									  a63,a64,a65,a66,a67,a68,
										   a74,a75,a76,a77,a78,
												 a85,a86,a87,a88,
							lL1,lL2,lL3,
							uL1,uL2,uL3,uL4);

parameter iSZ = 8;
input clk;
input [iSZ-1:0] a11,a12,a13,a14,
					 a21,a22,a23,a24,a25,
					 a31,a32,a33,a34,a35,a36,
					 a41,a42,a43,a44,a45,a46,a47,
						  a52,a53,a54,a55,a56,a57,a58,
								a63,a64,a65,a66,a67,a68,
									 a74,a75,a76,a77,a78,
										  a85,a86,a87,a88;
output [iSZ-1:0]lL1,lL2,lL3;
output [iSZ-1:0]uL1,uL2,uL3,uL4;

wire [4:0]count;
wire [iSZ-1:0]iL1,iL2,iL3,iL4,iL5,iL6,iL7;

globalCounter g1(count,clk);
synchronizer s1(count,
						a11,a12,a13,a14,
						a21,a22,a23,a24,a25,
						a31,a32,a33,a34,a35,a36,
						a41,a42,a43,a44,a45,a46,a47,
							 a52,a53,a54,a55,a56,a57,a58,
								  a63,a64,a65,a66,a67,a68,
									   a74,a75,a76,a77,a78,
											 a85,a86,a87,a88,
						iL1,iL2,iL3,iL4,iL5,iL6,iL7);

systolicArray a1(iL1,iL2,iL3,iL4,iL5,iL6,iL7,
							lL1,lL2,lL3,
							uL1,uL2,uL3,uL4,
							clk);


endmodule
