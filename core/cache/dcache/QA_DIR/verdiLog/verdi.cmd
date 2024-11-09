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
wvScrollDown -win $_nWave2 9
wvSelectGroup -win $_nWave2 {G7}
wvSelectGroup -win $_nWave2 {G7}
wvSelectGroup -win $_nWave2 {G7}
wvRenameGroup -win $_nWave2 {G7} {temp}
wvScrollUp -win $_nWave2 9
wvSelectGroup -win $_nWave2 {cache_out}
wvSetPosition -win $_nWave2 {("cache_out" 0)}
wvSelectGroup -win $_nWave2 {wr_buf}
wvSelectGroup -win $_nWave2 {wr_buf}
wvSelectGroup -win $_nWave2 {wr_buf}
wvSelectSignal -win $_nWave2 {( "main_variable" 6 )} 
wvSelectSignal -win $_nWave2 {( "main_variable" 5 )} 
wvSelectSignal -win $_nWave2 {( "main_variable" 4 )} 
wvSelectSignal -win $_nWave2 {( "main_variable" 3 )} 
wvSelectSignal -win $_nWave2 {( "main_variable" 2 )} 
wvSelectSignal -win $_nWave2 {( "main_variable" 1 )} 
wvSelectStuckSignals -win $_nWave2
wvSaveSignal -win $_nWave2 \
           "/home/qidc/Nutstore/Project/riscv/core/cache/dcache/QA_DIR/signal.rc"
