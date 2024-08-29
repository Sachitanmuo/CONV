wvResizeWindow -win $_nWave1 1920 27 1920 1057
wvResizeWindow -win $_nWave1 1920 31 893 202
wvResizeWindow -win $_nWave1 0 23 1536 801
wvResizeWindow -win $_nWave1 8 31 893 202
wvResizeWindow -win $_nWave1 8 31 1536 801
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/RAID2/LAB/icssl/icsslRA27/JimmyCheng/Conv_3x3/conv.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/SRAM_I000"
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvRestoreSignal -win $_nWave1 \
           "/RAID2/LAB/icssl/icsslRA27/JimmyCheng/Conv_3x3/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvResizeWindow -win $_nWave1 1920 27 1920 1057
wvRestoreSignal -win $_nWave1 \
           "/RAID2/LAB/icssl/icsslRA27/JimmyCheng/Conv_3x3/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
wvResizeWindow -win $_nWave1 0 23 1536 801
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 398.302044 -snap {("G2" 10)}
wvSetCursor -win $_nWave1 423.229460 -snap {("G2" 11)}
wvSetCursor -win $_nWave1 492.889638 -snap {("G2" 11)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvResizeWindow -win $_nWave1 1920 27 1920 1057
wvScrollDown -win $_nWave1 12
wvScrollDown -win $_nWave1 42
wvSelectSignal -win $_nWave1 {( "G2" 65 )} 
wvSetPosition -win $_nWave1 {("G2" 65)}
wvExpandBus -win $_nWave1 {("G2" 65)}
wvSelectSignal -win $_nWave1 {( "G2" 65 )} 
wvSetPosition -win $_nWave1 {("G2" 65)}
wvCollapseBus -win $_nWave1 {("G2" 65)}
wvSetPosition -win $_nWave1 {("G2" 65)}
wvSelectSignal -win $_nWave1 {( "G2" 66 )} 
wvSetPosition -win $_nWave1 {("G2" 66)}
wvCollapseBus -win $_nWave1 {("G2" 66)}
wvSetPosition -win $_nWave1 {("G2" 66)}
wvScrollUp -win $_nWave1 23
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSetPosition -win $_nWave1 {("G2" 19)}
wvCollapseBus -win $_nWave1 {("G2" 19)}
wvSetPosition -win $_nWave1 {("G2" 19)}
wvSetPosition -win $_nWave1 {("G2" 38)}
wvSelectSignal -win $_nWave1 {( "G2" 37 38 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G2" 36)}
wvScrollUp -win $_nWave1 5
wvScrollUp -win $_nWave1 17
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvGetSignalOpen -win $_nWave1
wvSetCursor -win $_nWave1 392.982590 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G2" 36)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G2" 36)}
wvSelectSignal -win $_nWave1 {( "G1" 4 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G2" 36)}
wvSelectSignal -win $_nWave1 {( "G1" 4 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G2" 36)}
wvSelectSignal -win $_nWave1 {( "G1" 16 17 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G2" 36)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 401.821180 -snap {("G1" 17)}
wvZoom -win $_nWave1 396.042102 410.319824
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetCursor -win $_nWave1 713.157121 -snap {("G1" 17)}
wvZoom -win $_nWave1 701.160086 727.153663
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 398.972900 -snap {("G1" 17)}
wvZoom -win $_nWave1 392.299129 418.994211
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 699.095704 725.265062
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 702.140206 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 714.050986 -snap {("G2" 6)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 37)}
wvSetPosition -win $_nWave1 {("G2" 37)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
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
{/testbench/u_conv/counter_seq\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 37 )} 
wvSetPosition -win $_nWave1 {("G2" 37)}
wvSetPosition -win $_nWave1 {("G2" 37)}
wvSetPosition -win $_nWave1 {("G2" 37)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
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
{/testbench/u_conv/counter_seq\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 37 )} 
wvSetPosition -win $_nWave1 {("G2" 37)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvScrollUp -win $_nWave1 12
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 708.324649 -snap {("G1" 18)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetCursor -win $_nWave1 707.790191 -snap {("G2" 8)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollDown -win $_nWave1 12
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 13
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
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
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
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
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 14
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
wvGetSignalSetScope -win $_nWave1 "/testbench/u_pattern"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_conv"
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
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
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
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
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetPosition -win $_nWave1 {("G1" 19)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 15
wvSetCursor -win $_nWave1 0.000000 -snap {("G2" 8)}
wvSetCursor -win $_nWave1 337.403355 -snap {("G2" 8)}
wvSetCursor -win $_nWave1 0.000000 -snap {("G2" 8)}
wvRemoveGrid -win $_nWave1
wvGridSetStartNum -win $_nWave1 1
wvDisplayGridCount -win $_nWave1
wvGridSetLockCount -win $_nWave1 -off
wvGridRisingEdge -win $_nWave1
wvRemoveGrid -win $_nWave1
wvGridSetStartNum -win $_nWave1 1
wvDisplayGridCount -win $_nWave1
wvGridSetLockCount -win $_nWave1 -off
wvGridRisingEdge -win $_nWave1
wvRemoveGrid -win $_nWave1
wvGridSetStartNum -win $_nWave1 1
wvDisplayGridCount -win $_nWave1
wvGridSetLockCount -win $_nWave1 -off
wvGridRisingEdge -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvRemoveGrid -win $_nWave1
wvGridSetStartNum -win $_nWave1 1
wvDisplayGridCount -win $_nWave1
wvGridSetLockCount -win $_nWave1 -off
wvGridRisingEdge -win $_nWave1
wvRemoveGrid -win $_nWave1
wvGridSetStartNum -win $_nWave1 1
wvDisplayGridCount -win $_nWave1
wvGridSetLockCount -win $_nWave1 -off
wvGridRisingEdge -win $_nWave1
wvSetCursor -win $_nWave1 0.000000 -snap {("G2" 8)}
wvSetCursor -win $_nWave1 0.000000 -snap {("G2" 8)}
wvZoom -win $_nWave1 220493.092633 228590.773158
wvZoom -win $_nWave1 227911.536644 228389.955406
wvZoom -win $_nWave1 228318.070457 228348.080679
wvZoom -win $_nWave1 228340.419426 228343.089920
wvRemoveGrid -win $_nWave1
wvGridSetStartNum -win $_nWave1 1
wvDisplayGridCount -win $_nWave1 -off
wvGridSetLockCount -win $_nWave1 -off
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 222370.184490 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 222106.898344 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 221468.628898 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 221029.818653 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 220591.008409 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 220399.527575 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 446.788612 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 1156.863371 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 5481.138869 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 6781.612865 -snap {("G1" 17)}
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 )} \
           
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 11050.361527 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 12151.376321 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 13579.504207 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 14512.973272 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 15629.944803 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 16443.738347 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 17393.164148 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 17823.996024 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 19217.383730 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 19440.778036 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 19392.907827 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 19321.102515 -snap {("G1" 17)}
wvZoom -win $_nWave1 19257.275570 19480.669876
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 19261.919434 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 19239.759240 -snap {("G1" 17)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
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
wvGetSignalSetScope -win $_nWave1 "/testbench/u_pattern"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_conv"
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 20 21 )} 
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 20 21 )} 
wvSetPosition -win $_nWave1 {("G1" 21)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 20 21 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvZoom -win $_nWave1 18562.421120 19730.393685
wvZoom -win $_nWave1 19221.801693 19278.027943
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 19266.811401 -snap {("G1" 21)}
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
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
wvGetSignalSetScope -win $_nWave1 "/testbench/u_pattern"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_conv"
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSetPosition -win $_nWave1 {("G1" 22)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 19259.265354 -snap {("G1" 22)}
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
wvGetSignalSetScope -win $_nWave1 "/testbench/u_pattern"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_conv"
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
{/testbench/u_conv/image_valid} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
{/testbench/u_conv/image_valid} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 19256.968732 -snap {("G1" 23)}
wvSetCursor -win $_nWave1 19256.968732 -snap {("G1" 24)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 20181.687545 -snap {("G1" 21)}
wvZoom -win $_nWave1 20081.948493 20270.927750
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 20183.812586 -snap {("G1" 22)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 21146.297095 21507.990437
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetCursor -win $_nWave1 20196.951005 -snap {("G1" 18)}
wvZoom -win $_nWave1 20127.303272 20243.382827
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 20178.103953 -snap {("G1" 12)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
{/testbench/u_conv/image_valid} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
{/testbench/u_conv/image_valid} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSetPosition -win $_nWave1 {("G1" 24)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 20183.946031 -snap {("G1" 24)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
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
wvGetSignalSetScope -win $_nWave1 "/testbench/u_pattern"
wvGetSignalSetScope -win $_nWave1 "/testbench/u_conv"
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
{/testbench/u_conv/image_valid} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/cal_en_counter_seq\[2:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
{/testbench/u_conv/image_valid} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/cal_en_counter_seq\[2:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSetPosition -win $_nWave1 {("G1" 25)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 20183.776695 -snap {("G1" 22)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 40748.919205 -snap {("G1" 13)}
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 61730.277605 64157.872791
wvZoom -win $_nWave1 62298.664224 62396.051339
wvSetCursor -win $_nWave1 62327.930082 -snap {("G1" 18)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetCursor -win $_nWave1 62327.930082 -snap {("G1" 27)}
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
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 21359.244984 26596.412901
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 4828.431982 9106.789435
wvZoom -win $_nWave1 5380.780100 5527.448809
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 5320.176290 5392.066423
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 5316.479532 -snap {("G1" 20)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 161.084237 912.810678
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 20388.180870 22669.130537
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 25235.189314 -snap {("G1" 24)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvResizeWindow -win $_nWave1 1920 27 1920 1057
wvZoom -win $_nWave1 0.000000 1703.138632
wvSetCursor -win $_nWave1 752.915586 -snap {("G1" 12)}
wvZoom -win $_nWave1 735.968933 779.546041
wvSetCursor -win $_nWave1 755.976617 -snap {("G1" 25)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 756.255446 -snap {("G1" 12)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoom -win $_nWave1 754.768807 764.679734
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 1056.714747 1143.271587
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetCursor -win $_nWave1 1091.964974 -snap {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSetCursor -win $_nWave1 1091.903455 -snap {("G1" 26)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvZoom -win $_nWave1 665.386483 889.806776
wvZoom -win $_nWave1 711.801767 721.850437
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 737.594782 -snap {("G1" 24)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 362.009223 486.335623
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 20268.295866 -snap {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvZoom -win $_nWave1 19544.428157 21489.822626
wvZoom -win $_nWave1 20234.372606 20328.393092
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 855.339177
wvZoom -win $_nWave1 393.322280 432.836883
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 419.777685 -snap {("G1" 26)}
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 20303.372531 -snap {("G1" 18)}
wvZoom -win $_nWave1 19613.172898 21166.122072
wvZoom -win $_nWave1 20173.868122 20237.884506
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 20263.295416 -snap {("G1" 10)}
wvZoom -win $_nWave1 20260.747500 20270.575176
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
{/testbench/u_conv/image_valid} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/cal_en_counter_seq\[2:0\]} \
{/testbench/u_conv/clk} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/out_data\[15:0\]} \
{/testbench/u_conv/dout_OT0\[24:0\]} \
{/testbench/u_conv/dout_OT1\[24:0\]} \
{/testbench/u_conv/din_OT0\[24:0\]} \
{/testbench/u_conv/din_OT1\[24:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
{/testbench/u_conv/image_valid} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/cal_en_counter_seq\[2:0\]} \
{/testbench/u_conv/clk} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSetPosition -win $_nWave1 {("G1" 26)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 20244.175959 -snap {("G1" 17)}
