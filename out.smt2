;;; Verifying MSBS_Nothing_ShortByteString 
;; -- [p1]
;; p1
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_External 
;; -- [p2]
;; p2
;; 
;; Proof. L_External QED
;;; Verifying V_Default 
;; -- [p3]
;; p3
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; -- [p4]
;; p4
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying CC_C 
;; -- [p5]
;; p5
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; -- [p6]
;; p6
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p7
;; p7
;; -- [p8]
;; p8
;; 
;; Proof. T_IntegerType QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p10
;; p10
;; --- [p11]
;; p11
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p12
;; p12
;; --- [p13]
;; p13
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; --- [p14]
;; p14
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p11 p13 p14
;; p11
;; p13
;; p14
;; --- [p15]
;; p15
;; 
;; Proof. P_Parameter QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p16
;; p16
;; --- [p17]
;; p17
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p18
;; p18
;; --- [p19]
;; p19
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p17 p19
;; p17
;; p19
;; --- [p20]
;; p20
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p21
;; p21
;; --- [p22]
;; p22
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p20 p22
;; p20
;; p22
;; --- [p23]
;; p23
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p24
;; p24
;; --- [p25]
;; p25
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; --- [p26]
;; p26
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p23 p25 p26
;; p23
;; p25
;; p26
;; --- [p27]
;; p27
;; 
;; Proof. P_Parameter QED
;;; Verifying Nil_Parameter 
;; --- [p28]
;; p28
;; 
;; Proof. [] (Parameter) equivalent QED
;;; Verifying Cons_Parameter p27 p28
;; p27
;; p28
;; --- [p29]
;; p29
;; 
;; Proof. Cons Parameter equivalent QED
;;; Verifying Cons_Parameter p15 p29
;; p15
;; p29
;; --- [p30]
;; p30
;; 
;; Proof. Cons Parameter equivalent QED
;;; False == False : Bool
;;; Verifying Tup2_List_Parameter_Bool p30 p31
;; p30
;; p31
;; --- [p32]
;; p32
;; 
;; Proof. Tuple ([Parameter], Bool) equivalent QED
;;; 0 == 0 : Word
;;; Verifying GID_GroupID p33
;; p33
;; --- [p34]
;; p34
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p34
;; p34
;; --- [p35]
;; p35
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; --- [p36]
;; p36
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p35 p36
;; p35
;; p36
;; --- [p37]
;; p37
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; --- [p38]
;; p38
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; --- [p39]
;; p39
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 0 == 0 : Word32
;;; Verifying MSBS_Nothing_ShortByteString 
;; --- [p41]
;; p41
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; --- [p42]
;; p42
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; basic block matching 2-2
;;; 1 == 1 : Word
;;; Verifying N_UnName p43
;; p43
;; --- [p44]
;; p44
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; --- [p45]
;; p45
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p46
;; p46
;; --- [p47]
;; p47
;; 
;; Proof. UnName equivalent QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p48
;; p48
;; --- [p49]
;; p49
;; 
;; Proof. T_IntegerType QED
;;; Verifying MO_Nothing_Operand 
;; --- [p50]
;; p50
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p49 p50 p51 p52
;; p49
;; p50
;; p51
;; p52
;; --- [p53]
;; p53
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p47 p53
;; p47
;; p53
;; --- [p54]
;; p54
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; --- [p55]
;; p55
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p56
;; p56
;; --- [p57]
;; p57
;; 
;; Proof. UnName equivalent QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p58
;; p58
;; --- [p59]
;; p59
;; 
;; Proof. T_IntegerType QED
;;; Verifying MO_Nothing_Operand 
;; --- [p60]
;; p60
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p59 p60 p61 p62
;; p59
;; p60
;; p61
;; p62
;; --- [p63]
;; p63
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p57 p63
;; p57
;; p63
;; --- [p64]
;; p64
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; --- [p65]
;; p65
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p66
;; p66
;; --- [p67]
;; p67
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p68
;; p68
;; --- [p69]
;; p69
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p70
;; p70
;; --- [p71]
;; p71
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p69 p71
;; p69
;; p71
;; --- [p72]
;; p72
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p73
;; p73
;; --- [p74]
;; p74
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p72 p74
;; p72
;; p74
;; --- [p75]
;; p75
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; --- [p76]
;; p76
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p75 p76 p77 p78
;; p75
;; p76
;; p77
;; p78
;; --- [p79]
;; p79
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p67 p79
;; p67
;; p79
;; --- [p80]
;; p80
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; --- [p81]
;; p81
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p83
;; p83
;; --- [p84]
;; p84
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p85
;; p85
;; --- [p86]
;; p86
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p84 p86
;; p84
;; p86
;; --- [p87]
;; p87
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p88
;; p88
;; --- [p89]
;; p89
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p87 p89
;; p87
;; p89
;; --- [p90]
;; p90
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p91 p92
;; p91
;; p92
;; --- [p93]
;; p93
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p93
;; p93
;; --- [p94]
;; p94
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying MA_Nothing_Atomicity 
;; --- [p95]
;; p95
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Store p82 p90 p94 p95 p96 p97
;; p82
;; p90
;; p94
;; p95
;; p96
;; p97
;; --- [p98]
;; p98
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p98
;; p98
;; --- [p99]
;; p99
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p100]
;; p100
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p102
;; p102
;; ---- [p103]
;; p103
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p104
;; p104
;; ---- [p105]
;; p105
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p103 p105
;; p103
;; p105
;; ---- [p106]
;; p106
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p107
;; p107
;; ---- [p108]
;; p108
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p106 p108
;; p106
;; p108
;; ---- [p109]
;; p109
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p110
;; p110
;; ---- [p111]
;; p111
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p112
;; p112
;; ---- [p113]
;; p113
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p111 p113
;; p111
;; p113
;; ---- [p114]
;; p114
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ---- [p115]
;; p115
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Store p101 p109 p114 p115 p116 p117
;; p101
;; p109
;; p114
;; p115
;; p116
;; p117
;; ---- [p118]
;; p118
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p118
;; p118
;; ---- [p119]
;; p119
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p120]
;; p120
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p122
;; p122
;; ---- [p123]
;; p123
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p124
;; p124
;; ---- [p125]
;; p125
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p123 p125
;; p123
;; p125
;; ---- [p126]
;; p126
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p127
;; p127
;; ---- [p128]
;; p128
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p126 p128
;; p126
;; p128
;; ---- [p129]
;; p129
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p130
;; p130
;; ---- [p131]
;; p131
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p129 p131
;; p129
;; p131
;; ---- [p132]
;; p132
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p133
;; p133
;; ---- [p134]
;; p134
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p132 p134
;; p132
;; p134
;; ---- [p135]
;; p135
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p136
;; p136
;; ---- [p137]
;; p137
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p138
;; p138
;; ---- [p139]
;; p139
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p137 p139
;; p137
;; p139
;; ---- [p140]
;; p140
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p141
;; p141
;; ---- [p142]
;; p142
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p140 p142
;; p140
;; p142
;; ---- [p143]
;; p143
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p144
;; p144
;; ---- [p145]
;; p145
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p143 p145
;; p143
;; p145
;; ---- [p146]
;; p146
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ---- [p147]
;; p147
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p121 p135 p146 p147 p148 p149
;; p121
;; p135
;; p146
;; p147
;; p148
;; p149
;; ---- [p150]
;; p150
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p150
;; p150
;; ---- [p151]
;; p151
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p152]
;; p152
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p153
;; p153
;; ---- [p154]
;; p154
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p156
;; p156
;; ---- [p157]
;; p157
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p158
;; p158
;; ---- [p159]
;; p159
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p157 p159
;; p157
;; p159
;; ---- [p160]
;; p160
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p161
;; p161
;; ---- [p162]
;; p162
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p160 p162
;; p160
;; p162
;; ---- [p163]
;; p163
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ---- [p164]
;; p164
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Load p155 p163 p164 p165 p166
;; p155
;; p163
;; p164
;; p165
;; p166
;; ---- [p167]
;; p167
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p154 p167
;; p154
;; p167
;; ---- [p168]
;; p168
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p169]
;; p169
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p170
;; p170
;; ---- [p171]
;; p171
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p173
;; p173
;; ---- [p174]
;; p174
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p175
;; p175
;; ---- [p176]
;; p176
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p174 p176
;; p174
;; p176
;; ---- [p177]
;; p177
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p178
;; p178
;; ---- [p179]
;; p179
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p177 p179
;; p177
;; p179
;; ---- [p180]
;; p180
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p181
;; p181
;; ---- [p182]
;; p182
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p180 p182
;; p180
;; p182
;; ---- [p183]
;; p183
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p184
;; p184
;; ---- [p185]
;; p185
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p183 p185
;; p183
;; p185
;; ---- [p186]
;; p186
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ---- [p187]
;; p187
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p172 p186 p187 p188 p189
;; p172
;; p186
;; p187
;; p188
;; p189
;; ---- [p190]
;; p190
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p171 p190
;; p171
;; p190
;; ---- [p191]
;; p191
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p192]
;; p192
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ---- [p193]
;; p193
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ---- [p194]
;; p194
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ---- [p195]
;; p195
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ---- [p196]
;; p196
;; 
;; Proof. T_VoidType QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p197
;; p197
;; ---- [p198]
;; p198
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p199
;; p199
;; ---- [p200]
;; p200
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p201
;; p201
;; ---- [p202]
;; p202
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p200 p202
;; p200
;; p202
;; ---- [p203]
;; p203
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p204
;; p204
;; ---- [p205]
;; p205
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p203 p205
;; p203
;; p205
;; ---- [p206]
;; p206
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ---- [p207]
;; p207
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p206 p207
;; p206
;; p207
;; ---- [p208]
;; p208
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p198 p208
;; p198
;; p208
;; ---- [p209]
;; p209
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p196 p209 p210
;; p196
;; p209
;; p210
;; ---- [p211]
;; p211
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p212
;; p212
;; ---- [p213]
;; p213
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p211 p213
;; p211
;; p213
;; ---- [p214]
;; p214
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p215]
;; p215
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_External 
;; ---- [p216]
;; p216
;; 
;; Proof. L_External QED
;;; Verifying V_Default 
;; ---- [p217]
;; p217
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ---- [p218]
;; p218
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying CC_C 
;; ---- [p219]
;; p219
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ---- [p220]
;; p220
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ---- [p221]
;; p221
;; 
;; Proof. T_VoidType QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p223
;; p223
;; ---- [p224]
;; p224
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p225
;; p225
;; ---- [p226]
;; p226
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ---- [p227]
;; p227
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p224 p226 p227
;; p224
;; p226
;; p227
;; ---- [p228]
;; p228
;; 
;; Proof. P_Parameter QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p229
;; p229
;; ---- [p230]
;; p230
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p231
;; p231
;; ---- [p232]
;; p232
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p230 p232
;; p230
;; p232
;; ---- [p233]
;; p233
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p234
;; p234
;; ---- [p235]
;; p235
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p233 p235
;; p233
;; p235
;; ---- [p236]
;; p236
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p237
;; p237
;; ---- [p238]
;; p238
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ---- [p239]
;; p239
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p236 p238 p239
;; p236
;; p238
;; p239
;; ---- [p240]
;; p240
;; 
;; Proof. P_Parameter QED
;;; Verifying Nil_Parameter 
;; ---- [p241]
;; p241
;; 
;; Proof. [] (Parameter) equivalent QED
;;; Verifying Cons_Parameter p240 p241
;; p240
;; p241
;; ---- [p242]
;; p242
;; 
;; Proof. Cons Parameter equivalent QED
;;; Verifying Cons_Parameter p228 p242
;; p228
;; p242
;; ---- [p243]
;; p243
;; 
;; Proof. Cons Parameter equivalent QED
;;; False == False : Bool
;;; Verifying Tup2_List_Parameter_Bool p243 p244
;; p243
;; p244
;; ---- [p245]
;; p245
;; 
;; Proof. Tuple ([Parameter], Bool) equivalent QED
;;; 0 == 0 : Word
;;; Verifying GID_GroupID p246
;; p246
;; ---- [p247]
;; p247
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p247
;; p247
;; ---- [p248]
;; p248
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ---- [p249]
;; p249
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p248 p249
;; p248
;; p249
;; ---- [p250]
;; p250
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p251]
;; p251
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p252]
;; p252
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 0 == 0 : Word32
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p254]
;; p254
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ---- [p255]
;; p255
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; basic block matching 2-2, 31-31, 32-32
;;; 1 == 1 : Word
;;; Verifying N_UnName p256
;; p256
;; ---- [p257]
;; p257
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p258]
;; p258
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p259
;; p259
;; ---- [p260]
;; p260
;; 
;; Proof. UnName equivalent QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p261
;; p261
;; ---- [p262]
;; p262
;; 
;; Proof. T_IntegerType QED
;;; Verifying MO_Nothing_Operand 
;; ---- [p263]
;; p263
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p262 p263 p264 p265
;; p262
;; p263
;; p264
;; p265
;; ---- [p266]
;; p266
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p260 p266
;; p260
;; p266
;; ---- [p267]
;; p267
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p268]
;; p268
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p269
;; p269
;; ---- [p270]
;; p270
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p271
;; p271
;; ---- [p272]
;; p272
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p273
;; p273
;; ---- [p274]
;; p274
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p272 p274
;; p272
;; p274
;; ---- [p275]
;; p275
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p276
;; p276
;; ---- [p277]
;; p277
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p275 p277
;; p275
;; p277
;; ---- [p278]
;; p278
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ---- [p279]
;; p279
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p278 p279 p280 p281
;; p278
;; p279
;; p280
;; p281
;; ---- [p282]
;; p282
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p270 p282
;; p270
;; p282
;; ---- [p283]
;; p283
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p284]
;; p284
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p285
;; p285
;; ---- [p286]
;; p286
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; Verifying T_VoidType 
;; ---- [p288]
;; p288
;; 
;; Proof. T_VoidType QED
;;; False == False : Bool
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p291
;; p291
;; ---- [p292]
;; p292
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p293
;; p293
;; ---- [p294]
;; p294
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p292 p294
;; p292
;; p294
;; ---- [p295]
;; p295
;; 
;; Proof. T_PointerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p296
;; p296
;; ---- [p297]
;; p297
;; 
;; Proof. T_IntegerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p298
;; p298
;; ---- [p299]
;; p299
;; 
;; Proof. T_IntegerType QED
;;; Verifying Nil_Type 
;; ---- [p300]
;; p300
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p299 p300
;; p299
;; p300
;; ---- [p301]
;; p301
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p297 p301
;; p297
;; p301
;; ---- [p302]
;; p302
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p295 p302
;; p295
;; p302
;; ---- [p303]
;; p303
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying T_StructureType p290 p303
;; p290
;; p303
;; ---- [p304]
;; p304
;; 
;; Proof. T_StructureType QED
;;; Verifying MT_Just_Type p304
;; p304
;; ---- [p305]
;; p305
;; 
;; Proof. Just Type equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p306
;; p306
;; ---- [p307]
;; p307
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p307
;; p307
;; ---- [p308]
;; p308
;; 
;; Proof. T_NamedTypeReference QED
;;; False == False : Bool
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p310
;; p310
;; ---- [p311]
;; p311
;; 
;; Proof. T_IntegerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p312
;; p312
;; ---- [p313]
;; p313
;; 
;; Proof. T_IntegerType QED
;;; Verifying Nil_Type 
;; ---- [p314]
;; p314
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p313 p314
;; p313
;; p314
;; ---- [p315]
;; p315
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p311 p315
;; p311
;; p315
;; ---- [p316]
;; p316
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying T_StructureType p309 p316
;; p309
;; p316
;; ---- [p317]
;; p317
;; 
;; Proof. T_StructureType QED
;;; Verifying MT_Just_Type p317
;; p317
;; ---- [p318]
;; p318
;; 
;; Proof. Just Type equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p319
;; p319
;; ---- [p320]
;; p320
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p320
;; p320
;; ---- [p321]
;; p321
;; 
;; Proof. T_NamedTypeReference QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p322
;; p322
;; ---- [p323]
;; p323
;; 
;; Proof. T_IntegerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p324
;; p324
;; ---- [p325]
;; p325
;; 
;; Proof. T_IntegerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p326
;; p326
;; ---- [p327]
;; p327
;; 
;; Proof. T_IntegerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p328
;; p328
;; ---- [p329]
;; p329
;; 
;; Proof. T_IntegerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p330
;; p330
;; ---- [p331]
;; p331
;; 
;; Proof. T_IntegerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p332
;; p332
;; ---- [p333]
;; p333
;; 
;; Proof. T_IntegerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p334
;; p334
;; ---- [p335]
;; p335
;; 
;; Proof. T_IntegerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p336
;; p336
;; ---- [p337]
;; p337
;; 
;; Proof. T_IntegerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p338
;; p338
;; ---- [p339]
;; p339
;; 
;; Proof. T_IntegerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p340
;; p340
;; ---- [p341]
;; p341
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p342
;; p342
;; ---- [p343]
;; p343
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p344
;; p344
;; ---- [p345]
;; p345
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p343 p345
;; p343
;; p345
;; ---- [p346]
;; p346
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ---- [p347]
;; p347
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p346 p347
;; p346
;; p347
;; ---- [p348]
;; p348
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p341 p348
;; p341
;; p348
;; ---- [p349]
;; p349
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p339 p349
;; p339
;; p349
;; ---- [p350]
;; p350
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p337 p350
;; p337
;; p350
;; ---- [p351]
;; p351
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p335 p351
;; p335
;; p351
;; ---- [p352]
;; p352
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p333 p352
;; p333
;; p352
;; ---- [p353]
;; p353
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p331 p353
;; p331
;; p353
;; ---- [p354]
;; p354
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p329 p354
;; p329
;; p354
;; ---- [p355]
;; p355
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p327 p355
;; p327
;; p355
;; ---- [p356]
;; p356
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p325 p356
;; p325
;; p356
;; ---- [p357]
;; p357
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p323 p357
;; p323
;; p357
;; ---- [p358]
;; p358
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p321 p358
;; p321
;; p358
;; ---- [p359]
;; p359
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p308 p359
;; p308
;; p359
;; ---- [p360]
;; p360
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying T_StructureType p289 p360
;; p289
;; p360
;; ---- [p361]
;; p361
;; 
;; Proof. T_StructureType QED
;;; Verifying MT_Just_Type p361
;; p361
;; ---- [p362]
;; p362
;; 
;; Proof. Just Type equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p363
;; p363
;; ---- [p364]
;; p364
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p364
;; p364
;; ---- [p365]
;; p365
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p366
;; p366
;; ---- [p367]
;; p367
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p365 p367
;; p365
;; p367
;; ---- [p368]
;; p368
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ---- [p369]
;; p369
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p368 p369
;; p368
;; p369
;; ---- [p370]
;; p370
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p288 p370 p371
;; p288
;; p370
;; p371
;; ---- [p372]
;; p372
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p373
;; p373
;; ---- [p374]
;; p374
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p372 p374
;; p372
;; p374
;; ---- [p375]
;; p375
;; 
;; Proof. T_PointerType QED
;;; Verifying T_VoidType 
;; ---- [p376]
;; p376
;; 
;; Proof. T_VoidType QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p377
;; p377
;; ---- [p378]
;; p378
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p378
;; p378
;; ---- [p379]
;; p379
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p380
;; p380
;; ---- [p381]
;; p381
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p379 p381
;; p379
;; p381
;; ---- [p382]
;; p382
;; 
;; Proof. T_PointerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p383
;; p383
;; ---- [p384]
;; p384
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p385
;; p385
;; ---- [p386]
;; p386
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p384 p386
;; p384
;; p386
;; ---- [p387]
;; p387
;; 
;; Proof. T_PointerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p388
;; p388
;; ---- [p389]
;; p389
;; 
;; Proof. T_IntegerType QED
;;; Verifying Nil_Type 
;; ---- [p390]
;; p390
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p389 p390
;; p389
;; p390
;; ---- [p391]
;; p391
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p387 p391
;; p387
;; p391
;; ---- [p392]
;; p392
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p382 p392
;; p382
;; p392
;; ---- [p393]
;; p393
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p376 p393 p394
;; p376
;; p393
;; p394
;; ---- [p395]
;; p395
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p396
;; p396
;; ---- [p397]
;; p397
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p395 p397
;; p395
;; p397
;; ---- [p398]
;; p398
;; 
;; Proof. T_PointerType QED
;;; Verifying T_VoidType 
;; ---- [p399]
;; p399
;; 
;; Proof. T_VoidType QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p400
;; p400
;; ---- [p401]
;; p401
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p401
;; p401
;; ---- [p402]
;; p402
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p403
;; p403
;; ---- [p404]
;; p404
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p402 p404
;; p402
;; p404
;; ---- [p405]
;; p405
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ---- [p406]
;; p406
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p405 p406
;; p405
;; p406
;; ---- [p407]
;; p407
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p399 p407 p408
;; p399
;; p407
;; p408
;; ---- [p409]
;; p409
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p410
;; p410
;; ---- [p411]
;; p411
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p409 p411
;; p409
;; p411
;; ---- [p412]
;; p412
;; 
;; Proof. T_PointerType QED
;;; Verifying T_VoidType 
;; ---- [p413]
;; p413
;; 
;; Proof. T_VoidType QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p414
;; p414
;; ---- [p415]
;; p415
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p415
;; p415
;; ---- [p416]
;; p416
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p417
;; p417
;; ---- [p418]
;; p418
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p416 p418
;; p416
;; p418
;; ---- [p419]
;; p419
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ---- [p420]
;; p420
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p419 p420
;; p419
;; p420
;; ---- [p421]
;; p421
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p413 p421 p422
;; p413
;; p421
;; p422
;; ---- [p423]
;; p423
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p424
;; p424
;; ---- [p425]
;; p425
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p423 p425
;; p423
;; p425
;; ---- [p426]
;; p426
;; 
;; Proof. T_PointerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p427
;; p427
;; ---- [p428]
;; p428
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p429
;; p429
;; ---- [p430]
;; p430
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p428 p430
;; p428
;; p430
;; ---- [p431]
;; p431
;; 
;; Proof. T_PointerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p432
;; p432
;; ---- [p433]
;; p433
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p434
;; p434
;; ---- [p435]
;; p435
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p433 p435
;; p433
;; p435
;; ---- [p436]
;; p436
;; 
;; Proof. T_PointerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p437
;; p437
;; ---- [p438]
;; p438
;; 
;; Proof. T_IntegerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p439
;; p439
;; ---- [p440]
;; p440
;; 
;; Proof. T_IntegerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p441
;; p441
;; ---- [p442]
;; p442
;; 
;; Proof. T_IntegerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p443
;; p443
;; ---- [p444]
;; p444
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p445
;; p445
;; ---- [p446]
;; p446
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p447
;; p447
;; ---- [p448]
;; p448
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p446 p448
;; p446
;; p448
;; ---- [p449]
;; p449
;; 
;; Proof. T_PointerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p450
;; p450
;; ---- [p451]
;; p451
;; 
;; Proof. T_IntegerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p452
;; p452
;; ---- [p453]
;; p453
;; 
;; Proof. T_IntegerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p454
;; p454
;; ---- [p455]
;; p455
;; 
;; Proof. T_IntegerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p456
;; p456
;; ---- [p457]
;; p457
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p458
;; p458
;; ---- [p459]
;; p459
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p460
;; p460
;; ---- [p461]
;; p461
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p462
;; p462
;; ---- [p463]
;; p463
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p464
;; p464
;; ---- [p465]
;; p465
;; 
;; Proof. T_IntegerType QED
;;; Verifying Nil_Type 
;; ---- [p466]
;; p466
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p465 p466
;; p465
;; p466
;; ---- [p467]
;; p467
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p463 p467
;; p463
;; p467
;; ---- [p468]
;; p468
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p461 p468
;; p461
;; p468
;; ---- [p469]
;; p469
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p459 p469
;; p459
;; p469
;; ---- [p470]
;; p470
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p457 p470
;; p457
;; p470
;; ---- [p471]
;; p471
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p455 p471
;; p455
;; p471
;; ---- [p472]
;; p472
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p453 p472
;; p453
;; p472
;; ---- [p473]
;; p473
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p451 p473
;; p451
;; p473
;; ---- [p474]
;; p474
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p449 p474
;; p449
;; p474
;; ---- [p475]
;; p475
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p444 p475
;; p444
;; p475
;; ---- [p476]
;; p476
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p442 p476
;; p442
;; p476
;; ---- [p477]
;; p477
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p440 p477
;; p440
;; p477
;; ---- [p478]
;; p478
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p438 p478
;; p438
;; p478
;; ---- [p479]
;; p479
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p436 p479
;; p436
;; p479
;; ---- [p480]
;; p480
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p431 p480
;; p431
;; p480
;; ---- [p481]
;; p481
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p426 p481
;; p426
;; p481
;; ---- [p482]
;; p482
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p412 p482
;; p412
;; p482
;; ---- [p483]
;; p483
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p398 p483
;; p398
;; p483
;; ---- [p484]
;; p484
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p375 p484
;; p375
;; p484
;; ---- [p485]
;; p485
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying T_StructureType p287 p485
;; p287
;; p485
;; ---- [p486]
;; p486
;; 
;; Proof. T_StructureType QED
;;; Verifying MT_Just_Type p486
;; p486
;; ---- [p487]
;; p487
;; 
;; Proof. Just Type equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p488
;; p488
;; ---- [p489]
;; p489
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p489
;; p489
;; ---- [p490]
;; p490
;; 
;; Proof. T_NamedTypeReference QED
;;; Verifying MO_Nothing_Operand 
;; ---- [p491]
;; p491
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p490 p491 p492 p493
;; p490
;; p491
;; p492
;; p493
;; ---- [p494]
;; p494
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p286 p494
;; p286
;; p494
;; ---- [p495]
;; p495
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p496]
;; p496
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p497
;; p497
;; ---- [p498]
;; p498
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p499
;; p499
;; ---- [p500]
;; p500
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p501
;; p501
;; ---- [p502]
;; p502
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p500 p502
;; p500
;; p502
;; ---- [p503]
;; p503
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ---- [p504]
;; p504
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p503 p504 p505 p506
;; p503
;; p504
;; p505
;; p506
;; ---- [p507]
;; p507
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p498 p507
;; p498
;; p507
;; ---- [p508]
;; p508
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p509]
;; p509
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p510
;; p510
;; ---- [p511]
;; p511
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p513
;; p513
;; ---- [p514]
;; p514
;; 
;; Proof. T_IntegerType QED
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p515
;; p515
;; ---- [p516]
;; p516
;; 
;; Proof. T_IntegerType QED
;;; Verifying Nil_Type 
;; ---- [p517]
;; p517
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p516 p517
;; p516
;; p517
;; ---- [p518]
;; p518
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p514 p518
;; p514
;; p518
;; ---- [p519]
;; p519
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying T_StructureType p512 p519
;; p512
;; p519
;; ---- [p520]
;; p520
;; 
;; Proof. T_StructureType QED
;;; Verifying MT_Just_Type p520
;; p520
;; ---- [p521]
;; p521
;; 
;; Proof. Just Type equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p522
;; p522
;; ---- [p523]
;; p523
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p523
;; p523
;; ---- [p524]
;; p524
;; 
;; Proof. T_NamedTypeReference QED
;;; Verifying MO_Nothing_Operand 
;; ---- [p525]
;; p525
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 2 == 2 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p524 p525 p526 p527
;; p524
;; p525
;; p526
;; p527
;; ---- [p528]
;; p528
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p511 p528
;; p511
;; p528
;; ---- [p529]
;; p529
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p530]
;; p530
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p532
;; p532
;; ---- [p533]
;; p533
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p534
;; p534
;; ---- [p535]
;; p535
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p533 p535
;; p533
;; p535
;; ---- [p536]
;; p536
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p537
;; p537
;; ---- [p538]
;; p538
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p536 p538
;; p536
;; p538
;; ---- [p539]
;; p539
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p540
;; p540
;; ---- [p541]
;; p541
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p542
;; p542
;; ---- [p543]
;; p543
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p541 p543
;; p541
;; p543
;; ---- [p544]
;; p544
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ---- [p545]
;; p545
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Store p531 p539 p544 p545 p546 p547
;; p531
;; p539
;; p544
;; p545
;; p546
;; p547
;; ---- [p548]
;; p548
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p548
;; p548
;; ---- [p549]
;; p549
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p550]
;; p550
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p552
;; p552
;; ---- [p553]
;; p553
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p554
;; p554
;; ---- [p555]
;; p555
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p553 p555
;; p553
;; p555
;; ---- [p556]
;; p556
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p557
;; p557
;; ---- [p558]
;; p558
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p556 p558
;; p556
;; p558
;; ---- [p559]
;; p559
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p560
;; p560
;; ---- [p561]
;; p561
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p559 p561
;; p559
;; p561
;; ---- [p562]
;; p562
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p563
;; p563
;; ---- [p564]
;; p564
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p562 p564
;; p562
;; p564
;; ---- [p565]
;; p565
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p566
;; p566
;; ---- [p567]
;; p567
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p568
;; p568
;; ---- [p569]
;; p569
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p567 p569
;; p567
;; p569
;; ---- [p570]
;; p570
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p571
;; p571
;; ---- [p572]
;; p572
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p570 p572
;; p570
;; p572
;; ---- [p573]
;; p573
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p574
;; p574
;; ---- [p575]
;; p575
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p573 p575
;; p573
;; p575
;; ---- [p576]
;; p576
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ---- [p577]
;; p577
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p551 p565 p576 p577 p578 p579
;; p551
;; p565
;; p576
;; p577
;; p578
;; p579
;; ---- [p580]
;; p580
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p580
;; p580
;; ---- [p581]
;; p581
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p582]
;; p582
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p583
;; p583
;; ---- [p584]
;; p584
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p586
;; p586
;; ---- [p587]
;; p587
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p588
;; p588
;; ---- [p589]
;; p589
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p587 p589
;; p587
;; p589
;; ---- [p590]
;; p590
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p591
;; p591
;; ---- [p592]
;; p592
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p590 p592
;; p590
;; p592
;; ---- [p593]
;; p593
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ---- [p594]
;; p594
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Load p585 p593 p594 p595 p596
;; p585
;; p593
;; p594
;; p595
;; p596
;; ---- [p597]
;; p597
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p584 p597
;; p584
;; p597
;; ---- [p598]
;; p598
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p599]
;; p599
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p600
;; p600
;; ---- [p601]
;; p601
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p603
;; p603
;; ---- [p604]
;; p604
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p605
;; p605
;; ---- [p606]
;; p606
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p604 p606
;; p604
;; p606
;; ---- [p607]
;; p607
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p608
;; p608
;; ---- [p609]
;; p609
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p607 p609
;; p607
;; p609
;; ---- [p610]
;; p610
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p611
;; p611
;; ---- [p612]
;; p612
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p610 p612
;; p610
;; p612
;; ---- [p613]
;; p613
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p614
;; p614
;; ---- [p615]
;; p615
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p613 p615
;; p613
;; p615
;; ---- [p616]
;; p616
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ---- [p617]
;; p617
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p602 p616 p617 p618 p619
;; p602
;; p616
;; p617
;; p618
;; p619
;; ---- [p620]
;; p620
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p601 p620
;; p601
;; p620
;; ---- [p621]
;; p621
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p622]
;; p622
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ---- [p623]
;; p623
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ---- [p624]
;; p624
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ---- [p625]
;; p625
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ---- [p626]
;; p626
;; 
;; Proof. T_VoidType QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p627
;; p627
;; ---- [p628]
;; p628
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p629
;; p629
;; ---- [p630]
;; p630
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p631
;; p631
;; ---- [p632]
;; p632
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p630 p632
;; p630
;; p632
;; ---- [p633]
;; p633
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p634
;; p634
;; ---- [p635]
;; p635
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p633 p635
;; p633
;; p635
;; ---- [p636]
;; p636
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ---- [p637]
;; p637
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p636 p637
;; p636
;; p637
;; ---- [p638]
;; p638
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p628 p638
;; p628
;; p638
;; ---- [p639]
;; p639
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p626 p639 p640
;; p626
;; p639
;; p640
;; ---- [p641]
;; p641
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p642
;; p642
;; ---- [p643]
;; p643
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p641 p643
;; p641
;; p643
;; ---- [p644]
;; p644
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p645]
;; p645
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Internal 
;; ---- [p646]
;; p646
;; 
;; Proof. L_Internal QED
;;; Verifying V_Default 
;; ---- [p647]
;; p647
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ---- [p648]
;; p648
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying CC_C 
;; ---- [p649]
;; p649
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ---- [p650]
;; p650
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ---- [p651]
;; p651
;; 
;; Proof. T_VoidType QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p653
;; p653
;; ---- [p654]
;; p654
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p655
;; p655
;; ---- [p656]
;; p656
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ---- [p657]
;; p657
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p654 p656 p657
;; p654
;; p656
;; p657
;; ---- [p658]
;; p658
;; 
;; Proof. P_Parameter QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p659
;; p659
;; ---- [p660]
;; p660
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p661
;; p661
;; ---- [p662]
;; p662
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p660 p662
;; p660
;; p662
;; ---- [p663]
;; p663
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p664
;; p664
;; ---- [p665]
;; p665
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p663 p665
;; p663
;; p665
;; ---- [p666]
;; p666
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p667
;; p667
;; ---- [p668]
;; p668
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ---- [p669]
;; p669
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p666 p668 p669
;; p666
;; p668
;; p669
;; ---- [p670]
;; p670
;; 
;; Proof. P_Parameter QED
;;; Verifying Nil_Parameter 
;; ---- [p671]
;; p671
;; 
;; Proof. [] (Parameter) equivalent QED
;;; Verifying Cons_Parameter p670 p671
;; p670
;; p671
;; ---- [p672]
;; p672
;; 
;; Proof. Cons Parameter equivalent QED
;;; Verifying Cons_Parameter p658 p672
;; p658
;; p672
;; ---- [p673]
;; p673
;; 
;; Proof. Cons Parameter equivalent QED
;;; False == False : Bool
;;; Verifying Tup2_List_Parameter_Bool p673 p674
;; p673
;; p674
;; ---- [p675]
;; p675
;; 
;; Proof. Tuple ([Parameter], Bool) equivalent QED
;;; 0 == 0 : Word
;;; Verifying GID_GroupID p676
;; p676
;; ---- [p677]
;; p677
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p677
;; p677
;; ---- [p678]
;; p678
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ---- [p679]
;; p679
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p678 p679
;; p678
;; p679
;; ---- [p680]
;; p680
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p681]
;; p681
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p682]
;; p682
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 0 == 0 : Word32
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p684]
;; p684
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ---- [p685]
;; p685
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; basic block matching 2-2, 25-25, 39-39, 50-50, 61-61, 53-53, 58-58, 57-57, 42-42, 46-46, 49-49, 28-28, 36-36, 32-32, 35-35, 17-17, 21-21, 24-24
;;; 1 == 1 : Word
;;; Verifying N_UnName p686
;; p686
;; ---- [p687]
;; p687
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p688]
;; p688
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p689
;; p689
;; ---- [p690]
;; p690
;; 
;; Proof. UnName equivalent QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p691
;; p691
;; ---- [p692]
;; p692
;; 
;; Proof. T_IntegerType QED
;;; Verifying MO_Nothing_Operand 
;; ---- [p693]
;; p693
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p692 p693 p694 p695
;; p692
;; p693
;; p694
;; p695
;; ---- [p696]
;; p696
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p690 p696
;; p690
;; p696
;; ---- [p697]
;; p697
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p698]
;; p698
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p699
;; p699
;; ---- [p700]
;; p700
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p701
;; p701
;; ---- [p702]
;; p702
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p703
;; p703
;; ---- [p704]
;; p704
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p702 p704
;; p702
;; p704
;; ---- [p705]
;; p705
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p706
;; p706
;; ---- [p707]
;; p707
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p705 p707
;; p705
;; p707
;; ---- [p708]
;; p708
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ---- [p709]
;; p709
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p708 p709 p710 p711
;; p708
;; p709
;; p710
;; p711
;; ---- [p712]
;; p712
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p700 p712
;; p700
;; p712
;; ---- [p713]
;; p713
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p714]
;; p714
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p715
;; p715
;; ---- [p716]
;; p716
;; 
;; Proof. UnName equivalent QED
;;; 27 == 27 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p718
;; p718
;; ---- [p719]
;; p719
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p720
;; p720
;; ---- [p721]
;; p721
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p719 p721
;; p719
;; p721
;; ---- [p722]
;; p722
;; 
;; Proof. T_PointerType QED
;;; Verifying T_ArrayType p717 p722
;; p717
;; p722
;; ---- [p723]
;; p723
;; 
;; Proof. T_ArrayType QED
;;; Verifying MO_Nothing_Operand 
;; ---- [p724]
;; p724
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p723 p724 p725 p726
;; p723
;; p724
;; p725
;; p726
;; ---- [p727]
;; p727
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p716 p727
;; p716
;; p727
;; ---- [p728]
;; p728
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p729]
;; p729
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p730
;; p730
;; ---- [p731]
;; p731
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p732
;; p732
;; ---- [p733]
;; p733
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p734
;; p734
;; ---- [p735]
;; p735
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p733 p735
;; p733
;; p735
;; ---- [p736]
;; p736
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ---- [p737]
;; p737
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p736 p737 p738 p739
;; p736
;; p737
;; p738
;; p739
;; ---- [p740]
;; p740
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p731 p740
;; p731
;; p740
;; ---- [p741]
;; p741
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p742]
;; p742
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p743
;; p743
;; ---- [p744]
;; p744
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p745
;; p745
;; ---- [p746]
;; p746
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p747
;; p747
;; ---- [p748]
;; p748
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p746 p748
;; p746
;; p748
;; ---- [p749]
;; p749
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ---- [p750]
;; p750
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p749 p750 p751 p752
;; p749
;; p750
;; p751
;; p752
;; ---- [p753]
;; p753
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p744 p753
;; p744
;; p753
;; ---- [p754]
;; p754
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p755]
;; p755
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p756
;; p756
;; ---- [p757]
;; p757
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p758
;; p758
;; ---- [p759]
;; p759
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p760
;; p760
;; ---- [p761]
;; p761
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p759 p761
;; p759
;; p761
;; ---- [p762]
;; p762
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ---- [p763]
;; p763
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p762 p763 p764 p765
;; p762
;; p763
;; p764
;; p765
;; ---- [p766]
;; p766
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p757 p766
;; p757
;; p766
;; ---- [p767]
;; p767
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p768]
;; p768
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p769
;; p769
;; ---- [p770]
;; p770
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p771
;; p771
;; ---- [p772]
;; p772
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p773
;; p773
;; ---- [p774]
;; p774
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p772 p774
;; p772
;; p774
;; ---- [p775]
;; p775
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ---- [p776]
;; p776
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p775 p776 p777 p778
;; p775
;; p776
;; p777
;; p778
;; ---- [p779]
;; p779
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p770 p779
;; p770
;; p779
;; ---- [p780]
;; p780
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p781]
;; p781
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p783
;; p783
;; ---- [p784]
;; p784
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p785
;; p785
;; ---- [p786]
;; p786
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p784 p786
;; p784
;; p786
;; ---- [p787]
;; p787
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p788
;; p788
;; ---- [p789]
;; p789
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p787 p789
;; p787
;; p789
;; ---- [p790]
;; p790
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p791
;; p791
;; ---- [p792]
;; p792
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p793
;; p793
;; ---- [p794]
;; p794
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p792 p794
;; p792
;; p794
;; ---- [p795]
;; p795
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ---- [p796]
;; p796
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Store p782 p790 p795 p796 p797 p798
;; p782
;; p790
;; p795
;; p796
;; p797
;; p798
;; ---- [p799]
;; p799
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p799
;; p799
;; ---- [p800]
;; p800
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p801]
;; p801
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p803
;; p803
;; ---- [p804]
;; p804
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p805
;; p805
;; ---- [p806]
;; p806
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p804 p806
;; p804
;; p806
;; ---- [p807]
;; p807
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p808
;; p808
;; ---- [p809]
;; p809
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p807 p809
;; p807
;; p809
;; ---- [p810]
;; p810
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p811
;; p811
;; ---- [p812]
;; p812
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p810 p812
;; p810
;; p812
;; ---- [p813]
;; p813
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p814
;; p814
;; ---- [p815]
;; p815
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p813 p815
;; p813
;; p815
;; ---- [p816]
;; p816
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p817
;; p817
;; ---- [p818]
;; p818
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p819
;; p819
;; ---- [p820]
;; p820
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p818 p820
;; p818
;; p820
;; ---- [p821]
;; p821
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p822
;; p822
;; ---- [p823]
;; p823
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p821 p823
;; p821
;; p823
;; ---- [p824]
;; p824
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p825
;; p825
;; ---- [p826]
;; p826
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p824 p826
;; p824
;; p826
;; ---- [p827]
;; p827
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ---- [p828]
;; p828
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p802 p816 p827 p828 p829 p830
;; p802
;; p816
;; p827
;; p828
;; p829
;; p830
;; ---- [p831]
;; p831
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p831
;; p831
;; ---- [p832]
;; p832
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p833]
;; p833
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p834
;; p834
;; ---- [p835]
;; p835
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p837
;; p837
;; ---- [p838]
;; p838
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p839
;; p839
;; ---- [p840]
;; p840
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p838 p840
;; p838
;; p840
;; ---- [p841]
;; p841
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p842
;; p842
;; ---- [p843]
;; p843
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p841 p843
;; p841
;; p843
;; ---- [p844]
;; p844
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ---- [p845]
;; p845
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Load p836 p844 p845 p846 p847
;; p836
;; p844
;; p845
;; p846
;; p847
;; ---- [p848]
;; p848
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p835 p848
;; p835
;; p848
;; ---- [p849]
;; p849
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p850]
;; p850
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p851
;; p851
;; ---- [p852]
;; p852
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p854
;; p854
;; ---- [p855]
;; p855
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p856
;; p856
;; ---- [p857]
;; p857
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p855 p857
;; p855
;; p857
;; ---- [p858]
;; p858
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p859
;; p859
;; ---- [p860]
;; p860
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p858 p860
;; p858
;; p860
;; ---- [p861]
;; p861
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p862
;; p862
;; ---- [p863]
;; p863
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p861 p863
;; p861
;; p863
;; ---- [p864]
;; p864
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p865
;; p865
;; ---- [p866]
;; p866
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p864 p866
;; p864
;; p866
;; ---- [p867]
;; p867
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ---- [p868]
;; p868
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p853 p867 p868 p869 p870
;; p853
;; p867
;; p868
;; p869
;; p870
;; ---- [p871]
;; p871
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p852 p871
;; p852
;; p871
;; ---- [p872]
;; p872
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p873]
;; p873
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p874
;; p874
;; ---- [p875]
;; p875
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; 27 == 27 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p878
;; p878
;; ---- [p879]
;; p879
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p880
;; p880
;; ---- [p881]
;; p881
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p879 p881
;; p879
;; p881
;; ---- [p882]
;; p882
;; 
;; Proof. T_PointerType QED
;;; Verifying T_ArrayType p877 p882
;; p877
;; p882
;; ---- [p883]
;; p883
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p884
;; p884
;; ---- [p885]
;; p885
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p883 p885
;; p883
;; p885
;; ---- [p886]
;; p886
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p887
;; p887
;; ---- [p888]
;; p888
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p886 p888
;; p886
;; p888
;; ---- [p889]
;; p889
;; 
;; Proof. O_LocalReference QED
;;; 64 == 64 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p890 p891
;; p890
;; p891
;; ---- [p892]
;; p892
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p892
;; p892
;; ---- [p893]
;; p893
;; 
;; Proof. O_ConstantOperand QED
;;; 64 == 64 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p894 p895
;; p894
;; p895
;; ---- [p896]
;; p896
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p896
;; p896
;; ---- [p897]
;; p897
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ---- [p898]
;; p898
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p897 p898
;; p897
;; p898
;; ---- [p899]
;; p899
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p893 p899
;; p893
;; p899
;; ---- [p900]
;; p900
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p876 p889 p900 p901
;; p876
;; p889
;; p900
;; p901
;; ---- [p902]
;; p902
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p875 p902
;; p875
;; p902
;; ---- [p903]
;; p903
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p904]
;; p904
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p905
;; p905
;; ---- [p906]
;; p906
;; 
;; Proof. UnName equivalent QED
;;; 27 == 27 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p908
;; p908
;; ---- [p909]
;; p909
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p910
;; p910
;; ---- [p911]
;; p911
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p909 p911
;; p909
;; p911
;; ---- [p912]
;; p912
;; 
;; Proof. T_PointerType QED
;;; Verifying T_ArrayType p907 p912
;; p907
;; p912
;; ---- [p913]
;; p913
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p914
;; p914
;; ---- [p915]
;; p915
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p913 p915
;; p913
;; p915
;; ---- [p916]
;; p916
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p917
;; p917
;; ---- [p918]
;; p918
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p916 p918
;; p916
;; p918
;; ---- [p919]
;; p919
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p920
;; p920
;; ---- [p921]
;; p921
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p922
;; p922
;; ---- [p923]
;; p923
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p921 p923
;; p921
;; p923
;; ---- [p924]
;; p924
;; 
;; Proof. T_PointerType QED
;;; True == True : Bool
;;; Verifying I_BitCast p919 p924 p925
;; p919
;; p924
;; p925
;; ---- [p926]
;; p926
;; 
;; Proof. I_BitCast QED
;;; Verifying NI_infix_Instruction p906 p926
;; p906
;; p926
;; ---- [p927]
;; p927
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p928]
;; p928
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ---- [p929]
;; p929
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ---- [p930]
;; p930
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ---- [p931]
;; p931
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ---- [p932]
;; p932
;; 
;; Proof. T_VoidType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p933
;; p933
;; ---- [p934]
;; p934
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p935
;; p935
;; ---- [p936]
;; p936
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p934 p936
;; p934
;; p936
;; ---- [p937]
;; p937
;; 
;; Proof. T_PointerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p938
;; p938
;; ---- [p939]
;; p939
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p940
;; p940
;; ---- [p941]
;; p941
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p939 p941
;; p939
;; p941
;; ---- [p942]
;; p942
;; 
;; Proof. T_PointerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p943
;; p943
;; ---- [p944]
;; p944
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word32
;;; Verifying T_IntegerType p945
;; p945
;; ---- [p946]
;; p946
;; 
;; Proof. T_IntegerType QED
;;; Verifying Nil_Type 
;; ---- [p947]
;; p947
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p946 p947
;; p946
;; p947
;; ---- [p948]
;; p948
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p944 p948
;; p944
;; p948
;; ---- [p949]
;; p949
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p942 p949
;; p942
;; p949
;; ---- [p950]
;; p950
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p937 p950
;; p937
;; p950
;; ---- [p951]
;; p951
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p932 p951 p952
;; p932
;; p951
;; p952
;; ---- [p953]
;; p953
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p954
;; p954
;; ---- [p955]
;; p955
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p953 p955
;; p953
;; p955
;; ---- [p956]
;; p956
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ---- [p957]
;; p957
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_External 
;; ---- [p958]
;; p958
;; 
;; Proof. L_External QED
;;; Verifying V_Default 
;; ---- [p959]
;; p959
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ---- [p960]
;; p960
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying CC_C 
;; ---- [p961]
;; p961
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ---- [p962]
;; p962
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ---- [p963]
;; p963
;; 
;; Proof. T_VoidType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p965
;; p965
;; ---- [p966]
;; p966
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p967
;; p967
;; ---- [p968]
;; p968
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p966 p968
;; p966
;; p968
;; ---- [p969]
;; p969
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p970
;; p970
;; ---- [p971]
;; p971
;; 
;; Proof. UnName equivalent QED
;;; Verifying PA_NoCapture 
;; ---- [p972]
;; p972
;; 
;; Proof. PA_NoCapture QED
;;; Verifying PA_WriteOnly 
;; ---- [p973]
;; p973
;; 
;; Proof. PA_WriteOnly QED
;;; Verifying Nil_ParameterAttribute 
;; ---- [p974]
;; p974
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Cons_ParameterAttribute p973 p974
;; p973
;; p974
;; ---- [p975]
;; p975
;; 
;; Proof. Cons ParameterAttribute equivalent QED
;;; Verifying Cons_ParameterAttribute p972 p975
;; p972
;; p975
;; ---- [p976]
;; p976
;; 
;; Proof. Cons ParameterAttribute equivalent QED
;;; Verifying P_Parameter p969 p971 p976
;; p969
;; p971
;; p976
;; ---- [p977]
;; p977
;; 
;; Proof. P_Parameter QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p978
;; p978
;; ---- [p979]
;; p979
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p980
;; p980
;; ---- [p981]
;; p981
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p979 p981
;; p979
;; p981
;; ---- [p982]
;; p982
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p983
;; p983
;; ---- [p984]
;; p984
;; 
;; Proof. UnName equivalent QED
;;; Verifying PA_NoCapture 
;; ---- [p985]
;; p985
;; 
;; Proof. PA_NoCapture QED
;;; Verifying PA_ReadOnly 
;; ---- [p986]
;; p986
;; 
;; Proof. PA_ReadOnly QED
;;; Verifying Nil_ParameterAttribute 
;; ---- [p987]
;; p987
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Cons_ParameterAttribute p986 p987
;; p986
;; p987
;; ---- [p988]
;; p988
;; 
;; Proof. Cons ParameterAttribute equivalent QED
;;; Verifying Cons_ParameterAttribute p985 p988
;; p985
;; p988
;; ---- [p989]
;; p989
;; 
;; Proof. Cons ParameterAttribute equivalent QED
;;; Verifying P_Parameter p982 p984 p989
;; p982
;; p984
;; p989
;; ---- [p990]
;; p990
;; 
;; Proof. P_Parameter QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p991
;; p991
;; ---- [p992]
;; p992
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p993
;; p993
;; ---- [p994]
;; p994
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ---- [p995]
;; p995
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p992 p994 p995
;; p992
;; p994
;; p995
;; ---- [p996]
;; p996
;; 
;; Proof. P_Parameter QED
;;; 1 == 1 : Word32
;;; Verifying T_IntegerType p997
;; p997
;; ---- [p998]
;; p998
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p999
;; p999
;; ----- [p1000]
;; p1000
;; 
;; Proof. UnName equivalent QED
;;; Verifying PA_ImmArg 
;; ----- [p1001]
;; p1001
;; 
;; Proof. PA_ImmArg QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p1002]
;; p1002
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Cons_ParameterAttribute p1001 p1002
;; p1001
;; p1002
;; ----- [p1003]
;; p1003
;; 
;; Proof. Cons ParameterAttribute equivalent QED
;;; Verifying P_Parameter p998 p1000 p1003
;; p998
;; p1000
;; p1003
;; ----- [p1004]
;; p1004
;; 
;; Proof. P_Parameter QED
;;; Verifying Nil_Parameter 
;; ----- [p1005]
;; p1005
;; 
;; Proof. [] (Parameter) equivalent QED
;;; Verifying Cons_Parameter p1004 p1005
;; p1004
;; p1005
;; ----- [p1006]
;; p1006
;; 
;; Proof. Cons Parameter equivalent QED
;;; Verifying Cons_Parameter p996 p1006
;; p996
;; p1006
;; ----- [p1007]
;; p1007
;; 
;; Proof. Cons Parameter equivalent QED
;;; Verifying Cons_Parameter p990 p1007
;; p990
;; p1007
;; ----- [p1008]
;; p1008
;; 
;; Proof. Cons Parameter equivalent QED
;;; Verifying Cons_Parameter p977 p1008
;; p977
;; p1008
;; ----- [p1009]
;; p1009
;; 
;; Proof. Cons Parameter equivalent QED
;;; False == False : Bool
;;; Verifying Tup2_List_Parameter_Bool p1009 p1010
;; p1009
;; p1010
;; ----- [p1011]
;; p1011
;; 
;; Proof. Tuple ([Parameter], Bool) equivalent QED
;;; 2 == 2 : Word
;;; Verifying GID_GroupID p1012
;; p1012
;; ----- [p1013]
;; p1013
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p1013
;; p1013
;; ----- [p1014]
;; p1014
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p1015]
;; p1015
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p1014 p1015
;; p1014
;; p1015
;; ----- [p1016]
;; p1016
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p1017]
;; p1017
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p1018]
;; p1018
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 0 == 0 : Word32
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p1020]
;; p1020
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p1021]
;; p1021
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p1023]
;; p1023
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; True == True : Bool
;;; Verifying G_Function p958 p959 p960 p961 p962 p963 p964 p1011 p1016 p1017 p1018 p1019 p1020 p1021 p1022 p1023 p1024
;; p958
;; p959
;; p960
;; p961
;; p962
;; p963
;; p964
;; p1011
;; p1016
;; p1017
;; p1018
;; p1019
;; p1020
;; p1021
;; p1022
;; p1023
;; p1024
;; ----- [p1025]
;; p1025
;; 
;; Proof. functions llvm.memcpy.p0i8.p0i8.i64 and llvm.memcpy.p0i8.p0i8.i64 equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p1026
;; p1026
;; ----- [p1027]
;; p1027
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p956 p1027
;; p956
;; p1027
;; ----- [p1028]
;; p1028
;; 
;; Proof. C_GlobalReference QED
;;; Verifying O_ConstantOperand p1028
;; p1028
;; ----- [p1029]
;; p1029
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying EIAO_Right_InlineAssembly_Operand p1029
;; p1029
;; ----- [p1030]
;; p1030
;; 
;; Proof. Right (InlineAssembly Operand) equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p1031
;; p1031
;; ----- [p1032]
;; p1032
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p1033
;; p1033
;; ----- [p1034]
;; p1034
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p1032 p1034
;; p1032
;; p1034
;; ----- [p1035]
;; p1035
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p1036
;; p1036
;; ----- [p1037]
;; p1037
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p1035 p1037
;; p1035
;; p1037
;; ----- [p1038]
;; p1038
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word64
;;; Verifying PA_Alignment p1039
;; p1039
;; ----- [p1040]
;; p1040
;; 
;; Proof. PA_Alignment QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p1041]
;; p1041
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Cons_ParameterAttribute p1040 p1041
;; p1040
;; p1041
;; ----- [p1042]
;; p1042
;; 
;; Proof. Cons ParameterAttribute equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p1038 p1042
;; p1038
;; p1042
;; ----- [p1043]
;; p1043
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; 27 == 27 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p1045
;; p1045
;; ----- [p1046]
;; p1046
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p1047
;; p1047
;; ----- [p1048]
;; p1048
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p1046 p1048
;; p1046
;; p1048
;; ----- [p1049]
;; p1049
;; 
;; Proof. T_PointerType QED
;;; Verifying T_ArrayType p1044 p1049
;; p1044
;; p1049
;; ----- [p1050]
;; p1050
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p1051
;; p1051
;; ----- [p1052]
;; p1052
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p1050 p1052
;; p1050
;; p1052
;; ----- [p1053]
;; p1053
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p1054]
;; p1054
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Private 
;; ----- [p1056]
;; p1056
;; 
;; Proof. L_Private QED
;;; Verifying V_Default 
;; ----- [p1057]
;; p1057
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p1058]
;; p1058
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying MM_Nothing_Model 
;; ----- [p1059]
;; p1059
;; 
;; Proof. Nothing (Model) equivalent QED
;;; Verifying MUA_Nothing_UnnamedAddr 
;; ----- [p1060]
;; p1060
;; 
;; Proof. Nothing (UnnamedAddr) equivalent QED
;;; False == False : Bool
;;; 27 == 27 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p1063
;; p1063
;; ----- [p1064]
;; p1064
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p1065
;; p1065
;; ----- [p1066]
;; p1066
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p1064 p1066
;; p1064
;; p1066
;; ----- [p1067]
;; p1067
;; 
;; Proof. T_PointerType QED
;;; Verifying T_ArrayType p1062 p1067
;; p1062
;; p1067
;; ----- [p1068]
;; p1068
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p1069
;; p1069
;; ----- [p1070]
;; p1070
;; 
;; Proof. AS_AddrSpace QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p1071
;; p1071
;; ----- [p1072]
;; p1072
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p1073
;; p1073
;; ----- [p1074]
;; p1074
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p1072 p1074
;; p1072
;; p1074
;; ----- [p1075]
;; p1075
;; 
;; Proof. T_PointerType QED
;;; True == True : Bool
;;; 17 == 17 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p1078
;; p1078
;; ----- [p1079]
;; p1079
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p1077 p1079
;; p1077
;; p1079
;; ----- [p1080]
;; p1080
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p1081
;; p1081
;; ----- [p1082]
;; p1082
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p1080 p1082
;; p1080
;; p1082
;; ----- [p1083]
;; p1083
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p1084]
;; p1084
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Private 
;; ----- [p1086]
;; p1086
;; 
;; Proof. L_Private QED
;;; Verifying V_Default 
;; ----- [p1087]
;; p1087
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p1088]
;; p1088
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying MM_Nothing_Model 
;; ----- [p1089]
;; p1089
;; 
;; Proof. Nothing (Model) equivalent QED
;;; Verifying UA_GlobalAddr 
;; ----- [p1090]
;; p1090
;; 
;; Proof. UA_GlobalAddr QED
;;; Verifying MUA_Just_UnnamedAddr p1090
;; p1090
;; ----- [p1091]
;; p1091
;; 
;; Proof. Just UnnamedAddr equivalent QED
;;; True == True : Bool
;;; 17 == 17 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p1094
;; p1094
;; ----- [p1095]
;; p1095
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p1093 p1095
;; p1093
;; p1095
;; ----- [p1096]
;; p1096
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p1097
;; p1097
;; ----- [p1098]
;; p1098
;; 
;; Proof. AS_AddrSpace QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p1099
;; p1099
;; ----- [p1100]
;; p1100
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; 65 == 65 : Integer
;;; Verifying C_Int p1101 p1102
;; p1101
;; p1102
;; ----- [p1103]
;; p1103
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 100 == 100 : Integer
;;; Verifying C_Int p1104 p1105
;; p1104
;; p1105
;; ----- [p1106]
;; p1106
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 100 == 100 : Integer
;;; Verifying C_Int p1107 p1108
;; p1107
;; p1108
;; ----- [p1109]
;; p1109
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p1110 p1111
;; p1110
;; p1111
;; ----- [p1112]
;; p1112
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p1113 p1114
;; p1113
;; p1114
;; ----- [p1115]
;; p1115
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p1116 p1117
;; p1116
;; p1117
;; ----- [p1118]
;; p1118
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p1119 p1120
;; p1119
;; p1120
;; ----- [p1121]
;; p1121
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1122 p1123
;; p1122
;; p1123
;; ----- [p1124]
;; p1124
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 98 == 98 : Integer
;;; Verifying C_Int p1125 p1126
;; p1125
;; p1126
;; ----- [p1127]
;; p1127
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 105 == 105 : Integer
;;; Verifying C_Int p1128 p1129
;; p1128
;; p1129
;; ----- [p1130]
;; p1130
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 110 == 110 : Integer
;;; Verifying C_Int p1131 p1132
;; p1131
;; p1132
;; ----- [p1133]
;; p1133
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 100 == 100 : Integer
;;; Verifying C_Int p1134 p1135
;; p1134
;; p1135
;; ----- [p1136]
;; p1136
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 105 == 105 : Integer
;;; Verifying C_Int p1137 p1138
;; p1137
;; p1138
;; ----- [p1139]
;; p1139
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 110 == 110 : Integer
;;; Verifying C_Int p1140 p1141
;; p1140
;; p1141
;; ----- [p1142]
;; p1142
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 103 == 103 : Integer
;;; Verifying C_Int p1143 p1144
;; p1143
;; p1144
;; ----- [p1145]
;; p1145
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 58 == 58 : Integer
;;; Verifying C_Int p1146 p1147
;; p1146
;; p1147
;; ----- [p1148]
;; p1148
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p1149 p1150
;; p1149
;; p1150
;; ----- [p1151]
;; p1151
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p1152]
;; p1152
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p1151 p1152
;; p1151
;; p1152
;; ----- [p1153]
;; p1153
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1148 p1153
;; p1148
;; p1153
;; ----- [p1154]
;; p1154
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1145 p1154
;; p1145
;; p1154
;; ----- [p1155]
;; p1155
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1142 p1155
;; p1142
;; p1155
;; ----- [p1156]
;; p1156
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1139 p1156
;; p1139
;; p1156
;; ----- [p1157]
;; p1157
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1136 p1157
;; p1136
;; p1157
;; ----- [p1158]
;; p1158
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1133 p1158
;; p1133
;; p1158
;; ----- [p1159]
;; p1159
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1130 p1159
;; p1130
;; p1159
;; ----- [p1160]
;; p1160
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1127 p1160
;; p1127
;; p1160
;; ----- [p1161]
;; p1161
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1124 p1161
;; p1124
;; p1161
;; ----- [p1162]
;; p1162
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1121 p1162
;; p1121
;; p1162
;; ----- [p1163]
;; p1163
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1118 p1163
;; p1118
;; p1163
;; ----- [p1164]
;; p1164
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1115 p1164
;; p1115
;; p1164
;; ----- [p1165]
;; p1165
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1112 p1165
;; p1112
;; p1165
;; ----- [p1166]
;; p1166
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1109 p1166
;; p1109
;; p1166
;; ----- [p1167]
;; p1167
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1106 p1167
;; p1106
;; p1167
;; ----- [p1168]
;; p1168
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1103 p1168
;; p1103
;; p1168
;; ----- [p1169]
;; p1169
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_Array p1100 p1169
;; p1100
;; p1169
;; ----- [p1170]
;; p1170
;; 
;; Proof. C_Array QED
;;; Verifying MC_Just_Constant p1170
;; p1170
;; ----- [p1171]
;; p1171
;; 
;; Proof. Just Constant equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p1172]
;; p1172
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p1173]
;; p1173
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying G_GlobalVariable p1085 p1086 p1087 p1088 p1089 p1091 p1092 p1096 p1098 p1171 p1172 p1173 p1174 p1175
;; p1085
;; p1086
;; p1087
;; p1088
;; p1089
;; p1091
;; p1092
;; p1096
;; p1098
;; p1171
;; p1172
;; p1173
;; p1174
;; p1175
;; ----- [p1176]
;; p1176
;; 
;; Proof. global variables .str.12.1850 and .str.12.1853 equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p1177
;; p1177
;; ----- [p1178]
;; p1178
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p1083 p1178
;; p1083
;; p1178
;; ----- [p1179]
;; p1179
;; 
;; Proof. C_GlobalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p1180 p1181
;; p1180
;; p1181
;; ----- [p1182]
;; p1182
;; 
;; Proof. C_Int QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p1183 p1184
;; p1183
;; p1184
;; ----- [p1185]
;; p1185
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p1186]
;; p1186
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p1185 p1186
;; p1185
;; p1186
;; ----- [p1187]
;; p1187
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1182 p1187
;; p1182
;; p1187
;; ----- [p1188]
;; p1188
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_GetElementPtr p1076 p1179 p1188
;; p1076
;; p1179
;; p1188
;; ----- [p1189]
;; p1189
;; 
;; Proof. C_GetElementPtr QED
;;; 64 == 64 : Word32
;;; 5 == 5 : Integer
;;; Verifying C_Int p1190 p1191
;; p1190
;; p1191
;; ----- [p1192]
;; p1192
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p1193
;; p1193
;; ----- [p1194]
;; p1194
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p1195
;; p1195
;; ----- [p1196]
;; p1196
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p1194 p1196
;; p1194
;; p1196
;; ----- [p1197]
;; p1197
;; 
;; Proof. T_PointerType QED
;;; Verifying C_IntToPtr p1192 p1197
;; p1192
;; p1197
;; ----- [p1198]
;; p1198
;; 
;; Proof. C_IntToPtr QED
;;; True == True : Bool
;;; 54 == 54 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p1201
;; p1201
;; ----- [p1202]
;; p1202
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p1200 p1202
;; p1200
;; p1202
;; ----- [p1203]
;; p1203
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p1204
;; p1204
;; ----- [p1205]
;; p1205
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p1203 p1205
;; p1203
;; p1205
;; ----- [p1206]
;; p1206
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p1207]
;; p1207
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Private 
;; ----- [p1209]
;; p1209
;; 
;; Proof. L_Private QED
;;; Verifying V_Default 
;; ----- [p1210]
;; p1210
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p1211]
;; p1211
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying MM_Nothing_Model 
;; ----- [p1212]
;; p1212
;; 
;; Proof. Nothing (Model) equivalent QED
;;; Verifying UA_GlobalAddr 
;; ----- [p1213]
;; p1213
;; 
;; Proof. UA_GlobalAddr QED
;;; Verifying MUA_Just_UnnamedAddr p1213
;; p1213
;; ----- [p1214]
;; p1214
;; 
;; Proof. Just UnnamedAddr equivalent QED
;;; True == True : Bool
;;; 54 == 54 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p1217
;; p1217
;; ----- [p1218]
;; p1218
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p1216 p1218
;; p1216
;; p1218
;; ----- [p1219]
;; p1219
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p1220
;; p1220
;; ----- [p1221]
;; p1221
;; 
;; Proof. AS_AddrSpace QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p1222
;; p1222
;; ----- [p1223]
;; p1223
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; 45 == 45 : Integer
;;; Verifying C_Int p1224 p1225
;; p1224
;; p1225
;; ----- [p1226]
;; p1226
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 112 == 112 : Integer
;;; Verifying C_Int p1227 p1228
;; p1227
;; p1228
;; ----- [p1229]
;; p1229
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 111 == 111 : Integer
;;; Verifying C_Int p1230 p1231
;; p1230
;; p1231
;; ----- [p1232]
;; p1232
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p1233 p1234
;; p1233
;; p1234
;; ----- [p1235]
;; p1235
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p1236 p1237
;; p1236
;; p1237
;; ----- [p1238]
;; p1238
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1239 p1240
;; p1239
;; p1240
;; ----- [p1241]
;; p1241
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 45 == 45 : Integer
;;; Verifying C_Int p1242 p1243
;; p1242
;; p1243
;; ----- [p1244]
;; p1244
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 112 == 112 : Integer
;;; Verifying C_Int p1245 p1246
;; p1245
;; p1246
;; ----- [p1247]
;; p1247
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1248 p1249
;; p1248
;; p1249
;; ----- [p1250]
;; p1250
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 112 == 112 : Integer
;;; Verifying C_Int p1251 p1252
;; p1251
;; p1252
;; ----- [p1253]
;; p1253
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 111 == 111 : Integer
;;; Verifying C_Int p1254 p1255
;; p1254
;; p1255
;; ----- [p1256]
;; p1256
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p1257 p1258
;; p1257
;; p1258
;; ----- [p1259]
;; p1259
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p1260 p1261
;; p1260
;; p1261
;; ----- [p1262]
;; p1262
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1263 p1264
;; p1263
;; p1264
;; ----- [p1265]
;; p1265
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 110 == 110 : Integer
;;; Verifying C_Int p1266 p1267
;; p1266
;; p1267
;; ----- [p1268]
;; p1268
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 117 == 117 : Integer
;;; Verifying C_Int p1269 p1270
;; p1269
;; p1270
;; ----- [p1271]
;; p1271
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 109 == 109 : Integer
;;; Verifying C_Int p1272 p1273
;; p1272
;; p1273
;; ----- [p1274]
;; p1274
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 98 == 98 : Integer
;;; Verifying C_Int p1275 p1276
;; p1275
;; p1276
;; ----- [p1277]
;; p1277
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p1278 p1279
;; p1278
;; p1279
;; ----- [p1280]
;; p1280
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p1281 p1282
;; p1281
;; p1282
;; ----- [p1283]
;; p1283
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1284 p1285
;; p1284
;; p1285
;; ----- [p1286]
;; p1286
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p1287 p1288
;; p1287
;; p1288
;; ----- [p1289]
;; p1289
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 111 == 111 : Integer
;;; Verifying C_Int p1290 p1291
;; p1290
;; p1291
;; ----- [p1292]
;; p1292
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1293 p1294
;; p1293
;; p1294
;; ----- [p1295]
;; p1295
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 108 == 108 : Integer
;;; Verifying C_Int p1296 p1297
;; p1296
;; p1297
;; ----- [p1298]
;; p1298
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 105 == 105 : Integer
;;; Verifying C_Int p1299 p1300
;; p1299
;; p1300
;; ----- [p1301]
;; p1301
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p1302 p1303
;; p1302
;; p1303
;; ----- [p1304]
;; p1304
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p1305 p1306
;; p1305
;; p1306
;; ----- [p1307]
;; p1307
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p1308 p1309
;; p1308
;; p1309
;; ----- [p1310]
;; p1310
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 110 == 110 : Integer
;;; Verifying C_Int p1311 p1312
;; p1311
;; p1312
;; ----- [p1313]
;; p1313
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1314 p1315
;; p1314
;; p1315
;; ----- [p1316]
;; p1316
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p1317 p1318
;; p1317
;; p1318
;; ----- [p1319]
;; p1319
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 111 == 111 : Integer
;;; Verifying C_Int p1320 p1321
;; p1320
;; p1321
;; ----- [p1322]
;; p1322
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 46 == 46 : Integer
;;; Verifying C_Int p1323 p1324
;; p1323
;; p1324
;; ----- [p1325]
;; p1325
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1326 p1327
;; p1326
;; p1327
;; ----- [p1328]
;; p1328
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 100 == 100 : Integer
;;; Verifying C_Int p1329 p1330
;; p1329
;; p1330
;; ----- [p1331]
;; p1331
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p1332 p1333
;; p1332
;; p1333
;; ----- [p1334]
;; p1334
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 102 == 102 : Integer
;;; Verifying C_Int p1335 p1336
;; p1335
;; p1336
;; ----- [p1337]
;; p1337
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p1338 p1339
;; p1338
;; p1339
;; ----- [p1340]
;; p1340
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 117 == 117 : Integer
;;; Verifying C_Int p1341 p1342
;; p1341
;; p1342
;; ----- [p1343]
;; p1343
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 108 == 108 : Integer
;;; Verifying C_Int p1344 p1345
;; p1344
;; p1345
;; ----- [p1346]
;; p1346
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p1347 p1348
;; p1347
;; p1348
;; ----- [p1349]
;; p1349
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 58 == 58 : Integer
;;; Verifying C_Int p1350 p1351
;; p1350
;; p1351
;; ----- [p1352]
;; p1352
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1353 p1354
;; p1353
;; p1354
;; ----- [p1355]
;; p1355
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 112 == 112 : Integer
;;; Verifying C_Int p1356 p1357
;; p1356
;; p1357
;; ----- [p1358]
;; p1358
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 111 == 111 : Integer
;;; Verifying C_Int p1359 p1360
;; p1359
;; p1360
;; ----- [p1361]
;; p1361
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p1362 p1363
;; p1362
;; p1363
;; ----- [p1364]
;; p1364
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p1365 p1366
;; p1365
;; p1366
;; ----- [p1367]
;; p1367
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1368 p1369
;; p1368
;; p1369
;; ----- [p1370]
;; p1370
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 51 == 51 : Integer
;;; Verifying C_Int p1371 p1372
;; p1371
;; p1372
;; ----- [p1373]
;; p1373
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 48 == 48 : Integer
;;; Verifying C_Int p1374 p1375
;; p1374
;; p1375
;; ----- [p1376]
;; p1376
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 48 == 48 : Integer
;;; Verifying C_Int p1377 p1378
;; p1377
;; p1378
;; ----- [p1379]
;; p1379
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 48 == 48 : Integer
;;; Verifying C_Int p1380 p1381
;; p1380
;; p1381
;; ----- [p1382]
;; p1382
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p1383 p1384
;; p1383
;; p1384
;; ----- [p1385]
;; p1385
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p1386]
;; p1386
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p1385 p1386
;; p1385
;; p1386
;; ----- [p1387]
;; p1387
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1382 p1387
;; p1382
;; p1387
;; ----- [p1388]
;; p1388
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1379 p1388
;; p1379
;; p1388
;; ----- [p1389]
;; p1389
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1376 p1389
;; p1376
;; p1389
;; ----- [p1390]
;; p1390
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1373 p1390
;; p1373
;; p1390
;; ----- [p1391]
;; p1391
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1370 p1391
;; p1370
;; p1391
;; ----- [p1392]
;; p1392
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1367 p1392
;; p1367
;; p1392
;; ----- [p1393]
;; p1393
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1364 p1393
;; p1364
;; p1393
;; ----- [p1394]
;; p1394
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1361 p1394
;; p1361
;; p1394
;; ----- [p1395]
;; p1395
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1358 p1395
;; p1358
;; p1395
;; ----- [p1396]
;; p1396
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1355 p1396
;; p1355
;; p1396
;; ----- [p1397]
;; p1397
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1352 p1397
;; p1352
;; p1397
;; ----- [p1398]
;; p1398
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1349 p1398
;; p1349
;; p1398
;; ----- [p1399]
;; p1399
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1346 p1399
;; p1346
;; p1399
;; ----- [p1400]
;; p1400
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1343 p1400
;; p1343
;; p1400
;; ----- [p1401]
;; p1401
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1340 p1401
;; p1340
;; p1401
;; ----- [p1402]
;; p1402
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1337 p1402
;; p1337
;; p1402
;; ----- [p1403]
;; p1403
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1334 p1403
;; p1334
;; p1403
;; ----- [p1404]
;; p1404
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1331 p1404
;; p1331
;; p1404
;; ----- [p1405]
;; p1405
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1328 p1405
;; p1328
;; p1405
;; ----- [p1406]
;; p1406
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1325 p1406
;; p1325
;; p1406
;; ----- [p1407]
;; p1407
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1322 p1407
;; p1322
;; p1407
;; ----- [p1408]
;; p1408
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1319 p1408
;; p1319
;; p1408
;; ----- [p1409]
;; p1409
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1316 p1409
;; p1316
;; p1409
;; ----- [p1410]
;; p1410
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1313 p1410
;; p1313
;; p1410
;; ----- [p1411]
;; p1411
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1310 p1411
;; p1310
;; p1411
;; ----- [p1412]
;; p1412
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1307 p1412
;; p1307
;; p1412
;; ----- [p1413]
;; p1413
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1304 p1413
;; p1304
;; p1413
;; ----- [p1414]
;; p1414
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1301 p1414
;; p1301
;; p1414
;; ----- [p1415]
;; p1415
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1298 p1415
;; p1298
;; p1415
;; ----- [p1416]
;; p1416
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1295 p1416
;; p1295
;; p1416
;; ----- [p1417]
;; p1417
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1292 p1417
;; p1292
;; p1417
;; ----- [p1418]
;; p1418
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1289 p1418
;; p1289
;; p1418
;; ----- [p1419]
;; p1419
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1286 p1419
;; p1286
;; p1419
;; ----- [p1420]
;; p1420
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1283 p1420
;; p1283
;; p1420
;; ----- [p1421]
;; p1421
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1280 p1421
;; p1280
;; p1421
;; ----- [p1422]
;; p1422
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1277 p1422
;; p1277
;; p1422
;; ----- [p1423]
;; p1423
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1274 p1423
;; p1274
;; p1423
;; ----- [p1424]
;; p1424
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1271 p1424
;; p1271
;; p1424
;; ----- [p1425]
;; p1425
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1268 p1425
;; p1268
;; p1425
;; ----- [p1426]
;; p1426
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1265 p1426
;; p1265
;; p1426
;; ----- [p1427]
;; p1427
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1262 p1427
;; p1262
;; p1427
;; ----- [p1428]
;; p1428
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1259 p1428
;; p1259
;; p1428
;; ----- [p1429]
;; p1429
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1256 p1429
;; p1256
;; p1429
;; ----- [p1430]
;; p1430
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1253 p1430
;; p1253
;; p1430
;; ----- [p1431]
;; p1431
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1250 p1431
;; p1250
;; p1431
;; ----- [p1432]
;; p1432
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1247 p1432
;; p1247
;; p1432
;; ----- [p1433]
;; p1433
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1244 p1433
;; p1244
;; p1433
;; ----- [p1434]
;; p1434
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1241 p1434
;; p1241
;; p1434
;; ----- [p1435]
;; p1435
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1238 p1435
;; p1238
;; p1435
;; ----- [p1436]
;; p1436
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1235 p1436
;; p1235
;; p1436
;; ----- [p1437]
;; p1437
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1232 p1437
;; p1232
;; p1437
;; ----- [p1438]
;; p1438
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1229 p1438
;; p1229
;; p1438
;; ----- [p1439]
;; p1439
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1226 p1439
;; p1226
;; p1439
;; ----- [p1440]
;; p1440
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_Array p1223 p1440
;; p1223
;; p1440
;; ----- [p1441]
;; p1441
;; 
;; Proof. C_Array QED
;;; Verifying MC_Just_Constant p1441
;; p1441
;; ----- [p1442]
;; p1442
;; 
;; Proof. Just Constant equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p1443]
;; p1443
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p1444]
;; p1444
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying G_GlobalVariable p1208 p1209 p1210 p1211 p1212 p1214 p1215 p1219 p1221 p1442 p1443 p1444 p1445 p1446
;; p1208
;; p1209
;; p1210
;; p1211
;; p1212
;; p1214
;; p1215
;; p1219
;; p1221
;; p1442
;; p1443
;; p1444
;; p1445
;; p1446
;; ----- [p1447]
;; p1447
;; 
;; Proof. global variables .str.13.1851 and .str.13.1854 equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p1448
;; p1448
;; ----- [p1449]
;; p1449
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p1206 p1449
;; p1206
;; p1449
;; ----- [p1450]
;; p1450
;; 
;; Proof. C_GlobalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p1451 p1452
;; p1451
;; p1452
;; ----- [p1453]
;; p1453
;; 
;; Proof. C_Int QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p1454 p1455
;; p1454
;; p1455
;; ----- [p1456]
;; p1456
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p1457]
;; p1457
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p1456 p1457
;; p1456
;; p1457
;; ----- [p1458]
;; p1458
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1453 p1458
;; p1453
;; p1458
;; ----- [p1459]
;; p1459
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_GetElementPtr p1199 p1450 p1459
;; p1199
;; p1450
;; p1459
;; ----- [p1460]
;; p1460
;; 
;; Proof. C_GetElementPtr QED
;;; 64 == 64 : Word32
;;; 3 == 3 : Integer
;;; Verifying C_Int p1461 p1462
;; p1461
;; p1462
;; ----- [p1463]
;; p1463
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p1464
;; p1464
;; ----- [p1465]
;; p1465
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p1466
;; p1466
;; ----- [p1467]
;; p1467
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p1465 p1467
;; p1465
;; p1467
;; ----- [p1468]
;; p1468
;; 
;; Proof. T_PointerType QED
;;; Verifying C_IntToPtr p1463 p1468
;; p1463
;; p1468
;; ----- [p1469]
;; p1469
;; 
;; Proof. C_IntToPtr QED
;;; True == True : Bool
;;; 55 == 55 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p1472
;; p1472
;; ----- [p1473]
;; p1473
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p1471 p1473
;; p1471
;; p1473
;; ----- [p1474]
;; p1474
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p1475
;; p1475
;; ----- [p1476]
;; p1476
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p1474 p1476
;; p1474
;; p1476
;; ----- [p1477]
;; p1477
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p1478]
;; p1478
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Private 
;; ----- [p1480]
;; p1480
;; 
;; Proof. L_Private QED
;;; Verifying V_Default 
;; ----- [p1481]
;; p1481
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p1482]
;; p1482
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying MM_Nothing_Model 
;; ----- [p1483]
;; p1483
;; 
;; Proof. Nothing (Model) equivalent QED
;;; Verifying UA_GlobalAddr 
;; ----- [p1484]
;; p1484
;; 
;; Proof. UA_GlobalAddr QED
;;; Verifying MUA_Just_UnnamedAddr p1484
;; p1484
;; ----- [p1485]
;; p1485
;; 
;; Proof. Just UnnamedAddr equivalent QED
;;; True == True : Bool
;;; 55 == 55 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p1488
;; p1488
;; ----- [p1489]
;; p1489
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p1487 p1489
;; p1487
;; p1489
;; ----- [p1490]
;; p1490
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p1491
;; p1491
;; ----- [p1492]
;; p1492
;; 
;; Proof. AS_AddrSpace QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p1493
;; p1493
;; ----- [p1494]
;; p1494
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; 45 == 45 : Integer
;;; Verifying C_Int p1495 p1496
;; p1495
;; p1496
;; ----- [p1497]
;; p1497
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 98 == 98 : Integer
;;; Verifying C_Int p1498 p1499
;; p1498
;; p1499
;; ----- [p1500]
;; p1500
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 105 == 105 : Integer
;;; Verifying C_Int p1501 p1502
;; p1501
;; p1502
;; ----- [p1503]
;; p1503
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 110 == 110 : Integer
;;; Verifying C_Int p1504 p1505
;; p1504
;; p1505
;; ----- [p1506]
;; p1506
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 100 == 100 : Integer
;;; Verifying C_Int p1507 p1508
;; p1507
;; p1508
;; ----- [p1509]
;; p1509
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1510 p1511
;; p1510
;; p1511
;; ----- [p1512]
;; p1512
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 45 == 45 : Integer
;;; Verifying C_Int p1513 p1514
;; p1513
;; p1514
;; ----- [p1515]
;; p1515
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 98 == 98 : Integer
;;; Verifying C_Int p1516 p1517
;; p1516
;; p1517
;; ----- [p1518]
;; p1518
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1519 p1520
;; p1519
;; p1520
;; ----- [p1521]
;; p1521
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p1522 p1523
;; p1522
;; p1523
;; ----- [p1524]
;; p1524
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 100 == 100 : Integer
;;; Verifying C_Int p1525 p1526
;; p1525
;; p1526
;; ----- [p1527]
;; p1527
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 100 == 100 : Integer
;;; Verifying C_Int p1528 p1529
;; p1528
;; p1529
;; ----- [p1530]
;; p1530
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p1531 p1532
;; p1531
;; p1532
;; ----- [p1533]
;; p1533
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p1534 p1535
;; p1534
;; p1535
;; ----- [p1536]
;; p1536
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p1537 p1538
;; p1537
;; p1538
;; ----- [p1539]
;; p1539
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p1540 p1541
;; p1540
;; p1541
;; ----- [p1542]
;; p1542
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1543 p1544
;; p1543
;; p1544
;; ----- [p1545]
;; p1545
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p1546 p1547
;; p1546
;; p1547
;; ----- [p1548]
;; p1548
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 111 == 111 : Integer
;;; Verifying C_Int p1549 p1550
;; p1549
;; p1550
;; ----- [p1551]
;; p1551
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1552 p1553
;; p1552
;; p1553
;; ----- [p1554]
;; p1554
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 108 == 108 : Integer
;;; Verifying C_Int p1555 p1556
;; p1555
;; p1556
;; ----- [p1557]
;; p1557
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 105 == 105 : Integer
;;; Verifying C_Int p1558 p1559
;; p1558
;; p1559
;; ----- [p1560]
;; p1560
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p1561 p1562
;; p1561
;; p1562
;; ----- [p1563]
;; p1563
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p1564 p1565
;; p1564
;; p1565
;; ----- [p1566]
;; p1566
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p1567 p1568
;; p1567
;; p1568
;; ----- [p1569]
;; p1569
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 110 == 110 : Integer
;;; Verifying C_Int p1570 p1571
;; p1570
;; p1571
;; ----- [p1572]
;; p1572
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1573 p1574
;; p1573
;; p1574
;; ----- [p1575]
;; p1575
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p1576 p1577
;; p1576
;; p1577
;; ----- [p1578]
;; p1578
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 111 == 111 : Integer
;;; Verifying C_Int p1579 p1580
;; p1579
;; p1580
;; ----- [p1581]
;; p1581
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 46 == 46 : Integer
;;; Verifying C_Int p1582 p1583
;; p1582
;; p1583
;; ----- [p1584]
;; p1584
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1585 p1586
;; p1585
;; p1586
;; ----- [p1587]
;; p1587
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 100 == 100 : Integer
;;; Verifying C_Int p1588 p1589
;; p1588
;; p1589
;; ----- [p1590]
;; p1590
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p1591 p1592
;; p1591
;; p1592
;; ----- [p1593]
;; p1593
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 102 == 102 : Integer
;;; Verifying C_Int p1594 p1595
;; p1594
;; p1595
;; ----- [p1596]
;; p1596
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p1597 p1598
;; p1597
;; p1598
;; ----- [p1599]
;; p1599
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 117 == 117 : Integer
;;; Verifying C_Int p1600 p1601
;; p1600
;; p1601
;; ----- [p1602]
;; p1602
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 108 == 108 : Integer
;;; Verifying C_Int p1603 p1604
;; p1603
;; p1604
;; ----- [p1605]
;; p1605
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p1606 p1607
;; p1606
;; p1607
;; ----- [p1608]
;; p1608
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 58 == 58 : Integer
;;; Verifying C_Int p1609 p1610
;; p1609
;; p1610
;; ----- [p1611]
;; p1611
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1612 p1613
;; p1612
;; p1613
;; ----- [p1614]
;; p1614
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p1615 p1616
;; p1615
;; p1616
;; ----- [p1617]
;; p1617
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 110 == 110 : Integer
;;; Verifying C_Int p1618 p1619
;; p1618
;; p1619
;; ----- [p1620]
;; p1620
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 121 == 121 : Integer
;;; Verifying C_Int p1621 p1622
;; p1621
;; p1622
;; ----- [p1623]
;; p1623
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1624 p1625
;; p1624
;; p1625
;; ----- [p1626]
;; p1626
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p1627 p1628
;; p1627
;; p1628
;; ----- [p1629]
;; p1629
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 118 == 118 : Integer
;;; Verifying C_Int p1630 p1631
;; p1630
;; p1631
;; ----- [p1632]
;; p1632
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p1633 p1634
;; p1633
;; p1634
;; ----- [p1635]
;; p1635
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 105 == 105 : Integer
;;; Verifying C_Int p1636 p1637
;; p1636
;; p1637
;; ----- [p1638]
;; p1638
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 108 == 108 : Integer
;;; Verifying C_Int p1639 p1640
;; p1639
;; p1640
;; ----- [p1641]
;; p1641
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p1642 p1643
;; p1642
;; p1643
;; ----- [p1644]
;; p1644
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 98 == 98 : Integer
;;; Verifying C_Int p1645 p1646
;; p1645
;; p1646
;; ----- [p1647]
;; p1647
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 108 == 108 : Integer
;;; Verifying C_Int p1648 p1649
;; p1648
;; p1649
;; ----- [p1650]
;; p1650
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p1651 p1652
;; p1651
;; p1652
;; ----- [p1653]
;; p1653
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 46 == 46 : Integer
;;; Verifying C_Int p1654 p1655
;; p1654
;; p1655
;; ----- [p1656]
;; p1656
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p1657 p1658
;; p1657
;; p1658
;; ----- [p1659]
;; p1659
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p1660]
;; p1660
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p1659 p1660
;; p1659
;; p1660
;; ----- [p1661]
;; p1661
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1656 p1661
;; p1656
;; p1661
;; ----- [p1662]
;; p1662
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1653 p1662
;; p1653
;; p1662
;; ----- [p1663]
;; p1663
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1650 p1663
;; p1650
;; p1663
;; ----- [p1664]
;; p1664
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1647 p1664
;; p1647
;; p1664
;; ----- [p1665]
;; p1665
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1644 p1665
;; p1644
;; p1665
;; ----- [p1666]
;; p1666
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1641 p1666
;; p1641
;; p1666
;; ----- [p1667]
;; p1667
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1638 p1667
;; p1638
;; p1667
;; ----- [p1668]
;; p1668
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1635 p1668
;; p1635
;; p1668
;; ----- [p1669]
;; p1669
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1632 p1669
;; p1632
;; p1669
;; ----- [p1670]
;; p1670
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1629 p1670
;; p1629
;; p1670
;; ----- [p1671]
;; p1671
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1626 p1671
;; p1626
;; p1671
;; ----- [p1672]
;; p1672
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1623 p1672
;; p1623
;; p1672
;; ----- [p1673]
;; p1673
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1620 p1673
;; p1620
;; p1673
;; ----- [p1674]
;; p1674
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1617 p1674
;; p1617
;; p1674
;; ----- [p1675]
;; p1675
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1614 p1675
;; p1614
;; p1675
;; ----- [p1676]
;; p1676
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1611 p1676
;; p1611
;; p1676
;; ----- [p1677]
;; p1677
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1608 p1677
;; p1608
;; p1677
;; ----- [p1678]
;; p1678
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1605 p1678
;; p1605
;; p1678
;; ----- [p1679]
;; p1679
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1602 p1679
;; p1602
;; p1679
;; ----- [p1680]
;; p1680
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1599 p1680
;; p1599
;; p1680
;; ----- [p1681]
;; p1681
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1596 p1681
;; p1596
;; p1681
;; ----- [p1682]
;; p1682
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1593 p1682
;; p1593
;; p1682
;; ----- [p1683]
;; p1683
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1590 p1683
;; p1590
;; p1683
;; ----- [p1684]
;; p1684
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1587 p1684
;; p1587
;; p1684
;; ----- [p1685]
;; p1685
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1584 p1685
;; p1584
;; p1685
;; ----- [p1686]
;; p1686
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1581 p1686
;; p1581
;; p1686
;; ----- [p1687]
;; p1687
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1578 p1687
;; p1578
;; p1687
;; ----- [p1688]
;; p1688
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1575 p1688
;; p1575
;; p1688
;; ----- [p1689]
;; p1689
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1572 p1689
;; p1572
;; p1689
;; ----- [p1690]
;; p1690
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1569 p1690
;; p1569
;; p1690
;; ----- [p1691]
;; p1691
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1566 p1691
;; p1566
;; p1691
;; ----- [p1692]
;; p1692
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1563 p1692
;; p1563
;; p1692
;; ----- [p1693]
;; p1693
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1560 p1693
;; p1560
;; p1693
;; ----- [p1694]
;; p1694
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1557 p1694
;; p1557
;; p1694
;; ----- [p1695]
;; p1695
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1554 p1695
;; p1554
;; p1695
;; ----- [p1696]
;; p1696
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1551 p1696
;; p1551
;; p1696
;; ----- [p1697]
;; p1697
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1548 p1697
;; p1548
;; p1697
;; ----- [p1698]
;; p1698
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1545 p1698
;; p1545
;; p1698
;; ----- [p1699]
;; p1699
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1542 p1699
;; p1542
;; p1699
;; ----- [p1700]
;; p1700
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1539 p1700
;; p1539
;; p1700
;; ----- [p1701]
;; p1701
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1536 p1701
;; p1536
;; p1701
;; ----- [p1702]
;; p1702
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1533 p1702
;; p1533
;; p1702
;; ----- [p1703]
;; p1703
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1530 p1703
;; p1530
;; p1703
;; ----- [p1704]
;; p1704
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1527 p1704
;; p1527
;; p1704
;; ----- [p1705]
;; p1705
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1524 p1705
;; p1524
;; p1705
;; ----- [p1706]
;; p1706
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1521 p1706
;; p1521
;; p1706
;; ----- [p1707]
;; p1707
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1518 p1707
;; p1518
;; p1707
;; ----- [p1708]
;; p1708
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1515 p1708
;; p1515
;; p1708
;; ----- [p1709]
;; p1709
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1512 p1709
;; p1512
;; p1709
;; ----- [p1710]
;; p1710
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1509 p1710
;; p1509
;; p1710
;; ----- [p1711]
;; p1711
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1506 p1711
;; p1506
;; p1711
;; ----- [p1712]
;; p1712
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1503 p1712
;; p1503
;; p1712
;; ----- [p1713]
;; p1713
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1500 p1713
;; p1500
;; p1713
;; ----- [p1714]
;; p1714
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1497 p1714
;; p1497
;; p1714
;; ----- [p1715]
;; p1715
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_Array p1494 p1715
;; p1494
;; p1715
;; ----- [p1716]
;; p1716
;; 
;; Proof. C_Array QED
;;; Verifying MC_Just_Constant p1716
;; p1716
;; ----- [p1717]
;; p1717
;; 
;; Proof. Just Constant equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p1718]
;; p1718
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p1719]
;; p1719
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying G_GlobalVariable p1479 p1480 p1481 p1482 p1483 p1485 p1486 p1490 p1492 p1717 p1718 p1719 p1720 p1721
;; p1479
;; p1480
;; p1481
;; p1482
;; p1483
;; p1485
;; p1486
;; p1490
;; p1492
;; p1717
;; p1718
;; p1719
;; p1720
;; p1721
;; ----- [p1722]
;; p1722
;; 
;; Proof. global variables .str.14.1852 and .str.14.1855 equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p1723
;; p1723
;; ----- [p1724]
;; p1724
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p1477 p1724
;; p1477
;; p1724
;; ----- [p1725]
;; p1725
;; 
;; Proof. C_GlobalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p1726 p1727
;; p1726
;; p1727
;; ----- [p1728]
;; p1728
;; 
;; Proof. C_Int QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p1729 p1730
;; p1729
;; p1730
;; ----- [p1731]
;; p1731
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p1732]
;; p1732
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p1731 p1732
;; p1731
;; p1732
;; ----- [p1733]
;; p1733
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1728 p1733
;; p1728
;; p1733
;; ----- [p1734]
;; p1734
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_GetElementPtr p1470 p1725 p1734
;; p1470
;; p1725
;; p1734
;; ----- [p1735]
;; p1735
;; 
;; Proof. C_GetElementPtr QED
;;; 64 == 64 : Word32
;;; 1 == 1 : Integer
;;; Verifying C_Int p1736 p1737
;; p1736
;; p1737
;; ----- [p1738]
;; p1738
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p1739
;; p1739
;; ----- [p1740]
;; p1740
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p1741
;; p1741
;; ----- [p1742]
;; p1742
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p1740 p1742
;; p1740
;; p1742
;; ----- [p1743]
;; p1743
;; 
;; Proof. T_PointerType QED
;;; Verifying C_IntToPtr p1738 p1743
;; p1738
;; p1743
;; ----- [p1744]
;; p1744
;; 
;; Proof. C_IntToPtr QED
;;; True == True : Bool
;;; 13 == 13 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p1747
;; p1747
;; ----- [p1748]
;; p1748
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p1746 p1748
;; p1746
;; p1748
;; ----- [p1749]
;; p1749
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p1750
;; p1750
;; ----- [p1751]
;; p1751
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p1749 p1751
;; p1749
;; p1751
;; ----- [p1752]
;; p1752
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p1753]
;; p1753
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Private 
;; ----- [p1755]
;; p1755
;; 
;; Proof. L_Private QED
;;; Verifying V_Default 
;; ----- [p1756]
;; p1756
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p1757]
;; p1757
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying MM_Nothing_Model 
;; ----- [p1758]
;; p1758
;; 
;; Proof. Nothing (Model) equivalent QED
;;; Verifying UA_GlobalAddr 
;; ----- [p1759]
;; p1759
;; 
;; Proof. UA_GlobalAddr QED
;;; Verifying MUA_Just_UnnamedAddr p1759
;; p1759
;; ----- [p1760]
;; p1760
;; 
;; Proof. Just UnnamedAddr equivalent QED
;;; True == True : Bool
;;; 13 == 13 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p1763
;; p1763
;; ----- [p1764]
;; p1764
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p1762 p1764
;; p1762
;; p1764
;; ----- [p1765]
;; p1765
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p1766
;; p1766
;; ----- [p1767]
;; p1767
;; 
;; Proof. AS_AddrSpace QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p1768
;; p1768
;; ----- [p1769]
;; p1769
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; 67 == 67 : Integer
;;; Verifying C_Int p1770 p1771
;; p1770
;; p1771
;; ----- [p1772]
;; p1772
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 111 == 111 : Integer
;;; Verifying C_Int p1773 p1774
;; p1773
;; p1774
;; ----- [p1775]
;; p1775
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 110 == 110 : Integer
;;; Verifying C_Int p1776 p1777
;; p1776
;; p1777
;; ----- [p1778]
;; p1778
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 99 == 99 : Integer
;;; Verifying C_Int p1779 p1780
;; p1779
;; p1780
;; ----- [p1781]
;; p1781
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 117 == 117 : Integer
;;; Verifying C_Int p1782 p1783
;; p1782
;; p1783
;; ----- [p1784]
;; p1784
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p1785 p1786
;; p1785
;; p1786
;; ----- [p1787]
;; p1787
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p1788 p1789
;; p1788
;; p1789
;; ----- [p1790]
;; p1790
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p1791 p1792
;; p1791
;; p1792
;; ----- [p1793]
;; p1793
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 110 == 110 : Integer
;;; Verifying C_Int p1794 p1795
;; p1794
;; p1795
;; ----- [p1796]
;; p1796
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 99 == 99 : Integer
;;; Verifying C_Int p1797 p1798
;; p1797
;; p1798
;; ----- [p1799]
;; p1799
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 121 == 121 : Integer
;;; Verifying C_Int p1800 p1801
;; p1800
;; p1801
;; ----- [p1802]
;; p1802
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 58 == 58 : Integer
;;; Verifying C_Int p1803 p1804
;; p1803
;; p1804
;; ----- [p1805]
;; p1805
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p1806 p1807
;; p1806
;; p1807
;; ----- [p1808]
;; p1808
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p1809]
;; p1809
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p1808 p1809
;; p1808
;; p1809
;; ----- [p1810]
;; p1810
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1805 p1810
;; p1805
;; p1810
;; ----- [p1811]
;; p1811
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1802 p1811
;; p1802
;; p1811
;; ----- [p1812]
;; p1812
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1799 p1812
;; p1799
;; p1812
;; ----- [p1813]
;; p1813
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1796 p1813
;; p1796
;; p1813
;; ----- [p1814]
;; p1814
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1793 p1814
;; p1793
;; p1814
;; ----- [p1815]
;; p1815
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1790 p1815
;; p1790
;; p1815
;; ----- [p1816]
;; p1816
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1787 p1816
;; p1787
;; p1816
;; ----- [p1817]
;; p1817
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1784 p1817
;; p1784
;; p1817
;; ----- [p1818]
;; p1818
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1781 p1818
;; p1781
;; p1818
;; ----- [p1819]
;; p1819
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1778 p1819
;; p1778
;; p1819
;; ----- [p1820]
;; p1820
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1775 p1820
;; p1775
;; p1820
;; ----- [p1821]
;; p1821
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1772 p1821
;; p1772
;; p1821
;; ----- [p1822]
;; p1822
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_Array p1769 p1822
;; p1769
;; p1822
;; ----- [p1823]
;; p1823
;; 
;; Proof. C_Array QED
;;; Verifying MC_Just_Constant p1823
;; p1823
;; ----- [p1824]
;; p1824
;; 
;; Proof. Just Constant equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p1825]
;; p1825
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p1826]
;; p1826
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying G_GlobalVariable p1754 p1755 p1756 p1757 p1758 p1760 p1761 p1765 p1767 p1824 p1825 p1826 p1827 p1828
;; p1754
;; p1755
;; p1756
;; p1757
;; p1758
;; p1760
;; p1761
;; p1765
;; p1767
;; p1824
;; p1825
;; p1826
;; p1827
;; p1828
;; ----- [p1829]
;; p1829
;; 
;; Proof. global variables .str.15.1853 and .str.15.1856 equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p1830
;; p1830
;; ----- [p1831]
;; p1831
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p1752 p1831
;; p1752
;; p1831
;; ----- [p1832]
;; p1832
;; 
;; Proof. C_GlobalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p1833 p1834
;; p1833
;; p1834
;; ----- [p1835]
;; p1835
;; 
;; Proof. C_Int QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p1836 p1837
;; p1836
;; p1837
;; ----- [p1838]
;; p1838
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p1839]
;; p1839
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p1838 p1839
;; p1838
;; p1839
;; ----- [p1840]
;; p1840
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1835 p1840
;; p1835
;; p1840
;; ----- [p1841]
;; p1841
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_GetElementPtr p1745 p1832 p1841
;; p1745
;; p1832
;; p1841
;; ----- [p1842]
;; p1842
;; 
;; Proof. C_GetElementPtr QED
;;; 64 == 64 : Word32
;;; 5 == 5 : Integer
;;; Verifying C_Int p1843 p1844
;; p1843
;; p1844
;; ----- [p1845]
;; p1845
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p1846
;; p1846
;; ----- [p1847]
;; p1847
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p1848
;; p1848
;; ----- [p1849]
;; p1849
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p1847 p1849
;; p1847
;; p1849
;; ----- [p1850]
;; p1850
;; 
;; Proof. T_PointerType QED
;;; Verifying C_IntToPtr p1845 p1850
;; p1845
;; p1850
;; ----- [p1851]
;; p1851
;; 
;; Proof. C_IntToPtr QED
;;; True == True : Bool
;;; 40 == 40 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p1854
;; p1854
;; ----- [p1855]
;; p1855
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p1853 p1855
;; p1853
;; p1855
;; ----- [p1856]
;; p1856
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p1857
;; p1857
;; ----- [p1858]
;; p1858
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p1856 p1858
;; p1856
;; p1858
;; ----- [p1859]
;; p1859
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p1860]
;; p1860
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Private 
;; ----- [p1862]
;; p1862
;; 
;; Proof. L_Private QED
;;; Verifying V_Default 
;; ----- [p1863]
;; p1863
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p1864]
;; p1864
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying MM_Nothing_Model 
;; ----- [p1865]
;; p1865
;; 
;; Proof. Nothing (Model) equivalent QED
;;; Verifying UA_GlobalAddr 
;; ----- [p1866]
;; p1866
;; 
;; Proof. UA_GlobalAddr QED
;;; Verifying MUA_Just_UnnamedAddr p1866
;; p1866
;; ----- [p1867]
;; p1867
;; 
;; Proof. Just UnnamedAddr equivalent QED
;;; True == True : Bool
;;; 40 == 40 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p1870
;; p1870
;; ----- [p1871]
;; p1871
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p1869 p1871
;; p1869
;; p1871
;; ----- [p1872]
;; p1872
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p1873
;; p1873
;; ----- [p1874]
;; p1874
;; 
;; Proof. AS_AddrSpace QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p1875
;; p1875
;; ----- [p1876]
;; p1876
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; 45 == 45 : Integer
;;; Verifying C_Int p1877 p1878
;; p1877
;; p1878
;; ----- [p1879]
;; p1879
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 119 == 119 : Integer
;;; Verifying C_Int p1880 p1881
;; p1880
;; p1881
;; ----- [p1882]
;; p1882
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 111 == 111 : Integer
;;; Verifying C_Int p1883 p1884
;; p1883
;; p1884
;; ----- [p1885]
;; p1885
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p1886 p1887
;; p1886
;; p1887
;; ----- [p1888]
;; p1888
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 107 == 107 : Integer
;;; Verifying C_Int p1889 p1890
;; p1889
;; p1890
;; ----- [p1891]
;; p1891
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p1892 p1893
;; p1892
;; p1893
;; ----- [p1894]
;; p1894
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p1895 p1896
;; p1895
;; p1896
;; ----- [p1897]
;; p1897
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p1898 p1899
;; p1898
;; p1899
;; ----- [p1900]
;; p1900
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1901 p1902
;; p1901
;; p1902
;; ----- [p1903]
;; p1903
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 45 == 45 : Integer
;;; Verifying C_Int p1904 p1905
;; p1904
;; p1905
;; ----- [p1906]
;; p1906
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 119 == 119 : Integer
;;; Verifying C_Int p1907 p1908
;; p1907
;; p1908
;; ----- [p1909]
;; p1909
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1910 p1911
;; p1910
;; p1911
;; ----- [p1912]
;; p1912
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 110 == 110 : Integer
;;; Verifying C_Int p1913 p1914
;; p1913
;; p1914
;; ----- [p1915]
;; p1915
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 117 == 117 : Integer
;;; Verifying C_Int p1916 p1917
;; p1916
;; p1917
;; ----- [p1918]
;; p1918
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 109 == 109 : Integer
;;; Verifying C_Int p1919 p1920
;; p1919
;; p1920
;; ----- [p1921]
;; p1921
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 98 == 98 : Integer
;;; Verifying C_Int p1922 p1923
;; p1922
;; p1923
;; ----- [p1924]
;; p1924
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p1925 p1926
;; p1925
;; p1926
;; ----- [p1927]
;; p1927
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p1928 p1929
;; p1928
;; p1929
;; ----- [p1930]
;; p1930
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1931 p1932
;; p1931
;; p1932
;; ----- [p1933]
;; p1933
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 111 == 111 : Integer
;;; Verifying C_Int p1934 p1935
;; p1934
;; p1935
;; ----- [p1936]
;; p1936
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 102 == 102 : Integer
;;; Verifying C_Int p1937 p1938
;; p1937
;; p1938
;; ----- [p1939]
;; p1939
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1940 p1941
;; p1940
;; p1941
;; ----- [p1942]
;; p1942
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 112 == 112 : Integer
;;; Verifying C_Int p1943 p1944
;; p1943
;; p1944
;; ----- [p1945]
;; p1945
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p1946 p1947
;; p1946
;; p1947
;; ----- [p1948]
;; p1948
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 111 == 111 : Integer
;;; Verifying C_Int p1949 p1950
;; p1949
;; p1950
;; ----- [p1951]
;; p1951
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 99 == 99 : Integer
;;; Verifying C_Int p1952 p1953
;; p1952
;; p1953
;; ----- [p1954]
;; p1954
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p1955 p1956
;; p1955
;; p1956
;; ----- [p1957]
;; p1957
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p1958 p1959
;; p1958
;; p1959
;; ----- [p1960]
;; p1960
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p1961 p1962
;; p1961
;; p1962
;; ----- [p1963]
;; p1963
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p1964 p1965
;; p1964
;; p1965
;; ----- [p1966]
;; p1966
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p1967 p1968
;; p1967
;; p1968
;; ----- [p1969]
;; p1969
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1970 p1971
;; p1970
;; p1971
;; ----- [p1972]
;; p1972
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p1973 p1974
;; p1973
;; p1974
;; ----- [p1975]
;; p1975
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 111 == 111 : Integer
;;; Verifying C_Int p1976 p1977
;; p1976
;; p1977
;; ----- [p1978]
;; p1978
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p1979 p1980
;; p1979
;; p1980
;; ----- [p1981]
;; p1981
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 117 == 117 : Integer
;;; Verifying C_Int p1982 p1983
;; p1982
;; p1983
;; ----- [p1984]
;; p1984
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p1985 p1986
;; p1985
;; p1986
;; ----- [p1987]
;; p1987
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p1988 p1989
;; p1988
;; p1989
;; ----- [p1990]
;; p1990
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 46 == 46 : Integer
;;; Verifying C_Int p1991 p1992
;; p1991
;; p1992
;; ----- [p1993]
;; p1993
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p1994 p1995
;; p1994
;; p1995
;; ----- [p1996]
;; p1996
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p1997]
;; p1997
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p1996 p1997
;; p1996
;; p1997
;; ----- [p1998]
;; p1998
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1993 p1998
;; p1993
;; p1998
;; ----- [p1999]
;; p1999
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1990 p1999
;; p1990
;; p1999
;; ----- [p2000]
;; p2000
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1987 p2000
;; p1987
;; p2000
;; ----- [p2001]
;; p2001
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1984 p2001
;; p1984
;; p2001
;; ----- [p2002]
;; p2002
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1981 p2002
;; p1981
;; p2002
;; ----- [p2003]
;; p2003
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1978 p2003
;; p1978
;; p2003
;; ----- [p2004]
;; p2004
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1975 p2004
;; p1975
;; p2004
;; ----- [p2005]
;; p2005
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1972 p2005
;; p1972
;; p2005
;; ----- [p2006]
;; p2006
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1969 p2006
;; p1969
;; p2006
;; ----- [p2007]
;; p2007
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1966 p2007
;; p1966
;; p2007
;; ----- [p2008]
;; p2008
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1963 p2008
;; p1963
;; p2008
;; ----- [p2009]
;; p2009
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1960 p2009
;; p1960
;; p2009
;; ----- [p2010]
;; p2010
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1957 p2010
;; p1957
;; p2010
;; ----- [p2011]
;; p2011
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1954 p2011
;; p1954
;; p2011
;; ----- [p2012]
;; p2012
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1951 p2012
;; p1951
;; p2012
;; ----- [p2013]
;; p2013
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1948 p2013
;; p1948
;; p2013
;; ----- [p2014]
;; p2014
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1945 p2014
;; p1945
;; p2014
;; ----- [p2015]
;; p2015
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1942 p2015
;; p1942
;; p2015
;; ----- [p2016]
;; p2016
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1939 p2016
;; p1939
;; p2016
;; ----- [p2017]
;; p2017
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1936 p2017
;; p1936
;; p2017
;; ----- [p2018]
;; p2018
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1933 p2018
;; p1933
;; p2018
;; ----- [p2019]
;; p2019
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1930 p2019
;; p1930
;; p2019
;; ----- [p2020]
;; p2020
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1927 p2020
;; p1927
;; p2020
;; ----- [p2021]
;; p2021
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1924 p2021
;; p1924
;; p2021
;; ----- [p2022]
;; p2022
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1921 p2022
;; p1921
;; p2022
;; ----- [p2023]
;; p2023
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1918 p2023
;; p1918
;; p2023
;; ----- [p2024]
;; p2024
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1915 p2024
;; p1915
;; p2024
;; ----- [p2025]
;; p2025
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1912 p2025
;; p1912
;; p2025
;; ----- [p2026]
;; p2026
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1909 p2026
;; p1909
;; p2026
;; ----- [p2027]
;; p2027
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1906 p2027
;; p1906
;; p2027
;; ----- [p2028]
;; p2028
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1903 p2028
;; p1903
;; p2028
;; ----- [p2029]
;; p2029
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1900 p2029
;; p1900
;; p2029
;; ----- [p2030]
;; p2030
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1897 p2030
;; p1897
;; p2030
;; ----- [p2031]
;; p2031
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1894 p2031
;; p1894
;; p2031
;; ----- [p2032]
;; p2032
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1891 p2032
;; p1891
;; p2032
;; ----- [p2033]
;; p2033
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1888 p2033
;; p1888
;; p2033
;; ----- [p2034]
;; p2034
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1885 p2034
;; p1885
;; p2034
;; ----- [p2035]
;; p2035
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1882 p2035
;; p1882
;; p2035
;; ----- [p2036]
;; p2036
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1879 p2036
;; p1879
;; p2036
;; ----- [p2037]
;; p2037
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_Array p1876 p2037
;; p1876
;; p2037
;; ----- [p2038]
;; p2038
;; 
;; Proof. C_Array QED
;;; Verifying MC_Just_Constant p2038
;; p2038
;; ----- [p2039]
;; p2039
;; 
;; Proof. Just Constant equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p2040]
;; p2040
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p2041]
;; p2041
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying G_GlobalVariable p1861 p1862 p1863 p1864 p1865 p1867 p1868 p1872 p1874 p2039 p2040 p2041 p2042 p2043
;; p1861
;; p1862
;; p1863
;; p1864
;; p1865
;; p1867
;; p1868
;; p1872
;; p1874
;; p2039
;; p2040
;; p2041
;; p2042
;; p2043
;; ----- [p2044]
;; p2044
;; 
;; Proof. global variables .str.16.1854 and .str.16.1857 equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p2045
;; p2045
;; ----- [p2046]
;; p2046
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p1859 p2046
;; p1859
;; p2046
;; ----- [p2047]
;; p2047
;; 
;; Proof. C_GlobalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p2048 p2049
;; p2048
;; p2049
;; ----- [p2050]
;; p2050
;; 
;; Proof. C_Int QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p2051 p2052
;; p2051
;; p2052
;; ----- [p2053]
;; p2053
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p2054]
;; p2054
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p2053 p2054
;; p2053
;; p2054
;; ----- [p2055]
;; p2055
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2050 p2055
;; p2050
;; p2055
;; ----- [p2056]
;; p2056
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_GetElementPtr p1852 p2047 p2056
;; p1852
;; p2047
;; p2056
;; ----- [p2057]
;; p2057
;; 
;; Proof. C_GetElementPtr QED
;;; 64 == 64 : Word32
;;; 3 == 3 : Integer
;;; Verifying C_Int p2058 p2059
;; p2058
;; p2059
;; ----- [p2060]
;; p2060
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p2061
;; p2061
;; ----- [p2062]
;; p2062
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p2063
;; p2063
;; ----- [p2064]
;; p2064
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p2062 p2064
;; p2062
;; p2064
;; ----- [p2065]
;; p2065
;; 
;; Proof. T_PointerType QED
;;; Verifying C_IntToPtr p2060 p2065
;; p2060
;; p2065
;; ----- [p2066]
;; p2066
;; 
;; Proof. C_IntToPtr QED
;;; True == True : Bool
;;; 43 == 43 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p2069
;; p2069
;; ----- [p2070]
;; p2070
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p2068 p2070
;; p2068
;; p2070
;; ----- [p2071]
;; p2071
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p2072
;; p2072
;; ----- [p2073]
;; p2073
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p2071 p2073
;; p2071
;; p2073
;; ----- [p2074]
;; p2074
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p2075]
;; p2075
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Private 
;; ----- [p2077]
;; p2077
;; 
;; Proof. L_Private QED
;;; Verifying V_Default 
;; ----- [p2078]
;; p2078
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p2079]
;; p2079
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying MM_Nothing_Model 
;; ----- [p2080]
;; p2080
;; 
;; Proof. Nothing (Model) equivalent QED
;;; Verifying UA_GlobalAddr 
;; ----- [p2081]
;; p2081
;; 
;; Proof. UA_GlobalAddr QED
;;; Verifying MUA_Just_UnnamedAddr p2081
;; p2081
;; ----- [p2082]
;; p2082
;; 
;; Proof. Just UnnamedAddr equivalent QED
;;; True == True : Bool
;;; 43 == 43 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p2085
;; p2085
;; ----- [p2086]
;; p2086
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p2084 p2086
;; p2084
;; p2086
;; ----- [p2087]
;; p2087
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p2088
;; p2088
;; ----- [p2089]
;; p2089
;; 
;; Proof. AS_AddrSpace QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p2090
;; p2090
;; ----- [p2091]
;; p2091
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; 45 == 45 : Integer
;;; Verifying C_Int p2092 p2093
;; p2092
;; p2093
;; ----- [p2094]
;; p2094
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p2095 p2096
;; p2095
;; p2096
;; ----- [p2097]
;; p2097
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 104 == 104 : Integer
;;; Verifying C_Int p2098 p2099
;; p2098
;; p2099
;; ----- [p2100]
;; p2100
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p2101 p2102
;; p2101
;; p2102
;; ----- [p2103]
;; p2103
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p2104 p2105
;; p2104
;; p2105
;; ----- [p2106]
;; p2106
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p2107 p2108
;; p2107
;; p2108
;; ----- [p2109]
;; p2109
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 100 == 100 : Integer
;;; Verifying C_Int p2110 p2111
;; p2110
;; p2111
;; ----- [p2112]
;; p2112
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p2113 p2114
;; p2113
;; p2114
;; ----- [p2115]
;; p2115
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p2116 p2117
;; p2116
;; p2117
;; ----- [p2118]
;; p2118
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 45 == 45 : Integer
;;; Verifying C_Int p2119 p2120
;; p2119
;; p2120
;; ----- [p2121]
;; p2121
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p2122 p2123
;; p2122
;; p2123
;; ----- [p2124]
;; p2124
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p2125 p2126
;; p2125
;; p2126
;; ----- [p2127]
;; p2127
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 110 == 110 : Integer
;;; Verifying C_Int p2128 p2129
;; p2128
;; p2129
;; ----- [p2130]
;; p2130
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 117 == 117 : Integer
;;; Verifying C_Int p2131 p2132
;; p2131
;; p2132
;; ----- [p2133]
;; p2133
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 109 == 109 : Integer
;;; Verifying C_Int p2134 p2135
;; p2134
;; p2135
;; ----- [p2136]
;; p2136
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 98 == 98 : Integer
;;; Verifying C_Int p2137 p2138
;; p2137
;; p2138
;; ----- [p2139]
;; p2139
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p2140 p2141
;; p2140
;; p2141
;; ----- [p2142]
;; p2142
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p2143 p2144
;; p2143
;; p2144
;; ----- [p2145]
;; p2145
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p2146 p2147
;; p2146
;; p2147
;; ----- [p2148]
;; p2148
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 111 == 111 : Integer
;;; Verifying C_Int p2149 p2150
;; p2149
;; p2150
;; ----- [p2151]
;; p2151
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 102 == 102 : Integer
;;; Verifying C_Int p2152 p2153
;; p2152
;; p2153
;; ----- [p2154]
;; p2154
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p2155 p2156
;; p2155
;; p2156
;; ----- [p2157]
;; p2157
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p2158 p2159
;; p2158
;; p2159
;; ----- [p2160]
;; p2160
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 104 == 104 : Integer
;;; Verifying C_Int p2161 p2162
;; p2161
;; p2162
;; ----- [p2163]
;; p2163
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p2164 p2165
;; p2164
;; p2165
;; ----- [p2166]
;; p2166
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p2167 p2168
;; p2167
;; p2168
;; ----- [p2169]
;; p2169
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p2170 p2171
;; p2170
;; p2171
;; ----- [p2172]
;; p2172
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 100 == 100 : Integer
;;; Verifying C_Int p2173 p2174
;; p2173
;; p2174
;; ----- [p2175]
;; p2175
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p2176 p2177
;; p2176
;; p2177
;; ----- [p2178]
;; p2178
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p2179 p2180
;; p2179
;; p2180
;; ----- [p2181]
;; p2181
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 112 == 112 : Integer
;;; Verifying C_Int p2182 p2183
;; p2182
;; p2183
;; ----- [p2184]
;; p2184
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p2185 p2186
;; p2185
;; p2186
;; ----- [p2187]
;; p2187
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p2188 p2189
;; p2188
;; p2189
;; ----- [p2190]
;; p2190
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p2191 p2192
;; p2191
;; p2192
;; ----- [p2193]
;; p2193
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 112 == 112 : Integer
;;; Verifying C_Int p2194 p2195
;; p2194
;; p2195
;; ----- [p2196]
;; p2196
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p2197 p2198
;; p2197
;; p2198
;; ----- [p2199]
;; p2199
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 111 == 111 : Integer
;;; Verifying C_Int p2200 p2201
;; p2200
;; p2201
;; ----- [p2202]
;; p2202
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 99 == 99 : Integer
;;; Verifying C_Int p2203 p2204
;; p2203
;; p2204
;; ----- [p2205]
;; p2205
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p2206 p2207
;; p2206
;; p2207
;; ----- [p2208]
;; p2208
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p2209 p2210
;; p2209
;; p2210
;; ----- [p2211]
;; p2211
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p2212 p2213
;; p2212
;; p2213
;; ----- [p2214]
;; p2214
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 46 == 46 : Integer
;;; Verifying C_Int p2215 p2216
;; p2215
;; p2216
;; ----- [p2217]
;; p2217
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p2218 p2219
;; p2218
;; p2219
;; ----- [p2220]
;; p2220
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p2221]
;; p2221
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p2220 p2221
;; p2220
;; p2221
;; ----- [p2222]
;; p2222
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2217 p2222
;; p2217
;; p2222
;; ----- [p2223]
;; p2223
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2214 p2223
;; p2214
;; p2223
;; ----- [p2224]
;; p2224
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2211 p2224
;; p2211
;; p2224
;; ----- [p2225]
;; p2225
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2208 p2225
;; p2208
;; p2225
;; ----- [p2226]
;; p2226
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2205 p2226
;; p2205
;; p2226
;; ----- [p2227]
;; p2227
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2202 p2227
;; p2202
;; p2227
;; ----- [p2228]
;; p2228
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2199 p2228
;; p2199
;; p2228
;; ----- [p2229]
;; p2229
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2196 p2229
;; p2196
;; p2229
;; ----- [p2230]
;; p2230
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2193 p2230
;; p2193
;; p2230
;; ----- [p2231]
;; p2231
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2190 p2231
;; p2190
;; p2231
;; ----- [p2232]
;; p2232
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2187 p2232
;; p2187
;; p2232
;; ----- [p2233]
;; p2233
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2184 p2233
;; p2184
;; p2233
;; ----- [p2234]
;; p2234
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2181 p2234
;; p2181
;; p2234
;; ----- [p2235]
;; p2235
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2178 p2235
;; p2178
;; p2235
;; ----- [p2236]
;; p2236
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2175 p2236
;; p2175
;; p2236
;; ----- [p2237]
;; p2237
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2172 p2237
;; p2172
;; p2237
;; ----- [p2238]
;; p2238
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2169 p2238
;; p2169
;; p2238
;; ----- [p2239]
;; p2239
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2166 p2239
;; p2166
;; p2239
;; ----- [p2240]
;; p2240
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2163 p2240
;; p2163
;; p2240
;; ----- [p2241]
;; p2241
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2160 p2241
;; p2160
;; p2241
;; ----- [p2242]
;; p2242
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2157 p2242
;; p2157
;; p2242
;; ----- [p2243]
;; p2243
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2154 p2243
;; p2154
;; p2243
;; ----- [p2244]
;; p2244
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2151 p2244
;; p2151
;; p2244
;; ----- [p2245]
;; p2245
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2148 p2245
;; p2148
;; p2245
;; ----- [p2246]
;; p2246
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2145 p2246
;; p2145
;; p2246
;; ----- [p2247]
;; p2247
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2142 p2247
;; p2142
;; p2247
;; ----- [p2248]
;; p2248
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2139 p2248
;; p2139
;; p2248
;; ----- [p2249]
;; p2249
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2136 p2249
;; p2136
;; p2249
;; ----- [p2250]
;; p2250
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2133 p2250
;; p2133
;; p2250
;; ----- [p2251]
;; p2251
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2130 p2251
;; p2130
;; p2251
;; ----- [p2252]
;; p2252
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2127 p2252
;; p2127
;; p2252
;; ----- [p2253]
;; p2253
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2124 p2253
;; p2124
;; p2253
;; ----- [p2254]
;; p2254
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2121 p2254
;; p2121
;; p2254
;; ----- [p2255]
;; p2255
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2118 p2255
;; p2118
;; p2255
;; ----- [p2256]
;; p2256
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2115 p2256
;; p2115
;; p2256
;; ----- [p2257]
;; p2257
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2112 p2257
;; p2112
;; p2257
;; ----- [p2258]
;; p2258
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2109 p2258
;; p2109
;; p2258
;; ----- [p2259]
;; p2259
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2106 p2259
;; p2106
;; p2259
;; ----- [p2260]
;; p2260
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2103 p2260
;; p2103
;; p2260
;; ----- [p2261]
;; p2261
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2100 p2261
;; p2100
;; p2261
;; ----- [p2262]
;; p2262
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2097 p2262
;; p2097
;; p2262
;; ----- [p2263]
;; p2263
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2094 p2263
;; p2094
;; p2263
;; ----- [p2264]
;; p2264
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_Array p2091 p2264
;; p2091
;; p2264
;; ----- [p2265]
;; p2265
;; 
;; Proof. C_Array QED
;;; Verifying MC_Just_Constant p2265
;; p2265
;; ----- [p2266]
;; p2266
;; 
;; Proof. Just Constant equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p2267]
;; p2267
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p2268]
;; p2268
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying G_GlobalVariable p2076 p2077 p2078 p2079 p2080 p2082 p2083 p2087 p2089 p2266 p2267 p2268 p2269 p2270
;; p2076
;; p2077
;; p2078
;; p2079
;; p2080
;; p2082
;; p2083
;; p2087
;; p2089
;; p2266
;; p2267
;; p2268
;; p2269
;; p2270
;; ----- [p2271]
;; p2271
;; 
;; Proof. global variables .str.17.1855 and .str.17.1858 equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p2272
;; p2272
;; ----- [p2273]
;; p2273
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p2074 p2273
;; p2074
;; p2273
;; ----- [p2274]
;; p2274
;; 
;; Proof. C_GlobalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p2275 p2276
;; p2275
;; p2276
;; ----- [p2277]
;; p2277
;; 
;; Proof. C_Int QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p2278 p2279
;; p2278
;; p2279
;; ----- [p2280]
;; p2280
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p2281]
;; p2281
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p2280 p2281
;; p2280
;; p2281
;; ----- [p2282]
;; p2282
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2277 p2282
;; p2277
;; p2282
;; ----- [p2283]
;; p2283
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_GetElementPtr p2067 p2274 p2283
;; p2067
;; p2274
;; p2283
;; ----- [p2284]
;; p2284
;; 
;; Proof. C_GetElementPtr QED
;;; 64 == 64 : Word32
;;; 3 == 3 : Integer
;;; Verifying C_Int p2285 p2286
;; p2285
;; p2286
;; ----- [p2287]
;; p2287
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p2288
;; p2288
;; ----- [p2289]
;; p2289
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p2290
;; p2290
;; ----- [p2291]
;; p2291
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p2289 p2291
;; p2289
;; p2291
;; ----- [p2292]
;; p2292
;; 
;; Proof. T_PointerType QED
;;; Verifying C_IntToPtr p2287 p2292
;; p2287
;; p2292
;; ----- [p2293]
;; p2293
;; 
;; Proof. C_IntToPtr QED
;;; True == True : Bool
;;; 13 == 13 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p2296
;; p2296
;; ----- [p2297]
;; p2297
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p2295 p2297
;; p2295
;; p2297
;; ----- [p2298]
;; p2298
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p2299
;; p2299
;; ----- [p2300]
;; p2300
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p2298 p2300
;; p2298
;; p2300
;; ----- [p2301]
;; p2301
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p2302]
;; p2302
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Private 
;; ----- [p2304]
;; p2304
;; 
;; Proof. L_Private QED
;;; Verifying V_Default 
;; ----- [p2305]
;; p2305
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p2306]
;; p2306
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying MM_Nothing_Model 
;; ----- [p2307]
;; p2307
;; 
;; Proof. Nothing (Model) equivalent QED
;;; Verifying UA_GlobalAddr 
;; ----- [p2308]
;; p2308
;; 
;; Proof. UA_GlobalAddr QED
;;; Verifying MUA_Just_UnnamedAddr p2308
;; p2308
;; ----- [p2309]
;; p2309
;; 
;; Proof. Just UnnamedAddr equivalent QED
;;; True == True : Bool
;;; 13 == 13 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p2312
;; p2312
;; ----- [p2313]
;; p2313
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p2311 p2313
;; p2311
;; p2313
;; ----- [p2314]
;; p2314
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p2315
;; p2315
;; ----- [p2316]
;; p2316
;; 
;; Proof. AS_AddrSpace QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p2317
;; p2317
;; ----- [p2318]
;; p2318
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; 72 == 72 : Integer
;;; Verifying C_Int p2319 p2320
;; p2319
;; p2320
;; ----- [p2321]
;; p2321
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 84 == 84 : Integer
;;; Verifying C_Int p2322 p2323
;; p2322
;; p2323
;; ----- [p2324]
;; p2324
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 84 == 84 : Integer
;;; Verifying C_Int p2325 p2326
;; p2325
;; p2326
;; ----- [p2327]
;; p2327
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 80 == 80 : Integer
;;; Verifying C_Int p2328 p2329
;; p2328
;; p2329
;; ----- [p2330]
;; p2330
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p2331 p2332
;; p2331
;; p2332
;; ----- [p2333]
;; p2333
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 83 == 83 : Integer
;;; Verifying C_Int p2334 p2335
;; p2334
;; p2335
;; ----- [p2336]
;; p2336
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p2337 p2338
;; p2337
;; p2338
;; ----- [p2339]
;; p2339
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p2340 p2341
;; p2340
;; p2341
;; ----- [p2342]
;; p2342
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 118 == 118 : Integer
;;; Verifying C_Int p2343 p2344
;; p2343
;; p2344
;; ----- [p2345]
;; p2345
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p2346 p2347
;; p2346
;; p2347
;; ----- [p2348]
;; p2348
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p2349 p2350
;; p2349
;; p2350
;; ----- [p2351]
;; p2351
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 58 == 58 : Integer
;;; Verifying C_Int p2352 p2353
;; p2352
;; p2353
;; ----- [p2354]
;; p2354
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p2355 p2356
;; p2355
;; p2356
;; ----- [p2357]
;; p2357
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p2358]
;; p2358
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p2357 p2358
;; p2357
;; p2358
;; ----- [p2359]
;; p2359
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2354 p2359
;; p2354
;; p2359
;; ----- [p2360]
;; p2360
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2351 p2360
;; p2351
;; p2360
;; ----- [p2361]
;; p2361
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2348 p2361
;; p2348
;; p2361
;; ----- [p2362]
;; p2362
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2345 p2362
;; p2345
;; p2362
;; ----- [p2363]
;; p2363
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2342 p2363
;; p2342
;; p2363
;; ----- [p2364]
;; p2364
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2339 p2364
;; p2339
;; p2364
;; ----- [p2365]
;; p2365
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2336 p2365
;; p2336
;; p2365
;; ----- [p2366]
;; p2366
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2333 p2366
;; p2333
;; p2366
;; ----- [p2367]
;; p2367
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2330 p2367
;; p2330
;; p2367
;; ----- [p2368]
;; p2368
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2327 p2368
;; p2327
;; p2368
;; ----- [p2369]
;; p2369
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2324 p2369
;; p2324
;; p2369
;; ----- [p2370]
;; p2370
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2321 p2370
;; p2321
;; p2370
;; ----- [p2371]
;; p2371
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_Array p2318 p2371
;; p2318
;; p2371
;; ----- [p2372]
;; p2372
;; 
;; Proof. C_Array QED
;;; Verifying MC_Just_Constant p2372
;; p2372
;; ----- [p2373]
;; p2373
;; 
;; Proof. Just Constant equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p2374]
;; p2374
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p2375]
;; p2375
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying G_GlobalVariable p2303 p2304 p2305 p2306 p2307 p2309 p2310 p2314 p2316 p2373 p2374 p2375 p2376 p2377
;; p2303
;; p2304
;; p2305
;; p2306
;; p2307
;; p2309
;; p2310
;; p2314
;; p2316
;; p2373
;; p2374
;; p2375
;; p2376
;; p2377
;; ----- [p2378]
;; p2378
;; 
;; Proof. global variables .str.18.1856 and .str.18.1859 equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p2379
;; p2379
;; ----- [p2380]
;; p2380
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p2301 p2380
;; p2301
;; p2380
;; ----- [p2381]
;; p2381
;; 
;; Proof. C_GlobalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p2382 p2383
;; p2382
;; p2383
;; ----- [p2384]
;; p2384
;; 
;; Proof. C_Int QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p2385 p2386
;; p2385
;; p2386
;; ----- [p2387]
;; p2387
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p2388]
;; p2388
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p2387 p2388
;; p2387
;; p2388
;; ----- [p2389]
;; p2389
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2384 p2389
;; p2384
;; p2389
;; ----- [p2390]
;; p2390
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_GetElementPtr p2294 p2381 p2390
;; p2294
;; p2381
;; p2390
;; ----- [p2391]
;; p2391
;; 
;; Proof. C_GetElementPtr QED
;;; 64 == 64 : Word32
;;; 5 == 5 : Integer
;;; Verifying C_Int p2392 p2393
;; p2392
;; p2393
;; ----- [p2394]
;; p2394
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p2395
;; p2395
;; ----- [p2396]
;; p2396
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p2397
;; p2397
;; ----- [p2398]
;; p2398
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p2396 p2398
;; p2396
;; p2398
;; ----- [p2399]
;; p2399
;; 
;; Proof. T_PointerType QED
;;; Verifying C_IntToPtr p2394 p2399
;; p2394
;; p2399
;; ----- [p2400]
;; p2400
;; 
;; Proof. C_IntToPtr QED
;;; True == True : Bool
;;; 53 == 53 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p2403
;; p2403
;; ----- [p2404]
;; p2404
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p2402 p2404
;; p2402
;; p2404
;; ----- [p2405]
;; p2405
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p2406
;; p2406
;; ----- [p2407]
;; p2407
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p2405 p2407
;; p2405
;; p2407
;; ----- [p2408]
;; p2408
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p2409]
;; p2409
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Private 
;; ----- [p2411]
;; p2411
;; 
;; Proof. L_Private QED
;;; Verifying V_Default 
;; ----- [p2412]
;; p2412
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p2413]
;; p2413
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying MM_Nothing_Model 
;; ----- [p2414]
;; p2414
;; 
;; Proof. Nothing (Model) equivalent QED
;;; Verifying UA_GlobalAddr 
;; ----- [p2415]
;; p2415
;; 
;; Proof. UA_GlobalAddr QED
;;; Verifying MUA_Just_UnnamedAddr p2415
;; p2415
;; ----- [p2416]
;; p2416
;; 
;; Proof. Just UnnamedAddr equivalent QED
;;; True == True : Bool
;;; 53 == 53 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p2419
;; p2419
;; ----- [p2420]
;; p2420
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p2418 p2420
;; p2418
;; p2420
;; ----- [p2421]
;; p2421
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p2422
;; p2422
;; ----- [p2423]
;; p2423
;; 
;; Proof. AS_AddrSpace QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p2424
;; p2424
;; ----- [p2425]
;; p2425
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; 45 == 45 : Integer
;;; Verifying C_Int p2426 p2427
;; p2426
;; p2427
;; ----- [p2428]
;; p2428
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 112 == 112 : Integer
;;; Verifying C_Int p2429 p2430
;; p2429
;; p2430
;; ----- [p2431]
;; p2431
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 117 == 117 : Integer
;;; Verifying C_Int p2432 p2433
;; p2432
;; p2433
;; ----- [p2434]
;; p2434
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 98 == 98 : Integer
;;; Verifying C_Int p2435 p2436
;; p2435
;; p2436
;; ----- [p2437]
;; p2437
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 108 == 108 : Integer
;;; Verifying C_Int p2438 p2439
;; p2438
;; p2439
;; ----- [p2440]
;; p2440
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 105 == 105 : Integer
;;; Verifying C_Int p2441 p2442
;; p2441
;; p2442
;; ----- [p2443]
;; p2443
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 99 == 99 : Integer
;;; Verifying C_Int p2444 p2445
;; p2444
;; p2445
;; ----- [p2446]
;; p2446
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p2447 p2448
;; p2447
;; p2448
;; ----- [p2449]
;; p2449
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 45 == 45 : Integer
;;; Verifying C_Int p2450 p2451
;; p2450
;; p2451
;; ----- [p2452]
;; p2452
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 119 == 119 : Integer
;;; Verifying C_Int p2453 p2454
;; p2453
;; p2454
;; ----- [p2455]
;; p2455
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 119 == 119 : Integer
;;; Verifying C_Int p2456 p2457
;; p2456
;; p2457
;; ----- [p2458]
;; p2458
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 119 == 119 : Integer
;;; Verifying C_Int p2459 p2460
;; p2459
;; p2460
;; ----- [p2461]
;; p2461
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p2462 p2463
;; p2462
;; p2463
;; ----- [p2464]
;; p2464
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 112 == 112 : Integer
;;; Verifying C_Int p2465 p2466
;; p2465
;; p2466
;; ----- [p2467]
;; p2467
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 117 == 117 : Integer
;;; Verifying C_Int p2468 p2469
;; p2468
;; p2469
;; ----- [p2470]
;; p2470
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 98 == 98 : Integer
;;; Verifying C_Int p2471 p2472
;; p2471
;; p2472
;; ----- [p2473]
;; p2473
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 108 == 108 : Integer
;;; Verifying C_Int p2474 p2475
;; p2474
;; p2475
;; ----- [p2476]
;; p2476
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 105 == 105 : Integer
;;; Verifying C_Int p2477 p2478
;; p2477
;; p2478
;; ----- [p2479]
;; p2479
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 99 == 99 : Integer
;;; Verifying C_Int p2480 p2481
;; p2480
;; p2481
;; ----- [p2482]
;; p2482
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p2483 p2484
;; p2483
;; p2484
;; ----- [p2485]
;; p2485
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 102 == 102 : Integer
;;; Verifying C_Int p2486 p2487
;; p2486
;; p2487
;; ----- [p2488]
;; p2488
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 111 == 111 : Integer
;;; Verifying C_Int p2489 p2490
;; p2489
;; p2490
;; ----- [p2491]
;; p2491
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 108 == 108 : Integer
;;; Verifying C_Int p2492 p2493
;; p2492
;; p2493
;; ----- [p2494]
;; p2494
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 100 == 100 : Integer
;;; Verifying C_Int p2495 p2496
;; p2495
;; p2496
;; ----- [p2497]
;; p2497
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p2498 p2499
;; p2498
;; p2499
;; ----- [p2500]
;; p2500
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p2501 p2502
;; p2501
;; p2502
;; ----- [p2503]
;; p2503
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 44 == 44 : Integer
;;; Verifying C_Int p2504 p2505
;; p2504
;; p2505
;; ----- [p2506]
;; p2506
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p2507 p2508
;; p2507
;; p2508
;; ----- [p2509]
;; p2509
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 102 == 102 : Integer
;;; Verifying C_Int p2510 p2511
;; p2510
;; p2511
;; ----- [p2512]
;; p2512
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 111 == 111 : Integer
;;; Verifying C_Int p2513 p2514
;; p2513
;; p2514
;; ----- [p2515]
;; p2515
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p2516 p2517
;; p2516
;; p2517
;; ----- [p2518]
;; p2518
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p2519 p2520
;; p2519
;; p2520
;; ----- [p2521]
;; p2521
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p2522 p2523
;; p2522
;; p2523
;; ----- [p2524]
;; p2524
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p2525 p2526
;; p2525
;; p2526
;; ----- [p2527]
;; p2527
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p2528 p2529
;; p2528
;; p2529
;; ----- [p2530]
;; p2530
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p2531 p2532
;; p2531
;; p2532
;; ----- [p2533]
;; p2533
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 105 == 105 : Integer
;;; Verifying C_Int p2534 p2535
;; p2534
;; p2535
;; ----- [p2536]
;; p2536
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 99 == 99 : Integer
;;; Verifying C_Int p2537 p2538
;; p2537
;; p2538
;; ----- [p2539]
;; p2539
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p2540 p2541
;; p2540
;; p2541
;; ----- [p2542]
;; p2542
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 102 == 102 : Integer
;;; Verifying C_Int p2543 p2544
;; p2543
;; p2544
;; ----- [p2545]
;; p2545
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 105 == 105 : Integer
;;; Verifying C_Int p2546 p2547
;; p2546
;; p2547
;; ----- [p2548]
;; p2548
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 108 == 108 : Integer
;;; Verifying C_Int p2549 p2550
;; p2549
;; p2550
;; ----- [p2551]
;; p2551
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p2552 p2553
;; p2552
;; p2553
;; ----- [p2554]
;; p2554
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p2555 p2556
;; p2555
;; p2556
;; ----- [p2557]
;; p2557
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p2558 p2559
;; p2558
;; p2559
;; ----- [p2560]
;; p2560
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p2561 p2562
;; p2561
;; p2562
;; ----- [p2563]
;; p2563
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p2564 p2565
;; p2564
;; p2565
;; ----- [p2566]
;; p2566
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 118 == 118 : Integer
;;; Verifying C_Int p2567 p2568
;; p2567
;; p2568
;; ----- [p2569]
;; p2569
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 105 == 105 : Integer
;;; Verifying C_Int p2570 p2571
;; p2570
;; p2571
;; ----- [p2572]
;; p2572
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 99 == 99 : Integer
;;; Verifying C_Int p2573 p2574
;; p2573
;; p2574
;; ----- [p2575]
;; p2575
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p2576 p2577
;; p2576
;; p2577
;; ----- [p2578]
;; p2578
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 46 == 46 : Integer
;;; Verifying C_Int p2579 p2580
;; p2579
;; p2580
;; ----- [p2581]
;; p2581
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p2582 p2583
;; p2582
;; p2583
;; ----- [p2584]
;; p2584
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p2585]
;; p2585
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p2584 p2585
;; p2584
;; p2585
;; ----- [p2586]
;; p2586
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2581 p2586
;; p2581
;; p2586
;; ----- [p2587]
;; p2587
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2578 p2587
;; p2578
;; p2587
;; ----- [p2588]
;; p2588
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2575 p2588
;; p2575
;; p2588
;; ----- [p2589]
;; p2589
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2572 p2589
;; p2572
;; p2589
;; ----- [p2590]
;; p2590
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2569 p2590
;; p2569
;; p2590
;; ----- [p2591]
;; p2591
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2566 p2591
;; p2566
;; p2591
;; ----- [p2592]
;; p2592
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2563 p2592
;; p2563
;; p2592
;; ----- [p2593]
;; p2593
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2560 p2593
;; p2560
;; p2593
;; ----- [p2594]
;; p2594
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2557 p2594
;; p2557
;; p2594
;; ----- [p2595]
;; p2595
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2554 p2595
;; p2554
;; p2595
;; ----- [p2596]
;; p2596
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2551 p2596
;; p2551
;; p2596
;; ----- [p2597]
;; p2597
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2548 p2597
;; p2548
;; p2597
;; ----- [p2598]
;; p2598
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2545 p2598
;; p2545
;; p2598
;; ----- [p2599]
;; p2599
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2542 p2599
;; p2542
;; p2599
;; ----- [p2600]
;; p2600
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2539 p2600
;; p2539
;; p2600
;; ----- [p2601]
;; p2601
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2536 p2601
;; p2536
;; p2601
;; ----- [p2602]
;; p2602
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2533 p2602
;; p2533
;; p2602
;; ----- [p2603]
;; p2603
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2530 p2603
;; p2530
;; p2603
;; ----- [p2604]
;; p2604
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2527 p2604
;; p2527
;; p2604
;; ----- [p2605]
;; p2605
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2524 p2605
;; p2524
;; p2605
;; ----- [p2606]
;; p2606
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2521 p2606
;; p2521
;; p2606
;; ----- [p2607]
;; p2607
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2518 p2607
;; p2518
;; p2607
;; ----- [p2608]
;; p2608
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2515 p2608
;; p2515
;; p2608
;; ----- [p2609]
;; p2609
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2512 p2609
;; p2512
;; p2609
;; ----- [p2610]
;; p2610
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2509 p2610
;; p2509
;; p2610
;; ----- [p2611]
;; p2611
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2506 p2611
;; p2506
;; p2611
;; ----- [p2612]
;; p2612
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2503 p2612
;; p2503
;; p2612
;; ----- [p2613]
;; p2613
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2500 p2613
;; p2500
;; p2613
;; ----- [p2614]
;; p2614
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2497 p2614
;; p2497
;; p2614
;; ----- [p2615]
;; p2615
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2494 p2615
;; p2494
;; p2615
;; ----- [p2616]
;; p2616
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2491 p2616
;; p2491
;; p2616
;; ----- [p2617]
;; p2617
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2488 p2617
;; p2488
;; p2617
;; ----- [p2618]
;; p2618
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2485 p2618
;; p2485
;; p2618
;; ----- [p2619]
;; p2619
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2482 p2619
;; p2482
;; p2619
;; ----- [p2620]
;; p2620
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2479 p2620
;; p2479
;; p2620
;; ----- [p2621]
;; p2621
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2476 p2621
;; p2476
;; p2621
;; ----- [p2622]
;; p2622
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2473 p2622
;; p2473
;; p2622
;; ----- [p2623]
;; p2623
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2470 p2623
;; p2470
;; p2623
;; ----- [p2624]
;; p2624
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2467 p2624
;; p2467
;; p2624
;; ----- [p2625]
;; p2625
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2464 p2625
;; p2464
;; p2625
;; ----- [p2626]
;; p2626
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2461 p2626
;; p2461
;; p2626
;; ----- [p2627]
;; p2627
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2458 p2627
;; p2458
;; p2627
;; ----- [p2628]
;; p2628
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2455 p2628
;; p2455
;; p2628
;; ----- [p2629]
;; p2629
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2452 p2629
;; p2452
;; p2629
;; ----- [p2630]
;; p2630
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2449 p2630
;; p2449
;; p2630
;; ----- [p2631]
;; p2631
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2446 p2631
;; p2446
;; p2631
;; ----- [p2632]
;; p2632
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2443 p2632
;; p2443
;; p2632
;; ----- [p2633]
;; p2633
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2440 p2633
;; p2440
;; p2633
;; ----- [p2634]
;; p2634
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2437 p2634
;; p2437
;; p2634
;; ----- [p2635]
;; p2635
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2434 p2635
;; p2434
;; p2635
;; ----- [p2636]
;; p2636
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2431 p2636
;; p2431
;; p2636
;; ----- [p2637]
;; p2637
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2428 p2637
;; p2428
;; p2637
;; ----- [p2638]
;; p2638
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_Array p2425 p2638
;; p2425
;; p2638
;; ----- [p2639]
;; p2639
;; 
;; Proof. C_Array QED
;;; Verifying MC_Just_Constant p2639
;; p2639
;; ----- [p2640]
;; p2640
;; 
;; Proof. Just Constant equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p2641]
;; p2641
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p2642]
;; p2642
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying G_GlobalVariable p2410 p2411 p2412 p2413 p2414 p2416 p2417 p2421 p2423 p2640 p2641 p2642 p2643 p2644
;; p2410
;; p2411
;; p2412
;; p2413
;; p2414
;; p2416
;; p2417
;; p2421
;; p2423
;; p2640
;; p2641
;; p2642
;; p2643
;; p2644
;; ----- [p2645]
;; p2645
;; 
;; Proof. global variables .str.19.1857 and .str.19.1860 equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p2646
;; p2646
;; ----- [p2647]
;; p2647
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p2408 p2647
;; p2408
;; p2647
;; ----- [p2648]
;; p2648
;; 
;; Proof. C_GlobalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p2649 p2650
;; p2649
;; p2650
;; ----- [p2651]
;; p2651
;; 
;; Proof. C_Int QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p2652 p2653
;; p2652
;; p2653
;; ----- [p2654]
;; p2654
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p2655]
;; p2655
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p2654 p2655
;; p2654
;; p2655
;; ----- [p2656]
;; p2656
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2651 p2656
;; p2651
;; p2656
;; ----- [p2657]
;; p2657
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_GetElementPtr p2401 p2648 p2657
;; p2401
;; p2648
;; p2657
;; ----- [p2658]
;; p2658
;; 
;; Proof. C_GetElementPtr QED
;;; 64 == 64 : Word32
;;; 1 == 1 : Integer
;;; Verifying C_Int p2659 p2660
;; p2659
;; p2660
;; ----- [p2661]
;; p2661
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p2662
;; p2662
;; ----- [p2663]
;; p2663
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p2664
;; p2664
;; ----- [p2665]
;; p2665
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p2663 p2665
;; p2663
;; p2665
;; ----- [p2666]
;; p2666
;; 
;; Proof. T_PointerType QED
;;; Verifying C_IntToPtr p2661 p2666
;; p2661
;; p2666
;; ----- [p2667]
;; p2667
;; 
;; Proof. C_IntToPtr QED
;;; True == True : Bool
;;; 62 == 62 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p2670
;; p2670
;; ----- [p2671]
;; p2671
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p2669 p2671
;; p2669
;; p2671
;; ----- [p2672]
;; p2672
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p2673
;; p2673
;; ----- [p2674]
;; p2674
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p2672 p2674
;; p2672
;; p2674
;; ----- [p2675]
;; p2675
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p2676]
;; p2676
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Private 
;; ----- [p2678]
;; p2678
;; 
;; Proof. L_Private QED
;;; Verifying V_Default 
;; ----- [p2679]
;; p2679
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p2680]
;; p2680
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying MM_Nothing_Model 
;; ----- [p2681]
;; p2681
;; 
;; Proof. Nothing (Model) equivalent QED
;;; Verifying UA_GlobalAddr 
;; ----- [p2682]
;; p2682
;; 
;; Proof. UA_GlobalAddr QED
;;; Verifying MUA_Just_UnnamedAddr p2682
;; p2682
;; ----- [p2683]
;; p2683
;; 
;; Proof. Just UnnamedAddr equivalent QED
;;; True == True : Bool
;;; 62 == 62 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p2686
;; p2686
;; ----- [p2687]
;; p2687
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p2685 p2687
;; p2685
;; p2687
;; ----- [p2688]
;; p2688
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p2689
;; p2689
;; ----- [p2690]
;; p2690
;; 
;; Proof. AS_AddrSpace QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p2691
;; p2691
;; ----- [p2692]
;; p2692
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; 45 == 45 : Integer
;;; Verifying C_Int p2693 p2694
;; p2693
;; p2694
;; ----- [p2695]
;; p2695
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 107 == 107 : Integer
;;; Verifying C_Int p2696 p2697
;; p2696
;; p2697
;; ----- [p2698]
;; p2698
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p2699 p2700
;; p2699
;; p2700
;; ----- [p2701]
;; p2701
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p2702 p2703
;; p2702
;; p2703
;; ----- [p2704]
;; p2704
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 112 == 112 : Integer
;;; Verifying C_Int p2705 p2706
;; p2705
;; p2706
;; ----- [p2707]
;; p2707
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 45 == 45 : Integer
;;; Verifying C_Int p2708 p2709
;; p2708
;; p2709
;; ----- [p2710]
;; p2710
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p2711 p2712
;; p2711
;; p2712
;; ----- [p2713]
;; p2713
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 108 == 108 : Integer
;;; Verifying C_Int p2714 p2715
;; p2714
;; p2715
;; ----- [p2716]
;; p2716
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 105 == 105 : Integer
;;; Verifying C_Int p2717 p2718
;; p2717
;; p2718
;; ----- [p2719]
;; p2719
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 118 == 118 : Integer
;;; Verifying C_Int p2720 p2721
;; p2720
;; p2721
;; ----- [p2722]
;; p2722
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p2723 p2724
;; p2723
;; p2724
;; ----- [p2725]
;; p2725
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p2726 p2727
;; p2726
;; p2727
;; ----- [p2728]
;; p2728
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 45 == 45 : Integer
;;; Verifying C_Int p2729 p2730
;; p2729
;; p2730
;; ----- [p2731]
;; p2731
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 107 == 107 : Integer
;;; Verifying C_Int p2732 p2733
;; p2732
;; p2733
;; ----- [p2734]
;; p2734
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p2735 p2736
;; p2735
;; p2736
;; ----- [p2737]
;; p2737
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 72 == 72 : Integer
;;; Verifying C_Int p2738 p2739
;; p2738
;; p2739
;; ----- [p2740]
;; p2740
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 84 == 84 : Integer
;;; Verifying C_Int p2741 p2742
;; p2741
;; p2742
;; ----- [p2743]
;; p2743
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 84 == 84 : Integer
;;; Verifying C_Int p2744 p2745
;; p2744
;; p2745
;; ----- [p2746]
;; p2746
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 80 == 80 : Integer
;;; Verifying C_Int p2747 p2748
;; p2747
;; p2748
;; ----- [p2749]
;; p2749
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p2750 p2751
;; p2750
;; p2751
;; ----- [p2752]
;; p2752
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 107 == 107 : Integer
;;; Verifying C_Int p2753 p2754
;; p2753
;; p2754
;; ----- [p2755]
;; p2755
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p2756 p2757
;; p2756
;; p2757
;; ----- [p2758]
;; p2758
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p2759 p2760
;; p2759
;; p2760
;; ----- [p2761]
;; p2761
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 112 == 112 : Integer
;;; Verifying C_Int p2762 p2763
;; p2762
;; p2763
;; ----- [p2764]
;; p2764
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 45 == 45 : Integer
;;; Verifying C_Int p2765 p2766
;; p2765
;; p2766
;; ----- [p2767]
;; p2767
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p2768 p2769
;; p2768
;; p2769
;; ----- [p2770]
;; p2770
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 108 == 108 : Integer
;;; Verifying C_Int p2771 p2772
;; p2771
;; p2772
;; ----- [p2773]
;; p2773
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 105 == 105 : Integer
;;; Verifying C_Int p2774 p2775
;; p2774
;; p2775
;; ----- [p2776]
;; p2776
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 118 == 118 : Integer
;;; Verifying C_Int p2777 p2778
;; p2777
;; p2778
;; ----- [p2779]
;; p2779
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p2780 p2781
;; p2780
;; p2781
;; ----- [p2782]
;; p2782
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p2783 p2784
;; p2783
;; p2784
;; ----- [p2785]
;; p2785
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p2786 p2787
;; p2786
;; p2787
;; ----- [p2788]
;; p2788
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 105 == 105 : Integer
;;; Verifying C_Int p2789 p2790
;; p2789
;; p2790
;; ----- [p2791]
;; p2791
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 109 == 109 : Integer
;;; Verifying C_Int p2792 p2793
;; p2792
;; p2793
;; ----- [p2794]
;; p2794
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p2795 p2796
;; p2795
;; p2796
;; ----- [p2797]
;; p2797
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 111 == 111 : Integer
;;; Verifying C_Int p2798 p2799
;; p2798
;; p2799
;; ----- [p2800]
;; p2800
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 117 == 117 : Integer
;;; Verifying C_Int p2801 p2802
;; p2801
;; p2802
;; ----- [p2803]
;; p2803
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p2804 p2805
;; p2804
;; p2805
;; ----- [p2806]
;; p2806
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p2807 p2808
;; p2807
;; p2808
;; ----- [p2809]
;; p2809
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 40 == 40 : Integer
;;; Verifying C_Int p2810 p2811
;; p2810
;; p2811
;; ----- [p2812]
;; p2812
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 48 == 48 : Integer
;;; Verifying C_Int p2813 p2814
;; p2813
;; p2814
;; ----- [p2815]
;; p2815
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 46 == 46 : Integer
;;; Verifying C_Int p2816 p2817
;; p2816
;; p2817
;; ----- [p2818]
;; p2818
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 46 == 46 : Integer
;;; Verifying C_Int p2819 p2820
;; p2819
;; p2820
;; ----- [p2821]
;; p2821
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 50 == 50 : Integer
;;; Verifying C_Int p2822 p2823
;; p2822
;; p2823
;; ----- [p2824]
;; p2824
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 53 == 53 : Integer
;;; Verifying C_Int p2825 p2826
;; p2825
;; p2826
;; ----- [p2827]
;; p2827
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 53 == 53 : Integer
;;; Verifying C_Int p2828 p2829
;; p2828
;; p2829
;; ----- [p2830]
;; p2830
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 41 == 41 : Integer
;;; Verifying C_Int p2831 p2832
;; p2831
;; p2832
;; ----- [p2833]
;; p2833
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 46 == 46 : Integer
;;; Verifying C_Int p2834 p2835
;; p2834
;; p2835
;; ----- [p2836]
;; p2836
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p2837 p2838
;; p2837
;; p2838
;; ----- [p2839]
;; p2839
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 100 == 100 : Integer
;;; Verifying C_Int p2840 p2841
;; p2840
;; p2841
;; ----- [p2842]
;; p2842
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p2843 p2844
;; p2843
;; p2844
;; ----- [p2845]
;; p2845
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 102 == 102 : Integer
;;; Verifying C_Int p2846 p2847
;; p2846
;; p2847
;; ----- [p2848]
;; p2848
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p2849 p2850
;; p2849
;; p2850
;; ----- [p2851]
;; p2851
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 117 == 117 : Integer
;;; Verifying C_Int p2852 p2853
;; p2852
;; p2853
;; ----- [p2854]
;; p2854
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 108 == 108 : Integer
;;; Verifying C_Int p2855 p2856
;; p2855
;; p2856
;; ----- [p2857]
;; p2857
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p2858 p2859
;; p2858
;; p2859
;; ----- [p2860]
;; p2860
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 58 == 58 : Integer
;;; Verifying C_Int p2861 p2862
;; p2861
;; p2862
;; ----- [p2863]
;; p2863
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p2864 p2865
;; p2864
;; p2865
;; ----- [p2866]
;; p2866
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 126 == 126 : Integer
;;; Verifying C_Int p2867 p2868
;; p2867
;; p2868
;; ----- [p2869]
;; p2869
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 53 == 53 : Integer
;;; Verifying C_Int p2870 p2871
;; p2870
;; p2871
;; ----- [p2872]
;; p2872
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p2873 p2874
;; p2873
;; p2874
;; ----- [p2875]
;; p2875
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p2876 p2877
;; p2876
;; p2877
;; ----- [p2878]
;; p2878
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p2879]
;; p2879
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p2878 p2879
;; p2878
;; p2879
;; ----- [p2880]
;; p2880
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2875 p2880
;; p2875
;; p2880
;; ----- [p2881]
;; p2881
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2872 p2881
;; p2872
;; p2881
;; ----- [p2882]
;; p2882
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2869 p2882
;; p2869
;; p2882
;; ----- [p2883]
;; p2883
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2866 p2883
;; p2866
;; p2883
;; ----- [p2884]
;; p2884
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2863 p2884
;; p2863
;; p2884
;; ----- [p2885]
;; p2885
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2860 p2885
;; p2860
;; p2885
;; ----- [p2886]
;; p2886
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2857 p2886
;; p2857
;; p2886
;; ----- [p2887]
;; p2887
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2854 p2887
;; p2854
;; p2887
;; ----- [p2888]
;; p2888
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2851 p2888
;; p2851
;; p2888
;; ----- [p2889]
;; p2889
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2848 p2889
;; p2848
;; p2889
;; ----- [p2890]
;; p2890
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2845 p2890
;; p2845
;; p2890
;; ----- [p2891]
;; p2891
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2842 p2891
;; p2842
;; p2891
;; ----- [p2892]
;; p2892
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2839 p2892
;; p2839
;; p2892
;; ----- [p2893]
;; p2893
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2836 p2893
;; p2836
;; p2893
;; ----- [p2894]
;; p2894
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2833 p2894
;; p2833
;; p2894
;; ----- [p2895]
;; p2895
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2830 p2895
;; p2830
;; p2895
;; ----- [p2896]
;; p2896
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2827 p2896
;; p2827
;; p2896
;; ----- [p2897]
;; p2897
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2824 p2897
;; p2824
;; p2897
;; ----- [p2898]
;; p2898
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2821 p2898
;; p2821
;; p2898
;; ----- [p2899]
;; p2899
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2818 p2899
;; p2818
;; p2899
;; ----- [p2900]
;; p2900
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2815 p2900
;; p2815
;; p2900
;; ----- [p2901]
;; p2901
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2812 p2901
;; p2812
;; p2901
;; ----- [p2902]
;; p2902
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2809 p2902
;; p2809
;; p2902
;; ----- [p2903]
;; p2903
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2806 p2903
;; p2806
;; p2903
;; ----- [p2904]
;; p2904
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2803 p2904
;; p2803
;; p2904
;; ----- [p2905]
;; p2905
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2800 p2905
;; p2800
;; p2905
;; ----- [p2906]
;; p2906
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2797 p2906
;; p2797
;; p2906
;; ----- [p2907]
;; p2907
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2794 p2907
;; p2794
;; p2907
;; ----- [p2908]
;; p2908
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2791 p2908
;; p2791
;; p2908
;; ----- [p2909]
;; p2909
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2788 p2909
;; p2788
;; p2909
;; ----- [p2910]
;; p2910
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2785 p2910
;; p2785
;; p2910
;; ----- [p2911]
;; p2911
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2782 p2911
;; p2782
;; p2911
;; ----- [p2912]
;; p2912
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2779 p2912
;; p2779
;; p2912
;; ----- [p2913]
;; p2913
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2776 p2913
;; p2776
;; p2913
;; ----- [p2914]
;; p2914
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2773 p2914
;; p2773
;; p2914
;; ----- [p2915]
;; p2915
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2770 p2915
;; p2770
;; p2915
;; ----- [p2916]
;; p2916
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2767 p2916
;; p2767
;; p2916
;; ----- [p2917]
;; p2917
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2764 p2917
;; p2764
;; p2917
;; ----- [p2918]
;; p2918
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2761 p2918
;; p2761
;; p2918
;; ----- [p2919]
;; p2919
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2758 p2919
;; p2758
;; p2919
;; ----- [p2920]
;; p2920
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2755 p2920
;; p2755
;; p2920
;; ----- [p2921]
;; p2921
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2752 p2921
;; p2752
;; p2921
;; ----- [p2922]
;; p2922
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2749 p2922
;; p2749
;; p2922
;; ----- [p2923]
;; p2923
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2746 p2923
;; p2746
;; p2923
;; ----- [p2924]
;; p2924
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2743 p2924
;; p2743
;; p2924
;; ----- [p2925]
;; p2925
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2740 p2925
;; p2740
;; p2925
;; ----- [p2926]
;; p2926
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2737 p2926
;; p2737
;; p2926
;; ----- [p2927]
;; p2927
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2734 p2927
;; p2734
;; p2927
;; ----- [p2928]
;; p2928
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2731 p2928
;; p2731
;; p2928
;; ----- [p2929]
;; p2929
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2728 p2929
;; p2728
;; p2929
;; ----- [p2930]
;; p2930
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2725 p2930
;; p2725
;; p2930
;; ----- [p2931]
;; p2931
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2722 p2931
;; p2722
;; p2931
;; ----- [p2932]
;; p2932
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2719 p2932
;; p2719
;; p2932
;; ----- [p2933]
;; p2933
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2716 p2933
;; p2716
;; p2933
;; ----- [p2934]
;; p2934
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2713 p2934
;; p2713
;; p2934
;; ----- [p2935]
;; p2935
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2710 p2935
;; p2710
;; p2935
;; ----- [p2936]
;; p2936
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2707 p2936
;; p2707
;; p2936
;; ----- [p2937]
;; p2937
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2704 p2937
;; p2704
;; p2937
;; ----- [p2938]
;; p2938
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2701 p2938
;; p2701
;; p2938
;; ----- [p2939]
;; p2939
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2698 p2939
;; p2698
;; p2939
;; ----- [p2940]
;; p2940
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2695 p2940
;; p2695
;; p2940
;; ----- [p2941]
;; p2941
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_Array p2692 p2941
;; p2692
;; p2941
;; ----- [p2942]
;; p2942
;; 
;; Proof. C_Array QED
;;; Verifying MC_Just_Constant p2942
;; p2942
;; ----- [p2943]
;; p2943
;; 
;; Proof. Just Constant equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p2944]
;; p2944
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p2945]
;; p2945
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying G_GlobalVariable p2677 p2678 p2679 p2680 p2681 p2683 p2684 p2688 p2690 p2943 p2944 p2945 p2946 p2947
;; p2677
;; p2678
;; p2679
;; p2680
;; p2681
;; p2683
;; p2684
;; p2688
;; p2690
;; p2943
;; p2944
;; p2945
;; p2946
;; p2947
;; ----- [p2948]
;; p2948
;; 
;; Proof. global variables .str.20.1858 and .str.20.1861 equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p2949
;; p2949
;; ----- [p2950]
;; p2950
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p2675 p2950
;; p2675
;; p2950
;; ----- [p2951]
;; p2951
;; 
;; Proof. C_GlobalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p2952 p2953
;; p2952
;; p2953
;; ----- [p2954]
;; p2954
;; 
;; Proof. C_Int QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p2955 p2956
;; p2955
;; p2956
;; ----- [p2957]
;; p2957
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p2958]
;; p2958
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p2957 p2958
;; p2957
;; p2958
;; ----- [p2959]
;; p2959
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2954 p2959
;; p2954
;; p2959
;; ----- [p2960]
;; p2960
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_GetElementPtr p2668 p2951 p2960
;; p2668
;; p2951
;; p2960
;; ----- [p2961]
;; p2961
;; 
;; Proof. C_GetElementPtr QED
;;; 64 == 64 : Word32
;;; 3 == 3 : Integer
;;; Verifying C_Int p2962 p2963
;; p2962
;; p2963
;; ----- [p2964]
;; p2964
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p2965
;; p2965
;; ----- [p2966]
;; p2966
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p2967
;; p2967
;; ----- [p2968]
;; p2968
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p2966 p2968
;; p2966
;; p2968
;; ----- [p2969]
;; p2969
;; 
;; Proof. T_PointerType QED
;;; Verifying C_IntToPtr p2964 p2969
;; p2964
;; p2969
;; ----- [p2970]
;; p2970
;; 
;; Proof. C_IntToPtr QED
;;; True == True : Bool
;;; 51 == 51 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p2973
;; p2973
;; ----- [p2974]
;; p2974
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p2972 p2974
;; p2972
;; p2974
;; ----- [p2975]
;; p2975
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p2976
;; p2976
;; ----- [p2977]
;; p2977
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p2975 p2977
;; p2975
;; p2977
;; ----- [p2978]
;; p2978
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p2979]
;; p2979
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Private 
;; ----- [p2981]
;; p2981
;; 
;; Proof. L_Private QED
;;; Verifying V_Default 
;; ----- [p2982]
;; p2982
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p2983]
;; p2983
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying MM_Nothing_Model 
;; ----- [p2984]
;; p2984
;; 
;; Proof. Nothing (Model) equivalent QED
;;; Verifying UA_GlobalAddr 
;; ----- [p2985]
;; p2985
;; 
;; Proof. UA_GlobalAddr QED
;;; Verifying MUA_Just_UnnamedAddr p2985
;; p2985
;; ----- [p2986]
;; p2986
;; 
;; Proof. Just UnnamedAddr equivalent QED
;;; True == True : Bool
;;; 51 == 51 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p2989
;; p2989
;; ----- [p2990]
;; p2990
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p2988 p2990
;; p2988
;; p2990
;; ----- [p2991]
;; p2991
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p2992
;; p2992
;; ----- [p2993]
;; p2993
;; 
;; Proof. AS_AddrSpace QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p2994
;; p2994
;; ----- [p2995]
;; p2995
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; 45 == 45 : Integer
;;; Verifying C_Int p2996 p2997
;; p2996
;; p2997
;; ----- [p2998]
;; p2998
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 109 == 109 : Integer
;;; Verifying C_Int p2999 p3000
;; p2999
;; p3000
;; ----- [p3001]
;; p3001
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p3002 p3003
;; p3002
;; p3003
;; ----- [p3004]
;; p3004
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 120 == 120 : Integer
;;; Verifying C_Int p3005 p3006
;; p3005
;; p3006
;; ----- [p3007]
;; p3007
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 45 == 45 : Integer
;;; Verifying C_Int p3008 p3009
;; p3008
;; p3009
;; ----- [p3010]
;; p3010
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 98 == 98 : Integer
;;; Verifying C_Int p3011 p3012
;; p3011
;; p3012
;; ----- [p3013]
;; p3013
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 111 == 111 : Integer
;;; Verifying C_Int p3014 p3015
;; p3014
;; p3015
;; ----- [p3016]
;; p3016
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 100 == 100 : Integer
;;; Verifying C_Int p3017 p3018
;; p3017
;; p3018
;; ----- [p3019]
;; p3019
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 121 == 121 : Integer
;;; Verifying C_Int p3020 p3021
;; p3020
;; p3021
;; ----- [p3022]
;; p3022
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p3023 p3024
;; p3023
;; p3024
;; ----- [p3025]
;; p3025
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 45 == 45 : Integer
;;; Verifying C_Int p3026 p3027
;; p3026
;; p3027
;; ----- [p3028]
;; p3028
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 109 == 109 : Integer
;;; Verifying C_Int p3029 p3030
;; p3029
;; p3030
;; ----- [p3031]
;; p3031
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p3032 p3033
;; p3032
;; p3033
;; ----- [p3034]
;; p3034
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 120 == 120 : Integer
;;; Verifying C_Int p3035 p3036
;; p3035
;; p3036
;; ----- [p3037]
;; p3037
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 98 == 98 : Integer
;;; Verifying C_Int p3038 p3039
;; p3038
;; p3039
;; ----- [p3040]
;; p3040
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 100 == 100 : Integer
;;; Verifying C_Int p3041 p3042
;; p3041
;; p3042
;; ----- [p3043]
;; p3043
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p3044 p3045
;; p3044
;; p3045
;; ----- [p3046]
;; p3046
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 72 == 72 : Integer
;;; Verifying C_Int p3047 p3048
;; p3047
;; p3048
;; ----- [p3049]
;; p3049
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 84 == 84 : Integer
;;; Verifying C_Int p3050 p3051
;; p3050
;; p3051
;; ----- [p3052]
;; p3052
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 84 == 84 : Integer
;;; Verifying C_Int p3053 p3054
;; p3053
;; p3054
;; ----- [p3055]
;; p3055
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 80 == 80 : Integer
;;; Verifying C_Int p3056 p3057
;; p3056
;; p3057
;; ----- [p3058]
;; p3058
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p3059 p3060
;; p3059
;; p3060
;; ----- [p3061]
;; p3061
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 117 == 117 : Integer
;;; Verifying C_Int p3062 p3063
;; p3062
;; p3063
;; ----- [p3064]
;; p3064
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 112 == 112 : Integer
;;; Verifying C_Int p3065 p3066
;; p3065
;; p3066
;; ----- [p3067]
;; p3067
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 108 == 108 : Integer
;;; Verifying C_Int p3068 p3069
;; p3068
;; p3069
;; ----- [p3070]
;; p3070
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 111 == 111 : Integer
;;; Verifying C_Int p3071 p3072
;; p3071
;; p3072
;; ----- [p3073]
;; p3073
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p3074 p3075
;; p3074
;; p3075
;; ----- [p3076]
;; p3076
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 100 == 100 : Integer
;;; Verifying C_Int p3077 p3078
;; p3077
;; p3078
;; ----- [p3079]
;; p3079
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p3080 p3081
;; p3080
;; p3081
;; ----- [p3082]
;; p3082
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 108 == 108 : Integer
;;; Verifying C_Int p3083 p3084
;; p3083
;; p3084
;; ----- [p3085]
;; p3085
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 105 == 105 : Integer
;;; Verifying C_Int p3086 p3087
;; p3086
;; p3087
;; ----- [p3088]
;; p3088
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 109 == 109 : Integer
;;; Verifying C_Int p3089 p3090
;; p3089
;; p3090
;; ----- [p3091]
;; p3091
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 105 == 105 : Integer
;;; Verifying C_Int p3092 p3093
;; p3092
;; p3093
;; ----- [p3094]
;; p3094
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p3095 p3096
;; p3095
;; p3096
;; ----- [p3097]
;; p3097
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 46 == 46 : Integer
;;; Verifying C_Int p3098 p3099
;; p3098
;; p3099
;; ----- [p3100]
;; p3100
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p3101 p3102
;; p3101
;; p3102
;; ----- [p3103]
;; p3103
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 100 == 100 : Integer
;;; Verifying C_Int p3104 p3105
;; p3104
;; p3105
;; ----- [p3106]
;; p3106
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p3107 p3108
;; p3107
;; p3108
;; ----- [p3109]
;; p3109
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 102 == 102 : Integer
;;; Verifying C_Int p3110 p3111
;; p3110
;; p3111
;; ----- [p3112]
;; p3112
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p3113 p3114
;; p3113
;; p3114
;; ----- [p3115]
;; p3115
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 117 == 117 : Integer
;;; Verifying C_Int p3116 p3117
;; p3116
;; p3117
;; ----- [p3118]
;; p3118
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 108 == 108 : Integer
;;; Verifying C_Int p3119 p3120
;; p3119
;; p3120
;; ----- [p3121]
;; p3121
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p3122 p3123
;; p3122
;; p3123
;; ----- [p3124]
;; p3124
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 58 == 58 : Integer
;;; Verifying C_Int p3125 p3126
;; p3125
;; p3126
;; ----- [p3127]
;; p3127
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p3128 p3129
;; p3128
;; p3129
;; ----- [p3130]
;; p3130
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 126 == 126 : Integer
;;; Verifying C_Int p3131 p3132
;; p3131
;; p3132
;; ----- [p3133]
;; p3133
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 53 == 53 : Integer
;;; Verifying C_Int p3134 p3135
;; p3134
;; p3135
;; ----- [p3136]
;; p3136
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 48 == 48 : Integer
;;; Verifying C_Int p3137 p3138
;; p3137
;; p3138
;; ----- [p3139]
;; p3139
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 77 == 77 : Integer
;;; Verifying C_Int p3140 p3141
;; p3140
;; p3141
;; ----- [p3142]
;; p3142
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 98 == 98 : Integer
;;; Verifying C_Int p3143 p3144
;; p3143
;; p3144
;; ----- [p3145]
;; p3145
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p3146 p3147
;; p3146
;; p3147
;; ----- [p3148]
;; p3148
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p3149]
;; p3149
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p3148 p3149
;; p3148
;; p3149
;; ----- [p3150]
;; p3150
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3145 p3150
;; p3145
;; p3150
;; ----- [p3151]
;; p3151
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3142 p3151
;; p3142
;; p3151
;; ----- [p3152]
;; p3152
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3139 p3152
;; p3139
;; p3152
;; ----- [p3153]
;; p3153
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3136 p3153
;; p3136
;; p3153
;; ----- [p3154]
;; p3154
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3133 p3154
;; p3133
;; p3154
;; ----- [p3155]
;; p3155
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3130 p3155
;; p3130
;; p3155
;; ----- [p3156]
;; p3156
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3127 p3156
;; p3127
;; p3156
;; ----- [p3157]
;; p3157
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3124 p3157
;; p3124
;; p3157
;; ----- [p3158]
;; p3158
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3121 p3158
;; p3121
;; p3158
;; ----- [p3159]
;; p3159
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3118 p3159
;; p3118
;; p3159
;; ----- [p3160]
;; p3160
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3115 p3160
;; p3115
;; p3160
;; ----- [p3161]
;; p3161
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3112 p3161
;; p3112
;; p3161
;; ----- [p3162]
;; p3162
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3109 p3162
;; p3109
;; p3162
;; ----- [p3163]
;; p3163
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3106 p3163
;; p3106
;; p3163
;; ----- [p3164]
;; p3164
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3103 p3164
;; p3103
;; p3164
;; ----- [p3165]
;; p3165
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3100 p3165
;; p3100
;; p3165
;; ----- [p3166]
;; p3166
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3097 p3166
;; p3097
;; p3166
;; ----- [p3167]
;; p3167
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3094 p3167
;; p3094
;; p3167
;; ----- [p3168]
;; p3168
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3091 p3168
;; p3091
;; p3168
;; ----- [p3169]
;; p3169
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3088 p3169
;; p3088
;; p3169
;; ----- [p3170]
;; p3170
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3085 p3170
;; p3085
;; p3170
;; ----- [p3171]
;; p3171
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3082 p3171
;; p3082
;; p3171
;; ----- [p3172]
;; p3172
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3079 p3172
;; p3079
;; p3172
;; ----- [p3173]
;; p3173
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3076 p3173
;; p3076
;; p3173
;; ----- [p3174]
;; p3174
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3073 p3174
;; p3073
;; p3174
;; ----- [p3175]
;; p3175
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3070 p3175
;; p3070
;; p3175
;; ----- [p3176]
;; p3176
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3067 p3176
;; p3067
;; p3176
;; ----- [p3177]
;; p3177
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3064 p3177
;; p3064
;; p3177
;; ----- [p3178]
;; p3178
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3061 p3178
;; p3061
;; p3178
;; ----- [p3179]
;; p3179
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3058 p3179
;; p3058
;; p3179
;; ----- [p3180]
;; p3180
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3055 p3180
;; p3055
;; p3180
;; ----- [p3181]
;; p3181
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3052 p3181
;; p3052
;; p3181
;; ----- [p3182]
;; p3182
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3049 p3182
;; p3049
;; p3182
;; ----- [p3183]
;; p3183
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3046 p3183
;; p3046
;; p3183
;; ----- [p3184]
;; p3184
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3043 p3184
;; p3043
;; p3184
;; ----- [p3185]
;; p3185
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3040 p3185
;; p3040
;; p3185
;; ----- [p3186]
;; p3186
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3037 p3186
;; p3037
;; p3186
;; ----- [p3187]
;; p3187
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3034 p3187
;; p3034
;; p3187
;; ----- [p3188]
;; p3188
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3031 p3188
;; p3031
;; p3188
;; ----- [p3189]
;; p3189
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3028 p3189
;; p3028
;; p3189
;; ----- [p3190]
;; p3190
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3025 p3190
;; p3025
;; p3190
;; ----- [p3191]
;; p3191
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3022 p3191
;; p3022
;; p3191
;; ----- [p3192]
;; p3192
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3019 p3192
;; p3019
;; p3192
;; ----- [p3193]
;; p3193
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3016 p3193
;; p3016
;; p3193
;; ----- [p3194]
;; p3194
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3013 p3194
;; p3013
;; p3194
;; ----- [p3195]
;; p3195
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3010 p3195
;; p3010
;; p3195
;; ----- [p3196]
;; p3196
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3007 p3196
;; p3007
;; p3196
;; ----- [p3197]
;; p3197
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3004 p3197
;; p3004
;; p3197
;; ----- [p3198]
;; p3198
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3001 p3198
;; p3001
;; p3198
;; ----- [p3199]
;; p3199
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2998 p3199
;; p2998
;; p3199
;; ----- [p3200]
;; p3200
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_Array p2995 p3200
;; p2995
;; p3200
;; ----- [p3201]
;; p3201
;; 
;; Proof. C_Array QED
;;; Verifying MC_Just_Constant p3201
;; p3201
;; ----- [p3202]
;; p3202
;; 
;; Proof. Just Constant equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p3203]
;; p3203
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p3204]
;; p3204
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying G_GlobalVariable p2980 p2981 p2982 p2983 p2984 p2986 p2987 p2991 p2993 p3202 p3203 p3204 p3205 p3206
;; p2980
;; p2981
;; p2982
;; p2983
;; p2984
;; p2986
;; p2987
;; p2991
;; p2993
;; p3202
;; p3203
;; p3204
;; p3205
;; p3206
;; ----- [p3207]
;; p3207
;; 
;; Proof. global variables .str.21.1859 and .str.21.1862 equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p3208
;; p3208
;; ----- [p3209]
;; p3209
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p2978 p3209
;; p2978
;; p3209
;; ----- [p3210]
;; p3210
;; 
;; Proof. C_GlobalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p3211 p3212
;; p3211
;; p3212
;; ----- [p3213]
;; p3213
;; 
;; Proof. C_Int QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p3214 p3215
;; p3214
;; p3215
;; ----- [p3216]
;; p3216
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p3217]
;; p3217
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p3216 p3217
;; p3216
;; p3217
;; ----- [p3218]
;; p3218
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3213 p3218
;; p3213
;; p3218
;; ----- [p3219]
;; p3219
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_GetElementPtr p2971 p3210 p3219
;; p2971
;; p3210
;; p3219
;; ----- [p3220]
;; p3220
;; 
;; Proof. C_GetElementPtr QED
;;; 64 == 64 : Word32
;;; 3 == 3 : Integer
;;; Verifying C_Int p3221 p3222
;; p3221
;; p3222
;; ----- [p3223]
;; p3223
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p3224
;; p3224
;; ----- [p3225]
;; p3225
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p3226
;; p3226
;; ----- [p3227]
;; p3227
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p3225 p3227
;; p3225
;; p3227
;; ----- [p3228]
;; p3228
;; 
;; Proof. T_PointerType QED
;;; Verifying C_IntToPtr p3223 p3228
;; p3223
;; p3228
;; ----- [p3229]
;; p3229
;; 
;; Proof. C_IntToPtr QED
;;; True == True : Bool
;;; 37 == 37 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p3232
;; p3232
;; ----- [p3233]
;; p3233
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p3231 p3233
;; p3231
;; p3233
;; ----- [p3234]
;; p3234
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p3235
;; p3235
;; ----- [p3236]
;; p3236
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p3234 p3236
;; p3234
;; p3236
;; ----- [p3237]
;; p3237
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p3238]
;; p3238
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Private 
;; ----- [p3240]
;; p3240
;; 
;; Proof. L_Private QED
;;; Verifying V_Default 
;; ----- [p3241]
;; p3241
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p3242]
;; p3242
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying MM_Nothing_Model 
;; ----- [p3243]
;; p3243
;; 
;; Proof. Nothing (Model) equivalent QED
;;; Verifying UA_GlobalAddr 
;; ----- [p3244]
;; p3244
;; 
;; Proof. UA_GlobalAddr QED
;;; Verifying MUA_Just_UnnamedAddr p3244
;; p3244
;; ----- [p3245]
;; p3245
;; 
;; Proof. Just UnnamedAddr equivalent QED
;;; True == True : Bool
;;; 37 == 37 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p3248
;; p3248
;; ----- [p3249]
;; p3249
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p3247 p3249
;; p3247
;; p3249
;; ----- [p3250]
;; p3250
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p3251
;; p3251
;; ----- [p3252]
;; p3252
;; 
;; Proof. AS_AddrSpace QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p3253
;; p3253
;; ----- [p3254]
;; p3254
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; 45 == 45 : Integer
;;; Verifying C_Int p3255 p3256
;; p3255
;; p3256
;; ----- [p3257]
;; p3257
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 108 == 108 : Integer
;;; Verifying C_Int p3258 p3259
;; p3258
;; p3259
;; ----- [p3260]
;; p3260
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 111 == 111 : Integer
;;; Verifying C_Int p3261 p3262
;; p3261
;; p3262
;; ----- [p3263]
;; p3263
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 103 == 103 : Integer
;;; Verifying C_Int p3264 p3265
;; p3264
;; p3265
;; ----- [p3266]
;; p3266
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p3267 p3268
;; p3267
;; p3268
;; ----- [p3269]
;; p3269
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 45 == 45 : Integer
;;; Verifying C_Int p3270 p3271
;; p3270
;; p3271
;; ----- [p3272]
;; p3272
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 118 == 118 : Integer
;;; Verifying C_Int p3273 p3274
;; p3273
;; p3274
;; ----- [p3275]
;; p3275
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p3276 p3277
;; p3276
;; p3277
;; ----- [p3278]
;; p3278
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p3279 p3280
;; p3279
;; p3280
;; ----- [p3281]
;; p3281
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p3282 p3283
;; p3282
;; p3283
;; ----- [p3284]
;; p3284
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 113 == 113 : Integer
;;; Verifying C_Int p3285 p3286
;; p3285
;; p3286
;; ----- [p3287]
;; p3287
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 117 == 117 : Integer
;;; Verifying C_Int p3288 p3289
;; p3288
;; p3289
;; ----- [p3290]
;; p3290
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p3291 p3292
;; p3291
;; p3292
;; ----- [p3293]
;; p3293
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p3294 p3295
;; p3294
;; p3295
;; ----- [p3296]
;; p3296
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p3297 p3298
;; p3297
;; p3298
;; ----- [p3299]
;; p3299
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p3300 p3301
;; p3300
;; p3301
;; ----- [p3302]
;; p3302
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 118 == 118 : Integer
;;; Verifying C_Int p3303 p3304
;; p3303
;; p3304
;; ----- [p3305]
;; p3305
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p3306 p3307
;; p3306
;; p3307
;; ----- [p3308]
;; p3308
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 114 == 114 : Integer
;;; Verifying C_Int p3309 p3310
;; p3309
;; p3310
;; ----- [p3311]
;; p3311
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 98 == 98 : Integer
;;; Verifying C_Int p3312 p3313
;; p3312
;; p3313
;; ----- [p3314]
;; p3314
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 111 == 111 : Integer
;;; Verifying C_Int p3315 p3316
;; p3315
;; p3316
;; ----- [p3317]
;; p3317
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p3318 p3319
;; p3318
;; p3319
;; ----- [p3320]
;; p3320
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 105 == 105 : Integer
;;; Verifying C_Int p3321 p3322
;; p3321
;; p3322
;; ----- [p3323]
;; p3323
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p3324 p3325
;; p3324
;; p3325
;; ----- [p3326]
;; p3326
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 121 == 121 : Integer
;;; Verifying C_Int p3327 p3328
;; p3327
;; p3328
;; ----- [p3329]
;; p3329
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p3330 p3331
;; p3330
;; p3331
;; ----- [p3332]
;; p3332
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 40 == 40 : Integer
;;; Verifying C_Int p3333 p3334
;; p3333
;; p3334
;; ----- [p3335]
;; p3335
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 108 == 108 : Integer
;;; Verifying C_Int p3336 p3337
;; p3336
;; p3337
;; ----- [p3338]
;; p3338
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 111 == 111 : Integer
;;; Verifying C_Int p3339 p3340
;; p3339
;; p3340
;; ----- [p3341]
;; p3341
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 103 == 103 : Integer
;;; Verifying C_Int p3342 p3343
;; p3342
;; p3343
;; ----- [p3344]
;; p3344
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 103 == 103 : Integer
;;; Verifying C_Int p3345 p3346
;; p3345
;; p3346
;; ----- [p3347]
;; p3347
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 105 == 105 : Integer
;;; Verifying C_Int p3348 p3349
;; p3348
;; p3349
;; ----- [p3350]
;; p3350
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 110 == 110 : Integer
;;; Verifying C_Int p3351 p3352
;; p3351
;; p3352
;; ----- [p3353]
;; p3353
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 103 == 103 : Integer
;;; Verifying C_Int p3354 p3355
;; p3354
;; p3355
;; ----- [p3356]
;; p3356
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 41 == 41 : Integer
;;; Verifying C_Int p3357 p3358
;; p3357
;; p3358
;; ----- [p3359]
;; p3359
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 46 == 46 : Integer
;;; Verifying C_Int p3360 p3361
;; p3360
;; p3361
;; ----- [p3362]
;; p3362
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p3363 p3364
;; p3363
;; p3364
;; ----- [p3365]
;; p3365
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p3366]
;; p3366
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p3365 p3366
;; p3365
;; p3366
;; ----- [p3367]
;; p3367
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3362 p3367
;; p3362
;; p3367
;; ----- [p3368]
;; p3368
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3359 p3368
;; p3359
;; p3368
;; ----- [p3369]
;; p3369
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3356 p3369
;; p3356
;; p3369
;; ----- [p3370]
;; p3370
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3353 p3370
;; p3353
;; p3370
;; ----- [p3371]
;; p3371
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3350 p3371
;; p3350
;; p3371
;; ----- [p3372]
;; p3372
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3347 p3372
;; p3347
;; p3372
;; ----- [p3373]
;; p3373
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3344 p3373
;; p3344
;; p3373
;; ----- [p3374]
;; p3374
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3341 p3374
;; p3341
;; p3374
;; ----- [p3375]
;; p3375
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3338 p3375
;; p3338
;; p3375
;; ----- [p3376]
;; p3376
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3335 p3376
;; p3335
;; p3376
;; ----- [p3377]
;; p3377
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3332 p3377
;; p3332
;; p3377
;; ----- [p3378]
;; p3378
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3329 p3378
;; p3329
;; p3378
;; ----- [p3379]
;; p3379
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3326 p3379
;; p3326
;; p3379
;; ----- [p3380]
;; p3380
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3323 p3380
;; p3323
;; p3380
;; ----- [p3381]
;; p3381
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3320 p3381
;; p3320
;; p3381
;; ----- [p3382]
;; p3382
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3317 p3382
;; p3317
;; p3382
;; ----- [p3383]
;; p3383
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3314 p3383
;; p3314
;; p3383
;; ----- [p3384]
;; p3384
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3311 p3384
;; p3311
;; p3384
;; ----- [p3385]
;; p3385
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3308 p3385
;; p3308
;; p3385
;; ----- [p3386]
;; p3386
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3305 p3386
;; p3305
;; p3386
;; ----- [p3387]
;; p3387
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3302 p3387
;; p3302
;; p3387
;; ----- [p3388]
;; p3388
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3299 p3388
;; p3299
;; p3388
;; ----- [p3389]
;; p3389
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3296 p3389
;; p3296
;; p3389
;; ----- [p3390]
;; p3390
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3293 p3390
;; p3293
;; p3390
;; ----- [p3391]
;; p3391
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3290 p3391
;; p3290
;; p3391
;; ----- [p3392]
;; p3392
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3287 p3392
;; p3287
;; p3392
;; ----- [p3393]
;; p3393
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3284 p3393
;; p3284
;; p3393
;; ----- [p3394]
;; p3394
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3281 p3394
;; p3281
;; p3394
;; ----- [p3395]
;; p3395
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3278 p3395
;; p3278
;; p3395
;; ----- [p3396]
;; p3396
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3275 p3396
;; p3275
;; p3396
;; ----- [p3397]
;; p3397
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3272 p3397
;; p3272
;; p3397
;; ----- [p3398]
;; p3398
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3269 p3398
;; p3269
;; p3398
;; ----- [p3399]
;; p3399
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3266 p3399
;; p3266
;; p3399
;; ----- [p3400]
;; p3400
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3263 p3400
;; p3263
;; p3400
;; ----- [p3401]
;; p3401
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3260 p3401
;; p3260
;; p3401
;; ----- [p3402]
;; p3402
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3257 p3402
;; p3257
;; p3402
;; ----- [p3403]
;; p3403
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_Array p3254 p3403
;; p3254
;; p3403
;; ----- [p3404]
;; p3404
;; 
;; Proof. C_Array QED
;;; Verifying MC_Just_Constant p3404
;; p3404
;; ----- [p3405]
;; p3405
;; 
;; Proof. Just Constant equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p3406]
;; p3406
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p3407]
;; p3407
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying G_GlobalVariable p3239 p3240 p3241 p3242 p3243 p3245 p3246 p3250 p3252 p3405 p3406 p3407 p3408 p3409
;; p3239
;; p3240
;; p3241
;; p3242
;; p3243
;; p3245
;; p3246
;; p3250
;; p3252
;; p3405
;; p3406
;; p3407
;; p3408
;; p3409
;; ----- [p3410]
;; p3410
;; 
;; Proof. global variables .str.22.1860 and .str.22.1863 equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p3411
;; p3411
;; ----- [p3412]
;; p3412
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p3237 p3412
;; p3237
;; p3412
;; ----- [p3413]
;; p3413
;; 
;; Proof. C_GlobalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p3414 p3415
;; p3414
;; p3415
;; ----- [p3416]
;; p3416
;; 
;; Proof. C_Int QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p3417 p3418
;; p3417
;; p3418
;; ----- [p3419]
;; p3419
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p3420]
;; p3420
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p3419 p3420
;; p3419
;; p3420
;; ----- [p3421]
;; p3421
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3416 p3421
;; p3416
;; p3421
;; ----- [p3422]
;; p3422
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_GetElementPtr p3230 p3413 p3422
;; p3230
;; p3413
;; p3422
;; ----- [p3423]
;; p3423
;; 
;; Proof. C_GetElementPtr QED
;;; 64 == 64 : Word32
;;; 2 == 2 : Integer
;;; Verifying C_Int p3424 p3425
;; p3424
;; p3425
;; ----- [p3426]
;; p3426
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p3427
;; p3427
;; ----- [p3428]
;; p3428
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p3429
;; p3429
;; ----- [p3430]
;; p3430
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p3428 p3430
;; p3428
;; p3430
;; ----- [p3431]
;; p3431
;; 
;; Proof. T_PointerType QED
;;; Verifying C_IntToPtr p3426 p3431
;; p3426
;; p3431
;; ----- [p3432]
;; p3432
;; 
;; Proof. C_IntToPtr QED
;;; True == True : Bool
;;; 10 == 10 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p3435
;; p3435
;; ----- [p3436]
;; p3436
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p3434 p3436
;; p3434
;; p3436
;; ----- [p3437]
;; p3437
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p3438
;; p3438
;; ----- [p3439]
;; p3439
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p3437 p3439
;; p3437
;; p3439
;; ----- [p3440]
;; p3440
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p3441]
;; p3441
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Private 
;; ----- [p3443]
;; p3443
;; 
;; Proof. L_Private QED
;;; Verifying V_Default 
;; ----- [p3444]
;; p3444
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p3445]
;; p3445
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying MM_Nothing_Model 
;; ----- [p3446]
;; p3446
;; 
;; Proof. Nothing (Model) equivalent QED
;;; Verifying UA_GlobalAddr 
;; ----- [p3447]
;; p3447
;; 
;; Proof. UA_GlobalAddr QED
;;; Verifying MUA_Just_UnnamedAddr p3447
;; p3447
;; ----- [p3448]
;; p3448
;; 
;; Proof. Just UnnamedAddr equivalent QED
;;; True == True : Bool
;;; 10 == 10 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p3451
;; p3451
;; ----- [p3452]
;; p3452
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p3450 p3452
;; p3450
;; p3452
;; ----- [p3453]
;; p3453
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p3454
;; p3454
;; ----- [p3455]
;; p3455
;; 
;; Proof. AS_AddrSpace QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p3456
;; p3456
;; ----- [p3457]
;; p3457
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; 68 == 68 : Integer
;;; Verifying C_Int p3458 p3459
;; p3458
;; p3459
;; ----- [p3460]
;; p3460
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p3461 p3462
;; p3461
;; p3462
;; ----- [p3463]
;; p3463
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p3464 p3465
;; p3464
;; p3465
;; ----- [p3466]
;; p3466
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p3467 p3468
;; p3467
;; p3468
;; ----- [p3469]
;; p3469
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 98 == 98 : Integer
;;; Verifying C_Int p3470 p3471
;; p3470
;; p3471
;; ----- [p3472]
;; p3472
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p3473 p3474
;; p3473
;; p3474
;; ----- [p3475]
;; p3475
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p3476 p3477
;; p3476
;; p3477
;; ----- [p3478]
;; p3478
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p3479 p3480
;; p3479
;; p3480
;; ----- [p3481]
;; p3481
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 58 == 58 : Integer
;;; Verifying C_Int p3482 p3483
;; p3482
;; p3483
;; ----- [p3484]
;; p3484
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p3485 p3486
;; p3485
;; p3486
;; ----- [p3487]
;; p3487
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p3488]
;; p3488
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p3487 p3488
;; p3487
;; p3488
;; ----- [p3489]
;; p3489
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3484 p3489
;; p3484
;; p3489
;; ----- [p3490]
;; p3490
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3481 p3490
;; p3481
;; p3490
;; ----- [p3491]
;; p3491
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3478 p3491
;; p3478
;; p3491
;; ----- [p3492]
;; p3492
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3475 p3492
;; p3475
;; p3492
;; ----- [p3493]
;; p3493
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3472 p3493
;; p3472
;; p3493
;; ----- [p3494]
;; p3494
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3469 p3494
;; p3469
;; p3494
;; ----- [p3495]
;; p3495
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3466 p3495
;; p3466
;; p3495
;; ----- [p3496]
;; p3496
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3463 p3496
;; p3463
;; p3496
;; ----- [p3497]
;; p3497
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3460 p3497
;; p3460
;; p3497
;; ----- [p3498]
;; p3498
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_Array p3457 p3498
;; p3457
;; p3498
;; ----- [p3499]
;; p3499
;; 
;; Proof. C_Array QED
;;; Verifying MC_Just_Constant p3499
;; p3499
;; ----- [p3500]
;; p3500
;; 
;; Proof. Just Constant equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p3501]
;; p3501
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p3502]
;; p3502
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying G_GlobalVariable p3442 p3443 p3444 p3445 p3446 p3448 p3449 p3453 p3455 p3500 p3501 p3502 p3503 p3504
;; p3442
;; p3443
;; p3444
;; p3445
;; p3446
;; p3448
;; p3449
;; p3453
;; p3455
;; p3500
;; p3501
;; p3502
;; p3503
;; p3504
;; ----- [p3505]
;; p3505
;; 
;; Proof. global variables .str.23.1861 and .str.23.1864 equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p3506
;; p3506
;; ----- [p3507]
;; p3507
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p3440 p3507
;; p3440
;; p3507
;; ----- [p3508]
;; p3508
;; 
;; Proof. C_GlobalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p3509 p3510
;; p3509
;; p3510
;; ----- [p3511]
;; p3511
;; 
;; Proof. C_Int QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p3512 p3513
;; p3512
;; p3513
;; ----- [p3514]
;; p3514
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p3515]
;; p3515
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p3514 p3515
;; p3514
;; p3515
;; ----- [p3516]
;; p3516
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3511 p3516
;; p3511
;; p3516
;; ----- [p3517]
;; p3517
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_GetElementPtr p3433 p3508 p3517
;; p3433
;; p3508
;; p3517
;; ----- [p3518]
;; p3518
;; 
;; Proof. C_GetElementPtr QED
;;; 64 == 64 : Word32
;;; 5 == 5 : Integer
;;; Verifying C_Int p3519 p3520
;; p3519
;; p3520
;; ----- [p3521]
;; p3521
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p3522
;; p3522
;; ----- [p3523]
;; p3523
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p3524
;; p3524
;; ----- [p3525]
;; p3525
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p3523 p3525
;; p3523
;; p3525
;; ----- [p3526]
;; p3526
;; 
;; Proof. T_PointerType QED
;;; Verifying C_IntToPtr p3521 p3526
;; p3521
;; p3526
;; ----- [p3527]
;; p3527
;; 
;; Proof. C_IntToPtr QED
;;; True == True : Bool
;;; 54 == 54 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p3530
;; p3530
;; ----- [p3531]
;; p3531
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p3529 p3531
;; p3529
;; p3531
;; ----- [p3532]
;; p3532
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p3533
;; p3533
;; ----- [p3534]
;; p3534
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p3532 p3534
;; p3532
;; p3534
;; ----- [p3535]
;; p3535
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p3536]
;; p3536
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Private 
;; ----- [p3538]
;; p3538
;; 
;; Proof. L_Private QED
;;; Verifying V_Default 
;; ----- [p3539]
;; p3539
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p3540]
;; p3540
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying MM_Nothing_Model 
;; ----- [p3541]
;; p3541
;; 
;; Proof. Nothing (Model) equivalent QED
;;; Verifying UA_GlobalAddr 
;; ----- [p3542]
;; p3542
;; 
;; Proof. UA_GlobalAddr QED
;;; Verifying MUA_Just_UnnamedAddr p3542
;; p3542
;; ----- [p3543]
;; p3543
;; 
;; Proof. Just UnnamedAddr equivalent QED
;;; True == True : Bool
;;; 54 == 54 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p3546
;; p3546
;; ----- [p3547]
;; p3547
;; 
;; Proof. T_IntegerType QED
;;; Verifying T_ArrayType p3545 p3547
;; p3545
;; p3547
;; ----- [p3548]
;; p3548
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p3549
;; p3549
;; ----- [p3550]
;; p3550
;; 
;; Proof. AS_AddrSpace QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p3551
;; p3551
;; ----- [p3552]
;; p3552
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; 45 == 45 : Integer
;;; Verifying C_Int p3553 p3554
;; p3553
;; p3554
;; ----- [p3555]
;; p3555
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 100 == 100 : Integer
;;; Verifying C_Int p3556 p3557
;; p3556
;; p3557
;; ----- [p3558]
;; p3558
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p3559 p3560
;; p3559
;; p3560
;; ----- [p3561]
;; p3561
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p3562 p3563
;; p3562
;; p3563
;; ----- [p3564]
;; p3564
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p3565 p3566
;; p3565
;; p3566
;; ----- [p3567]
;; p3567
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 98 == 98 : Integer
;;; Verifying C_Int p3568 p3569
;; p3568
;; p3569
;; ----- [p3570]
;; p3570
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p3571 p3572
;; p3571
;; p3572
;; ----- [p3573]
;; p3573
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p3574 p3575
;; p3574
;; p3575
;; ----- [p3576]
;; p3576
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p3577 p3578
;; p3577
;; p3578
;; ----- [p3579]
;; p3579
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p3580 p3581
;; p3580
;; p3581
;; ----- [p3582]
;; p3582
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 45 == 45 : Integer
;;; Verifying C_Int p3583 p3584
;; p3583
;; p3584
;; ----- [p3585]
;; p3585
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 100 == 100 : Integer
;;; Verifying C_Int p3586 p3587
;; p3586
;; p3587
;; ----- [p3588]
;; p3588
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 98 == 98 : Integer
;;; Verifying C_Int p3589 p3590
;; p3589
;; p3590
;; ----- [p3591]
;; p3591
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p3592 p3593
;; p3592
;; p3593
;; ----- [p3594]
;; p3594
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 68 == 68 : Integer
;;; Verifying C_Int p3595 p3596
;; p3595
;; p3596
;; ----- [p3597]
;; p3597
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p3598 p3599
;; p3598
;; p3599
;; ----- [p3600]
;; p3600
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p3601 p3602
;; p3601
;; p3602
;; ----- [p3603]
;; p3603
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p3604 p3605
;; p3604
;; p3605
;; ----- [p3606]
;; p3606
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 98 == 98 : Integer
;;; Verifying C_Int p3607 p3608
;; p3607
;; p3608
;; ----- [p3609]
;; p3609
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p3610 p3611
;; p3610
;; p3611
;; ----- [p3612]
;; p3612
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p3613 p3614
;; p3613
;; p3614
;; ----- [p3615]
;; p3615
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p3616 p3617
;; p3616
;; p3617
;; ----- [p3618]
;; p3618
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p3619 p3620
;; p3619
;; p3620
;; ----- [p3621]
;; p3621
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 102 == 102 : Integer
;;; Verifying C_Int p3622 p3623
;; p3622
;; p3623
;; ----- [p3624]
;; p3624
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 105 == 105 : Integer
;;; Verifying C_Int p3625 p3626
;; p3625
;; p3626
;; ----- [p3627]
;; p3627
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 108 == 108 : Integer
;;; Verifying C_Int p3628 p3629
;; p3628
;; p3629
;; ----- [p3630]
;; p3630
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p3631 p3632
;; p3631
;; p3632
;; ----- [p3633]
;; p3633
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 46 == 46 : Integer
;;; Verifying C_Int p3634 p3635
;; p3634
;; p3635
;; ----- [p3636]
;; p3636
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p3637 p3638
;; p3637
;; p3638
;; ----- [p3639]
;; p3639
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p3640 p3641
;; p3640
;; p3641
;; ----- [p3642]
;; p3642
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 100 == 100 : Integer
;;; Verifying C_Int p3643 p3644
;; p3643
;; p3644
;; ----- [p3645]
;; p3645
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p3646 p3647
;; p3646
;; p3647
;; ----- [p3648]
;; p3648
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 102 == 102 : Integer
;;; Verifying C_Int p3649 p3650
;; p3649
;; p3650
;; ----- [p3651]
;; p3651
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 97 == 97 : Integer
;;; Verifying C_Int p3652 p3653
;; p3652
;; p3653
;; ----- [p3654]
;; p3654
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 117 == 117 : Integer
;;; Verifying C_Int p3655 p3656
;; p3655
;; p3656
;; ----- [p3657]
;; p3657
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 108 == 108 : Integer
;;; Verifying C_Int p3658 p3659
;; p3658
;; p3659
;; ----- [p3660]
;; p3660
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 116 == 116 : Integer
;;; Verifying C_Int p3661 p3662
;; p3661
;; p3662
;; ----- [p3663]
;; p3663
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 32 == 32 : Integer
;;; Verifying C_Int p3664 p3665
;; p3664
;; p3665
;; ----- [p3666]
;; p3666
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 46 == 46 : Integer
;;; Verifying C_Int p3667 p3668
;; p3667
;; p3668
;; ----- [p3669]
;; p3669
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 47 == 47 : Integer
;;; Verifying C_Int p3670 p3671
;; p3670
;; p3671
;; ----- [p3672]
;; p3672
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 100 == 100 : Integer
;;; Verifying C_Int p3673 p3674
;; p3673
;; p3674
;; ----- [p3675]
;; p3675
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 98 == 98 : Integer
;;; Verifying C_Int p3676 p3677
;; p3676
;; p3677
;; ----- [p3678]
;; p3678
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 47 == 47 : Integer
;;; Verifying C_Int p3679 p3680
;; p3679
;; p3680
;; ----- [p3681]
;; p3681
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p3682 p3683
;; p3682
;; p3683
;; ----- [p3684]
;; p3684
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p3685 p3686
;; p3685
;; p3686
;; ----- [p3687]
;; p3687
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 99 == 99 : Integer
;;; Verifying C_Int p3688 p3689
;; p3688
;; p3689
;; ----- [p3690]
;; p3690
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 100 == 100 : Integer
;;; Verifying C_Int p3691 p3692
;; p3691
;; p3692
;; ----- [p3693]
;; p3693
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 101 == 101 : Integer
;;; Verifying C_Int p3694 p3695
;; p3694
;; p3695
;; ----- [p3696]
;; p3696
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 115 == 115 : Integer
;;; Verifying C_Int p3697 p3698
;; p3697
;; p3698
;; ----- [p3699]
;; p3699
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 107 == 107 : Integer
;;; Verifying C_Int p3700 p3701
;; p3700
;; p3701
;; ----- [p3702]
;; p3702
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 46 == 46 : Integer
;;; Verifying C_Int p3703 p3704
;; p3703
;; p3704
;; ----- [p3705]
;; p3705
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 100 == 100 : Integer
;;; Verifying C_Int p3706 p3707
;; p3706
;; p3707
;; ----- [p3708]
;; p3708
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 98 == 98 : Integer
;;; Verifying C_Int p3709 p3710
;; p3709
;; p3710
;; ----- [p3711]
;; p3711
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p3712 p3713
;; p3712
;; p3713
;; ----- [p3714]
;; p3714
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p3715]
;; p3715
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p3714 p3715
;; p3714
;; p3715
;; ----- [p3716]
;; p3716
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3711 p3716
;; p3711
;; p3716
;; ----- [p3717]
;; p3717
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3708 p3717
;; p3708
;; p3717
;; ----- [p3718]
;; p3718
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3705 p3718
;; p3705
;; p3718
;; ----- [p3719]
;; p3719
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3702 p3719
;; p3702
;; p3719
;; ----- [p3720]
;; p3720
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3699 p3720
;; p3699
;; p3720
;; ----- [p3721]
;; p3721
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3696 p3721
;; p3696
;; p3721
;; ----- [p3722]
;; p3722
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3693 p3722
;; p3693
;; p3722
;; ----- [p3723]
;; p3723
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3690 p3723
;; p3690
;; p3723
;; ----- [p3724]
;; p3724
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3687 p3724
;; p3687
;; p3724
;; ----- [p3725]
;; p3725
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3684 p3725
;; p3684
;; p3725
;; ----- [p3726]
;; p3726
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3681 p3726
;; p3681
;; p3726
;; ----- [p3727]
;; p3727
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3678 p3727
;; p3678
;; p3727
;; ----- [p3728]
;; p3728
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3675 p3728
;; p3675
;; p3728
;; ----- [p3729]
;; p3729
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3672 p3729
;; p3672
;; p3729
;; ----- [p3730]
;; p3730
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3669 p3730
;; p3669
;; p3730
;; ----- [p3731]
;; p3731
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3666 p3731
;; p3666
;; p3731
;; ----- [p3732]
;; p3732
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3663 p3732
;; p3663
;; p3732
;; ----- [p3733]
;; p3733
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3660 p3733
;; p3660
;; p3733
;; ----- [p3734]
;; p3734
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3657 p3734
;; p3657
;; p3734
;; ----- [p3735]
;; p3735
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3654 p3735
;; p3654
;; p3735
;; ----- [p3736]
;; p3736
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3651 p3736
;; p3651
;; p3736
;; ----- [p3737]
;; p3737
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3648 p3737
;; p3648
;; p3737
;; ----- [p3738]
;; p3738
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3645 p3738
;; p3645
;; p3738
;; ----- [p3739]
;; p3739
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3642 p3739
;; p3642
;; p3739
;; ----- [p3740]
;; p3740
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3639 p3740
;; p3639
;; p3740
;; ----- [p3741]
;; p3741
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3636 p3741
;; p3636
;; p3741
;; ----- [p3742]
;; p3742
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3633 p3742
;; p3633
;; p3742
;; ----- [p3743]
;; p3743
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3630 p3743
;; p3630
;; p3743
;; ----- [p3744]
;; p3744
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3627 p3744
;; p3627
;; p3744
;; ----- [p3745]
;; p3745
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3624 p3745
;; p3624
;; p3745
;; ----- [p3746]
;; p3746
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3621 p3746
;; p3621
;; p3746
;; ----- [p3747]
;; p3747
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3618 p3747
;; p3618
;; p3747
;; ----- [p3748]
;; p3748
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3615 p3748
;; p3615
;; p3748
;; ----- [p3749]
;; p3749
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3612 p3749
;; p3612
;; p3749
;; ----- [p3750]
;; p3750
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3609 p3750
;; p3609
;; p3750
;; ----- [p3751]
;; p3751
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3606 p3751
;; p3606
;; p3751
;; ----- [p3752]
;; p3752
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3603 p3752
;; p3603
;; p3752
;; ----- [p3753]
;; p3753
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3600 p3753
;; p3600
;; p3753
;; ----- [p3754]
;; p3754
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3597 p3754
;; p3597
;; p3754
;; ----- [p3755]
;; p3755
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3594 p3755
;; p3594
;; p3755
;; ----- [p3756]
;; p3756
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3591 p3756
;; p3591
;; p3756
;; ----- [p3757]
;; p3757
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3588 p3757
;; p3588
;; p3757
;; ----- [p3758]
;; p3758
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3585 p3758
;; p3585
;; p3758
;; ----- [p3759]
;; p3759
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3582 p3759
;; p3582
;; p3759
;; ----- [p3760]
;; p3760
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3579 p3760
;; p3579
;; p3760
;; ----- [p3761]
;; p3761
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3576 p3761
;; p3576
;; p3761
;; ----- [p3762]
;; p3762
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3573 p3762
;; p3573
;; p3762
;; ----- [p3763]
;; p3763
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3570 p3763
;; p3570
;; p3763
;; ----- [p3764]
;; p3764
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3567 p3764
;; p3567
;; p3764
;; ----- [p3765]
;; p3765
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3564 p3765
;; p3564
;; p3765
;; ----- [p3766]
;; p3766
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3561 p3766
;; p3561
;; p3766
;; ----- [p3767]
;; p3767
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3558 p3767
;; p3558
;; p3767
;; ----- [p3768]
;; p3768
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3555 p3768
;; p3555
;; p3768
;; ----- [p3769]
;; p3769
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_Array p3552 p3769
;; p3552
;; p3769
;; ----- [p3770]
;; p3770
;; 
;; Proof. C_Array QED
;;; Verifying MC_Just_Constant p3770
;; p3770
;; ----- [p3771]
;; p3771
;; 
;; Proof. Just Constant equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p3772]
;; p3772
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p3773]
;; p3773
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying G_GlobalVariable p3537 p3538 p3539 p3540 p3541 p3543 p3544 p3548 p3550 p3771 p3772 p3773 p3774 p3775
;; p3537
;; p3538
;; p3539
;; p3540
;; p3541
;; p3543
;; p3544
;; p3548
;; p3550
;; p3771
;; p3772
;; p3773
;; p3774
;; p3775
;; ----- [p3776]
;; p3776
;; 
;; Proof. global variables .str.24.1862 and .str.24.1865 equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p3777
;; p3777
;; ----- [p3778]
;; p3778
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p3535 p3778
;; p3535
;; p3778
;; ----- [p3779]
;; p3779
;; 
;; Proof. C_GlobalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p3780 p3781
;; p3780
;; p3781
;; ----- [p3782]
;; p3782
;; 
;; Proof. C_Int QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p3783 p3784
;; p3783
;; p3784
;; ----- [p3785]
;; p3785
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p3786]
;; p3786
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p3785 p3786
;; p3785
;; p3786
;; ----- [p3787]
;; p3787
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3782 p3787
;; p3782
;; p3787
;; ----- [p3788]
;; p3788
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_GetElementPtr p3528 p3779 p3788
;; p3528
;; p3779
;; p3788
;; ----- [p3789]
;; p3789
;; 
;; Proof. C_GetElementPtr QED
;;; 64 == 64 : Word32
;;; 1 == 1 : Integer
;;; Verifying C_Int p3790 p3791
;; p3790
;; p3791
;; ----- [p3792]
;; p3792
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p3793
;; p3793
;; ----- [p3794]
;; p3794
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p3795
;; p3795
;; ----- [p3796]
;; p3796
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p3794 p3796
;; p3794
;; p3796
;; ----- [p3797]
;; p3797
;; 
;; Proof. T_PointerType QED
;;; Verifying C_IntToPtr p3792 p3797
;; p3792
;; p3797
;; ----- [p3798]
;; p3798
;; 
;; Proof. C_IntToPtr QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p3799
;; p3799
;; ----- [p3800]
;; p3800
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p3801
;; p3801
;; ----- [p3802]
;; p3802
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p3800 p3802
;; p3800
;; p3802
;; ----- [p3803]
;; p3803
;; 
;; Proof. T_PointerType QED
;;; Verifying C_Null p3803
;; p3803
;; ----- [p3804]
;; p3804
;; 
;; Proof. C_Null QED
;;; Verifying Nil_Constant 
;; ----- [p3805]
;; p3805
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p3804 p3805
;; p3804
;; p3805
;; ----- [p3806]
;; p3806
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3798 p3806
;; p3798
;; p3806
;; ----- [p3807]
;; p3807
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3789 p3807
;; p3789
;; p3807
;; ----- [p3808]
;; p3808
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3527 p3808
;; p3527
;; p3808
;; ----- [p3809]
;; p3809
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3518 p3809
;; p3518
;; p3809
;; ----- [p3810]
;; p3810
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3432 p3810
;; p3432
;; p3810
;; ----- [p3811]
;; p3811
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3423 p3811
;; p3423
;; p3811
;; ----- [p3812]
;; p3812
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3229 p3812
;; p3229
;; p3812
;; ----- [p3813]
;; p3813
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p3220 p3813
;; p3220
;; p3813
;; ----- [p3814]
;; p3814
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2970 p3814
;; p2970
;; p3814
;; ----- [p3815]
;; p3815
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2961 p3815
;; p2961
;; p3815
;; ----- [p3816]
;; p3816
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2667 p3816
;; p2667
;; p3816
;; ----- [p3817]
;; p3817
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2658 p3817
;; p2658
;; p3817
;; ----- [p3818]
;; p3818
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2400 p3818
;; p2400
;; p3818
;; ----- [p3819]
;; p3819
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2391 p3819
;; p2391
;; p3819
;; ----- [p3820]
;; p3820
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2293 p3820
;; p2293
;; p3820
;; ----- [p3821]
;; p3821
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2284 p3821
;; p2284
;; p3821
;; ----- [p3822]
;; p3822
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2066 p3822
;; p2066
;; p3822
;; ----- [p3823]
;; p3823
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p2057 p3823
;; p2057
;; p3823
;; ----- [p3824]
;; p3824
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1851 p3824
;; p1851
;; p3824
;; ----- [p3825]
;; p3825
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1842 p3825
;; p1842
;; p3825
;; ----- [p3826]
;; p3826
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1744 p3826
;; p1744
;; p3826
;; ----- [p3827]
;; p3827
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1735 p3827
;; p1735
;; p3827
;; ----- [p3828]
;; p3828
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1469 p3828
;; p1469
;; p3828
;; ----- [p3829]
;; p3829
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1460 p3829
;; p1460
;; p3829
;; ----- [p3830]
;; p3830
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1198 p3830
;; p1198
;; p3830
;; ----- [p3831]
;; p3831
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p1189 p3831
;; p1189
;; p3831
;; ----- [p3832]
;; p3832
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_Array p1075 p3832
;; p1075
;; p3832
;; ----- [p3833]
;; p3833
;; 
;; Proof. C_Array QED
;;; Verifying MC_Just_Constant p3833
;; p3833
;; ----- [p3834]
;; p3834
;; 
;; Proof. Just Constant equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p3835]
;; p3835
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p3836]
;; p3836
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying G_GlobalVariable p1055 p1056 p1057 p1058 p1059 p1060 p1061 p1068 p1070 p3834 p3835 p3836 p3837 p3838
;; p1055
;; p1056
;; p1057
;; p1058
;; p1059
;; p1060
;; p1061
;; p1068
;; p1070
;; p3834
;; p3835
;; p3836
;; p3837
;; p3838
;; ----- [p3839]
;; p3839
;; 
;; Proof. global variables constinit.1839 and constinit.1842 equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p3840
;; p3840
;; ----- [p3841]
;; p3841
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p1053 p3841
;; p1053
;; p3841
;; ----- [p3842]
;; p3842
;; 
;; Proof. C_GlobalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p3843
;; p3843
;; ----- [p3844]
;; p3844
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p3845
;; p3845
;; ----- [p3846]
;; p3846
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p3844 p3846
;; p3844
;; p3846
;; ----- [p3847]
;; p3847
;; 
;; Proof. T_PointerType QED
;;; Verifying C_BitCast p3842 p3847
;; p3842
;; p3847
;; ----- [p3848]
;; p3848
;; 
;; Proof. C_BitCast QED
;;; Verifying O_ConstantOperand p3848
;; p3848
;; ----- [p3849]
;; p3849
;; 
;; Proof. O_ConstantOperand QED
;;; 8 == 8 : Word64
;;; Verifying PA_Alignment p3850
;; p3850
;; ----- [p3851]
;; p3851
;; 
;; Proof. PA_Alignment QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p3852]
;; p3852
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Cons_ParameterAttribute p3851 p3852
;; p3851
;; p3852
;; ----- [p3853]
;; p3853
;; 
;; Proof. Cons ParameterAttribute equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p3849 p3853
;; p3849
;; p3853
;; ----- [p3854]
;; p3854
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; 64 == 64 : Word32
;;; 216 == 216 : Integer
;;; Verifying C_Int p3855 p3856
;; p3855
;; p3856
;; ----- [p3857]
;; p3857
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p3857
;; p3857
;; ----- [p3858]
;; p3858
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p3859]
;; p3859
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p3858 p3859
;; p3858
;; p3859
;; ----- [p3860]
;; p3860
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; 1 == 1 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p3861 p3862
;; p3861
;; p3862
;; ----- [p3863]
;; p3863
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p3863
;; p3863
;; ----- [p3864]
;; p3864
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p3865]
;; p3865
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p3864 p3865
;; p3864
;; p3865
;; ----- [p3866]
;; p3866
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Tup2_Operand_List_ParameterAttribute 
;; ----- [p3867]
;; p3867
;; 
;; Proof. [] ((Operand, [ParameterAttribute])) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p3866 p3867
;; p3866
;; p3867
;; ----- [p3868]
;; p3868
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p3860 p3868
;; p3860
;; p3868
;; ----- [p3869]
;; p3869
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p3854 p3869
;; p3854
;; p3869
;; ----- [p3870]
;; p3870
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p1043 p3870
;; p1043
;; p3870
;; ----- [p3871]
;; p3871
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p3872]
;; p3872
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; True == True : Bool
;;; Verifying I_Call p929 p930 p931 p1030 p3871 p3872 p3873
;; p929
;; p930
;; p931
;; p1030
;; p3871
;; p3872
;; p3873
;; ----- [p3874]
;; p3874
;; 
;; Proof. I_Call QED
;;; Verifying NI_Do_Instruction p3874
;; p3874
;; ----- [p3875]
;; p3875
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p3876]
;; p3876
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p3877
;; p3877
;; ----- [p3878]
;; p3878
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; 27 == 27 : Word64
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p3881
;; p3881
;; ----- [p3882]
;; p3882
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p3883
;; p3883
;; ----- [p3884]
;; p3884
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p3882 p3884
;; p3882
;; p3884
;; ----- [p3885]
;; p3885
;; 
;; Proof. T_PointerType QED
;;; Verifying T_ArrayType p3880 p3885
;; p3880
;; p3885
;; ----- [p3886]
;; p3886
;; 
;; Proof. T_ArrayType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p3887
;; p3887
;; ----- [p3888]
;; p3888
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p3886 p3888
;; p3886
;; p3888
;; ----- [p3889]
;; p3889
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p3890
;; p3890
;; ----- [p3891]
;; p3891
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p3889 p3891
;; p3889
;; p3891
;; ----- [p3892]
;; p3892
;; 
;; Proof. O_LocalReference QED
;;; 64 == 64 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p3893 p3894
;; p3893
;; p3894
;; ----- [p3895]
;; p3895
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p3895
;; p3895
;; ----- [p3896]
;; p3896
;; 
;; Proof. O_ConstantOperand QED
;;; 64 == 64 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p3897 p3898
;; p3897
;; p3898
;; ----- [p3899]
;; p3899
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p3899
;; p3899
;; ----- [p3900]
;; p3900
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ----- [p3901]
;; p3901
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p3900 p3901
;; p3900
;; p3901
;; ----- [p3902]
;; p3902
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p3896 p3902
;; p3896
;; p3902
;; ----- [p3903]
;; p3903
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p3879 p3892 p3903 p3904
;; p3879
;; p3892
;; p3903
;; p3904
;; ----- [p3905]
;; p3905
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p3878 p3905
;; p3878
;; p3905
;; ----- [p3906]
;; p3906
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p3907]
;; p3907
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ----- [p3908]
;; p3908
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ----- [p3909]
;; p3909
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p3910]
;; p3910
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p3911]
;; p3911
;; 
;; Proof. T_VoidType QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p3912
;; p3912
;; ----- [p3913]
;; p3913
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p3914
;; p3914
;; ----- [p3915]
;; p3915
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p3916
;; p3916
;; ----- [p3917]
;; p3917
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p3915 p3917
;; p3915
;; p3917
;; ----- [p3918]
;; p3918
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p3919
;; p3919
;; ----- [p3920]
;; p3920
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p3918 p3920
;; p3918
;; p3920
;; ----- [p3921]
;; p3921
;; 
;; Proof. T_PointerType QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p3922
;; p3922
;; ----- [p3923]
;; p3923
;; 
;; Proof. T_IntegerType QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p3924
;; p3924
;; ----- [p3925]
;; p3925
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p3926
;; p3926
;; ----- [p3927]
;; p3927
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p3928
;; p3928
;; ----- [p3929]
;; p3929
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p3927 p3929
;; p3927
;; p3929
;; ----- [p3930]
;; p3930
;; 
;; Proof. T_PointerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p3931
;; p3931
;; ----- [p3932]
;; p3932
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p3933
;; p3933
;; ----- [p3934]
;; p3934
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p3932 p3934
;; p3932
;; p3934
;; ----- [p3935]
;; p3935
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p3936
;; p3936
;; ----- [p3937]
;; p3937
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p3935 p3937
;; p3935
;; p3937
;; ----- [p3938]
;; p3938
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ----- [p3939]
;; p3939
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p3938 p3939
;; p3938
;; p3939
;; ----- [p3940]
;; p3940
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p3930 p3940
;; p3930
;; p3940
;; ----- [p3941]
;; p3941
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p3925 p3941
;; p3925
;; p3941
;; ----- [p3942]
;; p3942
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p3923 p3942
;; p3923
;; p3942
;; ----- [p3943]
;; p3943
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p3921 p3943
;; p3921
;; p3943
;; ----- [p3944]
;; p3944
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p3913 p3944
;; p3913
;; p3944
;; ----- [p3945]
;; p3945
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p3911 p3945 p3946
;; p3911
;; p3945
;; p3946
;; ----- [p3947]
;; p3947
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p3948
;; p3948
;; ----- [p3949]
;; p3949
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p3947 p3949
;; p3947
;; p3949
;; ----- [p3950]
;; p3950
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p3951]
;; p3951
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_External 
;; ----- [p3952]
;; p3952
;; 
;; Proof. L_External QED
;;; Verifying V_Default 
;; ----- [p3953]
;; p3953
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p3954]
;; p3954
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying CC_C 
;; ----- [p3955]
;; p3955
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p3956]
;; p3956
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p3957]
;; p3957
;; 
;; Proof. T_VoidType QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p3959
;; p3959
;; ----- [p3960]
;; p3960
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p3961
;; p3961
;; ----- [p3962]
;; p3962
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p3963]
;; p3963
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p3960 p3962 p3963
;; p3960
;; p3962
;; p3963
;; ----- [p3964]
;; p3964
;; 
;; Proof. P_Parameter QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p3965
;; p3965
;; ----- [p3966]
;; p3966
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p3967
;; p3967
;; ----- [p3968]
;; p3968
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p3966 p3968
;; p3966
;; p3968
;; ----- [p3969]
;; p3969
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p3970
;; p3970
;; ----- [p3971]
;; p3971
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p3969 p3971
;; p3969
;; p3971
;; ----- [p3972]
;; p3972
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p3973
;; p3973
;; ----- [p3974]
;; p3974
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p3975]
;; p3975
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p3972 p3974 p3975
;; p3972
;; p3974
;; p3975
;; ----- [p3976]
;; p3976
;; 
;; Proof. P_Parameter QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p3977
;; p3977
;; ----- [p3978]
;; p3978
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p3979
;; p3979
;; ----- [p3980]
;; p3980
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p3981]
;; p3981
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p3978 p3980 p3981
;; p3978
;; p3980
;; p3981
;; ----- [p3982]
;; p3982
;; 
;; Proof. P_Parameter QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p3983
;; p3983
;; ----- [p3984]
;; p3984
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p3985
;; p3985
;; ----- [p3986]
;; p3986
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p3987]
;; p3987
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p3984 p3986 p3987
;; p3984
;; p3986
;; p3987
;; ----- [p3988]
;; p3988
;; 
;; Proof. P_Parameter QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p3989
;; p3989
;; ----- [p3990]
;; p3990
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p3991
;; p3991
;; ----- [p3992]
;; p3992
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p3990 p3992
;; p3990
;; p3992
;; ----- [p3993]
;; p3993
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p3994
;; p3994
;; ----- [p3995]
;; p3995
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p3996]
;; p3996
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p3993 p3995 p3996
;; p3993
;; p3995
;; p3996
;; ----- [p3997]
;; p3997
;; 
;; Proof. P_Parameter QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p3998
;; p3998
;; ----- [p3999]
;; p3999
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4000
;; p4000
;; ----- [p4001]
;; p4001
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p3999 p4001
;; p3999
;; p4001
;; ----- [p4002]
;; p4002
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4003
;; p4003
;; ----- [p4004]
;; p4004
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4002 p4004
;; p4002
;; p4004
;; ----- [p4005]
;; p4005
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4006
;; p4006
;; ----- [p4007]
;; p4007
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p4008]
;; p4008
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p4005 p4007 p4008
;; p4005
;; p4007
;; p4008
;; ----- [p4009]
;; p4009
;; 
;; Proof. P_Parameter QED
;;; Verifying Nil_Parameter 
;; ----- [p4010]
;; p4010
;; 
;; Proof. [] (Parameter) equivalent QED
;;; Verifying Cons_Parameter p4009 p4010
;; p4009
;; p4010
;; ----- [p4011]
;; p4011
;; 
;; Proof. Cons Parameter equivalent QED
;;; Verifying Cons_Parameter p3997 p4011
;; p3997
;; p4011
;; ----- [p4012]
;; p4012
;; 
;; Proof. Cons Parameter equivalent QED
;;; Verifying Cons_Parameter p3988 p4012
;; p3988
;; p4012
;; ----- [p4013]
;; p4013
;; 
;; Proof. Cons Parameter equivalent QED
;;; Verifying Cons_Parameter p3982 p4013
;; p3982
;; p4013
;; ----- [p4014]
;; p4014
;; 
;; Proof. Cons Parameter equivalent QED
;;; Verifying Cons_Parameter p3976 p4014
;; p3976
;; p4014
;; ----- [p4015]
;; p4015
;; 
;; Proof. Cons Parameter equivalent QED
;;; Verifying Cons_Parameter p3964 p4015
;; p3964
;; p4015
;; ----- [p4016]
;; p4016
;; 
;; Proof. Cons Parameter equivalent QED
;;; False == False : Bool
;;; Verifying Tup2_List_Parameter_Bool p4016 p4017
;; p4016
;; p4017
;; ----- [p4018]
;; p4018
;; 
;; Proof. Tuple ([Parameter], Bool) equivalent QED
;;; 0 == 0 : Word
;;; Verifying GID_GroupID p4019
;; p4019
;; ----- [p4020]
;; p4020
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p4020
;; p4020
;; ----- [p4021]
;; p4021
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p4022]
;; p4022
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p4021 p4022
;; p4021
;; p4022
;; ----- [p4023]
;; p4023
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4024]
;; p4024
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4025]
;; p4025
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 0 == 0 : Word32
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4027]
;; p4027
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p4028]
;; p4028
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; basic block matching 6-6, 22-22, 25-25, 29-29, 31-31, 48-48, 49-49, 51-51, 55-55, 62-62, 67-67, 72-72, 75-75, 59-59, 78-78, 79-79, 85-85, 106-106, 114-114, 115-115, 119-119, 133-133, 135-135, 144-144, 148-148, 151-151, 157-157, 160-160, 168-168, 177-177, 185-185, 21-21
;;; 1 == 1 : Word
;;; Verifying N_UnName p4029
;; p4029
;; ----- [p4030]
;; p4030
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4031]
;; p4031
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4032
;; p4032
;; ----- [p4033]
;; p4033
;; 
;; Proof. UnName equivalent QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4034
;; p4034
;; ----- [p4035]
;; p4035
;; 
;; Proof. T_IntegerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p4036]
;; p4036
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p4035 p4036 p4037 p4038
;; p4035
;; p4036
;; p4037
;; p4038
;; ----- [p4039]
;; p4039
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p4033 p4039
;; p4033
;; p4039
;; ----- [p4040]
;; p4040
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4041]
;; p4041
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4042
;; p4042
;; ----- [p4043]
;; p4043
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4044
;; p4044
;; ----- [p4045]
;; p4045
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4046
;; p4046
;; ----- [p4047]
;; p4047
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4045 p4047
;; p4045
;; p4047
;; ----- [p4048]
;; p4048
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4049
;; p4049
;; ----- [p4050]
;; p4050
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4048 p4050
;; p4048
;; p4050
;; ----- [p4051]
;; p4051
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p4052]
;; p4052
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p4051 p4052 p4053 p4054
;; p4051
;; p4052
;; p4053
;; p4054
;; ----- [p4055]
;; p4055
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p4043 p4055
;; p4043
;; p4055
;; ----- [p4056]
;; p4056
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4057]
;; p4057
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4058
;; p4058
;; ----- [p4059]
;; p4059
;; 
;; Proof. UnName equivalent QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4060
;; p4060
;; ----- [p4061]
;; p4061
;; 
;; Proof. T_IntegerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p4062]
;; p4062
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p4061 p4062 p4063 p4064
;; p4061
;; p4062
;; p4063
;; p4064
;; ----- [p4065]
;; p4065
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p4059 p4065
;; p4059
;; p4065
;; ----- [p4066]
;; p4066
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4067]
;; p4067
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4068
;; p4068
;; ----- [p4069]
;; p4069
;; 
;; Proof. UnName equivalent QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4070
;; p4070
;; ----- [p4071]
;; p4071
;; 
;; Proof. T_IntegerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p4072]
;; p4072
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p4071 p4072 p4073 p4074
;; p4071
;; p4072
;; p4073
;; p4074
;; ----- [p4075]
;; p4075
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p4069 p4075
;; p4069
;; p4075
;; ----- [p4076]
;; p4076
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4077]
;; p4077
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4078
;; p4078
;; ----- [p4079]
;; p4079
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4080
;; p4080
;; ----- [p4081]
;; p4081
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4082
;; p4082
;; ----- [p4083]
;; p4083
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4081 p4083
;; p4081
;; p4083
;; ----- [p4084]
;; p4084
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p4085]
;; p4085
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p4084 p4085 p4086 p4087
;; p4084
;; p4085
;; p4086
;; p4087
;; ----- [p4088]
;; p4088
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p4079 p4088
;; p4079
;; p4088
;; ----- [p4089]
;; p4089
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4090]
;; p4090
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4091
;; p4091
;; ----- [p4092]
;; p4092
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4093
;; p4093
;; ----- [p4094]
;; p4094
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4095
;; p4095
;; ----- [p4096]
;; p4096
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4094 p4096
;; p4094
;; p4096
;; ----- [p4097]
;; p4097
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4098
;; p4098
;; ----- [p4099]
;; p4099
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4097 p4099
;; p4097
;; p4099
;; ----- [p4100]
;; p4100
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p4101]
;; p4101
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p4100 p4101 p4102 p4103
;; p4100
;; p4101
;; p4102
;; p4103
;; ----- [p4104]
;; p4104
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p4092 p4104
;; p4092
;; p4104
;; ----- [p4105]
;; p4105
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4106]
;; p4106
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4107
;; p4107
;; ----- [p4108]
;; p4108
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4110
;; p4110
;; ----- [p4111]
;; p4111
;; 
;; Proof. T_IntegerType QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4112
;; p4112
;; ----- [p4113]
;; p4113
;; 
;; Proof. T_IntegerType QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4114
;; p4114
;; ----- [p4115]
;; p4115
;; 
;; Proof. T_IntegerType QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4116
;; p4116
;; ----- [p4117]
;; p4117
;; 
;; Proof. T_IntegerType QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4118
;; p4118
;; ----- [p4119]
;; p4119
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4120
;; p4120
;; ----- [p4121]
;; p4121
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4122
;; p4122
;; ----- [p4123]
;; p4123
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4121 p4123
;; p4121
;; p4123
;; ----- [p4124]
;; p4124
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4125
;; p4125
;; ----- [p4126]
;; p4126
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4124 p4126
;; p4124
;; p4126
;; ----- [p4127]
;; p4127
;; 
;; Proof. T_PointerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4128
;; p4128
;; ----- [p4129]
;; p4129
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4130
;; p4130
;; ----- [p4131]
;; p4131
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4129 p4131
;; p4129
;; p4131
;; ----- [p4132]
;; p4132
;; 
;; Proof. T_PointerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4133
;; p4133
;; ----- [p4134]
;; p4134
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4135
;; p4135
;; ----- [p4136]
;; p4136
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4134 p4136
;; p4134
;; p4136
;; ----- [p4137]
;; p4137
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4138
;; p4138
;; ----- [p4139]
;; p4139
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4137 p4139
;; p4137
;; p4139
;; ----- [p4140]
;; p4140
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ----- [p4141]
;; p4141
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p4140 p4141
;; p4140
;; p4141
;; ----- [p4142]
;; p4142
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p4132 p4142
;; p4132
;; p4142
;; ----- [p4143]
;; p4143
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p4127 p4143
;; p4127
;; p4143
;; ----- [p4144]
;; p4144
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p4119 p4144
;; p4119
;; p4144
;; ----- [p4145]
;; p4145
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p4117 p4145
;; p4117
;; p4145
;; ----- [p4146]
;; p4146
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p4115 p4146
;; p4115
;; p4146
;; ----- [p4147]
;; p4147
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p4113 p4147
;; p4113
;; p4147
;; ----- [p4148]
;; p4148
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p4111 p4148
;; p4111
;; p4148
;; ----- [p4149]
;; p4149
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying T_StructureType p4109 p4149
;; p4109
;; p4149
;; ----- [p4150]
;; p4150
;; 
;; Proof. T_StructureType QED
;;; Verifying MT_Just_Type p4150
;; p4150
;; ----- [p4151]
;; p4151
;; 
;; Proof. Just Type equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p4152
;; p4152
;; ----- [p4153]
;; p4153
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p4153
;; p4153
;; ----- [p4154]
;; p4154
;; 
;; Proof. T_NamedTypeReference QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p4155]
;; p4155
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p4154 p4155 p4156 p4157
;; p4154
;; p4155
;; p4156
;; p4157
;; ----- [p4158]
;; p4158
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p4108 p4158
;; p4108
;; p4158
;; ----- [p4159]
;; p4159
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4160]
;; p4160
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4161
;; p4161
;; ----- [p4162]
;; p4162
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4163
;; p4163
;; ----- [p4164]
;; p4164
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4165
;; p4165
;; ----- [p4166]
;; p4166
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4164 p4166
;; p4164
;; p4166
;; ----- [p4167]
;; p4167
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4168
;; p4168
;; ----- [p4169]
;; p4169
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4167 p4169
;; p4167
;; p4169
;; ----- [p4170]
;; p4170
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p4171]
;; p4171
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p4170 p4171 p4172 p4173
;; p4170
;; p4171
;; p4172
;; p4173
;; ----- [p4174]
;; p4174
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p4162 p4174
;; p4162
;; p4174
;; ----- [p4175]
;; p4175
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4176]
;; p4176
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4177
;; p4177
;; ----- [p4178]
;; p4178
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4179
;; p4179
;; ----- [p4180]
;; p4180
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4181
;; p4181
;; ----- [p4182]
;; p4182
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4180 p4182
;; p4180
;; p4182
;; ----- [p4183]
;; p4183
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p4184]
;; p4184
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p4183 p4184 p4185 p4186
;; p4183
;; p4184
;; p4185
;; p4186
;; ----- [p4187]
;; p4187
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p4178 p4187
;; p4178
;; p4187
;; ----- [p4188]
;; p4188
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4189]
;; p4189
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4190
;; p4190
;; ----- [p4191]
;; p4191
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p4193
;; p4193
;; ----- [p4194]
;; p4194
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4195
;; p4195
;; ----- [p4196]
;; p4196
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4197
;; p4197
;; ----- [p4198]
;; p4198
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4196 p4198
;; p4196
;; p4198
;; ----- [p4199]
;; p4199
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ----- [p4200]
;; p4200
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p4199 p4200
;; p4199
;; p4200
;; ----- [p4201]
;; p4201
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p4194 p4201
;; p4194
;; p4201
;; ----- [p4202]
;; p4202
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying T_StructureType p4192 p4202
;; p4192
;; p4202
;; ----- [p4203]
;; p4203
;; 
;; Proof. T_StructureType QED
;;; Verifying MT_Just_Type p4203
;; p4203
;; ----- [p4204]
;; p4204
;; 
;; Proof. Just Type equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p4205
;; p4205
;; ----- [p4206]
;; p4206
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p4206
;; p4206
;; ----- [p4207]
;; p4207
;; 
;; Proof. T_NamedTypeReference QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p4208]
;; p4208
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p4207 p4208 p4209 p4210
;; p4207
;; p4208
;; p4209
;; p4210
;; ----- [p4211]
;; p4211
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p4191 p4211
;; p4191
;; p4211
;; ----- [p4212]
;; p4212
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4213]
;; p4213
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4214
;; p4214
;; ----- [p4215]
;; p4215
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4216
;; p4216
;; ----- [p4217]
;; p4217
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4218
;; p4218
;; ----- [p4219]
;; p4219
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4217 p4219
;; p4217
;; p4219
;; ----- [p4220]
;; p4220
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p4221]
;; p4221
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p4220 p4221 p4222 p4223
;; p4220
;; p4221
;; p4222
;; p4223
;; ----- [p4224]
;; p4224
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p4215 p4224
;; p4215
;; p4224
;; ----- [p4225]
;; p4225
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4226]
;; p4226
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4227
;; p4227
;; ----- [p4228]
;; p4228
;; 
;; Proof. UnName equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p4229
;; p4229
;; ----- [p4230]
;; p4230
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p4230
;; p4230
;; ----- [p4231]
;; p4231
;; 
;; Proof. T_NamedTypeReference QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p4232]
;; p4232
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p4231 p4232 p4233 p4234
;; p4231
;; p4232
;; p4233
;; p4234
;; ----- [p4235]
;; p4235
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p4228 p4235
;; p4228
;; p4235
;; ----- [p4236]
;; p4236
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4237]
;; p4237
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4239
;; p4239
;; ----- [p4240]
;; p4240
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4241
;; p4241
;; ----- [p4242]
;; p4242
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4240 p4242
;; p4240
;; p4242
;; ----- [p4243]
;; p4243
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4244
;; p4244
;; ----- [p4245]
;; p4245
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4243 p4245
;; p4243
;; p4245
;; ----- [p4246]
;; p4246
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4247
;; p4247
;; ----- [p4248]
;; p4248
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4249
;; p4249
;; ----- [p4250]
;; p4250
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4248 p4250
;; p4248
;; p4250
;; ----- [p4251]
;; p4251
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p4252]
;; p4252
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Store p4238 p4246 p4251 p4252 p4253 p4254
;; p4238
;; p4246
;; p4251
;; p4252
;; p4253
;; p4254
;; ----- [p4255]
;; p4255
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p4255
;; p4255
;; ----- [p4256]
;; p4256
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4257]
;; p4257
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4259
;; p4259
;; ----- [p4260]
;; p4260
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4261
;; p4261
;; ----- [p4262]
;; p4262
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4260 p4262
;; p4260
;; p4262
;; ----- [p4263]
;; p4263
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4264
;; p4264
;; ----- [p4265]
;; p4265
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4263 p4265
;; p4263
;; p4265
;; ----- [p4266]
;; p4266
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4267
;; p4267
;; ----- [p4268]
;; p4268
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4266 p4268
;; p4266
;; p4268
;; ----- [p4269]
;; p4269
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4270
;; p4270
;; ----- [p4271]
;; p4271
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4269 p4271
;; p4269
;; p4271
;; ----- [p4272]
;; p4272
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4273
;; p4273
;; ----- [p4274]
;; p4274
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4275
;; p4275
;; ----- [p4276]
;; p4276
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4274 p4276
;; p4274
;; p4276
;; ----- [p4277]
;; p4277
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4278
;; p4278
;; ----- [p4279]
;; p4279
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4277 p4279
;; p4277
;; p4279
;; ----- [p4280]
;; p4280
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4281
;; p4281
;; ----- [p4282]
;; p4282
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4280 p4282
;; p4280
;; p4282
;; ----- [p4283]
;; p4283
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p4284]
;; p4284
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p4258 p4272 p4283 p4284 p4285 p4286
;; p4258
;; p4272
;; p4283
;; p4284
;; p4285
;; p4286
;; ----- [p4287]
;; p4287
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p4287
;; p4287
;; ----- [p4288]
;; p4288
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4289]
;; p4289
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4291
;; p4291
;; ----- [p4292]
;; p4292
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4293
;; p4293
;; ----- [p4294]
;; p4294
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4292 p4294
;; p4292
;; p4294
;; ----- [p4295]
;; p4295
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4296
;; p4296
;; ----- [p4297]
;; p4297
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4295 p4297
;; p4295
;; p4297
;; ----- [p4298]
;; p4298
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4299
;; p4299
;; ----- [p4300]
;; p4300
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4301
;; p4301
;; ----- [p4302]
;; p4302
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4300 p4302
;; p4300
;; p4302
;; ----- [p4303]
;; p4303
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p4304]
;; p4304
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Store p4290 p4298 p4303 p4304 p4305 p4306
;; p4290
;; p4298
;; p4303
;; p4304
;; p4305
;; p4306
;; ----- [p4307]
;; p4307
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p4307
;; p4307
;; ----- [p4308]
;; p4308
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4309]
;; p4309
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4311
;; p4311
;; ----- [p4312]
;; p4312
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4313
;; p4313
;; ----- [p4314]
;; p4314
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4312 p4314
;; p4312
;; p4314
;; ----- [p4315]
;; p4315
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4316
;; p4316
;; ----- [p4317]
;; p4317
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4315 p4317
;; p4315
;; p4317
;; ----- [p4318]
;; p4318
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4319
;; p4319
;; ----- [p4320]
;; p4320
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4321
;; p4321
;; ----- [p4322]
;; p4322
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4320 p4322
;; p4320
;; p4322
;; ----- [p4323]
;; p4323
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p4324]
;; p4324
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Store p4310 p4318 p4323 p4324 p4325 p4326
;; p4310
;; p4318
;; p4323
;; p4324
;; p4325
;; p4326
;; ----- [p4327]
;; p4327
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p4327
;; p4327
;; ----- [p4328]
;; p4328
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4329]
;; p4329
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4331
;; p4331
;; ----- [p4332]
;; p4332
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4333
;; p4333
;; ----- [p4334]
;; p4334
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4332 p4334
;; p4332
;; p4334
;; ----- [p4335]
;; p4335
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4336
;; p4336
;; ----- [p4337]
;; p4337
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4335 p4337
;; p4335
;; p4337
;; ----- [p4338]
;; p4338
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4339
;; p4339
;; ----- [p4340]
;; p4340
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4338 p4340
;; p4338
;; p4340
;; ----- [p4341]
;; p4341
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4342
;; p4342
;; ----- [p4343]
;; p4343
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4344
;; p4344
;; ----- [p4345]
;; p4345
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4343 p4345
;; p4343
;; p4345
;; ----- [p4346]
;; p4346
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4347
;; p4347
;; ----- [p4348]
;; p4348
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4346 p4348
;; p4346
;; p4348
;; ----- [p4349]
;; p4349
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p4350]
;; p4350
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p4330 p4341 p4349 p4350 p4351 p4352
;; p4330
;; p4341
;; p4349
;; p4350
;; p4351
;; p4352
;; ----- [p4353]
;; p4353
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p4353
;; p4353
;; ----- [p4354]
;; p4354
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4355]
;; p4355
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4357
;; p4357
;; ----- [p4358]
;; p4358
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4359
;; p4359
;; ----- [p4360]
;; p4360
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4358 p4360
;; p4358
;; p4360
;; ----- [p4361]
;; p4361
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4362
;; p4362
;; ----- [p4363]
;; p4363
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4361 p4363
;; p4361
;; p4363
;; ----- [p4364]
;; p4364
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4365
;; p4365
;; ----- [p4366]
;; p4366
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4364 p4366
;; p4364
;; p4366
;; ----- [p4367]
;; p4367
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4368
;; p4368
;; ----- [p4369]
;; p4369
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4367 p4369
;; p4367
;; p4369
;; ----- [p4370]
;; p4370
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4371
;; p4371
;; ----- [p4372]
;; p4372
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4373
;; p4373
;; ----- [p4374]
;; p4374
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4372 p4374
;; p4372
;; p4374
;; ----- [p4375]
;; p4375
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4376
;; p4376
;; ----- [p4377]
;; p4377
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4375 p4377
;; p4375
;; p4377
;; ----- [p4378]
;; p4378
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4379
;; p4379
;; ----- [p4380]
;; p4380
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4378 p4380
;; p4378
;; p4380
;; ----- [p4381]
;; p4381
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p4382]
;; p4382
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p4356 p4370 p4381 p4382 p4383 p4384
;; p4356
;; p4370
;; p4381
;; p4382
;; p4383
;; p4384
;; ----- [p4385]
;; p4385
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p4385
;; p4385
;; ----- [p4386]
;; p4386
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4387]
;; p4387
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4388
;; p4388
;; ----- [p4389]
;; p4389
;; 
;; Proof. UnName equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ----- [p4390]
;; p4390
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ----- [p4391]
;; p4391
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p4392]
;; p4392
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4393
;; p4393
;; ----- [p4394]
;; p4394
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4395
;; p4395
;; ----- [p4396]
;; p4396
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4397
;; p4397
;; ----- [p4398]
;; p4398
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4396 p4398
;; p4396
;; p4398
;; ----- [p4399]
;; p4399
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ----- [p4400]
;; p4400
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p4399 p4400
;; p4399
;; p4400
;; ----- [p4401]
;; p4401
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p4394 p4401 p4402
;; p4394
;; p4401
;; p4402
;; ----- [p4403]
;; p4403
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4404
;; p4404
;; ----- [p4405]
;; p4405
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4403 p4405
;; p4403
;; p4405
;; ----- [p4406]
;; p4406
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4407]
;; p4407
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Internal 
;; ----- [p4408]
;; p4408
;; 
;; Proof. L_Internal QED
;;; Verifying V_Default 
;; ----- [p4409]
;; p4409
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p4410]
;; p4410
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying CC_C 
;; ----- [p4411]
;; p4411
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p4412]
;; p4412
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4413
;; p4413
;; ----- [p4414]
;; p4414
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4416
;; p4416
;; ----- [p4417]
;; p4417
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4418
;; p4418
;; ----- [p4419]
;; p4419
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4417 p4419
;; p4417
;; p4419
;; ----- [p4420]
;; p4420
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4421
;; p4421
;; ----- [p4422]
;; p4422
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p4423]
;; p4423
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p4420 p4422 p4423
;; p4420
;; p4422
;; p4423
;; ----- [p4424]
;; p4424
;; 
;; Proof. P_Parameter QED
;;; Verifying Nil_Parameter 
;; ----- [p4425]
;; p4425
;; 
;; Proof. [] (Parameter) equivalent QED
;;; Verifying Cons_Parameter p4424 p4425
;; p4424
;; p4425
;; ----- [p4426]
;; p4426
;; 
;; Proof. Cons Parameter equivalent QED
;;; False == False : Bool
;;; Verifying Tup2_List_Parameter_Bool p4426 p4427
;; p4426
;; p4427
;; ----- [p4428]
;; p4428
;; 
;; Proof. Tuple ([Parameter], Bool) equivalent QED
;;; 0 == 0 : Word
;;; Verifying GID_GroupID p4429
;; p4429
;; ----- [p4430]
;; p4430
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p4430
;; p4430
;; ----- [p4431]
;; p4431
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p4432]
;; p4432
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p4431 p4432
;; p4431
;; p4432
;; ----- [p4433]
;; p4433
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4434]
;; p4434
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4435]
;; p4435
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 0 == 0 : Word32
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4437]
;; p4437
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p4438]
;; p4438
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; basic block matching 1-1
;;; 1 == 1 : Word
;;; Verifying N_UnName p4439
;; p4439
;; ----- [p4440]
;; p4440
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4441]
;; p4441
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4442
;; p4442
;; ----- [p4443]
;; p4443
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4444
;; p4444
;; ----- [p4445]
;; p4445
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4446
;; p4446
;; ----- [p4447]
;; p4447
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4445 p4447
;; p4445
;; p4447
;; ----- [p4448]
;; p4448
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p4449]
;; p4449
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p4448 p4449 p4450 p4451
;; p4448
;; p4449
;; p4450
;; p4451
;; ----- [p4452]
;; p4452
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p4443 p4452
;; p4443
;; p4452
;; ----- [p4453]
;; p4453
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4454]
;; p4454
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4455
;; p4455
;; ----- [p4456]
;; p4456
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4457
;; p4457
;; ----- [p4458]
;; p4458
;; 
;; Proof. T_IntegerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p4459]
;; p4459
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p4458 p4459 p4460 p4461
;; p4458
;; p4459
;; p4460
;; p4461
;; ----- [p4462]
;; p4462
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p4456 p4462
;; p4456
;; p4462
;; ----- [p4463]
;; p4463
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4464]
;; p4464
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4465
;; p4465
;; ----- [p4466]
;; p4466
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4467
;; p4467
;; ----- [p4468]
;; p4468
;; 
;; Proof. T_IntegerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p4469]
;; p4469
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p4468 p4469 p4470 p4471
;; p4468
;; p4469
;; p4470
;; p4471
;; ----- [p4472]
;; p4472
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p4466 p4472
;; p4466
;; p4472
;; ----- [p4473]
;; p4473
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4474]
;; p4474
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4475
;; p4475
;; ----- [p4476]
;; p4476
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4477
;; p4477
;; ----- [p4478]
;; p4478
;; 
;; Proof. T_IntegerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p4479]
;; p4479
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p4478 p4479 p4480 p4481
;; p4478
;; p4479
;; p4480
;; p4481
;; ----- [p4482]
;; p4482
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p4476 p4482
;; p4476
;; p4482
;; ----- [p4483]
;; p4483
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4484]
;; p4484
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4486
;; p4486
;; ----- [p4487]
;; p4487
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4488
;; p4488
;; ----- [p4489]
;; p4489
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4487 p4489
;; p4487
;; p4489
;; ----- [p4490]
;; p4490
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4491
;; p4491
;; ----- [p4492]
;; p4492
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4490 p4492
;; p4490
;; p4492
;; ----- [p4493]
;; p4493
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4494
;; p4494
;; ----- [p4495]
;; p4495
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4493 p4495
;; p4493
;; p4495
;; ----- [p4496]
;; p4496
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4497
;; p4497
;; ----- [p4498]
;; p4498
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4499
;; p4499
;; ----- [p4500]
;; p4500
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4498 p4500
;; p4498
;; p4500
;; ----- [p4501]
;; p4501
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4502
;; p4502
;; ----- [p4503]
;; p4503
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4501 p4503
;; p4501
;; p4503
;; ----- [p4504]
;; p4504
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p4505]
;; p4505
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p4485 p4496 p4504 p4505 p4506 p4507
;; p4485
;; p4496
;; p4504
;; p4505
;; p4506
;; p4507
;; ----- [p4508]
;; p4508
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p4508
;; p4508
;; ----- [p4509]
;; p4509
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4510]
;; p4510
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ----- [p4511]
;; p4511
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ----- [p4512]
;; p4512
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p4513]
;; p4513
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p4514]
;; p4514
;; 
;; Proof. T_VoidType QED
;;; Verifying Nil_Type 
;; ----- [p4515]
;; p4515
;; 
;; Proof. [] (Type) equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p4514 p4515 p4516
;; p4514
;; p4515
;; p4516
;; ----- [p4517]
;; p4517
;; 
;; Proof. T_FunctionType QED
;;; "" == "" : ByteString
;;; "~{memory},~{dirflag},~{fpsr},~{flags}" == "~{memory},~{dirflag},~{fpsr},~{flags}" : ShortByteStr
;;; True == True : Bool
;;; False == False : Bool
;;; Verifying D_ATTDialect 
;; ----- [p4522]
;; p4522
;; 
;; Proof. D_ATTDialect QED
;;; Verifying IA_InlineAssembly p4517 p4518 p4519 p4520 p4521 p4522
;; p4517
;; p4518
;; p4519
;; p4520
;; p4521
;; p4522
;; ----- [p4523]
;; p4523
;; 
;; Proof. IA_InlineAssembly QED
;;; Verifying EIAO_Left_InlineAssembly_Operand p4523
;; p4523
;; ----- [p4524]
;; p4524
;; 
;; Proof. Left (InlineAssembly Operand) equivalent QED
;;; Verifying Nil_Tup2_Operand_List_ParameterAttribute 
;; ----- [p4525]
;; p4525
;; 
;; Proof. [] ((Operand, [ParameterAttribute])) equivalent QED
;;; 3 == 3 : Word
;;; Verifying GID_GroupID p4526
;; p4526
;; ----- [p4527]
;; p4527
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p4527
;; p4527
;; ----- [p4528]
;; p4528
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p4529]
;; p4529
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p4528 p4529
;; p4528
;; p4529
;; ----- [p4530]
;; p4530
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; True == True : Bool
;;; Verifying I_Call p4511 p4512 p4513 p4524 p4525 p4530 p4531
;; p4511
;; p4512
;; p4513
;; p4524
;; p4525
;; p4530
;; p4531
;; ----- [p4532]
;; p4532
;; 
;; Proof. I_Call QED
;;; Verifying NI_Do_Instruction p4532
;; p4532
;; ----- [p4533]
;; p4533
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4534]
;; p4534
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4535
;; p4535
;; ----- [p4536]
;; p4536
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4538
;; p4538
;; ----- [p4539]
;; p4539
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4540
;; p4540
;; ----- [p4541]
;; p4541
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4539 p4541
;; p4539
;; p4541
;; ----- [p4542]
;; p4542
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4543
;; p4543
;; ----- [p4544]
;; p4544
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4542 p4544
;; p4542
;; p4544
;; ----- [p4545]
;; p4545
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4546
;; p4546
;; ----- [p4547]
;; p4547
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4545 p4547
;; p4545
;; p4547
;; ----- [p4548]
;; p4548
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p4549]
;; p4549
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p4537 p4548 p4549 p4550 p4551
;; p4537
;; p4548
;; p4549
;; p4550
;; p4551
;; ----- [p4552]
;; p4552
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p4536 p4552
;; p4536
;; p4552
;; ----- [p4553]
;; p4553
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4554]
;; p4554
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4556
;; p4556
;; ----- [p4557]
;; p4557
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4558
;; p4558
;; ----- [p4559]
;; p4559
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4557 p4559
;; p4557
;; p4559
;; ----- [p4560]
;; p4560
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4561
;; p4561
;; ----- [p4562]
;; p4562
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4560 p4562
;; p4560
;; p4562
;; ----- [p4563]
;; p4563
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; 1 == 1 : Integer
;;; Verifying C_Int p4564 p4565
;; p4564
;; p4565
;; ----- [p4566]
;; p4566
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p4566
;; p4566
;; ----- [p4567]
;; p4567
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p4568]
;; p4568
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Store p4555 p4563 p4567 p4568 p4569 p4570
;; p4555
;; p4563
;; p4567
;; p4568
;; p4569
;; p4570
;; ----- [p4571]
;; p4571
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p4571
;; p4571
;; ----- [p4572]
;; p4572
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4573]
;; p4573
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4574
;; p4574
;; ----- [p4575]
;; p4575
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4577
;; p4577
;; ----- [p4578]
;; p4578
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4579
;; p4579
;; ----- [p4580]
;; p4580
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4578 p4580
;; p4578
;; p4580
;; ----- [p4581]
;; p4581
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4582
;; p4582
;; ----- [p4583]
;; p4583
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4581 p4583
;; p4581
;; p4583
;; ----- [p4584]
;; p4584
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p4585]
;; p4585
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Load p4576 p4584 p4585 p4586 p4587
;; p4576
;; p4584
;; p4585
;; p4586
;; p4587
;; ----- [p4588]
;; p4588
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p4575 p4588
;; p4575
;; p4588
;; ----- [p4589]
;; p4589
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4590]
;; p4590
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4591
;; p4591
;; ----- [p4592]
;; p4592
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying RMWO_Xchg 
;; ----- [p4594]
;; p4594
;; 
;; Proof. RMWO_Xchg QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4595
;; p4595
;; ----- [p4596]
;; p4596
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4597
;; p4597
;; ----- [p4598]
;; p4598
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4596 p4598
;; p4596
;; p4598
;; ----- [p4599]
;; p4599
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4600
;; p4600
;; ----- [p4601]
;; p4601
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4599 p4601
;; p4599
;; p4601
;; ----- [p4602]
;; p4602
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4603
;; p4603
;; ----- [p4604]
;; p4604
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4605
;; p4605
;; ----- [p4606]
;; p4606
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4604 p4606
;; p4604
;; p4606
;; ----- [p4607]
;; p4607
;; 
;; Proof. O_LocalReference QED
;;; Verifying SS_System 
;; ----- [p4608]
;; p4608
;; 
;; Proof. SS_System QED
;;; Verifying MO_SequentiallyConsistent 
;; ----- [p4609]
;; p4609
;; 
;; Proof. MO_SequentiallyConsistent QED
;;; Verifying Tup2_SynchronizationScope_MemoryOrdering p4608 p4609
;; p4608
;; p4609
;; ----- [p4610]
;; p4610
;; 
;; Proof. Tuple (SynchronizationScope, MemoryOrdering) equivalent QED
;;; True == True : Bool
;;; Verifying I_AtomicRMW p4593 p4594 p4602 p4607 p4610 p4611
;; p4593
;; p4594
;; p4602
;; p4607
;; p4610
;; p4611
;; ----- [p4612]
;; p4612
;; 
;; Proof. I_AtomicRMW QED
;;; Verifying NI_infix_Instruction p4592 p4612
;; p4592
;; p4612
;; ----- [p4613]
;; p4613
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4614]
;; p4614
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4616
;; p4616
;; ----- [p4617]
;; p4617
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4618
;; p4618
;; ----- [p4619]
;; p4619
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4617 p4619
;; p4617
;; p4619
;; ----- [p4620]
;; p4620
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4621
;; p4621
;; ----- [p4622]
;; p4622
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4620 p4622
;; p4620
;; p4622
;; ----- [p4623]
;; p4623
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4624
;; p4624
;; ----- [p4625]
;; p4625
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4626
;; p4626
;; ----- [p4627]
;; p4627
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4625 p4627
;; p4625
;; p4627
;; ----- [p4628]
;; p4628
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p4629]
;; p4629
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Store p4615 p4623 p4628 p4629 p4630 p4631
;; p4615
;; p4623
;; p4628
;; p4629
;; p4630
;; p4631
;; ----- [p4632]
;; p4632
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p4632
;; p4632
;; ----- [p4633]
;; p4633
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4634]
;; p4634
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4635
;; p4635
;; ----- [p4636]
;; p4636
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4638
;; p4638
;; ----- [p4639]
;; p4639
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4640
;; p4640
;; ----- [p4641]
;; p4641
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4639 p4641
;; p4639
;; p4641
;; ----- [p4642]
;; p4642
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4643
;; p4643
;; ----- [p4644]
;; p4644
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4642 p4644
;; p4642
;; p4644
;; ----- [p4645]
;; p4645
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p4646]
;; p4646
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Load p4637 p4645 p4646 p4647 p4648
;; p4637
;; p4645
;; p4646
;; p4647
;; p4648
;; ----- [p4649]
;; p4649
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p4636 p4649
;; p4636
;; p4649
;; ----- [p4650]
;; p4650
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4651]
;; p4651
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; True == True : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4653
;; p4653
;; ----- [p4654]
;; p4654
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4655
;; p4655
;; ----- [p4656]
;; p4656
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4654 p4656
;; p4654
;; p4656
;; ----- [p4657]
;; p4657
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4658
;; p4658
;; ----- [p4659]
;; p4659
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4657 p4659
;; p4657
;; p4659
;; ----- [p4660]
;; p4660
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4661
;; p4661
;; ----- [p4662]
;; p4662
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4663
;; p4663
;; ----- [p4664]
;; p4664
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4662 p4664
;; p4662
;; p4664
;; ----- [p4665]
;; p4665
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p4666]
;; p4666
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Store p4652 p4660 p4665 p4666 p4667 p4668
;; p4652
;; p4660
;; p4665
;; p4666
;; p4667
;; p4668
;; ----- [p4669]
;; p4669
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p4669
;; p4669
;; ----- [p4670]
;; p4670
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4671]
;; p4671
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ----- [p4672]
;; p4672
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ----- [p4673]
;; p4673
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p4674]
;; p4674
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p4675]
;; p4675
;; 
;; Proof. T_VoidType QED
;;; Verifying Nil_Type 
;; ----- [p4676]
;; p4676
;; 
;; Proof. [] (Type) equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p4675 p4676 p4677
;; p4675
;; p4676
;; p4677
;; ----- [p4678]
;; p4678
;; 
;; Proof. T_FunctionType QED
;;; "" == "" : ByteString
;;; "~{memory},~{dirflag},~{fpsr},~{flags}" == "~{memory},~{dirflag},~{fpsr},~{flags}" : ShortByteStr
;;; True == True : Bool
;;; False == False : Bool
;;; Verifying D_ATTDialect 
;; ----- [p4683]
;; p4683
;; 
;; Proof. D_ATTDialect QED
;;; Verifying IA_InlineAssembly p4678 p4679 p4680 p4681 p4682 p4683
;; p4678
;; p4679
;; p4680
;; p4681
;; p4682
;; p4683
;; ----- [p4684]
;; p4684
;; 
;; Proof. IA_InlineAssembly QED
;;; Verifying EIAO_Left_InlineAssembly_Operand p4684
;; p4684
;; ----- [p4685]
;; p4685
;; 
;; Proof. Left (InlineAssembly Operand) equivalent QED
;;; Verifying Nil_Tup2_Operand_List_ParameterAttribute 
;; ----- [p4686]
;; p4686
;; 
;; Proof. [] ((Operand, [ParameterAttribute])) equivalent QED
;;; 3 == 3 : Word
;;; Verifying GID_GroupID p4687
;; p4687
;; ----- [p4688]
;; p4688
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p4688
;; p4688
;; ----- [p4689]
;; p4689
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p4690]
;; p4690
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p4689 p4690
;; p4689
;; p4690
;; ----- [p4691]
;; p4691
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; True == True : Bool
;;; Verifying I_Call p4672 p4673 p4674 p4685 p4686 p4691 p4692
;; p4672
;; p4673
;; p4674
;; p4685
;; p4686
;; p4691
;; p4692
;; ----- [p4693]
;; p4693
;; 
;; Proof. I_Call QED
;;; Verifying NI_Do_Instruction p4693
;; p4693
;; ----- [p4694]
;; p4694
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4695]
;; p4695
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4696
;; p4696
;; ----- [p4697]
;; p4697
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4699
;; p4699
;; ----- [p4700]
;; p4700
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4701
;; p4701
;; ----- [p4702]
;; p4702
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4700 p4702
;; p4700
;; p4702
;; ----- [p4703]
;; p4703
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4704
;; p4704
;; ----- [p4705]
;; p4705
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4703 p4705
;; p4703
;; p4705
;; ----- [p4706]
;; p4706
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p4707]
;; p4707
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Load p4698 p4706 p4707 p4708 p4709
;; p4698
;; p4706
;; p4707
;; p4708
;; p4709
;; ----- [p4710]
;; p4710
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p4697 p4710
;; p4697
;; p4710
;; ----- [p4711]
;; p4711
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4712]
;; p4712
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4713
;; p4713
;; ----- [p4714]
;; p4714
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4715
;; p4715
;; ----- [p4716]
;; p4716
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4717
;; p4717
;; ----- [p4718]
;; p4718
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4716 p4718
;; p4716
;; p4718
;; ----- [p4719]
;; p4719
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4720
;; p4720
;; ----- [p4721]
;; p4721
;; 
;; Proof. T_IntegerType QED
;;; True == True : Bool
;;; Verifying I_ZExt p4719 p4721 p4722
;; p4719
;; p4721
;; p4722
;; ----- [p4723]
;; p4723
;; 
;; Proof. I_ZExt QED
;;; Verifying NI_infix_Instruction p4714 p4723
;; p4714
;; p4723
;; ----- [p4724]
;; p4724
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p4725]
;; p4725
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p4724 p4725
;; p4724
;; p4725
;; ----- [p4726]
;; p4726
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4711 p4726
;; p4711
;; p4726
;; ----- [p4727]
;; p4727
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4694 p4727
;; p4694
;; p4727
;; ----- [p4728]
;; p4728
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4670 p4728
;; p4670
;; p4728
;; ----- [p4729]
;; p4729
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4650 p4729
;; p4650
;; p4729
;; ----- [p4730]
;; p4730
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4633 p4730
;; p4633
;; p4730
;; ----- [p4731]
;; p4731
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4613 p4731
;; p4613
;; p4731
;; ----- [p4732]
;; p4732
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4589 p4732
;; p4589
;; p4732
;; ----- [p4733]
;; p4733
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4572 p4733
;; p4572
;; p4733
;; ----- [p4734]
;; p4734
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4553 p4734
;; p4553
;; p4734
;; ----- [p4735]
;; p4735
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4533 p4735
;; p4533
;; p4735
;; ----- [p4736]
;; p4736
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4509 p4736
;; p4509
;; p4736
;; ----- [p4737]
;; p4737
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4483 p4737
;; p4483
;; p4737
;; ----- [p4738]
;; p4738
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4473 p4738
;; p4473
;; p4738
;; ----- [p4739]
;; p4739
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4463 p4739
;; p4463
;; p4739
;; ----- [p4740]
;; p4740
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4453 p4740
;; p4453
;; p4740
;; ----- [p4741]
;; p4741
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4742]
;; p4742
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4743
;; p4743
;; ----- [p4744]
;; p4744
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4745
;; p4745
;; ----- [p4746]
;; p4746
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4744 p4746
;; p4744
;; p4746
;; ----- [p4747]
;; p4747
;; 
;; Proof. O_LocalReference QED
;;; Verifying MO_Just_Operand p4747
;; p4747
;; ----- [p4748]
;; p4748
;; 
;; Proof. Just Operand equivalent QED
;;; True == True : Bool
;;; Verifying T_Ret p4748 p4749
;; p4748
;; p4749
;; ----- [p4750]
;; p4750
;; 
;; Proof. T_Ret QED
;;; Verifying NT_Do_Terminator p4750
;; p4750
;; ----- [p4751]
;; p4751
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p4440 p4741 p4751
;; p4440
;; p4741
;; p4751
;; ----- [p4752]
;; p4752
;; 
;; Proof. BB_BasicBlock QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p4754]
;; p4754
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; True == True : Bool
;;; Verifying G_Function p4408 p4409 p4410 p4411 p4412 p4414 p4415 p4428 p4433 p4434 p4435 p4436 p4437 p4438 p4753 p4754 p4755
;; p4408
;; p4409
;; p4410
;; p4411
;; p4412
;; p4414
;; p4415
;; p4428
;; p4433
;; p4434
;; p4435
;; p4436
;; p4437
;; p4438
;; p4753
;; p4754
;; p4755
;; ----- [p4756]
;; p4756
;; 
;; Proof. functions fio_trylock and fio_trylock equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p4757
;; p4757
;; ----- [p4758]
;; p4758
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p4406 p4758
;; p4406
;; p4758
;; ----- [p4759]
;; p4759
;; 
;; Proof. C_GlobalReference QED
;;; Verifying O_ConstantOperand p4759
;; p4759
;; ----- [p4760]
;; p4760
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying EIAO_Right_InlineAssembly_Operand p4760
;; p4760
;; ----- [p4761]
;; p4761
;; 
;; Proof. Right (InlineAssembly Operand) equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4762
;; p4762
;; ----- [p4763]
;; p4763
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4764
;; p4764
;; ----- [p4765]
;; p4765
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4763 p4765
;; p4763
;; p4765
;; ----- [p4766]
;; p4766
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4767]
;; p4767
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Internal 
;; ----- [p4769]
;; p4769
;; 
;; Proof. L_Internal QED
;;; Verifying V_Default 
;; ----- [p4770]
;; p4770
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p4771]
;; p4771
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying MM_Nothing_Model 
;; ----- [p4772]
;; p4772
;; 
;; Proof. Nothing (Model) equivalent QED
;;; Verifying MUA_Nothing_UnnamedAddr 
;; ----- [p4773]
;; p4773
;; 
;; Proof. Nothing (UnnamedAddr) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p4775
;; p4775
;; ----- [p4776]
;; p4776
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4777
;; p4777
;; ----- [p4778]
;; p4778
;; 
;; Proof. AS_AddrSpace QED
;;; 8 == 8 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p4779 p4780
;; p4779
;; p4780
;; ----- [p4781]
;; p4781
;; 
;; Proof. C_Int QED
;;; Verifying MC_Just_Constant p4781
;; p4781
;; ----- [p4782]
;; p4782
;; 
;; Proof. Just Constant equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4783]
;; p4783
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4784]
;; p4784
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying G_GlobalVariable p4768 p4769 p4770 p4771 p4772 p4773 p4774 p4776 p4778 p4782 p4783 p4784 p4785 p4786
;; p4768
;; p4769
;; p4770
;; p4771
;; p4772
;; p4773
;; p4774
;; p4776
;; p4778
;; p4782
;; p4783
;; p4784
;; p4785
;; p4786
;; ----- [p4787]
;; p4787
;; 
;; Proof. global variables fio_cli_start.run_once and fio_cli_start.run_once equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p4788
;; p4788
;; ----- [p4789]
;; p4789
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p4766 p4789
;; p4766
;; p4789
;; ----- [p4790]
;; p4790
;; 
;; Proof. C_GlobalReference QED
;;; Verifying O_ConstantOperand p4790
;; p4790
;; ----- [p4791]
;; p4791
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p4792]
;; p4792
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p4791 p4792
;; p4791
;; p4792
;; ----- [p4793]
;; p4793
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Tup2_Operand_List_ParameterAttribute 
;; ----- [p4794]
;; p4794
;; 
;; Proof. [] ((Operand, [ParameterAttribute])) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p4793 p4794
;; p4793
;; p4794
;; ----- [p4795]
;; p4795
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p4796]
;; p4796
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; True == True : Bool
;;; Verifying I_Call p4390 p4391 p4392 p4761 p4795 p4796 p4797
;; p4390
;; p4391
;; p4392
;; p4761
;; p4795
;; p4796
;; p4797
;; ----- [p4798]
;; p4798
;; 
;; Proof. I_Call QED
;;; Verifying NI_infix_Instruction p4389 p4798
;; p4389
;; p4798
;; ----- [p4799]
;; p4799
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4800]
;; p4800
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4801
;; p4801
;; ----- [p4802]
;; p4802
;; 
;; Proof. UnName equivalent QED
;;; Verifying IP_NE 
;; ----- [p4803]
;; p4803
;; 
;; Proof. IP_NE QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4804
;; p4804
;; ----- [p4805]
;; p4805
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4806
;; p4806
;; ----- [p4807]
;; p4807
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4805 p4807
;; p4805
;; p4807
;; ----- [p4808]
;; p4808
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p4809 p4810
;; p4809
;; p4810
;; ----- [p4811]
;; p4811
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p4811
;; p4811
;; ----- [p4812]
;; p4812
;; 
;; Proof. O_ConstantOperand QED
;;; True == True : Bool
;;; Verifying I_ICmp p4803 p4808 p4812 p4813
;; p4803
;; p4808
;; p4812
;; p4813
;; ----- [p4814]
;; p4814
;; 
;; Proof. I_ICmp QED
;;; Verifying NI_infix_Instruction p4802 p4814
;; p4802
;; p4814
;; ----- [p4815]
;; p4815
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p4816]
;; p4816
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p4815 p4816
;; p4815
;; p4816
;; ----- [p4817]
;; p4817
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4799 p4817
;; p4799
;; p4817
;; ----- [p4818]
;; p4818
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4386 p4818
;; p4386
;; p4818
;; ----- [p4819]
;; p4819
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4354 p4819
;; p4354
;; p4819
;; ----- [p4820]
;; p4820
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4328 p4820
;; p4328
;; p4820
;; ----- [p4821]
;; p4821
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4308 p4821
;; p4308
;; p4821
;; ----- [p4822]
;; p4822
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4288 p4822
;; p4288
;; p4822
;; ----- [p4823]
;; p4823
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4256 p4823
;; p4256
;; p4823
;; ----- [p4824]
;; p4824
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4236 p4824
;; p4236
;; p4824
;; ----- [p4825]
;; p4825
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4225 p4825
;; p4225
;; p4825
;; ----- [p4826]
;; p4826
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4212 p4826
;; p4212
;; p4826
;; ----- [p4827]
;; p4827
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4188 p4827
;; p4188
;; p4827
;; ----- [p4828]
;; p4828
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4175 p4828
;; p4175
;; p4828
;; ----- [p4829]
;; p4829
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4159 p4829
;; p4159
;; p4829
;; ----- [p4830]
;; p4830
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4105 p4830
;; p4105
;; p4830
;; ----- [p4831]
;; p4831
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4089 p4831
;; p4089
;; p4831
;; ----- [p4832]
;; p4832
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4076 p4832
;; p4076
;; p4832
;; ----- [p4833]
;; p4833
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4066 p4833
;; p4066
;; p4833
;; ----- [p4834]
;; p4834
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4056 p4834
;; p4056
;; p4834
;; ----- [p4835]
;; p4835
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4040 p4835
;; p4040
;; p4835
;; ----- [p4836]
;; p4836
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4837]
;; p4837
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; Verifying T_IntegerType p4838
;; p4838
;; ----- [p4839]
;; p4839
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4840
;; p4840
;; ----- [p4841]
;; p4841
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4839 p4841
;; p4839
;; p4841
;; ----- [p4842]
;; p4842
;; 
;; Proof. O_LocalReference QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4843
;; p4843
;; ----- [p4844]
;; p4844
;; 
;; Proof. UnName equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4845
;; p4845
;; ----- [p4846]
;; p4846
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_CondBr p4842 p4844 p4846 p4847
;; p4842
;; p4844
;; p4846
;; p4847
;; ----- [p4848]
;; p4848
;; 
;; Proof. T_CondBr QED
;;; Verifying NT_Do_Terminator p4848
;; p4848
;; ----- [p4849]
;; p4849
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p4030 p4836 p4849
;; p4030
;; p4836
;; p4849
;; ----- [p4850]
;; p4850
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4851
;; p4851
;; ----- [p4852]
;; p4852
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4853]
;; p4853
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4854
;; p4854
;; ----- [p4855]
;; p4855
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4857
;; p4857
;; ----- [p4858]
;; p4858
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4859
;; p4859
;; ----- [p4860]
;; p4860
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4858 p4860
;; p4858
;; p4860
;; ----- [p4861]
;; p4861
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4862
;; p4862
;; ----- [p4863]
;; p4863
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4861 p4863
;; p4861
;; p4863
;; ----- [p4864]
;; p4864
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p4865]
;; p4865
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Load p4856 p4864 p4865 p4866 p4867
;; p4856
;; p4864
;; p4865
;; p4866
;; p4867
;; ----- [p4868]
;; p4868
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p4855 p4868
;; p4855
;; p4868
;; ----- [p4869]
;; p4869
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4870]
;; p4870
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4871
;; p4871
;; ----- [p4872]
;; p4872
;; 
;; Proof. UnName equivalent QED
;;; Verifying IP_SGE 
;; ----- [p4873]
;; p4873
;; 
;; Proof. IP_SGE QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4874
;; p4874
;; ----- [p4875]
;; p4875
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4876
;; p4876
;; ----- [p4877]
;; p4877
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4875 p4877
;; p4875
;; p4877
;; ----- [p4878]
;; p4878
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p4879 p4880
;; p4879
;; p4880
;; ----- [p4881]
;; p4881
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p4881
;; p4881
;; ----- [p4882]
;; p4882
;; 
;; Proof. O_ConstantOperand QED
;;; True == True : Bool
;;; Verifying I_ICmp p4873 p4878 p4882 p4883
;; p4873
;; p4878
;; p4882
;; p4883
;; ----- [p4884]
;; p4884
;; 
;; Proof. I_ICmp QED
;;; Verifying NI_infix_Instruction p4872 p4884
;; p4872
;; p4884
;; ----- [p4885]
;; p4885
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p4886]
;; p4886
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p4885 p4886
;; p4885
;; p4886
;; ----- [p4887]
;; p4887
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4869 p4887
;; p4869
;; p4887
;; ----- [p4888]
;; p4888
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4889]
;; p4889
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; Verifying T_IntegerType p4890
;; p4890
;; ----- [p4891]
;; p4891
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4892
;; p4892
;; ----- [p4893]
;; p4893
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4891 p4893
;; p4891
;; p4893
;; ----- [p4894]
;; p4894
;; 
;; Proof. O_LocalReference QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4895
;; p4895
;; ----- [p4896]
;; p4896
;; 
;; Proof. UnName equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4897
;; p4897
;; ----- [p4898]
;; p4898
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_CondBr p4894 p4896 p4898 p4899
;; p4894
;; p4896
;; p4898
;; p4899
;; ----- [p4900]
;; p4900
;; 
;; Proof. T_CondBr QED
;;; Verifying NT_Do_Terminator p4900
;; p4900
;; ----- [p4901]
;; p4901
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p4852 p4888 p4901
;; p4852
;; p4888
;; p4901
;; ----- [p4902]
;; p4902
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4903
;; p4903
;; ----- [p4904]
;; p4904
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4905]
;; p4905
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4906
;; p4906
;; ----- [p4907]
;; p4907
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4909
;; p4909
;; ----- [p4910]
;; p4910
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4911
;; p4911
;; ----- [p4912]
;; p4912
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4910 p4912
;; p4910
;; p4912
;; ----- [p4913]
;; p4913
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4914
;; p4914
;; ----- [p4915]
;; p4915
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4913 p4915
;; p4913
;; p4915
;; ----- [p4916]
;; p4916
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p4917]
;; p4917
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Load p4908 p4916 p4917 p4918 p4919
;; p4908
;; p4916
;; p4917
;; p4918
;; p4919
;; ----- [p4920]
;; p4920
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p4907 p4920
;; p4907
;; p4920
;; ----- [p4921]
;; p4921
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4922]
;; p4922
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4923
;; p4923
;; ----- [p4924]
;; p4924
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4926
;; p4926
;; ----- [p4927]
;; p4927
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4928
;; p4928
;; ----- [p4929]
;; p4929
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4927 p4929
;; p4927
;; p4929
;; ----- [p4930]
;; p4930
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4931
;; p4931
;; ----- [p4932]
;; p4932
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4930 p4932
;; p4930
;; p4932
;; ----- [p4933]
;; p4933
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p4934]
;; p4934
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Load p4925 p4933 p4934 p4935 p4936
;; p4925
;; p4933
;; p4934
;; p4935
;; p4936
;; ----- [p4937]
;; p4937
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p4924 p4937
;; p4924
;; p4937
;; ----- [p4938]
;; p4938
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4939]
;; p4939
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4940
;; p4940
;; ----- [p4941]
;; p4941
;; 
;; Proof. UnName equivalent QED
;;; Verifying IP_SLT 
;; ----- [p4942]
;; p4942
;; 
;; Proof. IP_SLT QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4943
;; p4943
;; ----- [p4944]
;; p4944
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4945
;; p4945
;; ----- [p4946]
;; p4946
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4944 p4946
;; p4944
;; p4946
;; ----- [p4947]
;; p4947
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4948
;; p4948
;; ----- [p4949]
;; p4949
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4950
;; p4950
;; ----- [p4951]
;; p4951
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4949 p4951
;; p4949
;; p4951
;; ----- [p4952]
;; p4952
;; 
;; Proof. O_LocalReference QED
;;; True == True : Bool
;;; Verifying I_ICmp p4942 p4947 p4952 p4953
;; p4942
;; p4947
;; p4952
;; p4953
;; ----- [p4954]
;; p4954
;; 
;; Proof. I_ICmp QED
;;; Verifying NI_infix_Instruction p4941 p4954
;; p4941
;; p4954
;; ----- [p4955]
;; p4955
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p4956]
;; p4956
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p4955 p4956
;; p4955
;; p4956
;; ----- [p4957]
;; p4957
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4938 p4957
;; p4938
;; p4957
;; ----- [p4958]
;; p4958
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4921 p4958
;; p4921
;; p4958
;; ----- [p4959]
;; p4959
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4960]
;; p4960
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; Verifying T_IntegerType p4961
;; p4961
;; ----- [p4962]
;; p4962
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4963
;; p4963
;; ----- [p4964]
;; p4964
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4962 p4964
;; p4962
;; p4964
;; ----- [p4965]
;; p4965
;; 
;; Proof. O_LocalReference QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4966
;; p4966
;; ----- [p4967]
;; p4967
;; 
;; Proof. UnName equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4968
;; p4968
;; ----- [p4969]
;; p4969
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_CondBr p4965 p4967 p4969 p4970
;; p4965
;; p4967
;; p4969
;; p4970
;; ----- [p4971]
;; p4971
;; 
;; Proof. T_CondBr QED
;;; Verifying NT_Do_Terminator p4971
;; p4971
;; ----- [p4972]
;; p4972
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p4904 p4959 p4972
;; p4904
;; p4959
;; p4972
;; ----- [p4973]
;; p4973
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4974
;; p4974
;; ----- [p4975]
;; p4975
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4976]
;; p4976
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4977
;; p4977
;; ----- [p4978]
;; p4978
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4980
;; p4980
;; ----- [p4981]
;; p4981
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4982
;; p4982
;; ----- [p4983]
;; p4983
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4981 p4983
;; p4981
;; p4983
;; ----- [p4984]
;; p4984
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p4985
;; p4985
;; ----- [p4986]
;; p4986
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4984 p4986
;; p4984
;; p4986
;; ----- [p4987]
;; p4987
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p4988]
;; p4988
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Load p4979 p4987 p4988 p4989 p4990
;; p4979
;; p4987
;; p4988
;; p4989
;; p4990
;; ----- [p4991]
;; p4991
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p4978 p4991
;; p4978
;; p4991
;; ----- [p4992]
;; p4992
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p4993]
;; p4993
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p4995
;; p4995
;; ----- [p4996]
;; p4996
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p4997
;; p4997
;; ----- [p4998]
;; p4998
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p4996 p4998
;; p4996
;; p4998
;; ----- [p4999]
;; p4999
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5000
;; p5000
;; ----- [p5001]
;; p5001
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p4999 p5001
;; p4999
;; p5001
;; ----- [p5002]
;; p5002
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p5003
;; p5003
;; ----- [p5004]
;; p5004
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5005
;; p5005
;; ----- [p5006]
;; p5006
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5004 p5006
;; p5004
;; p5006
;; ----- [p5007]
;; p5007
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p5008]
;; p5008
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Store p4994 p5002 p5007 p5008 p5009 p5010
;; p4994
;; p5002
;; p5007
;; p5008
;; p5009
;; p5010
;; ----- [p5011]
;; p5011
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p5011
;; p5011
;; ----- [p5012]
;; p5012
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p5013]
;; p5013
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p5012 p5013
;; p5012
;; p5013
;; ----- [p5014]
;; p5014
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p4992 p5014
;; p4992
;; p5014
;; ----- [p5015]
;; p5015
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5016]
;; p5016
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5017
;; p5017
;; ----- [p5018]
;; p5018
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_Br p5018 p5019
;; p5018
;; p5019
;; ----- [p5020]
;; p5020
;; 
;; Proof. T_Br QED
;;; Verifying NT_Do_Terminator p5020
;; p5020
;; ----- [p5021]
;; p5021
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p4975 p5015 p5021
;; p4975
;; p5015
;; p5021
;; ----- [p5022]
;; p5022
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5023
;; p5023
;; ----- [p5024]
;; p5024
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5025]
;; p5025
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5026
;; p5026
;; ----- [p5027]
;; p5027
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5029
;; p5029
;; ----- [p5030]
;; p5030
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5030
;; p5030
;; ----- [p5031]
;; p5031
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5032
;; p5032
;; ----- [p5033]
;; p5033
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5031 p5033
;; p5031
;; p5033
;; ----- [p5034]
;; p5034
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5035
;; p5035
;; ----- [p5036]
;; p5036
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5034 p5036
;; p5034
;; p5036
;; ----- [p5037]
;; p5037
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p5038 p5039
;; p5038
;; p5039
;; ----- [p5040]
;; p5040
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p5040
;; p5040
;; ----- [p5041]
;; p5041
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p5042 p5043
;; p5042
;; p5043
;; ----- [p5044]
;; p5044
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p5044
;; p5044
;; ----- [p5045]
;; p5045
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ----- [p5046]
;; p5046
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p5045 p5046
;; p5045
;; p5046
;; ----- [p5047]
;; p5047
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p5041 p5047
;; p5041
;; p5047
;; ----- [p5048]
;; p5048
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p5028 p5037 p5048 p5049
;; p5028
;; p5037
;; p5048
;; p5049
;; ----- [p5050]
;; p5050
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p5027 p5050
;; p5027
;; p5050
;; ----- [p5051]
;; p5051
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5052]
;; p5052
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5053
;; p5053
;; ----- [p5054]
;; p5054
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p5056
;; p5056
;; ----- [p5057]
;; p5057
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5058
;; p5058
;; ----- [p5059]
;; p5059
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5057 p5059
;; p5057
;; p5059
;; ----- [p5060]
;; p5060
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5061
;; p5061
;; ----- [p5062]
;; p5062
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5060 p5062
;; p5060
;; p5062
;; ----- [p5063]
;; p5063
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p5064]
;; p5064
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Load p5055 p5063 p5064 p5065 p5066
;; p5055
;; p5063
;; p5064
;; p5065
;; p5066
;; ----- [p5067]
;; p5067
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p5054 p5067
;; p5054
;; p5067
;; ----- [p5068]
;; p5068
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5069]
;; p5069
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p5071
;; p5071
;; ----- [p5072]
;; p5072
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5073
;; p5073
;; ----- [p5074]
;; p5074
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5072 p5074
;; p5072
;; p5074
;; ----- [p5075]
;; p5075
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5076
;; p5076
;; ----- [p5077]
;; p5077
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5075 p5077
;; p5075
;; p5077
;; ----- [p5078]
;; p5078
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p5079
;; p5079
;; ----- [p5080]
;; p5080
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5081
;; p5081
;; ----- [p5082]
;; p5082
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5080 p5082
;; p5080
;; p5082
;; ----- [p5083]
;; p5083
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p5084]
;; p5084
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p5070 p5078 p5083 p5084 p5085 p5086
;; p5070
;; p5078
;; p5083
;; p5084
;; p5085
;; p5086
;; ----- [p5087]
;; p5087
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p5087
;; p5087
;; ----- [p5088]
;; p5088
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5089]
;; p5089
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5090
;; p5090
;; ----- [p5091]
;; p5091
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5093
;; p5093
;; ----- [p5094]
;; p5094
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5094
;; p5094
;; ----- [p5095]
;; p5095
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5096
;; p5096
;; ----- [p5097]
;; p5097
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5095 p5097
;; p5095
;; p5097
;; ----- [p5098]
;; p5098
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5099
;; p5099
;; ----- [p5100]
;; p5100
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5098 p5100
;; p5098
;; p5100
;; ----- [p5101]
;; p5101
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p5102 p5103
;; p5102
;; p5103
;; ----- [p5104]
;; p5104
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p5104
;; p5104
;; ----- [p5105]
;; p5105
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 1 == 1 : Integer
;;; Verifying C_Int p5106 p5107
;; p5106
;; p5107
;; ----- [p5108]
;; p5108
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p5108
;; p5108
;; ----- [p5109]
;; p5109
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ----- [p5110]
;; p5110
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p5109 p5110
;; p5109
;; p5110
;; ----- [p5111]
;; p5111
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p5105 p5111
;; p5105
;; p5111
;; ----- [p5112]
;; p5112
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p5092 p5101 p5112 p5113
;; p5092
;; p5101
;; p5112
;; p5113
;; ----- [p5114]
;; p5114
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p5091 p5114
;; p5091
;; p5114
;; ----- [p5115]
;; p5115
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5116]
;; p5116
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5117
;; p5117
;; ----- [p5118]
;; p5118
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p5120
;; p5120
;; ----- [p5121]
;; p5121
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5122
;; p5122
;; ----- [p5123]
;; p5123
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5121 p5123
;; p5121
;; p5123
;; ----- [p5124]
;; p5124
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5125
;; p5125
;; ----- [p5126]
;; p5126
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5124 p5126
;; p5124
;; p5126
;; ----- [p5127]
;; p5127
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p5128]
;; p5128
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Load p5119 p5127 p5128 p5129 p5130
;; p5119
;; p5127
;; p5128
;; p5129
;; p5130
;; ----- [p5131]
;; p5131
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p5118 p5131
;; p5118
;; p5131
;; ----- [p5132]
;; p5132
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5133]
;; p5133
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p5135
;; p5135
;; ----- [p5136]
;; p5136
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5137
;; p5137
;; ----- [p5138]
;; p5138
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5136 p5138
;; p5136
;; p5138
;; ----- [p5139]
;; p5139
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5140
;; p5140
;; ----- [p5141]
;; p5141
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5139 p5141
;; p5139
;; p5141
;; ----- [p5142]
;; p5142
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p5143
;; p5143
;; ----- [p5144]
;; p5144
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5145
;; p5145
;; ----- [p5146]
;; p5146
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5144 p5146
;; p5144
;; p5146
;; ----- [p5147]
;; p5147
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p5148]
;; p5148
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Store p5134 p5142 p5147 p5148 p5149 p5150
;; p5134
;; p5142
;; p5147
;; p5148
;; p5149
;; p5150
;; ----- [p5151]
;; p5151
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p5151
;; p5151
;; ----- [p5152]
;; p5152
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5153]
;; p5153
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5154
;; p5154
;; ----- [p5155]
;; p5155
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5157
;; p5157
;; ----- [p5158]
;; p5158
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5158
;; p5158
;; ----- [p5159]
;; p5159
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5160
;; p5160
;; ----- [p5161]
;; p5161
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5159 p5161
;; p5159
;; p5161
;; ----- [p5162]
;; p5162
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5163
;; p5163
;; ----- [p5164]
;; p5164
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5162 p5164
;; p5162
;; p5164
;; ----- [p5165]
;; p5165
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p5166 p5167
;; p5166
;; p5167
;; ----- [p5168]
;; p5168
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p5168
;; p5168
;; ----- [p5169]
;; p5169
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 2 == 2 : Integer
;;; Verifying C_Int p5170 p5171
;; p5170
;; p5171
;; ----- [p5172]
;; p5172
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p5172
;; p5172
;; ----- [p5173]
;; p5173
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ----- [p5174]
;; p5174
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p5173 p5174
;; p5173
;; p5174
;; ----- [p5175]
;; p5175
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p5169 p5175
;; p5169
;; p5175
;; ----- [p5176]
;; p5176
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p5156 p5165 p5176 p5177
;; p5156
;; p5165
;; p5176
;; p5177
;; ----- [p5178]
;; p5178
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p5155 p5178
;; p5155
;; p5178
;; ----- [p5179]
;; p5179
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5180]
;; p5180
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p5182
;; p5182
;; ----- [p5183]
;; p5183
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5184
;; p5184
;; ----- [p5185]
;; p5185
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5183 p5185
;; p5183
;; p5185
;; ----- [p5186]
;; p5186
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5187
;; p5187
;; ----- [p5188]
;; p5188
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5186 p5188
;; p5186
;; p5188
;; ----- [p5189]
;; p5189
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p5190 p5191
;; p5190
;; p5191
;; ----- [p5192]
;; p5192
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p5192
;; p5192
;; ----- [p5193]
;; p5193
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p5194]
;; p5194
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p5181 p5189 p5193 p5194 p5195 p5196
;; p5181
;; p5189
;; p5193
;; p5194
;; p5195
;; p5196
;; ----- [p5197]
;; p5197
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p5197
;; p5197
;; ----- [p5198]
;; p5198
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5199]
;; p5199
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5200
;; p5200
;; ----- [p5201]
;; p5201
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5203
;; p5203
;; ----- [p5204]
;; p5204
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5204
;; p5204
;; ----- [p5205]
;; p5205
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5206
;; p5206
;; ----- [p5207]
;; p5207
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5205 p5207
;; p5205
;; p5207
;; ----- [p5208]
;; p5208
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5209
;; p5209
;; ----- [p5210]
;; p5210
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5208 p5210
;; p5208
;; p5210
;; ----- [p5211]
;; p5211
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p5212 p5213
;; p5212
;; p5213
;; ----- [p5214]
;; p5214
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p5214
;; p5214
;; ----- [p5215]
;; p5215
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 3 == 3 : Integer
;;; Verifying C_Int p5216 p5217
;; p5216
;; p5217
;; ----- [p5218]
;; p5218
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p5218
;; p5218
;; ----- [p5219]
;; p5219
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ----- [p5220]
;; p5220
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p5219 p5220
;; p5219
;; p5220
;; ----- [p5221]
;; p5221
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p5215 p5221
;; p5215
;; p5221
;; ----- [p5222]
;; p5222
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p5202 p5211 p5222 p5223
;; p5202
;; p5211
;; p5222
;; p5223
;; ----- [p5224]
;; p5224
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p5201 p5224
;; p5201
;; p5224
;; ----- [p5225]
;; p5225
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5226]
;; p5226
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p5228
;; p5228
;; ----- [p5229]
;; p5229
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5230
;; p5230
;; ----- [p5231]
;; p5231
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5229 p5231
;; p5229
;; p5231
;; ----- [p5232]
;; p5232
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5233
;; p5233
;; ----- [p5234]
;; p5234
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5232 p5234
;; p5232
;; p5234
;; ----- [p5235]
;; p5235
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p5236 p5237
;; p5236
;; p5237
;; ----- [p5238]
;; p5238
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p5238
;; p5238
;; ----- [p5239]
;; p5239
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p5240]
;; p5240
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Store p5227 p5235 p5239 p5240 p5241 p5242
;; p5227
;; p5235
;; p5239
;; p5240
;; p5241
;; p5242
;; ----- [p5243]
;; p5243
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p5243
;; p5243
;; ----- [p5244]
;; p5244
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5245]
;; p5245
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5246
;; p5246
;; ----- [p5247]
;; p5247
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5249
;; p5249
;; ----- [p5250]
;; p5250
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5250
;; p5250
;; ----- [p5251]
;; p5251
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5252
;; p5252
;; ----- [p5253]
;; p5253
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5251 p5253
;; p5251
;; p5253
;; ----- [p5254]
;; p5254
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5255
;; p5255
;; ----- [p5256]
;; p5256
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5254 p5256
;; p5254
;; p5256
;; ----- [p5257]
;; p5257
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p5258 p5259
;; p5258
;; p5259
;; ----- [p5260]
;; p5260
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p5260
;; p5260
;; ----- [p5261]
;; p5261
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 4 == 4 : Integer
;;; Verifying C_Int p5262 p5263
;; p5262
;; p5263
;; ----- [p5264]
;; p5264
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p5264
;; p5264
;; ----- [p5265]
;; p5265
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ----- [p5266]
;; p5266
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p5265 p5266
;; p5265
;; p5266
;; ----- [p5267]
;; p5267
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p5261 p5267
;; p5261
;; p5267
;; ----- [p5268]
;; p5268
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p5248 p5257 p5268 p5269
;; p5248
;; p5257
;; p5268
;; p5269
;; ----- [p5270]
;; p5270
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p5247 p5270
;; p5247
;; p5270
;; ----- [p5271]
;; p5271
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5272]
;; p5272
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5273
;; p5273
;; ----- [p5274]
;; p5274
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p5276
;; p5276
;; ----- [p5277]
;; p5277
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5278
;; p5278
;; ----- [p5279]
;; p5279
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5277 p5279
;; p5277
;; p5279
;; ----- [p5280]
;; p5280
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5281
;; p5281
;; ----- [p5282]
;; p5282
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5280 p5282
;; p5280
;; p5282
;; ----- [p5283]
;; p5283
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p5284]
;; p5284
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 4 == 4 : Word32
;;; True == True : Bool
;;; Verifying I_Load p5275 p5283 p5284 p5285 p5286
;; p5275
;; p5283
;; p5284
;; p5285
;; p5286
;; ----- [p5287]
;; p5287
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p5274 p5287
;; p5274
;; p5287
;; ----- [p5288]
;; p5288
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5289]
;; p5289
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p5291
;; p5291
;; ----- [p5292]
;; p5292
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5293
;; p5293
;; ----- [p5294]
;; p5294
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5292 p5294
;; p5292
;; p5294
;; ----- [p5295]
;; p5295
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5296
;; p5296
;; ----- [p5297]
;; p5297
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5295 p5297
;; p5295
;; p5297
;; ----- [p5298]
;; p5298
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p5299
;; p5299
;; ----- [p5300]
;; p5300
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5301
;; p5301
;; ----- [p5302]
;; p5302
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5300 p5302
;; p5300
;; p5302
;; ----- [p5303]
;; p5303
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p5304]
;; p5304
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p5290 p5298 p5303 p5304 p5305 p5306
;; p5290
;; p5298
;; p5303
;; p5304
;; p5305
;; p5306
;; ----- [p5307]
;; p5307
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p5307
;; p5307
;; ----- [p5308]
;; p5308
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5309]
;; p5309
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5310
;; p5310
;; ----- [p5311]
;; p5311
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5313
;; p5313
;; ----- [p5314]
;; p5314
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5314
;; p5314
;; ----- [p5315]
;; p5315
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5316
;; p5316
;; ----- [p5317]
;; p5317
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5315 p5317
;; p5315
;; p5317
;; ----- [p5318]
;; p5318
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5319
;; p5319
;; ----- [p5320]
;; p5320
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5318 p5320
;; p5318
;; p5320
;; ----- [p5321]
;; p5321
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p5322 p5323
;; p5322
;; p5323
;; ----- [p5324]
;; p5324
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p5324
;; p5324
;; ----- [p5325]
;; p5325
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 5 == 5 : Integer
;;; Verifying C_Int p5326 p5327
;; p5326
;; p5327
;; ----- [p5328]
;; p5328
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p5328
;; p5328
;; ----- [p5329]
;; p5329
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ----- [p5330]
;; p5330
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p5329 p5330
;; p5329
;; p5330
;; ----- [p5331]
;; p5331
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p5325 p5331
;; p5325
;; p5331
;; ----- [p5332]
;; p5332
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p5312 p5321 p5332 p5333
;; p5312
;; p5321
;; p5332
;; p5333
;; ----- [p5334]
;; p5334
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p5311 p5334
;; p5311
;; p5334
;; ----- [p5335]
;; p5335
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5336]
;; p5336
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5337
;; p5337
;; ----- [p5338]
;; p5338
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p5340
;; p5340
;; ----- [p5341]
;; p5341
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5342
;; p5342
;; ----- [p5343]
;; p5343
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5341 p5343
;; p5341
;; p5343
;; ----- [p5344]
;; p5344
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5345
;; p5345
;; ----- [p5346]
;; p5346
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5344 p5346
;; p5344
;; p5346
;; ----- [p5347]
;; p5347
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5348
;; p5348
;; ----- [p5349]
;; p5349
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5347 p5349
;; p5347
;; p5349
;; ----- [p5350]
;; p5350
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5351
;; p5351
;; ----- [p5352]
;; p5352
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5350 p5352
;; p5350
;; p5352
;; ----- [p5353]
;; p5353
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p5354]
;; p5354
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p5339 p5353 p5354 p5355 p5356
;; p5339
;; p5353
;; p5354
;; p5355
;; p5356
;; ----- [p5357]
;; p5357
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p5338 p5357
;; p5338
;; p5357
;; ----- [p5358]
;; p5358
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5359]
;; p5359
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p5361
;; p5361
;; ----- [p5362]
;; p5362
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5363
;; p5363
;; ----- [p5364]
;; p5364
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5362 p5364
;; p5362
;; p5364
;; ----- [p5365]
;; p5365
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5366
;; p5366
;; ----- [p5367]
;; p5367
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5365 p5367
;; p5365
;; p5367
;; ----- [p5368]
;; p5368
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5369
;; p5369
;; ----- [p5370]
;; p5370
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5368 p5370
;; p5368
;; p5370
;; ----- [p5371]
;; p5371
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5372
;; p5372
;; ----- [p5373]
;; p5373
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5371 p5373
;; p5371
;; p5373
;; ----- [p5374]
;; p5374
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p5375
;; p5375
;; ----- [p5376]
;; p5376
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5377
;; p5377
;; ----- [p5378]
;; p5378
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5376 p5378
;; p5376
;; p5378
;; ----- [p5379]
;; p5379
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5380
;; p5380
;; ----- [p5381]
;; p5381
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5379 p5381
;; p5379
;; p5381
;; ----- [p5382]
;; p5382
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5383
;; p5383
;; ----- [p5384]
;; p5384
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5382 p5384
;; p5382
;; p5384
;; ----- [p5385]
;; p5385
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p5386]
;; p5386
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p5360 p5374 p5385 p5386 p5387 p5388
;; p5360
;; p5374
;; p5385
;; p5386
;; p5387
;; p5388
;; ----- [p5389]
;; p5389
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p5389
;; p5389
;; ----- [p5390]
;; p5390
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5391]
;; p5391
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5392
;; p5392
;; ----- [p5393]
;; p5393
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5395
;; p5395
;; ----- [p5396]
;; p5396
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5396
;; p5396
;; ----- [p5397]
;; p5397
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5398
;; p5398
;; ----- [p5399]
;; p5399
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5397 p5399
;; p5397
;; p5399
;; ----- [p5400]
;; p5400
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5401
;; p5401
;; ----- [p5402]
;; p5402
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5400 p5402
;; p5400
;; p5402
;; ----- [p5403]
;; p5403
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p5404 p5405
;; p5404
;; p5405
;; ----- [p5406]
;; p5406
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p5406
;; p5406
;; ----- [p5407]
;; p5407
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 6 == 6 : Integer
;;; Verifying C_Int p5408 p5409
;; p5408
;; p5409
;; ----- [p5410]
;; p5410
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p5410
;; p5410
;; ----- [p5411]
;; p5411
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ----- [p5412]
;; p5412
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p5411 p5412
;; p5411
;; p5412
;; ----- [p5413]
;; p5413
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p5407 p5413
;; p5407
;; p5413
;; ----- [p5414]
;; p5414
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p5394 p5403 p5414 p5415
;; p5394
;; p5403
;; p5414
;; p5415
;; ----- [p5416]
;; p5416
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p5393 p5416
;; p5393
;; p5416
;; ----- [p5417]
;; p5417
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5418]
;; p5418
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5419
;; p5419
;; ----- [p5420]
;; p5420
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p5422
;; p5422
;; ----- [p5423]
;; p5423
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5424
;; p5424
;; ----- [p5425]
;; p5425
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5423 p5425
;; p5423
;; p5425
;; ----- [p5426]
;; p5426
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5427
;; p5427
;; ----- [p5428]
;; p5428
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5426 p5428
;; p5426
;; p5428
;; ----- [p5429]
;; p5429
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5430
;; p5430
;; ----- [p5431]
;; p5431
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5429 p5431
;; p5429
;; p5431
;; ----- [p5432]
;; p5432
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p5433]
;; p5433
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p5421 p5432 p5433 p5434 p5435
;; p5421
;; p5432
;; p5433
;; p5434
;; p5435
;; ----- [p5436]
;; p5436
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p5420 p5436
;; p5420
;; p5436
;; ----- [p5437]
;; p5437
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5438]
;; p5438
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p5440
;; p5440
;; ----- [p5441]
;; p5441
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5442
;; p5442
;; ----- [p5443]
;; p5443
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5441 p5443
;; p5441
;; p5443
;; ----- [p5444]
;; p5444
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5445
;; p5445
;; ----- [p5446]
;; p5446
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5444 p5446
;; p5444
;; p5446
;; ----- [p5447]
;; p5447
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5448
;; p5448
;; ----- [p5449]
;; p5449
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5447 p5449
;; p5447
;; p5449
;; ----- [p5450]
;; p5450
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p5451
;; p5451
;; ----- [p5452]
;; p5452
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5453
;; p5453
;; ----- [p5454]
;; p5454
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5452 p5454
;; p5452
;; p5454
;; ----- [p5455]
;; p5455
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5456
;; p5456
;; ----- [p5457]
;; p5457
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5455 p5457
;; p5455
;; p5457
;; ----- [p5458]
;; p5458
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p5459]
;; p5459
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p5439 p5450 p5458 p5459 p5460 p5461
;; p5439
;; p5450
;; p5458
;; p5459
;; p5460
;; p5461
;; ----- [p5462]
;; p5462
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p5462
;; p5462
;; ----- [p5463]
;; p5463
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5464]
;; p5464
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5465
;; p5465
;; ----- [p5466]
;; p5466
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5468
;; p5468
;; ----- [p5469]
;; p5469
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5469
;; p5469
;; ----- [p5470]
;; p5470
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5471
;; p5471
;; ----- [p5472]
;; p5472
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5470 p5472
;; p5470
;; p5472
;; ----- [p5473]
;; p5473
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5474
;; p5474
;; ----- [p5475]
;; p5475
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5473 p5475
;; p5473
;; p5475
;; ----- [p5476]
;; p5476
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p5477 p5478
;; p5477
;; p5478
;; ----- [p5479]
;; p5479
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p5479
;; p5479
;; ----- [p5480]
;; p5480
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 7 == 7 : Integer
;;; Verifying C_Int p5481 p5482
;; p5481
;; p5482
;; ----- [p5483]
;; p5483
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p5483
;; p5483
;; ----- [p5484]
;; p5484
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ----- [p5485]
;; p5485
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p5484 p5485
;; p5484
;; p5485
;; ----- [p5486]
;; p5486
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p5480 p5486
;; p5480
;; p5486
;; ----- [p5487]
;; p5487
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p5467 p5476 p5487 p5488
;; p5467
;; p5476
;; p5487
;; p5488
;; ----- [p5489]
;; p5489
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p5466 p5489
;; p5466
;; p5489
;; ----- [p5490]
;; p5490
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5491]
;; p5491
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5492
;; p5492
;; ----- [p5493]
;; p5493
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p5495
;; p5495
;; ----- [p5496]
;; p5496
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5497
;; p5497
;; ----- [p5498]
;; p5498
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5496 p5498
;; p5496
;; p5498
;; ----- [p5499]
;; p5499
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5500
;; p5500
;; ----- [p5501]
;; p5501
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5499 p5501
;; p5499
;; p5501
;; ----- [p5502]
;; p5502
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5503
;; p5503
;; ----- [p5504]
;; p5504
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5502 p5504
;; p5502
;; p5504
;; ----- [p5505]
;; p5505
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5506
;; p5506
;; ----- [p5507]
;; p5507
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5505 p5507
;; p5505
;; p5507
;; ----- [p5508]
;; p5508
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p5509]
;; p5509
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p5494 p5508 p5509 p5510 p5511
;; p5494
;; p5508
;; p5509
;; p5510
;; p5511
;; ----- [p5512]
;; p5512
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p5493 p5512
;; p5493
;; p5512
;; ----- [p5513]
;; p5513
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5514]
;; p5514
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p5516
;; p5516
;; ----- [p5517]
;; p5517
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5518
;; p5518
;; ----- [p5519]
;; p5519
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5517 p5519
;; p5517
;; p5519
;; ----- [p5520]
;; p5520
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5521
;; p5521
;; ----- [p5522]
;; p5522
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5520 p5522
;; p5520
;; p5522
;; ----- [p5523]
;; p5523
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5524
;; p5524
;; ----- [p5525]
;; p5525
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5523 p5525
;; p5523
;; p5525
;; ----- [p5526]
;; p5526
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5527
;; p5527
;; ----- [p5528]
;; p5528
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5526 p5528
;; p5526
;; p5528
;; ----- [p5529]
;; p5529
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p5530
;; p5530
;; ----- [p5531]
;; p5531
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5532
;; p5532
;; ----- [p5533]
;; p5533
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5531 p5533
;; p5531
;; p5533
;; ----- [p5534]
;; p5534
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5535
;; p5535
;; ----- [p5536]
;; p5536
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5534 p5536
;; p5534
;; p5536
;; ----- [p5537]
;; p5537
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5538
;; p5538
;; ----- [p5539]
;; p5539
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5537 p5539
;; p5537
;; p5539
;; ----- [p5540]
;; p5540
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p5541]
;; p5541
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p5515 p5529 p5540 p5541 p5542 p5543
;; p5515
;; p5529
;; p5540
;; p5541
;; p5542
;; p5543
;; ----- [p5544]
;; p5544
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p5544
;; p5544
;; ----- [p5545]
;; p5545
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5546]
;; p5546
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5547
;; p5547
;; ----- [p5548]
;; p5548
;; 
;; Proof. UnName equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ----- [p5549]
;; p5549
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ----- [p5550]
;; p5550
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p5551]
;; p5551
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p5552
;; p5552
;; ----- [p5553]
;; p5553
;; 
;; Proof. T_IntegerType QED
;;; False == False : Bool
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p5555
;; p5555
;; ----- [p5556]
;; p5556
;; 
;; Proof. T_IntegerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p5557
;; p5557
;; ----- [p5558]
;; p5558
;; 
;; Proof. T_IntegerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p5559
;; p5559
;; ----- [p5560]
;; p5560
;; 
;; Proof. T_IntegerType QED
;;; False == False : Bool
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p5562
;; p5562
;; ----- [p5563]
;; p5563
;; 
;; Proof. T_IntegerType QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5565
;; p5565
;; ----- [p5566]
;; p5566
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5566
;; p5566
;; ----- [p5567]
;; p5567
;; 
;; Proof. T_NamedTypeReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p5568
;; p5568
;; ----- [p5569]
;; p5569
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5570
;; p5570
;; ----- [p5571]
;; p5571
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5569 p5571
;; p5569
;; p5571
;; ----- [p5572]
;; p5572
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ----- [p5573]
;; p5573
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p5572 p5573
;; p5572
;; p5573
;; ----- [p5574]
;; p5574
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p5567 p5574
;; p5567
;; p5574
;; ----- [p5575]
;; p5575
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying T_StructureType p5564 p5575
;; p5564
;; p5575
;; ----- [p5576]
;; p5576
;; 
;; Proof. T_StructureType QED
;;; Verifying MT_Just_Type p5576
;; p5576
;; ----- [p5577]
;; p5577
;; 
;; Proof. Just Type equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5578
;; p5578
;; ----- [p5579]
;; p5579
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5579
;; p5579
;; ----- [p5580]
;; p5580
;; 
;; Proof. T_NamedTypeReference QED
;;; Verifying Nil_Type 
;; ----- [p5581]
;; p5581
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p5580 p5581
;; p5580
;; p5581
;; ----- [p5582]
;; p5582
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p5563 p5582
;; p5563
;; p5582
;; ----- [p5583]
;; p5583
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying T_StructureType p5561 p5583
;; p5561
;; p5583
;; ----- [p5584]
;; p5584
;; 
;; Proof. T_StructureType QED
;;; Verifying MT_Just_Type p5584
;; p5584
;; ----- [p5585]
;; p5585
;; 
;; Proof. Just Type equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5586
;; p5586
;; ----- [p5587]
;; p5587
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5587
;; p5587
;; ----- [p5588]
;; p5588
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5589
;; p5589
;; ----- [p5590]
;; p5590
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5588 p5590
;; p5588
;; p5590
;; ----- [p5591]
;; p5591
;; 
;; Proof. T_PointerType QED
;;; False == False : Bool
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p5593
;; p5593
;; ----- [p5594]
;; p5594
;; 
;; Proof. T_IntegerType QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5595
;; p5595
;; ----- [p5596]
;; p5596
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5596
;; p5596
;; ----- [p5597]
;; p5597
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5598
;; p5598
;; ----- [p5599]
;; p5599
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5597 p5599
;; p5597
;; p5599
;; ----- [p5600]
;; p5600
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ----- [p5601]
;; p5601
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p5600 p5601
;; p5600
;; p5601
;; ----- [p5602]
;; p5602
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p5594 p5602
;; p5594
;; p5602
;; ----- [p5603]
;; p5603
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying T_StructureType p5592 p5603
;; p5592
;; p5603
;; ----- [p5604]
;; p5604
;; 
;; Proof. T_StructureType QED
;;; Verifying MT_Just_Type p5604
;; p5604
;; ----- [p5605]
;; p5605
;; 
;; Proof. Just Type equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5606
;; p5606
;; ----- [p5607]
;; p5607
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5607
;; p5607
;; ----- [p5608]
;; p5608
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5609
;; p5609
;; ----- [p5610]
;; p5610
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5608 p5610
;; p5608
;; p5610
;; ----- [p5611]
;; p5611
;; 
;; Proof. T_PointerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p5612
;; p5612
;; ----- [p5613]
;; p5613
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p5614
;; p5614
;; ----- [p5615]
;; p5615
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p5616
;; p5616
;; ----- [p5617]
;; p5617
;; 
;; Proof. T_IntegerType QED
;;; Verifying Nil_Type 
;; ----- [p5618]
;; p5618
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p5617 p5618
;; p5617
;; p5618
;; ----- [p5619]
;; p5619
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p5615 p5619
;; p5615
;; p5619
;; ----- [p5620]
;; p5620
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p5613 p5620
;; p5613
;; p5620
;; ----- [p5621]
;; p5621
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p5611 p5621
;; p5611
;; p5621
;; ----- [p5622]
;; p5622
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p5591 p5622
;; p5591
;; p5622
;; ----- [p5623]
;; p5623
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p5560 p5623
;; p5560
;; p5623
;; ----- [p5624]
;; p5624
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p5558 p5624
;; p5558
;; p5624
;; ----- [p5625]
;; p5625
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p5556 p5625
;; p5556
;; p5625
;; ----- [p5626]
;; p5626
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying T_StructureType p5554 p5626
;; p5554
;; p5626
;; ----- [p5627]
;; p5627
;; 
;; Proof. T_StructureType QED
;;; Verifying MT_Just_Type p5627
;; p5627
;; ----- [p5628]
;; p5628
;; 
;; Proof. Just Type equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5629
;; p5629
;; ----- [p5630]
;; p5630
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5630
;; p5630
;; ----- [p5631]
;; p5631
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5632
;; p5632
;; ----- [p5633]
;; p5633
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5631 p5633
;; p5631
;; p5633
;; ----- [p5634]
;; p5634
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ----- [p5635]
;; p5635
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p5634 p5635
;; p5634
;; p5635
;; ----- [p5636]
;; p5636
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p5553 p5636 p5637
;; p5553
;; p5636
;; p5637
;; ----- [p5638]
;; p5638
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5639
;; p5639
;; ----- [p5640]
;; p5640
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5638 p5640
;; p5638
;; p5640
;; ----- [p5641]
;; p5641
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5642]
;; p5642
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Internal 
;; ----- [p5643]
;; p5643
;; 
;; Proof. L_Internal QED
;;; Verifying V_Default 
;; ----- [p5644]
;; p5644
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p5645]
;; p5645
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying CC_C 
;; ----- [p5646]
;; p5646
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p5647]
;; p5647
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p5648
;; p5648
;; ----- [p5649]
;; p5649
;; 
;; Proof. T_IntegerType QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5651
;; p5651
;; ----- [p5652]
;; p5652
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5652
;; p5652
;; ----- [p5653]
;; p5653
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5654
;; p5654
;; ----- [p5655]
;; p5655
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5653 p5655
;; p5653
;; p5655
;; ----- [p5656]
;; p5656
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5657
;; p5657
;; ----- [p5658]
;; p5658
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p5659]
;; p5659
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p5656 p5658 p5659
;; p5656
;; p5658
;; p5659
;; ----- [p5660]
;; p5660
;; 
;; Proof. P_Parameter QED
;;; Verifying Nil_Parameter 
;; ----- [p5661]
;; p5661
;; 
;; Proof. [] (Parameter) equivalent QED
;;; Verifying Cons_Parameter p5660 p5661
;; p5660
;; p5661
;; ----- [p5662]
;; p5662
;; 
;; Proof. Cons Parameter equivalent QED
;;; False == False : Bool
;;; Verifying Tup2_List_Parameter_Bool p5662 p5663
;; p5662
;; p5663
;; ----- [p5664]
;; p5664
;; 
;; Proof. Tuple ([Parameter], Bool) equivalent QED
;;; 0 == 0 : Word
;;; Verifying GID_GroupID p5665
;; p5665
;; ----- [p5666]
;; p5666
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p5666
;; p5666
;; ----- [p5667]
;; p5667
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p5668]
;; p5668
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p5667 p5668
;; p5667
;; p5668
;; ----- [p5669]
;; p5669
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5670]
;; p5670
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5671]
;; p5671
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 0 == 0 : Word32
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5673]
;; p5673
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p5674]
;; p5674
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; basic block matching 1-1
;;; 1 == 1 : Word
;;; Verifying N_UnName p5675
;; p5675
;; ----- [p5676]
;; p5676
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5677]
;; p5677
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5678
;; p5678
;; ----- [p5679]
;; p5679
;; 
;; Proof. UnName equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5680
;; p5680
;; ----- [p5681]
;; p5681
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5681
;; p5681
;; ----- [p5682]
;; p5682
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5683
;; p5683
;; ----- [p5684]
;; p5684
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5682 p5684
;; p5682
;; p5684
;; ----- [p5685]
;; p5685
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p5686]
;; p5686
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p5685 p5686 p5687 p5688
;; p5685
;; p5686
;; p5687
;; p5688
;; ----- [p5689]
;; p5689
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p5679 p5689
;; p5679
;; p5689
;; ----- [p5690]
;; p5690
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5691]
;; p5691
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5693
;; p5693
;; ----- [p5694]
;; p5694
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5694
;; p5694
;; ----- [p5695]
;; p5695
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5696
;; p5696
;; ----- [p5697]
;; p5697
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5695 p5697
;; p5695
;; p5697
;; ----- [p5698]
;; p5698
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5699
;; p5699
;; ----- [p5700]
;; p5700
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5698 p5700
;; p5698
;; p5700
;; ----- [p5701]
;; p5701
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5702
;; p5702
;; ----- [p5703]
;; p5703
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5701 p5703
;; p5701
;; p5703
;; ----- [p5704]
;; p5704
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5705
;; p5705
;; ----- [p5706]
;; p5706
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5706
;; p5706
;; ----- [p5707]
;; p5707
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5708
;; p5708
;; ----- [p5709]
;; p5709
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5707 p5709
;; p5707
;; p5709
;; ----- [p5710]
;; p5710
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5711
;; p5711
;; ----- [p5712]
;; p5712
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5710 p5712
;; p5710
;; p5712
;; ----- [p5713]
;; p5713
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p5714]
;; p5714
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p5692 p5704 p5713 p5714 p5715 p5716
;; p5692
;; p5704
;; p5713
;; p5714
;; p5715
;; p5716
;; ----- [p5717]
;; p5717
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p5717
;; p5717
;; ----- [p5718]
;; p5718
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5719]
;; p5719
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5720
;; p5720
;; ----- [p5721]
;; p5721
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5723
;; p5723
;; ----- [p5724]
;; p5724
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5724
;; p5724
;; ----- [p5725]
;; p5725
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5726
;; p5726
;; ----- [p5727]
;; p5727
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5725 p5727
;; p5725
;; p5727
;; ----- [p5728]
;; p5728
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5729
;; p5729
;; ----- [p5730]
;; p5730
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5728 p5730
;; p5728
;; p5730
;; ----- [p5731]
;; p5731
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5732
;; p5732
;; ----- [p5733]
;; p5733
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5731 p5733
;; p5731
;; p5733
;; ----- [p5734]
;; p5734
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p5735]
;; p5735
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p5722 p5734 p5735 p5736 p5737
;; p5722
;; p5734
;; p5735
;; p5736
;; p5737
;; ----- [p5738]
;; p5738
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p5721 p5738
;; p5721
;; p5738
;; ----- [p5739]
;; p5739
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5740]
;; p5740
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5741
;; p5741
;; ----- [p5742]
;; p5742
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5744
;; p5744
;; ----- [p5745]
;; p5745
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5745
;; p5745
;; ----- [p5746]
;; p5746
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5747
;; p5747
;; ----- [p5748]
;; p5748
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5746 p5748
;; p5746
;; p5748
;; ----- [p5749]
;; p5749
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5750
;; p5750
;; ----- [p5751]
;; p5751
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5749 p5751
;; p5749
;; p5751
;; ----- [p5752]
;; p5752
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p5753 p5754
;; p5753
;; p5754
;; ----- [p5755]
;; p5755
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p5755
;; p5755
;; ----- [p5756]
;; p5756
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p5757 p5758
;; p5757
;; p5758
;; ----- [p5759]
;; p5759
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p5759
;; p5759
;; ----- [p5760]
;; p5760
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ----- [p5761]
;; p5761
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p5760 p5761
;; p5760
;; p5761
;; ----- [p5762]
;; p5762
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p5756 p5762
;; p5756
;; p5762
;; ----- [p5763]
;; p5763
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p5743 p5752 p5763 p5764
;; p5743
;; p5752
;; p5763
;; p5764
;; ----- [p5765]
;; p5765
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p5742 p5765
;; p5742
;; p5765
;; ----- [p5766]
;; p5766
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5767]
;; p5767
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5768
;; p5768
;; ----- [p5769]
;; p5769
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p5771
;; p5771
;; ----- [p5772]
;; p5772
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5773
;; p5773
;; ----- [p5774]
;; p5774
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5772 p5774
;; p5772
;; p5774
;; ----- [p5775]
;; p5775
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5776
;; p5776
;; ----- [p5777]
;; p5777
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5775 p5777
;; p5775
;; p5777
;; ----- [p5778]
;; p5778
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p5779]
;; p5779
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p5770 p5778 p5779 p5780 p5781
;; p5770
;; p5778
;; p5779
;; p5780
;; p5781
;; ----- [p5782]
;; p5782
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p5769 p5782
;; p5769
;; p5782
;; ----- [p5783]
;; p5783
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p5784]
;; p5784
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p5783 p5784
;; p5783
;; p5784
;; ----- [p5785]
;; p5785
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5766 p5785
;; p5766
;; p5785
;; ----- [p5786]
;; p5786
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5739 p5786
;; p5739
;; p5786
;; ----- [p5787]
;; p5787
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5718 p5787
;; p5718
;; p5787
;; ----- [p5788]
;; p5788
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5690 p5788
;; p5690
;; p5788
;; ----- [p5789]
;; p5789
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5790]
;; p5790
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p5791
;; p5791
;; ----- [p5792]
;; p5792
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5793
;; p5793
;; ----- [p5794]
;; p5794
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5792 p5794
;; p5792
;; p5794
;; ----- [p5795]
;; p5795
;; 
;; Proof. O_LocalReference QED
;;; Verifying MO_Just_Operand p5795
;; p5795
;; ----- [p5796]
;; p5796
;; 
;; Proof. Just Operand equivalent QED
;;; True == True : Bool
;;; Verifying T_Ret p5796 p5797
;; p5796
;; p5797
;; ----- [p5798]
;; p5798
;; 
;; Proof. T_Ret QED
;;; Verifying NT_Do_Terminator p5798
;; p5798
;; ----- [p5799]
;; p5799
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p5676 p5789 p5799
;; p5676
;; p5789
;; p5799
;; ----- [p5800]
;; p5800
;; 
;; Proof. BB_BasicBlock QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p5802]
;; p5802
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; True == True : Bool
;;; Verifying G_Function p5643 p5644 p5645 p5646 p5647 p5649 p5650 p5664 p5669 p5670 p5671 p5672 p5673 p5674 p5801 p5802 p5803
;; p5643
;; p5644
;; p5645
;; p5646
;; p5647
;; p5649
;; p5650
;; p5664
;; p5669
;; p5670
;; p5671
;; p5672
;; p5673
;; p5674
;; p5801
;; p5802
;; p5803
;; ----- [p5804]
;; p5804
;; 
;; Proof. functions fio_cli_hash_count and fio_cli_hash_count equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5805
;; p5805
;; ----- [p5806]
;; p5806
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p5641 p5806
;; p5641
;; p5806
;; ----- [p5807]
;; p5807
;; 
;; Proof. C_GlobalReference QED
;;; Verifying O_ConstantOperand p5807
;; p5807
;; ----- [p5808]
;; p5808
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying EIAO_Right_InlineAssembly_Operand p5808
;; p5808
;; ----- [p5809]
;; p5809
;; 
;; Proof. Right (InlineAssembly Operand) equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5810
;; p5810
;; ----- [p5811]
;; p5811
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5811
;; p5811
;; ----- [p5812]
;; p5812
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5813
;; p5813
;; ----- [p5814]
;; p5814
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5812 p5814
;; p5812
;; p5814
;; ----- [p5815]
;; p5815
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5816]
;; p5816
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Internal 
;; ----- [p5818]
;; p5818
;; 
;; Proof. L_Internal QED
;;; Verifying V_Default 
;; ----- [p5819]
;; p5819
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p5820]
;; p5820
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying MM_Nothing_Model 
;; ----- [p5821]
;; p5821
;; 
;; Proof. Nothing (Model) equivalent QED
;;; Verifying MUA_Nothing_UnnamedAddr 
;; ----- [p5822]
;; p5822
;; 
;; Proof. Nothing (UnnamedAddr) equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5824
;; p5824
;; ----- [p5825]
;; p5825
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5825
;; p5825
;; ----- [p5826]
;; p5826
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5827
;; p5827
;; ----- [p5828]
;; p5828
;; 
;; Proof. AS_AddrSpace QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5829
;; p5829
;; ----- [p5830]
;; p5830
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5830
;; p5830
;; ----- [p5831]
;; p5831
;; 
;; Proof. T_NamedTypeReference QED
;;; Verifying C_AggregateZero p5831
;; p5831
;; ----- [p5832]
;; p5832
;; 
;; Proof. C_AggregateZero QED
;;; Verifying MC_Just_Constant p5832
;; p5832
;; ----- [p5833]
;; p5833
;; 
;; Proof. Just Constant equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5834]
;; p5834
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5835]
;; p5835
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying G_GlobalVariable p5817 p5818 p5819 p5820 p5821 p5822 p5823 p5826 p5828 p5833 p5834 p5835 p5836 p5837
;; p5817
;; p5818
;; p5819
;; p5820
;; p5821
;; p5822
;; p5823
;; p5826
;; p5828
;; p5833
;; p5834
;; p5835
;; p5836
;; p5837
;; ----- [p5838]
;; p5838
;; 
;; Proof. global variables fio_values and fio_values equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5839
;; p5839
;; ----- [p5840]
;; p5840
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p5815 p5840
;; p5815
;; p5840
;; ----- [p5841]
;; p5841
;; 
;; Proof. C_GlobalReference QED
;;; Verifying O_ConstantOperand p5841
;; p5841
;; ----- [p5842]
;; p5842
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p5843]
;; p5843
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p5842 p5843
;; p5842
;; p5843
;; ----- [p5844]
;; p5844
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Tup2_Operand_List_ParameterAttribute 
;; ----- [p5845]
;; p5845
;; 
;; Proof. [] ((Operand, [ParameterAttribute])) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p5844 p5845
;; p5844
;; p5845
;; ----- [p5846]
;; p5846
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p5847]
;; p5847
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; True == True : Bool
;;; Verifying I_Call p5549 p5550 p5551 p5809 p5846 p5847 p5848
;; p5549
;; p5550
;; p5551
;; p5809
;; p5846
;; p5847
;; p5848
;; ----- [p5849]
;; p5849
;; 
;; Proof. I_Call QED
;;; Verifying NI_infix_Instruction p5548 p5849
;; p5548
;; p5849
;; ----- [p5850]
;; p5850
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5851]
;; p5851
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5852
;; p5852
;; ----- [p5853]
;; p5853
;; 
;; Proof. UnName equivalent QED
;;; Verifying IP_NE 
;; ----- [p5854]
;; p5854
;; 
;; Proof. IP_NE QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p5855
;; p5855
;; ----- [p5856]
;; p5856
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5857
;; p5857
;; ----- [p5858]
;; p5858
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5856 p5858
;; p5856
;; p5858
;; ----- [p5859]
;; p5859
;; 
;; Proof. O_LocalReference QED
;;; 64 == 64 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p5860 p5861
;; p5860
;; p5861
;; ----- [p5862]
;; p5862
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p5862
;; p5862
;; ----- [p5863]
;; p5863
;; 
;; Proof. O_ConstantOperand QED
;;; True == True : Bool
;;; Verifying I_ICmp p5854 p5859 p5863 p5864
;; p5854
;; p5859
;; p5863
;; p5864
;; ----- [p5865]
;; p5865
;; 
;; Proof. I_ICmp QED
;;; Verifying NI_infix_Instruction p5853 p5865
;; p5853
;; p5865
;; ----- [p5866]
;; p5866
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p5867]
;; p5867
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p5866 p5867
;; p5866
;; p5867
;; ----- [p5868]
;; p5868
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5850 p5868
;; p5850
;; p5868
;; ----- [p5869]
;; p5869
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5545 p5869
;; p5545
;; p5869
;; ----- [p5870]
;; p5870
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5513 p5870
;; p5513
;; p5870
;; ----- [p5871]
;; p5871
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5490 p5871
;; p5490
;; p5871
;; ----- [p5872]
;; p5872
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5463 p5872
;; p5463
;; p5872
;; ----- [p5873]
;; p5873
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5437 p5873
;; p5437
;; p5873
;; ----- [p5874]
;; p5874
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5417 p5874
;; p5417
;; p5874
;; ----- [p5875]
;; p5875
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5390 p5875
;; p5390
;; p5875
;; ----- [p5876]
;; p5876
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5358 p5876
;; p5358
;; p5876
;; ----- [p5877]
;; p5877
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5335 p5877
;; p5335
;; p5877
;; ----- [p5878]
;; p5878
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5308 p5878
;; p5308
;; p5878
;; ----- [p5879]
;; p5879
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5288 p5879
;; p5288
;; p5879
;; ----- [p5880]
;; p5880
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5271 p5880
;; p5271
;; p5880
;; ----- [p5881]
;; p5881
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5244 p5881
;; p5244
;; p5881
;; ----- [p5882]
;; p5882
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5225 p5882
;; p5225
;; p5882
;; ----- [p5883]
;; p5883
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5198 p5883
;; p5198
;; p5883
;; ----- [p5884]
;; p5884
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5179 p5884
;; p5179
;; p5884
;; ----- [p5885]
;; p5885
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5152 p5885
;; p5152
;; p5885
;; ----- [p5886]
;; p5886
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5132 p5886
;; p5132
;; p5886
;; ----- [p5887]
;; p5887
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5115 p5887
;; p5115
;; p5887
;; ----- [p5888]
;; p5888
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5088 p5888
;; p5088
;; p5888
;; ----- [p5889]
;; p5889
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5068 p5889
;; p5068
;; p5889
;; ----- [p5890]
;; p5890
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p5051 p5890
;; p5051
;; p5890
;; ----- [p5891]
;; p5891
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5892]
;; p5892
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; Verifying T_IntegerType p5893
;; p5893
;; ----- [p5894]
;; p5894
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5895
;; p5895
;; ----- [p5896]
;; p5896
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p5894 p5896
;; p5894
;; p5896
;; ----- [p5897]
;; p5897
;; 
;; Proof. O_LocalReference QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5898
;; p5898
;; ----- [p5899]
;; p5899
;; 
;; Proof. UnName equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5900
;; p5900
;; ----- [p5901]
;; p5901
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_CondBr p5897 p5899 p5901 p5902
;; p5897
;; p5899
;; p5901
;; p5902
;; ----- [p5903]
;; p5903
;; 
;; Proof. T_CondBr QED
;;; Verifying NT_Do_Terminator p5903
;; p5903
;; ----- [p5904]
;; p5904
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p5024 p5891 p5904
;; p5024
;; p5891
;; p5904
;; ----- [p5905]
;; p5905
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5906
;; p5906
;; ----- [p5907]
;; p5907
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5908]
;; p5908
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ----- [p5909]
;; p5909
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ----- [p5910]
;; p5910
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p5911]
;; p5911
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p5912]
;; p5912
;; 
;; Proof. T_VoidType QED
;;; Verifying Nil_Type 
;; ----- [p5913]
;; p5913
;; 
;; Proof. [] (Type) equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p5912 p5913 p5914
;; p5912
;; p5913
;; p5914
;; ----- [p5915]
;; p5915
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5916
;; p5916
;; ----- [p5917]
;; p5917
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5915 p5917
;; p5915
;; p5917
;; ----- [p5918]
;; p5918
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5919]
;; p5919
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_External 
;; ----- [p5920]
;; p5920
;; 
;; Proof. L_External QED
;;; Verifying V_Default 
;; ----- [p5921]
;; p5921
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p5922]
;; p5922
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying CC_C 
;; ----- [p5923]
;; p5923
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p5924]
;; p5924
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p5925]
;; p5925
;; 
;; Proof. T_VoidType QED
;;; Verifying Nil_Parameter 
;; ----- [p5927]
;; p5927
;; 
;; Proof. [] (Parameter) equivalent QED
;;; False == False : Bool
;;; Verifying Tup2_List_Parameter_Bool p5927 p5928
;; p5927
;; p5928
;; ----- [p5929]
;; p5929
;; 
;; Proof. Tuple ([Parameter], Bool) equivalent QED
;;; 0 == 0 : Word
;;; Verifying GID_GroupID p5930
;; p5930
;; ----- [p5931]
;; p5931
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p5931
;; p5931
;; ----- [p5932]
;; p5932
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p5933]
;; p5933
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p5932 p5933
;; p5932
;; p5933
;; ----- [p5934]
;; p5934
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5935]
;; p5935
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5936]
;; p5936
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 0 == 0 : Word32
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5938]
;; p5938
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p5939]
;; p5939
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; basic block matching 0-0
;;; 1 == 1 : Word
;;; Verifying N_UnName p5940
;; p5940
;; ----- [p5941]
;; p5941
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5942]
;; p5942
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ----- [p5943]
;; p5943
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ----- [p5944]
;; p5944
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p5945]
;; p5945
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p5946]
;; p5946
;; 
;; Proof. T_VoidType QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5947
;; p5947
;; ----- [p5948]
;; p5948
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5948
;; p5948
;; ----- [p5949]
;; p5949
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5950
;; p5950
;; ----- [p5951]
;; p5951
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5949 p5951
;; p5949
;; p5951
;; ----- [p5952]
;; p5952
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ----- [p5953]
;; p5953
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p5952 p5953
;; p5952
;; p5953
;; ----- [p5954]
;; p5954
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p5946 p5954 p5955
;; p5946
;; p5954
;; p5955
;; ----- [p5956]
;; p5956
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5957
;; p5957
;; ----- [p5958]
;; p5958
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5956 p5958
;; p5956
;; p5958
;; ----- [p5959]
;; p5959
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5960]
;; p5960
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Internal 
;; ----- [p5961]
;; p5961
;; 
;; Proof. L_Internal QED
;;; Verifying V_Default 
;; ----- [p5962]
;; p5962
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p5963]
;; p5963
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying CC_C 
;; ----- [p5964]
;; p5964
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p5965]
;; p5965
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p5966]
;; p5966
;; 
;; Proof. T_VoidType QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5968
;; p5968
;; ----- [p5969]
;; p5969
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5969
;; p5969
;; ----- [p5970]
;; p5970
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p5971
;; p5971
;; ----- [p5972]
;; p5972
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5970 p5972
;; p5970
;; p5972
;; ----- [p5973]
;; p5973
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5974
;; p5974
;; ----- [p5975]
;; p5975
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p5976]
;; p5976
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p5973 p5975 p5976
;; p5973
;; p5975
;; p5976
;; ----- [p5977]
;; p5977
;; 
;; Proof. P_Parameter QED
;;; Verifying Nil_Parameter 
;; ----- [p5978]
;; p5978
;; 
;; Proof. [] (Parameter) equivalent QED
;;; Verifying Cons_Parameter p5977 p5978
;; p5977
;; p5978
;; ----- [p5979]
;; p5979
;; 
;; Proof. Cons Parameter equivalent QED
;;; False == False : Bool
;;; Verifying Tup2_List_Parameter_Bool p5979 p5980
;; p5979
;; p5980
;; ----- [p5981]
;; p5981
;; 
;; Proof. Tuple ([Parameter], Bool) equivalent QED
;;; 0 == 0 : Word
;;; Verifying GID_GroupID p5982
;; p5982
;; ----- [p5983]
;; p5983
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p5983
;; p5983
;; ----- [p5984]
;; p5984
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p5985]
;; p5985
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p5984 p5985
;; p5984
;; p5985
;; ----- [p5986]
;; p5986
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5987]
;; p5987
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5988]
;; p5988
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 0 == 0 : Word32
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5990]
;; p5990
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p5991]
;; p5991
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; basic block matching 1-1, 17-17, 23-23, 27-27, 31-31, 39-39, 40-40, 36-36, 37-37, 38-38, 43-43, 44-44
;;; 1 == 1 : Word
;;; Verifying N_UnName p5992
;; p5992
;; ----- [p5993]
;; p5993
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p5994]
;; p5994
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p5995
;; p5995
;; ----- [p5996]
;; p5996
;; 
;; Proof. UnName equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p5997
;; p5997
;; ----- [p5998]
;; p5998
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p5998
;; p5998
;; ----- [p5999]
;; p5999
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6000
;; p6000
;; ----- [p6001]
;; p6001
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p5999 p6001
;; p5999
;; p6001
;; ----- [p6002]
;; p6002
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p6003]
;; p6003
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p6002 p6003 p6004 p6005
;; p6002
;; p6003
;; p6004
;; p6005
;; ----- [p6006]
;; p6006
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p5996 p6006
;; p5996
;; p6006
;; ----- [p6007]
;; p6007
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6008]
;; p6008
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6009
;; p6009
;; ----- [p6010]
;; p6010
;; 
;; Proof. UnName equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6011
;; p6011
;; ----- [p6012]
;; p6012
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6012
;; p6012
;; ----- [p6013]
;; p6013
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6014
;; p6014
;; ----- [p6015]
;; p6015
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6013 p6015
;; p6013
;; p6015
;; ----- [p6016]
;; p6016
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p6017]
;; p6017
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p6016 p6017 p6018 p6019
;; p6016
;; p6017
;; p6018
;; p6019
;; ----- [p6020]
;; p6020
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p6010 p6020
;; p6010
;; p6020
;; ----- [p6021]
;; p6021
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6022]
;; p6022
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6023
;; p6023
;; ----- [p6024]
;; p6024
;; 
;; Proof. UnName equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6025
;; p6025
;; ----- [p6026]
;; p6026
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6026
;; p6026
;; ----- [p6027]
;; p6027
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6028
;; p6028
;; ----- [p6029]
;; p6029
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6027 p6029
;; p6027
;; p6029
;; ----- [p6030]
;; p6030
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p6031]
;; p6031
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p6030 p6031 p6032 p6033
;; p6030
;; p6031
;; p6032
;; p6033
;; ----- [p6034]
;; p6034
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p6024 p6034
;; p6024
;; p6034
;; ----- [p6035]
;; p6035
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6036]
;; p6036
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6037
;; p6037
;; ----- [p6038]
;; p6038
;; 
;; Proof. UnName equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6039
;; p6039
;; ----- [p6040]
;; p6040
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6040
;; p6040
;; ----- [p6041]
;; p6041
;; 
;; Proof. T_NamedTypeReference QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p6042]
;; p6042
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p6041 p6042 p6043 p6044
;; p6041
;; p6042
;; p6043
;; p6044
;; ----- [p6045]
;; p6045
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p6038 p6045
;; p6038
;; p6045
;; ----- [p6046]
;; p6046
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6047]
;; p6047
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6049
;; p6049
;; ----- [p6050]
;; p6050
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6050
;; p6050
;; ----- [p6051]
;; p6051
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6052
;; p6052
;; ----- [p6053]
;; p6053
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6051 p6053
;; p6051
;; p6053
;; ----- [p6054]
;; p6054
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6055
;; p6055
;; ----- [p6056]
;; p6056
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6054 p6056
;; p6054
;; p6056
;; ----- [p6057]
;; p6057
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6058
;; p6058
;; ----- [p6059]
;; p6059
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6057 p6059
;; p6057
;; p6059
;; ----- [p6060]
;; p6060
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6061
;; p6061
;; ----- [p6062]
;; p6062
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6062
;; p6062
;; ----- [p6063]
;; p6063
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6064
;; p6064
;; ----- [p6065]
;; p6065
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6063 p6065
;; p6063
;; p6065
;; ----- [p6066]
;; p6066
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6067
;; p6067
;; ----- [p6068]
;; p6068
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6066 p6068
;; p6066
;; p6068
;; ----- [p6069]
;; p6069
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p6070]
;; p6070
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p6048 p6060 p6069 p6070 p6071 p6072
;; p6048
;; p6060
;; p6069
;; p6070
;; p6071
;; p6072
;; ----- [p6073]
;; p6073
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p6073
;; p6073
;; ----- [p6074]
;; p6074
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6075]
;; p6075
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6076
;; p6076
;; ----- [p6077]
;; p6077
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6079
;; p6079
;; ----- [p6080]
;; p6080
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6080
;; p6080
;; ----- [p6081]
;; p6081
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6082
;; p6082
;; ----- [p6083]
;; p6083
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6081 p6083
;; p6081
;; p6083
;; ----- [p6084]
;; p6084
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6085
;; p6085
;; ----- [p6086]
;; p6086
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6084 p6086
;; p6084
;; p6086
;; ----- [p6087]
;; p6087
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6088
;; p6088
;; ----- [p6089]
;; p6089
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6087 p6089
;; p6087
;; p6089
;; ----- [p6090]
;; p6090
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p6091]
;; p6091
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p6078 p6090 p6091 p6092 p6093
;; p6078
;; p6090
;; p6091
;; p6092
;; p6093
;; ----- [p6094]
;; p6094
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p6077 p6094
;; p6077
;; p6094
;; ----- [p6095]
;; p6095
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6096]
;; p6096
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6097
;; p6097
;; ----- [p6098]
;; p6098
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6100
;; p6100
;; ----- [p6101]
;; p6101
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6101
;; p6101
;; ----- [p6102]
;; p6102
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6103
;; p6103
;; ----- [p6104]
;; p6104
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6102 p6104
;; p6102
;; p6104
;; ----- [p6105]
;; p6105
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6106
;; p6106
;; ----- [p6107]
;; p6107
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6105 p6107
;; p6105
;; p6107
;; ----- [p6108]
;; p6108
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p6109 p6110
;; p6109
;; p6110
;; ----- [p6111]
;; p6111
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p6111
;; p6111
;; ----- [p6112]
;; p6112
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 3 == 3 : Integer
;;; Verifying C_Int p6113 p6114
;; p6113
;; p6114
;; ----- [p6115]
;; p6115
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p6115
;; p6115
;; ----- [p6116]
;; p6116
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ----- [p6117]
;; p6117
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p6116 p6117
;; p6116
;; p6117
;; ----- [p6118]
;; p6118
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p6112 p6118
;; p6112
;; p6118
;; ----- [p6119]
;; p6119
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p6099 p6108 p6119 p6120
;; p6099
;; p6108
;; p6119
;; p6120
;; ----- [p6121]
;; p6121
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p6098 p6121
;; p6098
;; p6121
;; ----- [p6122]
;; p6122
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6123]
;; p6123
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6124
;; p6124
;; ----- [p6125]
;; p6125
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6127
;; p6127
;; ----- [p6128]
;; p6128
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6128
;; p6128
;; ----- [p6129]
;; p6129
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6130
;; p6130
;; ----- [p6131]
;; p6131
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6129 p6131
;; p6129
;; p6131
;; ----- [p6132]
;; p6132
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6133
;; p6133
;; ----- [p6134]
;; p6134
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6132 p6134
;; p6132
;; p6134
;; ----- [p6135]
;; p6135
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6136
;; p6136
;; ----- [p6137]
;; p6137
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6135 p6137
;; p6135
;; p6137
;; ----- [p6138]
;; p6138
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p6139]
;; p6139
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p6126 p6138 p6139 p6140 p6141
;; p6126
;; p6138
;; p6139
;; p6140
;; p6141
;; ----- [p6142]
;; p6142
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p6125 p6142
;; p6125
;; p6142
;; ----- [p6143]
;; p6143
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6144]
;; p6144
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6145
;; p6145
;; ----- [p6146]
;; p6146
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6148
;; p6148
;; ----- [p6149]
;; p6149
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6149
;; p6149
;; ----- [p6150]
;; p6150
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6151
;; p6151
;; ----- [p6152]
;; p6152
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6150 p6152
;; p6150
;; p6152
;; ----- [p6153]
;; p6153
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6154
;; p6154
;; ----- [p6155]
;; p6155
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6153 p6155
;; p6153
;; p6155
;; ----- [p6156]
;; p6156
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6157
;; p6157
;; ----- [p6158]
;; p6158
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6156 p6158
;; p6156
;; p6158
;; ----- [p6159]
;; p6159
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p6160]
;; p6160
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p6147 p6159 p6160 p6161 p6162
;; p6147
;; p6159
;; p6160
;; p6161
;; p6162
;; ----- [p6163]
;; p6163
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p6146 p6163
;; p6146
;; p6163
;; ----- [p6164]
;; p6164
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6165]
;; p6165
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6166
;; p6166
;; ----- [p6167]
;; p6167
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6169
;; p6169
;; ----- [p6170]
;; p6170
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6170
;; p6170
;; ----- [p6171]
;; p6171
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6172
;; p6172
;; ----- [p6173]
;; p6173
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6171 p6173
;; p6171
;; p6173
;; ----- [p6174]
;; p6174
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6175
;; p6175
;; ----- [p6176]
;; p6176
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6174 p6176
;; p6174
;; p6176
;; ----- [p6177]
;; p6177
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p6178 p6179
;; p6178
;; p6179
;; ----- [p6180]
;; p6180
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p6180
;; p6180
;; ----- [p6181]
;; p6181
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 2 == 2 : Integer
;;; Verifying C_Int p6182 p6183
;; p6182
;; p6183
;; ----- [p6184]
;; p6184
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p6184
;; p6184
;; ----- [p6185]
;; p6185
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ----- [p6186]
;; p6186
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p6185 p6186
;; p6185
;; p6186
;; ----- [p6187]
;; p6187
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p6181 p6187
;; p6181
;; p6187
;; ----- [p6188]
;; p6188
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p6168 p6177 p6188 p6189
;; p6168
;; p6177
;; p6188
;; p6189
;; ----- [p6190]
;; p6190
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p6167 p6190
;; p6167
;; p6190
;; ----- [p6191]
;; p6191
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6192]
;; p6192
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6193
;; p6193
;; ----- [p6194]
;; p6194
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p6196
;; p6196
;; ----- [p6197]
;; p6197
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6198
;; p6198
;; ----- [p6199]
;; p6199
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6197 p6199
;; p6197
;; p6199
;; ----- [p6200]
;; p6200
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6201
;; p6201
;; ----- [p6202]
;; p6202
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6200 p6202
;; p6200
;; p6202
;; ----- [p6203]
;; p6203
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p6204]
;; p6204
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p6195 p6203 p6204 p6205 p6206
;; p6195
;; p6203
;; p6204
;; p6205
;; p6206
;; ----- [p6207]
;; p6207
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p6194 p6207
;; p6194
;; p6207
;; ----- [p6208]
;; p6208
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6209]
;; p6209
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6210
;; p6210
;; ----- [p6211]
;; p6211
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6213
;; p6213
;; ----- [p6214]
;; p6214
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6214
;; p6214
;; ----- [p6215]
;; p6215
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6216
;; p6216
;; ----- [p6217]
;; p6217
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6215 p6217
;; p6215
;; p6217
;; ----- [p6218]
;; p6218
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6219
;; p6219
;; ----- [p6220]
;; p6220
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6218 p6220
;; p6218
;; p6220
;; ----- [p6221]
;; p6221
;; 
;; Proof. O_LocalReference QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p6222
;; p6222
;; ----- [p6223]
;; p6223
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6224
;; p6224
;; ----- [p6225]
;; p6225
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6223 p6225
;; p6223
;; p6225
;; ----- [p6226]
;; p6226
;; 
;; Proof. O_LocalReference QED
;;; Verifying Nil_Operand 
;; ----- [p6227]
;; p6227
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p6226 p6227
;; p6226
;; p6227
;; ----- [p6228]
;; p6228
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p6212 p6221 p6228 p6229
;; p6212
;; p6221
;; p6228
;; p6229
;; ----- [p6230]
;; p6230
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p6211 p6230
;; p6211
;; p6230
;; ----- [p6231]
;; p6231
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6232]
;; p6232
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6234
;; p6234
;; ----- [p6235]
;; p6235
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6235
;; p6235
;; ----- [p6236]
;; p6236
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6237
;; p6237
;; ----- [p6238]
;; p6238
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6236 p6238
;; p6236
;; p6238
;; ----- [p6239]
;; p6239
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6240
;; p6240
;; ----- [p6241]
;; p6241
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6239 p6241
;; p6239
;; p6241
;; ----- [p6242]
;; p6242
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6243
;; p6243
;; ----- [p6244]
;; p6244
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6242 p6244
;; p6242
;; p6244
;; ----- [p6245]
;; p6245
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6246
;; p6246
;; ----- [p6247]
;; p6247
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6247
;; p6247
;; ----- [p6248]
;; p6248
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6249
;; p6249
;; ----- [p6250]
;; p6250
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6248 p6250
;; p6248
;; p6250
;; ----- [p6251]
;; p6251
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6252
;; p6252
;; ----- [p6253]
;; p6253
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6251 p6253
;; p6251
;; p6253
;; ----- [p6254]
;; p6254
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p6255]
;; p6255
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p6233 p6245 p6254 p6255 p6256 p6257
;; p6233
;; p6245
;; p6254
;; p6255
;; p6256
;; p6257
;; ----- [p6258]
;; p6258
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p6258
;; p6258
;; ----- [p6259]
;; p6259
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6260]
;; p6260
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6261
;; p6261
;; ----- [p6262]
;; p6262
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6264
;; p6264
;; ----- [p6265]
;; p6265
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6265
;; p6265
;; ----- [p6266]
;; p6266
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6267
;; p6267
;; ----- [p6268]
;; p6268
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6266 p6268
;; p6266
;; p6268
;; ----- [p6269]
;; p6269
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6270
;; p6270
;; ----- [p6271]
;; p6271
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6269 p6271
;; p6269
;; p6271
;; ----- [p6272]
;; p6272
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6273
;; p6273
;; ----- [p6274]
;; p6274
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6272 p6274
;; p6272
;; p6274
;; ----- [p6275]
;; p6275
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p6276]
;; p6276
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p6263 p6275 p6276 p6277 p6278
;; p6263
;; p6275
;; p6276
;; p6277
;; p6278
;; ----- [p6279]
;; p6279
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p6262 p6279
;; p6262
;; p6279
;; ----- [p6280]
;; p6280
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6281]
;; p6281
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6282
;; p6282
;; ----- [p6283]
;; p6283
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6285
;; p6285
;; ----- [p6286]
;; p6286
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6286
;; p6286
;; ----- [p6287]
;; p6287
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6288
;; p6288
;; ----- [p6289]
;; p6289
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6287 p6289
;; p6287
;; p6289
;; ----- [p6290]
;; p6290
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6291
;; p6291
;; ----- [p6292]
;; p6292
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6290 p6292
;; p6290
;; p6292
;; ----- [p6293]
;; p6293
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p6294 p6295
;; p6294
;; p6295
;; ----- [p6296]
;; p6296
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p6296
;; p6296
;; ----- [p6297]
;; p6297
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 3 == 3 : Integer
;;; Verifying C_Int p6298 p6299
;; p6298
;; p6299
;; ----- [p6300]
;; p6300
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p6300
;; p6300
;; ----- [p6301]
;; p6301
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ----- [p6302]
;; p6302
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p6301 p6302
;; p6301
;; p6302
;; ----- [p6303]
;; p6303
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p6297 p6303
;; p6297
;; p6303
;; ----- [p6304]
;; p6304
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p6284 p6293 p6304 p6305
;; p6284
;; p6293
;; p6304
;; p6305
;; ----- [p6306]
;; p6306
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p6283 p6306
;; p6283
;; p6306
;; ----- [p6307]
;; p6307
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6308]
;; p6308
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6309
;; p6309
;; ----- [p6310]
;; p6310
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6312
;; p6312
;; ----- [p6313]
;; p6313
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6313
;; p6313
;; ----- [p6314]
;; p6314
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6315
;; p6315
;; ----- [p6316]
;; p6316
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6314 p6316
;; p6314
;; p6316
;; ----- [p6317]
;; p6317
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6318
;; p6318
;; ----- [p6319]
;; p6319
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6317 p6319
;; p6317
;; p6319
;; ----- [p6320]
;; p6320
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6321
;; p6321
;; ----- [p6322]
;; p6322
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6320 p6322
;; p6320
;; p6322
;; ----- [p6323]
;; p6323
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p6324]
;; p6324
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p6311 p6323 p6324 p6325 p6326
;; p6311
;; p6323
;; p6324
;; p6325
;; p6326
;; ----- [p6327]
;; p6327
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p6310 p6327
;; p6310
;; p6327
;; ----- [p6328]
;; p6328
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6329]
;; p6329
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6330
;; p6330
;; ----- [p6331]
;; p6331
;; 
;; Proof. UnName equivalent QED
;;; Verifying IP_NE 
;; ----- [p6332]
;; p6332
;; 
;; Proof. IP_NE QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6333
;; p6333
;; ----- [p6334]
;; p6334
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6334
;; p6334
;; ----- [p6335]
;; p6335
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6336
;; p6336
;; ----- [p6337]
;; p6337
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6335 p6337
;; p6335
;; p6337
;; ----- [p6338]
;; p6338
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6339
;; p6339
;; ----- [p6340]
;; p6340
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6338 p6340
;; p6338
;; p6340
;; ----- [p6341]
;; p6341
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6342
;; p6342
;; ----- [p6343]
;; p6343
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6343
;; p6343
;; ----- [p6344]
;; p6344
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6345
;; p6345
;; ----- [p6346]
;; p6346
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6344 p6346
;; p6344
;; p6346
;; ----- [p6347]
;; p6347
;; 
;; Proof. T_PointerType QED
;;; Verifying C_Null p6347
;; p6347
;; ----- [p6348]
;; p6348
;; 
;; Proof. C_Null QED
;;; Verifying O_ConstantOperand p6348
;; p6348
;; ----- [p6349]
;; p6349
;; 
;; Proof. O_ConstantOperand QED
;;; True == True : Bool
;;; Verifying I_ICmp p6332 p6341 p6349 p6350
;; p6332
;; p6341
;; p6349
;; p6350
;; ----- [p6351]
;; p6351
;; 
;; Proof. I_ICmp QED
;;; Verifying NI_infix_Instruction p6331 p6351
;; p6331
;; p6351
;; ----- [p6352]
;; p6352
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p6353]
;; p6353
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p6352 p6353
;; p6352
;; p6353
;; ----- [p6354]
;; p6354
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6328 p6354
;; p6328
;; p6354
;; ----- [p6355]
;; p6355
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6307 p6355
;; p6307
;; p6355
;; ----- [p6356]
;; p6356
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6280 p6356
;; p6280
;; p6356
;; ----- [p6357]
;; p6357
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6259 p6357
;; p6259
;; p6357
;; ----- [p6358]
;; p6358
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6231 p6358
;; p6231
;; p6358
;; ----- [p6359]
;; p6359
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6208 p6359
;; p6208
;; p6359
;; ----- [p6360]
;; p6360
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6191 p6360
;; p6191
;; p6360
;; ----- [p6361]
;; p6361
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6164 p6361
;; p6164
;; p6361
;; ----- [p6362]
;; p6362
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6143 p6362
;; p6143
;; p6362
;; ----- [p6363]
;; p6363
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6122 p6363
;; p6122
;; p6363
;; ----- [p6364]
;; p6364
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6095 p6364
;; p6095
;; p6364
;; ----- [p6365]
;; p6365
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6074 p6365
;; p6074
;; p6365
;; ----- [p6366]
;; p6366
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6046 p6366
;; p6046
;; p6366
;; ----- [p6367]
;; p6367
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6035 p6367
;; p6035
;; p6367
;; ----- [p6368]
;; p6368
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6021 p6368
;; p6021
;; p6368
;; ----- [p6369]
;; p6369
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6007 p6369
;; p6007
;; p6369
;; ----- [p6370]
;; p6370
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6371]
;; p6371
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; Verifying T_IntegerType p6372
;; p6372
;; ----- [p6373]
;; p6373
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6374
;; p6374
;; ----- [p6375]
;; p6375
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6373 p6375
;; p6373
;; p6375
;; ----- [p6376]
;; p6376
;; 
;; Proof. O_LocalReference QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6377
;; p6377
;; ----- [p6378]
;; p6378
;; 
;; Proof. UnName equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6379
;; p6379
;; ----- [p6380]
;; p6380
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_CondBr p6376 p6378 p6380 p6381
;; p6376
;; p6378
;; p6380
;; p6381
;; ----- [p6382]
;; p6382
;; 
;; Proof. T_CondBr QED
;;; Verifying NT_Do_Terminator p6382
;; p6382
;; ----- [p6383]
;; p6383
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p5993 p6370 p6383
;; p5993
;; p6370
;; p6383
;; ----- [p6384]
;; p6384
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6385
;; p6385
;; ----- [p6386]
;; p6386
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6387]
;; p6387
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6388
;; p6388
;; ----- [p6389]
;; p6389
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6391
;; p6391
;; ----- [p6392]
;; p6392
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6392
;; p6392
;; ----- [p6393]
;; p6393
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6394
;; p6394
;; ----- [p6395]
;; p6395
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6393 p6395
;; p6393
;; p6395
;; ----- [p6396]
;; p6396
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6397
;; p6397
;; ----- [p6398]
;; p6398
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6396 p6398
;; p6396
;; p6398
;; ----- [p6399]
;; p6399
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6400
;; p6400
;; ----- [p6401]
;; p6401
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6399 p6401
;; p6399
;; p6401
;; ----- [p6402]
;; p6402
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p6403]
;; p6403
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p6390 p6402 p6403 p6404 p6405
;; p6390
;; p6402
;; p6403
;; p6404
;; p6405
;; ----- [p6406]
;; p6406
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p6389 p6406
;; p6389
;; p6406
;; ----- [p6407]
;; p6407
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6408]
;; p6408
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6409
;; p6409
;; ----- [p6410]
;; p6410
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6412
;; p6412
;; ----- [p6413]
;; p6413
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6413
;; p6413
;; ----- [p6414]
;; p6414
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6415
;; p6415
;; ----- [p6416]
;; p6416
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6414 p6416
;; p6414
;; p6416
;; ----- [p6417]
;; p6417
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6418
;; p6418
;; ----- [p6419]
;; p6419
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6417 p6419
;; p6417
;; p6419
;; ----- [p6420]
;; p6420
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p6421 p6422
;; p6421
;; p6422
;; ----- [p6423]
;; p6423
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p6423
;; p6423
;; ----- [p6424]
;; p6424
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 3 == 3 : Integer
;;; Verifying C_Int p6425 p6426
;; p6425
;; p6426
;; ----- [p6427]
;; p6427
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p6427
;; p6427
;; ----- [p6428]
;; p6428
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ----- [p6429]
;; p6429
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p6428 p6429
;; p6428
;; p6429
;; ----- [p6430]
;; p6430
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p6424 p6430
;; p6424
;; p6430
;; ----- [p6431]
;; p6431
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p6411 p6420 p6431 p6432
;; p6411
;; p6420
;; p6431
;; p6432
;; ----- [p6433]
;; p6433
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p6410 p6433
;; p6410
;; p6433
;; ----- [p6434]
;; p6434
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6435]
;; p6435
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6436
;; p6436
;; ----- [p6437]
;; p6437
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6439
;; p6439
;; ----- [p6440]
;; p6440
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6440
;; p6440
;; ----- [p6441]
;; p6441
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6442
;; p6442
;; ----- [p6443]
;; p6443
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6441 p6443
;; p6441
;; p6443
;; ----- [p6444]
;; p6444
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6445
;; p6445
;; ----- [p6446]
;; p6446
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6444 p6446
;; p6444
;; p6446
;; ----- [p6447]
;; p6447
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6448
;; p6448
;; ----- [p6449]
;; p6449
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6447 p6449
;; p6447
;; p6449
;; ----- [p6450]
;; p6450
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p6451]
;; p6451
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p6438 p6450 p6451 p6452 p6453
;; p6438
;; p6450
;; p6451
;; p6452
;; p6453
;; ----- [p6454]
;; p6454
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p6437 p6454
;; p6437
;; p6454
;; ----- [p6455]
;; p6455
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6456]
;; p6456
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6457
;; p6457
;; ----- [p6458]
;; p6458
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6460
;; p6460
;; ----- [p6461]
;; p6461
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6461
;; p6461
;; ----- [p6462]
;; p6462
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6463
;; p6463
;; ----- [p6464]
;; p6464
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6462 p6464
;; p6462
;; p6464
;; ----- [p6465]
;; p6465
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6466
;; p6466
;; ----- [p6467]
;; p6467
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6465 p6467
;; p6465
;; p6467
;; ----- [p6468]
;; p6468
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6469
;; p6469
;; ----- [p6470]
;; p6470
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6468 p6470
;; p6468
;; p6470
;; ----- [p6471]
;; p6471
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p6472]
;; p6472
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p6459 p6471 p6472 p6473 p6474
;; p6459
;; p6471
;; p6472
;; p6473
;; p6474
;; ----- [p6475]
;; p6475
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p6458 p6475
;; p6458
;; p6475
;; ----- [p6476]
;; p6476
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6477]
;; p6477
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6478
;; p6478
;; ----- [p6479]
;; p6479
;; 
;; Proof. UnName equivalent QED
;;; Verifying IP_NE 
;; ----- [p6480]
;; p6480
;; 
;; Proof. IP_NE QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6481
;; p6481
;; ----- [p6482]
;; p6482
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6482
;; p6482
;; ----- [p6483]
;; p6483
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6484
;; p6484
;; ----- [p6485]
;; p6485
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6483 p6485
;; p6483
;; p6485
;; ----- [p6486]
;; p6486
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6487
;; p6487
;; ----- [p6488]
;; p6488
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6486 p6488
;; p6486
;; p6488
;; ----- [p6489]
;; p6489
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6490
;; p6490
;; ----- [p6491]
;; p6491
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6491
;; p6491
;; ----- [p6492]
;; p6492
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6493
;; p6493
;; ----- [p6494]
;; p6494
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6492 p6494
;; p6492
;; p6494
;; ----- [p6495]
;; p6495
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6496
;; p6496
;; ----- [p6497]
;; p6497
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6495 p6497
;; p6495
;; p6497
;; ----- [p6498]
;; p6498
;; 
;; Proof. O_LocalReference QED
;;; True == True : Bool
;;; Verifying I_ICmp p6480 p6489 p6498 p6499
;; p6480
;; p6489
;; p6498
;; p6499
;; ----- [p6500]
;; p6500
;; 
;; Proof. I_ICmp QED
;;; Verifying NI_infix_Instruction p6479 p6500
;; p6479
;; p6500
;; ----- [p6501]
;; p6501
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p6502]
;; p6502
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p6501 p6502
;; p6501
;; p6502
;; ----- [p6503]
;; p6503
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6476 p6503
;; p6476
;; p6503
;; ----- [p6504]
;; p6504
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6455 p6504
;; p6455
;; p6504
;; ----- [p6505]
;; p6505
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6434 p6505
;; p6434
;; p6505
;; ----- [p6506]
;; p6506
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6407 p6506
;; p6407
;; p6506
;; ----- [p6507]
;; p6507
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6508]
;; p6508
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; Verifying T_IntegerType p6509
;; p6509
;; ----- [p6510]
;; p6510
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6511
;; p6511
;; ----- [p6512]
;; p6512
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6510 p6512
;; p6510
;; p6512
;; ----- [p6513]
;; p6513
;; 
;; Proof. O_LocalReference QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6514
;; p6514
;; ----- [p6515]
;; p6515
;; 
;; Proof. UnName equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6516
;; p6516
;; ----- [p6517]
;; p6517
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_CondBr p6513 p6515 p6517 p6518
;; p6513
;; p6515
;; p6517
;; p6518
;; ----- [p6519]
;; p6519
;; 
;; Proof. T_CondBr QED
;;; Verifying NT_Do_Terminator p6519
;; p6519
;; ----- [p6520]
;; p6520
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p6386 p6507 p6520
;; p6386
;; p6507
;; p6520
;; ----- [p6521]
;; p6521
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6522
;; p6522
;; ----- [p6523]
;; p6523
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6524]
;; p6524
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6525
;; p6525
;; ----- [p6526]
;; p6526
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6528
;; p6528
;; ----- [p6529]
;; p6529
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6529
;; p6529
;; ----- [p6530]
;; p6530
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6531
;; p6531
;; ----- [p6532]
;; p6532
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6530 p6532
;; p6530
;; p6532
;; ----- [p6533]
;; p6533
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6534
;; p6534
;; ----- [p6535]
;; p6535
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6533 p6535
;; p6533
;; p6535
;; ----- [p6536]
;; p6536
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6537
;; p6537
;; ----- [p6538]
;; p6538
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6536 p6538
;; p6536
;; p6538
;; ----- [p6539]
;; p6539
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p6540]
;; p6540
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p6527 p6539 p6540 p6541 p6542
;; p6527
;; p6539
;; p6540
;; p6541
;; p6542
;; ----- [p6543]
;; p6543
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p6526 p6543
;; p6526
;; p6543
;; ----- [p6544]
;; p6544
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6545]
;; p6545
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6546
;; p6546
;; ----- [p6547]
;; p6547
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6549
;; p6549
;; ----- [p6550]
;; p6550
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6550
;; p6550
;; ----- [p6551]
;; p6551
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6552
;; p6552
;; ----- [p6553]
;; p6553
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6551 p6553
;; p6551
;; p6553
;; ----- [p6554]
;; p6554
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6555
;; p6555
;; ----- [p6556]
;; p6556
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6554 p6556
;; p6554
;; p6556
;; ----- [p6557]
;; p6557
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p6558 p6559
;; p6558
;; p6559
;; ----- [p6560]
;; p6560
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p6560
;; p6560
;; ----- [p6561]
;; p6561
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 3 == 3 : Integer
;;; Verifying C_Int p6562 p6563
;; p6562
;; p6563
;; ----- [p6564]
;; p6564
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p6564
;; p6564
;; ----- [p6565]
;; p6565
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ----- [p6566]
;; p6566
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p6565 p6566
;; p6565
;; p6566
;; ----- [p6567]
;; p6567
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p6561 p6567
;; p6561
;; p6567
;; ----- [p6568]
;; p6568
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p6548 p6557 p6568 p6569
;; p6548
;; p6557
;; p6568
;; p6569
;; ----- [p6570]
;; p6570
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p6547 p6570
;; p6547
;; p6570
;; ----- [p6571]
;; p6571
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6572]
;; p6572
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6573
;; p6573
;; ----- [p6574]
;; p6574
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6576
;; p6576
;; ----- [p6577]
;; p6577
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6577
;; p6577
;; ----- [p6578]
;; p6578
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6579
;; p6579
;; ----- [p6580]
;; p6580
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6578 p6580
;; p6578
;; p6580
;; ----- [p6581]
;; p6581
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6582
;; p6582
;; ----- [p6583]
;; p6583
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6581 p6583
;; p6581
;; p6583
;; ----- [p6584]
;; p6584
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6585
;; p6585
;; ----- [p6586]
;; p6586
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6584 p6586
;; p6584
;; p6586
;; ----- [p6587]
;; p6587
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p6588]
;; p6588
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p6575 p6587 p6588 p6589 p6590
;; p6575
;; p6587
;; p6588
;; p6589
;; p6590
;; ----- [p6591]
;; p6591
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p6574 p6591
;; p6574
;; p6591
;; ----- [p6592]
;; p6592
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6593]
;; p6593
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6595
;; p6595
;; ----- [p6596]
;; p6596
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6596
;; p6596
;; ----- [p6597]
;; p6597
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6598
;; p6598
;; ----- [p6599]
;; p6599
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6597 p6599
;; p6597
;; p6599
;; ----- [p6600]
;; p6600
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6601
;; p6601
;; ----- [p6602]
;; p6602
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6600 p6602
;; p6600
;; p6602
;; ----- [p6603]
;; p6603
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6604
;; p6604
;; ----- [p6605]
;; p6605
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6603 p6605
;; p6603
;; p6605
;; ----- [p6606]
;; p6606
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6607
;; p6607
;; ----- [p6608]
;; p6608
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6608
;; p6608
;; ----- [p6609]
;; p6609
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6610
;; p6610
;; ----- [p6611]
;; p6611
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6609 p6611
;; p6609
;; p6611
;; ----- [p6612]
;; p6612
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6613
;; p6613
;; ----- [p6614]
;; p6614
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6612 p6614
;; p6612
;; p6614
;; ----- [p6615]
;; p6615
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p6616]
;; p6616
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p6594 p6606 p6615 p6616 p6617 p6618
;; p6594
;; p6606
;; p6615
;; p6616
;; p6617
;; p6618
;; ----- [p6619]
;; p6619
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p6619
;; p6619
;; ----- [p6620]
;; p6620
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p6621]
;; p6621
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p6620 p6621
;; p6620
;; p6621
;; ----- [p6622]
;; p6622
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6592 p6622
;; p6592
;; p6622
;; ----- [p6623]
;; p6623
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6571 p6623
;; p6571
;; p6623
;; ----- [p6624]
;; p6624
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6544 p6624
;; p6544
;; p6624
;; ----- [p6625]
;; p6625
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6626]
;; p6626
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6627
;; p6627
;; ----- [p6628]
;; p6628
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_Br p6628 p6629
;; p6628
;; p6629
;; ----- [p6630]
;; p6630
;; 
;; Proof. T_Br QED
;;; Verifying NT_Do_Terminator p6630
;; p6630
;; ----- [p6631]
;; p6631
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p6523 p6625 p6631
;; p6523
;; p6625
;; p6631
;; ----- [p6632]
;; p6632
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6633
;; p6633
;; ----- [p6634]
;; p6634
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6635]
;; p6635
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6636
;; p6636
;; ----- [p6637]
;; p6637
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6639
;; p6639
;; ----- [p6640]
;; p6640
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6640
;; p6640
;; ----- [p6641]
;; p6641
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6642
;; p6642
;; ----- [p6643]
;; p6643
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6641 p6643
;; p6641
;; p6643
;; ----- [p6644]
;; p6644
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6645
;; p6645
;; ----- [p6646]
;; p6646
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6644 p6646
;; p6644
;; p6646
;; ----- [p6647]
;; p6647
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6648
;; p6648
;; ----- [p6649]
;; p6649
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6647 p6649
;; p6647
;; p6649
;; ----- [p6650]
;; p6650
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p6651]
;; p6651
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p6638 p6650 p6651 p6652 p6653
;; p6638
;; p6650
;; p6651
;; p6652
;; p6653
;; ----- [p6654]
;; p6654
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p6637 p6654
;; p6637
;; p6654
;; ----- [p6655]
;; p6655
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6656]
;; p6656
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6657
;; p6657
;; ----- [p6658]
;; p6658
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6660
;; p6660
;; ----- [p6661]
;; p6661
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6661
;; p6661
;; ----- [p6662]
;; p6662
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6663
;; p6663
;; ----- [p6664]
;; p6664
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6662 p6664
;; p6662
;; p6664
;; ----- [p6665]
;; p6665
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6666
;; p6666
;; ----- [p6667]
;; p6667
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6665 p6667
;; p6665
;; p6667
;; ----- [p6668]
;; p6668
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6669
;; p6669
;; ----- [p6670]
;; p6670
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6668 p6670
;; p6668
;; p6670
;; ----- [p6671]
;; p6671
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p6672]
;; p6672
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p6659 p6671 p6672 p6673 p6674
;; p6659
;; p6671
;; p6672
;; p6673
;; p6674
;; ----- [p6675]
;; p6675
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p6658 p6675
;; p6658
;; p6675
;; ----- [p6676]
;; p6676
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6677]
;; p6677
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6678
;; p6678
;; ----- [p6679]
;; p6679
;; 
;; Proof. UnName equivalent QED
;;; Verifying IP_ULT 
;; ----- [p6680]
;; p6680
;; 
;; Proof. IP_ULT QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6681
;; p6681
;; ----- [p6682]
;; p6682
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6682
;; p6682
;; ----- [p6683]
;; p6683
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6684
;; p6684
;; ----- [p6685]
;; p6685
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6683 p6685
;; p6683
;; p6685
;; ----- [p6686]
;; p6686
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6687
;; p6687
;; ----- [p6688]
;; p6688
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6686 p6688
;; p6686
;; p6688
;; ----- [p6689]
;; p6689
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6690
;; p6690
;; ----- [p6691]
;; p6691
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6691
;; p6691
;; ----- [p6692]
;; p6692
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6693
;; p6693
;; ----- [p6694]
;; p6694
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6692 p6694
;; p6692
;; p6694
;; ----- [p6695]
;; p6695
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6696
;; p6696
;; ----- [p6697]
;; p6697
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6695 p6697
;; p6695
;; p6697
;; ----- [p6698]
;; p6698
;; 
;; Proof. O_LocalReference QED
;;; True == True : Bool
;;; Verifying I_ICmp p6680 p6689 p6698 p6699
;; p6680
;; p6689
;; p6698
;; p6699
;; ----- [p6700]
;; p6700
;; 
;; Proof. I_ICmp QED
;;; Verifying NI_infix_Instruction p6679 p6700
;; p6679
;; p6700
;; ----- [p6701]
;; p6701
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p6702]
;; p6702
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p6701 p6702
;; p6701
;; p6702
;; ----- [p6703]
;; p6703
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6676 p6703
;; p6676
;; p6703
;; ----- [p6704]
;; p6704
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6655 p6704
;; p6655
;; p6704
;; ----- [p6705]
;; p6705
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6706]
;; p6706
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; Verifying T_IntegerType p6707
;; p6707
;; ----- [p6708]
;; p6708
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6709
;; p6709
;; ----- [p6710]
;; p6710
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6708 p6710
;; p6708
;; p6710
;; ----- [p6711]
;; p6711
;; 
;; Proof. O_LocalReference QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6712
;; p6712
;; ----- [p6713]
;; p6713
;; 
;; Proof. UnName equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6714
;; p6714
;; ----- [p6715]
;; p6715
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_CondBr p6711 p6713 p6715 p6716
;; p6711
;; p6713
;; p6715
;; p6716
;; ----- [p6717]
;; p6717
;; 
;; Proof. T_CondBr QED
;;; Verifying NT_Do_Terminator p6717
;; p6717
;; ----- [p6718]
;; p6718
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p6634 p6705 p6718
;; p6634
;; p6705
;; p6718
;; ----- [p6719]
;; p6719
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6720
;; p6720
;; ----- [p6721]
;; p6721
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6722]
;; p6722
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6723
;; p6723
;; ----- [p6724]
;; p6724
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6726
;; p6726
;; ----- [p6727]
;; p6727
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6727
;; p6727
;; ----- [p6728]
;; p6728
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6729
;; p6729
;; ----- [p6730]
;; p6730
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6728 p6730
;; p6728
;; p6730
;; ----- [p6731]
;; p6731
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6732
;; p6732
;; ----- [p6733]
;; p6733
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6731 p6733
;; p6731
;; p6733
;; ----- [p6734]
;; p6734
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6735
;; p6735
;; ----- [p6736]
;; p6736
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6734 p6736
;; p6734
;; p6736
;; ----- [p6737]
;; p6737
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p6738]
;; p6738
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p6725 p6737 p6738 p6739 p6740
;; p6725
;; p6737
;; p6738
;; p6739
;; p6740
;; ----- [p6741]
;; p6741
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p6724 p6741
;; p6724
;; p6741
;; ----- [p6742]
;; p6742
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6743]
;; p6743
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6744
;; p6744
;; ----- [p6745]
;; p6745
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6747
;; p6747
;; ----- [p6748]
;; p6748
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6748
;; p6748
;; ----- [p6749]
;; p6749
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6750
;; p6750
;; ----- [p6751]
;; p6751
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6749 p6751
;; p6749
;; p6751
;; ----- [p6752]
;; p6752
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6753
;; p6753
;; ----- [p6754]
;; p6754
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6752 p6754
;; p6752
;; p6754
;; ----- [p6755]
;; p6755
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p6756 p6757
;; p6756
;; p6757
;; ----- [p6758]
;; p6758
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p6758
;; p6758
;; ----- [p6759]
;; p6759
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p6760 p6761
;; p6760
;; p6761
;; ----- [p6762]
;; p6762
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p6762
;; p6762
;; ----- [p6763]
;; p6763
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ----- [p6764]
;; p6764
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p6763 p6764
;; p6763
;; p6764
;; ----- [p6765]
;; p6765
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p6759 p6765
;; p6759
;; p6765
;; ----- [p6766]
;; p6766
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p6746 p6755 p6766 p6767
;; p6746
;; p6755
;; p6766
;; p6767
;; ----- [p6768]
;; p6768
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p6745 p6768
;; p6745
;; p6768
;; ----- [p6769]
;; p6769
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6770]
;; p6770
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6771
;; p6771
;; ----- [p6772]
;; p6772
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p6774
;; p6774
;; ----- [p6775]
;; p6775
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6776
;; p6776
;; ----- [p6777]
;; p6777
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6775 p6777
;; p6775
;; p6777
;; ----- [p6778]
;; p6778
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6779
;; p6779
;; ----- [p6780]
;; p6780
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6778 p6780
;; p6778
;; p6780
;; ----- [p6781]
;; p6781
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p6782]
;; p6782
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p6773 p6781 p6782 p6783 p6784
;; p6773
;; p6781
;; p6782
;; p6783
;; p6784
;; ----- [p6785]
;; p6785
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p6772 p6785
;; p6772
;; p6785
;; ----- [p6786]
;; p6786
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6787]
;; p6787
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6788
;; p6788
;; ----- [p6789]
;; p6789
;; 
;; Proof. UnName equivalent QED
;;; Verifying IP_EQ 
;; ----- [p6790]
;; p6790
;; 
;; Proof. IP_EQ QED
;;; 64 == 64 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p6791 p6792
;; p6791
;; p6792
;; ----- [p6793]
;; p6793
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p6793
;; p6793
;; ----- [p6794]
;; p6794
;; 
;; Proof. O_ConstantOperand QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p6795
;; p6795
;; ----- [p6796]
;; p6796
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6797
;; p6797
;; ----- [p6798]
;; p6798
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6796 p6798
;; p6796
;; p6798
;; ----- [p6799]
;; p6799
;; 
;; Proof. O_LocalReference QED
;;; True == True : Bool
;;; Verifying I_ICmp p6790 p6794 p6799 p6800
;; p6790
;; p6794
;; p6799
;; p6800
;; ----- [p6801]
;; p6801
;; 
;; Proof. I_ICmp QED
;;; Verifying NI_infix_Instruction p6789 p6801
;; p6789
;; p6801
;; ----- [p6802]
;; p6802
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p6803]
;; p6803
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p6802 p6803
;; p6802
;; p6803
;; ----- [p6804]
;; p6804
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6786 p6804
;; p6786
;; p6804
;; ----- [p6805]
;; p6805
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6769 p6805
;; p6769
;; p6805
;; ----- [p6806]
;; p6806
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6742 p6806
;; p6742
;; p6806
;; ----- [p6807]
;; p6807
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6808]
;; p6808
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; Verifying T_IntegerType p6809
;; p6809
;; ----- [p6810]
;; p6810
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6811
;; p6811
;; ----- [p6812]
;; p6812
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6810 p6812
;; p6810
;; p6812
;; ----- [p6813]
;; p6813
;; 
;; Proof. O_LocalReference QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6814
;; p6814
;; ----- [p6815]
;; p6815
;; 
;; Proof. UnName equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6816
;; p6816
;; ----- [p6817]
;; p6817
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_CondBr p6813 p6815 p6817 p6818
;; p6813
;; p6815
;; p6817
;; p6818
;; ----- [p6819]
;; p6819
;; 
;; Proof. T_CondBr QED
;;; Verifying NT_Do_Terminator p6819
;; p6819
;; ----- [p6820]
;; p6820
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p6721 p6807 p6820
;; p6721
;; p6807
;; p6820
;; ----- [p6821]
;; p6821
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6822
;; p6822
;; ----- [p6823]
;; p6823
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p6824]
;; p6824
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6825]
;; p6825
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6826
;; p6826
;; ----- [p6827]
;; p6827
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_Br p6827 p6828
;; p6827
;; p6828
;; ----- [p6829]
;; p6829
;; 
;; Proof. T_Br QED
;;; Verifying NT_Do_Terminator p6829
;; p6829
;; ----- [p6830]
;; p6830
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p6823 p6824 p6830
;; p6823
;; p6824
;; p6830
;; ----- [p6831]
;; p6831
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6832
;; p6832
;; ----- [p6833]
;; p6833
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6834]
;; p6834
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6835
;; p6835
;; ----- [p6836]
;; p6836
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6838
;; p6838
;; ----- [p6839]
;; p6839
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6839
;; p6839
;; ----- [p6840]
;; p6840
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6841
;; p6841
;; ----- [p6842]
;; p6842
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6840 p6842
;; p6840
;; p6842
;; ----- [p6843]
;; p6843
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6844
;; p6844
;; ----- [p6845]
;; p6845
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6843 p6845
;; p6843
;; p6845
;; ----- [p6846]
;; p6846
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6847
;; p6847
;; ----- [p6848]
;; p6848
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6846 p6848
;; p6846
;; p6848
;; ----- [p6849]
;; p6849
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p6850]
;; p6850
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p6837 p6849 p6850 p6851 p6852
;; p6837
;; p6849
;; p6850
;; p6851
;; p6852
;; ----- [p6853]
;; p6853
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p6836 p6853
;; p6836
;; p6853
;; ----- [p6854]
;; p6854
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6855]
;; p6855
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6856
;; p6856
;; ----- [p6857]
;; p6857
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6859
;; p6859
;; ----- [p6860]
;; p6860
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6860
;; p6860
;; ----- [p6861]
;; p6861
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6862
;; p6862
;; ----- [p6863]
;; p6863
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6861 p6863
;; p6861
;; p6863
;; ----- [p6864]
;; p6864
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6865
;; p6865
;; ----- [p6866]
;; p6866
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6864 p6866
;; p6864
;; p6866
;; ----- [p6867]
;; p6867
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 1 == 1 : Integer
;;; Verifying C_Int p6868 p6869
;; p6868
;; p6869
;; ----- [p6870]
;; p6870
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p6870
;; p6870
;; ----- [p6871]
;; p6871
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ----- [p6872]
;; p6872
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p6871 p6872
;; p6871
;; p6872
;; ----- [p6873]
;; p6873
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p6858 p6867 p6873 p6874
;; p6858
;; p6867
;; p6873
;; p6874
;; ----- [p6875]
;; p6875
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p6857 p6875
;; p6857
;; p6875
;; ----- [p6876]
;; p6876
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6877]
;; p6877
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6879
;; p6879
;; ----- [p6880]
;; p6880
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6880
;; p6880
;; ----- [p6881]
;; p6881
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6882
;; p6882
;; ----- [p6883]
;; p6883
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6881 p6883
;; p6881
;; p6883
;; ----- [p6884]
;; p6884
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6885
;; p6885
;; ----- [p6886]
;; p6886
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6884 p6886
;; p6884
;; p6886
;; ----- [p6887]
;; p6887
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6888
;; p6888
;; ----- [p6889]
;; p6889
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6887 p6889
;; p6887
;; p6889
;; ----- [p6890]
;; p6890
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6891
;; p6891
;; ----- [p6892]
;; p6892
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6892
;; p6892
;; ----- [p6893]
;; p6893
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6894
;; p6894
;; ----- [p6895]
;; p6895
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6893 p6895
;; p6893
;; p6895
;; ----- [p6896]
;; p6896
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6897
;; p6897
;; ----- [p6898]
;; p6898
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6896 p6898
;; p6896
;; p6898
;; ----- [p6899]
;; p6899
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p6900]
;; p6900
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p6878 p6890 p6899 p6900 p6901 p6902
;; p6878
;; p6890
;; p6899
;; p6900
;; p6901
;; p6902
;; ----- [p6903]
;; p6903
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p6903
;; p6903
;; ----- [p6904]
;; p6904
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p6905]
;; p6905
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p6904 p6905
;; p6904
;; p6905
;; ----- [p6906]
;; p6906
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6876 p6906
;; p6876
;; p6906
;; ----- [p6907]
;; p6907
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p6854 p6907
;; p6854
;; p6907
;; ----- [p6908]
;; p6908
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6909]
;; p6909
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6910
;; p6910
;; ----- [p6911]
;; p6911
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_Br p6911 p6912
;; p6911
;; p6912
;; ----- [p6913]
;; p6913
;; 
;; Proof. T_Br QED
;;; Verifying NT_Do_Terminator p6913
;; p6913
;; ----- [p6914]
;; p6914
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p6833 p6908 p6914
;; p6833
;; p6908
;; p6914
;; ----- [p6915]
;; p6915
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6916
;; p6916
;; ----- [p6917]
;; p6917
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p6918]
;; p6918
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6919]
;; p6919
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6920
;; p6920
;; ----- [p6921]
;; p6921
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_Br p6921 p6922
;; p6921
;; p6922
;; ----- [p6923]
;; p6923
;; 
;; Proof. T_Br QED
;;; Verifying NT_Do_Terminator p6923
;; p6923
;; ----- [p6924]
;; p6924
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p6917 p6918 p6924
;; p6917
;; p6918
;; p6924
;; ----- [p6925]
;; p6925
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6926
;; p6926
;; ----- [p6927]
;; p6927
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p6928]
;; p6928
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6929]
;; p6929
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6930
;; p6930
;; ----- [p6931]
;; p6931
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_Br p6931 p6932
;; p6931
;; p6932
;; ----- [p6933]
;; p6933
;; 
;; Proof. T_Br QED
;;; Verifying NT_Do_Terminator p6933
;; p6933
;; ----- [p6934]
;; p6934
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p6927 p6928 p6934
;; p6927
;; p6928
;; p6934
;; ----- [p6935]
;; p6935
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6936
;; p6936
;; ----- [p6937]
;; p6937
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p6938]
;; p6938
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6939]
;; p6939
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6940
;; p6940
;; ----- [p6941]
;; p6941
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_Br p6941 p6942
;; p6941
;; p6942
;; ----- [p6943]
;; p6943
;; 
;; Proof. T_Br QED
;;; Verifying NT_Do_Terminator p6943
;; p6943
;; ----- [p6944]
;; p6944
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p6937 p6938 p6944
;; p6937
;; p6938
;; p6944
;; ----- [p6945]
;; p6945
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6946
;; p6946
;; ----- [p6947]
;; p6947
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p6948]
;; p6948
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6949]
;; p6949
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6950
;; p6950
;; ----- [p6951]
;; p6951
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_Br p6951 p6952
;; p6951
;; p6952
;; ----- [p6953]
;; p6953
;; 
;; Proof. T_Br QED
;;; Verifying NT_Do_Terminator p6953
;; p6953
;; ----- [p6954]
;; p6954
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p6947 p6948 p6954
;; p6947
;; p6948
;; p6954
;; ----- [p6955]
;; p6955
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6956
;; p6956
;; ----- [p6957]
;; p6957
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6958]
;; p6958
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6959
;; p6959
;; ----- [p6960]
;; p6960
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6962
;; p6962
;; ----- [p6963]
;; p6963
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6963
;; p6963
;; ----- [p6964]
;; p6964
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6965
;; p6965
;; ----- [p6966]
;; p6966
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6964 p6966
;; p6964
;; p6966
;; ----- [p6967]
;; p6967
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6968
;; p6968
;; ----- [p6969]
;; p6969
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6967 p6969
;; p6967
;; p6969
;; ----- [p6970]
;; p6970
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6971
;; p6971
;; ----- [p6972]
;; p6972
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6970 p6972
;; p6970
;; p6972
;; ----- [p6973]
;; p6973
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p6974]
;; p6974
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p6961 p6973 p6974 p6975 p6976
;; p6961
;; p6973
;; p6974
;; p6975
;; p6976
;; ----- [p6977]
;; p6977
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p6960 p6977
;; p6960
;; p6977
;; ----- [p6978]
;; p6978
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p6979]
;; p6979
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6980
;; p6980
;; ----- [p6981]
;; p6981
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p6983
;; p6983
;; ----- [p6984]
;; p6984
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p6984
;; p6984
;; ----- [p6985]
;; p6985
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p6986
;; p6986
;; ----- [p6987]
;; p6987
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p6985 p6987
;; p6985
;; p6987
;; ----- [p6988]
;; p6988
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p6989
;; p6989
;; ----- [p6990]
;; p6990
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p6988 p6990
;; p6988
;; p6990
;; ----- [p6991]
;; p6991
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p6992 p6993
;; p6992
;; p6993
;; ----- [p6994]
;; p6994
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p6994
;; p6994
;; ----- [p6995]
;; p6995
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 4 == 4 : Integer
;;; Verifying C_Int p6996 p6997
;; p6996
;; p6997
;; ----- [p6998]
;; p6998
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p6998
;; p6998
;; ----- [p6999]
;; p6999
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ----- [p7000]
;; p7000
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p6999 p7000
;; p6999
;; p7000
;; ----- [p7001]
;; p7001
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p6995 p7001
;; p6995
;; p7001
;; ----- [p7002]
;; p7002
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p6982 p6991 p7002 p7003
;; p6982
;; p6991
;; p7002
;; p7003
;; ----- [p7004]
;; p7004
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p6981 p7004
;; p6981
;; p7004
;; ----- [p7005]
;; p7005
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7006]
;; p7006
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7007
;; p7007
;; ----- [p7008]
;; p7008
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p7010
;; p7010
;; ----- [p7011]
;; p7011
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p7011
;; p7011
;; ----- [p7012]
;; p7012
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7013
;; p7013
;; ----- [p7014]
;; p7014
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7012 p7014
;; p7012
;; p7014
;; ----- [p7015]
;; p7015
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7016
;; p7016
;; ----- [p7017]
;; p7017
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7015 p7017
;; p7015
;; p7017
;; ----- [p7018]
;; p7018
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7019
;; p7019
;; ----- [p7020]
;; p7020
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7018 p7020
;; p7018
;; p7020
;; ----- [p7021]
;; p7021
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p7022]
;; p7022
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p7009 p7021 p7022 p7023 p7024
;; p7009
;; p7021
;; p7022
;; p7023
;; p7024
;; ----- [p7025]
;; p7025
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p7008 p7025
;; p7008
;; p7025
;; ----- [p7026]
;; p7026
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7027]
;; p7027
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7028
;; p7028
;; ----- [p7029]
;; p7029
;; 
;; Proof. UnName equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p7030
;; p7030
;; ----- [p7031]
;; p7031
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p7031
;; p7031
;; ----- [p7032]
;; p7032
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7033
;; p7033
;; ----- [p7034]
;; p7034
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7032 p7034
;; p7032
;; p7034
;; ----- [p7035]
;; p7035
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7036
;; p7036
;; ----- [p7037]
;; p7037
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7035 p7037
;; p7035
;; p7037
;; ----- [p7038]
;; p7038
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7039
;; p7039
;; ----- [p7040]
;; p7040
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7041
;; p7041
;; ----- [p7042]
;; p7042
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7040 p7042
;; p7040
;; p7042
;; ----- [p7043]
;; p7043
;; 
;; Proof. T_PointerType QED
;;; True == True : Bool
;;; Verifying I_BitCast p7038 p7043 p7044
;; p7038
;; p7043
;; p7044
;; ----- [p7045]
;; p7045
;; 
;; Proof. I_BitCast QED
;;; Verifying NI_infix_Instruction p7029 p7045
;; p7029
;; p7045
;; ----- [p7046]
;; p7046
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7047]
;; p7047
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ----- [p7048]
;; p7048
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ----- [p7049]
;; p7049
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p7050]
;; p7050
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p7051]
;; p7051
;; 
;; Proof. T_VoidType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7052
;; p7052
;; ----- [p7053]
;; p7053
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7054
;; p7054
;; ----- [p7055]
;; p7055
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7053 p7055
;; p7053
;; p7055
;; ----- [p7056]
;; p7056
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ----- [p7057]
;; p7057
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p7056 p7057
;; p7056
;; p7057
;; ----- [p7058]
;; p7058
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p7051 p7058 p7059
;; p7051
;; p7058
;; p7059
;; ----- [p7060]
;; p7060
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7061
;; p7061
;; ----- [p7062]
;; p7062
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7060 p7062
;; p7060
;; p7062
;; ----- [p7063]
;; p7063
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7064]
;; p7064
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_External 
;; ----- [p7065]
;; p7065
;; 
;; Proof. L_External QED
;;; Verifying V_Default 
;; ----- [p7066]
;; p7066
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p7067]
;; p7067
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying CC_C 
;; ----- [p7068]
;; p7068
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p7069]
;; p7069
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p7070]
;; p7070
;; 
;; Proof. T_VoidType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7072
;; p7072
;; ----- [p7073]
;; p7073
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7074
;; p7074
;; ----- [p7075]
;; p7075
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7073 p7075
;; p7073
;; p7075
;; ----- [p7076]
;; p7076
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7077
;; p7077
;; ----- [p7078]
;; p7078
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p7079]
;; p7079
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p7076 p7078 p7079
;; p7076
;; p7078
;; p7079
;; ----- [p7080]
;; p7080
;; 
;; Proof. P_Parameter QED
;;; Verifying Nil_Parameter 
;; ----- [p7081]
;; p7081
;; 
;; Proof. [] (Parameter) equivalent QED
;;; Verifying Cons_Parameter p7080 p7081
;; p7080
;; p7081
;; ----- [p7082]
;; p7082
;; 
;; Proof. Cons Parameter equivalent QED
;;; False == False : Bool
;;; Verifying Tup2_List_Parameter_Bool p7082 p7083
;; p7082
;; p7083
;; ----- [p7084]
;; p7084
;; 
;; Proof. Tuple ([Parameter], Bool) equivalent QED
;;; 0 == 0 : Word
;;; Verifying GID_GroupID p7085
;; p7085
;; ----- [p7086]
;; p7086
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p7086
;; p7086
;; ----- [p7087]
;; p7087
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p7088]
;; p7088
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p7087 p7088
;; p7087
;; p7088
;; ----- [p7089]
;; p7089
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7090]
;; p7090
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7091]
;; p7091
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 0 == 0 : Word32
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7093]
;; p7093
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p7094]
;; p7094
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; basic block matching 1-1, 5-5, 8-8, 18-18, 9-9, 14-14, 16-16
;;; 1 == 1 : Word
;;; Verifying N_UnName p7095
;; p7095
;; ----- [p7096]
;; p7096
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7097]
;; p7097
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7098
;; p7098
;; ----- [p7099]
;; p7099
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7100
;; p7100
;; ----- [p7101]
;; p7101
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7102
;; p7102
;; ----- [p7103]
;; p7103
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7101 p7103
;; p7101
;; p7103
;; ----- [p7104]
;; p7104
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p7105]
;; p7105
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p7104 p7105 p7106 p7107
;; p7104
;; p7105
;; p7106
;; p7107
;; ----- [p7108]
;; p7108
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p7099 p7108
;; p7099
;; p7108
;; ----- [p7109]
;; p7109
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7110]
;; p7110
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7112
;; p7112
;; ----- [p7113]
;; p7113
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7114
;; p7114
;; ----- [p7115]
;; p7115
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7113 p7115
;; p7113
;; p7115
;; ----- [p7116]
;; p7116
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7117
;; p7117
;; ----- [p7118]
;; p7118
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7116 p7118
;; p7116
;; p7118
;; ----- [p7119]
;; p7119
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7120
;; p7120
;; ----- [p7121]
;; p7121
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7119 p7121
;; p7119
;; p7121
;; ----- [p7122]
;; p7122
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7123
;; p7123
;; ----- [p7124]
;; p7124
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7125
;; p7125
;; ----- [p7126]
;; p7126
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7124 p7126
;; p7124
;; p7126
;; ----- [p7127]
;; p7127
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7128
;; p7128
;; ----- [p7129]
;; p7129
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7127 p7129
;; p7127
;; p7129
;; ----- [p7130]
;; p7130
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p7131]
;; p7131
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p7111 p7122 p7130 p7131 p7132 p7133
;; p7111
;; p7122
;; p7130
;; p7131
;; p7132
;; p7133
;; ----- [p7134]
;; p7134
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p7134
;; p7134
;; ----- [p7135]
;; p7135
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7136]
;; p7136
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7137
;; p7137
;; ----- [p7138]
;; p7138
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7140
;; p7140
;; ----- [p7141]
;; p7141
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7142
;; p7142
;; ----- [p7143]
;; p7143
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7141 p7143
;; p7141
;; p7143
;; ----- [p7144]
;; p7144
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7145
;; p7145
;; ----- [p7146]
;; p7146
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7144 p7146
;; p7144
;; p7146
;; ----- [p7147]
;; p7147
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7148
;; p7148
;; ----- [p7149]
;; p7149
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7147 p7149
;; p7147
;; p7149
;; ----- [p7150]
;; p7150
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p7151]
;; p7151
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p7139 p7150 p7151 p7152 p7153
;; p7139
;; p7150
;; p7151
;; p7152
;; p7153
;; ----- [p7154]
;; p7154
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p7138 p7154
;; p7138
;; p7154
;; ----- [p7155]
;; p7155
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7156]
;; p7156
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7157
;; p7157
;; ----- [p7158]
;; p7158
;; 
;; Proof. UnName equivalent QED
;;; Verifying IP_NE 
;; ----- [p7159]
;; p7159
;; 
;; Proof. IP_NE QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7160
;; p7160
;; ----- [p7161]
;; p7161
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7162
;; p7162
;; ----- [p7163]
;; p7163
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7161 p7163
;; p7161
;; p7163
;; ----- [p7164]
;; p7164
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7165
;; p7165
;; ----- [p7166]
;; p7166
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7164 p7166
;; p7164
;; p7166
;; ----- [p7167]
;; p7167
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7168
;; p7168
;; ----- [p7169]
;; p7169
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7170
;; p7170
;; ----- [p7171]
;; p7171
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7169 p7171
;; p7169
;; p7171
;; ----- [p7172]
;; p7172
;; 
;; Proof. T_PointerType QED
;;; Verifying C_Null p7172
;; p7172
;; ----- [p7173]
;; p7173
;; 
;; Proof. C_Null QED
;;; Verifying O_ConstantOperand p7173
;; p7173
;; ----- [p7174]
;; p7174
;; 
;; Proof. O_ConstantOperand QED
;;; True == True : Bool
;;; Verifying I_ICmp p7159 p7167 p7174 p7175
;; p7159
;; p7167
;; p7174
;; p7175
;; ----- [p7176]
;; p7176
;; 
;; Proof. I_ICmp QED
;;; Verifying NI_infix_Instruction p7158 p7176
;; p7158
;; p7176
;; ----- [p7177]
;; p7177
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p7178]
;; p7178
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p7177 p7178
;; p7177
;; p7178
;; ----- [p7179]
;; p7179
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7155 p7179
;; p7155
;; p7179
;; ----- [p7180]
;; p7180
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7135 p7180
;; p7135
;; p7180
;; ----- [p7181]
;; p7181
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7109 p7181
;; p7109
;; p7181
;; ----- [p7182]
;; p7182
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7183]
;; p7183
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; Verifying T_IntegerType p7184
;; p7184
;; ----- [p7185]
;; p7185
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7186
;; p7186
;; ----- [p7187]
;; p7187
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7185 p7187
;; p7185
;; p7187
;; ----- [p7188]
;; p7188
;; 
;; Proof. O_LocalReference QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7189
;; p7189
;; ----- [p7190]
;; p7190
;; 
;; Proof. UnName equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7191
;; p7191
;; ----- [p7192]
;; p7192
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_CondBr p7188 p7190 p7192 p7193
;; p7188
;; p7190
;; p7192
;; p7193
;; ----- [p7194]
;; p7194
;; 
;; Proof. T_CondBr QED
;;; Verifying NT_Do_Terminator p7194
;; p7194
;; ----- [p7195]
;; p7195
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p7096 p7182 p7195
;; p7096
;; p7182
;; p7195
;; ----- [p7196]
;; p7196
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7197
;; p7197
;; ----- [p7198]
;; p7198
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7199]
;; p7199
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7200
;; p7200
;; ----- [p7201]
;; p7201
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7203
;; p7203
;; ----- [p7204]
;; p7204
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7205
;; p7205
;; ----- [p7206]
;; p7206
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7204 p7206
;; p7204
;; p7206
;; ----- [p7207]
;; p7207
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7208
;; p7208
;; ----- [p7209]
;; p7209
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7207 p7209
;; p7207
;; p7209
;; ----- [p7210]
;; p7210
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7211
;; p7211
;; ----- [p7212]
;; p7212
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7210 p7212
;; p7210
;; p7212
;; ----- [p7213]
;; p7213
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p7214]
;; p7214
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p7202 p7213 p7214 p7215 p7216
;; p7202
;; p7213
;; p7214
;; p7215
;; p7216
;; ----- [p7217]
;; p7217
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p7201 p7217
;; p7201
;; p7217
;; ----- [p7218]
;; p7218
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7219]
;; p7219
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7220
;; p7220
;; ----- [p7221]
;; p7221
;; 
;; Proof. UnName equivalent QED
;;; Verifying IP_EQ 
;; ----- [p7222]
;; p7222
;; 
;; Proof. IP_EQ QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7223
;; p7223
;; ----- [p7224]
;; p7224
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7225
;; p7225
;; ----- [p7226]
;; p7226
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7224 p7226
;; p7224
;; p7226
;; ----- [p7227]
;; p7227
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7228
;; p7228
;; ----- [p7229]
;; p7229
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7227 p7229
;; p7227
;; p7229
;; ----- [p7230]
;; p7230
;; 
;; Proof. O_LocalReference QED
;;; Verifying FPT_X86_FP80FP 
;; ----- [p7231]
;; p7231
;; 
;; Proof. FPT_X86_FP80FP QED
;;; Verifying T_FloatingPointType p7231
;; p7231
;; ----- [p7232]
;; p7232
;; 
;; Proof. T_FloatingPointType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7233
;; p7233
;; ----- [p7234]
;; p7234
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7232 p7234
;; p7232
;; p7234
;; ----- [p7235]
;; p7235
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7236]
;; p7236
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Internal 
;; ----- [p7238]
;; p7238
;; 
;; Proof. L_Internal QED
;;; Verifying V_Default 
;; ----- [p7239]
;; p7239
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p7240]
;; p7240
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying MM_Nothing_Model 
;; ----- [p7241]
;; p7241
;; 
;; Proof. Nothing (Model) equivalent QED
;;; Verifying MUA_Nothing_UnnamedAddr 
;; ----- [p7242]
;; p7242
;; 
;; Proof. Nothing (UnnamedAddr) equivalent QED
;;; False == False : Bool
;;; Verifying FPT_X86_FP80FP 
;; ----- [p7244]
;; p7244
;; 
;; Proof. FPT_X86_FP80FP QED
;;; Verifying T_FloatingPointType p7244
;; p7244
;; ----- [p7245]
;; p7245
;; 
;; Proof. T_FloatingPointType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7246
;; p7246
;; ----- [p7247]
;; p7247
;; 
;; Proof. AS_AddrSpace QED
;;; 0 == 0 : Word16
;;; 0 == 0 : Word64
;;; Verifying SF_X86_FP80 p7248 p7249
;; p7248
;; p7249
;; ----- [p7250]
;; p7250
;; 
;; Proof. SF_X86_FP80 QED
;;; Verifying C_Float p7250
;; p7250
;; ----- [p7251]
;; p7251
;; 
;; Proof. C_Float QED
;;; Verifying MC_Just_Constant p7251
;; p7251
;; ----- [p7252]
;; p7252
;; 
;; Proof. Just Constant equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7253]
;; p7253
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7254]
;; p7254
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 16 == 16 : Word32
;;; True == True : Bool
;;; Verifying G_GlobalVariable p7237 p7238 p7239 p7240 p7241 p7242 p7243 p7245 p7247 p7252 p7253 p7254 p7255 p7256
;; p7237
;; p7238
;; p7239
;; p7240
;; p7241
;; p7242
;; p7243
;; p7245
;; p7247
;; p7252
;; p7253
;; p7254
;; p7255
;; p7256
;; ----- [p7257]
;; p7257
;; 
;; Proof. global variables on_malloc_zero and on_malloc_zero equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p7258
;; p7258
;; ----- [p7259]
;; p7259
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p7235 p7259
;; p7235
;; p7259
;; ----- [p7260]
;; p7260
;; 
;; Proof. C_GlobalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7261
;; p7261
;; ----- [p7262]
;; p7262
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7263
;; p7263
;; ----- [p7264]
;; p7264
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7262 p7264
;; p7262
;; p7264
;; ----- [p7265]
;; p7265
;; 
;; Proof. T_PointerType QED
;;; Verifying C_BitCast p7260 p7265
;; p7260
;; p7265
;; ----- [p7266]
;; p7266
;; 
;; Proof. C_BitCast QED
;;; Verifying O_ConstantOperand p7266
;; p7266
;; ----- [p7267]
;; p7267
;; 
;; Proof. O_ConstantOperand QED
;;; True == True : Bool
;;; Verifying I_ICmp p7222 p7230 p7267 p7268
;; p7222
;; p7230
;; p7267
;; p7268
;; ----- [p7269]
;; p7269
;; 
;; Proof. I_ICmp QED
;;; Verifying NI_infix_Instruction p7221 p7269
;; p7221
;; p7269
;; ----- [p7270]
;; p7270
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p7271]
;; p7271
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p7270 p7271
;; p7270
;; p7271
;; ----- [p7272]
;; p7272
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7218 p7272
;; p7218
;; p7272
;; ----- [p7273]
;; p7273
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7274]
;; p7274
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; Verifying T_IntegerType p7275
;; p7275
;; ----- [p7276]
;; p7276
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7277
;; p7277
;; ----- [p7278]
;; p7278
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7276 p7278
;; p7276
;; p7278
;; ----- [p7279]
;; p7279
;; 
;; Proof. O_LocalReference QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7280
;; p7280
;; ----- [p7281]
;; p7281
;; 
;; Proof. UnName equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7282
;; p7282
;; ----- [p7283]
;; p7283
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_CondBr p7279 p7281 p7283 p7284
;; p7279
;; p7281
;; p7283
;; p7284
;; ----- [p7285]
;; p7285
;; 
;; Proof. T_CondBr QED
;;; Verifying NT_Do_Terminator p7285
;; p7285
;; ----- [p7286]
;; p7286
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p7198 p7273 p7286
;; p7198
;; p7273
;; p7286
;; ----- [p7287]
;; p7287
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7288
;; p7288
;; ----- [p7289]
;; p7289
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p7290]
;; p7290
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7291]
;; p7291
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7292
;; p7292
;; ----- [p7293]
;; p7293
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_Br p7293 p7294
;; p7293
;; p7294
;; ----- [p7295]
;; p7295
;; 
;; Proof. T_Br QED
;;; Verifying NT_Do_Terminator p7295
;; p7295
;; ----- [p7296]
;; p7296
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p7289 p7290 p7296
;; p7289
;; p7290
;; p7296
;; ----- [p7297]
;; p7297
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7298
;; p7298
;; ----- [p7299]
;; p7299
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p7300]
;; p7300
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7301]
;; p7301
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p7302]
;; p7302
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; True == True : Bool
;;; Verifying T_Ret p7302 p7303
;; p7302
;; p7303
;; ----- [p7304]
;; p7304
;; 
;; Proof. T_Ret QED
;;; Verifying NT_Do_Terminator p7304
;; p7304
;; ----- [p7305]
;; p7305
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p7299 p7300 p7305
;; p7299
;; p7300
;; p7305
;; ----- [p7306]
;; p7306
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7307
;; p7307
;; ----- [p7308]
;; p7308
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7309]
;; p7309
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7310
;; p7310
;; ----- [p7311]
;; p7311
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7313
;; p7313
;; ----- [p7314]
;; p7314
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7315
;; p7315
;; ----- [p7316]
;; p7316
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7314 p7316
;; p7314
;; p7316
;; ----- [p7317]
;; p7317
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7318
;; p7318
;; ----- [p7319]
;; p7319
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7317 p7319
;; p7317
;; p7319
;; ----- [p7320]
;; p7320
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7321
;; p7321
;; ----- [p7322]
;; p7322
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7320 p7322
;; p7320
;; p7322
;; ----- [p7323]
;; p7323
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p7324]
;; p7324
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p7312 p7323 p7324 p7325 p7326
;; p7312
;; p7323
;; p7324
;; p7325
;; p7326
;; ----- [p7327]
;; p7327
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p7311 p7327
;; p7311
;; p7327
;; ----- [p7328]
;; p7328
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7329]
;; p7329
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7330
;; p7330
;; ----- [p7331]
;; p7331
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7332
;; p7332
;; ----- [p7333]
;; p7333
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7334
;; p7334
;; ----- [p7335]
;; p7335
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7333 p7335
;; p7333
;; p7335
;; ----- [p7336]
;; p7336
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7337
;; p7337
;; ----- [p7338]
;; p7338
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7336 p7338
;; p7336
;; p7338
;; ----- [p7339]
;; p7339
;; 
;; Proof. O_LocalReference QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p7340
;; p7340
;; ----- [p7341]
;; p7341
;; 
;; Proof. T_IntegerType QED
;;; True == True : Bool
;;; Verifying I_PtrToInt p7339 p7341 p7342
;; p7339
;; p7341
;; p7342
;; ----- [p7343]
;; p7343
;; 
;; Proof. I_PtrToInt QED
;;; Verifying NI_infix_Instruction p7331 p7343
;; p7331
;; p7343
;; ----- [p7344]
;; p7344
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7345]
;; p7345
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7346
;; p7346
;; ----- [p7347]
;; p7347
;; 
;; Proof. UnName equivalent QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p7348
;; p7348
;; ----- [p7349]
;; p7349
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7350
;; p7350
;; ----- [p7351]
;; p7351
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7349 p7351
;; p7349
;; p7351
;; ----- [p7352]
;; p7352
;; 
;; Proof. O_LocalReference QED
;;; 64 == 64 : Word32
;;; 32767 == 32767 : Integer
;;; Verifying C_Int p7353 p7354
;; p7353
;; p7354
;; ----- [p7355]
;; p7355
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p7355
;; p7355
;; ----- [p7356]
;; p7356
;; 
;; Proof. O_ConstantOperand QED
;;; True == True : Bool
;;; Verifying I_And p7352 p7356 p7357
;; p7352
;; p7356
;; p7357
;; ----- [p7358]
;; p7358
;; 
;; Proof. I_And QED
;;; Verifying NI_infix_Instruction p7347 p7358
;; p7347
;; p7358
;; ----- [p7359]
;; p7359
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7360]
;; p7360
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7361
;; p7361
;; ----- [p7362]
;; p7362
;; 
;; Proof. UnName equivalent QED
;;; Verifying IP_EQ 
;; ----- [p7363]
;; p7363
;; 
;; Proof. IP_EQ QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p7364
;; p7364
;; ----- [p7365]
;; p7365
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7366
;; p7366
;; ----- [p7367]
;; p7367
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7365 p7367
;; p7365
;; p7367
;; ----- [p7368]
;; p7368
;; 
;; Proof. O_LocalReference QED
;;; 64 == 64 : Word32
;;; 16 == 16 : Integer
;;; Verifying C_Int p7369 p7370
;; p7369
;; p7370
;; ----- [p7371]
;; p7371
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p7371
;; p7371
;; ----- [p7372]
;; p7372
;; 
;; Proof. O_ConstantOperand QED
;;; True == True : Bool
;;; Verifying I_ICmp p7363 p7368 p7372 p7373
;; p7363
;; p7368
;; p7372
;; p7373
;; ----- [p7374]
;; p7374
;; 
;; Proof. I_ICmp QED
;;; Verifying NI_infix_Instruction p7362 p7374
;; p7362
;; p7374
;; ----- [p7375]
;; p7375
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p7376]
;; p7376
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p7375 p7376
;; p7375
;; p7376
;; ----- [p7377]
;; p7377
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7359 p7377
;; p7359
;; p7377
;; ----- [p7378]
;; p7378
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7344 p7378
;; p7344
;; p7378
;; ----- [p7379]
;; p7379
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7328 p7379
;; p7328
;; p7379
;; ----- [p7380]
;; p7380
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7381]
;; p7381
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; Verifying T_IntegerType p7382
;; p7382
;; ----- [p7383]
;; p7383
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7384
;; p7384
;; ----- [p7385]
;; p7385
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7383 p7385
;; p7383
;; p7385
;; ----- [p7386]
;; p7386
;; 
;; Proof. O_LocalReference QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7387
;; p7387
;; ----- [p7388]
;; p7388
;; 
;; Proof. UnName equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7389
;; p7389
;; ----- [p7390]
;; p7390
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_CondBr p7386 p7388 p7390 p7391
;; p7386
;; p7388
;; p7390
;; p7391
;; ----- [p7392]
;; p7392
;; 
;; Proof. T_CondBr QED
;;; Verifying NT_Do_Terminator p7392
;; p7392
;; ----- [p7393]
;; p7393
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p7308 p7380 p7393
;; p7308
;; p7380
;; p7393
;; ----- [p7394]
;; p7394
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7395
;; p7395
;; ----- [p7396]
;; p7396
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7397]
;; p7397
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7398
;; p7398
;; ----- [p7399]
;; p7399
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7401
;; p7401
;; ----- [p7402]
;; p7402
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7403
;; p7403
;; ----- [p7404]
;; p7404
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7402 p7404
;; p7402
;; p7404
;; ----- [p7405]
;; p7405
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7406
;; p7406
;; ----- [p7407]
;; p7407
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7405 p7407
;; p7405
;; p7407
;; ----- [p7408]
;; p7408
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7409
;; p7409
;; ----- [p7410]
;; p7410
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7408 p7410
;; p7408
;; p7410
;; ----- [p7411]
;; p7411
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p7412]
;; p7412
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p7400 p7411 p7412 p7413 p7414
;; p7400
;; p7411
;; p7412
;; p7413
;; p7414
;; ----- [p7415]
;; p7415
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p7399 p7415
;; p7399
;; p7415
;; ----- [p7416]
;; p7416
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7417]
;; p7417
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ----- [p7418]
;; p7418
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ----- [p7419]
;; p7419
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p7420]
;; p7420
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p7421]
;; p7421
;; 
;; Proof. T_VoidType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7422
;; p7422
;; ----- [p7423]
;; p7423
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7424
;; p7424
;; ----- [p7425]
;; p7425
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7423 p7425
;; p7423
;; p7425
;; ----- [p7426]
;; p7426
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ----- [p7427]
;; p7427
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p7426 p7427
;; p7426
;; p7427
;; ----- [p7428]
;; p7428
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p7421 p7428 p7429
;; p7421
;; p7428
;; p7429
;; ----- [p7430]
;; p7430
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7431
;; p7431
;; ----- [p7432]
;; p7432
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7430 p7432
;; p7430
;; p7432
;; ----- [p7433]
;; p7433
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7434]
;; p7434
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Internal 
;; ----- [p7435]
;; p7435
;; 
;; Proof. L_Internal QED
;;; Verifying V_Default 
;; ----- [p7436]
;; p7436
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p7437]
;; p7437
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying CC_C 
;; ----- [p7438]
;; p7438
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p7439]
;; p7439
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p7440]
;; p7440
;; 
;; Proof. T_VoidType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7442
;; p7442
;; ----- [p7443]
;; p7443
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7444
;; p7444
;; ----- [p7445]
;; p7445
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7443 p7445
;; p7443
;; p7445
;; ----- [p7446]
;; p7446
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7447
;; p7447
;; ----- [p7448]
;; p7448
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p7449]
;; p7449
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p7446 p7448 p7449
;; p7446
;; p7448
;; p7449
;; ----- [p7450]
;; p7450
;; 
;; Proof. P_Parameter QED
;;; Verifying Nil_Parameter 
;; ----- [p7451]
;; p7451
;; 
;; Proof. [] (Parameter) equivalent QED
;;; Verifying Cons_Parameter p7450 p7451
;; p7450
;; p7451
;; ----- [p7452]
;; p7452
;; 
;; Proof. Cons Parameter equivalent QED
;;; False == False : Bool
;;; Verifying Tup2_List_Parameter_Bool p7452 p7453
;; p7452
;; p7453
;; ----- [p7454]
;; p7454
;; 
;; Proof. Tuple ([Parameter], Bool) equivalent QED
;;; 0 == 0 : Word
;;; Verifying GID_GroupID p7455
;; p7455
;; ----- [p7456]
;; p7456
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p7456
;; p7456
;; ----- [p7457]
;; p7457
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p7458]
;; p7458
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p7457 p7458
;; p7457
;; p7458
;; ----- [p7459]
;; p7459
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7460]
;; p7460
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7461]
;; p7461
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 0 == 0 : Word32
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7463]
;; p7463
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p7464]
;; p7464
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; basic block matching 1-1
;;; 1 == 1 : Word
;;; Verifying N_UnName p7465
;; p7465
;; ----- [p7466]
;; p7466
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7467]
;; p7467
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7468
;; p7468
;; ----- [p7469]
;; p7469
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7470
;; p7470
;; ----- [p7471]
;; p7471
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7472
;; p7472
;; ----- [p7473]
;; p7473
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7471 p7473
;; p7471
;; p7473
;; ----- [p7474]
;; p7474
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p7475]
;; p7475
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p7474 p7475 p7476 p7477
;; p7474
;; p7475
;; p7476
;; p7477
;; ----- [p7478]
;; p7478
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p7469 p7478
;; p7469
;; p7478
;; ----- [p7479]
;; p7479
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7480]
;; p7480
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7481
;; p7481
;; ----- [p7482]
;; p7482
;; 
;; Proof. UnName equivalent QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p7483
;; p7483
;; ----- [p7484]
;; p7484
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7485
;; p7485
;; ----- [p7486]
;; p7486
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7484 p7486
;; p7484
;; p7486
;; ----- [p7487]
;; p7487
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p7488]
;; p7488
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p7487 p7488 p7489 p7490
;; p7487
;; p7488
;; p7489
;; p7490
;; ----- [p7491]
;; p7491
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p7482 p7491
;; p7482
;; p7491
;; ----- [p7492]
;; p7492
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7493]
;; p7493
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7495
;; p7495
;; ----- [p7496]
;; p7496
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7497
;; p7497
;; ----- [p7498]
;; p7498
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7496 p7498
;; p7496
;; p7498
;; ----- [p7499]
;; p7499
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7500
;; p7500
;; ----- [p7501]
;; p7501
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7499 p7501
;; p7499
;; p7501
;; ----- [p7502]
;; p7502
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7503
;; p7503
;; ----- [p7504]
;; p7504
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7502 p7504
;; p7502
;; p7504
;; ----- [p7505]
;; p7505
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7506
;; p7506
;; ----- [p7507]
;; p7507
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7508
;; p7508
;; ----- [p7509]
;; p7509
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7507 p7509
;; p7507
;; p7509
;; ----- [p7510]
;; p7510
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7511
;; p7511
;; ----- [p7512]
;; p7512
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7510 p7512
;; p7510
;; p7512
;; ----- [p7513]
;; p7513
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p7514]
;; p7514
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p7494 p7505 p7513 p7514 p7515 p7516
;; p7494
;; p7505
;; p7513
;; p7514
;; p7515
;; p7516
;; ----- [p7517]
;; p7517
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p7517
;; p7517
;; ----- [p7518]
;; p7518
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7519]
;; p7519
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7520
;; p7520
;; ----- [p7521]
;; p7521
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7523
;; p7523
;; ----- [p7524]
;; p7524
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7525
;; p7525
;; ----- [p7526]
;; p7526
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7524 p7526
;; p7524
;; p7526
;; ----- [p7527]
;; p7527
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7528
;; p7528
;; ----- [p7529]
;; p7529
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7527 p7529
;; p7527
;; p7529
;; ----- [p7530]
;; p7530
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7531
;; p7531
;; ----- [p7532]
;; p7532
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7530 p7532
;; p7530
;; p7532
;; ----- [p7533]
;; p7533
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p7534]
;; p7534
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p7522 p7533 p7534 p7535 p7536
;; p7522
;; p7533
;; p7534
;; p7535
;; p7536
;; ----- [p7537]
;; p7537
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p7521 p7537
;; p7521
;; p7537
;; ----- [p7538]
;; p7538
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7539]
;; p7539
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7540
;; p7540
;; ----- [p7541]
;; p7541
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7542
;; p7542
;; ----- [p7543]
;; p7543
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7544
;; p7544
;; ----- [p7545]
;; p7545
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7543 p7545
;; p7543
;; p7545
;; ----- [p7546]
;; p7546
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7547
;; p7547
;; ----- [p7548]
;; p7548
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7546 p7548
;; p7546
;; p7548
;; ----- [p7549]
;; p7549
;; 
;; Proof. O_LocalReference QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p7550
;; p7550
;; ----- [p7551]
;; p7551
;; 
;; Proof. T_IntegerType QED
;;; True == True : Bool
;;; Verifying I_PtrToInt p7549 p7551 p7552
;; p7549
;; p7551
;; p7552
;; ----- [p7553]
;; p7553
;; 
;; Proof. I_PtrToInt QED
;;; Verifying NI_infix_Instruction p7541 p7553
;; p7541
;; p7553
;; ----- [p7554]
;; p7554
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7555]
;; p7555
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7556
;; p7556
;; ----- [p7557]
;; p7557
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; False == False : Bool
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p7560
;; p7560
;; ----- [p7561]
;; p7561
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7562
;; p7562
;; ----- [p7563]
;; p7563
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7561 p7563
;; p7561
;; p7563
;; ----- [p7564]
;; p7564
;; 
;; Proof. O_LocalReference QED
;;; 64 == 64 : Word32
;;; 16 == 16 : Integer
;;; Verifying C_Int p7565 p7566
;; p7565
;; p7566
;; ----- [p7567]
;; p7567
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p7567
;; p7567
;; ----- [p7568]
;; p7568
;; 
;; Proof. O_ConstantOperand QED
;;; True == True : Bool
;;; Verifying I_Sub p7558 p7559 p7564 p7568 p7569
;; p7558
;; p7559
;; p7564
;; p7568
;; p7569
;; ----- [p7570]
;; p7570
;; 
;; Proof. I_Sub QED
;;; Verifying NI_infix_Instruction p7557 p7570
;; p7557
;; p7570
;; ----- [p7571]
;; p7571
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7572]
;; p7572
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7573
;; p7573
;; ----- [p7574]
;; p7574
;; 
;; Proof. UnName equivalent QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p7575
;; p7575
;; ----- [p7576]
;; p7576
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7577
;; p7577
;; ----- [p7578]
;; p7578
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7576 p7578
;; p7576
;; p7578
;; ----- [p7579]
;; p7579
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7580
;; p7580
;; ----- [p7581]
;; p7581
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7582
;; p7582
;; ----- [p7583]
;; p7583
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7581 p7583
;; p7581
;; p7583
;; ----- [p7584]
;; p7584
;; 
;; Proof. T_PointerType QED
;;; True == True : Bool
;;; Verifying I_IntToPtr p7579 p7584 p7585
;; p7579
;; p7584
;; p7585
;; ----- [p7586]
;; p7586
;; 
;; Proof. I_IntToPtr QED
;;; Verifying NI_infix_Instruction p7574 p7586
;; p7574
;; p7586
;; ----- [p7587]
;; p7587
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7588]
;; p7588
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7589
;; p7589
;; ----- [p7590]
;; p7590
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7591
;; p7591
;; ----- [p7592]
;; p7592
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7593
;; p7593
;; ----- [p7594]
;; p7594
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7592 p7594
;; p7592
;; p7594
;; ----- [p7595]
;; p7595
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7596
;; p7596
;; ----- [p7597]
;; p7597
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7595 p7597
;; p7595
;; p7597
;; ----- [p7598]
;; p7598
;; 
;; Proof. O_LocalReference QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p7599
;; p7599
;; ----- [p7600]
;; p7600
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7601
;; p7601
;; ----- [p7602]
;; p7602
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7600 p7602
;; p7600
;; p7602
;; ----- [p7603]
;; p7603
;; 
;; Proof. T_PointerType QED
;;; True == True : Bool
;;; Verifying I_BitCast p7598 p7603 p7604
;; p7598
;; p7603
;; p7604
;; ----- [p7605]
;; p7605
;; 
;; Proof. I_BitCast QED
;;; Verifying NI_infix_Instruction p7590 p7605
;; p7590
;; p7605
;; ----- [p7606]
;; p7606
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7607]
;; p7607
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p7609
;; p7609
;; ----- [p7610]
;; p7610
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7611
;; p7611
;; ----- [p7612]
;; p7612
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7610 p7612
;; p7610
;; p7612
;; ----- [p7613]
;; p7613
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7614
;; p7614
;; ----- [p7615]
;; p7615
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7613 p7615
;; p7613
;; p7615
;; ----- [p7616]
;; p7616
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7617
;; p7617
;; ----- [p7618]
;; p7618
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7616 p7618
;; p7616
;; p7618
;; ----- [p7619]
;; p7619
;; 
;; Proof. O_LocalReference QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p7620
;; p7620
;; ----- [p7621]
;; p7621
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7622
;; p7622
;; ----- [p7623]
;; p7623
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7621 p7623
;; p7621
;; p7623
;; ----- [p7624]
;; p7624
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7625
;; p7625
;; ----- [p7626]
;; p7626
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7624 p7626
;; p7624
;; p7626
;; ----- [p7627]
;; p7627
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p7628]
;; p7628
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p7608 p7619 p7627 p7628 p7629 p7630
;; p7608
;; p7619
;; p7627
;; p7628
;; p7629
;; p7630
;; ----- [p7631]
;; p7631
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p7631
;; p7631
;; ----- [p7632]
;; p7632
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7633]
;; p7633
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7634
;; p7634
;; ----- [p7635]
;; p7635
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p7637
;; p7637
;; ----- [p7638]
;; p7638
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7639
;; p7639
;; ----- [p7640]
;; p7640
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7638 p7640
;; p7638
;; p7640
;; ----- [p7641]
;; p7641
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7642
;; p7642
;; ----- [p7643]
;; p7643
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7641 p7643
;; p7641
;; p7643
;; ----- [p7644]
;; p7644
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7645
;; p7645
;; ----- [p7646]
;; p7646
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7644 p7646
;; p7644
;; p7646
;; ----- [p7647]
;; p7647
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p7648]
;; p7648
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p7636 p7647 p7648 p7649 p7650
;; p7636
;; p7647
;; p7648
;; p7649
;; p7650
;; ----- [p7651]
;; p7651
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p7635 p7651
;; p7635
;; p7651
;; ----- [p7652]
;; p7652
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7653]
;; p7653
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7654
;; p7654
;; ----- [p7655]
;; p7655
;; 
;; Proof. UnName equivalent QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p7656
;; p7656
;; ----- [p7657]
;; p7657
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7658
;; p7658
;; ----- [p7659]
;; p7659
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7657 p7659
;; p7657
;; p7659
;; ----- [p7660]
;; p7660
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7661
;; p7661
;; ----- [p7662]
;; p7662
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7660 p7662
;; p7660
;; p7662
;; ----- [p7663]
;; p7663
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7664
;; p7664
;; ----- [p7665]
;; p7665
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7666
;; p7666
;; ----- [p7667]
;; p7667
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7665 p7667
;; p7665
;; p7667
;; ----- [p7668]
;; p7668
;; 
;; Proof. T_PointerType QED
;;; True == True : Bool
;;; Verifying I_BitCast p7663 p7668 p7669
;; p7663
;; p7668
;; p7669
;; ----- [p7670]
;; p7670
;; 
;; Proof. I_BitCast QED
;;; Verifying NI_infix_Instruction p7655 p7670
;; p7655
;; p7670
;; ----- [p7671]
;; p7671
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7672]
;; p7672
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7673
;; p7673
;; ----- [p7674]
;; p7674
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p7676
;; p7676
;; ----- [p7677]
;; p7677
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7678
;; p7678
;; ----- [p7679]
;; p7679
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7677 p7679
;; p7677
;; p7679
;; ----- [p7680]
;; p7680
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7681
;; p7681
;; ----- [p7682]
;; p7682
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7680 p7682
;; p7680
;; p7682
;; ----- [p7683]
;; p7683
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7684
;; p7684
;; ----- [p7685]
;; p7685
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7683 p7685
;; p7683
;; p7685
;; ----- [p7686]
;; p7686
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p7687]
;; p7687
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p7675 p7686 p7687 p7688 p7689
;; p7675
;; p7686
;; p7687
;; p7688
;; p7689
;; ----- [p7690]
;; p7690
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p7674 p7690
;; p7674
;; p7690
;; ----- [p7691]
;; p7691
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7692]
;; p7692
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7693
;; p7693
;; ----- [p7694]
;; p7694
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p7696
;; p7696
;; ----- [p7697]
;; p7697
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7698
;; p7698
;; ----- [p7699]
;; p7699
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7697 p7699
;; p7697
;; p7699
;; ----- [p7700]
;; p7700
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7701
;; p7701
;; ----- [p7702]
;; p7702
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7700 p7702
;; p7700
;; p7702
;; ----- [p7703]
;; p7703
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p7704]
;; p7704
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p7695 p7703 p7704 p7705 p7706
;; p7695
;; p7703
;; p7704
;; p7705
;; p7706
;; ----- [p7707]
;; p7707
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p7694 p7707
;; p7694
;; p7707
;; ----- [p7708]
;; p7708
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7709]
;; p7709
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ----- [p7710]
;; p7710
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ----- [p7711]
;; p7711
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p7712]
;; p7712
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p7713]
;; p7713
;; 
;; Proof. T_VoidType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7714
;; p7714
;; ----- [p7715]
;; p7715
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7716
;; p7716
;; ----- [p7717]
;; p7717
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7715 p7717
;; p7715
;; p7717
;; ----- [p7718]
;; p7718
;; 
;; Proof. T_PointerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p7719
;; p7719
;; ----- [p7720]
;; p7720
;; 
;; Proof. T_IntegerType QED
;;; Verifying Nil_Type 
;; ----- [p7721]
;; p7721
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p7720 p7721
;; p7720
;; p7721
;; ----- [p7722]
;; p7722
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p7718 p7722
;; p7718
;; p7722
;; ----- [p7723]
;; p7723
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p7713 p7723 p7724
;; p7713
;; p7723
;; p7724
;; ----- [p7725]
;; p7725
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7726
;; p7726
;; ----- [p7727]
;; p7727
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7725 p7727
;; p7725
;; p7727
;; ----- [p7728]
;; p7728
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7729]
;; p7729
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Internal 
;; ----- [p7730]
;; p7730
;; 
;; Proof. L_Internal QED
;;; Verifying V_Default 
;; ----- [p7731]
;; p7731
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p7732]
;; p7732
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying CC_C 
;; ----- [p7733]
;; p7733
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p7734]
;; p7734
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p7735]
;; p7735
;; 
;; Proof. T_VoidType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7737
;; p7737
;; ----- [p7738]
;; p7738
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7739
;; p7739
;; ----- [p7740]
;; p7740
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7738 p7740
;; p7738
;; p7740
;; ----- [p7741]
;; p7741
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7742
;; p7742
;; ----- [p7743]
;; p7743
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p7744]
;; p7744
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p7741 p7743 p7744
;; p7741
;; p7743
;; p7744
;; ----- [p7745]
;; p7745
;; 
;; Proof. P_Parameter QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p7746
;; p7746
;; ----- [p7747]
;; p7747
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7748
;; p7748
;; ----- [p7749]
;; p7749
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p7750]
;; p7750
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p7747 p7749 p7750
;; p7747
;; p7749
;; p7750
;; ----- [p7751]
;; p7751
;; 
;; Proof. P_Parameter QED
;;; Verifying Nil_Parameter 
;; ----- [p7752]
;; p7752
;; 
;; Proof. [] (Parameter) equivalent QED
;;; Verifying Cons_Parameter p7751 p7752
;; p7751
;; p7752
;; ----- [p7753]
;; p7753
;; 
;; Proof. Cons Parameter equivalent QED
;;; Verifying Cons_Parameter p7745 p7753
;; p7745
;; p7753
;; ----- [p7754]
;; p7754
;; 
;; Proof. Cons Parameter equivalent QED
;;; False == False : Bool
;;; Verifying Tup2_List_Parameter_Bool p7754 p7755
;; p7754
;; p7755
;; ----- [p7756]
;; p7756
;; 
;; Proof. Tuple ([Parameter], Bool) equivalent QED
;;; 0 == 0 : Word
;;; Verifying GID_GroupID p7757
;; p7757
;; ----- [p7758]
;; p7758
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p7758
;; p7758
;; ----- [p7759]
;; p7759
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p7760]
;; p7760
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p7759 p7760
;; p7759
;; p7760
;; ----- [p7761]
;; p7761
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7762]
;; p7762
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7763]
;; p7763
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 0 == 0 : Word32
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7765]
;; p7765
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p7766]
;; p7766
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; basic block matching 2-2
;;; 1 == 1 : Word
;;; Verifying N_UnName p7767
;; p7767
;; ----- [p7768]
;; p7768
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7769]
;; p7769
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7770
;; p7770
;; ----- [p7771]
;; p7771
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7772
;; p7772
;; ----- [p7773]
;; p7773
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7774
;; p7774
;; ----- [p7775]
;; p7775
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7773 p7775
;; p7773
;; p7775
;; ----- [p7776]
;; p7776
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p7777]
;; p7777
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p7776 p7777 p7778 p7779
;; p7776
;; p7777
;; p7778
;; p7779
;; ----- [p7780]
;; p7780
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p7771 p7780
;; p7771
;; p7780
;; ----- [p7781]
;; p7781
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7782]
;; p7782
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7783
;; p7783
;; ----- [p7784]
;; p7784
;; 
;; Proof. UnName equivalent QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p7785
;; p7785
;; ----- [p7786]
;; p7786
;; 
;; Proof. T_IntegerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p7787]
;; p7787
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p7786 p7787 p7788 p7789
;; p7786
;; p7787
;; p7788
;; p7789
;; ----- [p7790]
;; p7790
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p7784 p7790
;; p7784
;; p7790
;; ----- [p7791]
;; p7791
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7792]
;; p7792
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7794
;; p7794
;; ----- [p7795]
;; p7795
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7796
;; p7796
;; ----- [p7797]
;; p7797
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7795 p7797
;; p7795
;; p7797
;; ----- [p7798]
;; p7798
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7799
;; p7799
;; ----- [p7800]
;; p7800
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7798 p7800
;; p7798
;; p7800
;; ----- [p7801]
;; p7801
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7802
;; p7802
;; ----- [p7803]
;; p7803
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7801 p7803
;; p7801
;; p7803
;; ----- [p7804]
;; p7804
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7805
;; p7805
;; ----- [p7806]
;; p7806
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7807
;; p7807
;; ----- [p7808]
;; p7808
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7806 p7808
;; p7806
;; p7808
;; ----- [p7809]
;; p7809
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7810
;; p7810
;; ----- [p7811]
;; p7811
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7809 p7811
;; p7809
;; p7811
;; ----- [p7812]
;; p7812
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p7813]
;; p7813
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p7793 p7804 p7812 p7813 p7814 p7815
;; p7793
;; p7804
;; p7812
;; p7813
;; p7814
;; p7815
;; ----- [p7816]
;; p7816
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p7816
;; p7816
;; ----- [p7817]
;; p7817
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7818]
;; p7818
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p7820
;; p7820
;; ----- [p7821]
;; p7821
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7822
;; p7822
;; ----- [p7823]
;; p7823
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7821 p7823
;; p7821
;; p7823
;; ----- [p7824]
;; p7824
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7825
;; p7825
;; ----- [p7826]
;; p7826
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7824 p7826
;; p7824
;; p7826
;; ----- [p7827]
;; p7827
;; 
;; Proof. O_LocalReference QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p7828
;; p7828
;; ----- [p7829]
;; p7829
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7830
;; p7830
;; ----- [p7831]
;; p7831
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7829 p7831
;; p7829
;; p7831
;; ----- [p7832]
;; p7832
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p7833]
;; p7833
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p7819 p7827 p7832 p7833 p7834 p7835
;; p7819
;; p7827
;; p7832
;; p7833
;; p7834
;; p7835
;; ----- [p7836]
;; p7836
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p7836
;; p7836
;; ----- [p7837]
;; p7837
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7838]
;; p7838
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7839
;; p7839
;; ----- [p7840]
;; p7840
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7842
;; p7842
;; ----- [p7843]
;; p7843
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7844
;; p7844
;; ----- [p7845]
;; p7845
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7843 p7845
;; p7843
;; p7845
;; ----- [p7846]
;; p7846
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7847
;; p7847
;; ----- [p7848]
;; p7848
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7846 p7848
;; p7846
;; p7848
;; ----- [p7849]
;; p7849
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7850
;; p7850
;; ----- [p7851]
;; p7851
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7849 p7851
;; p7849
;; p7851
;; ----- [p7852]
;; p7852
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p7853]
;; p7853
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p7841 p7852 p7853 p7854 p7855
;; p7841
;; p7852
;; p7853
;; p7854
;; p7855
;; ----- [p7856]
;; p7856
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p7840 p7856
;; p7840
;; p7856
;; ----- [p7857]
;; p7857
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7858]
;; p7858
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7859
;; p7859
;; ----- [p7860]
;; p7860
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p7862
;; p7862
;; ----- [p7863]
;; p7863
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7864
;; p7864
;; ----- [p7865]
;; p7865
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7863 p7865
;; p7863
;; p7865
;; ----- [p7866]
;; p7866
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7867
;; p7867
;; ----- [p7868]
;; p7868
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7866 p7868
;; p7866
;; p7868
;; ----- [p7869]
;; p7869
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p7870]
;; p7870
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p7861 p7869 p7870 p7871 p7872
;; p7861
;; p7869
;; p7870
;; p7871
;; p7872
;; ----- [p7873]
;; p7873
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p7860 p7873
;; p7860
;; p7873
;; ----- [p7874]
;; p7874
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7875]
;; p7875
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7876
;; p7876
;; ----- [p7877]
;; p7877
;; 
;; Proof. UnName equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ----- [p7878]
;; p7878
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ----- [p7879]
;; p7879
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p7880]
;; p7880
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p7881
;; p7881
;; ----- [p7882]
;; p7882
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7883
;; p7883
;; ----- [p7884]
;; p7884
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7885
;; p7885
;; ----- [p7886]
;; p7886
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7884 p7886
;; p7884
;; p7886
;; ----- [p7887]
;; p7887
;; 
;; Proof. T_PointerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p7888
;; p7888
;; ----- [p7889]
;; p7889
;; 
;; Proof. T_IntegerType QED
;;; Verifying Nil_Type 
;; ----- [p7890]
;; p7890
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p7889 p7890
;; p7889
;; p7890
;; ----- [p7891]
;; p7891
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p7887 p7891
;; p7887
;; p7891
;; ----- [p7892]
;; p7892
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p7882 p7892 p7893
;; p7882
;; p7892
;; p7893
;; ----- [p7894]
;; p7894
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7895
;; p7895
;; ----- [p7896]
;; p7896
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7894 p7896
;; p7894
;; p7896
;; ----- [p7897]
;; p7897
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7898]
;; p7898
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_External 
;; ----- [p7899]
;; p7899
;; 
;; Proof. L_External QED
;;; Verifying V_Default 
;; ----- [p7900]
;; p7900
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p7901]
;; p7901
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying CC_C 
;; ----- [p7902]
;; p7902
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p7903]
;; p7903
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p7904
;; p7904
;; ----- [p7905]
;; p7905
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7907
;; p7907
;; ----- [p7908]
;; p7908
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7909
;; p7909
;; ----- [p7910]
;; p7910
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7908 p7910
;; p7908
;; p7910
;; ----- [p7911]
;; p7911
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7912
;; p7912
;; ----- [p7913]
;; p7913
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p7914]
;; p7914
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p7911 p7913 p7914
;; p7911
;; p7913
;; p7914
;; ----- [p7915]
;; p7915
;; 
;; Proof. P_Parameter QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p7916
;; p7916
;; ----- [p7917]
;; p7917
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7918
;; p7918
;; ----- [p7919]
;; p7919
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p7920]
;; p7920
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p7917 p7919 p7920
;; p7917
;; p7919
;; p7920
;; ----- [p7921]
;; p7921
;; 
;; Proof. P_Parameter QED
;;; Verifying Nil_Parameter 
;; ----- [p7922]
;; p7922
;; 
;; Proof. [] (Parameter) equivalent QED
;;; Verifying Cons_Parameter p7921 p7922
;; p7921
;; p7922
;; ----- [p7923]
;; p7923
;; 
;; Proof. Cons Parameter equivalent QED
;;; Verifying Cons_Parameter p7915 p7923
;; p7915
;; p7923
;; ----- [p7924]
;; p7924
;; 
;; Proof. Cons Parameter equivalent QED
;;; False == False : Bool
;;; Verifying Tup2_List_Parameter_Bool p7924 p7925
;; p7924
;; p7925
;; ----- [p7926]
;; p7926
;; 
;; Proof. Tuple ([Parameter], Bool) equivalent QED
;;; 4 == 4 : Word
;;; Verifying GID_GroupID p7927
;; p7927
;; ----- [p7928]
;; p7928
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p7928
;; p7928
;; ----- [p7929]
;; p7929
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p7930]
;; p7930
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p7929 p7930
;; p7929
;; p7930
;; ----- [p7931]
;; p7931
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7932]
;; p7932
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7933]
;; p7933
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 0 == 0 : Word32
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7935]
;; p7935
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p7936]
;; p7936
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p7938]
;; p7938
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; True == True : Bool
;;; Verifying G_Function p7899 p7900 p7901 p7902 p7903 p7905 p7906 p7926 p7931 p7932 p7933 p7934 p7935 p7936 p7937 p7938 p7939
;; p7899
;; p7900
;; p7901
;; p7902
;; p7903
;; p7905
;; p7906
;; p7926
;; p7931
;; p7932
;; p7933
;; p7934
;; p7935
;; p7936
;; p7937
;; p7938
;; p7939
;; ----- [p7940]
;; p7940
;; 
;; Proof. functions munmap and munmap equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p7941
;; p7941
;; ----- [p7942]
;; p7942
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p7897 p7942
;; p7897
;; p7942
;; ----- [p7943]
;; p7943
;; 
;; Proof. C_GlobalReference QED
;;; Verifying O_ConstantOperand p7943
;; p7943
;; ----- [p7944]
;; p7944
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying EIAO_Right_InlineAssembly_Operand p7944
;; p7944
;; ----- [p7945]
;; p7945
;; 
;; Proof. Right (InlineAssembly Operand) equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7946
;; p7946
;; ----- [p7947]
;; p7947
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7948
;; p7948
;; ----- [p7949]
;; p7949
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7947 p7949
;; p7947
;; p7949
;; ----- [p7950]
;; p7950
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7951
;; p7951
;; ----- [p7952]
;; p7952
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7950 p7952
;; p7950
;; p7952
;; ----- [p7953]
;; p7953
;; 
;; Proof. O_LocalReference QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p7954]
;; p7954
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p7953 p7954
;; p7953
;; p7954
;; ----- [p7955]
;; p7955
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p7956
;; p7956
;; ----- [p7957]
;; p7957
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p7958
;; p7958
;; ----- [p7959]
;; p7959
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p7957 p7959
;; p7957
;; p7959
;; ----- [p7960]
;; p7960
;; 
;; Proof. O_LocalReference QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p7961]
;; p7961
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p7960 p7961
;; p7960
;; p7961
;; ----- [p7962]
;; p7962
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Tup2_Operand_List_ParameterAttribute 
;; ----- [p7963]
;; p7963
;; 
;; Proof. [] ((Operand, [ParameterAttribute])) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p7962 p7963
;; p7962
;; p7963
;; ----- [p7964]
;; p7964
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p7955 p7964
;; p7955
;; p7964
;; ----- [p7965]
;; p7965
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; 3 == 3 : Word
;;; Verifying GID_GroupID p7966
;; p7966
;; ----- [p7967]
;; p7967
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p7967
;; p7967
;; ----- [p7968]
;; p7968
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p7969]
;; p7969
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p7968 p7969
;; p7968
;; p7969
;; ----- [p7970]
;; p7970
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; True == True : Bool
;;; Verifying I_Call p7878 p7879 p7880 p7945 p7965 p7970 p7971
;; p7878
;; p7879
;; p7880
;; p7945
;; p7965
;; p7970
;; p7971
;; ----- [p7972]
;; p7972
;; 
;; Proof. I_Call QED
;;; Verifying NI_infix_Instruction p7877 p7972
;; p7877
;; p7972
;; ----- [p7973]
;; p7973
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p7974]
;; p7974
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p7973 p7974
;; p7973
;; p7974
;; ----- [p7975]
;; p7975
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7874 p7975
;; p7874
;; p7975
;; ----- [p7976]
;; p7976
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7857 p7976
;; p7857
;; p7976
;; ----- [p7977]
;; p7977
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7837 p7977
;; p7837
;; p7977
;; ----- [p7978]
;; p7978
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7817 p7978
;; p7817
;; p7978
;; ----- [p7979]
;; p7979
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7791 p7979
;; p7791
;; p7979
;; ----- [p7980]
;; p7980
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7781 p7980
;; p7781
;; p7980
;; ----- [p7981]
;; p7981
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p7982]
;; p7982
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p7983]
;; p7983
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; True == True : Bool
;;; Verifying T_Ret p7983 p7984
;; p7983
;; p7984
;; ----- [p7985]
;; p7985
;; 
;; Proof. T_Ret QED
;;; Verifying NT_Do_Terminator p7985
;; p7985
;; ----- [p7986]
;; p7986
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p7768 p7981 p7986
;; p7768
;; p7981
;; p7986
;; ----- [p7987]
;; p7987
;; 
;; Proof. BB_BasicBlock QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p7989]
;; p7989
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; True == True : Bool
;;; Verifying G_Function p7730 p7731 p7732 p7733 p7734 p7735 p7736 p7756 p7761 p7762 p7763 p7764 p7765 p7766 p7988 p7989 p7990
;; p7730
;; p7731
;; p7732
;; p7733
;; p7734
;; p7735
;; p7736
;; p7756
;; p7761
;; p7762
;; p7763
;; p7764
;; p7765
;; p7766
;; p7988
;; p7989
;; p7990
;; ----- [p7991]
;; p7991
;; 
;; Proof. functions sys_free and sys_free equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p7992
;; p7992
;; ----- [p7993]
;; p7993
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p7728 p7993
;; p7728
;; p7993
;; ----- [p7994]
;; p7994
;; 
;; Proof. C_GlobalReference QED
;;; Verifying O_ConstantOperand p7994
;; p7994
;; ----- [p7995]
;; p7995
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying EIAO_Right_InlineAssembly_Operand p7995
;; p7995
;; ----- [p7996]
;; p7996
;; 
;; Proof. Right (InlineAssembly Operand) equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p7997
;; p7997
;; ----- [p7998]
;; p7998
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p7999
;; p7999
;; ----- [p8000]
;; p8000
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p7998 p8000
;; p7998
;; p8000
;; ----- [p8001]
;; p8001
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8002
;; p8002
;; ----- [p8003]
;; p8003
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8001 p8003
;; p8001
;; p8003
;; ----- [p8004]
;; p8004
;; 
;; Proof. O_LocalReference QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p8005]
;; p8005
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p8004 p8005
;; p8004
;; p8005
;; ----- [p8006]
;; p8006
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p8007
;; p8007
;; ----- [p8008]
;; p8008
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8009
;; p8009
;; ----- [p8010]
;; p8010
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8008 p8010
;; p8008
;; p8010
;; ----- [p8011]
;; p8011
;; 
;; Proof. O_LocalReference QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p8012]
;; p8012
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p8011 p8012
;; p8011
;; p8012
;; ----- [p8013]
;; p8013
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Tup2_Operand_List_ParameterAttribute 
;; ----- [p8014]
;; p8014
;; 
;; Proof. [] ((Operand, [ParameterAttribute])) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p8013 p8014
;; p8013
;; p8014
;; ----- [p8015]
;; p8015
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p8006 p8015
;; p8006
;; p8015
;; ----- [p8016]
;; p8016
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p8017]
;; p8017
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; True == True : Bool
;;; Verifying I_Call p7710 p7711 p7712 p7996 p8016 p8017 p8018
;; p7710
;; p7711
;; p7712
;; p7996
;; p8016
;; p8017
;; p8018
;; ----- [p8019]
;; p8019
;; 
;; Proof. I_Call QED
;;; Verifying NI_Do_Instruction p8019
;; p8019
;; ----- [p8020]
;; p8020
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p8021]
;; p8021
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p8020 p8021
;; p8020
;; p8021
;; ----- [p8022]
;; p8022
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7708 p8022
;; p7708
;; p8022
;; ----- [p8023]
;; p8023
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7691 p8023
;; p7691
;; p8023
;; ----- [p8024]
;; p8024
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7671 p8024
;; p7671
;; p8024
;; ----- [p8025]
;; p8025
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7652 p8025
;; p7652
;; p8025
;; ----- [p8026]
;; p8026
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7632 p8026
;; p7632
;; p8026
;; ----- [p8027]
;; p8027
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7606 p8027
;; p7606
;; p8027
;; ----- [p8028]
;; p8028
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7587 p8028
;; p7587
;; p8028
;; ----- [p8029]
;; p8029
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7571 p8029
;; p7571
;; p8029
;; ----- [p8030]
;; p8030
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7554 p8030
;; p7554
;; p8030
;; ----- [p8031]
;; p8031
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7538 p8031
;; p7538
;; p8031
;; ----- [p8032]
;; p8032
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7518 p8032
;; p7518
;; p8032
;; ----- [p8033]
;; p8033
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7492 p8033
;; p7492
;; p8033
;; ----- [p8034]
;; p8034
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7479 p8034
;; p7479
;; p8034
;; ----- [p8035]
;; p8035
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8036]
;; p8036
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p8037]
;; p8037
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; True == True : Bool
;;; Verifying T_Ret p8037 p8038
;; p8037
;; p8038
;; ----- [p8039]
;; p8039
;; 
;; Proof. T_Ret QED
;;; Verifying NT_Do_Terminator p8039
;; p8039
;; ----- [p8040]
;; p8040
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p7466 p8035 p8040
;; p7466
;; p8035
;; p8040
;; ----- [p8041]
;; p8041
;; 
;; Proof. BB_BasicBlock QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p8043]
;; p8043
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; True == True : Bool
;;; Verifying G_Function p7435 p7436 p7437 p7438 p7439 p7440 p7441 p7454 p7459 p7460 p7461 p7462 p7463 p7464 p8042 p8043 p8044
;; p7435
;; p7436
;; p7437
;; p7438
;; p7439
;; p7440
;; p7441
;; p7454
;; p7459
;; p7460
;; p7461
;; p7462
;; p7463
;; p7464
;; p8042
;; p8043
;; p8044
;; ----- [p8045]
;; p8045
;; 
;; Proof. functions big_free and big_free equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p8046
;; p8046
;; ----- [p8047]
;; p8047
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p7433 p8047
;; p7433
;; p8047
;; ----- [p8048]
;; p8048
;; 
;; Proof. C_GlobalReference QED
;;; Verifying O_ConstantOperand p8048
;; p8048
;; ----- [p8049]
;; p8049
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying EIAO_Right_InlineAssembly_Operand p8049
;; p8049
;; ----- [p8050]
;; p8050
;; 
;; Proof. Right (InlineAssembly Operand) equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p8051
;; p8051
;; ----- [p8052]
;; p8052
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8053
;; p8053
;; ----- [p8054]
;; p8054
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8052 p8054
;; p8052
;; p8054
;; ----- [p8055]
;; p8055
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8056
;; p8056
;; ----- [p8057]
;; p8057
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8055 p8057
;; p8055
;; p8057
;; ----- [p8058]
;; p8058
;; 
;; Proof. O_LocalReference QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p8059]
;; p8059
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p8058 p8059
;; p8058
;; p8059
;; ----- [p8060]
;; p8060
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Tup2_Operand_List_ParameterAttribute 
;; ----- [p8061]
;; p8061
;; 
;; Proof. [] ((Operand, [ParameterAttribute])) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p8060 p8061
;; p8060
;; p8061
;; ----- [p8062]
;; p8062
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p8063]
;; p8063
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; True == True : Bool
;;; Verifying I_Call p7418 p7419 p7420 p8050 p8062 p8063 p8064
;; p7418
;; p7419
;; p7420
;; p8050
;; p8062
;; p8063
;; p8064
;; ----- [p8065]
;; p8065
;; 
;; Proof. I_Call QED
;;; Verifying NI_Do_Instruction p8065
;; p8065
;; ----- [p8066]
;; p8066
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p8067]
;; p8067
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p8066 p8067
;; p8066
;; p8067
;; ----- [p8068]
;; p8068
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p7416 p8068
;; p7416
;; p8068
;; ----- [p8069]
;; p8069
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8070]
;; p8070
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8071
;; p8071
;; ----- [p8072]
;; p8072
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_Br p8072 p8073
;; p8072
;; p8073
;; ----- [p8074]
;; p8074
;; 
;; Proof. T_Br QED
;;; Verifying NT_Do_Terminator p8074
;; p8074
;; ----- [p8075]
;; p8075
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p7396 p8069 p8075
;; p7396
;; p8069
;; p8075
;; ----- [p8076]
;; p8076
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8077
;; p8077
;; ----- [p8078]
;; p8078
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8079]
;; p8079
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8080
;; p8080
;; ----- [p8081]
;; p8081
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p8083
;; p8083
;; ----- [p8084]
;; p8084
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8085
;; p8085
;; ----- [p8086]
;; p8086
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8084 p8086
;; p8084
;; p8086
;; ----- [p8087]
;; p8087
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8088
;; p8088
;; ----- [p8089]
;; p8089
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8087 p8089
;; p8087
;; p8089
;; ----- [p8090]
;; p8090
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8091
;; p8091
;; ----- [p8092]
;; p8092
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8090 p8092
;; p8090
;; p8092
;; ----- [p8093]
;; p8093
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p8094]
;; p8094
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p8082 p8093 p8094 p8095 p8096
;; p8082
;; p8093
;; p8094
;; p8095
;; p8096
;; ----- [p8097]
;; p8097
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p8081 p8097
;; p8081
;; p8097
;; ----- [p8098]
;; p8098
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8099]
;; p8099
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ----- [p8100]
;; p8100
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ----- [p8101]
;; p8101
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p8102]
;; p8102
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p8103]
;; p8103
;; 
;; Proof. T_VoidType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p8104
;; p8104
;; ----- [p8105]
;; p8105
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8106
;; p8106
;; ----- [p8107]
;; p8107
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8105 p8107
;; p8105
;; p8107
;; ----- [p8108]
;; p8108
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ----- [p8109]
;; p8109
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p8108 p8109
;; p8108
;; p8109
;; ----- [p8110]
;; p8110
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p8103 p8110 p8111
;; p8103
;; p8110
;; p8111
;; ----- [p8112]
;; p8112
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8113
;; p8113
;; ----- [p8114]
;; p8114
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8112 p8114
;; p8112
;; p8114
;; ----- [p8115]
;; p8115
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8116]
;; p8116
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Internal 
;; ----- [p8117]
;; p8117
;; 
;; Proof. L_Internal QED
;;; Verifying V_Default 
;; ----- [p8118]
;; p8118
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p8119]
;; p8119
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying CC_C 
;; ----- [p8120]
;; p8120
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p8121]
;; p8121
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p8122]
;; p8122
;; 
;; Proof. T_VoidType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p8124
;; p8124
;; ----- [p8125]
;; p8125
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8126
;; p8126
;; ----- [p8127]
;; p8127
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8125 p8127
;; p8125
;; p8127
;; ----- [p8128]
;; p8128
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8129
;; p8129
;; ----- [p8130]
;; p8130
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p8131]
;; p8131
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p8128 p8130 p8131
;; p8128
;; p8130
;; p8131
;; ----- [p8132]
;; p8132
;; 
;; Proof. P_Parameter QED
;;; Verifying Nil_Parameter 
;; ----- [p8133]
;; p8133
;; 
;; Proof. [] (Parameter) equivalent QED
;;; Verifying Cons_Parameter p8132 p8133
;; p8132
;; p8133
;; ----- [p8134]
;; p8134
;; 
;; Proof. Cons Parameter equivalent QED
;;; False == False : Bool
;;; Verifying Tup2_List_Parameter_Bool p8134 p8135
;; p8134
;; p8135
;; ----- [p8136]
;; p8136
;; 
;; Proof. Tuple ([Parameter], Bool) equivalent QED
;;; 0 == 0 : Word
;;; Verifying GID_GroupID p8137
;; p8137
;; ----- [p8138]
;; p8138
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p8138
;; p8138
;; ----- [p8139]
;; p8139
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p8140]
;; p8140
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p8139 p8140
;; p8139
;; p8140
;; ----- [p8141]
;; p8141
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8142]
;; p8142
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8143]
;; p8143
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 0 == 0 : Word32
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8145]
;; p8145
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p8146]
;; p8146
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; basic block matching 1-1
;;; 1 == 1 : Word
;;; Verifying N_UnName p8147
;; p8147
;; ----- [p8148]
;; p8148
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8149]
;; p8149
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8150
;; p8150
;; ----- [p8151]
;; p8151
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p8152
;; p8152
;; ----- [p8153]
;; p8153
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8154
;; p8154
;; ----- [p8155]
;; p8155
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8153 p8155
;; p8153
;; p8155
;; ----- [p8156]
;; p8156
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p8157]
;; p8157
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p8156 p8157 p8158 p8159
;; p8156
;; p8157
;; p8158
;; p8159
;; ----- [p8160]
;; p8160
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p8151 p8160
;; p8151
;; p8160
;; ----- [p8161]
;; p8161
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8162]
;; p8162
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8163
;; p8163
;; ----- [p8164]
;; p8164
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p8166
;; p8166
;; ----- [p8167]
;; p8167
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p8167
;; p8167
;; ----- [p8168]
;; p8168
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8169
;; p8169
;; ----- [p8170]
;; p8170
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8168 p8170
;; p8168
;; p8170
;; ----- [p8171]
;; p8171
;; 
;; Proof. T_PointerType QED
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p8172
;; p8172
;; ----- [p8173]
;; p8173
;; 
;; Proof. T_IntegerType QED
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p8174
;; p8174
;; ----- [p8175]
;; p8175
;; 
;; Proof. T_IntegerType QED
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p8176
;; p8176
;; ----- [p8177]
;; p8177
;; 
;; Proof. T_IntegerType QED
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p8178
;; p8178
;; ----- [p8179]
;; p8179
;; 
;; Proof. T_IntegerType QED
;;; Verifying Nil_Type 
;; ----- [p8180]
;; p8180
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p8179 p8180
;; p8179
;; p8180
;; ----- [p8181]
;; p8181
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p8177 p8181
;; p8177
;; p8181
;; ----- [p8182]
;; p8182
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p8175 p8182
;; p8175
;; p8182
;; ----- [p8183]
;; p8183
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p8173 p8183
;; p8173
;; p8183
;; ----- [p8184]
;; p8184
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p8171 p8184
;; p8171
;; p8184
;; ----- [p8185]
;; p8185
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying T_StructureType p8165 p8185
;; p8165
;; p8185
;; ----- [p8186]
;; p8186
;; 
;; Proof. T_StructureType QED
;;; Verifying MT_Just_Type p8186
;; p8186
;; ----- [p8187]
;; p8187
;; 
;; Proof. Just Type equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p8188
;; p8188
;; ----- [p8189]
;; p8189
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p8189
;; p8189
;; ----- [p8190]
;; p8190
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8191
;; p8191
;; ----- [p8192]
;; p8192
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8190 p8192
;; p8190
;; p8192
;; ----- [p8193]
;; p8193
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p8194]
;; p8194
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p8193 p8194 p8195 p8196
;; p8193
;; p8194
;; p8195
;; p8196
;; ----- [p8197]
;; p8197
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p8164 p8197
;; p8164
;; p8197
;; ----- [p8198]
;; p8198
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8199]
;; p8199
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p8201
;; p8201
;; ----- [p8202]
;; p8202
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8203
;; p8203
;; ----- [p8204]
;; p8204
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8202 p8204
;; p8202
;; p8204
;; ----- [p8205]
;; p8205
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8206
;; p8206
;; ----- [p8207]
;; p8207
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8205 p8207
;; p8205
;; p8207
;; ----- [p8208]
;; p8208
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8209
;; p8209
;; ----- [p8210]
;; p8210
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8208 p8210
;; p8208
;; p8210
;; ----- [p8211]
;; p8211
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p8212
;; p8212
;; ----- [p8213]
;; p8213
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8214
;; p8214
;; ----- [p8215]
;; p8215
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8213 p8215
;; p8213
;; p8215
;; ----- [p8216]
;; p8216
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8217
;; p8217
;; ----- [p8218]
;; p8218
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8216 p8218
;; p8216
;; p8218
;; ----- [p8219]
;; p8219
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p8220]
;; p8220
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p8200 p8211 p8219 p8220 p8221 p8222
;; p8200
;; p8211
;; p8219
;; p8220
;; p8221
;; p8222
;; ----- [p8223]
;; p8223
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p8223
;; p8223
;; ----- [p8224]
;; p8224
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8225]
;; p8225
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8226
;; p8226
;; ----- [p8227]
;; p8227
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p8229
;; p8229
;; ----- [p8230]
;; p8230
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8231
;; p8231
;; ----- [p8232]
;; p8232
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8230 p8232
;; p8230
;; p8232
;; ----- [p8233]
;; p8233
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8234
;; p8234
;; ----- [p8235]
;; p8235
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8233 p8235
;; p8233
;; p8235
;; ----- [p8236]
;; p8236
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8237
;; p8237
;; ----- [p8238]
;; p8238
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8236 p8238
;; p8236
;; p8238
;; ----- [p8239]
;; p8239
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p8240]
;; p8240
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p8228 p8239 p8240 p8241 p8242
;; p8228
;; p8239
;; p8240
;; p8241
;; p8242
;; ----- [p8243]
;; p8243
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p8227 p8243
;; p8227
;; p8243
;; ----- [p8244]
;; p8244
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8245]
;; p8245
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8246
;; p8246
;; ----- [p8247]
;; p8247
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p8248
;; p8248
;; ----- [p8249]
;; p8249
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8250
;; p8250
;; ----- [p8251]
;; p8251
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8249 p8251
;; p8249
;; p8251
;; ----- [p8252]
;; p8252
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8253
;; p8253
;; ----- [p8254]
;; p8254
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8252 p8254
;; p8252
;; p8254
;; ----- [p8255]
;; p8255
;; 
;; Proof. O_LocalReference QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p8256
;; p8256
;; ----- [p8257]
;; p8257
;; 
;; Proof. T_IntegerType QED
;;; True == True : Bool
;;; Verifying I_PtrToInt p8255 p8257 p8258
;; p8255
;; p8257
;; p8258
;; ----- [p8259]
;; p8259
;; 
;; Proof. I_PtrToInt QED
;;; Verifying NI_infix_Instruction p8247 p8259
;; p8247
;; p8259
;; ----- [p8260]
;; p8260
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8261]
;; p8261
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8262
;; p8262
;; ----- [p8263]
;; p8263
;; 
;; Proof. UnName equivalent QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p8264
;; p8264
;; ----- [p8265]
;; p8265
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8266
;; p8266
;; ----- [p8267]
;; p8267
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8265 p8267
;; p8265
;; p8267
;; ----- [p8268]
;; p8268
;; 
;; Proof. O_LocalReference QED
;;; 64 == 64 : Word32
;;; 18446744073709518848 == 18446744073709518848 : Integer
;;; Verifying C_Int p8269 p8270
;; p8269
;; p8270
;; ----- [p8271]
;; p8271
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p8271
;; p8271
;; ----- [p8272]
;; p8272
;; 
;; Proof. O_ConstantOperand QED
;;; True == True : Bool
;;; Verifying I_And p8268 p8272 p8273
;; p8268
;; p8272
;; p8273
;; ----- [p8274]
;; p8274
;; 
;; Proof. I_And QED
;;; Verifying NI_infix_Instruction p8263 p8274
;; p8263
;; p8274
;; ----- [p8275]
;; p8275
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8276]
;; p8276
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8277
;; p8277
;; ----- [p8278]
;; p8278
;; 
;; Proof. UnName equivalent QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p8279
;; p8279
;; ----- [p8280]
;; p8280
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8281
;; p8281
;; ----- [p8282]
;; p8282
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8280 p8282
;; p8280
;; p8282
;; ----- [p8283]
;; p8283
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p8284
;; p8284
;; ----- [p8285]
;; p8285
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p8285
;; p8285
;; ----- [p8286]
;; p8286
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8287
;; p8287
;; ----- [p8288]
;; p8288
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8286 p8288
;; p8286
;; p8288
;; ----- [p8289]
;; p8289
;; 
;; Proof. T_PointerType QED
;;; True == True : Bool
;;; Verifying I_IntToPtr p8283 p8289 p8290
;; p8283
;; p8289
;; p8290
;; ----- [p8291]
;; p8291
;; 
;; Proof. I_IntToPtr QED
;;; Verifying NI_infix_Instruction p8278 p8291
;; p8278
;; p8291
;; ----- [p8292]
;; p8292
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8293]
;; p8293
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p8295
;; p8295
;; ----- [p8296]
;; p8296
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p8296
;; p8296
;; ----- [p8297]
;; p8297
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8298
;; p8298
;; ----- [p8299]
;; p8299
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8297 p8299
;; p8297
;; p8299
;; ----- [p8300]
;; p8300
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8301
;; p8301
;; ----- [p8302]
;; p8302
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8300 p8302
;; p8300
;; p8302
;; ----- [p8303]
;; p8303
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8304
;; p8304
;; ----- [p8305]
;; p8305
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8303 p8305
;; p8303
;; p8305
;; ----- [p8306]
;; p8306
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p8307
;; p8307
;; ----- [p8308]
;; p8308
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p8308
;; p8308
;; ----- [p8309]
;; p8309
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8310
;; p8310
;; ----- [p8311]
;; p8311
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8309 p8311
;; p8309
;; p8311
;; ----- [p8312]
;; p8312
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8313
;; p8313
;; ----- [p8314]
;; p8314
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8312 p8314
;; p8312
;; p8314
;; ----- [p8315]
;; p8315
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p8316]
;; p8316
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p8294 p8306 p8315 p8316 p8317 p8318
;; p8294
;; p8306
;; p8315
;; p8316
;; p8317
;; p8318
;; ----- [p8319]
;; p8319
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p8319
;; p8319
;; ----- [p8320]
;; p8320
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8321]
;; p8321
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8322
;; p8322
;; ----- [p8323]
;; p8323
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p8325
;; p8325
;; ----- [p8326]
;; p8326
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p8326
;; p8326
;; ----- [p8327]
;; p8327
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8328
;; p8328
;; ----- [p8329]
;; p8329
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8327 p8329
;; p8327
;; p8329
;; ----- [p8330]
;; p8330
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8331
;; p8331
;; ----- [p8332]
;; p8332
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8330 p8332
;; p8330
;; p8332
;; ----- [p8333]
;; p8333
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8334
;; p8334
;; ----- [p8335]
;; p8335
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8333 p8335
;; p8333
;; p8335
;; ----- [p8336]
;; p8336
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p8337]
;; p8337
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p8324 p8336 p8337 p8338 p8339
;; p8324
;; p8336
;; p8337
;; p8338
;; p8339
;; ----- [p8340]
;; p8340
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p8323 p8340
;; p8323
;; p8340
;; ----- [p8341]
;; p8341
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8342]
;; p8342
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ----- [p8343]
;; p8343
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ----- [p8344]
;; p8344
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p8345]
;; p8345
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p8346]
;; p8346
;; 
;; Proof. T_VoidType QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p8347
;; p8347
;; ----- [p8348]
;; p8348
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p8348
;; p8348
;; ----- [p8349]
;; p8349
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8350
;; p8350
;; ----- [p8351]
;; p8351
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8349 p8351
;; p8349
;; p8351
;; ----- [p8352]
;; p8352
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ----- [p8353]
;; p8353
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p8352 p8353
;; p8352
;; p8353
;; ----- [p8354]
;; p8354
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p8346 p8354 p8355
;; p8346
;; p8354
;; p8355
;; ----- [p8356]
;; p8356
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8357
;; p8357
;; ----- [p8358]
;; p8358
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8356 p8358
;; p8356
;; p8358
;; ----- [p8359]
;; p8359
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8360]
;; p8360
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Internal 
;; ----- [p8361]
;; p8361
;; 
;; Proof. L_Internal QED
;;; Verifying V_Default 
;; ----- [p8362]
;; p8362
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p8363]
;; p8363
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying CC_C 
;; ----- [p8364]
;; p8364
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p8365]
;; p8365
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p8366]
;; p8366
;; 
;; Proof. T_VoidType QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p8368
;; p8368
;; ----- [p8369]
;; p8369
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p8369
;; p8369
;; ----- [p8370]
;; p8370
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8371
;; p8371
;; ----- [p8372]
;; p8372
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8370 p8372
;; p8370
;; p8372
;; ----- [p8373]
;; p8373
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8374
;; p8374
;; ----- [p8375]
;; p8375
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p8376]
;; p8376
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p8373 p8375 p8376
;; p8373
;; p8375
;; p8376
;; ----- [p8377]
;; p8377
;; 
;; Proof. P_Parameter QED
;;; Verifying Nil_Parameter 
;; ----- [p8378]
;; p8378
;; 
;; Proof. [] (Parameter) equivalent QED
;;; Verifying Cons_Parameter p8377 p8378
;; p8377
;; p8378
;; ----- [p8379]
;; p8379
;; 
;; Proof. Cons Parameter equivalent QED
;;; False == False : Bool
;;; Verifying Tup2_List_Parameter_Bool p8379 p8380
;; p8379
;; p8380
;; ----- [p8381]
;; p8381
;; 
;; Proof. Tuple ([Parameter], Bool) equivalent QED
;;; 0 == 0 : Word
;;; Verifying GID_GroupID p8382
;; p8382
;; ----- [p8383]
;; p8383
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p8383
;; p8383
;; ----- [p8384]
;; p8384
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p8385]
;; p8385
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p8384 p8385
;; p8384
;; p8385
;; ----- [p8386]
;; p8386
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8387]
;; p8387
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8388]
;; p8388
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 0 == 0 : Word32
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8390]
;; p8390
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p8391]
;; p8391
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; basic block matching 1-1, 16-16, 64-64, 17-17, 34-34, 36-36, 37-37, 40-40, 50-50, 53-53, 57-57, 60-60, 63-63
;;; 1 == 1 : Word
;;; Verifying N_UnName p8392
;; p8392
;; ----- [p8393]
;; p8393
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8394]
;; p8394
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8395
;; p8395
;; ----- [p8396]
;; p8396
;; 
;; Proof. UnName equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p8397
;; p8397
;; ----- [p8398]
;; p8398
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p8398
;; p8398
;; ----- [p8399]
;; p8399
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8400
;; p8400
;; ----- [p8401]
;; p8401
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8399 p8401
;; p8399
;; p8401
;; ----- [p8402]
;; p8402
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p8403]
;; p8403
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p8402 p8403 p8404 p8405
;; p8402
;; p8403
;; p8404
;; p8405
;; ----- [p8406]
;; p8406
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p8396 p8406
;; p8396
;; p8406
;; ----- [p8407]
;; p8407
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8408]
;; p8408
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8409
;; p8409
;; ----- [p8410]
;; p8410
;; 
;; Proof. UnName equivalent QED
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p8411
;; p8411
;; ----- [p8412]
;; p8412
;; 
;; Proof. T_IntegerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p8413]
;; p8413
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 2 == 2 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p8412 p8413 p8414 p8415
;; p8412
;; p8413
;; p8414
;; p8415
;; ----- [p8416]
;; p8416
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p8410 p8416
;; p8410
;; p8416
;; ----- [p8417]
;; p8417
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8418]
;; p8418
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8419
;; p8419
;; ----- [p8420]
;; p8420
;; 
;; Proof. UnName equivalent QED
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p8421
;; p8421
;; ----- [p8422]
;; p8422
;; 
;; Proof. T_IntegerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p8423]
;; p8423
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 2 == 2 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p8422 p8423 p8424 p8425
;; p8422
;; p8423
;; p8424
;; p8425
;; ----- [p8426]
;; p8426
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p8420 p8426
;; p8420
;; p8426
;; ----- [p8427]
;; p8427
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8428]
;; p8428
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8429
;; p8429
;; ----- [p8430]
;; p8430
;; 
;; Proof. UnName equivalent QED
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p8431
;; p8431
;; ----- [p8432]
;; p8432
;; 
;; Proof. T_IntegerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p8433]
;; p8433
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 2 == 2 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p8432 p8433 p8434 p8435
;; p8432
;; p8433
;; p8434
;; p8435
;; ----- [p8436]
;; p8436
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p8430 p8436
;; p8430
;; p8436
;; ----- [p8437]
;; p8437
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8438]
;; p8438
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8439
;; p8439
;; ----- [p8440]
;; p8440
;; 
;; Proof. UnName equivalent QED
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p8441
;; p8441
;; ----- [p8442]
;; p8442
;; 
;; Proof. T_IntegerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p8443]
;; p8443
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 2 == 2 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p8442 p8443 p8444 p8445
;; p8442
;; p8443
;; p8444
;; p8445
;; ----- [p8446]
;; p8446
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p8440 p8446
;; p8440
;; p8446
;; ----- [p8447]
;; p8447
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8448]
;; p8448
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8449
;; p8449
;; ----- [p8450]
;; p8450
;; 
;; Proof. UnName equivalent QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p8451
;; p8451
;; ----- [p8452]
;; p8452
;; 
;; Proof. T_IntegerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p8453]
;; p8453
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p8452 p8453 p8454 p8455
;; p8452
;; p8453
;; p8454
;; p8455
;; ----- [p8456]
;; p8456
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p8450 p8456
;; p8450
;; p8456
;; ----- [p8457]
;; p8457
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8458]
;; p8458
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8459
;; p8459
;; ----- [p8460]
;; p8460
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p8462
;; p8462
;; ----- [p8463]
;; p8463
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p8463
;; p8463
;; ----- [p8464]
;; p8464
;; 
;; Proof. T_NamedTypeReference QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p8466
;; p8466
;; ----- [p8467]
;; p8467
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p8467
;; p8467
;; ----- [p8468]
;; p8468
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8469
;; p8469
;; ----- [p8470]
;; p8470
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8468 p8470
;; p8468
;; p8470
;; ----- [p8471]
;; p8471
;; 
;; Proof. T_PointerType QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p8472
;; p8472
;; ----- [p8473]
;; p8473
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p8473
;; p8473
;; ----- [p8474]
;; p8474
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8475
;; p8475
;; ----- [p8476]
;; p8476
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8474 p8476
;; p8474
;; p8476
;; ----- [p8477]
;; p8477
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ----- [p8478]
;; p8478
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p8477 p8478
;; p8477
;; p8478
;; ----- [p8479]
;; p8479
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p8471 p8479
;; p8471
;; p8479
;; ----- [p8480]
;; p8480
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying T_StructureType p8465 p8480
;; p8465
;; p8480
;; ----- [p8481]
;; p8481
;; 
;; Proof. T_StructureType QED
;;; Verifying MT_Just_Type p8481
;; p8481
;; ----- [p8482]
;; p8482
;; 
;; Proof. Just Type equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p8483
;; p8483
;; ----- [p8484]
;; p8484
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p8484
;; p8484
;; ----- [p8485]
;; p8485
;; 
;; Proof. T_NamedTypeReference QED
;;; Verifying Nil_Type 
;; ----- [p8486]
;; p8486
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p8485 p8486
;; p8485
;; p8486
;; ----- [p8487]
;; p8487
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p8464 p8487
;; p8464
;; p8487
;; ----- [p8488]
;; p8488
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying T_StructureType p8461 p8488
;; p8461
;; p8488
;; ----- [p8489]
;; p8489
;; 
;; Proof. T_StructureType QED
;;; Verifying MT_Just_Type p8489
;; p8489
;; ----- [p8490]
;; p8490
;; 
;; Proof. Just Type equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p8491
;; p8491
;; ----- [p8492]
;; p8492
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p8492
;; p8492
;; ----- [p8493]
;; p8493
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8494
;; p8494
;; ----- [p8495]
;; p8495
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8493 p8495
;; p8493
;; p8495
;; ----- [p8496]
;; p8496
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p8497]
;; p8497
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p8496 p8497 p8498 p8499
;; p8496
;; p8497
;; p8498
;; p8499
;; ----- [p8500]
;; p8500
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p8460 p8500
;; p8460
;; p8500
;; ----- [p8501]
;; p8501
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8502]
;; p8502
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p8504
;; p8504
;; ----- [p8505]
;; p8505
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p8505
;; p8505
;; ----- [p8506]
;; p8506
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8507
;; p8507
;; ----- [p8508]
;; p8508
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8506 p8508
;; p8506
;; p8508
;; ----- [p8509]
;; p8509
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8510
;; p8510
;; ----- [p8511]
;; p8511
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8509 p8511
;; p8509
;; p8511
;; ----- [p8512]
;; p8512
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8513
;; p8513
;; ----- [p8514]
;; p8514
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8512 p8514
;; p8512
;; p8514
;; ----- [p8515]
;; p8515
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p8516
;; p8516
;; ----- [p8517]
;; p8517
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p8517
;; p8517
;; ----- [p8518]
;; p8518
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8519
;; p8519
;; ----- [p8520]
;; p8520
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8518 p8520
;; p8518
;; p8520
;; ----- [p8521]
;; p8521
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8522
;; p8522
;; ----- [p8523]
;; p8523
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8521 p8523
;; p8521
;; p8523
;; ----- [p8524]
;; p8524
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p8525]
;; p8525
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p8503 p8515 p8524 p8525 p8526 p8527
;; p8503
;; p8515
;; p8524
;; p8525
;; p8526
;; p8527
;; ----- [p8528]
;; p8528
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p8528
;; p8528
;; ----- [p8529]
;; p8529
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8530]
;; p8530
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8531
;; p8531
;; ----- [p8532]
;; p8532
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p8534
;; p8534
;; ----- [p8535]
;; p8535
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p8535
;; p8535
;; ----- [p8536]
;; p8536
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8537
;; p8537
;; ----- [p8538]
;; p8538
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8536 p8538
;; p8536
;; p8538
;; ----- [p8539]
;; p8539
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8540
;; p8540
;; ----- [p8541]
;; p8541
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8539 p8541
;; p8539
;; p8541
;; ----- [p8542]
;; p8542
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8543
;; p8543
;; ----- [p8544]
;; p8544
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8542 p8544
;; p8542
;; p8544
;; ----- [p8545]
;; p8545
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p8546]
;; p8546
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p8533 p8545 p8546 p8547 p8548
;; p8533
;; p8545
;; p8546
;; p8547
;; p8548
;; ----- [p8549]
;; p8549
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p8532 p8549
;; p8532
;; p8549
;; ----- [p8550]
;; p8550
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8551]
;; p8551
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8552
;; p8552
;; ----- [p8553]
;; p8553
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p8555
;; p8555
;; ----- [p8556]
;; p8556
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p8556
;; p8556
;; ----- [p8557]
;; p8557
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8558
;; p8558
;; ----- [p8559]
;; p8559
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8557 p8559
;; p8557
;; p8559
;; ----- [p8560]
;; p8560
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8561
;; p8561
;; ----- [p8562]
;; p8562
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8560 p8562
;; p8560
;; p8562
;; ----- [p8563]
;; p8563
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p8564 p8565
;; p8564
;; p8565
;; ----- [p8566]
;; p8566
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p8566
;; p8566
;; ----- [p8567]
;; p8567
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 1 == 1 : Integer
;;; Verifying C_Int p8568 p8569
;; p8568
;; p8569
;; ----- [p8570]
;; p8570
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p8570
;; p8570
;; ----- [p8571]
;; p8571
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ----- [p8572]
;; p8572
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p8571 p8572
;; p8571
;; p8572
;; ----- [p8573]
;; p8573
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p8567 p8573
;; p8567
;; p8573
;; ----- [p8574]
;; p8574
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p8554 p8563 p8574 p8575
;; p8554
;; p8563
;; p8574
;; p8575
;; ----- [p8576]
;; p8576
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p8553 p8576
;; p8553
;; p8576
;; ----- [p8577]
;; p8577
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8578]
;; p8578
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p8580
;; p8580
;; ----- [p8581]
;; p8581
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8582
;; p8582
;; ----- [p8583]
;; p8583
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8581 p8583
;; p8581
;; p8583
;; ----- [p8584]
;; p8584
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8585
;; p8585
;; ----- [p8586]
;; p8586
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8584 p8586
;; p8584
;; p8586
;; ----- [p8587]
;; p8587
;; 
;; Proof. O_LocalReference QED
;;; 16 == 16 : Word32
;;; 1 == 1 : Integer
;;; Verifying C_Int p8588 p8589
;; p8588
;; p8589
;; ----- [p8590]
;; p8590
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p8590
;; p8590
;; ----- [p8591]
;; p8591
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p8592]
;; p8592
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 2 == 2 : Word32
;;; True == True : Bool
;;; Verifying I_Store p8579 p8587 p8591 p8592 p8593 p8594
;; p8579
;; p8587
;; p8591
;; p8592
;; p8593
;; p8594
;; ----- [p8595]
;; p8595
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p8595
;; p8595
;; ----- [p8596]
;; p8596
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8597]
;; p8597
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8598
;; p8598
;; ----- [p8599]
;; p8599
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p8601
;; p8601
;; ----- [p8602]
;; p8602
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8603
;; p8603
;; ----- [p8604]
;; p8604
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8602 p8604
;; p8602
;; p8604
;; ----- [p8605]
;; p8605
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8606
;; p8606
;; ----- [p8607]
;; p8607
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8605 p8607
;; p8605
;; p8607
;; ----- [p8608]
;; p8608
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p8609]
;; p8609
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 2 == 2 : Word32
;;; True == True : Bool
;;; Verifying I_Load p8600 p8608 p8609 p8610 p8611
;; p8600
;; p8608
;; p8609
;; p8610
;; p8611
;; ----- [p8612]
;; p8612
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p8599 p8612
;; p8599
;; p8612
;; ----- [p8613]
;; p8613
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8614]
;; p8614
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8615
;; p8615
;; ----- [p8616]
;; p8616
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; Verifying RMWO_Sub 
;; ----- [p8618]
;; p8618
;; 
;; Proof. RMWO_Sub QED
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p8619
;; p8619
;; ----- [p8620]
;; p8620
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8621
;; p8621
;; ----- [p8622]
;; p8622
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8620 p8622
;; p8620
;; p8622
;; ----- [p8623]
;; p8623
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8624
;; p8624
;; ----- [p8625]
;; p8625
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8623 p8625
;; p8623
;; p8625
;; ----- [p8626]
;; p8626
;; 
;; Proof. O_LocalReference QED
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p8627
;; p8627
;; ----- [p8628]
;; p8628
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8629
;; p8629
;; ----- [p8630]
;; p8630
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8628 p8630
;; p8628
;; p8630
;; ----- [p8631]
;; p8631
;; 
;; Proof. O_LocalReference QED
;;; Verifying SS_System 
;; ----- [p8632]
;; p8632
;; 
;; Proof. SS_System QED
;;; Verifying MO_SequentiallyConsistent 
;; ----- [p8633]
;; p8633
;; 
;; Proof. MO_SequentiallyConsistent QED
;;; Verifying Tup2_SynchronizationScope_MemoryOrdering p8632 p8633
;; p8632
;; p8633
;; ----- [p8634]
;; p8634
;; 
;; Proof. Tuple (SynchronizationScope, MemoryOrdering) equivalent QED
;;; True == True : Bool
;;; Verifying I_AtomicRMW p8617 p8618 p8626 p8631 p8634 p8635
;; p8617
;; p8618
;; p8626
;; p8631
;; p8634
;; p8635
;; ----- [p8636]
;; p8636
;; 
;; Proof. I_AtomicRMW QED
;;; Verifying NI_infix_Instruction p8616 p8636
;; p8616
;; p8636
;; ----- [p8637]
;; p8637
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8638]
;; p8638
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8639
;; p8639
;; ----- [p8640]
;; p8640
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; False == False : Bool
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p8643
;; p8643
;; ----- [p8644]
;; p8644
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8645
;; p8645
;; ----- [p8646]
;; p8646
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8644 p8646
;; p8644
;; p8646
;; ----- [p8647]
;; p8647
;; 
;; Proof. O_LocalReference QED
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p8648
;; p8648
;; ----- [p8649]
;; p8649
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8650
;; p8650
;; ----- [p8651]
;; p8651
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8649 p8651
;; p8649
;; p8651
;; ----- [p8652]
;; p8652
;; 
;; Proof. O_LocalReference QED
;;; True == True : Bool
;;; Verifying I_Sub p8641 p8642 p8647 p8652 p8653
;; p8641
;; p8642
;; p8647
;; p8652
;; p8653
;; ----- [p8654]
;; p8654
;; 
;; Proof. I_Sub QED
;;; Verifying NI_infix_Instruction p8640 p8654
;; p8640
;; p8654
;; ----- [p8655]
;; p8655
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8656]
;; p8656
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p8658
;; p8658
;; ----- [p8659]
;; p8659
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8660
;; p8660
;; ----- [p8661]
;; p8661
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8659 p8661
;; p8659
;; p8661
;; ----- [p8662]
;; p8662
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8663
;; p8663
;; ----- [p8664]
;; p8664
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8662 p8664
;; p8662
;; p8664
;; ----- [p8665]
;; p8665
;; 
;; Proof. O_LocalReference QED
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p8666
;; p8666
;; ----- [p8667]
;; p8667
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8668
;; p8668
;; ----- [p8669]
;; p8669
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8667 p8669
;; p8667
;; p8669
;; ----- [p8670]
;; p8670
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p8671]
;; p8671
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 2 == 2 : Word32
;;; True == True : Bool
;;; Verifying I_Store p8657 p8665 p8670 p8671 p8672 p8673
;; p8657
;; p8665
;; p8670
;; p8671
;; p8672
;; p8673
;; ----- [p8674]
;; p8674
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p8674
;; p8674
;; ----- [p8675]
;; p8675
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8676]
;; p8676
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8677
;; p8677
;; ----- [p8678]
;; p8678
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p8680
;; p8680
;; ----- [p8681]
;; p8681
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8682
;; p8682
;; ----- [p8683]
;; p8683
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8681 p8683
;; p8681
;; p8683
;; ----- [p8684]
;; p8684
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8685
;; p8685
;; ----- [p8686]
;; p8686
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8684 p8686
;; p8684
;; p8686
;; ----- [p8687]
;; p8687
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p8688]
;; p8688
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 2 == 2 : Word32
;;; True == True : Bool
;;; Verifying I_Load p8679 p8687 p8688 p8689 p8690
;; p8679
;; p8687
;; p8688
;; p8689
;; p8690
;; ----- [p8691]
;; p8691
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p8678 p8691
;; p8678
;; p8691
;; ----- [p8692]
;; p8692
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8693]
;; p8693
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8694
;; p8694
;; ----- [p8695]
;; p8695
;; 
;; Proof. UnName equivalent QED
;;; Verifying IP_NE 
;; ----- [p8696]
;; p8696
;; 
;; Proof. IP_NE QED
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p8697
;; p8697
;; ----- [p8698]
;; p8698
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8699
;; p8699
;; ----- [p8700]
;; p8700
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8698 p8700
;; p8698
;; p8700
;; ----- [p8701]
;; p8701
;; 
;; Proof. O_LocalReference QED
;;; 16 == 16 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p8702 p8703
;; p8702
;; p8703
;; ----- [p8704]
;; p8704
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p8704
;; p8704
;; ----- [p8705]
;; p8705
;; 
;; Proof. O_ConstantOperand QED
;;; True == True : Bool
;;; Verifying I_ICmp p8696 p8701 p8705 p8706
;; p8696
;; p8701
;; p8705
;; p8706
;; ----- [p8707]
;; p8707
;; 
;; Proof. I_ICmp QED
;;; Verifying NI_infix_Instruction p8695 p8707
;; p8695
;; p8707
;; ----- [p8708]
;; p8708
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p8709]
;; p8709
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p8708 p8709
;; p8708
;; p8709
;; ----- [p8710]
;; p8710
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p8692 p8710
;; p8692
;; p8710
;; ----- [p8711]
;; p8711
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p8675 p8711
;; p8675
;; p8711
;; ----- [p8712]
;; p8712
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p8655 p8712
;; p8655
;; p8712
;; ----- [p8713]
;; p8713
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p8637 p8713
;; p8637
;; p8713
;; ----- [p8714]
;; p8714
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p8613 p8714
;; p8613
;; p8714
;; ----- [p8715]
;; p8715
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p8596 p8715
;; p8596
;; p8715
;; ----- [p8716]
;; p8716
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p8577 p8716
;; p8577
;; p8716
;; ----- [p8717]
;; p8717
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p8550 p8717
;; p8550
;; p8717
;; ----- [p8718]
;; p8718
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p8529 p8718
;; p8529
;; p8718
;; ----- [p8719]
;; p8719
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p8501 p8719
;; p8501
;; p8719
;; ----- [p8720]
;; p8720
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p8457 p8720
;; p8457
;; p8720
;; ----- [p8721]
;; p8721
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p8447 p8721
;; p8447
;; p8721
;; ----- [p8722]
;; p8722
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p8437 p8722
;; p8437
;; p8722
;; ----- [p8723]
;; p8723
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p8427 p8723
;; p8427
;; p8723
;; ----- [p8724]
;; p8724
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p8417 p8724
;; p8417
;; p8724
;; ----- [p8725]
;; p8725
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p8407 p8725
;; p8407
;; p8725
;; ----- [p8726]
;; p8726
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8727]
;; p8727
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; Verifying T_IntegerType p8728
;; p8728
;; ----- [p8729]
;; p8729
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8730
;; p8730
;; ----- [p8731]
;; p8731
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8729 p8731
;; p8729
;; p8731
;; ----- [p8732]
;; p8732
;; 
;; Proof. O_LocalReference QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8733
;; p8733
;; ----- [p8734]
;; p8734
;; 
;; Proof. UnName equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8735
;; p8735
;; ----- [p8736]
;; p8736
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_CondBr p8732 p8734 p8736 p8737
;; p8732
;; p8734
;; p8736
;; p8737
;; ----- [p8738]
;; p8738
;; 
;; Proof. T_CondBr QED
;;; Verifying NT_Do_Terminator p8738
;; p8738
;; ----- [p8739]
;; p8739
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p8393 p8726 p8739
;; p8393
;; p8726
;; p8739
;; ----- [p8740]
;; p8740
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8741
;; p8741
;; ----- [p8742]
;; p8742
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p8743]
;; p8743
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8744]
;; p8744
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8745
;; p8745
;; ----- [p8746]
;; p8746
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_Br p8746 p8747
;; p8746
;; p8747
;; ----- [p8748]
;; p8748
;; 
;; Proof. T_Br QED
;;; Verifying NT_Do_Terminator p8748
;; p8748
;; ----- [p8749]
;; p8749
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p8742 p8743 p8749
;; p8742
;; p8743
;; p8749
;; ----- [p8750]
;; p8750
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8751
;; p8751
;; ----- [p8752]
;; p8752
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p8753]
;; p8753
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8754]
;; p8754
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p8755]
;; p8755
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; True == True : Bool
;;; Verifying T_Ret p8755 p8756
;; p8755
;; p8756
;; ----- [p8757]
;; p8757
;; 
;; Proof. T_Ret QED
;;; Verifying NT_Do_Terminator p8757
;; p8757
;; ----- [p8758]
;; p8758
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p8752 p8753 p8758
;; p8752
;; p8753
;; p8758
;; ----- [p8759]
;; p8759
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8760
;; p8760
;; ----- [p8761]
;; p8761
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8762]
;; p8762
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8763
;; p8763
;; ----- [p8764]
;; p8764
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p8766
;; p8766
;; ----- [p8767]
;; p8767
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p8767
;; p8767
;; ----- [p8768]
;; p8768
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8769
;; p8769
;; ----- [p8770]
;; p8770
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8768 p8770
;; p8768
;; p8770
;; ----- [p8771]
;; p8771
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8772
;; p8772
;; ----- [p8773]
;; p8773
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8771 p8773
;; p8771
;; p8773
;; ----- [p8774]
;; p8774
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8775
;; p8775
;; ----- [p8776]
;; p8776
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8774 p8776
;; p8774
;; p8776
;; ----- [p8777]
;; p8777
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p8778]
;; p8778
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p8765 p8777 p8778 p8779 p8780
;; p8765
;; p8777
;; p8778
;; p8779
;; p8780
;; ----- [p8781]
;; p8781
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p8764 p8781
;; p8764
;; p8781
;; ----- [p8782]
;; p8782
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8783]
;; p8783
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8784
;; p8784
;; ----- [p8785]
;; p8785
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p8787
;; p8787
;; ----- [p8788]
;; p8788
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p8788
;; p8788
;; ----- [p8789]
;; p8789
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8790
;; p8790
;; ----- [p8791]
;; p8791
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8789 p8791
;; p8789
;; p8791
;; ----- [p8792]
;; p8792
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8793
;; p8793
;; ----- [p8794]
;; p8794
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8792 p8794
;; p8792
;; p8794
;; ----- [p8795]
;; p8795
;; 
;; Proof. O_LocalReference QED
;;; 64 == 64 : Word32
;;; 1 == 1 : Integer
;;; Verifying C_Int p8796 p8797
;; p8796
;; p8797
;; ----- [p8798]
;; p8798
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p8798
;; p8798
;; ----- [p8799]
;; p8799
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ----- [p8800]
;; p8800
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p8799 p8800
;; p8799
;; p8800
;; ----- [p8801]
;; p8801
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p8786 p8795 p8801 p8802
;; p8786
;; p8795
;; p8801
;; p8802
;; ----- [p8803]
;; p8803
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p8785 p8803
;; p8785
;; p8803
;; ----- [p8804]
;; p8804
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8805]
;; p8805
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8806
;; p8806
;; ----- [p8807]
;; p8807
;; 
;; Proof. UnName equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p8808
;; p8808
;; ----- [p8809]
;; p8809
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p8809
;; p8809
;; ----- [p8810]
;; p8810
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8811
;; p8811
;; ----- [p8812]
;; p8812
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8810 p8812
;; p8810
;; p8812
;; ----- [p8813]
;; p8813
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8814
;; p8814
;; ----- [p8815]
;; p8815
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8813 p8815
;; p8813
;; p8815
;; ----- [p8816]
;; p8816
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p8817
;; p8817
;; ----- [p8818]
;; p8818
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8819
;; p8819
;; ----- [p8820]
;; p8820
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8818 p8820
;; p8818
;; p8820
;; ----- [p8821]
;; p8821
;; 
;; Proof. T_PointerType QED
;;; True == True : Bool
;;; Verifying I_BitCast p8816 p8821 p8822
;; p8816
;; p8821
;; p8822
;; ----- [p8823]
;; p8823
;; 
;; Proof. I_BitCast QED
;;; Verifying NI_infix_Instruction p8807 p8823
;; p8807
;; p8823
;; ----- [p8824]
;; p8824
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8825]
;; p8825
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ----- [p8826]
;; p8826
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ----- [p8827]
;; p8827
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p8828]
;; p8828
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p8829]
;; p8829
;; 
;; Proof. T_VoidType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p8830
;; p8830
;; ----- [p8831]
;; p8831
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8832
;; p8832
;; ----- [p8833]
;; p8833
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8831 p8833
;; p8831
;; p8833
;; ----- [p8834]
;; p8834
;; 
;; Proof. T_PointerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p8835
;; p8835
;; ----- [p8836]
;; p8836
;; 
;; Proof. T_IntegerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p8837
;; p8837
;; ----- [p8838]
;; p8838
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word32
;;; Verifying T_IntegerType p8839
;; p8839
;; ----- [p8840]
;; p8840
;; 
;; Proof. T_IntegerType QED
;;; Verifying Nil_Type 
;; ----- [p8841]
;; p8841
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p8840 p8841
;; p8840
;; p8841
;; ----- [p8842]
;; p8842
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p8838 p8842
;; p8838
;; p8842
;; ----- [p8843]
;; p8843
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p8836 p8843
;; p8836
;; p8843
;; ----- [p8844]
;; p8844
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p8834 p8844
;; p8834
;; p8844
;; ----- [p8845]
;; p8845
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p8829 p8845 p8846
;; p8829
;; p8845
;; p8846
;; ----- [p8847]
;; p8847
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8848
;; p8848
;; ----- [p8849]
;; p8849
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8847 p8849
;; p8847
;; p8849
;; ----- [p8850]
;; p8850
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8851]
;; p8851
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_External 
;; ----- [p8852]
;; p8852
;; 
;; Proof. L_External QED
;;; Verifying V_Default 
;; ----- [p8853]
;; p8853
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p8854]
;; p8854
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying CC_C 
;; ----- [p8855]
;; p8855
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p8856]
;; p8856
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p8857]
;; p8857
;; 
;; Proof. T_VoidType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p8859
;; p8859
;; ----- [p8860]
;; p8860
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8861
;; p8861
;; ----- [p8862]
;; p8862
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8860 p8862
;; p8860
;; p8862
;; ----- [p8863]
;; p8863
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8864
;; p8864
;; ----- [p8865]
;; p8865
;; 
;; Proof. UnName equivalent QED
;;; Verifying PA_NoCapture 
;; ----- [p8866]
;; p8866
;; 
;; Proof. PA_NoCapture QED
;;; Verifying PA_WriteOnly 
;; ----- [p8867]
;; p8867
;; 
;; Proof. PA_WriteOnly QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p8868]
;; p8868
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Cons_ParameterAttribute p8867 p8868
;; p8867
;; p8868
;; ----- [p8869]
;; p8869
;; 
;; Proof. Cons ParameterAttribute equivalent QED
;;; Verifying Cons_ParameterAttribute p8866 p8869
;; p8866
;; p8869
;; ----- [p8870]
;; p8870
;; 
;; Proof. Cons ParameterAttribute equivalent QED
;;; Verifying P_Parameter p8863 p8865 p8870
;; p8863
;; p8865
;; p8870
;; ----- [p8871]
;; p8871
;; 
;; Proof. P_Parameter QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p8872
;; p8872
;; ----- [p8873]
;; p8873
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8874
;; p8874
;; ----- [p8875]
;; p8875
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p8876]
;; p8876
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p8873 p8875 p8876
;; p8873
;; p8875
;; p8876
;; ----- [p8877]
;; p8877
;; 
;; Proof. P_Parameter QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p8878
;; p8878
;; ----- [p8879]
;; p8879
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8880
;; p8880
;; ----- [p8881]
;; p8881
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p8882]
;; p8882
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p8879 p8881 p8882
;; p8879
;; p8881
;; p8882
;; ----- [p8883]
;; p8883
;; 
;; Proof. P_Parameter QED
;;; 1 == 1 : Word32
;;; Verifying T_IntegerType p8884
;; p8884
;; ----- [p8885]
;; p8885
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8886
;; p8886
;; ----- [p8887]
;; p8887
;; 
;; Proof. UnName equivalent QED
;;; Verifying PA_ImmArg 
;; ----- [p8888]
;; p8888
;; 
;; Proof. PA_ImmArg QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p8889]
;; p8889
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Cons_ParameterAttribute p8888 p8889
;; p8888
;; p8889
;; ----- [p8890]
;; p8890
;; 
;; Proof. Cons ParameterAttribute equivalent QED
;;; Verifying P_Parameter p8885 p8887 p8890
;; p8885
;; p8887
;; p8890
;; ----- [p8891]
;; p8891
;; 
;; Proof. P_Parameter QED
;;; Verifying Nil_Parameter 
;; ----- [p8892]
;; p8892
;; 
;; Proof. [] (Parameter) equivalent QED
;;; Verifying Cons_Parameter p8891 p8892
;; p8891
;; p8892
;; ----- [p8893]
;; p8893
;; 
;; Proof. Cons Parameter equivalent QED
;;; Verifying Cons_Parameter p8883 p8893
;; p8883
;; p8893
;; ----- [p8894]
;; p8894
;; 
;; Proof. Cons Parameter equivalent QED
;;; Verifying Cons_Parameter p8877 p8894
;; p8877
;; p8894
;; ----- [p8895]
;; p8895
;; 
;; Proof. Cons Parameter equivalent QED
;;; Verifying Cons_Parameter p8871 p8895
;; p8871
;; p8895
;; ----- [p8896]
;; p8896
;; 
;; Proof. Cons Parameter equivalent QED
;;; False == False : Bool
;;; Verifying Tup2_List_Parameter_Bool p8896 p8897
;; p8896
;; p8897
;; ----- [p8898]
;; p8898
;; 
;; Proof. Tuple ([Parameter], Bool) equivalent QED
;;; 2 == 2 : Word
;;; Verifying GID_GroupID p8899
;; p8899
;; ----- [p8900]
;; p8900
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p8900
;; p8900
;; ----- [p8901]
;; p8901
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p8902]
;; p8902
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p8901 p8902
;; p8901
;; p8902
;; ----- [p8903]
;; p8903
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8904]
;; p8904
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8905]
;; p8905
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 0 == 0 : Word32
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8907]
;; p8907
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p8908]
;; p8908
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p8910]
;; p8910
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; True == True : Bool
;;; Verifying G_Function p8852 p8853 p8854 p8855 p8856 p8857 p8858 p8898 p8903 p8904 p8905 p8906 p8907 p8908 p8909 p8910 p8911
;; p8852
;; p8853
;; p8854
;; p8855
;; p8856
;; p8857
;; p8858
;; p8898
;; p8903
;; p8904
;; p8905
;; p8906
;; p8907
;; p8908
;; p8909
;; p8910
;; p8911
;; ----- [p8912]
;; p8912
;; 
;; Proof. functions llvm.memset.p0i8.i64 and llvm.memset.p0i8.i64 equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p8913
;; p8913
;; ----- [p8914]
;; p8914
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p8850 p8914
;; p8850
;; p8914
;; ----- [p8915]
;; p8915
;; 
;; Proof. C_GlobalReference QED
;;; Verifying O_ConstantOperand p8915
;; p8915
;; ----- [p8916]
;; p8916
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying EIAO_Right_InlineAssembly_Operand p8916
;; p8916
;; ----- [p8917]
;; p8917
;; 
;; Proof. Right (InlineAssembly Operand) equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p8918
;; p8918
;; ----- [p8919]
;; p8919
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8920
;; p8920
;; ----- [p8921]
;; p8921
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8919 p8921
;; p8919
;; p8921
;; ----- [p8922]
;; p8922
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8923
;; p8923
;; ----- [p8924]
;; p8924
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p8922 p8924
;; p8922
;; p8924
;; ----- [p8925]
;; p8925
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word64
;;; Verifying PA_Alignment p8926
;; p8926
;; ----- [p8927]
;; p8927
;; 
;; Proof. PA_Alignment QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p8928]
;; p8928
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Cons_ParameterAttribute p8927 p8928
;; p8927
;; p8928
;; ----- [p8929]
;; p8929
;; 
;; Proof. Cons ParameterAttribute equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p8925 p8929
;; p8925
;; p8929
;; ----- [p8930]
;; p8930
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; 8 == 8 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p8931 p8932
;; p8931
;; p8932
;; ----- [p8933]
;; p8933
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p8933
;; p8933
;; ----- [p8934]
;; p8934
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p8935]
;; p8935
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p8934 p8935
;; p8934
;; p8935
;; ----- [p8936]
;; p8936
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; 64 == 64 : Word32
;;; 32752 == 32752 : Integer
;;; Verifying C_Int p8937 p8938
;; p8937
;; p8938
;; ----- [p8939]
;; p8939
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p8939
;; p8939
;; ----- [p8940]
;; p8940
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p8941]
;; p8941
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p8940 p8941
;; p8940
;; p8941
;; ----- [p8942]
;; p8942
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; 1 == 1 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p8943 p8944
;; p8943
;; p8944
;; ----- [p8945]
;; p8945
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p8945
;; p8945
;; ----- [p8946]
;; p8946
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p8947]
;; p8947
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p8946 p8947
;; p8946
;; p8947
;; ----- [p8948]
;; p8948
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Tup2_Operand_List_ParameterAttribute 
;; ----- [p8949]
;; p8949
;; 
;; Proof. [] ((Operand, [ParameterAttribute])) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p8948 p8949
;; p8948
;; p8949
;; ----- [p8950]
;; p8950
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p8942 p8950
;; p8942
;; p8950
;; ----- [p8951]
;; p8951
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p8936 p8951
;; p8936
;; p8951
;; ----- [p8952]
;; p8952
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p8930 p8952
;; p8930
;; p8952
;; ----- [p8953]
;; p8953
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p8954]
;; p8954
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; True == True : Bool
;;; Verifying I_Call p8826 p8827 p8828 p8917 p8953 p8954 p8955
;; p8826
;; p8827
;; p8828
;; p8917
;; p8953
;; p8954
;; p8955
;; ----- [p8956]
;; p8956
;; 
;; Proof. I_Call QED
;;; Verifying NI_Do_Instruction p8956
;; p8956
;; ----- [p8957]
;; p8957
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8958]
;; p8958
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ----- [p8959]
;; p8959
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ----- [p8960]
;; p8960
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p8961]
;; p8961
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p8962]
;; p8962
;; 
;; Proof. T_VoidType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p8963
;; p8963
;; ----- [p8964]
;; p8964
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8965
;; p8965
;; ----- [p8966]
;; p8966
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8964 p8966
;; p8964
;; p8966
;; ----- [p8967]
;; p8967
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ----- [p8968]
;; p8968
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p8967 p8968
;; p8967
;; p8968
;; ----- [p8969]
;; p8969
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p8962 p8969 p8970
;; p8962
;; p8969
;; p8970
;; ----- [p8971]
;; p8971
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8972
;; p8972
;; ----- [p8973]
;; p8973
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8971 p8973
;; p8971
;; p8973
;; ----- [p8974]
;; p8974
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p8975]
;; p8975
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Internal 
;; ----- [p8976]
;; p8976
;; 
;; Proof. L_Internal QED
;;; Verifying V_Default 
;; ----- [p8977]
;; p8977
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p8978]
;; p8978
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying CC_C 
;; ----- [p8979]
;; p8979
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p8980]
;; p8980
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p8981]
;; p8981
;; 
;; Proof. T_VoidType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p8983
;; p8983
;; ----- [p8984]
;; p8984
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p8985
;; p8985
;; ----- [p8986]
;; p8986
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p8984 p8986
;; p8984
;; p8986
;; ----- [p8987]
;; p8987
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p8988
;; p8988
;; ----- [p8989]
;; p8989
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p8990]
;; p8990
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p8987 p8989 p8990
;; p8987
;; p8989
;; p8990
;; ----- [p8991]
;; p8991
;; 
;; Proof. P_Parameter QED
;;; Verifying Nil_Parameter 
;; ----- [p8992]
;; p8992
;; 
;; Proof. [] (Parameter) equivalent QED
;;; Verifying Cons_Parameter p8991 p8992
;; p8991
;; p8992
;; ----- [p8993]
;; p8993
;; 
;; Proof. Cons Parameter equivalent QED
;;; False == False : Bool
;;; Verifying Tup2_List_Parameter_Bool p8993 p8994
;; p8993
;; p8994
;; ----- [p8995]
;; p8995
;; 
;; Proof. Tuple ([Parameter], Bool) equivalent QED
;;; 0 == 0 : Word
;;; Verifying GID_GroupID p8996
;; p8996
;; ----- [p8997]
;; p8997
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p8997
;; p8997
;; ----- [p8998]
;; p8998
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p8999]
;; p8999
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p8998 p8999
;; p8998
;; p8999
;; ----- [p9000]
;; p9000
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9001]
;; p9001
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9002]
;; p9002
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 0 == 0 : Word32
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9004]
;; p9004
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p9005]
;; p9005
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; basic block matching 1-1, 3-3, 7-7, 8-8
;;; 1 == 1 : Word
;;; Verifying N_UnName p9006
;; p9006
;; ----- [p9007]
;; p9007
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9008]
;; p9008
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9009
;; p9009
;; ----- [p9010]
;; p9010
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9011
;; p9011
;; ----- [p9012]
;; p9012
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9013
;; p9013
;; ----- [p9014]
;; p9014
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9012 p9014
;; p9012
;; p9014
;; ----- [p9015]
;; p9015
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p9016]
;; p9016
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p9015 p9016 p9017 p9018
;; p9015
;; p9016
;; p9017
;; p9018
;; ----- [p9019]
;; p9019
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p9010 p9019
;; p9010
;; p9019
;; ----- [p9020]
;; p9020
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9021]
;; p9021
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9023
;; p9023
;; ----- [p9024]
;; p9024
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9025
;; p9025
;; ----- [p9026]
;; p9026
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9024 p9026
;; p9024
;; p9026
;; ----- [p9027]
;; p9027
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9028
;; p9028
;; ----- [p9029]
;; p9029
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9027 p9029
;; p9027
;; p9029
;; ----- [p9030]
;; p9030
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9031
;; p9031
;; ----- [p9032]
;; p9032
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9030 p9032
;; p9030
;; p9032
;; ----- [p9033]
;; p9033
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9034
;; p9034
;; ----- [p9035]
;; p9035
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9036
;; p9036
;; ----- [p9037]
;; p9037
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9035 p9037
;; p9035
;; p9037
;; ----- [p9038]
;; p9038
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9039
;; p9039
;; ----- [p9040]
;; p9040
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9038 p9040
;; p9038
;; p9040
;; ----- [p9041]
;; p9041
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p9042]
;; p9042
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p9022 p9033 p9041 p9042 p9043 p9044
;; p9022
;; p9033
;; p9041
;; p9042
;; p9043
;; p9044
;; ----- [p9045]
;; p9045
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p9045
;; p9045
;; ----- [p9046]
;; p9046
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p9047]
;; p9047
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p9046 p9047
;; p9046
;; p9047
;; ----- [p9048]
;; p9048
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p9020 p9048
;; p9020
;; p9048
;; ----- [p9049]
;; p9049
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9050]
;; p9050
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9051
;; p9051
;; ----- [p9052]
;; p9052
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_Br p9052 p9053
;; p9052
;; p9053
;; ----- [p9054]
;; p9054
;; 
;; Proof. T_Br QED
;;; Verifying NT_Do_Terminator p9054
;; p9054
;; ----- [p9055]
;; p9055
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p9007 p9049 p9055
;; p9007
;; p9049
;; p9055
;; ----- [p9056]
;; p9056
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9057
;; p9057
;; ----- [p9058]
;; p9058
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9059]
;; p9059
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9060
;; p9060
;; ----- [p9061]
;; p9061
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9063
;; p9063
;; ----- [p9064]
;; p9064
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9065
;; p9065
;; ----- [p9066]
;; p9066
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9064 p9066
;; p9064
;; p9066
;; ----- [p9067]
;; p9067
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9068
;; p9068
;; ----- [p9069]
;; p9069
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9067 p9069
;; p9067
;; p9069
;; ----- [p9070]
;; p9070
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9071
;; p9071
;; ----- [p9072]
;; p9072
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9070 p9072
;; p9070
;; p9072
;; ----- [p9073]
;; p9073
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p9074]
;; p9074
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p9062 p9073 p9074 p9075 p9076
;; p9062
;; p9073
;; p9074
;; p9075
;; p9076
;; ----- [p9077]
;; p9077
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p9061 p9077
;; p9061
;; p9077
;; ----- [p9078]
;; p9078
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9079]
;; p9079
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9080
;; p9080
;; ----- [p9081]
;; p9081
;; 
;; Proof. UnName equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ----- [p9082]
;; p9082
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ----- [p9083]
;; p9083
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p9084]
;; p9084
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p9085
;; p9085
;; ----- [p9086]
;; p9086
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9087
;; p9087
;; ----- [p9088]
;; p9088
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9089
;; p9089
;; ----- [p9090]
;; p9090
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9088 p9090
;; p9088
;; p9090
;; ----- [p9091]
;; p9091
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ----- [p9092]
;; p9092
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p9091 p9092
;; p9091
;; p9092
;; ----- [p9093]
;; p9093
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p9086 p9093 p9094
;; p9086
;; p9093
;; p9094
;; ----- [p9095]
;; p9095
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9096
;; p9096
;; ----- [p9097]
;; p9097
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9095 p9097
;; p9095
;; p9097
;; ----- [p9098]
;; p9098
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9099]
;; p9099
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Internal 
;; ----- [p9100]
;; p9100
;; 
;; Proof. L_Internal QED
;;; Verifying V_Default 
;; ----- [p9101]
;; p9101
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p9102]
;; p9102
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying CC_C 
;; ----- [p9103]
;; p9103
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p9104]
;; p9104
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p9105
;; p9105
;; ----- [p9106]
;; p9106
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9108
;; p9108
;; ----- [p9109]
;; p9109
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9110
;; p9110
;; ----- [p9111]
;; p9111
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9109 p9111
;; p9109
;; p9111
;; ----- [p9112]
;; p9112
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9113
;; p9113
;; ----- [p9114]
;; p9114
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p9115]
;; p9115
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p9112 p9114 p9115
;; p9112
;; p9114
;; p9115
;; ----- [p9116]
;; p9116
;; 
;; Proof. P_Parameter QED
;;; Verifying Nil_Parameter 
;; ----- [p9117]
;; p9117
;; 
;; Proof. [] (Parameter) equivalent QED
;;; Verifying Cons_Parameter p9116 p9117
;; p9116
;; p9117
;; ----- [p9118]
;; p9118
;; 
;; Proof. Cons Parameter equivalent QED
;;; False == False : Bool
;;; Verifying Tup2_List_Parameter_Bool p9118 p9119
;; p9118
;; p9119
;; ----- [p9120]
;; p9120
;; 
;; Proof. Tuple ([Parameter], Bool) equivalent QED
;;; 0 == 0 : Word
;;; Verifying GID_GroupID p9121
;; p9121
;; ----- [p9122]
;; p9122
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p9122
;; p9122
;; ----- [p9123]
;; p9123
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p9124]
;; p9124
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p9123 p9124
;; p9123
;; p9124
;; ----- [p9125]
;; p9125
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9126]
;; p9126
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9127]
;; p9127
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 0 == 0 : Word32
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9129]
;; p9129
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p9130]
;; p9130
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; basic block matching 1-1
;;; 1 == 1 : Word
;;; Verifying N_UnName p9131
;; p9131
;; ----- [p9132]
;; p9132
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9133]
;; p9133
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9134
;; p9134
;; ----- [p9135]
;; p9135
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9136
;; p9136
;; ----- [p9137]
;; p9137
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9138
;; p9138
;; ----- [p9139]
;; p9139
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9137 p9139
;; p9137
;; p9139
;; ----- [p9140]
;; p9140
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p9141]
;; p9141
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p9140 p9141 p9142 p9143
;; p9140
;; p9141
;; p9142
;; p9143
;; ----- [p9144]
;; p9144
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p9135 p9144
;; p9135
;; p9144
;; ----- [p9145]
;; p9145
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9146]
;; p9146
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9147
;; p9147
;; ----- [p9148]
;; p9148
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9149
;; p9149
;; ----- [p9150]
;; p9150
;; 
;; Proof. T_IntegerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p9151]
;; p9151
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p9150 p9151 p9152 p9153
;; p9150
;; p9151
;; p9152
;; p9153
;; ----- [p9154]
;; p9154
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p9148 p9154
;; p9148
;; p9154
;; ----- [p9155]
;; p9155
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9156]
;; p9156
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9157
;; p9157
;; ----- [p9158]
;; p9158
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9159
;; p9159
;; ----- [p9160]
;; p9160
;; 
;; Proof. T_IntegerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p9161]
;; p9161
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p9160 p9161 p9162 p9163
;; p9160
;; p9161
;; p9162
;; p9163
;; ----- [p9164]
;; p9164
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p9158 p9164
;; p9158
;; p9164
;; ----- [p9165]
;; p9165
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9166]
;; p9166
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9167
;; p9167
;; ----- [p9168]
;; p9168
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9169
;; p9169
;; ----- [p9170]
;; p9170
;; 
;; Proof. T_IntegerType QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p9171]
;; p9171
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p9170 p9171 p9172 p9173
;; p9170
;; p9171
;; p9172
;; p9173
;; ----- [p9174]
;; p9174
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p9168 p9174
;; p9168
;; p9174
;; ----- [p9175]
;; p9175
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9176]
;; p9176
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9178
;; p9178
;; ----- [p9179]
;; p9179
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9180
;; p9180
;; ----- [p9181]
;; p9181
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9179 p9181
;; p9179
;; p9181
;; ----- [p9182]
;; p9182
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9183
;; p9183
;; ----- [p9184]
;; p9184
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9182 p9184
;; p9182
;; p9184
;; ----- [p9185]
;; p9185
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9186
;; p9186
;; ----- [p9187]
;; p9187
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9185 p9187
;; p9185
;; p9187
;; ----- [p9188]
;; p9188
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9189
;; p9189
;; ----- [p9190]
;; p9190
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9191
;; p9191
;; ----- [p9192]
;; p9192
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9190 p9192
;; p9190
;; p9192
;; ----- [p9193]
;; p9193
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9194
;; p9194
;; ----- [p9195]
;; p9195
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9193 p9195
;; p9193
;; p9195
;; ----- [p9196]
;; p9196
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p9197]
;; p9197
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p9177 p9188 p9196 p9197 p9198 p9199
;; p9177
;; p9188
;; p9196
;; p9197
;; p9198
;; p9199
;; ----- [p9200]
;; p9200
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p9200
;; p9200
;; ----- [p9201]
;; p9201
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9202]
;; p9202
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ----- [p9203]
;; p9203
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ----- [p9204]
;; p9204
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p9205]
;; p9205
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p9206]
;; p9206
;; 
;; Proof. T_VoidType QED
;;; Verifying Nil_Type 
;; ----- [p9207]
;; p9207
;; 
;; Proof. [] (Type) equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p9206 p9207 p9208
;; p9206
;; p9207
;; p9208
;; ----- [p9209]
;; p9209
;; 
;; Proof. T_FunctionType QED
;;; "" == "" : ByteString
;;; "~{memory},~{dirflag},~{fpsr},~{flags}" == "~{memory},~{dirflag},~{fpsr},~{flags}" : ShortByteStr
;;; True == True : Bool
;;; False == False : Bool
;;; Verifying D_ATTDialect 
;; ----- [p9214]
;; p9214
;; 
;; Proof. D_ATTDialect QED
;;; Verifying IA_InlineAssembly p9209 p9210 p9211 p9212 p9213 p9214
;; p9209
;; p9210
;; p9211
;; p9212
;; p9213
;; p9214
;; ----- [p9215]
;; p9215
;; 
;; Proof. IA_InlineAssembly QED
;;; Verifying EIAO_Left_InlineAssembly_Operand p9215
;; p9215
;; ----- [p9216]
;; p9216
;; 
;; Proof. Left (InlineAssembly Operand) equivalent QED
;;; Verifying Nil_Tup2_Operand_List_ParameterAttribute 
;; ----- [p9217]
;; p9217
;; 
;; Proof. [] ((Operand, [ParameterAttribute])) equivalent QED
;;; 3 == 3 : Word
;;; Verifying GID_GroupID p9218
;; p9218
;; ----- [p9219]
;; p9219
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p9219
;; p9219
;; ----- [p9220]
;; p9220
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p9221]
;; p9221
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p9220 p9221
;; p9220
;; p9221
;; ----- [p9222]
;; p9222
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; True == True : Bool
;;; Verifying I_Call p9203 p9204 p9205 p9216 p9217 p9222 p9223
;; p9203
;; p9204
;; p9205
;; p9216
;; p9217
;; p9222
;; p9223
;; ----- [p9224]
;; p9224
;; 
;; Proof. I_Call QED
;;; Verifying NI_Do_Instruction p9224
;; p9224
;; ----- [p9225]
;; p9225
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9226]
;; p9226
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9227
;; p9227
;; ----- [p9228]
;; p9228
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9230
;; p9230
;; ----- [p9231]
;; p9231
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9232
;; p9232
;; ----- [p9233]
;; p9233
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9231 p9233
;; p9231
;; p9233
;; ----- [p9234]
;; p9234
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9235
;; p9235
;; ----- [p9236]
;; p9236
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9234 p9236
;; p9234
;; p9236
;; ----- [p9237]
;; p9237
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9238
;; p9238
;; ----- [p9239]
;; p9239
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9237 p9239
;; p9237
;; p9239
;; ----- [p9240]
;; p9240
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p9241]
;; p9241
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p9229 p9240 p9241 p9242 p9243
;; p9229
;; p9240
;; p9241
;; p9242
;; p9243
;; ----- [p9244]
;; p9244
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p9228 p9244
;; p9228
;; p9244
;; ----- [p9245]
;; p9245
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9246]
;; p9246
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9248
;; p9248
;; ----- [p9249]
;; p9249
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9250
;; p9250
;; ----- [p9251]
;; p9251
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9249 p9251
;; p9249
;; p9251
;; ----- [p9252]
;; p9252
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9253
;; p9253
;; ----- [p9254]
;; p9254
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9252 p9254
;; p9252
;; p9254
;; ----- [p9255]
;; p9255
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; 1 == 1 : Integer
;;; Verifying C_Int p9256 p9257
;; p9256
;; p9257
;; ----- [p9258]
;; p9258
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p9258
;; p9258
;; ----- [p9259]
;; p9259
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p9260]
;; p9260
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Store p9247 p9255 p9259 p9260 p9261 p9262
;; p9247
;; p9255
;; p9259
;; p9260
;; p9261
;; p9262
;; ----- [p9263]
;; p9263
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p9263
;; p9263
;; ----- [p9264]
;; p9264
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9265]
;; p9265
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9266
;; p9266
;; ----- [p9267]
;; p9267
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9269
;; p9269
;; ----- [p9270]
;; p9270
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9271
;; p9271
;; ----- [p9272]
;; p9272
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9270 p9272
;; p9270
;; p9272
;; ----- [p9273]
;; p9273
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9274
;; p9274
;; ----- [p9275]
;; p9275
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9273 p9275
;; p9273
;; p9275
;; ----- [p9276]
;; p9276
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p9277]
;; p9277
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Load p9268 p9276 p9277 p9278 p9279
;; p9268
;; p9276
;; p9277
;; p9278
;; p9279
;; ----- [p9280]
;; p9280
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p9267 p9280
;; p9267
;; p9280
;; ----- [p9281]
;; p9281
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9282]
;; p9282
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9283
;; p9283
;; ----- [p9284]
;; p9284
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying RMWO_Xchg 
;; ----- [p9286]
;; p9286
;; 
;; Proof. RMWO_Xchg QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9287
;; p9287
;; ----- [p9288]
;; p9288
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9289
;; p9289
;; ----- [p9290]
;; p9290
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9288 p9290
;; p9288
;; p9290
;; ----- [p9291]
;; p9291
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9292
;; p9292
;; ----- [p9293]
;; p9293
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9291 p9293
;; p9291
;; p9293
;; ----- [p9294]
;; p9294
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9295
;; p9295
;; ----- [p9296]
;; p9296
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9297
;; p9297
;; ----- [p9298]
;; p9298
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9296 p9298
;; p9296
;; p9298
;; ----- [p9299]
;; p9299
;; 
;; Proof. O_LocalReference QED
;;; Verifying SS_System 
;; ----- [p9300]
;; p9300
;; 
;; Proof. SS_System QED
;;; Verifying MO_SequentiallyConsistent 
;; ----- [p9301]
;; p9301
;; 
;; Proof. MO_SequentiallyConsistent QED
;;; Verifying Tup2_SynchronizationScope_MemoryOrdering p9300 p9301
;; p9300
;; p9301
;; ----- [p9302]
;; p9302
;; 
;; Proof. Tuple (SynchronizationScope, MemoryOrdering) equivalent QED
;;; True == True : Bool
;;; Verifying I_AtomicRMW p9285 p9286 p9294 p9299 p9302 p9303
;; p9285
;; p9286
;; p9294
;; p9299
;; p9302
;; p9303
;; ----- [p9304]
;; p9304
;; 
;; Proof. I_AtomicRMW QED
;;; Verifying NI_infix_Instruction p9284 p9304
;; p9284
;; p9304
;; ----- [p9305]
;; p9305
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9306]
;; p9306
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9308
;; p9308
;; ----- [p9309]
;; p9309
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9310
;; p9310
;; ----- [p9311]
;; p9311
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9309 p9311
;; p9309
;; p9311
;; ----- [p9312]
;; p9312
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9313
;; p9313
;; ----- [p9314]
;; p9314
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9312 p9314
;; p9312
;; p9314
;; ----- [p9315]
;; p9315
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9316
;; p9316
;; ----- [p9317]
;; p9317
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9318
;; p9318
;; ----- [p9319]
;; p9319
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9317 p9319
;; p9317
;; p9319
;; ----- [p9320]
;; p9320
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p9321]
;; p9321
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Store p9307 p9315 p9320 p9321 p9322 p9323
;; p9307
;; p9315
;; p9320
;; p9321
;; p9322
;; p9323
;; ----- [p9324]
;; p9324
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p9324
;; p9324
;; ----- [p9325]
;; p9325
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9326]
;; p9326
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9327
;; p9327
;; ----- [p9328]
;; p9328
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9330
;; p9330
;; ----- [p9331]
;; p9331
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9332
;; p9332
;; ----- [p9333]
;; p9333
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9331 p9333
;; p9331
;; p9333
;; ----- [p9334]
;; p9334
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9335
;; p9335
;; ----- [p9336]
;; p9336
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9334 p9336
;; p9334
;; p9336
;; ----- [p9337]
;; p9337
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p9338]
;; p9338
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Load p9329 p9337 p9338 p9339 p9340
;; p9329
;; p9337
;; p9338
;; p9339
;; p9340
;; ----- [p9341]
;; p9341
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p9328 p9341
;; p9328
;; p9341
;; ----- [p9342]
;; p9342
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9343]
;; p9343
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; True == True : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9345
;; p9345
;; ----- [p9346]
;; p9346
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9347
;; p9347
;; ----- [p9348]
;; p9348
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9346 p9348
;; p9346
;; p9348
;; ----- [p9349]
;; p9349
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9350
;; p9350
;; ----- [p9351]
;; p9351
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9349 p9351
;; p9349
;; p9351
;; ----- [p9352]
;; p9352
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9353
;; p9353
;; ----- [p9354]
;; p9354
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9355
;; p9355
;; ----- [p9356]
;; p9356
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9354 p9356
;; p9354
;; p9356
;; ----- [p9357]
;; p9357
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p9358]
;; p9358
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Store p9344 p9352 p9357 p9358 p9359 p9360
;; p9344
;; p9352
;; p9357
;; p9358
;; p9359
;; p9360
;; ----- [p9361]
;; p9361
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p9361
;; p9361
;; ----- [p9362]
;; p9362
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9363]
;; p9363
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ----- [p9364]
;; p9364
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ----- [p9365]
;; p9365
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p9366]
;; p9366
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p9367]
;; p9367
;; 
;; Proof. T_VoidType QED
;;; Verifying Nil_Type 
;; ----- [p9368]
;; p9368
;; 
;; Proof. [] (Type) equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p9367 p9368 p9369
;; p9367
;; p9368
;; p9369
;; ----- [p9370]
;; p9370
;; 
;; Proof. T_FunctionType QED
;;; "" == "" : ByteString
;;; "~{memory},~{dirflag},~{fpsr},~{flags}" == "~{memory},~{dirflag},~{fpsr},~{flags}" : ShortByteStr
;;; True == True : Bool
;;; False == False : Bool
;;; Verifying D_ATTDialect 
;; ----- [p9375]
;; p9375
;; 
;; Proof. D_ATTDialect QED
;;; Verifying IA_InlineAssembly p9370 p9371 p9372 p9373 p9374 p9375
;; p9370
;; p9371
;; p9372
;; p9373
;; p9374
;; p9375
;; ----- [p9376]
;; p9376
;; 
;; Proof. IA_InlineAssembly QED
;;; Verifying EIAO_Left_InlineAssembly_Operand p9376
;; p9376
;; ----- [p9377]
;; p9377
;; 
;; Proof. Left (InlineAssembly Operand) equivalent QED
;;; Verifying Nil_Tup2_Operand_List_ParameterAttribute 
;; ----- [p9378]
;; p9378
;; 
;; Proof. [] ((Operand, [ParameterAttribute])) equivalent QED
;;; 3 == 3 : Word
;;; Verifying GID_GroupID p9379
;; p9379
;; ----- [p9380]
;; p9380
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p9380
;; p9380
;; ----- [p9381]
;; p9381
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p9382]
;; p9382
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p9381 p9382
;; p9381
;; p9382
;; ----- [p9383]
;; p9383
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; True == True : Bool
;;; Verifying I_Call p9364 p9365 p9366 p9377 p9378 p9383 p9384
;; p9364
;; p9365
;; p9366
;; p9377
;; p9378
;; p9383
;; p9384
;; ----- [p9385]
;; p9385
;; 
;; Proof. I_Call QED
;;; Verifying NI_Do_Instruction p9385
;; p9385
;; ----- [p9386]
;; p9386
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9387]
;; p9387
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9388
;; p9388
;; ----- [p9389]
;; p9389
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9391
;; p9391
;; ----- [p9392]
;; p9392
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9393
;; p9393
;; ----- [p9394]
;; p9394
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9392 p9394
;; p9392
;; p9394
;; ----- [p9395]
;; p9395
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9396
;; p9396
;; ----- [p9397]
;; p9397
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9395 p9397
;; p9395
;; p9397
;; ----- [p9398]
;; p9398
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ----- [p9399]
;; p9399
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Load p9390 p9398 p9399 p9400 p9401
;; p9390
;; p9398
;; p9399
;; p9400
;; p9401
;; ----- [p9402]
;; p9402
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p9389 p9402
;; p9389
;; p9402
;; ----- [p9403]
;; p9403
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9404]
;; p9404
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9405
;; p9405
;; ----- [p9406]
;; p9406
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9407
;; p9407
;; ----- [p9408]
;; p9408
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9409
;; p9409
;; ----- [p9410]
;; p9410
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9408 p9410
;; p9408
;; p9410
;; ----- [p9411]
;; p9411
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p9412
;; p9412
;; ----- [p9413]
;; p9413
;; 
;; Proof. T_IntegerType QED
;;; True == True : Bool
;;; Verifying I_ZExt p9411 p9413 p9414
;; p9411
;; p9413
;; p9414
;; ----- [p9415]
;; p9415
;; 
;; Proof. I_ZExt QED
;;; Verifying NI_infix_Instruction p9406 p9415
;; p9406
;; p9415
;; ----- [p9416]
;; p9416
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p9417]
;; p9417
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p9416 p9417
;; p9416
;; p9417
;; ----- [p9418]
;; p9418
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p9403 p9418
;; p9403
;; p9418
;; ----- [p9419]
;; p9419
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p9386 p9419
;; p9386
;; p9419
;; ----- [p9420]
;; p9420
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p9362 p9420
;; p9362
;; p9420
;; ----- [p9421]
;; p9421
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p9342 p9421
;; p9342
;; p9421
;; ----- [p9422]
;; p9422
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p9325 p9422
;; p9325
;; p9422
;; ----- [p9423]
;; p9423
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p9305 p9423
;; p9305
;; p9423
;; ----- [p9424]
;; p9424
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p9281 p9424
;; p9281
;; p9424
;; ----- [p9425]
;; p9425
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p9264 p9425
;; p9264
;; p9425
;; ----- [p9426]
;; p9426
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p9245 p9426
;; p9245
;; p9426
;; ----- [p9427]
;; p9427
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p9225 p9427
;; p9225
;; p9427
;; ----- [p9428]
;; p9428
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p9201 p9428
;; p9201
;; p9428
;; ----- [p9429]
;; p9429
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p9175 p9429
;; p9175
;; p9429
;; ----- [p9430]
;; p9430
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p9165 p9430
;; p9165
;; p9430
;; ----- [p9431]
;; p9431
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p9155 p9431
;; p9155
;; p9431
;; ----- [p9432]
;; p9432
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p9145 p9432
;; p9145
;; p9432
;; ----- [p9433]
;; p9433
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9434]
;; p9434
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p9435
;; p9435
;; ----- [p9436]
;; p9436
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9437
;; p9437
;; ----- [p9438]
;; p9438
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9436 p9438
;; p9436
;; p9438
;; ----- [p9439]
;; p9439
;; 
;; Proof. O_LocalReference QED
;;; Verifying MO_Just_Operand p9439
;; p9439
;; ----- [p9440]
;; p9440
;; 
;; Proof. Just Operand equivalent QED
;;; True == True : Bool
;;; Verifying T_Ret p9440 p9441
;; p9440
;; p9441
;; ----- [p9442]
;; p9442
;; 
;; Proof. T_Ret QED
;;; Verifying NT_Do_Terminator p9442
;; p9442
;; ----- [p9443]
;; p9443
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p9132 p9433 p9443
;; p9132
;; p9433
;; p9443
;; ----- [p9444]
;; p9444
;; 
;; Proof. BB_BasicBlock QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p9446]
;; p9446
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; True == True : Bool
;;; Verifying G_Function p9100 p9101 p9102 p9103 p9104 p9106 p9107 p9120 p9125 p9126 p9127 p9128 p9129 p9130 p9445 p9446 p9447
;; p9100
;; p9101
;; p9102
;; p9103
;; p9104
;; p9106
;; p9107
;; p9120
;; p9125
;; p9126
;; p9127
;; p9128
;; p9129
;; p9130
;; p9445
;; p9446
;; p9447
;; ----- [p9448]
;; p9448
;; 
;; Proof. functions fio_trylock.203 and fio_trylock.203 equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9449
;; p9449
;; ----- [p9450]
;; p9450
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p9098 p9450
;; p9098
;; p9450
;; ----- [p9451]
;; p9451
;; 
;; Proof. C_GlobalReference QED
;;; Verifying O_ConstantOperand p9451
;; p9451
;; ----- [p9452]
;; p9452
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying EIAO_Right_InlineAssembly_Operand p9452
;; p9452
;; ----- [p9453]
;; p9453
;; 
;; Proof. Right (InlineAssembly Operand) equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9454
;; p9454
;; ----- [p9455]
;; p9455
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9456
;; p9456
;; ----- [p9457]
;; p9457
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9455 p9457
;; p9455
;; p9457
;; ----- [p9458]
;; p9458
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9459
;; p9459
;; ----- [p9460]
;; p9460
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9458 p9460
;; p9458
;; p9460
;; ----- [p9461]
;; p9461
;; 
;; Proof. O_LocalReference QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p9462]
;; p9462
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p9461 p9462
;; p9461
;; p9462
;; ----- [p9463]
;; p9463
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Tup2_Operand_List_ParameterAttribute 
;; ----- [p9464]
;; p9464
;; 
;; Proof. [] ((Operand, [ParameterAttribute])) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p9463 p9464
;; p9463
;; p9464
;; ----- [p9465]
;; p9465
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p9466]
;; p9466
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; True == True : Bool
;;; Verifying I_Call p9082 p9083 p9084 p9453 p9465 p9466 p9467
;; p9082
;; p9083
;; p9084
;; p9453
;; p9465
;; p9466
;; p9467
;; ----- [p9468]
;; p9468
;; 
;; Proof. I_Call QED
;;; Verifying NI_infix_Instruction p9081 p9468
;; p9081
;; p9468
;; ----- [p9469]
;; p9469
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9470]
;; p9470
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9471
;; p9471
;; ----- [p9472]
;; p9472
;; 
;; Proof. UnName equivalent QED
;;; Verifying IP_NE 
;; ----- [p9473]
;; p9473
;; 
;; Proof. IP_NE QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p9474
;; p9474
;; ----- [p9475]
;; p9475
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9476
;; p9476
;; ----- [p9477]
;; p9477
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9475 p9477
;; p9475
;; p9477
;; ----- [p9478]
;; p9478
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p9479 p9480
;; p9479
;; p9480
;; ----- [p9481]
;; p9481
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p9481
;; p9481
;; ----- [p9482]
;; p9482
;; 
;; Proof. O_ConstantOperand QED
;;; True == True : Bool
;;; Verifying I_ICmp p9473 p9478 p9482 p9483
;; p9473
;; p9478
;; p9482
;; p9483
;; ----- [p9484]
;; p9484
;; 
;; Proof. I_ICmp QED
;;; Verifying NI_infix_Instruction p9472 p9484
;; p9472
;; p9484
;; ----- [p9485]
;; p9485
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p9486]
;; p9486
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p9485 p9486
;; p9485
;; p9486
;; ----- [p9487]
;; p9487
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p9469 p9487
;; p9469
;; p9487
;; ----- [p9488]
;; p9488
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p9078 p9488
;; p9078
;; p9488
;; ----- [p9489]
;; p9489
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9490]
;; p9490
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; Verifying T_IntegerType p9491
;; p9491
;; ----- [p9492]
;; p9492
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9493
;; p9493
;; ----- [p9494]
;; p9494
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9492 p9494
;; p9492
;; p9494
;; ----- [p9495]
;; p9495
;; 
;; Proof. O_LocalReference QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9496
;; p9496
;; ----- [p9497]
;; p9497
;; 
;; Proof. UnName equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9498
;; p9498
;; ----- [p9499]
;; p9499
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_CondBr p9495 p9497 p9499 p9500
;; p9495
;; p9497
;; p9499
;; p9500
;; ----- [p9501]
;; p9501
;; 
;; Proof. T_CondBr QED
;;; Verifying NT_Do_Terminator p9501
;; p9501
;; ----- [p9502]
;; p9502
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p9058 p9489 p9502
;; p9058
;; p9489
;; p9502
;; ----- [p9503]
;; p9503
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9504
;; p9504
;; ----- [p9505]
;; p9505
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9506]
;; p9506
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ----- [p9507]
;; p9507
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ----- [p9508]
;; p9508
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p9509]
;; p9509
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p9510]
;; p9510
;; 
;; Proof. T_VoidType QED
;;; Verifying Nil_Type 
;; ----- [p9511]
;; p9511
;; 
;; Proof. [] (Type) equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p9510 p9511 p9512
;; p9510
;; p9511
;; p9512
;; ----- [p9513]
;; p9513
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9514
;; p9514
;; ----- [p9515]
;; p9515
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9513 p9515
;; p9513
;; p9515
;; ----- [p9516]
;; p9516
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9517]
;; p9517
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Internal 
;; ----- [p9518]
;; p9518
;; 
;; Proof. L_Internal QED
;;; Verifying V_Default 
;; ----- [p9519]
;; p9519
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p9520]
;; p9520
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying CC_C 
;; ----- [p9521]
;; p9521
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p9522]
;; p9522
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p9523]
;; p9523
;; 
;; Proof. T_VoidType QED
;;; Verifying Nil_Parameter 
;; ----- [p9525]
;; p9525
;; 
;; Proof. [] (Parameter) equivalent QED
;;; False == False : Bool
;;; Verifying Tup2_List_Parameter_Bool p9525 p9526
;; p9525
;; p9526
;; ----- [p9527]
;; p9527
;; 
;; Proof. Tuple ([Parameter], Bool) equivalent QED
;;; 0 == 0 : Word
;;; Verifying GID_GroupID p9528
;; p9528
;; ----- [p9529]
;; p9529
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p9529
;; p9529
;; ----- [p9530]
;; p9530
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p9531]
;; p9531
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p9530 p9531
;; p9530
;; p9531
;; ----- [p9532]
;; p9532
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9533]
;; p9533
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9534]
;; p9534
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 0 == 0 : Word32
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9536]
;; p9536
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p9537]
;; p9537
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; basic block matching 0-0
;;; 1 == 1 : Word
;;; Verifying N_UnName p9538
;; p9538
;; ----- [p9539]
;; p9539
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9540]
;; p9540
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9541
;; p9541
;; ----- [p9542]
;; p9542
;; 
;; Proof. UnName equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9543
;; p9543
;; ----- [p9544]
;; p9544
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p9544
;; p9544
;; ----- [p9545]
;; p9545
;; 
;; Proof. T_NamedTypeReference QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p9546]
;; p9546
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p9545 p9546 p9547 p9548
;; p9545
;; p9546
;; p9547
;; p9548
;; ----- [p9549]
;; p9549
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p9542 p9549
;; p9542
;; p9549
;; ----- [p9550]
;; p9550
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9551]
;; p9551
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9552
;; p9552
;; ----- [p9553]
;; p9553
;; 
;; Proof. UnName equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9554
;; p9554
;; ----- [p9555]
;; p9555
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p9555
;; p9555
;; ----- [p9556]
;; p9556
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9557
;; p9557
;; ----- [p9558]
;; p9558
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9556 p9558
;; p9556
;; p9558
;; ----- [p9559]
;; p9559
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9560
;; p9560
;; ----- [p9561]
;; p9561
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9559 p9561
;; p9559
;; p9561
;; ----- [p9562]
;; p9562
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9563
;; p9563
;; ----- [p9564]
;; p9564
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9565
;; p9565
;; ----- [p9566]
;; p9566
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9564 p9566
;; p9564
;; p9566
;; ----- [p9567]
;; p9567
;; 
;; Proof. T_PointerType QED
;;; True == True : Bool
;;; Verifying I_BitCast p9562 p9567 p9568
;; p9562
;; p9567
;; p9568
;; ----- [p9569]
;; p9569
;; 
;; Proof. I_BitCast QED
;;; Verifying NI_infix_Instruction p9553 p9569
;; p9553
;; p9569
;; ----- [p9570]
;; p9570
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9571]
;; p9571
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ----- [p9572]
;; p9572
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ----- [p9573]
;; p9573
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p9574]
;; p9574
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ----- [p9575]
;; p9575
;; 
;; Proof. T_VoidType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9576
;; p9576
;; ----- [p9577]
;; p9577
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9578
;; p9578
;; ----- [p9579]
;; p9579
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9577 p9579
;; p9577
;; p9579
;; ----- [p9580]
;; p9580
;; 
;; Proof. T_PointerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9581
;; p9581
;; ----- [p9582]
;; p9582
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9583
;; p9583
;; ----- [p9584]
;; p9584
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9582 p9584
;; p9582
;; p9584
;; ----- [p9585]
;; p9585
;; 
;; Proof. T_PointerType QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p9586
;; p9586
;; ----- [p9587]
;; p9587
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word32
;;; Verifying T_IntegerType p9588
;; p9588
;; ----- [p9589]
;; p9589
;; 
;; Proof. T_IntegerType QED
;;; Verifying Nil_Type 
;; ----- [p9590]
;; p9590
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p9589 p9590
;; p9589
;; p9590
;; ----- [p9591]
;; p9591
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p9587 p9591
;; p9587
;; p9591
;; ----- [p9592]
;; p9592
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p9585 p9592
;; p9585
;; p9592
;; ----- [p9593]
;; p9593
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p9580 p9593
;; p9580
;; p9593
;; ----- [p9594]
;; p9594
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p9575 p9594 p9595
;; p9575
;; p9594
;; p9595
;; ----- [p9596]
;; p9596
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9597
;; p9597
;; ----- [p9598]
;; p9598
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9596 p9598
;; p9596
;; p9598
;; ----- [p9599]
;; p9599
;; 
;; Proof. T_PointerType QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9600
;; p9600
;; ----- [p9601]
;; p9601
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p9599 p9601
;; p9599
;; p9601
;; ----- [p9602]
;; p9602
;; 
;; Proof. C_GlobalReference QED
;;; Verifying O_ConstantOperand p9602
;; p9602
;; ----- [p9603]
;; p9603
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying EIAO_Right_InlineAssembly_Operand p9603
;; p9603
;; ----- [p9604]
;; p9604
;; 
;; Proof. Right (InlineAssembly Operand) equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9605
;; p9605
;; ----- [p9606]
;; p9606
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9607
;; p9607
;; ----- [p9608]
;; p9608
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9606 p9608
;; p9606
;; p9608
;; ----- [p9609]
;; p9609
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9610
;; p9610
;; ----- [p9611]
;; p9611
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9609 p9611
;; p9609
;; p9611
;; ----- [p9612]
;; p9612
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word64
;;; Verifying PA_Alignment p9613
;; p9613
;; ----- [p9614]
;; p9614
;; 
;; Proof. PA_Alignment QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p9615]
;; p9615
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Cons_ParameterAttribute p9614 p9615
;; p9614
;; p9615
;; ----- [p9616]
;; p9616
;; 
;; Proof. Cons ParameterAttribute equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p9612 p9616
;; p9612
;; p9616
;; ----- [p9617]
;; p9617
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9618
;; p9618
;; ----- [p9619]
;; p9619
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p9619
;; p9619
;; ----- [p9620]
;; p9620
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9621
;; p9621
;; ----- [p9622]
;; p9622
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9620 p9622
;; p9620
;; p9622
;; ----- [p9623]
;; p9623
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9624]
;; p9624
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Private 
;; ----- [p9626]
;; p9626
;; 
;; Proof. L_Private QED
;;; Verifying V_Default 
;; ----- [p9627]
;; p9627
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p9628]
;; p9628
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying MM_Nothing_Model 
;; ----- [p9629]
;; p9629
;; 
;; Proof. Nothing (Model) equivalent QED
;;; Verifying UA_GlobalAddr 
;; ----- [p9630]
;; p9630
;; 
;; Proof. UA_GlobalAddr QED
;;; Verifying MUA_Just_UnnamedAddr p9630
;; p9630
;; ----- [p9631]
;; p9631
;; 
;; Proof. Just UnnamedAddr equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9633
;; p9633
;; ----- [p9634]
;; p9634
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p9634
;; p9634
;; ----- [p9635]
;; p9635
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9636
;; p9636
;; ----- [p9637]
;; p9637
;; 
;; Proof. AS_AddrSpace QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9638
;; p9638
;; ----- [p9639]
;; p9639
;; 
;; Proof. Name equivalent QED
;;; Verifying MN_Just_Name p9639
;; p9639
;; ----- [p9640]
;; p9640
;; 
;; Proof. Just Name equivalent QED
;;; False == False : Bool
;;; 64 == 64 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p9642 p9643
;; p9642
;; p9643
;; ----- [p9644]
;; p9644
;; 
;; Proof. C_Int QED
;;; 64 == 64 : Word32
;;; 1 == 1 : Integer
;;; Verifying C_Int p9645 p9646
;; p9645
;; p9646
;; ----- [p9647]
;; p9647
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p9648]
;; p9648
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p9647 p9648
;; p9647
;; p9648
;; ----- [p9649]
;; p9649
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p9644 p9649
;; p9644
;; p9649
;; ----- [p9650]
;; p9650
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_Struct p9640 p9641 p9650
;; p9640
;; p9641
;; p9650
;; ----- [p9651]
;; p9651
;; 
;; Proof. C_Struct QED
;;; Verifying MC_Just_Constant p9651
;; p9651
;; ----- [p9652]
;; p9652
;; 
;; Proof. Just Constant equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9653]
;; p9653
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9654]
;; p9654
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying G_GlobalVariable p9625 p9626 p9627 p9628 p9629 p9631 p9632 p9635 p9637 p9652 p9653 p9654 p9655 p9656
;; p9625
;; p9626
;; p9627
;; p9628
;; p9629
;; p9631
;; p9632
;; p9635
;; p9637
;; p9652
;; p9653
;; p9654
;; p9655
;; p9656
;; ----- [p9657]
;; p9657
;; 
;; Proof. global variables __const.fio_reschedule_thread.tm and __const.fio_reschedule_thread.tm equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9658
;; p9658
;; ----- [p9659]
;; p9659
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p9623 p9659
;; p9623
;; p9659
;; ----- [p9660]
;; p9660
;; 
;; Proof. C_GlobalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9661
;; p9661
;; ----- [p9662]
;; p9662
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9663
;; p9663
;; ----- [p9664]
;; p9664
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9662 p9664
;; p9662
;; p9664
;; ----- [p9665]
;; p9665
;; 
;; Proof. T_PointerType QED
;;; Verifying C_BitCast p9660 p9665
;; p9660
;; p9665
;; ----- [p9666]
;; p9666
;; 
;; Proof. C_BitCast QED
;;; Verifying O_ConstantOperand p9666
;; p9666
;; ----- [p9667]
;; p9667
;; 
;; Proof. O_ConstantOperand QED
;;; 8 == 8 : Word64
;;; Verifying PA_Alignment p9668
;; p9668
;; ----- [p9669]
;; p9669
;; 
;; Proof. PA_Alignment QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p9670]
;; p9670
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Cons_ParameterAttribute p9669 p9670
;; p9669
;; p9670
;; ----- [p9671]
;; p9671
;; 
;; Proof. Cons ParameterAttribute equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p9667 p9671
;; p9667
;; p9671
;; ----- [p9672]
;; p9672
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; 64 == 64 : Word32
;;; 16 == 16 : Integer
;;; Verifying C_Int p9673 p9674
;; p9673
;; p9674
;; ----- [p9675]
;; p9675
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p9675
;; p9675
;; ----- [p9676]
;; p9676
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p9677]
;; p9677
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p9676 p9677
;; p9676
;; p9677
;; ----- [p9678]
;; p9678
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; 1 == 1 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p9679 p9680
;; p9679
;; p9680
;; ----- [p9681]
;; p9681
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p9681
;; p9681
;; ----- [p9682]
;; p9682
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p9683]
;; p9683
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p9682 p9683
;; p9682
;; p9683
;; ----- [p9684]
;; p9684
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Tup2_Operand_List_ParameterAttribute 
;; ----- [p9685]
;; p9685
;; 
;; Proof. [] ((Operand, [ParameterAttribute])) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p9684 p9685
;; p9684
;; p9685
;; ----- [p9686]
;; p9686
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p9678 p9686
;; p9678
;; p9686
;; ----- [p9687]
;; p9687
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p9672 p9687
;; p9672
;; p9687
;; ----- [p9688]
;; p9688
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p9617 p9688
;; p9617
;; p9688
;; ----- [p9689]
;; p9689
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p9690]
;; p9690
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; True == True : Bool
;;; Verifying I_Call p9572 p9573 p9574 p9604 p9689 p9690 p9691
;; p9572
;; p9573
;; p9574
;; p9604
;; p9689
;; p9690
;; p9691
;; ----- [p9692]
;; p9692
;; 
;; Proof. I_Call QED
;;; Verifying NI_Do_Instruction p9692
;; p9692
;; ----- [p9693]
;; p9693
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9694]
;; p9694
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9695
;; p9695
;; ----- [p9696]
;; p9696
;; 
;; Proof. UnName equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ----- [p9697]
;; p9697
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ----- [p9698]
;; p9698
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p9699]
;; p9699
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p9700
;; p9700
;; ----- [p9701]
;; p9701
;; 
;; Proof. T_IntegerType QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9702
;; p9702
;; ----- [p9703]
;; p9703
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p9703
;; p9703
;; ----- [p9704]
;; p9704
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9705
;; p9705
;; ----- [p9706]
;; p9706
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9704 p9706
;; p9704
;; p9706
;; ----- [p9707]
;; p9707
;; 
;; Proof. T_PointerType QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9708
;; p9708
;; ----- [p9709]
;; p9709
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p9709
;; p9709
;; ----- [p9710]
;; p9710
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9711
;; p9711
;; ----- [p9712]
;; p9712
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9710 p9712
;; p9710
;; p9712
;; ----- [p9713]
;; p9713
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ----- [p9714]
;; p9714
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p9713 p9714
;; p9713
;; p9714
;; ----- [p9715]
;; p9715
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p9707 p9715
;; p9707
;; p9715
;; ----- [p9716]
;; p9716
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p9701 p9716 p9717
;; p9701
;; p9716
;; p9717
;; ----- [p9718]
;; p9718
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9719
;; p9719
;; ----- [p9720]
;; p9720
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9718 p9720
;; p9718
;; p9720
;; ----- [p9721]
;; p9721
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9722]
;; p9722
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_External 
;; ----- [p9723]
;; p9723
;; 
;; Proof. L_External QED
;;; Verifying V_Default 
;; ----- [p9724]
;; p9724
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p9725]
;; p9725
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying CC_C 
;; ----- [p9726]
;; p9726
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p9727]
;; p9727
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p9728
;; p9728
;; ----- [p9729]
;; p9729
;; 
;; Proof. T_IntegerType QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9731
;; p9731
;; ----- [p9732]
;; p9732
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p9732
;; p9732
;; ----- [p9733]
;; p9733
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9734
;; p9734
;; ----- [p9735]
;; p9735
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9733 p9735
;; p9733
;; p9735
;; ----- [p9736]
;; p9736
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9737
;; p9737
;; ----- [p9738]
;; p9738
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p9739]
;; p9739
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p9736 p9738 p9739
;; p9736
;; p9738
;; p9739
;; ----- [p9740]
;; p9740
;; 
;; Proof. P_Parameter QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9741
;; p9741
;; ----- [p9742]
;; p9742
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p9742
;; p9742
;; ----- [p9743]
;; p9743
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9744
;; p9744
;; ----- [p9745]
;; p9745
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9743 p9745
;; p9743
;; p9745
;; ----- [p9746]
;; p9746
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9747
;; p9747
;; ----- [p9748]
;; p9748
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p9749]
;; p9749
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p9746 p9748 p9749
;; p9746
;; p9748
;; p9749
;; ----- [p9750]
;; p9750
;; 
;; Proof. P_Parameter QED
;;; Verifying Nil_Parameter 
;; ----- [p9751]
;; p9751
;; 
;; Proof. [] (Parameter) equivalent QED
;;; Verifying Cons_Parameter p9750 p9751
;; p9750
;; p9751
;; ----- [p9752]
;; p9752
;; 
;; Proof. Cons Parameter equivalent QED
;;; Verifying Cons_Parameter p9740 p9752
;; p9740
;; p9752
;; ----- [p9753]
;; p9753
;; 
;; Proof. Cons Parameter equivalent QED
;;; False == False : Bool
;;; Verifying Tup2_List_Parameter_Bool p9753 p9754
;; p9753
;; p9754
;; ----- [p9755]
;; p9755
;; 
;; Proof. Tuple ([Parameter], Bool) equivalent QED
;;; 5 == 5 : Word
;;; Verifying GID_GroupID p9756
;; p9756
;; ----- [p9757]
;; p9757
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p9757
;; p9757
;; ----- [p9758]
;; p9758
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p9759]
;; p9759
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p9758 p9759
;; p9758
;; p9759
;; ----- [p9760]
;; p9760
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9761]
;; p9761
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9762]
;; p9762
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 0 == 0 : Word32
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9764]
;; p9764
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p9765]
;; p9765
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p9767]
;; p9767
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; True == True : Bool
;;; Verifying G_Function p9723 p9724 p9725 p9726 p9727 p9729 p9730 p9755 p9760 p9761 p9762 p9763 p9764 p9765 p9766 p9767 p9768
;; p9723
;; p9724
;; p9725
;; p9726
;; p9727
;; p9729
;; p9730
;; p9755
;; p9760
;; p9761
;; p9762
;; p9763
;; p9764
;; p9765
;; p9766
;; p9767
;; p9768
;; ----- [p9769]
;; p9769
;; 
;; Proof. functions nanosleep and nanosleep equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9770
;; p9770
;; ----- [p9771]
;; p9771
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p9721 p9771
;; p9721
;; p9771
;; ----- [p9772]
;; p9772
;; 
;; Proof. C_GlobalReference QED
;;; Verifying O_ConstantOperand p9772
;; p9772
;; ----- [p9773]
;; p9773
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying EIAO_Right_InlineAssembly_Operand p9773
;; p9773
;; ----- [p9774]
;; p9774
;; 
;; Proof. Right (InlineAssembly Operand) equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9775
;; p9775
;; ----- [p9776]
;; p9776
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p9776
;; p9776
;; ----- [p9777]
;; p9777
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9778
;; p9778
;; ----- [p9779]
;; p9779
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9777 p9779
;; p9777
;; p9779
;; ----- [p9780]
;; p9780
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9781
;; p9781
;; ----- [p9782]
;; p9782
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9780 p9782
;; p9780
;; p9782
;; ----- [p9783]
;; p9783
;; 
;; Proof. O_LocalReference QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p9784]
;; p9784
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p9783 p9784
;; p9783
;; p9784
;; ----- [p9785]
;; p9785
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9786
;; p9786
;; ----- [p9787]
;; p9787
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p9787
;; p9787
;; ----- [p9788]
;; p9788
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9789
;; p9789
;; ----- [p9790]
;; p9790
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9788 p9790
;; p9788
;; p9790
;; ----- [p9791]
;; p9791
;; 
;; Proof. T_PointerType QED
;;; Verifying C_Null p9791
;; p9791
;; ----- [p9792]
;; p9792
;; 
;; Proof. C_Null QED
;;; Verifying O_ConstantOperand p9792
;; p9792
;; ----- [p9793]
;; p9793
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p9794]
;; p9794
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p9793 p9794
;; p9793
;; p9794
;; ----- [p9795]
;; p9795
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Tup2_Operand_List_ParameterAttribute 
;; ----- [p9796]
;; p9796
;; 
;; Proof. [] ((Operand, [ParameterAttribute])) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p9795 p9796
;; p9795
;; p9796
;; ----- [p9797]
;; p9797
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p9785 p9797
;; p9785
;; p9797
;; ----- [p9798]
;; p9798
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p9799]
;; p9799
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; True == True : Bool
;;; Verifying I_Call p9697 p9698 p9699 p9774 p9798 p9799 p9800
;; p9697
;; p9698
;; p9699
;; p9774
;; p9798
;; p9799
;; p9800
;; ----- [p9801]
;; p9801
;; 
;; Proof. I_Call QED
;;; Verifying NI_infix_Instruction p9696 p9801
;; p9696
;; p9801
;; ----- [p9802]
;; p9802
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p9803]
;; p9803
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p9802 p9803
;; p9802
;; p9803
;; ----- [p9804]
;; p9804
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p9693 p9804
;; p9693
;; p9804
;; ----- [p9805]
;; p9805
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p9570 p9805
;; p9570
;; p9805
;; ----- [p9806]
;; p9806
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p9550 p9806
;; p9550
;; p9806
;; ----- [p9807]
;; p9807
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9808]
;; p9808
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p9809]
;; p9809
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; True == True : Bool
;;; Verifying T_Ret p9809 p9810
;; p9809
;; p9810
;; ----- [p9811]
;; p9811
;; 
;; Proof. T_Ret QED
;;; Verifying NT_Do_Terminator p9811
;; p9811
;; ----- [p9812]
;; p9812
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p9539 p9807 p9812
;; p9539
;; p9807
;; p9812
;; ----- [p9813]
;; p9813
;; 
;; Proof. BB_BasicBlock QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p9815]
;; p9815
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; True == True : Bool
;;; Verifying G_Function p9518 p9519 p9520 p9521 p9522 p9523 p9524 p9527 p9532 p9533 p9534 p9535 p9536 p9537 p9814 p9815 p9816
;; p9518
;; p9519
;; p9520
;; p9521
;; p9522
;; p9523
;; p9524
;; p9527
;; p9532
;; p9533
;; p9534
;; p9535
;; p9536
;; p9537
;; p9814
;; p9815
;; p9816
;; ----- [p9817]
;; p9817
;; 
;; Proof. functions fio_reschedule_thread and fio_reschedule_thread equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9818
;; p9818
;; ----- [p9819]
;; p9819
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p9516 p9819
;; p9516
;; p9819
;; ----- [p9820]
;; p9820
;; 
;; Proof. C_GlobalReference QED
;;; Verifying O_ConstantOperand p9820
;; p9820
;; ----- [p9821]
;; p9821
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying EIAO_Right_InlineAssembly_Operand p9821
;; p9821
;; ----- [p9822]
;; p9822
;; 
;; Proof. Right (InlineAssembly Operand) equivalent QED
;;; Verifying Nil_Tup2_Operand_List_ParameterAttribute 
;; ----- [p9823]
;; p9823
;; 
;; Proof. [] ((Operand, [ParameterAttribute])) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p9824]
;; p9824
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; True == True : Bool
;;; Verifying I_Call p9507 p9508 p9509 p9822 p9823 p9824 p9825
;; p9507
;; p9508
;; p9509
;; p9822
;; p9823
;; p9824
;; p9825
;; ----- [p9826]
;; p9826
;; 
;; Proof. I_Call QED
;;; Verifying NI_Do_Instruction p9826
;; p9826
;; ----- [p9827]
;; p9827
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p9828]
;; p9828
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p9827 p9828
;; p9827
;; p9828
;; ----- [p9829]
;; p9829
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9830]
;; p9830
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9831
;; p9831
;; ----- [p9832]
;; p9832
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_Br p9832 p9833
;; p9832
;; p9833
;; ----- [p9834]
;; p9834
;; 
;; Proof. T_Br QED
;;; Verifying NT_Do_Terminator p9834
;; p9834
;; ----- [p9835]
;; p9835
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p9505 p9829 p9835
;; p9505
;; p9829
;; p9835
;; ----- [p9836]
;; p9836
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9837
;; p9837
;; ----- [p9838]
;; p9838
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ----- [p9839]
;; p9839
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9840]
;; p9840
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MO_Nothing_Operand 
;; ----- [p9841]
;; p9841
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; True == True : Bool
;;; Verifying T_Ret p9841 p9842
;; p9841
;; p9842
;; ----- [p9843]
;; p9843
;; 
;; Proof. T_Ret QED
;;; Verifying NT_Do_Terminator p9843
;; p9843
;; ----- [p9844]
;; p9844
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p9838 p9839 p9844
;; p9838
;; p9839
;; p9844
;; ----- [p9845]
;; p9845
;; 
;; Proof. BB_BasicBlock QED
;;; Verifying MC_Nothing_Constant 
;; ----- [p9847]
;; p9847
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; True == True : Bool
;;; Verifying G_Function p8976 p8977 p8978 p8979 p8980 p8981 p8982 p8995 p9000 p9001 p9002 p9003 p9004 p9005 p9846 p9847 p9848
;; p8976
;; p8977
;; p8978
;; p8979
;; p8980
;; p8981
;; p8982
;; p8995
;; p9000
;; p9001
;; p9002
;; p9003
;; p9004
;; p9005
;; p9846
;; p9847
;; p9848
;; ----- [p9849]
;; p9849
;; 
;; Proof. functions fio_lock and fio_lock equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9850
;; p9850
;; ----- [p9851]
;; p9851
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p8974 p9851
;; p8974
;; p9851
;; ----- [p9852]
;; p9852
;; 
;; Proof. C_GlobalReference QED
;;; Verifying O_ConstantOperand p9852
;; p9852
;; ----- [p9853]
;; p9853
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying EIAO_Right_InlineAssembly_Operand p9853
;; p9853
;; ----- [p9854]
;; p9854
;; 
;; Proof. Right (InlineAssembly Operand) equivalent QED
;;; True == True : Bool
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9857
;; p9857
;; ----- [p9858]
;; p9858
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p9858
;; p9858
;; ----- [p9859]
;; p9859
;; 
;; Proof. T_NamedTypeReference QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p9860
;; p9860
;; ----- [p9861]
;; p9861
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9862
;; p9862
;; ----- [p9863]
;; p9863
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p9864
;; p9864
;; ----- [p9865]
;; p9865
;; 
;; Proof. T_IntegerType QED
;;; Verifying Nil_Type 
;; ----- [p9866]
;; p9866
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p9865 p9866
;; p9865
;; p9866
;; ----- [p9867]
;; p9867
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p9863 p9867
;; p9863
;; p9867
;; ----- [p9868]
;; p9868
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p9861 p9868
;; p9861
;; p9868
;; ----- [p9869]
;; p9869
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p9859 p9869
;; p9859
;; p9869
;; ----- [p9870]
;; p9870
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying T_StructureType p9856 p9870
;; p9856
;; p9870
;; ----- [p9871]
;; p9871
;; 
;; Proof. T_StructureType QED
;;; Verifying MT_Just_Type p9871
;; p9871
;; ----- [p9872]
;; p9872
;; 
;; Proof. Just Type equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9873
;; p9873
;; ----- [p9874]
;; p9874
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p9874
;; p9874
;; ----- [p9875]
;; p9875
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9876
;; p9876
;; ----- [p9877]
;; p9877
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9875 p9877
;; p9875
;; p9877
;; ----- [p9878]
;; p9878
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9879]
;; p9879
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Internal 
;; ----- [p9881]
;; p9881
;; 
;; Proof. L_Internal QED
;;; Verifying V_Default 
;; ----- [p9882]
;; p9882
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ----- [p9883]
;; p9883
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying MM_Nothing_Model 
;; ----- [p9884]
;; p9884
;; 
;; Proof. Nothing (Model) equivalent QED
;;; Verifying MUA_Nothing_UnnamedAddr 
;; ----- [p9885]
;; p9885
;; 
;; Proof. Nothing (UnnamedAddr) equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9887
;; p9887
;; ----- [p9888]
;; p9888
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p9888
;; p9888
;; ----- [p9889]
;; p9889
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9890
;; p9890
;; ----- [p9891]
;; p9891
;; 
;; Proof. AS_AddrSpace QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9892
;; p9892
;; ----- [p9893]
;; p9893
;; 
;; Proof. Name equivalent QED
;;; Verifying MN_Just_Name p9893
;; p9893
;; ----- [p9894]
;; p9894
;; 
;; Proof. Just Name equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9896
;; p9896
;; ----- [p9897]
;; p9897
;; 
;; Proof. Name equivalent QED
;;; Verifying MN_Just_Name p9897
;; p9897
;; ----- [p9898]
;; p9898
;; 
;; Proof. Just Name equivalent QED
;;; False == False : Bool
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9901
;; p9901
;; ----- [p9902]
;; p9902
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p9902
;; p9902
;; ----- [p9903]
;; p9903
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9904
;; p9904
;; ----- [p9905]
;; p9905
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9903 p9905
;; p9903
;; p9905
;; ----- [p9906]
;; p9906
;; 
;; Proof. T_PointerType QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9907
;; p9907
;; ----- [p9908]
;; p9908
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p9906 p9908
;; p9906
;; p9908
;; ----- [p9909]
;; p9909
;; 
;; Proof. C_GlobalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p9910 p9911
;; p9910
;; p9911
;; ----- [p9912]
;; p9912
;; 
;; Proof. C_Int QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p9913 p9914
;; p9913
;; p9914
;; ----- [p9915]
;; p9915
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p9916]
;; p9916
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p9915 p9916
;; p9915
;; p9916
;; ----- [p9917]
;; p9917
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p9912 p9917
;; p9912
;; p9917
;; ----- [p9918]
;; p9918
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_GetElementPtr p9900 p9909 p9918
;; p9900
;; p9909
;; p9918
;; ----- [p9919]
;; p9919
;; 
;; Proof. C_GetElementPtr QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9921
;; p9921
;; ----- [p9922]
;; p9922
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p9922
;; p9922
;; ----- [p9923]
;; p9923
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9924
;; p9924
;; ----- [p9925]
;; p9925
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9923 p9925
;; p9923
;; p9925
;; ----- [p9926]
;; p9926
;; 
;; Proof. T_PointerType QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9927
;; p9927
;; ----- [p9928]
;; p9928
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p9926 p9928
;; p9926
;; p9928
;; ----- [p9929]
;; p9929
;; 
;; Proof. C_GlobalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p9930 p9931
;; p9930
;; p9931
;; ----- [p9932]
;; p9932
;; 
;; Proof. C_Int QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p9933 p9934
;; p9933
;; p9934
;; ----- [p9935]
;; p9935
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p9936]
;; p9936
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p9935 p9936
;; p9935
;; p9936
;; ----- [p9937]
;; p9937
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p9932 p9937
;; p9932
;; p9937
;; ----- [p9938]
;; p9938
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_GetElementPtr p9920 p9929 p9938
;; p9920
;; p9929
;; p9938
;; ----- [p9939]
;; p9939
;; 
;; Proof. C_GetElementPtr QED
;;; Verifying Nil_Constant 
;; ----- [p9940]
;; p9940
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p9939 p9940
;; p9939
;; p9940
;; ----- [p9941]
;; p9941
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p9919 p9941
;; p9919
;; p9941
;; ----- [p9942]
;; p9942
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_Struct p9898 p9899 p9942
;; p9898
;; p9899
;; p9942
;; ----- [p9943]
;; p9943
;; 
;; Proof. C_Struct QED
;;; 64 == 64 : Word32
;;; 1 == 1 : Integer
;;; Verifying C_Int p9944 p9945
;; p9944
;; p9945
;; ----- [p9946]
;; p9946
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p9947 p9948
;; p9947
;; p9948
;; ----- [p9949]
;; p9949
;; 
;; Proof. C_Int QED
;;; 8 == 8 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p9950 p9951
;; p9950
;; p9951
;; ----- [p9952]
;; p9952
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p9953]
;; p9953
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p9952 p9953
;; p9952
;; p9953
;; ----- [p9954]
;; p9954
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p9949 p9954
;; p9949
;; p9954
;; ----- [p9955]
;; p9955
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p9946 p9955
;; p9946
;; p9955
;; ----- [p9956]
;; p9956
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p9943 p9956
;; p9943
;; p9956
;; ----- [p9957]
;; p9957
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_Struct p9894 p9895 p9957
;; p9894
;; p9895
;; p9957
;; ----- [p9958]
;; p9958
;; 
;; Proof. C_Struct QED
;;; Verifying MC_Just_Constant p9958
;; p9958
;; ----- [p9959]
;; p9959
;; 
;; Proof. Just Constant equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9960]
;; p9960
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9961]
;; p9961
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying G_GlobalVariable p9880 p9881 p9882 p9883 p9884 p9885 p9886 p9889 p9891 p9959 p9960 p9961 p9962 p9963
;; p9880
;; p9881
;; p9882
;; p9883
;; p9884
;; p9885
;; p9886
;; p9889
;; p9891
;; p9959
;; p9960
;; p9961
;; p9962
;; p9963
;; ----- [p9964]
;; p9964
;; 
;; Proof. global variables memory and memory equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9965
;; p9965
;; ----- [p9966]
;; p9966
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p9878 p9966
;; p9878
;; p9966
;; ----- [p9967]
;; p9967
;; 
;; Proof. C_GlobalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p9968 p9969
;; p9968
;; p9969
;; ----- [p9970]
;; p9970
;; 
;; Proof. C_Int QED
;;; 32 == 32 : Word32
;;; 2 == 2 : Integer
;;; Verifying C_Int p9971 p9972
;; p9971
;; p9972
;; ----- [p9973]
;; p9973
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ----- [p9974]
;; p9974
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p9973 p9974
;; p9973
;; p9974
;; ----- [p9975]
;; p9975
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p9970 p9975
;; p9970
;; p9975
;; ----- [p9976]
;; p9976
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_GetElementPtr p9855 p9967 p9976
;; p9855
;; p9967
;; p9976
;; ----- [p9977]
;; p9977
;; 
;; Proof. C_GetElementPtr QED
;;; Verifying O_ConstantOperand p9977
;; p9977
;; ----- [p9978]
;; p9978
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_ParameterAttribute 
;; ----- [p9979]
;; p9979
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p9978 p9979
;; p9978
;; p9979
;; ----- [p9980]
;; p9980
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Tup2_Operand_List_ParameterAttribute 
;; ----- [p9981]
;; p9981
;; 
;; Proof. [] ((Operand, [ParameterAttribute])) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p9980 p9981
;; p9980
;; p9981
;; ----- [p9982]
;; p9982
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ----- [p9983]
;; p9983
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; True == True : Bool
;;; Verifying I_Call p8959 p8960 p8961 p9854 p9982 p9983 p9984
;; p8959
;; p8960
;; p8961
;; p9854
;; p9982
;; p9983
;; p9984
;; ----- [p9985]
;; p9985
;; 
;; Proof. I_Call QED
;;; Verifying NI_Do_Instruction p9985
;; p9985
;; ----- [p9986]
;; p9986
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ----- [p9987]
;; p9987
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p9988
;; p9988
;; ----- [p9989]
;; p9989
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p9991
;; p9991
;; ----- [p9992]
;; p9992
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p9992
;; p9992
;; ----- [p9993]
;; p9993
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9994
;; p9994
;; ----- [p9995]
;; p9995
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9993 p9995
;; p9993
;; p9995
;; ----- [p9996]
;; p9996
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p9997
;; p9997
;; ----- [p9998]
;; p9998
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p9996 p9998
;; p9996
;; p9998
;; ----- [p9999]
;; p9999
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10000
;; p10000
;; ------ [p10001]
;; p10001
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p9999 p10001
;; p9999
;; p10001
;; ------ [p10002]
;; p10002
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p10003]
;; p10003
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p9990 p10002 p10003 p10004 p10005
;; p9990
;; p10002
;; p10003
;; p10004
;; p10005
;; ------ [p10006]
;; p10006
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p9989 p10006
;; p9989
;; p10006
;; ------ [p10007]
;; p10007
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10008]
;; p10008
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10009
;; p10009
;; ------ [p10010]
;; p10010
;; 
;; Proof. UnName equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10011
;; p10011
;; ------ [p10012]
;; p10012
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10012
;; p10012
;; ------ [p10013]
;; p10013
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10014
;; p10014
;; ------ [p10015]
;; p10015
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10013 p10015
;; p10013
;; p10015
;; ------ [p10016]
;; p10016
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10017
;; p10017
;; ------ [p10018]
;; p10018
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10016 p10018
;; p10016
;; p10018
;; ------ [p10019]
;; p10019
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10020
;; p10020
;; ------ [p10021]
;; p10021
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10021
;; p10021
;; ------ [p10022]
;; p10022
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10023
;; p10023
;; ------ [p10024]
;; p10024
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10022 p10024
;; p10022
;; p10024
;; ------ [p10025]
;; p10025
;; 
;; Proof. T_PointerType QED
;;; True == True : Bool
;;; Verifying I_BitCast p10019 p10025 p10026
;; p10019
;; p10025
;; p10026
;; ------ [p10027]
;; p10027
;; 
;; Proof. I_BitCast QED
;;; Verifying NI_infix_Instruction p10010 p10027
;; p10010
;; p10027
;; ------ [p10028]
;; p10028
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10029]
;; p10029
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10030
;; p10030
;; ------ [p10031]
;; p10031
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10033
;; p10033
;; ------ [p10034]
;; p10034
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10034
;; p10034
;; ------ [p10035]
;; p10035
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10036
;; p10036
;; ------ [p10037]
;; p10037
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10035 p10037
;; p10035
;; p10037
;; ------ [p10038]
;; p10038
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10039
;; p10039
;; ------ [p10040]
;; p10040
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10038 p10040
;; p10038
;; p10040
;; ------ [p10041]
;; p10041
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p10042 p10043
;; p10042
;; p10043
;; ------ [p10044]
;; p10044
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p10044
;; p10044
;; ------ [p10045]
;; p10045
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 1 == 1 : Integer
;;; Verifying C_Int p10046 p10047
;; p10046
;; p10047
;; ------ [p10048]
;; p10048
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p10048
;; p10048
;; ------ [p10049]
;; p10049
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ------ [p10050]
;; p10050
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p10049 p10050
;; p10049
;; p10050
;; ------ [p10051]
;; p10051
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p10045 p10051
;; p10045
;; p10051
;; ------ [p10052]
;; p10052
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p10032 p10041 p10052 p10053
;; p10032
;; p10041
;; p10052
;; p10053
;; ------ [p10054]
;; p10054
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p10031 p10054
;; p10031
;; p10054
;; ------ [p10055]
;; p10055
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10056]
;; p10056
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ------ [p10057]
;; p10057
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ------ [p10058]
;; p10058
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ------ [p10059]
;; p10059
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ------ [p10060]
;; p10060
;; 
;; Proof. T_VoidType QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10061
;; p10061
;; ------ [p10062]
;; p10062
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10062
;; p10062
;; ------ [p10063]
;; p10063
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10064
;; p10064
;; ------ [p10065]
;; p10065
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10063 p10065
;; p10063
;; p10065
;; ------ [p10066]
;; p10066
;; 
;; Proof. T_PointerType QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10067
;; p10067
;; ------ [p10068]
;; p10068
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10068
;; p10068
;; ------ [p10069]
;; p10069
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10070
;; p10070
;; ------ [p10071]
;; p10071
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10069 p10071
;; p10069
;; p10071
;; ------ [p10072]
;; p10072
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ------ [p10073]
;; p10073
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p10072 p10073
;; p10072
;; p10073
;; ------ [p10074]
;; p10074
;; 
;; Proof. Cons Type equivalent QED
;;; Verifying Cons_Type p10066 p10074
;; p10066
;; p10074
;; ------ [p10075]
;; p10075
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p10060 p10075 p10076
;; p10060
;; p10075
;; p10076
;; ------ [p10077]
;; p10077
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10078
;; p10078
;; ------ [p10079]
;; p10079
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10077 p10079
;; p10077
;; p10079
;; ------ [p10080]
;; p10080
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10081]
;; p10081
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Internal 
;; ------ [p10082]
;; p10082
;; 
;; Proof. L_Internal QED
;;; Verifying V_Default 
;; ------ [p10083]
;; p10083
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ------ [p10084]
;; p10084
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying CC_C 
;; ------ [p10085]
;; p10085
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ------ [p10086]
;; p10086
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ------ [p10087]
;; p10087
;; 
;; Proof. T_VoidType QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10089
;; p10089
;; ------ [p10090]
;; p10090
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10090
;; p10090
;; ------ [p10091]
;; p10091
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10092
;; p10092
;; ------ [p10093]
;; p10093
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10091 p10093
;; p10091
;; p10093
;; ------ [p10094]
;; p10094
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10095
;; p10095
;; ------ [p10096]
;; p10096
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ------ [p10097]
;; p10097
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p10094 p10096 p10097
;; p10094
;; p10096
;; p10097
;; ------ [p10098]
;; p10098
;; 
;; Proof. P_Parameter QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10099
;; p10099
;; ------ [p10100]
;; p10100
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10100
;; p10100
;; ------ [p10101]
;; p10101
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10102
;; p10102
;; ------ [p10103]
;; p10103
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10101 p10103
;; p10101
;; p10103
;; ------ [p10104]
;; p10104
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10105
;; p10105
;; ------ [p10106]
;; p10106
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ------ [p10107]
;; p10107
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p10104 p10106 p10107
;; p10104
;; p10106
;; p10107
;; ------ [p10108]
;; p10108
;; 
;; Proof. P_Parameter QED
;;; Verifying Nil_Parameter 
;; ------ [p10109]
;; p10109
;; 
;; Proof. [] (Parameter) equivalent QED
;;; Verifying Cons_Parameter p10108 p10109
;; p10108
;; p10109
;; ------ [p10110]
;; p10110
;; 
;; Proof. Cons Parameter equivalent QED
;;; Verifying Cons_Parameter p10098 p10110
;; p10098
;; p10110
;; ------ [p10111]
;; p10111
;; 
;; Proof. Cons Parameter equivalent QED
;;; False == False : Bool
;;; Verifying Tup2_List_Parameter_Bool p10111 p10112
;; p10111
;; p10112
;; ------ [p10113]
;; p10113
;; 
;; Proof. Tuple ([Parameter], Bool) equivalent QED
;;; 0 == 0 : Word
;;; Verifying GID_GroupID p10114
;; p10114
;; ------ [p10115]
;; p10115
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p10115
;; p10115
;; ------ [p10116]
;; p10116
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ------ [p10117]
;; p10117
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p10116 p10117
;; p10116
;; p10117
;; ------ [p10118]
;; p10118
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10119]
;; p10119
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10120]
;; p10120
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 0 == 0 : Word32
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10122]
;; p10122
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ------ [p10123]
;; p10123
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; basic block matching 2-2, 7-7, 11-11, 28-28, 10-10
;;; 1 == 1 : Word
;;; Verifying N_UnName p10124
;; p10124
;; ------ [p10125]
;; p10125
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10126]
;; p10126
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10127
;; p10127
;; ------ [p10128]
;; p10128
;; 
;; Proof. UnName equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10129
;; p10129
;; ------ [p10130]
;; p10130
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10130
;; p10130
;; ------ [p10131]
;; p10131
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10132
;; p10132
;; ------ [p10133]
;; p10133
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10131 p10133
;; p10131
;; p10133
;; ------ [p10134]
;; p10134
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ------ [p10135]
;; p10135
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p10134 p10135 p10136 p10137
;; p10134
;; p10135
;; p10136
;; p10137
;; ------ [p10138]
;; p10138
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p10128 p10138
;; p10128
;; p10138
;; ------ [p10139]
;; p10139
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10140]
;; p10140
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10141
;; p10141
;; ------ [p10142]
;; p10142
;; 
;; Proof. UnName equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10143
;; p10143
;; ------ [p10144]
;; p10144
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10144
;; p10144
;; ------ [p10145]
;; p10145
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10146
;; p10146
;; ------ [p10147]
;; p10147
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10145 p10147
;; p10145
;; p10147
;; ------ [p10148]
;; p10148
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ------ [p10149]
;; p10149
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p10148 p10149 p10150 p10151
;; p10148
;; p10149
;; p10150
;; p10151
;; ------ [p10152]
;; p10152
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p10142 p10152
;; p10142
;; p10152
;; ------ [p10153]
;; p10153
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10154]
;; p10154
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10156
;; p10156
;; ------ [p10157]
;; p10157
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10157
;; p10157
;; ------ [p10158]
;; p10158
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10159
;; p10159
;; ------ [p10160]
;; p10160
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10158 p10160
;; p10158
;; p10160
;; ------ [p10161]
;; p10161
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10162
;; p10162
;; ------ [p10163]
;; p10163
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10161 p10163
;; p10161
;; p10163
;; ------ [p10164]
;; p10164
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10165
;; p10165
;; ------ [p10166]
;; p10166
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10164 p10166
;; p10164
;; p10166
;; ------ [p10167]
;; p10167
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10168
;; p10168
;; ------ [p10169]
;; p10169
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10169
;; p10169
;; ------ [p10170]
;; p10170
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10171
;; p10171
;; ------ [p10172]
;; p10172
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10170 p10172
;; p10170
;; p10172
;; ------ [p10173]
;; p10173
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10174
;; p10174
;; ------ [p10175]
;; p10175
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10173 p10175
;; p10173
;; p10175
;; ------ [p10176]
;; p10176
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p10177]
;; p10177
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p10155 p10167 p10176 p10177 p10178 p10179
;; p10155
;; p10167
;; p10176
;; p10177
;; p10178
;; p10179
;; ------ [p10180]
;; p10180
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p10180
;; p10180
;; ------ [p10181]
;; p10181
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10182]
;; p10182
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10184
;; p10184
;; ------ [p10185]
;; p10185
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10185
;; p10185
;; ------ [p10186]
;; p10186
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10187
;; p10187
;; ------ [p10188]
;; p10188
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10186 p10188
;; p10186
;; p10188
;; ------ [p10189]
;; p10189
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10190
;; p10190
;; ------ [p10191]
;; p10191
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10189 p10191
;; p10189
;; p10191
;; ------ [p10192]
;; p10192
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10193
;; p10193
;; ------ [p10194]
;; p10194
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10192 p10194
;; p10192
;; p10194
;; ------ [p10195]
;; p10195
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10196
;; p10196
;; ------ [p10197]
;; p10197
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10197
;; p10197
;; ------ [p10198]
;; p10198
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10199
;; p10199
;; ------ [p10200]
;; p10200
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10198 p10200
;; p10198
;; p10200
;; ------ [p10201]
;; p10201
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10202
;; p10202
;; ------ [p10203]
;; p10203
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10201 p10203
;; p10201
;; p10203
;; ------ [p10204]
;; p10204
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p10205]
;; p10205
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p10183 p10195 p10204 p10205 p10206 p10207
;; p10183
;; p10195
;; p10204
;; p10205
;; p10206
;; p10207
;; ------ [p10208]
;; p10208
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p10208
;; p10208
;; ------ [p10209]
;; p10209
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10210]
;; p10210
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10211
;; p10211
;; ------ [p10212]
;; p10212
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10214
;; p10214
;; ------ [p10215]
;; p10215
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10215
;; p10215
;; ------ [p10216]
;; p10216
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10217
;; p10217
;; ------ [p10218]
;; p10218
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10216 p10218
;; p10216
;; p10218
;; ------ [p10219]
;; p10219
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10220
;; p10220
;; ------ [p10221]
;; p10221
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10219 p10221
;; p10219
;; p10221
;; ------ [p10222]
;; p10222
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10223
;; p10223
;; ------ [p10224]
;; p10224
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10222 p10224
;; p10222
;; p10224
;; ------ [p10225]
;; p10225
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p10226]
;; p10226
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p10213 p10225 p10226 p10227 p10228
;; p10213
;; p10225
;; p10226
;; p10227
;; p10228
;; ------ [p10229]
;; p10229
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p10212 p10229
;; p10212
;; p10229
;; ------ [p10230]
;; p10230
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10231]
;; p10231
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10232
;; p10232
;; ------ [p10233]
;; p10233
;; 
;; Proof. UnName equivalent QED
;;; Verifying IP_NE 
;; ------ [p10234]
;; p10234
;; 
;; Proof. IP_NE QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10235
;; p10235
;; ------ [p10236]
;; p10236
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10236
;; p10236
;; ------ [p10237]
;; p10237
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10238
;; p10238
;; ------ [p10239]
;; p10239
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10237 p10239
;; p10237
;; p10239
;; ------ [p10240]
;; p10240
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10241
;; p10241
;; ------ [p10242]
;; p10242
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10240 p10242
;; p10240
;; p10242
;; ------ [p10243]
;; p10243
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10244
;; p10244
;; ------ [p10245]
;; p10245
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10245
;; p10245
;; ------ [p10246]
;; p10246
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10247
;; p10247
;; ------ [p10248]
;; p10248
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10246 p10248
;; p10246
;; p10248
;; ------ [p10249]
;; p10249
;; 
;; Proof. T_PointerType QED
;;; Verifying C_Null p10249
;; p10249
;; ------ [p10250]
;; p10250
;; 
;; Proof. C_Null QED
;;; Verifying O_ConstantOperand p10250
;; p10250
;; ------ [p10251]
;; p10251
;; 
;; Proof. O_ConstantOperand QED
;;; True == True : Bool
;;; Verifying I_ICmp p10234 p10243 p10251 p10252
;; p10234
;; p10243
;; p10251
;; p10252
;; ------ [p10253]
;; p10253
;; 
;; Proof. I_ICmp QED
;;; Verifying NI_infix_Instruction p10233 p10253
;; p10233
;; p10253
;; ------ [p10254]
;; p10254
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ------ [p10255]
;; p10255
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p10254 p10255
;; p10254
;; p10255
;; ------ [p10256]
;; p10256
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10230 p10256
;; p10230
;; p10256
;; ------ [p10257]
;; p10257
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10209 p10257
;; p10209
;; p10257
;; ------ [p10258]
;; p10258
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10181 p10258
;; p10181
;; p10258
;; ------ [p10259]
;; p10259
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10153 p10259
;; p10153
;; p10259
;; ------ [p10260]
;; p10260
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10139 p10260
;; p10139
;; p10260
;; ------ [p10261]
;; p10261
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10262]
;; p10262
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; Verifying T_IntegerType p10263
;; p10263
;; ------ [p10264]
;; p10264
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10265
;; p10265
;; ------ [p10266]
;; p10266
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10264 p10266
;; p10264
;; p10266
;; ------ [p10267]
;; p10267
;; 
;; Proof. O_LocalReference QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10268
;; p10268
;; ------ [p10269]
;; p10269
;; 
;; Proof. UnName equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10270
;; p10270
;; ------ [p10271]
;; p10271
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_CondBr p10267 p10269 p10271 p10272
;; p10267
;; p10269
;; p10271
;; p10272
;; ------ [p10273]
;; p10273
;; 
;; Proof. T_CondBr QED
;;; Verifying NT_Do_Terminator p10273
;; p10273
;; ------ [p10274]
;; p10274
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p10125 p10261 p10274
;; p10125
;; p10261
;; p10274
;; ------ [p10275]
;; p10275
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10276
;; p10276
;; ------ [p10277]
;; p10277
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10278]
;; p10278
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10279
;; p10279
;; ------ [p10280]
;; p10280
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10282
;; p10282
;; ------ [p10283]
;; p10283
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10283
;; p10283
;; ------ [p10284]
;; p10284
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10285
;; p10285
;; ------ [p10286]
;; p10286
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10284 p10286
;; p10284
;; p10286
;; ------ [p10287]
;; p10287
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10288
;; p10288
;; ------ [p10289]
;; p10289
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10287 p10289
;; p10287
;; p10289
;; ------ [p10290]
;; p10290
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10291
;; p10291
;; ------ [p10292]
;; p10292
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10290 p10292
;; p10290
;; p10292
;; ------ [p10293]
;; p10293
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p10294]
;; p10294
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p10281 p10293 p10294 p10295 p10296
;; p10281
;; p10293
;; p10294
;; p10295
;; p10296
;; ------ [p10297]
;; p10297
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p10280 p10297
;; p10280
;; p10297
;; ------ [p10298]
;; p10298
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10299]
;; p10299
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10300
;; p10300
;; ------ [p10301]
;; p10301
;; 
;; Proof. UnName equivalent QED
;;; Verifying IP_NE 
;; ------ [p10302]
;; p10302
;; 
;; Proof. IP_NE QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10303
;; p10303
;; ------ [p10304]
;; p10304
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10304
;; p10304
;; ------ [p10305]
;; p10305
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10306
;; p10306
;; ------ [p10307]
;; p10307
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10305 p10307
;; p10305
;; p10307
;; ------ [p10308]
;; p10308
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10309
;; p10309
;; ------ [p10310]
;; p10310
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10308 p10310
;; p10308
;; p10310
;; ------ [p10311]
;; p10311
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10312
;; p10312
;; ------ [p10313]
;; p10313
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10313
;; p10313
;; ------ [p10314]
;; p10314
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10315
;; p10315
;; ------ [p10316]
;; p10316
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10314 p10316
;; p10314
;; p10316
;; ------ [p10317]
;; p10317
;; 
;; Proof. T_PointerType QED
;;; Verifying C_Null p10317
;; p10317
;; ------ [p10318]
;; p10318
;; 
;; Proof. C_Null QED
;;; Verifying O_ConstantOperand p10318
;; p10318
;; ------ [p10319]
;; p10319
;; 
;; Proof. O_ConstantOperand QED
;;; True == True : Bool
;;; Verifying I_ICmp p10302 p10311 p10319 p10320
;; p10302
;; p10311
;; p10319
;; p10320
;; ------ [p10321]
;; p10321
;; 
;; Proof. I_ICmp QED
;;; Verifying NI_infix_Instruction p10301 p10321
;; p10301
;; p10321
;; ------ [p10322]
;; p10322
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ------ [p10323]
;; p10323
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p10322 p10323
;; p10322
;; p10323
;; ------ [p10324]
;; p10324
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10298 p10324
;; p10298
;; p10324
;; ------ [p10325]
;; p10325
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10326]
;; p10326
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; Verifying T_IntegerType p10327
;; p10327
;; ------ [p10328]
;; p10328
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10329
;; p10329
;; ------ [p10330]
;; p10330
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10328 p10330
;; p10328
;; p10330
;; ------ [p10331]
;; p10331
;; 
;; Proof. O_LocalReference QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10332
;; p10332
;; ------ [p10333]
;; p10333
;; 
;; Proof. UnName equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10334
;; p10334
;; ------ [p10335]
;; p10335
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_CondBr p10331 p10333 p10335 p10336
;; p10331
;; p10333
;; p10335
;; p10336
;; ------ [p10337]
;; p10337
;; 
;; Proof. T_CondBr QED
;;; Verifying NT_Do_Terminator p10337
;; p10337
;; ------ [p10338]
;; p10338
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p10277 p10325 p10338
;; p10277
;; p10325
;; p10338
;; ------ [p10339]
;; p10339
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10340
;; p10340
;; ------ [p10341]
;; p10341
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10342]
;; p10342
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10343
;; p10343
;; ------ [p10344]
;; p10344
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10346
;; p10346
;; ------ [p10347]
;; p10347
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10347
;; p10347
;; ------ [p10348]
;; p10348
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10349
;; p10349
;; ------ [p10350]
;; p10350
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10348 p10350
;; p10348
;; p10350
;; ------ [p10351]
;; p10351
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10352
;; p10352
;; ------ [p10353]
;; p10353
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10351 p10353
;; p10351
;; p10353
;; ------ [p10354]
;; p10354
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10355
;; p10355
;; ------ [p10356]
;; p10356
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10354 p10356
;; p10354
;; p10356
;; ------ [p10357]
;; p10357
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p10358]
;; p10358
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p10345 p10357 p10358 p10359 p10360
;; p10345
;; p10357
;; p10358
;; p10359
;; p10360
;; ------ [p10361]
;; p10361
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p10344 p10361
;; p10344
;; p10361
;; ------ [p10362]
;; p10362
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10363]
;; p10363
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10364
;; p10364
;; ------ [p10365]
;; p10365
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10367
;; p10367
;; ------ [p10368]
;; p10368
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10368
;; p10368
;; ------ [p10369]
;; p10369
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10370
;; p10370
;; ------ [p10371]
;; p10371
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10369 p10371
;; p10369
;; p10371
;; ------ [p10372]
;; p10372
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10373
;; p10373
;; ------ [p10374]
;; p10374
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10372 p10374
;; p10372
;; p10374
;; ------ [p10375]
;; p10375
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p10376 p10377
;; p10376
;; p10377
;; ------ [p10378]
;; p10378
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p10378
;; p10378
;; ------ [p10379]
;; p10379
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p10380 p10381
;; p10380
;; p10381
;; ------ [p10382]
;; p10382
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p10382
;; p10382
;; ------ [p10383]
;; p10383
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ------ [p10384]
;; p10384
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p10383 p10384
;; p10383
;; p10384
;; ------ [p10385]
;; p10385
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p10379 p10385
;; p10379
;; p10385
;; ------ [p10386]
;; p10386
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p10366 p10375 p10386 p10387
;; p10366
;; p10375
;; p10386
;; p10387
;; ------ [p10388]
;; p10388
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p10365 p10388
;; p10365
;; p10388
;; ------ [p10389]
;; p10389
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10390]
;; p10390
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10391
;; p10391
;; ------ [p10392]
;; p10392
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10394
;; p10394
;; ------ [p10395]
;; p10395
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10395
;; p10395
;; ------ [p10396]
;; p10396
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10397
;; p10397
;; ------ [p10398]
;; p10398
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10396 p10398
;; p10396
;; p10398
;; ------ [p10399]
;; p10399
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10400
;; p10400
;; ------ [p10401]
;; p10401
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10399 p10401
;; p10399
;; p10401
;; ------ [p10402]
;; p10402
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10403
;; p10403
;; ------ [p10404]
;; p10404
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10402 p10404
;; p10402
;; p10404
;; ------ [p10405]
;; p10405
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p10406]
;; p10406
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p10393 p10405 p10406 p10407 p10408
;; p10393
;; p10405
;; p10406
;; p10407
;; p10408
;; ------ [p10409]
;; p10409
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p10392 p10409
;; p10392
;; p10409
;; ------ [p10410]
;; p10410
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10411]
;; p10411
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10412
;; p10412
;; ------ [p10413]
;; p10413
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10415
;; p10415
;; ------ [p10416]
;; p10416
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10416
;; p10416
;; ------ [p10417]
;; p10417
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10418
;; p10418
;; ------ [p10419]
;; p10419
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10417 p10419
;; p10417
;; p10419
;; ------ [p10420]
;; p10420
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10421
;; p10421
;; ------ [p10422]
;; p10422
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10420 p10422
;; p10420
;; p10422
;; ------ [p10423]
;; p10423
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10424
;; p10424
;; ------ [p10425]
;; p10425
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10423 p10425
;; p10423
;; p10425
;; ------ [p10426]
;; p10426
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p10427]
;; p10427
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p10414 p10426 p10427 p10428 p10429
;; p10414
;; p10426
;; p10427
;; p10428
;; p10429
;; ------ [p10430]
;; p10430
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p10413 p10430
;; p10413
;; p10430
;; ------ [p10431]
;; p10431
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10432]
;; p10432
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10433
;; p10433
;; ------ [p10434]
;; p10434
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10436
;; p10436
;; ------ [p10437]
;; p10437
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10437
;; p10437
;; ------ [p10438]
;; p10438
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10439
;; p10439
;; ------ [p10440]
;; p10440
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10438 p10440
;; p10438
;; p10440
;; ------ [p10441]
;; p10441
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10442
;; p10442
;; ------ [p10443]
;; p10443
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10441 p10443
;; p10441
;; p10443
;; ------ [p10444]
;; p10444
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p10445 p10446
;; p10445
;; p10446
;; ------ [p10447]
;; p10447
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p10447
;; p10447
;; ------ [p10448]
;; p10448
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p10449 p10450
;; p10449
;; p10450
;; ------ [p10451]
;; p10451
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p10451
;; p10451
;; ------ [p10452]
;; p10452
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ------ [p10453]
;; p10453
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p10452 p10453
;; p10452
;; p10453
;; ------ [p10454]
;; p10454
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p10448 p10454
;; p10448
;; p10454
;; ------ [p10455]
;; p10455
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p10435 p10444 p10455 p10456
;; p10435
;; p10444
;; p10455
;; p10456
;; ------ [p10457]
;; p10457
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p10434 p10457
;; p10434
;; p10457
;; ------ [p10458]
;; p10458
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10459]
;; p10459
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10461
;; p10461
;; ------ [p10462]
;; p10462
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10462
;; p10462
;; ------ [p10463]
;; p10463
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10464
;; p10464
;; ------ [p10465]
;; p10465
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10463 p10465
;; p10463
;; p10465
;; ------ [p10466]
;; p10466
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10467
;; p10467
;; ------ [p10468]
;; p10468
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10466 p10468
;; p10466
;; p10468
;; ------ [p10469]
;; p10469
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10470
;; p10470
;; ------ [p10471]
;; p10471
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10469 p10471
;; p10469
;; p10471
;; ------ [p10472]
;; p10472
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10473
;; p10473
;; ------ [p10474]
;; p10474
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10474
;; p10474
;; ------ [p10475]
;; p10475
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10476
;; p10476
;; ------ [p10477]
;; p10477
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10475 p10477
;; p10475
;; p10477
;; ------ [p10478]
;; p10478
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10479
;; p10479
;; ------ [p10480]
;; p10480
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10478 p10480
;; p10478
;; p10480
;; ------ [p10481]
;; p10481
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p10482]
;; p10482
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p10460 p10472 p10481 p10482 p10483 p10484
;; p10460
;; p10472
;; p10481
;; p10482
;; p10483
;; p10484
;; ------ [p10485]
;; p10485
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p10485
;; p10485
;; ------ [p10486]
;; p10486
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10487]
;; p10487
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10488
;; p10488
;; ------ [p10489]
;; p10489
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10491
;; p10491
;; ------ [p10492]
;; p10492
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10492
;; p10492
;; ------ [p10493]
;; p10493
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10494
;; p10494
;; ------ [p10495]
;; p10495
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10493 p10495
;; p10493
;; p10495
;; ------ [p10496]
;; p10496
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10497
;; p10497
;; ------ [p10498]
;; p10498
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10496 p10498
;; p10496
;; p10498
;; ------ [p10499]
;; p10499
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10500
;; p10500
;; ------ [p10501]
;; p10501
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10499 p10501
;; p10499
;; p10501
;; ------ [p10502]
;; p10502
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p10503]
;; p10503
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p10490 p10502 p10503 p10504 p10505
;; p10490
;; p10502
;; p10503
;; p10504
;; p10505
;; ------ [p10506]
;; p10506
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p10489 p10506
;; p10489
;; p10506
;; ------ [p10507]
;; p10507
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10508]
;; p10508
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10509
;; p10509
;; ------ [p10510]
;; p10510
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10512
;; p10512
;; ------ [p10513]
;; p10513
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10513
;; p10513
;; ------ [p10514]
;; p10514
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10515
;; p10515
;; ------ [p10516]
;; p10516
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10514 p10516
;; p10514
;; p10516
;; ------ [p10517]
;; p10517
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10518
;; p10518
;; ------ [p10519]
;; p10519
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10517 p10519
;; p10517
;; p10519
;; ------ [p10520]
;; p10520
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10521
;; p10521
;; ------ [p10522]
;; p10522
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10520 p10522
;; p10520
;; p10522
;; ------ [p10523]
;; p10523
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p10524]
;; p10524
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p10511 p10523 p10524 p10525 p10526
;; p10511
;; p10523
;; p10524
;; p10525
;; p10526
;; ------ [p10527]
;; p10527
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p10510 p10527
;; p10510
;; p10527
;; ------ [p10528]
;; p10528
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10529]
;; p10529
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10530
;; p10530
;; ------ [p10531]
;; p10531
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10533
;; p10533
;; ------ [p10534]
;; p10534
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10534
;; p10534
;; ------ [p10535]
;; p10535
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10536
;; p10536
;; ------ [p10537]
;; p10537
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10535 p10537
;; p10535
;; p10537
;; ------ [p10538]
;; p10538
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10539
;; p10539
;; ------ [p10540]
;; p10540
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10538 p10540
;; p10538
;; p10540
;; ------ [p10541]
;; p10541
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p10542 p10543
;; p10542
;; p10543
;; ------ [p10544]
;; p10544
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p10544
;; p10544
;; ------ [p10545]
;; p10545
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 1 == 1 : Integer
;;; Verifying C_Int p10546 p10547
;; p10546
;; p10547
;; ------ [p10548]
;; p10548
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p10548
;; p10548
;; ------ [p10549]
;; p10549
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ------ [p10550]
;; p10550
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p10549 p10550
;; p10549
;; p10550
;; ------ [p10551]
;; p10551
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p10545 p10551
;; p10545
;; p10551
;; ------ [p10552]
;; p10552
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p10532 p10541 p10552 p10553
;; p10532
;; p10541
;; p10552
;; p10553
;; ------ [p10554]
;; p10554
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p10531 p10554
;; p10531
;; p10554
;; ------ [p10555]
;; p10555
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10556]
;; p10556
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10558
;; p10558
;; ------ [p10559]
;; p10559
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10559
;; p10559
;; ------ [p10560]
;; p10560
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10561
;; p10561
;; ------ [p10562]
;; p10562
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10560 p10562
;; p10560
;; p10562
;; ------ [p10563]
;; p10563
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10564
;; p10564
;; ------ [p10565]
;; p10565
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10563 p10565
;; p10563
;; p10565
;; ------ [p10566]
;; p10566
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10567
;; p10567
;; ------ [p10568]
;; p10568
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10566 p10568
;; p10566
;; p10568
;; ------ [p10569]
;; p10569
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10570
;; p10570
;; ------ [p10571]
;; p10571
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10571
;; p10571
;; ------ [p10572]
;; p10572
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10573
;; p10573
;; ------ [p10574]
;; p10574
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10572 p10574
;; p10572
;; p10574
;; ------ [p10575]
;; p10575
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10576
;; p10576
;; ------ [p10577]
;; p10577
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10575 p10577
;; p10575
;; p10577
;; ------ [p10578]
;; p10578
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p10579]
;; p10579
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p10557 p10569 p10578 p10579 p10580 p10581
;; p10557
;; p10569
;; p10578
;; p10579
;; p10580
;; p10581
;; ------ [p10582]
;; p10582
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p10582
;; p10582
;; ------ [p10583]
;; p10583
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10584]
;; p10584
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10585
;; p10585
;; ------ [p10586]
;; p10586
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10588
;; p10588
;; ------ [p10589]
;; p10589
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10589
;; p10589
;; ------ [p10590]
;; p10590
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10591
;; p10591
;; ------ [p10592]
;; p10592
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10590 p10592
;; p10590
;; p10592
;; ------ [p10593]
;; p10593
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10594
;; p10594
;; ------ [p10595]
;; p10595
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10593 p10595
;; p10593
;; p10595
;; ------ [p10596]
;; p10596
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10597
;; p10597
;; ------ [p10598]
;; p10598
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10596 p10598
;; p10596
;; p10598
;; ------ [p10599]
;; p10599
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p10600]
;; p10600
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p10587 p10599 p10600 p10601 p10602
;; p10587
;; p10599
;; p10600
;; p10601
;; p10602
;; ------ [p10603]
;; p10603
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p10586 p10603
;; p10586
;; p10603
;; ------ [p10604]
;; p10604
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10605]
;; p10605
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10606
;; p10606
;; ------ [p10607]
;; p10607
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10609
;; p10609
;; ------ [p10610]
;; p10610
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10610
;; p10610
;; ------ [p10611]
;; p10611
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10612
;; p10612
;; ------ [p10613]
;; p10613
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10611 p10613
;; p10611
;; p10613
;; ------ [p10614]
;; p10614
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10615
;; p10615
;; ------ [p10616]
;; p10616
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10614 p10616
;; p10614
;; p10616
;; ------ [p10617]
;; p10617
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10618
;; p10618
;; ------ [p10619]
;; p10619
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10617 p10619
;; p10617
;; p10619
;; ------ [p10620]
;; p10620
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p10621]
;; p10621
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p10608 p10620 p10621 p10622 p10623
;; p10608
;; p10620
;; p10621
;; p10622
;; p10623
;; ------ [p10624]
;; p10624
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p10607 p10624
;; p10607
;; p10624
;; ------ [p10625]
;; p10625
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10626]
;; p10626
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10627
;; p10627
;; ------ [p10628]
;; p10628
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10630
;; p10630
;; ------ [p10631]
;; p10631
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10631
;; p10631
;; ------ [p10632]
;; p10632
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10633
;; p10633
;; ------ [p10634]
;; p10634
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10632 p10634
;; p10632
;; p10634
;; ------ [p10635]
;; p10635
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10636
;; p10636
;; ------ [p10637]
;; p10637
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10635 p10637
;; p10635
;; p10637
;; ------ [p10638]
;; p10638
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p10639 p10640
;; p10639
;; p10640
;; ------ [p10641]
;; p10641
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p10641
;; p10641
;; ------ [p10642]
;; p10642
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p10643 p10644
;; p10643
;; p10644
;; ------ [p10645]
;; p10645
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p10645
;; p10645
;; ------ [p10646]
;; p10646
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ------ [p10647]
;; p10647
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p10646 p10647
;; p10646
;; p10647
;; ------ [p10648]
;; p10648
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p10642 p10648
;; p10642
;; p10648
;; ------ [p10649]
;; p10649
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p10629 p10638 p10649 p10650
;; p10629
;; p10638
;; p10649
;; p10650
;; ------ [p10651]
;; p10651
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p10628 p10651
;; p10628
;; p10651
;; ------ [p10652]
;; p10652
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10653]
;; p10653
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10654
;; p10654
;; ------ [p10655]
;; p10655
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10657
;; p10657
;; ------ [p10658]
;; p10658
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10658
;; p10658
;; ------ [p10659]
;; p10659
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10660
;; p10660
;; ------ [p10661]
;; p10661
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10659 p10661
;; p10659
;; p10661
;; ------ [p10662]
;; p10662
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10663
;; p10663
;; ------ [p10664]
;; p10664
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10662 p10664
;; p10662
;; p10664
;; ------ [p10665]
;; p10665
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10666
;; p10666
;; ------ [p10667]
;; p10667
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10665 p10667
;; p10665
;; p10667
;; ------ [p10668]
;; p10668
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p10669]
;; p10669
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p10656 p10668 p10669 p10670 p10671
;; p10656
;; p10668
;; p10669
;; p10670
;; p10671
;; ------ [p10672]
;; p10672
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p10655 p10672
;; p10655
;; p10672
;; ------ [p10673]
;; p10673
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10674]
;; p10674
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10675
;; p10675
;; ------ [p10676]
;; p10676
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10678
;; p10678
;; ------ [p10679]
;; p10679
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10679
;; p10679
;; ------ [p10680]
;; p10680
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10681
;; p10681
;; ------ [p10682]
;; p10682
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10680 p10682
;; p10680
;; p10682
;; ------ [p10683]
;; p10683
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10684
;; p10684
;; ------ [p10685]
;; p10685
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10683 p10685
;; p10683
;; p10685
;; ------ [p10686]
;; p10686
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p10687 p10688
;; p10687
;; p10688
;; ------ [p10689]
;; p10689
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p10689
;; p10689
;; ------ [p10690]
;; p10690
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 1 == 1 : Integer
;;; Verifying C_Int p10691 p10692
;; p10691
;; p10692
;; ------ [p10693]
;; p10693
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p10693
;; p10693
;; ------ [p10694]
;; p10694
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ------ [p10695]
;; p10695
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p10694 p10695
;; p10694
;; p10695
;; ------ [p10696]
;; p10696
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p10690 p10696
;; p10690
;; p10696
;; ------ [p10697]
;; p10697
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p10677 p10686 p10697 p10698
;; p10677
;; p10686
;; p10697
;; p10698
;; ------ [p10699]
;; p10699
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p10676 p10699
;; p10676
;; p10699
;; ------ [p10700]
;; p10700
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10701]
;; p10701
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10703
;; p10703
;; ------ [p10704]
;; p10704
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10704
;; p10704
;; ------ [p10705]
;; p10705
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10706
;; p10706
;; ------ [p10707]
;; p10707
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10705 p10707
;; p10705
;; p10707
;; ------ [p10708]
;; p10708
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10709
;; p10709
;; ------ [p10710]
;; p10710
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10708 p10710
;; p10708
;; p10710
;; ------ [p10711]
;; p10711
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10712
;; p10712
;; ------ [p10713]
;; p10713
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10711 p10713
;; p10711
;; p10713
;; ------ [p10714]
;; p10714
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10715
;; p10715
;; ------ [p10716]
;; p10716
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10716
;; p10716
;; ------ [p10717]
;; p10717
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10718
;; p10718
;; ------ [p10719]
;; p10719
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10717 p10719
;; p10717
;; p10719
;; ------ [p10720]
;; p10720
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10721
;; p10721
;; ------ [p10722]
;; p10722
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10720 p10722
;; p10720
;; p10722
;; ------ [p10723]
;; p10723
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p10724]
;; p10724
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p10702 p10714 p10723 p10724 p10725 p10726
;; p10702
;; p10714
;; p10723
;; p10724
;; p10725
;; p10726
;; ------ [p10727]
;; p10727
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p10727
;; p10727
;; ------ [p10728]
;; p10728
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10729]
;; p10729
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10730
;; p10730
;; ------ [p10731]
;; p10731
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10733
;; p10733
;; ------ [p10734]
;; p10734
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10734
;; p10734
;; ------ [p10735]
;; p10735
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10736
;; p10736
;; ------ [p10737]
;; p10737
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10735 p10737
;; p10735
;; p10737
;; ------ [p10738]
;; p10738
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10739
;; p10739
;; ------ [p10740]
;; p10740
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10738 p10740
;; p10738
;; p10740
;; ------ [p10741]
;; p10741
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10742
;; p10742
;; ------ [p10743]
;; p10743
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10741 p10743
;; p10741
;; p10743
;; ------ [p10744]
;; p10744
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p10745]
;; p10745
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p10732 p10744 p10745 p10746 p10747
;; p10732
;; p10744
;; p10745
;; p10746
;; p10747
;; ------ [p10748]
;; p10748
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p10731 p10748
;; p10731
;; p10748
;; ------ [p10749]
;; p10749
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10750]
;; p10750
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10751
;; p10751
;; ------ [p10752]
;; p10752
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10754
;; p10754
;; ------ [p10755]
;; p10755
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10755
;; p10755
;; ------ [p10756]
;; p10756
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10757
;; p10757
;; ------ [p10758]
;; p10758
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10756 p10758
;; p10756
;; p10758
;; ------ [p10759]
;; p10759
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10760
;; p10760
;; ------ [p10761]
;; p10761
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10759 p10761
;; p10759
;; p10761
;; ------ [p10762]
;; p10762
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10763
;; p10763
;; ------ [p10764]
;; p10764
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10762 p10764
;; p10762
;; p10764
;; ------ [p10765]
;; p10765
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p10766]
;; p10766
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p10753 p10765 p10766 p10767 p10768
;; p10753
;; p10765
;; p10766
;; p10767
;; p10768
;; ------ [p10769]
;; p10769
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p10752 p10769
;; p10752
;; p10769
;; ------ [p10770]
;; p10770
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10771]
;; p10771
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10772
;; p10772
;; ------ [p10773]
;; p10773
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10775
;; p10775
;; ------ [p10776]
;; p10776
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10776
;; p10776
;; ------ [p10777]
;; p10777
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10778
;; p10778
;; ------ [p10779]
;; p10779
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10777 p10779
;; p10777
;; p10779
;; ------ [p10780]
;; p10780
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10781
;; p10781
;; ------ [p10782]
;; p10782
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10780 p10782
;; p10780
;; p10782
;; ------ [p10783]
;; p10783
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p10784 p10785
;; p10784
;; p10785
;; ------ [p10786]
;; p10786
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p10786
;; p10786
;; ------ [p10787]
;; p10787
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p10788 p10789
;; p10788
;; p10789
;; ------ [p10790]
;; p10790
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p10790
;; p10790
;; ------ [p10791]
;; p10791
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ------ [p10792]
;; p10792
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p10791 p10792
;; p10791
;; p10792
;; ------ [p10793]
;; p10793
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p10787 p10793
;; p10787
;; p10793
;; ------ [p10794]
;; p10794
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p10774 p10783 p10794 p10795
;; p10774
;; p10783
;; p10794
;; p10795
;; ------ [p10796]
;; p10796
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p10773 p10796
;; p10773
;; p10796
;; ------ [p10797]
;; p10797
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10798]
;; p10798
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10800
;; p10800
;; ------ [p10801]
;; p10801
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10801
;; p10801
;; ------ [p10802]
;; p10802
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10803
;; p10803
;; ------ [p10804]
;; p10804
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10802 p10804
;; p10802
;; p10804
;; ------ [p10805]
;; p10805
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10806
;; p10806
;; ------ [p10807]
;; p10807
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10805 p10807
;; p10805
;; p10807
;; ------ [p10808]
;; p10808
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10809
;; p10809
;; ------ [p10810]
;; p10810
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10808 p10810
;; p10808
;; p10810
;; ------ [p10811]
;; p10811
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10812
;; p10812
;; ------ [p10813]
;; p10813
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10813
;; p10813
;; ------ [p10814]
;; p10814
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10815
;; p10815
;; ------ [p10816]
;; p10816
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10814 p10816
;; p10814
;; p10816
;; ------ [p10817]
;; p10817
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10818
;; p10818
;; ------ [p10819]
;; p10819
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10817 p10819
;; p10817
;; p10819
;; ------ [p10820]
;; p10820
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p10821]
;; p10821
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p10799 p10811 p10820 p10821 p10822 p10823
;; p10799
;; p10811
;; p10820
;; p10821
;; p10822
;; p10823
;; ------ [p10824]
;; p10824
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p10824
;; p10824
;; ------ [p10825]
;; p10825
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ------ [p10826]
;; p10826
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p10825 p10826
;; p10825
;; p10826
;; ------ [p10827]
;; p10827
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10797 p10827
;; p10797
;; p10827
;; ------ [p10828]
;; p10828
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10770 p10828
;; p10770
;; p10828
;; ------ [p10829]
;; p10829
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10749 p10829
;; p10749
;; p10829
;; ------ [p10830]
;; p10830
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10728 p10830
;; p10728
;; p10830
;; ------ [p10831]
;; p10831
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10700 p10831
;; p10700
;; p10831
;; ------ [p10832]
;; p10832
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10673 p10832
;; p10673
;; p10832
;; ------ [p10833]
;; p10833
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10652 p10833
;; p10652
;; p10833
;; ------ [p10834]
;; p10834
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10625 p10834
;; p10625
;; p10834
;; ------ [p10835]
;; p10835
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10604 p10835
;; p10604
;; p10835
;; ------ [p10836]
;; p10836
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10583 p10836
;; p10583
;; p10836
;; ------ [p10837]
;; p10837
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10555 p10837
;; p10555
;; p10837
;; ------ [p10838]
;; p10838
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10528 p10838
;; p10528
;; p10838
;; ------ [p10839]
;; p10839
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10507 p10839
;; p10507
;; p10839
;; ------ [p10840]
;; p10840
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10486 p10840
;; p10486
;; p10840
;; ------ [p10841]
;; p10841
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10458 p10841
;; p10458
;; p10841
;; ------ [p10842]
;; p10842
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10431 p10842
;; p10431
;; p10842
;; ------ [p10843]
;; p10843
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10410 p10843
;; p10410
;; p10843
;; ------ [p10844]
;; p10844
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10389 p10844
;; p10389
;; p10844
;; ------ [p10845]
;; p10845
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10362 p10845
;; p10362
;; p10845
;; ------ [p10846]
;; p10846
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10847]
;; p10847
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10848
;; p10848
;; ------ [p10849]
;; p10849
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_Br p10849 p10850
;; p10849
;; p10850
;; ------ [p10851]
;; p10851
;; 
;; Proof. T_Br QED
;;; Verifying NT_Do_Terminator p10851
;; p10851
;; ------ [p10852]
;; p10852
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p10341 p10846 p10852
;; p10341
;; p10846
;; p10852
;; ------ [p10853]
;; p10853
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10854
;; p10854
;; ------ [p10855]
;; p10855
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ------ [p10856]
;; p10856
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10857]
;; p10857
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MO_Nothing_Operand 
;; ------ [p10858]
;; p10858
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; True == True : Bool
;;; Verifying T_Ret p10858 p10859
;; p10858
;; p10859
;; ------ [p10860]
;; p10860
;; 
;; Proof. T_Ret QED
;;; Verifying NT_Do_Terminator p10860
;; p10860
;; ------ [p10861]
;; p10861
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p10855 p10856 p10861
;; p10855
;; p10856
;; p10861
;; ------ [p10862]
;; p10862
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10863
;; p10863
;; ------ [p10864]
;; p10864
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ------ [p10865]
;; p10865
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10866]
;; p10866
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10867
;; p10867
;; ------ [p10868]
;; p10868
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_Br p10868 p10869
;; p10868
;; p10869
;; ------ [p10870]
;; p10870
;; 
;; Proof. T_Br QED
;;; Verifying NT_Do_Terminator p10870
;; p10870
;; ------ [p10871]
;; p10871
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p10864 p10865 p10871
;; p10864
;; p10865
;; p10871
;; ------ [p10872]
;; p10872
;; 
;; Proof. BB_BasicBlock QED
;;; Verifying MC_Nothing_Constant 
;; ------ [p10874]
;; p10874
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; True == True : Bool
;;; Verifying G_Function p10082 p10083 p10084 p10085 p10086 p10087 p10088 p10113 p10118 p10119 p10120 p10121 p10122 p10123 p10873 p10874 p10875
;; p10082
;; p10083
;; p10084
;; p10085
;; p10086
;; p10087
;; p10088
;; p10113
;; p10118
;; p10119
;; p10120
;; p10121
;; p10122
;; p10123
;; p10873
;; p10874
;; p10875
;; ------ [p10876]
;; p10876
;; 
;; Proof. functions fio_ls_embd_push and fio_ls_embd_push equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10877
;; p10877
;; ------ [p10878]
;; p10878
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p10080 p10878
;; p10080
;; p10878
;; ------ [p10879]
;; p10879
;; 
;; Proof. C_GlobalReference QED
;;; Verifying O_ConstantOperand p10879
;; p10879
;; ------ [p10880]
;; p10880
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying EIAO_Right_InlineAssembly_Operand p10880
;; p10880
;; ------ [p10881]
;; p10881
;; 
;; Proof. Right (InlineAssembly Operand) equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10883
;; p10883
;; ------ [p10884]
;; p10884
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10884
;; p10884
;; ------ [p10885]
;; p10885
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10886
;; p10886
;; ------ [p10887]
;; p10887
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10885 p10887
;; p10885
;; p10887
;; ------ [p10888]
;; p10888
;; 
;; Proof. T_PointerType QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10889
;; p10889
;; ------ [p10890]
;; p10890
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p10888 p10890
;; p10888
;; p10890
;; ------ [p10891]
;; p10891
;; 
;; Proof. C_GlobalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p10892 p10893
;; p10892
;; p10893
;; ------ [p10894]
;; p10894
;; 
;; Proof. C_Int QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p10895 p10896
;; p10895
;; p10896
;; ------ [p10897]
;; p10897
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ------ [p10898]
;; p10898
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p10897 p10898
;; p10897
;; p10898
;; ------ [p10899]
;; p10899
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p10894 p10899
;; p10894
;; p10899
;; ------ [p10900]
;; p10900
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_GetElementPtr p10882 p10891 p10900
;; p10882
;; p10891
;; p10900
;; ------ [p10901]
;; p10901
;; 
;; Proof. C_GetElementPtr QED
;;; Verifying O_ConstantOperand p10901
;; p10901
;; ------ [p10902]
;; p10902
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_ParameterAttribute 
;; ------ [p10903]
;; p10903
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p10902 p10903
;; p10902
;; p10903
;; ------ [p10904]
;; p10904
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10905
;; p10905
;; ------ [p10906]
;; p10906
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10906
;; p10906
;; ------ [p10907]
;; p10907
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10908
;; p10908
;; ------ [p10909]
;; p10909
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10907 p10909
;; p10907
;; p10909
;; ------ [p10910]
;; p10910
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10911
;; p10911
;; ------ [p10912]
;; p10912
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10910 p10912
;; p10910
;; p10912
;; ------ [p10913]
;; p10913
;; 
;; Proof. O_LocalReference QED
;;; Verifying Nil_ParameterAttribute 
;; ------ [p10914]
;; p10914
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p10913 p10914
;; p10913
;; p10914
;; ------ [p10915]
;; p10915
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Tup2_Operand_List_ParameterAttribute 
;; ------ [p10916]
;; p10916
;; 
;; Proof. [] ((Operand, [ParameterAttribute])) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p10915 p10916
;; p10915
;; p10916
;; ------ [p10917]
;; p10917
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p10904 p10917
;; p10904
;; p10917
;; ------ [p10918]
;; p10918
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ------ [p10919]
;; p10919
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; True == True : Bool
;;; Verifying I_Call p10057 p10058 p10059 p10881 p10918 p10919 p10920
;; p10057
;; p10058
;; p10059
;; p10881
;; p10918
;; p10919
;; p10920
;; ------ [p10921]
;; p10921
;; 
;; Proof. I_Call QED
;;; Verifying NI_Do_Instruction p10921
;; p10921
;; ------ [p10922]
;; p10922
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10923]
;; p10923
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10924
;; p10924
;; ------ [p10925]
;; p10925
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10927
;; p10927
;; ------ [p10928]
;; p10928
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10928
;; p10928
;; ------ [p10929]
;; p10929
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10930
;; p10930
;; ------ [p10931]
;; p10931
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10929 p10931
;; p10929
;; p10931
;; ------ [p10932]
;; p10932
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10933
;; p10933
;; ------ [p10934]
;; p10934
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10932 p10934
;; p10932
;; p10934
;; ------ [p10935]
;; p10935
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10936
;; p10936
;; ------ [p10937]
;; p10937
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10935 p10937
;; p10935
;; p10937
;; ------ [p10938]
;; p10938
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p10939]
;; p10939
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p10926 p10938 p10939 p10940 p10941
;; p10926
;; p10938
;; p10939
;; p10940
;; p10941
;; ------ [p10942]
;; p10942
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p10925 p10942
;; p10925
;; p10942
;; ------ [p10943]
;; p10943
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10944]
;; p10944
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10945
;; p10945
;; ------ [p10946]
;; p10946
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10948
;; p10948
;; ------ [p10949]
;; p10949
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10949
;; p10949
;; ------ [p10950]
;; p10950
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10951
;; p10951
;; ------ [p10952]
;; p10952
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10950 p10952
;; p10950
;; p10952
;; ------ [p10953]
;; p10953
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10954
;; p10954
;; ------ [p10955]
;; p10955
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10953 p10955
;; p10953
;; p10955
;; ------ [p10956]
;; p10956
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p10957 p10958
;; p10957
;; p10958
;; ------ [p10959]
;; p10959
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p10959
;; p10959
;; ------ [p10960]
;; p10960
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p10961 p10962
;; p10961
;; p10962
;; ------ [p10963]
;; p10963
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p10963
;; p10963
;; ------ [p10964]
;; p10964
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ------ [p10965]
;; p10965
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p10964 p10965
;; p10964
;; p10965
;; ------ [p10966]
;; p10966
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p10960 p10966
;; p10960
;; p10966
;; ------ [p10967]
;; p10967
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p10947 p10956 p10967 p10968
;; p10947
;; p10956
;; p10967
;; p10968
;; ------ [p10969]
;; p10969
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p10946 p10969
;; p10946
;; p10969
;; ------ [p10970]
;; p10970
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10971]
;; p10971
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10972
;; p10972
;; ------ [p10973]
;; p10973
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10975
;; p10975
;; ------ [p10976]
;; p10976
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10976
;; p10976
;; ------ [p10977]
;; p10977
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10978
;; p10978
;; ------ [p10979]
;; p10979
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10977 p10979
;; p10977
;; p10979
;; ------ [p10980]
;; p10980
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10981
;; p10981
;; ------ [p10982]
;; p10982
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10980 p10982
;; p10980
;; p10982
;; ------ [p10983]
;; p10983
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p10984
;; p10984
;; ------ [p10985]
;; p10985
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p10983 p10985
;; p10983
;; p10985
;; ------ [p10986]
;; p10986
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p10987]
;; p10987
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p10974 p10986 p10987 p10988 p10989
;; p10974
;; p10986
;; p10987
;; p10988
;; p10989
;; ------ [p10990]
;; p10990
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p10973 p10990
;; p10973
;; p10990
;; ------ [p10991]
;; p10991
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p10992]
;; p10992
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p10994
;; p10994
;; ------ [p10995]
;; p10995
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p10995
;; p10995
;; ------ [p10996]
;; p10996
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p10997
;; p10997
;; ------ [p10998]
;; p10998
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10996 p10998
;; p10996
;; p10998
;; ------ [p10999]
;; p10999
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11000
;; p11000
;; ------ [p11001]
;; p11001
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p10999 p11001
;; p10999
;; p11001
;; ------ [p11002]
;; p11002
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11003
;; p11003
;; ------ [p11004]
;; p11004
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11002 p11004
;; p11002
;; p11004
;; ------ [p11005]
;; p11005
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p11006
;; p11006
;; ------ [p11007]
;; p11007
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p11007
;; p11007
;; ------ [p11008]
;; p11008
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11009
;; p11009
;; ------ [p11010]
;; p11010
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11008 p11010
;; p11008
;; p11010
;; ------ [p11011]
;; p11011
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11012
;; p11012
;; ------ [p11013]
;; p11013
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11011 p11013
;; p11011
;; p11013
;; ------ [p11014]
;; p11014
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p11015]
;; p11015
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p10993 p11005 p11014 p11015 p11016 p11017
;; p10993
;; p11005
;; p11014
;; p11015
;; p11016
;; p11017
;; ------ [p11018]
;; p11018
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p11018
;; p11018
;; ------ [p11019]
;; p11019
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11020]
;; p11020
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11021
;; p11021
;; ------ [p11022]
;; p11022
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p11024
;; p11024
;; ------ [p11025]
;; p11025
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p11025
;; p11025
;; ------ [p11026]
;; p11026
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11027
;; p11027
;; ------ [p11028]
;; p11028
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11026 p11028
;; p11026
;; p11028
;; ------ [p11029]
;; p11029
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11030
;; p11030
;; ------ [p11031]
;; p11031
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11029 p11031
;; p11029
;; p11031
;; ------ [p11032]
;; p11032
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11033
;; p11033
;; ------ [p11034]
;; p11034
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11032 p11034
;; p11032
;; p11034
;; ------ [p11035]
;; p11035
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p11036]
;; p11036
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p11023 p11035 p11036 p11037 p11038
;; p11023
;; p11035
;; p11036
;; p11037
;; p11038
;; ------ [p11039]
;; p11039
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p11022 p11039
;; p11022
;; p11039
;; ------ [p11040]
;; p11040
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11041]
;; p11041
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11042
;; p11042
;; ------ [p11043]
;; p11043
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p11045
;; p11045
;; ------ [p11046]
;; p11046
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p11046
;; p11046
;; ------ [p11047]
;; p11047
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11048
;; p11048
;; ------ [p11049]
;; p11049
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11047 p11049
;; p11047
;; p11049
;; ------ [p11050]
;; p11050
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11051
;; p11051
;; ------ [p11052]
;; p11052
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11050 p11052
;; p11050
;; p11052
;; ------ [p11053]
;; p11053
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p11054 p11055
;; p11054
;; p11055
;; ------ [p11056]
;; p11056
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p11056
;; p11056
;; ------ [p11057]
;; p11057
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 4 == 4 : Integer
;;; Verifying C_Int p11058 p11059
;; p11058
;; p11059
;; ------ [p11060]
;; p11060
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p11060
;; p11060
;; ------ [p11061]
;; p11061
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ------ [p11062]
;; p11062
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p11061 p11062
;; p11061
;; p11062
;; ------ [p11063]
;; p11063
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p11057 p11063
;; p11057
;; p11063
;; ------ [p11064]
;; p11064
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p11044 p11053 p11064 p11065
;; p11044
;; p11053
;; p11064
;; p11065
;; ------ [p11066]
;; p11066
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p11043 p11066
;; p11043
;; p11066
;; ------ [p11067]
;; p11067
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11068]
;; p11068
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p11070
;; p11070
;; ------ [p11071]
;; p11071
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11072
;; p11072
;; ------ [p11073]
;; p11073
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11071 p11073
;; p11071
;; p11073
;; ------ [p11074]
;; p11074
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11075
;; p11075
;; ------ [p11076]
;; p11076
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11074 p11076
;; p11074
;; p11076
;; ------ [p11077]
;; p11077
;; 
;; Proof. O_LocalReference QED
;;; 16 == 16 : Word32
;;; 1 == 1 : Integer
;;; Verifying C_Int p11078 p11079
;; p11078
;; p11079
;; ------ [p11080]
;; p11080
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p11080
;; p11080
;; ------ [p11081]
;; p11081
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p11082]
;; p11082
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 2 == 2 : Word32
;;; True == True : Bool
;;; Verifying I_Store p11069 p11077 p11081 p11082 p11083 p11084
;; p11069
;; p11077
;; p11081
;; p11082
;; p11083
;; p11084
;; ------ [p11085]
;; p11085
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p11085
;; p11085
;; ------ [p11086]
;; p11086
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11087]
;; p11087
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11088
;; p11088
;; ------ [p11089]
;; p11089
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p11091
;; p11091
;; ------ [p11092]
;; p11092
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11093
;; p11093
;; ------ [p11094]
;; p11094
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11092 p11094
;; p11092
;; p11094
;; ------ [p11095]
;; p11095
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11096
;; p11096
;; ------ [p11097]
;; p11097
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11095 p11097
;; p11095
;; p11097
;; ------ [p11098]
;; p11098
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p11099]
;; p11099
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 2 == 2 : Word32
;;; True == True : Bool
;;; Verifying I_Load p11090 p11098 p11099 p11100 p11101
;; p11090
;; p11098
;; p11099
;; p11100
;; p11101
;; ------ [p11102]
;; p11102
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p11089 p11102
;; p11089
;; p11102
;; ------ [p11103]
;; p11103
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11104]
;; p11104
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11105
;; p11105
;; ------ [p11106]
;; p11106
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; Verifying RMWO_Sub 
;; ------ [p11108]
;; p11108
;; 
;; Proof. RMWO_Sub QED
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p11109
;; p11109
;; ------ [p11110]
;; p11110
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11111
;; p11111
;; ------ [p11112]
;; p11112
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11110 p11112
;; p11110
;; p11112
;; ------ [p11113]
;; p11113
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11114
;; p11114
;; ------ [p11115]
;; p11115
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11113 p11115
;; p11113
;; p11115
;; ------ [p11116]
;; p11116
;; 
;; Proof. O_LocalReference QED
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p11117
;; p11117
;; ------ [p11118]
;; p11118
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11119
;; p11119
;; ------ [p11120]
;; p11120
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11118 p11120
;; p11118
;; p11120
;; ------ [p11121]
;; p11121
;; 
;; Proof. O_LocalReference QED
;;; Verifying SS_System 
;; ------ [p11122]
;; p11122
;; 
;; Proof. SS_System QED
;;; Verifying MO_SequentiallyConsistent 
;; ------ [p11123]
;; p11123
;; 
;; Proof. MO_SequentiallyConsistent QED
;;; Verifying Tup2_SynchronizationScope_MemoryOrdering p11122 p11123
;; p11122
;; p11123
;; ------ [p11124]
;; p11124
;; 
;; Proof. Tuple (SynchronizationScope, MemoryOrdering) equivalent QED
;;; True == True : Bool
;;; Verifying I_AtomicRMW p11107 p11108 p11116 p11121 p11124 p11125
;; p11107
;; p11108
;; p11116
;; p11121
;; p11124
;; p11125
;; ------ [p11126]
;; p11126
;; 
;; Proof. I_AtomicRMW QED
;;; Verifying NI_infix_Instruction p11106 p11126
;; p11106
;; p11126
;; ------ [p11127]
;; p11127
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11128]
;; p11128
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11129
;; p11129
;; ------ [p11130]
;; p11130
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; False == False : Bool
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p11133
;; p11133
;; ------ [p11134]
;; p11134
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11135
;; p11135
;; ------ [p11136]
;; p11136
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11134 p11136
;; p11134
;; p11136
;; ------ [p11137]
;; p11137
;; 
;; Proof. O_LocalReference QED
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p11138
;; p11138
;; ------ [p11139]
;; p11139
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11140
;; p11140
;; ------ [p11141]
;; p11141
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11139 p11141
;; p11139
;; p11141
;; ------ [p11142]
;; p11142
;; 
;; Proof. O_LocalReference QED
;;; True == True : Bool
;;; Verifying I_Sub p11131 p11132 p11137 p11142 p11143
;; p11131
;; p11132
;; p11137
;; p11142
;; p11143
;; ------ [p11144]
;; p11144
;; 
;; Proof. I_Sub QED
;;; Verifying NI_infix_Instruction p11130 p11144
;; p11130
;; p11144
;; ------ [p11145]
;; p11145
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11146]
;; p11146
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p11148
;; p11148
;; ------ [p11149]
;; p11149
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11150
;; p11150
;; ------ [p11151]
;; p11151
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11149 p11151
;; p11149
;; p11151
;; ------ [p11152]
;; p11152
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11153
;; p11153
;; ------ [p11154]
;; p11154
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11152 p11154
;; p11152
;; p11154
;; ------ [p11155]
;; p11155
;; 
;; Proof. O_LocalReference QED
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p11156
;; p11156
;; ------ [p11157]
;; p11157
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11158
;; p11158
;; ------ [p11159]
;; p11159
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11157 p11159
;; p11157
;; p11159
;; ------ [p11160]
;; p11160
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p11161]
;; p11161
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 2 == 2 : Word32
;;; True == True : Bool
;;; Verifying I_Store p11147 p11155 p11160 p11161 p11162 p11163
;; p11147
;; p11155
;; p11160
;; p11161
;; p11162
;; p11163
;; ------ [p11164]
;; p11164
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p11164
;; p11164
;; ------ [p11165]
;; p11165
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11166]
;; p11166
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11167
;; p11167
;; ------ [p11168]
;; p11168
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p11170
;; p11170
;; ------ [p11171]
;; p11171
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11172
;; p11172
;; ------ [p11173]
;; p11173
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11171 p11173
;; p11171
;; p11173
;; ------ [p11174]
;; p11174
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11175
;; p11175
;; ------ [p11176]
;; p11176
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11174 p11176
;; p11174
;; p11176
;; ------ [p11177]
;; p11177
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p11178]
;; p11178
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 2 == 2 : Word32
;;; True == True : Bool
;;; Verifying I_Load p11169 p11177 p11178 p11179 p11180
;; p11169
;; p11177
;; p11178
;; p11179
;; p11180
;; ------ [p11181]
;; p11181
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p11168 p11181
;; p11168
;; p11181
;; ------ [p11182]
;; p11182
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11183]
;; p11183
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11184
;; p11184
;; ------ [p11185]
;; p11185
;; 
;; Proof. UnName equivalent QED
;;; Verifying IP_NE 
;; ------ [p11186]
;; p11186
;; 
;; Proof. IP_NE QED
;;; 16 == 16 : Word32
;;; Verifying T_IntegerType p11187
;; p11187
;; ------ [p11188]
;; p11188
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11189
;; p11189
;; ------ [p11190]
;; p11190
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11188 p11190
;; p11188
;; p11190
;; ------ [p11191]
;; p11191
;; 
;; Proof. O_LocalReference QED
;;; 16 == 16 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p11192 p11193
;; p11192
;; p11193
;; ------ [p11194]
;; p11194
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p11194
;; p11194
;; ------ [p11195]
;; p11195
;; 
;; Proof. O_ConstantOperand QED
;;; True == True : Bool
;;; Verifying I_ICmp p11186 p11191 p11195 p11196
;; p11186
;; p11191
;; p11195
;; p11196
;; ------ [p11197]
;; p11197
;; 
;; Proof. I_ICmp QED
;;; Verifying NI_infix_Instruction p11185 p11197
;; p11185
;; p11197
;; ------ [p11198]
;; p11198
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ------ [p11199]
;; p11199
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p11198 p11199
;; p11198
;; p11199
;; ------ [p11200]
;; p11200
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11182 p11200
;; p11182
;; p11200
;; ------ [p11201]
;; p11201
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11165 p11201
;; p11165
;; p11201
;; ------ [p11202]
;; p11202
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11145 p11202
;; p11145
;; p11202
;; ------ [p11203]
;; p11203
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11127 p11203
;; p11127
;; p11203
;; ------ [p11204]
;; p11204
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11103 p11204
;; p11103
;; p11204
;; ------ [p11205]
;; p11205
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11086 p11205
;; p11086
;; p11205
;; ------ [p11206]
;; p11206
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11067 p11206
;; p11067
;; p11206
;; ------ [p11207]
;; p11207
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11040 p11207
;; p11040
;; p11207
;; ------ [p11208]
;; p11208
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11019 p11208
;; p11019
;; p11208
;; ------ [p11209]
;; p11209
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10991 p11209
;; p10991
;; p11209
;; ------ [p11210]
;; p11210
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10970 p11210
;; p10970
;; p11210
;; ------ [p11211]
;; p11211
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10943 p11211
;; p10943
;; p11211
;; ------ [p11212]
;; p11212
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10922 p11212
;; p10922
;; p11212
;; ------ [p11213]
;; p11213
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10055 p11213
;; p10055
;; p11213
;; ------ [p11214]
;; p11214
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10028 p11214
;; p10028
;; p11214
;; ------ [p11215]
;; p11215
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p10007 p11215
;; p10007
;; p11215
;; ------ [p11216]
;; p11216
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p9986 p11216
;; p9986
;; p11216
;; ------ [p11217]
;; p11217
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p8957 p11217
;; p8957
;; p11217
;; ------ [p11218]
;; p11218
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p8824 p11218
;; p8824
;; p11218
;; ------ [p11219]
;; p11219
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p8804 p11219
;; p8804
;; p11219
;; ------ [p11220]
;; p11220
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p8782 p11220
;; p8782
;; p11220
;; ------ [p11221]
;; p11221
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11222]
;; p11222
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; Verifying T_IntegerType p11223
;; p11223
;; ------ [p11224]
;; p11224
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11225
;; p11225
;; ------ [p11226]
;; p11226
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11224 p11226
;; p11224
;; p11226
;; ------ [p11227]
;; p11227
;; 
;; Proof. O_LocalReference QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11228
;; p11228
;; ------ [p11229]
;; p11229
;; 
;; Proof. UnName equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11230
;; p11230
;; ------ [p11231]
;; p11231
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_CondBr p11227 p11229 p11231 p11232
;; p11227
;; p11229
;; p11231
;; p11232
;; ------ [p11233]
;; p11233
;; 
;; Proof. T_CondBr QED
;;; Verifying NT_Do_Terminator p11233
;; p11233
;; ------ [p11234]
;; p11234
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p8761 p11221 p11234
;; p8761
;; p11221
;; p11234
;; ------ [p11235]
;; p11235
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11236
;; p11236
;; ------ [p11237]
;; p11237
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11238]
;; p11238
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11239
;; p11239
;; ------ [p11240]
;; p11240
;; 
;; Proof. UnName equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ------ [p11241]
;; p11241
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ------ [p11242]
;; p11242
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ------ [p11243]
;; p11243
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p11244
;; p11244
;; ------ [p11245]
;; p11245
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p11246
;; p11246
;; ------ [p11247]
;; p11247
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11248
;; p11248
;; ------ [p11249]
;; p11249
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11247 p11249
;; p11247
;; p11249
;; ------ [p11250]
;; p11250
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ------ [p11251]
;; p11251
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p11250 p11251
;; p11250
;; p11251
;; ------ [p11252]
;; p11252
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p11245 p11252 p11253
;; p11245
;; p11252
;; p11253
;; ------ [p11254]
;; p11254
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11255
;; p11255
;; ------ [p11256]
;; p11256
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11254 p11256
;; p11254
;; p11256
;; ------ [p11257]
;; p11257
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11258]
;; p11258
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Internal 
;; ------ [p11259]
;; p11259
;; 
;; Proof. L_Internal QED
;;; Verifying V_Default 
;; ------ [p11260]
;; p11260
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ------ [p11261]
;; p11261
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying CC_C 
;; ------ [p11262]
;; p11262
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ------ [p11263]
;; p11263
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p11264
;; p11264
;; ------ [p11265]
;; p11265
;; 
;; Proof. T_IntegerType QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p11267
;; p11267
;; ------ [p11268]
;; p11268
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11269
;; p11269
;; ------ [p11270]
;; p11270
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11268 p11270
;; p11268
;; p11270
;; ------ [p11271]
;; p11271
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11272
;; p11272
;; ------ [p11273]
;; p11273
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ------ [p11274]
;; p11274
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p11271 p11273 p11274
;; p11271
;; p11273
;; p11274
;; ------ [p11275]
;; p11275
;; 
;; Proof. P_Parameter QED
;;; Verifying Nil_Parameter 
;; ------ [p11276]
;; p11276
;; 
;; Proof. [] (Parameter) equivalent QED
;;; Verifying Cons_Parameter p11275 p11276
;; p11275
;; p11276
;; ------ [p11277]
;; p11277
;; 
;; Proof. Cons Parameter equivalent QED
;;; False == False : Bool
;;; Verifying Tup2_List_Parameter_Bool p11277 p11278
;; p11277
;; p11278
;; ------ [p11279]
;; p11279
;; 
;; Proof. Tuple ([Parameter], Bool) equivalent QED
;;; 0 == 0 : Word
;;; Verifying GID_GroupID p11280
;; p11280
;; ------ [p11281]
;; p11281
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p11281
;; p11281
;; ------ [p11282]
;; p11282
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ------ [p11283]
;; p11283
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p11282 p11283
;; p11282
;; p11283
;; ------ [p11284]
;; p11284
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11285]
;; p11285
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11286]
;; p11286
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 0 == 0 : Word32
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11288]
;; p11288
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ------ [p11289]
;; p11289
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; basic block matching 1-1
;;; 1 == 1 : Word
;;; Verifying N_UnName p11290
;; p11290
;; ------ [p11291]
;; p11291
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11292]
;; p11292
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11293
;; p11293
;; ------ [p11294]
;; p11294
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p11295
;; p11295
;; ------ [p11296]
;; p11296
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11297
;; p11297
;; ------ [p11298]
;; p11298
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11296 p11298
;; p11296
;; p11298
;; ------ [p11299]
;; p11299
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ------ [p11300]
;; p11300
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p11299 p11300 p11301 p11302
;; p11299
;; p11300
;; p11301
;; p11302
;; ------ [p11303]
;; p11303
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p11294 p11303
;; p11294
;; p11303
;; ------ [p11304]
;; p11304
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11305]
;; p11305
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11306
;; p11306
;; ------ [p11307]
;; p11307
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p11308
;; p11308
;; ------ [p11309]
;; p11309
;; 
;; Proof. T_IntegerType QED
;;; Verifying MO_Nothing_Operand 
;; ------ [p11310]
;; p11310
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p11309 p11310 p11311 p11312
;; p11309
;; p11310
;; p11311
;; p11312
;; ------ [p11313]
;; p11313
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p11307 p11313
;; p11307
;; p11313
;; ------ [p11314]
;; p11314
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11315]
;; p11315
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11316
;; p11316
;; ------ [p11317]
;; p11317
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p11318
;; p11318
;; ------ [p11319]
;; p11319
;; 
;; Proof. T_IntegerType QED
;;; Verifying MO_Nothing_Operand 
;; ------ [p11320]
;; p11320
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p11319 p11320 p11321 p11322
;; p11319
;; p11320
;; p11321
;; p11322
;; ------ [p11323]
;; p11323
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p11317 p11323
;; p11317
;; p11323
;; ------ [p11324]
;; p11324
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11325]
;; p11325
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11326
;; p11326
;; ------ [p11327]
;; p11327
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p11328
;; p11328
;; ------ [p11329]
;; p11329
;; 
;; Proof. T_IntegerType QED
;;; Verifying MO_Nothing_Operand 
;; ------ [p11330]
;; p11330
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p11329 p11330 p11331 p11332
;; p11329
;; p11330
;; p11331
;; p11332
;; ------ [p11333]
;; p11333
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p11327 p11333
;; p11327
;; p11333
;; ------ [p11334]
;; p11334
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11335]
;; p11335
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p11337
;; p11337
;; ------ [p11338]
;; p11338
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11339
;; p11339
;; ------ [p11340]
;; p11340
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11338 p11340
;; p11338
;; p11340
;; ------ [p11341]
;; p11341
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11342
;; p11342
;; ------ [p11343]
;; p11343
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11341 p11343
;; p11341
;; p11343
;; ------ [p11344]
;; p11344
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11345
;; p11345
;; ------ [p11346]
;; p11346
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11344 p11346
;; p11344
;; p11346
;; ------ [p11347]
;; p11347
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p11348
;; p11348
;; ------ [p11349]
;; p11349
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11350
;; p11350
;; ------ [p11351]
;; p11351
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11349 p11351
;; p11349
;; p11351
;; ------ [p11352]
;; p11352
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11353
;; p11353
;; ------ [p11354]
;; p11354
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11352 p11354
;; p11352
;; p11354
;; ------ [p11355]
;; p11355
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p11356]
;; p11356
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p11336 p11347 p11355 p11356 p11357 p11358
;; p11336
;; p11347
;; p11355
;; p11356
;; p11357
;; p11358
;; ------ [p11359]
;; p11359
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p11359
;; p11359
;; ------ [p11360]
;; p11360
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11361]
;; p11361
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ------ [p11362]
;; p11362
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ------ [p11363]
;; p11363
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ------ [p11364]
;; p11364
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying T_VoidType 
;; ------ [p11365]
;; p11365
;; 
;; Proof. T_VoidType QED
;;; Verifying Nil_Type 
;; ------ [p11366]
;; p11366
;; 
;; Proof. [] (Type) equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p11365 p11366 p11367
;; p11365
;; p11366
;; p11367
;; ------ [p11368]
;; p11368
;; 
;; Proof. T_FunctionType QED
;;; "" == "" : ByteString
;;; "~{memory},~{dirflag},~{fpsr},~{flags}" == "~{memory},~{dirflag},~{fpsr},~{flags}" : ShortByteStr
;;; True == True : Bool
;;; False == False : Bool
;;; Verifying D_ATTDialect 
;; ------ [p11373]
;; p11373
;; 
;; Proof. D_ATTDialect QED
;;; Verifying IA_InlineAssembly p11368 p11369 p11370 p11371 p11372 p11373
;; p11368
;; p11369
;; p11370
;; p11371
;; p11372
;; p11373
;; ------ [p11374]
;; p11374
;; 
;; Proof. IA_InlineAssembly QED
;;; Verifying EIAO_Left_InlineAssembly_Operand p11374
;; p11374
;; ------ [p11375]
;; p11375
;; 
;; Proof. Left (InlineAssembly Operand) equivalent QED
;;; Verifying Nil_Tup2_Operand_List_ParameterAttribute 
;; ------ [p11376]
;; p11376
;; 
;; Proof. [] ((Operand, [ParameterAttribute])) equivalent QED
;;; 3 == 3 : Word
;;; Verifying GID_GroupID p11377
;; p11377
;; ------ [p11378]
;; p11378
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p11378
;; p11378
;; ------ [p11379]
;; p11379
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ------ [p11380]
;; p11380
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p11379 p11380
;; p11379
;; p11380
;; ------ [p11381]
;; p11381
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; True == True : Bool
;;; Verifying I_Call p11362 p11363 p11364 p11375 p11376 p11381 p11382
;; p11362
;; p11363
;; p11364
;; p11375
;; p11376
;; p11381
;; p11382
;; ------ [p11383]
;; p11383
;; 
;; Proof. I_Call QED
;;; Verifying NI_Do_Instruction p11383
;; p11383
;; ------ [p11384]
;; p11384
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11385]
;; p11385
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11386
;; p11386
;; ------ [p11387]
;; p11387
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p11389
;; p11389
;; ------ [p11390]
;; p11390
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11391
;; p11391
;; ------ [p11392]
;; p11392
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11390 p11392
;; p11390
;; p11392
;; ------ [p11393]
;; p11393
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11394
;; p11394
;; ------ [p11395]
;; p11395
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11393 p11395
;; p11393
;; p11395
;; ------ [p11396]
;; p11396
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11397
;; p11397
;; ------ [p11398]
;; p11398
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11396 p11398
;; p11396
;; p11398
;; ------ [p11399]
;; p11399
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p11400]
;; p11400
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p11388 p11399 p11400 p11401 p11402
;; p11388
;; p11399
;; p11400
;; p11401
;; p11402
;; ------ [p11403]
;; p11403
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p11387 p11403
;; p11387
;; p11403
;; ------ [p11404]
;; p11404
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11405]
;; p11405
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p11407
;; p11407
;; ------ [p11408]
;; p11408
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11409
;; p11409
;; ------ [p11410]
;; p11410
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11408 p11410
;; p11408
;; p11410
;; ------ [p11411]
;; p11411
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11412
;; p11412
;; ------ [p11413]
;; p11413
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11411 p11413
;; p11411
;; p11413
;; ------ [p11414]
;; p11414
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p11415 p11416
;; p11415
;; p11416
;; ------ [p11417]
;; p11417
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p11417
;; p11417
;; ------ [p11418]
;; p11418
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p11419]
;; p11419
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Store p11406 p11414 p11418 p11419 p11420 p11421
;; p11406
;; p11414
;; p11418
;; p11419
;; p11420
;; p11421
;; ------ [p11422]
;; p11422
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p11422
;; p11422
;; ------ [p11423]
;; p11423
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11424]
;; p11424
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11425
;; p11425
;; ------ [p11426]
;; p11426
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p11428
;; p11428
;; ------ [p11429]
;; p11429
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11430
;; p11430
;; ------ [p11431]
;; p11431
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11429 p11431
;; p11429
;; p11431
;; ------ [p11432]
;; p11432
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11433
;; p11433
;; ------ [p11434]
;; p11434
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11432 p11434
;; p11432
;; p11434
;; ------ [p11435]
;; p11435
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p11436]
;; p11436
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Load p11427 p11435 p11436 p11437 p11438
;; p11427
;; p11435
;; p11436
;; p11437
;; p11438
;; ------ [p11439]
;; p11439
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p11426 p11439
;; p11426
;; p11439
;; ------ [p11440]
;; p11440
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11441]
;; p11441
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11442
;; p11442
;; ------ [p11443]
;; p11443
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying RMWO_Xchg 
;; ------ [p11445]
;; p11445
;; 
;; Proof. RMWO_Xchg QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p11446
;; p11446
;; ------ [p11447]
;; p11447
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11448
;; p11448
;; ------ [p11449]
;; p11449
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11447 p11449
;; p11447
;; p11449
;; ------ [p11450]
;; p11450
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11451
;; p11451
;; ------ [p11452]
;; p11452
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11450 p11452
;; p11450
;; p11452
;; ------ [p11453]
;; p11453
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p11454
;; p11454
;; ------ [p11455]
;; p11455
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11456
;; p11456
;; ------ [p11457]
;; p11457
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11455 p11457
;; p11455
;; p11457
;; ------ [p11458]
;; p11458
;; 
;; Proof. O_LocalReference QED
;;; Verifying SS_System 
;; ------ [p11459]
;; p11459
;; 
;; Proof. SS_System QED
;;; Verifying MO_SequentiallyConsistent 
;; ------ [p11460]
;; p11460
;; 
;; Proof. MO_SequentiallyConsistent QED
;;; Verifying Tup2_SynchronizationScope_MemoryOrdering p11459 p11460
;; p11459
;; p11460
;; ------ [p11461]
;; p11461
;; 
;; Proof. Tuple (SynchronizationScope, MemoryOrdering) equivalent QED
;;; True == True : Bool
;;; Verifying I_AtomicRMW p11444 p11445 p11453 p11458 p11461 p11462
;; p11444
;; p11445
;; p11453
;; p11458
;; p11461
;; p11462
;; ------ [p11463]
;; p11463
;; 
;; Proof. I_AtomicRMW QED
;;; Verifying NI_infix_Instruction p11443 p11463
;; p11443
;; p11463
;; ------ [p11464]
;; p11464
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11465]
;; p11465
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p11467
;; p11467
;; ------ [p11468]
;; p11468
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11469
;; p11469
;; ------ [p11470]
;; p11470
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11468 p11470
;; p11468
;; p11470
;; ------ [p11471]
;; p11471
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11472
;; p11472
;; ------ [p11473]
;; p11473
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11471 p11473
;; p11471
;; p11473
;; ------ [p11474]
;; p11474
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p11475
;; p11475
;; ------ [p11476]
;; p11476
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11477
;; p11477
;; ------ [p11478]
;; p11478
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11476 p11478
;; p11476
;; p11478
;; ------ [p11479]
;; p11479
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p11480]
;; p11480
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Store p11466 p11474 p11479 p11480 p11481 p11482
;; p11466
;; p11474
;; p11479
;; p11480
;; p11481
;; p11482
;; ------ [p11483]
;; p11483
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p11483
;; p11483
;; ------ [p11484]
;; p11484
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11485]
;; p11485
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11486
;; p11486
;; ------ [p11487]
;; p11487
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p11489
;; p11489
;; ------ [p11490]
;; p11490
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11491
;; p11491
;; ------ [p11492]
;; p11492
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11490 p11492
;; p11490
;; p11492
;; ------ [p11493]
;; p11493
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11494
;; p11494
;; ------ [p11495]
;; p11495
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11493 p11495
;; p11493
;; p11495
;; ------ [p11496]
;; p11496
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p11497]
;; p11497
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Load p11488 p11496 p11497 p11498 p11499
;; p11488
;; p11496
;; p11497
;; p11498
;; p11499
;; ------ [p11500]
;; p11500
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p11487 p11500
;; p11487
;; p11500
;; ------ [p11501]
;; p11501
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11502]
;; p11502
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; True == True : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p11504
;; p11504
;; ------ [p11505]
;; p11505
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11506
;; p11506
;; ------ [p11507]
;; p11507
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11505 p11507
;; p11505
;; p11507
;; ------ [p11508]
;; p11508
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11509
;; p11509
;; ------ [p11510]
;; p11510
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11508 p11510
;; p11508
;; p11510
;; ------ [p11511]
;; p11511
;; 
;; Proof. O_LocalReference QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p11512
;; p11512
;; ------ [p11513]
;; p11513
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11514
;; p11514
;; ------ [p11515]
;; p11515
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11513 p11515
;; p11513
;; p11515
;; ------ [p11516]
;; p11516
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p11517]
;; p11517
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Store p11503 p11511 p11516 p11517 p11518 p11519
;; p11503
;; p11511
;; p11516
;; p11517
;; p11518
;; p11519
;; ------ [p11520]
;; p11520
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p11520
;; p11520
;; ------ [p11521]
;; p11521
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11522]
;; p11522
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11523
;; p11523
;; ------ [p11524]
;; p11524
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p11526
;; p11526
;; ------ [p11527]
;; p11527
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11528
;; p11528
;; ------ [p11529]
;; p11529
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11527 p11529
;; p11527
;; p11529
;; ------ [p11530]
;; p11530
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11531
;; p11531
;; ------ [p11532]
;; p11532
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11530 p11532
;; p11530
;; p11532
;; ------ [p11533]
;; p11533
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p11534]
;; p11534
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 1 == 1 : Word32
;;; True == True : Bool
;;; Verifying I_Load p11525 p11533 p11534 p11535 p11536
;; p11525
;; p11533
;; p11534
;; p11535
;; p11536
;; ------ [p11537]
;; p11537
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p11524 p11537
;; p11524
;; p11537
;; ------ [p11538]
;; p11538
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11539]
;; p11539
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11540
;; p11540
;; ------ [p11541]
;; p11541
;; 
;; Proof. UnName equivalent QED
;;; 8 == 8 : Word32
;;; Verifying T_IntegerType p11542
;; p11542
;; ------ [p11543]
;; p11543
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11544
;; p11544
;; ------ [p11545]
;; p11545
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11543 p11545
;; p11543
;; p11545
;; ------ [p11546]
;; p11546
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p11547
;; p11547
;; ------ [p11548]
;; p11548
;; 
;; Proof. T_IntegerType QED
;;; True == True : Bool
;;; Verifying I_ZExt p11546 p11548 p11549
;; p11546
;; p11548
;; p11549
;; ------ [p11550]
;; p11550
;; 
;; Proof. I_ZExt QED
;;; Verifying NI_infix_Instruction p11541 p11550
;; p11541
;; p11550
;; ------ [p11551]
;; p11551
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ------ [p11552]
;; p11552
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p11551 p11552
;; p11551
;; p11552
;; ------ [p11553]
;; p11553
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11538 p11553
;; p11538
;; p11553
;; ------ [p11554]
;; p11554
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11521 p11554
;; p11521
;; p11554
;; ------ [p11555]
;; p11555
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11501 p11555
;; p11501
;; p11555
;; ------ [p11556]
;; p11556
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11484 p11556
;; p11484
;; p11556
;; ------ [p11557]
;; p11557
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11464 p11557
;; p11464
;; p11557
;; ------ [p11558]
;; p11558
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11440 p11558
;; p11440
;; p11558
;; ------ [p11559]
;; p11559
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11423 p11559
;; p11423
;; p11559
;; ------ [p11560]
;; p11560
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11404 p11560
;; p11404
;; p11560
;; ------ [p11561]
;; p11561
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11384 p11561
;; p11384
;; p11561
;; ------ [p11562]
;; p11562
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11360 p11562
;; p11360
;; p11562
;; ------ [p11563]
;; p11563
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11334 p11563
;; p11334
;; p11563
;; ------ [p11564]
;; p11564
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11324 p11564
;; p11324
;; p11564
;; ------ [p11565]
;; p11565
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11314 p11565
;; p11314
;; p11565
;; ------ [p11566]
;; p11566
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11304 p11566
;; p11304
;; p11566
;; ------ [p11567]
;; p11567
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11568]
;; p11568
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 32 == 32 : Word32
;;; Verifying T_IntegerType p11569
;; p11569
;; ------ [p11570]
;; p11570
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11571
;; p11571
;; ------ [p11572]
;; p11572
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11570 p11572
;; p11570
;; p11572
;; ------ [p11573]
;; p11573
;; 
;; Proof. O_LocalReference QED
;;; Verifying MO_Just_Operand p11573
;; p11573
;; ------ [p11574]
;; p11574
;; 
;; Proof. Just Operand equivalent QED
;;; True == True : Bool
;;; Verifying T_Ret p11574 p11575
;; p11574
;; p11575
;; ------ [p11576]
;; p11576
;; 
;; Proof. T_Ret QED
;;; Verifying NT_Do_Terminator p11576
;; p11576
;; ------ [p11577]
;; p11577
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p11291 p11567 p11577
;; p11291
;; p11567
;; p11577
;; ------ [p11578]
;; p11578
;; 
;; Proof. BB_BasicBlock QED
;;; Verifying MC_Nothing_Constant 
;; ------ [p11580]
;; p11580
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; True == True : Bool
;;; Verifying G_Function p11259 p11260 p11261 p11262 p11263 p11265 p11266 p11279 p11284 p11285 p11286 p11287 p11288 p11289 p11579 p11580 p11581
;; p11259
;; p11260
;; p11261
;; p11262
;; p11263
;; p11265
;; p11266
;; p11279
;; p11284
;; p11285
;; p11286
;; p11287
;; p11288
;; p11289
;; p11579
;; p11580
;; p11581
;; ------ [p11582]
;; p11582
;; 
;; Proof. functions fio_unlock and fio_unlock equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p11583
;; p11583
;; ------ [p11584]
;; p11584
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p11257 p11584
;; p11257
;; p11584
;; ------ [p11585]
;; p11585
;; 
;; Proof. C_GlobalReference QED
;;; Verifying O_ConstantOperand p11585
;; p11585
;; ------ [p11586]
;; p11586
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying EIAO_Right_InlineAssembly_Operand p11586
;; p11586
;; ------ [p11587]
;; p11587
;; 
;; Proof. Right (InlineAssembly Operand) equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p11589
;; p11589
;; ------ [p11590]
;; p11590
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p11590
;; p11590
;; ------ [p11591]
;; p11591
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11592
;; p11592
;; ------ [p11593]
;; p11593
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11591 p11593
;; p11591
;; p11593
;; ------ [p11594]
;; p11594
;; 
;; Proof. T_PointerType QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p11595
;; p11595
;; ------ [p11596]
;; p11596
;; 
;; Proof. Name equivalent QED
;;; Verifying C_GlobalReference p11594 p11596
;; p11594
;; p11596
;; ------ [p11597]
;; p11597
;; 
;; Proof. C_GlobalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p11598 p11599
;; p11598
;; p11599
;; ------ [p11600]
;; p11600
;; 
;; Proof. C_Int QED
;;; 32 == 32 : Word32
;;; 2 == 2 : Integer
;;; Verifying C_Int p11601 p11602
;; p11601
;; p11602
;; ------ [p11603]
;; p11603
;; 
;; Proof. C_Int QED
;;; Verifying Nil_Constant 
;; ------ [p11604]
;; p11604
;; 
;; Proof. [] (Constant) equivalent QED
;;; Verifying Cons_Constant p11603 p11604
;; p11603
;; p11604
;; ------ [p11605]
;; p11605
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying Cons_Constant p11600 p11605
;; p11600
;; p11605
;; ------ [p11606]
;; p11606
;; 
;; Proof. Cons Constant equivalent QED
;;; Verifying C_GetElementPtr p11588 p11597 p11606
;; p11588
;; p11597
;; p11606
;; ------ [p11607]
;; p11607
;; 
;; Proof. C_GetElementPtr QED
;;; Verifying O_ConstantOperand p11607
;; p11607
;; ------ [p11608]
;; p11608
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_ParameterAttribute 
;; ------ [p11609]
;; p11609
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying Tup2_Operand_List_ParameterAttribute p11608 p11609
;; p11608
;; p11609
;; ------ [p11610]
;; p11610
;; 
;; Proof. Tuple (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Tup2_Operand_List_ParameterAttribute 
;; ------ [p11611]
;; p11611
;; 
;; Proof. [] ((Operand, [ParameterAttribute])) equivalent QED
;;; Verifying Cons_Tup2_Operand_List_ParameterAttribute p11610 p11611
;; p11610
;; p11611
;; ------ [p11612]
;; p11612
;; 
;; Proof. Cons (Operand, [ParameterAttribute]) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ------ [p11613]
;; p11613
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; True == True : Bool
;;; Verifying I_Call p11241 p11242 p11243 p11587 p11612 p11613 p11614
;; p11241
;; p11242
;; p11243
;; p11587
;; p11612
;; p11613
;; p11614
;; ------ [p11615]
;; p11615
;; 
;; Proof. I_Call QED
;;; Verifying NI_infix_Instruction p11240 p11615
;; p11240
;; p11615
;; ------ [p11616]
;; p11616
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ------ [p11617]
;; p11617
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p11616 p11617
;; p11616
;; p11617
;; ------ [p11618]
;; p11618
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11619]
;; p11619
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11620
;; p11620
;; ------ [p11621]
;; p11621
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_Br p11621 p11622
;; p11621
;; p11622
;; ------ [p11623]
;; p11623
;; 
;; Proof. T_Br QED
;;; Verifying NT_Do_Terminator p11623
;; p11623
;; ------ [p11624]
;; p11624
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p11237 p11618 p11624
;; p11237
;; p11618
;; p11624
;; ------ [p11625]
;; p11625
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11626
;; p11626
;; ------ [p11627]
;; p11627
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11628]
;; p11628
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p11630
;; p11630
;; ------ [p11631]
;; p11631
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11632
;; p11632
;; ------ [p11633]
;; p11633
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11631 p11633
;; p11631
;; p11633
;; ------ [p11634]
;; p11634
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11635
;; p11635
;; ------ [p11636]
;; p11636
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11634 p11636
;; p11634
;; p11636
;; ------ [p11637]
;; p11637
;; 
;; Proof. O_LocalReference QED
;;; 64 == 64 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p11638 p11639
;; p11638
;; p11639
;; ------ [p11640]
;; p11640
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p11640
;; p11640
;; ------ [p11641]
;; p11641
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p11642]
;; p11642
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p11629 p11637 p11641 p11642 p11643 p11644
;; p11629
;; p11637
;; p11641
;; p11642
;; p11643
;; p11644
;; ------ [p11645]
;; p11645
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p11645
;; p11645
;; ------ [p11646]
;; p11646
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ------ [p11647]
;; p11647
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p11646 p11647
;; p11646
;; p11647
;; ------ [p11648]
;; p11648
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11649]
;; p11649
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11650
;; p11650
;; ------ [p11651]
;; p11651
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_Br p11651 p11652
;; p11651
;; p11652
;; ------ [p11653]
;; p11653
;; 
;; Proof. T_Br QED
;;; Verifying NT_Do_Terminator p11653
;; p11653
;; ------ [p11654]
;; p11654
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p11627 p11648 p11654
;; p11627
;; p11648
;; p11654
;; ------ [p11655]
;; p11655
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11656
;; p11656
;; ------ [p11657]
;; p11657
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11658]
;; p11658
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11659
;; p11659
;; ------ [p11660]
;; p11660
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p11662
;; p11662
;; ------ [p11663]
;; p11663
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11664
;; p11664
;; ------ [p11665]
;; p11665
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11663 p11665
;; p11663
;; p11665
;; ------ [p11666]
;; p11666
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11667
;; p11667
;; ------ [p11668]
;; p11668
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11666 p11668
;; p11666
;; p11668
;; ------ [p11669]
;; p11669
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p11670]
;; p11670
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p11661 p11669 p11670 p11671 p11672
;; p11661
;; p11669
;; p11670
;; p11671
;; p11672
;; ------ [p11673]
;; p11673
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p11660 p11673
;; p11660
;; p11673
;; ------ [p11674]
;; p11674
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11675]
;; p11675
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11676
;; p11676
;; ------ [p11677]
;; p11677
;; 
;; Proof. UnName equivalent QED
;;; Verifying IP_ULT 
;; ------ [p11678]
;; p11678
;; 
;; Proof. IP_ULT QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p11679
;; p11679
;; ------ [p11680]
;; p11680
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11681
;; p11681
;; ------ [p11682]
;; p11682
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11680 p11682
;; p11680
;; p11682
;; ------ [p11683]
;; p11683
;; 
;; Proof. O_LocalReference QED
;;; 64 == 64 : Word32
;;; 256 == 256 : Integer
;;; Verifying C_Int p11684 p11685
;; p11684
;; p11685
;; ------ [p11686]
;; p11686
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p11686
;; p11686
;; ------ [p11687]
;; p11687
;; 
;; Proof. O_ConstantOperand QED
;;; True == True : Bool
;;; Verifying I_ICmp p11678 p11683 p11687 p11688
;; p11678
;; p11683
;; p11687
;; p11688
;; ------ [p11689]
;; p11689
;; 
;; Proof. I_ICmp QED
;;; Verifying NI_infix_Instruction p11677 p11689
;; p11677
;; p11689
;; ------ [p11690]
;; p11690
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ------ [p11691]
;; p11691
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p11690 p11691
;; p11690
;; p11691
;; ------ [p11692]
;; p11692
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11674 p11692
;; p11674
;; p11692
;; ------ [p11693]
;; p11693
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11694]
;; p11694
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; Verifying T_IntegerType p11695
;; p11695
;; ------ [p11696]
;; p11696
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11697
;; p11697
;; ------ [p11698]
;; p11698
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11696 p11698
;; p11696
;; p11698
;; ------ [p11699]
;; p11699
;; 
;; Proof. O_LocalReference QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11700
;; p11700
;; ------ [p11701]
;; p11701
;; 
;; Proof. UnName equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11702
;; p11702
;; ------ [p11703]
;; p11703
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_CondBr p11699 p11701 p11703 p11704
;; p11699
;; p11701
;; p11703
;; p11704
;; ------ [p11705]
;; p11705
;; 
;; Proof. T_CondBr QED
;;; Verifying NT_Do_Terminator p11705
;; p11705
;; ------ [p11706]
;; p11706
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p11657 p11693 p11706
;; p11657
;; p11693
;; p11706
;; ------ [p11707]
;; p11707
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11708
;; p11708
;; ------ [p11709]
;; p11709
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11710]
;; p11710
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11711
;; p11711
;; ------ [p11712]
;; p11712
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p11714
;; p11714
;; ------ [p11715]
;; p11715
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p11715
;; p11715
;; ------ [p11716]
;; p11716
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11717
;; p11717
;; ------ [p11718]
;; p11718
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11716 p11718
;; p11716
;; p11718
;; ------ [p11719]
;; p11719
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11720
;; p11720
;; ------ [p11721]
;; p11721
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11719 p11721
;; p11719
;; p11721
;; ------ [p11722]
;; p11722
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11723
;; p11723
;; ------ [p11724]
;; p11724
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11722 p11724
;; p11722
;; p11724
;; ------ [p11725]
;; p11725
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p11726]
;; p11726
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p11713 p11725 p11726 p11727 p11728
;; p11713
;; p11725
;; p11726
;; p11727
;; p11728
;; ------ [p11729]
;; p11729
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p11712 p11729
;; p11712
;; p11729
;; ------ [p11730]
;; p11730
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11731]
;; p11731
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11732
;; p11732
;; ------ [p11733]
;; p11733
;; 
;; Proof. UnName equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p11734
;; p11734
;; ------ [p11735]
;; p11735
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p11735
;; p11735
;; ------ [p11736]
;; p11736
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11737
;; p11737
;; ------ [p11738]
;; p11738
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11736 p11738
;; p11736
;; p11738
;; ------ [p11739]
;; p11739
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11740
;; p11740
;; ------ [p11741]
;; p11741
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11739 p11741
;; p11739
;; p11741
;; ------ [p11742]
;; p11742
;; 
;; Proof. O_LocalReference QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p11743
;; p11743
;; ------ [p11744]
;; p11744
;; 
;; Proof. T_IntegerType QED
;;; True == True : Bool
;;; Verifying I_PtrToInt p11742 p11744 p11745
;; p11742
;; p11744
;; p11745
;; ------ [p11746]
;; p11746
;; 
;; Proof. I_PtrToInt QED
;;; Verifying NI_infix_Instruction p11733 p11746
;; p11733
;; p11746
;; ------ [p11747]
;; p11747
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11748]
;; p11748
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11749
;; p11749
;; ------ [p11750]
;; p11750
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p11752
;; p11752
;; ------ [p11753]
;; p11753
;; 
;; Proof. T_IntegerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11754
;; p11754
;; ------ [p11755]
;; p11755
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11753 p11755
;; p11753
;; p11755
;; ------ [p11756]
;; p11756
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11757
;; p11757
;; ------ [p11758]
;; p11758
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11756 p11758
;; p11756
;; p11758
;; ------ [p11759]
;; p11759
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p11760]
;; p11760
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p11751 p11759 p11760 p11761 p11762
;; p11751
;; p11759
;; p11760
;; p11761
;; p11762
;; ------ [p11763]
;; p11763
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p11750 p11763
;; p11750
;; p11763
;; ------ [p11764]
;; p11764
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11765]
;; p11765
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11766
;; p11766
;; ------ [p11767]
;; p11767
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; False == False : Bool
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p11770
;; p11770
;; ------ [p11771]
;; p11771
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11772
;; p11772
;; ------ [p11773]
;; p11773
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11771 p11773
;; p11771
;; p11773
;; ------ [p11774]
;; p11774
;; 
;; Proof. O_LocalReference QED
;;; 64 == 64 : Word32
;;; 32768 == 32768 : Integer
;;; Verifying C_Int p11775 p11776
;; p11775
;; p11776
;; ------ [p11777]
;; p11777
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p11777
;; p11777
;; ------ [p11778]
;; p11778
;; 
;; Proof. O_ConstantOperand QED
;;; True == True : Bool
;;; Verifying I_Mul p11768 p11769 p11774 p11778 p11779
;; p11768
;; p11769
;; p11774
;; p11778
;; p11779
;; ------ [p11780]
;; p11780
;; 
;; Proof. I_Mul QED
;;; Verifying NI_infix_Instruction p11767 p11780
;; p11767
;; p11780
;; ------ [p11781]
;; p11781
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11782]
;; p11782
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11783
;; p11783
;; ------ [p11784]
;; p11784
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; False == False : Bool
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p11787
;; p11787
;; ------ [p11788]
;; p11788
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11789
;; p11789
;; ------ [p11790]
;; p11790
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11788 p11790
;; p11788
;; p11790
;; ------ [p11791]
;; p11791
;; 
;; Proof. O_LocalReference QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p11792
;; p11792
;; ------ [p11793]
;; p11793
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11794
;; p11794
;; ------ [p11795]
;; p11795
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11793 p11795
;; p11793
;; p11795
;; ------ [p11796]
;; p11796
;; 
;; Proof. O_LocalReference QED
;;; True == True : Bool
;;; Verifying I_Add p11785 p11786 p11791 p11796 p11797
;; p11785
;; p11786
;; p11791
;; p11796
;; p11797
;; ------ [p11798]
;; p11798
;; 
;; Proof. I_Add QED
;;; Verifying NI_infix_Instruction p11784 p11798
;; p11784
;; p11798
;; ------ [p11799]
;; p11799
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11800]
;; p11800
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11801
;; p11801
;; ------ [p11802]
;; p11802
;; 
;; Proof. UnName equivalent QED
;;; 64 == 64 : Word32
;;; Verifying T_IntegerType p11803
;; p11803
;; ------ [p11804]
;; p11804
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11805
;; p11805
;; ------ [p11806]
;; p11806
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11804 p11806
;; p11804
;; p11806
;; ------ [p11807]
;; p11807
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p11808
;; p11808
;; ------ [p11809]
;; p11809
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p11809
;; p11809
;; ------ [p11810]
;; p11810
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11811
;; p11811
;; ------ [p11812]
;; p11812
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11810 p11812
;; p11810
;; p11812
;; ------ [p11813]
;; p11813
;; 
;; Proof. T_PointerType QED
;;; True == True : Bool
;;; Verifying I_IntToPtr p11807 p11813 p11814
;; p11807
;; p11813
;; p11814
;; ------ [p11815]
;; p11815
;; 
;; Proof. I_IntToPtr QED
;;; Verifying NI_infix_Instruction p11802 p11815
;; p11802
;; p11815
;; ------ [p11816]
;; p11816
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11817]
;; p11817
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p11819
;; p11819
;; ------ [p11820]
;; p11820
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p11820
;; p11820
;; ------ [p11821]
;; p11821
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11822
;; p11822
;; ------ [p11823]
;; p11823
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11821 p11823
;; p11821
;; p11823
;; ------ [p11824]
;; p11824
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11825
;; p11825
;; ------ [p11826]
;; p11826
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11824 p11826
;; p11824
;; p11826
;; ------ [p11827]
;; p11827
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11828
;; p11828
;; ------ [p11829]
;; p11829
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11827 p11829
;; p11827
;; p11829
;; ------ [p11830]
;; p11830
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p11831
;; p11831
;; ------ [p11832]
;; p11832
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p11832
;; p11832
;; ------ [p11833]
;; p11833
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11834
;; p11834
;; ------ [p11835]
;; p11835
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11833 p11835
;; p11833
;; p11835
;; ------ [p11836]
;; p11836
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11837
;; p11837
;; ------ [p11838]
;; p11838
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11836 p11838
;; p11836
;; p11838
;; ------ [p11839]
;; p11839
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p11840]
;; p11840
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p11818 p11830 p11839 p11840 p11841 p11842
;; p11818
;; p11830
;; p11839
;; p11840
;; p11841
;; p11842
;; ------ [p11843]
;; p11843
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p11843
;; p11843
;; ------ [p11844]
;; p11844
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11845]
;; p11845
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11846
;; p11846
;; ------ [p11847]
;; p11847
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p11849
;; p11849
;; ------ [p11850]
;; p11850
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p11850
;; p11850
;; ------ [p11851]
;; p11851
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11852
;; p11852
;; ------ [p11853]
;; p11853
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11851 p11853
;; p11851
;; p11853
;; ------ [p11854]
;; p11854
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11855
;; p11855
;; ------ [p11856]
;; p11856
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11854 p11856
;; p11854
;; p11856
;; ------ [p11857]
;; p11857
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11858
;; p11858
;; ------ [p11859]
;; p11859
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11857 p11859
;; p11857
;; p11859
;; ------ [p11860]
;; p11860
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p11861]
;; p11861
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p11848 p11860 p11861 p11862 p11863
;; p11848
;; p11860
;; p11861
;; p11862
;; p11863
;; ------ [p11864]
;; p11864
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p11847 p11864
;; p11847
;; p11864
;; ------ [p11865]
;; p11865
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11866]
;; p11866
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11867
;; p11867
;; ------ [p11868]
;; p11868
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p11870
;; p11870
;; ------ [p11871]
;; p11871
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p11871
;; p11871
;; ------ [p11872]
;; p11872
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11873
;; p11873
;; ------ [p11874]
;; p11874
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11872 p11874
;; p11872
;; p11874
;; ------ [p11875]
;; p11875
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11876
;; p11876
;; ------ [p11877]
;; p11877
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11875 p11877
;; p11875
;; p11877
;; ------ [p11878]
;; p11878
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p11879 p11880
;; p11879
;; p11880
;; ------ [p11881]
;; p11881
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p11881
;; p11881
;; ------ [p11882]
;; p11882
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 1 == 1 : Integer
;;; Verifying C_Int p11883 p11884
;; p11883
;; p11884
;; ------ [p11885]
;; p11885
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p11885
;; p11885
;; ------ [p11886]
;; p11886
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ------ [p11887]
;; p11887
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p11886 p11887
;; p11886
;; p11887
;; ------ [p11888]
;; p11888
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p11882 p11888
;; p11882
;; p11888
;; ------ [p11889]
;; p11889
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p11869 p11878 p11889 p11890
;; p11869
;; p11878
;; p11889
;; p11890
;; ------ [p11891]
;; p11891
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p11868 p11891
;; p11868
;; p11891
;; ------ [p11892]
;; p11892
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11893]
;; p11893
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11894
;; p11894
;; ------ [p11895]
;; p11895
;; 
;; Proof. UnName equivalent QED
;;; Verifying MTCK_Nothing_TailCallKind 
;; ------ [p11896]
;; p11896
;; 
;; Proof. Nothing (TailCallKind) equivalent QED
;;; Verifying CC_C 
;; ------ [p11897]
;; p11897
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ------ [p11898]
;; p11898
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p11899
;; p11899
;; ------ [p11900]
;; p11900
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p11900
;; p11900
;; ------ [p11901]
;; p11901
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11902
;; p11902
;; ------ [p11903]
;; p11903
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11901 p11903
;; p11901
;; p11903
;; ------ [p11904]
;; p11904
;; 
;; Proof. T_PointerType QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p11905
;; p11905
;; ------ [p11906]
;; p11906
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p11906
;; p11906
;; ------ [p11907]
;; p11907
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11908
;; p11908
;; ------ [p11909]
;; p11909
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11907 p11909
;; p11907
;; p11909
;; ------ [p11910]
;; p11910
;; 
;; Proof. T_PointerType QED
;;; Verifying Nil_Type 
;; ------ [p11911]
;; p11911
;; 
;; Proof. [] (Type) equivalent QED
;;; Verifying Cons_Type p11910 p11911
;; p11910
;; p11911
;; ------ [p11912]
;; p11912
;; 
;; Proof. Cons Type equivalent QED
;;; False == False : Bool
;;; Verifying T_FunctionType p11904 p11912 p11913
;; p11904
;; p11912
;; p11913
;; ------ [p11914]
;; p11914
;; 
;; Proof. T_FunctionType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11915
;; p11915
;; ------ [p11916]
;; p11916
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11914 p11916
;; p11914
;; p11916
;; ------ [p11917]
;; p11917
;; 
;; Proof. T_PointerType QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11918]
;; p11918
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying L_Internal 
;; ------ [p11919]
;; p11919
;; 
;; Proof. L_Internal QED
;;; Verifying V_Default 
;; ------ [p11920]
;; p11920
;; 
;; Proof. V_Default QED
;;; Verifying MSC_Nothing_StorageClass 
;; ------ [p11921]
;; p11921
;; 
;; Proof. Nothing (StorageClass) equivalent QED
;;; Verifying CC_C 
;; ------ [p11922]
;; p11922
;; 
;; Proof. CC_C QED
;;; Verifying Nil_ParameterAttribute 
;; ------ [p11923]
;; p11923
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p11924
;; p11924
;; ------ [p11925]
;; p11925
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p11925
;; p11925
;; ------ [p11926]
;; p11926
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11927
;; p11927
;; ------ [p11928]
;; p11928
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11926 p11928
;; p11926
;; p11928
;; ------ [p11929]
;; p11929
;; 
;; Proof. T_PointerType QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p11931
;; p11931
;; ------ [p11932]
;; p11932
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p11932
;; p11932
;; ------ [p11933]
;; p11933
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11934
;; p11934
;; ------ [p11935]
;; p11935
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11933 p11935
;; p11933
;; p11935
;; ------ [p11936]
;; p11936
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11937
;; p11937
;; ------ [p11938]
;; p11938
;; 
;; Proof. UnName equivalent QED
;;; Verifying Nil_ParameterAttribute 
;; ------ [p11939]
;; p11939
;; 
;; Proof. [] (ParameterAttribute) equivalent QED
;;; Verifying P_Parameter p11936 p11938 p11939
;; p11936
;; p11938
;; p11939
;; ------ [p11940]
;; p11940
;; 
;; Proof. P_Parameter QED
;;; Verifying Nil_Parameter 
;; ------ [p11941]
;; p11941
;; 
;; Proof. [] (Parameter) equivalent QED
;;; Verifying Cons_Parameter p11940 p11941
;; p11940
;; p11941
;; ------ [p11942]
;; p11942
;; 
;; Proof. Cons Parameter equivalent QED
;;; False == False : Bool
;;; Verifying Tup2_List_Parameter_Bool p11942 p11943
;; p11942
;; p11943
;; ------ [p11944]
;; p11944
;; 
;; Proof. Tuple ([Parameter], Bool) equivalent QED
;;; 0 == 0 : Word
;;; Verifying GID_GroupID p11945
;; p11945
;; ------ [p11946]
;; p11946
;; 
;; Proof. GID_GroupID QED
;;; Verifying EGIDFA_Left_GroupID_FunctionAttribute p11946
;; p11946
;; ------ [p11947]
;; p11947
;; 
;; Proof. Left (GroupID FunctionAttribute) equivalent QED
;;; Verifying Nil_Either_GroupID_FunctionAttribute 
;; ------ [p11948]
;; p11948
;; 
;; Proof. [] (FunctionAttribute) equivalent QED
;;; Verifying Cons_Either_GroupID_FunctionAttribute p11947 p11948
;; p11947
;; p11948
;; ------ [p11949]
;; p11949
;; 
;; Proof. Cons FunctionAttribute equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11950]
;; p11950
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11951]
;; p11951
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 0 == 0 : Word32
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11953]
;; p11953
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; Verifying MC_Nothing_Constant 
;; ------ [p11954]
;; p11954
;; 
;; Proof. Nothing (Constant) equivalent QED
;;; basic block matching 1-1, 8-8, 14-14, 36-36, 15-15
;;; 1 == 1 : Word
;;; Verifying N_UnName p11955
;; p11955
;; ------ [p11956]
;; p11956
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11957]
;; p11957
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11958
;; p11958
;; ------ [p11959]
;; p11959
;; 
;; Proof. UnName equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p11960
;; p11960
;; ------ [p11961]
;; p11961
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p11961
;; p11961
;; ------ [p11962]
;; p11962
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11963
;; p11963
;; ------ [p11964]
;; p11964
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11962 p11964
;; p11962
;; p11964
;; ------ [p11965]
;; p11965
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ------ [p11966]
;; p11966
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p11965 p11966 p11967 p11968
;; p11965
;; p11966
;; p11967
;; p11968
;; ------ [p11969]
;; p11969
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p11959 p11969
;; p11959
;; p11969
;; ------ [p11970]
;; p11970
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11971]
;; p11971
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11972
;; p11972
;; ------ [p11973]
;; p11973
;; 
;; Proof. UnName equivalent QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p11974
;; p11974
;; ------ [p11975]
;; p11975
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p11975
;; p11975
;; ------ [p11976]
;; p11976
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11977
;; p11977
;; ------ [p11978]
;; p11978
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11976 p11978
;; p11976
;; p11978
;; ------ [p11979]
;; p11979
;; 
;; Proof. T_PointerType QED
;;; Verifying MO_Nothing_Operand 
;; ------ [p11980]
;; p11980
;; 
;; Proof. Nothing (Operand) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Alloca p11979 p11980 p11981 p11982
;; p11979
;; p11980
;; p11981
;; p11982
;; ------ [p11983]
;; p11983
;; 
;; Proof. I_Alloca QED
;;; Verifying NI_infix_Instruction p11973 p11983
;; p11973
;; p11983
;; ------ [p11984]
;; p11984
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p11985]
;; p11985
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p11987
;; p11987
;; ------ [p11988]
;; p11988
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p11988
;; p11988
;; ------ [p11989]
;; p11989
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11990
;; p11990
;; ------ [p11991]
;; p11991
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11989 p11991
;; p11989
;; p11991
;; ------ [p11992]
;; p11992
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p11993
;; p11993
;; ------ [p11994]
;; p11994
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p11992 p11994
;; p11992
;; p11994
;; ------ [p11995]
;; p11995
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p11996
;; p11996
;; ------ [p11997]
;; p11997
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p11995 p11997
;; p11995
;; p11997
;; ------ [p11998]
;; p11998
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p11999
;; p11999
;; ------ [p12000]
;; p12000
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p12000
;; p12000
;; ------ [p12001]
;; p12001
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p12002
;; p12002
;; ------ [p12003]
;; p12003
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p12001 p12003
;; p12001
;; p12003
;; ------ [p12004]
;; p12004
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p12005
;; p12005
;; ------ [p12006]
;; p12006
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p12004 p12006
;; p12004
;; p12006
;; ------ [p12007]
;; p12007
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p12008]
;; p12008
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Store p11986 p11998 p12007 p12008 p12009 p12010
;; p11986
;; p11998
;; p12007
;; p12008
;; p12009
;; p12010
;; ------ [p12011]
;; p12011
;; 
;; Proof. I_Store QED
;;; Verifying NI_Do_Instruction p12011
;; p12011
;; ------ [p12012]
;; p12012
;; 
;; Proof. Nameless Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p12013]
;; p12013
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p12014
;; p12014
;; ------ [p12015]
;; p12015
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p12017
;; p12017
;; ------ [p12018]
;; p12018
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p12018
;; p12018
;; ------ [p12019]
;; p12019
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p12020
;; p12020
;; ------ [p12021]
;; p12021
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p12019 p12021
;; p12019
;; p12021
;; ------ [p12022]
;; p12022
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p12023
;; p12023
;; ------ [p12024]
;; p12024
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p12022 p12024
;; p12022
;; p12024
;; ------ [p12025]
;; p12025
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p12026
;; p12026
;; ------ [p12027]
;; p12027
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p12025 p12027
;; p12025
;; p12027
;; ------ [p12028]
;; p12028
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p12029]
;; p12029
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p12016 p12028 p12029 p12030 p12031
;; p12016
;; p12028
;; p12029
;; p12030
;; p12031
;; ------ [p12032]
;; p12032
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p12015 p12032
;; p12015
;; p12032
;; ------ [p12033]
;; p12033
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p12034]
;; p12034
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p12035
;; p12035
;; ------ [p12036]
;; p12036
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p12038
;; p12038
;; ------ [p12039]
;; p12039
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p12039
;; p12039
;; ------ [p12040]
;; p12040
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p12041
;; p12041
;; ------ [p12042]
;; p12042
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p12040 p12042
;; p12040
;; p12042
;; ------ [p12043]
;; p12043
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p12044
;; p12044
;; ------ [p12045]
;; p12045
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p12043 p12045
;; p12043
;; p12045
;; ------ [p12046]
;; p12046
;; 
;; Proof. O_LocalReference QED
;;; 32 == 32 : Word32
;;; 0 == 0 : Integer
;;; Verifying C_Int p12047 p12048
;; p12047
;; p12048
;; ------ [p12049]
;; p12049
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p12049
;; p12049
;; ------ [p12050]
;; p12050
;; 
;; Proof. O_ConstantOperand QED
;;; 32 == 32 : Word32
;;; 1 == 1 : Integer
;;; Verifying C_Int p12051 p12052
;; p12051
;; p12052
;; ------ [p12053]
;; p12053
;; 
;; Proof. C_Int QED
;;; Verifying O_ConstantOperand p12053
;; p12053
;; ------ [p12054]
;; p12054
;; 
;; Proof. O_ConstantOperand QED
;;; Verifying Nil_Operand 
;; ------ [p12055]
;; p12055
;; 
;; Proof. [] (Operand) equivalent QED
;;; Verifying Cons_Operand p12054 p12055
;; p12054
;; p12055
;; ------ [p12056]
;; p12056
;; 
;; Proof. Cons Operand equivalent QED
;;; Verifying Cons_Operand p12050 p12056
;; p12050
;; p12056
;; ------ [p12057]
;; p12057
;; 
;; Proof. Cons Operand equivalent QED
;;; True == True : Bool
;;; Verifying I_GetElementPtr p12037 p12046 p12057 p12058
;; p12037
;; p12046
;; p12057
;; p12058
;; ------ [p12059]
;; p12059
;; 
;; Proof. I_GetElementPtr QED
;;; Verifying NI_infix_Instruction p12036 p12059
;; p12036
;; p12059
;; ------ [p12060]
;; p12060
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p12061]
;; p12061
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p12062
;; p12062
;; ------ [p12063]
;; p12063
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p12065
;; p12065
;; ------ [p12066]
;; p12066
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p12066
;; p12066
;; ------ [p12067]
;; p12067
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p12068
;; p12068
;; ------ [p12069]
;; p12069
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p12067 p12069
;; p12067
;; p12069
;; ------ [p12070]
;; p12070
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p12071
;; p12071
;; ------ [p12072]
;; p12072
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p12070 p12072
;; p12070
;; p12072
;; ------ [p12073]
;; p12073
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p12074
;; p12074
;; ------ [p12075]
;; p12075
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p12073 p12075
;; p12073
;; p12075
;; ------ [p12076]
;; p12076
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p12077]
;; p12077
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p12064 p12076 p12077 p12078 p12079
;; p12064
;; p12076
;; p12077
;; p12078
;; p12079
;; ------ [p12080]
;; p12080
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p12063 p12080
;; p12063
;; p12080
;; ------ [p12081]
;; p12081
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p12082]
;; p12082
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p12083
;; p12083
;; ------ [p12084]
;; p12084
;; 
;; Proof. UnName equivalent QED
;;; Verifying IP_NE 
;; ------ [p12085]
;; p12085
;; 
;; Proof. IP_NE QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p12086
;; p12086
;; ------ [p12087]
;; p12087
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p12087
;; p12087
;; ------ [p12088]
;; p12088
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p12089
;; p12089
;; ------ [p12090]
;; p12090
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p12088 p12090
;; p12088
;; p12090
;; ------ [p12091]
;; p12091
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p12092
;; p12092
;; ------ [p12093]
;; p12093
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p12091 p12093
;; p12091
;; p12093
;; ------ [p12094]
;; p12094
;; 
;; Proof. O_LocalReference QED
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p12095
;; p12095
;; ------ [p12096]
;; p12096
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p12096
;; p12096
;; ------ [p12097]
;; p12097
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p12098
;; p12098
;; ------ [p12099]
;; p12099
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p12097 p12099
;; p12097
;; p12099
;; ------ [p12100]
;; p12100
;; 
;; Proof. T_PointerType QED
;;; Verifying C_Null p12100
;; p12100
;; ------ [p12101]
;; p12101
;; 
;; Proof. C_Null QED
;;; Verifying O_ConstantOperand p12101
;; p12101
;; ------ [p12102]
;; p12102
;; 
;; Proof. O_ConstantOperand QED
;;; True == True : Bool
;;; Verifying I_ICmp p12085 p12094 p12102 p12103
;; p12085
;; p12094
;; p12102
;; p12103
;; ------ [p12104]
;; p12104
;; 
;; Proof. I_ICmp QED
;;; Verifying NI_infix_Instruction p12084 p12104
;; p12084
;; p12104
;; ------ [p12105]
;; p12105
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying Nil_Named_Instruction 
;; ------ [p12106]
;; p12106
;; 
;; Proof. [] (Named Instruction) equivalent QED
;;; Verifying Cons_Named_Instruction p12105 p12106
;; p12105
;; p12106
;; ------ [p12107]
;; p12107
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p12081 p12107
;; p12081
;; p12107
;; ------ [p12108]
;; p12108
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p12060 p12108
;; p12060
;; p12108
;; ------ [p12109]
;; p12109
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p12033 p12109
;; p12033
;; p12109
;; ------ [p12110]
;; p12110
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p12012 p12110
;; p12012
;; p12110
;; ------ [p12111]
;; p12111
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11984 p12111
;; p11984
;; p12111
;; ------ [p12112]
;; p12112
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying Cons_Named_Instruction p11970 p12112
;; p11970
;; p12112
;; ------ [p12113]
;; p12113
;; 
;; Proof. Cons Named Instruction equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p12114]
;; p12114
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word32
;;; Verifying T_IntegerType p12115
;; p12115
;; ------ [p12116]
;; p12116
;; 
;; Proof. T_IntegerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p12117
;; p12117
;; ------ [p12118]
;; p12118
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p12116 p12118
;; p12116
;; p12118
;; ------ [p12119]
;; p12119
;; 
;; Proof. O_LocalReference QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p12120
;; p12120
;; ------ [p12121]
;; p12121
;; 
;; Proof. UnName equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p12122
;; p12122
;; ------ [p12123]
;; p12123
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;;; Verifying T_CondBr p12119 p12121 p12123 p12124
;; p12119
;; p12121
;; p12123
;; p12124
;; ------ [p12125]
;; p12125
;; 
;; Proof. T_CondBr QED
;;; Verifying NT_Do_Terminator p12125
;; p12125
;; ------ [p12126]
;; p12126
;; 
;; Proof. Nameless Terminator equivalent QED
;;; Verifying BB_BasicBlock p11956 p12113 p12126
;; p11956
;; p12113
;; p12126
;; ------ [p12127]
;; p12127
;; 
;; Proof. BB_BasicBlock QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p12128
;; p12128
;; ------ [p12129]
;; p12129
;; 
;; Proof. UnName equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p12130]
;; p12130
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p12131
;; p12131
;; ------ [p12132]
;; p12132
;; 
;; Proof. UnName equivalent QED
;;; False == False : Bool
;;; "a" == "a" : ShortByteStr
;;; Verifying N_Name p12134
;; p12134
;; ------ [p12135]
;; p12135
;; 
;; Proof. Name equivalent QED
;;; Verifying T_NamedTypeReference p12135
;; p12135
;; ------ [p12136]
;; p12136
;; 
;; Proof. T_NamedTypeReference QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p12137
;; p12137
;; ------ [p12138]
;; p12138
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p12136 p12138
;; p12136
;; p12138
;; ------ [p12139]
;; p12139
;; 
;; Proof. T_PointerType QED
;;; 0 == 0 : Word32
;;; Verifying AS_AddrSpace p12140
;; p12140
;; ------ [p12141]
;; p12141
;; 
;; Proof. AS_AddrSpace QED
;;; Verifying T_PointerType p12139 p12141
;; p12139
;; p12141
;; ------ [p12142]
;; p12142
;; 
;; Proof. T_PointerType QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p12143
;; p12143
;; ------ [p12144]
;; p12144
;; 
;; Proof. UnName equivalent QED
;;; Verifying O_LocalReference p12142 p12144
;; p12142
;; p12144
;; ------ [p12145]
;; p12145
;; 
;; Proof. O_LocalReference QED
;;; Verifying MA_Nothing_Atomicity 
;; ------ [p12146]
;; p12146
;; 
;; Proof. Nothing (Atomicity) equivalent QED
;;; 8 == 8 : Word32
;;; True == True : Bool
;;; Verifying I_Load p12133 p12145 p12146 p12147 p12148
;; p12133
;; p12145
;; p12146
;; p12147
;; p12148
;; ------ [p12149]
;; p12149
;; 
;; Proof. I_Load QED
;;; Verifying NI_infix_Instruction p12132 p12149
;; p12132
;; p12149
;; ------ [p12150]
;; p12150
;; 
;; Proof. Named (Instruction) equivalent QED
;;; Verifying MSBS_Nothing_ShortByteString 
;; ------ [p12151]
;; p12151
;; 
;; Proof. Nothing (ShortByteString) equivalent QED
;;; 1 == 1 : Word
;;; Verifying N_UnName p12152
;; p12152
;; ------ [p12153]
;; p12153
;; 
;; Proof. UnName equivalent QED
;;; True == True : Bool
;; 