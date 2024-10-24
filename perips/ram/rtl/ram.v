`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2024/8/19
// Author: QiDC
// Project Name: TinyRISC-V
// File Name: ram.v
// Versions: v3.2
// Description: 添加外设RAM
// 
//////////////////////////////////////////////////////////////////////////////////

`include "/home/qidc/Nutstore/Project/riscv/defines/defines.v"

module ram (
    input  wire                        clk       , // 读写为同一时钟
    input  wire                        rst_n     ,
    input  wire [`RAM_NUM-1:0]         wr_en_i   , // 写使能，控制四个RAM
    input  wire [`RV32_ADDR_WIDTH-1:0] wr_addr_i , // 写地址
    input  wire [`DATA_WIDTH-1:0]      wr_data_i , // 写数据
    input  wire [`RV32_ADDR_WIDTH-1:0] rd_addr_i , // 读地址
    output wire [`DATA_WIDTH-1:0]      rd_data_o   // 读数据
);

    genvar i;
    generate
        for (i = 0; i < `RAM_NUM; i = i + 1) begin : ram
            simple_dp_ram #(
                .DATA_WIDTH(`DATA_WIDTH >> 2),    // 每个RAM数据位宽为8位
                .ADDR_WIDTH(`RAM_ADDR_WIDTH - 2)  // RAM地址位宽12位，不需要除以4
            ) u_simple_dp_ram (
                .clka (clk),
                .ena  (`WR_PORT_ENABLE),                 // 写端口使能
                .wea  (wr_en_i[i]),                      // RAM写使能
                .addra(wr_addr_i[`RAM_ADDR_WIDTH-1:2]),
                .dina (wr_data_i[(i+1)*8-1:i*8]),
                .clkb (clk),
                .enb  (`RD_PORT_ENABLE),                 // 读端口使能
                .addrb(rd_addr_i[`RAM_ADDR_WIDTH-1:2]),
                .doutb(rd_data_o[(i+1)*8-1:i*8])
            );
        end
    endgenerate

endmodule

