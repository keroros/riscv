`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2024/6/23
// Author: QiDC
// Project Name: TinyRISC-V
// File Name: if_id_buf.v
// Versions: v3.2
// Description: 取指到译码的缓冲模块，为了满足时序，将指令和地址打一拍输出
// 
//////////////////////////////////////////////////////////////////////////////////

`include "../../defines/defines.v"

module if_id_buf (
    input  wire                        clk,
    input  wire                        rst_n,
    input  wire                        pipeline_flush_i,
    input  wire [`RV32_ADDR_WIDTH-1:0] inst_addr_i,
    input  wire [`RV32_INST_WIDTH-1:0] inst_i,
    output wire [`RV32_ADDR_WIDTH-1:0] inst_addr_o,
    output wire [`RV32_INST_WIDTH-1:0] inst_o
);

    reg inst_flush; // 对指令的复位信号

    // 使用标准DFF模块，将指令地址打一拍输出
    dff_rs #(
        .WIDTH(`RV32_ADDR_WIDTH)
    ) dff_inst_addr (
        .clk     (clk),
        .rst_n   (rst_n && ~pipeline_flush_i),  // rst或流水线暂停时均复位
        .rst_data(`RST_INST_ADDR),              // 复位时指向初始化地址
        .data_i  (inst_addr_i),
        .data_o  (inst_addr_o)
    );

    // inst_flush复位比pipeline_flush_i延迟一个周期
    always @(posedge clk) begin
        if (!rst_n || pipeline_flush_i) begin
            inst_flush <= `FLUSH_ENABLE;
        end else begin
            inst_flush <= `FLUSH_DISABLE;
        end
    end

    // 指令在rom中已经经过了一个时钟，因此不需要打拍，直接输出
    assign inst_o = inst_flush ? `INST_NOP : inst_i;

endmodule
