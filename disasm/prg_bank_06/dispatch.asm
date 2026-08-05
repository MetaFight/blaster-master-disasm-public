.macro MAC_L_8000
; Bank-06 (tank) top dispatch table, read by BankDispatch_Switch ($EA3A) as word_at($8000 +
; nibble×2) to seed DispatchPtr ($7A/$7B). 1 LE16 entry: [0]=$8002 ObjDispatch_Table_Bk06. Only
; nibble 0 is ever used in this bank, and the word points at the immediately following byte, so
; top table and handler table are contiguous — the bank-04 counterpart
; (BankDispatch_TopTable_Bk04) has 3 entries and a real gap before its handler table
BankDispatch_TopTable_Bk06:
        .addr   ObjDispatch_Table_Bk06          ; 8000
; Bank-06 (tank) AI handler table: 145 × 2-byte LE handler pointers, $8002–$8123, for ObjType
; $01–$91. Read by BankDispatch_Index ($EB51) as DispatchPtr[(ObjType−1)×2] with DispatchPtr =
; $8002, so ObjType N's handler pointer sits at $8000 + N×2. Two null slots ($806E ObjType $37,
; $80AE ObjType $57) split the run — see _NullSlot37/_NullSlot57. Bank-04 counterpart:
; ObjDispatch_Table_Bk04 ($8006)
ObjDispatch_Table_Bk06:
        .addr   L_8124                          ; 8002
        .addr   L_8124                          ; 8004
        .addr   L_92DB                          ; 8006
        .addr   L_8C64                          ; 8008
        .addr   L_9009                          ; 800A
        .addr   L_916E                          ; 800C
        .addr   L_8E97                          ; 800E
        .addr   L_8CB0                          ; 8010
        .addr   L_8AF8                          ; 8012
        .addr   L_8B36                          ; 8014
        .addr   L_8B74                          ; 8016
        .addr   L_8BB2                          ; 8018
        .addr   L_89E5                          ; 801A
        .addr   L_8A0F                          ; 801C
        .addr   L_8A1D                          ; 801E
        .addr   L_8A2E                          ; 8020
        .addr   L_8A58                          ; 8022
        .addr   L_8A66                          ; 8024
        .addr   L_976D                          ; 8026
        .addr   L_9788                          ; 8028
        .addr   L_9882                          ; 802A
        .addr   L_98A8                          ; 802C
        .addr   L_99CC                          ; 802E
        .addr   L_99F0                          ; 8030
        .addr   L_9AEB                          ; 8032
        .addr   L_9B2F                          ; 8034
        .addr   L_815C                          ; 8036
        .addr   L_855F                          ; 8038
        .addr   L_8677                          ; 803A
        .addr   L_8713                          ; 803C
        .addr   L_873D                          ; 803E
        .addr   L_874D                          ; 8040
        .addr   L_875E                          ; 8042
        .addr   L_8788                          ; 8044
        .addr   L_8798                          ; 8046
        .addr   L_9D3B                          ; 8048
        .addr   L_9D4C                          ; 804A
        .addr   L_9D3B                          ; 804C
        .addr   L_9D5F                          ; 804E
        .addr   L_9D3B                          ; 8050
        .addr   L_9D72                          ; 8052
        .addr   L_882A                          ; 8054
        .addr   L_8850                          ; 8056
        .addr   L_9C1C                          ; 8058
        .addr   L_9C23                          ; 805A
        .addr   L_9C38                          ; 805C
        .addr   L_9C3F                          ; 805E
        .addr   L_9C2A                          ; 8060
        .addr   L_9C31                          ; 8062
        .addr   L_9C46                          ; 8064
        .addr   L_9C4D                          ; 8066
        .addr   L_9C54                          ; 8068
        .addr   L_9C68                          ; 806A
        .addr   L_9EA4                          ; 806C
