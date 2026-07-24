.macro MAC_L_CBB4
; ----------------------------------------------------------------------------
L_CBB4: lda     $1D                             ; CBB4
        sta     L0000                           ; CBB6
        lda     $1F                             ; CBB8
        sta     $01                             ; CBBA
        lda     LoadedObj_X_Pixel               ; CBBC
        sta     $1C                             ; CBBE
        lda     LoadedObj_X_MetaTile            ; CBC0
        sec                                     ; CBC2
        sbc     #$08                            ; CBC3
        sta     $1D                             ; CBC5
        lda     LoadedObj_Y_Pixel               ; CBC7
        sta     $1E                             ; CBC9
        lda     LoadedObj_Y_MetaTile            ; CBCB
        sta     $1F                             ; CBCD
        sec                                     ; CBCF
        lda     $1E                             ; CBD0
        sbc     #$80                            ; CBD2
        sta     $1E                             ; CBD4
        lda     $1F                             ; CBD6
        sbc     #$07                            ; CBD8
        sta     $1F                             ; CBDA
        jmp     L_CC35                          ; CBDC

; ----------------------------------------------------------------------------
L_CBDF: lda     $1D                             ; CBDF
        sta     L0000                           ; CBE1
        lda     $1F                             ; CBE3
        sta     $01                             ; CBE5
        lda     LoadedObj_X_Pixel               ; CBE7
        cmp     $1C                             ; CBE9
        lda     LoadedObj_X_MetaTile            ; CBEB
        sbc     $1D                             ; CBED
        and     #$7F                            ; CBEF
        cmp     #$09                            ; CBF1
        bcs     L_CC03                          ; CBF3
        cmp     #$07                            ; CBF5
        bcs     L_CC0E                          ; CBF7
        lda     LoadedObj_X_MetaTile            ; CBF9
        sec                                     ; CBFB
        sbc     #$07                            ; CBFC
        sta     $1D                             ; CBFE
        jmp     L_CC0A                          ; CC00

; ----------------------------------------------------------------------------
L_CC03: lda     LoadedObj_X_MetaTile            ; CC03
        sec                                     ; CC05
        sbc     #$09                            ; CC06
        sta     $1D                             ; CC08
L_CC0A: lda     LoadedObj_X_Pixel               ; CC0A
        sta     $1C                             ; CC0C
L_CC0E: lda     LoadedObj_Y_Pixel               ; CC0E
        cmp     $1E                             ; CC10
        lda     LoadedObj_Y_MetaTile            ; CC12
        sbc     $1F                             ; CC14
        and     #$7F                            ; CC16
        cmp     #$0A                            ; CC18
        bcs     L_CC2A                          ; CC1A
        cmp     #$05                            ; CC1C
        bcs     L_CC35                          ; CC1E
        lda     LoadedObj_Y_MetaTile            ; CC20
        sec                                     ; CC22
        sbc     #$05                            ; CC23
        sta     $1F                             ; CC25
        jmp     L_CC31                          ; CC27

; ----------------------------------------------------------------------------
L_CC2A: lda     LoadedObj_Y_MetaTile            ; CC2A
        sec                                     ; CC2C
        sbc     #$0A                            ; CC2D
        sta     $1F                             ; CC2F
L_CC31: lda     LoadedObj_Y_Pixel               ; CC31
        sta     $1E                             ; CC33
L_CC35: lda     $C5                             ; CC35
        and     #$01                            ; CC37
        bne     L_CC3E                          ; CC39
        jsr     L_CC6D                          ; CC3B
L_CC3E: lda     $1D                             ; CC3E
        sec                                     ; CC40
        sbc     L0000                           ; CC41
        asl     a                               ; CC43
        cmp     #$80                            ; CC44
        ror     a                               ; CC46
        clc                                     ; CC47
        adc     $3A                             ; CC48
        sta     $3A                             ; CC4A
        lda     $1F                             ; CC4C
        sec                                     ; CC4E
        sbc     $01                             ; CC4F
        asl     a                               ; CC51
        cmp     #$80                            ; CC52
        ror     a                               ; CC54
        pha                                     ; CC55
        clc                                     ; CC56
        adc     $3A                             ; CC57
        sta     $3A                             ; CC59
        pla                                     ; CC5B
        asl     a                               ; CC5C
        asl     a                               ; CC5D
        asl     a                               ; CC5E
        asl     a                               ; CC5F
        clc                                     ; CC60
        adc     $3A                             ; CC61
        sta     $3A                             ; CC63
        jsr     L_D1AD                          ; CC65
        lda     $D3                             ; CC68
        jmp     L_E61B                          ; CC6A

