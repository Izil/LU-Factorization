`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:16:54 04/18/2016
// Design Name:   luFactorizer
// Module Name:   E:/Acads/VI Sem/VLSI Lab/LU Factorization by Systolic Array/luFactorizer/testppr.v
// Project Name:  luFactorizer
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: luFactorizer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testppr;

	// Inputs
	reg clk;
	reg [7:0] a11;
	reg [7:0] a12;
	reg [7:0] a13;
	reg [7:0] a14;
	reg [7:0] a21;
	reg [7:0] a22;
	reg [7:0] a23;
	reg [7:0] a24;
	reg [7:0] a25;
	reg [7:0] a31;
	reg [7:0] a32;
	reg [7:0] a33;
	reg [7:0] a34;
	reg [7:0] a35;
	reg [7:0] a36;
	reg [7:0] a41;
	reg [7:0] a42;
	reg [7:0] a43;
	reg [7:0] a44;
	reg [7:0] a45;
	reg [7:0] a46;
	reg [7:0] a47;
	reg [7:0] a52;
	reg [7:0] a53;
	reg [7:0] a54;
	reg [7:0] a55;
	reg [7:0] a56;
	reg [7:0] a57;
	reg [7:0] a58;
	reg [7:0] a63;
	reg [7:0] a64;
	reg [7:0] a65;
	reg [7:0] a66;
	reg [7:0] a67;
	reg [7:0] a68;
	reg [7:0] a74;
	reg [7:0] a75;
	reg [7:0] a76;
	reg [7:0] a77;
	reg [7:0] a78;
	reg [7:0] a85;
	reg [7:0] a86;
	reg [7:0] a87;
	reg [7:0] a88;

	// Outputs
	wire [7:0] lL1;
	wire [7:0] lL2;
	wire [7:0] lL3;
	wire [7:0] uL1;
	wire [7:0] uL2;
	wire [7:0] uL3;
	wire [7:0] uL4;
	
	integer f1,f2;

	// Instantiate the Unit Under Test (UUT)
	luFactorizer uut (
		.clk(clk), 
		.a11(a11), 
		.a12(a12), 
		.a13(a13), 
		.a14(a14), 
		.a21(a21), 
		.a22(a22), 
		.a23(a23), 
		.a24(a24), 
		.a25(a25), 
		.a31(a31), 
		.a32(a32), 
		.a33(a33), 
		.a34(a34), 
		.a35(a35), 
		.a36(a36), 
		.a41(a41), 
		.a42(a42), 
		.a43(a43), 
		.a44(a44), 
		.a45(a45), 
		.a46(a46), 
		.a47(a47), 
		.a52(a52), 
		.a53(a53), 
		.a54(a54), 
		.a55(a55), 
		.a56(a56), 
		.a57(a57), 
		.a58(a58), 
		.a63(a63), 
		.a64(a64), 
		.a65(a65), 
		.a66(a66), 
		.a67(a67), 
		.a68(a68), 
		.a74(a74), 
		.a75(a75), 
		.a76(a76), 
		.a77(a77), 
		.a78(a78), 
		.a85(a85), 
		.a86(a86), 
		.a87(a87), 
		.a88(a88), 
		.lL1(lL1), 
		.lL2(lL2), 
		.lL3(lL3), 
		.uL1(uL1), 
		.uL2(uL2), 
		.uL3(uL3), 
		.uL4(uL4)
	);

	initial begin
		f1 = $fopen("L Transpose","w");
		f2 = $fopen("U","w");
		// Initialize Inputs
		clk = 0;
		a11 = 0;
		a12 = 0;
		a13 = 0;
		a14 = 0;
		a21 = 0;
		a22 = 0;
		a23 = 0;
		a24 = 0;
		a25 = 0;
		a31 = 0;
		a32 = 0;
		a33 = 0;
		a34 = 0;
		a35 = 0;
		a36 = 0;
		a41 = 0;
		a42 = 0;
		a43 = 0;
		a44 = 0;
		a45 = 0;
		a46 = 0;
		a47 = 0;
		a52 = 0;
		a53 = 0;
		a54 = 0;
		a55 = 0;
		a56 = 0;
		a57 = 0;
		a58 = 0;
		a63 = 0;
		a64 = 0;
		a65 = 0;
		a66 = 0;
		a67 = 0;
		a68 = 0;
		a74 = 0;
		a75 = 0;
		a76 = 0;
		a77 = 0;
		a78 = 0;
		a85 = 0;
		a86 = 0;
		a87 = 0;
		a88 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	end
	
	always begin
			#16 clk = !clk;
		end
	
	reg [4:0]count = 0;
	always@(posedge clk)
	begin
		count = count + 1;
		case(count)
		8 :begin
				$fwrite(f1,"%d",uL1);
				$fwrite(f2,"%d",uL1);
			end
		9 :begin
				$fwrite(f1,"%d",lL3);
				$fwrite(f2,"%d",uL2);
			end
		10 :begin
				$fwrite(f1,"%d",lL2);
				$fwrite(f2,"%d",uL3);
			end
		11 :begin
				$fwrite(f1,"%d ",lL1);
				$fwrite(f2,"%d ",uL4);
				$fwrite(f1,"0 0 0 0\n 0 ");
				$fwrite(f2,"0 0 0 0\n 0 ");
				$fwrite(f1,"%d",uL1);
				$fwrite(f2,"%d",uL1);
			end
		12 :begin
				$fwrite(f1,"%d",lL3);
				$fwrite(f2,"%d",uL2);
			end
		13 :begin
				$fwrite(f1,"%d",lL2);
				$fwrite(f2,"%d",uL3);
			end
		14 :begin
				$fwrite(f1,"%d ",lL1);
				$fwrite(f2,"%d ",uL4);
				$fwrite(f1,"0 0 0\n 0 0 ");
				$fwrite(f2,"0 0 0\n 0 0 ");
				$fwrite(f1,"%d",uL1);
				$fwrite(f2,"%d",uL1);
			end
		15 :begin
				$fwrite(f1,"%d",lL3);
				$fwrite(f2,"%d",uL2);
			end
		16 :begin
				$fwrite(f1,"%d",lL2);
				$fwrite(f2,"%d",uL3);
			end
		17 :begin
				$fwrite(f1,"%d ",lL1);
				$fwrite(f2,"%d ",uL4);
				$fwrite(f1,"0 0\n 0 0 0 ");
				$fwrite(f2,"0 0\n 0 0 0 ");
				$fwrite(f1,"%d",uL1);
				$fwrite(f2,"%d",uL1);
			end
		18 :begin
				$fwrite(f1,"%d",lL3);
				$fwrite(f2,"%d",uL2);
			end
		19 :begin
				$fwrite(f1,"%d",lL2);
				$fwrite(f2,"%d",uL3);
			end
		20 :begin
				$fwrite(f1,"%d ",lL1);
				$fwrite(f2,"%d ",uL4);
				$fwrite(f1,"0\n 0 0 0 0 ");
				$fwrite(f2,"0\n 0 0 0 0 ");
				$fwrite(f1,"%d",uL1);
				$fwrite(f2,"%d",uL1);
			end
		21 :begin
				$fwrite(f1,"%d",lL3);
				$fwrite(f2,"%d",uL2);
			end
		22 :begin
				$fwrite(f1,"%d",lL2);
				$fwrite(f2,"%d",uL3);
			end
		23 :begin
				$fwrite(f1,"%d ",lL1);
				$fwrite(f2,"%d ",uL4);
				$fwrite(f1,"\n 0 0 0 0 0 ");
				$fwrite(f2,"\n 0 0 0 0 0 ");
				$fwrite(f1,"%d",uL1);
				$fwrite(f2,"%d",uL1);
			end
		24 :begin
				$fwrite(f1,"%d",lL3);
				$fwrite(f2,"%d",uL2);
			end
		25 :begin
				$fwrite(f1,"%d ",lL2);
				$fwrite(f2,"%d ",uL3);
			end
		26 :begin
				$fwrite(f1,"\n 0 0 0 0 0 0 ");
				$fwrite(f2,"\n 0 0 0 0 0 0 ");
				$fwrite(f1,"%d ",uL1);
				$fwrite(f2,"%d ",uL1);
			end
		27 :begin
				$fwrite(f1,"%d ",lL3);
				$fwrite(f2,"%d ",uL2);
			end
		28 :begin
			end
		29 :begin
				$fwrite(f1,"\n 0 0 0 0 0 0 0 ");
				$fwrite(f2,"\n 0 0 0 0 0 0 0 ");
				$fwrite(f1,"%d",uL1);
				$fwrite(f2,"%d",uL1);
			end
		default:begin
				end
		endcase
		if(count > 29)
		begin
			clk = 0;
			$fclose(f1);
			$fclose(f2);
		end
	end
	
	initial
	begin
//		a11 = 1;
//		a12 = 2;
//		a13 = 3;
//		a14 = 4;
//		a21 = 2;
//		a22 = 5;
//		a23 = 10;
//		a24 = 13;
//		a25 = 6;
//		a31 = 3;
//		a32 = 11;
//		a33 = 30;
//		a34 = 44;
//		a35 = 38;
//		a36 = 9;
//		a41 = 0;
//		a42 = 6;
//		a43 = 29;
//		a44 = 66;
//		a45 = 85;
//		a46 = 54;
//		a47 = 8;
//		a52 = 0;
//		a53 = 9;
//		a54 = 65;
//		a55 = 91;
//		a56 = 106;
//		a57 = 22;
//		a58 = 5;
//		a63 = 0;
//		a64 = 2;
//		a65 = 22;
//		a66 = 47;
//		a67 = 41;
//		a68 = 22;
//		a74 = 0;
//		a75 = 5;
//		a76 = 37;
//		a77 = 33;
//		a78 = 32;
//		a85 = 0;
//		a86 = 5;
//		a87 = 8;
//		a88 = 20;
		a11 = 1;
		a12 = 2;
		a13 = 3;
		a14 = 4;
		a21 = 2;
		a22 = 5;
		a23 = 10;
		a24 = 13;
		a25 = 6;
		a31 = 3;
		a32 = 11;
		a33 = 30;
		a34 = 44;
		a35 = 38;
		a36 = 9;
		a41 = 4;
		a42 = 14;
		a43 = 41;
		a44 = 82;
		a45 = 85;
		a46 = 54;
		a47 = 8;
		a52 = 7;
		a53 = 37;
		a54 = 100;
		a55 = 133;
		a56 = 106;
		a57 = 22;
		a58 = 5;
		a63 = 8;
		a64 = 58;
		a65 = 86;
		a66 = 119;
		a67 = 41;
		a68 = 22;
		a74 = 4;
		a75 = 41;
		a76 = 73;
		a77 = 65;
		a78 = 32;
		a85 = 4;
		a86 = 33;
		a87 = 32;
		a88 = 40;
	end	
      		
endmodule

