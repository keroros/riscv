debImport "-full64"
debExit
                                                                                                                                                                                                                                                                                                                                                                                                                                                verdiDockWidgetSetCurTab -dock widgetDock_<Decl._Tree>
verdiDockWidgetSetCurTab -dock widgetDock_<Inst._Tree>
verdiDockWidgetSetCurTab -dock widgetDock_<Decl._Tree>
verdiDockWidgetSetCurTab -dock widgetDock_<Inst._Tree>
verdiDockWidgetSetCurTab -dock windowDock_OneSearch
verdiDockWidgetSetCurTab -dock widgetDock_<Message>
verdiDockWidgetSetCurTab -dock windowDock_OneSearch
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvAddComment -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 7)}
wvSetPosition -win $_nWave2 {("G4" 8)}
wvSelectSignal -win $_nWave2 {( "G4" 8 )} 
wvAddComment -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 8)}
wvSetPosition -win $_nWave2 {("G4" 9)}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G4" 8)}
wvSelectSignal -win $_nWave2 {( "G4" 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G4" 7)}
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSelectSignal -win $_nWave2 {( "G4" 1 )} 
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvGoToGroup -win $_nWave2 "G1"
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSelectSignal -win $_nWave2 {( "G4" 1 )} 
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSelectSignal -win $_nWave2 {( "G4" 1 )} 
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSelectGroup -win $_nWave2 {G5}
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvVerilogExpression -win $_nWave2 "logical_expression_3" \
           "\"/dcache_tb/u_dcache/cache_hit\"" "&&" \
           "\(\"/dcache_tb/u_dcache/main_state\[4:0\]\"" "==" "5'b00010\)"
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSaveVerilogExpression -win $_nWave2 -file \
           "/home/qidc/Nutstore/Project/riscv/core/cache/dcache/QA_DIR/signal_mark.exp"
wvSaveVerilogExpression -win $_nWave2 -file \
           "/home/qidc/Nutstore/Project/riscv/core/cache/dcache/QA_DIR/expression.exp"
wvSaveVerilogExpression -win $_nWave2 -file \
           "/home/qidc/Nutstore/Project/riscv/core/cache/dcache/QA_DIR/signal_mark.exp"
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvRenameSignal -win $_nWave2 {/logical_expression_3} {cache_hit_mark}
wvSelectGroup -win $_nWave2 {G5}
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvSaveSignal -win $_nWave2 \
           "/home/qidc/Nutstore/Project/riscv/core/cache/dcache/QA_DIR/signal.rc"
wvSetCursor -win $_nWave2 55051.128754 -snap {("G5" 0)}
wvSetCursor -win $_nWave2 60468.829170 -snap {("G5" 0)}
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSelectGroup -win $_nWave2 {G5}
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSelectSignal -win $_nWave2 {( "G3" 4 )} 
wvSelectSignal -win $_nWave2 {( "G4" 2 3 4 )} 
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSelectSignal -win $_nWave2 {( "G3" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSelectGroup -win $_nWave2 {G5}
wvSelectGroup -win $_nWave2 {G5}
wvSelectGroup -win $_nWave2 {G5}
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
srcDeselectAll -win $_nTrace1
srcHBDrag -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache" -delim "."
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcSignalViewSelect "dcache_tb.u_dcache.MAIN_LOOKUP"
srcSignalViewSelect "dcache_tb.u_dcache.WRBUF_IDLE"
srcSignalViewSelect "dcache_tb.u_dcache.next_wrbuf_state"
srcSignalViewSelect "dcache_tb.u_dcache.wrbuf_state"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 5)}
srcSignalViewSelect "dcache_tb.u_dcache.next_wrbuf_state"
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G4}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 6)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSelectSignal -win $_nWave2 {( "G4" 6 )} 
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
schCreateWindow -hierFSM -win $_nSchema1 -mode all
verdiDockWidgetHide -dock windowDock_nSchema_3
wvSelectGroup -win $_nWave2 {G5}
wvSetPosition -win $_nWave2 {("G5" 0)}
srcSignalViewSelect "dcache_tb.u_dcache.refill_state"
srcSignalViewSelect "dcache_tb.u_dcache.wrbuf_state"
srcSignalViewSelect "dcache_tb.u_dcache.next_wrbuf_state"
srcSignalViewSelect "dcache_tb.u_dcache.wr_buf_index\[7:0\]"
srcSignalViewSelect "dcache_tb.u_dcache.wr_buf_way" \
           "dcache_tb.u_dcache.wr_buf_index\[7:0\]"
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
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvSelectSignal -win $_nWave2 {( "G3" 3 )} 
wvSelectSignal -win $_nWave2 {( "G3" 4 )} 
srcSignalViewSelect "dcache_tb.u_dcache.miss_buf_replace_way"
srcSignalViewSelect "dcache_tb.u_dcache.req_buf_wr_data\[31:0\]"
wvSelectSignal -win $_nWave2 {( "G3" 4 )} 
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G3" 5)}
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvSelectSignal -win $_nWave2 {( "G3" 3 )} 
wvSelectSignal -win $_nWave2 {( "G3" 4 )} 
wvSelectSignal -win $_nWave2 {( "G3" 5 )} 
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
srcSignalViewSelect "dcache_tb.u_dcache.way0_hit"
srcSignalViewSelect "dcache_tb.u_dcache.cpu_wr_en_i\[3:0\]"
srcSignalViewSelect "dcache_tb.u_dcache.cpu_wr_en_i\[3:0\]" \
           "dcache_tb.u_dcache.cpu_wr_data_i\[31:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 6)}
