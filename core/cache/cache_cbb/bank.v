// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/10/24 12:28
// Last Modified : 2024/10/24 19:38
// File Name     : bank.v
// Description   : 一行四个Bank，一个Bank包含四个256行，32位宽的RAM
//
// Copyright (c) 2024 Peking University.
// ALL RIGHTS RESERVED
//
// ---------------------------------------------------------------------------------
// Modification History:
// Date         By              Version                 Change Description
// ---------------------------------------------------------------------------------
// 2024/10/24   Qidc            1.0                     Original
// -FHDR----------------------------------------------------------------------------

`timescale 1ns / 1ps

`include "/home/qidc/Nutstore/Project/riscv/defines/defines.v"

module bank (
    input  wire                     clk       , // 读写为同一时钟
    input  wire                     rst_n     ,
    input  wire [`RAM_NUM-1:0]      wr_en_i   , // 写使能，4bit，控制四个RAM
    input  wire [`CACHE_RAM_AW-1:0] wr_addr_i , // 写地址，10bit
    input  wire [`DATA_WIDTH-1:0]   wr_data_i , // 写数据，32bit
    input  wire [`CACHE_RAM_AW-1:0] rd_addr_i , // 读地址，10bit
    output wire [`DATA_WIDTH-1:0]   rd_data_o   // 读数据，32bit
);

    genvar i;
    generate
        for (i = 0; i < `RAM_NUM; i = i + 1) begin : bank
            simple_dp_ram #(
                .DATA_WIDTH(`DATA_WIDTH   >> 2), // Bank的每个RAM数据位宽为8it
                .ADDR_WIDTH(`CACHE_RAM_AW -  2)  // RAM有256行，地址位宽8bit
            ) u_simple_dp_ram (
                .clka (clk)                          ,
                .ena  (`WR_PORT_ENABLE)              , // 写端口使能
                .wea  (wr_en_i[i])                   , // RAM写使能
                .addra(wr_addr_i[`CACHE_RAM_AW-1:2]) ,
                .dina (wr_data_i[(i+1)*8-1:i*8])     ,
                .clkb (clk)                          ,
                .enb  (`RD_PORT_ENABLE)              , // 读端口使能
                .addrb(rd_addr_i[`CACHE_RAM_AW-1:2]) ,
                .doutb(rd_data_o[(i+1)*8-1:i*8])
            );
        end
    endgenerate

endmodule
