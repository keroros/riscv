// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/10/25 12:22
// Last Modified : 2024/10/26 11:16
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
    input  wire clk                          ,
    input  wire rst_n                        ,
    input  wire [`CACHE_DEPTH-1:0] index_i   , // Index作为地址
    input  wire wr_en_i                      ,
    input  wire [`CACHE_TAG_WIDTH-1:0] wr_data_i ,
    output wire [`CACHE_TAG_WIDTH-1:0] rd_data_o
);



endmodule

