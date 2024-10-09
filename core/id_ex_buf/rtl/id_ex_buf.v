`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2024/6/25
// Author: QiDC
// Project Name: TinyRISC-V
// File Name: id_ex_buf.v
// Versions: v3.2
// Description: 译码到执行的缓冲模块，为了满足时序，将指令和地址打一拍输出
// 
//////////////////////////////////////////////////////////////////////////////////

`include "defines.v"
`include "../utils/std_dffs.v"

module id_ex_buf (
    input  wire                        clk,
    input  wire                        rst_n,
    input  wire                        pipeline_flush_i,
    input  wire [ `DATA_WIDTH-1:0] op_data1_i,
    input  wire [ `DATA_WIDTH-1:0] op_data2_i,
    input  wire [ `REG_ADDR_WIDTH-1:0] rd_addr_i,
    input  wire [`RV32_INST_WIDTH-1:0] inst_i,
    input  wire [`RV32_ADDR_WIDTH-1:0] inst_addr_i,
    input  wire [`RV32_ADDR_WIDTH-1:0] offset_addr_i,
    output wire [ `DATA_WIDTH-1:0] op_data1_o,
    output wire [ `DATA_WIDTH-1:0] op_data2_o,
    output wire [ `REG_ADDR_WIDTH-1:0] rd_addr_o,
    output wire [`RV32_INST_WIDTH-1:0] inst_o,
    output wire [`RV32_ADDR_WIDTH-1:0] inst_addr_o,
    output wire [`RV32_ADDR_WIDTH-1:0] offset_addr_o
);

    // 寄存器rd的地址打一拍输出
    dff_rs #(
        .WIDTH(`REG_ADDR_WIDTH)
    ) dffrs_rd_addr (
        .clk     (clk),
        .rst_n   (rst_n && ~pipeline_flush_i),
        .rst_data(`RST_REG_ADDR),
        .data_i  (rd_addr_i),
        .data_o  (rd_addr_o)
    );

    // 操作数1打一拍输出
    dff_rs #(
        .WIDTH(`DATA_WIDTH)
    ) dffrs_op_data1 (
        .clk     (clk),
        .rst_n   (rst_n && ~pipeline_flush_i),
        .rst_data(`RST_DATA),
        .data_i  (op_data1_i),
        .data_o  (op_data1_o)
    );

    // 操作数2打一拍输出
    dff_rs #(
        .WIDTH(`DATA_WIDTH)
    ) dffrs_op_data2 (
        .clk     (clk),
        .rst_n   (rst_n && ~pipeline_flush_i),
        .rst_data(`RST_DATA),
        .data_i  (op_data2_i),
        .data_o  (op_data2_o)
    );

    // 指令打一拍输出
    dff_rs #(
        .WIDTH(`RV32_INST_WIDTH)
    ) dffrs_inst (
        .clk     (clk),
        .rst_n   (rst_n && ~pipeline_flush_i),
        .rst_data(`INST_NOP),
        .data_i  (inst_i),
        .data_o  (inst_o)
    );

    // 指令地址打一拍输出
    dff_rs #(
        .WIDTH(`RV32_ADDR_WIDTH)
    ) dffrs_inst_addr (
        .clk     (clk),
        .rst_n   (rst_n && ~pipeline_flush_i),
        .rst_data(`RST_INST_ADDR),
        .data_i  (inst_addr_i),
        .data_o  (inst_addr_o)
    );

    // 偏移地址打一拍输出
    dff_rs #(
        .WIDTH(`RV32_ADDR_WIDTH)
    ) dffrs_offset_addr (
        .clk     (clk),
        .rst_n   (rst_n && ~pipeline_flush_i),
        .rst_data(`RST_INST_ADDR),
        .data_i  (offset_addr_i),
        .data_o  (offset_addr_o)
    );

endmodule
