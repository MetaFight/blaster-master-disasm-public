.macro MAC_L_C5B2
; ----------------------------------------------------------------------------
L_C5B2: lda     $48                             ; C5B2
        sta     $03F5                           ; C5B4
        lda     $49                             ; C5B7
        sta     $03F6                           ; C5B9
        lda     $4A                             ; C5BC
        sta     $03F7                           ; C5BE
        lda     $4B                             ; C5C1
        sta     $03F8                           ; C5C3
        lda     $14                             ; C5C6
        sta     $03F9                           ; C5C8
        lda     $C1                             ; C5CB
        sta     $03FA                           ; C5CD
        lda     $46                             ; C5D0
        sta     $0350                           ; C5D2
        lda     $03D0                           ; C5D5
        sta     $0378                           ; C5D8
        lda     $03D1                           ; C5DB
        sta     $0379                           ; C5DE
        lda     $03D2                           ; C5E1
        sta     $037A                           ; C5E4
        lda     $03D3                           ; C5E7
        sta     $037B                           ; C5EA
        lda     $03D4                           ; C5ED
        sta     $037D                           ; C5F0
        lda     $03D5                           ; C5F3
        sta     $037C                           ; C5F6
        rts                                     ; C5F9

; ----------------------------------------------------------------------------
L_C5FA: lda     $03F5                           ; C5FA
        sta     $48                             ; C5FD
        lda     $03F6                           ; C5FF
        sta     $49                             ; C602
        lda     $03F7                           ; C604
        sta     $4A                             ; C607
        lda     $03F8                           ; C609
        sta     $4B                             ; C60C
        lda     $03F9                           ; C60E
        sta     $14                             ; C611
        lda     $03FA                           ; C613
        sta     $C1                             ; C616
        lda     $0350                           ; C618
        sta     $46                             ; C61B
        lda     $0378                           ; C61D
        sta     $03D0                           ; C620
        lda     $0379                           ; C623
        sta     $03D1                           ; C626
        lda     $037A                           ; C629
        sta     $03D2                           ; C62C
        lda     $037B                           ; C62F
        sta     $03D3                           ; C632
        lda     $037D                           ; C635
        sta     $03D4                           ; C638
        lda     $037C                           ; C63B
        sta     $03D5                           ; C63E
        rts                                     ; C641

.endmacro

.macro MAC_L_C8DF
; ----------------------------------------------------------------------------
L_C8DF: ldy     $56                             ; C8DF
        lda     $0400,y                         ; C8E1
        sta     $46                             ; C8E4
        lda     $0401,y                         ; C8E6
        sta     $47                             ; C8E9
        lda     $0402,y                         ; C8EB
        sta     $48                             ; C8EE
        lda     $0403,y                         ; C8F0
        sta     $49                             ; C8F3
        lda     $0404,y                         ; C8F5
        sta     $4A                             ; C8F8
        lda     $0405,y                         ; C8FA
        sta     $4B                             ; C8FD
        lda     $0406,y                         ; C8FF
        sta     $4C                             ; C902
        lda     $0407,y                         ; C904
        sta     $4D                             ; C907
        lda     $0408,y                         ; C909
        sta     $4E                             ; C90C
        lda     $0409,y                         ; C90E
        sta     $4F                             ; C911
        lda     $040A,y                         ; C913
        sta     $50                             ; C916
        lda     $040B,y                         ; C918
        sta     $51                             ; C91B
        lda     $040C,y                         ; C91D
        sta     $52                             ; C920
        lda     $040D,y                         ; C922
        sta     $53                             ; C925
        rts                                     ; C927

