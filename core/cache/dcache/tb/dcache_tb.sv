// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/11/05 17:46
// Last Modified : 2024/11/07 17:38
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

`timescale 1ns/1ps

`include "/home/qidc/Nutstore/Project/riscv/defines/defines.v"

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
        // 时钟和复位
        .clk            (clk            ),
        .rst_n          (rst_n          ),
        // CPU与Cache交互
        .cpu_req_i      (cpu_req_i      ),
        .cpu_op_i       (cpu_op_i       ),
        .cpu_index_i    (cpu_index_i    ), // 8bit
        .cpu_tag_i      (cpu_tag_i      ), // 20bit
        .cpu_offset_i   (cpu_offset_i   ), // 4bit
        .cpu_wr_en_i    (cpu_wr_en_i    ), // 4bit
        .cpu_wr_data_i  (cpu_wr_data_i  ), // 32bit
        .cpu_rd_data_o  (cpu_rd_data_o  ), // 32bit
        .cpu_addr_ack_o (cpu_addr_ack_o ),
        .cpu_data_ack_o (cpu_data_ack_o ),
        // Cache与RAM交互
        .ram_rd_req_o   (ram_rd_req_o   ),
        .ram_rd_addr_o  (ram_rd_addr_o  ), // 32bit
        .ram_rd_rdy_i   (ram_rd_rdy_i   ),
        .ram_rd_data_i  (ram_rd_data_i  ), // 32bit
        .ram_rd_num_i   (ram_rd_num_i   ), // 3bit
        .ram_wr_rdy_i   (ram_wr_rdy_i   ),
        .ram_wr_req_o   (ram_wr_req_o   ),
        .ram_wr_addr_o  (ram_wr_addr_o  ), // 32bit
        .ram_wr_data_o  (ram_wr_data_o  ), // 128bit
        .ram_dirty_o    (ram_dirty_o    )
    );

    // 时钟
    initial begin
        clk = 0;
        forever #(ClockPeriod/2) clk = ~clk;
    end

    initial begin

        // way0
        $readmemh({`CACHE_TAG_PATH,   "way0_tag.txt"        }, `TB_WAY0_TAG       );
        $readmemh({`CACHE_VALID_PATH, "way0_valid.txt"      }, `TB_WAY0_VALID     );
        $readmemh({`CACHE_DIRTY_PATH, "way0_dirty.txt"      }, `TB_WAY0_DIRTY     );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank0_ram0.txt" }, `TB_WAY0_BAN0_RAM0 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank0_ram1.txt" }, `TB_WAY0_BAN0_RAM1 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank0_ram2.txt" }, `TB_WAY0_BAN0_RAM2 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank0_ram3.txt" }, `TB_WAY0_BAN0_RAM3 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank1_ram0.txt" }, `TB_WAY0_BAN1_RAM0 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank1_ram1.txt" }, `TB_WAY0_BAN1_RAM1 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank1_ram2.txt" }, `TB_WAY0_BAN1_RAM2 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank1_ram3.txt" }, `TB_WAY0_BAN1_RAM3 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank2_ram0.txt" }, `TB_WAY0_BAN2_RAM0 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank2_ram1.txt" }, `TB_WAY0_BAN2_RAM1 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank2_ram2.txt" }, `TB_WAY0_BAN2_RAM2 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank2_ram3.txt" }, `TB_WAY0_BAN2_RAM3 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank3_ram0.txt" }, `TB_WAY0_BAN3_RAM0 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank3_ram1.txt" }, `TB_WAY0_BAN3_RAM1 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank3_ram2.txt" }, `TB_WAY0_BAN3_RAM2 );
        $readmemh({`CACHE_DATA_PATH,  "way0_bank3_ram3.txt" }, `TB_WAY0_BAN3_RAM3 );
        $readmemh({`CACHE_LRU_PATH,   "way0_lru.txt"        }, `TB_WAY0_BAN0_RAM0 );

        // way1
        $readmemh({`CACHE_TAG_PATH,   "way1_tag.txt"        }, `TB_WAY1_TAG       );
        $readmemh({`CACHE_VALID_PATH, "way1_valid.txt"      }, `TB_WAY1_VALID     );
        $readmemh({`CACHE_DIRTY_PATH, "way1_dirty.txt"      }, `TB_WAY1_DIRTY     );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank0_ram0.txt" }, `TB_WAY1_BAN1_RAM0 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank0_ram1.txt" }, `TB_WAY1_BAN1_RAM1 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank0_ram2.txt" }, `TB_WAY1_BAN1_RAM2 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank0_ram3.txt" }, `TB_WAY1_BAN1_RAM3 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank1_ram0.txt" }, `TB_WAY1_BAN1_RAM0 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank1_ram1.txt" }, `TB_WAY1_BAN1_RAM1 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank1_ram2.txt" }, `TB_WAY1_BAN1_RAM2 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank1_ram3.txt" }, `TB_WAY1_BAN1_RAM3 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank2_ram0.txt" }, `TB_WAY1_BAN2_RAM0 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank2_ram1.txt" }, `TB_WAY1_BAN2_RAM1 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank2_ram2.txt" }, `TB_WAY1_BAN2_RAM2 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank2_ram3.txt" }, `TB_WAY1_BAN2_RAM3 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank3_ram0.txt" }, `TB_WAY1_BAN3_RAM0 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank3_ram1.txt" }, `TB_WAY1_BAN3_RAM1 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank3_ram2.txt" }, `TB_WAY1_BAN3_RAM2 );
        $readmemh({`CACHE_DATA_PATH,  "way1_bank3_ram3.txt" }, `TB_WAY1_BAN3_RAM3 );
        $readmemh({`CACHE_LRU_PATH,   "way1_lru.txt"        }, `TB_WAY1_BAN1_RAM1 );

        rst_n <= 0;
        #ClockPeriod rst_n <= 1;

        // 复位输入
        cpu_req_i     <= 0;
        cpu_op_i      <= 0;
        cpu_index_i   <= 8'h00;
        cpu_tag_i     <= 20'h00000;
        cpu_offset_i  <= 4'b0000;
        cpu_wr_en_i   <= 4'b0000;
        cpu_wr_data_i <= 32'h0000_0000;
        ram_rd_rdy_i  <= 1'b0;
        ram_rd_data_i <= 32'h0000_0000;
        ram_rd_num_i  <= 3'd0;
        ram_wr_rdy_i  <= 1'b1;

        #(ClockPeriod/2);

        wait (cpu_addr_ack_o); // 地址信号空闲，CPU可以请求

        // 一次读操作，index00, way0, tag00000, bank1: 32'h10101010
        cpu_req_i     <= 1;
        cpu_op_i      <= 0;
        cpu_index_i   <= 8'h00;
        cpu_tag_i     <= 20'h00000;
        cpu_offset_i  <= 4'b0100;
        cpu_wr_en_i   <= 4'b0000;
        cpu_wr_data_i <= 32'h0000_0000;
        ram_rd_rdy_i  <= 1'b0;
        ram_rd_data_i <= 32'h0000_0000;
        ram_rd_num_i  <= 3'd0;
        ram_wr_rdy_i  <= 1'b1;

        #ClockPeriod;

        // 连续读操作，index01, way1, tag01010, bank2: 32'hffeeddcc
        cpu_req_i     <= 1;
        cpu_op_i      <= 0;
        cpu_index_i   <= 8'h01;
        cpu_tag_i     <= 20'h01010;
        cpu_offset_i  <= 4'b1000;
        cpu_wr_en_i   <= 4'b0000;
        cpu_wr_data_i <= 32'h0000_0000;
        ram_rd_rdy_i  <= 1'b0;
        ram_rd_data_i <= 32'h0000_0000;
        ram_rd_num_i  <= 3'd0;
        ram_wr_rdy_i  <= 1'b1;

        #ClockPeriod;

        // 结束请求
        cpu_req_i     <= 0;
        cpu_op_i      <= 0;
        cpu_index_i   <= 8'h00;
        cpu_tag_i     <= 20'h00000;
        cpu_offset_i  <= 4'b0000;
        cpu_wr_en_i   <= 4'b0000;
        cpu_wr_data_i <= 32'h0000_0000;
        ram_rd_rdy_i  <= 1'b0;
        ram_rd_data_i <= 32'h0000_0000;
        ram_rd_num_i  <= 3'd0;
        ram_wr_rdy_i  <= 1'b1;

        #(ClockPeriod*10);

        $display("At time %0t ns", $time);

        $finish;

    end

	initial begin
		$fsdbDumpfile("./rtl.fsdb");
		$fsdbDumpvars("+all");
	end

endmodule

