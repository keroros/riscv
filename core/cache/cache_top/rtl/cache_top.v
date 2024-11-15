// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/10/23 10:18
// Last Modified : 2024/11/15 16:53
// File Name     : cache_top.v
// Description   : Cache top module
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

module cache_top (

    input  wire                        clk              ,
    input  wire                        rst_n            ,

    // core to cache top
    input  wire                        cpu_rd_req_i     ,
    input  wire                        cpu_wr_req_i     ,
    input  wire [`RV32_ADDR_WIDTH-1:0] cpu_rd_addr_i    ,
    input  wire [`RV32_ADDR_WIDTH-1:0] cpu_wr_addr_i    ,
    input  wire [`DATA_WIDTH-1:0]      cpu_wr_data_i    ,
    input  wire [3:0]                  cpu_wr_en_i      ,
    output wire [`DATA_WIDTH-1:0]      cpu_rd_data_o    ,
    output wire                        pipeline_stall_o ,
    output wire                        cache_data_ack_o ,

    // cache top to RAM
    output wire [`RAM_NUM-1:0]         ram_wr_en_o   ,
    output wire [`RV32_ADDR_WIDTH-1:0] ram_wr_addr_o ,
    output wire [`DATA_WIDTH-1:0]      ram_wr_data_o ,
    output wire [`RV32_ADDR_WIDTH-1:0] ram_rd_addr_o ,
    input  wire [`DATA_WIDTH-1:0]      ram_rd_data_i
);

   // CPU to cache
    wire                        cache_req_o      ;
    wire                        cache_op_o       ;
    wire [`CACHE_INDEX_AW-1:0]  cache_index_o    ;
    wire [`CACHE_TAG_WIDTH-1:0] cache_tag_o      ;
    wire [`CACHE_OFFSET_AW-1:0] cache_offset_o   ;
    wire [`RAM_NUM-1:0]         cache_wr_en_o    ;
    wire [`DATA_WIDTH-1:0]      cache_wr_data_o  ;
    wire [`DATA_WIDTH-1:0]      cache_rd_data_i  ;
    wire                        cache_addr_ack_i ;
    wire                        cache_data_ack_i ;

    // Cache to ram
    wire                        cache_rd_req_i  ;
    wire [`RV32_ADDR_WIDTH-1:0] cache_rd_addr_i ;
    wire                        cache_rd_rdy_o  ;
    wire [`DATA_WIDTH-1:0]      cache_rd_data_o ;
    wire [2:0]                  cache_rd_num_o  ;
    wire                        cache_wr_rdy_o  ;
    wire                        cache_wr_req_i  ;
    wire [`RV32_ADDR_WIDTH-1:0] cache_wr_addr_i ;
    wire [`DATA_WIDTH*4-1:0]    cache_wr_data_i ;
    wire                        cache_dirty_i   ;

 core_cache_buf u_core_cache_buf (

    .clk              (clk              ),
    .rst_n            (rst_n            ),
    .cpu_rd_req_i     (cpu_rd_req_i     ),
    .cpu_wr_req_i     (cpu_wr_req_i     ),
    .cpu_rd_addr_i    (cpu_rd_addr_i    ),
    .cpu_wr_addr_i    (cpu_wr_addr_i    ),
    .cpu_wr_data_i    (cpu_wr_data_i    ),
    .cpu_wr_en_i      (cpu_wr_en_i      ),
    .cpu_rd_data_o    (cpu_rd_data_o    ),
    .pipeline_stall_o (pipeline_stall_o ),
    .cache_data_ack_o (cache_data_ack_o ),
    .cache_req_o      (cache_req_o      ),
    .cache_op_o       (cache_op_o       ),
    .cache_index_o    (cache_index_o    ),
    .cache_tag_o      (cache_tag_o      ),
    .cache_offset_o   (cache_offset_o   ),
    .cache_wr_en_o    (cache_wr_en_o    ),
    .cache_wr_data_o  (cache_wr_data_o  ),
    .cache_rd_data_i  (cache_rd_data_i  ),
    .cache_addr_ack_i (cache_addr_ack_i ),
    .cache_data_ack_i (cache_data_ack_i )
);

 dcache u_dcache (
    .clk            (clk              ),
    .rst_n          (rst_n            ),
    .cpu_req_i      (cache_req_o      ),
    .cpu_op_i       (cache_op_o       ),
    .cpu_index_i    (cache_index_o    ),
    .cpu_tag_i      (cache_tag_o      ),
    .cpu_offset_i   (cache_offset_o   ),
    .cpu_wr_en_i    (cache_wr_en_o    ),
    .cpu_wr_data_i  (cache_wr_data_o  ),
    .cpu_rd_data_o  (cache_rd_data_i  ),
    .cpu_addr_ack_o (cache_addr_ack_i ),
    .cpu_data_ack_o (cache_data_ack_i ),
    .ram_rd_req_o   (cache_rd_req_i   ),
    .ram_rd_addr_o  (cache_rd_addr_i  ),
    .ram_rd_rdy_i   (cache_rd_rdy_o   ),
    .ram_rd_data_i  (cache_rd_data_o  ),
    .ram_rd_num_i   (cache_rd_num_o   ),
    .ram_wr_rdy_i   (cache_wr_rdy_o   ),
    .ram_wr_req_o   (cache_wr_req_i   ),
    .ram_wr_addr_o  (cache_wr_addr_i  ),
    .ram_wr_data_o  (cache_wr_data_i  ),
    .ram_dirty_o    (cache_dirty_i    )
);

 cache_ram_buf u_cache_ram_buf (
    .clk             (clk             ),
    .rst_n           (rst_n           ),
    .cache_rd_req_i  (cache_rd_req_i  ),
    .cache_rd_addr_i (cache_rd_addr_i ),
    .cache_rd_rdy_o  (cache_rd_rdy_o  ),
    .cache_rd_data_o (cache_rd_data_o ),
    .cache_rd_num_o  (cache_rd_num_o  ),
    .cache_wr_rdy_o  (cache_wr_rdy_o  ),
    .cache_wr_req_i  (cache_wr_req_i  ),
    .cache_wr_addr_i (cache_wr_addr_i ),
    .cache_wr_data_i (cache_wr_data_i ),
    .cache_dirty_i   (cache_dirty_i   ),
    .ram_wr_en_o     (ram_wr_en_o     ),
    .ram_wr_addr_o   (ram_wr_addr_o   ),
    .ram_wr_data_o   (ram_wr_data_o   ),
    .ram_rd_addr_o   (ram_rd_addr_o   ),
    .ram_rd_data_i   (ram_rd_data_i   )
);

endmodule