; ----------------------------------------------------------------------------
L_C928: ldy     $56                             ; C928
        lda     $46                             ; C92A
        sta     $0400,y                         ; C92C
        lda     $47                             ; C92F
        sta     $0401,y                         ; C931
        lda     $48                             ; C934
        sta     $0402,y                         ; C936
        lda     $49                             ; C939
        sta     $0403,y                         ; C93B
        lda     $4A                             ; C93E
        sta     $0404,y                         ; C940
        lda     $4B                             ; C943
        sta     $0405,y                         ; C945
        lda     $4C                             ; C948
        sta     $0406,y                         ; C94A
        lda     $4D                             ; C94D
        sta     $0407,y                         ; C94F
        lda     $4E                             ; C952
        sta     $0408,y                         ; C954
        lda     $4F                             ; C957
        sta     $0409,y                         ; C959
        lda     $50                             ; C95C
        sta     $040A,y                         ; C95E
        lda     $51                             ; C961
        sta     $040B,y                         ; C963
        lda     $52                             ; C966
        sta     $040C,y                         ; C968
        lda     $53                             ; C96B
        sta     $040D,y                         ; C96D
        rts                                     ; C970

; ----------------------------------------------------------------------------
L_C971: lda     #$00                            ; C971
        sta     $56                             ; C973
        sta     $57                             ; C975
L_C977: ldx     $56                             ; C977
        lda     $0400,x                         ; C979
        beq     L_C990                          ; C97C
        jsr     L_C8DF                          ; C97E
        lda     $4F                             ; C981
        beq     L_C987                          ; C983
        dec     $4F                             ; C985
L_C987: jsr     L_C9A4                          ; C987
        jsr     L_C928                          ; C98A
        jsr     L_EC73                          ; C98D
L_C990: lda     $56                             ; C990
        clc                                     ; C992
        adc     #$0E                            ; C993
        sta     $56                             ; C995
        inc     $57                             ; C997
        lda     $57                             ; C999
        cmp     #$12                            ; C99B
        bcc     L_C977                          ; C99D
        lda     #$00                            ; C99F
        sta     $4F                             ; C9A1
        rts                                     ; C9A3

; ----------------------------------------------------------------------------
L_C9A4: ldx     #$40                            ; C9A4
        lda     $14                             ; C9A6
        and     #$08                            ; C9A8
        beq     L_C9AE                          ; C9AA
        ldx     #$60                            ; C9AC
L_C9AE: txa                                     ; C9AE
        pha                                     ; C9AF
        jsr     L_EA3A                          ; C9B0
        pla                                     ; C9B3
        lsr     a                               ; C9B4
        lsr     a                               ; C9B5
        lsr     a                               ; C9B6
        lsr     a                               ; C9B7
        and     #$0F                            ; C9B8
        sta     $D3                             ; C9BA
        lda     $46                             ; C9BC
        sec                                     ; C9BE
        sbc     #$01                            ; C9BF
        jsr     L_EB51                          ; C9C1
        lda     $15                             ; C9C4
        bne     L_C9D3                          ; C9C6
        clc                                     ; C9C8
        lda     L007A                           ; C9C9
        adc     #$03                            ; C9CB
        sta     L007A                           ; C9CD
        bcc     L_C9D3                          ; C9CF
        inc     $7B                             ; C9D1
L_C9D3: jmp     (L007A)                         ; C9D3

.endmacro

.macro MAC_L_D7F8
; ----------------------------------------------------------------------------
L_D7F8: ldx     $57                             ; D7F8
        lda     $46                             ; D7FA
        sta     $0150,x                         ; D7FC
        lda     #$02                            ; D7FF
        sta     $46                             ; D801
        rts                                     ; D803

; ----------------------------------------------------------------------------
L_D804: ldy     $57                             ; D804
        cpy     #$08                            ; D806
        bcc     L_D81C                          ; D808
        inc     $C6                             ; D80A
        lda     $C6                             ; D80C
        and     #$3F                            ; D80E
        tax                                     ; D810
        lda     $F8,y                           ; D811
        sta     $010A,x                         ; D814
        lda     #$FF                            ; D817
        sta     $F8,y                           ; D819
L_D81C: lda     #$00                            ; D81C
        sta     $46                             ; D81E
        sta     $4F                             ; D820
        rts                                     ; D822

; ----------------------------------------------------------------------------
L_D823: ldy     $57                             ; D823
        lda     #$FF                            ; D825
        sta     $F8,y                           ; D827
        bne     L_D81C                          ; D82A
