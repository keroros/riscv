simSetSimulator "-vcssv" -exec \
           "/home/qidc/Nutstore/Project/riscv/riscv_soc/QA_DIR/simv" -args
debImport "-dbdir" \
          "/home/qidc/Nutstore/Project/riscv/riscv_soc/QA_DIR/simv.daidir"
debLoadSimResult /home/qidc/Nutstore/Project/riscv/riscv_soc/QA_DIR/rtl.fsdb
wvCreateWindow
wvRestoreSignal -win $_nWave2 "signal.rc" -overWriteAutoAlias on -appendSignals \
           on
debExit
