// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
// CREATED		"Tue Jan 11 14:25:48 2022"

module BE_8_BIT_Computer(
	FPGA_CLK_SOURCE,
	CLK_SELECT,
	CLK_STEP,
	CLR,
	TWOS_COMPLEMENT,
	HEXADECIMAL_FLAG,
	CLK_DIVIDER,
	DISPLAY_SELECT,
	HLT_LED,
	CLK_LED,
	LED,
	SEVEN_SEG_0,
	SEVEN_SEG_1,
	SEVEN_SEG_2,
	SEVEN_SEG_3,
	SEVEN_SEG_4,
	SEVEN_SEG_5
);


input wire	FPGA_CLK_SOURCE;
input wire	CLK_SELECT;
input wire	CLK_STEP;
input wire	CLR;
input wire	TWOS_COMPLEMENT;
input wire	HEXADECIMAL_FLAG;
input wire	[2:0] CLK_DIVIDER;
input wire	[3:0] DISPLAY_SELECT;
output wire	HLT_LED;
output wire	CLK_LED;
output wire	[7:0] LED;
output wire	[7:0] SEVEN_SEG_0;
output wire	[7:0] SEVEN_SEG_1;
output wire	[7:0] SEVEN_SEG_2;
output wire	[7:0] SEVEN_SEG_3;
output wire	[7:0] SEVEN_SEG_4;
output wire	[7:0] SEVEN_SEG_5;

wire	[7:0] CPU_FLAGS;
wire	[7:0] gdfx_temp0;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_45;
wire	[7:0] SYNTHESIZED_WIRE_4;
wire	[7:0] SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_12;
wire	[3:0] SYNTHESIZED_WIRE_13;
wire	[3:0] SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	[7:0] SYNTHESIZED_WIRE_19;
wire	[7:0] SYNTHESIZED_WIRE_20;
wire	[7:0] SYNTHESIZED_WIRE_21;
wire	[15:0] SYNTHESIZED_WIRE_22;
wire	[16:0] SYNTHESIZED_WIRE_23;
wire	[7:0] SYNTHESIZED_WIRE_24;
wire	[7:0] SYNTHESIZED_WIRE_25;
wire	[3:0] SYNTHESIZED_WIRE_26;
wire	[3:0] SYNTHESIZED_WIRE_27;
wire	[7:0] SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	[3:0] SYNTHESIZED_WIRE_44;

assign	HLT_LED = SYNTHESIZED_WIRE_15;
assign	CLK_LED = SYNTHESIZED_WIRE_45;




ALU	b2v_ALU(
	.ALU_OUT(SYNTHESIZED_WIRE_0),
	.SUBTRACT(SYNTHESIZED_WIRE_1),
	.ALU_FLAGS_OUT(SYNTHESIZED_WIRE_2),
	.CLK(SYNTHESIZED_WIRE_45),
	.A_REGISTER_IN(SYNTHESIZED_WIRE_4),
	.B_REGISTER_IN(SYNTHESIZED_WIRE_5),
	.ALU_DB(gdfx_temp0),
	.ALU_DISPLAY(SYNTHESIZED_WIRE_20),
	.CPU_Flags(CPU_FLAGS));


A_Register	b2v_AR(
	.A_REG_OUT_EN(SYNTHESIZED_WIRE_6),
	.A_REG_IN_EN(SYNTHESIZED_WIRE_7),
	.CLK(SYNTHESIZED_WIRE_45),
	.CLR(CLR),
	.A_REG_IN(gdfx_temp0),
	.A_REG_ALU(SYNTHESIZED_WIRE_4),
	.A_REG_DISPLAY(SYNTHESIZED_WIRE_19),
	.A_REG_OUT_DB(gdfx_temp0));


B_Register	b2v_BR(
	.B_REG_OUT_EN(SYNTHESIZED_WIRE_9),
	.B_REG_IN_EN(SYNTHESIZED_WIRE_10),
	.CLK(SYNTHESIZED_WIRE_45),
	.CLR(CLR),
	.B_REG_IN(gdfx_temp0),
	.B_REG_ALU(SYNTHESIZED_WIRE_5),
	.B_REG_DISPLAY(SYNTHESIZED_WIRE_21),
	.B_REG_OUT_DB(gdfx_temp0));


Control_Logic	b2v_CL(
	.CLR(CLR),
	.NOT_CLK(SYNTHESIZED_WIRE_12),
	.ALU_FLGS(CPU_FLAGS),
	.OPCODE(SYNTHESIZED_WIRE_13),
	.OPERAND(SYNTHESIZED_WIRE_14),
	.HALT(SYNTHESIZED_WIRE_15),
	.JUMP(SYNTHESIZED_WIRE_37),
	.PRGM_COUNT_ENBL(SYNTHESIZED_WIRE_39),
	.PRGM_COUNT_OUT(SYNTHESIZED_WIRE_40),
	.A_REG_OUT(SYNTHESIZED_WIRE_6),
	.A_REG_IN(SYNTHESIZED_WIRE_7),
	.ALU_OUT(SYNTHESIZED_WIRE_0),
	.SUBTRACT(SYNTHESIZED_WIRE_1),
	.ALU_FLGS_OUT(SYNTHESIZED_WIRE_2),
	.B_REG_OUT(SYNTHESIZED_WIRE_9),
	.B_REG_IN(SYNTHESIZED_WIRE_10),
	.RAM_READ_ENABLE(SYNTHESIZED_WIRE_42),
	.RAM_WRITE_ENABLE(SYNTHESIZED_WIRE_43),
	.INST_REG_OUT(SYNTHESIZED_WIRE_29),
	.INST_REG_IN(SYNTHESIZED_WIRE_30),
	.MEMORY_ADDRESS_IN(SYNTHESIZED_WIRE_33),
	.MAR_ENABLE(SYNTHESIZED_WIRE_34),
	.DB_ENABLE(SYNTHESIZED_WIRE_17),
	.OUTPUT_IN(SYNTHESIZED_WIRE_36),
	.CONTROL_FLAGS_OUT(SYNTHESIZED_WIRE_22));


