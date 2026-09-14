.macro MAC_L_8112
; ----------------------------------------------------------------------------
L_8112: .byte   $F4,$E4,$0C,$A5,$04,$00,$08,$0C ; 8112
        .byte   $A6,$04,$00,$08,$0C,$A7,$04,$00 ; 811A
        .byte   $08,$0C,$A8,$04,$00,$08,$0C,$A9 ; 8122
        .byte   $04,$18,$E0,$0C,$D5,$04,$00,$08 ; 812A
        .byte   $0C,$D6,$04,$00,$08,$0C,$D7,$04 ; 8132
        .byte   $00,$08,$0C,$D8,$04,$00,$08,$1C ; 813A
        .byte   $D9,$04,$F0,$DC,$0C,$8A,$06,$00 ; 8142
        .byte   $08,$0C,$8B,$06,$00,$08,$0C,$8C ; 814A
        .byte   $06,$00,$08,$0C,$8D,$06,$00,$08 ; 8152
        .byte   $0C,$8E,$06,$00,$08,$0C,$8F,$06 ; 815A
        .byte   $20,$D8,$0C,$CA,$06,$00,$08,$0C ; 8162
        .byte   $CB,$06,$00,$08,$0C,$CC,$06,$00 ; 816A
        .byte   $08,$0C,$CD,$06,$00,$08,$0C,$CE ; 8172
        .byte   $06,$00,$08,$1C,$CF,$06,$00,$F8 ; 817A
        .byte   $0C,$01,$05,$00,$0C,$0D,$03,$02 ; 8182
        .byte   $04,$08,$01,$14,$FC,$F4,$18,$00 ; 818A
        .byte   $F8,$0C,$21,$05,$00,$10,$0D,$23 ; 8192
        .byte   $05,$00,$F8,$18,$00,$FC,$0D,$05 ; 819A
        .byte   $05,$00,$0C,$0D,$07,$02,$00,$F8 ; 81A2
        .byte   $18,$F8,$00,$0D,$08,$05,$10,$00 ; 81AA
        .byte   $0D,$28,$05,$F8,$00,$18,$F8,$00 ; 81B2
        .byte   $0D,$0A,$05,$10,$00,$0D,$2A,$05 ; 81BA
        .byte   $F8,$00,$18,$00,$F8,$0C,$0C,$05 ; 81C2
        .byte   $00,$10,$0D,$0E,$05,$00,$F8,$18 ; 81CA
        .byte   $00,$F8,$0C,$2C,$05,$00,$10,$0C ; 81D2
        .byte   $2E,$05,$00,$F8,$18,$00,$00,$1C ; 81DA
        .byte   $26,$05,$00,$00,$04,$91,$81,$F0 ; 81E2
        .byte   $00,$04,$80,$81,$20,$00,$54,$80 ; 81EA
        .byte   $81,$E8,$0C,$04,$9E,$81,$30,$00 ; 81F2
        .byte   $44,$9E,$81,$E8,$04,$04,$B8,$81 ; 81FA
        .byte   $00,$E8,$14,$E4,$81,$E8,$0C,$04 ; 8202
        .byte   $9E,$81,$30,$00,$44,$9E,$81,$E8 ; 820A
        .byte   $03,$04,$AB,$81,$00,$E8,$14,$E4 ; 8212
        .byte   $81,$00,$04,$04,$D2,$81,$F0,$00 ; 821A
        .byte   $04,$C5,$81,$20,$00,$54,$C5,$81 ; 8222
        .byte   $F8,$08,$06,$DF,$81,$10,$00,$56 ; 822A
        .byte   $DF,$81,$00,$05,$1E,$40,$05,$00 ; 8232
        .byte   $04,$12,$30,$00,$04,$10,$20,$00 ; 823A
        .byte   $04,$1C,$42,$05,$00,$04,$1C,$44 ; 8242
        .byte   $05,$00,$00,$10,$50,$00,$00,$10 ; 824A
        .byte   $30,$00,$00,$10,$40,$00,$00,$50 ; 8252
        .byte   $30,$00,$00,$00,$0C,$F8,$F8,$00 ; 825A
        .byte   $15,$08,$00,$00,$10,$08,$00,$10 ; 8262
        .byte   $20,$00,$00,$00,$0C,$FE,$F8,$00 ; 826A
        .byte   $13,$08,$00,$10,$23,$00,$00,$54 ; 8272
        .byte   $6B,$82,$00,$00,$54,$5B,$82,$00 ; 827A
        .byte   $00,$00,$0C,$04,$F6,$00,$11,$00 ; 8282
        .byte   $08,$00,$12,$08,$F8,$00,$21,$00 ; 828A
        .byte   $08,$00,$22,$F8,$F0,$10,$16,$00 ; 8292
        .byte   $00,$00,$0C,$F8,$F0,$00,$17,$08 ; 829A
        .byte   $08,$00,$10,$08,$00,$10,$20,$00 ; 82A2
        .byte   $00,$00,$0D,$08,$F8,$00,$16,$00 ; 82AA
        .byte   $08,$00,$03,$00,$08,$10,$04,$00 ; 82B2
        .byte   $00,$00,$0D,$08,$FE,$00,$33,$00 ; 82BA
        .byte   $08,$10,$34,$00,$00,$94,$B9,$82 ; 82C2
        .byte   $00,$00,$94,$A9,$82,$00,$00,$00 ; 82CA
        .byte   $0D,$02,$04,$C0,$42,$00,$08,$C0 ; 82D2
        .byte   $41,$08,$F8,$C0,$32,$00,$08,$C0 ; 82DA
        .byte   $31,$08,$F8,$50,$15,$00,$00,$00 ; 82E2
        .byte   $0D,$10,$F8,$40,$17,$F8,$08,$00 ; 82EA
        .byte   $03,$00,$08,$10,$04,$00,$00,$00 ; 82F2
        .byte   $0E,$04,$FA,$00,$11,$00,$08,$00 ; 82FA
        .byte   $12,$08,$F8,$00,$21,$00,$08,$00 ; 8302
        .byte   $22,$F1,$F3,$10,$17,$00,$00,$00 ; 830A
        .byte   $0F,$FA,$F4,$00,$31,$00,$08,$00 ; 8312
        .byte   $32,$08,$F8,$00,$41,$00,$08,$00 ; 831A
        .byte   $42,$F3,$07,$10,$18,$00,$00,$40 ; 8322
        .byte   $0C,$F8,$F8,$40,$20,$08,$00,$40 ; 832A
        .byte   $02,$08,$00,$40,$15,$F0,$F8,$50 ; 8332
        .byte   $01,$F8,$00,$00,$14,$10,$00,$10 ; 833A
        .byte   $14,$F8,$00,$00,$24,$10,$00,$10 ; 8342
        .byte   $24,$00,$00,$04,$3B,$83,$00,$08 ; 834A
        .byte   $04,$67,$83,$F0,$00,$14,$67,$83 ; 8352
        .byte   $00,$00,$04,$3B,$83,$00,$08,$00 ; 835A
        .byte   $4A,$F0,$00,$10,$4A,$00,$00,$00 ; 8362
        .byte   $49,$00,$08,$00,$4A,$00,$F8,$18 ; 836A
        .byte   $00,$00,$00,$1C,$4B,$04,$00,$00 ; 8372
        .byte   $00,$48,$00,$08,$00,$49,$00,$08 ; 837A
        .byte   $10,$4A,$00,$F4,$04,$93,$83,$F0 ; 8382
        .byte   $08,$04,$93,$83,$F0,$08,$14,$93 ; 838A
        .byte   $83,$00,$00,$20,$19,$08,$00,$20 ; 8392
        .byte   $19,$08,$00,$30,$19,$FC,$FC,$00 ; 839A
        .byte   $35,$08,$00,$00,$37,$F8,$08,$00 ; 83A2
        .byte   $36,$08,$00,$10,$38,$FC,$FC,$00 ; 83AA
        .byte   $2C,$08,$00,$00,$2E,$F8,$08,$00 ; 83B2
        .byte   $2D,$08,$00,$10,$2F,$00,$00,$10 ; 83BA
        .byte   $3F,$F8,$F8,$00,$39,$00,$08,$00 ; 83C2
        .byte   $3A,$00,$08,$00,$3B,$08,$F0,$00 ; 83CA
        .byte   $3C,$00,$08,$00,$3D,$00,$08,$00 ; 83D2
        .byte   $3E,$08,$F0,$00,$45,$00,$08,$00 ; 83DA
        .byte   $46,$00,$08,$10,$47,$F8,$00,$00 ; 83E2
        .byte   $40,$10,$00,$00,$43,$08,$00,$10 ; 83EA
        .byte   $53,$F8,$00,$00,$40,$10,$00,$00 ; 83F2
        .byte   $43,$08,$00,$10,$44,$F8,$04,$00 ; 83FA
        .byte   $30,$10,$00,$00,$30,$F8,$FF,$54 ; 8402
        .byte   $5B,$82,$F8,$04,$00,$30,$0E,$02 ; 840A
        .byte   $00,$30,$FA,$FD,$54,$5B,$82,$F8 ; 8412
        .byte   $04,$00,$30,$0C,$04,$00,$30,$FC ; 841A
        .byte   $FB,$54,$5B,$82,$F7,$03,$00,$30 ; 8422
        .byte   $0A,$06,$00,$30,$FD,$F9,$54,$0F ; 842A
        .byte   $83,$F7,$01,$00,$30,$08,$08,$00 ; 8432
        .byte   $30,$FF,$F9,$54,$0F,$83,$F7,$FF ; 843A
        .byte   $00,$30,$06,$0A,$00,$30,$01,$F9 ; 8442
        .byte   $54,$0F,$83,$F8,$FC,$00,$30,$04 ; 844A
        .byte   $0C,$00,$30,$01,$F8,$94,$A9,$82 ; 8452
        .byte   $FA,$FA,$00,$30,$02,$0E,$00,$30 ; 845A
        .byte   $01,$F8,$94,$A9,$82,$FC,$F8,$00 ; 8462
        .byte   $30,$00,$10,$00,$30,$01,$F8,$94 ; 846A
        .byte   $A9,$82,$04,$08,$00,$30,$00,$F0 ; 8472
        .byte   $00,$30,$FF,$08,$54,$A9,$82,$04 ; 847A
        .byte   $08,$00,$30,$02,$F2,$00,$30,$FD ; 8482
        .byte   $06,$54,$A9,$82,$04,$08,$00,$30 ; 848A
        .byte   $04,$F4,$00,$30,$FB,$04,$54,$A9 ; 8492
        .byte   $82,$03,$09,$00,$30,$06,$F6,$00 ; 849A
        .byte   $30,$F9,$03,$54,$F7,$82,$01,$09 ; 84A2
        .byte   $00,$30,$08,$F8,$00,$30,$F9,$04 ; 84AA
        .byte   $54,$F7,$82,$FF,$09,$00,$30,$0A ; 84B2
        .byte   $FA,$00,$30,$F9,$FF,$54,$F7,$82 ; 84BA
        .byte   $FC,$08,$00,$30,$0C,$FC,$00,$30 ; 84C2
        .byte   $F8,$FF,$54,$5B,$82,$FA,$06,$00 ; 84CA
        .byte   $30,$0E,$FE,$00,$30,$F8,$FF,$54 ; 84D2
        .byte   $5B,$82,$F8,$04,$00,$30,$10,$00 ; 84DA
        .byte   $00,$30,$F8,$FF,$54,$5B,$82,$F8 ; 84E2
        .byte   $04,$00,$30,$10,$00,$00,$30,$F8 ; 84EA
        .byte   $FF,$54,$5B,$82,$FA,$06,$00,$30 ; 84F2
        .byte   $0F,$FB,$00,$30,$F7,$02,$54,$5B ; 84FA
        .byte   $82,$FB,$07,$00,$30,$0E,$F9,$00 ; 8502
        .byte   $30,$F7,$03,$54,$5B,$82,$FC,$08 ; 850A
        .byte   $00,$30,$0D,$F7,$00,$30,$F9,$03 ; 8512
        .byte   $54,$F7,$82,$FD,$08,$00,$30,$0B ; 851A
        .byte   $F5,$00,$30,$FA,$05,$54,$F7,$82 ; 8522
        .byte   $FF,$09,$00,$30,$09,$F3,$00,$30 ; 852A
        .byte   $FA,$06,$54,$F7,$82,$00,$09,$00 ; 8532
        .byte   $30,$07,$F2,$00,$30,$FC,$05,$54 ; 853A
        .byte   $A9,$82,$01,$09,$00,$30,$05,$F1 ; 8542
        .byte   $00,$30,$FD,$06,$54,$A9,$82,$04 ; 854A
        .byte   $08,$00,$30,$00,$F0,$00,$30,$FF ; 8552
        .byte   $08,$54,$A9,$82,$FC,$08,$00,$30 ; 855A
        .byte   $00,$F0,$00,$30,$01,$08,$14,$A9 ; 8562
        .byte   $82,$FA,$06,$00,$30,$05,$F1,$00 ; 856A
        .byte   $30,$FE,$09,$14,$A9,$82,$F9,$05 ; 8572
        .byte   $00,$30,$07,$F2,$00,$30,$FD,$09 ; 857A
        .byte   $14,$A9,$82,$F8,$04,$00,$30,$09 ; 8582
        .byte   $F3,$00,$30,$FD,$07,$D4,$0F,$83 ; 858A
        .byte   $F8,$03,$00,$30,$0B,$F5,$00,$30 ; 8592
        .byte   $FB,$06,$D4,$0F,$83,$F7,$01,$00 ; 859A
        .byte   $30,$0D,$F7,$00,$30,$FA,$06,$D4 ; 85A2
        .byte   $0F,$83,$F7,$00,$00,$30,$0E,$F9 ; 85AA
        .byte   $00,$30,$FB,$04,$D4,$5B,$82,$F7 ; 85B2
        .byte   $FF,$00,$30,$0F,$FB,$00,$30,$FA ; 85BA
        .byte   $03,$D4,$5B,$82,$F8,$FC,$00,$30 ; 85C2
        .byte   $10,$00,$00,$30,$F8,$01,$D4,$5B ; 85CA
        .byte   $82,$00,$FC,$00,$4E,$00,$08,$10 ; 85D2
        .byte   $4F,$00,$FC,$00,$05,$00,$08,$10 ; 85DA
        .byte   $06,$00,$FC,$00,$07,$00,$08,$10 ; 85E2
        .byte   $08,$00,$FC,$00,$05,$00,$08,$10 ; 85EA
        .byte   $09,$00,$FC,$00,$07,$00,$08,$10 ; 85F2
        .byte   $08,$FC,$00,$00,$26,$08,$00,$10 ; 85FA
        .byte   $27,$FC,$00,$00,$28,$08,$00,$10 ; 8602
        .byte   $29,$FC,$FC,$00,$1A,$08,$00,$00 ; 860A
        .byte   $2A,$F8,$08,$00,$1B,$08,$00,$10 ; 8612
        .byte   $2B,$00,$FC,$0C,$A4,$02,$00,$08 ; 861A
        .byte   $1C,$A5,$02,$00,$FC,$0C,$A4,$02 ; 8622
        .byte   $00,$08,$0C,$A6,$02,$00,$08,$1C ; 862A
        .byte   $A7,$02,$00,$FC,$0C,$E9,$02,$00 ; 8632
        .byte   $08,$1C,$EA,$02,$00,$FD,$0C,$E9 ; 863A
        .byte   $02,$00,$08,$1C,$EB,$02,$00,$FC ; 8642
        .byte   $0C,$EC,$02,$00,$08,$1C,$ED,$02 ; 864A
        .byte   $FB,$FC,$00,$EE,$08,$00,$00,$FC ; 8652
        .byte   $F8,$08,$00,$EF,$08,$00,$10,$FD ; 865A
        .byte   $00,$FC,$0C,$A8,$02,$00,$08,$1C ; 8662
        .byte   $A9,$02,$00,$FC,$0C,$A8,$02,$00 ; 866A
        .byte   $08,$1C,$AA,$02,$00,$F8,$0C,$E0 ; 8672
        .byte   $02,$00,$08,$0C,$E1,$02,$00,$08 ; 867A
        .byte   $1C,$E2,$02,$00,$F8,$0C,$E0,$02 ; 8682
        .byte   $00,$08,$0C,$E1,$02,$00,$08,$1C ; 868A
        .byte   $E3,$02,$00,$F8,$0C,$CB,$02,$00 ; 8692
        .byte   $08,$0C,$CC,$02,$00,$08,$10,$DF ; 869A
        .byte   $00,$F8,$0C,$CD,$02,$00,$08,$0C ; 86A2
        .byte   $CE,$02,$00,$08,$10,$DF,$00,$FC ; 86AA
        .byte   $0C,$E0,$02,$00,$08,$1C,$E2,$02 ; 86B2
        .byte   $00,$FC,$0C,$E1,$02,$00,$08,$1C ; 86BA
        .byte   $E2,$02,$00,$F4,$0C,$AC,$02,$00 ; 86C2
        .byte   $08,$0C,$AD,$02,$00,$08,$1C,$AF ; 86CA
        .byte   $02,$00,$FC,$0C,$AE,$02,$00,$08 ; 86D2
        .byte   $1C,$AF,$02,$00,$FC,$0C,$C3,$02 ; 86DA
        .byte   $00,$08,$1C,$C4,$02,$FC,$FC,$00 ; 86E2
        .byte   $C3,$08,$00,$00,$E4,$FC,$08,$1C ; 86EA
        .byte   $C4,$02,$00,$FC,$0C,$C5,$04,$00 ; 86F2
        .byte   $08,$1C,$C6,$04,$00,$FC,$0C,$C7 ; 86FA
        .byte   $04,$00,$08,$1C,$C8,$04,$00,$F8 ; 8702
        .byte   $0C,$C0,$02,$00,$08,$0C,$C1,$02 ; 870A
        .byte   $00,$08,$0C,$C2,$02,$F4,$F8,$10 ; 8712
        .byte   $C5,$00,$F9,$0C,$C0,$02,$00,$08 ; 871A
        .byte   $0C,$C3,$02,$00,$08,$0C,$C4,$02 ; 8722
        .byte   $F4,$F8,$10,$C5,$FC,$FC,$00,$FF ; 872A
        .byte   $08,$00,$40,$A1,$F8,$08,$80,$A1 ; 8732
        .byte   $08,$00,$D0,$A1,$00,$FC,$0C,$A3 ; 873A
        .byte   $02,$00,$08,$9C,$A3,$02,$00,$FC ; 8742
        .byte   $0C,$A2,$02,$00,$08,$9C,$A2,$02 ; 874A
        .byte   $00,$FC,$0C,$A0,$02,$00,$08,$9C ; 8752
        .byte   $A0,$02,$FC,$FC,$00,$B1,$08,$00 ; 875A
        .byte   $40,$B1,$F8,$08,$80,$B1,$08,$00 ; 8762
        .byte   $D0,$B1,$00,$00,$54,$52,$87,$00 ; 876A
        .byte   $00,$54,$48,$87,$00,$00,$54,$3E ; 8772
        .byte   $87,$00,$00,$1C,$C9,$02,$00,$00 ; 877A
        .byte   $1C,$CA,$02,$00,$F8,$0C,$AB,$02 ; 8782
        .byte   $00,$08,$0C,$AC,$02,$00,$08,$1C ; 878A
        .byte   $AD,$02,$00,$F8,$0C,$AB,$02,$00 ; 8792
        .byte   $08,$0C,$AC,$02,$00,$08,$1C,$AE ; 879A
        .byte   $02,$00,$F8,$0C,$AB,$02,$00,$08 ; 87A2
        .byte   $0C,$AC,$02,$00,$08,$1C,$AF,$02 ; 87AA
        .byte   $00,$FC,$0C,$A8,$02,$00,$08,$1C ; 87B2
        .byte   $A9,$02,$00,$FC,$0C,$A8,$02,$FC ; 87BA
        .byte   $08,$00,$AA,$08,$00,$10,$B9,$00 ; 87C2
        .byte   $FC,$0C,$A8,$02,$FC,$08,$00,$BA ; 87CA
        .byte   $08,$00,$10,$B9,$00,$FC,$0C,$C6 ; 87D2
        .byte   $02,$00,$08,$9C,$C6,$02,$00,$FC ; 87DA
        .byte   $0C,$C7,$02,$00,$08,$1C,$C8,$02 ; 87E2
        .byte   $00,$00,$1C,$E8,$02,$00,$FC,$8C ; 87EA
        .byte   $C8,$02,$00,$08,$9C,$C7,$02     ; 87F2
