wvResizeWindow -win $_nWave1 0 23 1920 1137
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/JengDeChang/IC_Contest/109_GeoFence/build/geofence.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/R_list\[5:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/X_list\[5:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/Y_list\[5:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/counter\[5:0\]} \
{/testfixture/u_geofence/curr_state\[3:0\]} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/next_state\[3:0\]} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/R_list\[5:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/X_list\[5:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/Y_list\[5:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/counter\[5:0\]} \
{/testfixture/u_geofence/curr_state\[3:0\]} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/next_state\[3:0\]} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvZoom -win $_nWave1 0.000000 23398170.572456
wvZoom -win $_nWave1 0.000000 715635.536126
wvZoom -win $_nWave1 0.000000 53767.829509
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvUnknownSaveResult -win $_nWave1 -clear
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 6 7 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/counter\[5:0\]} \
{/testfixture/u_geofence/curr_state\[3:0\]} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/next_state\[3:0\]} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/counter\[5:0\]} \
{/testfixture/u_geofence/curr_state\[3:0\]} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/next_state\[3:0\]} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/counter\[5:0\]} \
{/testfixture/u_geofence/curr_state\[3:0\]} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/next_state\[3:0\]} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/counter\[5:0\]} \
{/testfixture/u_geofence/curr_state\[3:0\]} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/next_state\[3:0\]} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 47189.850367 -snap {("G1" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/curr_state\[3:0\]} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/next_state\[3:0\]} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
{/testfixture/u_geofence/temp} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/curr_state\[3:0\]} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/next_state\[3:0\]} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
{/testfixture/u_geofence/temp} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 99527.684411 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 47761.848554 -snap {("G2" 5)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 220791.299901
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 129773.609782 -snap {("G3" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/curr_state\[3:0\]} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/next_state\[3:0\]} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
{/testfixture/u_geofence/temp} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/curr_state\[3:0\]} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/next_state\[3:0\]} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
{/testfixture/u_geofence/temp} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvGetSignalClose -win $_nWave1
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetRadix -win $_nWave1 -format UDec
wvZoom -win $_nWave1 45802.450511 117001.772620
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 112479.780140 -snap {("G2" 2)}
wvZoom -win $_nWave1 44120.856520 68358.923621
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 52343.910867 -snap {("G2" 6)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 121551.327993 -snap {("G2" 7)}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvSetCursor -win $_nWave1 38394.129695 -snap {("G2" 3)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/curr_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/curr_state\[2:0\]} \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[7:0\]} \
{/testfixture/u_geofence/sqrt_output\[3:0\]} \
{/testfixture/u_geofence/total_area\[10:0\]} \
{/testfixture/u_geofence/tri_area\[10:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/curr_state\[2:0\]} \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[7:0\]} \
{/testfixture/u_geofence/sqrt_output\[3:0\]} \
{/testfixture/u_geofence/total_area\[10:0\]} \
{/testfixture/u_geofence/tri_area\[10:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G3" 7)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 117580.410617 -snap {("G3" 1)}
wvZoom -win $_nWave1 97467.971959 275385.698550
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 5 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 3)}
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 3)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetCursor -win $_nWave1 123256.578606 -snap {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSetCursor -win $_nWave1 217065.592693 -snap {("G4" 3)}
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 1 2 3 4 5 6 )} 
wvSelectSignal -win $_nWave1 {( "G4" 1 2 3 4 5 6 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/curr_state\[2:0\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_output\[3:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[10:0\]} \
{/testfixture/u_geofence/total_area\[10:0\]} \
{/testfixture/u_geofence/sqrt_input\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/curr_state\[2:0\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_output\[3:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[10:0\]} \
{/testfixture/u_geofence/total_area\[10:0\]} \
{/testfixture/u_geofence/sqrt_input\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSetPosition -win $_nWave1 {("G4" 6)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/curr_state\[2:0\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[15:0\]} \
{/testfixture/u_geofence/sqrt_output\[3:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[10:0\]} \
{/testfixture/u_geofence/total_area\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/curr_state\[2:0\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[15:0\]} \
{/testfixture/u_geofence/sqrt_output\[3:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[10:0\]} \
{/testfixture/u_geofence/total_area\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/curr_state\[2:0\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[15:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[10:0\]} \
{/testfixture/u_geofence/total_area\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/curr_state\[2:0\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[15:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[10:0\]} \
{/testfixture/u_geofence/total_area\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 122191.911359 -snap {("G4" 3)}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/curr_state\[2:0\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[10:0\]} \
{/testfixture/u_geofence/total_area\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 2 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/curr_state\[2:0\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[10:0\]} \
{/testfixture/u_geofence/total_area\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 2 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 2 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 5 6 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 3)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/curr_state\[2:0\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/total_area\[10:0\]} \
{/testfixture/u_geofence/tri_area\[10:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/curr_state\[2:0\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/total_area\[10:0\]} \
{/testfixture/u_geofence/tri_area\[10:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G4" 6)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 5 6 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/curr_state\[2:0\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/curr_state\[2:0\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G4" 6)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 5 6 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 5 6 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSetCursor -win $_nWave1 147034.147120 -snap {("G4" 5)}
wvZoom -win $_nWave1 114975.833352 231497.748706
wvSetCursor -win $_nWave1 127294.307116 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 122413.402417 -snap {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSetCursor -win $_nWave1 127216.832439 -snap {("G4" 5)}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetCursor -win $_nWave1 219768.082493 -snap {("G4" 1)}
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
wvZoom -win $_nWave1 1118114.549461 1408179.743002
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 1005868.576960 1380021.818629
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 1088100.398936
wvZoom -win $_nWave1 449275.497167 772667.038606
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 1846473.404255
wvZoom -win $_nWave1 940424.619455 1314875.675504
wvZoom -win $_nWave1 992708.344036 1140098.653332
wvSetCursor -win $_nWave1 1027595.943843 -snap {("G4" 1)}
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 1020148.029277 1119910.884904
wvSetCursor -win $_nWave1 1032154.064429 -snap {("G2" 3)}
wvSetCursor -win $_nWave1 1097225.448319 -snap {("G3" 1)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/curr_state\[2:0\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/curr_state\[2:0\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSetPosition -win $_nWave1 {("G4" 6)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSetPosition -win $_nWave1 {("G4" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 7)}
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 7)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 8)}
wvSetPosition -win $_nWave1 {("G4" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/curr_state\[2:0\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[19:0\]} \
{/testfixture/u_geofence/is_inside} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 8 )} 
wvSetPosition -win $_nWave1 {("G4" 8)}
wvSetPosition -win $_nWave1 {("G4" 8)}
wvSetPosition -win $_nWave1 {("G4" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/curr_state\[2:0\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[19:0\]} \
{/testfixture/u_geofence/is_inside} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 8 )} 
wvSetPosition -win $_nWave1 {("G4" 8)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 1097941.830527 -snap {("G4" 7)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 904233.542492 1591960.462133
wvSetCursor -win $_nWave1 991571.203164 -snap {("G3" 1)}
wvZoom -win $_nWave1 973280.593599 1006203.690816
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/is_inside} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/curr_state\[2:0\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/is_inside} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/curr_state\[2:0\]} \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 992631.669357 -snap {("G1" 7)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvZoom -win $_nWave1 115404.587766 791345.744681
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/curr_state\[2:0\]} \
{/testfixture/u_geofence/is_inside} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/curr_state\[2:0\]} \
{/testfixture/u_geofence/is_inside} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/curr_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/curr_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvZoom -win $_nWave1 870094.467944 1301546.270230
wvZoom -win $_nWave1 990292.809139 1283473.488618
wvZoom -win $_nWave1 1017583.563878 1126356.714908
wvSetCursor -win $_nWave1 1097311.969260 -snap {("G1" 8)}
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 1088922.550696 1134196.481910
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetCursor -win $_nWave1 1110957.469345 -snap {("G4" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetCursor -win $_nWave1 1102408.402547 -snap {("G4" 1)}
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
wvZoom -win $_nWave1 1510415.407293 1849488.253828
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetCursor -win $_nWave1 1587518.408299 -snap {("G1" 8)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoom -win $_nWave1 1580529.539788 1598339.882126
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 1482269.502166 -snap {("G1" 8)}
wvZoom -win $_nWave1 1473743.274451 1523858.546242
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 1450144.034813 1880922.115743
wvSetCursor -win $_nWave1 1511438.256435 -snap {("G2" 2)}
wvZoom -win $_nWave1 1474489.870504 1757187.986114
wvSetCursor -win $_nWave1 1582757.233928 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 1511518.812508 -snap {("G2" 1)}
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvSetCursor -win $_nWave1 1482392.895073 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 1237005.516251 -snap {("G1" 8)}
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
wvSetCursor -win $_nWave1 617817.888563 -snap {("G1" 8)}
wvZoom -win $_nWave1 0.000000 735930.131965
wvSetCursor -win $_nWave1 706471.345157 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 609354.465573 -snap {("G1" 8)}
wvZoom -win $_nWave1 580758.939917 657373.367145
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoom -win $_nWave1 598227.478676 717979.647921
wvSetCursor -win $_nWave1 692343.553039 -snap {("G4" 1)}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetCursor -win $_nWave1 687778.221074 -snap {("G4" 3)}
wvSetCursor -win $_nWave1 692167.963348 -snap {("G4" 4)}
wvSetCursor -win $_nWave1 687339.246846 -snap {("G4" 3)}
wvSetCursor -win $_nWave1 677594.018997 -snap {("G4" 2)}
wvSetCursor -win $_nWave1 692694.732421 -snap {("G4" 1)}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSetCursor -win $_nWave1 697365.418201 -snap {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 742140.789400 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 732658.946087 -snap {("G4" 7)}
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 327080.058651 -snap {("G1" 8)}
wvZoom -win $_nWave1 0.000000 554218.988270
wvSetCursor -win $_nWave1 502210.168256 -snap {("G4" 6)}
wvZoom -win $_nWave1 451013.986055 508711.270758
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 353503.882905 540639.357630
wvZoom -win $_nWave1 363107.609614 465044.308823
wvSetCursor -win $_nWave1 382314.157779 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 439485.400370 -snap {("G4" 7)}
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 494299.487050 505061.132714
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvZoom -win $_nWave1 356550.422548 464103.761034
wvSetCursor -win $_nWave1 362543.130557 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 402284.246831 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 422943.319179 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 362543.130557 -snap {("G4" 1)}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetCursor -win $_nWave1 367353.067249 -snap {("G4" 3)}
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSetCursor -win $_nWave1 407567.292050 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 398735.932878 -snap {("G4" 7)}
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 1553630.278592 2080592.595308
wvSetCursor -win $_nWave1 1727095.146778 -snap {("G1" 8)}
wvZoom -win $_nWave1 1718209.418563 2011438.449639
wvSetCursor -win $_nWave1 1556589.487799 -snap {("G2" 2)}
wvZoom -win $_nWave1 1516173.756243 1693315.047743
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetCursor -win $_nWave1 1587082.220435 -snap {("G3" 1)}
wvSetCursor -win $_nWave1 1592354.901106 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 1587549.748770 -snap {("G3" 2)}
wvZoom -win $_nWave1 1691367.013012 1732925.087264
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 1692281.046902 -snap {("G4" 7)}
wvSetCursor -win $_nWave1 1692293.234021 -snap {("G4" 7)}
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 1685529.383226 1736105.925205
wvSetCursor -win $_nWave1 1687420.441614 -snap {("G3" 2)}
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 1712226.678112 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 1712300.837265 -snap {("G4" 7)}
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvZoom -win $_nWave1 1689637.800272 1721971.190745
wvSetCursor -win $_nWave1 1697531.509235 -snap {("G4" 7)}
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 1722160.829398 -snap {("G4" 7)}
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/curr_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/temp\[19:0\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/curr_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/temp\[19:0\]} \
{/testfixture/u_geofence/s_value\[11:0\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/curr_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/temp\[19:0\]} \
{/testfixture/u_geofence/s_value\[11:0\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 1)}
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 7)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvZoomIn -win $_nWave1
wvSetRadix -win $_nWave1 -2Com
wvSetCursor -win $_nWave1 1687599.184743 -snap {("G3" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/curr_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[11:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/testfixture/u_geofence/temp\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/curr_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[11:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/testfixture/u_geofence/temp\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSetPosition -win $_nWave1 {("G5" 2)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 7)}
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetCursor -win $_nWave1 1687475.919618 -snap {("G5" 1)}
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1586995.878900 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 1602451.429185 -snap {("G4" 5)}
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSetCursor -win $_nWave1 1602735.887166 -snap {("G5" 1)}
wvSetCursor -win $_nWave1 1602166.971204 -snap {("G5" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSetCursor -win $_nWave1 1827287.017135 -snap {("G4" 6)}
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 422519.134897
wvZoom -win $_nWave1 223959.922677 301710.877852
wvSetCursor -win $_nWave1 237526.438316 -snap {("G4" 4)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetCursor -win $_nWave1 217244.400244 -snap {("G4" 3)}
wvSetCursor -win $_nWave1 272422.497465 -snap {("G4" 7)}
wvSetCursor -win $_nWave1 236967.149871 -snap {("G4" 3)}
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSetCursor -win $_nWave1 227504.790223 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 236853.145537 -snap {("G4" 2)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 1824069.329628 2232660.859465
wvZoom -win $_nWave1 1949881.970780 2102954.017515
wvSetCursor -win $_nWave1 1972550.998229 -snap {("G1" 8)}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetCursor -win $_nWave1 1977825.474913 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 2076918.302821 -snap {("G4" 1)}
wvSetCursor -win $_nWave1 2072317.163586 -snap {("G4" 1)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 8)}
wvSetPosition -win $_nWave1 {("G4" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/curr_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[11:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[20:0\]} \
{/testfixture/u_geofence/s_value\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/testfixture/u_geofence/temp\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G4" 8 )} 
wvSetPosition -win $_nWave1 {("G4" 8)}
wvSetPosition -win $_nWave1 {("G4" 8)}
wvSetPosition -win $_nWave1 {("G4" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/curr_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/testfixture/u_geofence/counter_p\[5:0\]} \
{/testfixture/u_geofence/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[11:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[20:0\]} \
{/testfixture/u_geofence/s_value\[11:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/testfixture/u_geofence/temp\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G4" 8 )} 
wvSetPosition -win $_nWave1 {("G4" 8)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 7)}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
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
wvZoom -win $_nWave1 1798162.829912 2594070.967742
wvZoom -win $_nWave1 1945790.952251 2170442.442768
wvZoom -win $_nWave1 2048069.966628 2157925.204293
wvSetCursor -win $_nWave1 2067640.951051 -snap {("G2" 4)}
wvSetCursor -win $_nWave1 2072151.136761 -snap {("G2" 4)}
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
wvSetCursor -win $_nWave1 776256.085044 -snap {("G1" 3)}
wvZoom -win $_nWave1 0.000000 903994.428152
wvZoom -win $_nWave1 446032.441456 826452.384095
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvZoom -win $_nWave1 781270.543401 808323.867767
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 2004509.384164 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 2063465.542522 -snap {("G1" 3)}
wvZoom -win $_nWave1 1788336.803519 3655281.818182
wvZoom -win $_nWave1 1828029.916001 2138731.175772
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 1989075.217070 2317088.277239
wvZoom -win $_nWave1 2066990.342799 2176648.667900
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 2091317.768881 -snap {("G4" 2)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 1966384.457146 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 1970564.979804 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 2012691.785048 -snap {("G3" 1)}
wvZoom -win $_nWave1 1997256.009080 2062536.478275
wvSetCursor -win $_nWave1 2017979.207879 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 2022286.570216 -snap {("G3" 2)}
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSetCursor -win $_nWave1 2092017.980491 -snap {("G4" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 3)}
wvSetPosition -win $_nWave1 {("G6" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/curr_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[11:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/testfixture/u_geofence/counter\[3:0\]} \
{/testfixture/u_geofence/counter_p\[3:0\]} \
{/testfixture/u_geofence/temp\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 1 2 3 )} 
wvSetPosition -win $_nWave1 {("G6" 3)}
wvSetPosition -win $_nWave1 {("G6" 3)}
wvSetPosition -win $_nWave1 {("G6" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/curr_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_geofence/X_list\[0:5\]} \
{/testfixture/u_geofence/Y_list\[0:5\]} \
{/testfixture/u_geofence/R_list\[0:5\]} \
{/testfixture/u_geofence/cross_value\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[11:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/testfixture/u_geofence/counter\[3:0\]} \
{/testfixture/u_geofence/counter_p\[3:0\]} \
{/testfixture/u_geofence/temp\[9:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 1 2 3 )} 
wvSetPosition -win $_nWave1 {("G6" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSelectGroup -win $_nWave1 {G6}
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSelectSignal -win $_nWave1 {( "G6" 1 2 3 )} 
wvSetPosition -win $_nWave1 {("G6" 2)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 10)}
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 9 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 9 10 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvZoom -win $_nWave1 11083757.771261 11349060.483871
wvSetCursor -win $_nWave1 11142692.318123 -snap {("G1" 10)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetCursor -win $_nWave1 11247918.687269 -snap {("G1" 11)}
wvZoom -win $_nWave1 11240527.555979 11375901.960654
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 11367168.128093 -snap {("G4" 6)}
wvSetCursor -win $_nWave1 11240329.059783 -snap {("G2" 2)}
wvSetCursor -win $_nWave1 11241520.036950 -snap {("G2" 1)}
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 11153784.718959 11295907.994248
wvSetCursor -win $_nWave1 11172435.793933 -snap {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetCursor -win $_nWave1 10947622.613028 -snap {("G2" 4)}
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 10967315.647505 -snap {("G1" 11)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetCursor -win $_nWave1 10977683.144493 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 11012244.940978 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 11017454.738459 -snap {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvZoom -win $_nWave1 0.000000 9258826.979472
wvZoom -win $_nWave1 0.000000 1534087.168153
wvZoom -win $_nWave1 0.000000 303668.281086
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetCursor -win $_nWave1 29387.253008 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 520065.325965 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 733790.802390 -snap {("G7" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence/U745"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvGetSignalSetSignalFilter -win $_nWave1 "*counter"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/counter\[3:0\]} \
{/testfixture/u_geofence/counter_p\[3:0\]} \
{/testfixture/u_geofence/curr_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalSetSignalFilter -win $_nWave1 "*counter"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/counter\[3:0\]} \
{/testfixture/u_geofence/counter_p\[3:0\]} \
{/testfixture/u_geofence/curr_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalSetSignalFilter -win $_nWave1 "*counter"
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/counter\[3:0\]} \
{/testfixture/u_geofence/counter_p\[3:0\]} \
{/testfixture/u_geofence/curr_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/counter\[3:0\]} \
{/testfixture/u_geofence/counter_p\[3:0\]} \
{/testfixture/u_geofence/curr_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/s_value\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/counter\[3:0\]} \
{/testfixture/u_geofence/counter_p\[3:0\]} \
{/testfixture/u_geofence/curr_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/s_value\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/counter\[3:0\]} \
{/testfixture/u_geofence/counter_p\[3:0\]} \
{/testfixture/u_geofence/curr_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvZoom -win $_nWave1 1137553.848268 1271132.271033
wvZoom -win $_nWave1 1176236.749288 1206595.481734
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_geofence"
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/counter\[3:0\]} \
{/testfixture/u_geofence/counter_p\[3:0\]} \
{/testfixture/u_geofence/curr_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[10:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_geofence/R\[10:0\]} \
{/testfixture/u_geofence/X\[9:0\]} \
{/testfixture/u_geofence/Y\[9:0\]} \
{/testfixture/u_geofence/clk} \
{/testfixture/u_geofence/reset} \
{/testfixture/u_geofence/valid} \
{/testfixture/u_geofence/is_inside} \
{/testfixture/u_geofence/counter\[3:0\]} \
{/testfixture/u_geofence/counter_p\[3:0\]} \
{/testfixture/u_geofence/curr_state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/testfixture/u_geofence/s_value\[10:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/sqrt_input\[19:0\]} \
{/testfixture/u_geofence/sqrt_output\[9:0\]} \
{/testfixture/u_geofence/tri_edge\[9:0\]} \
{/testfixture/u_geofence/tri_area\[19:0\]} \
{/testfixture/u_geofence/total_area\[19:0\]} \
{/testfixture/u_geofence/hexagon_area\[20:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSetPosition -win $_nWave1 {("G4" 2)}
wvGetSignalClose -win $_nWave1
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetCursor -win $_nWave1 1179419.519624 -snap {("G4" 3)}
wvSetCursor -win $_nWave1 1179553.062435 -snap {("G4" 3)}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
