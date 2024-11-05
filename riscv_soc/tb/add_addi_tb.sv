`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2024/7/4
// Author: QiDC
// Project Name: TinyRISC-V
// File Name: add_addi_tb.v
// Versions: v1.0
// Description: riscv soc测试模块，测试add和addi指令的运行
// 
//////////////////////////////////////////////////////////////////////////////////

`include "D:/OneDrive/Project/riscv/rtl/defines.v"

module add_addi_tb;

parameter ClockPeriod = 10;

reg clk;
reg rst_n;
wire [`RV32_INST_WIDTH-1:0] inst;
wire [`RV32_ADDR_WIDTH-1:0] inst_addr;

// 实例化riscv_soc
riscv_soc u_riscv_soc (
    .clk(clk),
    .rst_n(rst_n)
);

// 时钟信号生成
initial begin
    clk = 0;
    forever #(ClockPeriod/2) clk = ~clk;
end

// 复位信号生成
initial begin
    rst_n = 0;
    #ClockPeriod rst_n = 1;
end

initial begin
    $readmemb("add_add_tb.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_dual_port_bram.rom);
end

initial begin
    while(1) begin
        @(posedge clk) begin
            $display("x27 reg value is %d", riscv_soc_tb.u_riscv_soc.u_riscv_core.u_register_file.regs[27]);
            $display("x27 reg value is %d", riscv_soc_tb.u_riscv_soc.u_riscv_core.u_register_file.regs[28]);
            $display("x27 reg value is %d", riscv_soc_tb.u_riscv_soc.u_riscv_core.u_register_file.regs[29]);
            $display("-----------------------------");
        end
    end
end

endmodule
