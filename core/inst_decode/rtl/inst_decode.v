`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2024/6/25
// Author: QiDC
// Project Name: TinyRISC-V
// File Name: inst_decode.v
// Versions: v3.2
// Description: 译码模块，根据 if_id_buf 缓冲模块送进来的指令进行译码
// 
//////////////////////////////////////////////////////////////////////////////////

`include "../../defines/defines.v"

module inst_decode (
    // from if_id
    input  wire [`RV32_INST_WIDTH-1:0] inst_i,         // 指令输入
    input  wire [`RV32_ADDR_WIDTH-1:0] inst_addr_i,    // 指令地址输入
    // from reg
    input  wire [     `DATA_WIDTH-1:0] rs1_data_i,     // 寄存器rs1的数据
    input  wire [     `DATA_WIDTH-1:0] rs2_data_i,     // 寄存器rs2的数据
    // to reg
    output wire [ `REG_ADDR_WIDTH-1:0] rs1_addr_o,     // 寄存器rs1的地址
    output wire [ `REG_ADDR_WIDTH-1:0] rs2_addr_o,     // 寄存器rs2的地址
    // to ram
    output wire [`RV32_ADDR_WIDTH-1:0] ram_rd_addr_o,  // ram读地址
    output wire [`RV32_ADDR_WIDTH-1:0] ram_wr_addr_o,  // ram写地址
    output wire [     `DATA_WIDTH-1:0] ram_wr_data_o,  // 写入ram的数据
    output wire [                 3:0] ram_wr_en_o,    // ram写使能
    // to ex
    output wire [     `DATA_WIDTH-1:0] op_data1_o,     // 操作数1
    output wire [     `DATA_WIDTH-1:0] op_data2_o,     // 操作数2
    output wire [ `REG_ADDR_WIDTH-1:0] rd_addr_o,      // 寄存器rd的地址
    output wire [`RV32_ADDR_WIDTH-1:0] offset_addr_o,  // 偏移地址输出
    output wire [`RV32_INST_WIDTH-1:0] inst_o,         // 指令输出
    output wire [`RV32_ADDR_WIDTH-1:0] inst_addr_o     // 指令地址输出
);

    wire [                 6:0] opcode;
    wire [                 2:0] funct3;
    wire [                 6:0] funct7;
    wire [     `DATA_WIDTH-1:0] imm_i;  // I型指令立即数
    wire [     `DATA_WIDTH-1:0] imm_s;  // S型指令立即数
    wire [     `DATA_WIDTH-1:0] shamt;  // 移位操作的位移量
    wire [`RV32_ADDR_WIDTH-1:0] offset_addr;  // B型指令的偏移地址
    wire [`RV32_ADDR_WIDTH-1:0] ram_wr_addr;  // ram写地址
    reg  [                 3:0] ram_wr_en;  // ram写使能

    reg  [     `DATA_WIDTH-1:0] op_data1;  // 操作数1
    reg  [     `DATA_WIDTH-1:0] op_data2;  // 操作数2

    reg  [`RV32_ADDR_WIDTH-1:0] ram_rd_addr;  // ram读地址
    reg  [     `DATA_WIDTH-1:0] ram_wr_data;  // 写入ram的数据

    // 解析指令
    assign opcode        = inst_i[6:0];
    assign funct3        = inst_i[14:12];
    assign funct7        = inst_i[31:25];
    assign imm_i         = {{20{inst_i[31]}}, inst_i[31:20]};
    assign imm_s         = {{20{inst_i[31]}}, inst_i[31:25], inst_i[11:7]};
    assign shamt         = inst_i[24:20];
    assign offset_addr   = {{19{inst_i[31]}}, inst_i[31], inst_i[7], inst_i[30:25], inst_i[11:8], 1'b0};
    assign ram_wr_addr   = rs1_data_i + imm_s;

    // 输出
    assign inst_o        = inst_i;
    assign inst_addr_o   = inst_addr_i;
    assign offset_addr_o = offset_addr;
    assign rd_addr_o     = inst_i[11:7];
    assign rs1_addr_o    = inst_i[19:15];
    assign rs2_addr_o    = inst_i[24:20];
    assign op_data1_o    = op_data1;
    assign op_data2_o    = op_data2;
    assign ram_rd_addr_o = ram_rd_addr;
    assign ram_wr_addr_o = ram_wr_addr;
    assign ram_wr_data_o = ram_wr_data;
    assign ram_wr_en_o   = ram_wr_en;

    always @(*) begin
        case (opcode)
            `INST_TYPE_R: begin  // R型指令
                case (funct3)
                    `INST_ADD_SUB, `INST_XOR, `INST_OR, `INST_AND, `INST_SLT, `INST_SLTU: begin
                        op_data1    = rs1_data_i;
                        op_data2    = rs2_data_i;
                        ram_rd_addr = `RST_RAM_ADDR;
                        ram_wr_en   = `RAM_WR_DISABLE;
                        ram_wr_data = `RST_DATA;
                    end
                    `INST_SLL, `INST_SRL_SRA: begin
                        op_data1    = rs1_data_i;
                        op_data2    = {27'b0, rs2_data_i[4:0]};  // 移位量只有rs2的低5位有效
                        ram_rd_addr = `RST_RAM_ADDR;
                        ram_wr_en   = `RAM_WR_DISABLE;
                        ram_wr_data = `RST_DATA;
                    end
                    default: begin
                        op_data1    = `RST_DATA;
                        op_data2    = `RST_DATA;
                        ram_rd_addr = `RST_RAM_ADDR;
                        ram_wr_en   = `RAM_WR_DISABLE;
                        ram_wr_data = `RST_DATA;
                    end
                endcase
            end
            `INST_TYPE_I_ALU: begin  // I型运算指令
                case (funct3)
                    `INST_ADDI, `INST_XORI, `INST_ORI, `INST_ANDI, `INST_SLTI, `INST_SLTIU: begin
                        op_data1    = rs1_data_i;
                        op_data2    = imm_i;
                        ram_rd_addr = `RST_RAM_ADDR;
                        ram_wr_en   = `RAM_WR_DISABLE;
                        ram_wr_data = `RST_DATA;
                    end
                    `INST_SLLI, `INST_SRLI_SRAI: begin
                        op_data1    = rs1_data_i;
                        op_data2    = shamt;
                        ram_rd_addr = `RST_RAM_ADDR;
                        ram_wr_en   = `RAM_WR_DISABLE;
                        ram_wr_data = `RST_DATA;
                    end
                    default: begin
                        op_data1    = `RST_DATA;
                        op_data2    = `RST_DATA;
                        ram_rd_addr = `RST_RAM_ADDR;
                        ram_wr_en   = `RAM_WR_DISABLE;
                        ram_wr_data = `RST_DATA;
                    end
                endcase
            end
            `INST_TYPE_I_LD: begin  // I型加载指令
                case (funct3)
                    `INST_LB, `INST_LH, `INST_LW, `INST_LBU, `INST_LHU: begin
                        op_data1    = rs1_data_i;
                        op_data2    = imm_i;
                        ram_rd_addr = op_data1 + op_data2;
                        ram_wr_en   = `RAM_WR_DISABLE;
                        ram_wr_data = `RST_DATA;
                    end
                    default: begin
                        op_data1    = `RST_DATA;
                        op_data2    = `RST_DATA;
                        ram_rd_addr = `RST_RAM_ADDR;
                        ram_wr_en   = `RAM_WR_DISABLE;
                        ram_wr_data = `RST_DATA;
                    end
                endcase
            end
            `INST_TYPE_S: begin  // S型存数指令
                case (funct3)
                    `INST_SB: begin
                        op_data1    = `RST_DATA;
                        op_data2    = `RST_DATA;
                        ram_rd_addr = `RST_RAM_ADDR;
                        case (ram_wr_addr[1:0])
                            2'b00: begin
                                ram_wr_en   = 4'b0001;
                                ram_wr_data = {24'b0, rs2_data_i[7:0]};
                            end
                            2'b01: begin
                                ram_wr_en   = 4'b0010;
                                ram_wr_data = {16'b0, rs2_data_i[7:0], 8'b0};
                            end
                            2'b10: begin
                                ram_wr_en   = 4'b0100;
                                ram_wr_data = {8'b0, rs2_data_i[7:0], 16'b0};
                            end
                            2'b11: begin
                                ram_wr_en   = 4'b1000;
                                ram_wr_data = {rs2_data_i[7:0], 24'b0};
                            end
                            default: begin
                                ram_wr_en   = `RAM_WR_DISABLE;
                                ram_wr_data = `RST_DATA;
                            end
                        endcase
                    end
                    `INST_SH: begin
                        op_data1    = `RST_DATA;
                        op_data2    = `RST_DATA;
                        ram_rd_addr = `RST_RAM_ADDR;
                        case (ram_wr_addr[1])
                            1'b0: begin
                                ram_wr_en   = 4'b0011;
                                ram_wr_data = {16'b0, rs2_data_i[15:0]};
                            end
                            1'b1: begin
                                ram_wr_en   = 4'b1100;
                                ram_wr_data = {rs2_data_i[15:0], 16'b0};
                            end
                            default: begin
                                ram_wr_en   = `RAM_WR_DISABLE;
                                ram_wr_data = `RST_DATA;
                            end
                        endcase
                    end
                    `INST_SW: begin
                        op_data1    = `RST_DATA;
                        op_data2    = `RST_DATA;
                        ram_rd_addr = `RST_RAM_ADDR;
                        ram_wr_en   = 4'b1111;
                        ram_wr_data = rs2_data_i;
                    end
                    default: begin
                        op_data1    = `RST_DATA;
                        op_data2    = `RST_DATA;
                        ram_rd_addr = `RST_RAM_ADDR;
                        ram_wr_en   = `RAM_WR_DISABLE;
                        ram_wr_data = `RST_DATA;
                    end
                endcase
            end
            `INST_TYPE_B: begin  // B型指令
                case (funct3)
                    `INST_BEQ, `INST_BNE, `INST_BLT, `INST_BGE, `INST_BLTU, `INST_BGEU: begin
                        op_data1    = rs1_data_i;
                        op_data2    = rs2_data_i;
                        ram_rd_addr = `RST_RAM_ADDR;
                        ram_wr_en   = `RAM_WR_DISABLE;
                        ram_wr_data = `RST_DATA;
                    end
                    default: begin
                        op_data1    = `RST_DATA;
                        op_data2    = `RST_DATA;
                        ram_rd_addr = `RST_RAM_ADDR;
                        ram_wr_en   = `RAM_WR_DISABLE;
                        ram_wr_data = `RST_DATA;
                    end
                endcase
            end
            `INST_TYPE_U_LUI, `INST_TYPE_U_AUIPC, `INST_TYPE_J_JAL: begin
                op_data1    = `RST_DATA;
                op_data2    = `RST_DATA;
                ram_rd_addr = `RST_RAM_ADDR;
                ram_wr_en   = `RAM_WR_DISABLE;
                ram_wr_data = `RST_DATA;
            end
            `INST_TYPE_I_JALR: begin
                op_data1    = rs1_data_i;
                op_data2    = imm_i;
                ram_rd_addr = `RST_RAM_ADDR;
                ram_wr_en   = `RAM_WR_DISABLE;
                ram_wr_data = `RST_DATA;
            end
            `INST_TYPE_SYS: begin
                case (funct3)
                    `INST_ECALL_EBREAK: begin
                        op_data1    = `RST_DATA;
                        op_data2    = `RST_DATA;
                        ram_rd_addr = `RST_RAM_ADDR;
                        ram_wr_en   = `RAM_WR_DISABLE;
                        ram_wr_data = `RST_DATA;
                    end
                    default: begin
                        op_data1    = `RST_DATA;
                        op_data2    = `RST_DATA;
                        ram_rd_addr = `RST_RAM_ADDR;
                        ram_wr_en   = `RAM_WR_DISABLE;
                        ram_wr_data = `RST_DATA;
                    end
                endcase
            end
            default: begin
                op_data1    = `RST_DATA;
                op_data2    = `RST_DATA;
                ram_rd_addr = `RST_RAM_ADDR;
                ram_wr_en   = `RAM_WR_DISABLE;
                ram_wr_data = `RST_DATA;
            end
        endcase
    end

endmodule
