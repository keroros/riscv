`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2024/6/23
// Author: QiDC
// Project Name: TinyRISC-V
// File Name: module_name.v
// Versions: v1.0
// Description: Verilog 模板
// 
//////////////////////////////////////////////////////////////////////////////////
`include "/home/qidc/Nutstore/Project/riscv/defines/defines.v"

module module_name #(
    parameter WIDTH = 32
) (
    input  wire             clk,
    input  wire             rst_n,
    input  wire [WIDTH-1:0] data_i,
    output wire [WIDTH-1:0] data_o
);

    // 中间变量声明
    wire [WIDTH-1:0] variable_w;
    reg  [WIDTH-1:0] variable_r;

    // 时序电路
    always @(posedge clk or negedge rst_n) begin
        if (rst_n == `RST_ENABLE) begin
            variable_r <= 0;
        end else begin
            variable_r <= variable_w;
        end
    end

    // always组合电路
    always @(*) begin
        variable_r = variable_w;
    end

    // assign组合电路
    assign variable_w = data_i;
    assign data_o     = variable_r;

    // 模块例化
    InstModule #(
        .WIDTH(WIDTH)
    ) u_InstModule (
        .clk     (clk),
        .rst_n   (rst_n),
        .rst_data(`RST_DATA),
        .data_i  (data_i),
        .data_o  (data_o)
    );

    // 使用标准DFF模块打一拍输出
    dff_rst #(
        .WIDTH(WIDTH)
    ) dff_InstModule (
        .clk     (clk),
        .rst_n   (rst_n),
        .rst_data(`RST_DATA),
        .data_i  (data_i),
        .data_o  (data_o)
    );

endmodule