.endmacro

.macro MAC_L_8907
L_8907: .byte   $12,$81,$44,$81,$85,$87,$94,$87 ; 8907
        .byte   $A3,$87,$B2,$87,$BC,$87,$C9,$87 ; 890F
        .byte   $D6,$87,$E0,$87,$EA,$87,$EF,$87 ; 8917
        .byte   $F9,$87,$0B,$88,$1D,$88,$22,$88 ; 891F
        .byte   $2C,$88,$39,$88,$3E,$88,$43,$88 ; 8927
        .byte   $F3,$88,$F8,$88,$FD,$88,$02,$89 ; 892F
        .byte   $07,$89,$07,$89,$07,$89,$07,$89 ; 8937
        .byte   $4B,$82,$4F,$82,$53,$82,$57,$82 ; 893F
        .byte   $5B,$82,$6B,$82,$77,$82,$7C,$82 ; 8947
        .byte   $81,$82,$99,$82,$A9,$82,$B9,$82 ; 894F
        .byte   $C5,$82,$CA,$82,$CF,$82,$E7,$82 ; 8957
        .byte   $3B,$83,$43,$83,$43,$83,$1B,$86 ; 895F
        .byte   $25,$86,$84,$83,$27,$83,$93,$83 ; 8967
        .byte   $9F,$83,$AF,$83,$BF,$83,$C3,$83 ; 896F
        .byte   $E7,$83,$F3,$83,$FF,$83,$0C,$84 ; 8977
        .byte   $19,$84,$26,$84,$33,$84,$40,$84 ; 897F
        .byte   $4D,$84,$5A,$84,$67,$84,$74,$84 ; 8987
        .byte   $81,$84,$8E,$84,$9B,$84,$A8,$84 ; 898F
        .byte   $B5,$84,$C2,$84,$CF,$84,$DC,$84 ; 8997
        .byte   $E9,$84,$F6,$84,$03,$85,$10,$85 ; 899F
        .byte   $1D,$85,$2A,$85,$37,$85,$44,$85 ; 89A7
        .byte   $51,$85,$5E,$85,$6B,$85,$78,$85 ; 89AF
        .byte   $85,$85,$92,$85,$9F,$85,$AC,$85 ; 89B7
        .byte   $B9,$85,$C6,$85,$F7,$82,$0F,$83 ; 89BF
        .byte   $D3,$85,$DB,$85,$E3,$85,$EB,$85 ; 89C7
        .byte   $F3,$85,$FB,$85,$03,$86,$0B,$86 ; 89CF
        .byte   $34,$86,$3E,$86,$48,$86,$52,$86 ; 89D7
        .byte   $62,$86,$6C,$86,$76,$86,$85,$86 ; 89DF
        .byte   $94,$86,$A2,$86,$B0,$86,$BA,$86 ; 89E7
        .byte   $C4,$86,$D3,$86,$DD,$86,$E7,$86 ; 89EF
        .byte   $F4,$86,$FE,$86,$4B,$83,$5A,$83 ; 89F7
        .byte   $73,$83,$78,$83,$08,$87,$1B,$87 ; 89FF
        .byte   $2E,$87,$3E,$87,$48,$87,$52,$87 ; 8A07
        .byte   $5C,$87,$6C,$87,$71,$87,$76,$87 ; 8A0F
        .byte   $7B,$87,$80,$87,$67,$83,$91,$81 ; 8A17
        .byte   $9E,$81,$AB,$81,$B8,$81,$C5,$81 ; 8A1F
        .byte   $D2,$81,$DF,$81,$E4,$81,$F3,$81 ; 8A27
        .byte   $07,$82,$1B,$82,$2A,$82,$34,$82 ; 8A2F
        .byte   $39,$82,$3D,$82,$41,$82,$46,$82 ; 8A37
        .byte   $80,$81,$48,$88,$4D,$88,$52,$88 ; 8A3F
        .byte   $5A,$88,$62,$88,$67,$88,$6C,$88 ; 8A47
        .byte   $71,$88,$76,$88,$80,$88,$8A,$88 ; 8A4F
        .byte   $94,$88,$9E,$88,$A8,$88,$B2,$88 ; 8A57
        .byte   $C3,$88,$D4,$88,$D9,$88,$DE,$88 ; 8A5F
        .byte   $E3,$88                         ; 8A67
