.macro MAC_L_8C64
L_8C64: jmp     L_8C8B                          ; 8C64

; ----------------------------------------------------------------------------
        lda     #$C0                            ; 8C67
        sta     $42                             ; 8C69
        lda     #$80                            ; 8C6B
        sta     $43                             ; 8C6D
        lda     $51                             ; 8C6F
        bne     L_8C7C                          ; 8C71
        lda     #$06                            ; 8C73
        sta     $D4                             ; 8C75
        lda     #$4A                            ; 8C77
        jsr     LDECC                           ; 8C79
L_8C7C: inc     $51                             ; 8C7C
        lda     $51                             ; 8C7E
        cmp     #$50                            ; 8C80
        bne     L_8C8B                          ; 8C82
        dec     $51                             ; 8C84
        lda     #$02                            ; 8C86
        jsr     LD1EF                           ; 8C88
L_8C8B: lda     #$18                            ; 8C8B
        sta     $40                             ; 8C8D
        lda     #$10                            ; 8C8F
        sta     $41                             ; 8C91
        jsr     LEF2B                           ; 8C93
        lda     #$00                            ; 8C96
        sta     $44                             ; 8C98
        lda     $51                             ; 8C9A
        lsr     a                               ; 8C9C
        tax                                     ; 8C9D
        cpx     #$05                            ; 8C9E
        bcs     L_8CAA                          ; 8CA0
        lda     L8CAB,x                         ; 8CA2
        bmi     L_8CAA                          ; 8CA5
        jsr     LF011                           ; 8CA7
L_8CAA: rts                                     ; 8CAA

; ----------------------------------------------------------------------------
L8CAB:  .byte   $00,$01,$FF,$01,$00             ; 8CAB
; ----------------------------------------------------------------------------
        jmp     L_8DC0                          ; 8CB0

; ----------------------------------------------------------------------------
        lda     #$C0                            ; 8CB3
        sta     $42                             ; 8CB5
        lda     #$80                            ; 8CB7
        sta     $43                             ; 8CB9
        jsr     LCF07                           ; 8CBB
        jsr     L_96C2                          ; 8CBE
        bne     L_8CCA                          ; 8CC1
        lda     #$03                            ; 8CC3
        sta     $46                             ; 8CC5
        jmp     L_8DC0                          ; 8CC7

; ----------------------------------------------------------------------------
L_8CCA: lda     #$00                            ; 8CCA
        sta     $50                             ; 8CCC
        jsr     LD21D                           ; 8CCE
        lda     $F7                             ; 8CD1
        and     #$03                            ; 8CD3
        cmp     #$01                            ; 8CD5
        beq     L_8CF2                          ; 8CD7
        cmp     #$02                            ; 8CD9
        beq     L_8CEB                          ; 8CDB
        lda     $11                             ; 8CDD
        and     #$03                            ; 8CDF
        bne     L_8D03                          ; 8CE1
        lda     $4C                             ; 8CE3
        beq     L_8D03                          ; 8CE5
        bmi     L_8CF4                          ; 8CE7
        bpl     L_8CED                          ; 8CE9
L_8CEB: dec     $4C                             ; 8CEB
L_8CED: dec     $4C                             ; 8CED
        jmp     L_8CF6                          ; 8CEF

; ----------------------------------------------------------------------------
L_8CF2: inc     $4C                             ; 8CF2
L_8CF4: inc     $4C                             ; 8CF4
L_8CF6: ldx     #$4C                            ; 8CF6
        lda     #$10                            ; 8CF8
        bit     $F7                             ; 8CFA
        bpl     L_8D00                          ; 8CFC
        lda     #$20                            ; 8CFE
L_8D00: jsr     LEB14                           ; 8D00
L_8D03: lda     $F7                             ; 8D03
        and     #$08                            ; 8D05
        bne     L_8D1D                          ; 8D07
        lda     $F7                             ; 8D09
        and     #$04                            ; 8D0B
        bne     L_8D24                          ; 8D0D
        inc     $4D                             ; 8D0F
        bmi     L_8D39                          ; 8D11
        lda     #$04                            ; 8D13
        cmp     $4D                             ; 8D15
        bcs     L_8D39                          ; 8D17
        sta     $4D                             ; 8D19
        bcc     L_8D39                          ; 8D1B
L_8D1D: dec     $4D                             ; 8D1D
        dec     $4D                             ; 8D1F
        jmp     L_8D28                          ; 8D21

; ----------------------------------------------------------------------------
L_8D24: inc     $4D                             ; 8D24
        inc     $4D                             ; 8D26
L_8D28: lda     $53                             ; 8D28
        bne     L_8D32                          ; 8D2A
        lda     #$30                            ; 8D2C
        sta     $4D                             ; 8D2E
        bne     L_8D39                          ; 8D30
L_8D32: ldx     #$4D                            ; 8D32
        lda     #$18                            ; 8D34
        jsr     LEB14                           ; 8D36
L_8D39: jsr     LD3DE                           ; 8D39
        beq     L_8D4E                          ; 8D3C
        lda     $4D                             ; 8D3E
        bmi     L_8D48                          ; 8D40
        lda     #$03                            ; 8D42
        sta     $46                             ; 8D44
        bne     L_8D66                          ; 8D46
