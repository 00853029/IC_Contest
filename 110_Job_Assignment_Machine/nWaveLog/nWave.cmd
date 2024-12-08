wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/JengDeChang/IC_Contest/110_Job_Assignment_Machine/build/JAM.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/JAM_af"
wvGetSignalSetScope -win $_nWave1 "/testfixture/u_JAM"
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testfixture/u_JAM/CLK} \
{/testfixture/u_JAM/Cost\[6:0\]} \
{/testfixture/u_JAM/J\[2:0\]} \
{/testfixture/u_JAM/MatchCount\[3:0\]} \
{/testfixture/u_JAM/MinCost\[9:0\]} \
{/testfixture/u_JAM/RST} \
{/testfixture/u_JAM/Valid} \
{/testfixture/u_JAM/W\[2:0\]} \
{/testfixture/u_JAM/cal_fin} \
{/testfixture/u_JAM/change_idx2\[4:0\]} \
{/testfixture/u_JAM/change_idx\[4:0\]} \
{/testfixture/u_JAM/counter\[4:0\]} \
{/testfixture/u_JAM/counter_seq\[4:0\]} \
{/testfixture/u_JAM/curr_state\[2:0\]} \
{/testfixture/u_JAM/i\[31:0\]} \
{/testfixture/u_JAM/job_sequence\[7:0\]} \
{/testfixture/u_JAM/load_finish} \
{/testfixture/u_JAM/next_state\[2:0\]} \
{/testfixture/u_JAM/step2} \
{/testfixture/u_JAM/step2_min\[2:0\]} \
{/testfixture/u_JAM/tempCost\[10:0\]} \
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
{/testfixture/u_JAM/CLK} \
{/testfixture/u_JAM/Cost\[6:0\]} \
{/testfixture/u_JAM/J\[2:0\]} \
{/testfixture/u_JAM/MatchCount\[3:0\]} \
{/testfixture/u_JAM/MinCost\[9:0\]} \
{/testfixture/u_JAM/RST} \
{/testfixture/u_JAM/Valid} \
{/testfixture/u_JAM/W\[2:0\]} \
{/testfixture/u_JAM/cal_fin} \
{/testfixture/u_JAM/change_idx2\[4:0\]} \
{/testfixture/u_JAM/change_idx\[4:0\]} \
{/testfixture/u_JAM/counter\[4:0\]} \
{/testfixture/u_JAM/counter_seq\[4:0\]} \
{/testfixture/u_JAM/curr_state\[2:0\]} \
{/testfixture/u_JAM/i\[31:0\]} \
{/testfixture/u_JAM/job_sequence\[7:0\]} \
{/testfixture/u_JAM/load_finish} \
{/testfixture/u_JAM/next_state\[2:0\]} \
{/testfixture/u_JAM/step2} \
{/testfixture/u_JAM/step2_min\[2:0\]} \
{/testfixture/u_JAM/tempCost\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 )} 
wvSetPosition -win $_nWave1 {("G1" 21)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1536 841
wvResizeWindow -win $_nWave1 0 23 1536 841
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetSearchMode -win $_nWave1 -value 
wvSetCursor -win $_nWave1 4386271.972879 -snap {("G1" 5)}
wvSetSearchMode -win $_nWave1 -value 119
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvZoom -win $_nWave1 97531325.953794 99679704.062959
wvZoom -win $_nWave1 99195460.721276 99392410.438601
wvZoom -win $_nWave1 99295012.260473 99310417.074359
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetCursor -win $_nWave1 99294597.017168 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 99293314.362353 -snap {("G2" 0)}
