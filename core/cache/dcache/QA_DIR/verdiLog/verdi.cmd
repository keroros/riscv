verdiDockWidgetDisplay -dock widgetDock_<Signal_List>
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
debExit