L_D82C: lda     $57                             ; D82C
        sec                                     ; D82E
        sbc     #$01                            ; D82F
        cmp     #$05                            ; D831
        bcs     L_D81C                          ; D833
        jsr     L_D790                          ; D835
        jmp     L_D81C                          ; D838

; ----------------------------------------------------------------------------
L_D83B: lda     $49                             ; D83B
        sta     L0000                           ; D83D
        lda     $4B                             ; D83F
        sta     $01                             ; D841
        lda     $0403                           ; D843
        sta     $02                             ; D846
        lda     $0405                           ; D848
        sta     $03                             ; D84B
        jsr     L_D02D                          ; D84D
        rts                                     ; D850

; ----------------------------------------------------------------------------
L_D851: pha                                     ; D851
        ldx     #$54                            ; D852
        lda     #$EE                            ; D854
        sta     L0000                           ; D856
        jsr     L_D7CF                          ; D858
        beq     L_D869                          ; D85B
        txa                                     ; D85D
        pha                                     ; D85E
        jsr     L_D7C0                          ; D85F
        pla                                     ; D862
        tax                                     ; D863
        pla                                     ; D864
        sta     $0400,x                         ; D865
        rts                                     ; D868

; ----------------------------------------------------------------------------
L_D869: pla                                     ; D869
        lda     #$00                            ; D86A
        rts                                     ; D86C

; ----------------------------------------------------------------------------
L_D86D: ldx     #$4C                            ; D86D
        lda     #$40                            ; D86F
        jsr     L_EB14                          ; D871
        lda     $4D                             ; D874
        sec                                     ; D876
        sbc     #$40                            ; D877
        sta     $4D                             ; D879
        ldx     #$4D                            ; D87B
        lda     #$40                            ; D87D
        jsr     L_EB14                          ; D87F
        rts                                     ; D882

.endmacro

.macro MAC_L_DF0F
; ----------------------------------------------------------------------------
L_DF0F: lda     #$D2                            ; DF0F
        sta     L0000                           ; DF11
        ldx     #$70                            ; DF13
        jsr     L_D7CF                          ; DF15
        beq     L_DF24                          ; DF18
        stx     $A5                             ; DF1A
        jsr     L_DF27                          ; DF1C
        ldx     $A5                             ; DF1F
        lda     #$01                            ; DF21
        rts                                     ; DF23

; ----------------------------------------------------------------------------
L_DF24: lda     #$00                            ; DF24
        rts                                     ; DF26

; ----------------------------------------------------------------------------
L_DF27: ldy     #$00                            ; DF27
L_DF29: lda     $46,y                           ; DF29
        sta     $0400,x                         ; DF2C
        inx                                     ; DF2F
        iny                                     ; DF30
        cpy     #$0E                            ; DF31
        bne     L_DF29                          ; DF33
        rts                                     ; DF35

; ----------------------------------------------------------------------------
L_DF36: lda     $11                             ; DF36
        and     #$4C                            ; DF38
        bne     L_DF43                          ; DF3A
        jsr     L_EB71                          ; DF3C
        and     #$03                            ; DF3F
        beq     L_DF46                          ; DF41
L_DF43: lda     #$00                            ; DF43
        rts                                     ; DF45

; ----------------------------------------------------------------------------
L_DF46: lda     L0000                           ; DF46
        pha                                     ; DF48
        lda     #$D2                            ; DF49
        sta     L0000                           ; DF4B
        ldx     #$70                            ; DF4D
        jsr     L_D7CF                          ; DF4F
        beq     L_DF62                          ; DF52
        lda     $A0                             ; DF54
        sta     $0400,x                         ; DF56
        jsr     L_D7C0                          ; DF59
        pla                                     ; DF5C
        sta     L0000                           ; DF5D
        lda     #$FF                            ; DF5F
        rts                                     ; DF61

; ----------------------------------------------------------------------------
L_DF62: pla                                     ; DF62
        sta     L0000                           ; DF63
        lda     #$00                            ; DF65
        rts                                     ; DF67

; ----------------------------------------------------------------------------
L_DF68: jsr     L_E083                          ; DF68
        bpl     L_DF77                          ; DF6B
        lda     #$00                            ; DF6D
        sec                                     ; DF6F
        sbc     $4C                             ; DF70
        sta     $4C                             ; DF72
        jmp     L_DF81                          ; DF74