.endmacro

.macro MAC_L_8B29
; ----------------------------------------------------------------------------
L_8B29: jsr     LC1CE                           ; 8B29
        ldx     LoadedObj + Obj::Facing         ; 8B2C
        lda     L8B8E,x                         ; 8B2E
        sta     LoadedObj + Obj::Velocity_X     ; 8B31
L_8B33: lda     L8B92,x                         ; 8B33
        sta     LoadedObj + Obj::Velocity_Y     ; 8B36
        lda     LoadedObj + Obj::Position_X_Lo  ; 8B38
        cmp     $1C                             ; 8B3A
        lda     LoadedObj + Obj::Position_X_Hi  ; 8B3C
        sbc     $1D                             ; 8B3E
        and     #$7F                            ; 8B40
        cmp     #$03                            ; 8B42
        bcc     L_8B7E                          ; 8B44
        cmp     #$0D                            ; 8B46
        bcs     L_8B7E                          ; 8B48
        lda     LoadedObj + Obj::Position_Y_Lo  ; 8B4A
        cmp     $1E                             ; 8B4C
        lda     LoadedObj + Obj::Position_Y_Hi  ; 8B4E
        sbc     $1F                             ; 8B50
        and     #$7F                            ; 8B52
        cmp     #$03                            ; 8B54
        bcc     L_8B7E                          ; 8B56
        cmp     #$0D                            ; 8B58
        bcs     L_8B7E                          ; 8B5A
        lda     $1C                             ; 8B5C
        clc                                     ; 8B5E
        adc     #$20                            ; 8B5F
        and     #$C0                            ; 8B61
        sta     $1C                             ; 8B63
        lda     $1E                             ; 8B65
        clc                                     ; 8B67
        adc     #$20                            ; 8B68
        and     #$C0                            ; 8B6A
        sta     $1E                             ; 8B6C
        lda     L_8B7A,x                        ; 8B6E
        sta     LoadedObj + Obj::Scratch1       ; 8B71
        lda     #$86                            ; 8B73
        sta     LoadedObj + Obj::Type           ; 8B75
        jmp     L_8C16                          ; 8B77

