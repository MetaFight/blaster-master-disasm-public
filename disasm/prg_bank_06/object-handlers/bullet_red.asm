.macro MAC_L_B91A
; ----------------------------------------------------------------------------
L_B91A: jmp     L_B949                          ; B91A

; ----------------------------------------------------------------------------
        lda     LoadedObject_X_MetaTile         ; B91D
        lsr     a                               ; B91F
        bcc     L_B92D                          ; B920
        lda     #$A0                            ; B922
        sta     $50                             ; B924
        lda     #$A0                            ; B926
        sta     $47                             ; B928
        jmp     L_B935                          ; B92A

; ----------------------------------------------------------------------------
L_B92D: lda     #$60                            ; B92D
        sta     $50                             ; B92F
        lda     #$E0                            ; B931
        sta     $47                             ; B933
L_B935: ldy     #$18                            ; B935
        jsr     LE1BD                           ; B937
        lda     #$00                            ; B93A
        sta     $51                             ; B93C
        sta     $52                             ; B93E
        lda     #$1C                            ; B940
        jsr     L_A2E9                          ; B942
        lda     #$8E                            ; B945
        sta     LoadedObject_Type               ; B947
L_B949: rts                                     ; B949

; ----------------------------------------------------------------------------
LB94A:  jmp     L_B979                          ; B94A

; ----------------------------------------------------------------------------
        lda     LoadedObject_X_MetaTile         ; B94D
        lsr     a                               ; B94F
        bcc     L_B95D                          ; B950
        lda     #$A0                            ; B952
        sta     $50                             ; B954
        lda     #$20                            ; B956
        sta     $47                             ; B958
        jmp     L_B965                          ; B95A

; ----------------------------------------------------------------------------
L_B95D: lda     #$60                            ; B95D
        sta     $50                             ; B95F
        lda     #$60                            ; B961
        sta     $47                             ; B963
L_B965: ldy     #$18                            ; B965
        jsr     LE1BD                           ; B967
        lda     #$00                            ; B96A
        sta     $51                             ; B96C
        sta     $52                             ; B96E
        lda     #$1D                            ; B970
        jsr     L_A2E9                          ; B972
        lda     #$8E                            ; B975
        sta     LoadedObject_Type               ; B977
L_B979: rts                                     ; B979

; ----------------------------------------------------------------------------
LB97A:  jmp     L_B9C0                          ; B97A

; ----------------------------------------------------------------------------
        lda     #$80                            ; B97D
        sta     $42                             ; B97F
        lda     #$80                            ; B981
        sta     $43                             ; B983
        ldy     #$18                            ; B985
        jsr     L_A670                          ; B987
        jsr     LE107                           ; B98A
        and     #$FC                            ; B98D
        bne     L_B998                          ; B98F
        jsr     LE0FA                           ; B991
        beq     L_B9C0                          ; B994
        bne     L_B9A4                          ; B996
L_B998: jsr     LE120                           ; B998
        and     #$FC                            ; B99B
        bne     L_B9C0                          ; B99D
        jsr     LE0ED                           ; B99F
        beq     L_B9C0                          ; B9A2
L_B9A4: lda     $50                             ; B9A4
        clc                                     ; B9A6
        adc     $47                             ; B9A7
        sta     $01                             ; B9A9
        jsr     L_A634                          ; B9AB
        cpx     $01                             ; B9AE
        bne     L_B9C0                          ; B9B0
        stx     $47                             ; B9B2
        ldy     #$60                            ; B9B4
        jsr     LE1BD                           ; B9B6
        lda     #$10                            ; B9B9
        sta     $51                             ; B9BB
        inc     LoadedObject_Type               ; B9BD
        rts                                     ; B9BF

; ----------------------------------------------------------------------------
L_B9C0: lda     #$10                            ; B9C0
        sta     $40                             ; B9C2
        lda     #$10                            ; B9C4
        sta     $41                             ; B9C6
        jsr     LEF2B                           ; B9C8
        beq     L_B9D0                          ; B9CB
        jmp     LD7F8                           ; B9CD

