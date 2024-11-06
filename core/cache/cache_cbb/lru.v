// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/10/26 22:27
// Last Modified : 2024/11/06 14:37
// File Name     : lru.v
// Description   : 256*1的lru记录表
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

module lru (
    input  wire clk                           ,
    input  wire [`CACHE_INDEX_AW-1:0] index_i , // Index作为地址
    input  wire wr_en_i                       ,
    input  wire wr_lru_i                      ,
    output wire rd_lru_o
);

   reg lru [0:`CACHE_DEPTH-1];
   reg rd_lru;

   // 写入lru
   always @(posedge clk) begin
       if (wr_en_i) begin
            lru[index_i] <= wr_lru_i;
       end
   end

   // 读出lru
   always @(posedge clk) begin
        rd_lru <= lru[index_i];
    end

    assign rd_lru_o = rd_lru;

endmodule

