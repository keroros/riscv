`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2024/6/30
// Author: QiDC
// Project Name: TinyRISC-V
// File Name: riscv_core.v
// Versions: v3.2
// Description: RISC-V Core 模块，包含IF/ID/EX/MEM/WB五个阶段，并连接各个模块
// 
//////////////////////////////////////////////////////////////////////////////////

`include "/home/qidc/Nutstore/Project/riscv/defines/defines.v"

module riscv_core (
    input  wire                        clk,
    input  wire                        rst_n,
    input  wire [`RV32_INST_WIDTH-1:0] rom_inst_i,
    input  wire [     `DATA_WIDTH-1:0] ram_rd_data_i,
    output wire [`RV32_ADDR_WIDTH-1:0] ram_rd_addr_o,
    output wire [`RV32_ADDR_WIDTH-1:0] ram_wr_addr_o,
    output wire [     `DATA_WIDTH-1:0] ram_wr_data_o,
    output wire [                 3:0] ram_wr_en_o,
    output wire [`RV32_ADDR_WIDTH-1:0] addr_rom_o
);

    // id模块的输入输出
    wire [`RV32_INST_WIDTH-1:0] id_inst_i;
    wire [`RV32_ADDR_WIDTH-1:0] id_inst_addr_i;
    wire [     `DATA_WIDTH-1:0] id_rs1_data_i;
    wire [     `DATA_WIDTH-1:0] id_rs2_data_i;
    wire [ `REG_ADDR_WIDTH-1:0] id_rs1_addr_o;
    wire [ `REG_ADDR_WIDTH-1:0] id_rs2_addr_o;
    wire [     `DATA_WIDTH-1:0] id_op_data1_o;
    wire [     `DATA_WIDTH-1:0] id_op_data2_o;
    wire [ `REG_ADDR_WIDTH-1:0] id_rd_addr_o;
    wire [`RV32_ADDR_WIDTH-1:0] id_offset_addr_o;
    wire [`RV32_INST_WIDTH-1:0] id_inst_o;
    wire [`RV32_ADDR_WIDTH-1:0] id_inst_addr_o;


    // ex模块的输入输出
    wire [     `DATA_WIDTH-1:0] ex_op_data1_i;
    wire [     `DATA_WIDTH-1:0] ex_op_data2_i;
    wire [ `REG_ADDR_WIDTH-1:0] ex_rd_addr_i;
    wire [`RV32_ADDR_WIDTH-1:0] ex_offset_addr_i;
    wire [`RV32_INST_WIDTH-1:0] ex_inst_i;
    wire [`RV32_ADDR_WIDTH-1:0] ex_inst_addr_i;
    wire [     `DATA_WIDTH-1:0] ex_rd_data_o;
    wire [ `REG_ADDR_WIDTH-1:0] ex_rd_addr_o;
    wire [`RV32_ADDR_WIDTH-1:0] ex_jump_addr_o;
    wire                        ex_reg_wr_en_o;
    wire                        ex_jump_en_o;
    wire                        ex_pipeline_flush_o;

    // ctrl_unit模块的输出
    wire [`RV32_ADDR_WIDTH-1:0] ctrl_jump_addr_o;
    wire                        ctrl_jump_en_o;
    wire                        ctrl_pipeline_flush_o;

    // 实例化pc_reg模块
    pc_reg u_pc_reg (
        .clk         (clk              ),
        .rst_n       (rst_n            ),
        .pc_addr_o   (addr_rom_o       ),
        .jump_addr_i (ctrl_jump_addr_o ),
        .jump_en_i   (ctrl_jump_en_o   )
    );

    // 实例化if_id_buf模块
    if_id_buf u_if_id_buf (
        .clk              (clk                   ),
        .rst_n            (rst_n                 ),
        .pipeline_flush_i (ctrl_pipeline_flush_o ),
        .inst_addr_i      (addr_rom_o            ),
        .inst_i           (rom_inst_i            ),
        .inst_addr_o      (id_inst_addr_i        ),
        .inst_o           (id_inst_i             )
    );

    // 实例化inst_decode模块
    inst_decode u_inst_decode (
        .inst_i        (id_inst_i        ),
        .inst_addr_i   (id_inst_addr_i   ),
        .rs1_data_i    (id_rs1_data_i    ),
        .rs2_data_i    (id_rs2_data_i    ),
        .rs1_addr_o    (id_rs1_addr_o    ),
        .rs2_addr_o    (id_rs2_addr_o    ),
        .ram_rd_addr_o (ram_rd_addr_o    ),
        .ram_wr_addr_o (ram_wr_addr_o    ),
        .ram_wr_data_o (ram_wr_data_o    ),
        .ram_wr_en_o   (ram_wr_en_o      ),
        .op_data1_o    (id_op_data1_o    ),
        .op_data2_o    (id_op_data2_o    ),
        .rd_addr_o     (id_rd_addr_o     ),
        .offset_addr_o (id_offset_addr_o ),
        .inst_o        (id_inst_o        ),
        .inst_addr_o   (id_inst_addr_o   )
    );

    // 实例化id_ex_buf模块
    id_ex_buf u_id_ex_buf (
        .clk              (clk                   ),
        .rst_n            (rst_n                 ),
        .pipeline_flush_i (ctrl_pipeline_flush_o ),
        .op_data1_i       (id_op_data1_o         ),
        .op_data2_i       (id_op_data2_o         ),
        .rd_addr_i        (id_rd_addr_o          ),
        .offset_addr_i    (id_offset_addr_o      ),
        .inst_i           (id_inst_o             ),
        .inst_addr_i      (id_inst_addr_o        ),
        .op_data1_o       (ex_op_data1_i         ),
        .op_data2_o       (ex_op_data2_i         ),
        .rd_addr_o        (ex_rd_addr_i          ),
        .offset_addr_o    (ex_offset_addr_i      ),
        .inst_o           (ex_inst_i             ),
        .inst_addr_o      (ex_inst_addr_i        )
    );

    // 实例化execute模块
    execute u_execute (
        .inst_i           (ex_inst_i           ),
        .inst_addr_i      (ex_inst_addr_i      ),
        .op_data1_i       (ex_op_data1_i       ),
        .op_data2_i       (ex_op_data2_i       ),
        .rd_addr_i        (ex_rd_addr_i        ),
        .offset_addr_i    (ex_offset_addr_i    ),
        .ram_rd_data_i    (ram_rd_data_i       ),
        .reg_wr_en_o      (ex_reg_wr_en_o      ),
        .rd_addr_o        (ex_rd_addr_o        ),
        .rd_data_o        (ex_rd_data_o        ),
        .jump_addr_o      (ex_jump_addr_o      ),
        .jump_en_o        (ex_jump_en_o        ),
        .pipeline_flush_o (ex_pipeline_flush_o )
    );

    // 实例化register_file模块
    register_file u_register_file (
        .clk            (clk            ),
        .rst_n          (rst_n          ),
        .reg1_rd_addr_i (id_rs1_addr_o  ),
        .reg2_rd_addr_i (id_rs2_addr_o  ),
        .reg_wr_en_i    (ex_reg_wr_en_o ),
        .reg_wr_addr_i  (ex_rd_addr_o   ),
        .reg_wr_data_i  (ex_rd_data_o   ),
        .reg1_rd_data_o (id_rs1_data_i  ),
        .reg2_rd_data_o (id_rs2_data_i  )
    );

    // 实例化ctrl_unit模块
    ctrl_unit u_ctrl_unit (
        .clk              (clk                   ),
        .rst_n            (rst_n                 ),
        .jump_addr_i      (ex_jump_addr_o        ),
        .jump_en_i        (ex_jump_en_o          ),
        .pipeline_flush_i (ex_pipeline_flush_o   ),
        .jump_addr_o      (ctrl_jump_addr_o      ),
        .jump_en_o        (ctrl_jump_en_o        ),
        .pipeline_flush_o (ctrl_pipeline_flush_o )
    );

    cache_top (
        .clk              (clk  ),
        .rst_n            (rst_n  ),
        .cpu_rd_req_i     (  ),
        .cpu_wr_req_i     (  ),
        .cpu_rd_addr_i    (  ),
        .cpu_wr_addr_i    (  ),
        .cpu_wr_data_i    (  ),
        .cpu_wr_en_i      (  ),
        .cpu_rd_data_o    (  ),
        .pipeline_stall_o (  ),
        .cache_data_ack_o (  ),
        .ram_wr_en_o      (  ),
        .ram_wr_addr_o    (  ),
        .ram_wr_data_o    (  ),
        .ram_rd_addr_o    (  ),
        .ram_rd_data_i    (  )
    );

endmodule