.endmacro

.macro MAC_L_8C3B
; ----------------------------------------------------------------------------
L_8C3B: lda     #$C0                            ; 8C3B
        sta     $42                             ; 8C3D
        lda     #$80                            ; 8C3F
        sta     $43                             ; 8C41
        jsr     LC11D                           ; 8C43
        lda     LoadedObj + Obj::Health         ; 8C46
        bne     L_8C67                          ; 8C48
        lda     $4F                             ; 8C4A
        bne     L_8C64                          ; 8C4C
        lda     #$04                            ; 8C4E
        sta     LoadedObj + Obj::Type           ; 8C50
        lda     #$00                            ; 8C52
        sta     LoadedObj + Obj::Scratch1       ; 8C54
        lda     $C5                             ; 8C56
        ora     #$08                            ; 8C58
        sta     $C5                             ; 8C5A
        jsr     LC0C0                           ; 8C5C
        lda     #$51                            ; 8C5F
        jsr     LC216                           ; 8C61
L_8C64: jmp     L_8D98                          ; 8C64

; ----------------------------------------------------------------------------
L_8C67: lda     $4F                             ; 8C67
        bne     L_8C9F                          ; 8C69
        jsr     LC138                           ; 8C6B
        jsr     LC09F                           ; 8C6E
        bne     L_8C9F                          ; 8C71
        txa                                     ; 8C73
        bne     L_8C8B                          ; 8C74
        lda     #$05                            ; 8C76
        sta     LoadedObj + Obj::Type           ; 8C78
        lda     #$00                            ; 8C7A
        sta     LoadedObj + Obj::Scratch1       ; 8C7C
        sta     $E0                             ; 8C7E
        lda     #$49                            ; 8C80
        jsr     LC216                           ; 8C82
        jsr     LC0C0                           ; 8C85
        jmp     L_8D98                          ; 8C88

