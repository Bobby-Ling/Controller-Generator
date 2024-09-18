`timescale 1ns / 1ps

// generated file, do not edit
module Controller(
    input [31:0] IR,
    output [3:0] AluOp_o,
    output MemtoReg_o,
    output MemWrite_o,
    output ALU_Src_o,
    output RegWrite_o,
    output ECALL_o,
    output S_Type_o,
    output JAL_o,
    output JALR_o,
    output rs1Used_o,
    output rs2Used_o,
    output Branch_o,
    output AluRst2_o,
    output Alu1U_o,
    output Alu2U_o
);
    wire [31:0] F;
    wire [6:0] OP;
    assign F = IR;
    assign OP = IR[6:0];
    
    assign AluOp_o[3] = ~F[30] & ~F[25] & ~F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & ~F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & ~F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & ~F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & F[13] & ~F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & ~F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & ~F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & F[13] & ~F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & F[13] & F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] ;
    assign AluOp_o[2] = ~F[30] & ~F[25] & ~F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[30] & ~F[25] & ~F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & ~F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & ~F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & F[13] & F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & ~F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & ~F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & ~F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & F[13] & ~F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & F[13] & F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] ;
    assign AluOp_o[1] =  F[30] & ~F[25] & ~F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & ~F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & ~F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & F[14] & ~F[13] & F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & F[13] & F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & ~F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & ~F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & ~F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & ~F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & ~F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & ~F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] ;
    assign AluOp_o[0] = ~F[30] & ~F[25] & ~F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & ~F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[30] & ~F[25] & F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & ~F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & ~F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & ~F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[30] & ~F[25] & F[14] & ~F[13] & F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & F[13] & F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & ~F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & ~F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & ~F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & ~F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & ~F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & ~F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & ~F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & ~F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & ~F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] ;
    assign MemtoReg_o = ~F[14] & ~F[13] & ~F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & ~F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & ~F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] ;
    assign MemWrite_o = ~F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] ;
    assign ALU_Src_o = ~F[14] & ~F[13] & ~F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & ~F[14] & ~F[13] & F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & ~F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & ~F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & F[14] & ~F[13] & F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[30] & ~F[25] & F[14] & ~F[13] & F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & F[13] & ~F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & F[13] & F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & ~F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & ~F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & ~F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] ;
    assign RegWrite_o = ~F[30] & ~F[25] & ~F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[30] & ~F[25] & ~F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & ~F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & ~F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & ~F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[30] & ~F[25] & F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & ~F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & ~F[14] & ~F[13] & F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & ~F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & ~F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & F[14] & ~F[13] & F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[30] & ~F[25] & F[14] & ~F[13] & F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & F[13] & ~F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & F[13] & F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & ~F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & ~F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & ~F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & ~F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & OP[2] & OP[1] & OP[0] + OP[6] & OP[5] & ~OP[4] & OP[3] & OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & F[12] & OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & ~F[12] & OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & F[12] & OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & F[12] & OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & F[13] & ~F[12] & OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & F[13] & F[12] & OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & ~F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & ~F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & ~F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & ~F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~OP[6] & OP[5] & OP[4] & ~OP[3] & OP[2] & OP[1] & OP[0] + ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & OP[2] & OP[1] & OP[0] ;
    assign ECALL_o = ~F[30] & ~F[25] & ~F[14] & ~F[13] & ~F[12] & OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] ;
    assign S_Type_o = ~F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] ;
    assign JAL_o =  OP[6] & OP[5] & ~OP[4] & OP[3] & OP[2] & OP[1] & OP[0] ;
    assign JALR_o = ~F[14] & ~F[13] & ~F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & OP[2] & OP[1] & OP[0] ;
    assign rs1Used_o = ~F[30] & ~F[25] & ~F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[30] & ~F[25] & ~F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & ~F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & ~F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & ~F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[30] & ~F[25] & F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & ~F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & ~F[14] & ~F[13] & F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & ~F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & ~F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & F[14] & ~F[13] & F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[30] & ~F[25] & F[14] & ~F[13] & F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & F[13] & ~F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & F[13] & F[12] & ~OP[6] & ~OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & ~F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & ~F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & ~F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & F[12] & ~OP[6] & ~OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & ~F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & ~F[14] & ~F[13] & ~F[12] & OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & ~F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & ~F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & F[13] & ~F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & F[13] & F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & F[12] & OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & ~F[12] & OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & F[12] & OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & ~F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & ~F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & ~F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & ~F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] ;
    assign rs2Used_o = ~F[30] & ~F[25] & ~F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[30] & ~F[25] & ~F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & ~F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & ~F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & ~F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[30] & ~F[25] & F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & ~F[25] & ~F[14] & ~F[13] & ~F[12] & OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & ~F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & ~F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & F[13] & ~F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & F[13] & F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & ~F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & ~F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & ~F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & ~F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & F[14] & ~F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] ;
    assign Branch_o = ~F[14] & ~F[13] & ~F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[14] & ~F[13] & F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & ~F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & ~F[13] & F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & F[13] & ~F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + F[14] & F[13] & F[12] & OP[6] & OP[5] & ~OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] ;
    assign AluRst2_o = ~F[30] & F[25] & ~F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & ~F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & ~F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] ;
    assign Alu1U_o = ~F[30] & F[25] & ~F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] ;
    assign Alu2U_o = ~F[30] & F[25] & ~F[14] & F[13] & ~F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & ~F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & F[14] & ~F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] + ~F[30] & F[25] & F[14] & F[13] & F[12] & ~OP[6] & OP[5] & OP[4] & ~OP[3] & ~OP[2] & OP[1] & OP[0] ;



endmodule //Controller
