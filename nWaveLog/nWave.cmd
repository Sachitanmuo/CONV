wvResizeWindow -win $_nWave1 0 23 1536 801
wvResizeWindow -win $_nWave1 0 23 1536 801
wvResizeWindow -win $_nWave1 8 31 893 202
wvResizeWindow -win $_nWave1 8 31 893 202
wvResizeWindow -win $_nWave1 0 23 1536 801
wvResizeWindow -win $_nWave1 8 31 893 202
wvResizeWindow -win $_nWave1 0 23 1536 801
wvResizeWindow -win $_nWave1 8 31 893 202
wvResizeWindow -win $_nWave1 8 31 893 202
wvResizeWindow -win $_nWave1 8 31 893 202
wvResizeWindow -win $_nWave1 0 23 1536 801
wvResizeWindow -win $_nWave1 0 23 1536 801
wvResizeWindow -win $_nWave1 0 23 1536 801
wvResizeWindow -win $_nWave1 8 31 893 202
wvResizeWindow -win $_nWave1 0 23 1536 801
wvResizeWindow -win $_nWave1 8 31 893 202
wvResizeWindow -win $_nWave1 8 31 893 202
wvResizeWindow -win $_nWave1 8 31 893 202
wvResizeWindow -win $_nWave1 8 31 893 202
wvResizeWindow -win $_nWave1 0 23 1536 801
wvResizeWindow -win $_nWave1 8 31 893 202
wvResizeWindow -win $_nWave1 55 47 1536 801
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/RAID2/LAB/icssl/icsslRA27/JimmyCheng/Conv_3x3/conv.fsdb}
wvRestoreSignal -win $_nWave1 \
           "/RAID2/LAB/icssl/icsslRA27/JimmyCheng/Conv_3x3/OT.rc" \
           -overWriteAutoAlias on -appendSignals on