; ----------------------------------------------------------------------------
L_8C8B: lda     #$20                            ; 8C8B
        sta     $4F                             ; 8C8D
        lda     #$1E                            ; 8C8F
        jsr     LC216                           ; 8C91
        lda     LoadedObj + Obj::Health         ; 8C94
        sec                                     ; 8C96
        sbc     #$20                            ; 8C97
        bcs     L_8C9D                          ; 8C99
        lda     #$00                            ; 8C9B
L_8C9D: sta     LoadedObj + Obj::Health         ; 8C9D
L_8C9F: jsr     LC138                           ; 8C9F
        and     #$38                            ; 8CA2
        sta     $45                             ; 8CA4
        jsr     LC132                           ; 8CA6
        jsr     LC138                           ; 8CA9
        jsr     LC0A8                           ; 8CAC
        bne     L_8CD4                          ; 8CAF
        ldx     $79                             ; 8CB1
L_8CB3: lda     L_8DAD,x                        ; 8CB3
        clc                                     ; 8CB6
        adc     LoadedObj + Obj::Velocity_X     ; 8CB7
        sta     LoadedObj + Obj::Velocity_X     ; 8CB9
        lda     L_8DB6,x                        ; 8CBB
        clc                                     ; 8CBE
        adc     LoadedObj + Obj::Velocity_Y     ; 8CBF
        sta     LoadedObj + Obj::Velocity_Y     ; 8CC1
        lda     #$20                            ; 8CC3
        ldx     #$4C                            ; 8CC5
        jsr     LC14D                           ; 8CC7
        lda     #$20                            ; 8CCA
        ldx     #$4D                            ; 8CCC
        jsr     LC14D                           ; 8CCE
        jmp     L_8CE0                          ; 8CD1

