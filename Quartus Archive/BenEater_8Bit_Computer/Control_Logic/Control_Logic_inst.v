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


// Generated by Quartus Prime Version 18.1 (Build Build 625 09/12/2018)
// Created on Tue Dec 28 16:18:15 2021

Control_Logic Control_Logic_inst
(
	.NOT_CLK(NOT_CLK_sig) ,	// input  NOT_CLK_sig
	.CLR(CLR_sig) ,	// input  CLR_sig
	.OPERAND(OPERAND_sig) ,	// input [3:0] OPERAND_sig
	.OPCODE(OPCODE_sig) ,	// input [3:0] OPCODE_sig
	.DB_ENABLE(DB_ENABLE_sig) ,	// output  DB_ENABLE_sig
	.MAR_ENABLE(MAR_ENABLE_sig) ,	// output  MAR_ENABLE_sig
	.MEMORY_ADDRESS_IN(MEMORY_ADDRESS_IN_sig) ,	// output  MEMORY_ADDRESS_IN_sig
	.INST_REG_IN(INST_REG_IN_sig) ,	// output  INST_REG_IN_sig
	.INST_REG_OUT(INST_REG_OUT_sig) ,	// output  INST_REG_OUT_sig
	.RAM_READ_ENABLE(RAM_READ_ENABLE_sig) ,	// output  RAM_READ_ENABLE_sig
	.HALT(HALT_sig) ,	// output  HALT_sig
	.JUMP(JUMP_sig) ,	// output  JUMP_sig
	.PRGM_COUNT_ENBL(PRGM_COUNT_ENBL_sig) ,	// output  PRGM_COUNT_ENBL_sig
	.PRGM_COUNT_OUT(PRGM_COUNT_OUT_sig) ,	// output  PRGM_COUNT_OUT_sig
	.A_REG_OUT(A_REG_OUT_sig) ,	// output  A_REG_OUT_sig
	.A_REG_IN(A_REG_IN_sig) ,	// output  A_REG_IN_sig
	.ALU_OUT(ALU_OUT_sig) ,	// output  ALU_OUT_sig
	.SUBTRACT(SUBTRACT_sig) ,	// output  SUBTRACT_sig
	.ALU_FLGS_OUT(ALU_FLGS_OUT_sig) ,	// output  ALU_FLGS_OUT_sig
	.B_REG_OUT(B_REG_OUT_sig) ,	// output  B_REG_OUT_sig
	.B_REG_IN(B_REG_IN_sig) 	// output  B_REG_IN_sig
);

