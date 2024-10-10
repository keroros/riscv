simSetSimulator "-vcssv" -exec \
           "/home/qidc/Nutstore/Project/riscv/riscv_soc/QA_DIR/simv" -args
debImport "-dbdir" \
          "/home/qidc/Nutstore/Project/riscv/riscv_soc/QA_DIR/simv.daidir"
debLoadSimResult /home/qidc/Nutstore/Project/riscv/riscv_soc/QA_DIR/rtl.fsdb
wvCreateWindow
wvRestoreSignal -win $_nWave2 "signal.rc" -overWriteAutoAlias on -appendSignals \
           on
srcHBSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "riscv_soc_tb.u_riscv_soc.u_riscv_core" -delim "."
srcHBSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core" -win $_nTrace1
srcHBSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core" -win $_nTrace1
srcHBDrag -win $_nTrace1
wvRenameGroup -win $_nWave2 {G1} {u_riscv_core}
wvAddSignal -win $_nWave2 "/riscv_soc_tb/u_riscv_soc/u_riscv_core/clk" \
           "/riscv_soc_tb/u_riscv_soc/u_riscv_core/rst_n" \
           "/riscv_soc_tb/u_riscv_soc/u_riscv_core/rom_inst_i\[31:0\]" \
           "/riscv_soc_tb/u_riscv_soc/u_riscv_core/ram_rd_data_i\[31:0\]" \
           "/riscv_soc_tb/u_riscv_soc/u_riscv_core/ram_rd_addr_o\[31:0\]" \
           "/riscv_soc_tb/u_riscv_soc/u_riscv_core/ram_wr_addr_o\[31:0\]" \
           "/riscv_soc_tb/u_riscv_soc/u_riscv_core/ram_wr_data_o\[31:0\]" \
           "/riscv_soc_tb/u_riscv_soc/u_riscv_core/ram_wr_en_o\[3:0\]" \
           "/riscv_soc_tb/u_riscv_soc/u_riscv_core/addr_rom_o\[31:0\]"
wvSetPosition -win $_nWave2 {("u_riscv_core" 0)}
wvSetPosition -win $_nWave2 {("u_riscv_core" 9)}
wvSetPosition -win $_nWave2 {("u_riscv_core" 9)}
wvSetCursor -win $_nWave2 90048.287786 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 140225.797546 -snap {("G2" 0)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "u_riscv_core" 9 )} 
wvSelectSignal -win $_nWave2 {( "u_riscv_core" 8 )} 
wvSelectSignal -win $_nWave2 {( "u_riscv_core" 7 )} 
wvSelectSignal -win $_nWave2 {( "u_riscv_core" 6 )} 
wvSelectSignal -win $_nWave2 {( "u_riscv_core" 5 )} 
wvSelectSignal -win $_nWave2 {( "u_riscv_core" 4 )} 
verdiDockWidgetSetCurTab -dock windowDock_OneSearch
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
wvSelectGroup -win $_nWave2 {G2}
wvSetCursor -win $_nWave2 32343.832817 -snap {("G2" 0)}
wvSelectGroup -win $_nWave2 {G2}
wvSetCursor -win $_nWave2 11459.345380 -snap {("G2" 0)}
wvSelectSignal -win $_nWave2 {( "u_riscv_core" 3 )} 