; ----------------------------------------------------------------------------
L_8CD4: ldx     $79                             ; 8CD4
        lda     L_8D9B,x                        ; 8CD6
        sta     LoadedObj + Obj::Velocity_X     ; 8CD9
        lda     L_8DA4,x                        ; 8CDB
        sta     LoadedObj + Obj::Velocity_Y     ; 8CDE
L_8CE0: jsr     LC165                           ; 8CE0
        beq     L_8D2B                          ; 8CE3
        lda     $C5                             ; 8CE5
        and     #$02                            ; 8CE7
        bne     L_8D27                          ; 8CE9
        lda     LoadedObj + Obj::Velocity_X     ; 8CEB
        beq     L_8D2B                          ; 8CED
        lda     LoadedObj + Obj::Position_Y_Hi  ; 8CEF
        lsr     a                               ; 8CF1
        ror     a                               ; 8CF2
        eor     LoadedObj + Obj::Position_Y_Lo  ; 8CF3
        bmi     L_8D27                          ; 8CF5
        ldx     LoadedObj + Obj::TileIndex      ; 8CF7
        lda     LoadedObj + Obj::Velocity_X     ; 8CF9
        beq     L_8D2B                          ; 8CFB
        bmi     L_8D01                          ; 8CFD
        inx                                     ; 8CFF
        inx                                     ; 8D00
