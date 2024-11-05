`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2024/7/4
// Author: QiDC
// Project Name: TinyRISC-V
// File Name: module_name_tb.v
// Versions: v1.0
// Description: 
// 
//////////////////////////////////////////////////////////////////////////////////

module module_name_tb;

    // 参数定义
    parameter ClockPeriod = 10;  // 时钟周期为10ns
    parameter N = 32;

    // 输入输出信号声明
    reg          clk;
    reg          rst_n;
    reg  [N-1:0] data_i;
    wire [N-1:0] data_o;

    // 定义测试数据和预期结果
    reg  [N-1:0] test_data       [0:9];  // 测试数据数组
    reg  [N-1:0] expected_results[0:9];  // 预期结果数组

    // 实例化待测模块
    module_name #(
        .WIDTH(WIDTH)
    ) u_module_name (
        .clk   (clk),
        .rst_n (rst_n),
        .data_i(data_i),
        .data_o(data_o)
    );

    // 时钟信号生成
    initial begin
        clk = 0;
        forever #(ClockPeriod / 2) clk = ~clk;
    end

    // 复位信号生成
    initial begin
        rst_n = 1;
        #ClockPeriod rst_n = 0;
    end

    // 测试过程示例1
    initial begin
        #(ClockPeriod * 10) data_i = 32'h01;
        #(ClockPeriod * 10) data_i = 32'h02;
        #(ClockPeriod * 10) data_i = 32'h03;
        #(ClockPeriod * 10) data_i = 32'h04;
        $stop;  // 停止仿真
    end

    // 测试过程示例2
    integer i;
    initial begin
        $readmemb("filename", test_data);  // 读取二进制文件到数组
        for (i = 0; i < 10; i++) begin
            #(ClockPeriod * 2);
            data_i = test_data[i];
            if (data_o !== expected_results[i]) begin
                $display("ERROR at time %0t: Expected %b but got %b", $time, expected_results[i], data_o);
            end else begin
                $display("PASS at time %0t: Output is %b", $time, data_o);
            end
        end
        $monitor("Input: %b, Output: %b", test_data, data_o);
        $finish;  // 测试完成，结束仿真
    end

    // 生成波形文件
    initial begin
        $dumpfile("module_name_tb.vcd");  // 创建VCD文件
        $dumpvars(0, module_name_tb);  // 记录波形
    end

endmodule
