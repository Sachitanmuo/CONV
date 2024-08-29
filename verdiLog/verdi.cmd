wvCreateWindow
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/RAID2/LAB/icssl/icsslRA27/JimmyCheng/Conv_3x3/conv.fsdb}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/SRAM_I000"
wvGetSignalSetScope -win $_nWave2 "/testbench"
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/clk} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/clk} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvGetSignalClose -win $_nWave2
wvZoom -win $_nWave2 240.747955 1513.272862
wvSetCursor -win $_nWave2 383.774366 -snap {("G1" 3)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvZoom -win $_nWave2 375.249613 428.292520
wvSetCursor -win $_nWave2 395.887025 -snap {("G1" 4)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetRadix -win $_nWave2 -2Com
wvSetCursor -win $_nWave2 401.987392 -snap {("G1" 5)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/SRAM_I000"
wvGetSignalSetScope -win $_nWave2 "/testbench"
wvGetSignalSetScope -win $_nWave2 "/testbench/u_conv"
wvGetSignalSetScope -win $_nWave2 "/testbench/u_conv"
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/clk} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/din_OT0\[25:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/clk} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/din_OT0\[25:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetRadix -win $_nWave2 -2Com
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/SRAM_I000"
wvGetSignalSetScope -win $_nWave2 "/testbench"
wvGetSignalSetScope -win $_nWave2 "/testbench/u_conv"
wvGetSignalSetScope -win $_nWave2 "/testbench/u_conv"
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/clk} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/din_OT0\[25:0\]} \
{/testbench/u_SRAM_OT0/memory\[3135:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/testbench/u_conv/addr_OT0\[11:0\]} \
{/testbench/u_conv/clk} \
{/testbench/u_conv/counter_seq\[15:0\]} \
{/testbench/u_conv/mac_16_seq\[24:0\]} \
{/testbench/u_conv/x_counter_seq\[7:0\]} \
{/testbench/u_conv/y_counter_seq\[7:0\]} \
{/testbench/u_conv/din_OT0\[25:0\]} \
{/testbench/u_SRAM_OT0/memory\[3135:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetPosition -win $_nWave2 {("G1" 8)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetRadix -win $_nWave2 -2Com
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvExpandBus -win $_nWave2 {("G1" 8)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 3118
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetPosition -win $_nWave2 {("G1" 8)}
wvCollapseBus -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvExpandBus -win $_nWave2 {("G1" 8)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 166
wvScrollDown -win $_nWave2 62
wvScrollDown -win $_nWave2 42
wvScrollDown -win $_nWave2 14
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 3073
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetPosition -win $_nWave2 {("G1" 8)}
wvCollapseBus -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetCursor -win $_nWave2 2435.940019 -snap {("G1" 8)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
debExit
