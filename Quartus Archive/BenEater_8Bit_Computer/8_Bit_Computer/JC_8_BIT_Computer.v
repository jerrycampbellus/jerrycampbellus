
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module JC_8_BIT_Computer(

	//////////// CLOCK //////////
	input 		          		MAX10_CLK1_50,

	//////////// SEG7 //////////
	output		     [7:0]		HEX0,
	output		     [7:0]		HEX1,
	output		     [7:0]		HEX2,
	output		     [7:0]		HEX3,
	output		     [7:0]		HEX4,
	output		     [7:0]		HEX5,

	//////////// KEY //////////
	input 		     [1:0]		KEY,

	//////////// LED //////////
	output		     [9:0]		LEDR,

	//////////// SW //////////
	input 		     [9:0]		SW
);



//=======================================================
//  REG/WIRE declarations
//=======================================================




//=======================================================
//  Structural coding
//=======================================================


BE_8_BIT_Computer BE_8_BIT_Computer_inst
(
	.FPGA_CLK_SOURCE(MAX10_CLK1_50) ,	// input  FPGA_CLK_SOURCE_sig
	.CLK_SELECT(SW[0]) ,						// input  CLK_SELECT_sig
	.CLK_STEP(KEY[1]) ,						// input  CLK_STEP_sig
	.DISPLAY_SELECT (SW[7:4]) ,			// input [3:0] DISPLAY_SELECT _sig
	.CLK_DIVIDER (SW[3:1]) ,				// input [2:0] CLK_DIVIDER _sig
	.CLR(~KEY[0]) ,							// input  CLR_sig
	.TWOS_COMPLEMENT(SW[8]) ,				// input  TWOS_COMPLEMENT_sig
	.HEXADECIMAL_FLAG(SW[9]) ,				// input  HEXADECIMAL_FLAG_sig
	.LED (LEDR[8:1]) ,						// output [7:0] LED _sig
	.SEVEN_SEG_0 (HEX0) ,					// output [7:0] SEVEN_SEG_0 _sig
	.SEVEN_SEG_1 (HEX1) ,					// output [7:0] SEVEN_SEG_1 _sig
	.SEVEN_SEG_2 (HEX2) ,					// output [7:0] SEVEN_SEG_2 _sig
	.SEVEN_SEG_3 (HEX3) ,					// output [7:0] SEVEN_SEG_3 _sig
	.SEVEN_SEG_4 (HEX4) ,					// output [7:0] SEVEN_SEG_4 _sig
	.SEVEN_SEG_5 (HEX5) ,					// output [7:0] SEVEN_SEG_5 _sig
	.HLT_LED(LEDR[9]) ,						// output  HLT_LED_sig
	.CLK_LED(LEDR[0]) 						// output  CLK_LED_sig
);


endmodule
