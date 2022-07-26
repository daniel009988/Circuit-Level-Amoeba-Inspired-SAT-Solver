
    //VARIABLE CELL 1:
    assign F1[1] = ~(x[11] |x[29]) | ~(~x[29] |~x[31]) ;
    assign F0[1] =  (x[29] |~x[50]) & (x[2] |~x[8]) ;
    assign CONTRA_NEXT[1] =  ~ (~F1[1] | F0[1]) ;
    assign CONTRA_IN[1] = CONTRA[11] |CONTRA[29] |CONTRA[31] |CONTRA[50] |CONTRA[2] |CONTRA[8] ;

    //VARIABLE CELL 2:
    assign F1[2] = ~(x[9] |~x[19]) | ~(~x[1] |~x[8]) | ~(x[18] |~x[33]) ;
    assign F0[2] =  (~x[19] |x[35]) & (x[22] |~x[35]) ;
    assign CONTRA_NEXT[2] =  ~ (~F1[2] | F0[2]) ;
    assign CONTRA_IN[2] = CONTRA[9] |CONTRA[19] |CONTRA[1] |CONTRA[8] |CONTRA[18] |CONTRA[33] |CONTRA[35] |CONTRA[22] ;

    //VARIABLE CELL 3:
    assign F1[3] = ~(~x[23] |~x[49]) | ~(~x[13] |~x[49]) ;
    assign F0[3] =  (x[4] |~x[23]) & (~x[26] |x[45]) & (~x[13] |x[46]) ;
    assign CONTRA_NEXT[3] =  ~ (~F1[3] | F0[3]) ;
    assign CONTRA_IN[3] = CONTRA[23] |CONTRA[49] |CONTRA[13] |CONTRA[4] |CONTRA[26] |CONTRA[45] |CONTRA[46] ;

    //VARIABLE CELL 4:
    assign F1[4] = ~(~x[3] |~x[23]) | ~(x[7] |x[10]) ;
    assign F0[4] =  (x[27] |~x[40]) & (x[10] |~x[20]) ;
    assign CONTRA_NEXT[4] =  ~ (~F1[4] | F0[4]) ;
    assign CONTRA_IN[4] = CONTRA[3] |CONTRA[23] |CONTRA[7] |CONTRA[10] |CONTRA[27] |CONTRA[40] |CONTRA[20] ;

    //VARIABLE CELL 5:
    assign F1[5] = ~(x[20] |~x[42]) | ~(~x[7] |~x[20]) ;
    assign F0[5] =  (~x[24] |~x[42]) & (x[11] |x[50]) ;
    assign CONTRA_NEXT[5] =  ~ (~F1[5] | F0[5]) ;
    assign CONTRA_IN[5] = CONTRA[20] |CONTRA[42] |CONTRA[7] |CONTRA[24] |CONTRA[11] |CONTRA[50] ;

    //VARIABLE CELL 6:
    assign F1[6] = ~(x[42] |~x[43]) | ~(~x[32] |x[37]) ;
    assign F0[6] =  (x[25] |~x[32]) & (~x[25] |~x[48]) ;
    assign CONTRA_NEXT[6] =  ~ (~F1[6] | F0[6]) ;
    assign CONTRA_IN[6] = CONTRA[42] |CONTRA[43] |CONTRA[32] |CONTRA[37] |CONTRA[25] |CONTRA[48] ;

    //VARIABLE CELL 7:
    assign F1[7] = ~(x[4] |x[10]) | ~(~x[10] |~x[41]) ;
    assign F0[7] =  (x[5] |~x[20]) & (x[32] |x[38]) ;
    assign CONTRA_NEXT[7] =  ~ (~F1[7] | F0[7]) ;
    assign CONTRA_IN[7] = CONTRA[4] |CONTRA[10] |CONTRA[41] |CONTRA[5] |CONTRA[20] |CONTRA[32] |CONTRA[38] ;

    //VARIABLE CELL 8:
    assign F1[8] = ~(~x[12] |~x[44]) | ~(x[12] |~x[27]) ;
    assign F0[8] =  (x[31] |~x[44]) & (~x[1] |x[2]) ;
    assign CONTRA_NEXT[8] =  ~ (~F1[8] | F0[8]) ;
    assign CONTRA_IN[8] = CONTRA[12] |CONTRA[44] |CONTRA[27] |CONTRA[31] |CONTRA[1] |CONTRA[2] ;

    //VARIABLE CELL 9:
    assign F1[9] = ~(x[2] |~x[19]) | ~(x[14] |~x[38]) ;
    assign F0[9] =  (x[28] |x[48]) & (~x[25] |~x[28]) ;
    assign CONTRA_NEXT[9] =  ~ (~F1[9] | F0[9]) ;
    assign CONTRA_IN[9] = CONTRA[2] |CONTRA[19] |CONTRA[14] |CONTRA[38] |CONTRA[28] |CONTRA[48] |CONTRA[25] ;

    //VARIABLE CELL 10:
    assign F1[10] = ~(x[4] |x[7]) | ~(~x[4] |~x[20]) ;
    assign F0[10] =  (x[7] |~x[41]) & (x[41] |x[46]) ;
    assign CONTRA_NEXT[10] =  ~ (~F1[10] | F0[10]) ;
    assign CONTRA_IN[10] = CONTRA[4] |CONTRA[7] |CONTRA[20] |CONTRA[41] |CONTRA[46] ;

    //VARIABLE CELL 11:
    assign F1[11] = ~(x[1] |x[29]) | ~(~x[5] |x[50]) ;
    assign F0[11] =  (x[17] |~x[45]) & (x[39] |x[45]) & (x[15] |~x[39]) ;
    assign CONTRA_NEXT[11] =  ~ (~F1[11] | F0[11]) ;
    assign CONTRA_IN[11] = CONTRA[1] |CONTRA[29] |CONTRA[5] |CONTRA[50] |CONTRA[17] |CONTRA[45] |CONTRA[39] |CONTRA[15] ;

    //VARIABLE CELL 12:
    assign F1[12] = ~(x[8] |~x[27]) | ~(x[27] |x[40]) | ~(x[23] |~x[40]) | ~(~x[34] |x[49]) ;
    assign F0[12] =  (x[8] |~x[44]) & (x[26] |~x[34]) ;
    assign CONTRA_NEXT[12] =  ~ (~F1[12] | F0[12]) ;
    assign CONTRA_IN[12] = CONTRA[8] |CONTRA[27] |CONTRA[40] |CONTRA[23] |CONTRA[34] |CONTRA[49] |CONTRA[44] |CONTRA[26] ;

    //VARIABLE CELL 13:
    assign F1[13] = ~(~x[16] |x[18]) | ~(~x[18] |~x[38]) | ~(~x[18] |~x[31]) ;
    assign F0[13] =  (x[21] |x[28]) & (x[3] |~x[49]) & (~x[3] |x[46]) & (~x[41] |x[43]) ;
    assign CONTRA_NEXT[13] =  ~ (~F1[13] | F0[13]) ;
    assign CONTRA_IN[13] = CONTRA[16] |CONTRA[18] |CONTRA[38] |CONTRA[31] |CONTRA[21] |CONTRA[28] |CONTRA[3] |CONTRA[49] |CONTRA[46] |CONTRA[41] |CONTRA[43] ;

    //VARIABLE CELL 14:
    assign F1[14] = ~(~x[15] |~x[39]) | ~(~x[15] |~x[45]) | ~(~x[15] |~x[27]) | ~(x[9] |~x[38]) ;
    assign F0[14] =  (~x[15] |x[47]) & (~x[33] |~x[47]) ;
    assign CONTRA_NEXT[14] =  ~ (~F1[14] | F0[14]) ;
    assign CONTRA_IN[14] = CONTRA[15] |CONTRA[39] |CONTRA[45] |CONTRA[27] |CONTRA[9] |CONTRA[38] |CONTRA[47] |CONTRA[33] ;

    //VARIABLE CELL 15:
    assign F1[15] = ~(~x[11] |~x[39]) | ~(x[25] |~x[45]) ;
    assign F0[15] =  (x[14] |~x[39]) & (x[14] |~x[45]) & (x[14] |~x[27]) & (~x[14] |x[47]) ;
    assign CONTRA_NEXT[15] =  ~ (~F1[15] | F0[15]) ;
    assign CONTRA_IN[15] = CONTRA[11] |CONTRA[39] |CONTRA[25] |CONTRA[45] |CONTRA[14] |CONTRA[27] |CONTRA[47] ;

    //VARIABLE CELL 16:
    assign F1[16] = ~(x[17] |x[30]) | ~(~x[30] |x[47]) | ~(~x[30] |~x[47]) ;
    assign F0[16] =  (~x[21] |x[31]) & (~x[21] |~x[31]) & (x[21] |~x[28]) & (x[13] |x[18]) ;
    assign CONTRA_NEXT[16] =  ~ (~F1[16] | F0[16]) ;
    assign CONTRA_IN[16] = CONTRA[17] |CONTRA[30] |CONTRA[47] |CONTRA[21] |CONTRA[31] |CONTRA[28] |CONTRA[13] |CONTRA[18] ;

    //VARIABLE CELL 17:
    assign F1[17] = ~(x[16] |x[30]) | ~(~x[11] |~x[45]) | ~(x[40]) ;
    assign F0[17] =  (x[22] |x[30]) & (~x[22] |x[30]) & (~x[35] |~x[50]) ;
    assign CONTRA_NEXT[17] =  ~ (~F1[17] | F0[17]) ;
    assign CONTRA_IN[17] = CONTRA[16] |CONTRA[30] |CONTRA[11] |CONTRA[45] |CONTRA[40] |CONTRA[22] |CONTRA[35] |CONTRA[50] ;

    //VARIABLE CELL 18:
    assign F1[18] = ~(x[13] |~x[16]) | ~(x[2] |~x[33]) ;
    assign F0[18] =  (x[13] |~x[38]) & (x[13] |~x[31]) ;
    assign CONTRA_NEXT[18] =  ~ (~F1[18] | F0[18]) ;
    assign CONTRA_IN[18] = CONTRA[13] |CONTRA[16] |CONTRA[2] |CONTRA[33] |CONTRA[38] |CONTRA[31] ;

    //VARIABLE CELL 19:
    assign F1[19] = ~(x[34] |x[36]) | ~(~x[25] |x[48]) ;
    assign F0[19] =  (x[26] |x[36]) & (x[2] |x[9]) & (~x[2] |x[35]) ;
    assign CONTRA_NEXT[19] =  ~ (~F1[19] | F0[19]) ;
    assign CONTRA_IN[19] = CONTRA[34] |CONTRA[36] |CONTRA[25] |CONTRA[48] |CONTRA[26] |CONTRA[2] |CONTRA[9] |CONTRA[35] ;

    //VARIABLE CELL 20:
    assign F1[20] = ~(x[5] |~x[42]) | ~(x[29] |~x[48]) ;
    assign F0[20] =  (x[5] |~x[7]) & (~x[4] |x[10]) ;
    assign CONTRA_NEXT[20] =  ~ (~F1[20] | F0[20]) ;
    assign CONTRA_IN[20] = CONTRA[5] |CONTRA[42] |CONTRA[29] |CONTRA[48] |CONTRA[7] |CONTRA[4] |CONTRA[10] ;

    //VARIABLE CELL 21:
    assign F1[21] = ~(~x[16] |~x[28]) | ~(~x[13] |x[28]) | ~(x[24]) ;
    assign F0[21] =  (~x[16] |x[31]) & (~x[16] |~x[31]) ;
    assign CONTRA_NEXT[21] =  ~ (~F1[21] | F0[21]) ;
    assign CONTRA_IN[21] = CONTRA[16] |CONTRA[28] |CONTRA[13] |CONTRA[24] |CONTRA[31] ;

    //VARIABLE CELL 22:
    assign F1[22] = ~(~x[17] |x[30]) | ~(~x[2] |~x[35]) ;
    assign F0[22] =  (~x[17] |x[30]) & (~x[35] |x[50]) ;
    assign CONTRA_NEXT[22] =  ~ (~F1[22] | F0[22]) ;
    assign CONTRA_IN[22] = CONTRA[17] |CONTRA[30] |CONTRA[2] |CONTRA[35] |CONTRA[50] ;

    //VARIABLE CELL 23:
    assign F1[23] = ~(x[12] |~x[40]) | ~(x[35] |~x[37]) ;
    assign F0[23] =  (~x[3] |x[4]) & (x[3] |~x[49]) & (~x[26] |x[49]) ;
    assign CONTRA_NEXT[23] =  ~ (~F1[23] | F0[23]) ;
    assign CONTRA_IN[23] = CONTRA[12] |CONTRA[40] |CONTRA[35] |CONTRA[37] |CONTRA[3] |CONTRA[4] |CONTRA[49] |CONTRA[26] ;

    //VARIABLE CELL 24:
    assign F1[24] = ~(x[34] |~x[36]) | ~(x[21] |x[21]) ;
    assign F0[24] =  (~x[36] |x[43]) & (x[42] |~x[43]) & (~x[5] |~x[42]) ;
    assign CONTRA_NEXT[24] =  ~ (~F1[24] | F0[24]) ;
    assign CONTRA_IN[24] = CONTRA[34] |CONTRA[36] |CONTRA[21] |CONTRA[43] |CONTRA[42] |CONTRA[5] ;

    //VARIABLE CELL 25:
    assign F1[25] = ~(~x[6] |~x[32]) | ~(x[15] |~x[45]) ;
    assign F0[25] =  (~x[6] |~x[48]) & (~x[9] |~x[28]) & (x[19] |x[48]) ;
    assign CONTRA_NEXT[25] =  ~ (~F1[25] | F0[25]) ;
    assign CONTRA_IN[25] = CONTRA[6] |CONTRA[32] |CONTRA[15] |CONTRA[45] |CONTRA[48] |CONTRA[9] |CONTRA[28] |CONTRA[19] ;

    //VARIABLE CELL 26:
    assign F1[26] = ~(~x[12] |~x[34]) | ~(~x[19] |x[36]) ;
    assign F0[26] =  (~x[23] |x[49]) & (x[39] |x[45]) & (~x[3] |x[45]) ;
    assign CONTRA_NEXT[26] =  ~ (~F1[26] | F0[26]) ;
    assign CONTRA_IN[26] = CONTRA[12] |CONTRA[34] |CONTRA[19] |CONTRA[36] |CONTRA[23] |CONTRA[49] |CONTRA[39] |CONTRA[45] |CONTRA[3] ;

    //VARIABLE CELL 27:
    assign F1[27] = ~(x[12] |x[40]) | ~(~x[4] |~x[40]) ;
    assign F0[27] =  (x[8] |x[12]) & (x[14] |~x[15]) ;
    assign CONTRA_NEXT[27] =  ~ (~F1[27] | F0[27]) ;
    assign CONTRA_IN[27] = CONTRA[12] |CONTRA[40] |CONTRA[4] |CONTRA[8] |CONTRA[14] |CONTRA[15] ;

    //VARIABLE CELL 28:
    assign F1[28] = ~(~x[13] |x[21]) | ~(~x[9] |x[48]) ;
    assign F0[28] =  (~x[16] |x[21]) & (~x[9] |~x[25]) ;
    assign CONTRA_NEXT[28] =  ~ (~F1[28] | F0[28]) ;
    assign CONTRA_IN[28] = CONTRA[13] |CONTRA[21] |CONTRA[9] |CONTRA[48] |CONTRA[16] |CONTRA[25] ;

    //VARIABLE CELL 29:
    assign F1[29] = ~(~x[1] |~x[50]) | ~(x[1] |x[11]) | ~(x[20] |~x[48]) ;
    assign F0[29] =  (~x[35] |~x[50]) & (x[1] |~x[31]) ;
    assign CONTRA_NEXT[29] =  ~ (~F1[29] | F0[29]) ;
    assign CONTRA_IN[29] = CONTRA[1] |CONTRA[50] |CONTRA[11] |CONTRA[20] |CONTRA[48] |CONTRA[35] |CONTRA[31] ;

    //VARIABLE CELL 30:
    assign F1[30] = ~(x[16] |x[17]) | ~(~x[17] |x[22]) | ~(~x[17] |~x[22]) ;
    assign F0[30] =  (x[16] |x[47]) & (x[16] |~x[47]) & (x[34] |~x[36]) ;
    assign CONTRA_NEXT[30] =  ~ (~F1[30] | F0[30]) ;
    assign CONTRA_IN[30] = CONTRA[16] |CONTRA[17] |CONTRA[22] |CONTRA[47] |CONTRA[34] |CONTRA[36] ;

    //VARIABLE CELL 31:
    assign F1[31] = ~(~x[16] |~x[21]) | ~(x[38] |x[44]) | ~(~x[8] |~x[44]) ;
    assign F0[31] =  (~x[16] |~x[21]) & (x[13] |~x[18]) & (x[1] |~x[29]) ;
    assign CONTRA_NEXT[31] =  ~ (~F1[31] | F0[31]) ;
    assign CONTRA_IN[31] = CONTRA[16] |CONTRA[21] |CONTRA[38] |CONTRA[44] |CONTRA[8] |CONTRA[13] |CONTRA[18] |CONTRA[1] |CONTRA[29] ;

    //VARIABLE CELL 32:
    assign F1[32] = ~(x[33] |x[37]) | ~(~x[7] |x[38]) ;
    assign F0[32] =  (x[6] |x[37]) & (~x[6] |x[25]) ;
    assign CONTRA_NEXT[32] =  ~ (~F1[32] | F0[32]) ;
    assign CONTRA_IN[32] = CONTRA[33] |CONTRA[37] |CONTRA[7] |CONTRA[38] |CONTRA[6] |CONTRA[25] ;

    //VARIABLE CELL 33:
    assign F1[33] = ~(~x[37] |~x[46]) | ~(x[32] |x[37]) ;
    assign F0[33] =  (x[41] |~x[46]) & (~x[14] |~x[47]) & (x[2] |x[18]) ;
    assign CONTRA_NEXT[33] =  ~ (~F1[33] | F0[33]) ;
    assign CONTRA_IN[33] = CONTRA[37] |CONTRA[46] |CONTRA[32] |CONTRA[41] |CONTRA[14] |CONTRA[47] |CONTRA[2] |CONTRA[18] ;

    //VARIABLE CELL 34:
    assign F1[34] = ~(x[19] |x[36]) | ~(~x[30] |~x[36]) | ~(x[24] |~x[36]) ;
    assign F0[34] =  (x[12] |x[49]) & (~x[12] |x[26]) ;
    assign CONTRA_NEXT[34] =  ~ (~F1[34] | F0[34]) ;
    assign CONTRA_IN[34] = CONTRA[19] |CONTRA[36] |CONTRA[30] |CONTRA[24] |CONTRA[12] |CONTRA[49] |CONTRA[26] ;

    //VARIABLE CELL 35:
    assign F1[35] = ~(~x[2] |~x[19]) | ~(x[43] |x[44]) | ~(x[23] |~x[37]) ;
    assign F0[35] =  (~x[2] |x[22]) & (~x[22] |x[50]) & (~x[17] |~x[50]) & (~x[29] |~x[50]) ;
    assign CONTRA_NEXT[35] =  ~ (~F1[35] | F0[35]) ;
    assign CONTRA_IN[35] = CONTRA[2] |CONTRA[19] |CONTRA[43] |CONTRA[44] |CONTRA[23] |CONTRA[37] |CONTRA[22] |CONTRA[50] |CONTRA[17] |CONTRA[29] ;

    //VARIABLE CELL 36:
    assign F1[36] = ~(x[19] |x[34]) | ~(~x[19] |x[26]) ;
    assign F0[36] =  (~x[30] |x[34]) & (x[24] |x[34]) & (~x[24] |x[43]) ;
    assign CONTRA_NEXT[36] =  ~ (~F1[36] | F0[36]) ;
    assign CONTRA_IN[36] = CONTRA[19] |CONTRA[34] |CONTRA[26] |CONTRA[30] |CONTRA[24] |CONTRA[43] ;

    //VARIABLE CELL 37:
    assign F1[37] = ~(x[32] |x[33]) | ~(x[6] |~x[32]) ;
    assign F0[37] =  (x[33] |~x[46]) & (x[23] |x[35]) ;
    assign CONTRA_NEXT[37] =  ~ (~F1[37] | F0[37]) ;
    assign CONTRA_IN[37] = CONTRA[32] |CONTRA[33] |CONTRA[6] |CONTRA[46] |CONTRA[23] |CONTRA[35] ;

    //VARIABLE CELL 38:
    assign F1[38] = ~(x[31] |x[44]) | ~(~x[7] |x[32]) ;
    assign F0[38] =  (x[13] |~x[18]) & (x[9] |x[14]) ;
    assign CONTRA_NEXT[38] =  ~ (~F1[38] | F0[38]) ;
    assign CONTRA_IN[38] = CONTRA[31] |CONTRA[44] |CONTRA[7] |CONTRA[32] |CONTRA[13] |CONTRA[18] |CONTRA[9] |CONTRA[14] ;

    //VARIABLE CELL 39:
    assign F1[39] = ~(~x[11] |x[45]) | ~(~x[26] |x[45]) ;
    assign F0[39] =  (~x[11] |x[15]) & (x[14] |~x[15]) ;
    assign CONTRA_NEXT[39] =  ~ (~F1[39] | F0[39]) ;
    assign CONTRA_IN[39] = CONTRA[11] |CONTRA[45] |CONTRA[26] |CONTRA[15] |CONTRA[14] ;

    //VARIABLE CELL 40:
    assign F1[40] = ~(x[12] |x[27]) | ~(x[17] |x[17]) ;
    assign F0[40] =  (~x[4] |x[27]) & (x[12] |x[23]) ;
    assign CONTRA_NEXT[40] =  ~ (~F1[40] | F0[40]) ;
    assign CONTRA_IN[40] = CONTRA[12] |CONTRA[27] |CONTRA[17] |CONTRA[4] |CONTRA[23] ;

    //VARIABLE CELL 41:
    assign F1[41] = ~(~x[10] |x[46]) | ~(~x[33] |~x[46]) ;
    assign F0[41] =  (x[7] |~x[10]) & (~x[13] |x[43]) ;
    assign CONTRA_NEXT[41] =  ~ (~F1[41] | F0[41]) ;
    assign CONTRA_IN[41] = CONTRA[10] |CONTRA[46] |CONTRA[33] |CONTRA[7] |CONTRA[13] |CONTRA[43] ;

    //VARIABLE CELL 42:
    assign F1[42] = ~(x[6] |~x[43]) | ~(~x[24] |~x[43]) ;
    assign F0[42] =  (~x[5] |~x[24]) & (x[5] |x[20]) ;
    assign CONTRA_NEXT[42] =  ~ (~F1[42] | F0[42]) ;
    assign CONTRA_IN[42] = CONTRA[6] |CONTRA[43] |CONTRA[24] |CONTRA[5] |CONTRA[20] ;

    //VARIABLE CELL 43:
    assign F1[43] = ~(~x[24] |~x[36]) | ~(x[35] |x[44]) | ~(~x[13] |~x[41]) ;
    assign F0[43] =  (x[6] |x[42]) & (~x[24] |x[42]) ;
    assign CONTRA_NEXT[43] =  ~ (~F1[43] | F0[43]) ;
    assign CONTRA_IN[43] = CONTRA[24] |CONTRA[36] |CONTRA[35] |CONTRA[44] |CONTRA[13] |CONTRA[41] |CONTRA[6] |CONTRA[42] ;

    //VARIABLE CELL 44:
    assign F1[44] = ~(x[31] |x[38]) | ~(x[35] |x[43]) ;
    assign F0[44] =  (~x[8] |x[31]) & (x[8] |~x[12]) ;
    assign CONTRA_NEXT[44] =  ~ (~F1[44] | F0[44]) ;
    assign CONTRA_IN[44] = CONTRA[31] |CONTRA[38] |CONTRA[35] |CONTRA[43] |CONTRA[8] |CONTRA[12] ;

    //VARIABLE CELL 45:
    assign F1[45] = ~(~x[11] |x[39]) | ~(~x[26] |x[39]) | ~(~x[3] |~x[26]) ;
    assign F0[45] =  (~x[11] |x[17]) & (x[14] |~x[15]) & (x[15] |x[25]) ;
    assign CONTRA_NEXT[45] =  ~ (~F1[45] | F0[45]) ;
    assign CONTRA_IN[45] = CONTRA[11] |CONTRA[39] |CONTRA[26] |CONTRA[3] |CONTRA[17] |CONTRA[14] |CONTRA[15] |CONTRA[25] ;

    //VARIABLE CELL 46:
    assign F1[46] = ~(~x[10] |x[41]) | ~(~x[3] |~x[13]) ;
    assign F0[46] =  (~x[33] |x[41]) & (x[33] |~x[37]) ;
    assign CONTRA_NEXT[46] =  ~ (~F1[46] | F0[46]) ;
    assign CONTRA_IN[46] = CONTRA[10] |CONTRA[41] |CONTRA[3] |CONTRA[13] |CONTRA[33] |CONTRA[37] ;

    //VARIABLE CELL 47:
    assign F1[47] = ~(x[16] |~x[30]) | ~(~x[14] |~x[15]) ;
    assign F0[47] =  (x[16] |~x[30]) & (~x[14] |~x[33]) ;
    assign CONTRA_NEXT[47] =  ~ (~F1[47] | F0[47]) ;
    assign CONTRA_IN[47] = CONTRA[16] |CONTRA[30] |CONTRA[14] |CONTRA[15] |CONTRA[33] ;

    //VARIABLE CELL 48:
    assign F1[48] = ~(~x[9] |x[28]) | ~(x[19] |~x[25]) ;
    assign F0[48] =  (~x[6] |~x[25]) & (x[20] |x[29]) ;
    assign CONTRA_NEXT[48] =  ~ (~F1[48] | F0[48]) ;
    assign CONTRA_IN[48] = CONTRA[9] |CONTRA[28] |CONTRA[19] |CONTRA[25] |CONTRA[6] |CONTRA[20] |CONTRA[29] ;

    //VARIABLE CELL 49:
    assign F1[49] = ~(~x[23] |~x[26]) | ~(x[12] |~x[34]) ;
    assign F0[49] =  (x[3] |~x[23]) & (x[3] |~x[13]) ;
    assign CONTRA_NEXT[49] =  ~ (~F1[49] | F0[49]) ;
    assign CONTRA_IN[49] = CONTRA[23] |CONTRA[26] |CONTRA[12] |CONTRA[34] |CONTRA[3] |CONTRA[13] ;

    //VARIABLE CELL 50:
    assign F1[50] = ~(~x[22] |~x[35]) | ~(~x[5] |x[11]) ;
    assign F0[50] =  (~x[17] |~x[35]) & (~x[29] |~x[35]) & (~x[1] |x[29]) ;
    assign CONTRA_NEXT[50] =  ~ (~F1[50] | F0[50]) ;
    assign CONTRA_IN[50] = CONTRA[22] |CONTRA[35] |CONTRA[5] |CONTRA[11] |CONTRA[17] |CONTRA[29] |CONTRA[1] ;

    //clauses:
    assign c[1] = (x[16] |x[17] |x[30] );
    assign c[2] = (~x[17] |x[22] |x[30] );
    assign c[3] = (~x[17] |~x[22] |x[30] );
    assign c[4] = (x[16] |~x[30] |x[47] );
    assign c[5] = (x[16] |~x[30] |~x[47] );
    assign c[6] = (~x[16] |~x[21] |x[31] );
    assign c[7] = (~x[16] |~x[21] |~x[31] );
    assign c[8] = (~x[16] |x[21] |~x[28] );
    assign c[9] = (~x[13] |x[21] |x[28] );
    assign c[10] = (x[13] |~x[16] |x[18] );
    assign c[11] = (x[13] |~x[18] |~x[38] );
    assign c[12] = (x[13] |~x[18] |~x[31] );
    assign c[13] = (x[31] |x[38] |x[44] );
    assign c[14] = (~x[8] |x[31] |~x[44] );
    assign c[15] = (x[8] |~x[12] |~x[44] );
    assign c[16] = (x[8] |x[12] |~x[27] );
    assign c[17] = (x[12] |x[27] |x[40] );
    assign c[18] = (~x[4] |x[27] |~x[40] );
    assign c[19] = (x[12] |x[23] |~x[40] );
    assign c[20] = (~x[3] |x[4] |~x[23] );
    assign c[21] = (x[3] |~x[23] |~x[49] );
    assign c[22] = (x[3] |~x[13] |~x[49] );
    assign c[23] = (~x[23] |~x[26] |x[49] );
    assign c[24] = (x[12] |~x[34] |x[49] );
    assign c[25] = (~x[12] |x[26] |~x[34] );
    assign c[26] = (x[19] |x[34] |x[36] );
    assign c[27] = (~x[19] |x[26] |x[36] );
    assign c[28] = (~x[30] |x[34] |~x[36] );
    assign c[29] = (x[24] |x[34] |~x[36] );
    assign c[30] = (~x[24] |~x[36] |x[43] );
    assign c[31] = (x[6] |x[42] |~x[43] );
    assign c[32] = (~x[24] |x[42] |~x[43] );
    assign c[33] = (~x[5] |~x[24] |~x[42] );
    assign c[34] = (x[5] |x[20] |~x[42] );
    assign c[35] = (x[5] |~x[7] |~x[20] );
    assign c[36] = (x[4] |x[7] |x[10] );
    assign c[37] = (~x[4] |x[10] |~x[20] );
    assign c[38] = (x[7] |~x[10] |~x[41] );
    assign c[39] = (~x[10] |x[41] |x[46] );
    assign c[40] = (~x[33] |x[41] |~x[46] );
    assign c[41] = (x[33] |~x[37] |~x[46] );
    assign c[42] = (x[32] |x[33] |x[37] );
    assign c[43] = (x[6] |~x[32] |x[37] );
    assign c[44] = (~x[6] |x[25] |~x[32] );
    assign c[45] = (~x[6] |~x[25] |~x[48] );
    assign c[46] = (~x[9] |x[28] |x[48] );
    assign c[47] = (~x[9] |~x[25] |~x[28] );
    assign c[48] = (x[19] |~x[25] |x[48] );
    assign c[49] = (x[2] |x[9] |~x[19] );
    assign c[50] = (~x[2] |~x[19] |x[35] );
    assign c[51] = (~x[2] |x[22] |~x[35] );
    assign c[52] = (~x[22] |~x[35] |x[50] );
    assign c[53] = (~x[17] |~x[35] |~x[50] );
    assign c[54] = (~x[29] |~x[35] |~x[50] );
    assign c[55] = (~x[1] |x[29] |~x[50] );
    assign c[56] = (x[1] |x[11] |x[29] );
    assign c[57] = (~x[11] |x[17] |~x[45] );
    assign c[58] = (~x[11] |x[39] |x[45] );
    assign c[59] = (~x[26] |x[39] |x[45] );
    assign c[60] = (~x[3] |~x[26] |x[45] );
    assign c[61] = (~x[11] |x[15] |~x[39] );
    assign c[62] = (x[14] |~x[15] |~x[39] );
    assign c[63] = (x[14] |~x[15] |~x[45] );
    assign c[64] = (x[14] |~x[15] |~x[27] );
    assign c[65] = (~x[14] |~x[15] |x[47] );
    assign c[66] = (x[17] |x[17] |x[40] );
    assign c[67] = (x[1] |~x[29] |~x[31] );
    assign c[68] = (~x[7] |x[32] |x[38] );
    assign c[69] = (~x[14] |~x[33] |~x[47] );
    assign c[70] = (~x[1] |x[2] |~x[8] );
    assign c[71] = (x[35] |x[43] |x[44] );
    assign c[72] = (x[21] |x[21] |x[24] );
    assign c[73] = (x[20] |x[29] |~x[48] );
    assign c[74] = (x[23] |x[35] |~x[37] );
    assign c[75] = (x[2] |x[18] |~x[33] );
    assign c[76] = (x[15] |x[25] |~x[45] );
    assign c[77] = (x[9] |x[14] |~x[38] );
    assign c[78] = (~x[5] |x[11] |x[50] );
    assign c[79] = (~x[3] |~x[13] |x[46] );
    assign c[80] = (~x[13] |~x[41] |x[43] );

    //update sat when clauses change (all clauses AND' will be sat)
    assign solution = (c[1] & c[2] & c[3] & c[4] & c[5] & c[6] & c[7] & c[8] & c[9] & c[10] & c[11] & c[12] & c[13] & c[14] & c[15] & c[16] & c[17] & c[18] & c[19] & c[20] & c[21] & c[22] & c[23] & c[24] & c[25] & c[26] & c[27] & c[28] & c[29] & c[30] & c[31] & c[32] & c[33] & c[34] & c[35] & c[36] & c[37] & c[38] & c[39] & c[40] & c[41] & c[42] & c[43] & c[44] & c[45] & c[46] & c[47] & c[48] & c[49] & c[50] & c[51] & c[52] & c[53] & c[54] & c[55] & c[56] & c[57] & c[58] & c[59] & c[60] & c[61] & c[62] & c[63] & c[64] & c[65] & c[66] & c[67] & c[68] & c[69] & c[70] & c[71] & c[72] & c[73] & c[74] & c[75] & c[76] & c[77] & c[78] & c[79] & c[80]);
    assign led0_r = (c[1] & c[2] & c[3] & c[4] & c[5] & c[6] & c[7] & c[8] & c[9] & c[10] & c[11] & c[12] & c[13] & c[14] & c[15] & c[16] & c[17] & c[18] & c[19] & c[20] & c[21] & c[22] & c[23] & c[24] & c[25] & c[26] & c[27] & c[28] & c[29] & c[30] & c[31] & c[32] & c[33] & c[34] & c[35] & c[36] & c[37] & c[38] & c[39] & c[40] & c[41] & c[42] & c[43] & c[44] & c[45] & c[46] & c[47] & c[48] & c[49] & c[50] & c[51] & c[52] & c[53] & c[54] & c[55] & c[56] & c[57] & c[58] & c[59] & c[60] & c[61] & c[62] & c[63] & c[64] & c[65] & c[66] & c[67] & c[68] & c[69] & c[70] & c[71] & c[72] & c[73] & c[74] & c[75] & c[76] & c[77] & c[78] & c[79] & c[80]);