BE_Clock	b2v_CLK(
	.iCLK(FPGA_CLK_SOURCE),
	.CLK_SELECT(CLK_SELECT),
	.CLK_STEP(CLK_STEP),
	.HLT(SYNTHESIZED_WIRE_15),
	.CLR(CLR),
	.DIV_CLK(CLK_DIVIDER),
	.CLK(SYNTHESIZED_WIRE_45),
	.NOT_CLK(SYNTHESIZED_WIRE_12),
	.DISPLAY_CLK(SYNTHESIZED_WIRE_18));


Data_Bus	b2v_DB(
	.CLK(SYNTHESIZED_WIRE_45),
	.DB_Enable(SYNTHESIZED_WIRE_17),
	.DB(gdfx_temp0),
	.DB_Display(SYNTHESIZED_WIRE_24));


JC_Display	b2v_DISP(
	.Display_CLK(SYNTHESIZED_WIRE_18),
	.A_Register(SYNTHESIZED_WIRE_19),
	.ALU(SYNTHESIZED_WIRE_20),
	.B_Register(SYNTHESIZED_WIRE_21),
	.Control_Flags(SYNTHESIZED_WIRE_22),
	.CPU_Flags(CPU_FLAGS),
	.CPU_Output(SYNTHESIZED_WIRE_23),
	.Data_Bus(SYNTHESIZED_WIRE_24),
	.Instruction_Register(SYNTHESIZED_WIRE_25),
	.JC_OUPUT_SELECT(DISPLAY_SELECT),
	.Memory_Address_Register(SYNTHESIZED_WIRE_26),
	.Program_Counter(SYNTHESIZED_WIRE_27),
	.RAM(SYNTHESIZED_WIRE_28),
	.JC_7SEG_OUPUT_0(SEVEN_SEG_0),
	.JC_7SEG_OUPUT_1(SEVEN_SEG_1),
	.JC_7SEG_OUPUT_2(SEVEN_SEG_2),
	.JC_7SEG_OUPUT_3(SEVEN_SEG_3),
	.JC_7SEG_OUPUT_4(SEVEN_SEG_4),
	.JC_7SEG_OUPUT_5(SEVEN_SEG_5),
	.JC_LED_OUTPUT(LED));


Instruction_Register	b2v_IR(
	.INST_REG_OUT(SYNTHESIZED_WIRE_29),
	.INST_REG_IN(SYNTHESIZED_WIRE_30),
	.CLK(SYNTHESIZED_WIRE_45),
	.CLR(CLR),
	.INST_REG_IN_DB(gdfx_temp0),
	.INST_OPCODE(SYNTHESIZED_WIRE_13),
	.INST_OPERAND(SYNTHESIZED_WIRE_14),
	.INST_REG_DISPLAY(SYNTHESIZED_WIRE_25),
	.INST_REG_OUT_DB(gdfx_temp0));


Memory_Address_Register	b2v_MAR(
	.CLK(SYNTHESIZED_WIRE_45),
	.MEMORY_ADDRESS_IN(SYNTHESIZED_WIRE_33),
	.CLR(CLR),
	.MEMORY_ADDRESS_ENABLE(SYNTHESIZED_WIRE_34),
	.ADDRESS_BUS(gdfx_temp0),
	.MEMORY_ADDRESS_DISP(SYNTHESIZED_WIRE_26),
	.MEMORY_ADDRESS_OUT(SYNTHESIZED_WIRE_44));


Output_Register	b2v_OR(
	.CLK(SYNTHESIZED_WIRE_45),
	.OUTPUT_READ_EN(SYNTHESIZED_WIRE_36),
	.TWOS_COMPLIMENT_FLAG(TWOS_COMPLEMENT),
	.HEXADECIMAL_FLAG(HEXADECIMAL_FLAG),
	.CLR(CLR),
	.OUtPUT_DB_IN(gdfx_temp0),
	.OUTPUT_DISP(SYNTHESIZED_WIRE_23));


Program_Counter	b2v_PC(
	.JMP(SYNTHESIZED_WIRE_37),
	.CLR(CLR),
	.CLK(SYNTHESIZED_WIRE_45),
	.CE(SYNTHESIZED_WIRE_39),
	.COUNT_OUT(SYNTHESIZED_WIRE_40),
	.PC_IN_DB(gdfx_temp0),
	.PC_DISP(SYNTHESIZED_WIRE_27),
	.PC_OUT_DB(gdfx_temp0));


RAM	b2v_RAM(
	.CLK(SYNTHESIZED_WIRE_45),
	.Read_Enable(SYNTHESIZED_WIRE_42),
	.Write_Enable(SYNTHESIZED_WIRE_43),
	.Address(SYNTHESIZED_WIRE_44),
	.Data_In_DB(gdfx_temp0),
	.Data_DISP(SYNTHESIZED_WIRE_28),
	.Data_Out_DB(gdfx_temp0));


endmodule
