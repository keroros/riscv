`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2024/6/30
// Author: QiDC
// Project Name: TinyRISC-V
// File Name: execute.v
// Versions: v3.2
// Description: 执行模块，根据具体的指令进行相应的操作
// 
//////////////////////////////////////////////////////////////////////////////////

`include "defines.v"

module execute (
    // from id_ex
    input  wire [`RV32_INST_WIDTH-1:0] inst_i,           // 指令
    input  wire [`RV32_ADDR_WIDTH-1:0] inst_addr_i,      // 指令地址
    input  wire [     `DATA_WIDTH-1:0] op_data1_i,       // 操作数1
    input  wire [     `DATA_WIDTH-1:0] op_data2_i,       // 操作数2
    input  wire [ `REG_ADDR_WIDTH-1:0] rd_addr_i,        // 寄存器rd的地址
    input  wire [`RV32_ADDR_WIDTH-1:0] offset_addr_i,    // 偏移地址
    // from ram
    input  wire [     `DATA_WIDTH-1:0] ram_rd_data_i,    // ram读出的数据
    // to reg
    output wire                        reg_wr_en_o,      // 寄存器写使能
    output wire [ `REG_ADDR_WIDTH-1:0] rd_addr_o,        // 寄存器rd的地址
    output wire [     `DATA_WIDTH-1:0] rd_data_o,        // 写入寄存器rd的数据
    // to ctrl
    output wire [`RV32_ADDR_WIDTH-1:0] jump_addr_o,      // 跳转地址
    output wire                        jump_en_o,        // 跳转使能
    output wire                        pipeline_flush_o  // 流水线冲刷信号
);

    wire [                 6:0] opcode;
    wire [                 2:0] funct3;
    wire [                 6:0] funct7;
    wire [     `DATA_WIDTH-1:0] imm_j;  // 扩展为32位的J型指令立即数
    wire [     `DATA_WIDTH-1:0] imm_u;  // 扩展为32位的U型指令立即数

    // ALU运算结果
    wire [     `DATA_WIDTH-1:0] add_res;
    wire [     `DATA_WIDTH-1:0] sub_res;
    wire [     `DATA_WIDTH-1:0] and_res;
    wire [     `DATA_WIDTH-1:0] or_res;
    wire [     `DATA_WIDTH-1:0] xor_res;
    wire [     `DATA_WIDTH-1:0] slt_res;
    wire [     `DATA_WIDTH-1:0] sltu_res;
    wire [     `DATA_WIDTH-1:0] sll_res;
    wire [     `DATA_WIDTH-1:0] srl_res;
    wire [     `DATA_WIDTH-1:0] sra_res;
    wire [`RV32_ADDR_WIDTH-1:0] jump_addr_res;
    wire                        rs1_eq_rs2;  // rs1与rs2相等
    wire                        rs1_lt_rs2;  // rs1小于rs2
    wire                        rs1_lt_rs2_u;  // rs1小于rs2（无符号）

    reg  [     `DATA_WIDTH-1:0] rd_data;  // 寄存器rd的数据
    reg  [`RV32_ADDR_WIDTH-1:0] jump_addr;  // 跳转地址
    reg                         reg_wr_en;  // 寄存器写使能
    reg                         jump_en;  // 跳转使能
    reg                         pipeline_flush;  // 流水线冲刷信号

    // ALU算术运算单元
    alu u_alu (
        .inst_addr_i    (inst_addr_i),
        .offset_addr_i  (offset_addr_i),
        .op_data1_i     (op_data1_i),
        .op_data2_i     (op_data2_i),
        .add_res_o      (add_res),
        .sub_res_o      (sub_res),
        .and_res_o      (and_res),
        .or_res_o       (or_res),
        .xor_res_o      (xor_res),
        .slt_res_o      (slt_res),
        .sltu_res_o     (sltu_res),
        .sll_res_o      (sll_res),
        .srl_res_o      (srl_res),
        .sra_res_o      (sra_res),
        .rs1_eq_rs2_o   (rs1_eq_rs2),
        .rs1_lt_rs2_o   (rs1_lt_rs2),
        .rs1_lt_rs2_u_o (rs1_lt_rs2_u),
        .jump_addr_res_o(jump_addr_res)
    );

    // 解析指令
    assign opcode           = inst_i[6:0];
    assign funct3           = inst_i[14:12];
    assign funct7           = inst_i[31:25];
    assign imm_j            = {{11{inst_i[31]}}, inst_i[19:12], inst_i[20], inst_i[30:21], 1'b0};
    assign imm_u            = {inst_i[31:12], 12'b0};

    // 输出
    assign rd_addr_o        = rd_addr_i;  // rd寄存器地址直接输出
    assign reg_wr_en_o      = reg_wr_en;
    assign rd_data_o        = rd_data;
    assign jump_en_o        = jump_en;
    assign jump_addr_o      = jump_addr;
    assign pipeline_flush_o = pipeline_flush;

    always @(*) begin
        case (opcode)
            `INST_TYPE_R: begin
                case (funct3)
                    `INST_ADD_SUB: begin
                        case (funct7)
                            `INST_ADD: begin  // rd = rs1 + rs2
                                rd_data        = add_res;
                                reg_wr_en      = `WR_ENABLE;
                                jump_en        = `JUMP_DISABLE;
                                jump_addr      = `RST_INST_ADDR;
                                pipeline_flush = `FLUSH_DISABLE;
                            end
                            `INST_SUB: begin  // rd = rs1 - rs2
                                rd_data        = sub_res;
                                reg_wr_en      = `WR_ENABLE;
                                jump_en        = `JUMP_DISABLE;
                                jump_addr      = `RST_INST_ADDR;
                                pipeline_flush = `FLUSH_DISABLE;
                            end
                            default: begin
                                rd_data        = `RST_DATA;
                                reg_wr_en      = `WR_DISABLE;
                                jump_en        = `JUMP_DISABLE;
                                jump_addr      = `RST_INST_ADDR;
                                pipeline_flush = `FLUSH_DISABLE;
                            end
                        endcase
                    end
                    `INST_XOR: begin  // rd = rs1 ^ rs2
                        rd_data        = xor_res;
                        reg_wr_en      = `WR_ENABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_OR: begin  // rd = rs1 | rs2
                        rd_data        = or_res;
                        reg_wr_en      = `WR_ENABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_AND: begin  // rd = rs1 & rs2
                        rd_data        = and_res;
                        reg_wr_en      = `WR_ENABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_SLT: begin  // rd = (rs1 < rs2) ? 1 : 0
                        rd_data        = slt_res;
                        reg_wr_en      = `WR_ENABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_SLTU: begin  // rd = (rs1 < rs2) ? 1 : 0
                        rd_data        = sltu_res;
                        reg_wr_en      = `WR_ENABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_SLL: begin  // rd = rs1 << rs2
                        rd_data        = sll_res;
                        reg_wr_en      = `WR_ENABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_SRL_SRA: begin
                        case (funct7)
                            `INST_SRL: begin  // rd = rs1 >> rs2
                                rd_data        = srl_res;
                                reg_wr_en      = `WR_ENABLE;
                                jump_en        = `JUMP_DISABLE;
                                jump_addr      = `RST_INST_ADDR;
                                pipeline_flush = `FLUSH_DISABLE;
                            end
                            `INST_SRA: begin  // rd = rs1 >>> rs2
                                rd_data        = sra_res;
                                reg_wr_en      = `WR_ENABLE;
                                jump_en        = `JUMP_DISABLE;
                                jump_addr      = `RST_INST_ADDR;
                                pipeline_flush = `FLUSH_DISABLE;
                            end
                            default: begin
                                rd_data        = `RST_DATA;
                                reg_wr_en      = `WR_DISABLE;
                                jump_en        = `JUMP_DISABLE;
                                jump_addr      = `RST_INST_ADDR;
                                pipeline_flush = `FLUSH_DISABLE;
                            end
                        endcase
                    end
                    default: begin
                        rd_data        = `RST_DATA;
                        reg_wr_en      = `WR_DISABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                endcase
            end
            `INST_TYPE_I_ALU: begin
                case (funct3)
                    `INST_ADDI: begin  // rd = rs1 + imm
                        rd_data        = add_res;
                        reg_wr_en      = `WR_ENABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_XORI: begin  // rd = rs1 ^ imm
                        rd_data        = xor_res;
                        reg_wr_en      = `WR_ENABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_ORI: begin  // rd = rs1 | imm
                        rd_data        = or_res;
                        reg_wr_en      = `WR_ENABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_ANDI: begin  // rd = rs1 & imm
                        rd_data        = and_res;
                        reg_wr_en      = `WR_ENABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_SLTI: begin  // rd = (rs1 < imm) ? 1 : 0
                        rd_data        = slt_res;
                        reg_wr_en      = `WR_ENABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_SLTIU: begin  // rd = (rs1 < imm) ? 1 : 0
                        rd_data        = sltu_res;
                        reg_wr_en      = `WR_ENABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_SLLI: begin  // rd = rs1 << imm[0:4]
                        rd_data        = sll_res;
                        reg_wr_en      = `WR_ENABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_SRLI_SRAI: begin
                        case (funct7)
                            `INST_SRLI: begin  // rd = rs1 >> imm[0:4]
                                rd_data        = srl_res;
                                reg_wr_en      = `WR_ENABLE;
                                jump_en        = `JUMP_DISABLE;
                                jump_addr      = `RST_INST_ADDR;
                                pipeline_flush = `FLUSH_DISABLE;
                            end
                            `INST_SRAI: begin  // rd = rs1 >> imm[0:4]
                                rd_data        = sra_res;
                                reg_wr_en      = `WR_ENABLE;
                                jump_en        = `JUMP_DISABLE;
                                jump_addr      = `RST_INST_ADDR;
                                pipeline_flush = `FLUSH_DISABLE;
                            end
                            default: begin
                                rd_data        = `RST_DATA;
                                reg_wr_en      = `WR_DISABLE;
                                jump_en        = `JUMP_DISABLE;
                                jump_addr      = `RST_INST_ADDR;
                                pipeline_flush = `FLUSH_DISABLE;
                            end
                        endcase
                    end
                    default: begin
                        rd_data        = `RST_DATA;
                        reg_wr_en      = `WR_DISABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                endcase
            end
            `INST_TYPE_I_LD: begin
                case (funct3)
                    `INST_LB: begin  // rd = M[rs1+imm][0:7]
                        case (add_res[1:0])  // 根据地址的后两位确定要获取的字节
                            2'b00: begin
                                rd_data = {{24{ram_rd_data_i[7]}}, ram_rd_data_i[7:0]};
                            end
                            2'b01: begin
                                rd_data = {{24{ram_rd_data_i[15]}}, ram_rd_data_i[15:8]};
                            end
                            2'b10: begin
                                rd_data = {{24{ram_rd_data_i[23]}}, ram_rd_data_i[23:16]};
                            end
                            2'b11: begin
                                rd_data = {{24{ram_rd_data_i[31]}}, ram_rd_data_i[31:24]};
                            end
                            default: begin
                                rd_data = `RST_DATA;
                            end
                        endcase
                        reg_wr_en      = `WR_ENABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_LH: begin  // rd = M[rs1+imm][0:15]
                        case (add_res[1])  // 根据地址的倒数第二位确定要获取的半字
                            1'b0: begin
                                rd_data = {{16{ram_rd_data_i[15]}}, ram_rd_data_i[15:0]};
                            end
                            1'b1: begin
                                rd_data = {{16{ram_rd_data_i[31]}}, ram_rd_data_i[31:16]};
                            end
                            default: begin
                                rd_data = `RST_DATA;
                            end
                        endcase
                        reg_wr_en      = `WR_ENABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_LW: begin  // rd = M[rs1+imm][0:31]
                        rd_data        = ram_rd_data_i;
                        reg_wr_en      = `WR_ENABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_LBU: begin  // rd = M[rs1+imm][0:7]
                        case (add_res[1:0])  // 根据地址的后两位确定要获取的字节
                            2'b00: begin
                                rd_data = {24'b0, ram_rd_data_i[7:0]};
                            end
                            2'b01: begin
                                rd_data = {24'b0, ram_rd_data_i[15:8]};
                            end
                            2'b10: begin
                                rd_data = {24'b0, ram_rd_data_i[23:16]};
                            end
                            2'b11: begin
                                rd_data = {24'b0, ram_rd_data_i[31:24]};
                            end
                            default: begin
                                rd_data = `RST_DATA;
                            end
                        endcase
                        reg_wr_en      = `WR_ENABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_LHU: begin  // rd = M[rs1+imm][0:15]
                        case (add_res[1])  // 根据地址的倒数第二位确定要获取的半字
                            1'b0: begin
                                rd_data = {16'b0, ram_rd_data_i[15:0]};
                            end
                            1'b1: begin
                                rd_data = {16'b0, ram_rd_data_i[31:16]};
                            end
                            default: begin
                                rd_data = `RST_DATA;
                            end
                        endcase
                        reg_wr_en      = `WR_ENABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    default: begin
                        rd_data        = `RST_DATA;
                        reg_wr_en      = `WR_DISABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                endcase
            end
            `INST_TYPE_S: begin
                case (funct3)
                    `INST_SB: begin  // M[rs1+imm][0:7] = rs2[0:7]
                        rd_data        = `RST_DATA;
                        reg_wr_en      = `WR_DISABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_SH: begin  // M[rs1+imm][0:15] = rs2[0:15]
                        rd_data        = `RST_DATA;
                        reg_wr_en      = `WR_DISABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_SW: begin  // M[rs1+imm][0:31] = rs2[0:31]
                        rd_data        = `RST_DATA;
                        reg_wr_en      = `WR_DISABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    default: begin
                        rd_data        = `RST_DATA;
                        reg_wr_en      = `WR_DISABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                endcase
            end
            `INST_TYPE_B: begin
                case (funct3)
                    `INST_BEQ: begin  // if(rs1 == rs2) PC += imm
                        rd_data        = `RST_DATA;
                        reg_wr_en      = `WR_DISABLE;
                        jump_en        = rs1_eq_rs2;  // 相等跳转
                        jump_addr      = jump_addr_res & {`DATA_WIDTH{rs1_eq_rs2}};  // 用位与取代if语句
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_BNE: begin  // if(rs1 != rs2) PC += imm
                        rd_data        = `RST_DATA;
                        reg_wr_en      = `WR_DISABLE;
                        jump_en        = ~rs1_eq_rs2;  // 不相等跳转
                        jump_addr      = jump_addr_res & {`DATA_WIDTH{~rs1_eq_rs2}};  // 同上
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_BLT: begin  // if(rs1 < rs2) PC += imm
                        rd_data        = `RST_DATA;
                        reg_wr_en      = `WR_DISABLE;
                        jump_en        = rs1_lt_rs2;  // 小于跳转
                        jump_addr      = jump_addr_res & {`DATA_WIDTH{rs1_lt_rs2}};
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_BGE: begin  // if(rs1 >= rs2) PC += imm
                        rd_data        = `RST_DATA;
                        reg_wr_en      = `WR_DISABLE;
                        jump_en        = ~rs1_lt_rs2;  // 大于等于跳转
                        jump_addr      = jump_addr_res & {`DATA_WIDTH{~rs1_lt_rs2}};
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_BLTU: begin  // if(rs1 < rs2) PC += imm
                        rd_data        = `RST_DATA;
                        reg_wr_en      = `WR_DISABLE;
                        jump_en        = rs1_lt_rs2_u;  // 小于跳转（无符号）
                        jump_addr      = jump_addr_res & {`DATA_WIDTH{rs1_lt_rs2_u}};
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    `INST_BGEU: begin  // if(rs1 >= rs2) PC += imm
                        rd_data        = `RST_DATA;
                        reg_wr_en      = `WR_DISABLE;
                        jump_en        = ~rs1_lt_rs2_u;  // 大于等于跳转（无符号）
                        jump_addr      = jump_addr_res & {`DATA_WIDTH{~rs1_lt_rs2_u}};
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                    default: begin
                        rd_data        = `RST_DATA;
                        reg_wr_en      = `WR_DISABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                endcase
            end
            `INST_TYPE_U_LUI: begin  // rd = imm << 12
                rd_data        = imm_u;  // imm_u已经左移12位，直接赋值
                reg_wr_en      = `WR_ENABLE;
                jump_en        = `JUMP_DISABLE;
                jump_addr      = `RST_INST_ADDR;
                pipeline_flush = `FLUSH_DISABLE;
            end
            `INST_TYPE_U_AUIPC: begin  // rd = PC + (imm << 12)
                rd_data        = inst_addr_i + imm_u;
                reg_wr_en      = `WR_ENABLE;
                jump_en        = `JUMP_DISABLE;
                jump_addr      = `RST_INST_ADDR;
                pipeline_flush = `FLUSH_DISABLE;
            end
            `INST_TYPE_J_JAL: begin  // rd = PC + 4; PC += imm
                rd_data        = inst_addr_i + 3'd4;
                reg_wr_en      = `WR_ENABLE;
                jump_en        = `JUMP_ENABLE;
                jump_addr      = inst_addr_i + imm_j;
                pipeline_flush = `FLUSH_DISABLE;
            end
            `INST_TYPE_I_JALR: begin  // rd = PC + 4; PC = rs1 + imm
                rd_data        = inst_addr_i + 3'd4;
                reg_wr_en      = `WR_ENABLE;
                jump_en        = `JUMP_ENABLE;
                jump_addr      = add_res & ~(`DATA_WIDTH'h1);  // 最低位清零
                pipeline_flush = `FLUSH_DISABLE;
            end
            `INST_TYPE_SYS: begin
                case (funct3)
                    `INST_ECALL_EBREAK: begin
                        case (inst_i[31:20])
                            `INST_ECALL: begin  // 环境调用
                                rd_data        = `RST_DATA;
                                reg_wr_en      = `WR_DISABLE;
                                jump_en        = `JUMP_DISABLE;
                                jump_addr      = `RST_INST_ADDR;
                                pipeline_flush = `FLUSH_DISABLE;
                            end
                            `INST_EBREAK: begin // 环境断点
                                rd_data        = `RST_DATA;
                                reg_wr_en      = `WR_DISABLE;
                                jump_en        = `JUMP_DISABLE;
                                jump_addr      = `RST_INST_ADDR;
                                pipeline_flush = `FLUSH_DISABLE;
                            end
                            default: begin
                                rd_data        = `RST_DATA;
                                reg_wr_en      = `WR_DISABLE;
                                jump_en        = `JUMP_DISABLE;
                                jump_addr      = `RST_INST_ADDR;
                                pipeline_flush = `FLUSH_DISABLE;
                            end
                        endcase
                   end
                   default: begin
                        rd_data        = `RST_DATA;
                        reg_wr_en      = `WR_DISABLE;
                        jump_en        = `JUMP_DISABLE;
                        jump_addr      = `RST_INST_ADDR;
                        pipeline_flush = `FLUSH_DISABLE;
                    end
                endcase
            end
            default: begin
                rd_data        = `RST_DATA;
                reg_wr_en      = `WR_DISABLE;
                jump_en        = `JUMP_DISABLE;
                jump_addr      = `RST_INST_ADDR;
                pipeline_flush = `FLUSH_DISABLE;
            end
        endcase
    end

endmodule