L_8D01: dex                                     ; 8D01
        lda     LevelTileData,x                 ; 8D02
        and     #$08                            ; 8D05
        beq     L_8D27                          ; 8D07
        lda     #$03                            ; 8D09
        bit     LoadedObj + Obj::Velocity_X     ; 8D0B
        bmi     L_8D11                          ; 8D0D
        lda     #$01                            ; 8D0F
L_8D11: sta     LoadedObj + Obj::Facing         ; 8D11
        lda     LoadedObj + Obj::Position_Y_Lo  ; 8D13
        bpl     L_8D20                          ; 8D15
        inc     LoadedObj + Obj::Position_Y_Hi  ; 8D17
        lda     LoadedObj + Obj::TileIndex      ; 8D19
        clc                                     ; 8D1B
        adc     #$11                            ; 8D1C
        sta     LoadedObj + Obj::TileIndex      ; 8D1E
L_8D20: lda     #$00                            ; 8D20
        sta     LoadedObj + Obj::Position_Y_Lo  ; 8D22
        jmp     L_8B29                          ; 8D24

; ----------------------------------------------------------------------------
L_8D27: lda     #$00                            ; 8D27
        sta     LoadedObj + Obj::Velocity_X     ; 8D29
L_8D2B: jsr     LC03F                           ; 8D2B
        jsr     LC018                           ; 8D2E
        beq     L_8D76                          ; 8D31
        lda     $C5                             ; 8D33
        and     #$02                            ; 8D35
        bne     L_8D72                          ; 8D37
        lda     LoadedObj + Obj::Position_X_Hi  ; 8D39
        lsr     a                               ; 8D3B
        ror     a                               ; 8D3C
        eor     LoadedObj + Obj::Position_X_Lo  ; 8D3D
        bmi     L_8D72                          ; 8D3F
        lda     LoadedObj + Obj::Velocity_Y     ; 8D41
        beq     L_8D76                          ; 8D43
        lda     LoadedObj + Obj::TileIndex      ; 8D45
        sec                                     ; 8D47
        sbc     #$11                            ; 8D48
        bit     LoadedObj + Obj::Velocity_Y     ; 8D4A
        bmi     L_8D51                          ; 8D4C
        clc                                     ; 8D4E
        adc     #$22                            ; 8D4F
L_8D51: tax                                     ; 8D51
        lda     LevelTileData,x                 ; 8D52
        and     #$08                            ; 8D55
        beq     L_8D72                          ; 8D57
        lda     #$00                            ; 8D59
        bit     LoadedObj + Obj::Velocity_Y     ; 8D5B
        bmi     L_8D61                          ; 8D5D
        lda     #$02                            ; 8D5F
L_8D61: sta     LoadedObj + Obj::Facing         ; 8D61
        lda     LoadedObj + Obj::Position_X_Lo  ; 8D63
        bpl     L_8D6B                          ; 8D65
        inc     LoadedObj + Obj::Position_X_Hi  ; 8D67
        inc     LoadedObj + Obj::TileIndex      ; 8D69
L_8D6B: lda     #$00                            ; 8D6B
        sta     LoadedObj + Obj::Position_X_Lo  ; 8D6D
        jmp     L_8B29                          ; 8D6F

