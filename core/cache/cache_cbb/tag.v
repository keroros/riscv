// +FHDR----------------------------------------------------------------------------
// Project Name  : Tiny RISC-V
// Author        : Qidc
// Email         : qidc@stu.pku.edu.cn
// Created On    : 2024/10/24 15:19
// Last Modified : 2024/11/06 14:38
// File Name     : tag.v
// Description   : 256*20的Tag表
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

`timescale 1ns / 1ps

`include "/home/qidc/Nutstore/Project/riscv/defines/defines.v"

module tag (
    input  wire                        clk      ,
    input  wire [`CACHE_INDEX_AW-1:0]  index_i  , // Index作为地址
    input  wire                        wr_en_i  ,
    input  wire [`CACHE_TAG_WIDTH-1:0] wr_tag_i ,
    output wire [`CACHE_TAG_WIDTH-1:0] rd_tag_o
);

    sp_ram #(
        .DATA_WIDTH (`CACHE_TAG_WIDTH),
        .ADDR_WIDTH (`CACHE_INDEX_AW)
    ) u_sp_ram (
        .clka  (clk             ),
        .ena   (`WR_PORT_ENABLE ),
        .wea   (wr_en_i         ),
        .addra (index_i         ),
        .dina  (wr_tag_i        ),
        .douta (rd_tag_o        )
    );

endmodule
