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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 54909.023414 -snap {("G4" 6)}
srcActiveTrace "dcache_tb.u_dcache.way0_lru" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 5000 -TraceValue 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_lru" -line 47 -pos 1 -win $_nTrace1
srcAction -pos 46 7 2 -win $_nTrace1 -name "rd_lru" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "lru\[index_i\]" -line 44 -pos 1 -win $_nTrace1
srcAction -pos 43 5 2 -win $_nTrace1 -name "lru\[index_i\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G4" 6 )} 
srcDeselectAll -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_lru" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache.u_cache_way0.u_lru" -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_lru" -win $_nTrace1
srcSignalViewExpand "dcache_tb.u_dcache.u_cache_way0.u_lru.lru\[0:255\]"
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way0.u_lru.lru\[1\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way0.u_lru.lru\[0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G4" 9 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 9)}
wvSetPosition -win $_nWave2 {("G4" 8)}
wvSetPosition -win $_nWave2 {("G4" 8)}
wvSetPosition -win $_nWave2 {("G4" 8)}
wvSetPosition -win $_nWave2 {("G4" 8)}
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way0.u_lru.lru\[1\]"
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way0.u_lru.lru\[0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G4" 9 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 9)}
wvSetPosition -win $_nWave2 {("G4" 8)}
wvSetPosition -win $_nWave2 {("G4" 8)}
wvSetPosition -win $_nWave2 {("G4" 8)}
wvSetPosition -win $_nWave2 {("G4" 8)}
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 44794.203311 -snap {("G4" 8)}
srcActiveTrace "dcache_tb.u_dcache.u_cache_way0.u_lru.lru\[1\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 0 -TraceValue 1
srcDeselectAll -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "wr_lru_i" -line 38 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "wr_lru_i" -line 38 -pos 1 -win $_nTrace1
srcAction -pos 37 5 3 -win $_nTrace1 -name "wr_lru_i" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G4" 6 )} 
wvSelectSignal -win $_nWave2 {( "G4" 7 )} 
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[0\].u_bank" -win \
           $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[0\].u_bank" -win \
           $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[0\].u_bank.ram\[0\]" \
           -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[0\].u_bank.ram\[0\]" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[0\].u_bank.ram\[0\]" \
           -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[0\].u_bank.ram\[0\]" \
           -win $_nTrace1
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[0\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[0\].u_bank.ram\[0\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[0\].u_bank.ram\[0\].u_simple_dp_ram" \
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
srcSignalViewCollapse \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0:255\]"
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram.mem\[0:255\]"
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
wvSetCursor -win $_nWave2 150145.965938 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 184562.626547 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 165252.515442 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 154349.527539 -snap {("G1" 1)}
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram.mem\[0:255\]"
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
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
wvScrollDown -win $_nWave2 0
srcHBSelect "dcache_tb.u_dcache.u_cache_way0" -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache" -delim "."
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate off
schSetOptions -win $_nSchema1 -annotate off
srcDeselectAll -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
wvSetCursor -win $_nWave2 145548.320437 -snap {("G1" 1)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "way0_wr_data_en" -line 439 -pos 1 -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G4" 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 8)}
wvSetPosition -win $_nWave2 {("G4" 7)}
wvSetPosition -win $_nWave2 {("G4" 7)}
wvSetPosition -win $_nWave2 {("G4" 7)}
wvSetPosition -win $_nWave2 {("G4" 7)}
wvSelectSignal -win $_nWave2 {( "G4" 7 )} 
wvSelectSignal -win $_nWave2 {( "G4" 6 )} 
wvSelectSignal -win $_nWave2 {( "G4" 6 )} 
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 7)}
wvSetPosition -win $_nWave2 {("G4" 6)}
wvSetPosition -win $_nWave2 {("G4" 6)}
wvSetPosition -win $_nWave2 {("G4" 6)}
wvSetPosition -win $_nWave2 {("G4" 6)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "way0_wr_data_en" -line 439 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G4" 7 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSetOptions -win $_nWave2 -leadingZeros on
wvSelectSignal -win $_nWave2 {( "G4" 7 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
wvScrollDown -win $_nWave2 0
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram.mem\[1\]\[7\]"
srcSignalViewCollapse \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
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
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[3\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[3\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
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
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewCollapse \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewCollapse \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0:255\]"
srcDeselectAll -win $_nTrace1
srcSelect -signal "DATA_WIDTH" -line 38 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "DEPTH" -line 35 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache" -delim "."
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 48 -pos 7 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "next_replace_state" -line 482 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "way0_offset" -line 481 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G4" 12 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSelectSignal -win $_nWave2 {( "G4" 12 )} 
debReload
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 145000.000000
wvSetPosition -win $_nWave2 {("G4" 12)}
wvSetPosition -win $_nWave2 {("G4" 12)}
wvSetPosition -win $_nWave2 {("G4" 12)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[0\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0:255\]"
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[1\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[1\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[1\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[1\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[1\].u_simple_dp_ram.mem\[0\]\[7:0\]"
srcSignalViewCollapse \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[1\].u_simple_dp_ram.mem\[0\]\[7:0\]"
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[2\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[2\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[2\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[2\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewCollapse \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[2\].u_simple_dp_ram.mem\[0:255\]"
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[3\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[3\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[3\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[3\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewCollapse \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[3\].u_simple_dp_ram.mem\[0:255\]"
wvSelectSignal -win $_nWave2 {( "G4" 8 )} 
wvSelectSignal -win $_nWave2 {( "G4" 8 9 10 11 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 12)}
wvSetPosition -win $_nWave2 {("G4" 8)}
wvSetPosition -win $_nWave2 {("G4" 8)}
wvSetPosition -win $_nWave2 {("G4" 8)}
wvSetPosition -win $_nWave2 {("G4" 8)}
wvScrollDown -win $_nWave2 13
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 5
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvSelectSignal -win $_nWave2 {( "G6" 1 2 3 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 8)}
wvSetPosition -win $_nWave2 {("G4" 8)}
wvSetPosition -win $_nWave2 {("G4" 8)}
wvSetPosition -win $_nWave2 {("G4" 8)}
wvScrollUp -win $_nWave2 18
wvScrollDown -win $_nWave2 5
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 3
wvSelectGroup -win $_nWave2 {G2}
wvRenameGroup -win $_nWave2 {G2} {cpu_buf}
wvSelectGroup -win $_nWave2 {G3}
wvRenameGroup -win $_nWave2 {G3} {req_buf}
wvScrollUp -win $_nWave2 4
wvScrollDown -win $_nWave2 4
wvScrollUp -win $_nWave2 11
wvScrollUp -win $_nWave2 3
wvScrollDown -win $_nWave2 18
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache" -delim "."
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcSignalViewSelect "dcache_tb.u_dcache.wr_buf_index\[7:0\]"
srcSignalViewSelect "dcache_tb.u_dcache.wr_buf_index\[7:0\]" \
           "dcache_tb.u_dcache.wr_buf_offset\[3:0\]"
srcSignalViewSelect "dcache_tb.u_dcache.wr_buf_index\[7:0\]" \
           "dcache_tb.u_dcache.wr_buf_offset\[3:0\]" \
           "dcache_tb.u_dcache.wr_buf_wr_en\[3:0\]"
srcSignalViewSelect "dcache_tb.u_dcache.wr_buf_index\[7:0\]" \
           "dcache_tb.u_dcache.wr_buf_offset\[3:0\]" \
           "dcache_tb.u_dcache.wr_buf_wr_en\[3:0\]" \
           "dcache_tb.u_dcache.wr_buf_wr_data\[31:0\]"
srcSignalViewSelect "dcache_tb.u_dcache.wr_buf_way" \
           "dcache_tb.u_dcache.wr_buf_index\[7:0\]"
srcSignalViewSelect "dcache_tb.u_dcache.wr_buf_way"
srcSignalViewSelect "dcache_tb.u_dcache.wr_buf_way" \
           "dcache_tb.u_dcache.wr_buf_index\[7:0\]" \
           "dcache_tb.u_dcache.wr_buf_offset\[3:0\]" \
           "dcache_tb.u_dcache.wr_buf_wr_en\[3:0\]" \
           "dcache_tb.u_dcache.wr_buf_wr_data\[31:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvScrollDown -win $_nWave2 3
wvSetPosition -win $_nWave2 {("G4" 12)}
wvSetPosition -win $_nWave2 {("G4" 17)}
wvSetPosition -win $_nWave2 {("G4" 18)}
wvSetPosition -win $_nWave2 {("cpu_buf" 0)}
wvSetPosition -win $_nWave2 {("cpu_buf" 1)}
wvSetPosition -win $_nWave2 {("cpu_buf" 2)}
wvSetPosition -win $_nWave2 {("cpu_buf" 3)}
wvSetPosition -win $_nWave2 {("cpu_buf" 4)}
wvSetPosition -win $_nWave2 {("cpu_buf" 5)}
wvSetPosition -win $_nWave2 {("req_buf" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("req_buf" 5)}
wvSetPosition -win $_nWave2 {("req_buf" 5)}
wvSetPosition -win $_nWave2 {("req_buf" 5)}
wvSetPosition -win $_nWave2 {("req_buf" 5)}
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 4
wvSetPosition -win $_nWave2 {("req_buf" 3)}
wvSetPosition -win $_nWave2 {("req_buf" 8)}
wvSetPosition -win $_nWave2 {("req_buf" 9)}
wvSetPosition -win $_nWave2 {("req_buf" 10)}
wvSetPosition -win $_nWave2 {("req_buf" 11)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSelectGroup -win $_nWave2 {G5}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSelectGroup -win $_nWave2 {G5}
wvScrollDown -win $_nWave2 4
wvRenameGroup -win $_nWave2 {G5} {wr_buf}
wvScrollUp -win $_nWave2 8
wvScrollUp -win $_nWave2 4
wvScrollDown -win $_nWave2 5
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 5
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 2
wvSelectGroup -win $_nWave2 {G1}
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 2
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 8
wvScrollDown -win $_nWave2 15
wvScrollUp -win $_nWave2 21
wvScrollDown -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "G4" 11 )} 
wvSelectSignal -win $_nWave2 {( "G4" 10 )} 
wvScrollDown -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G4" 9 )} 
wvSelectSignal -win $_nWave2 {( "G4" 9 10 )} 
wvSetPosition -win $_nWave2 {("G4" 9)}
wvSetPosition -win $_nWave2 {("G4" 10)}
wvSetPosition -win $_nWave2 {("G4" 11)}
wvSetPosition -win $_nWave2 {("G4" 12)}
wvSetPosition -win $_nWave2 {("G4" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 13)}
wvSetPosition -win $_nWave2 {("G4" 13)}
wvSetPosition -win $_nWave2 {("G4" 13)}
wvSetPosition -win $_nWave2 {("G4" 13)}
wvSelectSignal -win $_nWave2 {( "G4" 10 )} 
wvSelectSignal -win $_nWave2 {( "G4" 9 )} 
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G4" 8 )} 
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G4" 7 8 )} 
wvSelectSignal -win $_nWave2 {( "G4" 6 7 8 )} 
wvSelectSignal -win $_nWave2 {( "G4" 5 6 7 8 )} 
wvSelectSignal -win $_nWave2 {( "G4" 4 5 6 7 8 )} 
wvSelectSignal -win $_nWave2 {( "G4" 3 4 5 6 7 8 )} 
wvSelectSignal -win $_nWave2 {( "G4" 2 3 4 5 6 7 8 )} 
wvSelectSignal -win $_nWave2 {( "G4" 3 4 5 6 7 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("cpu_buf" 5)}
wvSetPosition -win $_nWave2 {("G4" 7)}
wvSetPosition -win $_nWave2 {("G4" 7)}
wvSetPosition -win $_nWave2 {("G4" 7)}
wvSetPosition -win $_nWave2 {("G4" 7)}
wvScrollDown -win $_nWave2 14
wvScrollUp -win $_nWave2 17
wvScrollDown -win $_nWave2 2
wvScrollUp -win $_nWave2 2
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 2
wvScrollUp -win $_nWave2 9
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 11
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 17
wvScrollUp -win $_nWave2 17
wvSelectGroup -win $_nWave2 {G4}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvExpandGroup -win $_nWave2 "G4"
wvCollapseGroup -win $_nWave2 "G4"
wvSelectGroup -win $_nWave2 {G4}
wvExpandGroup -win $_nWave2 "G4"
wvSelectGroup -win $_nWave2 {G4}
wvExpandGroup -win $_nWave2 "G4"
wvCollapseGroup -win $_nWave2 "G4"
wvSelectGroup -win $_nWave2 {G4}
wvExpandGroup -win $_nWave2 "G4"
wvCollapseGroup -win $_nWave2 "G4"
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G4}
wvRenameGroup -win $_nWave2 {G4} {main variable}
wvSelectGroup -win $_nWave2 {G1}
wvRenameGroup -win $_nWave2 {G1} {clk_rst}
wvSelectGroup -win $_nWave2 {main variable}
wvRenameGroup -win $_nWave2 {main variable} {main_variable}
wvScrollDown -win $_nWave2 17
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSignalViewSelect "dcache_tb.u_dcache.way1_hit"
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_tag" -line 535 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_lru_in" -line 534 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_lru" -line 539 -pos 1 -win $_nTrace1
srcSelect -signal "way0_tag" -line 509 -pos 1 -win $_nTrace1
srcSelect -signal "way0_valid" -line 510 -pos 1 -win $_nTrace1
srcSelect -signal "way0_dirty" -line 511 -pos 1 -win $_nTrace1
srcSelect -signal "way0_data" -line 512 -pos 1 -win $_nTrace1
srcSelect -signal "way0_lru" -line 513 -pos 1 -win $_nTrace1
srcSelect -signal "way1_tag" -line 535 -pos 1 -win $_nTrace1
srcSelect -signal "way1_valid" -line 536 -pos 1 -win $_nTrace1
srcSelect -signal "way1_dirty" -line 537 -pos 1 -win $_nTrace1
srcSelect -signal "way1_data" -line 538 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 6
wvSetPosition -win $_nWave2 {("main_variable" 12)}
wvSetPosition -win $_nWave2 {("main_variable" 17)}
wvSetPosition -win $_nWave2 {("cpu_buf" 0)}
wvSetPosition -win $_nWave2 {("cpu_buf" 1)}
wvSetPosition -win $_nWave2 {("cpu_buf" 2)}
wvSetPosition -win $_nWave2 {("cpu_buf" 3)}
wvSetPosition -win $_nWave2 {("cpu_buf" 4)}
wvSetPosition -win $_nWave2 {("cpu_buf" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("cpu_buf" 15)}
wvSetPosition -win $_nWave2 {("cpu_buf" 15)}
wvSetPosition -win $_nWave2 {("cpu_buf" 15)}
wvSetPosition -win $_nWave2 {("cpu_buf" 15)}
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 6
wvSetPosition -win $_nWave2 {("req_buf" 2)}
wvSetPosition -win $_nWave2 {("req_buf" 3)}
wvSetPosition -win $_nWave2 {("req_buf" 4)}
wvSetPosition -win $_nWave2 {("req_buf" 5)}
wvSetPosition -win $_nWave2 {("req_buf" 6)}
wvSetPosition -win $_nWave2 {("wr_buf" 0)}
wvSetPosition -win $_nWave2 {("wr_buf" 1)}
wvSetPosition -win $_nWave2 {("wr_buf" 2)}
wvSetPosition -win $_nWave2 {("wr_buf" 3)}
wvSetPosition -win $_nWave2 {("wr_buf" 4)}
wvSetPosition -win $_nWave2 {("wr_buf" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("wr_buf" 15)}
wvSetPosition -win $_nWave2 {("wr_buf" 15)}
wvSetPosition -win $_nWave2 {("wr_buf" 15)}
wvSetPosition -win $_nWave2 {("wr_buf" 15)}
wvScrollDown -win $_nWave2 2
wvSetPosition -win $_nWave2 {("wr_buf" 14)}
wvSetPosition -win $_nWave2 {("wr_buf" 15)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 10)}
wvSetPosition -win $_nWave2 {("G6" 10)}
wvSetPosition -win $_nWave2 {("G6" 10)}
wvSetPosition -win $_nWave2 {("G6" 10)}
wvScrollDown -win $_nWave2 0
wvSelectGroup -win $_nWave2 {G6}
wvRenameGroup -win $_nWave2 {G6} {cache_out}
wvSelectSignal -win $_nWave2 {( "cache_out" 1 )} 
wvSelectSignal -win $_nWave2 {( "cache_out" 2 3 4 5 6 )} 
wvSelectSignal -win $_nWave2 {( "cache_out" 6 )} 
wvSetPosition -win $_nWave2 {("cache_out" 6)}
wvSetPosition -win $_nWave2 {("cache_out" 5)}
wvSetPosition -win $_nWave2 {("cache_out" 4)}
wvSetPosition -win $_nWave2 {("cache_out" 3)}
wvSetPosition -win $_nWave2 {("cache_out" 2)}
wvSetPosition -win $_nWave2 {("cache_out" 1)}
wvSetPosition -win $_nWave2 {("cache_out" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("cache_out" 0)}
wvSetPosition -win $_nWave2 {("cache_out" 1)}
wvSetPosition -win $_nWave2 {("cache_out" 1)}
wvSetPosition -win $_nWave2 {("cache_out" 1)}
wvSetPosition -win $_nWave2 {("cache_out" 1)}
wvSelectSignal -win $_nWave2 {( "cache_out" 2 )} 
wvSelectSignal -win $_nWave2 {( "cache_out" 3 )} 
wvSetPosition -win $_nWave2 {("cache_out" 3)}
wvSetPosition -win $_nWave2 {("cache_out" 2)}
wvSetPosition -win $_nWave2 {("cache_out" 1)}
wvSetPosition -win $_nWave2 {("cache_out" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("cache_out" 0)}
wvSetPosition -win $_nWave2 {("cache_out" 1)}
wvSetPosition -win $_nWave2 {("cache_out" 1)}
wvSetPosition -win $_nWave2 {("cache_out" 1)}
wvSetPosition -win $_nWave2 {("cache_out" 1)}
wvSelectSignal -win $_nWave2 {( "cache_out" 7 )} 
wvSetPosition -win $_nWave2 {("cache_out" 7)}
wvSetPosition -win $_nWave2 {("cache_out" 6)}
wvSetPosition -win $_nWave2 {("cache_out" 5)}
wvSetPosition -win $_nWave2 {("cache_out" 4)}
wvSetPosition -win $_nWave2 {("cache_out" 3)}
wvSetPosition -win $_nWave2 {("cache_out" 2)}
wvSetPosition -win $_nWave2 {("cache_out" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("cache_out" 1)}
wvSetPosition -win $_nWave2 {("cache_out" 2)}
wvSetPosition -win $_nWave2 {("cache_out" 2)}
wvSetPosition -win $_nWave2 {("cache_out" 2)}
wvSetPosition -win $_nWave2 {("cache_out" 2)}
wvSelectSignal -win $_nWave2 {( "cache_out" 5 )} 
wvSetPosition -win $_nWave2 {("cache_out" 5)}
wvSetPosition -win $_nWave2 {("cache_out" 4)}
wvSetPosition -win $_nWave2 {("cache_out" 3)}
wvSetPosition -win $_nWave2 {("cache_out" 2)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("cache_out" 2)}
wvSetPosition -win $_nWave2 {("cache_out" 3)}
wvSetPosition -win $_nWave2 {("cache_out" 3)}
wvSetPosition -win $_nWave2 {("cache_out" 3)}
wvSetPosition -win $_nWave2 {("cache_out" 3)}
wvSelectSignal -win $_nWave2 {( "cache_out" 7 )} 
wvSelectSignal -win $_nWave2 {( "cache_out" 8 )} 
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 6)}
wvSetPosition -win $_nWave2 {("cache_out" 5)}
wvSetPosition -win $_nWave2 {("cache_out" 4)}
wvSetPosition -win $_nWave2 {("cache_out" 3)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("cache_out" 3)}
wvSetPosition -win $_nWave2 {("cache_out" 4)}
wvSetPosition -win $_nWave2 {("cache_out" 4)}
wvSetPosition -win $_nWave2 {("cache_out" 4)}
wvSetPosition -win $_nWave2 {("cache_out" 4)}
wvSelectSignal -win $_nWave2 {( "cache_out" 7 )} 
wvSetPosition -win $_nWave2 {("cache_out" 7)}
wvSetPosition -win $_nWave2 {("cache_out" 6)}
wvSetPosition -win $_nWave2 {("cache_out" 5)}
wvSetPosition -win $_nWave2 {("cache_out" 4)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("cache_out" 4)}
wvSetPosition -win $_nWave2 {("cache_out" 5)}
wvSetPosition -win $_nWave2 {("cache_out" 5)}
wvSetPosition -win $_nWave2 {("cache_out" 5)}
wvSetPosition -win $_nWave2 {("cache_out" 5)}
wvSelectSignal -win $_nWave2 {( "cache_out" 9 )} 
wvSetPosition -win $_nWave2 {("cache_out" 9)}
wvSetPosition -win $_nWave2 {("cache_out" 7)}
wvSetPosition -win $_nWave2 {("cache_out" 6)}
wvSetPosition -win $_nWave2 {("cache_out" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("cache_out" 5)}
wvSetPosition -win $_nWave2 {("cache_out" 6)}
wvSetPosition -win $_nWave2 {("cache_out" 6)}
wvSetPosition -win $_nWave2 {("cache_out" 6)}
wvSetPosition -win $_nWave2 {("cache_out" 6)}
wvSelectSignal -win $_nWave2 {( "cache_out" 9 )} 
wvSetPosition -win $_nWave2 {("cache_out" 9)}
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 7)}
wvSetPosition -win $_nWave2 {("cache_out" 6)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("cache_out" 6)}
wvSetPosition -win $_nWave2 {("cache_out" 7)}
wvSetPosition -win $_nWave2 {("cache_out" 7)}
wvSetPosition -win $_nWave2 {("cache_out" 7)}
wvSetPosition -win $_nWave2 {("cache_out" 7)}
wvSelectSignal -win $_nWave2 {( "cache_out" 8 9 10 )} 
wvSelectSignal -win $_nWave2 {( "cache_out" 10 )} 
wvSetPosition -win $_nWave2 {("cache_out" 10)}
wvSetPosition -win $_nWave2 {("cache_out" 9)}
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 7)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("cache_out" 7)}
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvSelectSignal -win $_nWave2 {( "cache_out" 8 )} 
wvSelectSignal -win $_nWave2 {( "cache_out" 7 )} 
wvZoomIn -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "cache_out" 7 )} 
wvSetPosition -win $_nWave2 {("cache_out" 7)}
wvExpandBus -win $_nWave2 {("cache_out" 7)}
wvSetPosition -win $_nWave2 {("cache_out" 136)}
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 5
wvScrollDown -win $_nWave2 10
wvScrollDown -win $_nWave2 3
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 4
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 14
wvScrollUp -win $_nWave2 39
wvScrollUp -win $_nWave2 19
wvScrollUp -win $_nWave2 44
wvScrollUp -win $_nWave2 4
wvSelectSignal -win $_nWave2 {( "cache_out" 7 )} 
wvSetPosition -win $_nWave2 {("cache_out" 7)}
wvCollapseBus -win $_nWave2 {("cache_out" 7)}
wvSetPosition -win $_nWave2 {("cache_out" 7)}
wvSetPosition -win $_nWave2 {("cache_out" 7)}
wvSetPosition -win $_nWave2 {("cache_out" 7)}
wvSetPosition -win $_nWave2 {("cache_out" 7)}
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvSetCursor -win $_nWave2 154644.773633 -snap {("cache_out" 3)}
wvSetCursor -win $_nWave2 24898.999528 -snap {("cache_out" 5)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 20673.320757 -snap {("cache_out" 10)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_lru" -line 539 -pos 1 -win $_nTrace1
srcAction -pos 538 5 4 -win $_nTrace1 -name "way1_lru" -ctrlKey off
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {92 92 4 5 1 1}
srcHBSelect "dcache_tb.u_dcache.u_cache_way1" -win $_nTrace1
srcShowDefine -win $_nTrace1
srcSelect -win $_nTrace1 -range {24 24 3 4 1 1}
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_lru" -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "cache_out" 10 )} 
wvSelectSignal -win $_nWave2 {( "cache_out" 10 )} 
wvSetCursor -win $_nWave2 1625.261066 -snap {("cache_out" 10)}
srcActiveTrace "dcache_tb.u_dcache.way1_lru" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 0 -TraceValue x
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_lru" -line 47 -pos 1 -win $_nTrace1
srcAction -pos 46 7 3 -win $_nTrace1 -name "rd_lru" -ctrlKey off
srcDeselectAll -win $_nTrace1
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 15797.537560 -snap {("cache_out" 10)}
srcActiveTrace "dcache_tb.u_dcache.way1_lru" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 0 -TraceValue x
wvSetCursor -win $_nWave2 16057.579330 -snap {("cache_out" 10)}
srcActiveTrace "dcache_tb.u_dcache.way1_lru" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 0 -TraceValue x
wvSetCursor -win $_nWave2 16057.579330 -snap {("cache_out" 10)}
srcActiveTrace "dcache_tb.u_dcache.way1_lru" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 0 -TraceValue x
srcDeselectAll -win $_nTrace1
srcSelect -signal "index_i" -win $_nTrace1
srcAction -pos 43 5 5 -win $_nTrace1 -name "lru\[index_i\]" -ctrlKey off
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_lru_index" -line 414 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvScrollDown -win $_nWave2 1
wvSetPosition -win $_nWave2 {("cache_out" 10)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSelectGroup -win $_nWave2 {G7}
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_lru_index" -line 523 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_lru_index" -line 523 -pos 1 -win $_nTrace1
srcAction -pos 522 5 10 -win $_nTrace1 -name "way1_lru_index" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_lru_index" -line 414 -pos 1 -win $_nTrace1
srcAction -pos 413 3 11 -win $_nTrace1 -name "way1_lru_index" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_lru_index" -line 414 -pos 1 -win $_nTrace1
srcAction -pos 413 3 11 -win $_nTrace1 -name "way1_lru_index" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_lru_index" -line 414 -pos 1 -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {65 65 4 5 1 1}
srcHBSelect "dcache_tb" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "dcache_tb" -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_lru" -line 539 -pos 1 -win $_nTrace1
srcAction -pos 538 5 6 -win $_nTrace1 -name "way1_lru" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "index_i" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 36210.816546 -snap {("cache_out" 11)}
srcActiveTrace "dcache_tb.u_dcache.way1_lru_index\[7:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 35000 -TraceValue 00000001
wvSetCursor -win $_nWave2 36600.879202 -snap {("cache_out" 10)}
srcActiveTrace "dcache_tb.u_dcache.way1_lru" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 0 -TraceValue x
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "lru\[index_i\]" -line 44 -pos 1 -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_lru" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache.u_cache_way1.u_lru" -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_lru" -win $_nTrace1
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way1.u_lru.rd_lru"
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way1.u_lru.lru\[0:255\]"
srcSignalViewExpand "dcache_tb.u_dcache.u_cache_way1.u_lru.lru\[0:255\]"
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 34780.586808 -snap {("cache_out" 10)}
wvSetCursor -win $_nWave2 39721.380448
wvSetCursor -win $_nWave2 31270.022906
wvSetCursor -win $_nWave2 26589.271036
wvSetCursor -win $_nWave2 21323.425183
wvSetCursor -win $_nWave2 14367.307822
wvSetCursor -win $_nWave2 8386.347099
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "cache_out" 12 )} 
wvExpandBus -win $_nWave2 {("cache_out" 12)}
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 212
wvSetPosition -win $_nWave2 {("cache_out" 268)}
wvSetPosition -win $_nWave2 {("cache_out" 268)}
wvSetPosition -win $_nWave2 {("cache_out" 268)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvSelectSignal -win $_nWave2 {( "cache_out" 12 )} 
wvSetPosition -win $_nWave2 {("cache_out" 12)}
wvCollapseBus -win $_nWave2 {("cache_out" 12)}
wvSetPosition -win $_nWave2 {("cache_out" 12)}
wvSetPosition -win $_nWave2 {("cache_out" 12)}
wvSetPosition -win $_nWave2 {("cache_out" 12)}
wvSetPosition -win $_nWave2 {("cache_out" 12)}
wvSelectSignal -win $_nWave2 {( "cache_out" 12 )} 
wvExpandBus -win $_nWave2 {("cache_out" 12)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 238
wvScrollDown -win $_nWave2 247
wvScrollUp -win $_nWave2 240
wvSelectSignal -win $_nWave2 {( "cache_out" 12 )} 
wvSelectSignal -win $_nWave2 {( "cache_out" 12 )} 
wvSetPosition -win $_nWave2 {("cache_out" 12)}
wvCollapseBus -win $_nWave2 {("cache_out" 12)}
wvSetPosition -win $_nWave2 {("cache_out" 12)}
wvSetPosition -win $_nWave2 {("cache_out" 12)}
wvSetPosition -win $_nWave2 {("cache_out" 12)}
wvSetPosition -win $_nWave2 {("cache_out" 12)}
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "cache_out" 12 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSelectSignal -win $_nWave2 {( "cache_out" 11 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("cache_out" 10)}
wvSetPosition -win $_nWave2 {("cache_out" 10)}
wvSetPosition -win $_nWave2 {("cache_out" 10)}
wvSetPosition -win $_nWave2 {("cache_out" 10)}
wvSelectSignal -win $_nWave2 {( "cache_out" 7 )} 
wvSetPosition -win $_nWave2 {("cache_out" 7)}
wvExpandBus -win $_nWave2 {("cache_out" 7)}
wvSetPosition -win $_nWave2 {("cache_out" 138)}
wvScrollDown -win $_nWave2 5
wvScrollUp -win $_nWave2 2
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 61
wvScrollDown -win $_nWave2 61
debReload
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "cache_out" 136 )} 
wvScrollUp -win $_nWave2 74
wvScrollUp -win $_nWave2 54
wvSelectSignal -win $_nWave2 {( "cache_out" 7 )} 
wvSelectSignal -win $_nWave2 {( "cache_out" 7 )} 
wvSetPosition -win $_nWave2 {("cache_out" 7)}
wvCollapseBus -win $_nWave2 {("cache_out" 7)}
wvSetPosition -win $_nWave2 {("cache_out" 7)}
wvSetPosition -win $_nWave2 {("cache_out" 7)}
wvSetPosition -win $_nWave2 {("cache_out" 7)}
wvSetPosition -win $_nWave2 {("cache_out" 7)}
wvSetPosition -win $_nWave2 {("cache_out" 10)}
wvSelectSignal -win $_nWave2 {( "cache_out" 8 )} 
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvExpandBus -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 138)}
wvScrollUp -win $_nWave2 6
wvScrollUp -win $_nWave2 111
wvSelectSignal -win $_nWave2 {( "cache_out" 8 )} 
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvCollapseBus -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 10)}
wvSelectSignal -win $_nWave2 {( "cache_out" 8 )} 
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvExpandBus -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 138)}
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 110
wvSelectSignal -win $_nWave2 {( "cache_out" 8 )} 
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
wvScrollDown -win $_nWave2 24
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 8
srcDeselectAll -win $_nTrace1
debReload
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 41
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
wvScrollUp -win $_nWave2 25
wvScrollUp -win $_nWave2 47
wvScrollDown -win $_nWave2 88
wvSelectSignal -win $_nWave2 {( "cache_out" 136 )} 
wvSelectSignal -win $_nWave2 {( "cache_out" 136 )} 
wvSetCursor -win $_nWave2 12156.952772 -snap {("cache_out" 136)}
srcActiveTrace "dcache_tb.u_dcache.way1_data\[0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 0 -TraceValue x
srcDeselectAll -win $_nTrace1
srcSelect -signal "doutb_r" -line 52 -pos 1 -win $_nTrace1
srcAction -pos 51 7 2 -win $_nTrace1 -name "doutb_r" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "mem\[addrb\]" -line 48 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "mem\[addrb\]" -line 48 -pos 1 -win $_nTrace1
srcAction -pos 47 5 1 -win $_nTrace1 -name "mem\[addrb\]" -ctrlKey off
wvScrollDown -win $_nWave2 2
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[0\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[0\].u_bank.ram\[0\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[0\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[0\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[0\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0:255\]"
wvSetCursor -win $_nWave2 54738.792696 -snap {("cache_out" 130)}
wvSetCursor -win $_nWave2 60069.648992
wvSetCursor -win $_nWave2 65270.484402
wvSetCursor -win $_nWave2 81588.105503
wvSetCursor -win $_nWave2 108437.418310
wvSetCursor -win $_nWave2 121829.569492
wvSetCursor -win $_nWave2 5915.950279
wvSetCursor -win $_nWave2 3510.563902
wvSetCursor -win $_nWave2 15017.412248
wvScrollUp -win $_nWave2 23
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 98
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "cache_out" 8 )} 
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvCollapseBus -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 10)}
wvSelectGroup -win $_nWave2 {G7}
srcDeselectAll -win $_nTrace1
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[0\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[0\].u_bank.ram\[0\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[0\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "cache_out" 11 )} 
wvExpandBus -win $_nWave2 {("cache_out" 11)}
wvScrollUp -win $_nWave2 244
wvSelectSignal -win $_nWave2 {( "cache_out" 11 )} 
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvCollapseBus -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSelectSignal -win $_nWave2 {( "cache_out" 11 )} 
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 70926.392911 -snap {("cache_out" 4)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
debReload
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 67090.776796 -snap {("G7" 0)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
debReload
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 79117.708683 -snap {("cache_out" 10)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[0\].u_bank.ram\[1\]" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[0\].u_bank.ram\[1\]" \
           -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[0\].u_bank.ram\[1\]" \
           -win $_nTrace1
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[0\].u_bank.ram\[1\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[0\].u_bank.ram\[1\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[0\].u_bank.ram\[1\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[0\].u_bank.ram\[1\].u_simple_dp_ram.ADDR_WIDTH"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[0\].u_bank.ram\[1\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "cache_out" 12 )} 
wvExpandBus -win $_nWave2 {("cache_out" 12)}
wvScrollUp -win $_nWave2 249
wvSelectSignal -win $_nWave2 {( "cache_out" 12 )} 
wvSetPosition -win $_nWave2 {("cache_out" 12)}
wvCollapseBus -win $_nWave2 {("cache_out" 12)}
wvSetPosition -win $_nWave2 {("cache_out" 12)}
wvSetPosition -win $_nWave2 {("cache_out" 12)}
wvSetPosition -win $_nWave2 {("cache_out" 12)}
wvSetPosition -win $_nWave2 {("cache_out" 12)}
wvSelectSignal -win $_nWave2 {( "cache_out" 11 )} 
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvExpandBus -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 268)}
wvScrollUp -win $_nWave2 242
wvSelectSignal -win $_nWave2 {( "cache_out" 11 )} 
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvCollapseBus -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 12)}
wvSelectSignal -win $_nWave2 {( "cache_out" 12 )} 
wvSelectSignal -win $_nWave2 {( "cache_out" 11 )} 
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvExpandBus -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 268)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
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
wvSelectSignal -win $_nWave2 {( "cache_out" 268 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("cache_out" 267)}
wvSetPosition -win $_nWave2 {("cache_out" 267)}
wvSetPosition -win $_nWave2 {("cache_out" 267)}
wvSetPosition -win $_nWave2 {("cache_out" 267)}
wvScrollUp -win $_nWave2 258
wvScrollDown -win $_nWave2 4
wvSelectSignal -win $_nWave2 {( "cache_out" 11 )} 
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvCollapseBus -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetCursor -win $_nWave2 2729.729730
wvSetCursor -win $_nWave2 11701.879674 -snap {("G7" 0)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 81198.042847 -snap {("cache_out" 3)}
wvSetCursor -win $_nWave2 49602.967728 -snap {("cache_out" 5)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 37576.035841 -snap {("cache_out" 9)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "cache_out" 8 )} 
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvExpandBus -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 139)}
wvScrollDown -win $_nWave2 5
wvScrollUp -win $_nWave2 21
wvScrollUp -win $_nWave2 104
wvSelectSignal -win $_nWave2 {( "cache_out" 8 )} 
wvSelectSignal -win $_nWave2 {( "cache_out" 8 )} 
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvCollapseBus -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 8)}
wvSetPosition -win $_nWave2 {("cache_out" 11)}
wvSelectGroup -win $_nWave2 {G7}
wvSelectSignal -win $_nWave2 {( "cache_out" 11 )} 
wvSetCursor -win $_nWave2 80157.875765 -snap {("cache_out" 7)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectGroup -win $_nWave2 {G7}
wvSelectGroup -win $_nWave2 {G7}
wvSelectGroup -win $_nWave2 {G7}
wvSelectSignal -win $_nWave2 {( "cache_out" 11 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("cache_out" 10)}
wvSetPosition -win $_nWave2 {("cache_out" 10)}
wvSetPosition -win $_nWave2 {("cache_out" 10)}
wvSetPosition -win $_nWave2 {("cache_out" 10)}
wvScrollUp -win $_nWave2 22
wvSaveSignal -win $_nWave2 \
           "/home/qidc/Nutstore/Project/riscv/core/cache/dcache/QA_DIR/signal.rc"
wvSetPosition -win $_nWave2 {("cache_out" 10)}
wvSetPosition -win $_nWave2 {("cache_out" 10)}
wvSetPosition -win $_nWave2 {("cache_out" 10)}
debExit