wvScrollUp -win $_nWave1 16
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 727.163539 -snap {("G1" 5)}
wvZoom -win $_nWave1 693.341979 773.668184
wvScrollDown -win $_nWave1 10
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvExpandBus -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G3" 6273)}
wvScrollDown -win $_nWave1 16
wvScrollUp -win $_nWave1 16
wvScrollDown -win $_nWave1 16
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvCollapseBus -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvScrollUp -win $_nWave1 32
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 3083 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3082 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3081 )} 
wvSetPosition -win $_nWave1 {("G2" 3081)}
wvSelectSignal -win $_nWave1 {( "G2" 3081 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3080 )} 
wvScrollUp -win $_nWave1 3113
wvScrollDown -win $_nWave1 12
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvCollapseBus -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvScrollUp -win $_nWave1 11
wvSetCursor -win $_nWave1 773.836114 -snap {("G1" 14)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
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
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/mac_16_comb\[24:0\]} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/pre_relu_seq\[25:0\]} \
{/testbench/u_conv/din_O0\[15:0\]} \
{/testbench/u_conv/addr_O0\[13:0\]} \
{/testbench/u_conv/bias_seq\[15:0\]} \
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
{/testbench/u_conv/mac_seq\[15:0\]} \
{/testbench/u_conv/mul_seq\[15:0\]} \
{/testbench/u_conv/clk} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
{/testbench/u_conv/cal_en_counter_seq\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_SRAM_OT0/memory\[3135:0\]} \
{/testbench/u_conv/image_seq\[0:15\]} \
{/testbench/u_SRAM_OT1/memory\[3135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testbench/u_SRAM_O0/memory\[6271:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
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
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/mac_16_comb\[24:0\]} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/pre_relu_seq\[25:0\]} \
{/testbench/u_conv/din_O0\[15:0\]} \
{/testbench/u_conv/addr_O0\[13:0\]} \
{/testbench/u_conv/bias_seq\[15:0\]} \
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
{/testbench/u_conv/mac_seq\[15:0\]} \
{/testbench/u_conv/mul_seq\[15:0\]} \
{/testbench/u_conv/clk} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
{/testbench/u_conv/cal_en_counter_seq\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_SRAM_OT0/memory\[3135:0\]} \
{/testbench/u_conv/image_seq\[0:15\]} \
{/testbench/u_SRAM_OT1/memory\[3135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testbench/u_SRAM_O0/memory\[6271:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSetPosition -win $_nWave1 {("G1" 27)}
wvSetPosition -win $_nWave1 {("G1" 28)}
wvSetPosition -win $_nWave1 {("G1" 29)}
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvExpandBus -win $_nWave1 {("G1" 33)}
wvScrollUp -win $_nWave1 4
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSetCursor -win $_nWave1 755.853679 -snap {("G1" 24)}
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvScrollDown -win $_nWave1 10
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
wvSetPosition -win $_nWave1 {("G1" 50)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSetPosition -win $_nWave1 {("G1" 29)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 29)}
wvSetPosition -win $_nWave1 {("G1" 30)}
wvScrollUp -win $_nWave1 5
wvSetCursor -win $_nWave1 750.326005 -snap {("G1" 30)}
wvResizeWindow -win $_nWave1 0 23 1536 801
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSetPosition -win $_nWave1 {("G1" 35)}
wvExpandBus -win $_nWave1 {("G1" 35)}
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSetPosition -win $_nWave1 {("G1" 39)}
wvExpandBus -win $_nWave1 {("G1" 39)}
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSetPosition -win $_nWave1 {("G1" 39)}
wvCollapseBus -win $_nWave1 {("G1" 39)}
wvSetPosition -win $_nWave1 {("G1" 39)}
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSetPosition -win $_nWave1 {("G1" 40)}
wvExpandBus -win $_nWave1 {("G1" 40)}
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSetPosition -win $_nWave1 {("G1" 40)}
wvCollapseBus -win $_nWave1 {("G1" 40)}
wvSetPosition -win $_nWave1 {("G1" 40)}
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvSetPosition -win $_nWave1 {("G1" 41)}
wvExpandBus -win $_nWave1 {("G1" 41)}
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvSetPosition -win $_nWave1 {("G1" 41)}
wvCollapseBus -win $_nWave1 {("G1" 41)}
wvSetPosition -win $_nWave1 {("G1" 41)}
wvSelectSignal -win $_nWave1 {( "G1" 42 )} 
wvSetPosition -win $_nWave1 {("G1" 42)}
wvExpandBus -win $_nWave1 {("G1" 42)}
wvSelectSignal -win $_nWave1 {( "G1" 42 )} 
wvSetPosition -win $_nWave1 {("G1" 42)}
wvCollapseBus -win $_nWave1 {("G1" 42)}
wvSetPosition -win $_nWave1 {("G1" 42)}
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvSetPosition -win $_nWave1 {("G1" 43)}
wvExpandBus -win $_nWave1 {("G1" 43)}
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvSetPosition -win $_nWave1 {("G1" 43)}
wvCollapseBus -win $_nWave1 {("G1" 43)}
wvSetPosition -win $_nWave1 {("G1" 43)}
wvSelectSignal -win $_nWave1 {( "G1" 45 )} 
wvSetPosition -win $_nWave1 {("G1" 45)}
wvExpandBus -win $_nWave1 {("G1" 45)}
wvSelectSignal -win $_nWave1 {( "G1" 45 )} 
wvSetPosition -win $_nWave1 {("G1" 45)}
wvCollapseBus -win $_nWave1 {("G1" 45)}
wvSetPosition -win $_nWave1 {("G1" 45)}
wvSelectSignal -win $_nWave1 {( "G1" 45 )} 
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
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 46)}
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
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/mac_16_comb\[24:0\]} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/pre_relu_seq\[25:0\]} \
{/testbench/u_conv/din_O0\[15:0\]} \
{/testbench/u_conv/addr_O0\[13:0\]} \
{/testbench/u_conv/bias_seq\[15:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
{/testbench/u_conv/clk} \
{/testbench/u_conv/image_valid} \
{/testbench/u_conv/mac_seq\[15:0\]} \
{/testbench/u_conv/mul_seq\[15:0\]} \
{/testbench/u_conv/image_seq\[0:15\]} \
{/testbench/u_conv/image_seq\[0\]\[0:2\]} \
{/testbench/u_conv/image_seq\[0\]\[0\]\[0:2\]} \
{/testbench/u_conv/image_seq\[0\]\[1\]\[0:2\]} \
{/testbench/u_conv/image_seq\[0\]\[2\]\[0:2\]} \
{/testbench/u_conv/image_seq\[1\]\[0:2\]} \
{/testbench/u_conv/image_seq\[2\]\[0:2\]} \
{/testbench/u_conv/image_seq\[3\]\[0:2\]} \
{/testbench/u_conv/image_seq\[4\]\[0:2\]} \
{/testbench/u_conv/image_seq\[5\]\[0:2\]} \
{/testbench/u_conv/image_seq\[6\]\[0:2\]} \
{/testbench/u_conv/image_seq\[7\]\[0:2\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
{/testbench/u_conv/image_seq\[8\]\[0:2\]} \
{/testbench/u_conv/image_seq\[9\]\[0:2\]} \
{/testbench/u_conv/image_seq\[10\]\[0:2\]} \
{/testbench/u_conv/image_seq\[11\]\[0:2\]} \
{/testbench/u_conv/image_seq\[12\]\[0:2\]} \
{/testbench/u_conv/image_seq\[13\]\[0:2\]} \
{/testbench/u_conv/image_seq\[14\]\[0:2\]} \
{/testbench/u_conv/image_seq\[15\]\[0:2\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
{/testbench/u_conv/cal_en_counter_seq\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_SRAM_OT0/memory\[3135:0\]} \
{/testbench/u_SRAM_OT1/memory\[3135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testbench/u_SRAM_O0/memory\[6271:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 46)}
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
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/mac_16_comb\[24:0\]} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/pre_relu_seq\[25:0\]} \
{/testbench/u_conv/din_O0\[15:0\]} \
{/testbench/u_conv/addr_O0\[13:0\]} \
{/testbench/u_conv/bias_seq\[15:0\]} \
{/testbench/u_conv/we_OT0} \
{/testbench/u_conv/we_OT1} \
{/testbench/u_conv/out_data_pre\[15:0\]} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mem_epoch_seq\[5:0\]} \
{/testbench/u_conv/epoch_counter_seq\[5:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
{/testbench/u_conv/clk} \
{/testbench/u_conv/image_valid} \
{/testbench/u_conv/mac_seq\[15:0\]} \
{/testbench/u_conv/mul_seq\[15:0\]} \
{/testbench/u_conv/image_seq\[0:15\]} \
{/testbench/u_conv/image_seq\[0\]\[0:2\]} \
{/testbench/u_conv/image_seq\[0\]\[0\]\[0:2\]} \
{/testbench/u_conv/image_seq\[0\]\[1\]\[0:2\]} \
{/testbench/u_conv/image_seq\[0\]\[2\]\[0:2\]} \
{/testbench/u_conv/image_seq\[1\]\[0:2\]} \
{/testbench/u_conv/image_seq\[2\]\[0:2\]} \
{/testbench/u_conv/image_seq\[3\]\[0:2\]} \
{/testbench/u_conv/image_seq\[4\]\[0:2\]} \
{/testbench/u_conv/image_seq\[5\]\[0:2\]} \
{/testbench/u_conv/image_seq\[6\]\[0:2\]} \
{/testbench/u_conv/image_seq\[7\]\[0:2\]} \
{/testbench/u_conv/cur_state\[2:0\]} \
{/testbench/u_conv/image_seq\[8\]\[0:2\]} \
{/testbench/u_conv/image_seq\[9\]\[0:2\]} \
{/testbench/u_conv/image_seq\[10\]\[0:2\]} \
{/testbench/u_conv/image_seq\[11\]\[0:2\]} \
{/testbench/u_conv/image_seq\[12\]\[0:2\]} \
{/testbench/u_conv/image_seq\[13\]\[0:2\]} \
{/testbench/u_conv/image_seq\[14\]\[0:2\]} \
{/testbench/u_conv/image_seq\[15\]\[0:2\]} \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/addr_OT1\[11:0\]} \
{/testbench/u_conv/cal_en_counter_seq\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testbench/u_SRAM_OT0/memory\[3135:0\]} \
{/testbench/u_SRAM_OT1/memory\[3135:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testbench/u_SRAM_O0/memory\[6271:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSetPosition -win $_nWave1 {("G1" 46)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 9
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSetPosition -win $_nWave1 {("G1" 35)}
wvCollapseBus -win $_nWave1 {("G1" 35)}
wvSetPosition -win $_nWave1 {("G1" 35)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 737.801442 -snap {("G1" 38)}
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvExpandBus -win $_nWave1 {("G1" 35)}
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSetPosition -win $_nWave1 {("G1" 46)}
wvExpandBus -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 54)}
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvSetPosition -win $_nWave1 {("G1" 49)}
wvExpandBus -win $_nWave1 {("G1" 49)}
wvSetPosition -win $_nWave1 {("G1" 57)}
wvScrollDown -win $_nWave1 2
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSetPosition -win $_nWave1 {("G1" 48)}
wvExpandBus -win $_nWave1 {("G1" 48)}
wvSetPosition -win $_nWave1 {("G1" 60)}
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSetPosition -win $_nWave1 {("G1" 46)}
wvCollapseBus -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 51)}
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSetPosition -win $_nWave1 {("G1" 35)}
wvCollapseBus -win $_nWave1 {("G1" 35)}
wvSetPosition -win $_nWave1 {("G1" 35)}
wvScrollUp -win $_nWave1 13
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvExpandBus -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 60)}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvCollapseBus -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 35)}
wvSetCursor -win $_nWave1 767.836818 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 772.947733 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 785.760026 -snap {("G1" 30)}
wvScrollUp -win $_nWave1 7