; ----------------------------------------------------------------------------
L_CC6D: ldx     $14                             ; CC6D
        lda     LCA04,x                         ; CC6F
        ldx     #$7A                            ; CC72
        jsr     L_EA3C                          ; CC74
        lda     $1D                             ; CC77
        clc                                     ; CC79
        adc     #$06                            ; CC7A
        sta     $1D                             ; CC7C
        clc                                     ; CC7E
        lda     $1E                             ; CC7F
        adc     #$80                            ; CC81
        sta     $1E                             ; CC83
        lda     $1F                             ; CC85
        adc     #$05                            ; CC87
        sta     $1F                             ; CC89
        lda     $1D                             ; CC8B
        and     #$08                            ; CC8D
        beq     L_CC98                          ; CC8F
        jsr     L_CCE8                          ; CC91
        bcs     L_CC9D                          ; CC94
        bcc     L_CCA9                          ; CC96
L_CC98: jsr     L_CCEF                          ; CC98
        bcc     L_CCA9                          ; CC9B
L_CC9D: lda     #$00                            ; CC9D
        sta     $1C                             ; CC9F
        lda     $1D                             ; CCA1
        and     #$70                            ; CCA3
        ora     #$08                            ; CCA5
        sta     $1D                             ; CCA7
L_CCA9: lda     $1F                             ; CCA9
        and     #$08                            ; CCAB
        beq     L_CCB6                          ; CCAD
        jsr     L_CCFF                          ; CCAF
        bcs     L_CCBB                          ; CCB2
        bcc     L_CCC7                          ; CCB4
L_CCB6: jsr     L_CCF9                          ; CCB6
        bcc     L_CCC7                          ; CCB9
L_CCBB: lda     #$00                            ; CCBB
        sta     $1E                             ; CCBD
        lda     $1F                             ; CCBF
        and     #$70                            ; CCC1
        ora     #$08                            ; CCC3
        sta     $1F                             ; CCC5
L_CCC7: lda     $1D                             ; CCC7
        sec                                     ; CCC9
        sbc     #$06                            ; CCCA
        sta     $1D                             ; CCCC
        sec                                     ; CCCE
        lda     $1E                             ; CCCF
        sbc     #$80                            ; CCD1
        sta     $1E                             ; CCD3
        lda     $1F                             ; CCD5
        sbc     #$05                            ; CCD7
        sta     $1F                             ; CCD9
        lda     $1C                             ; CCDB
        and     #$F0                            ; CCDD
        sta     $1C                             ; CCDF
        lda     $1E                             ; CCE1
        and     #$F0                            ; CCE3
        sta     $1E                             ; CCE5
        rts                                     ; CCE7

; ----------------------------------------------------------------------------
L_CCE8: jsr     L_CD0A                          ; CCE8
        inx                                     ; CCEB
        jmp     L_CCF2                          ; CCEC

; ----------------------------------------------------------------------------
L_CCEF: jsr     L_CD0A                          ; CCEF
L_CCF2: tya                                     ; CCF2
        ora     #$08                            ; CCF3
        tay                                     ; CCF5
        jmp     L_CD1D                          ; CCF6

; ----------------------------------------------------------------------------
L_CCF9: jsr     L_CD0A                          ; CCF9
        jmp     L_CD1D                          ; CCFC

; ----------------------------------------------------------------------------
L_CCFF: jsr     L_CD0A                          ; CCFF
        iny                                     ; CD02
        tya                                     ; CD03
        and     #$07                            ; CD04
        tay                                     ; CD06
        jmp     L_CD1D                          ; CD07

; ----------------------------------------------------------------------------
L_CD0A: lda     $1D                             ; CD0A
        lsr     a                               ; CD0C
        lsr     a                               ; CD0D
        lsr     a                               ; CD0E
        lsr     a                               ; CD0F
        and     #$07                            ; CD10
        tax                                     ; CD12
        lda     $1F                             ; CD13
        lsr     a                               ; CD15
        lsr     a                               ; CD16
        lsr     a                               ; CD17
        lsr     a                               ; CD18
        and     #$07                            ; CD19
        tay                                     ; CD1B
        rts                                     ; CD1C