L_8D48: lda     #$10                            ; 8D48
        sta     $4D                             ; 8D4A
        bne     L_8D66                          ; 8D4C
L_8D4E: jsr     LD2AB                           ; 8D4E
        and     #$40                            ; 8D51
        bne     L_8D66                          ; 8D53
        lda     #$00                            ; 8D55
        sta     $4A                             ; 8D57
        inc     $4B                             ; 8D59
        lda     $4E                             ; 8D5B
        clc                                     ; 8D5D
        adc     #$11                            ; 8D5E
        sta     $4E                             ; 8D60
        lda     #$10                            ; 8D62
        sta     $4D                             ; 8D64
L_8D66: jsr     LD37A                           ; 8D66
        beq     L_8D91                          ; 8D69
        lda     $4A                             ; 8D6B
        bne     L_8D91                          ; 8D6D
        lda     #$F0                            ; 8D6F
        bit     $4C                             ; 8D71
        bpl     L_8D77                          ; 8D73
        lda     #$EE                            ; 8D75
L_8D77: jsr     LD2B1                           ; 8D77
        and     #$C0                            ; 8D7A
        bne     L_8D91                          ; 8D7C
        lda     #$80                            ; 8D7E
        sta     $48                             ; 8D80
        sta     $4A                             ; 8D82
        dec     $4B                             ; 8D84
        lda     $4E                             ; 8D86
        sec                                     ; 8D88
        sbc     #$11                            ; 8D89
        sta     $4E                             ; 8D8B
        lda     #$00                            ; 8D8D
        sta     $50                             ; 8D8F
L_8D91: lda     #$00                            ; 8D91
        sta     $94                             ; 8D93
        lda     $F3                             ; 8D95
        and     #$03                            ; 8D97
        cmp     #$01                            ; 8D99
        beq     L_8DAD                          ; 8D9B
        cmp     #$02                            ; 8D9D
        beq     L_8DA5                          ; 8D9F
        lda     $47                             ; 8DA1
        bpl     L_8DAD                          ; 8DA3
L_8DA5: ldx     #$03                            ; 8DA5
        lda     #$80                            ; 8DA7
        ldy     #$90                            ; 8DA9
        bne     L_8DB3                          ; 8DAB
L_8DAD: ldx     #$01                            ; 8DAD
        lda     #$0F                            ; 8DAF
        ldy     #$70                            ; 8DB1
L_8DB3: stx     $BE                             ; 8DB3
        sta     $47                             ; 8DB5
        sty     $BC                             ; 8DB7
        lda     #$C0                            ; 8DB9
        sta     $BD                             ; 8DBB
        jsr     L_96EB                          ; 8DBD
L_8DC0: jmp     L_8DD5                          ; 8DC0

; ----------------------------------------------------------------------------
        .byte   $00,$00,$01,$01,$01,$00,$FF,$FF ; 8DC3
        .byte   $FF,$00,$FF,$FF,$00,$01,$01,$01 ; 8DCB
        .byte   $00,$FF                         ; 8DD3
; ----------------------------------------------------------------------------
L_8DD5: lda     #$18                            ; 8DD5
        sta     $40                             ; 8DD7
        lda     #$10                            ; 8DD9
        sta     $41                             ; 8DDB
        jsr     LCBDF                           ; 8DDD
        jsr     LEF2B                           ; 8DE0
        jsr     L_894E                          ; 8DE3
        lda     $3F                             ; 8DE6
        pha                                     ; 8DE8
        lda     $3E                             ; 8DE9
        pha                                     ; 8DEB
        lda     $3F                             ; 8DEC
        clc                                     ; 8DEE
        adc     #$04                            ; 8DEF
        sta     $3F                             ; 8DF1
        lda     #$00                            ; 8DF3
        ldx     $47                             ; 8DF5
        bmi     L_8DFB                          ; 8DF7
        lda     #$40                            ; 8DF9
L_8DFB: sta     $44                             ; 8DFB
        ldx     #$38                            ; 8DFD
        lda     $F7                             ; 8DFF
        and     #$03                            ; 8E01
        beq     L_8E11                          ; 8E03
        lda     #$04                            ; 8E05
        bit     $F7                             ; 8E07
        bpl     L_8E0C                          ; 8E09
        lsr     a                               ; 8E0B
L_8E0C: bit     $10                             ; 8E0C
        beq     L_8E11                          ; 8E0E
        inx                                     ; 8E10
L_8E11: txa                                     ; 8E11
        jsr     LF011                           ; 8E12
        pla                                     ; 8E15
        sta     $3E                             ; 8E16
        pla                                     ; 8E18
        sta     $3F                             ; 8E19
        lda     $3F                             ; 8E1B
        clc                                     ; 8E1D
        adc     #$04                            ; 8E1E
        sta     $3F                             ; 8E20
        lda     #$00                            ; 8E22
        sta     $44                             ; 8E24
        lda     $47                             ; 8E26
        lsr     a                               ; 8E28
        lsr     a                               ; 8E29
        and     #$03                            ; 8E2A
        clc                                     ; 8E2C
        adc     #$20                            ; 8E2D
        jmp     LF011                           ; 8E2F

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_8E97
L_8E97: jmp     L_8F64                          ; 8E97