; ----------------------------------------------------------------------------
L_8D72: lda     #$00                            ; 8D72
        sta     LoadedObj + Obj::Velocity_Y     ; 8D74
L_8D76: lda     $F7                             ; 8D76
        bmi     L_8D81                          ; 8D78
        lda     $79                             ; 8D7A
        lsr     a                               ; 8D7C
        bcc     L_8D81                          ; 8D7D
        sta     LoadedObj + Obj::Facing         ; 8D7F
L_8D81: jsr     L_8E5B                          ; 8D81
        lda     $45                             ; 8D84
        cmp     #$08                            ; 8D86
        beq     L_8D98                          ; 8D88
        jsr     LC138                           ; 8D8A
        and     #$38                            ; 8D8D
        cmp     #$08                            ; 8D8F
        bne     L_8D98                          ; 8D91
        lda     #$01                            ; 8D93
        jsr     LC11A                           ; 8D95
L_8D98: jmp     L_8DBF                          ; 8D98

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
        ldx     $4F                             ; 8DD7
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
        sta     $4F                             ; 8DF2
        lda     #$00                            ; 8DF4
L_8DF6: sta     LoadedObj + Obj::Health         ; 8DF6
        beq     L_8DFE                          ; 8DF8
        lda     #$20                            ; 8DFA
        sta     $4F                             ; 8DFC
L_8DFE: lda     $4F                             ; 8DFE
        pha                                     ; 8E00
        lda     #$00                            ; 8E01
        sta     $4F                             ; 8E03
        jsr     L_93BD                          ; 8E05
        pla                                     ; 8E08
        sta     $4F                             ; 8E09
        lda     $4F                             ; 8E0B
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
L_8E56: rts                                     ; 8E56

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

.macro MAC_L_8F9A
; ----------------------------------------------------------------------------
L_8F9A: .byte   $D0                             ; 8F9A
L8F9B:  .byte   $00,$30,$00,$D0                 ; 8F9B
.endmacro

.macro MAC_L_8FF3
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

.macro MAC_L_91F2
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

.macro MAC_L_9237
; ----------------------------------------------------------------------------
L_9237: .byte   $E0                             ; 9237
L9238:  .byte   $00,$20,$00,$E0                 ; 9238
.endmacro

.macro MAC_L_93BD
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
        lda     $4F                             ; 95A5
        pha                                     ; 95A7
        lda     #$00                            ; 95A8
        sta     $4F                             ; 95AA
        lda     #$00                            ; 95AC
        jsr     LC066                           ; 95AE
        pla                                     ; 95B1
        sta     $4F                             ; 95B2
        rts                                     ; 95B4

; ----------------------------------------------------------------------------
L_95B5: .addr   L_95B7                          ; 95B5
L_95B7: .addr   L_95B9                          ; 95B7
; ----------------------------------------------------------------------------
L_95B9: .byte   $04,$08,$04,$C3,$95,$F0,$10,$14 ; 95B9
        .byte   $C3,$95,$00,$00,$20,$20,$08,$00 ; 95C1
        .byte   $20,$20,$08,$00,$30,$20         ; 95C9
.endmacro

.macro MAC_L_B1F9
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
        lda     $4F                             ; B246
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
        sta     $4F                             ; B25E
        pla                                     ; B260
        sta     LoadedObj + Obj::Health         ; B261
        rts                                     ; B263

; ----------------------------------------------------------------------------
L_B264: lda     LoadedObj + Obj::Health         ; B264
        pha                                     ; B266
        lda     $4F                             ; B267
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
        sta     $4F                             ; B27F
        pla                                     ; B281
        sta     LoadedObj + Obj::Health         ; B282
        rts                                     ; B284

.endmacro

.macro MAC_L_B2B4
; ----------------------------------------------------------------------------
L_B2B4: jsr     L_B314                          ; B2B4
        ldy     #$00                            ; B2B7
        lda     ($A3),y                         ; B2B9
        sta     LoadedObj + Obj::Health         ; B2BB
        sty     $4F                             ; B2BD
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

.macro MAC_L_B5A5
; ----------------------------------------------------------------------------
L_B5A5: .byte   $42,$43                         ; B5A5
.endmacro

.macro MAC_L_B9B0
; ----------------------------------------------------------------------------
L_B9B0: .byte   $E0                             ; B9B0
LB9B1:  .byte   $00,$20,$00,$E0                 ; B9B1
.endmacro

.macro MAC_L_BAD9
; ----------------------------------------------------------------------------
L_BAD9: .byte   $FE                             ; BAD9
LBADA:  .byte   $00,$02,$00,$FE                 ; BADA
LBADE:  .byte   $DE,$02,$22,$FE                 ; BADE
LBAE2:  .byte   $20                             ; BAE2
LBAE3:  .byte   $00,$E0,$00,$20                 ; BAE3
.endmacro

.macro MAC_L_BB71
; ----------------------------------------------------------------------------
L_BB71: .byte   $C0,$00,$40,$80                 ; BB71
.endmacro

.macro MAC_L_BBA9
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

