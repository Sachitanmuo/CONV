wvResizeWindow -win $_nWave1 1920 27 1920 1057
wvRestoreSignal -win $_nWave1 \
           "/RAID2/LAB/icssl/icsslRA27/JimmyCheng/Conv_3x3/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvSetCursor -win $_nWave1 389.935363 -snap {("G2" 25)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 713.266279 -snap {("G2" 5)}
wvZoom -win $_nWave1 708.846984 718.025520
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollUp -win $_nWave1 10
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvScrollDown -win $_nWave1 5
wvSelectSignal -win $_nWave1 {( "G2" 18 )} 
wvSetPosition -win $_nWave1 {("G2" 18)}
wvExpandBus -win $_nWave1 {("G2" 18)}
wvSelectSignal -win $_nWave1 {( "G2" 18 )} 
wvSetPosition -win $_nWave1 {("G2" 18)}
wvCollapseBus -win $_nWave1 {("G2" 18)}
wvSetPosition -win $_nWave1 {("G2" 18)}
wvSelectSignal -win $_nWave1 {( "G2" 18 )} 
wvExpandBus -win $_nWave1 {("G2" 18)}
wvSelectSignal -win $_nWave1 {( "G2" 18 )} 
wvSetPosition -win $_nWave1 {("G2" 18)}
wvCollapseBus -win $_nWave1 {("G2" 18)}
wvSetPosition -win $_nWave1 {("G2" 18)}
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSetPosition -win $_nWave1 {("G2" 19)}
wvCollapseBus -win $_nWave1 {("G2" 19)}
wvSetPosition -win $_nWave1 {("G2" 19)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
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
{/testbench/u_SRAM_OT0/memory\[3135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
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
{/testbench/u_SRAM_OT0/memory\[3135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSetPosition -win $_nWave1 {("G2" 20)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 403.655653 -snap {("G2" 20)}
wvZoom -win $_nWave1 395.086341 425.078931
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvExpandBus -win $_nWave1 {("G2" 20)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 3128
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSetPosition -win $_nWave1 {("G2" 20)}
wvCollapseBus -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
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
wvGetSignalSetScope -win $_nWave1 "/testbench/u_SRAM_OT0"
wvSetCursor -win $_nWave1 409.043505 -snap {("G2" 15)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 19)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
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
{/testbench/u_SRAM_OT0/memory\[3135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
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
{/testbench/u_SRAM_OT0/memory\[3135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSetPosition -win $_nWave1 {("G2" 20)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvExpandBus -win $_nWave1 {("G2" 20)}
wvScrollUp -win $_nWave1 3126
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSetPosition -win $_nWave1 {("G2" 20)}
wvCollapseBus -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetCursor -win $_nWave1 715.446873 -snap {("G2" 4)}
wvZoom -win $_nWave1 703.546094 728.747745
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetCursor -win $_nWave1 707.976143 -snap {("G1" 13)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 399.977408 -snap {("G1" 13)}
wvZoom -win $_nWave1 391.742296 411.741855
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 366.090052 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 365.973352 -snap {("G2" 5)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvZoom -win $_nWave1 317.425543 459.333434
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvExpandBus -win $_nWave1 {("G2" 20)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 3128
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSetPosition -win $_nWave1 {("G2" 20)}
wvCollapseBus -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvExpandBus -win $_nWave1 {("G2" 20)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 3128
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 384.601488 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSetPosition -win $_nWave1 {("G2" 20)}
wvCollapseBus -win $_nWave1 {("G2" 20)}
wvSetPosition -win $_nWave1 {("G2" 20)}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 19)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 21)}
wvSetPosition -win $_nWave1 {("G2" 21)}
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
{/testbench/u_conv/addr_B00\[5:0\]} \
{/testbench/u_conv/addr_B01\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 20 21 )} 
wvSetPosition -win $_nWave1 {("G2" 21)}
wvSetPosition -win $_nWave1 {("G2" 21)}
wvSetPosition -win $_nWave1 {("G2" 21)}
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
{/testbench/u_conv/addr_B00\[5:0\]} \
{/testbench/u_conv/addr_B01\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 20 21 )} 
wvSetPosition -win $_nWave1 {("G2" 21)}
wvGetSignalClose -win $_nWave1
wvExit