; ----------------------------------------------------------------------------
        jsr     LCF07                           ; 8E9A
        lda     #$C0                            ; 8E9D
        sta     $42                             ; 8E9F
        lda     #$80                            ; 8EA1
        sta     $43                             ; 8EA3
        jsr     L_96C2                          ; 8EA5
        lda     #$80                            ; 8EA8
        sta     $4A                             ; 8EAA
        lda     $99                             ; 8EAC
        and     #$0C                            ; 8EAE
        cmp     #$0C                            ; 8EB0
        beq     L_8EB7                          ; 8EB2
        jmp     L_8F3E                          ; 8EB4

; ----------------------------------------------------------------------------
L_8EB7: lda     #$00                            ; 8EB7
        sec                                     ; 8EB9
        sbc     $4C                             ; 8EBA
        sta     $4C                             ; 8EBC
        jsr     L_8E32                          ; 8EBE
        lda     #$00                            ; 8EC1
        sec                                     ; 8EC3
        sbc     $4C                             ; 8EC4
        sta     $4C                             ; 8EC6
        jsr     LD2DE                           ; 8EC8
        jsr     LD37D                           ; 8ECB
        beq     L_8EF8                          ; 8ECE
        lda     #$11                            ; 8ED0
        jsr     LD2B1                           ; 8ED2
        bmi     L_8F2F                          ; 8ED5
        ldx     $48                             ; 8ED7
        lda     $F7                             ; 8ED9
        and     #$03                            ; 8EDB
        cmp     #$01                            ; 8EDD
        beq     L_8EED                          ; 8EDF
        cmp     #$02                            ; 8EE1
        bne     L_8F2F                          ; 8EE3
        cpx     #$40                            ; 8EE5
        bne     L_8F2F                          ; 8EE7
        lda     #$02                            ; 8EE9
        bne     L_8EF3                          ; 8EEB
L_8EED: cpx     #$C0                            ; 8EED
        bne     L_8F2F                          ; 8EEF
        lda     #$03                            ; 8EF1
L_8EF3: sta     $50                             ; 8EF3
        jmp     L_8B69                          ; 8EF5

; ----------------------------------------------------------------------------
L_8EF8: lda     $F7                             ; 8EF8
        and     #$03                            ; 8EFA
        tax                                     ; 8EFC
        lda     $48                             ; 8EFD
        cmp     #$40                            ; 8EFF
        bcc     L_8F14                          ; 8F01
        cmp     #$C0                            ; 8F03
        bcc     L_8F2F                          ; 8F05
        cpx     #$02                            ; 8F07
        bne     L_8F2F                          ; 8F09
        lda     #$02                            ; 8F0B
        pha                                     ; 8F0D
        ldy     #$C0                            ; 8F0E
        lda     #$F0                            ; 8F10
        bne     L_8F1F                          ; 8F12
L_8F14: cpx     #$01                            ; 8F14
        bne     L_8F2F                          ; 8F16
        lda     #$03                            ; 8F18
        pha                                     ; 8F1A
        ldy     #$40                            ; 8F1B
        lda     #$EE                            ; 8F1D
L_8F1F: jsr     LD2B1                           ; 8F1F
        bpl     L_8F27                          ; 8F22
        pla                                     ; 8F24
        bpl     L_8F2F                          ; 8F25
L_8F27: pla                                     ; 8F27
        sta     $50                             ; 8F28
        sty     $48                             ; 8F2A
        jmp     L_8AED                          ; 8F2C

; ----------------------------------------------------------------------------
L_8F2F: lda     #$EF                            ; 8F2F
        jsr     LD2B1                           ; 8F31
        bpl     L_8F3E                          ; 8F34
        lda     $F3                             ; 8F36
        bpl     L_8F49                          ; 8F38
        lda     #$20                            ; 8F3A
        sta     $4D                             ; 8F3C
L_8F3E: lda     #$02                            ; 8F3E
        sta     $50                             ; 8F40
        lda     #$03                            ; 8F42
        sta     $46                             ; 8F44
        jmp     L_94FC                          ; 8F46

; ----------------------------------------------------------------------------
L_8F49: jsr     L_9641                          ; 8F49
        clc                                     ; 8F4C
        adc     #$02                            ; 8F4D
        sta     $BE                             ; 8F4F
        lda     #$00                            ; 8F51
        sec                                     ; 8F53
        sec                                     ; 8F54
        sbc     $BC                             ; 8F55
        sta     $BC                             ; 8F57
        lda     #$00                            ; 8F59
        sec                                     ; 8F5B
        sec                                     ; 8F5C
        sbc     $BD                             ; 8F5D
        sta     $BD                             ; 8F5F
        jsr     L_96EB                          ; 8F61
