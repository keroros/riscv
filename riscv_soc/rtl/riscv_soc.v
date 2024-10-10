`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2024/7/1
// Author: QiDC
// Project Name: TinyRISC-V
// File Name: riscv_soc.v
// Versions: v3.2
// Description: RISC-V SoC模块，包含RISC-V Core、ROM、RAM、UART、GPIO、Timer、Interrupt等模块
// 
//////////////////////////////////////////////////////////////////////////////////

`include "/home/qidc/Nutstore/Project/riscv/defines/defines.v"

module riscv_soc (
    input wire clk,
    input wire rst_n
);

    // 与rom的信号连接
    wire [`RV32_INST_WIDTH-1:0] inst;
    wire [`RV32_ADDR_WIDTH-1:0] inst_addr;

    // 与ram的信号连接
    wire [`RV32_ADDR_WIDTH-1:0] ram_rd_addr;
    wire [     `DATA_WIDTH-1:0] ram_rd_data;
    wire [                 3:0] ram_wr_en;
    wire [`RV32_ADDR_WIDTH-1:0] ram_wr_addr;
    wire [     `DATA_WIDTH-1:0] ram_wr_data;

    // 实例化riscv_core模块
    riscv_core u_riscv_core (
        .clk          (clk),
        .rst_n        (rst_n),
        .rom_inst_i   (inst),
        .ram_rd_data_i   (ram_rd_data),
        .ram_rd_addr_o(ram_rd_addr),
        .ram_wr_en_o  (ram_wr_en),
        .ram_wr_addr_o(ram_wr_addr),
        .ram_wr_data_o   (ram_wr_data),
        .addr_rom_o   (inst_addr)
    );

    // 实例化rom模块
    rom u_rom (
        .clk      (clk),
        .wr_en_i  (`WR_DISABLE),     // 暂时禁止写ROM
        .wr_addr_i(`RST_INST_ADDR),
        .wr_data_i(`INST_NOP),
        .rd_addr_i(inst_addr),
        .rd_data_o(inst)
    );

    // 实例化ram模块
    ram u_ram (
        .clk      (clk),
        .rst_n    (rst_n),
        .wr_en_i  (ram_wr_en),
        .wr_addr_i(ram_wr_addr),
        .wr_data_i(ram_wr_data),
        .rd_en_i  (`RD_DISABLE),  // 暂时禁止读使能
        .rd_addr_i(ram_rd_addr),
        .rd_data_o(ram_rd_data)
    );

endmodule
