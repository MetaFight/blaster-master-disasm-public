.macro MAC_L_F71C
; ----------------------------------------------------------------------------
L_F71C: jsr     L_EA03                          ; F71C
        lda     #$07                            ; F71F
        sta     $D5                             ; F721
        lda     #$00                            ; F723
        sta     $D4                             ; F725
        lda     $FF                             ; F727
        and     #$DF                            ; F729
        sta     $FF                             ; F72B
        sta     $2000                           ; F72D
        lda     LF7C2                           ; F730
        sta     L007A                           ; F733
        lda     LF7C2+1                         ; F735
        sta     $7B                             ; F738
        ldy     #$00                            ; F73A
        lda     #$0B                            ; F73C
        sta     $C7                             ; F73E
        lda     #$0D                            ; F740
        sta     $C8                             ; F742
        jsr     L_E823                          ; F744
        lda     #$0B                            ; F747
        sta     $C7                             ; F749
        lda     #$10                            ; F74B
        sta     $C8                             ; F74D
        jsr     L_E823                          ; F74F
        jsr     L_F1CA                          ; F752
        jsr     L_CE82                          ; F755
        lda     #$00                            ; F758
        sta     $01                             ; F75A
        jsr     L_CE0F                          ; F75C
L_F75F: jsr     WaitNMI                         ; F75F
        jsr     ScreenFade_Step                 ; F762
        jsr     L_F771                          ; F765
        lda     $B6                             ; F768
        cmp     #$09                            ; F76A
        bcc     L_F75F                          ; F76C
        lda     $01                             ; F76E
        rts                                     ; F770

; ----------------------------------------------------------------------------
L_F771: lda     $B6                             ; F771
        bne     L_F789                          ; F773
        lda     $F5                             ; F775
        bit     LE6E4                           ; F777
        beq     L_F780                          ; F77A
        lda     #$00                            ; F77C
        beq     L_F787                          ; F77E
L_F780: bit     LE6E3                           ; F780
        beq     L_F789                          ; F783
        lda     #$01                            ; F785
L_F787: sta     $01                             ; F787
L_F789: lda     $F3                             ; F789
        bit     LE6E6                           ; F78B
        beq     L_F796                          ; F78E
        lda     $01                             ; F790
        eor     #$01                            ; F792
        sta     $01                             ; F794
L_F796: lda     #$67                            ; F796
        ldx     $01                             ; F798
        beq     L_F79E                          ; F79A
        lda     #$7F                            ; F79C
L_F79E: sta     $3F                             ; F79E
        lda     #$48                            ; F7A0
        sta     $3E                             ; F7A2
        lda     #$00                            ; F7A4
        sta     $44                             ; F7A6
        lda     $10                             ; F7A8
        lsr     a                               ; F7AA
        lsr     a                               ; F7AB
        and     #$03                            ; F7AC
        clc                                     ; F7AE
        adc     #$1C                            ; F7AF
        jsr     L_F011                          ; F7B1
        jsr     L_EC73                          ; F7B4
        lda     $F5                             ; F7B7
        bit     LE6E5                           ; F7B9
        beq     L_F7C1                          ; F7BC
        jsr     L_CE27                          ; F7BE
L_F7C1: rts                                     ; F7C1

; ----------------------------------------------------------------------------
LF7C2:  .addr   LF7C4                           ; F7C2
; ----------------------------------------------------------------------------
LF7C4:  .byte   $43,$4F,$4E,$54,$49,$4E,$55,$45 ; F7C4
        .byte   $00,$45,$4E,$44,$00             ; F7CC
.endmacro

