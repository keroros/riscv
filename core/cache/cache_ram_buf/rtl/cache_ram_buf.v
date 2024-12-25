// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/10/23 10:18
// Last Modified : 2024/12/13 17:05
// File Name     : cache_ram_buf.v
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

module cache_ram_buf (

    input  wire clk,
    input  wire rst_n,

    // Interface with Cache
    input  wire                        cache_rd_req_i  ,
    input  wire [`RV32_ADDR_WIDTH-1:0] cache_rd_addr_i ,
    output wire                        cache_rd_rdy_o  ,
    output wire [`DATA_WIDTH-1:0]      cache_rd_data_o ,
    output wire [2:0]                  cache_rd_num_o  ,
    output wire                        cache_wr_rdy_o  ,
    input  wire                        cache_wr_req_i  ,
    input  wire [`RV32_ADDR_WIDTH-1:0] cache_wr_addr_i ,
    input  wire [`DATA_WIDTH*4-1:0]    cache_wr_data_i ,
    input  wire                        cache_dirty_i   ,

    // Interface with RAM
    output wire [`RAM_NUM-1:0]         ram_wr_en_o   ,
    output wire [`RV32_ADDR_WIDTH-1:0] ram_wr_addr_o ,
    output wire [`DATA_WIDTH-1:0]      ram_wr_data_o ,
    output wire [`RV32_ADDR_WIDTH-1:0] ram_rd_addr_o ,
    input  wire [`DATA_WIDTH-1:0]      ram_rd_data_i  
);

    reg cache_rd_rdy;
    reg [2:0] cache_rd_num;

    // Read from ram
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cache_rd_rdy <= 1'b0;
            cache_rd_num <= 3'd0;
        end else begin
            if (cache_rd_req_i) begin
                if (cache_rd_num == 3'd0 && cache_rd_rdy == 1'b0) begin
                    cache_rd_rdy <= 1'b1;
                end else begin
                    cache_rd_rdy <= 1'b0;
                    cache_rd_num <= (cache_rd_num < 3'd4) ? cache_rd_num + 1'b1 : 3'd0;
                end
            end else begin
                cache_rd_rdy <= 1'b0;
                cache_rd_num <= 3'd0;
            end
        end
    end

    assign cache_rd_rdy_o = cache_rd_rdy;
    assign cache_rd_num_o = cache_rd_num;

    assign ram_rd_addr_o   = cache_rd_addr_i + (cache_rd_num-1'b1) << 2; // start addr + 4
    assign cache_rd_data_o = ram_rd_data_i;


    localparam IDLE = 2'b00;  
    localparam WRITE = 2'b01;

    reg [1:0] state;
    reg [2:0] wr_cnt;
    reg [`DATA_WIDTH:0] ram_wr_data;

    // Write to RAM
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state       <= IDLE;
            wr_cnt      <= 3'd0;
            ram_wr_data <= `RST_DATA;
        end else begin
            case (state)
                IDLE: begin
                    if (cache_wr_req_i && ~cache_dirty_i) begin
                        state       <= WRITE;
                        wr_cnt      <= 3'd1;
                        ram_wr_data <= cache_wr_data_i[`DATA_WIDTH-1:0];
                    end
                end
                WRITE: begin
                    if (wr_cnt < 3'd4) begin
                        state       <= WRITE;
                        wr_cnt      <= wr_cnt + 1'd1;
                        ram_wr_data <= `RST_DATA;
                    end else begin
                        state       <= IDLE;
                        wr_cnt      <= 3'd1;
                        ram_wr_data <= cache_wr_data_i >> `DATA_WIDTH;
                    end
                end
                default: begin
                    state  <= IDLE;
                    wr_cnt <= 3'd0;
                end
            endcase
        end
    end

    assign cache_wr_rdy_o = state == IDLE;

    assign ram_wr_en_o   = state == WRITE ? 4'b1111 : 4'b0000;
    assign ram_wr_addr_o = cache_wr_addr_i + (wr_cnt-1'b1) << 2; // start addr + 4
    assign ram_wr_data_o = ram_wr_data;


endmodule

