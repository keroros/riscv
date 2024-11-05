// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/11/05 17:46
// Last Modified : 2024/11/05 22:37
// File Name     : dcache_tb.sv
// Description   :
//         
// Copyright (c) 2024 Peking University.
// ALL RIGHTS RESERVED
// 
// Local Variables: 
// verilog-library-directories:("/home/qidc/Nutstore/Project/riscv")
// verilog-library-directories-recursive:1
// End:
// 
// ---------------------------------------------------------------------------------
// Modification History:
// Date         By              Version                 Change Description
// ---------------------------------------------------------------------------------
// 2024/11/05   Qidc            1.0                     Original
// -FHDR----------------------------------------------------------------------------

module dcache_tb;

    parameter ClockPeriod = 10;

    reg clk;
    reg rst_n;

    // CPU与Cache之间的信号
    reg                          cpu_req_i      ;
    reg                          cpu_op_i       ;
    reg  [`CACHE_INDEX_AW-1:0]   cpu_index_i    ;
    reg  [`CACHE_TAG_WIDTH-1:0]  cpu_tag_i      ;
    reg  [`CACHE_OFFSET_AW-1:0]  cpu_offset_i   ;
    reg  [`RAM_NUM-1:0]          cpu_wr_en_i    ;
    reg  [`DATA_WIDTH-1:0]       cpu_wr_data_i  ;
    wire [`DATA_WIDTH-1:0]       cpu_rd_data_o  ;
    wire                         cpu_addr_ack_o ;
    wire                         cpu_data_ack_o ;

    // Cache与RAM接口模块的之间的信号
    wire                         ram_rd_req_o   ;
    wire [`RV32_ADDR_WIDTH-1:0]  ram_rd_addr_o  ;
    reg                          ram_rd_rdy_i   ;
    reg  [`DATA_WIDTH-1:0]       ram_rd_data_i  ;
    reg  [2:0]                   ram_rd_num_i   ;
    reg                          ram_wr_rdy_i   ;
    wire                         ram_wr_req_o   ;
    wire [`RV32_ADDR_WIDTH-1:0]  ram_wr_addr_o  ;
    wire [`DATA_WIDTH*4-1:0]     ram_wr_data_o  ;
    wire                         ram_dirty_o    ; 
    
    // 例化
    dcache u_dcache(/*autoinst*/
        .clk            (clk            ),
        .rst_n          (rst_n          ),
        .cpu_req_i      (cpu_req_i      ),
        .cpu_op_i       (cpu_op_i       ),
        .cpu_index_i    (cpu_index_i    ),
        .cpu_tag_i      (cpu_tag_i      ),
        .cpu_offset_i   (cpu_offset_i   ),
        .cpu_wr_en_i    (cpu_wr_en_i    ),
        .cpu_wr_data_i  (cpu_wr_data_i  ),
        .cpu_rd_data_o  (cpu_rd_data_o  ),
        .cpu_addr_ack_o (cpu_addr_ack_o ),
        .cpu_data_ack_o (cpu_data_ack_o ),
        .ram_rd_req_o   (ram_rd_req_o   ),
        .ram_rd_addr_o  (ram_rd_addr_o  ),
        .ram_rd_rdy_i   (ram_rd_rdy_i   ),
        .ram_rd_data_i  (ram_rd_data_i  ),
        .ram_rd_num_i   (ram_rd_num_i   ),
        .ram_wr_rdy_i   (ram_wr_rdy_i   ),
        .ram_wr_req_o   (ram_wr_req_o   ),
        .ram_wr_addr_o  (ram_wr_addr_o  ),
        .ram_wr_data_o  (ram_wr_data_o  ),
        .ram_dirty_o    (ram_dirty_o    )
    );

    initial begin
        clk = 0;
        forever *(ClockPeriod/2) clk = ~clk;
    end

    initial begin
        rst_n = 1;
        #ClockPeriod rst_n = 0;



        #ClockPeriod
        cpu_req_i = 1;


    
endmodule