wvSetPosition -win $_nWave2 {("cache_out" 0)}
wvSetPosition -win $_nWave2 {("cache_out" 0)}
wvSetPosition -win $_nWave2 {("cache_out" 0)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcHBSelect "dcache_tb" -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[0\]" -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank" -win \
           $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[0\]" \
           -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[0\]" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[0\]" \
           -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[0\]" \
           -win $_nTrace1
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[0\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[0\].u_simple_dp_ram.doutb\[7:0\]"
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[0\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetPosition -win $_nWave2 {("cache_out" 0)}
wvSetPosition -win $_nWave2 {("wr_buf" 0)}
wvSetPosition -win $_nWave2 {("req_buf" 6)}
wvSetPosition -win $_nWave2 {("req_buf" 5)}
wvSetPosition -win $_nWave2 {("req_buf" 4)}
wvSetPosition -win $_nWave2 {("req_buf" 3)}
wvSetPosition -win $_nWave2 {("req_buf" 2)}
wvSetPosition -win $_nWave2 {("req_buf" 1)}
wvSetPosition -win $_nWave2 {("req_buf" 0)}
wvSetPosition -win $_nWave2 {("cpu_buf" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("cpu_buf" 5)}
wvSetPosition -win $_nWave2 {("cpu_buf" 6)}
wvSetPosition -win $_nWave2 {("cpu_buf" 6)}
wvSetPosition -win $_nWave2 {("cpu_buf" 6)}
wvSetPosition -win $_nWave2 {("cpu_buf" 6)}
wvScrollDown -win $_nWave2 17
wvScrollUp -win $_nWave2 11
wvSetPosition -win $_nWave2 {("cpu_buf" 5)}
wvSetPosition -win $_nWave2 {("cpu_buf" 4)}
wvSetPosition -win $_nWave2 {("cpu_buf" 3)}
wvSetPosition -win $_nWave2 {("cpu_buf" 2)}
wvSetPosition -win $_nWave2 {("cpu_buf" 1)}
wvSetPosition -win $_nWave2 {("cpu_buf" 0)}
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvScrollUp -win $_nWave2 11
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvSetPosition -win $_nWave2 {("main_variable" 8)}
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvScrollDown -win $_nWave2 19
wvSelectGroup -win $_nWave2 {cache_out}
wvScrollUp -win $_nWave2 13
srcDeselectAll -win $_nTrace1
srcFindScope -open -win $_nTrace1
srcFindScope -selectscope 1
srcFindScopeGoto -win $_nTrace1
wvSetCursor -win $_nWave2 85000.000000
wvSaveSignal -win $_nWave2 \
           "/home/qidc/Nutstore/Project/riscv/core/cache/dcache/QA_DIR/signal.rc"
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvScrollUp -win $_nWave2 13
srcDeselectAll -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache" -delim "."
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_wr_data_en" -line 441 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "way0_wr_data_en" -line 440 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "main_variable" 7 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSetOptions -win $_nWave2 -leadingZeros on
wvSaveSignal -win $_nWave2 \
           "/home/qidc/Nutstore/Project/riscv/core/cache/dcache/QA_DIR/signal.rc"
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 115452.655539 -snap {("main_variable" 7)}
wvSetCursor -win $_nWave2 117590.667678 -snap {("main_variable" 7)}
srcActiveTrace "dcache_tb.u_dcache.way0_wr_data_en\[3:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 115000 -TraceValue 1111
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 121154.021244 -snap {("main_variable" 6)}
wvSelectSignal -win $_nWave2 {( "main_variable" 7 )} 
wvSetOptions -win $_nWave2 -hierName on
wvSelectSignal -win $_nWave2 {( "main_variable" 6 )} 
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[0\].u_bank.ram\[1\].u_simple_dp_ram" \
           -win $_nTrace1
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[0\].u_bank.ram\[1\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[0\].u_bank.ram\[1\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[0\].u_bank.ram\[1\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[0\].u_bank.ram\[1\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[0\].u_bank.ram\[1\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "main_variable" 8 )} 
wvSetOptions -win $_nWave2 -hierName off
wvScrollUp -win $_nWave2 8
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvScrollUp -win $_nWave2 11
srcHBDrag -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank" -win \
           $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank" -delim \
           "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank" -win \
           $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[2\]" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[2\]" \
           -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[2\]" \
           -win $_nTrace1
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvScrollUp -win $_nWave2 2
wvSetPosition -win $_nWave2 {("main_variable" 8)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("main_variable" 8)}
wvSetPosition -win $_nWave2 {("main_variable" 8)}
wvSetPosition -win $_nWave2 {("main_variable" 8)}
wvSetPosition -win $_nWave2 {("main_variable" 8)}
wvScrollUp -win $_nWave2 4
wvSelectSignal -win $_nWave2 {( "main_variable" 7 8 )} 
wvSelectSignal -win $_nWave2 {( "main_variable" 6 7 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("main_variable" 8)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvScrollUp -win $_nWave2 4
wvSelectSignal -win $_nWave2 {( "main_variable" 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvScrollUp -win $_nWave2 8
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[1\].u_bank.ram\[1\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[1\].u_bank.ram\[1\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[1\].u_bank.ram\[1\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[1\].u_bank.ram\[1\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[1\].u_bank.ram\[1\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[1\]" \
           -win $_nTrace1
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[3\].u_bank.ram\[1\]" \
           -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[3\].u_bank.ram\[1\]" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[3\].u_bank.ram\[1\]" \
           -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[3\].u_bank.ram\[1\]" \
           -win $_nTrace1
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[3\].u_bank.ram\[1\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[3\].u_bank.ram\[1\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[3\].u_bank.ram\[1\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[3\].u_bank.ram\[1\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[3\].u_bank.ram\[1\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 228529.742033 -snap {("main_variable" 1)}
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 164864.491654 -snap {("clk_rst" 3)}
wvSelectSignal -win $_nWave2 {( "main_variable" 6 8 )} 
wvSelectSignal -win $_nWave2 {( "main_variable" 6 7 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("cpu_buf" 0)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_lru" -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_lru" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache.u_cache_way0.u_lru" -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_lru" -win $_nTrace1
srcSignalViewExpand "dcache_tb.u_dcache.u_cache_way0.u_lru.lru\[0:255\]"
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way0.u_lru.lru\[1\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data" -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_lru" -win $_nTrace1
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "main_variable" 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way0.u_lru.lru\[2\]"
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way0.u_lru.lru\[1\]"
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_lru" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache.u_cache_way1.u_lru" -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_lru" -win $_nTrace1
srcSignalViewExpand "dcache_tb.u_dcache.u_cache_way1.u_lru.lru\[0:255\]"
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way1.u_lru.lru\[1\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "main_variable" 6 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_dirty" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache.u_cache_way1.u_dirty" -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_dirty" -win $_nTrace1
srcSignalViewExpand "dcache_tb.u_dcache.u_cache_way1.u_dirty.dirty\[0:255\]"
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way1.u_dirty.dirty\[1\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "main_variable" 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_tag.u_sp_ram" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache.u_cache_way1.u_tag.u_sp_ram" \
           -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_tag.u_sp_ram" -win $_nTrace1
srcSignalViewExpand "dcache_tb.u_dcache.u_cache_way1.u_tag.u_sp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_tag.u_sp_ram.mem\[1\]\[19:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "main_variable" 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
srcDeselectAll -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache.u_cache_way1.u_data" -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data" -win $_nTrace1
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 165000.000000
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvSetPosition -win $_nWave2 {("main_variable" 5)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectGroup -win $_nWave2 {req_buf}
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data" -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[0\]" -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\]" -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\]" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\]" \
           -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\]" -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank" -win \
           $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank" -delim \
           "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank" -win \
           $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[1\]" \
           -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[1\]" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[1\]" \
           -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[1\]" \
           -win $_nTrace1
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[1\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[1\].u_simple_dp_ram" \
           -delim "."
srcHBDrag -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[1\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[1\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank" -win \
           $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank" -delim \
           "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank" -win \
           $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[0\]" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[0\]" \
           -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[0\]" \
           -win $_nTrace1
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0\]\[7:0\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[2\]" \
           -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[2\]" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[2\]" \
           -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[2\]" \
           -win $_nTrace1
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[3\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[3\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[3\].u_simple_dp_ram" \
           -win $_nTrace1
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[3\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[3\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[3\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[3\].u_bank" -win \
           $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[3\].u_bank" -delim \
           "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[3\].u_bank" -win \
           $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[3\].u_bank.ram\[2\]" \
           -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[3\].u_bank.ram\[2\]" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[3\].u_bank.ram\[2\]" \
           -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[3\].u_bank.ram\[2\]" \
           -win $_nTrace1
srcHBDrag -win $_nTrace1
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[3\].u_bank.ram\[2\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[3\].u_bank.ram\[2\].u_simple_dp_ram" \
           -delim "."
srcHBDrag -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[3\].u_bank.ram\[2\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[3\].u_bank.ram\[2\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "main_variable" 7 9 )} 
wvSelectSignal -win $_nWave2 {( "main_variable" 6 7 9 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("cpu_buf" 0)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSelectSignal -win $_nWave2 {( "main_variable" 6 )} 
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram" \
           -win $_nTrace1
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "main_variable" 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[3\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[3\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[3\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[3\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[3\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "main_variable" 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[3\].u_bank.ram\[0\]" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[3\].u_bank.ram\[0\]" \
           -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[3\].u_bank.ram\[0\]" \
           -win $_nTrace1
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[3\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[3\].u_bank.ram\[0\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[3\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[3\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[3\].u_bank.ram\[0\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "main_variable" 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
srcFindScope -open -win $_nTrace1
srcFindScope -selectscope 1
srcFindScopeGoto -win $_nTrace1
wvSetCursor -win $_nWave2 165000.000000
wvSaveSignal -win $_nWave2 \
           "/home/qidc/Nutstore/Project/riscv/core/cache/dcache/QA_DIR/signal.rc"
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_lru" -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_lru" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache.u_cache_way0.u_lru" -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_lru" -win $_nTrace1
srcSignalViewExpand "dcache_tb.u_dcache.u_cache_way0.u_lru.lru\[0:255\]"
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way0.u_lru.lru\[1\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_lru" -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_lru" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache.u_cache_way1.u_lru" -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_lru" -win $_nTrace1
srcSignalViewExpand "dcache_tb.u_dcache.u_cache_way1.u_lru.lru\[0:255\]"
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way1.u_lru.lru\[1\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "main_variable" 7 )} 
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "main_variable" 7 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("main_variable" 8)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_tag" -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_tag.u_sp_ram" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache.u_cache_way0.u_tag.u_sp_ram" \
           -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_tag.u_sp_ram" -win $_nTrace1
srcSignalViewExpand "dcache_tb.u_dcache.u_cache_way0.u_tag.u_sp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_tag.u_sp_ram.mem\[1\]\[19:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "main_variable" 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_dirty" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache.u_cache_way0.u_dirty" -delim "."
srcHBDrag -win $_nTrace1
srcSignalViewExpand "dcache_tb.u_dcache.u_cache_way0.u_dirty.dirty\[0:255\]"
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way0.u_dirty.dirty\[1\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "main_variable" 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSaveSignal -win $_nWave2 \
           "/home/qidc/Nutstore/Project/riscv/core/cache/dcache/QA_DIR/signal.rc"
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
debExit