L_8F64: jsr     LCBDF                           ; 8F64
        lda     #$18                            ; 8F67
        sta     $40                             ; 8F69
        lda     #$10                            ; 8F6B
        sta     $41                             ; 8F6D
        jsr     LEF2B                           ; 8F6F
        jsr     L_894E                          ; 8F72
        lda     $3F                             ; 8F75
        pha                                     ; 8F77
        lda     $3E                             ; 8F78
        pha                                     ; 8F7A
        lda     $3F                             ; 8F7B
        sec                                     ; 8F7D
        sbc     #$04                            ; 8F7E
        sta     $3F                             ; 8F80
        lda     #$40                            ; 8F82
        sta     $44                             ; 8F84
        lda     $94                             ; 8F86
        lsr     a                               ; 8F88
        lsr     a                               ; 8F89
        clc                                     ; 8F8A
        adc     $3E                             ; 8F8B
        sec                                     ; 8F8D
        sbc     #$08                            ; 8F8E
        sta     $3E                             ; 8F90
        lda     $48                             ; 8F92
        asl     a                               ; 8F94
        rol     a                               ; 8F95
        rol     a                               ; 8F96
        pha                                     ; 8F97
        and     #$03                            ; 8F98
        clc                                     ; 8F9A
        adc     #$1C                            ; 8F9B
        jsr     LF011                           ; 8F9D
        lda     $94                             ; 8FA0
        lsr     a                               ; 8FA2
        and     #$06                            ; 8FA3
        eor     #$FF                            ; 8FA5
        clc                                     ; 8FA7
        adc     #$11                            ; 8FA8
        clc                                     ; 8FAA
        adc     $3E                             ; 8FAB
        sta     $3E                             ; 8FAD
        pla                                     ; 8FAF
        clc                                     ; 8FB0
        adc     #$01                            ; 8FB1
        and     #$03                            ; 8FB3
        clc                                     ; 8FB5
        adc     #$1C                            ; 8FB6
        jsr     LF011                           ; 8FB8
        pla                                     ; 8FBB
        sta     $3E                             ; 8FBC
        pla                                     ; 8FBE
        sta     $3F                             ; 8FBF
        lda     $94                             ; 8FC1
        lsr     a                               ; 8FC3
        and     #$06                            ; 8FC4
        sec                                     ; 8FC6
        sbc     #$03                            ; 8FC7
        clc                                     ; 8FC9
        adc     $3F                             ; 8FCA
        sta     $3F                             ; 8FCC
        lda     $4C                             ; 8FCE
        beq     L_8FDA                          ; 8FD0
        lda     $48                             ; 8FD2
        and     #$40                            ; 8FD4
        beq     L_8FDA                          ; 8FD6
        inc     $3F                             ; 8FD8
L_8FDA: lda     $94                             ; 8FDA
        beq     L_8FF8                          ; 8FDC
        ldx     #$C0                            ; 8FDE
        bit     $47                             ; 8FE0
        bmi     L_8FE6                          ; 8FE2
        ldx     #$80                            ; 8FE4
L_8FE6: stx     $44                             ; 8FE6
        lda     $94                             ; 8FE8
        lsr     a                               ; 8FEA
        lsr     a                               ; 8FEB
        cmp     #$03                            ; 8FEC
        beq     L_8FF4                          ; 8FEE
        lda     #$25                            ; 8FF0
        bne     L_9005                          ; 8FF2
L_8FF4: lda     #$24                            ; 8FF4
        bne     L_9005                          ; 8FF6
L_8FF8: lda     #$C0                            ; 8FF8
        sta     $44                             ; 8FFA
        lda     $47                             ; 8FFC
        lsr     a                               ; 8FFE
        lsr     a                               ; 8FFF
        and     #$03                            ; 9000
        clc                                     ; 9002
        adc     #$20                            ; 9003
L_9005: jmp     LF011                           ; 9005

; ----------------------------------------------------------------------------
        rts                                     ; 9008

; ----------------------------------------------------------------------------
        jmp     L_90C9                          ; 9009

; ----------------------------------------------------------------------------
        lda     #$80                            ; 900C
        sta     $42                             ; 900E
        lda     #$C0                            ; 9010
        sta     $43                             ; 9012
        jsr     L_96C2                          ; 9014
        jsr     LCF07                           ; 9017
        lda     #$80                            ; 901A
        sta     $48                             ; 901C
        lda     $4D                             ; 901E
        sta     $4C                             ; 9020
        jsr     L_8E32                          ; 9022
        lda     $4C                             ; 9025
        sta     $4D                             ; 9027
        jsr     LD2FE                           ; 9029
        jsr     LD3E1                           ; 902C
        beq     L_9054                          ; 902F
        lda     #$01                            ; 9031
        jsr     LD2B1                           ; 9033
        bmi     L_908B                          ; 9036
        lda     $F7                             ; 9038
        and     #$03                            ; 903A
        tax                                     ; 903C
        lda     $4D                             ; 903D
        bmi     L_9049                          ; 903F
        cpx     #$01                            ; 9041
        bne     L_908B                          ; 9043
        lda     #$02                            ; 9045
        bne     L_904F                          ; 9047
L_9049: cpx     #$02                            ; 9049
        bne     L_908B                          ; 904B
        lda     #$00                            ; 904D
L_904F: sta     $50                             ; 904F
        jmp     L_8BA7                          ; 9051

