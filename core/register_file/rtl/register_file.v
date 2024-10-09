`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2024/6/26
// Author: QiDC
// Project Name: TinyRISC-V
// File Name: register_file.v
// Versions: v3.2
// Description: 寄存器组模块，建立寄存器组并进行读写操作
// 
//////////////////////////////////////////////////////////////////////////////////

`include "defines.v"

module register_file (
    input  wire                       clk,
    input  wire                       rst_n,
    input  wire [`REG_ADDR_WIDTH-1:0] reg1_rd_addr_i,  // 读寄存器1的地址
    input  wire [`REG_ADDR_WIDTH-1:0] reg2_rd_addr_i,  // 读寄存器2的地址
    input  wire                       reg_wr_en_i,     // 写使能
    input  wire [`REG_ADDR_WIDTH-1:0] reg_wr_addr_i,   // 写寄存器地址
    input  wire [    `DATA_WIDTH-1:0] reg_wr_data_i,   // 写寄存器数据
    output wire [    `DATA_WIDTH-1:0] reg1_rd_data_o,  // 读寄存器1的数据
    output wire [    `DATA_WIDTH-1:0] reg2_rd_data_o   // 读寄存器2的数据
);

    reg [`DATA_WIDTH-1:0] regs         [0:`REG_NUM-1];  // 定义32个寄存器，每个寄存器宽度32位

    reg [`DATA_WIDTH-1:0] reg1_rd_data;
    reg [`DATA_WIDTH-1:0] reg2_rd_data;

    // 读寄存器1
    always @(*) begin
        if (rst_n == `RST_ENABLE) begin
            reg1_rd_data = `DATA_WIDTH'h0;
        end else if (reg1_rd_addr_i == `REG_ZERO) begin  // 寄存器x0的值为固定为0
            reg1_rd_data = `DATA_WIDTH'h0;
        end else if (reg_wr_en_i == `WR_ENABLE && reg1_rd_addr_i == reg_wr_addr_i) begin
            reg1_rd_data = reg_wr_data_i;  // 若要读取的寄存器就是写入的寄存器，则读取写入的数据
        end else begin
            reg1_rd_data = regs[reg1_rd_addr_i];
        end
    end

    // 读寄存器2
    always @(*) begin
        if (rst_n == `RST_ENABLE) begin
            reg2_rd_data = `DATA_WIDTH'h0;
        end else if (reg2_rd_addr_i == `REG_ZERO) begin  // 寄存器x0的值为固定为0
            reg2_rd_data = `DATA_WIDTH'h0;
        end else if (reg_wr_en_i == `WR_ENABLE && reg2_rd_addr_i == reg_wr_addr_i) begin
            reg2_rd_data = reg_wr_data_i;  // 若要读取的寄存器就是写入的寄存器，则读取写入的数据
        end else begin
            reg2_rd_data = regs[reg2_rd_addr_i];
        end
    end

    // 写寄存器
    integer i;
    always @(posedge clk or negedge rst_n) begin
        if (rst_n == `RST_ENABLE) begin
            for (i = 0; i < `REG_NUM; i = i + 1) begin  // 寄存器初始化
                regs[i] <= `RST_DATA;
            end
        end else if (reg_wr_en_i == `WR_ENABLE && reg_wr_addr_i != `REG_ZERO) begin
            regs[reg_wr_addr_i] <= reg_wr_data_i;
        end
    end

    assign reg1_rd_data_o = reg1_rd_data;
    assign reg2_rd_data_o = reg2_rd_data;

endmodule
