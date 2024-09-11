#------------------------------基础配置------------------------------
# 退出仿真，清除信息
quit -sim
.main clear

#------------------------------编译文件------------------------------
# 编译设计和仿真文件
vlog "../rtl/*.v"
vlog "../rtl/tb/riscv_soc_tb.v"

#------------------------------配置仿真------------------------------
# -t ns:仿真时间分辨率 -voptargs=+acc：加快仿真速度 work.xxxxxxxx：仿真的顶层设计模块的名称
vsim -t ns -voptargs=+acc work.riscv_soc_tb
 
#---------------------------------------------------------------------
# 添加虚拟类型
virtual    type {
{01 IDLE}
{02 HALF}
{04 ONE}
{08 ONE_HALF}
{16 TWO}
} vir_new_signal

#------------------------------添加波形------------------------------
add wave -divider {tb_complex_fsm} 
 
add wave tb_complex_fsm/*
add wave -divider {complex_fsm_inst}
add wave -radix decimal tb_complex_fsm/complex_fsm_inst/* 
virtual    function {(vir_new_signal)tb_complex_fsm/complex_fsm_inst/state} new_state
add wave  -color red  -itemcolor blue  tb_complex_fsm/complex_fsm_inst/new_state
 
configure wave -timelineunits us
#------------------------------开始运行------------------------------
#运行
run 10us