; ----------------------------------------------------------------------------
L_9054: lda     $F7                             ; 9054
        and     #$03                            ; 9056
        tax                                     ; 9058
        lda     $4A                             ; 9059
        cmp     #$40                            ; 905B
        bcc     L_9070                          ; 905D
        cmp     #$C0                            ; 905F
        bcc     L_908B                          ; 9061
        cpx     #$01                            ; 9063
        bne     L_908B                          ; 9065
        lda     #$03                            ; 9067
        pha                                     ; 9069
        ldy     #$C0                            ; 906A
        lda     #$10                            ; 906C
        bne     L_907B                          ; 906E
L_9070: cpx     #$02                            ; 9070
        bne     L_908B                          ; 9072
        lda     #$01                            ; 9074
        pha                                     ; 9076
        ldy     #$40                            ; 9077
        lda     #$EE                            ; 9079
L_907B: jsr     LD2B1                           ; 907B
        bpl     L_9083                          ; 907E
        pla                                     ; 9080
        bpl     L_908B                          ; 9081
L_9083: pla                                     ; 9083
        sta     $50                             ; 9084
        sty     $4A                             ; 9086
        jmp     L_8B2B                          ; 9088

; ----------------------------------------------------------------------------
L_908B: ldx     $4E                             ; 908B
        inx                                     ; 908D
        lda     $0500,x                         ; 908E
        bmi     L_9097                          ; 9091
        lda     $F3                             ; 9093
        bmi     L_909E                          ; 9095
L_9097: dex                                     ; 9097
        dex                                     ; 9098
        lda     $0500,x                         ; 9099
        bmi     L_90B1                          ; 909C
L_909E: lda     #$C0                            ; 909E
        sta     $48                             ; 90A0
        lda     #$00                            ; 90A2
        sta     $4C                             ; 90A4
        lda     #$02                            ; 90A6
        sta     $50                             ; 90A8
        lda     #$03                            ; 90AA
        sta     $46                             ; 90AC
        jmp     L_94FC                          ; 90AE

; ----------------------------------------------------------------------------
L_90B1: jsr     L_9641                          ; 90B1
        clc                                     ; 90B4
        adc     #$01                            ; 90B5
        sta     $BE                             ; 90B7
        ldx     $BC                             ; 90B9
        lda     $BD                             ; 90BB
        eor     #$FF                            ; 90BD
        clc                                     ; 90BF
        adc     #$01                            ; 90C0
        sta     $BC                             ; 90C2
        stx     $BD                             ; 90C4
        jsr     L_96EB                          ; 90C6
L_90C9: jsr     LCBDF                           ; 90C9
        lda     #$10                            ; 90CC
        sta     $40                             ; 90CE
        lda     #$18                            ; 90D0
        sta     $41                             ; 90D2
        jsr     LEF2B                           ; 90D4
        jsr     L_894E                          ; 90D7
        lda     $3F                             ; 90DA
        pha                                     ; 90DC
        lda     $3E                             ; 90DD
        pha                                     ; 90DF
        lda     $3E                             ; 90E0
        sec                                     ; 90E2
        sbc     #$04                            ; 90E3
        sta     $3E                             ; 90E5
        lda     #$00                            ; 90E7
        sta     $44                             ; 90E9
        lda     $94                             ; 90EB
        lsr     a                               ; 90ED
        lsr     a                               ; 90EE
        clc                                     ; 90EF
        adc     $3F                             ; 90F0
        sec                                     ; 90F2
        sbc     #$08                            ; 90F3
        sta     $3F                             ; 90F5
        lda     $4A                             ; 90F7
        asl     a                               ; 90F9
        rol     a                               ; 90FA
        rol     a                               ; 90FB
        pha                                     ; 90FC
        and     #$03                            ; 90FD
        clc                                     ; 90FF
        adc     #$1C                            ; 9100
        jsr     LF011                           ; 9102
        lda     $94                             ; 9105
        lsr     a                               ; 9107
        and     #$06                            ; 9108
        eor     #$FF                            ; 910A
        clc                                     ; 910C
        adc     #$11                            ; 910D
        clc                                     ; 910F
        adc     $3F                             ; 9110
        sta     $3F                             ; 9112
        pla                                     ; 9114
        clc                                     ; 9115
        adc     #$01                            ; 9116
        and     #$03                            ; 9118
        clc                                     ; 911A
        adc     #$1C                            ; 911B
        jsr     LF011                           ; 911D
        pla                                     ; 9120
        sta     $3E                             ; 9121
        pla                                     ; 9123
        sta     $3F                             ; 9124
        lda     $94                             ; 9126
        lsr     a                               ; 9128
        and     #$06                            ; 9129
        sec                                     ; 912B
        sbc     #$03                            ; 912C
        clc                                     ; 912E
        adc     $3E                             ; 912F
        sta     $3E                             ; 9131
        lda     $4D                             ; 9133
        beq     L_913F                          ; 9135
        lda     $4A                             ; 9137
        and     #$40                            ; 9139
        beq     L_913F                          ; 913B
        dec     $3E                             ; 913D
