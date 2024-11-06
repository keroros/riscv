// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/10/25 12:22
// Last Modified : 2024/11/06 14:35
// File Name     : dirty.v
// Description   : 256*1的Dirty表
//         
// Copyright (c) 2024 Peking University.
// ALL RIGHTS RESERVED
// 
// ---------------------------------------------------------------------------------
// Modification History:
// Date         By              Version                 Change Description
// ---------------------------------------------------------------------------------
// 2024/10/25   Qidc            1.0                     Original
// -FHDR----------------------------------------------------------------------------

`timescale 1ns / 1ps

`include "/home/qidc/Nutstore/Project/riscv/defines/defines.v"

module dirty (
    input  wire clk                           ,
    input  wire [`CACHE_INDEX_AW-1:0] index_i , // Index作为地址
    input  wire wr_en_i                       ,
    input  wire wr_dirty_i                    ,
    output wire rd_dirty_o
);

   reg dirty [0:`CACHE_DEPTH-1];
   reg rd_dirty;

   // 写入dirty
   always @(posedge clk) begin
       if (wr_en_i) begin
            dirty[index_i] <= wr_dirty_i;
       end
   end

   // 读出dirty
   always @(posedge clk) begin
        rd_dirty <= dirty[index_i];
    end

    assign rd_dirty_o = rd_dirty;

endmodule

