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
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[0\].u_simple_dp_ram.doutb\[7:0\]"
srcSignalViewCollapse \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[0\].u_simple_dp_ram.doutb\[7:0\]"
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[0\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
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
wvSetCursor -win $_nWave2 286350.151745 -snap {("clk_rst" 1)}
wvSetCursor -win $_nWave2 325394.157815 -snap {("clk_rst" 1)}
wvSetCursor -win $_nWave2 360204.476480 -snap {("clk_rst" 1)}
wvSetCursor -win $_nWave2 355382.776935 -snap {("clk_rst" 1)}
wvSetCursor -win $_nWave2 334802.352049 -snap {("clk_rst" 1)}
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
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[3\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
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
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[2\].u_simple_dp_ram" \
           -win $_nTrace1
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
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[1\].u_bank.ram\[2\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcHBSelect "dcache_tb.u_dcache.u_cache_way0.u_data.bank\[2\].u_bank.ram\[1\]" \
           -win $_nTrace1
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
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "main_variable" 11 )} 
wvSelectSignal -win $_nWave2 {( "main_variable" 10 11 )} 
wvSelectSignal -win $_nWave2 {( "main_variable" 9 10 11 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("cpu_buf" 0)}
wvSetPosition -win $_nWave2 {("main_variable" 9)}
wvSetPosition -win $_nWave2 {("main_variable" 9)}
wvSetPosition -win $_nWave2 {("main_variable" 9)}
wvSetPosition -win $_nWave2 {("main_variable" 9)}
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
wvSelectSignal -win $_nWave2 {( "main_variable" 11 12 )} 
wvSelectSignal -win $_nWave2 {( "main_variable" 10 11 12 )} 
wvSelectSignal -win $_nWave2 {( "main_variable" 8 10 11 12 )} 
wvSelectSignal -win $_nWave2 {( "main_variable" 8 9 10 11 12 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("cpu_buf" 2)}
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvSetPosition -win $_nWave2 {("main_variable" 7)}
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "main_variable" 7 )} 
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache" -delim "."
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcSignalViewSelect "dcache_tb.u_dcache.cpu_tag_i\[19:0\]"
srcSignalViewSelect "dcache_tb.u_dcache.cpu_rd_data_o\[31:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("main_variable" 6)}
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvSelectSignal -win $_nWave2 {( "main_variable" 8 )} 
wvSaveSignal -win $_nWave2 \
           "/home/qidc/Nutstore/Project/riscv/core/cache/dcache/QA_DIR/signal.rc"
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvSetPosition -win $_nWave2 {("main_variable" 7)}
wvSetPosition -win $_nWave2 {("main_variable" 7)}
debExit
