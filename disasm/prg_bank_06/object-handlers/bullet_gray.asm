.macro MAC_L_A4DE
; ----------------------------------------------------------------------------
L_A4DE: jmp     L_A50D                          ; A4DE

; ----------------------------------------------------------------------------
        lda     LoadedObject_X_MetaTile         ; A4E1
        lsr     a                               ; A4E3
        bcc     L_A4F1                          ; A4E4
        lda     #$A0                            ; A4E6
        sta     $50                             ; A4E8
        lda     #$A0                            ; A4EA
        sta     $47                             ; A4EC
        jmp     L_A4F9                          ; A4EE

; ----------------------------------------------------------------------------
L_A4F1: lda     #$60                            ; A4F1
        sta     $50                             ; A4F3
        lda     #$E0                            ; A4F5
        sta     $47                             ; A4F7
L_A4F9: ldy     #$10                            ; A4F9
        jsr     LE1BD                           ; A4FB
        lda     #$00                            ; A4FE
        sta     $51                             ; A500
        sta     $52                             ; A502
        lda     #$02                            ; A504
        jsr     L_A2E9                          ; A506
        lda     #$59                            ; A509
        sta     LoadedObject_Type               ; A50B
L_A50D: rts                                     ; A50D

; ----------------------------------------------------------------------------
LA50E:  jmp     L_A539                          ; A50E

; ----------------------------------------------------------------------------
        lda     LoadedObject_X_MetaTile         ; A511
        lsr     a                               ; A513
        bcc     L_A521                          ; A514
        lda     #$A0                            ; A516
        sta     $50                             ; A518
        lda     #$20                            ; A51A
        sta     $47                             ; A51C
        jmp     L_A529                          ; A51E

; ----------------------------------------------------------------------------
L_A521: lda     #$60                            ; A521
        sta     $50                             ; A523
        lda     #$60                            ; A525
        sta     $47                             ; A527
L_A529: ldy     #$10                            ; A529
        jsr     LE1BD                           ; A52B
        lda     #$00                            ; A52E
        sta     $51                             ; A530
        sta     $52                             ; A532
        lda     #$02                            ; A534
        jsr     L_A2E9                          ; A536
L_A539: rts                                     ; A539

; ----------------------------------------------------------------------------
LA53A:  jmp     L_A580                          ; A53A

; ----------------------------------------------------------------------------
        lda     #$80                            ; A53D
        sta     $42                             ; A53F
        lda     #$80                            ; A541
        sta     $43                             ; A543
        ldy     #$10                            ; A545
        jsr     L_A670                          ; A547
        jsr     LE107                           ; A54A
        and     #$FC                            ; A54D
        bne     L_A558                          ; A54F
        jsr     LE0FA                           ; A551
        beq     L_A580                          ; A554
        bne     L_A564                          ; A556
L_A558: jsr     LE120                           ; A558
        and     #$FC                            ; A55B
        bne     L_A580                          ; A55D
        jsr     LE0ED                           ; A55F
        beq     L_A580                          ; A562
L_A564: lda     $50                             ; A564
        clc                                     ; A566
        adc     $47                             ; A567
        sta     $01                             ; A569
        jsr     L_A634                          ; A56B
        cpx     $01                             ; A56E
        bne     L_A580                          ; A570
        stx     $47                             ; A572
        ldy     #$40                            ; A574
        jsr     LE1BD                           ; A576
        lda     #$10                            ; A579
        sta     $51                             ; A57B
        inc     LoadedObject_Type               ; A57D
        rts                                     ; A57F

; ----------------------------------------------------------------------------
L_A580: lda     #$10                            ; A580
        sta     $40                             ; A582
        lda     #$10                            ; A584
        sta     $41                             ; A586
        jsr     LEF2B                           ; A588
        beq     L_A590                          ; A58B
        jmp     LD7F8                           ; A58D

; ----------------------------------------------------------------------------
L_A590: lda     #$01                            ; A590
        jsr     L_A30A                          ; A592
        beq     L_A59A                          ; A595
        jmp     L_A34D                          ; A597

