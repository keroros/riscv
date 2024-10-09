`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2024/7/16
// Author: QiDC
// Project Name: TinyRISC-V
// File Name: ctrl_unit.v
// Versions: v3.2
// Description: 控制单元模块，用于进行分支跳转，和流水线冲刷的控制
// 
//////////////////////////////////////////////////////////////////////////////////

`include "../../defines/defines.v"

module ctrl_unit (

    input wire clk,
    input wire rst_n,

    input  wire [`RV32_ADDR_WIDTH-1:0] jump_addr_i,       // 跳转地址输入
    input  wire                        jump_en_i,         // 跳转使能输入
    input  wire                        pipeline_flush_i,  // 流水线暂停信号输入
    output wire [`RV32_ADDR_WIDTH-1:0] jump_addr_o,       // 跳转地址输出
    output wire                        jump_en_o,         // 跳转使能输出
    output wire                        pipeline_flush_o   // 流水线暂停信号输出
);

    wire pipeline_flush;

    // always @(*) begin
    //     if (jump_en_i == `JUMP_ENABLE || pipeline_flush_i == `FLUSH_ENABLE) begin
    //         pipeline_flush = `FLUSH_ENABLE;
    //     end else begin
    //         pipeline_flush = `FLUSH_DISABLE;
    //     end
    // end

    assign pipeline_flush = jump_en_i;
    
    // jump_en打一拍
    dff_rs #(
        .WIDTH(1)
    ) dff_jump_en (
        .clk     (clk),
        .rst_n   (rst_n),
        .rst_data(`JUMP_DISABLE),
        .data_i  (jump_en_i),
        .data_o  (jump_en_o)
    );

    // pipeline_flush打一拍
    dff_rs #(
        .WIDTH(1)
    ) dff_pipeline_flush (
        .clk     (clk),
        .rst_n   (rst_n),
        .rst_data(`FLUSH_DISABLE),
        .data_i  (pipeline_flush),
        .data_o  (pipeline_flush_o)
    );

    // jump_addr打一拍
    dff_rs #(
        .WIDTH(`RV32_ADDR_WIDTH)
    ) dff_jump_addr (
        .clk     (clk),
        .rst_n   (rst_n),
        .rst_data(`RST_DATA),
        .data_i  (jump_addr_i),
        .data_o  (jump_addr_o)
    );

endmodule
