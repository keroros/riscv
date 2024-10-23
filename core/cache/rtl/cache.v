// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/10/23 10:18
// Last Modified : 2024/10/23 17:31
// File Name     : cache.v
// Description   : Cache 模块
//         
// Copyright (c) 2024 Peking University.
// ALL RIGHTS RESERVED
// 
// ---------------------------------------------------------------------------------
// Modification History:
// Date         By              Version                 Change Description
// ---------------------------------------------------------------------------------
// 2024/10/23   Qidc            1.0                     Original
// -FHDR----------------------------------------------------------------------------

`timescale 1ns/1ps

module cache (

    // 时钟和复位
    input wire clk,
    input wire rst_n,

    // CPU与Cache的之间的信号
    input  wire [0:0]             cpu_req_i      , // CPU对Cache的访问请求
    input  wire [0:0]             cpu_op_i       , // 读写操作：1写 0读
    input  wire [7:0]             cpu_index_i    , // CPU地址的Index域
    input  wire [19:0]            cpu_tag_i      , // CPU地址的Tag域
    input  wire [3:0]             cpu_offset_i   , // CPU地址的Offset域
    input  wire [3:0]             cpu_wr_en_i    , // 写使能，只对置1的位写入
    input  wire [`DATA_WIDTH-1:0] cpu_wr_data_i  , // 要写入Cahce的数据
    output wire [`DATA_WIDTH-1:0] cpu_rd_data_o  , // 要从Cache读出的数据
    output wire [0:0]             cpu_addr_ack_o , // 该次请求的地址传输已经完成
    output wire [0:0]             cpu_data_ack_o , // 该次请求的数据传输已经完成

    // Cache与RAM接口模块的之间的信号
    output wire [0:0]                   ram_rd_req_o   ,
    output wire [2:0]                   ram_rd_type_o  ,
    output wire [`RV32_ADDR_WIDTH-1:0]  ram_rd_addr_o  ,
    input  wire [0:0]                   ram_rd_rdy_i   ,
    input  wire [`DATA_WIDTH-1:0]       ram_rd_data_i  ,
    input  wire [0:0]                   ram_rd_valid_i ,
    input  wire [1:0]                   ram_rd_last_i  ,
    input  wire [0:0]                   ram_wr_rdy_i   ,
    output wire [0:0]                   ram_wr_req_o   ,
    output wire [2:0]                   ram_wr_type_o  ,
    output wire [3:0]                   ram_wr_en_o    ,
    output wire [`RV32_ADDR_WIDTH-1:0]  ram_wr_addr_o  ,
    output wire [`CACHE_BANK_WIDTH-1:0] ram_wr_data_o
);

endmodule

