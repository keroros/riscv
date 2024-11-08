simSetSimulator "-vcssv" -exec \
           "/home/qidc/Nutstore/Project/riscv/core/cache/dcache/QA_DIR/simv" \
           -args
debImport "-dbdir" \
          "/home/qidc/Nutstore/Project/riscv/core/cache/dcache/QA_DIR/simv.daidir"
debLoadSimResult \
           /home/qidc/Nutstore/Project/riscv/core/cache/dcache/QA_DIR/rtl.fsdb
wvCreateWindow
wvRestoreSignal -win $_nWave2 "signal.rc" -overWriteAutoAlias on -appendSignals \
           on
verdiSetFont -monoFont "Fixed" -monoFontSize "20"
simSetSvtbMode off
verdiSetFont -monoFont "Fixed" -monoFontSize "14"
verdiSetFont -monoFont "Fixed" -monoFontSize "20"
srcDeselectAll -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache" -delim "."
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiSetFont -monoFont "Fixed" -monoFontSize "14"
verdiSetFont -monoFont "Fixed" -monoFontSize "20"
verdiDockWidgetMaximize -dock windowDock_nWave_2
verdiDockWidgetRestore -dock windowDock_nWave_2
srcDeselectAll -win $_nTrace1
srcSelect -signal "MAIN_REFILL" -line 169 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debExit
