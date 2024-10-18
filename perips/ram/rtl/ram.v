`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2024/8/19
// Author: QiDC
// Project Name: TinyRISC-V
// File Name: ram.v
// Versions: v3.2
// Description: 添加外设ram
// 
//////////////////////////////////////////////////////////////////////////////////

`include "/home/qidc/Nutstore/Project/riscv/defines/defines.v"

module ram (
    input  wire                        clk,        // 读写为同一时钟
    input  wire                        rst_n,
    input  wire [                 3:0] wr_en_i,    // 写使能，控制四个ram
    input  wire [`RV32_ADDR_WIDTH-1:0] wr_addr_i,  // 写地址
    input  wire [     `DATA_WIDTH-1:0] wr_data_i,  // 写数据
    input  wire [`RV32_ADDR_WIDTH-1:0] rd_addr_i,  // 读地址
    output wire [     `DATA_WIDTH-1:0] rd_data_o   // 读数据
);

    // ram0，实例化简单双口BRAM
    simple_dp_ram #(
        .DATA_WIDTH(`DATA_WIDTH >> 2),    // 每个ram数据位宽为8位
        .ADDR_WIDTH(`RAM_ADDR_WIDTH - 2)  // 地址位宽减2，即地址除以4
    ) u_simple_dp_ram_0 (
        .clka (clk),
        .ena  (`WR_PORT_ENABLE),                 // 写端口使能
        .wea  (wr_en_i[0]),                      // ram0写使能
        .addra(wr_addr_i[`RAM_ADDR_WIDTH-1:2]),  // 取数据地址的[11:2]位
        .dina (wr_data_i[7:0]),
        .clkb (clk),
        .enb  (`RD_PORT_ENABLE),                 // 读端口使能
        .addrb(rd_addr_i[`RAM_ADDR_WIDTH-1:2]),
        .doutb(rd_data_o[7:0])
    );

    // ram1，实例化简单双口BRAM
    simple_dp_ram #(
        .DATA_WIDTH(`DATA_WIDTH >> 2),    // 每个ram数据位宽为8位
        .ADDR_WIDTH(`RAM_ADDR_WIDTH - 2)  // RAM地址位宽12位，不需要除以4
    ) u_simple_dp_ram_1 (
        .clka (clk),
        .ena  (`WR_PORT_ENABLE),                 // 写端口使能
        .wea  (wr_en_i[1]),                      // ram0写使能
        .addra(wr_addr_i[`RAM_ADDR_WIDTH-1:2]),
        .dina (wr_data_i[15:8]),
        .clkb (clk),
        .enb  (`RD_PORT_ENABLE),                 // 读端口使能
        .addrb(rd_addr_i[`RAM_ADDR_WIDTH-1:2]),
        .doutb(rd_data_o[15:8])
    );

    // ram2，实例化简单双口BRAM
    simple_dp_ram #(
        .DATA_WIDTH(`DATA_WIDTH >> 2),    // 每个ram数据位宽为8位
        .ADDR_WIDTH(`RAM_ADDR_WIDTH - 2)  // RAM地址位宽12位，不需要除以4
    ) u_simple_dp_ram_2 (
        .clka (clk),
        .ena  (`WR_PORT_ENABLE),                 // 写端口使能
        .wea  (wr_en_i[2]),                      // ram0写使能
        .addra(wr_addr_i[`RAM_ADDR_WIDTH-1:2]),
        .dina (wr_data_i[23:16]),
        .clkb (clk),
        .enb  (`RD_PORT_ENABLE),                 // 读端口使能
        .addrb(rd_addr_i[`RAM_ADDR_WIDTH-1:2]),
        .doutb(rd_data_o[23:16])
    );

    // ram3，实例化简单双口BRAM
    simple_dp_ram #(
        .DATA_WIDTH(`DATA_WIDTH >> 2),    // 每个ram数据位宽为8位
        .ADDR_WIDTH(`RAM_ADDR_WIDTH - 2)  // RAM地址位宽12位，不需要除以4
    ) u_simple_dp_ram_3 (
        .clka (clk),
        .ena  (`WR_PORT_ENABLE),                 // 写端口使能
        .wea  (wr_en_i[3]),                      // ram0写使能
        .addra(wr_addr_i[`RAM_ADDR_WIDTH-1:2]),
        .dina (wr_data_i[31:24]),
        .clkb (clk),
        .enb  (`RD_PORT_ENABLE),                 // 读端口使能
        .addrb(rd_addr_i[`RAM_ADDR_WIDTH-1:2]),
        .doutb(rd_data_o[31:24])
    );

endmodule