; ----------------------------------------------------------------------------
L_806E: .byte   $00,$00                         ; 806E
; ----------------------------------------------------------------------------
L_8070: .addr   L_9EBF                          ; 8070
        .addr   L_9EE0                          ; 8072
        .addr   L_9F39                          ; 8074
        .addr   L_9F5A                          ; 8076
        .addr   L_9FDA                          ; 8078
        .addr   L_9FF9                          ; 807A
        .addr   L_A02F                          ; 807C
        .addr   L_A047                          ; 807E
        .addr   L_A089                          ; 8080
        .addr   L_A0B6                          ; 8082
        .addr   L_A0F6                          ; 8084
        .addr   L_A122                          ; 8086
        .addr   L_A191                          ; 8088
        .addr   L_A1AD                          ; 808A
        .addr   L_A1F1                          ; 808C
        .addr   L_A202                          ; 808E
        .addr   L_A237                          ; 8090
        .addr   L_A24D                          ; 8092
        .addr   L_9B95                          ; 8094
        .addr   L_9BAA                          ; 8096
        .addr   L_9BD8                          ; 8098
        .addr   L_9BED                          ; 809A
        .addr   L_B1FF                          ; 809C
        .addr   L_B20C                          ; 809E
        .addr   L_B29B                          ; 80A0
        .addr   L_B2A8                          ; 80A2
        .addr   L_B62F                          ; 80A4
        .addr   L_B63C                          ; 80A6
        .addr   L_A3E2                          ; 80A8
        .addr   L_A40B                          ; 80AA
        .addr   L_A4DE                          ; 80AC
; ----------------------------------------------------------------------------
L_80AE: .byte   $00,$00                         ; 80AE
; ----------------------------------------------------------------------------
L_80B0: .addr   L_A50E                          ; 80B0
        .addr   L_A53A                          ; 80B2
        .addr   L_A5C2                          ; 80B4
        .addr   L_A6D7                          ; 80B6
        .addr   L_A6E4                          ; 80B8
        .addr   L_A74B                          ; 80BA
        .addr   L_A76A                          ; 80BC
        .addr   ObjHandler_Tank_5F_Gray_Hopper_6HP_Init; 80BE
        .addr   ObjHandler_Tank_60_Gray_Hopper_6HP_Attacking; 80C0
        .addr   L_A86E                          ; 80C2
        .addr   L_A8D2                          ; 80C4
        .addr   L_A8FB                          ; 80C6
        .addr   L_A9CB                          ; 80C8
        .addr   L_A9DE                          ; 80CA
        .addr   L_AA5A                          ; 80CC
        .addr   L_AA6C                          ; 80CE
        .addr   L_AB13                          ; 80D0
        .addr   L_AB24                          ; 80D2
        .addr   L_ABCF                          ; 80D4
        .addr   L_ABEC                          ; 80D6
        .addr   L_AC3C                          ; 80D8
        .addr   L_AC63                          ; 80DA
        .addr   L_ACFB                          ; 80DC
        .addr   L_AD08                          ; 80DE
        .addr   L_ADE4                          ; 80E0
        .addr   L_ADFF                          ; 80E2
        .addr   L_AE78                          ; 80E4
        .addr   L_AE95                          ; 80E6
        .addr   L_AF3A                          ; 80E8
        .addr   L_AF61                          ; 80EA
        .addr   ObjHandler_Tank_76_Shooter_Init ; 80EC
        .addr   ObjHandler_Tank_77_Shooter_Main ; 80EE
        .addr   L_B076                          ; 80F0
        .addr   L_B095                          ; 80F2
        .addr   L_B16E                          ; 80F4
        .addr   L_B18F                          ; 80F6
        .addr   L_B250                          ; 80F8
        .addr   L_B2EC                          ; 80FA
        .addr   L_B337                          ; 80FC
        .addr   L_B34F                          ; 80FE
        .addr   L_B3E3                          ; 8100
        .addr   L_B3FE                          ; 8102
        .addr   L_B494                          ; 8104
        .addr   L_B4A3                          ; 8106
        .addr   L_B53A                          ; 8108
        .addr   L_B578                          ; 810A
        .addr   L_B58B                          ; 810C
        .addr   L_B680                          ; 810E
        .addr   L_B6E4                          ; 8110
        .addr   L_B6F4                          ; 8112
        .addr   L_B832                          ; 8114
        .addr   L_B843                          ; 8116
        .addr   L_B91A                          ; 8118
        .addr   L_B94A                          ; 811A
        .addr   L_B97A                          ; 811C
        .addr   L_BA00                          ; 811E
        .addr   L_BA88                          ; 8120
        .addr   L_BAA4                          ; 8122
.endmacro

