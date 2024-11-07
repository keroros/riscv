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
verdiSetFont -monoFont "Courier" -monoFontSize "12"
simSetSvtbMode off
verdiSetFont -monoFont "Courier" -monoFontSize "24"
verdiSetFont -monoFont "Courier" -monoFontSize "18"
verdiSetFont -monoFont "Courier" -monoFontSize "14"
verdiSetFont -monoFont "Fixed" -monoFontSize "20"
srcDeselectAll -win $_nTrace1
debExit