; ----------------------------------------------------------------------------
L_CD1D: txa                                     ; CD1D
        and     #$07                            ; CD1E
        tax                                     ; CD20
        lda     (L007A),y                       ; CD21
L_CD23: asl     a                               ; CD23
        dex                                     ; CD24
        bpl     L_CD23                          ; CD25
        rts                                     ; CD27

; ----------------------------------------------------------------------------
L_CD28: jsr     L_CD71                          ; CD28
        beq     L_CD33                          ; CD2B
        jsr     L_CD33                          ; CD2D
        lda     #$FF                            ; CD30
        rts                                     ; CD32

; ----------------------------------------------------------------------------
L_CD33: lda     LoadedObj_X_MetaTile            ; CD33
        sec                                     ; CD35
        sbc     #$02                            ; CD36
        and     #$70                            ; CD38
        clc                                     ; CD3A
        adc     #$02                            ; CD3B
        sec                                     ; CD3D
        sbc     $1D                             ; CD3E
        asl     a                               ; CD40
        bmi     L_CD61                          ; CD41
        bne     L_CD51                          ; CD43
        lda     $1C                             ; CD45
        clc                                     ; CD47
        adc     #$20                            ; CD48
        and     #$C0                            ; CD4A
        sta     $1C                             ; CD4C
        bne     L_CD61                          ; CD4E
        rts                                     ; CD50

; ----------------------------------------------------------------------------
L_CD51: lda     $1C                             ; CD51
        clc                                     ; CD53
        adc     #$40                            ; CD54
        sta     $1C                             ; CD56
        bcc     L_CD6E                          ; CD58
        inc     $1D                             ; CD5A
        inc     $3A                             ; CD5C
        lda     #$FF                            ; CD5E
        rts                                     ; CD60

; ----------------------------------------------------------------------------
L_CD61: lda     $1C                             ; CD61
        sec                                     ; CD63
        sbc     #$40                            ; CD64
        sta     $1C                             ; CD66
        bcs     L_CD6E                          ; CD68
        dec     $1D                             ; CD6A
        dec     $3A                             ; CD6C
L_CD6E: lda     #$FF                            ; CD6E
        rts                                     ; CD70

; ----------------------------------------------------------------------------
L_CD71: lda     LoadedObj_Y_MetaTile            ; CD71
        sec                                     ; CD73
        sbc     #$02                            ; CD74
        and     #$70                            ; CD76
        clc                                     ; CD78
        adc     #$02                            ; CD79
        sec                                     ; CD7B
        sbc     $1F                             ; CD7C
        asl     a                               ; CD7E
        bmi     L_CDA5                          ; CD7F
        bne     L_CD92                          ; CD81
        lda     $1E                             ; CD83
        clc                                     ; CD85
        adc     #$20                            ; CD86
        and     #$C0                            ; CD88
        sta     $1E                             ; CD8A
        cmp     #$80                            ; CD8C
        beq     L_CDB9                          ; CD8E
        bcs     L_CDA5                          ; CD90
L_CD92: lda     $1E                             ; CD92
        clc                                     ; CD94
        adc     #$40                            ; CD95
        sta     $1E                             ; CD97
        bcc     L_CDB7                          ; CD99
        inc     $1F                             ; CD9B
        lda     $3A                             ; CD9D
        clc                                     ; CD9F
        adc     #$11                            ; CDA0
        jmp     L_CDB5                          ; CDA2

; ----------------------------------------------------------------------------
L_CDA5: lda     $1E                             ; CDA5
        sec                                     ; CDA7
        sbc     #$40                            ; CDA8
        sta     $1E                             ; CDAA
        bcs     L_CDB7                          ; CDAC
        dec     $1F                             ; CDAE
        lda     $3A                             ; CDB0
        sec                                     ; CDB2
        sbc     #$11                            ; CDB3
L_CDB5: sta     $3A                             ; CDB5
L_CDB7: lda     #$FF                            ; CDB7
L_CDB9: rts                                     ; CDB9

.endmacro