L_913F: lda     $94                             ; 913F
        beq     L_915D                          ; 9141
        ldx     #$00                            ; 9143
        bit     $47                             ; 9145
        bmi     L_914B                          ; 9147
        ldx     #$80                            ; 9149
L_914B: stx     $44                             ; 914B
        lda     $94                             ; 914D
        lsr     a                               ; 914F
        lsr     a                               ; 9150
        cmp     #$03                            ; 9151
        beq     L_9159                          ; 9153
        lda     #$2B                            ; 9155
        bne     L_916A                          ; 9157
L_9159: lda     #$2A                            ; 9159
        bne     L_916A                          ; 915B
L_915D: lda     #$00                            ; 915D
        sta     $44                             ; 915F
        lda     $47                             ; 9161
        lsr     a                               ; 9163
        lsr     a                               ; 9164
        and     #$03                            ; 9165
        clc                                     ; 9167
        adc     #$26                            ; 9168
L_916A: jmp     LF011                           ; 916A

; ----------------------------------------------------------------------------
        rts                                     ; 916D

; ----------------------------------------------------------------------------
        jmp     L_9234                          ; 916E

; ----------------------------------------------------------------------------
        lda     #$80                            ; 9171
        sta     $42                             ; 9173
        lda     #$C0                            ; 9175
        sta     $43                             ; 9177
        jsr     LCF07                           ; 9179
        jsr     L_96C2                          ; 917C
        lda     #$80                            ; 917F
        sta     $48                             ; 9181
        lda     #$00                            ; 9183
        sec                                     ; 9185
        sbc     $4D                             ; 9186
        sta     $4C                             ; 9188
        jsr     L_8E32                          ; 918A
        lda     #$00                            ; 918D
        sec                                     ; 918F
        sbc     $4C                             ; 9190
        sta     $4D                             ; 9192
        jsr     LD2FE                           ; 9194
        jsr     LD3E1                           ; 9197
        beq     L_91BF                          ; 919A
        lda     #$FF                            ; 919C
        jsr     LD2B1                           ; 919E
        bmi     L_91F6                          ; 91A1
        lda     $F7                             ; 91A3
        and     #$03                            ; 91A5
        tax                                     ; 91A7
        lda     $4D                             ; 91A8
        bmi     L_91B4                          ; 91AA
        cpx     #$02                            ; 91AC
        bne     L_91F6                          ; 91AE
        lda     #$03                            ; 91B0
        bne     L_91BA                          ; 91B2
L_91B4: cpx     #$01                            ; 91B4
        bne     L_91F6                          ; 91B6
        lda     #$01                            ; 91B8
L_91BA: sta     $50                             ; 91BA
        jmp     L_8BA7                          ; 91BC

; ----------------------------------------------------------------------------
L_91BF: lda     $F7                             ; 91BF
        and     #$03                            ; 91C1
        tax                                     ; 91C3
        lda     $4A                             ; 91C4
        cmp     #$40                            ; 91C6
        bcc     L_91DB                          ; 91C8
        cmp     #$C0                            ; 91CA
        bcc     L_91F6                          ; 91CC
        cpx     #$02                            ; 91CE
        bne     L_91F6                          ; 91D0
        lda     #$02                            ; 91D2
        pha                                     ; 91D4
        ldy     #$C0                            ; 91D5
        lda     #$12                            ; 91D7
        bne     L_91E6                          ; 91D9
L_91DB: cpx     #$01                            ; 91DB
        bne     L_91F6                          ; 91DD
        lda     #$00                            ; 91DF
        pha                                     ; 91E1
        ldy     #$40                            ; 91E2
        lda     #$F0                            ; 91E4
L_91E6: jsr     LD2B1                           ; 91E6
        bpl     L_91EE                          ; 91E9
        pla                                     ; 91EB
        bpl     L_91F6                          ; 91EC
L_91EE: pla                                     ; 91EE
        sta     $50                             ; 91EF
        sty     $4A                             ; 91F1
        jmp     L_8B2B                          ; 91F3

; ----------------------------------------------------------------------------
L_91F6: ldx     $4E                             ; 91F6
        dex                                     ; 91F8
        lda     $0500,x                         ; 91F9
        bmi     L_9202                          ; 91FC
        lda     $F3                             ; 91FE
        bmi     L_9209                          ; 9200
L_9202: inx                                     ; 9202
        inx                                     ; 9203
        lda     $0500,x                         ; 9204
        bmi     L_921C                          ; 9207
L_9209: lda     #$40                            ; 9209
        sta     $48                             ; 920B
        lda     #$00                            ; 920D
        sta     $4C                             ; 920F
        lda     #$02                            ; 9211
        sta     $50                             ; 9213
        lda     #$03                            ; 9215
        sta     $46                             ; 9217
        jmp     L_94FC                          ; 9219

; ----------------------------------------------------------------------------
L_921C: jsr     L_9641                          ; 921C
        clc                                     ; 921F
        adc     #$03                            ; 9220
        sta     $BE                             ; 9222
        ldx     $BD                             ; 9224
        lda     $BC                             ; 9226
        eor     #$FF                            ; 9228
        clc                                     ; 922A
        adc     #$01                            ; 922B
        sta     $BD                             ; 922D
        stx     $BC                             ; 922F
        jsr     L_96EB                          ; 9231
