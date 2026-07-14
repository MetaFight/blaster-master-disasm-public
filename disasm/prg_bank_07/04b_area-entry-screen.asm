.macro MAC_L_F6A7
L_F6A7: jsr     L_EA03                          ; F6A7
        lda     #$07                            ; F6AA
        sta     $D5                             ; F6AC
        lda     #$09                            ; F6AE
        sta     $C7                             ; F6B0
        lda     #$0D                            ; F6B2
        sta     $C8                             ; F6B4
        lda     LF706                           ; F6B6
        sta     L007A                           ; F6B9
        lda     LF706+1                         ; F6BB
        sta     $7B                             ; F6BE
        ldy     #$00                            ; F6C0
        jsr     L_E823                          ; F6C2
        lda     #$0D                            ; F6C5
        sta     $C7                             ; F6C7
        lda     #$0F                            ; F6C9
        sta     $C8                             ; F6CB
        jsr     L_E823                          ; F6CD
        lda     $14                             ; F6D0
        and     #$07                            ; F6D2
        clc                                     ; F6D4
        adc     #$01                            ; F6D5
        jsr     L_E884                          ; F6D7
        jsr     L_F1CA                          ; F6DA
        jsr     L_F6F3                          ; F6DD
        jsr     L_CE2E                          ; F6E0
        lda     #$3C                            ; F6E3
L_F6E5: pha                                     ; F6E5
        jsr     WaitNMI                         ; F6E6
        pla                                     ; F6E9
        sec                                     ; F6EA
        sbc     #$01                            ; F6EB
        bne     L_F6E5                          ; F6ED
        jsr     L_CE3C                          ; F6EF
        rts                                     ; F6F2

; ----------------------------------------------------------------------------
L_F6F3: jsr     L_E6FA                          ; F6F3
        ldx     #$03                            ; F6F6
L_F6F8: lda     LF702,x                         ; F6F8
        sta     $0650,x                         ; F6FB
        dex                                     ; F6FE
        bpl     L_F6F8                          ; F6FF
        rts                                     ; F701

; ----------------------------------------------------------------------------
LF702:  .byte   $0F,$30,$0F,$0F                 ; F702
; ----------------------------------------------------------------------------
LF706:  .addr   LF708                           ; F706
; ----------------------------------------------------------------------------
LF708:  .byte   $45,$4E,$54,$45,$52,$49,$4E,$47 ; F708
        .byte   $20,$49,$4E,$54,$4F,$00,$41,$52 ; F710
        .byte   $45,$41,$20,$00                 ; F718
; ----------------------------------------------------------------------------
.endmacro

