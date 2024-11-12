simSetSimulator "-vcssv" -exec \
           "/home/qidc/Nutstore/Project/riscv/riscv_soc/QA_DIR/simv" -args
debImport "-dbdir" \
          "/home/qidc/Nutstore/Project/riscv/riscv_soc/QA_DIR/simv.daidir"
debLoadSimResult /home/qidc/Nutstore/Project/riscv/riscv_soc/QA_DIR/rtl.fsdb
wvCreateWindow
wvRestoreSignal -win $_nWave2 "signal.rc" -overWriteAutoAlias on -appendSignals \
           on
srcHBSelect "riscv_soc_tb" -win $_nTrace1
srcHBSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode" -win $_nTrace1
srcSetScope -win $_nTrace1 "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode" \
           -delim "."
srcHBSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSignalView -on
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.ram_wr_addr_o\[31:0\]"
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.op_data2_o\[31:0\]"
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.ram_wr_data_o\[31:0\]"
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_i\[31:0\]"
wvAddSignal -win $_nWave2 \
           "/riscv_soc_tb/u_riscv_soc/u_riscv_core/u_inst_decode/inst_i\[31:0\]"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 1)}
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_addr_i\[31:0\]"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvAddSignal -win $_nWave2 \
           "/riscv_soc_tb/u_riscv_soc/u_riscv_core/u_inst_decode/inst_addr_i\[31:0\]"
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.ram_rd_addr_o\[31:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_i\[31:0\]"
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_addr_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.rs1_data_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.rs2_data_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.rs1_addr_o\[4:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.rs2_addr_o\[4:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} {( "G2" 1 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSelectGroup -win $_nWave2 {G3}
wvSelectGroup -win $_nWave2 {G2} {G3}
wvSelectGroup -win $_nWave2 {G1} {G2} {G3}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSelectGroup -win $_nWave2 {G1}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.rs2_data_i\[31:0\]"
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_i\[31:0\]"
wvSelectGroup -win $_nWave2 {G1}
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_addr_i\[31:0\]"
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_addr_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.rs1_data_i\[31:0\]"
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_addr_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.rs1_data_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.rs2_data_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.rs1_addr_o\[4:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.rs2_addr_o\[4:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.ram_rd_addr_o\[31:0\]"
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_addr_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.rs1_data_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.rs2_data_i\[31:0\]"
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_addr_i\[31:0\]"
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_addr_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.rs1_data_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.rs2_data_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.rs1_addr_o\[4:0\]"
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_addr_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.rs1_data_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.rs2_data_i\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.rs1_addr_o\[4:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.rs2_addr_o\[4:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.offset_addr_o\[31:0\]"
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.op_data1_o\[31:0\]"
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.op_data1_o\[31:0\]" \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.op_data2_o\[31:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_addr_o\[31:0\]"
wvSelectGroup -win $_nWave2 {G2}
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.ram_wr_data_o\[31:0\]"
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.rs1_data_i\[31:0\]"
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_i\[31:0\]"
wvSetCursor -win $_nWave2 2071810.776736 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 1951777.631190 -snap {("G2" 0)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetCursor -win $_nWave2 14322.475363 -snap {("G2" 0)}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSearchPrev -win $_nWave2
wvSetSearchMode -win $_nWave2 -value 
wvSetCursor -win $_nWave2 15193.804662 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 13886.810713 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 20035.128084 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 82770.837658 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 74819.957798 -snap {("G1" 1)}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetCursor -win $_nWave2 83086.694529 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 80962.829361 -snap {("G1" 8)}
srcActiveTrace \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.op_data2_o\[31:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 75000 -TraceValue \
           00000000000000000000000000000010
wvSetCursor -win $_nWave2 79873.667736 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 79002.338437 -snap {("G1" 8)}
srcActiveTrace \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.op_data2_o\[31:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 75000 -TraceValue \
           00000000000000000000000000000010
srcDeselectAll -win $_nTrace1
srcSelect -signal "op_data2" -line 72 -pos 1 -win $_nTrace1
srcAction -pos 71 7 5 -win $_nTrace1 -name "op_data2" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "imm_i" -line 109 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 9)}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetCursor -win $_nWave2 76497.266700 -snap {("G1" 8)}
srcActiveTrace \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.op_data2_o\[31:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 75000 -TraceValue \
           00000000000000000000000000000010
wvSetOptions -win $_nWave2 -fixedDelta on
srcDeselectAll -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
srcDeselectAll -win $_nTrace1
srcSelect -signal "op_data2_o" -line 72 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate off
schSetOptions -win $_nSchema1 -annotate off
wvSetCursor -win $_nWave2 81235.119767 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 82160.907148 -snap {("G1" 8)}
srcActiveTrace \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.op_data2_o\[31:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 75000 -TraceValue \
           00000000000000000000000000000010
wvSetOptions -win $_nWave2 -fixedDelta off
srcDeselectAll -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
verdiSetFont -font "Bitstream Vera Sans" -size "26"
verdiSetFont -monoFont "Courier" -monoFontSize "24"
simSetSvtbMode off
srcDeselectAll -win $_nTrace1
verdiSetFont -monoFont "Courier" -monoFontSize "14"
verdiSetFont -font "Bitstream Vera Sans" -size "22"
verdiSetFont -font "Bitstream Vera Sans" -size "16"
verdiSetFont -monoFont "Courier" -monoFontSize "24"
verdiSetFont -monoFont "Fixed" -monoFontSize "20"
wvSetCursor -win $_nWave2 80297.139732 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 79916.029385 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 80079.362391 -snap {("G1" 8)}
srcActiveTrace \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.op_data2_o\[31:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 75000 -TraceValue \
           00000000000000000000000000000010
wvSetOptions -win $_nWave2 -fixedDelta on
srcDeselectAll -win $_nTrace1
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
srcDeselectAll -win $_nTrace1
srcSelect -signal "op_data1" -line 71 -pos 1 -win $_nTrace1
srcAction -pos 70 7 2 -win $_nTrace1 -name "op_data1" -ctrlKey off
wvSetCursor -win $_nWave2 80133.806727 -snap {("G1" 8)}
srcActiveTrace \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.op_data2_o\[31:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 75000 -TraceValue \
           00000000000000000000000000000010
srcDeselectAll -win $_nTrace1
srcSelect -signal "op_data2" -line 72 -pos 1 -win $_nTrace1
srcAction -pos 71 7 6 -win $_nTrace1 -name "op_data2" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs2_data_i" -line 216 -pos 1 -win $_nTrace1
srcAction -pos 215 5 3 -win $_nTrace1 -name "rs2_data_i" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg2_rd_data" -line 70 -pos 1 -win $_nTrace1
srcAction -pos 69 7 7 -win $_nTrace1 -name "reg2_rd_data" -ctrlKey off
wvSetCursor -win $_nWave2 79916.029385 -snap {("G1" 8)}
srcActiveTrace \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.op_data2_o\[31:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 75000 -TraceValue \
           00000000000000000000000000000010
srcDeselectAll -win $_nTrace1
srcSelect -signal "op_data2" -line 72 -pos 1 -win $_nTrace1
srcAction -pos 71 7 4 -win $_nTrace1 -name "op_data2" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "imm_i" -line 109 -pos 1 -win $_nTrace1
srcAction -pos 108 5 2 -win $_nTrace1 -name "imm_i" -ctrlKey off
wvSetCursor -win $_nWave2 80841.583085 -snap {("G1" 8)}
srcActiveTrace \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.op_data2_o\[31:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 75000 -TraceValue \
           00000000000000000000000000000010
srcDeselectAll -win $_nTrace1
srcSelect -signal "op_data2" -line 72 -pos 1 -win $_nTrace1
srcAction -pos 71 7 3 -win $_nTrace1 -name "op_data2" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs2_data_i" -line 216 -pos 1 -win $_nTrace1
srcAction -pos 215 5 6 -win $_nTrace1 -name "rs2_data_i" -ctrlKey off
wvSetCursor -win $_nWave2 80950.471756 -snap {("G1" 8)}
srcActiveTrace \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.op_data2_o\[31:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 75000 -TraceValue \
           00000000000000000000000000000010
srcDeselectAll -win $_nTrace1
srcSelect -signal "op_data2" -line 72 -pos 1 -win $_nTrace1
srcAction -pos 71 7 3 -win $_nTrace1 -name "op_data2" -ctrlKey off
wvSetCursor -win $_nWave2 77139.368286 -snap {("G1" 8)}
srcActiveTrace \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.op_data2_o\[31:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 75000 -TraceValue \
           00000000000000000000000000000010
srcDeselectAll -win $_nTrace1
srcSelect -signal "op_data2" -line 72 -pos 1 -win $_nTrace1
srcAction -pos 71 7 2 -win $_nTrace1 -name "op_data2" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "imm_i" -line 109 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 118680.396106 -snap {("G1" 2)}
srcActiveTrace \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_i\[31:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 115000 -TraceValue \
           00000000001000001000111100110011
wvSetCursor -win $_nWave2 116992.621712 -snap {("G1" 7)}
srcActiveTrace \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.op_data1_o\[31:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 115000 -TraceValue \
           00000000000000000000000000000001
srcDeselectAll -win $_nTrace1
srcSelect -signal "op_data1" -line 71 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "op_data1" -line 71 -pos 1 -win $_nTrace1
srcAction -pos 70 7 4 -win $_nTrace1 -name "op_data1" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs1_data_i" -line 83 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rs1_data_i" -line 83 -pos 1 -win $_nTrace1
srcAction -pos 82 5 5 -win $_nTrace1 -name "rs1_data_i" -ctrlKey off
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg1_rd_data" -line 69 -pos 1 -win $_nTrace1
srcAction -pos 68 7 5 -win $_nTrace1 -name "reg1_rd_data" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {32 32 7 8 1 1} -backward
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {31 32 2 9 10 3}
srcDeselectAll -win $_nTrace1
srcSelect -word -line 32 -pos 9 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {32 32 2 8 4 1} -backward
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {31 32 2 2 13 6}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {32 32 6 7 1 1} -backward
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {31 32 2 8 11 1} -backward
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {32 32 6 7 1 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {31 32 2 7 11 1} -backward
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regs" -line 26 -pos 1 -win $_nTrace1
srcSelect -win $_nTrace1 -range {26 39 13 1 4 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regs" -line 26 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvAddSignal -win $_nWave2 \
           "/riscv_soc_tb/u_riscv_soc/u_riscv_core/u_register_file/regs\[0:31\]"
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvExpandBus -win $_nWave2 {("G2" 1)}
wvScrollUp -win $_nWave2 24
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_addr_o\[31:0\]"
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.rs1_data_i\[31:0\]"
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.rs2_data_i\[31:0\]"
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.ram_rd_addr_o\[31:0\]"
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.ram_wr_data_o\[31:0\]"
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_addr_i\[31:0\]"
srcSignalViewExpand \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_addr_i\[31:0\]"
srcSignalViewCollapse \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_inst_decode.inst_addr_i\[31:0\]"
srcHBSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_pc_reg" -win $_nTrace1
srcSetScope -win $_nTrace1 "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_pc_reg" \
           -delim "."
srcHBSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_pc_reg" -win $_nTrace1
srcHBSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_register_file" -win \
           $_nTrace1
srcSetScope -win $_nTrace1 \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_register_file" -delim "."
srcHBSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_register_file" -win \
           $_nTrace1
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_register_file.reg2_rd_data_o\[31:0\]"
srcSignalViewExpand \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_register_file.regs\[0:31\]"
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_register_file.regs\[1\]\[31:0\]"
srcSignalViewExpand \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_register_file.regs\[0\]\[31:0\]"
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_register_file.regs\[0\]\[31:0\]"
srcSignalViewCollapse \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_register_file.regs\[0\]\[31:0\]"
verdiDockWidgetFix -dock widgetDock_<Signal_List>
verdiDockWidgetUnfix -dock widgetDock_<Signal_List>
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 61 -pos 6 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {50 58 9 1 10 1} -backward
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSetPosition -win $_nWave2 {("G2" 1)}
wvCollapseBus -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
srcDeselectAll -win $_nTrace1
srcSignalViewSelect \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_register_file.regs\[0:31\]"
srcSignalViewCollapse \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_register_file.regs\[0:31\]"
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {8 12 1 1 28 1}
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 69680.494352 -snap {("G3" 0)}
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetCursor -win $_nWave2 115903.735007 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 117210.399054 -snap {("G1" 10)}
srcActiveTrace \
           "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_register_file.reg1_rd_data_o\[31:0\]" \
           -win $_nTrace1 -TraceByDConWave -TraceTime 115000 -TraceValue \
           00000000000000000000000000000001
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg1_rd_data" -line 69 -pos 1 -win $_nTrace1
srcAction -pos 68 7 6 -win $_nTrace1 -name "reg1_rd_data" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg1_rd_addr_i" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regs\[reg1_rd_addr_i\]" -line 40 -pos 1 -win $_nTrace1
srcAction -pos 39 5 1 -win $_nTrace1 -name "regs\[reg1_rd_addr_i\]" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcHBSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_register_file" -win \
           $_nTrace1
srcHBSelect "riscv_soc_tb.u_riscv_soc.u_riscv_core.u_register_file" -win \
           $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg1_rd_addr_i" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regs\[reg1_rd_addr_i\]" -line 40 -pos 1 -win $_nTrace1
srcAction -pos 39 5 1 -win $_nTrace1 -name "regs\[reg1_rd_addr_i\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_wr_addr_i" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_wr_data_i" -line 65 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "regs\[reg_wr_addr_i\]" -line 65 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 63 -pos 13 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {65 67 2 1 10 1} -backward
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "reg_wr_data_i" -line 65 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debExit