L_9234: jsr     LCBDF                           ; 9234
        lda     #$10                            ; 9237
        sta     $40                             ; 9239
        lda     #$18                            ; 923B
        sta     $41                             ; 923D
        jsr     LEF2B                           ; 923F
        jsr     L_894E                          ; 9242
        lda     $3F                             ; 9245
        pha                                     ; 9247
        lda     $3E                             ; 9248
        pha                                     ; 924A
        lda     $3E                             ; 924B
        clc                                     ; 924D
        adc     #$04                            ; 924E
        sta     $3E                             ; 9250
        lda     #$80                            ; 9252
        sta     $44                             ; 9254
        lda     $94                             ; 9256
        lsr     a                               ; 9258
        lsr     a                               ; 9259
        clc                                     ; 925A
        adc     $3F                             ; 925B
        sec                                     ; 925D
        sbc     #$08                            ; 925E
        sta     $3F                             ; 9260
        lda     $4A                             ; 9262
        asl     a                               ; 9264
        rol     a                               ; 9265
        rol     a                               ; 9266
        pha                                     ; 9267
        and     #$03                            ; 9268
        clc                                     ; 926A
        adc     #$1C                            ; 926B
        jsr     LF011                           ; 926D
        lda     $94                             ; 9270
        lsr     a                               ; 9272
        and     #$06                            ; 9273
        eor     #$FF                            ; 9275
        clc                                     ; 9277
        adc     #$11                            ; 9278
        clc                                     ; 927A
        adc     $3F                             ; 927B
        sta     $3F                             ; 927D
        pla                                     ; 927F
        clc                                     ; 9280
        adc     #$01                            ; 9281
        and     #$03                            ; 9283
        clc                                     ; 9285
        adc     #$1C                            ; 9286
        jsr     LF011                           ; 9288
        pla                                     ; 928B
        sta     $3E                             ; 928C
        pla                                     ; 928E
        sta     $3F                             ; 928F
        lda     $94                             ; 9291
        lsr     a                               ; 9293
        and     #$06                            ; 9294
        eor     #$FF                            ; 9296
        clc                                     ; 9298
        adc     #$04                            ; 9299
        clc                                     ; 929B
        adc     $3E                             ; 929C
        sta     $3E                             ; 929E
        lda     $4D                             ; 92A0
        beq     L_92AC                          ; 92A2
        lda     $4A                             ; 92A4
        and     #$40                            ; 92A6
        beq     L_92AC                          ; 92A8
        dec     $3E                             ; 92AA
L_92AC: lda     $94                             ; 92AC
        beq     L_92CA                          ; 92AE
        ldx     #$C0                            ; 92B0
        bit     $47                             ; 92B2
        bmi     L_92B8                          ; 92B4
        ldx     #$40                            ; 92B6
L_92B8: stx     $44                             ; 92B8
        lda     $94                             ; 92BA
        lsr     a                               ; 92BC
        lsr     a                               ; 92BD
        cmp     #$03                            ; 92BE
        beq     L_92C6                          ; 92C0
        lda     #$2B                            ; 92C2
        bne     L_92D7                          ; 92C4
L_92C6: lda     #$2A                            ; 92C6
        bne     L_92D7                          ; 92C8
L_92CA: lda     #$C0                            ; 92CA
        sta     $44                             ; 92CC
        lda     $47                             ; 92CE
        lsr     a                               ; 92D0
        lsr     a                               ; 92D1
        and     #$03                            ; 92D2
        clc                                     ; 92D4
        adc     #$26                            ; 92D5
L_92D7: jmp     LF011                           ; 92D7

; ----------------------------------------------------------------------------
        rts                                     ; 92DA

; ----------------------------------------------------------------------------
        jmp     L_94FC                          ; 92DB

; ----------------------------------------------------------------------------
        lda     #$C0                            ; 92DE
        sta     $42                             ; 92E0
        lda     #$80                            ; 92E2
        sta     $43                             ; 92E4
        jsr     LCF07                           ; 92E6
        jsr     L_96C2                          ; 92E9
        jsr     L_96A2                          ; 92EC
        jsr     L_8E32                          ; 92EF
        lda     $53                             ; 92F2
        beq     L_9358                          ; 92F4
        lda     $90                             ; 92F6
        beq     L_9348                          ; 92F8
        lda     $4F                             ; 92FA
        bne     L_9311                          ; 92FC
        lda     $03FC                           ; 92FE
        and     #$04                            ; 9301
        beq     L_9311                          ; 9303
        lda     $98                             ; 9305
        bmi     L_9311                          ; 9307
        lda     $92                             ; 9309
        beq     L_9311                          ; 930B
        lda     $F7                             ; 930D
        bmi     L_9317                          ; 930F
L_9311: lda     #$01                            ; 9311
        sta     $90                             ; 9313
        bne     L_9348                          ; 9315
L_9317: lda     #$02                            ; 9317
        sta     $90                             ; 9319
        lda     $10                             ; 931B
        and     #$07                            ; 931D
        cmp     #$03                            ; 931F
        bne     L_9328                          ; 9321
        lda     #$30                            ; 9323
        jsr     LDECC                           ; 9325
