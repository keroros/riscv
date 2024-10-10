`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2024/8/18
// Author: QiDC
// Project Name: TinyRISC-V
// File Name: rom.v
// Versions: v3.2
// Description: 添加外设rom，作为指令存储单元
// 
//////////////////////////////////////////////////////////////////////////////////

`include "/home/qidc/Nutstore/Project/riscv/defines/defines.v"

module rom (
    input  wire                        clk,        // 读写为同一时钟
    input  wire                        wr_en_i,    // 写使能
    input  wire [`RV32_ADDR_WIDTH-1:0] wr_addr_i,  // 写指令地址
    input  wire [`RV32_INST_WIDTH-1:0] wr_data_i,  // 写指令数据
    input  wire [`RV32_ADDR_WIDTH-1:0] rd_addr_i,  // 读指令地址
    output wire [`RV32_INST_WIDTH-1:0] rd_data_o   // 读指令数据
);

    // 实例化简单双口BRAM
    dual_port_bram #(
        .DATA_WIDTH(`RV32_INST_WIDTH),
        .ADDR_WIDTH(`ROM_ADDR_WIDTH - 2)  // 地址位宽减2，即地址除以4，得到每条指令的地址
    ) u_dual_port_bram (
        .rst_n(1'b1),                            // ROM不需要复位，直接置1
        .clka (clk),
        .ena  (wr_en_i),                         // rom写使能
        .addra(wr_addr_i[`ROM_ADDR_WIDTH-1:2]),  // 取指令地址的[11:2]位
        .dina (wr_data_i),
        .clkb (clk),
        .enb  (`RD_ENABLE),                      // ROM不需要读使能信号，直接置1
        .addrb(rd_addr_i[`ROM_ADDR_WIDTH-1:2]),  // 取指令地址的[11:2]位
        .doutb(rd_data_o)
    );

endmodule
