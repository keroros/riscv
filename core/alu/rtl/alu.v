`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2024/8/14
// Author: QiDC
// Project Name: TinyRISC-V
// File Name: alu.v
// Versions: v3.2
// Description: ALU模块，包含加法、减法、逻辑运算、比较运算、位运算等运算
// 
//////////////////////////////////////////////////////////////////////////////////

`include "defines.v"

module alu (
    input  wire [`RV32_ADDR_WIDTH-1:0] inst_addr_i,
    input  wire [`RV32_ADDR_WIDTH-1:0] offset_addr_i,
    input  wire [     `DATA_WIDTH-1:0] op_data1_i,
    input  wire [     `DATA_WIDTH-1:0] op_data2_i,
    output wire [     `DATA_WIDTH-1:0] add_res_o,
    output wire [     `DATA_WIDTH-1:0] sub_res_o,
    output wire [     `DATA_WIDTH-1:0] and_res_o,
    output wire [     `DATA_WIDTH-1:0] or_res_o,
    output wire [     `DATA_WIDTH-1:0] xor_res_o,
    output wire [     `DATA_WIDTH-1:0] slt_res_o,
    output wire [     `DATA_WIDTH-1:0] sltu_res_o,
    output wire [     `DATA_WIDTH-1:0] sll_res_o,
    output wire [     `DATA_WIDTH-1:0] srl_res_o,
    output wire [     `DATA_WIDTH-1:0] sra_res_o,
    output wire [`RV32_ADDR_WIDTH-1:0] jump_addr_res_o,
    output wire                        rs1_eq_rs2_o,
    output wire                        rs1_lt_rs2_o,
    output wire                        rs1_lt_rs2_u_o
);

    assign add_res_o       = op_data1_i + op_data2_i;
    assign sub_res_o       = op_data1_i - op_data2_i;
    assign and_res_o       = op_data1_i & op_data2_i;
    assign or_res_o        = op_data1_i | op_data2_i;
    assign xor_res_o       = op_data1_i ^ op_data2_i;

    // 用于B型指令的判断
    assign rs1_eq_rs2_o    = op_data1_i == op_data2_i ? 1'b1 : 1'b0;
    assign rs1_lt_rs2_o    = $signed(op_data1_i) < $signed(op_data2_i) ? 1'b1 : 1'b0;
    assign rs1_lt_rs2_u_o  = op_data1_i < op_data2_i ? 1'b1 : 1'b0;

    assign slt_res_o       = {31'b0, rs1_lt_rs2_o};
    assign sltu_res_o      = {31'b0, rs1_lt_rs2_u_o};

    assign sll_res_o       = op_data1_i << op_data2_i;
    assign srl_res_o       = op_data1_i >> op_data2_i;
    assign sra_res_o       = $signed(op_data1_i) >>> op_data2_i;

    assign jump_addr_res_o = inst_addr_i + offset_addr_i;

endmodule