; ----------------------------------------------------------------------------
L_DF77: asl     a                               ; DF77
        bpl     L_DF81                          ; DF78
        lda     #$00                            ; DF7A
        sec                                     ; DF7C
        sbc     $4D                             ; DF7D
        sta     $4D                             ; DF7F
L_DF81: lda     $9A                             ; DF81
        rts                                     ; DF83

; ----------------------------------------------------------------------------
L_DF84: jsr     L_E0A5                          ; DF84
        bpl     L_DF93                          ; DF87
        lda     #$00                            ; DF89
        sec                                     ; DF8B
        sbc     $4C                             ; DF8C
        sta     $4C                             ; DF8E
        jmp     L_DF9D                          ; DF90

; ----------------------------------------------------------------------------
L_DF93: asl     a                               ; DF93
        bpl     L_DF9D                          ; DF94
        lda     #$00                            ; DF96
        sec                                     ; DF98
        sbc     $4D                             ; DF99
        sta     $4D                             ; DF9B
L_DF9D: lda     $9A                             ; DF9D
        rts                                     ; DF9F

; ----------------------------------------------------------------------------
L_DFA0: ldy     #$00                            ; DFA0
        pha                                     ; DFA2
        tya                                     ; DFA3
        and     $11                             ; DFA4
        beq     L_DFAC                          ; DFA6
        pla                                     ; DFA8
        jmp     L_DFB4                          ; DFA9

; ----------------------------------------------------------------------------
L_DFAC: pla                                     ; DFAC
        clc                                     ; DFAD
        adc     $4D                             ; DFAE
        bvs     L_DFB4                          ; DFB0
        sta     $4D                             ; DFB2
L_DFB4: jsr     L_DF84                          ; DFB4
        and     #$40                            ; DFB7
        beq     L_DFC0                          ; DFB9
        lda     #$40                            ; DFBB
        jsr     L_E0C7                          ; DFBD
L_DFC0: lda     #$28                            ; DFC0
        ldx     #$4D                            ; DFC2
        jsr     L_EB14                          ; DFC4
        lda     #$28                            ; DFC7
        ldx     #$4C                            ; DFC9
        jsr     L_EB14                          ; DFCB
        lda     $9A                             ; DFCE
        rts                                     ; DFD0

; ----------------------------------------------------------------------------
L_DFD1: clc                                     ; DFD1
        adc     $4D                             ; DFD2
        sta     $4D                             ; DFD4
        txa                                     ; DFD6
        clc                                     ; DFD7
        adc     $4C                             ; DFD8
        sta     $4C                             ; DFDA
        rts                                     ; DFDC

; ----------------------------------------------------------------------------
L_DFDD: jsr     L_E0ED                          ; DFDD
        bpl     L_DFE7                          ; DFE0
        eor     #$FF                            ; DFE2
        clc                                     ; DFE4
        adc     #$01                            ; DFE5
L_DFE7: pha                                     ; DFE7
        jsr     L_E0FA                          ; DFE8
        bpl     L_DFF2                          ; DFEB
        eor     #$FF                            ; DFED
        clc                                     ; DFEF
        adc     #$01                            ; DFF0
L_DFF2: bne     L_DFF6                          ; DFF2
        lda     #$01                            ; DFF4
L_DFF6: sta     $9C                             ; DFF6
        pla                                     ; DFF8
        sta     $9B                             ; DFF9
        jsr     L_E16B                          ; DFFB
        bne     L_E002                          ; DFFE
        lda     #$01                            ; E000
L_E002: sta     $52                             ; E002
        rts                                     ; E004

; ----------------------------------------------------------------------------
L_E005: lda     #$02                            ; E005
        jsr     L_DFA0                          ; E007
        asl     a                               ; E00A
        bpl     L_E018                          ; E00B
        lda     $4D                             ; E00D
        bpl     L_E018                          ; E00F
        lda     #$00                            ; E011
        sta     $4D                             ; E013
        lda     #$FF                            ; E015
        rts                                     ; E017

