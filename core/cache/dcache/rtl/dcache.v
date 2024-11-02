// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/10/23 10:18
// Last Modified : 2024/11/02 22:19
// File Name     : dcache.v
// Description   : DCache 模块
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

module dcache (
    // 时钟和复位
    input  wire                         clk            ,
    input  wire                         rst_n          ,
    // CPU与Cache的之间的信号
    input  wire                         cpu_req_i      , // CPU对Cache的访问请求
    input  wire                         cpu_op_i       , // 读写操作：1写 0读
    input  wire [`CACHE_INDEX_AW-1:0]   cpu_index_i    , // CPU地址的Index域
    input  wire [`CACHE_TAG_WIDTH-1:0]  cpu_tag_i      , // CPU地址的Tag域
    input  wire [`CACHE_OFFSET_AW-1:0]  cpu_offset_i   , // CPU地址的Offset域
    input  wire [`RAM_NUM-1:0]          cpu_wr_en_i    , // 写使能，只对置1的位写入
    input  wire [`DATA_WIDTH-1:0]       cpu_wr_data_i  , // 要写入Cahce的数据
    output wire [`DATA_WIDTH-1:0]       cpu_rd_data_o  , // 要从Cache读出的数据
    output wire                         cpu_addr_ack_o , // 该次请求的地址传输已经完成
    output wire                         cpu_data_ack_o , // 该次请求的数据传输已经完成
    // Cache与RAM接口模块的之间的信号
    output wire                         ram_rd_req_o   , // Cache对RAM的读请求信号
    output wire [`RV32_ADDR_WIDTH-1:0]  ram_rd_addr_o  , // 读起始地址
    input  wire                         ram_rd_rdy_i   , // 读请求能否被接收的握手信号
    input  wire [`DATA_WIDTH-1:0]       ram_rd_data_i  , // 读返回数据
    input  wire [2:0]                   ram_rd_num_i   , // 返回数据是一次读的最后一个数据
    input  wire                         ram_wr_rdy_i   , // 写请求能否被接受的握手信号
    output wire                         ram_wr_req_o   , // 写请求信号，必须要在握手信号之后
    output wire [`RV32_ADDR_WIDTH-1:0]  ram_wr_addr_o  , // 写起始地址
    output wire [`DATA_WIDTH*4-1:0]     ram_wr_data_o  , // 写数据
    output wire                         ram_dirty_o      // 数据是否Dirty
);

    // 定义reg型输出
    reg ram_rd_req;
    reg ram_wr_req;

    // 读命中时，数据从Cache读出；未命中时，数据从RAM返回的Data中选取
    assign cpu_rd_data_o = req_buf_offset == (ram_rd_num_i-1'b1) ? ram_rd_data_i : load_word;

    assign ram_rd_req_o = ram_rd_req;
    assign ram_wr_req_o = ram_wr_req;

    assign ram_wr_addr_o = req_buf_tag;
    assign ram_wr_data_o = replace_data;

    // 获取当前Index索引到的两路Tag、V、D、Data
    wire [`CACHE_TAG_WIDTH-1:0] way0_tag;
    wire [`CACHE_TAG_WIDTH-1:0] way1_tag;
    wire                        way0_valid;
    wire                        way1_valid;
    wire                        way0_dirty;
    wire                        way1_dirty;
    wire [`DATA_WIDTH*4-1:0]    way0_data;
    wire [`DATA_WIDTH*4-1:0]    way1_data;
    wire                        way0_lru;
    wire                        way1_lru;

    // 实例化way0
    cache_way u_cache_way0 (
        .clk            (clk          ),
        .index_i        (cpu_index_i  ),
        .offset_i       (cpu_offset_i ),
        .wr_tag_en_i    (),
        .wr_valid_en_i  (),
        .wr_dirty_en_i  (),
        .wr_full_bank_i ()
        .wr_data_en_i   (),
        .wr_lru_en_i    (),
        .wr_tag_i       (),
        .wr_valid_i     (),
        .wr_dirty_i     (),
        .wr_data_i      (),
        .wr_lru_i       (),
        .rd_tag_o       (way0_tag     ),
        .rd_valid_o     (way0_valid   ),
        .rd_dirty_o     (way0_dirty   ),
        .rd_data_o      (way0_data    ),
        .rd_lru_o       (way0_lru     )
    );

    // 实例化way1
    cache_way u_cache_way1 (
        .clk            (clk          ),
        .index_i        (cpu_index_i  ),
        .offset_i       (cpu_offset_i ),
        .wr_tag_en_i    (),
        .wr_valid_en_i  (),
        .wr_dirty_en_i  (),
        .wr_full_bank_i ()
        .wr_data_en_i   (),
        .wr_lru_en_i    (),
        .wr_tag_i       (),
        .wr_valid_i     (),
        .wr_dirty_i     (),
        .wr_data_i      (),
        .wr_lru_i       (),
        .rd_tag_o       (way1_tag     ),
        .rd_valid_o     (way1_valid   ),
        .rd_dirty_o     (way1_dirty   ),
        .rd_data_o      (way1_data    ),
        .rd_lru_o       (way1_lru     )
    );

    // Request buffer
    reg                        req_buf_op;
    reg [`CACHE_INDEX_AW-1:0]  req_buf_index;   // 8bit
    reg [`CACHE_TAG_WIDTH-1:0] req_buf_tag;     // 20bit
    reg [`CACHE_OFFSET_AW-1:0] req_buf_offset;  // 4bit
    reg [`RAM_NUM-1:0]         req_buf_wr_en;   // 4bit
    reg [`DATA_WIDTH-1:0]      req_buf_wr_data; // 32bit

    // Miss buffer
    reg miss_buf_replace_way; // 要替换的路，1bit

    // Write buffer
    reg                       wr_buf_way;     // 1bit
    reg [`CACHE_INDEX_AW-1:0] wr_buf_index;   // 8bit
    reg [`CACHE_BANK_NUM-1:0] wr_buf_offset;  // 4bit
    reg [`RAM_NUM-1:0]        wr_buf_wr_en;   // 4bit
    reg [`DATA_WIDTH-1:0]     wr_buf_wr_data; // 32bit

    // Tag Compare 比较哪一路被命中
    wire way0_hit;
    wire way1_hit;
    wire cache_hit; // 只要有一路命中，就表示Cache命中

    assign way0_hit = (way0_valid == 1'b1) && (way0_tag == req_buf_tag);
    assign way1_hit = (way1_valid == 1'b1) && (way1_tag == req_buf_tag);
    assign cache_hit = way0_hit || way1_hit;

    // Data select 对从Data中取出的数据进行选择
    wire [`DATA_WIDTH-1:0]   way0_load_word;
    wire [`DATA_WIDTH-1:0]   way1_load_word;
    wire [`DATA_WIDTH-1:0]   load_word;    // 读出的字
    wire [`DATA_WIDTH*4-1:0] replace_data; // 要替换的一整行

    assign way0_load_word = way0_data[`DATA_WIDTH*req_buf_offset[3:2] +: `DATA_WIDTH];
    assign way1_load_word = way1_data[`DATA_WIDTH*req_buf_offset[3:2] +: `DATA_WIDTH];
    assign load_word = {`DATA_WIDTH{way0_hit}} & way0_load_word |
                       {`DATA_WIDTH{way1_hit}} & way1_load_word; // 读操作时，从读出的Data中选择Word

    assign replace_data = miss_buf_replace_way ? way1_data : way0_data; // 替换时，选择要替换的Data

    // Write Conflict 处理写冲突
    wire same_bank;
    wire wr_conflict;

    // 主状态机定义
    localparam MAIN_IDLE    = 5'b00001;
    localparam MAIN_LOOKUP  = 5'b00010;
    localparam MAIN_MISS    = 5'b00100;
    localparam MAIN_REPLACE = 5'b01000;
    localparam MAIN_REFILL  = 5'b10000;

    reg [4:0] main_state;
    reg [4:0] next_main_state;

    // Main状态输出
    always @(*) begin
        case (main_state)
            MAIN_IDLE: begin
                req_buf_op           = 1'b0;
                req_buf_index        = `RST_CACHE_INDEX;
                req_buf_tag          = `RST_CACHE_TAG;
                req_buf_offset       = `RST_CACHE_OFFSET;
                req_buf_wr_en        = `RAM_WR_DISABLE;
                req_buf_wr_data      = `RST_DATA;
                miss_buf_replace_way = 1'b0;
                ram_wr_req           = 1'b0;
                ram_rd_req           = 1'b0;
            end
            MAIN_LOOKUP: begin
                req_buf_op           = cpu_op_i;
                req_buf_index        = cpu_index_i;
                req_buf_tag          = cpu_tag_i;
                req_buf_offset       = cpu_offset_i;
                req_buf_wr_en        = cpu_wr_en_i;
                req_buf_wr_data      = cpu_wr_data_i;
                miss_buf_replace_way = 1'b0;
                ram_wr_req           = 1'b0;
                ram_rd_req           = 1'b0;
            end
            MAIN_MISS: begin
                req_buf_op           = req_buf_op;
                req_buf_index        = req_buf_index;
                req_buf_tag          = req_buf_tag;
                req_buf_offset       = req_buf_offset;
                req_buf_wr_en        = req_buf_wr_en;
                req_buf_wr_data      = req_buf_wr_data;
                if (ram_wr_rdy_i == 1'b1) begin
                    miss_buf_replace_way = way0_lru | ~way1_lru; // lru为0替换
                end else begin
                    miss_buf_replace_way = 1'b0;
                end
                ram_wr_req           = 1'b0;
                ram_rd_req           = 1'b0;
            end
            MAIN_REPLACE: begin
                req_buf_op           = req_buf_op;
                req_buf_index        = req_buf_index;
                req_buf_tag          = req_buf_tag;
                req_buf_offset       = req_buf_offset;
                req_buf_wr_en        = req_buf_wr_en;
                req_buf_wr_data      = req_buf_wr_data;
                miss_buf_replace_way = miss_buf_replace_way;
                ram_wr_req           = 1'b1; // 发起写请求
                ram_rd_req           = 1'b1; // 发起读请求
            end
            MAIN_REFILL: begin
                req_buf_op           = req_buf_op;
                req_buf_index        = req_buf_index;
                req_buf_tag          = req_buf_tag;
                req_buf_offset       = req_buf_offset;
                req_buf_wr_en        = req_buf_wr_en;
                req_buf_wr_data      = req_buf_wr_data;
                miss_buf_replace_way = miss_buf_replace_way;
                ram_wr_req           = 1'b0; // 写请求置0
                ram_rd_req           = 1'b1; // 发起读请求
            end
            default: begin
                req_buf_op           = 1'b0;
                req_buf_index        = `RST_CACHE_INDEX;
                req_buf_tag          = `RST_CACHE_TAG;
                req_buf_offset       = `RST_CACHE_OFFSET;
                req_buf_wr_en        = `RAM_WR_DISABLE;
                req_buf_wr_data      = `RST_DATA;
                miss_buf_replace_way = 1'b0;
                ram_wr_req           = 1'b0;
                ram_rd_req           = 1'b0;
            end
        endcase
    end

    // Main状态切换逻辑
    always @(*) begin
        case (main_state)
            MAIN_IDLE: begin
                if (cpu_req_i == 1'b1) begin
                    next_main_state = MAIN_LOOKUP;
                end else begin
                    next_main_state = MAIN_IDLE;
                end
            end
            MAIN_LOOKUP: begin
                if (cache_hit == 1'b1) begin
                    if (cpu_req_i == 1'b1) begin
                        next_main_state = MAIN_LOOKUP;
                    end else begin
                        next_state_state = MAIN_IDLE;
                    end
                end else begin
                    next_main_state = MAIN_MISS;
                end
            end
            MAIN_MISS: begin
                if (ram_wr_rdy_i == 1'b1) begin
                    next_main_state = MAIN_REPLACE;
                end else begin
                    next_main_state = MAIN_MISS;
                end
            end
            MAIN_REPLACE: begin
                if (ram_rd_rdy_i == 1'b1) begin
                    next_main_state = MAIN_REFILL;
                end else begin
                    next_main_state = MAIN_REPLACE;
                end
            end
            MAIN_REFILL: begin
                if (ram_rd_num_i == 3'd4) begin
                    next_main_state = MAIN_IDLE;
                end else begin
                    next_main_state = MAIN_REFILL;
                end
            end
            default: begin
                next_main_state = MAIN_IDLE;
            end
        endcase
    end

    // Main状态切换
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            main_state <= IDLE;
        end else begin
            main_state <= next_main_state;
        end
    end

    // Write Buffer 状态机定义
    localparam WRBUF_IDLE  = 1'b0;
    localparam WRBUF_WRITE = 1'b1;

    reg wrbuf_state;
    reg next_wrbuf_state;

    // Write Buffer状态输出
    always @(*) begin
        case (wrbuf_state)
            WRBUF_IDLE: begin
                wr_buf_way     = 1'b0;
                wr_buf_index   = cpu_index_i;
                wr_buf_offset  = cpu_offset_i;
                wr_buf_wr_en   = cpu_wr_en_i;
                wr_buf_wr_data = cpu_wr_data_i;
            end
            WRBUF_WRITE: begin
                wr_buf_way     = ~way0_hit | way1_hit; // 选择命中的way
                wr_buf_index   = req_buf_index;
                wr_buf_offset  = req_buf_offset;
                wr_buf_wr_en   = req_buf_wr_en;
                wr_buf_wr_data = req_buf_wr_data;
            end
            default: begin
                wr_buf_way     = 1'b0;
                wr_buf_index   = `RST_CACHE_INDEX;
                wr_buf_offset  = `RST_CACHE_OFFSET;
                wr_buf_wr_en   = `RAM_WR_DISABLE;
                wr_buf_wr_data = `RST_DATA;
            end
        endcase
    end

    // Write Buffer 状态切换逻辑
    always @(*) begin
        case (wrbuf_state)
            WRBUF_IDLE: begin
                if (main_state == MAIN_LOOKUP &&
                    req_buf_op == 1'b1 &&
                    cache_hit  == 1'b1) begin // 在LOOKUP状态发现写请求命中
                    next_wrbuf_state = WRBUF_WRITE;
                end else begin
                    next_wrbuf_state = WRBUF_IDLE;
                end
            end
            WRBUF_WRITE: begin
                if (main_state == MAIN_LOOKUP &&
                    req_buf_op == 1'b1 &&
                    cache_hit  == 1'b1) begin // 在LOOKUP状态发现新的写请求
                    next_wrbuf_state = WRBUF_WRITE;
                end else begin
                    next_wrbuf_state = WRBUF_IDLE;
                end
            end
            default: begin
                next_wrbuf_state = IDLE;
            end
        endcase
    end

    // Write Buffer 状态切换
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            wrbuf_state <= WRBUF_IDLE;
        end else begin
            wrbuf_state <= next_wrbuf_state;
        end
    end

    // 定义状态变量简化表达
    wire main_state_lookup;
    wire main_state_replace;
    wire main_state_refill;
    wire wrbuf_state_write;

    assign main_state_lookup  = main_state  == MAIN_LOOKUP  ? 1'b1 : 1'b0;
    assign wrbuf_state_write  = wrbuf_state == WRBUF_WRITE  ? 1'b1 : 1'b0;
    assign main_state_replace = main_state  == MAIN_REPLACE ? 1'b1 : 1'b0;
    assign main_state_refill  = main_state  == MAIN_REFILL  ? 1'b1 : 1'b0;

    // 生成所有表的使能信号
    wire way0_wr_tag_en;
    wire way1_wr_tag_en;
    wire way0_wr_valid_en;
    wire way1_wr_valid_en;
    wire way0_wr_dirty_en;
    wire way1_wr_dirty_en;
    wire way0_wr_full_bank;
    wire way1_wr_full_bank;
    wire [`RAM_NUM-1:0] way0_wr_data_en;
    wire [`RAM_NUM-1:0] way1_wr_data_en;
    wire way0_wr_lru_en;
    wire way1_wr_lru_en;

    assign way0_wr_tag_en    = main_state_refill && way0_hit;
    assign way1_wr_tag_en    = main_state_refill && wya1_hit;

    assign way0_wr_valid_en  = main_state_refill && way0_hit;
    assign way1_wr_valid_en  = main_state_refill && way1_hit;

    assign way0_wr_dirty_en  = (main_state_refill || wrbuf_state_write) && way0_hit;
    assign way1_wr_dirty_en  = (main_state_refill || wrbuf_state_write) && way1_hit;

    assign way0_wr_full_bank = main_state_refill && way0_hit;
    assign way1_wr_full_bank = main_state_refill && way1_hit;

    assign way0_wr_data_en = {`RAM_NUM{wrbuf_state_write && way0_hit}} & req_buf_wr_en;
    assign way1_wr_data_en = {`RAM_NUM{wrbuf_state_write && way1_hit}} & req_buf_wr_en;

    assign way0_wr_lru_en  = (main_state_lookup || main_state_refill) && way0_hit;
    assign way1_wr_lru_en  = (main_state_lookup || main_state_refill) && way1_hit;

    // 生成所有表的地址，包括读和写
    wire [`CACHE_INDEX_AW-1:0] way0_tag_index;
    wire [`CACHE_INDEX_AW-1:0] way1_tag_index;
    wire [`CACHE_INDEX_AW-1:0] way0_valid_index;
    wire [`CACHE_INDEX_AW-1:0] way1_valid_index;
    wire [`CACHE_INDEX_AW-1:0] way0_dirty_index;
    wire [`CACHE_INDEX_AW-1:0] way1_dirty_index;
    wire [`CACHE_INDEX_AW-1:0] way0_data_index;
    wire [`CACHE_INDEX_AW-1:0] way1_data_index;
    wire [`CACHE_INDEX_AW-1:0] wya0_lru_index;
    wire [`CACHE_INDEX_AW-1:0] wya1_lru_index;

    // 定义Index变量简化表达
    wire [`CACHE_INDEX_AW-1:0] lookup_index;
    wire [`CACHE_INDEX_AW-1:0] write_index;
    wire [`CACHE_INDEX_AW-1:0] replace_index;
    wire [`CACHE_INDEX_AW-1:0] refill_index;

    assign lookup_index  = {`CACHE_INDEX_AW{main_state_lookup}}  & cpu_index_i;
    assign write_index   = {`CACHE_INDEX_AW{main_state_write}}   & wr_buf_index;
    assign replace_index = {`CACHE_INDEX_AW{main_state_replace}} & req_buf_index;
    assign refill_index  = {`CACHE_INDEX_AW{main_state_refill}}  & req_buf_index;

    assign way0_tag_index = (lookup_index | replace_index | refill_index) & 
                            {`CACHE_INDEX_AW{way0_hit}};
    assign way1_tag_index = (lookup_index | replace_index | refill_index) & 
                            {`CACHE_INDEX_AW{way1_hit}};

    assign way0_valid_index = way0_tag_index; // Valid的Index地址和Tag相等
    assign way1_valid_index = way1_tag_index;

    assign way0_dirty_index = (write_index | replece_index | refill_index) & 
                              {`CACHE_INDEX_AW{way0_hit}};
    assign way1_dirty_index = (write_index | replece_index | refill_index) & 
                              {`CACHE_INDEX_AW{way1_hit}};

    assign way0_data_index = (lookup_index | write_index | replece_index | refill) &
                             {`CACHE_INDEX_AW{way0_hit}};
    assign way1_data_index = (lookup_index | write_index | replece_index | refill) &
                             {`CACHE_INDEX_AW{way1_hit}};

    assign way0_lru_index = (lookup_index | write_index | refill_index) &






endmodule

