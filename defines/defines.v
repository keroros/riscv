//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2024/6/23
// Author: QiDC
// Project Name: TinyRISC-V
// File Name: defines.v
// Versions: v3.2
// Description: 定义一些常量
//
//////////////////////////////////////////////////////////////////////////////////

// RV32基本常量
`define RV32_INST_WIDTH   32                    // RV32指令位宽
`define RV32_ADDR_WIDTH   32                    // RV32地址位宽
`define DATA_WIDTH        32                    // 数据位宽

// 寄存器组相关常量
`define REG_ADDR_WIDTH    5                     // RV32寄存器地址位宽
`define REG_NUM           32                    // RV32寄存器数量

// ROM和RAM相关常量
`define ROM_ADDR_WIDTH    12                    // ROM地址位宽
`define ROM_DEPTH       1 << (ROM_ADDR_WIDTH-2) // ROM深度为1024，能表示4096个字节
`define RAM_ADDR_WIDTH    12                    // RAM地址位宽
`define RAM_NUM           4                     // RAM数量，一个32位的字需要四个8位的RAM

// Cache相关常量
`define CACHE_TAG_WIDTH  20                     // Cache的Tag表位宽为20
`define CACHE_DEPTH      256                    // Cache的深度为256
`define CACHE_INDEX_AW   $clog2(`CACHE_DEPTH)   // Cache的Index位宽为8
`define CACHE_OFFSET_AW  4                      // Cache的Offset位宽为4
`define CACHE_WAY_NUM    2                      // Cache有几路
`define CACHE_BANK_NUM   4                      // 一个Cache行有四个Bank

// 复位
`define RST_ENABLE        1'b0                  // 复位使能
`define RST_INST_ADDR     32'h0000_0000         // 复位指令地址
`define RST_RAM_ADDR      32'h0000_0000         // 复位ram地址
`define RST_REG_ADDR      5'h0                  // 寄存器复位地址
`define RST_DATA          32'h0000_0000         // 复位数据
`define RST_CACHE_INDEX   8'b0000_0000          // Cache的复位Index
`define RST_CACHE_TAG     20'h00000             // Cache的复位Tag
`define RST_CACHE_OFFSET  4'b0000               // Cache的复位Offset

// 使能
`define LOAD_ENABLE       1'b1                  // 加载使能
`define LOAD_DISABLE      1'b0                  // 加载禁止
`define WR_ENABLE         1'b1                  // 写使能
`define WR_DISABLE        1'b0                  // 写禁止
`define RD_ENABLE         1'b1                  // 读使能
`define RD_DISABLE        1'b0                  // 读禁止
`define WR_PORT_ENABLE    1'b1                  // 写端口使能
`define WR_PORT_DISABLE   1'b0                  // 写端口禁止
`define RD_PORT_ENABLE    1'b1                  // 读端口使能
`define RD_PORT_DISABLE   1'b0                  // 读端口禁止
`define JUMP_ENABLE       1'b1                  // 跳转使能
`define JUMP_DISABLE      1'b0                  // 跳转禁止
`define FLUSH_ENABLE      1'b1                  // 流水线暂停
`define FLUSH_DISABLE     1'b0                  // 流水线不暂停
`define RAM_WR_DISABLE    4'b0000               // RAM写禁止

// R(寄存器)型指令
`define INST_TYPE_R       7'b0110011            // R型：寄存器指令
`define INST_ADD_SUB      3'b000                // 加或减
`define INST_ADD          7'b0000000            // 加
`define INST_SUB          7'b0100000            // 减
`define INST_XOR          3'b100                // 异或
`define INST_OR           3'b110                // 或
`define INST_AND          3'b111                // 与
`define INST_SLT          3'b010                // 小于置位
`define INST_SLTU         3'b011                // 小于置位（无符号）
`define INST_SLL          3'b001                // 逻辑左移
`define INST_SRL_SRA      3'b101                // 逻辑或算术右移
`define INST_SRL          7'b0000000            // 逻辑右移
`define INST_SRA          7'b0100000            // 算术右移

// I(立即数)型指令
`define INST_TYPE_I_ALU   7'b0010011            // I型：ALU指令
`define INST_ADDI         3'b000                // 加
`define INST_XORI         3'b100                // 异或
`define INST_ORI          3'b110                // 或
`define INST_ANDI         3'b111                // 与
`define INST_SLTI         3'b010                // 小于等于置位
`define INST_SLTIU        3'b011                // 小于等于置位（无符号）
`define INST_SLLI         3'b001                // 逻辑左移
`define INST_SRLI_SRAI    3'b101                // 逻辑或算术右移
`define INST_SRLI         7'b0000000            // 逻辑右移
`define INST_SRAI         7'b0100000            // 算术右移

// I型：加载指令
`define INST_TYPE_I_LD    7'b0000011            // I型：加载指令
`define INST_LB           3'b000                // Load Byte
`define INST_LH           3'b001                // Load Half
`define INST_LW           3'b010                // Load Word
`define INST_LBU          3'b100                // Load Byte Unsigned
`define INST_LHU          3'b101                // Load Half Unsigned

// I型：JALR跳转指令
`define INST_TYPE_I_JALR  7'b1100111            // I型：JALR跳转指令

// I型：系统指令
`define INST_TYPE_SYS     7'b1110011            // I型：系统指令
`define INST_ECALL_EBREAK 3'b000                // 环境调用或环境断点
`define INST_ECALL        12'h000               // 函数调用
`define INST_EBREAK       12'h001               // 环境断点

`define INST_TYPE_I_FENCE 7'b0001111            // I型：内存屏障指令

// S(存数)型指令
`define INST_TYPE_S       7'b0100011            // S型：存数指令
`define INST_SB           3'b000                // Store Byte
`define INST_SH           3'b001                // Store Half
`define INST_SW           3'b010                // Store Word

// B(分支)型指令
`define INST_TYPE_B       7'b1100011            // B型：条件分支指令
`define INST_BEQ          3'b000                // 相等跳转
`define INST_BNE          3'b001                // 不相等跳转
`define INST_BLT          3'b100                // 小于跳转
`define INST_BGE          3'b101                // 大于等于跳转
`define INST_BLTU         3'b110                // 小于跳转（无符号）
`define INST_BGEU         3'b111                // 大于等于跳转（无符号）

// U(长立即数)型指令
`define INST_TYPE_U_LUI   7'b0110111            // U型：LUI长立即数指令
`define INST_TYPE_U_AUIPC 7'b0010111            // U型：AUIPC长立即数指令

// J(无条件跳转)型指令
`define INST_TYPE_J_JAL   7'b1101111            // J型：JAL无条件跳转指令

// 伪指令
`define INST_NOP          32'h00000013          // NOP空指令，即ADDI x0,x0,0

// RV32通用寄存器
`define REG_ZERO          5'd0                  // x0/zero  零寄存器
`define REG_RA            5'd1                  // x1/ra    返回地址
`define REG_SP            5'd2                  // x2/sp    栈指针
`define REG_GP            5'd3                  // x3/gp    全局指针
`define REG_TP            5'd4                  // x4/tp    线程指针
`define REG_T0            5'd5                  // x5/t0    临时寄存器
`define REG_T1            5'd6                  // x6/t1    临时寄存器
`define REG_T2            5'd7                  // x7/t2    临时寄存器
`define REG_S0            5'd8                  // x8/s0/fp 保存寄存器，帧指针
`define REG_S1            5'd9                  // x9/s1    保存寄存器
`define REG_A0            5'd10                 // x10/a0   函数参数，返回值
`define REG_A1            5'd11                 // x11/a1   函数参数，返回值
`define REG_A2            5'd12                 // x12/a2   函数参数
`define REG_A3            5'd13                 // x13/a3   函数参数
`define REG_A4            5'd14                 // x14/a4   函数参数
`define REG_A5            5'd15                 // x15/a5   函数参数
`define REG_A6            5'd16                 // x16/a6   函数参数
`define REG_A7            5'd17                 // x17/a7   函数参数
`define REG_S2            5'd18                 // x18/s2   保存寄存器
`define REG_S3            5'd19                 // x19/s3   保存寄存器
`define REG_S4            5'd20                 // x20/s4   保存寄存器
`define REG_S5            5'd21                 // x21/s5   保存寄存器
`define REG_S6            5'd22                 // x22/s6   保存寄存器
`define REG_S7            5'd23                 // x23/s7   保存寄存器
`define REG_S8            5'd24                 // x24/s8   保存寄存器
`define REG_S9            5'd25                 // x25/s9   保存寄存器
`define REG_S10           5'd26                 // x26/s10  保存寄存器
`define REG_S11           5'd27                 // x27/s11  保存寄存器
`define REG_T3            5'd28                 // x28/t3   临时寄存器
`define REG_T4            5'd29                 // x29/t4   临时寄存器
`define REG_T5            5'd30                 // x30/t5   临时寄存器
`define REG_T6            5'd31                 // x31/t6   临时寄存器

// Cache路径
`define CACHE_TAG_PATH "../../../../test/cache_tag/"
`define CACHE_VALID_PATH "../../../../test/cache_valid/"
`define CACHE_DIRTY_PATH "../../../../test/cache_dirty/"
`define CACHE_DATA_PATH "../../../../test/cache_data/"
`define CACHE_LRU_PATH "../../../../test/cache_lru/"