; ----------------------------------------------------------------------------
L_E018: lda     #$00                            ; E018
        rts                                     ; E01A

.endmacro

.macro MAC_L_E02F
; ----------------------------------------------------------------------------
L_E02F: jsr     L_DF68                          ; E02F
        lda     $51                             ; E032
        beq     L_E03B                          ; E034
        dec     $51                             ; E036
        jmp     L_E04D                          ; E038

; ----------------------------------------------------------------------------
L_E03B: lda     #$11                            ; E03B
        jsr     L_D2B1                          ; E03D
        bmi     L_E04D                          ; E040
        lda     #$00                            ; E042
        sec                                     ; E044
        sbc     $4C                             ; E045
        sta     $4C                             ; E047
        lda     #$20                            ; E049
        sta     $51                             ; E04B
L_E04D: rts                                     ; E04D

; ----------------------------------------------------------------------------
L_E04E: ldx     $4C                             ; E04E
        bmi     L_E054                          ; E050
        eor     #$40                            ; E052
L_E054: sta     $44                             ; E054
        rts                                     ; E056

; ----------------------------------------------------------------------------
L_E057: ldx     $4D                             ; E057
        bpl     L_E05D                          ; E059
        eor     #$80                            ; E05B
L_E05D: sta     $44                             ; E05D
        rts                                     ; E05F

.endmacro

.macro MAC_L_E071
; ----------------------------------------------------------------------------
L_E071: lda     $52                             ; E071
        eor     #$FF                            ; E073
        clc                                     ; E075
        adc     #$01                            ; E076
        sta     $52                             ; E078
        rts                                     ; E07A

; ----------------------------------------------------------------------------
L_E07B: lda     $47                             ; E07B
        clc                                     ; E07D
        adc     $52                             ; E07E
        sta     $47                             ; E080
        rts                                     ; E082

; ----------------------------------------------------------------------------
L_E083: jsr     L_D2DE                          ; E083
        jsr     L_D37D                          ; E086
        beq     L_E090                          ; E089
        lda     #$80                            ; E08B
        jmp     L_E092                          ; E08D

; ----------------------------------------------------------------------------
L_E090: lda     #$00                            ; E090
L_E092: sta     $9A                             ; E092
        jsr     L_D2FE                          ; E094
        jsr     L_D3E1                          ; E097
        beq     L_E0A2                          ; E09A
        lda     $9A                             ; E09C
        ora     #$40                            ; E09E
        sta     $9A                             ; E0A0
L_E0A2: lda     $9A                             ; E0A2
        rts                                     ; E0A4

; ----------------------------------------------------------------------------
L_E0A5: jsr     L_D327                          ; E0A5
        jsr     L_D37D                          ; E0A8
        beq     L_E0B2                          ; E0AB
        lda     #$80                            ; E0AD
        jmp     L_E0B4                          ; E0AF

; ----------------------------------------------------------------------------
L_E0B2: lda     #$00                            ; E0B2
L_E0B4: sta     $9A                             ; E0B4
        jsr     L_D349                          ; E0B6
        jsr     L_D3E1                          ; E0B9
        beq     L_E0C4                          ; E0BC
        lda     $9A                             ; E0BE
        ora     #$40                            ; E0C0
        sta     $9A                             ; E0C2
L_E0C4: lda     $9A                             ; E0C4
        rts                                     ; E0C6

; ----------------------------------------------------------------------------
L_E0C7: tay                                     ; E0C7
        lda     $4D                             ; E0C8
        jsr     L_E196                          ; E0CA
        sta     $4D                             ; E0CD
        rts                                     ; E0CF

; ----------------------------------------------------------------------------
L_E0D0: lda     $9A                             ; E0D0
        bmi     L_E0D8                          ; E0D2
        asl     a                               ; E0D4
        bmi     L_E0E5                          ; E0D5
        rts                                     ; E0D7

; ----------------------------------------------------------------------------
L_E0D8: lda     $47                             ; E0D8
        sec                                     ; E0DA
        sbc     #$40                            ; E0DB
        eor     #$FF                            ; E0DD
        clc                                     ; E0DF
        adc     #$41                            ; E0E0
        sta     $47                             ; E0E2
        rts                                     ; E0E4

