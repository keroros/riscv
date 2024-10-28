// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/10/26 14:53
// Last Modified : 2024/10/28 19:26
// File Name     : cache_way.v
// Description   : 一个Cache路包含一个Tag、一个Valid、一个Dirty和一个Data
//
// Copyright (c) 2024 Peking University.
// ALL RIGHTS RESERVED
//
// ---------------------------------------------------------------------------------
// Modification History:
// Date         By              Version                 Change Description
// ---------------------------------------------------------------------------------
// 2024/10/26   Qidc            1.0                     Original
// -FHDR----------------------------------------------------------------------------

`timescale 1ns / 1ps

`include "/home/qidc/Nutstore/Project/riscv/defines/defines.v"

module cache_way (
    input wire clk,
    // Index地址
    input wire [`CACHE_DEPTH-1:0] index_i,
    // Offset偏移
    input wire [`CACHE_OFFSET_AW-1:0] offset_i,
    // 写使能
    input wire wr_tag_en_i,
    input wire wr_valid_en_i,
    input wire wr_dirty_en_i,
    input wire wr_full_bank_i,
    input wire [`RAM_NUM-1:0] wr_data_en_i,
    input wire wr_lru_en_i,
    // 写数据
    input wire [`CACHE_TAG_WIDTH-1:0] wr_tag_i,
    input wire wr_valid_i,
    input wire wr_dirty_i,
    input wire [`DATA_WIDTH*4-1:0] wr_data_i,
    input wire wr_lru_i,
    // 读数据
    output wire [`CACHE_TAG_WIDTH-1:0] rd_tag_o,
    output wire rd_valid_o,
    output wire rd_dirty_o,
    output wire [`DATA_WIDTH*4-1:0] rd_data_o,
    output wire rd_lru_o
);

    // 例化256*20的Tag表
    tag u_tag(/*autoinst*/
        .clk      (clk         ),
        .index_i  (index_i     ),
        .wr_en_i  (wr_tag_en_i ),
        .wr_tag_i (wr_tag_i    ),
        .rd_tag_o (rd_tag_o    )
    );

    // 例化256*1的Valid表
    valid u_valid(/*autoinst*/
        .clk        (clk           ),
        .index_i    (index_i       ),
        .wr_en_i    (wr_valid_en_i ),
        .wr_valid_i (wr_valid_i    ),
        .rd_valid_o (rd_valid_o    )
    );

    // 例化256*1的Dirty表
    dirty u_dirty(/*autoinst*/
        .clk        (clk           ),
        .index_i    (index_i       ),
        .wr_en_i    (wr_dirty_en_i ),
        .wr_dirty_i (wr_dirty_i    ),
        .rd_dirty_o (rd_dirty_o    )
    );

    // 例化256*128的Data表，包含四张256*32的Bank表
    data u_data(/*autoinst*/
        .clk            (clk            ),
        .index_i        (index_i        ),
        .offset_i       (offset_i       ),
        .wr_full_bank_i (wr_full_bank_i ),
        .wr_en_i        (wr_data_en_i   ),
        .wr_data_i      (wr_data_i      ),
        .rd_data_o      (rd_data_o      )
    );

    // 例化256*1的lru记录表
    lru u_lru(/*autoinst*/
        .clk      (clk         ),
        .index_i  (index_i     ),
        .wr_en_i  (wr_lru_en_i ),
        .wr_lru_i (wr_lru_i    ),
        .rd_lru_o (rd_lru_o    )
    );

endmodule

