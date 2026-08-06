.macro MAC_L_8000
; Bank-04 top dispatch table, read by BankDispatch_Switch ($EA3A) as word_at($8000 + nibble×2) to
; seed IndirectPtr ($7A/$7B). 3 LE16 sub-table pointers: [0]=$8006 ObjDispatch_Table_Bk04 (the
; overhead AI handler table — nibble 0, the RunObjectHandler path), [1]=$8907
; Metasprite_Table_Tank (read by MetaSprite_Render $F011 with A=#$41), [2]=$8006 again (no known
; caller uses nibble 2). Entry [1] is the *tank* metasprite table, so this table is not AI-only.
; Bank-06 counterpart: BankDispatch_TopTable_Bk06 ($8000, 1 entry)
BankDispatch_TopTable_Bk04:
        .addr   ObjDispatch_Table_Bk04          ; 8000
        .addr   L_8907                          ; 8002
        .addr   ObjDispatch_Table_Bk04          ; 8004
; Bank-04 (overhead) AI handler table: 134 × 2-byte LE handler pointers, spanning $8006–$8111, for
; ObjType $01–$86. Read by BankDispatch_Index ($EB51) as IndirectPtr[(ObjType−1)×2] with
; IndirectPtr = $8006, so ObjType N's handler pointer sits at $8004 + N×2. Entries 0/1 → null
; handler ($8AF1); entry 2 (ObjType=$03) → ObjHandler_Ovhd_03_Jason ($8C38, OvhdJason main).
; Bank-06 counterpart: ObjDispatch_Table_Bk06 ($8002)
ObjDispatch_Table_Bk04:
        .addr   L_8AF1                          ; 8006
        .addr   L_8AF1                          ; 8008
        .addr   L_8C38                          ; 800A
        .addr   L_8A69                          ; 800C
        .addr   L_8ABB                          ; 800E
        .addr   L_8F54                          ; 8010
        .addr   L_8F9F                          ; 8012
        .addr   L_8FC0                          ; 8014
        .addr   L_9011                          ; 8016
        .addr   L_903B                          ; 8018
        .addr   L_906F                          ; 801A
        .addr   L_90EB                          ; 801C
        .addr   L_911A                          ; 801E
        .addr   L_9142                          ; 8020
        .addr   L_920B                          ; 8022
        .addr   L_923C                          ; 8024
        .addr   L_92AC                          ; 8026
        .addr   L_933D                          ; 8028
        .addr   L_9347                          ; 802A
        .addr   L_938B                          ; 802C
        .addr   L_9395                          ; 802E
        .addr   L_B16B                          ; 8030
        .addr   L_B173                          ; 8032
        .addr   L_B1A3                          ; 8034
        .addr   L_B1AB                          ; 8036
        .addr   L_95CF                          ; 8038
        .addr   L_95D6                          ; 803A
        .addr   L_95DD                          ; 803C
        .addr   L_95E4                          ; 803E
        .addr   L_95EB                          ; 8040
        .addr   L_95F2                          ; 8042
        .addr   L_95F9                          ; 8044
        .addr   L_9600                          ; 8046
        .addr   L_9607                          ; 8048
        .addr   L_961B                          ; 804A
        .addr   L_B855                          ; 804C
        .addr   L_B866                          ; 804E
        .addr   L_B922                          ; 8050
        .addr   L_B931                          ; 8052
        .addr   L_B9EE                          ; 8054
        .addr   L_BA01                          ; 8056
        .addr   L_BA47                          ; 8058
        .addr   L_BAF0                          ; 805A
        .addr   L_BB14                          ; 805C
        .addr   L_BB75                          ; 805E
        .addr   L_B366                          ; 8060
        .addr   L_B393                          ; 8062
        .addr   L_B446                          ; 8064
        .addr   L_B44F                          ; 8066
        .addr   L_B4E1                          ; 8068
        .addr   L_B4EE                          ; 806A
        .addr   L_B560                          ; 806C
        .addr   L_B5A7                          ; 806E
        .addr   L_B5F0                          ; 8070
        .addr   L_B64D                          ; 8072
        .addr   L_B65B                          ; 8074
        .addr   L_B6A6                          ; 8076
        .addr   L_B6AF                          ; 8078
        .addr   L_B70C                          ; 807A
        .addr   L_B719                          ; 807C
        .addr   L_B782                          ; 807E
        .addr   L_B78F                          ; 8080
        .addr   L_B7E5                          ; 8082
        .addr   L_B7F6                          ; 8084
        .addr   L_BD5C                          ; 8086
        .addr   L_BD69                          ; 8088
        .addr   L_BDE7                          ; 808A
        .addr   L_BE54                          ; 808C
        .addr   L_BE61                          ; 808E
        .addr   L_BEEF                          ; 8090
        .addr   L_BEF8                          ; 8092
        .addr   L_BBC2                          ; 8094
        .addr   L_BBE8                          ; 8096
        .addr   L_BC65                          ; 8098
        .addr   L_BC84                          ; 809A
        .addr   L_BCD9                          ; 809C
        .addr   L_BD09                          ; 809E
        .addr   L_AF45                          ; 80A0
        .addr   L_AF67                          ; 80A2
        .addr   L_AFB9                          ; 80A4
        .addr   L_AFF6                          ; 80A6
        .addr   L_B02F                          ; 80A8
        .addr   L_B041                          ; 80AA
        .addr   L_B074                          ; 80AC
        .addr   L_B08B                          ; 80AE
        .addr   L_B0BE                          ; 80B0
        .addr   L_B0CC                          ; 80B2
        .addr   L_B0FF                          ; 80B4
        .addr   L_B132                          ; 80B6
        .addr   L_9F62                          ; 80B8
        .addr   L_9FB7                          ; 80BA
        .addr   L_96F1                          ; 80BC
        .addr   L_970C                          ; 80BE
        .addr   L_9B4B                          ; 80C0
        .addr   L_9B64                          ; 80C2
        .addr   L_A137                          ; 80C4
        .addr   L_A196                          ; 80C6
        .addr   L_A571                          ; 80C8
        .addr   L_A589                          ; 80CA
        .addr   L_A6B3                          ; 80CC
        .addr   L_A6CD                          ; 80CE
        .addr   L_AA03                          ; 80D0
        .addr   L_AA34                          ; 80D2
        .addr   L_AC58                          ; 80D4
        .addr   L_AC84                          ; 80D6
        .addr   L_9FEE                          ; 80D8
        .addr   L_998B                          ; 80DA
        .addr   L_99AD                          ; 80DC
        .addr   L_99F2                          ; 80DE
        .addr   L_9A00                          ; 80E0
        .addr   L_9A7D                          ; 80E2
        .addr   L_9A8B                          ; 80E4
        .addr   L_9B0B                          ; 80E6
        .addr   L_9B14                          ; 80E8
        .addr   L_9E03                          ; 80EA
        .addr   L_9E1A                          ; 80EC
        .addr   L_9E51                          ; 80EE
        .addr   L_9E69                          ; 80F0
        .addr   L_A4CC                          ; 80F2
        .addr   L_A4D3                          ; 80F4
        .addr   L_A4DA                          ; 80F6
        .addr   L_A509                          ; 80F8
        .addr   L_A54B                          ; 80FA
        .addr   L_A562                          ; 80FC
        .addr   L_A938                          ; 80FE
        .addr   L_A965                          ; 8100
        .addr   L_A9D1                          ; 8102
        .addr   L_ABC6                          ; 8104
        .addr   L_ABE7                          ; 8106
        .addr   L_AE93                          ; 8108
        .addr   L_AEC5                          ; 810A
        .addr   L_8B96                          ; 810C
        .addr   L_8BE2                          ; 810E
        .addr   L_8BFD                          ; 8110
.endmacro