; ----------------------------------------------------------------------------
L_E0E5: lda     #$00                            ; E0E5
        sec                                     ; E0E7
        sbc     $47                             ; E0E8
        sta     $47                             ; E0EA
        rts                                     ; E0EC

; ----------------------------------------------------------------------------
L_E0ED: lda     $0402                           ; E0ED
        sec                                     ; E0F0
        sbc     $48                             ; E0F1
        tax                                     ; E0F3
        lda     $0403                           ; E0F4
        sbc     $49                             ; E0F7
        rts                                     ; E0F9

; ----------------------------------------------------------------------------
L_E0FA: lda     $0404                           ; E0FA
        sec                                     ; E0FD
        sbc     $4A                             ; E0FE
        tax                                     ; E100
        lda     $0405                           ; E101
        sbc     $4B                             ; E104
        rts                                     ; E106

; ----------------------------------------------------------------------------
L_E107: lda     L0000                           ; E107
        pha                                     ; E109
        jsr     L_E0ED                          ; E10A
        asl     a                               ; E10D
        asl     a                               ; E10E
        asl     a                               ; E10F
        asl     a                               ; E110
        sta     L0000                           ; E111
        txa                                     ; E113
        lsr     a                               ; E114
        lsr     a                               ; E115
        lsr     a                               ; E116
        lsr     a                               ; E117
        ora     L0000                           ; E118
        tax                                     ; E11A
        pla                                     ; E11B
        sta     L0000                           ; E11C
        txa                                     ; E11E
        rts                                     ; E11F

; ----------------------------------------------------------------------------
L_E120: lda     L0000                           ; E120
        pha                                     ; E122
        jsr     L_E0FA                          ; E123
        asl     a                               ; E126
        asl     a                               ; E127
        asl     a                               ; E128
        asl     a                               ; E129
        sta     L0000                           ; E12A
        txa                                     ; E12C
        lsr     a                               ; E12D
        lsr     a                               ; E12E
        lsr     a                               ; E12F
        lsr     a                               ; E130
        ora     L0000                           ; E131
        tax                                     ; E133
        pla                                     ; E134
        sta     L0000                           ; E135
        txa                                     ; E137
        rts                                     ; E138

; ----------------------------------------------------------------------------
L_E139: lda     L0000                           ; E139
        pha                                     ; E13B
        jsr     L_E0ED                          ; E13C
        asl     a                               ; E13F
        asl     a                               ; E140
        asl     a                               ; E141
        sta     L0000                           ; E142
        txa                                     ; E144
        lsr     a                               ; E145
        lsr     a                               ; E146
        lsr     a                               ; E147
        lsr     a                               ; E148
        lsr     a                               ; E149
        ora     L0000                           ; E14A
        tax                                     ; E14C
        pla                                     ; E14D
        sta     L0000                           ; E14E
        txa                                     ; E150
        rts                                     ; E151

; ----------------------------------------------------------------------------
L_E152: lda     L0000                           ; E152
        pha                                     ; E154
        jsr     L_E0FA                          ; E155
        asl     a                               ; E158
        asl     a                               ; E159
        asl     a                               ; E15A
        sta     L0000                           ; E15B
        txa                                     ; E15D
        lsr     a                               ; E15E
        lsr     a                               ; E15F
        lsr     a                               ; E160
        lsr     a                               ; E161
        lsr     a                               ; E162
        ora     L0000                           ; E163
        tax                                     ; E165
        pla                                     ; E166
        sta     L0000                           ; E167
        txa                                     ; E169
        rts                                     ; E16A

.endmacro

.macro MAC_L_E1BD
; ----------------------------------------------------------------------------
L_E1BD: lda     $47                             ; E1BD
        jsr     L_E1D2                          ; E1BF
        jsr     L_E196                          ; E1C2
        sta     $4C                             ; E1C5
        lda     $47                             ; E1C7
        jsr     L_E1D5                          ; E1C9
        jsr     L_E196                          ; E1CC
        sta     $4D                             ; E1CF
        rts                                     ; E1D1

.endmacro

