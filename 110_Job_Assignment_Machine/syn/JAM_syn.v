/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Mon Feb 19 19:06:05 2024
/////////////////////////////////////////////////////////////


module JAM_DW01_add_0 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4;
  wire   [10:1] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2XL U2 ( .A(A[8]), .B(n2), .Y(SUM[8]) );
  XOR2XL U3 ( .A(A[7]), .B(carry[7]), .Y(SUM[7]) );
  XOR2XL U4 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  AND2X2 U5 ( .A(A[7]), .B(carry[7]), .Y(n2) );
  AND2X2 U6 ( .A(A[8]), .B(n2), .Y(n3) );
  XNOR2X1 U7 ( .A(A[10]), .B(n4), .Y(SUM[10]) );
  NAND2X1 U8 ( .A(A[9]), .B(n3), .Y(n4) );
  XOR2X1 U9 ( .A(A[9]), .B(n3), .Y(SUM[9]) );
endmodule


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   N140, N141, N142, N143, N144, N145, N146, N147, N148, N149, N150,
         N151, n844, n845, n846, n847, n848, n849, n850, n851, n852, n853,
         \job_sequence[7][2] , \job_sequence[7][1] , \job_sequence[7][0] ,
         \job_sequence[6][2] , \job_sequence[6][1] , \job_sequence[6][0] ,
         \job_sequence[5][2] , \job_sequence[5][1] , \job_sequence[5][0] ,
         \job_sequence[4][2] , \job_sequence[4][1] , \job_sequence[4][0] ,
         \job_sequence[3][2] , \job_sequence[3][1] , \job_sequence[3][0] ,
         \job_sequence[2][2] , \job_sequence[2][1] , \job_sequence[2][0] ,
         \job_sequence[1][2] , \job_sequence[1][1] , \job_sequence[1][0] ,
         \job_sequence[0][2] , \job_sequence[0][1] , \job_sequence[0][0] ,
         N156, N157, N158, step2, \step2_min[0] , N178, N179, N180, N181, N182,
         N183, N184, N185, N186, N187, N188, N191, N192, N193, N327, N328,
         N381, N382, N383, N489, N490, N491, N492, N521, N522, N523, N524,
         N525, N528, N529, N530, N531, N575, N576, N577, n286, n287, n288,
         n290, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n308, n309, n310, n311, n312, n313, n316, n317, n319, n322, n323,
         n324, n325, n326, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n350,
         n351, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421, n422, n423, n424, n425, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n470, n471, n472, n474, n475, n492, n493, n494, n495, n496, n497,
         n498, n499, n500, n501, n502, n503, n504, n505, n506, n507, n508,
         n509, n510, n511, n512, n514, n515, n516, n517, n518, n519, n520,
         n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531,
         n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, n542,
         n543, n544, n545, n546, n547, n548, n549, n550, n551, n552, n553,
         n554, n555, n556, n557, n558, n559, n560, n561, n562, n563, n564,
         n565, n566, n567, n568, n569, n570, n571, n572, n573, n574, n575,
         n576, n577, n578, n579, n580, n581, n582, n583, n584, n585, n586,
         n587, n588, n589, n590, n591, n592, n593, n594, n595, n596, n597,
         n598, n599, n600, n601, n602, n603, n604, n605, n606, n607, n608,
         n609, n610, n611, n612, n613, n614, n615, n616, n617, n618, n619,
         n620, n621, n622, n623, n624, n625, n626, n627, n628, n629, n630,
         n631, n632, n633, n634, n635, n636, n637, n638, n639, n640, n641,
         n642, n643, n644, n645, n646, n647, n648, n649, n650, n651, n652,
         n653, n654, n655, n656, n657, n658, n659, n660, n661, n662, n663,
         n664, n665, n666, n667, n668, n669, n670, n671, n672, n673, n674,
         n675, n676, n677, n678, n679, n680, n681, n682, n683, n684, n685,
         n686, n687, n688, n689, n690, n691, n692, n693, n694, n695, n696,
         n697, n698, n699, n700, n701, n702, n703, n704, n705, n706, n707,
         n708, n709, n710, n711, n712, n713, n714, n715, n716, n717, n718,
         n719, n720, n721, n722, n723, n724, n725, n726, n727, n728, n729,
         n730, n731, n732, n733, n734, n735, n736, n737, n738, n739, n740,
         n741, n742, n743, n744, n745, n746, n747, n748, n749, n750, n751,
         n752, n753, n754, n755, n756, n757, n758, n759, n760, n761, n762,
         n763, n764, n765, n766, n767, n768, n769, n770, n771, n772, n773,
         n774, n775, n776, n777, n778, n779, n780, n781, n782, n783, n784,
         n785, n786, n787, n788, n789, n790, n791, n792, n793, n794, n795,
         n796, n797, n798, n799, n800, n801, n802, n803, n804, n805, n806,
         n807, n808, n809, n810, n811, n812, n813, n814, n815, n816, n817,
         n818, n819, n820, n821, n822, n823, n824, n825, n826, n827, n828,
         n829, n830, n831, n832, n833, n834, n835, n836, n837, n838, n839,
         n840, n841, n842, n843;
  wire   [4:3] counter;
  wire   [10:0] tempCost;
  wire   [4:0] counter_seq;
  wire   [2:0] next_state;
  wire   [4:2] \add_172_S2/carry ;
  wire   [4:2] \add_161_S2/carry ;

  JAM_DW01_add_0 add_61_S2 ( .A(tempCost), .B({1'b0, 1'b0, 1'b0, 1'b0, Cost}), 
        .CI(1'b0), .SUM({N188, N187, N186, N185, N184, N183, N182, N181, N180, 
        N179, N178}) );
  DFFRX1 \counter_reg[0]  ( .D(n424), .CK(CLK), .RN(n522), .Q(N140), .QN(n287)
         );
  DFFRX1 \step2_min_reg[0]  ( .D(n391), .CK(CLK), .RN(n526), .Q(\step2_min[0] ) );
  DFFRX1 \change_idx2_reg[2]  ( .D(n380), .CK(CLK), .RN(n524), .Q(N151), .QN(
        n326) );
  DFFRX1 \tempCost_reg[9]  ( .D(n410), .CK(CLK), .RN(n523), .Q(tempCost[9]), 
        .QN(n462) );
  DFFRX1 \change_idx2_reg[4]  ( .D(n394), .CK(CLK), .RN(n523), .Q(n838), .QN(
        n458) );
  DFFRX1 \change_idx2_reg[3]  ( .D(n377), .CK(CLK), .RN(n524), .Q(n835), .QN(
        n454) );
  DFFRX1 \tempCost_reg[8]  ( .D(n411), .CK(CLK), .RN(n523), .Q(tempCost[8]), 
        .QN(n463) );
  DFFRX1 \change_idx_reg[4]  ( .D(n376), .CK(CLK), .RN(n523), .Q(n836) );
  DFFRX1 \change_idx_reg[3]  ( .D(n378), .CK(CLK), .RN(n524), .Q(n837) );
  DFFRX1 \tempCost_reg[7]  ( .D(n412), .CK(CLK), .RN(n523), .Q(tempCost[7]), 
        .QN(n467) );
  DFFRX1 \counter_seq_reg[4]  ( .D(n392), .CK(CLK), .RN(n523), .Q(
        counter_seq[4]), .QN(n350) );
  DFFRX1 \counter_reg[3]  ( .D(n421), .CK(CLK), .RN(n522), .Q(counter[3]), 
        .QN(n290) );
  DFFRX1 \counter_reg[4]  ( .D(n425), .CK(CLK), .RN(n522), .Q(counter[4]), 
        .QN(n286) );
  DFFRX1 \tempCost_reg[5]  ( .D(n414), .CK(CLK), .RN(n523), .Q(tempCost[5]), 
        .QN(n469) );
  DFFRX1 \tempCost_reg[6]  ( .D(n413), .CK(CLK), .RN(n523), .Q(tempCost[6]), 
        .QN(n470) );
  DFFSX1 \job_sequence_reg[7][0]  ( .D(n357), .CK(CLK), .SN(n527), .Q(
        \job_sequence[7][0] ), .QN(n331) );
  DFFRX1 \job_sequence_reg[6][0]  ( .D(n360), .CK(CLK), .RN(n525), .Q(
        \job_sequence[6][0] ), .QN(n334) );
  DFFSX1 \job_sequence_reg[3][0]  ( .D(n369), .CK(CLK), .SN(n526), .Q(
        \job_sequence[3][0] ), .QN(n340) );
  DFFRX1 \job_sequence_reg[2][0]  ( .D(n372), .CK(CLK), .RN(n525), .Q(
        \job_sequence[2][0] ), .QN(n343) );
  DFFRX1 \tempCost_reg[3]  ( .D(n416), .CK(CLK), .RN(n523), .Q(tempCost[3]), 
        .QN(n466) );
  DFFSX1 \job_sequence_reg[6][1]  ( .D(n359), .CK(CLK), .SN(n526), .Q(
        \job_sequence[6][1] ), .QN(n333) );
  DFFSX1 \job_sequence_reg[7][1]  ( .D(n356), .CK(CLK), .SN(n527), .Q(
        \job_sequence[7][1] ), .QN(n330) );
  DFFSX1 \job_sequence_reg[6][2]  ( .D(n358), .CK(CLK), .SN(n526), .Q(
        \job_sequence[6][2] ), .QN(n332) );
  DFFSX1 \job_sequence_reg[7][2]  ( .D(n393), .CK(CLK), .SN(n527), .Q(
        \job_sequence[7][2] ), .QN(n329) );
  DFFSX1 \job_sequence_reg[1][0]  ( .D(n375), .CK(CLK), .SN(n527), .Q(
        \job_sequence[1][0] ), .QN(n346) );
  DFFSX1 \job_sequence_reg[2][1]  ( .D(n371), .CK(CLK), .SN(n526), .Q(
        \job_sequence[2][1] ), .QN(n342) );
  DFFRX1 \curr_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(n522), .Q(n840) );
  DFFSX1 \job_sequence_reg[5][0]  ( .D(n363), .CK(CLK), .SN(n526), .Q(
        \job_sequence[5][0] ), .QN(n311) );
  DFFRX1 \job_sequence_reg[2][2]  ( .D(n370), .CK(CLK), .RN(n525), .Q(
        \job_sequence[2][2] ), .QN(n341) );
  DFFRX1 \counter_seq_reg[3]  ( .D(n379), .CK(CLK), .RN(n524), .Q(
        counter_seq[3]), .QN(n351) );
  DFFRX1 step2_reg ( .D(n395), .CK(CLK), .RN(n523), .Q(step2), .QN(n455) );
  DFFSX1 \job_sequence_reg[3][1]  ( .D(n368), .CK(CLK), .SN(n526), .Q(
        \job_sequence[3][1] ), .QN(n339) );
  DFFRX1 \job_sequence_reg[3][2]  ( .D(n367), .CK(CLK), .RN(n525), .Q(
        \job_sequence[3][2] ), .QN(n338) );
  DFFRX1 \job_sequence_reg[0][0]  ( .D(n323), .CK(CLK), .RN(n525), .Q(
        \job_sequence[0][0] ), .QN(n308) );
  DFFRX1 \job_sequence_reg[4][0]  ( .D(n366), .CK(CLK), .RN(n525), .Q(
        \job_sequence[4][0] ), .QN(n337) );
  DFFRX1 \tempCost_reg[4]  ( .D(n415), .CK(CLK), .RN(n523), .Q(tempCost[4]), 
        .QN(n471) );
  DFFSX1 \job_sequence_reg[5][2]  ( .D(n361), .CK(CLK), .SN(n526), .Q(
        \job_sequence[5][2] ), .QN(n313) );
  DFFRX1 \job_sequence_reg[1][1]  ( .D(n374), .CK(CLK), .RN(n524), .Q(
        \job_sequence[1][1] ), .QN(n345) );
  DFFRX1 \job_sequence_reg[5][1]  ( .D(n362), .CK(CLK), .RN(n525), .Q(
        \job_sequence[5][1] ), .QN(n312) );
  DFFSX1 \job_sequence_reg[4][2]  ( .D(n364), .CK(CLK), .SN(n526), .Q(
        \job_sequence[4][2] ), .QN(n335) );
  DFFRX1 \job_sequence_reg[0][1]  ( .D(n324), .CK(CLK), .RN(n525), .Q(
        \job_sequence[0][1] ), .QN(n309) );
  DFFRX1 \job_sequence_reg[4][1]  ( .D(n365), .CK(CLK), .RN(n525), .Q(
        \job_sequence[4][1] ), .QN(n336) );
  DFFRX1 \tempCost_reg[2]  ( .D(n417), .CK(CLK), .RN(n522), .Q(tempCost[2]), 
        .QN(n465) );
  DFFRX1 \job_sequence_reg[1][2]  ( .D(n373), .CK(CLK), .RN(n524), .Q(
        \job_sequence[1][2] ), .QN(n344) );
  DFFRX1 \job_sequence_reg[0][2]  ( .D(n325), .CK(CLK), .RN(n524), .Q(
        \job_sequence[0][2] ), .QN(n310) );
  DFFRX1 \tempCost_reg[1]  ( .D(n418), .CK(CLK), .RN(n522), .Q(tempCost[1]), 
        .QN(n468) );
  DFFRX1 \tempCost_reg[0]  ( .D(n419), .CK(CLK), .RN(n522), .Q(tempCost[0]), 
        .QN(n464) );
  DFFRX1 \curr_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(n522), .Q(n842), .QN(n457) );
  DFFRX1 \curr_state_reg[0]  ( .D(next_state[1]), .CK(CLK), .RN(n525), .Q(n841) );
  DFFRX1 \tempCost_reg[10]  ( .D(n420), .CK(CLK), .RN(n522), .Q(tempCost[10]), 
        .QN(n629) );
  DFFRX1 \counter_reg[1]  ( .D(n423), .CK(CLK), .RN(n522), .Q(N141), .QN(n288)
         );
  DFFSX1 \MinCost_reg[6]  ( .D(n403), .CK(CLK), .SN(n527), .Q(n847), .QN(n298)
         );
  DFFSX1 \MinCost_reg[8]  ( .D(n401), .CK(CLK), .SN(n472), .Q(n845), .QN(n300)
         );
  DFFSX1 \MinCost_reg[1]  ( .D(n408), .CK(CLK), .SN(n527), .Q(n851), .QN(n293)
         );
  DFFSX1 \MinCost_reg[3]  ( .D(n406), .CK(CLK), .SN(n527), .QN(n295) );
  DFFSX1 \MinCost_reg[2]  ( .D(n407), .CK(CLK), .SN(n527), .Q(n850), .QN(n294)
         );
  DFFRX1 \MatchCount_reg[3]  ( .D(n396), .CK(CLK), .RN(n526), .Q(n844), .QN(
        n319) );
  DFFRX1 Valid_reg ( .D(n317), .CK(CLK), .RN(n522), .Q(n853), .QN(n316) );
  DFFSX1 \MinCost_reg[7]  ( .D(n402), .CK(CLK), .SN(n527), .Q(n846), .QN(n299)
         );
  DFFSX1 \MinCost_reg[0]  ( .D(n409), .CK(CLK), .SN(n527), .Q(n852), .QN(n292)
         );
  DFFSX1 \MinCost_reg[9]  ( .D(n400), .CK(CLK), .SN(n529), .QN(n301) );
  DFFSX1 \MinCost_reg[4]  ( .D(n405), .CK(CLK), .SN(n527), .Q(n849), .QN(n296)
         );
  DFFSX1 \MinCost_reg[5]  ( .D(n404), .CK(CLK), .SN(n527), .Q(n848), .QN(n297)
         );
  DFFRX2 \change_idx_reg[0]  ( .D(n387), .CK(CLK), .RN(n472), .Q(N143), .QN(
        n512) );
  DFFRXL \step2_min_reg[1]  ( .D(n390), .CK(CLK), .RN(n843), .Q(n680) );
  DFFRXL \step2_min_reg[2]  ( .D(n389), .CK(CLK), .RN(n843), .QN(n839) );
  DFFRX2 \counter_seq_reg[0]  ( .D(n388), .CK(CLK), .RN(n843), .Q(N146), .QN(
        N521) );
  DFFRX2 \change_idx2_reg[1]  ( .D(n383), .CK(CLK), .RN(n843), .Q(N150), .QN(
        n602) );
  DFFRX2 \change_idx_reg[2]  ( .D(n381), .CK(CLK), .RN(n843), .Q(N145), .QN(
        n567) );
  DFFRX2 \change_idx_reg[1]  ( .D(n384), .CK(CLK), .RN(n843), .Q(N144), .QN(
        n511) );
  DFFSX2 \counter_seq_reg[1]  ( .D(n385), .CK(CLK), .SN(n843), .Q(N147), .QN(
        n585) );
  DFFSX2 \counter_seq_reg[2]  ( .D(n382), .CK(CLK), .SN(n843), .Q(N148), .QN(
        n584) );
  DFFRX2 \change_idx2_reg[0]  ( .D(n386), .CK(CLK), .RN(n523), .Q(N149), .QN(
        n603) );
  DFFRX2 \counter_reg[2]  ( .D(n422), .CK(CLK), .RN(n522), .Q(N142), .QN(n549)
         );
  DFFRX1 \MatchCount_reg[2]  ( .D(n397), .CK(CLK), .RN(n843), .QN(n456) );
  DFFRX1 \MatchCount_reg[0]  ( .D(n399), .CK(CLK), .RN(n843), .QN(n322) );
  DFFRX1 \MatchCount_reg[1]  ( .D(n398), .CK(CLK), .RN(n843), .QN(n453) );
  INVX12 U364 ( .A(n514), .Y(J[0]) );
  OR2X1 U365 ( .A(n515), .B(n650), .Y(n514) );
  INVX12 U366 ( .A(n516), .Y(J[1]) );
  OR2X1 U367 ( .A(n517), .B(n650), .Y(n516) );
  INVX12 U368 ( .A(n518), .Y(J[2]) );
  OR2X1 U369 ( .A(n519), .B(n650), .Y(n518) );
  OAI2BB2XL U370 ( .B0(n645), .B1(n629), .A0N(N188), .A1N(n646), .Y(n420) );
  AND2X2 U371 ( .A(n645), .B(n521), .Y(n646) );
  OA21XL U372 ( .A0(N145), .A1(n502), .B0(n501), .Y(n459) );
  OA21XL U373 ( .A0(N145), .A1(n494), .B0(n493), .Y(n460) );
  OA21XL U374 ( .A0(N145), .A1(n496), .B0(n495), .Y(n461) );
  INVX12 U375 ( .A(n550), .Y(W[0]) );
  NOR2X2 U376 ( .A(n602), .B(n603), .Y(n598) );
  NAND2XL U377 ( .A(n603), .B(n602), .Y(n833) );
  NAND3BXL U378 ( .AN(n602), .B(n794), .C(n603), .Y(n822) );
  INVXL U379 ( .A(RST), .Y(n472) );
  CLKBUFX2 U380 ( .A(n843), .Y(n529) );
  CLKBUFX2 U381 ( .A(n843), .Y(n528) );
  INVX3 U382 ( .A(RST), .Y(n843) );
  INVX12 U383 ( .A(n322), .Y(MatchCount[0]) );
  INVXL U384 ( .A(N143), .Y(n474) );
  INVX3 U385 ( .A(n474), .Y(n475) );
  INVX16 U386 ( .A(n456), .Y(MatchCount[2]) );
  INVX16 U387 ( .A(n453), .Y(MatchCount[1]) );
  NOR4X2 U388 ( .A(n684), .B(n663), .C(n682), .D(n641), .Y(n666) );
  OAI22X1 U389 ( .A0(n601), .A1(n326), .B0(N151), .B1(n600), .Y(N191) );
  NOR3BX1 U390 ( .AN(n794), .B(n602), .C(n603), .Y(n671) );
  OAI31X1 U391 ( .A0(n684), .A1(n641), .A2(n663), .B0(n685), .Y(n678) );
  BUFX12 U392 ( .A(n848), .Y(MinCost[5]) );
  OAI221X1 U393 ( .A0(n728), .A1(n725), .B0(n729), .B1(n730), .C0(n731), .Y(
        n724) );
  NAND2X2 U394 ( .A(n521), .B(n641), .Y(n728) );
  OAI22X1 U395 ( .A0(n584), .A1(n575), .B0(N148), .B1(n574), .Y(N576) );
  OAI22X1 U396 ( .A0(n566), .A1(n567), .B0(N145), .B1(n565), .Y(N156) );
  BUFX12 U397 ( .A(n849), .Y(MinCost[4]) );
  AOI221X1 U398 ( .A0(n749), .A1(n743), .B0(n732), .B1(n750), .C0(n751), .Y(
        n737) );
  OAI22X1 U399 ( .A0(n326), .A1(n593), .B0(N151), .B1(n592), .Y(N192) );
  INVX12 U400 ( .A(n301), .Y(MinCost[9]) );
  OAI22X1 U401 ( .A0(n583), .A1(n584), .B0(N148), .B1(n582), .Y(N575) );
  OAI22X1 U402 ( .A0(n567), .A1(n554), .B0(N145), .B1(n553), .Y(N158) );
  BUFX12 U403 ( .A(n852), .Y(MinCost[0]) );
  BUFX12 U404 ( .A(n846), .Y(MinCost[7]) );
  OAI21X1 U405 ( .A0(n735), .A1(n833), .B0(n832), .Y(n830) );
  OAI33X4 U406 ( .A0(n734), .A1(n475), .A2(n770), .B0(n833), .B1(n728), .B2(
        n735), .Y(n832) );
  OAI211X4 U407 ( .A0(n728), .A1(n822), .B0(n823), .C0(n824), .Y(n812) );
  BUFX12 U408 ( .A(n853), .Y(Valid) );
  BUFX12 U409 ( .A(n844), .Y(MatchCount[3]) );
  BUFX12 U410 ( .A(n850), .Y(MinCost[2]) );
  AOI211X4 U411 ( .A0(n455), .A1(n692), .B0(n693), .C0(n663), .Y(n675) );
  OAI22X1 U412 ( .A0(n326), .A1(n589), .B0(N151), .B1(n588), .Y(N193) );
  INVX12 U413 ( .A(n295), .Y(MinCost[3]) );
  INVX12 U414 ( .A(n293), .Y(MinCost[1]) );
  INVX12 U415 ( .A(n300), .Y(MinCost[8]) );
  BUFX12 U416 ( .A(n847), .Y(MinCost[6]) );
  NOR3X2 U417 ( .A(n475), .B(n662), .C(n734), .Y(n739) );
  INVX12 U418 ( .A(n288), .Y(W[1]) );
  NOR2X1 U419 ( .A(N140), .B(N141), .Y(n542) );
  NOR2X1 U420 ( .A(n550), .B(N141), .Y(n543) );
  OAI22X2 U421 ( .A0(n567), .A1(n558), .B0(N145), .B1(n557), .Y(N157) );
  INVX12 U422 ( .A(n549), .Y(W[2]) );
  OA22XL U423 ( .A0(n549), .A1(n536), .B0(N142), .B1(n535), .Y(n515) );
  NAND2XL U424 ( .A(n648), .B(n724), .Y(n721) );
  INVXL U425 ( .A(n728), .Y(n749) );
  INVX1 U426 ( .A(N576), .Y(n699) );
  MXI2XL U427 ( .A(n680), .B(N576), .S0(n678), .Y(n679) );
  INVXL U428 ( .A(N575), .Y(n683) );
  NAND2XL U429 ( .A(N575), .B(n703), .Y(n700) );
  NAND2XL U430 ( .A(n682), .B(n678), .Y(n677) );
  OR2XL U431 ( .A(n713), .B(N575), .Y(n706) );
  INVXL U432 ( .A(N156), .Y(n703) );
  AOI32XL U433 ( .A0(N576), .A1(n706), .A2(n705), .B0(n713), .B1(N575), .Y(
        n638) );
  NAND3XL U434 ( .A(n732), .B(n475), .C(n733), .Y(n731) );
  NAND2XL U435 ( .A(n521), .B(n724), .Y(n722) );
  NAND3XL U436 ( .A(n812), .B(n822), .C(n521), .Y(n816) );
  NAND3BXL U437 ( .AN(n822), .B(n521), .C(n812), .Y(n811) );
  AND2XL U438 ( .A(n812), .B(n648), .Y(n814) );
  AOI32XL U439 ( .A0(N144), .A1(n475), .A2(n787), .B0(n671), .B1(n749), .Y(
        n827) );
  NAND3BXL U440 ( .AN(n735), .B(n832), .C(n793), .Y(n831) );
  INVXL U441 ( .A(N157), .Y(n817) );
  INVXL U442 ( .A(N158), .Y(n810) );
  INVXL U443 ( .A(N193), .Y(n815) );
  INVXL U444 ( .A(N192), .Y(n819) );
  INVXL U445 ( .A(N191), .Y(n821) );
  NAND2BXL U446 ( .AN(tempCost[5]), .B(n848), .Y(n609) );
  AOI32XL U447 ( .A0(n628), .A1(n618), .A2(n608), .B0(n849), .B1(n471), .Y(
        n610) );
  NAND3XL U448 ( .A(n700), .B(n699), .C(N157), .Y(n696) );
  MXI2XL U449 ( .A(n839), .B(N156), .S0(n683), .Y(n695) );
  MXI2XL U450 ( .A(\step2_min[0] ), .B(N577), .S0(n678), .Y(n676) );
  MX2XL U451 ( .A(n839), .B(n683), .S0(n678), .Y(n681) );
  NOR2XL U452 ( .A(n471), .B(n849), .Y(n621) );
  AOI22XL U453 ( .A0(N528), .A1(n675), .B0(N522), .B1(n673), .Y(n688) );
  AOI22XL U454 ( .A0(N529), .A1(n675), .B0(N523), .B1(n673), .Y(n689) );
  MXI2XL U455 ( .A(n454), .B(n351), .S0(n666), .Y(n377) );
  MXI2XL U456 ( .A(n326), .B(n584), .S0(n666), .Y(n380) );
  MXI2XL U457 ( .A(n603), .B(N521), .S0(n666), .Y(n386) );
  MXI2XL U458 ( .A(n458), .B(n350), .S0(n666), .Y(n394) );
  MXI2XL U459 ( .A(N157), .B(N192), .S0(n725), .Y(n726) );
  MXI2XL U460 ( .A(N156), .B(N191), .S0(n725), .Y(n727) );
  NOR2BXL U461 ( .AN(tempCost[5]), .B(n848), .Y(n620) );
  MXI2XL U462 ( .A(n602), .B(n585), .S0(n666), .Y(n383) );
  NOR2XL U463 ( .A(n470), .B(n847), .Y(n622) );
  MXI2XL U464 ( .A(N158), .B(N193), .S0(n725), .Y(n723) );
  MXI2XL U465 ( .A(N193), .B(N158), .S0(n671), .Y(n825) );
  MXI2XL U466 ( .A(N192), .B(N157), .S0(n671), .Y(n826) );
  MXI2XL U467 ( .A(N191), .B(N156), .S0(n671), .Y(n669) );
  NOR2XL U468 ( .A(n467), .B(n846), .Y(n616) );
  NOR2BXL U469 ( .AN(tempCost[8]), .B(n845), .Y(n615) );
  NOR2BXL U470 ( .AN(tempCost[0]), .B(n852), .Y(n604) );
  MXI2XL U471 ( .A(n744), .B(n342), .S0(n737), .Y(n371) );
  AOI211XL U472 ( .A0(n739), .A1(n765), .B0(n766), .C0(n767), .Y(n764) );
  MXI2XL U473 ( .A(n746), .B(n747), .S0(n761), .Y(n767) );
  MXI2XL U474 ( .A(n748), .B(n341), .S0(n737), .Y(n370) );
  MXI2XL U475 ( .A(n754), .B(n755), .S0(n743), .Y(n753) );
  MXI2XL U476 ( .A(n736), .B(n343), .S0(n737), .Y(n372) );
  MXI2XL U477 ( .A(n741), .B(n742), .S0(n743), .Y(n740) );
  AOI211XL U478 ( .A0(n738), .A1(n758), .B0(n777), .C0(n778), .Y(n775) );
  AOI211XL U479 ( .A0(n739), .A1(n772), .B0(n773), .C0(n774), .Y(n768) );
  MXI2XL U480 ( .A(n754), .B(n755), .S0(n761), .Y(n774) );
  AOI211XL U481 ( .A0(n738), .A1(n772), .B0(n791), .C0(n792), .Y(n784) );
  AOI211XL U482 ( .A0(n739), .A1(n758), .B0(n759), .C0(n760), .Y(n756) );
  MXI2XL U483 ( .A(n741), .B(n742), .S0(n761), .Y(n760) );
  AOI211XL U484 ( .A0(n797), .A1(\job_sequence[7][0] ), .B0(n798), .C0(n799), 
        .Y(n795) );
  NAND3XL U485 ( .A(n511), .B(n475), .C(n787), .Y(n806) );
  OAI211XL U486 ( .A0(n828), .A1(n829), .B0(n648), .C0(n790), .Y(n824) );
  NAND3XL U487 ( .A(N144), .B(n475), .C(n567), .Y(n771) );
  AND4XL U488 ( .A(n626), .B(n627), .C(n625), .D(n624), .Y(N328) );
  NAND3XL U489 ( .A(n619), .B(n629), .C(n618), .Y(n623) );
  AO21XL U490 ( .A0(n468), .A1(n606), .B0(n851), .Y(n605) );
  NOR2BXL U491 ( .AN(n852), .B(tempCost[0]), .Y(n606) );
  NAND3XL U492 ( .A(MatchCount[2]), .B(MatchCount[1]), .C(n656), .Y(n660) );
  NOR2XL U493 ( .A(N327), .B(n322), .Y(n652) );
  MXI2XL U494 ( .A(n465), .B(n294), .S0(n520), .Y(n407) );
  OR2XL U495 ( .A(n662), .B(n661), .Y(n492) );
  NAND2X1 U496 ( .A(n492), .B(n520), .Y(n653) );
  NAND2X2 U497 ( .A(n840), .B(n691), .Y(n662) );
  NOR3BX1 U498 ( .AN(n653), .B(n661), .C(n322), .Y(n656) );
  CLKBUFX3 U499 ( .A(n529), .Y(n527) );
  CLKBUFX3 U500 ( .A(n529), .Y(n526) );
  CLKBUFX3 U501 ( .A(n528), .Y(n524) );
  CLKBUFX3 U502 ( .A(n472), .Y(n523) );
  CLKBUFX3 U503 ( .A(n528), .Y(n525) );
  CLKBUFX3 U504 ( .A(n651), .Y(n520) );
  NAND2XL U505 ( .A(N327), .B(n648), .Y(n651) );
  CLKBUFX3 U506 ( .A(n528), .Y(n522) );
  CLKINVX1 U507 ( .A(n621), .Y(n628) );
  AO21X2 U508 ( .A0(n521), .A1(n647), .B0(n648), .Y(n645) );
  NAND2X2 U509 ( .A(n841), .B(n457), .Y(n639) );
  CLKBUFX3 U510 ( .A(n644), .Y(n521) );
  NOR3X1 U511 ( .A(n841), .B(n840), .C(n842), .Y(n644) );
  NOR3X2 U512 ( .A(n662), .B(n512), .C(n734), .Y(n738) );
  ADDHXL U513 ( .A(W[2]), .B(\add_161_S2/carry [2]), .CO(\add_161_S2/carry [3]), .S(N490) );
  ADDHXL U514 ( .A(counter[3]), .B(\add_161_S2/carry [3]), .CO(
        \add_161_S2/carry [4]), .S(N491) );
  ADDHXL U515 ( .A(N148), .B(\add_172_S2/carry [2]), .CO(\add_172_S2/carry [3]), .S(N529) );
  ADDHXL U516 ( .A(N147), .B(N146), .CO(\add_172_S2/carry [2]), .S(N528) );
  ADDHXL U517 ( .A(counter_seq[3]), .B(\add_172_S2/carry [3]), .CO(
        \add_172_S2/carry [4]), .S(N530) );
  OA22X1 U518 ( .A0(\job_sequence[4][0] ), .A1(n511), .B0(\job_sequence[2][0] ), .B1(N144), .Y(n503) );
  NOR2X1 U519 ( .A(n475), .B(N144), .Y(n498) );
  NOR2X1 U520 ( .A(n511), .B(n475), .Y(n497) );
  AOI222XL U521 ( .A0(n475), .A1(n503), .B0(\job_sequence[1][0] ), .B1(n498), 
        .C0(n497), .C1(\job_sequence[3][0] ), .Y(n494) );
  AND2X1 U522 ( .A(N145), .B(n512), .Y(n500) );
  AND2X1 U523 ( .A(N145), .B(n475), .Y(n499) );
  AOI22X1 U524 ( .A0(n500), .A1(\job_sequence[5][0] ), .B0(
        \job_sequence[6][0] ), .B1(n499), .Y(n493) );
  OA22X1 U525 ( .A0(\job_sequence[4][1] ), .A1(n511), .B0(\job_sequence[2][1] ), .B1(N144), .Y(n505) );
  AOI222XL U526 ( .A0(n475), .A1(n505), .B0(\job_sequence[1][1] ), .B1(n498), 
        .C0(n497), .C1(\job_sequence[3][1] ), .Y(n496) );
  AOI22X1 U527 ( .A0(n500), .A1(\job_sequence[5][1] ), .B0(
        \job_sequence[6][1] ), .B1(n499), .Y(n495) );
  OA22X1 U528 ( .A0(\job_sequence[4][2] ), .A1(n511), .B0(\job_sequence[2][2] ), .B1(N144), .Y(n509) );
  AOI222XL U529 ( .A0(n475), .A1(n509), .B0(\job_sequence[1][2] ), .B1(n498), 
        .C0(n497), .C1(\job_sequence[3][2] ), .Y(n502) );
  AOI22X1 U530 ( .A0(n500), .A1(\job_sequence[5][2] ), .B0(
        \job_sequence[6][2] ), .B1(n499), .Y(n501) );
  NOR2X1 U531 ( .A(n512), .B(N144), .Y(n508) );
  NOR2X1 U532 ( .A(n512), .B(n511), .Y(n507) );
  AOI222XL U533 ( .A0(n503), .A1(n512), .B0(\job_sequence[3][0] ), .B1(n508), 
        .C0(\job_sequence[5][0] ), .C1(n507), .Y(n504) );
  OAI2BB2XL U534 ( .B0(N145), .B1(n504), .A0N(\job_sequence[7][0] ), .A1N(N145), .Y(N381) );
  AOI222XL U535 ( .A0(n505), .A1(n512), .B0(\job_sequence[3][1] ), .B1(n508), 
        .C0(\job_sequence[5][1] ), .C1(n507), .Y(n506) );
  OAI2BB2XL U536 ( .B0(N145), .B1(n506), .A0N(\job_sequence[7][1] ), .A1N(N145), .Y(N382) );
  AOI222XL U537 ( .A0(n509), .A1(n512), .B0(\job_sequence[3][2] ), .B1(n508), 
        .C0(\job_sequence[5][2] ), .C1(n507), .Y(n510) );
  OAI2BB2XL U538 ( .B0(N145), .B1(n510), .A0N(\job_sequence[7][2] ), .A1N(N145), .Y(N383) );
  CLKINVX1 U539 ( .A(N140), .Y(n550) );
  ADDHXL U540 ( .A(W[1]), .B(W[0]), .CO(\add_161_S2/carry [2]), .S(N489) );
  OA22XL U541 ( .A0(n549), .A1(n540), .B0(N142), .B1(n539), .Y(n517) );
  OA22XL U542 ( .A0(n548), .A1(n549), .B0(N142), .B1(n547), .Y(n519) );
  XOR2X1 U543 ( .A(\add_161_S2/carry [4]), .B(counter[4]), .Y(N492) );
  NOR2X1 U544 ( .A(N147), .B(N146), .Y(n530) );
  AO21X1 U545 ( .A0(N146), .A1(N147), .B0(n530), .Y(N522) );
  NAND2X1 U546 ( .A(n530), .B(n584), .Y(n531) );
  OAI21XL U547 ( .A0(n530), .A1(n584), .B0(n531), .Y(N523) );
  XNOR2X1 U548 ( .A(counter_seq[3]), .B(n531), .Y(N524) );
  NOR2X1 U549 ( .A(counter_seq[3]), .B(n531), .Y(n532) );
  XOR2X1 U550 ( .A(counter_seq[4]), .B(n532), .Y(N525) );
  XOR2X1 U551 ( .A(\add_172_S2/carry [4]), .B(counter_seq[4]), .Y(N531) );
  NOR2X1 U552 ( .A(n288), .B(N140), .Y(n546) );
  NOR2X1 U553 ( .A(n288), .B(n550), .Y(n545) );
  AO22X1 U554 ( .A0(\job_sequence[5][0] ), .A1(n543), .B0(\job_sequence[4][0] ), .B1(n542), .Y(n533) );
  AOI221XL U555 ( .A0(\job_sequence[6][0] ), .A1(n546), .B0(
        \job_sequence[7][0] ), .B1(n545), .C0(n533), .Y(n536) );
  AO22X1 U556 ( .A0(\job_sequence[1][0] ), .A1(n543), .B0(\job_sequence[0][0] ), .B1(n542), .Y(n534) );
  AOI221XL U557 ( .A0(\job_sequence[2][0] ), .A1(n546), .B0(
        \job_sequence[3][0] ), .B1(n545), .C0(n534), .Y(n535) );
  AO22X1 U558 ( .A0(\job_sequence[5][1] ), .A1(n543), .B0(\job_sequence[4][1] ), .B1(n542), .Y(n537) );
  AOI221XL U559 ( .A0(\job_sequence[6][1] ), .A1(n546), .B0(
        \job_sequence[7][1] ), .B1(n545), .C0(n537), .Y(n540) );
  AO22X1 U560 ( .A0(\job_sequence[1][1] ), .A1(n543), .B0(\job_sequence[0][1] ), .B1(n542), .Y(n538) );
  AOI221XL U561 ( .A0(\job_sequence[2][1] ), .A1(n546), .B0(
        \job_sequence[3][1] ), .B1(n545), .C0(n538), .Y(n539) );
  AO22X1 U562 ( .A0(\job_sequence[5][2] ), .A1(n543), .B0(\job_sequence[4][2] ), .B1(n542), .Y(n541) );
  AOI221XL U563 ( .A0(\job_sequence[6][2] ), .A1(n546), .B0(
        \job_sequence[7][2] ), .B1(n545), .C0(n541), .Y(n548) );
  AO22X1 U564 ( .A0(\job_sequence[1][2] ), .A1(n543), .B0(\job_sequence[0][2] ), .B1(n542), .Y(n544) );
  AOI221XL U565 ( .A0(\job_sequence[2][2] ), .A1(n546), .B0(
        \job_sequence[3][2] ), .B1(n545), .C0(n544), .Y(n547) );
  NOR2X1 U566 ( .A(n511), .B(n475), .Y(n564) );
  NOR2X1 U567 ( .A(n511), .B(n512), .Y(n563) );
  NOR2X1 U568 ( .A(n512), .B(N144), .Y(n561) );
  NOR2X1 U569 ( .A(n475), .B(N144), .Y(n560) );
  AO22X1 U570 ( .A0(\job_sequence[5][0] ), .A1(n561), .B0(\job_sequence[4][0] ), .B1(n560), .Y(n551) );
  AOI221XL U571 ( .A0(\job_sequence[6][0] ), .A1(n564), .B0(
        \job_sequence[7][0] ), .B1(n563), .C0(n551), .Y(n554) );
  AO22X1 U572 ( .A0(\job_sequence[1][0] ), .A1(n561), .B0(\job_sequence[0][0] ), .B1(n560), .Y(n552) );
  AOI221XL U573 ( .A0(\job_sequence[2][0] ), .A1(n564), .B0(
        \job_sequence[3][0] ), .B1(n563), .C0(n552), .Y(n553) );
  AO22X1 U574 ( .A0(\job_sequence[5][1] ), .A1(n561), .B0(\job_sequence[4][1] ), .B1(n560), .Y(n555) );
  AOI221XL U575 ( .A0(\job_sequence[6][1] ), .A1(n564), .B0(
        \job_sequence[7][1] ), .B1(n563), .C0(n555), .Y(n558) );
  AO22X1 U576 ( .A0(\job_sequence[1][1] ), .A1(n561), .B0(\job_sequence[0][1] ), .B1(n560), .Y(n556) );
  AOI221XL U577 ( .A0(\job_sequence[2][1] ), .A1(n564), .B0(
        \job_sequence[3][1] ), .B1(n563), .C0(n556), .Y(n557) );
  AO22X1 U578 ( .A0(\job_sequence[5][2] ), .A1(n561), .B0(\job_sequence[4][2] ), .B1(n560), .Y(n559) );
  AOI221XL U579 ( .A0(\job_sequence[6][2] ), .A1(n564), .B0(
        \job_sequence[7][2] ), .B1(n563), .C0(n559), .Y(n566) );
  AO22X1 U580 ( .A0(\job_sequence[1][2] ), .A1(n561), .B0(\job_sequence[0][2] ), .B1(n560), .Y(n562) );
  AOI221XL U581 ( .A0(\job_sequence[2][2] ), .A1(n564), .B0(
        \job_sequence[3][2] ), .B1(n563), .C0(n562), .Y(n565) );
  NOR2X1 U582 ( .A(n585), .B(N146), .Y(n581) );
  NOR2X1 U583 ( .A(n585), .B(N521), .Y(n580) );
  NOR2X1 U584 ( .A(N521), .B(N147), .Y(n578) );
  NOR2X1 U585 ( .A(N146), .B(N147), .Y(n577) );
  AO22X1 U586 ( .A0(\job_sequence[5][0] ), .A1(n578), .B0(\job_sequence[4][0] ), .B1(n577), .Y(n568) );
  AOI221XL U587 ( .A0(\job_sequence[6][0] ), .A1(n581), .B0(
        \job_sequence[7][0] ), .B1(n580), .C0(n568), .Y(n571) );
  AO22X1 U588 ( .A0(\job_sequence[1][0] ), .A1(n578), .B0(\job_sequence[0][0] ), .B1(n577), .Y(n569) );
  AOI221XL U589 ( .A0(\job_sequence[2][0] ), .A1(n581), .B0(
        \job_sequence[3][0] ), .B1(n580), .C0(n569), .Y(n570) );
  OAI22XL U590 ( .A0(n584), .A1(n571), .B0(N148), .B1(n570), .Y(N577) );
  AO22X1 U591 ( .A0(\job_sequence[5][1] ), .A1(n578), .B0(\job_sequence[4][1] ), .B1(n577), .Y(n572) );
  AOI221XL U592 ( .A0(\job_sequence[6][1] ), .A1(n581), .B0(
        \job_sequence[7][1] ), .B1(n580), .C0(n572), .Y(n575) );
  AO22X1 U593 ( .A0(\job_sequence[1][1] ), .A1(n578), .B0(\job_sequence[0][1] ), .B1(n577), .Y(n573) );
  AOI221XL U594 ( .A0(\job_sequence[2][1] ), .A1(n581), .B0(
        \job_sequence[3][1] ), .B1(n580), .C0(n573), .Y(n574) );
  AO22X1 U595 ( .A0(\job_sequence[5][2] ), .A1(n578), .B0(\job_sequence[4][2] ), .B1(n577), .Y(n576) );
  AOI221XL U596 ( .A0(\job_sequence[6][2] ), .A1(n581), .B0(
        \job_sequence[7][2] ), .B1(n580), .C0(n576), .Y(n583) );
  AO22X1 U597 ( .A0(\job_sequence[1][2] ), .A1(n578), .B0(\job_sequence[0][2] ), .B1(n577), .Y(n579) );
  AOI221XL U598 ( .A0(\job_sequence[2][2] ), .A1(n581), .B0(
        \job_sequence[3][2] ), .B1(n580), .C0(n579), .Y(n582) );
  NOR2X1 U599 ( .A(n602), .B(N149), .Y(n599) );
  NOR2X1 U600 ( .A(n603), .B(N150), .Y(n596) );
  NOR2X1 U601 ( .A(N149), .B(N150), .Y(n595) );
  AO22X1 U602 ( .A0(\job_sequence[5][0] ), .A1(n596), .B0(\job_sequence[4][0] ), .B1(n595), .Y(n586) );
  AOI221XL U603 ( .A0(\job_sequence[6][0] ), .A1(n599), .B0(
        \job_sequence[7][0] ), .B1(n598), .C0(n586), .Y(n589) );
  AO22X1 U604 ( .A0(\job_sequence[1][0] ), .A1(n596), .B0(\job_sequence[0][0] ), .B1(n595), .Y(n587) );
  AOI221XL U605 ( .A0(\job_sequence[2][0] ), .A1(n599), .B0(
        \job_sequence[3][0] ), .B1(n598), .C0(n587), .Y(n588) );
  AO22X1 U606 ( .A0(\job_sequence[5][1] ), .A1(n596), .B0(\job_sequence[4][1] ), .B1(n595), .Y(n590) );
  AOI221XL U607 ( .A0(\job_sequence[6][1] ), .A1(n599), .B0(
        \job_sequence[7][1] ), .B1(n598), .C0(n590), .Y(n593) );
  AO22X1 U608 ( .A0(\job_sequence[1][1] ), .A1(n596), .B0(\job_sequence[0][1] ), .B1(n595), .Y(n591) );
  AOI221XL U609 ( .A0(\job_sequence[2][1] ), .A1(n599), .B0(
        \job_sequence[3][1] ), .B1(n598), .C0(n591), .Y(n592) );
  AO22X1 U610 ( .A0(\job_sequence[5][2] ), .A1(n596), .B0(\job_sequence[4][2] ), .B1(n595), .Y(n594) );
  AOI221XL U611 ( .A0(\job_sequence[6][2] ), .A1(n599), .B0(
        \job_sequence[7][2] ), .B1(n598), .C0(n594), .Y(n601) );
  AO22X1 U612 ( .A0(\job_sequence[1][2] ), .A1(n596), .B0(\job_sequence[0][2] ), .B1(n595), .Y(n597) );
  AOI221XL U613 ( .A0(\job_sequence[2][2] ), .A1(n599), .B0(
        \job_sequence[3][2] ), .B1(n598), .C0(n597), .Y(n600) );
  OAI22XL U614 ( .A0(tempCost[1]), .A1(n604), .B0(n604), .B1(n293), .Y(n626)
         );
  NOR2X1 U615 ( .A(tempCost[9]), .B(n301), .Y(n614) );
  NAND2X1 U616 ( .A(tempCost[3]), .B(n295), .Y(n618) );
  NAND2X1 U617 ( .A(tempCost[2]), .B(n294), .Y(n619) );
  OAI211X1 U618 ( .A0(n606), .A1(n468), .B0(n605), .C0(n619), .Y(n607) );
  OAI221XL U619 ( .A0(tempCost[2]), .A1(n294), .B0(tempCost[3]), .B1(n295), 
        .C0(n607), .Y(n608) );
  AOI211X1 U620 ( .A0(n610), .A1(n609), .B0(n620), .C0(n622), .Y(n611) );
  AOI221XL U621 ( .A0(n846), .A1(n467), .B0(n847), .B1(n470), .C0(n611), .Y(
        n612) );
  OAI32X1 U622 ( .A0(n612), .A1(n616), .A2(n615), .B0(tempCost[8]), .B1(n300), 
        .Y(n613) );
  NAND2X1 U623 ( .A(tempCost[9]), .B(n301), .Y(n617) );
  OAI211X1 U624 ( .A0(n614), .A1(n613), .B0(n617), .C0(n629), .Y(n627) );
  NOR3BXL U625 ( .AN(n617), .B(n616), .C(n615), .Y(n625) );
  NOR4X1 U626 ( .A(n623), .B(n622), .C(n621), .D(n620), .Y(n624) );
  CLKINVX1 U627 ( .A(n627), .Y(N327) );
  AOI211X1 U628 ( .A0(n457), .A1(n630), .B0(n840), .C0(n841), .Y(next_state[2]) );
  NAND4BX1 U629 ( .AN(n631), .B(n632), .C(n584), .D(n633), .Y(n630) );
  NOR2X1 U630 ( .A(counter_seq[4]), .B(n634), .Y(n633) );
  OAI31XL U631 ( .A0(n635), .A1(n636), .A2(n637), .B0(n638), .Y(n632) );
  AOI21X1 U632 ( .A0(n639), .A1(n640), .B0(n840), .Y(next_state[1]) );
  NAND2X1 U633 ( .A(n641), .B(n457), .Y(n640) );
  OAI2BB2XL U634 ( .B0(n286), .B1(n639), .A0N(N492), .A1N(n642), .Y(n425) );
  OAI2BB2XL U635 ( .B0(n287), .B1(n639), .A0N(n287), .A1N(n642), .Y(n424) );
  OAI2BB2XL U636 ( .B0(n288), .B1(n639), .A0N(N489), .A1N(n642), .Y(n423) );
  OAI2BB2XL U637 ( .B0(n549), .B1(n639), .A0N(N490), .A1N(n642), .Y(n422) );
  OAI2BB2XL U638 ( .B0(n290), .B1(n639), .A0N(N491), .A1N(n642), .Y(n421) );
  AND2X1 U639 ( .A(n643), .B(n521), .Y(n642) );
  OAI2BB2XL U640 ( .B0(n645), .B1(n464), .A0N(N178), .A1N(n646), .Y(n419) );
  OAI2BB2XL U641 ( .B0(n645), .B1(n468), .A0N(N179), .A1N(n646), .Y(n418) );
  OAI2BB2XL U642 ( .B0(n645), .B1(n465), .A0N(N180), .A1N(n646), .Y(n417) );
  OAI2BB2XL U643 ( .B0(n645), .B1(n466), .A0N(N181), .A1N(n646), .Y(n416) );
  OAI2BB2XL U644 ( .B0(n645), .B1(n471), .A0N(N182), .A1N(n646), .Y(n415) );
  OAI2BB2XL U645 ( .B0(n645), .B1(n469), .A0N(N183), .A1N(n646), .Y(n414) );
  OAI2BB2XL U646 ( .B0(n645), .B1(n470), .A0N(N184), .A1N(n646), .Y(n413) );
  OAI2BB2XL U647 ( .B0(n645), .B1(n467), .A0N(N185), .A1N(n646), .Y(n412) );
  OAI2BB2XL U648 ( .B0(n645), .B1(n463), .A0N(N186), .A1N(n646), .Y(n411) );
  OAI2BB2XL U649 ( .B0(n645), .B1(n462), .A0N(N187), .A1N(n646), .Y(n410) );
  OAI21XL U650 ( .A0(n649), .A1(n650), .B0(n643), .Y(n647) );
  MXI2X1 U651 ( .A(n464), .B(n292), .S0(n520), .Y(n409) );
  MXI2X1 U652 ( .A(n468), .B(n293), .S0(n520), .Y(n408) );
  MXI2X1 U653 ( .A(n466), .B(n295), .S0(n520), .Y(n406) );
  MXI2X1 U654 ( .A(n471), .B(n296), .S0(n520), .Y(n405) );
  MXI2X1 U655 ( .A(n469), .B(n297), .S0(n520), .Y(n404) );
  MXI2X1 U656 ( .A(n470), .B(n298), .S0(n520), .Y(n403) );
  MXI2X1 U657 ( .A(n467), .B(n299), .S0(n520), .Y(n402) );
  MXI2X1 U658 ( .A(n463), .B(n300), .S0(n520), .Y(n401) );
  MXI2X1 U659 ( .A(n462), .B(n301), .S0(n520), .Y(n400) );
  MXI2X1 U660 ( .A(n322), .B(n652), .S0(n653), .Y(n399) );
  MXI2X1 U661 ( .A(n654), .B(n655), .S0(MatchCount[1]), .Y(n398) );
  CLKINVX1 U662 ( .A(n656), .Y(n654) );
  MXI2X1 U663 ( .A(n657), .B(n658), .S0(MatchCount[2]), .Y(n397) );
  NAND2X1 U664 ( .A(n656), .B(MatchCount[1]), .Y(n657) );
  MXI2X1 U665 ( .A(n659), .B(n660), .S0(n319), .Y(n396) );
  OA21XL U666 ( .A0(n661), .A1(MatchCount[2]), .B0(n658), .Y(n659) );
  OA21XL U667 ( .A0(n661), .A1(MatchCount[1]), .B0(n655), .Y(n658) );
  OA21XL U668 ( .A0(n661), .A1(MatchCount[0]), .B0(n653), .Y(n655) );
  NAND2BX1 U669 ( .AN(N327), .B(N328), .Y(n661) );
  MXI2X1 U670 ( .A(n663), .B(n455), .S0(n664), .Y(n395) );
  NOR2X1 U671 ( .A(n665), .B(n648), .Y(n664) );
  OAI222XL U672 ( .A0(n667), .A1(n459), .B0(n668), .B1(n669), .C0(n329), .C1(
        n670), .Y(n393) );
  CLKINVX1 U673 ( .A(n672), .Y(n392) );
  AOI222XL U674 ( .A0(N525), .A1(n673), .B0(n674), .B1(counter_seq[4]), .C0(
        N531), .C1(n675), .Y(n672) );
  NAND2X1 U675 ( .A(n676), .B(n677), .Y(n391) );
  NAND2X1 U676 ( .A(n679), .B(n677), .Y(n390) );
  NAND2X1 U677 ( .A(n681), .B(n677), .Y(n389) );
  CLKINVX1 U678 ( .A(n686), .Y(n388) );
  AOI222XL U679 ( .A0(N521), .A1(n673), .B0(n674), .B1(N146), .C0(N521), .C1(
        n675), .Y(n686) );
  MXI2X1 U680 ( .A(N521), .B(n512), .S0(n685), .Y(n387) );
  OAI211X1 U681 ( .A0(n585), .A1(n687), .B0(n639), .C0(n688), .Y(n385) );
  MXI2X1 U682 ( .A(n585), .B(n511), .S0(n685), .Y(n384) );
  OAI211X1 U683 ( .A0(n584), .A1(n687), .B0(n639), .C0(n689), .Y(n382) );
  CLKINVX1 U684 ( .A(n674), .Y(n687) );
  MXI2X1 U685 ( .A(n584), .B(n567), .S0(n685), .Y(n381) );
  CLKINVX1 U686 ( .A(n690), .Y(n379) );
  AOI222XL U687 ( .A0(N524), .A1(n673), .B0(n674), .B1(n634), .C0(N530), .C1(
        n675), .Y(n690) );
  NOR3X1 U688 ( .A(n691), .B(n673), .C(n675), .Y(n674) );
  CLKINVX1 U689 ( .A(n694), .Y(n693) );
  AND3X1 U690 ( .A(n692), .B(n455), .C(n521), .Y(n673) );
  CLKMX2X2 U691 ( .A(n837), .B(n634), .S0(n665), .Y(n378) );
  CLKINVX1 U692 ( .A(n521), .Y(n663) );
  NAND4X1 U693 ( .A(n695), .B(n696), .C(n697), .D(n698), .Y(n684) );
  OAI221XL U694 ( .A0(N157), .A1(n699), .B0(N158), .B1(n635), .C0(n700), .Y(
        n698) );
  OAI22XL U695 ( .A0(n839), .A1(N575), .B0(n701), .B1(n702), .Y(n697) );
  NOR2X1 U696 ( .A(n699), .B(n680), .Y(n702) );
  AOI211X1 U697 ( .A0(n699), .A1(n680), .B0(n635), .C0(\step2_min[0] ), .Y(
        n701) );
  CLKMX2X2 U698 ( .A(n836), .B(counter_seq[4]), .S0(n665), .Y(n376) );
  CLKINVX1 U699 ( .A(n685), .Y(n665) );
  NAND2X1 U700 ( .A(n682), .B(n521), .Y(n685) );
  NOR2X1 U701 ( .A(n692), .B(step2), .Y(n682) );
  NAND2X1 U702 ( .A(n638), .B(n704), .Y(n692) );
  AO21X1 U703 ( .A0(n635), .A1(n637), .B0(n636), .Y(n704) );
  OAI21XL U704 ( .A0(N576), .A1(n705), .B0(n706), .Y(n636) );
  CLKMX2X2 U705 ( .A(n707), .B(n708), .S0(n584), .Y(n637) );
  OAI221XL U706 ( .A0(n340), .A1(n709), .B0(n346), .B1(n631), .C0(n710), .Y(
        n708) );
  OA22X1 U707 ( .A0(n711), .A1(n337), .B0(n343), .B1(n712), .Y(n710) );
  OAI222XL U708 ( .A0(n331), .A1(n709), .B0(n334), .B1(n712), .C0(n311), .C1(
        n631), .Y(n707) );
  CLKINVX1 U709 ( .A(N577), .Y(n635) );
  MXI2X1 U710 ( .A(n714), .B(n715), .S0(N148), .Y(n705) );
  OAI222XL U711 ( .A0(n330), .A1(n709), .B0(n333), .B1(n712), .C0(n312), .C1(
        n631), .Y(n715) );
  OAI221XL U712 ( .A0(n339), .A1(n709), .B0(n345), .B1(n631), .C0(n716), .Y(
        n714) );
  OA22X1 U713 ( .A0(n711), .A1(n336), .B0(n342), .B1(n712), .Y(n716) );
  MXI2X1 U714 ( .A(n717), .B(n718), .S0(n584), .Y(n713) );
  OAI221XL U715 ( .A0(n338), .A1(n709), .B0(n344), .B1(n631), .C0(n719), .Y(
        n718) );
  OA22X1 U716 ( .A0(n711), .A1(n335), .B0(n341), .B1(n712), .Y(n719) );
  CLKINVX1 U717 ( .A(n720), .Y(n711) );
  OAI222XL U718 ( .A0(n329), .A1(n709), .B0(n332), .B1(n712), .C0(n313), .C1(
        n631), .Y(n717) );
  NAND2X1 U719 ( .A(N521), .B(n585), .Y(n631) );
  NAND2X1 U720 ( .A(n585), .B(N146), .Y(n712) );
  OR2X1 U721 ( .A(n585), .B(N146), .Y(n709) );
  OAI222XL U722 ( .A0(n331), .A1(n721), .B0(n722), .B1(n723), .C0(n346), .C1(
        n724), .Y(n375) );
  OAI222XL U723 ( .A0(n330), .A1(n721), .B0(n722), .B1(n726), .C0(n345), .C1(
        n724), .Y(n374) );
  OAI222XL U724 ( .A0(n329), .A1(n721), .B0(n722), .B1(n727), .C0(n344), .C1(
        n724), .Y(n373) );
  CLKINVX1 U725 ( .A(n734), .Y(n733) );
  NAND3BX1 U726 ( .AN(n735), .B(N149), .C(n602), .Y(n725) );
  AOI221XL U727 ( .A0(n738), .A1(\job_sequence[7][0] ), .B0(n739), .B1(
        \job_sequence[6][0] ), .C0(n740), .Y(n736) );
  AOI221XL U728 ( .A0(n738), .A1(\job_sequence[7][1] ), .B0(n739), .B1(
        \job_sequence[6][1] ), .C0(n745), .Y(n744) );
  MXI2X1 U729 ( .A(n746), .B(n747), .S0(n743), .Y(n745) );
  CLKINVX1 U730 ( .A(n752), .Y(n750) );
  AOI221XL U731 ( .A0(n738), .A1(\job_sequence[7][2] ), .B0(n739), .B1(
        \job_sequence[6][2] ), .C0(n753), .Y(n748) );
  NOR3X1 U732 ( .A(n735), .B(n602), .C(N149), .Y(n743) );
  MXI2X1 U733 ( .A(n756), .B(n340), .S0(n757), .Y(n369) );
  OAI22XL U734 ( .A0(n334), .A1(n762), .B0(n331), .B1(n763), .Y(n759) );
  MXI2X1 U735 ( .A(n764), .B(n339), .S0(n757), .Y(n368) );
  OAI22XL U736 ( .A0(n333), .A1(n762), .B0(n330), .B1(n763), .Y(n766) );
  MXI2X1 U737 ( .A(n768), .B(n338), .S0(n757), .Y(n367) );
  AOI211X1 U738 ( .A0(n749), .A1(n761), .B0(n751), .C0(n769), .Y(n757) );
  OAI22XL U739 ( .A0(n770), .A1(n771), .B0(n763), .B1(n729), .Y(n769) );
  NOR3X1 U740 ( .A(n602), .B(n603), .C(n735), .Y(n761) );
  OAI22XL U741 ( .A0(n332), .A1(n762), .B0(n329), .B1(n763), .Y(n773) );
  MXI2X1 U742 ( .A(n337), .B(n775), .S0(n776), .Y(n366) );
  MXI2X1 U743 ( .A(n742), .B(n741), .S0(n779), .Y(n778) );
  OAI22XL U744 ( .A0(n331), .A1(n780), .B0(n334), .B1(n763), .Y(n777) );
  CLKINVX1 U745 ( .A(n311), .Y(n758) );
  MXI2X1 U746 ( .A(n336), .B(n781), .S0(n776), .Y(n365) );
  AOI211X1 U747 ( .A0(n738), .A1(n765), .B0(n782), .C0(n783), .Y(n781) );
  MXI2X1 U748 ( .A(n747), .B(n746), .S0(n779), .Y(n783) );
  OAI22XL U749 ( .A0(n330), .A1(n780), .B0(n333), .B1(n763), .Y(n782) );
  CLKINVX1 U750 ( .A(n312), .Y(n765) );
  MXI2X1 U751 ( .A(n335), .B(n784), .S0(n776), .Y(n364) );
  OAI211X1 U752 ( .A0(n728), .A1(n779), .B0(n785), .C0(n786), .Y(n776) );
  NAND3X1 U753 ( .A(n511), .B(n512), .C(n787), .Y(n786) );
  OAI31XL U754 ( .A0(n788), .A1(n738), .A2(n789), .B0(n790), .Y(n785) );
  MXI2X1 U755 ( .A(n755), .B(n754), .S0(n779), .Y(n792) );
  NAND2X1 U756 ( .A(n793), .B(n794), .Y(n779) );
  OAI22XL U757 ( .A0(n329), .A1(n780), .B0(n332), .B1(n763), .Y(n791) );
  CLKINVX1 U758 ( .A(n789), .Y(n763) );
  NOR2X1 U759 ( .A(n752), .B(n662), .Y(n789) );
  CLKINVX1 U760 ( .A(n313), .Y(n772) );
  MXI2X1 U761 ( .A(n795), .B(n311), .S0(n796), .Y(n363) );
  MXI2X1 U762 ( .A(n742), .B(n741), .S0(n800), .Y(n799) );
  NAND2X1 U763 ( .A(N193), .B(n521), .Y(n741) );
  NAND2X1 U764 ( .A(N158), .B(n521), .Y(n742) );
  OAI222XL U765 ( .A0(n337), .A1(n762), .B0(n334), .B1(n780), .C0(n340), .C1(
        n730), .Y(n798) );
  MXI2X1 U766 ( .A(n801), .B(n312), .S0(n796), .Y(n362) );
  AOI211X1 U767 ( .A0(n797), .A1(\job_sequence[7][1] ), .B0(n802), .C0(n803), 
        .Y(n801) );
  MXI2X1 U768 ( .A(n747), .B(n746), .S0(n800), .Y(n803) );
  NAND2X1 U769 ( .A(N192), .B(n521), .Y(n746) );
  NAND2X1 U770 ( .A(N157), .B(n521), .Y(n747) );
  OAI222XL U771 ( .A0(n336), .A1(n762), .B0(n333), .B1(n780), .C0(n339), .C1(
        n730), .Y(n802) );
  MXI2X1 U772 ( .A(n804), .B(n313), .S0(n796), .Y(n361) );
  NOR4BBX1 U773 ( .AN(n805), .BN(n806), .C(n807), .D(n751), .Y(n796) );
  AOI2BB1X1 U774 ( .A0N(n738), .A1N(n739), .B0(n729), .Y(n751) );
  OAI22XL U775 ( .A0(n729), .A1(n780), .B0(n728), .B1(n800), .Y(n807) );
  AOI211X1 U776 ( .A0(n797), .A1(\job_sequence[7][2] ), .B0(n808), .C0(n809), 
        .Y(n804) );
  MXI2X1 U777 ( .A(n755), .B(n754), .S0(n800), .Y(n809) );
  NAND3X1 U778 ( .A(n794), .B(N149), .C(n602), .Y(n800) );
  NAND2X1 U779 ( .A(N191), .B(n521), .Y(n754) );
  NAND2X1 U780 ( .A(N156), .B(n521), .Y(n755) );
  OAI222XL U781 ( .A0(n335), .A1(n762), .B0(n332), .B1(n780), .C0(n338), .C1(
        n730), .Y(n808) );
  CLKINVX1 U782 ( .A(n739), .Y(n730) );
  CLKINVX1 U783 ( .A(n788), .Y(n780) );
  NOR2X1 U784 ( .A(n771), .B(n662), .Y(n788) );
  CLKINVX1 U785 ( .A(n738), .Y(n762) );
  OAI221XL U786 ( .A0(n810), .A1(n811), .B0(n334), .B1(n812), .C0(n813), .Y(
        n360) );
  AOI2BB2X1 U787 ( .B0(N381), .B1(n814), .A0N(n815), .A1N(n816), .Y(n813) );
  OAI221XL U788 ( .A0(n817), .A1(n811), .B0(n333), .B1(n812), .C0(n818), .Y(
        n359) );
  AOI2BB2X1 U789 ( .B0(N382), .B1(n814), .A0N(n819), .A1N(n816), .Y(n818) );
  OAI221XL U790 ( .A0(n703), .A1(n811), .B0(n332), .B1(n812), .C0(n820), .Y(
        n358) );
  AOI2BB2X1 U791 ( .B0(N383), .B1(n814), .A0N(n821), .A1N(n816), .Y(n820) );
  NAND3X1 U792 ( .A(n512), .B(N144), .C(n787), .Y(n823) );
  OAI222XL U793 ( .A0(n667), .A1(n460), .B0(n668), .B1(n825), .C0(n331), .C1(
        n670), .Y(n357) );
  OAI222XL U794 ( .A0(n667), .A1(n461), .B0(n668), .B1(n826), .C0(n330), .C1(
        n670), .Y(n356) );
  NAND2X1 U795 ( .A(n521), .B(n670), .Y(n668) );
  NAND2X1 U796 ( .A(n648), .B(n670), .Y(n667) );
  NAND3X1 U797 ( .A(n805), .B(n824), .C(n827), .Y(n670) );
  NOR3X1 U798 ( .A(n838), .B(n835), .C(n326), .Y(n794) );
  NOR2X1 U799 ( .A(n770), .B(n567), .Y(n787) );
  NAND2X1 U800 ( .A(n771), .B(n752), .Y(n829) );
  NAND3X1 U801 ( .A(n567), .B(N144), .C(n512), .Y(n752) );
  OA21XL U802 ( .A0(n475), .A1(n567), .B0(n511), .Y(n828) );
  NAND2X1 U803 ( .A(n797), .B(n790), .Y(n805) );
  NOR4X1 U804 ( .A(N144), .B(n475), .C(n662), .D(n567), .Y(n797) );
  CLKINVX1 U805 ( .A(n662), .Y(n648) );
  CLKINVX1 U806 ( .A(n639), .Y(n691) );
  OAI222XL U807 ( .A0(n821), .A1(n830), .B0(n703), .B1(n831), .C0(n310), .C1(
        n832), .Y(n325) );
  OAI222XL U808 ( .A0(n819), .A1(n830), .B0(n817), .B1(n831), .C0(n309), .C1(
        n832), .Y(n324) );
  OAI222XL U809 ( .A0(n815), .A1(n830), .B0(n810), .B1(n831), .C0(n308), .C1(
        n832), .Y(n323) );
  CLKINVX1 U810 ( .A(n833), .Y(n793) );
  CLKINVX1 U811 ( .A(n732), .Y(n770) );
  NOR2X1 U812 ( .A(n728), .B(n729), .Y(n732) );
  CLKINVX1 U813 ( .A(n790), .Y(n729) );
  NOR2X1 U814 ( .A(n836), .B(n837), .Y(n790) );
  NOR2X1 U815 ( .A(n694), .B(n643), .Y(n641) );
  NAND3BX1 U816 ( .AN(n290), .B(n649), .C(n286), .Y(n643) );
  AND3X1 U817 ( .A(n288), .B(n287), .C(n549), .Y(n649) );
  NAND4X1 U818 ( .A(n720), .B(N148), .C(n350), .D(n834), .Y(n694) );
  NOR2X1 U819 ( .A(n634), .B(n455), .Y(n834) );
  CLKINVX1 U820 ( .A(n351), .Y(n634) );
  NOR2X1 U821 ( .A(n585), .B(N521), .Y(n720) );
  NAND2X1 U822 ( .A(n511), .B(n567), .Y(n734) );
  NAND3X1 U823 ( .A(n458), .B(n454), .C(n326), .Y(n735) );
  OAI31XL U824 ( .A0(n457), .A1(n840), .A2(n841), .B0(n316), .Y(n317) );
  NAND2X1 U825 ( .A(n290), .B(n286), .Y(n650) );
endmodule