L_9328: dec     $92                             ; 9328
        lda     $4D                             ; 932A
        sec                                     ; 932C
        sbc     #$01                            ; 932D
        bpl     L_9343                          ; 932F
        bit     $98                             ; 9331
        bpl     L_933D                          ; 9333
        cmp     #$F8                            ; 9335
        bcs     L_9343                          ; 9337
        lda     #$F8                            ; 9339
        bne     L_9343                          ; 933B
L_933D: cmp     #$F0                            ; 933D
        bcs     L_9343                          ; 933F
        lda     #$F0                            ; 9341
L_9343: sta     $4D                             ; 9343
        jmp     L_9376                          ; 9345

; ----------------------------------------------------------------------------
L_9348: lda     $4D                             ; 9348
        cmp     #$DC                            ; 934A
        bcc     L_9358                          ; 934C
        bit     $F7                             ; 934E
        bmi     L_9358                          ; 9350
        lda     #$00                            ; 9352
        sta     $4D                             ; 9354
        beq     L_9376                          ; 9356
L_9358: inc     $4D                             ; 9358
        inc     $4D                             ; 935A
        bit     $98                             ; 935C
        bmi     L_936A                          ; 935E
        lda     #$40                            ; 9360
        ldx     #$4D                            ; 9362
        jsr     LEB14                           ; 9364
        jmp     L_9376                          ; 9367

; ----------------------------------------------------------------------------
L_936A: lda     $4D                             ; 936A
        bmi     L_9376                          ; 936C
        cmp     #$08                            ; 936E
        bcc     L_9376                          ; 9370
        lda     #$08                            ; 9372
        sta     $4D                             ; 9374
L_9376: jsr     LD37A                           ; 9376
        bne     L_93DA                          ; 9379
        lda     $4A                             ; 937B
        cmp     #$80                            ; 937D
        beq     L_9384                          ; 937F
        jmp     L_9432                          ; 9381

; ----------------------------------------------------------------------------
L_9384: lda     #$11                            ; 9384
        jsr     LD2B1                           ; 9386
        bmi     L_938E                          ; 9389
        jmp     L_9432                          ; 938B

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_93B2
L_93B2: ldy     #$C0                            ; 93B2
        lda     #$00                            ; 93B4
        pha                                     ; 93B6
        lda     #$12                            ; 93B7
        bne     L_93C9                          ; 93B9
L_93BB: cpx     #$02                            ; 93BB
        beq     L_93C2                          ; 93BD
        jmp     L_9432                          ; 93BF

; ----------------------------------------------------------------------------
L_93C2: ldy     #$40                            ; 93C2
        lda     #$01                            ; 93C4
        pha                                     ; 93C6
        lda     #$10                            ; 93C7
L_93C9: jsr     LD2B1                           ; 93C9
        bmi     L_93D6                          ; 93CC
        pla                                     ; 93CE
        sta     $50                             ; 93CF
        sty     $48                             ; 93D1
        jmp     L_8AED                          ; 93D3

; ----------------------------------------------------------------------------
L_93D6: pla                                     ; 93D6
        jmp     L_9432                          ; 93D7

; ----------------------------------------------------------------------------
L_93DA: lda     #$00                            ; 93DA
        sta     $4C                             ; 93DC
        lda     $50                             ; 93DE
        bne     L_9432                          ; 93E0
        lda     $F7                             ; 93E2
        and     #$03                            ; 93E4
        tax                                     ; 93E6
        lda     $48                             ; 93E7
        cmp     #$40                            ; 93E9
        beq     L_93FD                          ; 93EB
        cmp     #$C0                            ; 93ED
        bne     L_9432                          ; 93EF
        cpx     #$02                            ; 93F1
        bne     L_9432                          ; 93F3
        lda     #$80                            ; 93F5
        sta     $47                             ; 93F7
        lda     #$FF                            ; 93F9
        bne     L_9407                          ; 93FB
L_93FD: cpx     #$01                            ; 93FD
        bne     L_9432                          ; 93FF
        lda     #$0F                            ; 9401
        sta     $47                             ; 9403
        lda     #$01                            ; 9405
L_9407: jsr     LD2B1                           ; 9407
        jsr     LD238                           ; 940A
        bne     L_9416                          ; 940D
        lda     #$00                            ; 940F
        sta     $91                             ; 9411
        jmp     L_89BE                          ; 9413

; ----------------------------------------------------------------------------
L_9416: lda     $99                             ; 9416
        and     #$04                            ; 9418
        beq     L_9432                          ; 941A
        lda     #$EF                            ; 941C
        jsr     LD2B1                           ; 941E
        bmi     L_9432                          ; 9421
        lda     $47                             ; 9423
        bmi     L_942B                          ; 9425
        lda     #$00                            ; 9427
        beq     L_942D                          ; 9429
L_942B: lda     #$01                            ; 942B
L_942D: sta     $50                             ; 942D
        jmp     L_8B69                          ; 942F

; ----------------------------------------------------------------------------
.endmacro

