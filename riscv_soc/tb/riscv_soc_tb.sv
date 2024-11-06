`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2024/7/4
// Author: QiDC
// Project Name: TinyRISC-V
// File Name: riscv_soc_tb.v
// Versions: v1.0
// Description: riscv soc测试模块，测试add指令官方测试用例
// 
//////////////////////////////////////////////////////////////////////////////////

`include "/home/qidc/Nutstore/Project/riscv/defines/defines.v"

module riscv_soc_tb;

    parameter ClockPeriod = 10;

    reg                         clk;
    reg                         rst_n;
    wire [     `DATA_WIDTH-1:0] x3;  // gp
    wire [     `DATA_WIDTH-1:0] x26;  // s10
    wire [     `DATA_WIDTH-1:0] x27;  // s11
    wire [`RV32_INST_WIDTH-1:0] ex_inst_i;  // 输入ex的指令
    wire [                 6:0] opcode;
    wire [                 2:0] funct3;
    wire ebreak;

    // 实例化riscv_soc
    riscv_soc u_riscv_soc (
        .clk  (clk),
        .rst_n(rst_n)
    );

    // 时钟信号生成
    initial begin
        clk = 0;
        forever #(ClockPeriod / 2) clk = ~clk;
    end

    // 复位信号生成
    initial begin
        rst_n = 0;
        #ClockPeriod rst_n = 1;
    end

    // 获取gp、s10、s11寄存器值
    assign x3        = riscv_soc_tb.u_riscv_soc.u_riscv_core.u_register_file.regs[3];
    assign x26       = riscv_soc_tb.u_riscv_soc.u_riscv_core.u_register_file.regs[26];
    assign x27       = riscv_soc_tb.u_riscv_soc.u_riscv_core.u_register_file.regs[27];
    assign ex_inst_i = riscv_soc_tb.u_riscv_soc.u_riscv_core.ex_inst_i;
    assign opcode    = riscv_soc_tb.u_riscv_soc.u_riscv_core.u_execute.opcode;
    assign funct3    = riscv_soc_tb.u_riscv_soc.u_riscv_core.u_execute.funct3;
    assign ebreak = (opcode == `INST_TYPE_SYS) && 
                    (funct3 == `INST_ECALL_EBREAK) &&
                    (ex_inst_i[31:20] == `INST_EBREAK);

    reg [7:0] mem_array [0:3][0:4];

    integer i;
    initial begin
/*----------------  by Qidc 2024-10-10  ---------------------
        $readmemh("../../test/rv32ui-p-add.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);

        while (1) begin
            @(posedge clk)
                if (ebreak == 1) begin
                    $display("ebreak!");
                    $display("gp: %0d", x3);
                    $stop;
                end else if (x26 == 1) begin
                    #(ClockPeriod * 2)
                        if (x27 == 1) begin
                            $display("-----------------------------add:  PASS-----------------------------");
                        end else begin
                            $display("------------------------ !!! add:  FAIL !!! ------------------------");
                        end
                    break; 
                end
        end

        #(ClockPeriod)
        $finish;
------------------  by Qidc 2024-10-10  -------------------*/
        $readmemh("../../test/inst_txt/rv32ui-p-add.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------add:  PASS-----------------------------");
        end else begin
            $display("------------------------ !!! add:  FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-sub.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------sub:  PASS-----------------------------");
        end else begin
            $display("------------------------ !!! sub:  FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-sll.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------sll:  PASS-----------------------------");
        end else begin
            $display("------------------------ !!! sll:  FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-slt.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------slt:  PASS-----------------------------");
        end else begin
            $display("------------------------ !!! slt:  FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-sltu.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------sltu: PASS-----------------------------");
        end else begin
            $display("------------------------ !!! sltu: FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-xor.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------xor:  PASS-----------------------------");
        end else begin
            $display("------------------------ !!! xor:  FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-srl.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------srl:  PASS-----------------------------");
        end else begin
            $display("------------------------ !!! srl:  FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-sra.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------sra:  PASS-----------------------------");
        end else begin
            $display("------------------------ !!! sra:  FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-or.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------or:   PASS-----------------------------");
        end else begin
            $display("------------------------ !!! or:   FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-and.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------and:  PASS-----------------------------");
        end else begin
            $display("------------------------ !!! and:  FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-addi.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------addi: PASS-----------------------------");
        end else begin
            $display("------------------------ !!! addi: FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-slti.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------slti: PASS-----------------------------");
        end else begin
            $display("------------------------ !!! slti: FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-sltiu.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------sltiu:PASS-----------------------------");
        end else begin
            $display("------------------------ !!! sltiu:FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-xori.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------xori: PASS-----------------------------");
        end else begin
            $display("------------------------ !!! xori: FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-ori.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------ori:  PASS-----------------------------");
        end else begin
            $display("------------------------ !!! ori:  FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-andi.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------andi: PASS-----------------------------");
        end else begin
            $display("------------------------ !!! andi: FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-slli.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------slli: PASS-----------------------------");
        end else begin
            $display("------------------------ !!! slli: FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-srli.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------srli: PASS-----------------------------");
        end else begin
            $display("------------------------ !!! srli: FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-srai.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------srai: PASS-----------------------------");
        end else begin
            $display("------------------------ !!! srai: FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-beq.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------beq:  PASS-----------------------------");
        end else begin
            $display("------------------------ !!! beq:  FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-bne.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------bne:  PASS-----------------------------");
        end else begin
            $display("------------------------ !!! bne:  FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-blt.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------blt:  PASS-----------------------------");
        end else begin
            $display("------------------------ !!! blt:  FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-bge.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------bge:  PASS-----------------------------");
        end else begin
            $display("------------------------ !!! bge:  FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-bltu.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------bltu: PASS-----------------------------");
        end else begin
            $display("------------------------ !!! bltu:  FAIL !!! -----------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-bgeu.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------bgeu: PASS-----------------------------");
        end else begin
            $display("------------------------ !!! bgeu:  FAIL !!! -----------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-jal.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------jal:  PASS-----------------------------");
        end else begin
            $display("------------------------ !!! jal:  FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-jalr.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------jalr: PASS-----------------------------");
        end else begin
            $display("------------------------ !!! jalr: FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-lui.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------lui:  PASS-----------------------------");
        end else begin
            $display("------------------------ !!! lui:  FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/inst_txt/rv32ui-p-jalr.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------auipc:PASS-----------------------------");
        end else begin
            $display("------------------------ !!! auipc:FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/ram_lb/test0.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[0].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_lb/test1.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[1].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_lb/test2.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[2].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_lb/test3.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[3].u_simple_dp_ram.mem);
        $readmemh("../../test/inst_txt/rv32ui-p-lb.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------lb:   PASS-----------------------------");
        end else begin
            $display("------------------------ !!! lb:   FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/ram_lh/test0.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[0].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_lh/test1.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[1].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_lh/test2.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[2].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_lh/test3.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[3].u_simple_dp_ram.mem);
        $readmemh("../../test/inst_txt/rv32ui-p-lh.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------lh:   PASS-----------------------------");
        end else begin
            $display("------------------------ !!! lh:   FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/ram_lw/test0.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[0].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_lw/test1.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[1].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_lw/test2.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[2].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_lw/test3.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[3].u_simple_dp_ram.mem);
        $readmemh("../../test/inst_txt/rv32ui-p-lw.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------lw:   PASS-----------------------------");
        end else begin
            $display("------------------------ !!! lw:   FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/ram_lbu/test0.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[0].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_lbu/test1.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[1].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_lbu/test2.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[2].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_lbu/test3.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[3].u_simple_dp_ram.mem);
        $readmemh("../../test/inst_txt/rv32ui-p-lbu.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------lbu:  PASS-----------------------------");
        end else begin
            $display("------------------------ !!! lbu:  FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/ram_lhu/test0.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[0].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_lhu/test1.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[1].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_lhu/test2.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[2].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_lhu/test3.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[3].u_simple_dp_ram.mem);
        $readmemh("../../test/inst_txt/rv32ui-p-lhu.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------lhu:  PASS-----------------------------");
        end else begin
            $display("------------------------ !!! lhu:  FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/ram_sb/test0.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[0].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_sb/test1.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[1].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_sb/test2.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[2].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_sb/test3.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[3].u_simple_dp_ram.mem);
        $readmemh("../../test/inst_txt/rv32ui-p-sb.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------sb:   PASS-----------------------------");
        end else begin
            $display("------------------------ !!! sb:   FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/ram_sh/test0.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[0].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_sh/test1.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[1].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_sh/test2.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[2].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_sh/test3.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[3].u_simple_dp_ram.mem);
        $readmemh("../../test/inst_txt/rv32ui-p-sh.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------sh:   PASS-----------------------------");
        end else begin
            $display("------------------------ !!! sh:   FAIL !!! ------------------------");
        end

        #(ClockPeriod*10)
        rst_n = 0;
        #ClockPeriod rst_n = 1;
        $display("At time %0t ns", $time);
        $readmemh("../../test/ram_sw/test0.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[0].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_sw/test1.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[1].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_sw/test2.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[2].u_simple_dp_ram.mem);
        $readmemh("../../test/ram_sw/test3.txt", riscv_soc_tb.u_riscv_soc.u_ram.ram[3].u_simple_dp_ram.mem);

/*----------------  by Qidc 2024-11-06  ---------------------
        $readmemh("../../test/ram_sw/test.txt", mem_array);
            for (int i = 0; i < 5; i++) begin
                for (int j = 0; j < 4; j++) begin
                    riscv_soc_tb.u_riscv_soc.u_ram.ram[i].u_simple_dp_ram.mem[j] = mem_array[i][j];
                end
            end
------------------  by Qidc 2024-11-06  -------------------*/

        $readmemh("../../test/inst_txt/rv32ui-p-sw.txt", riscv_soc_tb.u_riscv_soc.u_rom.u_simple_dp_ram.mem);
        wait (x26 == 1);
        #(ClockPeriod*2)
        if (x27 == 1) begin
            $display("-----------------------------sw:   PASS-----------------------------");
        end else begin
            $display("------------------------ !!! sw:   FAIL !!! ------------------------");
        end

        $display("At time %0t ns", $time);

        $finish;

    end

	initial begin
		$fsdbDumpfile("./rtl.fsdb");
		$fsdbDumpvars("+all");
	end

endmodule