; ----------------------------------------------------------------------------
L_A59A: lda     $50                             ; A59A
        and     #$80                            ; A59C
        sta     $00                             ; A59E
        lda     $47                             ; A5A0
        sec                                     ; A5A2
        sbc     #$20                            ; A5A3
        lsr     a                               ; A5A5
        ora     $00                             ; A5A6
        lsr     a                               ; A5A8
        lsr     a                               ; A5A9
        lsr     a                               ; A5AA
        lsr     a                               ; A5AB
        tax                                     ; A5AC
        lda     L_A6BF,x                        ; A5AD
        ora     #$01                            ; A5B0
        sta     $44                             ; A5B2
        lda     $11                             ; A5B4
        lsr     a                               ; A5B6
        lsr     a                               ; A5B7
        lsr     a                               ; A5B8
        and     #$01                            ; A5B9
        ora     LA6C0,x                         ; A5BB
        jmp     LF011                           ; A5BE

; ----------------------------------------------------------------------------
        rts                                     ; A5C1

; ----------------------------------------------------------------------------
LA5C2:  jmp     L_A605                          ; A5C2

; ----------------------------------------------------------------------------
        lda     #$80                            ; A5C5
        sta     $42                             ; A5C7
        lda     #$80                            ; A5C9
        sta     $43                             ; A5CB
        lda     $51                             ; A5CD
        beq     L_A5DB                          ; A5CF
        lda     #$43                            ; A5D1
        jsr     Enqueue_Sound_Command           ; A5D3
        dec     $51                             ; A5D6
        jmp     L_A605                          ; A5D8

; ----------------------------------------------------------------------------
L_A5DB: jsr     LE083                           ; A5DB
        beq     L_A605                          ; A5DE
        jsr     LEB71                           ; A5E0
        and     #$40                            ; A5E3
        beq     L_A5EE                          ; A5E5
        lda     #$60                            ; A5E7
        ldx     #$60                            ; A5E9
        jmp     L_A5F2                          ; A5EB

; ----------------------------------------------------------------------------
L_A5EE: lda     #$A0                            ; A5EE
        ldx     #$A0                            ; A5F0
L_A5F2: clc                                     ; A5F2
        adc     $47                             ; A5F3
        sta     $47                             ; A5F5
        stx     $50                             ; A5F7
        ldy     #$10                            ; A5F9
        jsr     LE1BD                           ; A5FB
        lda     #$00                            ; A5FE
        sta     $51                             ; A600
        dec     LoadedObject_Type               ; A602
        rts                                     ; A604

; ----------------------------------------------------------------------------
L_A605: lda     #$10                            ; A605
        sta     $40                             ; A607
        lda     #$10                            ; A609
        sta     $41                             ; A60B
        jsr     LEF2B                           ; A60D
        beq     L_A615                          ; A610
        jmp     LD7F8                           ; A612

; ----------------------------------------------------------------------------
L_A615: lda     #$02                            ; A615
        jsr     L_A30A                          ; A617
        beq     L_A61F                          ; A61A
        jmp     L_A34D                          ; A61C

; ----------------------------------------------------------------------------
L_A61F: lda     $47                             ; A61F
        lsr     a                               ; A621
        lsr     a                               ; A622
        lsr     a                               ; A623
        lsr     a                               ; A624
        lsr     a                               ; A625
        tax                                     ; A626
        lda     LA6CF,x                         ; A627
        ora     #$01                            ; A62A
        sta     $44                             ; A62C
        lda     LA6D0,x                         ; A62E
        jmp     LF011                           ; A631

.endmacro

.macro MAC_L_A6BF
; ----------------------------------------------------------------------------
L_A6BF: .byte   $C0                             ; A6BF
LA6C0:  .byte   $6A,$00,$68,$00,$6A,$C0,$68,$40 ; A6C0
        .byte   $68,$80,$6A,$80,$68,$40,$6A     ; A6C8
LA6CF:  .byte   $00                             ; A6CF
LA6D0:  .byte   $6A,$80,$68,$40,$6A,$00,$68     ; A6D0
.endmacro

