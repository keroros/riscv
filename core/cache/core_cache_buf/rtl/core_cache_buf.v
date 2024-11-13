// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/10/23 11:06
// Last Modified : 2024/11/13 09:39
// File Name     : core_cache_buf.v
// Description   :
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

`include "/home/qidc/Nutstore/Project/riscv/defines/defines.v"

module core_cache_buf (

    input  wire                        clk              ,
    input  wire                        rst_n            ,

    input  wire                        cpu_rd_req_i     ,
    input  wire                        cpu_wr_req_i     ,
    input  wire [`RV32_ADDR_WIDTH-1:0] cpu_rd_addr_i    ,
    input  wire [`RV32_ADDR_WIDTH-1:0] cpu_wr_addr_i    ,
    input  wire [`DATA_WIDTH-1:0]      cpu_wr_data_i    ,
    input  wire [3:0]                  cpu_wr_en_i      ,
    output wire [`DATA_WIDTH-1:0]      cpu_rd_data_o    ,
    output wire                        pipeline_stall_i ,

    output wire                        cache_req_o        ,
    output wire                        cache_op_o         ,
    output wire [`CACHE_INDEX_AW-1:0]  cache_index_o      ,
    output wire [`CACHE_TAG_WIDTH-1:0] cache_tag_o        ,
    output wire [`CACHE_OFFSET_AW-1:0] cache_offset_o     ,
    output wire [`RAM_NUM-1:0]         cache_wr_en_o      ,
    output wire [`DATA_WIDTH-1:0]      cache_wr_data_o    ,
    input  wire [`DATA_WIDTH-1:0]      cache_rd_data_i    ,
    input  wire                        cache_addr_ack_i   ,
    input  wire                        cache_data_ack_i
);

    wire cpu_req;
    wire cpu_op;

    assign cpu_req = cpu_rd_req_i | cpu_wr_req_i;
    assign cpu_op  = ~cpu_rd_req_i & cpu_wr_req_i;


    assign cache_req_o = cpu_req;
    assign cache_op_o = cpu_op;
    assign cache_index_o = {`CACHE_INDEX_AW{cpu_rd_req_i}} & cpu_rd_addr_i[11:4] |
                           {`CACHE_INDEX_AW{cpu_wr_req_i}} & cpu_wr_addr_i[11:4];
    assign cache_tag_o = {`CACHE_TAG_WIDTH{cpu_rd_req_i}} & {cpu_rd_addr_i[19:4], 4'h0} |
                         {`CACHE_TAG_WIDTH{cpu_wr_req_i}} & {cpu_wr_addr_i[19:4], 4'h0};
    assign cache_offset_o = {`CACHE_OFFSET_AW{cpu_rd_req_i}} & cpu_rd_addr_i[3:0] |
                            {`CACHE_OFFSET_AW{cpu_wr_req_i}} & cpu_wr_addr_i[3:0];
    assign cache_wr_en_o = cpu_wr_en_i;
    assign cache_wr_data_o = cpu_wr_data_i;

    assign cpu_rd_data_o = cache_rd_data_i;

    assign pipeline_stall_i = ~cache_addr_ack_i;


endmodule

