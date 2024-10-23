// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/10/23 10:18
// Last Modified : 2024/10/24 00:11
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
    output wire [0:0]                   ram_rd_req_o   , // Cache对RAM的读请求信号
    output wire [2:0]                   ram_rd_type_o  , // 读类型：000字节，001半字，010字，100行
    output wire [`RV32_ADDR_WIDTH-1:0]  ram_rd_addr_o  , // 读起始地址
    input  wire [0:0]                   ram_rd_rdy_i   , // 读请求能否被接收的握手信号
    input  wire [`DATA_WIDTH-1:0]       ram_rd_data_i  , // 读返回数据
    input  wire [0:0]                   ram_rd_valid_i , // 返回数据有效信号
    input  wire [1:0]                   ram_rd_last_i  , // 返回数据是一次读的最后一个数据
    input  wire [0:0]                   ram_wr_rdy_i   , // 写请求能否被接受的握手信号
    output wire [0:0]                   ram_wr_req_o   , // 写请求信号，必须要在握手信号之后
    output wire [2:0]                   ram_wr_type_o  , // 写类型：000字节，001半字，010字，100行
    output wire [3:0]                   ram_wr_en_o    , // 写使能字节掩码
    output wire [`RV32_ADDR_WIDTH-1:0]  ram_wr_addr_o  , // 写起始地址
    output wire [`CACHE_BANK_WIDTH-1:0] ram_wr_data_o    // 写数据
);

    // 主状态机定义
    localparam MAIN_IDLE    = 5'b00001;
    localparam MAIN_LOOKUP  = 5'b00010;
    localparam MAIN_MISS    = 5'b00100;
    localparam MAIN_REPLACE = 5'b01000;
    localparam MAIN_REFILL  = 5'b10000;

    // Write Buffer 状态机定义
    localparam WRBUF_IDLE  = 1'b0;
    localparam WRBUF_WRITE = 1'b1;




endmodule

