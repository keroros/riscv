`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2024/6/23
// Author: QiDC
// Project Name: TinyRISC-V
// File Name: pc_reg.v
// Versions: v3.2
// Description: PC寄存器模块，用于产生PC寄存器的值，该值会被用作指令存储器的地址信号
// 
//////////////////////////////////////////////////////////////////////////////////

`include "defines.v"

module pc_reg (
    input  wire                        clk,
    input  wire                        rst_n,
    input  wire [`RV32_ADDR_WIDTH-1:0] jump_addr_i,  // 跳转地址输出
    input  wire                        jump_en_i,    // 跳转使能输出
    output wire [`RV32_ADDR_WIDTH-1:0] pc_addr_o     // 指令地址输出
);

    reg [`RV32_ADDR_WIDTH-1:0] pc_addr;

    // PC按字节个数给出地址，每个RV32指令为32位，即4字节，所以个流水线周期PC加4
    always @(posedge clk or negedge rst_n) begin
        if (rst_n == `RST_ENABLE) begin
            pc_addr <= `RST_INST_ADDR;
        end else if (jump_en_i == `JUMP_ENABLE) begin
            pc_addr <= jump_addr_i;
        end else begin
            pc_addr <= pc_addr + 3'd4;
        end
    end

    assign pc_addr_o = pc_addr;

endmodule
