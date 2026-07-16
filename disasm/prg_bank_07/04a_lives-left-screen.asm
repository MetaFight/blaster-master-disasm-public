.macro MAC_L_F7D1
; ----------------------------------------------------------------------------
L_F7D1: jsr     L_EA03                          ; F7D1
        lda     #$07                            ; F7D4
        sta     $D5                             ; F7D6
        sta     $D4                             ; F7D8
        lda     $FF                             ; F7DA
        and     #$DF                            ; F7DC
        sta     $FF                             ; F7DE
        sta     $2000                           ; F7E0
        lda     #$0B                            ; F7E3
        sta     $C7                             ; F7E5
        lda     #$0D                            ; F7E7
        sta     $C8                             ; F7E9
        lda     LF82C                           ; F7EB
        sta     L007A                           ; F7EE
        lda     LF82C+1                         ; F7F0
        sta     $7B                             ; F7F3
        ldy     #$00                            ; F7F5
        jsr     L_E823                          ; F7F7
        lda     #$10                            ; F7FA
        sta     $C7                             ; F7FC
        lda     #$0D                            ; F7FE
        sta     $C8                             ; F800
        jsr     L_E74D                          ; F802
        jsr     L_F19B                          ; F805
        lda     $DD                             ; F808
        clc                                     ; F80A
        adc     #$30                            ; F80B
        jsr     L_F192                          ; F80D
        jsr     L_F1BC                          ; F810
        jsr     L_CE82                          ; F813
        jsr     L_CE0F                          ; F816
        lda     #$64                            ; F819
L_F81B: pha                                     ; F81B
        jsr     WaitNMI                         ; F81C
        jsr     ScreenFade_Step                 ; F81F
        pla                                     ; F822
        sec                                     ; F823
        sbc     #$01                            ; F824
        bne     L_F81B                          ; F826
        jsr     L_CE3C                          ; F828
        rts                                     ; F82B

; ----------------------------------------------------------------------------
LF82C:  .addr   LF82E                           ; F82C
; ----------------------------------------------------------------------------
LF82E:  .byte   $4C,$45,$46,$54,$00             ; F82E
.endmacro

