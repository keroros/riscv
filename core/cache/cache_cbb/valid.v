// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/10/26 14:47
// Last Modified : 2024/11/06 14:35
// File Name     : valid.v
// Description   : 256*1的Valid表
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

module valid (
    input  wire                       clk,
    input  wire [`CACHE_INDEX_AW-1:0] index_i, // Index作为地址
    input  wire                       wr_en_i,
    input  wire                       wr_valid_i,
    output wire                       rd_valid_o
);

   reg valid [0:`CACHE_DEPTH-1];
   reg rd_valid;

   // 写入valid
   always @(posedge clk) begin
       if (wr_en_i) begin
            valid[index_i] <= wr_valid_i;
       end
   end

   // 读出valid
   always @(posedge clk) begin
        rd_valid <= valid[index_i];
    end

    assign rd_valid_o = rd_valid;

endmodule

