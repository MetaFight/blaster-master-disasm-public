.macro MAC_L_F5D9
L_F5D9: lda     #$1D                            ; F5D9
        sta     $D5                             ; F5DB
        sta     $D4                             ; F5DD
        jsr     L_F67C                          ; F5DF
        lda     #$01                            ; F5E2
        jsr     L_E9CF                          ; F5E4
        lda     #$00                            ; F5E7
        sta     $E0                             ; F5E9
        lda     #$00                            ; F5EB
        sta     $01                             ; F5ED
L_F5EF: inc     $01                             ; F5EF
        ldx     $01                             ; F5F1
        cpx     #$03                            ; F5F3
        bne     L_F5FB                          ; F5F5
        ldx     #$00                            ; F5F7
        stx     $01                             ; F5F9
L_F5FB: lda     LF65E,x                         ; F5FB
        jsr     L_F668                          ; F5FE
        jsr     WaitNMI                         ; F601
        lda     $E0                             ; F604
        beq     L_F5EF                          ; F606
        lda     #$4E                            ; F608
        jsr     Enqueue_Sound_Command           ; F60A
        lda     #$0F                            ; F60D
L_F60F: pha                                     ; F60F
        lsr     a                               ; F610
        lsr     a                               ; F611
        tax                                     ; F612
        lda     LF661,x                         ; F613
        jsr     L_F668                          ; F616
        jsr     WaitNMI                         ; F619
        pla                                     ; F61C
        sec                                     ; F61D
        sbc     #$01                            ; F61E
        bpl     L_F60F                          ; F620
        lda     #$28                            ; F622
L_F624: pha                                     ; F624
        jsr     WaitNMI                         ; F625
        pla                                     ; F628
        sec                                     ; F629
        sbc     #$01                            ; F62A
        bpl     L_F624                          ; F62C
        lda     #$0B                            ; F62E
L_F630: pha                                     ; F630
        lsr     a                               ; F631
        lsr     a                               ; F632
        tax                                     ; F633
        lda     LF665,x                         ; F634
        jsr     L_F668                          ; F637
        jsr     WaitNMI                         ; F63A
        pla                                     ; F63D
        sec                                     ; F63E
        sbc     #$01                            ; F63F
        bpl     L_F630                          ; F641
        lda     #$00                            ; F643
        sta     $E0                             ; F645
L_F647: jsr     WaitNMI                         ; F647
        lda     $E0                             ; F64A
        beq     L_F647                          ; F64C
        jsr     L_CE27                          ; F64E
L_F651: jsr     ScreenFade_Step                 ; F651
        jsr     WaitNMI                         ; F654
        lda     $B6                             ; F657
        cmp     #$09                            ; F659
        bcc     L_F651                          ; F65B
        rts                                     ; F65D

; ----------------------------------------------------------------------------
LF65E:  .byte   $93,$93,$94                     ; F65E
LF661:  .byte   $98,$97,$96,$95                 ; F661
LF665:  .byte   $9B,$9A,$99                     ; F665
; ----------------------------------------------------------------------------
L_F668: pha                                     ; F668
        lda     #$7C                            ; F669
        sta     $3E                             ; F66B
        lda     #$AB                            ; F66D
        sta     $3F                             ; F66F
        lda     #$00                            ; F671
        sta     $44                             ; F673
        pla                                     ; F675
        jsr     L_F011                          ; F676
        jmp     L_EC73                          ; F679

; ----------------------------------------------------------------------------
L_F67C: jsr     L_E6FA                          ; F67C
        ldx     #$1B                            ; F67F
L_F681: lda     LF68B,x                         ; F681
        sta     $0650,x                         ; F684
        dex                                     ; F687
        bpl     L_F681                          ; F688
        rts                                     ; F68A

; ----------------------------------------------------------------------------
LF68B:  .byte   $0F,$27,$07,$17,$0F,$1C,$2C,$0A ; F68B
        .byte   $0F,$38,$17,$27,$0F,$30,$00,$0B ; F693
        .byte   $0F,$30,$15,$0F,$0F,$30,$00,$0F ; F69B
        .byte   $0F,$30,$15,$00                 ; F6A3
; ----------------------------------------------------------------------------
.endmacro

