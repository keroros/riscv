// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/10/24 12:09
// Last Modified : 2024/11/15 09:56
// File Name     : cache_top_tb.v
// Description   :
//
// Copyright (c) 2024 Peking University.
// ALL RIGHTS RESERVED
//
// ---------------------------------------------------------------------------------
// Modification History:
// Date         By              Version                 Change Description
// ---------------------------------------------------------------------------------
// 2024/10/24   Qidc            1.0                     Original
// -FHDR----------------------------------------------------------------------------

`timescale 1ns/1ps

`include "/home/qidc/Nutstore/Project/riscv/defines/defines.v"

module cache_top_tb;

    parameter ClockPeriod = 10;

    reg                         clk              ;
    reg                         rst_n            ;

    reg                         cpu_rd_req_i     ;
    reg                         cpu_wr_req_i     ;
    reg  [`RV32_ADDR_WIDTH-1:0] cpu_rd_addr_i    ;
    reg  [`RV32_ADDR_WIDTH-1:0] cpu_wr_addr_i    ;
    reg  [`DATA_WIDTH-1:0]      cpu_wr_data_i    ;
    reg  [3:0]                  cpu_wr_en_i      ;
    wire [`DATA_WIDTH-1:0]      cpu_rd_data_o    ;
    reg                         pipeline_stall_o ;

    wire [`RAM_NUM-1:0]         ram_wr_en_o      ;
    wire [`RV32_ADDR_WIDTH-1:0] ram_wr_addr_o    ;
    wire [`DATA_WIDTH-1:0]      ram_wr_data_o    ;
    wire [`RV32_ADDR_WIDTH-1:0] ram_rd_addr_o    ;
    reg  [`DATA_WIDTH-1:0]      ram_rd_data_i    ;

    cache_top u_cache_top (
        .clk              ( clk              ),
        .rst_n            ( rst_n            ),
                                            
        .cpu_rd_req_i     ( cpu_rd_req_i     ),
        .cpu_wr_req_i     ( cpu_wr_req_i     ),
        .cpu_rd_addr_i    ( cpu_rd_addr_i    ),
        .cpu_wr_addr_i    ( cpu_wr_addr_i    ),
        .cpu_wr_data_i    ( cpu_wr_data_i    ),
        .cpu_wr_en_i      ( cpu_wr_en_i      ),
        .cpu_rd_data_o    ( cpu_rd_data_o    ),
        .pipeline_stall_o ( pipeline_stall_o ),
    
        .ram_wr_en_o      ( ram_wr_en_o      ),
        .ram_wr_addr_o    ( ram_wr_addr_o    ),
        .ram_wr_data_o    ( ram_wr_data_o    ),
        .ram_rd_addr_o    ( ram_rd_addr_o    ),
        .ram_rd_data_i    ( ram_rd_data_i    )
    );

    `define TB_WAY0_TAG        cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way0.u_tag.u_sp_ram.mem
    `define TB_WAY0_VALID      cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way0.u_valid.valid
    `define TB_WAY0_DIRTY      cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way0.u_dirty.dirty
    `define TB_WAY0_BANK0_RAM0 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way0.u_data.bank[0].u_bank.ram[0].u_simple_dp_ram.mem
    `define TB_WAY0_BANK0_RAM1 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way0.u_data.bank[0].u_bank.ram[1].u_simple_dp_ram.mem
    `define TB_WAY0_BANK0_RAM2 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way0.u_data.bank[0].u_bank.ram[2].u_simple_dp_ram.mem
    `define TB_WAY0_BANK0_RAM3 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way0.u_data.bank[0].u_bank.ram[3].u_simple_dp_ram.mem
    `define TB_WAY0_BANK1_RAM0 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way0.u_data.bank[1].u_bank.ram[0].u_simple_dp_ram.mem
    `define TB_WAY0_BANK1_RAM1 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way0.u_data.bank[1].u_bank.ram[1].u_simple_dp_ram.mem
    `define TB_WAY0_BANK1_RAM2 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way0.u_data.bank[1].u_bank.ram[2].u_simple_dp_ram.mem
    `define TB_WAY0_BANK1_RAM3 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way0.u_data.bank[1].u_bank.ram[3].u_simple_dp_ram.mem
    `define TB_WAY0_BANK2_RAM0 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way0.u_data.bank[2].u_bank.ram[0].u_simple_dp_ram.mem
    `define TB_WAY0_BANK2_RAM1 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way0.u_data.bank[2].u_bank.ram[1].u_simple_dp_ram.mem
    `define TB_WAY0_BANK2_RAM2 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way0.u_data.bank[2].u_bank.ram[2].u_simple_dp_ram.mem
    `define TB_WAY0_BANK2_RAM3 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way0.u_data.bank[2].u_bank.ram[3].u_simple_dp_ram.mem
    `define TB_WAY0_BANK3_RAM0 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way0.u_data.bank[3].u_bank.ram[0].u_simple_dp_ram.mem
    `define TB_WAY0_BANK3_RAM1 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way0.u_data.bank[3].u_bank.ram[1].u_simple_dp_ram.mem
    `define TB_WAY0_BANK3_RAM2 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way0.u_data.bank[3].u_bank.ram[2].u_simple_dp_ram.mem
    `define TB_WAY0_BANK3_RAM3 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way0.u_data.bank[3].u_bank.ram[3].u_simple_dp_ram.mem
    `define TB_WAY0_LRU        cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way0.u_lru.lru

    `define TB_WAY1_TAG        cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way1.u_tag.u_sp_ram.mem
    `define TB_WAY1_VALID      cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way1.u_valid.valid
    `define TB_WAY1_DIRTY      cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way1.u_dirty.dirty
    `define TB_WAY1_BANK0_RAM0 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way1.u_data.bank[0].u_bank.ram[0].u_simple_dp_ram.mem
    `define TB_WAY1_BANK0_RAM1 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way1.u_data.bank[0].u_bank.ram[1].u_simple_dp_ram.mem
    `define TB_WAY1_BANK0_RAM2 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way1.u_data.bank[0].u_bank.ram[2].u_simple_dp_ram.mem
    `define TB_WAY1_BANK0_RAM3 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way1.u_data.bank[0].u_bank.ram[3].u_simple_dp_ram.mem
    `define TB_WAY1_BANK1_RAM0 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way1.u_data.bank[1].u_bank.ram[0].u_simple_dp_ram.mem
    `define TB_WAY1_BANK1_RAM1 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way1.u_data.bank[1].u_bank.ram[1].u_simple_dp_ram.mem
    `define TB_WAY1_BANK1_RAM2 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way1.u_data.bank[1].u_bank.ram[2].u_simple_dp_ram.mem
    `define TB_WAY1_BANK1_RAM3 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way1.u_data.bank[1].u_bank.ram[3].u_simple_dp_ram.mem
    `define TB_WAY1_BANK2_RAM0 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way1.u_data.bank[2].u_bank.ram[0].u_simple_dp_ram.mem
    `define TB_WAY1_BANK2_RAM1 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way1.u_data.bank[2].u_bank.ram[1].u_simple_dp_ram.mem
    `define TB_WAY1_BANK2_RAM2 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way1.u_data.bank[2].u_bank.ram[2].u_simple_dp_ram.mem
    `define TB_WAY1_BANK2_RAM3 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way1.u_data.bank[2].u_bank.ram[3].u_simple_dp_ram.mem
    `define TB_WAY1_BANK3_RAM0 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way1.u_data.bank[3].u_bank.ram[0].u_simple_dp_ram.mem
    `define TB_WAY1_BANK3_RAM1 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way1.u_data.bank[3].u_bank.ram[1].u_simple_dp_ram.mem
    `define TB_WAY1_BANK3_RAM2 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way1.u_data.bank[3].u_bank.ram[2].u_simple_dp_ram.mem
    `define TB_WAY1_BANK3_RAM3 cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way1.u_data.bank[3].u_bank.ram[3].u_simple_dp_ram.mem
    `define TB_WAY1_LRU        cache_top_tb.u_cache_top.u_dcache.u_dcache.u_cache_way1.u_lru.lru

    // 时钟
    initial begin
        clk = 0;
        forever #(ClockPeriod/2) clk = ~clk;
    end

    initial begin

        // 初始化way0所有表
        $readmemh({`CACHE_TAG_PATH,   "way0_tag.txt"        }, `TB_WAY0_TAG       );
        $readmemh({`CACHE_VALID_PATH, "way0_valid.txt"      }, `TB_WAY0_VALID     );
        $readmemh({`CACHE_DIRTY_PATH, "way0_dirty.txt"      }, `TB_WAY0_DIRTY     );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank0_ram0.txt" }, `TB_WAY0_BANK0_RAM0 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank0_ram1.txt" }, `TB_WAY0_BANK0_RAM1 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank0_ram2.txt" }, `TB_WAY0_BANK0_RAM2 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank0_ram3.txt" }, `TB_WAY0_BANK0_RAM3 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank1_ram0.txt" }, `TB_WAY0_BANK1_RAM0 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank1_ram1.txt" }, `TB_WAY0_BANK1_RAM1 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank1_ram2.txt" }, `TB_WAY0_BANK1_RAM2 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank1_ram3.txt" }, `TB_WAY0_BANK1_RAM3 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank2_ram0.txt" }, `TB_WAY0_BANK2_RAM0 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank2_ram1.txt" }, `TB_WAY0_BANK2_RAM1 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank2_ram2.txt" }, `TB_WAY0_BANK2_RAM2 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank2_ram3.txt" }, `TB_WAY0_BANK2_RAM3 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank3_ram0.txt" }, `TB_WAY0_BANK3_RAM0 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank3_ram1.txt" }, `TB_WAY0_BANK3_RAM1 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank3_ram2.txt" }, `TB_WAY0_BANK3_RAM2 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank3_ram3.txt" }, `TB_WAY0_BANK3_RAM3 );
        $readmemh({`CACHE_LRU_PATH,   "way0_lru.txt"        }, `TB_WAY0_LRU        );

        // 初始化way1所有表
        $readmemh({`CACHE_TAG_PATH,   "way1_tag.txt"        }, `TB_WAY1_TAG       );
        $readmemh({`CACHE_VALID_PATH, "way1_valid.txt"      }, `TB_WAY1_VALID     );
        $readmemh({`CACHE_DIRTY_PATH, "way1_dirty.txt"      }, `TB_WAY1_DIRTY     );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank0_ram0.txt" }, `TB_WAY1_BANK0_RAM0 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank0_ram1.txt" }, `TB_WAY1_BANK0_RAM1 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank0_ram2.txt" }, `TB_WAY1_BANK0_RAM2 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank0_ram3.txt" }, `TB_WAY1_BANK0_RAM3 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank1_ram0.txt" }, `TB_WAY1_BANK1_RAM0 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank1_ram1.txt" }, `TB_WAY1_BANK1_RAM1 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank1_ram2.txt" }, `TB_WAY1_BANK1_RAM2 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank1_ram3.txt" }, `TB_WAY1_BANK1_RAM3 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank2_ram0.txt" }, `TB_WAY1_BANK2_RAM0 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank2_ram1.txt" }, `TB_WAY1_BANK2_RAM1 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank2_ram2.txt" }, `TB_WAY1_BANK2_RAM2 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank2_ram3.txt" }, `TB_WAY1_BANK2_RAM3 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank3_ram0.txt" }, `TB_WAY1_BANK3_RAM0 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank3_ram1.txt" }, `TB_WAY1_BANK3_RAM1 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank3_ram2.txt" }, `TB_WAY1_BANK3_RAM2 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank3_ram3.txt" }, `TB_WAY1_BANK3_RAM3 );
        $readmemh({`CACHE_LRU_PATH,   "way1_lru.txt"        }, `TB_WAY1_LRU        );
    end

    reg [3:0] op_num;

    initial begin
        rst_n <= 0;
        #ClockPeriod rst_n <= 1;

        // 复位输入
        op_num        <= 4'd0;
        cpu_rd_req_i  <= 0;
        cpu_wr_req_i  <= 0;
        cpu_rd_addr_i <= 32'h0000_0000;
        cpu_wr_addr_i <= 32'h0000_0000;
        cpu_wr_data_i <= 32'h0000_0000;
        cpu_wr_en_i   <= 4'b0000;
        ram_rd_data_i <= 32'h0000_0000;
        
        #(ClockPeriod/2);

        #ClockPeriod;

        op_num        <= 4'd1;
        cpu_rd_req_i  <= 1;
        cpu_wr_req_i  <= 0;
        cpu_rd_addr_i <= 32'h0000_0000;
        cpu_wr_addr_i <= 32'h0000_0000;
        cpu_wr_data_i <= 32'h0000_0000;
        cpu_wr_en_i   <= 4'b0000;
        ram_rd_data_i <= 32'h0000_0000;






endmodule