wvSetPosition -win $_nWave2 {("G3" 5)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 12
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvSetCursor -win $_nWave2 53080.388205 -snap {("G6" 0)}
wvSetCursor -win $_nWave2 37216.970841 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 38375.941972 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 34536.850099 -snap {("G4" 8)}
wvSetCursor -win $_nWave2 34479.391167 -snap {("G6" 0)}
wvSetCursor -win $_nWave2 54833.821667 -snap {("G4" 5)}
srcActiveTrace "dcache_tb.u_dcache.wrbuf_state" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 0 -TraceValue 0
wvSetCursor -win $_nWave2 41215.910870 -snap {("G6" 0)}
wvSetCursor -win $_nWave2 39405.018477 -snap {("G6" 0)}
wvSetCursor -win $_nWave2 56065.228494 -snap {("G4" 5)}
srcActiveTrace "dcache_tb.u_dcache.wrbuf_state" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 55000 -TraceValue 1
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvSetRadix -win $_nWave2 -format Hex
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSelectSignal -win $_nWave2 {( "G3" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} {( "G3" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} {( "G3" 4 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSelectGroup -win $_nWave2 {G6}
wvSetCursor -win $_nWave2 15718.545973 -snap {("G6" 0)}
wvSelectSignal -win $_nWave2 {( "G5" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} {( "G5" 4 )} 
verdiDockWidgetHide -dock windowDock_nWave_2
wvCreateWindow
wvCreateWindow
wvCreateWindow
verdiDockWidgetHide -dock windowDock_nWave_6
verdiDockWidgetHide -dock windowDock_nWave_5
verdiDockWidgetHide -dock windowDock_nWave_4
srcDeselectAll -win $_nTrace1
wvDrop -win $_nWave2
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
wvDrop -win $_nWave2
verdiWindowWorkMode -win $_Verdi_1 -hardwareDebug
verdiWindowWorkMode -win $_Verdi_1 -interactiveDebug
verdiShowWindow -win $_Verdi_1 -switchFS
verdiWindowResize -win $_Verdi_1 "381" "144" "1867" "1022"
wvCloseWindow -win $_nWave6
wvCloseWindow -win $_nWave4
wvCloseWindow -win $_nWave5
verdiDockWidgetHide -dock widgetDock_<Watch>
srcTBSetHiddenView -view WatchView
verdiDockWidgetMaximize -dock windowDock_nWave_2
verdiShowWindow -win $_Verdi_1 -switchFS
verdiWindowResize -win $_Verdi_1 "381" "144" "1867" "1022"
verdiShowWindow -win $_Verdi_1 -switchFS
verdiHideMenus -win $_Verdi_1 -off
verdiHideMenus -win $_Verdi_1 -on
verdiHideMenus -win $_Verdi_1 -off
verdiHideMenus -win $_Verdi_1 -on
verdiHideMenus -win $_Verdi_1 -off
verdiHideMenus -win $_Verdi_1 -on
verdiHideMenus -win $_Verdi_1 -off
verdiHideMenus -win $_Verdi_1 -on
verdiHideMenus -win $_Verdi_1 -off
verdiHideBanners -win $_Verdi_1 -off
verdiHideBanners -win $_Verdi_1 -on
verdiHideBanners -win $_Verdi_1 -off
verdiHideBanners -win $_Verdi_1 -on
verdiHideBanners -win $_Verdi_1 -off
verdiDockWidgetDisplay -dock windowDock_nSchema_3
verdiDockWidgetHide -dock windowDock_nSchema_3
srcSignalView -on
verdiDockWidgetDisplay -dock widgetDock_<Signal_List>
verdiDockWidgetDisplay -dock widgetDock_<Signal_List>
srcSignalView -off
verdiDockWidgetHide -dock widgetDock_<Signal_List>
wvSelectSignal -win $_nWave2 {( "G2" 5 )} {( "G5" 4 )} 
wvSetRadix -win $_nWave2 -format Bin
wvSetOptions -win $_nWave2 -leadingZeros on
wvSelectGroup -win $_nWave2 {G6}
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSelectGroup -win $_nWave2 {G6}
wvSetCursor -win $_nWave2 33755.034210 -snap {("G4" 8)}
wvSelectSignal -win $_nWave2 {( "G4" 7 )} 
wvSelectSignal -win $_nWave2 {( "G4" 7 8 )} 
wvSetCursor -win $_nWave2 47155.637920 -snap {("G6" 0)}
wvSetCursor -win $_nWave2 46793.459441 -snap {("G6" 0)}
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvSwitchDisplayAttr -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvSwitchDisplayAttr -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvSwitchDisplayAttr -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvSwitchDisplayAttr -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSetCursor -win $_nWave2 24338.393765 -snap {("G6" 0)}
wvSelectSignal -win $_nWave2 {( "G4" 7 )} 
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvSwitchDisplayAttr -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G4" 8 )} 
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvSwitchDisplayAttr -win $_nWave2
wvSwitchDisplayAttr -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G4" 7 )} 
wvSetCursor -win $_nWave2 20716.608978 -snap {("G6" 0)}
wvSetCursor -win $_nWave2 20209.559108 -snap {("G6" 0)}
wvSetCursor -win $_nWave2 62077.391240 -snap {("G4" 5)}
wvSetCursor -win $_nWave2 56644.714060 -snap {("G4" 5)}
srcActiveTrace "dcache_tb.u_dcache.wrbuf_state" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 55000 -TraceValue 1
verdiDockWidgetHide -dock windowDock_nWave_2
verdiDockWidgetDisplay -dock windowDock_nWave_2
wvSetCursor -win $_nWave2 83228.614393 -snap {("G6" 0)}
verdiDockWidgetRestore -dock windowDock_nWave_2
wvSetCursor -win $_nWave2 59179.963411 -snap {("G4" 3)}
wvSetCursor -win $_nWave2 67147.889941 -snap {("G4" 4)}
wvSetCursor -win $_nWave2 57151.763930 -snap {("G4" 5)}
srcActiveTrace "dcache_tb.u_dcache.wrbuf_state" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 55000 -TraceValue 1
wvSelectSignal -win $_nWave2 {( "G5" 2 )} 
wvSelectSignal -win $_nWave2 {( "G5" 5 )} 
wvSelectSignal -win $_nWave2 {( "G5" 4 )} 
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvSelectSignal -win $_nWave2 {( "G5" 2 )} 
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvSelectSignal -win $_nWave2 {( "G4" 7 )} 
wvSelectSignal -win $_nWave2 {( "G4" 8 )} 
wvSelectSignal -win $_nWave2 {( "G4" 7 8 )} {( "G2" 1 2 3 4 5 6 )} {( "G3" 1 2 \
           3 4 5 )} {( "G5" 1 2 3 4 5 )} 
wvSelectSignal -win $_nWave2 {( "G4" 7 )} 
wvSetPosition -win $_nWave2 {("G4" 7)}
wvSetPosition -win $_nWave2 {("G4" 8)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G3" 5)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 1)}
wvSetPosition -win $_nWave2 {("G6" 1)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 6)}
wvSelectSignal -win $_nWave2 {( "G4" 7 )} 
wvSetPosition -win $_nWave2 {("G4" 7)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G3" 5)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 6)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 1)}
wvSelectSignal -win $_nWave2 {( "G5" 6 )} 
wvSetPosition -win $_nWave2 {("G5" 6)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 1)}
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvSelectSignal -win $_nWave2 {( "G6" 2 )} 
wvSelectSignal -win $_nWave2 {( "G6" 2 )} 
wvSelectSignal -win $_nWave2 {( "G3" 5 )} 
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSetCursor -win $_nWave2 58383.170758 -snap {("G2" 5)}
wvSetCursor -win $_nWave2 58528.042149 -snap {("G2" 5)}
wvSetCursor -win $_nWave2 58672.913540 -snap {("G2" 5)}
wvSetCursor -win $_nWave2 58672.913540 -snap {("G2" 5)}
wvSetCursor -win $_nWave2 58672.913540 -snap {("G2" 5)}
wvSetCursor -win $_nWave2 56282.535581 -snap {("G4" 6)}
wvSetCursor -win $_nWave2 58020.992279 -snap {("G4" 5)}
srcActiveTrace "dcache_tb.u_dcache.wrbuf_state" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 55000 -TraceValue 1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
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
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data" -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache.u_cache_way1.u_data" -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data" -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 13
srcInvokeExtEditor -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache.u_cache_way1.u_data" -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data" -win $_nTrace1
srcSignalView -on
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way1.u_data.wr_en_i\[3:0\]"
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G6" 2 )} 
wvSelectGroup -win $_nWave2 {G6}
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvSelectSignal -win $_nWave2 {( "G6" 2 )} 
wvSetPosition -win $_nWave2 {("G6" 2)}
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way1.u_data.index_i\[7:0\]"
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way1.u_data.index_i\[7:0\]" \
           "dcache_tb.u_dcache.u_cache_way1.u_data.offset_i\[3:0\]"
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way1.u_data.index_i\[7:0\]" \
           "dcache_tb.u_dcache.u_cache_way1.u_data.offset_i\[3:0\]" \
           "dcache_tb.u_dcache.u_cache_way1.u_data.wr_en_i\[3:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way1.u_data.wr_data_i\[31:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G6" 5 )} 
wvSelectSignal -win $_nWave2 {( "G6" 6 )} 
wvSelectSignal -win $_nWave2 {( "G6" 4 6 )} 
wvSelectSignal -win $_nWave2 {( "G6" 3 4 6 )} 
wvSelectSignal -win $_nWave2 {( "G6" 2 3 4 6 )} 
wvSelectSignal -win $_nWave2 {( "G6" 3 4 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 3)}
wvSelectSignal -win $_nWave2 {( "G6" 3 )} 
wvSelectGroup -win $_nWave2 {G7}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "wr_data_i" -line 29 -pos 1 -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {82 82 4 5 1 1}
srcHBSelect "dcache_tb.u_dcache.u_cache_way1" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "wr_data_en_i" -line 86 -pos 1 -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {511 511 4 5 1 1}
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "wr_tag_en_i" -line 519 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "wr_valid_en_i" -line 520 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "wr_dirty_en_i" -line 521 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "wr_data_en_i" -line 522 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_wr_data_en" -line 522 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_wr_data_en" -line 522 -pos 1 -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
srcSetOptions -win $_nTrace1 -annotate off
schSetOptions -win $_nSchema1 -annotate off
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_wr_data_en" -line 522 -pos 1 -win $_nTrace1
srcAction -pos 521 5 8 -win $_nTrace1 -name "way1_wr_data_en" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "req_buf_wr_en" -line 440 -pos 1 -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
srcSetOptions -win $_nTrace1 -annotate off
schSetOptions -win $_nSchema1 -annotate off
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G5" 2 )} 
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvSelectSignal -win $_nWave2 {( "G5" 4 )} 
wvScrollUp -win $_nWave2 1
srcSignalViewSelect "dcache_tb.u_dcache.cpu_addr_ack_o"
srcSignalViewSelect "dcache_tb.u_dcache.ram_wr_rdy_i"
srcSignalViewSetFilter "req_buf_wr"
srcSignalViewSetFilter "req_buf_wr"
srcSignalViewSetFilter "req_"
srcSignalViewSetFilter "req"
srcSignalViewCaseSensitive off
srcSignalViewSetFilter
srcSignalViewSelect "dcache_tb.u_dcache.req_buf_op"
srcSignalViewSelect "dcache_tb.u_dcache.req_buf_tag\[19:0\]"
srcSignalViewSelect "dcache_tb.u_dcache.req_buf_offset\[3:0\]"
srcSignalViewSelect "dcache_tb.u_dcache.req_buf_wr_en\[3:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 5)}
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSetPosition -win $_nWave2 {("G6" 3)}
wvSetPosition -win $_nWave2 {("G6" 2)}
wvSetPosition -win $_nWave2 {("G6" 1)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G3" 5)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G3" 5)}
wvSelectSignal -win $_nWave2 {( "G3" 5 )} 
wvSetRadix -win $_nWave2 -format Bin
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
wvScrollDown -win $_nWave2 0
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
wvSaveSignal -win $_nWave2 \
           "/home/qidc/Nutstore/Project/riscv/core/cache/dcache/QA_DIR/signal.rc"
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
wvSetCursor -win $_nWave2 54688.950275 -snap {("G5" 5)}
wvSetCursor -win $_nWave2 46141.538179 -snap {("G5" 5)}
srcActiveTrace "dcache_tb.u_dcache.wr_buf_wr_data\[31:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 45000 -TraceValue \
           00000000011001100000000000000000
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvScrollDown -win $_nWave2 0
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
wvSetCursor -win $_nWave2 55775.485711 -snap {("G4" 5)}
srcActiveTrace "dcache_tb.u_dcache.wrbuf_state" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 55000 -TraceValue 1
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
wvSetCursor -win $_nWave2 56934.456843 -snap {("G6" 4)}
srcActiveTrace "dcache_tb.u_dcache.way1_wr_data_en\[3:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 0 -TraceValue 0000
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
wvScrollDown -win $_nWave2 0
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 60338.934542 -snap {("G6" 4)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "req_buf_wr_en" -line 440 -pos 1 -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G6" 4 )} 
wvSetPosition -win $_nWave2 {("G6" 4)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "req_buf_wr_en" -line 440 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "write_state" -line 440 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "req_buf_wr_en" -line 440 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G6" 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 6)}
wvSetPosition -win $_nWave2 {("G6" 5)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G6" 6 )} 
wvSelectSignal -win $_nWave2 {( "G6" 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 5)}
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSelectSignal -win $_nWave2 {( "G6" 5 )} 
wvSelectSignal -win $_nWave2 {( "G6" 4 )} 
wvSelectSignal -win $_nWave2 {( "G6" 4 )} 
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G5" 4 )} 
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
wvSelectSignal -win $_nWave2 {( "G6" 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSelectSignal -win $_nWave2 {( "G6" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G6" 3)}
wvSelectSignal -win $_nWave2 {( "G6" 3 )} 
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 61280.598587 -snap {("G5" 4)}
wvSetCursor -win $_nWave2 58528.042149 -snap {("G6" 3)}
srcActiveTrace "dcache_tb.u_dcache.u_cache_way1.u_data.wr_en_i\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 0 -TraceValue 0000
wvSetCursor -win $_nWave2 59614.577585 -snap {("G6" 3)}
srcActiveTrace "dcache_tb.u_dcache.u_cache_way1.u_data.wr_en_i\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 0 -TraceValue 0000
wvSetCursor -win $_nWave2 59542.141889 -snap {("G6" 3)}
wvSetCursor -win $_nWave2 35928.105082 -snap {("G6" 3)}
srcActiveTrace "dcache_tb.u_dcache.u_cache_way1.u_data.wr_en_i\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 0 -TraceValue 0000
wvSelectSignal -win $_nWave2 {( "G6" 3 )} 
wvExpandBus -win $_nWave2 {("G6" 3)}
wvSelectSignal -win $_nWave2 {( "G6" 3 )} 
wvSetPosition -win $_nWave2 {("G6" 3)}
wvCollapseBus -win $_nWave2 {("G6" 3)}
wvSetPosition -win $_nWave2 {("G6" 3)}
wvSelectGroup -win $_nWave2 {G7}
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G6" 3 )} 
srcDeselectAll -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way1" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache.u_cache_way1" -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way1" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "wr_data_en_i" -line 38 -pos 1 -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G6" 13 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G6" 12)}
wvSelectSignal -win $_nWave2 {( "G6" 5 )} 
wvSelectSignal -win $_nWave2 {( "G6" 5 6 7 8 9 10 11 12 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 4)}
srcDeselectAll -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate off
schSetOptions -win $_nSchema1 -annotate off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "wr_data_i" -line 44 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "wr_dirty_en_i" -line 37 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "wr_data_en_i" -line 38 -pos 1 -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {511 511 4 5 1 1}
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_wr_data_en" -line 522 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_wr_data_en" -line 522 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_wr_data_en" -line 522 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G6" 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G6" 4)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_wr_data_en" -line 522 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_wr_data_en" -line 522 -pos 1 -win $_nTrace1
srcShowCalling -win $_nTrace1
srcHBSelect "dcache_tb" -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\]" -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data" -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache" -delim "."
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G6" 4 )} 
wvExpandBus -win $_nWave2 {("G6" 4)}
wvSelectSignal -win $_nWave2 {( "G6" 4 )} 
wvSetPosition -win $_nWave2 {("G6" 4)}
wvCollapseBus -win $_nWave2 {("G6" 4)}
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSetCursor -win $_nWave2 55630.614320 -snap {("G6" 4)}
srcActiveTrace "dcache_tb.u_dcache.u_cache_way1.wr_data_en_i\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 0 -TraceValue 0000
srcDeselectAll -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 76274.787603 -snap {("G3" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvSetCursor -win $_nWave2 63308.798067 -snap {("G7" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "write_state" -line 439 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "wr_buf_wr_en" -line 439 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 58672.913540 -snap {("G6" 4)}
srcActiveTrace "dcache_tb.u_dcache.u_cache_way1.wr_data_en_i\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 0 -TraceValue 0000
wvSetCursor -win $_nWave2 59035.092019 -snap {("G6" 4)}
srcActiveTrace "dcache_tb.u_dcache.u_cache_way1.wr_data_en_i\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 0 -TraceValue 0000
wvSetCursor -win $_nWave2 59035.092019 -snap {("G6" 4)}
srcActiveTrace "dcache_tb.u_dcache.u_cache_way1.wr_data_en_i\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 0 -TraceValue 0000
wvSelectSignal -win $_nWave2 {( "G6" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G6" 5)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_wr_data_en" -line 440 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -word -line 438 -pos 10 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "write_state" -line 439 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 438 -pos 10 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "write_state" -line 439 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "refill_state" -line 439 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "way0_hit" -line 439 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G6" 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G6" 7)}
wvSelectSignal -win $_nWave2 {( "G6" 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G6" 6)}
wvSelectGroup -win $_nWave2 {G7}
srcDeselectAll -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
wvSetCursor -win $_nWave2 65554.304635 -snap {("G5" 0)}
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
wvSetCursor -win $_nWave2 54688.950275 -snap {("G4" 2)}
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
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G6" 6 )} 
wvExpandBus -win $_nWave2 {("G6" 6)}
wvSelectSignal -win $_nWave2 {( "G6" 6 )} 
wvSetPosition -win $_nWave2 {("G6" 6)}
wvCollapseBus -win $_nWave2 {("G6" 6)}
wvSetPosition -win $_nWave2 {("G6" 6)}
wvSetCursor -win $_nWave2 58600.477845 -snap {("G6" 6)}
srcActiveTrace "dcache_tb.u_dcache.way1_wr_data_en\[3:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 0 -TraceValue 0000
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
wvSetCursor -win $_nWave2 0.000000
wvSetCursor -win $_nWave2 55775.485711 -snap {("G1" 1)}
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
debReload
wvSetCursor -win $_nWave2 90182.441183 -snap {("G5" 0)}
wvSetCursor -win $_nWave2 67075.454245 -snap {("G5" 1)}
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
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
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
debReload
wvScrollDown -win $_nWave2 16
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvSetPosition -win $_nWave2 {("G6" 1)}
wvExpandBus -win $_nWave2 {("G6" 1)}
wvSetPosition -win $_nWave2 {("G6" 14)}
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvSetPosition -win $_nWave2 {("G6" 1)}
wvCollapseBus -win $_nWave2 {("G6" 1)}
wvSetPosition -win $_nWave2 {("G6" 1)}
wvSetPosition -win $_nWave2 {("G6" 6)}
wvShowFilterTextField -win $_nWave2 -on
wvSetCursor -win $_nWave2 69393.396508 -snap {("G6" 1)}
srcActiveTrace \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram.mem\[0\]\[7:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 0 -TraceValue 00010010
wvSetCursor -win $_nWave2 68089.553985 -snap {("G6" 2)}
wvSetCursor -win $_nWave2 68089.553985 -snap {("G6" 2)}
srcActiveTrace \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram.mem\[1\]\[7:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 65000 -TraceValue \
           01100110
srcDeselectAll -win $_nTrace1
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram.mem\[0:255\]"
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0\]\[7:0\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram.mem\[1\]\[7:0\]"
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvSelectSignal -win $_nWave2 {( "G6" 1 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSetPosition -win $_nWave2 {("G6" 4)}
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0\]\[7:0\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[1\]" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[1\]" \
           -delim "."
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
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G6" 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G7" 0)}
wvSetPosition -win $_nWave2 {("G6" 5)}
wvSetPosition -win $_nWave2 {("G6" 5)}
wvSetPosition -win $_nWave2 {("G6" 5)}
wvSetPosition -win $_nWave2 {("G6" 5)}
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[2\]" \
           -win $_nTrace1
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[2\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[3\]" \
           -win $_nTrace1
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[3\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[3\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[3\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[3\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[3\].u_simple_dp_ram.mem\[0\]\[7:0\]"
srcSignalViewSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[3\].u_simple_dp_ram.mem\[1\]\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 31147.349163 -snap {("G4" 6)}
wvSetCursor -win $_nWave2 59179.963411 -snap {("G4" 6)}
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 66206.225896 -snap {("G4" 4)}
srcActiveTrace "dcache_tb.u_dcache.next_main_state\[4:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 65000 -TraceValue 00001
srcHBDrag -win $_nTrace1
wvSetCursor -win $_nWave2 58817.784932 -snap {("G4" 2)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
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
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G4" 1 )} 
wvSelectSignal -win $_nWave2 {( "G4" 1 )} 
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache" -delim "."
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSignalViewSelect "dcache_tb.u_dcache.cpu_offset_i\[3:0\]"
srcSignalViewSelect "dcache_tb.u_dcache.cpu_index_i\[7:0\]"
srcSignalViewSelect "dcache_tb.u_dcache.cpu_op_i"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 8)}
wvSetPosition -win $_nWave2 {("G6" 7)}
wvSetPosition -win $_nWave2 {("G6" 6)}
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSetPosition -win $_nWave2 {("G6" 3)}
wvSetPosition -win $_nWave2 {("G6" 2)}
wvSetPosition -win $_nWave2 {("G6" 1)}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G3" 6)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 6)}
wvSetPosition -win $_nWave2 {("G3" 7)}
wvSetPosition -win $_nWave2 {("G3" 7)}
wvSetPosition -win $_nWave2 {("G3" 7)}
wvSetPosition -win $_nWave2 {("G3" 7)}
wvScrollUp -win $_nWave2 12
wvSetPosition -win $_nWave2 {("G3" 6)}
wvSetPosition -win $_nWave2 {("G3" 5)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvScrollUp -win $_nWave2 4
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvScrollUp -win $_nWave2 7
wvSelectSignal -win $_nWave2 {( "G4" 1 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 84315.149829 -snap {("G4" 3)}
wvSetCursor -win $_nWave2 18833.280890 -snap {("G4" 1)}
wvSetCursor -win $_nWave2 30712.734989 -snap {("G4" 2)}
wvSetCursor -win $_nWave2 41288.346566 -snap {("G4" 2)}
wvSetCursor -win $_nWave2 51646.651055 -snap {("G4" 2)}
wvSetCursor -win $_nWave2 58962.656323 -snap {("G4" 2)}
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvSelectSignal -win $_nWave2 {( "G4" 6 )} 
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetCursor -win $_nWave2 60266.498846 -snap {("G4" 4)}
wvSetCursor -win $_nWave2 70117.753466 -snap {("G4" 4)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 69465.832204 -snap {("G4" 2)}
wvSetCursor -win $_nWave2 65264.561852 -snap {("G4" 1)}
srcActiveTrace "dcache_tb.u_dcache.cpu_req_i" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 65000 -TraceValue 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
srcDeselectAll -win $_nTrace1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G4" 2 3 4 )} {( "G2" 1 )} 
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSelectGroup -win $_nWave2 {G2}
wvSetCursor -win $_nWave2 28177.485639 -snap {("G4" 1)}
wvSetCursor -win $_nWave2 61642.777065 -snap {("G4" 1)}
wvSetCursor -win $_nWave2 56210.099886 -snap {("G4" 2)}
wvSetCursor -win $_nWave2 58528.042149 -snap {("G4" 1)}
srcActiveTrace "dcache_tb.u_dcache.cpu_req_i" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 15000 -TraceValue 1
wvSetCursor -win $_nWave2 55558.178624 -snap {("G4" 1)}
srcActiveTrace "dcache_tb.u_dcache.cpu_req_i" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 15000 -TraceValue 1
wvSetCursor -win $_nWave2 55485.742928 -snap {("G4" 2)}
srcActiveTrace "dcache_tb.u_dcache.cpu_op_i" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 55000 -TraceValue 0
wvSetCursor -win $_nWave2 72508.131425 -snap {("G4" 5)}
wvSetCursor -win $_nWave2 66640.840071 -snap {("G4" 3)}
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
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ClockPeriod" -line 144 -pos 1 -win $_nTrace1
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
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvScrollDown -win $_nWave2 11
wvScrollUp -win $_nWave2 11
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvScrollDown -win $_nWave2 2
srcSignalViewSelect "dcache_tb.u_dcache.cpu_addr_ack_o"
srcSignalViewSelect "dcache_tb.u_dcache.cpu_offset_i\[3:0\]"
srcSignalViewSelect "dcache_tb.u_dcache.cpu_addr_ack_o"
srcSignalViewSelect "dcache_tb.u_dcache.cpu_rd_data_o\[31:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcSignalViewSelect "dcache_tb.u_dcache.cpu_addr_ack_o"
srcSignalViewSelect "dcache_tb.u_dcache.cpu_addr_ack_o" \
           "dcache_tb.u_dcache.cpu_data_ack_o"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 29553.763857 -snap {("G4" 4)}
wvSetCursor -win $_nWave2 39042.839998 -snap {("G4" 4)}
wvSetCursor -win $_nWave2 47083.202224 -snap {("G4" 4)}
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "cpu_addr_ack_o" -line 38 -pos 1 -win $_nTrace1
srcAction -pos 37 5 4 -win $_nTrace1 -name "cpu_addr_ack_o" -ctrlKey off
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 41143.475174 -snap {("G4" 5)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "cpu_data_ack_o" -line 555 -pos 1 -win $_nTrace1
srcAction -pos 554 3 7 -win $_nTrace1 -name "cpu_data_ack_o" -ctrlKey off
srcDeselectAll -win $_nTrace1
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
debReload
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
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcHBSelect "dcache_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb" -delim "."
srcHBSelect "dcache_tb" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb" -delim "."
srcHBSelect "dcache_tb" -win $_nTrace1
debReload
srcSignalViewSelect "dcache_tb.op_num\[3:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvScrollDown -win $_nWave2 0
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetCursor -win $_nWave2 78839.203407 -snap {("G4" 0)}
wvSetCursor -win $_nWave2 155484.844689 -snap {("G4" 7)}
srcActiveTrace "dcache_tb.u_dcache.main_state\[4:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 155000 -TraceValue 00001
wvSetCursor -win $_nWave2 116129.759519 -snap {("G4" 7)}
srcActiveTrace "dcache_tb.u_dcache.main_state\[4:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 115000 -TraceValue 10000
wvSetCursor -win $_nWave2 157678.406814 -snap {("G4" 7)}
srcActiveTrace "dcache_tb.u_dcache.main_state\[4:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 155000 -TraceValue 00001
wvSelectSignal -win $_nWave2 {( "G4" 6 )} 
wvSelectSignal -win $_nWave2 {( "G4" 7 )} 
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvZoomIn -win $_nWave2
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
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSetCursor -win $_nWave2 140387.975952 -snap {("G4" 5)}
wvSetCursor -win $_nWave2 138839.579158 -snap {("G4" 5)}
srcActiveTrace "dcache_tb.u_dcache.cpu_data_ack_o" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 75000 -TraceValue 0
wvSetCursor -win $_nWave2 136323.434369 -snap {("G4" 3)}
srcActiveTrace "dcache_tb.u_dcache.cpu_rd_data_o\[31:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 135000 -TraceValue \
           11111111111011101101110111001100
wvSetCursor -win $_nWave2 136968.599699 -snap {("G4" 5)}
srcActiveTrace "dcache_tb.u_dcache.cpu_data_ack_o" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 75000 -TraceValue 0
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache.u_cache_way1.u_data" -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\]" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\]" \
           -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\]" -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank" -win \
           $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank" -delim \
           "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank" -win \
           $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\]" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\]" \
           -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\]" \
           -win $_nTrace1
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewCollapse \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0:255\]"
wvZoom -win $_nWave2 146968.662325 152904.183367
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewCollapse \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0:255\]"
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
srcSignalViewCollapse \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram.mem\[0:255\]"
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank" -win \
           $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank" -win \
           $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank" -delim \
           "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank" -win \
           $_nTrace1
wvSetCursor -win $_nWave2 135165.931864 -snap {("G4" 3)}
srcActiveTrace "dcache_tb.u_dcache.cpu_rd_data_o\[31:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 75000 -TraceValue \
           00000000000000000000000000000000
wvSetCursor -win $_nWave2 168555.135271 -snap {("G4" 4)}
srcActiveTrace "dcache_tb.u_dcache.cpu_addr_ack_o" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 165000 -TraceValue 0
wvSetCursor -win $_nWave2 186791.808617 -snap {("G4" 7)}
srcActiveTrace "dcache_tb.u_dcache.main_state\[4:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 185000 -TraceValue 01000
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 165226.703407 -snap {("G4" 7)}
srcActiveTrace "dcache_tb.u_dcache.main_state\[4:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 165000 -TraceValue 00010
wvZoomOut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 178166.032064 -snap {("G4" 5)}
wvSetCursor -win $_nWave2 201001.703407 -snap {("G4" 7)}
wvSetCursor -win $_nWave2 206843.386774 -snap {("G4" 7)}
srcActiveTrace "dcache_tb.u_dcache.main_state\[4:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 155000 -TraceValue 00001
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\]" \
           -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\]" \
           -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\]" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\]" \
           -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\]" \
           -win $_nTrace1
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram" \
           -delim "."
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram" \
           -win $_nTrace1
srcSignalViewExpand \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0:255\]"
srcSignalViewCollapse \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[0\].u_simple_dp_ram.mem\[0:255\]"
srcHBSelect \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram" \
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
srcSignalViewCollapse \
           "dcache_tb.u_dcache.u_cache_way1.u_data.bank\[2\].u_bank.ram\[1\].u_simple_dp_ram.mem\[0:255\]"
wvSetCursor -win $_nWave2 149886.973948 -snap {("G4" 1)}
wvSetCursor -win $_nWave2 144974.649299 -snap {("G4" 3)}
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 135415.531062 -snap {("G4" 3)}
srcActiveTrace "dcache_tb.u_dcache.cpu_rd_data_o\[31:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 135000 -TraceValue \
           11111111111011101101110111001100
srcHBSelect "dcache_tb.u_dcache.u_cache_way1" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache.u_cache_way1" -delim "."
srcHBSelect "dcache_tb.u_dcache.u_cache_way1" -win $_nTrace1
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way1.wr_data_en_i\[3:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvSetRadix -win $_nWave2 -format Bin
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G4" 6 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 6)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 5)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvExpandBus -win $_nWave2 {("G4" 4)}
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvSetPosition -win $_nWave2 {("G4" 4)}
wvCollapseBus -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetCursor -win $_nWave2 76600.400802 -snap {("G4" 4)}
srcActiveTrace "dcache_tb.u_dcache.u_cache_way1.wr_data_en_i\[3:0\]" -win \
           $_nTrace1 -TraceByDConWave -TraceTime 75000 -TraceValue 0000
srcDeselectAll -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate off
schSetOptions -win $_nSchema1 -annotate off
srcDeselectAll -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
srcSetOptions -win $_nTrace1 -annotate off
schSetOptions -win $_nSchema1 -annotate off
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
srcSetOptions -win $_nTrace1 -annotate off
schSetOptions -win $_nSchema1 -annotate off
wvSetOptions -win $_nWave2 -fixedDelta on
srcDeselectAll -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
srcSetOptions -win $_nTrace1 -annotate off
schSetOptions -win $_nSchema1 -annotate off
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcAction -pos 439 3 8 -win $_nTrace1 -name "way1_wr_data_en" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate off
schSetOptions -win $_nSchema1 -annotate off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
srcSetOptions -win $_nTrace1 -annotate off
schSetOptions -win $_nSchema1 -annotate off
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 135681.062124 -snap {("G4" 3)}
srcActiveTrace "dcache_tb.u_dcache.cpu_rd_data_o\[31:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 135000 -TraceValue \
           11111111111011101101110111001100
wvSetOptions -win $_nWave2 -fixedDelta off
srcDeselectAll -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
srcSetOptions -win $_nTrace1 -annotate off
schSetOptions -win $_nSchema1 -annotate off
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
srcSetOptions -win $_nTrace1 -annotate off
schSetOptions -win $_nSchema1 -annotate off
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
srcSetOptions -win $_nTrace1 -annotate off
schSetOptions -win $_nSchema1 -annotate off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcAction -pos 439 47 4 -win $_nTrace1 -name "way1_hit" -ctrlKey off
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcAction -pos 439 47 5 -win $_nTrace1 -name "way1_hit" -ctrlKey off
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way1.wr_dirty_i"
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way1.lru_index_i\[7:0\]"
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way1.valid_index_i\[7:0\]"
srcSignalViewSelect "dcache_tb.u_dcache.u_cache_way1.wr_data_i\[31:0\]"
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache" -delim "."
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcAction -pos 95 3 3 -win $_nTrace1 -name "way1_hit" -ctrlKey off
wvDrop -win $_nWave2
wvScrollDown -win $_nWave2 22
wvScrollDown -win $_nWave2 4
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G4" 4 )} {( "G6" 1 )} 
wvSelectSignal -win $_nWave2 {( "G4" 4 )} {( "G6" 1 2 )} 
wvSelectSignal -win $_nWave2 {( "G4" 4 )} {( "G6" 1 2 3 )} 
wvSelectSignal -win $_nWave2 {( "G4" 4 )} {( "G6" 1 2 3 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G5" 5 )} 
wvSelectSignal -win $_nWave2 {( "G5" 4 5 )} 
wvSelectSignal -win $_nWave2 {( "G5" 3 4 5 )} 
wvSelectSignal -win $_nWave2 {( "G5" 2 3 4 5 )} 
wvSelectSignal -win $_nWave2 {( "G5" 1 2 3 4 5 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 7
wvScrollDown -win $_nWave2 0
srcSignalViewSelect "dcache_tb.u_dcache.way1_dirty"
srcSignalViewSetFilter "hit"
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcSetScope -win $_nTrace1 "dcache_tb.u_dcache" -delim "."
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcSignalViewSort -name
srcSignalViewSort -name
srcSignalViewSelect "dcache_tb.u_dcache.way0_hit"
srcSignalViewSelect "dcache_tb.u_dcache.way1_wr_dirty_en"
srcSignalViewSelect "dcache_tb.u_dcache.way1_tag\[19:0\]"
srcSignalViewSelect "dcache_tb.u_dcache.way1_hit"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 76334.869739 -snap {("G4" 4)}
srcActiveTrace "dcache_tb.u_dcache.way1_hit" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 75000 -TraceValue 0
srcDeselectAll -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
wvSetCursor -win $_nWave2 75405.511022 -snap {("G4" 5)}
srcActiveTrace "dcache_tb.u_dcache.cpu_addr_ack_o" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 75000 -TraceValue 0
wvSetCursor -win $_nWave2 77529.759519 -snap {("G4" 4)}
srcActiveTrace "dcache_tb.u_dcache.way1_hit" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 75000 -TraceValue 0
srcDeselectAll -win $_nTrace1
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
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvSelectSignal -win $_nWave2 {( "G4" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G4" 7 )} 
wvScrollDown -win $_nWave2 9
wvScrollDown -win $_nWave2 4
wvScrollUp -win $_nWave2 13
wvScrollDown -win $_nWave2 0
srcSignalViewSelect "dcache_tb.u_dcache.clk"
srcSignalViewSelect "dcache_tb.u_dcache.way1_valid_index\[7:0\]"
srcSignalViewSelect "dcache_tb.u_dcache.way1_wr_data_en\[3:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_wr_data_en" -line 426 -pos 1 -win $_nTrace1
srcAction -pos 425 16 9 -win $_nTrace1 -name "way1_wr_data_en" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "miss_buf_replace_way" -line 440 -pos 1 -win $_nTrace1
srcAction -pos 439 47 8 -win $_nTrace1 -name "miss_buf_replace_way" -ctrlKey off
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "miss_buf_replace_way" -line 196 -pos 1 -win $_nTrace1
srcAction -pos 195 1 15 -win $_nTrace1 -name "miss_buf_replace_way" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "miss_buf_replace_way" -line 196 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "miss_buf_replace_way" -line 196 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "way0_lru" -line 241 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_lru" -line 241 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_lru" -line 241 -pos 1 -win $_nTrace1
srcAction -pos 240 10 4 -win $_nTrace1 -name "way1_lru" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_lru" -line 47 -pos 1 -win $_nTrace1
srcAction -pos 46 7 4 -win $_nTrace1 -name "rd_lru" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_lru" -line 47 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rd_lru_o" -line 47 -pos 1 -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {92 92 4 5 1 1}
srcHBSelect "dcache_tb.u_dcache.u_cache_way1" -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {511 511 4 5 1 1}
srcHBSelect "dcache_tb.u_dcache" -win $_nTrace1
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {65 65 4 5 1 1}
srcHBSelect "dcache_tb" -win $_nTrace1
srcShowCalling -win $_nTrace1
srcShowCalling -win $_nTrace1
srcShowCalling -win $_nTrace1
srcShowCalling -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "dcache_tb" -win $_nTrace1
srcHBSelect "dcache_tb" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 62 -pos 8 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way1.u_data" -win $_nTrace1
srcHBSelect "dcache_tb.u_dcache.u_cache_way1" -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSetCursor -win $_nWave2 77529.759519 -snap {("G4" 5)}
wvSetCursor -win $_nWave2 74879.759519 -snap {("G4" 5)}
wvSetCursor -win $_nWave2 76472.945892 -snap {("G4" 5)}
srcActiveTrace "dcache_tb.u_dcache.miss_buf_replace_way" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 0 -TraceValue 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "way0_lru" -line 241 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "way1_lru" -line 241 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcFindScope -open -win $_nTrace1
srcFindScope -selectscope 1
wvSetCursor -win $_nWave2 173657.314629 -snap {("G4" 1)}
wvSaveSignal -win $_nWave2 \
           "/home/qidc/Nutstore/Project/riscv/core/cache/dcache/QA_DIR/signal.rc"
wvSetPosition -win $_nWave2 {("G4" 7)}
wvSetPosition -win $_nWave2 {("G4" 7)}
wvSetPosition -win $_nWave2 {("G4" 7)}
srcCloseWindow -win $_nTrace7
debExit
