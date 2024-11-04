// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/10/24 16:56
// Last Modified : 2024/11/04 15:33
// File Name     : data.v
// Description   : 一个Cache行的Data包括四个Bank
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

module data (
    input  wire                        clk       ,
    input  wire [`CACHE_DEPTH-1:0]     index_i   , // Index作为读写地址，8bit
    input  wire [`CACHE_OFFSET_AW-1:0] offset_i  , // Offset指示要写入的bank
    input  wire [`RAM_NUM-1:0]         wr_en_i   , //指示要写入的字节
    input  wire [`DATA_WIDTH*4-1:0]    wr_data_i , // 一个Data四个Bank，128bit
    output wire [`DATA_WIDTH*4-1:0]    rd_data_o   // 一个Data四个Bank，128bit
);

   wire [`CACHE_BANK_NUM-1:0] wr_bank;

    // 将二进制码转换为独热码，每一位都控制一个Bank的写入
    always @(*) begin
        case (offset[3:2])
            2'b00:   wr_bank = 4'b0001;
            2'b01:   wr_bank = 4'b0010;
            2'b10:   wr_bank = 4'b0100;
            2'b11:   wr_bank = 4'b1000;
            default: wr_bank = 4'b0000;
        endcase
    end

    // 生成4个Bank
    genvar i;
    generate
        for (i = 0; i < `CACHE_BANK_NUM; i = i + 1) begin : data
            bank u_bank(
                .clk       (clk                        ),
                .index_i   (index_i                    ),
                .wr_en_i   ({4{wr_bank[i]}} & wr_en_i  ), // wr_bank控制bank，wr_en控制字节
                .wr_data_i (wr_data_i[(i+1)*32-1:i*32] ),
                .rd_data_o (rd_data_o[(i+1)*32-1:i*32] )
            );

        end
    endgenerate

endmodule
