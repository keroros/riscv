verdiDockWidgetDisplay -dock widgetDock_<Signal_List>
simSetSimulator "-vcssv" -exec \
           "/home/qidc/Nutstore/Project/riscv/riscv_soc/QA_DIR/simv" -args
debImport "-dbdir" \
          "/home/qidc/Nutstore/Project/riscv/riscv_soc/QA_DIR/simv.daidir"
debLoadSimResult /home/qidc/Nutstore/Project/riscv/riscv_soc/QA_DIR/rtl.fsdb
wvCreateWindow
wvRestoreSignal -win $_nWave2 "signal.rc" -overWriteAutoAlias on -appendSignals \
           on
srcHBSelect "riscv_soc_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "riscv_soc_tb" -delim "."
srcHBSelect "riscv_soc_tb" -win $_nTrace1
srcHBSelect "riscv_soc_tb.u_riscv_soc" -win $_nTrace1
srcSetScope -win $_nTrace1 "riscv_soc_tb.u_riscv_soc" -delim "."
srcHBSelect "riscv_soc_tb.u_riscv_soc" -win $_nTrace1
srcSignalView -on
srcHBSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core" -win $_nTrace1
srcSetScope -win $_nTrace1 "riscv_soc_tb.u_riscv_soc.u_riscv_core" -delim "."
srcHBSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core" -win $_nTrace1
srcSignalViewSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.rom_inst_i\[31:0\]"
srcSignalViewSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.clk"
srcSignalViewSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.clk" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.rst_n"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcSignalViewSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.rom_inst_i\[31:0\]"
srcSignalViewSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.id_inst_i\[31:0\]"
srcSignalViewSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.id_inst_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.id_inst_addr_i\[31:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcSignalViewSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.rom_inst_i\[31:0\]"
srcSignalViewSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.rom_inst_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.ram_rd_addr_o\[31:0\]"
srcSignalViewSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.addr_rom_o\[31:0\]"
srcSignalViewSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.rom_inst_i\[31:0\]"
srcSignalViewSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.rom_inst_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.ram_wr_data_o\[31:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 4)}
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.id_inst_addr_i\[31:0\]"
srcSignalViewSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.ex_op_data1_i\[31:0\]"
srcSignalViewSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.ex_inst_i\[31:0\]"
srcSignalViewSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.ex_inst_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.ex_inst_addr_i\[31:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 2055322.277448 -snap {("G2" 0)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 12585.377121 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 18853.955764 -snap {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetCursor -win $_nWave2 3520.048007 -snap {("G2" 0)}
wvSelectSignal -win $_nWave2 {( "G1" 3 7 8 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 5 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 6 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 6 7 8 )} 
wvSetOptions -win $_nWave2 -leadingZeros on
wvSelectGroup -win $_nWave2 {G2}
wvSetCursor -win $_nWave2 19143.274778 -snap {("G2" 0)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 7)}
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.id_inst_addr_i\[31:0\]"
srcSignalViewSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.ram_wr_data_o\[31:0\]"
srcSignalViewSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.ram_wr_addr_o\[31:0\]"
srcSignalViewSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.ram_rd_data_i\[31:0\]"
srcSignalViewSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.rom_inst_i\[31:0\]"
srcSignalViewSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.ram_rd_addr_o\[31:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 7)}
srcSignalViewSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.rom_inst_i\[31:0\]"
srcSignalViewSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.addr_rom_o\[31:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetCursor -win $_nWave2 107183.050824 -snap {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetCursor -win $_nWave2 23145.521142 -snap {("G1" 4)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 4 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSelectGroup -win $_nWave2 {G5}
wvSetCursor -win $_nWave2 42819.214114 -snap {("G5" 0)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 1276764.810019 -snap {("G5" 0)}
wvSetCursor -win $_nWave2 1284865.742419 -snap {("G1" 1)}
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G4" 2)}
debExit
