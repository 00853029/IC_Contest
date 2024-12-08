wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/JengDeChang/IC_Contest/107_Conv/build/CONV.fsdb}
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testfixture"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_CONV"
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/busy} \
{/testfixture/u_CONV/caddr_rd\[11:0\]} \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_rd\[19:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
{/testfixture/u_CONV/clk} \
{/testfixture/u_CONV/conv_reg\[2:0\]} \
{/testfixture/u_CONV/counter\[5:0\]} \
{/testfixture/u_CONV/counter_x\[5:0\]} \
{/testfixture/u_CONV/counter_y\[5:0\]} \
{/testfixture/u_CONV/crd} \
{/testfixture/u_CONV/csel\[2:0\]} \
{/testfixture/u_CONV/current_state\[2:0\]} \
{/testfixture/u_CONV/cwr} \
{/testfixture/u_CONV/i\[31:0\]} \
{/testfixture/u_CONV/iaddr\[11:0\]} \
{/testfixture/u_CONV/idata\[19:0\]} \
{/testfixture/u_CONV/j\[31:0\]} \
{/testfixture/u_CONV/next_state\[2:0\]} \
{/testfixture/u_CONV/ready} \
{/testfixture/u_CONV/reset} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 )} 
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/busy} \
{/testfixture/u_CONV/caddr_rd\[11:0\]} \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_rd\[19:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
{/testfixture/u_CONV/clk} \
{/testfixture/u_CONV/conv_reg\[2:0\]} \
{/testfixture/u_CONV/counter\[5:0\]} \
{/testfixture/u_CONV/counter_x\[5:0\]} \
{/testfixture/u_CONV/counter_y\[5:0\]} \
{/testfixture/u_CONV/crd} \
{/testfixture/u_CONV/csel\[2:0\]} \
{/testfixture/u_CONV/current_state\[2:0\]} \
{/testfixture/u_CONV/cwr} \
{/testfixture/u_CONV/i\[31:0\]} \
{/testfixture/u_CONV/iaddr\[11:0\]} \
{/testfixture/u_CONV/idata\[19:0\]} \
{/testfixture/u_CONV/j\[31:0\]} \
{/testfixture/u_CONV/next_state\[2:0\]} \
{/testfixture/u_CONV/ready} \
{/testfixture/u_CONV/reset} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 )} 
wvSetPosition -win $_nWave1 {("G1" 21)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvResizeWindow -win $_nWave1 0 23 1920 1137
wvZoom -win $_nWave1 0.000000 461610651.849844
wvZoom -win $_nWave1 0.000000 5831517.543316
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvZoom -win $_nWave1 0.000000 11911184.769326
wvZoom -win $_nWave1 0.000000 221750.780280
wvSetCursor -win $_nWave1 3833.457638 -snap {("G1" 21)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvZoom -win $_nWave1 0.000000 14596.627159
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 6 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 11 12 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 10 11 12 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 16 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 5 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 5 6 )} 
wvSetRadix -win $_nWave1 -format UDec
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 378580.606541 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 382928.538035 -snap {("G1" 5)}
wvZoom -win $_nWave1 0.000000 20497.391330
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 4933.547647 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 7114.121193 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 7931.836273 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8449.722490 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 9540.009263 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 11475.268285 -snap {("G1" 20)}
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 12374.754872 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 11475.268285 -snap {("G1" 20)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetCursor -win $_nWave1 5042.576325 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 8422.465321 -snap {("G1" 20)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 360884.921830 388578.205861
wvSetCursor -win $_nWave1 380494.860323 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 396528.977168 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 399419.831950 -snap {("G1" 20)}
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
wvZoom -win $_nWave1 942709.034945 973053.803618
wvSetCursor -win $_nWave1 948418.855114 -snap {("G1" 4)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 49378040.596913 54171222.780379
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 180019684.898968 -snap {("G1" 5)}
wvZoom -win $_nWave1 178540937.204069 180504102.247297
wvZoom -win $_nWave1 180095022.510178 180216415.029473
wvZoom -win $_nWave1 180123433.525254 180129809.861042
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 180128487.110472 -snap {("G1" 20)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 180504019.371672 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 384533.747999 -snap {("G1" 4)}
wvZoom -win $_nWave1 375851.077990 396743.752698
wvSetCursor -win $_nWave1 380463.024801 -snap {("G1" 4)}
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
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 35641658.381523 -snap {("G1" 5)}
wvZoom -win $_nWave1 33365690.413354 36409797.570780
wvSetCursor -win $_nWave1 36102148.443164 -snap {("G1" 5)}
wvZoom -win $_nWave1 36011068.109331 36112268.480256
wvZoom -win $_nWave1 36096186.772375 36105539.732188
wvSetCursor -win $_nWave1 36100490.128880 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 36102492.557776 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 36104476.330502 -snap {("G1" 20)}
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
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGoToTime -win $_nWave1 36104500
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 36104475.125100 -snap {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetCursor -win $_nWave1 36103716.440860 -snap {("G2" 0)}
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvPrevView -win $_nWave1
wvZoom -win $_nWave1 0.000000 127593085.106383
wvZoom -win $_nWave1 0.000000 3902448.081711
wvZoom -win $_nWave1 0.000000 93409.661530
wvSetCursor -win $_nWave1 8384.510842 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvExpandBus -win $_nWave1
wvZoom -win $_nWave1 621.074877 9750.875572
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 8463.962176 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvExpandBus -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 76)}
wvScrollUp -win $_nWave1 25
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvCollapseBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetCursor -win $_nWave1 5483.422189 -snap {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvExpandBus -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 15 16 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 13 14 15 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 14 15 16 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 6478.958967 -snap {("G1" 13)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 8437.781227 -snap {("G1" 4)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 18550.978008 -snap {("G1" 6)}
wvZoom -win $_nWave1 17385.471536 19522.233401
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 29480.907581 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/clk} \
{/testfixture/u_CONV/busy} \
{/testfixture/u_CONV/current_state\[2:0\]} \
{/testfixture/u_CONV/counter_x\[5:0\]} \
{/testfixture/u_CONV/counter_y\[5:0\]} \
{/testfixture/u_CONV/counter\[5:0\]} \
{/testfixture/u_CONV/conv_reg\[2:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/csel\[2:0\]} \
{/testfixture/u_CONV/crd} \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
{/testfixture/u_CONV/cwr} \
{/testfixture/u_CONV/iaddr\[11:0\]} \
{/testfixture/u_CONV/idata\[19:0\]} \
{/testfixture/u_CONV/next_state\[2:0\]} \
{/testfixture/u_CONV/ready} \
{/testfixture/u_CONV/reset} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 19 20 )} 
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/clk} \
{/testfixture/u_CONV/busy} \
{/testfixture/u_CONV/current_state\[2:0\]} \
{/testfixture/u_CONV/counter_x\[5:0\]} \
{/testfixture/u_CONV/counter_y\[5:0\]} \
{/testfixture/u_CONV/counter\[5:0\]} \
{/testfixture/u_CONV/conv_reg\[2:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/csel\[2:0\]} \
{/testfixture/u_CONV/crd} \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
{/testfixture/u_CONV/cwr} \
{/testfixture/u_CONV/iaddr\[11:0\]} \
{/testfixture/u_CONV/idata\[19:0\]} \
{/testfixture/u_CONV/next_state\[2:0\]} \
{/testfixture/u_CONV/ready} \
{/testfixture/u_CONV/reset} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 19 20 )} 
wvSetPosition -win $_nWave1 {("G1" 20)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 18490.222883 -snap {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/clk} \
{/testfixture/u_CONV/busy} \
{/testfixture/u_CONV/current_state\[2:0\]} \
{/testfixture/u_CONV/counter_x\[5:0\]} \
{/testfixture/u_CONV/counter_y\[5:0\]} \
{/testfixture/u_CONV/counter\[5:0\]} \
{/testfixture/u_CONV/conv_reg\[2:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/crd} \
{/testfixture/u_CONV/cwr} \
{/testfixture/u_CONV/iaddr\[11:0\]} \
{/testfixture/u_CONV/idata\[19:0\]} \
{/testfixture/u_CONV/csel\[2:0\]} \
{/testfixture/u_CONV/partial_sum\[39:0\]} \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/clk} \
{/testfixture/u_CONV/busy} \
{/testfixture/u_CONV/current_state\[2:0\]} \
{/testfixture/u_CONV/counter_x\[5:0\]} \
{/testfixture/u_CONV/counter_y\[5:0\]} \
{/testfixture/u_CONV/counter\[5:0\]} \
{/testfixture/u_CONV/conv_reg\[2:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/crd} \
{/testfixture/u_CONV/cwr} \
{/testfixture/u_CONV/iaddr\[11:0\]} \
{/testfixture/u_CONV/idata\[19:0\]} \
{/testfixture/u_CONV/csel\[2:0\]} \
{/testfixture/u_CONV/partial_sum\[39:0\]} \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSetPosition -win $_nWave1 {("G1" 22)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 17558.231006 19967.770981
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 29478.414589 -snap {("G1" 23)}
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 29580.948205 -snap {("G1" 18)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 34861.429427 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 37732.370674 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 28709.412470 -snap {("G1" 3)}
wvZoom -win $_nWave1 26248.605686 44704.656560
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 1756544.824817 2322792.172887
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
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
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 244156218.234975 -snap {("G1" 5)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 245968209.748875
wvSetCursor -win $_nWave1 122493476.796481 -snap {("G1" 5)}
wvZoom -win $_nWave1 118731994.865481 123638275.645046
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
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
wvZoom -win $_nWave1 112086081.361702 135645576.170213
wvZoom -win $_nWave1 119291777.912175 122675322.379355
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetSearchMode -win $_nWave1 -value 
wvSetSearchMode -win $_nWave1 -value 0
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSearchPrev -win $_nWave1
wvSetCursor -win $_nWave1 1700771.022066 -snap {("G1" 5)}
wvZoom -win $_nWave1 1628780.714254 1714269.204781
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 1703412.621210 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetSearchMode -win $_nWave1 -value 63
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 3615440.132919 -snap {("G1" 3)}
wvZoom -win $_nWave1 3613450.706610 3623113.634396
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSetCursor -win $_nWave1 3631414.500551 -snap {("G1" 24)}
wvSetCursor -win $_nWave1 3621463.740875 -snap {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSetCursor -win $_nWave1 3631537.857077 -snap {("G1" 24)}
wvSetCursor -win $_nWave1 3615501.508837 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetCursor -win $_nWave1 3621412.342323 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 3631306.563593 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetCursor -win $_nWave1 3622568.809744 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 3623442.585129 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 3625421.429383 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 3626449.400424 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 3628351.146850 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 3629456.215719 -snap {("G1" 22)}
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 124148931.382979 -snap {("G1" 5)}
wvZoom -win $_nWave1 121521889.148936 125674310.744681
wvZoom -win $_nWave1 124288329.600320 124605835.240952
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetCursor -win $_nWave1 126168199.433148 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 126190154.610426 -snap {("G1" 3)}
wvZoom -win $_nWave1 126136955.527022 126217176.367075
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSetCursor -win $_nWave1 126179466.171629 -snap {("G1" 21)}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetCursor -win $_nWave1 126190400.528153 -snap {("G1" 23)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetCursor -win $_nWave1 126168531.815106 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 126190453.866477 -snap {("G1" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 126216525.639483 -snap {("G1" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 126217539.067676 -snap {("G1" 8)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/clk} \
{/testfixture/u_CONV/busy} \
{/testfixture/u_CONV/current_state\[2:0\]} \
{/testfixture/u_CONV/counter_x\[5:0\]} \
{/testfixture/u_CONV/counter_y\[5:0\]} \
{/testfixture/u_CONV/counter\[5:0\]} \
{/testfixture/u_CONV/conv_reg\[2:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/crd} \
{/testfixture/u_CONV/cwr} \
{/testfixture/u_CONV/iaddr\[11:0\]} \
{/testfixture/u_CONV/idata\[19:0\]} \
{/testfixture/u_CONV/csel\[2:0\]} \
{/testfixture/u_CONV/partial_sum\[39:0\]} \
{/testfixture/u_CONV/caddr_rd\[11:0\]} \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/clk} \
{/testfixture/u_CONV/busy} \
{/testfixture/u_CONV/current_state\[2:0\]} \
{/testfixture/u_CONV/counter_x\[5:0\]} \
{/testfixture/u_CONV/counter_y\[5:0\]} \
{/testfixture/u_CONV/counter\[5:0\]} \
{/testfixture/u_CONV/conv_reg\[2:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/crd} \
{/testfixture/u_CONV/cwr} \
{/testfixture/u_CONV/iaddr\[11:0\]} \
{/testfixture/u_CONV/idata\[19:0\]} \
{/testfixture/u_CONV/csel\[2:0\]} \
{/testfixture/u_CONV/partial_sum\[39:0\]} \
{/testfixture/u_CONV/caddr_rd\[11:0\]} \
{/testfixture/u_CONV/cdata_rd\[19:0\]} \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/clk} \
{/testfixture/u_CONV/busy} \
{/testfixture/u_CONV/current_state\[2:0\]} \
{/testfixture/u_CONV/counter_x\[5:0\]} \
{/testfixture/u_CONV/counter_y\[5:0\]} \
{/testfixture/u_CONV/counter\[5:0\]} \
{/testfixture/u_CONV/conv_reg\[2:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/crd} \
{/testfixture/u_CONV/cwr} \
{/testfixture/u_CONV/iaddr\[11:0\]} \
{/testfixture/u_CONV/idata\[19:0\]} \
{/testfixture/u_CONV/csel\[2:0\]} \
{/testfixture/u_CONV/partial_sum\[39:0\]} \
{/testfixture/u_CONV/caddr_rd\[11:0\]} \
{/testfixture/u_CONV/cdata_rd\[19:0\]} \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSetPosition -win $_nWave1 {("G1" 24)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 24 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/clk} \
{/testfixture/u_CONV/busy} \
{/testfixture/u_CONV/current_state\[2:0\]} \
{/testfixture/u_CONV/counter_x\[5:0\]} \
{/testfixture/u_CONV/counter_y\[5:0\]} \
{/testfixture/u_CONV/counter\[5:0\]} \
{/testfixture/u_CONV/conv_reg\[2:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/crd} \
{/testfixture/u_CONV/cwr} \
{/testfixture/u_CONV/iaddr\[11:0\]} \
{/testfixture/u_CONV/idata\[19:0\]} \
{/testfixture/u_CONV/csel\[2:0\]} \
{/testfixture/u_CONV/partial_sum\[39:0\]} \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_CONV/caddr_rd\[11:0\]} \
{/testfixture/u_CONV/cdata_rd\[19:0\]} \
{/testfixture/u_CONV/counter_layer} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_CONV/clk} \
{/testfixture/u_CONV/busy} \
{/testfixture/u_CONV/current_state\[2:0\]} \
{/testfixture/u_CONV/counter_x\[5:0\]} \
{/testfixture/u_CONV/counter_y\[5:0\]} \
{/testfixture/u_CONV/counter\[5:0\]} \
{/testfixture/u_CONV/conv_reg\[2:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[0\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[1\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[0\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[1\]\[19:0\]} \
{/testfixture/u_CONV/conv_reg\[2\]\[2\]\[19:0\]} \
{/testfixture/u_CONV/crd} \
{/testfixture/u_CONV/cwr} \
{/testfixture/u_CONV/iaddr\[11:0\]} \
{/testfixture/u_CONV/idata\[19:0\]} \
{/testfixture/u_CONV/csel\[2:0\]} \
{/testfixture/u_CONV/partial_sum\[39:0\]} \
{/testfixture/u_CONV/caddr_wr\[11:0\]} \
{/testfixture/u_CONV/cdata_wr\[19:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/testfixture/u_CONV/caddr_rd\[11:0\]} \
{/testfixture/u_CONV/cdata_rd\[19:0\]} \
{/testfixture/u_CONV/counter_layer} \
{/testfixture/u_CONV/crd} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSetCursor -win $_nWave1 126216408.295159 -snap {("G1" 3)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 126213421.348958 126242437.397488
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 126403877.752564 126414990.281788
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
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
wvZoom -win $_nWave1 124514901.855372 130991378.461991
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 1722467.182611 -snap {("G1" 5)}
wvZoom -win $_nWave1 0.000000 275594.749218
wvSetCursor -win $_nWave1 8245.853534 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 30418.037480 -snap {("G1" 3)}
wvZoom -win $_nWave1 0.000000 31883.966997
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetCursor -win $_nWave1 19499.250561 -snap {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvZoom -win $_nWave1 125231987.154255 139642497.925532
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 126180551.360554 -snap {("G1" 5)}
wvZoom -win $_nWave1 126046410.967736 127301581.786245
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 126006352.324519 128603487.688349
wvZoom -win $_nWave1 126134136.910220 126925019.886706
wvZoom -win $_nWave1 126205127.070988 126325021.564764
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 126214469.913100 -snap {("G1" 24)}
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvZoom -win $_nWave1 126234494.844575 126238002.396254
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetCursor -win $_nWave1 126216509.313544 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 126222479.614275 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 126223337.845006 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 126222516.928655 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 126223263.216246 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 126222516.928655 -snap {("G1" 21)}
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
wvZoom -win $_nWave1 133867369.658649 143267011.129804
wvZoom -win $_nWave1 134467346.773780 134954828.179864
wvZoom -win $_nWave1 134500083.224507 134555508.304588
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
wvZoom -win $_nWave1 124934311.407587 137311793.120779
wvZoom -win $_nWave1 125823119.934777 127230400.102966
wvZoom -win $_nWave1 126163711.677533 126453776.073902
wvZoom -win $_nWave1 126211541.444986 126259371.212473
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvZoom -win $_nWave1 126221031.074338 126227391.415759
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetCursor -win $_nWave1 126223466.949712 -snap {("G1" 19)}
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 126230470.091595 -snap {("G1" 23)}
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
wvZoom -win $_nWave1 140205900.638298 143648883.191489
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
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
wvZoom -win $_nWave1 125819442.806713 142228551.145312
wvZoom -win $_nWave1 126154545.228094 127594706.332280
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvZoom -win $_nWave1 126211998.463539 126448514.283176
wvZoom -win $_nWave1 126234958.110885 126242506.488107
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 126215910.503653 -snap {("G1" 3)}
wvGoToTime -win $_nWave1 126216500
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetSearchMode -win $_nWave1 -value 4095
wvSearchNext -win $_nWave1
wvSetSearchMode -win $_nWave1 -value 1023
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvZoom -win $_nWave1 134301858.551008 134308041.796180
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 134315343.287797 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 134313304.132475 -snap {("G1" 23)}
wvSetCursor -win $_nWave1 134316395.755060 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 134317448.222324 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 134318237.572771 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 134314225.041330 -snap {("G1" 23)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 24 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetCursor -win $_nWave1 134315606.404613 -snap {("G1" 4)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 126125031.025062 -snap {("G1" 5)}
wvZoom -win $_nWave1 125316736.166890 128853026.171392
wvSetCursor -win $_nWave1 126466500.669593 -snap {("G1" 5)}
wvZoom -win $_nWave1 126191403.641318 126377152.916820
wvSetCursor -win $_nWave1 126216721.860368 -snap {("G1" 3)}
wvZoom -win $_nWave1 126214375.293722 126251055.835494
wvSetCursor -win $_nWave1 126222447.939529 -snap {("G1" 19)}
wvSetCursor -win $_nWave1 126230423.030725 -snap {("G1" 19)}
wvSetCursor -win $_nWave1 126222472.328187 -snap {("G1" 19)}
wvSetCursor -win $_nWave1 126230496.196699 -snap {("G1" 23)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 126468212.447072 126490064.684723
wvSetCursor -win $_nWave1 126469476.505960 -snap {("G1" 24)}
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 126471525.153265 -snap {("G1" 23)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetSearchMode -win $_nWave1 -value 16
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSetCursor -win $_nWave1 126554521.741531 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 126550366.329318 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetCursor -win $_nWave1 126550482.564625 -snap {("G1" 23)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvZoom -win $_nWave1 126525114.209012 126629261.043775
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvZoom -win $_nWave1 126549489.000115 126559391.259005
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 126550529.263945 -snap {("G2" 4)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 126436455.768232 -snap {("G1" 5)}
wvZoom -win $_nWave1 126421286.350358 126469322.840294
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetCursor -win $_nWave1 126462487.860950 -snap {("G2" 3)}
wvExit
