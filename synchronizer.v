`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:26:30 04/16/2016 
// Design Name: 
// Module Name:    synchronizer 
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
module synchronizer(count,
							a11,a12,a13,a14,
							a21,a22,a23,a24,a25,
							a31,a32,a33,a34,a35,a36,
							a41,a42,a43,a44,a45,a46,a47,
								 a52,a53,a54,a55,a56,a57,a58,
									  a63,a64,a65,a66,a67,a68,
										   a74,a75,a76,a77,a78,
												 a85,a86,a87,a88,
							iL1,iL2,iL3,iL4,iL5,iL6,iL7);


input [4:0]count;
input [7:0] a11,a12,a13,a14,
				a21,a22,a23,a24,a25,
				a31,a32,a33,a34,a35,a36,
				a41,a42,a43,a44,a45,a46,a47,
					 a52,a53,a54,a55,a56,a57,a58,
						  a63,a64,a65,a66,a67,a68,
								a74,a75,a76,a77,a78,
									 a85,a86,a87,a88;
output [7:0]iL1,iL2,iL3,iL4,iL5,iL6,iL7;

reg [7:0]iL1Reg = 0;
reg [7:0]iL2Reg = 0;
reg [7:0]iL3Reg = 0;
reg [7:0]iL4Reg = 0;
reg [7:0]iL5Reg = 0;
reg [7:0]iL6Reg = 0;
reg [7:0]iL7Reg = 0;

always@ (*)
begin
	case(count)
	0 : begin
			iL1Reg <= 0;
			iL2Reg <= 0;
			iL3Reg <= 0;
			iL4Reg <= a11;
			iL5Reg <= 0;
			iL6Reg <= 0;
			iL7Reg <= 0;
		  end
	1 : begin
			iL1Reg <= 0;
			iL2Reg <= 0;
			iL3Reg <= 0;
			iL4Reg <= 0;
			iL5Reg <= 0;
			iL6Reg <= 0;
			iL7Reg <= 0;
		  end
	2 : begin
			iL1Reg <= 0;
			iL2Reg <= 0;
			iL3Reg <= a21;
			iL4Reg <= 0;
			iL5Reg <= a12;
			iL6Reg <= 0;
			iL7Reg <= 0;
		  end
	3 : begin
			iL1Reg <= 0;
			iL2Reg <= 0;
			iL3Reg <= 0;
			iL4Reg <= a22;
			iL5Reg <= 0;
			iL6Reg <= 0;
			iL7Reg <= 0;
		  end
	4 : begin
			iL1Reg <= 0;
			iL2Reg <= a31;
			iL3Reg <= 0;
			iL4Reg <= 0;
			iL5Reg <= 0;
			iL6Reg <= a13;
			iL7Reg <= 0;
		  end
	5 : begin
			iL1Reg <= 0;
			iL2Reg <= 0;
			iL3Reg <= a32;
			iL4Reg <= 0;
			iL5Reg <= a23;
			iL6Reg <= 0;
			iL7Reg <= 0;
		  end
	6 : begin
			iL1Reg <= a41;
			iL2Reg <= 0;
			iL3Reg <= 0;
			iL4Reg <= a33;
			iL5Reg <= 0;
			iL6Reg <= 0;
			iL7Reg <= a14;
		  end
	7 : begin
			iL1Reg <= 0;
			iL2Reg <= a42;
			iL3Reg <= 0;
			iL4Reg <= 0;
			iL5Reg <= 0;
			iL6Reg <= a24;
			iL7Reg <= 0;
		  end
	8 : begin
			iL1Reg <= 0;
			iL2Reg <= 0;
			iL3Reg <= a43;
			iL4Reg <= 0;
			iL5Reg <= a34;
			iL6Reg <= 0;
			iL7Reg <= 0;
		  end
	9 : begin
			iL1Reg <= a52;
			iL2Reg <= 0;
			iL3Reg <= 0;
			iL4Reg <= a44;
			iL5Reg <= 0;
			iL6Reg <= 0;
			iL7Reg <= a25;
		  end
	10 : begin
			iL1Reg <= 0;
			iL2Reg <= a53;
			iL3Reg <= 0;
			iL4Reg <= 0;
			iL5Reg <= 0;
			iL6Reg <= a35;
			iL7Reg <= 0;
		  end
	11 : begin
			iL1Reg <= 0;
			iL2Reg <= 0;
			iL3Reg <= a54;
			iL4Reg <= 0;
			iL5Reg <= a45;
			iL6Reg <= 0;
			iL7Reg <= 0;
		  end
	12 : begin
			iL1Reg <= a63;
			iL2Reg <= 0;
			iL3Reg <= 0;
			iL4Reg <= a55;
			iL5Reg <= 0;
			iL6Reg <= 0;
			iL7Reg <= a36;
		  end
	13 : begin
			iL1Reg <= 0;
			iL2Reg <= a64;
			iL3Reg <= 0;
			iL4Reg <= 0;
			iL5Reg <= 0;
			iL6Reg <= a46;
			iL7Reg <= 0;
		  end
	14 : begin
			iL1Reg <= 0;
			iL2Reg <= 0;
			iL3Reg <= a65;
			iL4Reg <= 0;
			iL5Reg <= a56;
			iL6Reg <= 0;
			iL7Reg <= 0;
		  end
	15 : begin
			iL1Reg <= a74;
			iL2Reg <= 0;
			iL3Reg <= 0;
			iL4Reg <= a66;
			iL5Reg <= 0;
			iL6Reg <= 0;
			iL7Reg <= a47;
		  end
	16 : begin
			iL1Reg <= 0;
			iL2Reg <= a75;
			iL3Reg <= 0;
			iL4Reg <= 0;
			iL5Reg <= 0;
			iL6Reg <= a57;
			iL7Reg <= 0;
		  end
	17 : begin
			iL1Reg <= 0;
			iL2Reg <= 0;
			iL3Reg <= a76;
			iL4Reg <= 0;
			iL5Reg <= a67;
			iL6Reg <= 0;
			iL7Reg <= 0;
		  end
	18 : begin
			iL1Reg <= a85;
			iL2Reg <= 0;
			iL3Reg <= 0;
			iL4Reg <= a77;
			iL5Reg <= 0;
			iL6Reg <= 0;
			iL7Reg <= a58;
		  end
	19 : begin
			iL1Reg <= 0;
			iL2Reg <= a86;
			iL3Reg <= 0;
			iL4Reg <= 0;
			iL5Reg <= 0;
			iL6Reg <= a68;
			iL7Reg <= 0;
		  end
	20 : begin
			iL1Reg <= 0;
			iL2Reg <= 0;
			iL3Reg <= a87;
			iL4Reg <= 0;
			iL5Reg <= a78;
			iL6Reg <= 0;
			iL7Reg <= 0;
		  end
	21 : begin
			iL1Reg <= 0;
			iL2Reg <= 0;
			iL3Reg <= 0;
			iL4Reg <= a88;
			iL5Reg <= 0;
			iL6Reg <= 0;
			iL7Reg <= 0;
		  end
	default : begin
			iL1Reg <= 0;
			iL2Reg <= 0;
			iL3Reg <= 0;
			iL4Reg <= 0;
			iL5Reg <= 0;
			iL6Reg <= 0;
			iL7Reg <= 0;
		  end
	endcase
end

assign iL1 = iL1Reg;		  
assign iL2 = iL2Reg;
assign iL3 = iL3Reg;
assign iL4 = iL4Reg;
assign iL5 = iL5Reg;
assign iL6 = iL6Reg;
assign iL7 = iL7Reg;

endmodule
