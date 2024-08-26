verdiSetActWin -dock widgetDock_<Decl._Tree>
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiWindowResize -win $_Verdi_1 "318" "82" "900" "700"
wvCreateWindow
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 {/home/IMGAE_INT/QARep_VGG/conv_3x3/conv.fsdb}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/testbench"
debExit