; ----------------------------------------------------------------------------
L_B9D0: lda     #$1C                            ; B9D0
        jsr     L_A30A                          ; B9D2
        beq     L_B9DA                          ; B9D5
        jmp     L_A34D                          ; B9D7

; ----------------------------------------------------------------------------
L_B9DA: lda     $50                             ; B9DA
        and     #$80                            ; B9DC
        sta     $00                             ; B9DE
        lda     $47                             ; B9E0
        sec                                     ; B9E2
        sbc     #$20                            ; B9E3
        lsr     a                               ; B9E5
        ora     $00                             ; B9E6
        lsr     a                               ; B9E8
        lsr     a                               ; B9E9
        lsr     a                               ; B9EA
        lsr     a                               ; B9EB
        tax                                     ; B9EC
        lda     LBA70,x                         ; B9ED
        sta     $44                             ; B9F0
        lda     $11                             ; B9F2
        lsr     a                               ; B9F4
        lsr     a                               ; B9F5
        lsr     a                               ; B9F6
        and     #$01                            ; B9F7
        ora     LBA71,x                         ; B9F9
        jmp     LF011                           ; B9FC

; ----------------------------------------------------------------------------
        rts                                     ; B9FF

; ----------------------------------------------------------------------------
LBA00:  jmp     L_BA43                          ; BA00

; ----------------------------------------------------------------------------
        lda     #$80                            ; BA03
        sta     $42                             ; BA05
        lda     #$80                            ; BA07
        sta     $43                             ; BA09
        lda     $51                             ; BA0B
        beq     L_BA19                          ; BA0D
        lda     #$43                            ; BA0F
        jsr     Enqueue_Sound_Command           ; BA11
        dec     $51                             ; BA14
        jmp     L_BA43                          ; BA16

; ----------------------------------------------------------------------------
L_BA19: jsr     LE083                           ; BA19
        beq     L_BA43                          ; BA1C
        jsr     LEB71                           ; BA1E
        and     #$40                            ; BA21
        beq     L_BA2C                          ; BA23
        lda     #$60                            ; BA25
        ldx     #$60                            ; BA27
        jmp     L_BA30                          ; BA29

; ----------------------------------------------------------------------------
L_BA2C: lda     #$A0                            ; BA2C
        ldx     #$A0                            ; BA2E
L_BA30: clc                                     ; BA30
        adc     $47                             ; BA31
        sta     $47                             ; BA33
        stx     $50                             ; BA35
        ldy     #$18                            ; BA37
        jsr     LE1BD                           ; BA39
        lda     #$00                            ; BA3C
        sta     $51                             ; BA3E
        dec     LoadedObject_Type               ; BA40
        rts                                     ; BA42

; ----------------------------------------------------------------------------
L_BA43: lda     #$10                            ; BA43
        sta     $40                             ; BA45
        lda     #$10                            ; BA47
        sta     $41                             ; BA49
        jsr     LEF2B                           ; BA4B
        beq     L_BA53                          ; BA4E
        jmp     LD7F8                           ; BA50

; ----------------------------------------------------------------------------
L_BA53: lda     #$1C                            ; BA53
        jsr     L_A30A                          ; BA55
        beq     L_BA5D                          ; BA58
        jmp     L_A34D                          ; BA5A

; ----------------------------------------------------------------------------
L_BA5D: lda     $47                             ; BA5D
        lsr     a                               ; BA5F
        lsr     a                               ; BA60
        lsr     a                               ; BA61
        lsr     a                               ; BA62
        lsr     a                               ; BA63
        tax                                     ; BA64
        lda     LBA80,x                         ; BA65
        sta     $44                             ; BA68
        lda     LBA81,x                         ; BA6A
        jmp     LF011                           ; BA6D

; ----------------------------------------------------------------------------
LBA70:  .byte   $C0                             ; BA70
LBA71:  .byte   $6A,$00,$68,$00,$6A,$C0,$68,$40 ; BA71
        .byte   $68,$80,$6A,$80,$68,$40,$6A     ; BA79
LBA80:  .byte   $00                             ; BA80
LBA81:  .byte   $6A,$80,$68,$40,$6A,$00,$68     ; BA81
.endmacro

