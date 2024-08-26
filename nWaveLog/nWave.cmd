wvResizeWindow -win $_nWave1 1920 27 1920 1057
wvResizeWindow -win $_nWave1 1920 31 893 202
wvResizeWindow -win $_nWave1 1920 27 1920 1057
wvResizeWindow -win $_nWave1 1920 31 893 202
wvResizeWindow -win $_nWave1 1957 45 1920 1057
wvRestoreSignal -win $_nWave1 \
           "/RAID2/LAB/icssl/icsslRA27/JimmyCheng/Conv_3x3/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetCursor -win $_nWave1 385.046178 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 378.040221 -snap {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectGroup -win $_nWave1 {G3}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/clk} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/we_O0} \
{/testbench/u_conv/we_O1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_SRAM_000/dout\[0:128\]} \
{/testbench/u_SRAM_000/addr\[11:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/image_valid} \
{/testbench/u_conv/addr_00\[11:0\]} \
{/testbench/u_conv/addr_01\[11:0\]} \
{/testbench/u_conv/addr_10\[11:0\]} \
{/testbench/u_conv/addr_11\[11:0\]} \
{/testbench/u_conv/image_comb\[0:15\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/clk} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/we_O0} \
{/testbench/u_conv/we_O1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_SRAM_000/dout\[0:128\]} \
{/testbench/u_SRAM_000/addr\[11:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/image_valid} \
{/testbench/u_conv/addr_00\[11:0\]} \
{/testbench/u_conv/addr_01\[11:0\]} \
{/testbench/u_conv/addr_10\[11:0\]} \
{/testbench/u_conv/addr_11\[11:0\]} \
{/testbench/u_conv/image_comb\[0:15\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSetPosition -win $_nWave1 {("G2" 12)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvExpandBus -win $_nWave1 {("G2" 12)}
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSetPosition -win $_nWave1 {("G2" 13)}
wvExpandBus -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 31)}
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvSelectSignal -win $_nWave1 {( "G2" 15 )} 
wvSetPosition -win $_nWave1 {("G2" 15)}
wvExpandBus -win $_nWave1 {("G2" 15)}
wvSetPosition -win $_nWave1 {("G2" 34)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/SRAM_I000"
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_SRAM_000"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_SRAM_001"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_SRAM_B00"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_SRAM_K1"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_SRAM_O0"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_SRAM_OT0"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_SRAM_OT1"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_conv"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_conv"
wvSetPosition -win $_nWave1 {("G2" 35)}
wvSetPosition -win $_nWave1 {("G2" 35)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/clk} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/we_O0} \
{/testbench/u_conv/we_O1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_SRAM_000/dout\[0:128\]} \
{/testbench/u_SRAM_000/addr\[11:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/image_valid} \
{/testbench/u_conv/addr_00\[11:0\]} \
{/testbench/u_conv/addr_01\[11:0\]} \
{/testbench/u_conv/addr_10\[11:0\]} \
{/testbench/u_conv/addr_11\[11:0\]} \
{/testbench/u_conv/image_comb\[0:15\]} \
{/testbench/u_conv/image_comb\[0\]\[0:2\]} \
{/testbench/u_conv/image_comb\[0\]\[0\]\[0:2\]} \
{/testbench/u_conv/image_comb\[0\]\[1\]\[0:2\]} \
{/testbench/u_conv/image_comb\[0\]\[1\]\[0\]\[8:0\]} \
{/testbench/u_conv/image_comb\[0\]\[1\]\[1\]\[8:0\]} \
{/testbench/u_conv/image_comb\[0\]\[1\]\[2\]\[8:0\]} \
{/testbench/u_conv/image_comb\[0\]\[2\]\[0:2\]} \
{/testbench/u_conv/image_comb\[1\]\[0:2\]} \
{/testbench/u_conv/image_comb\[2\]\[0:2\]} \
{/testbench/u_conv/image_comb\[3\]\[0:2\]} \
{/testbench/u_conv/image_comb\[4\]\[0:2\]} \
{/testbench/u_conv/image_comb\[5\]\[0:2\]} \
{/testbench/u_conv/image_comb\[6\]\[0:2\]} \
{/testbench/u_conv/image_comb\[7\]\[0:2\]} \
{/testbench/u_conv/image_comb\[8\]\[0:2\]} \
{/testbench/u_conv/image_comb\[9\]\[0:2\]} \
{/testbench/u_conv/image_comb\[10\]\[0:2\]} \
{/testbench/u_conv/image_comb\[11\]\[0:2\]} \
{/testbench/u_conv/image_comb\[12\]\[0:2\]} \
{/testbench/u_conv/image_comb\[13\]\[0:2\]} \
{/testbench/u_conv/image_comb\[14\]\[0:2\]} \
{/testbench/u_conv/image_comb\[15\]\[0:2\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 35 )} 
wvSetPosition -win $_nWave1 {("G2" 35)}
wvSetPosition -win $_nWave1 {("G2" 35)}
wvSetPosition -win $_nWave1 {("G2" 35)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/clk} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/we_O0} \
{/testbench/u_conv/we_O1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_SRAM_000/dout\[0:128\]} \
{/testbench/u_SRAM_000/addr\[11:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/image_valid} \
{/testbench/u_conv/addr_00\[11:0\]} \
{/testbench/u_conv/addr_01\[11:0\]} \
{/testbench/u_conv/addr_10\[11:0\]} \
{/testbench/u_conv/addr_11\[11:0\]} \
{/testbench/u_conv/image_comb\[0:15\]} \
{/testbench/u_conv/image_comb\[0\]\[0:2\]} \
{/testbench/u_conv/image_comb\[0\]\[0\]\[0:2\]} \
{/testbench/u_conv/image_comb\[0\]\[1\]\[0:2\]} \
{/testbench/u_conv/image_comb\[0\]\[1\]\[0\]\[8:0\]} \
{/testbench/u_conv/image_comb\[0\]\[1\]\[1\]\[8:0\]} \
{/testbench/u_conv/image_comb\[0\]\[1\]\[2\]\[8:0\]} \
{/testbench/u_conv/image_comb\[0\]\[2\]\[0:2\]} \
{/testbench/u_conv/image_comb\[1\]\[0:2\]} \
{/testbench/u_conv/image_comb\[2\]\[0:2\]} \
{/testbench/u_conv/image_comb\[3\]\[0:2\]} \
{/testbench/u_conv/image_comb\[4\]\[0:2\]} \
{/testbench/u_conv/image_comb\[5\]\[0:2\]} \
{/testbench/u_conv/image_comb\[6\]\[0:2\]} \
{/testbench/u_conv/image_comb\[7\]\[0:2\]} \
{/testbench/u_conv/image_comb\[8\]\[0:2\]} \
{/testbench/u_conv/image_comb\[9\]\[0:2\]} \
{/testbench/u_conv/image_comb\[10\]\[0:2\]} \
{/testbench/u_conv/image_comb\[11\]\[0:2\]} \
{/testbench/u_conv/image_comb\[12\]\[0:2\]} \
{/testbench/u_conv/image_comb\[13\]\[0:2\]} \
{/testbench/u_conv/image_comb\[14\]\[0:2\]} \
{/testbench/u_conv/image_comb\[15\]\[0:2\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 35 )} 
wvSetPosition -win $_nWave1 {("G2" 35)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 15)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSelectSignal -win $_nWave1 {( "G2" 17 )} 
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSetPosition -win $_nWave1 {("G2" 20)}
wvExpandBus -win $_nWave1 {("G2" 20)}
wvSelectSignal -win $_nWave1 {( "G2" 15 )} 
wvSetPosition -win $_nWave1 {("G2" 15)}
wvExpandBus -win $_nWave1 {("G2" 15)}
wvSetPosition -win $_nWave1 {("G2" 26)}
wvSelectSignal -win $_nWave1 {( "G2" 22 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetCursor -win $_nWave1 396.510471 -snap {("G2" 22)}
wvSetCursor -win $_nWave1 389.822967 -snap {("G2" 9)}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetCursor -win $_nWave1 378.103912 -snap {("G2" 21)}
wvSelectSignal -win $_nWave1 {( "G2" 22 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 384.918797 -snap {("G2" 24)}
wvSetCursor -win $_nWave1 385.237250 -snap {("G2" 25)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 378.167602 -snap {("G2" 22)}
wvScrollDown -win $_nWave1 10
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSetPosition -win $_nWave1 {("G2" 13)}
wvCollapseBus -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/clk} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/we_O0} \
{/testbench/u_conv/we_O1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_SRAM_000/dout\[0:128\]} \
{/testbench/u_SRAM_000/addr\[11:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/image_valid} \
{/testbench/u_conv/addr_00\[11:0\]} \
{/testbench/u_conv/addr_01\[11:0\]} \
{/testbench/u_conv/addr_10\[11:0\]} \
{/testbench/u_conv/addr_11\[11:0\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
{/testbench/u_conv/image_seq\[0:15\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/clk} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/we_O0} \
{/testbench/u_conv/we_O1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_SRAM_000/dout\[0:128\]} \
{/testbench/u_SRAM_000/addr\[11:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/image_valid} \
{/testbench/u_conv/addr_00\[11:0\]} \
{/testbench/u_conv/addr_01\[11:0\]} \
{/testbench/u_conv/addr_10\[11:0\]} \
{/testbench/u_conv/addr_11\[11:0\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
{/testbench/u_conv/image_seq\[0:15\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSetPosition -win $_nWave1 {("G2" 13)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvExpandBus -win $_nWave1 {("G2" 13)}
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSetPosition -win $_nWave1 {("G2" 13)}
wvCollapseBus -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvExpandBus -win $_nWave1 {("G2" 13)}
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvSetPosition -win $_nWave1 {("G2" 14)}
wvExpandBus -win $_nWave1 {("G2" 14)}
wvSetPosition -win $_nWave1 {("G2" 32)}
wvSelectSignal -win $_nWave1 {( "G2" 15 )} 
wvSetPosition -win $_nWave1 {("G2" 15)}
wvExpandBus -win $_nWave1 {("G2" 15)}
wvSetPosition -win $_nWave1 {("G2" 35)}
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSetPosition -win $_nWave1 {("G2" 19)}
wvExpandBus -win $_nWave1 {("G2" 19)}
wvSetPosition -win $_nWave1 {("G2" 38)}
wvSelectSignal -win $_nWave1 {( "G2" 23 )} 
wvSetPosition -win $_nWave1 {("G2" 23)}
wvExpandBus -win $_nWave1 {("G2" 23)}
wvSetPosition -win $_nWave1 {("G2" 41)}
wvSetCursor -win $_nWave1 383.772368 -snap {("G2" 25)}
wvSetCursor -win $_nWave1 378.040221 -snap {("G2" 12)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetCursor -win $_nWave1 383.708677 -snap {("G2" 21)}
wvSetCursor -win $_nWave1 390.141419 -snap {("G2" 21)}
wvSetCursor -win $_nWave1 383.772368 -snap {("G2" 23)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 22 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetCursor -win $_nWave1 408.229526 -snap {("G2" 22)}
wvSetCursor -win $_nWave1 390.268800 -snap {("G2" 21)}
wvSetCursor -win $_nWave1 384.409273 -snap {("G2" 21)}
wvSetCursor -win $_nWave1 383.836058 -snap {("G2" 20)}
wvSetCursor -win $_nWave1 384.345582 -snap {("G2" 21)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetCursor -win $_nWave1 377.976531 -snap {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 384.027130 -snap {("G2" 13)}
wvSetCursor -win $_nWave1 377.658078 -snap {("G2" 12)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 23 )} 
wvSelectSignal -win $_nWave1 {( "G2" 22 )} 
wvSetCursor -win $_nWave1 384.345582 -snap {("G2" 22)}
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetCursor -win $_nWave1 389.950348 -snap {("G2" 11)}
wvSetCursor -win $_nWave1 396.000947 -snap {("G2" 9)}
wvSetCursor -win $_nWave1 383.963439 -snap {("G2" 22)}
wvSetCursor -win $_nWave1 395.873566 -snap {("G2" 21)}
wvSetCursor -win $_nWave1 714.676446 -snap {("G2" 22)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 378.172383 -snap {("G2" 5)}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetCursor -win $_nWave1 383.586077 -snap {("G2" 21)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 45)}
wvSetPosition -win $_nWave1 {("G2" 45)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/clk} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/we_O0} \
{/testbench/u_conv/we_O1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_SRAM_000/dout\[0:128\]} \
{/testbench/u_SRAM_000/addr\[11:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/image_valid} \
{/testbench/u_conv/addr_00\[11:0\]} \
{/testbench/u_conv/addr_01\[11:0\]} \
{/testbench/u_conv/addr_10\[11:0\]} \
{/testbench/u_conv/addr_11\[11:0\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
{/testbench/u_conv/image_seq\[0:15\]} \
{/testbench/u_conv/image_seq\[0\]\[0:2\]} \
{/testbench/u_conv/image_seq\[0\]\[0\]\[0:2\]} \
{/testbench/u_conv/image_seq\[0\]\[0\]\[0\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[0\]\[1\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[0\]\[2\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[1\]\[0:2\]} \
{/testbench/u_conv/image_seq\[0\]\[1\]\[0\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[1\]\[1\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[1\]\[2\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[2\]\[0:2\]} \
{/testbench/u_conv/image_seq\[0\]\[2\]\[0\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[2\]\[1\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[2\]\[2\]\[8:0\]} \
{/testbench/u_conv/image_seq\[1\]\[0:2\]} \
{/testbench/u_conv/image_seq\[2\]\[0:2\]} \
{/testbench/u_conv/image_seq\[3\]\[0:2\]} \
{/testbench/u_conv/image_seq\[4\]\[0:2\]} \
{/testbench/u_conv/image_seq\[5\]\[0:2\]} \
{/testbench/u_conv/image_seq\[6\]\[0:2\]} \
{/testbench/u_conv/image_seq\[7\]\[0:2\]} \
{/testbench/u_conv/image_seq\[8\]\[0:2\]} \
{/testbench/u_conv/image_seq\[9\]\[0:2\]} \
{/testbench/u_conv/image_seq\[10\]\[0:2\]} \
{/testbench/u_conv/image_seq\[11\]\[0:2\]} \
{/testbench/u_conv/image_seq\[12\]\[0:2\]} \
{/testbench/u_conv/image_seq\[13\]\[0:2\]} \
{/testbench/u_conv/image_seq\[14\]\[0:2\]} \
{/testbench/u_conv/image_seq\[15\]\[0:2\]} \
{/testbench/u_conv/d00\[9:0\]} \
{/testbench/u_conv/d01\[9:0\]} \
{/testbench/u_conv/d10\[9:0\]} \
{/testbench/u_conv/d11\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 42 43 44 45 )} 
wvSetPosition -win $_nWave1 {("G2" 45)}
wvSetPosition -win $_nWave1 {("G2" 45)}
wvSetPosition -win $_nWave1 {("G2" 45)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/clk} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/we_O0} \
{/testbench/u_conv/we_O1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_SRAM_000/dout\[0:128\]} \
{/testbench/u_SRAM_000/addr\[11:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/image_valid} \
{/testbench/u_conv/addr_00\[11:0\]} \
{/testbench/u_conv/addr_01\[11:0\]} \
{/testbench/u_conv/addr_10\[11:0\]} \
{/testbench/u_conv/addr_11\[11:0\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
{/testbench/u_conv/image_seq\[0:15\]} \
{/testbench/u_conv/image_seq\[0\]\[0:2\]} \
{/testbench/u_conv/image_seq\[0\]\[0\]\[0:2\]} \
{/testbench/u_conv/image_seq\[0\]\[0\]\[0\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[0\]\[1\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[0\]\[2\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[1\]\[0:2\]} \
{/testbench/u_conv/image_seq\[0\]\[1\]\[0\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[1\]\[1\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[1\]\[2\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[2\]\[0:2\]} \
{/testbench/u_conv/image_seq\[0\]\[2\]\[0\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[2\]\[1\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[2\]\[2\]\[8:0\]} \
{/testbench/u_conv/image_seq\[1\]\[0:2\]} \
{/testbench/u_conv/image_seq\[2\]\[0:2\]} \
{/testbench/u_conv/image_seq\[3\]\[0:2\]} \
{/testbench/u_conv/image_seq\[4\]\[0:2\]} \
{/testbench/u_conv/image_seq\[5\]\[0:2\]} \
{/testbench/u_conv/image_seq\[6\]\[0:2\]} \
{/testbench/u_conv/image_seq\[7\]\[0:2\]} \
{/testbench/u_conv/image_seq\[8\]\[0:2\]} \
{/testbench/u_conv/image_seq\[9\]\[0:2\]} \
{/testbench/u_conv/image_seq\[10\]\[0:2\]} \
{/testbench/u_conv/image_seq\[11\]\[0:2\]} \
{/testbench/u_conv/image_seq\[12\]\[0:2\]} \
{/testbench/u_conv/image_seq\[13\]\[0:2\]} \
{/testbench/u_conv/image_seq\[14\]\[0:2\]} \
{/testbench/u_conv/image_seq\[15\]\[0:2\]} \
{/testbench/u_conv/d00\[9:0\]} \
{/testbench/u_conv/d01\[9:0\]} \
{/testbench/u_conv/d10\[9:0\]} \
{/testbench/u_conv/d11\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 42 43 44 45 )} 
wvSetPosition -win $_nWave1 {("G2" 45)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 42 43 44 45 )} 
wvSetRadix -win $_nWave1 -format Bin
wvScrollUp -win $_nWave1 2
wvSetPosition -win $_nWave1 {("G2" 42)}
wvSetPosition -win $_nWave1 {("G2" 19)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 15)}
wvScrollUp -win $_nWave1 4
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetCursor -win $_nWave1 385.369411 -snap {("G2" 12)}
wvSetCursor -win $_nWave1 390.464653 -snap {("G2" 12)}
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSetCursor -win $_nWave1 385.050959 -snap {("G2" 12)}
wvSetCursor -win $_nWave1 391.037867 -snap {("G2" 12)}
wvSetCursor -win $_nWave1 397.024776 -snap {("G2" 12)}
wvSetCursor -win $_nWave1 385.114649 -snap {("G2" 12)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 378.045002 -snap {("G2" 5)}
wvScrollDown -win $_nWave1 6
wvSelectSignal -win $_nWave1 {( "G2" 17 )} 
wvSetPosition -win $_nWave1 {("G2" 17)}
wvCollapseBus -win $_nWave1 {("G2" 17)}
wvSetPosition -win $_nWave1 {("G2" 17)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/SRAM_I000"
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_SRAM_000"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_SRAM_001"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_SRAM_B00"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_SRAM_K1"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_SRAM_O0"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_SRAM_OT0"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_SRAM_OT1"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_conv"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_conv"
wvSetPosition -win $_nWave1 {("G2" 18)}
wvSetPosition -win $_nWave1 {("G2" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/clk} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/we_O0} \
{/testbench/u_conv/we_O1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_SRAM_000/dout\[0:128\]} \
{/testbench/u_SRAM_000/addr\[11:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/image_valid} \
{/testbench/u_conv/addr_00\[11:0\]} \
{/testbench/u_conv/addr_01\[11:0\]} \
{/testbench/u_conv/addr_10\[11:0\]} \
{/testbench/u_conv/addr_11\[11:0\]} \
{/testbench/u_conv/d00\[9:0\]} \
{/testbench/u_conv/d01\[9:0\]} \
{/testbench/u_conv/d10\[9:0\]} \
{/testbench/u_conv/d11\[9:0\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
{/testbench/u_conv/image_seq\[0:15\]} \
{/testbench/u_conv/image_comb\[0:15\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 18 )} 
wvSetPosition -win $_nWave1 {("G2" 18)}
wvSetPosition -win $_nWave1 {("G2" 18)}
wvSetPosition -win $_nWave1 {("G2" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/clk} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/we_O0} \
{/testbench/u_conv/we_O1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_SRAM_000/dout\[0:128\]} \
{/testbench/u_SRAM_000/addr\[11:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/image_valid} \
{/testbench/u_conv/addr_00\[11:0\]} \
{/testbench/u_conv/addr_01\[11:0\]} \
{/testbench/u_conv/addr_10\[11:0\]} \
{/testbench/u_conv/addr_11\[11:0\]} \
{/testbench/u_conv/d00\[9:0\]} \
{/testbench/u_conv/d01\[9:0\]} \
{/testbench/u_conv/d10\[9:0\]} \
{/testbench/u_conv/d11\[9:0\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
{/testbench/u_conv/image_seq\[0:15\]} \
{/testbench/u_conv/image_comb\[0:15\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 18 )} 
wvSetPosition -win $_nWave1 {("G2" 18)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 17)}
wvSetPosition -win $_nWave1 {("G2" 16)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 16)}
wvSetPosition -win $_nWave1 {("G2" 17)}
wvSelectSignal -win $_nWave1 {( "G2" 17 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G2" 17 )} 
wvExpandBus -win $_nWave1 {("G2" 17)}
wvSelectSignal -win $_nWave1 {( "G2" 18 )} 
wvSetPosition -win $_nWave1 {("G2" 18)}
wvExpandBus -win $_nWave1 {("G2" 18)}
wvSetPosition -win $_nWave1 {("G2" 36)}
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSetPosition -win $_nWave1 {("G2" 20)}
wvExpandBus -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 39)}
wvSelectSignal -win $_nWave1 {( "G2" 24 )} 
wvSetPosition -win $_nWave1 {("G2" 24)}
wvExpandBus -win $_nWave1 {("G2" 24)}
wvSetPosition -win $_nWave1 {("G2" 42)}
wvSetCursor -win $_nWave1 378.299764 -snap {("G2" 22)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 25 )} 
wvSelectSignal -win $_nWave1 {( "G2" 23 )} 
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSetPosition -win $_nWave1 {("G2" 19)}
wvExpandBus -win $_nWave1 {("G2" 19)}
wvSetPosition -win $_nWave1 {("G2" 45)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvSelectSignal -win $_nWave1 {( "G2" 29 )} 
wvSetCursor -win $_nWave1 384.031910 -snap {("G2" 29)}
wvSelectSignal -win $_nWave1 {( "G2" 15 )} 
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvSelectSignal -win $_nWave1 {( "G2" 15 )} 
wvSelectSignal -win $_nWave1 {( "G2" 14 )} 
wvSelectSignal -win $_nWave1 {( "G2" 29 )} 
wvSetCursor -win $_nWave1 379.382503 -snap {("G2" 22)}
wvSetCursor -win $_nWave1 735.665389 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 735.346937 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 735.219556 -snap {("G2" 23)}
wvSelectSignal -win $_nWave1 {( "G2" 29 )} 
wvSelectSignal -win $_nWave1 {( "G2" 28 )} 
wvSetCursor -win $_nWave1 745.601110 -snap {("G2" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 732.735625 -snap {("G2" 22)}
wvSelectSignal -win $_nWave1 {( "G2" 30 )} 
wvSetCursor -win $_nWave1 739.550511 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 737.448724 -snap {("G2" 23)}
wvSetCursor -win $_nWave1 737.958248 -snap {("G2" 24)}
wvSaveSignal -win $_nWave1 \
           "/RAID2/LAB/icssl/icsslRA27/JimmyCheng/Conv_3x3/signal.rc"
wvSetCursor -win $_nWave1 732.162411 -snap {("G2" 27)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 378.207025 -snap {("G2" 25)}
wvSetCursor -win $_nWave1 378.270715 -snap {("G2" 26)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 377.761191 -snap {("G2" 25)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 25 )} 
wvSetCursor -win $_nWave1 384.066552 -snap {("G2" 28)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 378.207025 -snap {("G2" 30)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 375.595714 -snap {("G2" 7)}
wvSetCursor -win $_nWave1 377.824882 -snap {("G2" 5)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetCursor -win $_nWave1 378.398097 -snap {("G2" 26)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvZoom -win $_nWave1 376.678453 377.060596
wvSetCursor -win $_nWave1 376.800261 -snap {("G2" 21)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 378.078082 -snap {("G2" 16)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSetRadix -win $_nWave1 -Unsigned
wvSelectSignal -win $_nWave1 {( "G2" 21 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 14)}
wvSetPosition -win $_nWave1 {("G2" 15)}
wvSetPosition -win $_nWave1 {("G2" 16)}
wvSetPosition -win $_nWave1 {("G2" 15)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 8)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetCursor -win $_nWave1 384.893545 -snap {("G2" 21)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 389.881838 -snap {("G2" 23)}
wvZoom -win $_nWave1 367.474836 412.288840
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 378.310607 -snap {("G2" 28)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 383.573229 -snap {("G2" 33)}
wvSetCursor -win $_nWave1 391.025886 -snap {("G2" 30)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 375.009211 -snap {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetCursor -win $_nWave1 378.081798 -snap {("G2" 17)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 378.147172 -snap {("G2" 24)}
wvSetCursor -win $_nWave1 397.171060 -snap {("G2" 26)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 377.885675 -snap {("G2" 9)}
wvSetCursor -win $_nWave1 378.016424 -snap {("G2" 32)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSaveSignal -win $_nWave1 \
           "/RAID2/LAB/icssl/icsslRA27/JimmyCheng/Conv_3x3/signal.rc"
wvSelectSignal -win $_nWave1 {( "G2" 31 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSelectSignal -win $_nWave1 {( "G2" 25 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetCursor -win $_nWave1 383.900100 -snap {("G2" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 27 )} 
wvSelectSignal -win $_nWave1 {( "G2" 25 )} 
wvSelectSignal -win $_nWave1 {( "G2" 27 )} 
wvSetCursor -win $_nWave1 383.769352 -snap {("G2" 20)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 17 )} 
wvSetCursor -win $_nWave1 372.371363 -snap {("G2" 17)}
wvZoom -win $_nWave1 347.267676 458.142295
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 22 )} 
wvSelectSignal -win $_nWave1 {( "G2" 23 )} 
wvSelectSignal -win $_nWave1 {( "G2" 25 )} 
wvSelectSignal -win $_nWave1 {( "G2" 22 )} 
wvSelectSignal -win $_nWave1 {( "G2" 23 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 22 )} 
wvSetCursor -win $_nWave1 384.306754 -snap {("G2" 25)}
wvSelectSignal -win $_nWave1 {( "G2" 27 )} 
wvSelectSignal -win $_nWave1 {( "G2" 25 )} 
wvSelectSignal -win $_nWave1 {( "G2" 31 )} 
wvSelectSignal -win $_nWave1 {( "G2" 29 )} 
wvSelectSignal -win $_nWave1 {( "G2" 31 )} 
wvSelectSignal -win $_nWave1 {( "G2" 29 )} 
wvSelectSignal -win $_nWave1 {( "G2" 27 )} 
wvSetCursor -win $_nWave1 391.423432 -snap {("G2" 27)}
wvSetCursor -win $_nWave1 390.048619 -snap {("G2" 8)}
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSelectSignal -win $_nWave1 {( "G2" 18 )} 
wvSelectSignal -win $_nWave1 {( "G2" 18 )} 
wvSetPosition -win $_nWave1 {("G2" 18)}
wvCollapseBus -win $_nWave1 {("G2" 18)}
wvSetPosition -win $_nWave1 {("G2" 18)}
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSetPosition -win $_nWave1 {("G2" 19)}
wvExpandBus -win $_nWave1 {("G2" 19)}
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSetPosition -win $_nWave1 {("G2" 20)}
wvExpandBus -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 38)}
wvSelectSignal -win $_nWave1 {( "G2" 21 )} 
wvSetPosition -win $_nWave1 {("G2" 21)}
wvExpandBus -win $_nWave1 {("G2" 21)}
wvSetPosition -win $_nWave1 {("G2" 41)}
wvSelectSignal -win $_nWave1 {( "G2" 25 )} 
wvSetPosition -win $_nWave1 {("G2" 25)}
wvExpandBus -win $_nWave1 {("G2" 25)}
wvSetPosition -win $_nWave1 {("G2" 44)}
wvSelectSignal -win $_nWave1 {( "G2" 29 )} 
wvSetPosition -win $_nWave1 {("G2" 29)}
wvExpandBus -win $_nWave1 {("G2" 29)}
wvSetPosition -win $_nWave1 {("G2" 47)}
wvSetCursor -win $_nWave1 389.725134 -snap {("G2" 26)}
wvSetCursor -win $_nWave1 384.064140 -snap {("G2" 24)}
wvSelectSignal -win $_nWave1 {( "G2" 26 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 17 )} 
wvZoom -win $_nWave1 24.584890 120.336567
wvSetCursor -win $_nWave1 53.848167 -snap {("G2" 17)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 343.337158 371.832186
wvSetCursor -win $_nWave1 348.179858 -snap {("G2" 17)}
wvSetCursor -win $_nWave1 359.985238 -snap {("G2" 17)}
wvSetCursor -win $_nWave1 365.908712 -snap {("G2" 17)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 377.911541 -snap {("G2" 17)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvZoom -win $_nWave1 376.415085 387.305964
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollDown -win $_nWave1 14
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 19197.179839 -snap {("G2" 17)}
wvZoom -win $_nWave1 18774.191131 20108.232442
wvSetCursor -win $_nWave1 19252.928057 -snap {("G2" 17)}
wvSetCursor -win $_nWave1 19258.766312 -snap {("G2" 17)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 48)}
wvSetPosition -win $_nWave1 {("G2" 48)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/we_O0} \
{/testbench/u_conv/we_O1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_SRAM_000/dout\[0:128\]} \
{/testbench/u_SRAM_000/addr\[11:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/image_valid} \
{/testbench/u_conv/clk} \
{/testbench/u_conv/addr_00\[11:0\]} \
{/testbench/u_conv/addr_01\[11:0\]} \
{/testbench/u_conv/addr_10\[11:0\]} \
{/testbench/u_conv/addr_11\[11:0\]} \
{/testbench/u_conv/d00\[9:0\]} \
{/testbench/u_conv/d01\[9:0\]} \
{/testbench/u_conv/d10\[9:0\]} \
{/testbench/u_conv/d11\[9:0\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
{/testbench/u_conv/image_comb\[0:15\]} \
{/testbench/u_conv/image_seq\[0:15\]} \
{/testbench/u_conv/image_seq\[0\]\[0:2\]} \
{/testbench/u_conv/image_seq\[0\]\[0\]\[0:2\]} \
{/testbench/u_conv/image_seq\[0\]\[0\]\[0\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[0\]\[1\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[0\]\[2\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[1\]\[0:2\]} \
{/testbench/u_conv/image_seq\[0\]\[1\]\[0\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[1\]\[1\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[1\]\[2\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[2\]\[0:2\]} \
{/testbench/u_conv/image_seq\[0\]\[2\]\[0\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[2\]\[1\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[2\]\[2\]\[8:0\]} \
{/testbench/u_conv/image_seq\[1\]\[0:2\]} \
{/testbench/u_conv/image_seq\[2\]\[0:2\]} \
{/testbench/u_conv/image_seq\[3\]\[0:2\]} \
{/testbench/u_conv/image_seq\[4\]\[0:2\]} \
{/testbench/u_conv/image_seq\[5\]\[0:2\]} \
{/testbench/u_conv/image_seq\[6\]\[0:2\]} \
{/testbench/u_conv/image_seq\[7\]\[0:2\]} \
{/testbench/u_conv/image_seq\[8\]\[0:2\]} \
{/testbench/u_conv/image_seq\[9\]\[0:2\]} \
{/testbench/u_conv/image_seq\[10\]\[0:2\]} \
{/testbench/u_conv/image_seq\[11\]\[0:2\]} \
{/testbench/u_conv/image_seq\[12\]\[0:2\]} \
{/testbench/u_conv/image_seq\[13\]\[0:2\]} \
{/testbench/u_conv/image_seq\[14\]\[0:2\]} \
{/testbench/u_conv/image_seq\[15\]\[0:2\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 48 )} 
wvSetPosition -win $_nWave1 {("G2" 48)}
wvSetPosition -win $_nWave1 {("G2" 48)}
wvSetPosition -win $_nWave1 {("G2" 48)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/we_O0} \
{/testbench/u_conv/we_O1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_SRAM_000/dout\[0:128\]} \
{/testbench/u_SRAM_000/addr\[11:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/image_valid} \
{/testbench/u_conv/clk} \
{/testbench/u_conv/addr_00\[11:0\]} \
{/testbench/u_conv/addr_01\[11:0\]} \
{/testbench/u_conv/addr_10\[11:0\]} \
{/testbench/u_conv/addr_11\[11:0\]} \
{/testbench/u_conv/d00\[9:0\]} \
{/testbench/u_conv/d01\[9:0\]} \
{/testbench/u_conv/d10\[9:0\]} \
{/testbench/u_conv/d11\[9:0\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
{/testbench/u_conv/image_comb\[0:15\]} \
{/testbench/u_conv/image_seq\[0:15\]} \
{/testbench/u_conv/image_seq\[0\]\[0:2\]} \
{/testbench/u_conv/image_seq\[0\]\[0\]\[0:2\]} \
{/testbench/u_conv/image_seq\[0\]\[0\]\[0\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[0\]\[1\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[0\]\[2\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[1\]\[0:2\]} \
{/testbench/u_conv/image_seq\[0\]\[1\]\[0\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[1\]\[1\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[1\]\[2\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[2\]\[0:2\]} \
{/testbench/u_conv/image_seq\[0\]\[2\]\[0\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[2\]\[1\]\[8:0\]} \
{/testbench/u_conv/image_seq\[0\]\[2\]\[2\]\[8:0\]} \
{/testbench/u_conv/image_seq\[1\]\[0:2\]} \
{/testbench/u_conv/image_seq\[2\]\[0:2\]} \
{/testbench/u_conv/image_seq\[3\]\[0:2\]} \
{/testbench/u_conv/image_seq\[4\]\[0:2\]} \
{/testbench/u_conv/image_seq\[5\]\[0:2\]} \
{/testbench/u_conv/image_seq\[6\]\[0:2\]} \
{/testbench/u_conv/image_seq\[7\]\[0:2\]} \
{/testbench/u_conv/image_seq\[8\]\[0:2\]} \
{/testbench/u_conv/image_seq\[9\]\[0:2\]} \
{/testbench/u_conv/image_seq\[10\]\[0:2\]} \
{/testbench/u_conv/image_seq\[11\]\[0:2\]} \
{/testbench/u_conv/image_seq\[12\]\[0:2\]} \
{/testbench/u_conv/image_seq\[13\]\[0:2\]} \
{/testbench/u_conv/image_seq\[14\]\[0:2\]} \
{/testbench/u_conv/image_seq\[15\]\[0:2\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 48 )} 
wvSetPosition -win $_nWave1 {("G2" 48)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 21)}
wvSetPosition -win $_nWave1 {("G2" 17)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 17)}
wvSetPosition -win $_nWave1 {("G2" 18)}
wvSetCursor -win $_nWave1 19228.601993 -snap {("G2" 18)}
wvZoom -win $_nWave1 19243.197631 19278.227162
wvSelectSignal -win $_nWave1 {( "G2" 17 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 18 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 17 )} 
wvSelectSignal -win $_nWave1 {( "G2" 18 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 18)}
wvSetPosition -win $_nWave1 {("G2" 17)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 376.437637 -snap {("G2" 17)}
wvZoom -win $_nWave1 374.196937 388.761488
wvSetCursor -win $_nWave1 383.981001 -snap {("G2" 24)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 378.010703 -snap {("G2" 17)}
wvZoomOut -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 27 )} 
wvSetCursor -win $_nWave1 390.445282 -snap {("G2" 29)}
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetCursor -win $_nWave1 383.051462 -snap {("G2" 24)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetCursor -win $_nWave1 378.462194 -snap {("G2" 17)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 377.952275 -snap {("G2" 26)}
wvSaveSignal -win $_nWave1 \
           "/RAID2/LAB/icssl/icsslRA27/JimmyCheng/Conv_3x3/signal.rc"
wvScrollDown -win $_nWave1 6
wvSelectSignal -win $_nWave1 {( "G2" 37 38 39 40 41 42 43 44 45 46 47 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 17)}
wvSelectSignal -win $_nWave1 {( "G2" 17 18 19 20 21 22 23 24 25 26 27 28 29 30 \
           31 32 33 34 35 36 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 16)}
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 )} \
           
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSelectGroup -win $_nWave1 {G1}
wvRestoreSignal -win $_nWave1 \
           "/RAID2/LAB/icssl/icsslRA27/JimmyCheng/Conv_3x3/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvExit
