.macro MAC__ungrouped_1_of_12
; ----------------------------------------------------------------------------
; #region Metasprite_Defs_Tank — 2037 bytes
L_8112: .byte   $F4,$E4,$0C,$A5,$04             ; 8112  -12,-28 shape#4 tile $A5
        .byte   $00,$08,$0C,$A6,$04             ; 8117  +0,+8 shape#4 tile $A6
        .byte   $00,$08,$0C,$A7,$04             ; 811C  +0,+8 shape#4 tile $A7
        .byte   $00,$08,$0C,$A8,$04             ; 8121  +0,+8 shape#4 tile $A8
        .byte   $00,$08,$0C,$A9,$04             ; 8126  +0,+8 shape#4 tile $A9
        .byte   $18,$E0,$0C,$D5,$04             ; 812B  +24,-32 shape#4 tile $D5
        .byte   $00,$08,$0C,$D6,$04             ; 8130  +0,+8 shape#4 tile $D6
        .byte   $00,$08,$0C,$D7,$04             ; 8135  +0,+8 shape#4 tile $D7
        .byte   $00,$08,$0C,$D8,$04             ; 813A  +0,+8 shape#4 tile $D8
        .byte   $00,$08,$1C,$D9,$04             ; 813F  +0,+8 shape#4 tile $D9  END
L_8144: .byte   $F0,$DC,$0C,$8A,$06             ; 8144  -16,-36 shape#6 tile $8A
        .byte   $00,$08,$0C,$8B,$06             ; 8149  +0,+8 shape#6 tile $8B
        .byte   $00,$08,$0C,$8C,$06             ; 814E  +0,+8 shape#6 tile $8C
        .byte   $00,$08,$0C,$8D,$06             ; 8153  +0,+8 shape#6 tile $8D
        .byte   $00,$08,$0C,$8E,$06             ; 8158  +0,+8 shape#6 tile $8E
        .byte   $00,$08,$0C,$8F,$06             ; 815D  +0,+8 shape#6 tile $8F
        .byte   $20,$D8,$0C,$CA,$06             ; 8162  +32,-40 shape#6 tile $CA
        .byte   $00,$08,$0C,$CB,$06             ; 8167  +0,+8 shape#6 tile $CB
        .byte   $00,$08,$0C,$CC,$06             ; 816C  +0,+8 shape#6 tile $CC
        .byte   $00,$08,$0C,$CD,$06             ; 8171  +0,+8 shape#6 tile $CD
        .byte   $00,$08,$0C,$CE,$06             ; 8176  +0,+8 shape#6 tile $CE
        .byte   $00,$08,$1C,$CF,$06             ; 817B  +0,+8 shape#6 tile $CF  END
L_8180: .byte   $00,$F8,$0C,$01,$05             ; 8180  +0,-8 shape#5 tile $01
        .byte   $00,$0C,$0D,$03,$02             ; 8185  +0,+12 shape#2 tile $03 pal^1
        .byte   $04,$08,$01,$14                 ; 818A  +4,+8 tile $14 pal^1
        .byte   $FC,$F4,$18                     ; 818E  -4,-12 skip  END
L_8191: .byte   $00,$F8,$0C,$21,$05             ; 8191  +0,-8 shape#5 tile $21
        .byte   $00,$10,$0D,$23,$05             ; 8196  +0,+16 shape#5 tile $23 pal^1
        .byte   $00,$F8,$18                     ; 819B  +0,-8 skip  END
L_819E: .byte   $00,$FC,$0D,$05,$05             ; 819E  +0,-4 shape#5 tile $05 pal^1
        .byte   $00,$0C,$0D,$07,$02             ; 81A3  +0,+12 shape#2 tile $07 pal^1
        .byte   $00,$F8,$18                     ; 81A8  +0,-8 skip  END
L_81AB: .byte   $F8,$00,$0D,$08,$05             ; 81AB  -8,+0 shape#5 tile $08 pal^1
        .byte   $10,$00,$0D,$28,$05             ; 81B0  +16,+0 shape#5 tile $28 pal^1
        .byte   $F8,$00,$18                     ; 81B5  -8,+0 skip  END
L_81B8: .byte   $F8,$00,$0D,$0A,$05             ; 81B8  -8,+0 shape#5 tile $0A pal^1
        .byte   $10,$00,$0D,$2A,$05             ; 81BD  +16,+0 shape#5 tile $2A pal^1
        .byte   $F8,$00,$18                     ; 81C2  -8,+0 skip  END
L_81C5: .byte   $00,$F8,$0C,$0C,$05             ; 81C5  +0,-8 shape#5 tile $0C
        .byte   $00,$10,$0D,$0E,$05             ; 81CA  +0,+16 shape#5 tile $0E pal^1
        .byte   $00,$F8,$18                     ; 81CF  +0,-8 skip  END
L_81D2: .byte   $00,$F8,$0C,$2C,$05             ; 81D2  +0,-8 shape#5 tile $2C
        .byte   $00,$10,$0C,$2E,$05             ; 81D7  +0,+16 shape#5 tile $2E
        .byte   $00,$F8,$18                     ; 81DC  +0,-8 skip  END
L_81DF: .byte   $00,$00,$1C,$26,$05             ; 81DF  +0,+0 shape#5 tile $26  END
L_81E4: .byte   $00,$00,$04                     ; 81E4  +0,+0 sub-def
        .addr   L_8191                          ; 81E7
        .byte   $F0,$00,$04                     ; 81E9  -16,+0 sub-def
        .addr   L_8180                          ; 81EC
        .byte   $20,$00,$54                     ; 81EE  +32,+0 sub-def hflip  END
        .addr   L_8180                          ; 81F1
L_81F3: .byte   $E8,$0C,$04                     ; 81F3  -24,+12 sub-def
        .addr   L_819E                          ; 81F6
        .byte   $30,$00,$44                     ; 81F8  +48,+0 sub-def hflip
        .addr   L_819E                          ; 81FB
        .byte   $E8,$04,$04                     ; 81FD  -24,+4 sub-def
        .addr   L_81B8                          ; 8200
        .byte   $00,$E8,$14                     ; 8202  +0,-24 sub-def  END
        .addr   L_81E4                          ; 8205
L_8207: .byte   $E8,$0C,$04                     ; 8207  -24,+12 sub-def
        .addr   L_819E                          ; 820A
        .byte   $30,$00,$44                     ; 820C  +48,+0 sub-def hflip
        .addr   L_819E                          ; 820F
        .byte   $E8,$03,$04                     ; 8211  -24,+3 sub-def
        .addr   L_81AB                          ; 8214
        .byte   $00,$E8,$14                     ; 8216  +0,-24 sub-def  END
        .addr   L_81E4                          ; 8219
L_821B: .byte   $00,$04,$04                     ; 821B  +0,+4 sub-def
        .addr   L_81D2                          ; 821E
        .byte   $F0,$00,$04                     ; 8220  -16,+0 sub-def
        .addr   L_81C5                          ; 8223
        .byte   $20,$00,$54                     ; 8225  +32,+0 sub-def hflip  END
        .addr   L_81C5                          ; 8228
L_822A: .byte   $F8,$08,$06                     ; 822A  -8,+8 sub-def pal^2
        .addr   L_81DF                          ; 822D
        .byte   $10,$00,$56                     ; 822F  +16,+0 sub-def hflip pal^2  END
        .addr   L_81DF                          ; 8232
L_8234: .byte   $00,$05,$1E,$40,$05             ; 8234  +0,+5 shape#5 tile $40 pal^2  END
L_8239: .byte   $00,$04,$12,$30                 ; 8239  +0,+4 tile $30 pal^2  END
L_823D: .byte   $00,$04,$10,$20                 ; 823D  +0,+4 tile $20  END
L_8241: .byte   $00,$04,$1C,$42,$05             ; 8241  +0,+4 shape#5 tile $42  END
L_8246: .byte   $00,$04,$1C,$44,$05             ; 8246  +0,+4 shape#5 tile $44  END
L_824B: .byte   $00,$00,$10,$50                 ; 824B  +0,+0 tile $50  END
L_824F: .byte   $00,$00,$10,$30                 ; 824F  +0,+0 tile $30  END
L_8253: .byte   $00,$00,$10,$40                 ; 8253  +0,+0 tile $40  END
L_8257: .byte   $00,$00,$50,$30                 ; 8257  +0,+0 tile $30 hflip  END
L_825B: .byte   $00,$00,$00,$0C                 ; 825B  +0,+0 tile $0C
        .byte   $F8,$F8,$00,$15                 ; 825F  -8,-8 tile $15
        .byte   $08,$00,$00,$10                 ; 8263  +8,+0 tile $10
        .byte   $08,$00,$10,$20                 ; 8267  +8,+0 tile $20  END
L_826B: .byte   $00,$00,$00,$0C                 ; 826B  +0,+0 tile $0C
        .byte   $FE,$F8,$00,$13                 ; 826F  -2,-8 tile $13
        .byte   $08,$00,$10,$23                 ; 8273  +8,+0 tile $23  END
L_8277: .byte   $00,$00,$54                     ; 8277  +0,+0 sub-def hflip  END
        .addr   L_826B                          ; 827A
L_827C: .byte   $00,$00,$54                     ; 827C  +0,+0 sub-def hflip  END
        .addr   L_825B                          ; 827F
L_8281: .byte   $00,$00,$00,$0C                 ; 8281  +0,+0 tile $0C
        .byte   $04,$F6,$00,$11                 ; 8285  +4,-10 tile $11
        .byte   $00,$08,$00,$12                 ; 8289  +0,+8 tile $12
        .byte   $08,$F8,$00,$21                 ; 828D  +8,-8 tile $21
        .byte   $00,$08,$00,$22                 ; 8291  +0,+8 tile $22
        .byte   $F8,$F0,$10,$16                 ; 8295  -8,-16 tile $16  END
L_8299: .byte   $00,$00,$00,$0C                 ; 8299  +0,+0 tile $0C
        .byte   $F8,$F0,$00,$17                 ; 829D  -8,-16 tile $17
        .byte   $08,$08,$00,$10                 ; 82A1  +8,+8 tile $10
        .byte   $08,$00,$10,$20                 ; 82A5  +8,+0 tile $20  END
L_82A9: .byte   $00,$00,$00,$0D                 ; 82A9  +0,+0 tile $0D
        .byte   $08,$F8,$00,$16                 ; 82AD  +8,-8 tile $16
        .byte   $00,$08,$00,$03                 ; 82B1  +0,+8 tile $03
        .byte   $00,$08,$10,$04                 ; 82B5  +0,+8 tile $04  END
L_82B9: .byte   $00,$00,$00,$0D                 ; 82B9  +0,+0 tile $0D
        .byte   $08,$FE,$00,$33                 ; 82BD  +8,-2 tile $33
        .byte   $00,$08,$10,$34                 ; 82C1  +0,+8 tile $34  END
L_82C5: .byte   $00,$00,$94                     ; 82C5  +0,+0 sub-def vflip  END
        .addr   L_82B9                          ; 82C8
L_82CA: .byte   $00,$00,$94                     ; 82CA  +0,+0 sub-def vflip  END
        .addr   L_82A9                          ; 82CD
L_82CF: .byte   $00,$00,$00,$0D                 ; 82CF  +0,+0 tile $0D
        .byte   $02,$04,$C0,$42                 ; 82D3  +2,+4 tile $42 hflip vflip
        .byte   $00,$08,$C0,$41                 ; 82D7  +0,+8 tile $41 hflip vflip
        .byte   $08,$F8,$C0,$32                 ; 82DB  +8,-8 tile $32 hflip vflip
        .byte   $00,$08,$C0,$31                 ; 82DF  +0,+8 tile $31 hflip vflip
        .byte   $08,$F8,$50,$15                 ; 82E3  +8,-8 tile $15 hflip  END
L_82E7: .byte   $00,$00,$00,$0D                 ; 82E7  +0,+0 tile $0D
        .byte   $10,$F8,$40,$17                 ; 82EB  +16,-8 tile $17 hflip
        .byte   $F8,$08,$00,$03                 ; 82EF  -8,+8 tile $03
        .byte   $00,$08,$10,$04                 ; 82F3  +0,+8 tile $04  END
L_82F7: .byte   $00,$00,$00,$0E                 ; 82F7  +0,+0 tile $0E
        .byte   $04,$FA,$00,$11                 ; 82FB  +4,-6 tile $11
        .byte   $00,$08,$00,$12                 ; 82FF  +0,+8 tile $12
        .byte   $08,$F8,$00,$21                 ; 8303  +8,-8 tile $21
        .byte   $00,$08,$00,$22                 ; 8307  +0,+8 tile $22
        .byte   $F1,$F3,$10,$17                 ; 830B  -15,-13 tile $17  END
L_830F: .byte   $00,$00,$00,$0F                 ; 830F  +0,+0 tile $0F
        .byte   $FA,$F4,$00,$31                 ; 8313  -6,-12 tile $31
        .byte   $00,$08,$00,$32                 ; 8317  +0,+8 tile $32
        .byte   $08,$F8,$00,$41                 ; 831B  +8,-8 tile $41
        .byte   $00,$08,$00,$42                 ; 831F  +0,+8 tile $42
        .byte   $F3,$07,$10,$18                 ; 8323  -13,+7 tile $18  END
L_8327: .byte   $00,$00,$40,$0C                 ; 8327  +0,+0 tile $0C hflip
        .byte   $F8,$F8,$40,$20                 ; 832B  -8,-8 tile $20 hflip
        .byte   $08,$00,$40,$02                 ; 832F  +8,+0 tile $02 hflip
        .byte   $08,$00,$40,$15                 ; 8333  +8,+0 tile $15 hflip
        .byte   $F0,$F8,$50,$01                 ; 8337  -16,-8 tile $01 hflip  END
L_833B: .byte   $F8,$00,$00,$14                 ; 833B  -8,+0 tile $14
        .byte   $10,$00,$10,$14                 ; 833F  +16,+0 tile $14  END
L_8343: .byte   $F8,$00,$00,$24                 ; 8343  -8,+0 tile $24
        .byte   $10,$00,$10,$24                 ; 8347  +16,+0 tile $24  END
L_834B: .byte   $00,$00,$04                     ; 834B  +0,+0 sub-def
        .addr   L_833B                          ; 834E
        .byte   $00,$08,$04                     ; 8350  +0,+8 sub-def
        .addr   L_8367                          ; 8353
        .byte   $F0,$00,$14                     ; 8355  -16,+0 sub-def  END
        .addr   L_8367                          ; 8358
L_835A: .byte   $00,$00,$04                     ; 835A  +0,+0 sub-def
        .addr   L_833B                          ; 835D
        .byte   $00,$08,$00,$4A                 ; 835F  +0,+8 tile $4A
        .byte   $F0,$00,$10,$4A                 ; 8363  -16,+0 tile $4A  END
L_8367: .byte   $00,$00,$00,$49                 ; 8367  +0,+0 tile $49
        .byte   $00,$08,$00,$4A                 ; 836B  +0,+8 tile $4A
        .byte   $00,$F8,$18                     ; 836F  +0,-8 skip  END
        .byte   $00                             ; 8372
L_8373: .byte   $00,$00,$1C,$4B,$04             ; 8373  +0,+0 shape#4 tile $4B  END
L_8378: .byte   $00,$00,$00,$48                 ; 8378  +0,+0 tile $48
        .byte   $00,$08,$00,$49                 ; 837C  +0,+8 tile $49
        .byte   $00,$08,$10,$4A                 ; 8380  +0,+8 tile $4A  END
L_8384: .byte   $00,$F4,$04                     ; 8384  +0,-12 sub-def
        .addr   L_8393                          ; 8387
        .byte   $F0,$08,$04                     ; 8389  -16,+8 sub-def
        .addr   L_8393                          ; 838C
        .byte   $F0,$08,$14                     ; 838E  -16,+8 sub-def  END
        .addr   L_8393                          ; 8391
L_8393: .byte   $00,$00,$20,$19                 ; 8393  +0,+0 tile $19
        .byte   $08,$00,$20,$19                 ; 8397  +8,+0 tile $19
        .byte   $08,$00,$30,$19                 ; 839B  +8,+0 tile $19  END
L_839F: .byte   $FC,$FC,$00,$35                 ; 839F  -4,-4 tile $35
        .byte   $08,$00,$00,$37                 ; 83A3  +8,+0 tile $37
        .byte   $F8,$08,$00,$36                 ; 83A7  -8,+8 tile $36
        .byte   $08,$00,$10,$38                 ; 83AB  +8,+0 tile $38  END
L_83AF: .byte   $FC,$FC,$00,$2C                 ; 83AF  -4,-4 tile $2C
        .byte   $08,$00,$00,$2E                 ; 83B3  +8,+0 tile $2E
        .byte   $F8,$08,$00,$2D                 ; 83B7  -8,+8 tile $2D
        .byte   $08,$00,$10,$2F                 ; 83BB  +8,+0 tile $2F  END
L_83BF: .byte   $00,$00,$10,$3F                 ; 83BF  +0,+0 tile $3F  END
L_83C3: .byte   $F8,$F8,$00,$39                 ; 83C3  -8,-8 tile $39
        .byte   $00,$08,$00,$3A                 ; 83C7  +0,+8 tile $3A
        .byte   $00,$08,$00,$3B                 ; 83CB  +0,+8 tile $3B
        .byte   $08,$F0,$00,$3C                 ; 83CF  +8,-16 tile $3C
        .byte   $00,$08,$00,$3D                 ; 83D3  +0,+8 tile $3D
        .byte   $00,$08,$00,$3E                 ; 83D7  +0,+8 tile $3E
        .byte   $08,$F0,$00,$45                 ; 83DB  +8,-16 tile $45
        .byte   $00,$08,$00,$46                 ; 83DF  +0,+8 tile $46
        .byte   $00,$08,$10,$47                 ; 83E3  +0,+8 tile $47  END
L_83E7: .byte   $F8,$00,$00,$40                 ; 83E7  -8,+0 tile $40
        .byte   $10,$00,$00,$43                 ; 83EB  +16,+0 tile $43
        .byte   $08,$00,$10,$53                 ; 83EF  +8,+0 tile $53  END
L_83F3: .byte   $F8,$00,$00,$40                 ; 83F3  -8,+0 tile $40
        .byte   $10,$00,$00,$43                 ; 83F7  +16,+0 tile $43
        .byte   $08,$00,$10,$44                 ; 83FB  +8,+0 tile $44  END
L_83FF: .byte   $F8,$04,$00,$30                 ; 83FF  -8,+4 tile $30
        .byte   $10,$00,$00,$30                 ; 8403  +16,+0 tile $30
        .byte   $F8,$FF,$54                     ; 8407  -8,-1 sub-def hflip  END
        .addr   L_825B                          ; 840A
L_840C: .byte   $F8,$04,$00,$30                 ; 840C  -8,+4 tile $30
        .byte   $0E,$02,$00,$30                 ; 8410  +14,+2 tile $30
        .byte   $FA,$FD,$54                     ; 8414  -6,-3 sub-def hflip  END
        .addr   L_825B                          ; 8417
L_8419: .byte   $F8,$04,$00,$30                 ; 8419  -8,+4 tile $30
        .byte   $0C,$04,$00,$30                 ; 841D  +12,+4 tile $30
        .byte   $FC,$FB,$54                     ; 8421  -4,-5 sub-def hflip  END
        .addr   L_825B                          ; 8424
L_8426: .byte   $F7,$03,$00,$30                 ; 8426  -9,+3 tile $30
        .byte   $0A,$06,$00,$30                 ; 842A  +10,+6 tile $30
        .byte   $FD,$F9,$54                     ; 842E  -3,-7 sub-def hflip  END
        .addr   L_830F                          ; 8431
L_8433: .byte   $F7,$01,$00,$30                 ; 8433  -9,+1 tile $30
        .byte   $08,$08,$00,$30                 ; 8437  +8,+8 tile $30
        .byte   $FF,$F9,$54                     ; 843B  -1,-7 sub-def hflip  END
        .addr   L_830F                          ; 843E
L_8440: .byte   $F7,$FF,$00,$30                 ; 8440  -9,-1 tile $30
        .byte   $06,$0A,$00,$30                 ; 8444  +6,+10 tile $30
        .byte   $01,$F9,$54                     ; 8448  +1,-7 sub-def hflip  END
        .addr   L_830F                          ; 844B
L_844D: .byte   $F8,$FC,$00,$30                 ; 844D  -8,-4 tile $30
        .byte   $04,$0C,$00,$30                 ; 8451  +4,+12 tile $30
        .byte   $01,$F8,$94                     ; 8455  +1,-8 sub-def vflip  END
        .addr   L_82A9                          ; 8458
L_845A: .byte   $FA,$FA,$00,$30                 ; 845A  -6,-6 tile $30
        .byte   $02,$0E,$00,$30                 ; 845E  +2,+14 tile $30
        .byte   $01,$F8,$94                     ; 8462  +1,-8 sub-def vflip  END
        .addr   L_82A9                          ; 8465
L_8467: .byte   $FC,$F8,$00,$30                 ; 8467  -4,-8 tile $30
        .byte   $00,$10,$00,$30                 ; 846B  +0,+16 tile $30
        .byte   $01,$F8,$94                     ; 846F  +1,-8 sub-def vflip  END
        .addr   L_82A9                          ; 8472
L_8474: .byte   $04,$08,$00,$30                 ; 8474  +4,+8 tile $30
        .byte   $00,$F0,$00,$30                 ; 8478  +0,-16 tile $30
        .byte   $FF,$08,$54                     ; 847C  -1,+8 sub-def hflip  END
        .addr   L_82A9                          ; 847F
L_8481: .byte   $04,$08,$00,$30                 ; 8481  +4,+8 tile $30
        .byte   $02,$F2,$00,$30                 ; 8485  +2,-14 tile $30
        .byte   $FD,$06,$54                     ; 8489  -3,+6 sub-def hflip  END
        .addr   L_82A9                          ; 848C
L_848E: .byte   $04,$08,$00,$30                 ; 848E  +4,+8 tile $30
        .byte   $04,$F4,$00,$30                 ; 8492  +4,-12 tile $30
        .byte   $FB,$04,$54                     ; 8496  -5,+4 sub-def hflip  END
        .addr   L_82A9                          ; 8499
L_849B: .byte   $03,$09,$00,$30                 ; 849B  +3,+9 tile $30
        .byte   $06,$F6,$00,$30                 ; 849F  +6,-10 tile $30
        .byte   $F9,$03,$54                     ; 84A3  -7,+3 sub-def hflip  END
        .addr   L_82F7                          ; 84A6
L_84A8: .byte   $01,$09,$00,$30                 ; 84A8  +1,+9 tile $30
        .byte   $08,$F8,$00,$30                 ; 84AC  +8,-8 tile $30
        .byte   $F9,$04,$54                     ; 84B0  -7,+4 sub-def hflip  END
        .addr   L_82F7                          ; 84B3
L_84B5: .byte   $FF,$09,$00,$30                 ; 84B5  -1,+9 tile $30
        .byte   $0A,$FA,$00,$30                 ; 84B9  +10,-6 tile $30
        .byte   $F9,$FF,$54                     ; 84BD  -7,-1 sub-def hflip  END
        .addr   L_82F7                          ; 84C0
L_84C2: .byte   $FC,$08,$00,$30                 ; 84C2  -4,+8 tile $30
        .byte   $0C,$FC,$00,$30                 ; 84C6  +12,-4 tile $30
        .byte   $F8,$FF,$54                     ; 84CA  -8,-1 sub-def hflip  END
        .addr   L_825B                          ; 84CD
L_84CF: .byte   $FA,$06,$00,$30                 ; 84CF  -6,+6 tile $30
        .byte   $0E,$FE,$00,$30                 ; 84D3  +14,-2 tile $30
        .byte   $F8,$FF,$54                     ; 84D7  -8,-1 sub-def hflip  END
        .addr   L_825B                          ; 84DA
L_84DC: .byte   $F8,$04,$00,$30                 ; 84DC  -8,+4 tile $30
        .byte   $10,$00,$00,$30                 ; 84E0  +16,+0 tile $30
        .byte   $F8,$FF,$54                     ; 84E4  -8,-1 sub-def hflip  END
        .addr   L_825B                          ; 84E7
L_84E9: .byte   $F8,$04,$00,$30                 ; 84E9  -8,+4 tile $30
        .byte   $10,$00,$00,$30                 ; 84ED  +16,+0 tile $30
        .byte   $F8,$FF,$54                     ; 84F1  -8,-1 sub-def hflip  END
        .addr   L_825B                          ; 84F4
L_84F6: .byte   $FA,$06,$00,$30                 ; 84F6  -6,+6 tile $30
        .byte   $0F,$FB,$00,$30                 ; 84FA  +15,-5 tile $30
        .byte   $F7,$02,$54                     ; 84FE  -9,+2 sub-def hflip  END
        .addr   L_825B                          ; 8501
L_8503: .byte   $FB,$07,$00,$30                 ; 8503  -5,+7 tile $30
        .byte   $0E,$F9,$00,$30                 ; 8507  +14,-7 tile $30
        .byte   $F7,$03,$54                     ; 850B  -9,+3 sub-def hflip  END
        .addr   L_825B                          ; 850E
L_8510: .byte   $FC,$08,$00,$30                 ; 8510  -4,+8 tile $30
        .byte   $0D,$F7,$00,$30                 ; 8514  +13,-9 tile $30
        .byte   $F9,$03,$54                     ; 8518  -7,+3 sub-def hflip  END
        .addr   L_82F7                          ; 851B
L_851D: .byte   $FD,$08,$00,$30                 ; 851D  -3,+8 tile $30
        .byte   $0B,$F5,$00,$30                 ; 8521  +11,-11 tile $30
        .byte   $FA,$05,$54                     ; 8525  -6,+5 sub-def hflip  END
        .addr   L_82F7                          ; 8528
L_852A: .byte   $FF,$09,$00,$30                 ; 852A  -1,+9 tile $30
        .byte   $09,$F3,$00,$30                 ; 852E  +9,-13 tile $30
        .byte   $FA,$06,$54                     ; 8532  -6,+6 sub-def hflip  END
        .addr   L_82F7                          ; 8535
L_8537: .byte   $00,$09,$00,$30                 ; 8537  +0,+9 tile $30
        .byte   $07,$F2,$00,$30                 ; 853B  +7,-14 tile $30
        .byte   $FC,$05,$54                     ; 853F  -4,+5 sub-def hflip  END
        .addr   L_82A9                          ; 8542
L_8544: .byte   $01,$09,$00,$30                 ; 8544  +1,+9 tile $30
        .byte   $05,$F1,$00,$30                 ; 8548  +5,-15 tile $30
        .byte   $FD,$06,$54                     ; 854C  -3,+6 sub-def hflip  END
        .addr   L_82A9                          ; 854F
L_8551: .byte   $04,$08,$00,$30                 ; 8551  +4,+8 tile $30
        .byte   $00,$F0,$00,$30                 ; 8555  +0,-16 tile $30
        .byte   $FF,$08,$54                     ; 8559  -1,+8 sub-def hflip  END
        .addr   L_82A9                          ; 855C
L_855E: .byte   $FC,$08,$00,$30                 ; 855E  -4,+8 tile $30
        .byte   $00,$F0,$00,$30                 ; 8562  +0,-16 tile $30
        .byte   $01,$08,$14                     ; 8566  +1,+8 sub-def  END
        .addr   L_82A9                          ; 8569
L_856B: .byte   $FA,$06,$00,$30                 ; 856B  -6,+6 tile $30
        .byte   $05,$F1,$00,$30                 ; 856F  +5,-15 tile $30
        .byte   $FE,$09,$14                     ; 8573  -2,+9 sub-def  END
        .addr   L_82A9                          ; 8576
L_8578: .byte   $F9,$05,$00,$30                 ; 8578  -7,+5 tile $30
        .byte   $07,$F2,$00,$30                 ; 857C  +7,-14 tile $30
        .byte   $FD,$09,$14                     ; 8580  -3,+9 sub-def  END
        .addr   L_82A9                          ; 8583
L_8585: .byte   $F8,$04,$00,$30                 ; 8585  -8,+4 tile $30
        .byte   $09,$F3,$00,$30                 ; 8589  +9,-13 tile $30
        .byte   $FD,$07,$D4                     ; 858D  -3,+7 sub-def hflip vflip  END
        .addr   L_830F                          ; 8590
L_8592: .byte   $F8,$03,$00,$30                 ; 8592  -8,+3 tile $30
        .byte   $0B,$F5,$00,$30                 ; 8596  +11,-11 tile $30
        .byte   $FB,$06,$D4                     ; 859A  -5,+6 sub-def hflip vflip  END
        .addr   L_830F                          ; 859D
L_859F: .byte   $F7,$01,$00,$30                 ; 859F  -9,+1 tile $30
        .byte   $0D,$F7,$00,$30                 ; 85A3  +13,-9 tile $30
        .byte   $FA,$06,$D4                     ; 85A7  -6,+6 sub-def hflip vflip  END
        .addr   L_830F                          ; 85AA
L_85AC: .byte   $F7,$00,$00,$30                 ; 85AC  -9,+0 tile $30
        .byte   $0E,$F9,$00,$30                 ; 85B0  +14,-7 tile $30
        .byte   $FB,$04,$D4                     ; 85B4  -5,+4 sub-def hflip vflip  END
        .addr   L_825B                          ; 85B7
L_85B9: .byte   $F7,$FF,$00,$30                 ; 85B9  -9,-1 tile $30
        .byte   $0F,$FB,$00,$30                 ; 85BD  +15,-5 tile $30
        .byte   $FA,$03,$D4                     ; 85C1  -6,+3 sub-def hflip vflip  END
        .addr   L_825B                          ; 85C4
L_85C6: .byte   $F8,$FC,$00,$30                 ; 85C6  -8,-4 tile $30
        .byte   $10,$00,$00,$30                 ; 85CA  +16,+0 tile $30
        .byte   $F8,$01,$D4                     ; 85CE  -8,+1 sub-def hflip vflip  END
        .addr   L_825B                          ; 85D1
L_85D3: .byte   $00,$FC,$00,$4E                 ; 85D3  +0,-4 tile $4E
        .byte   $00,$08,$10,$4F                 ; 85D7  +0,+8 tile $4F  END
L_85DB: .byte   $00,$FC,$00,$05                 ; 85DB  +0,-4 tile $05
        .byte   $00,$08,$10,$06                 ; 85DF  +0,+8 tile $06  END
L_85E3: .byte   $00,$FC,$00,$07                 ; 85E3  +0,-4 tile $07
        .byte   $00,$08,$10,$08                 ; 85E7  +0,+8 tile $08  END
L_85EB: .byte   $00,$FC,$00,$05                 ; 85EB  +0,-4 tile $05
        .byte   $00,$08,$10,$09                 ; 85EF  +0,+8 tile $09  END
L_85F3: .byte   $00,$FC,$00,$07                 ; 85F3  +0,-4 tile $07
        .byte   $00,$08,$10,$08                 ; 85F7  +0,+8 tile $08  END
L_85FB: .byte   $FC,$00,$00,$26                 ; 85FB  -4,+0 tile $26
        .byte   $08,$00,$10,$27                 ; 85FF  +8,+0 tile $27  END
L_8603: .byte   $FC,$00,$00,$28                 ; 8603  -4,+0 tile $28
        .byte   $08,$00,$10,$29                 ; 8607  +8,+0 tile $29  END
L_860B: .byte   $FC,$FC,$00,$1A                 ; 860B  -4,-4 tile $1A
        .byte   $08,$00,$00,$2A                 ; 860F  +8,+0 tile $2A
        .byte   $F8,$08,$00,$1B                 ; 8613  -8,+8 tile $1B
        .byte   $08,$00,$10,$2B                 ; 8617  +8,+0 tile $2B  END
L_861B: .byte   $00,$FC,$0C,$A4,$02             ; 861B  +0,-4 shape#2 tile $A4
        .byte   $00,$08,$1C,$A5,$02             ; 8620  +0,+8 shape#2 tile $A5  END
L_8625: .byte   $00,$FC,$0C,$A4,$02             ; 8625  +0,-4 shape#2 tile $A4
        .byte   $00,$08,$0C,$A6,$02             ; 862A  +0,+8 shape#2 tile $A6
        .byte   $00,$08,$1C,$A7,$02             ; 862F  +0,+8 shape#2 tile $A7  END
L_8634: .byte   $00,$FC,$0C,$E9,$02             ; 8634  +0,-4 shape#2 tile $E9
        .byte   $00,$08,$1C,$EA,$02             ; 8639  +0,+8 shape#2 tile $EA  END
L_863E: .byte   $00,$FD,$0C,$E9,$02             ; 863E  +0,-3 shape#2 tile $E9
        .byte   $00,$08,$1C,$EB,$02             ; 8643  +0,+8 shape#2 tile $EB  END
L_8648: .byte   $00,$FC,$0C,$EC,$02             ; 8648  +0,-4 shape#2 tile $EC
        .byte   $00,$08,$1C,$ED,$02             ; 864D  +0,+8 shape#2 tile $ED  END
L_8652: .byte   $FB,$FC,$00,$EE                 ; 8652  -5,-4 tile $EE
        .byte   $08,$00,$00,$FC                 ; 8656  +8,+0 tile $FC
        .byte   $F8,$08,$00,$EF                 ; 865A  -8,+8 tile $EF
        .byte   $08,$00,$10,$FD                 ; 865E  +8,+0 tile $FD  END
L_8662: .byte   $00,$FC,$0C,$A8,$02             ; 8662  +0,-4 shape#2 tile $A8
        .byte   $00,$08,$1C,$A9,$02             ; 8667  +0,+8 shape#2 tile $A9  END
L_866C: .byte   $00,$FC,$0C,$A8,$02             ; 866C  +0,-4 shape#2 tile $A8
        .byte   $00,$08,$1C,$AA,$02             ; 8671  +0,+8 shape#2 tile $AA  END
L_8676: .byte   $00,$F8,$0C,$E0,$02             ; 8676  +0,-8 shape#2 tile $E0
        .byte   $00,$08,$0C,$E1,$02             ; 867B  +0,+8 shape#2 tile $E1
        .byte   $00,$08,$1C,$E2,$02             ; 8680  +0,+8 shape#2 tile $E2  END
L_8685: .byte   $00,$F8,$0C,$E0,$02             ; 8685  +0,-8 shape#2 tile $E0
        .byte   $00,$08,$0C,$E1,$02             ; 868A  +0,+8 shape#2 tile $E1
        .byte   $00,$08,$1C,$E3,$02             ; 868F  +0,+8 shape#2 tile $E3  END
L_8694: .byte   $00,$F8,$0C,$CB,$02             ; 8694  +0,-8 shape#2 tile $CB
        .byte   $00,$08,$0C,$CC,$02             ; 8699  +0,+8 shape#2 tile $CC
        .byte   $00,$08,$10,$DF                 ; 869E  +0,+8 tile $DF  END
L_86A2: .byte   $00,$F8,$0C,$CD,$02             ; 86A2  +0,-8 shape#2 tile $CD
        .byte   $00,$08,$0C,$CE,$02             ; 86A7  +0,+8 shape#2 tile $CE
        .byte   $00,$08,$10,$DF                 ; 86AC  +0,+8 tile $DF  END
L_86B0: .byte   $00,$FC,$0C,$E0,$02             ; 86B0  +0,-4 shape#2 tile $E0
        .byte   $00,$08,$1C,$E2,$02             ; 86B5  +0,+8 shape#2 tile $E2  END
L_86BA: .byte   $00,$FC,$0C,$E1,$02             ; 86BA  +0,-4 shape#2 tile $E1
        .byte   $00,$08,$1C,$E2,$02             ; 86BF  +0,+8 shape#2 tile $E2  END
L_86C4: .byte   $00,$F4,$0C,$AC,$02             ; 86C4  +0,-12 shape#2 tile $AC
        .byte   $00,$08,$0C,$AD,$02             ; 86C9  +0,+8 shape#2 tile $AD
        .byte   $00,$08,$1C,$AF,$02             ; 86CE  +0,+8 shape#2 tile $AF  END
L_86D3: .byte   $00,$FC,$0C,$AE,$02             ; 86D3  +0,-4 shape#2 tile $AE
        .byte   $00,$08,$1C,$AF,$02             ; 86D8  +0,+8 shape#2 tile $AF  END
L_86DD: .byte   $00,$FC,$0C,$C3,$02             ; 86DD  +0,-4 shape#2 tile $C3
        .byte   $00,$08,$1C,$C4,$02             ; 86E2  +0,+8 shape#2 tile $C4  END
L_86E7: .byte   $FC,$FC,$00,$C3                 ; 86E7  -4,-4 tile $C3
        .byte   $08,$00,$00,$E4                 ; 86EB  +8,+0 tile $E4
        .byte   $FC,$08,$1C,$C4,$02             ; 86EF  -4,+8 shape#2 tile $C4  END
L_86F4: .byte   $00,$FC,$0C,$C5,$04             ; 86F4  +0,-4 shape#4 tile $C5
        .byte   $00,$08,$1C,$C6,$04             ; 86F9  +0,+8 shape#4 tile $C6  END
L_86FE: .byte   $00,$FC,$0C,$C7,$04             ; 86FE  +0,-4 shape#4 tile $C7
        .byte   $00,$08,$1C,$C8,$04             ; 8703  +0,+8 shape#4 tile $C8  END
L_8708: .byte   $00,$F8,$0C,$C0,$02             ; 8708  +0,-8 shape#2 tile $C0
        .byte   $00,$08,$0C,$C1,$02             ; 870D  +0,+8 shape#2 tile $C1
        .byte   $00,$08,$0C,$C2,$02             ; 8712  +0,+8 shape#2 tile $C2
        .byte   $F4,$F8,$10,$C5                 ; 8717  -12,-8 tile $C5  END
L_871B: .byte   $00,$F9,$0C,$C0,$02             ; 871B  +0,-7 shape#2 tile $C0
        .byte   $00,$08,$0C,$C3,$02             ; 8720  +0,+8 shape#2 tile $C3
        .byte   $00,$08,$0C,$C4,$02             ; 8725  +0,+8 shape#2 tile $C4
        .byte   $F4,$F8,$10,$C5                 ; 872A  -12,-8 tile $C5  END
L_872E: .byte   $FC,$FC,$00,$FF                 ; 872E  -4,-4 tile $FF
        .byte   $08,$00,$40,$A1                 ; 8732  +8,+0 tile $A1 hflip
        .byte   $F8,$08,$80,$A1                 ; 8736  -8,+8 tile $A1 vflip
        .byte   $08,$00,$D0,$A1                 ; 873A  +8,+0 tile $A1 hflip vflip  END
L_873E: .byte   $00,$FC,$0C,$A3,$02             ; 873E  +0,-4 shape#2 tile $A3
        .byte   $00,$08,$9C,$A3,$02             ; 8743  +0,+8 shape#2 tile $A3 vflip  END
L_8748: .byte   $00,$FC,$0C,$A2,$02             ; 8748  +0,-4 shape#2 tile $A2
        .byte   $00,$08,$9C,$A2,$02             ; 874D  +0,+8 shape#2 tile $A2 vflip  END
L_8752: .byte   $00,$FC,$0C,$A0,$02             ; 8752  +0,-4 shape#2 tile $A0
        .byte   $00,$08,$9C,$A0,$02             ; 8757  +0,+8 shape#2 tile $A0 vflip  END
L_875C: .byte   $FC,$FC,$00,$B1                 ; 875C  -4,-4 tile $B1
        .byte   $08,$00,$40,$B1                 ; 8760  +8,+0 tile $B1 hflip
        .byte   $F8,$08,$80,$B1                 ; 8764  -8,+8 tile $B1 vflip
        .byte   $08,$00,$D0,$B1                 ; 8768  +8,+0 tile $B1 hflip vflip  END
L_876C: .byte   $00,$00,$54                     ; 876C  +0,+0 sub-def hflip  END
        .addr   L_8752                          ; 876F
L_8771: .byte   $00,$00,$54                     ; 8771  +0,+0 sub-def hflip  END
        .addr   L_8748                          ; 8774
L_8776: .byte   $00,$00,$54                     ; 8776  +0,+0 sub-def hflip  END
        .addr   L_873E                          ; 8779
L_877B: .byte   $00,$00,$1C,$C9,$02             ; 877B  +0,+0 shape#2 tile $C9  END
L_8780: .byte   $00,$00,$1C,$CA,$02             ; 8780  +0,+0 shape#2 tile $CA  END
L_8785: .byte   $00,$F8,$0C,$AB,$02             ; 8785  +0,-8 shape#2 tile $AB
        .byte   $00,$08,$0C,$AC,$02             ; 878A  +0,+8 shape#2 tile $AC
        .byte   $00,$08,$1C,$AD,$02             ; 878F  +0,+8 shape#2 tile $AD  END
L_8794: .byte   $00,$F8,$0C,$AB,$02             ; 8794  +0,-8 shape#2 tile $AB
        .byte   $00,$08,$0C,$AC,$02             ; 8799  +0,+8 shape#2 tile $AC
        .byte   $00,$08,$1C,$AE,$02             ; 879E  +0,+8 shape#2 tile $AE  END
L_87A3: .byte   $00,$F8,$0C,$AB,$02             ; 87A3  +0,-8 shape#2 tile $AB
        .byte   $00,$08,$0C,$AC,$02             ; 87A8  +0,+8 shape#2 tile $AC
        .byte   $00,$08,$1C,$AF,$02             ; 87AD  +0,+8 shape#2 tile $AF  END
L_87B2: .byte   $00,$FC,$0C,$A8,$02             ; 87B2  +0,-4 shape#2 tile $A8
        .byte   $00,$08,$1C,$A9,$02             ; 87B7  +0,+8 shape#2 tile $A9  END
L_87BC: .byte   $00,$FC,$0C,$A8,$02             ; 87BC  +0,-4 shape#2 tile $A8
        .byte   $FC,$08,$00,$AA                 ; 87C1  -4,+8 tile $AA
        .byte   $08,$00,$10,$B9                 ; 87C5  +8,+0 tile $B9  END
L_87C9: .byte   $00,$FC,$0C,$A8,$02             ; 87C9  +0,-4 shape#2 tile $A8
        .byte   $FC,$08,$00,$BA                 ; 87CE  -4,+8 tile $BA
        .byte   $08,$00,$10,$B9                 ; 87D2  +8,+0 tile $B9  END
L_87D6: .byte   $00,$FC,$0C,$C6,$02             ; 87D6  +0,-4 shape#2 tile $C6
        .byte   $00,$08,$9C,$C6,$02             ; 87DB  +0,+8 shape#2 tile $C6 vflip  END
L_87E0: .byte   $00,$FC,$0C,$C7,$02             ; 87E0  +0,-4 shape#2 tile $C7
        .byte   $00,$08,$1C,$C8,$02             ; 87E5  +0,+8 shape#2 tile $C8  END
L_87EA: .byte   $00,$00,$1C,$E8,$02             ; 87EA  +0,+0 shape#2 tile $E8  END
L_87EF: .byte   $00,$FC,$8C,$C8,$02             ; 87EF  +0,-4 shape#2 tile $C8 vflip
        .byte   $00,$08,$9C,$C7,$02             ; 87F4  +0,+8 shape#2 tile $C7 vflip  END
L_87F9: .byte   $FC,$FC,$0C,$CC,$02             ; 87F9  -4,-4 shape#2 tile $CC
        .byte   $0C,$00,$00,$CE                 ; 87FE  +12,+0 tile $CE
        .byte   $F4,$08,$0C,$CD,$02             ; 8802  -12,+8 shape#2 tile $CD
        .byte   $04,$08,$10,$DE                 ; 8807  +4,+8 tile $DE  END
L_880B: .byte   $FC,$FC,$0C,$CC,$02             ; 880B  -4,-4 shape#2 tile $CC
        .byte   $0C,$00,$00,$CE                 ; 8810  +12,+0 tile $CE
        .byte   $F4,$08,$0C,$CD,$02             ; 8814  -12,+8 shape#2 tile $CD
        .byte   $0C,$00,$10,$CF                 ; 8819  +12,+0 tile $CF  END
L_881D: .byte   $00,$00,$0C,$CB,$05             ; 881D  +0,+0 shape#5 tile $CB
L_8822: .byte   $00,$FC,$0C,$C9,$04             ; 8822  +0,-4 shape#4 tile $C9
        .byte   $00,$08,$1C,$CA,$04             ; 8827  +0,+8 shape#4 tile $CA  END
L_882C: .byte   $00,$FC,$0C,$C9,$04             ; 882C  +0,-4 shape#4 tile $C9
        .byte   $F8,$08,$00,$CA                 ; 8831  -8,+8 tile $CA
        .byte   $10,$00,$10,$EA                 ; 8835  +16,+0 tile $EA  END
L_8839: .byte   $00,$00,$1C,$C0,$02             ; 8839  +0,+0 shape#2 tile $C0  END
L_883E: .byte   $00,$00,$1C,$C1,$02             ; 883E  +0,+0 shape#2 tile $C1  END
L_8843: .byte   $00,$00,$1C,$C2,$02             ; 8843  +0,+0 shape#2 tile $C2  END
L_8848: .byte   $00,$00,$1C,$E4,$05             ; 8848  +0,+0 shape#5 tile $E4  END
L_884D: .byte   $00,$00,$1C,$E6,$05             ; 884D  +0,+0 shape#5 tile $E6  END
L_8852: .byte   $FC,$FF,$00,$C6                 ; 8852  -4,-1 tile $C6
        .byte   $08,$01,$10,$D5                 ; 8856  +8,+1 tile $D5  END
L_885A: .byte   $FC,$FF,$00,$C6                 ; 885A  -4,-1 tile $C6
        .byte   $08,$01,$10,$D6                 ; 885E  +8,+1 tile $D6  END
L_8862: .byte   $00,$00,$1C,$C7,$02             ; 8862  +0,+0 shape#2 tile $C7  END
L_8867: .byte   $00,$00,$1C,$E0,$05             ; 8867  +0,+0 shape#5 tile $E0  END
L_886C: .byte   $00,$00,$1C,$E2,$05             ; 886C  +0,+0 shape#5 tile $E2  END
L_8871: .byte   $00,$00,$1C,$E4,$05             ; 8871  +0,+0 shape#5 tile $E4  END
L_8876: .byte   $00,$FC,$0C,$D8,$04             ; 8876  +0,-4 shape#4 tile $D8
        .byte   $00,$08,$1C,$D9,$04             ; 887B  +0,+8 shape#4 tile $D9  END
L_8880: .byte   $00,$FC,$0C,$D8,$04             ; 8880  +0,-4 shape#4 tile $D8
        .byte   $00,$08,$1C,$DA,$04             ; 8885  +0,+8 shape#4 tile $DA  END
L_888A: .byte   $00,$FE,$0C,$AC,$02             ; 888A  +0,-2 shape#2 tile $AC
        .byte   $00,$08,$1C,$AF,$02             ; 888F  +0,+8 shape#2 tile $AF  END
L_8894: .byte   $00,$FD,$0C,$AC,$02             ; 8894  +0,-3 shape#2 tile $AC
        .byte   $00,$08,$1C,$AE,$02             ; 8899  +0,+8 shape#2 tile $AE  END
L_889E: .byte   $00,$FC,$0C,$AC,$02             ; 889E  +0,-4 shape#2 tile $AC
        .byte   $00,$08,$1C,$AD,$02             ; 88A3  +0,+8 shape#2 tile $AD  END
L_88A8: .byte   $00,$FD,$0C,$AB,$02             ; 88A8  +0,-3 shape#2 tile $AB
        .byte   $00,$08,$1C,$AE,$02             ; 88AD  +0,+8 shape#2 tile $AE  END
L_88B2: .byte   $04,$FC,$0C,$A3,$05             ; 88B2  +4,-4 shape#5 tile $A3
        .byte   $F4,$FC,$00,$A5                 ; 88B7  -12,-4 tile $A5
        .byte   $00,$08,$00,$A6                 ; 88BB  +0,+8 tile $A6
        .byte   $00,$08,$10,$A7                 ; 88BF  +0,+8 tile $A7  END
L_88C3: .byte   $04,$FC,$0C,$A3,$05             ; 88C3  +4,-4 shape#5 tile $A3
        .byte   $F4,$FC,$00,$A5                 ; 88C8  -12,-4 tile $A5
        .byte   $00,$08,$00,$B6                 ; 88CC  +0,+8 tile $B6
        .byte   $00,$08,$10,$A7                 ; 88D0  +0,+8 tile $A7  END
L_88D4: .byte   $0C,$00,$1C,$C3,$01             ; 88D4  +12,+0 shape#1 tile $C3  END
L_88D9: .byte   $0C,$00,$1C,$C4,$01             ; 88D9  +12,+0 shape#1 tile $C4  END
L_88DE: .byte   $0C,$00,$1C,$C5,$01             ; 88DE  +12,+0 shape#1 tile $C5  END
L_88E3: .byte   $F8,$FC,$00,$EB                 ; 88E3  -8,-4 tile $EB
        .byte   $00,$08,$00,$EC                 ; 88E7  +0,+8 tile $EC
        .byte   $10,$00,$00,$EE                 ; 88EB  +16,+0 tile $EE
        .byte   $00,$F8,$10,$ED                 ; 88EF  +0,-8 tile $ED  END
L_88F3: .byte   $00,$00,$1C,$80,$05             ; 88F3  +0,+0 shape#5 tile $80  END
L_88F8: .byte   $00,$00,$1C,$82,$07             ; 88F8  +0,+0 shape#7 tile $82  END
L_88FD: .byte   $00,$00,$1C,$84,$05             ; 88FD  +0,+0 shape#5 tile $84  END
L_8902: .byte   $00,$00,$1C,$86,$05             ; 8902  +0,+0 shape#5 tile $86  END
; #endregion

; ----------------------------------------------------------------------------
; #region Metasprite_Table_Tank — 354 bytes
L_8907: .addr   L_8112                          ; 8907
        .addr   L_8144                          ; 8909
        .addr   L_8785                          ; 890B
        .addr   L_8794                          ; 890D
        .addr   L_87A3                          ; 890F
        .addr   L_87B2                          ; 8911
        .addr   L_87BC                          ; 8913
        .addr   L_87C9                          ; 8915
        .addr   L_87D6                          ; 8917
        .addr   L_87E0                          ; 8919
        .addr   L_87EA                          ; 891B
        .addr   L_87EF                          ; 891D
        .addr   L_87F9                          ; 891F
        .addr   L_880B                          ; 8921
        .addr   L_881D                          ; 8923
        .addr   L_8822                          ; 8925
        .addr   L_882C                          ; 8927
        .addr   L_8839                          ; 8929
        .addr   L_883E                          ; 892B
        .addr   L_8843                          ; 892D
        .addr   L_88F3                          ; 892F
        .addr   L_88F8                          ; 8931
        .addr   L_88FD                          ; 8933
        .addr   L_8902                          ; 8935
        .addr   L_8907                          ; 8937
        .addr   L_8907                          ; 8939
        .addr   L_8907                          ; 893B
        .addr   L_8907                          ; 893D
        .addr   L_824B                          ; 893F
        .addr   L_824F                          ; 8941
        .addr   L_8253                          ; 8943
        .addr   L_8257                          ; 8945
        .addr   L_825B                          ; 8947
        .addr   L_826B                          ; 8949
        .addr   L_8277                          ; 894B
        .addr   L_827C                          ; 894D
        .addr   L_8281                          ; 894F
        .addr   L_8299                          ; 8951
        .addr   L_82A9                          ; 8953
        .addr   L_82B9                          ; 8955
        .addr   L_82C5                          ; 8957
        .addr   L_82CA                          ; 8959
        .addr   L_82CF                          ; 895B
        .addr   L_82E7                          ; 895D
        .addr   L_833B                          ; 895F
        .addr   L_8343                          ; 8961
        .addr   L_8343                          ; 8963
        .addr   L_861B                          ; 8965
        .addr   L_8625                          ; 8967
        .addr   L_8384                          ; 8969
        .addr   L_8327                          ; 896B
        .addr   L_8393                          ; 896D
        .addr   L_839F                          ; 896F
        .addr   L_83AF                          ; 8971
        .addr   L_83BF                          ; 8973
        .addr   L_83C3                          ; 8975
        .addr   L_83E7                          ; 8977
        .addr   L_83F3                          ; 8979
        .addr   L_83FF                          ; 897B
        .addr   L_840C                          ; 897D
        .addr   L_8419                          ; 897F
        .addr   L_8426                          ; 8981
        .addr   L_8433                          ; 8983
        .addr   L_8440                          ; 8985
        .addr   L_844D                          ; 8987
        .addr   L_845A                          ; 8989
        .addr   L_8467                          ; 898B
        .addr   L_8474                          ; 898D
        .addr   L_8481                          ; 898F
        .addr   L_848E                          ; 8991
        .addr   L_849B                          ; 8993
        .addr   L_84A8                          ; 8995
        .addr   L_84B5                          ; 8997
        .addr   L_84C2                          ; 8999
        .addr   L_84CF                          ; 899B
        .addr   L_84DC                          ; 899D
        .addr   L_84E9                          ; 899F
        .addr   L_84F6                          ; 89A1
        .addr   L_8503                          ; 89A3
        .addr   L_8510                          ; 89A5
        .addr   L_851D                          ; 89A7
        .addr   L_852A                          ; 89A9
        .addr   L_8537                          ; 89AB
        .addr   L_8544                          ; 89AD
        .addr   L_8551                          ; 89AF
        .addr   L_855E                          ; 89B1
        .addr   L_856B                          ; 89B3
        .addr   L_8578                          ; 89B5
        .addr   L_8585                          ; 89B7
        .addr   L_8592                          ; 89B9
        .addr   L_859F                          ; 89BB
        .addr   L_85AC                          ; 89BD
        .addr   L_85B9                          ; 89BF
        .addr   L_85C6                          ; 89C1
        .addr   L_82F7                          ; 89C3
        .addr   L_830F                          ; 89C5
        .addr   L_85D3                          ; 89C7
        .addr   L_85DB                          ; 89C9
        .addr   L_85E3                          ; 89CB
        .addr   L_85EB                          ; 89CD
        .addr   L_85F3                          ; 89CF
        .addr   L_85FB                          ; 89D1
        .addr   L_8603                          ; 89D3
        .addr   L_860B                          ; 89D5
        .addr   L_8634                          ; 89D7
        .addr   L_863E                          ; 89D9
        .addr   L_8648                          ; 89DB
        .addr   L_8652                          ; 89DD
        .addr   L_8662                          ; 89DF
        .addr   L_866C                          ; 89E1
        .addr   L_8676                          ; 89E3
        .addr   L_8685                          ; 89E5
        .addr   L_8694                          ; 89E7
        .addr   L_86A2                          ; 89E9
        .addr   L_86B0                          ; 89EB
        .addr   L_86BA                          ; 89ED
        .addr   L_86C4                          ; 89EF
        .addr   L_86D3                          ; 89F1
        .addr   L_86DD                          ; 89F3
        .addr   L_86E7                          ; 89F5
        .addr   L_86F4                          ; 89F7
        .addr   L_86FE                          ; 89F9
        .addr   L_834B                          ; 89FB
        .addr   L_835A                          ; 89FD
        .addr   L_8373                          ; 89FF
        .addr   L_8378                          ; 8A01
        .addr   L_8708                          ; 8A03
        .addr   L_871B                          ; 8A05
        .addr   L_872E                          ; 8A07
        .addr   L_873E                          ; 8A09
        .addr   L_8748                          ; 8A0B
        .addr   L_8752                          ; 8A0D
        .addr   L_875C                          ; 8A0F
        .addr   L_876C                          ; 8A11
        .addr   L_8771                          ; 8A13
        .addr   L_8776                          ; 8A15
        .addr   L_877B                          ; 8A17
        .addr   L_8780                          ; 8A19
        .addr   L_8367                          ; 8A1B
        .addr   L_8191                          ; 8A1D
        .addr   L_819E                          ; 8A1F
        .addr   L_81AB                          ; 8A21
        .addr   L_81B8                          ; 8A23
        .addr   L_81C5                          ; 8A25
        .addr   L_81D2                          ; 8A27
        .addr   L_81DF                          ; 8A29
        .addr   L_81E4                          ; 8A2B
        .addr   L_81F3                          ; 8A2D
        .addr   L_8207                          ; 8A2F
        .addr   L_821B                          ; 8A31
        .addr   L_822A                          ; 8A33
        .addr   L_8234                          ; 8A35
        .addr   L_8239                          ; 8A37
        .addr   L_823D                          ; 8A39
        .addr   L_8241                          ; 8A3B
        .addr   L_8246                          ; 8A3D
        .addr   L_8180                          ; 8A3F
        .addr   L_8848                          ; 8A41
        .addr   L_884D                          ; 8A43
        .addr   L_8852                          ; 8A45
        .addr   L_885A                          ; 8A47
        .addr   L_8862                          ; 8A49
        .addr   L_8867                          ; 8A4B
        .addr   L_886C                          ; 8A4D
        .addr   L_8871                          ; 8A4F
        .addr   L_8876                          ; 8A51
        .addr   L_8880                          ; 8A53
        .addr   L_888A                          ; 8A55
        .addr   L_8894                          ; 8A57
        .addr   L_889E                          ; 8A59
        .addr   L_88A8                          ; 8A5B
        .addr   L_88B2                          ; 8A5D
        .addr   L_88C3                          ; 8A5F
        .addr   L_88D4                          ; 8A61
        .addr   L_88D9                          ; 8A63
        .addr   L_88DE                          ; 8A65
        .addr   L_88E3                          ; 8A67
; #endregion

.endmacro

; Interrupted by 3 macros:
;   MAC_object_handlers__jason_1_of_2
;   MAC_object_handlers___ungrouped
;   MAC_object_handlers__jason_2_of_2

.macro MAC__ungrouped_2_of_12
; ----------------------------------------------------------------------------
L_8D9B: .byte   $00,$00,$18,$18,$18,$00,$E8,$E8 ; 8D9B
        .byte   $E8                             ; 8DA3
L_8DA4: .byte   $00,$E8,$E8,$00,$18,$18,$18,$00 ; 8DA4
        .byte   $E8                             ; 8DAC
L_8DAD: .byte   $00,$00,$01,$01,$01,$00,$FF,$FF ; 8DAD
        .byte   $FF                             ; 8DB5
L_8DB6: .byte   $00,$FF,$FF,$00,$01,$01,$01,$00 ; 8DB6
        .byte   $FF                             ; 8DBE
; ----------------------------------------------------------------------------
L_8DBF: lda     #$18                            ; 8DBF
        sta     $40                             ; 8DC1
        lda     #$10                            ; 8DC3
        sta     $41                             ; 8DC5
        jsr     LC15F                           ; 8DC7
        jsr     LC0FF                           ; 8DCA
        beq     L_8DD0                          ; 8DCD
        rts                                     ; 8DCF

; ----------------------------------------------------------------------------
L_8DD0: lda     #$7F                            ; 8DD0
        jsr     LC1E6                           ; 8DD2
        bpl     L_8DFE                          ; 8DD5
        ldx     LoadedObj + Obj::IFrameCounter  ; 8DD7
        bne     L_8DFE                          ; 8DD9
        and     #$7F                            ; 8DDB
        beq     L_8DFE                          ; 8DDD
        pha                                     ; 8DDF
        lda     #$1E                            ; 8DE0
        jsr     LC216                           ; 8DE2
        pla                                     ; 8DE5
        eor     #$FF                            ; 8DE6
        clc                                     ; 8DE8
        adc     #$01                            ; 8DE9
        clc                                     ; 8DEB
        adc     LoadedObj + Obj::Health         ; 8DEC
        bcs     L_8DF6                          ; 8DEE
        lda     #$40                            ; 8DF0
        sta     LoadedObj + Obj::IFrameCounter  ; 8DF2
        lda     #$00                            ; 8DF4
L_8DF6: sta     LoadedObj + Obj::Health         ; 8DF6
        beq     L_8DFE                          ; 8DF8
        lda     #$20                            ; 8DFA
        sta     LoadedObj + Obj::IFrameCounter  ; 8DFC
L_8DFE: lda     LoadedObj + Obj::IFrameCounter  ; 8DFE
        pha                                     ; 8E00
        lda     #$00                            ; 8E01
        sta     LoadedObj + Obj::IFrameCounter  ; 8E03
        jsr     L_93BD                          ; 8E05
        pla                                     ; 8E08
        sta     LoadedObj + Obj::IFrameCounter  ; 8E09
        lda     LoadedObj + Obj::IFrameCounter  ; 8E0B
        beq     L_8E15                          ; 8E0D
        lda     Player_GunLevel                 ; 8E0F
        beq     L_8E15                          ; 8E11
        dec     Player_GunLevel                 ; 8E13
L_8E15: ldx     #$00                            ; 8E15
        lda     LoadedObj + Obj::Facing         ; 8E17
        and     #$03                            ; 8E19
        cmp     #$01                            ; 8E1B
        bne     L_8E21                          ; 8E1D
        ldx     #$40                            ; 8E1F
L_8E21: stx     $44                             ; 8E21
        lda     LoadedObj + Obj::Facing         ; 8E23
        and     #$03                            ; 8E25
        cmp     #$03                            ; 8E27
        bne     L_8E2D                          ; 8E29
        lda     #$01                            ; 8E2B
L_8E2D: sta     $45                             ; 8E2D
        asl     a                               ; 8E2F
        clc                                     ; 8E30
        adc     $45                             ; 8E31
        sta     $45                             ; 8E33
        lda     $79                             ; 8E35
        beq     L_8E51                          ; 8E37
        lda     $15                             ; 8E39
        bne     L_8E51                          ; 8E3B
        lda     LoadedObj + Obj::Health         ; 8E3D
        beq     L_8E51                          ; 8E3F
        lda     Global_FrameCounter             ; 8E41
        lsr     a                               ; 8E43
        lsr     a                               ; 8E44
        lsr     a                               ; 8E45
        and     #$03                            ; 8E46
        tax                                     ; 8E48
        lda     L_8E57,x                        ; 8E49
        clc                                     ; 8E4C
        adc     $45                             ; 8E4D
        sta     $45                             ; 8E4F
L_8E51: lda     $45                             ; 8E51
        jmp     LC063                           ; 8E53

; ----------------------------------------------------------------------------
        rts                                     ; 8E56

; ----------------------------------------------------------------------------
L_8E57: .byte   $00,$01,$00,$02                 ; 8E57
; ----------------------------------------------------------------------------
L_8E5B: lda     $F3                             ; 8E5B
        and     #$C0                            ; 8E5D
        beq     L_8E94                          ; 8E5F
        lda     Player_GunLevel                 ; 8E61
        asl     a                               ; 8E63
        rol     a                               ; 8E64
        rol     a                               ; 8E65
        rol     a                               ; 8E66
        and     #$07                            ; 8E67
        sta     $BB                             ; 8E69
        lda     #$46                            ; 8E6B
        sta     $00                             ; 8E6D
        ldx     #$0E                            ; 8E6F
        jsr     LC1D7                           ; 8E71
        beq     L_8E94                          ; 8E74
        lda     $F3                             ; 8E76
        bpl     L_8E7E                          ; 8E78
        lda     #$0F                            ; 8E7A
        bne     L_8E8E                          ; 8E7C
L_8E7E: ldy     $BB                             ; 8E7E
        lda     #$06                            ; 8E80
        cpy     #$04                            ; 8E82
        bcc     L_8E8E                          ; 8E84
        lda     #$09                            ; 8E86
        cpy     #$06                            ; 8E88
        bcc     L_8E8E                          ; 8E8A
        lda     #$0C                            ; 8E8C
L_8E8E: sta     ObjectTable + Obj::Type,x       ; 8E8E
        jsr     LC0D8                           ; 8E91
L_8E94: rts                                     ; 8E94

; ----------------------------------------------------------------------------
L_8E95: lda     LoadedObj + Obj::Facing         ; 8E95
        and     #$03                            ; 8E97
        sta     LoadedObj + Obj::Facing         ; 8E99
        asl     a                               ; 8E9B
        tax                                     ; 8E9C
        lda     LoadedObj + Obj::Position_X_Lo  ; 8E9D
        clc                                     ; 8E9F
        adc     L_8EBE,x                        ; 8EA0
        sta     LoadedObj + Obj::Position_X_Lo  ; 8EA3
        lda     LoadedObj + Obj::Position_X_Hi  ; 8EA5
        adc     L8EBF,x                         ; 8EA7
        sta     LoadedObj + Obj::Position_X_Hi  ; 8EAA
        lda     LoadedObj + Obj::Position_Y_Lo  ; 8EAC
        clc                                     ; 8EAE
        adc     L_8EC6,x                        ; 8EAF
        sta     LoadedObj + Obj::Position_Y_Lo  ; 8EB2
        lda     LoadedObj + Obj::Position_Y_Hi  ; 8EB4
        adc     L8EC7,x                         ; 8EB6
        sta     LoadedObj + Obj::Position_Y_Hi  ; 8EB9
        jmp     LC1EC                           ; 8EBB

; ----------------------------------------------------------------------------
L_8EBE: .byte   $60                             ; 8EBE
L8EBF:  .byte   $00,$00,$01,$A0,$FF,$00,$FF     ; 8EBF
L_8EC6: .byte   $00                             ; 8EC6
L8EC7:  .byte   $FF,$00,$00,$00,$01,$00,$00     ; 8EC7
; ----------------------------------------------------------------------------
L_8ECE: lda     L_8F05                          ; 8ECE
        sta     IndirectPtrLo                   ; 8ED1
        lda     L_8F05+1                        ; 8ED3
        sta     IndirectPtrHi                   ; 8ED6
        ldy     #$00                            ; 8ED8
        jsr     LC0FF                           ; 8EDA
        beq     L_8EE2                          ; 8EDD
        jmp     LC117                           ; 8EDF

; ----------------------------------------------------------------------------
L_8EE2: lda     #$01                            ; 8EE2
        jsr     LC1E6                           ; 8EE4
        bpl     L_8EEC                          ; 8EE7
        jmp     LC117                           ; 8EE9

; ----------------------------------------------------------------------------
L_8EEC: jsr     LC138                           ; 8EEC
        jsr     LC0A2                           ; 8EEF
        beq     L_8F04                          ; 8EF2
        lda     $3F                             ; 8EF4
        sec                                     ; 8EF6
        sbc     #$09                            ; 8EF7
        sta     $3F                             ; 8EF9
        lda     #$00                            ; 8EFB
        sta     $44                             ; 8EFD
        lda     LoadedObj + Obj::Facing         ; 8EFF
        jmp     LC066                           ; 8F01

; ----------------------------------------------------------------------------
L_8F04: rts                                     ; 8F04

; ----------------------------------------------------------------------------
L_8F05: .addr   L_8F07                          ; 8F05
L_8F07: .addr   L_8F0F                          ; 8F07
        .addr   L8F14                           ; 8F09
        .addr   L8F18                           ; 8F0B
        .addr   L8F1D                           ; 8F0D
; ----------------------------------------------------------------------------
L_8F0F: .byte   $00,$00,$1D,$38,$02             ; 8F0F
L8F14:  .byte   $00,$00,$51,$58                 ; 8F14
L8F18:  .byte   $00,$00,$9D,$38,$02             ; 8F18
L8F1D:  .byte   $00,$00,$11,$58                 ; 8F1D
; ----------------------------------------------------------------------------
L_8F21: jsr     LC138                           ; 8F21
        jsr     LC0A2                           ; 8F24
        beq     L_8F4B                          ; 8F27
        ldx     LoadedObj + Obj::Facing         ; 8F29
        lda     L_8F4C,x                        ; 8F2B
        sta     $44                             ; 8F2E
        lda     $BB                             ; 8F30
        cmp     #$07                            ; 8F32
        bne     L_8F3C                          ; 8F34
        lda     $44                             ; 8F36
        ora     #$02                            ; 8F38
        sta     $44                             ; 8F3A
L_8F3C: lda     L_8F50,x                        ; 8F3C
        sta     $45                             ; 8F3F
        lda     $3F                             ; 8F41
        sec                                     ; 8F43
        sbc     #$09                            ; 8F44
        sta     $3F                             ; 8F46
        jmp     LC1AD                           ; 8F48

; ----------------------------------------------------------------------------
L_8F4B: rts                                     ; 8F4B

; ----------------------------------------------------------------------------
L_8F4C: .byte   $01,$41,$81,$01                 ; 8F4C
L_8F50: .byte   $4A,$3A,$4A,$3A                 ; 8F50
.endmacro

; Interrupted by 1 macro:
;   MAC_object_handlers__projectiles_and_ballistics_1_of_7

.macro MAC__ungrouped_3_of_12
; ----------------------------------------------------------------------------
L_8F9A: .byte   $D0                             ; 8F9A
L8F9B:  .byte   $00,$30,$00,$D0                 ; 8F9B
.endmacro

; Interrupted by 1 macro:
;   MAC_object_handlers__projectiles_and_ballistics_2_of_7

.macro MAC__ungrouped_4_of_12
; ----------------------------------------------------------------------------
L_8FF3: jsr     LC138                           ; 8FF3
        bpl     L_9006                          ; 8FF6
        jsr     LC09C                           ; 8FF8
        bne     L_9000                          ; 8FFB
        jsr     LC111                           ; 8FFD
L_9000: jsr     L_9329                          ; 9000
        jsr     LC117                           ; 9003
L_9006: rts                                     ; 9006

; ----------------------------------------------------------------------------
L_9007: lda     LoadedObj + Obj::Type           ; 9007
        bne     L_9010                          ; 9009
        jsr     LC1CE                           ; 900B
        pla                                     ; 900E
        pla                                     ; 900F
L_9010: rts                                     ; 9010

.endmacro

; Interrupted by 1 macro:
;   MAC_object_handlers__projectiles_and_ballistics_3_of_7

.macro MAC__ungrouped_5_of_12
; ----------------------------------------------------------------------------
L_91F2: bpl     L_91F8                          ; 91F2
        ldx     #$FF                            ; 91F4
        bne     L_91FA                          ; 91F6
L_91F8: ldx     #$00                            ; 91F8
L_91FA: stx     $45                             ; 91FA
        asl     a                               ; 91FC
        rol     $45                             ; 91FD
        asl     a                               ; 91FF
        rol     $45                             ; 9200
        asl     a                               ; 9202
        rol     $45                             ; 9203
        asl     a                               ; 9205
        rol     $45                             ; 9206
        and     #$F0                            ; 9208
        rts                                     ; 920A

.endmacro

; Interrupted by 1 macro:
;   MAC_object_handlers__projectiles_and_ballistics_4_of_7

.macro MAC__ungrouped_6_of_12
; ----------------------------------------------------------------------------
L_9237: .byte   $E0                             ; 9237
L9238:  .byte   $00,$20,$00,$E0                 ; 9238
.endmacro

; Interrupted by 2 macros:
;   MAC_object_handlers__projectiles_and_ballistics_5_of_7
;   MAC_object_handlers__explosions

.macro MAC__ungrouped_7_of_12
; ----------------------------------------------------------------------------
L_93BD: lda     $C5                             ; 93BD
        and     #$02                            ; 93BF
        beq     L_93C4                          ; 93C1
        rts                                     ; 93C3

; ----------------------------------------------------------------------------
L_93C4: lda     $3F                             ; 93C4
        pha                                     ; 93C6
        lda     $3E                             ; 93C7
        pha                                     ; 93C9
        lda     LoadedObj + Obj::Position_X_Hi  ; 93CA
        pha                                     ; 93CC
        lda     LoadedObj + Obj::Position_X_Lo  ; 93CD
        pha                                     ; 93CF
        lda     LoadedObj + Obj::Position_Y_Hi  ; 93D0
        pha                                     ; 93D2
        lda     LoadedObj + Obj::Position_Y_Lo  ; 93D3
        pha                                     ; 93D5
        lda     LoadedObj + Obj::TileIndex      ; 93D6
        pha                                     ; 93D8
        lda     LoadedObj + Obj::Position_X_Lo  ; 93D9
        sec                                     ; 93DB
        sbc     #$C0                            ; 93DC
        sta     LoadedObj + Obj::Position_X_Lo  ; 93DE
        bcs     L_93E6                          ; 93E0
        dec     LoadedObj + Obj::Position_X_Hi  ; 93E2
        dec     LoadedObj + Obj::TileIndex      ; 93E4
L_93E6: lda     LoadedObj + Obj::Position_Y_Lo  ; 93E6
        sec                                     ; 93E8
        sbc     #$C0                            ; 93E9
        sta     LoadedObj + Obj::Position_Y_Lo  ; 93EB
        bcs     L_93F9                          ; 93ED
        dec     LoadedObj + Obj::Position_Y_Hi  ; 93EF
        lda     LoadedObj + Obj::TileIndex      ; 93F1
        sec                                     ; 93F3
        sbc     #$22                            ; 93F4
        jmp     L_93FE                          ; 93F6

; ----------------------------------------------------------------------------
L_93F9: lda     LoadedObj + Obj::TileIndex      ; 93F9
        sec                                     ; 93FB
        sbc     #$11                            ; 93FC
L_93FE: sta     LoadedObj + Obj::TileIndex      ; 93FE
        dec     LoadedObj + Obj::Position_Y_Hi  ; 9400
        lda     LoadedObj + Obj::TileIndex      ; 9402
        clc                                     ; 9404
        adc     #$11                            ; 9405
        tax                                     ; 9407
        inc     LoadedObj + Obj::Position_Y_Hi  ; 9408
        jsr     L_944C                          ; 940A
        lda     LoadedObj + Obj::Position_Y_Lo  ; 940D
        cmp     #$10                            ; 940F
        bcc     L_941E                          ; 9411
        lda     LoadedObj + Obj::TileIndex      ; 9413
        clc                                     ; 9415
        adc     #$22                            ; 9416
        tax                                     ; 9418
        inc     LoadedObj + Obj::Position_Y_Hi  ; 9419
        jsr     L_944C                          ; 941B
L_941E: pla                                     ; 941E
        sta     LoadedObj + Obj::TileIndex      ; 941F
        pla                                     ; 9421
        sta     LoadedObj + Obj::Position_Y_Lo  ; 9422
        pla                                     ; 9424
        sta     LoadedObj + Obj::Position_Y_Hi  ; 9425
        pla                                     ; 9427
        sta     LoadedObj + Obj::Position_X_Lo  ; 9428
        pla                                     ; 942A
        sta     LoadedObj + Obj::Position_X_Hi  ; 942B
        pla                                     ; 942D
        sta     $3E                             ; 942E
        pla                                     ; 9430
        sta     $3F                             ; 9431
        rts                                     ; 9433

; ----------------------------------------------------------------------------
L_9434: pla                                     ; 9434
        sta     LoadedObj + Obj::TileIndex      ; 9435
        pla                                     ; 9437
        sta     LoadedObj + Obj::Position_Y_Lo  ; 9438
        pla                                     ; 943A
        sta     LoadedObj + Obj::Position_Y_Hi  ; 943B
        pla                                     ; 943D
        sta     LoadedObj + Obj::Position_X_Lo  ; 943E
        pla                                     ; 9440
        sta     LoadedObj + Obj::Position_X_Hi  ; 9441
        pla                                     ; 9443
        sta     $3E                             ; 9444
        pla                                     ; 9446
        sta     $3F                             ; 9447
        pla                                     ; 9449
        pla                                     ; 944A
        rts                                     ; 944B

; ----------------------------------------------------------------------------
L_944C: jsr     L_949B                          ; 944C
        inx                                     ; 944F
        jsr     L_949B                          ; 9450
        lda     LoadedObj + Obj::Position_X_Lo  ; 9453
        cmp     #$90                            ; 9455
        bcc     L_945A                          ; 9457
        inx                                     ; 9459
L_945A: jsr     L_949B                          ; 945A
        lda     $00                             ; 945D
        and     #$05                            ; 945F
        beq     L_94A8                          ; 9461
        lda     $00                             ; 9463
        and     #$07                            ; 9465
        cmp     #$06                            ; 9467
        beq     L_9471                          ; 9469
        cmp     #$04                            ; 946B
        bne     L_9478                          ; 946D
        dec     LoadedObj + Obj::Position_X_Hi  ; 946F
L_9471: lda     #$80                            ; 9471
        sta     LoadedObj + Obj::Position_X_Lo  ; 9473
        jmp     L_9488                          ; 9475

; ----------------------------------------------------------------------------
L_9478: cmp     #$03                            ; 9478
        beq     L_9482                          ; 947A
        cmp     #$01                            ; 947C
        bne     L_9488                          ; 947E
        inc     LoadedObj + Obj::Position_X_Hi  ; 9480
L_9482: inc     LoadedObj + Obj::Position_X_Hi  ; 9482
        lda     #$00                            ; 9484
        sta     LoadedObj + Obj::Position_X_Lo  ; 9486
L_9488: lda     #$00                            ; 9488
        sta     LoadedObj + Obj::Position_Y_Lo  ; 948A
        jsr     LC0FF                           ; 948C
        lda     #$00                            ; 948F
        sta     $44                             ; 9491
        jsr     L_9599                          ; 9493
        pla                                     ; 9496
        pla                                     ; 9497
        jmp     L_941E                          ; 9498

; ----------------------------------------------------------------------------
L_949B: lda     LevelTileData,x                 ; 949B
        lsr     a                               ; 949E
        lsr     a                               ; 949F
        lsr     a                               ; 94A0
        and     #$02                            ; 94A1
        beq     L_94A6                          ; 94A3
        clc                                     ; 94A5
L_94A6: rol     $00                             ; 94A6
L_94A8: rts                                     ; 94A8

; ----------------------------------------------------------------------------
L_94A9: lda     $3F                             ; 94A9
        pha                                     ; 94AB
        lda     $3E                             ; 94AC
        pha                                     ; 94AE
        lda     LoadedObj + Obj::Position_X_Hi  ; 94AF
        pha                                     ; 94B1
        lda     LoadedObj + Obj::Position_X_Lo  ; 94B2
        pha                                     ; 94B4
        lda     LoadedObj + Obj::Position_Y_Hi  ; 94B5
        pha                                     ; 94B7
        lda     LoadedObj + Obj::Position_Y_Lo  ; 94B8
        pha                                     ; 94BA
        lda     LoadedObj + Obj::TileIndex      ; 94BB
        pha                                     ; 94BD
        lda     LoadedObj + Obj::Position_X_Lo  ; 94BE
        sec                                     ; 94C0
        sbc     #$C0                            ; 94C1
        sta     LoadedObj + Obj::Position_X_Lo  ; 94C3
        bcs     L_94CB                          ; 94C5
        dec     LoadedObj + Obj::Position_X_Hi  ; 94C7
        dec     LoadedObj + Obj::TileIndex      ; 94C9
L_94CB: ldx     LoadedObj + Obj::TileIndex      ; 94CB
        ldy     LevelTileData,x                 ; 94CD
        lda     LoadedObj + Obj::Position_X_Hi  ; 94D0
        and     #$03                            ; 94D2
        cmp     #$02                            ; 94D4
        bcc     L_94E0                          ; 94D6
        cmp     #$03                            ; 94D8
        beq     L_94EB                          ; 94DA
        lda     LoadedObj + Obj::Position_X_Lo  ; 94DC
        bmi     L_94EB                          ; 94DE
L_94E0: tya                                     ; 94E0
        and     #$04                            ; 94E1
        beq     L_94E8                          ; 94E3
        jmp     L_9434                          ; 94E5

; ----------------------------------------------------------------------------
L_94E8: jmp     L_941E                          ; 94E8

; ----------------------------------------------------------------------------
L_94EB: tya                                     ; 94EB
        and     #$04                            ; 94EC
        bne     L_94FC                          ; 94EE
        ldx     #$00                            ; 94F0
        lda     LoadedObj + Obj::Position_X_Hi  ; 94F2
        clc                                     ; 94F4
        adc     #$02                            ; 94F5
        and     #$FC                            ; 94F7
        jmp     L_9504                          ; 94F9

; ----------------------------------------------------------------------------
L_94FC: ldx     #$80                            ; 94FC
        lda     LoadedObj + Obj::Position_X_Hi  ; 94FE
        and     #$FC                            ; 9500
        ora     #$02                            ; 9502
L_9504: sta     LoadedObj + Obj::Position_X_Hi  ; 9504
        stx     LoadedObj + Obj::Position_X_Lo  ; 9506
        sec                                     ; 9508
        lda     LoadedObj + Obj::Position_Y_Lo  ; 9509
        sbc     #$C0                            ; 950B
        sta     LoadedObj + Obj::Position_Y_Lo  ; 950D
        lda     LoadedObj + Obj::Position_Y_Hi  ; 950F
        sbc     #$01                            ; 9511
        sta     LoadedObj + Obj::Position_Y_Hi  ; 9513
        jsr     LC0FF                           ; 9515
        lda     #$00                            ; 9518
        sta     $44                             ; 951A
        jsr     L_9599                          ; 951C
        jmp     L_941E                          ; 951F

; ----------------------------------------------------------------------------
L_9522: lda     $3F                             ; 9522
        pha                                     ; 9524
        lda     $3E                             ; 9525
        pha                                     ; 9527
        lda     LoadedObj + Obj::Position_X_Hi  ; 9528
        pha                                     ; 952A
        lda     LoadedObj + Obj::Position_X_Lo  ; 952B
        pha                                     ; 952D
        lda     LoadedObj + Obj::Position_Y_Hi  ; 952E
        pha                                     ; 9530
        lda     LoadedObj + Obj::Position_Y_Lo  ; 9531
        pha                                     ; 9533
        lda     LoadedObj + Obj::TileIndex      ; 9534
        pha                                     ; 9536
        lda     LoadedObj + Obj::Position_Y_Lo  ; 9537
        sec                                     ; 9539
        sbc     #$C0                            ; 953A
        sta     LoadedObj + Obj::Position_Y_Lo  ; 953C
        bcs     L_9549                          ; 953E
        dec     LoadedObj + Obj::Position_Y_Hi  ; 9540
        lda     LoadedObj + Obj::TileIndex      ; 9542
        sec                                     ; 9544
        sbc     #$11                            ; 9545
        sta     LoadedObj + Obj::TileIndex      ; 9547
L_9549: dec     LoadedObj + Obj::Position_Y_Hi  ; 9549
        lda     LoadedObj + Obj::TileIndex      ; 954B
        sec                                     ; 954D
        sbc     #$11                            ; 954E
        sta     LoadedObj + Obj::TileIndex      ; 9550
        ldx     LoadedObj + Obj::TileIndex      ; 9552
        ldy     LevelTileData,x                 ; 9554
        lda     LoadedObj + Obj::Position_Y_Hi  ; 9557
        and     #$02                            ; 9559
        beq     L_9568                          ; 955B
        tya                                     ; 955D
        and     #$04                            ; 955E
        beq     L_9565                          ; 9560
        jmp     L_9434                          ; 9562

; ----------------------------------------------------------------------------
L_9565: jmp     L_941E                          ; 9565

; ----------------------------------------------------------------------------
L_9568: tya                                     ; 9568
        and     #$04                            ; 9569
        beq     L_9574                          ; 956B
        lda     LoadedObj + Obj::Position_Y_Hi  ; 956D
        and     #$FE                            ; 956F
        jmp     L_957B                          ; 9571

; ----------------------------------------------------------------------------
L_9574: lda     LoadedObj + Obj::Position_Y_Hi  ; 9574
        and     #$FE                            ; 9576
        clc                                     ; 9578
        adc     #$02                            ; 9579
L_957B: sta     LoadedObj + Obj::Position_Y_Hi  ; 957B
        lda     #$00                            ; 957D
        sta     LoadedObj + Obj::Position_Y_Lo  ; 957F
        sec                                     ; 9581
        lda     LoadedObj + Obj::Position_X_Lo  ; 9582
        sbc     #$C0                            ; 9584
        sta     LoadedObj + Obj::Position_X_Lo  ; 9586
        bcs     L_958C                          ; 9588
        dec     LoadedObj + Obj::Position_X_Hi  ; 958A
L_958C: jsr     LC0FF                           ; 958C
        lda     #$00                            ; 958F
        sta     $44                             ; 9591
        jsr     L_9599                          ; 9593
        jmp     L_941E                          ; 9596

; ----------------------------------------------------------------------------
L_9599: lda     L_95B5                          ; 9599
        sta     IndirectPtrLo                   ; 959C
        lda     L_95B5+1                        ; 959E
        sta     IndirectPtrHi                   ; 95A1
        ldy     #$00                            ; 95A3
        lda     LoadedObj + Obj::IFrameCounter  ; 95A5
        pha                                     ; 95A7
        lda     #$00                            ; 95A8
        sta     LoadedObj + Obj::IFrameCounter  ; 95AA
        lda     #$00                            ; 95AC
        jsr     LC066                           ; 95AE
        pla                                     ; 95B1
        sta     LoadedObj + Obj::IFrameCounter  ; 95B2
        rts                                     ; 95B4

; ----------------------------------------------------------------------------
L_95B5: .addr   L_95B7                          ; 95B5
L_95B7: .addr   L_95B9                          ; 95B7
; ----------------------------------------------------------------------------
L_95B9: .byte   $04,$08,$04,$C3,$95,$F0,$10,$14 ; 95B9
        .byte   $C3,$95,$00,$00,$20,$20,$08,$00 ; 95C1
        .byte   $20,$20,$08,$00,$30,$20         ; 95C9
.endmacro

; Interrupted by 4 macros:
;   MAC_object_handlers__pickups_1_of_2
;   MAC_object_handlers__bosses_1_of_2
;   MAC_object_handlers__projectiles_and_ballistics_6_of_7
;   MAC_object_handlers__pickups_2_of_2

.macro MAC__ungrouped_8_of_12
; ----------------------------------------------------------------------------
L_B1F9: sta     $00                             ; B1F9
        asl     a                               ; B1FB
        asl     a                               ; B1FC
        asl     a                               ; B1FD
        asl     a                               ; B1FE
        clc                                     ; B1FF
        adc     LoadedObj + Obj::Position_X_Lo  ; B200
        php                                     ; B202
        sta     LoadedObj + Obj::Position_X_Lo  ; B203
        lda     $00                             ; B205
        cmp     #$80                            ; B207
        bcc     L_B214                          ; B209
        ora     #$0F                            ; B20B
        ror     a                               ; B20D
        ror     a                               ; B20E
        ror     a                               ; B20F
        ror     a                               ; B210
        jmp     L_B218                          ; B211

; ----------------------------------------------------------------------------
L_B214: lsr     a                               ; B214
        lsr     a                               ; B215
        lsr     a                               ; B216
        lsr     a                               ; B217
L_B218: plp                                     ; B218
        adc     LoadedObj + Obj::Position_X_Hi  ; B219
        sta     LoadedObj + Obj::Position_X_Hi  ; B21B
        rts                                     ; B21D

; ----------------------------------------------------------------------------
L_B21E: sta     $00                             ; B21E
        asl     a                               ; B220
        asl     a                               ; B221
        asl     a                               ; B222
        asl     a                               ; B223
        clc                                     ; B224
        adc     LoadedObj + Obj::Position_Y_Lo  ; B225
        php                                     ; B227
        sta     LoadedObj + Obj::Position_Y_Lo  ; B228
        lda     $00                             ; B22A
        cmp     #$80                            ; B22C
        bcc     L_B239                          ; B22E
        ora     #$0F                            ; B230
        ror     a                               ; B232
        ror     a                               ; B233
        ror     a                               ; B234
        ror     a                               ; B235
        jmp     L_B23D                          ; B236

; ----------------------------------------------------------------------------
L_B239: lsr     a                               ; B239
        lsr     a                               ; B23A
        lsr     a                               ; B23B
        lsr     a                               ; B23C
L_B23D: plp                                     ; B23D
        adc     LoadedObj + Obj::Position_Y_Hi  ; B23E
        sta     LoadedObj + Obj::Position_Y_Hi  ; B240
        rts                                     ; B242

; ----------------------------------------------------------------------------
L_B243: lda     LoadedObj + Obj::Health         ; B243
        pha                                     ; B245
        lda     LoadedObj + Obj::IFrameCounter  ; B246
        pha                                     ; B248
        jsr     LC138                           ; B249
        jsr     LC09F                           ; B24C
        bne     L_B25D                          ; B24F
        lda     LoadedObj + Obj::Position_X_Lo  ; B251
        eor     #$FF                            ; B253
        clc                                     ; B255
        adc     #$01                            ; B256
        sta     LoadedObj + Obj::Velocity_X     ; B258
        jsr     LC027                           ; B25A
L_B25D: pla                                     ; B25D
        sta     LoadedObj + Obj::IFrameCounter  ; B25E
        pla                                     ; B260
        sta     LoadedObj + Obj::Health         ; B261
        rts                                     ; B263

; ----------------------------------------------------------------------------
L_B264: lda     LoadedObj + Obj::Health         ; B264
        pha                                     ; B266
        lda     LoadedObj + Obj::IFrameCounter  ; B267
        pha                                     ; B269
        jsr     LC138                           ; B26A
        jsr     LC09F                           ; B26D
        bne     L_B27E                          ; B270
        lda     LoadedObj + Obj::Position_Y_Lo  ; B272
        eor     #$FF                            ; B274
        clc                                     ; B276
        adc     #$01                            ; B277
        sta     LoadedObj + Obj::Velocity_Y     ; B279
        jsr     LC03F                           ; B27B
L_B27E: pla                                     ; B27E
        sta     LoadedObj + Obj::IFrameCounter  ; B27F
        pla                                     ; B281
        sta     LoadedObj + Obj::Health         ; B282
        rts                                     ; B284

; ----------------------------------------------------------------------------
L_B285: jsr     L_B29E                          ; B285
        clc                                     ; B288
        lda     LoadedObj + Obj::Position_X_Lo  ; B289
        adc     LoadedObj + Obj::Velocity_X     ; B28B
        sta     LoadedObj + Obj::Position_X_Lo  ; B28D
        ror     a                               ; B28F
        eor     LoadedObj + Obj::Velocity_X     ; B290
        bpl     L_B29D                          ; B292
        lda     LoadedObj + Obj::Velocity_X     ; B294
        bmi     L_B29B                          ; B296
        inc     LoadedObj + Obj::Position_X_Hi  ; B298
        rts                                     ; B29A

; ----------------------------------------------------------------------------
L_B29B: dec     LoadedObj + Obj::Position_X_Hi  ; B29B
L_B29D: rts                                     ; B29D

; ----------------------------------------------------------------------------
L_B29E: clc                                     ; B29E
        lda     LoadedObj + Obj::Position_Y_Lo  ; B29F
        adc     LoadedObj + Obj::Velocity_Y     ; B2A1
        sta     LoadedObj + Obj::Position_Y_Lo  ; B2A3
        ror     a                               ; B2A5
        eor     LoadedObj + Obj::Velocity_Y     ; B2A6
        bpl     L_B2B3                          ; B2A8
        lda     LoadedObj + Obj::Velocity_Y     ; B2AA
        bmi     L_B2B1                          ; B2AC
        inc     LoadedObj + Obj::Position_Y_Hi  ; B2AE
        rts                                     ; B2B0

; ----------------------------------------------------------------------------
L_B2B1: dec     LoadedObj + Obj::Position_Y_Hi  ; B2B1
L_B2B3: rts                                     ; B2B3

; ----------------------------------------------------------------------------
L_B2B4: jsr     L_B314                          ; B2B4
        ldy     #$00                            ; B2B7
        lda     ($A3),y                         ; B2B9
        sta     LoadedObj + Obj::Health         ; B2BB
        sty     LoadedObj + Obj::IFrameCounter  ; B2BD
        jsr     LC1EC                           ; B2BF
        inc     LoadedObj + Obj::Type           ; B2C2
        rts                                     ; B2C4

; ----------------------------------------------------------------------------
L_B2C5: jsr     L_B314                          ; B2C5
        ldy     #$01                            ; B2C8
        lda     ($A3),y                         ; B2CA
        jsr     LC144                           ; B2CC
        bne     L_B2DE                          ; B2CF
        lda     LoadedObj + Obj::Health         ; B2D1
        bne     L_B2DB                          ; B2D3
        jsr     L_B2F7                          ; B2D5
        lda     #$FF                            ; B2D8
        rts                                     ; B2DA

; ----------------------------------------------------------------------------
L_B2DB: lda     #$01                            ; B2DB
        rts                                     ; B2DD

; ----------------------------------------------------------------------------
L_B2DE: lda     #$00                            ; B2DE
        rts                                     ; B2E0

; ----------------------------------------------------------------------------
L_B2E1: jsr     L_B314                          ; B2E1
        ldy     #$01                            ; B2E4
        lda     ($A3),y                         ; B2E6
        jsr     LC144                           ; B2E8
        bne     L_B2F0                          ; B2EB
        jsr     L_B2F1                          ; B2ED
L_B2F0: rts                                     ; B2F0

; ----------------------------------------------------------------------------
L_B2F1: jsr     LC114                           ; B2F1
        jmp     L_B2FA                          ; B2F4

; ----------------------------------------------------------------------------
L_B2F7: jsr     LC14A                           ; B2F7
L_B2FA: jsr     LC1B3                           ; B2FA
        ldy     #$03                            ; B2FD
        cmp     ($A3),y                         ; B2FF
        bcs     L_B30F                          ; B301
        jsr     LC12F                           ; B303
        beq     L_B30F                          ; B306
        ldy     #$02                            ; B308
        lda     ($A3),y                         ; B30A
        sta     ObjectTable + Obj::Type,x       ; B30C
L_B30F: lda     #$14                            ; B30F
        sta     LoadedObj + Obj::Type           ; B311
        rts                                     ; B313

; ----------------------------------------------------------------------------
L_B314: asl     a                               ; B314
        asl     a                               ; B315
        clc                                     ; B316
        adc     L_B324                          ; B317
        sta     $A3                             ; B31A
        lda     #$00                            ; B31C
        adc     L_B324+1                        ; B31E
        sta     $A4                             ; B321
        rts                                     ; B323

; ----------------------------------------------------------------------------
L_B324: .addr   L_B326                          ; B324
; ----------------------------------------------------------------------------
L_B326: .byte   $04,$10,$1A,$90 ; B326  Health=$04 DropType=$1A DropChance=$90
        .byte   $01,$10,$1A,$80 ; B32A  Health=$01 DropType=$1A DropChance=$80
        .byte   $02,$10,$1E,$70 ; B32E  Health=$02 DropType=$1E DropChance=$70
        .byte   $01,$10,$1C,$50 ; B332  Health=$01 DropType=$1C DropChance=$50
        .byte   $02,$10,$20,$40 ; B336  Health=$02 DropType=$20 DropChance=$40
        .byte   $01,$10,$1A,$60 ; B33A  Health=$01 DropType=$1A DropChance=$60
        .byte   $08,$10,$1A,$80 ; B33E  Health=$08 DropType=$1A DropChance=$80
        .byte   $01,$20,$21,$FF ; B342  Health=$01 DropType=$21 DropChance=$FF
        .byte   $18,$20,$1C,$FF ; B346  Health=$18 DropType=$1C DropChance=$FF
        .byte   $08,$20,$1C,$A0 ; B34A  Health=$08 DropType=$1C DropChance=$A0
        .byte   $08,$18,$1A,$80 ; B34E  Health=$08 DropType=$1A DropChance=$80
        .byte   $08,$18,$1A,$80 ; B352  Health=$08 DropType=$1A DropChance=$80
        .byte   $06,$20,$1C,$50 ; B356  Health=$06 DropType=$1C DropChance=$50
        .byte   $08,$30,$20,$FF ; B35A  Health=$08 DropType=$20 DropChance=$FF
        .byte   $20,$30,$22,$FF ; B35E  Health=$20 DropType=$22 DropChance=$FF
        .byte   $04,$20,$1A,$A0 ; B362  Health=$04 DropType=$1A DropChance=$A0
.endmacro

; Interrupted by 3 macros:
;   MAC_object_handlers__camera_1_of_2
;   MAC_object_handlers__gumdrop_gray
;   MAC_object_handlers__flier

.macro MAC__ungrouped_9_of_12
; ----------------------------------------------------------------------------
L_B5A5: .byte   $42,$43                         ; B5A5
.endmacro

; Interrupted by 8 macros:
;   MAC_object_handlers__charging_robot
;   MAC_object_handlers__spinner
;   MAC_object_handlers__cross_shooter
;   MAC_object_handlers__camera_2_of_2
;   MAC_object_handlers__slider
;   MAC_object_handlers__robot
;   MAC_object_handlers__eye_1_of_3
;   MAC_object_handlers__robed_skeleton_1_of_2

.macro MAC__ungrouped_10_of_12
; ----------------------------------------------------------------------------
L_BAD9: .byte   $FE                             ; BAD9
LBADA:  .byte   $00,$02,$00,$FE                 ; BADA
LBADE:  .byte   $DE,$02,$22,$FE                 ; BADE
LBAE2:  .byte   $20                             ; BAE2
LBAE3:  .byte   $00,$E0,$00,$20                 ; BAE3
.endmacro

; Interrupted by 2 macros:
;   MAC_object_handlers__robed_skeleton_2_of_2
;   MAC_object_handlers__eye_2_of_3

.macro MAC__ungrouped_11_of_12
; ----------------------------------------------------------------------------
L_BB71: .byte   $C0,$00,$40,$80                 ; BB71
.endmacro

; Interrupted by 1 macro:
;   MAC_object_handlers__eye_3_of_3

.macro MAC__ungrouped_12_of_12
; ----------------------------------------------------------------------------
L_BBA9: ldx     #$A8                            ; BBA9
        lda     #$D2                            ; BBAB
        sta     $00                             ; BBAD
        jsr     LC1D7                           ; BBAF
        beq     L_BBC1                          ; BBB2
        lda     #$48                            ; BBB4
        sta     ObjectTable + Obj::Type,x       ; BBB6
        jsr     LC0D8                           ; BBB9
        lda     #$1A                            ; BBBC
        jsr     LC216                           ; BBBE
L_BBC1: rts                                     ; BBC1

.endmacro

