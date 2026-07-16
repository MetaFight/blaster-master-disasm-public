.macro MAC_L_B494
; ----------------------------------------------------------------------------
L_B494: jmp     L_B4A2                          ; B494

; ----------------------------------------------------------------------------
        lda     #$17                            ; B497
        jsr     L_A2E9                          ; B499
        lda     #$00                            ; B49C
        sta     $4C                             ; B49E
        sta     $4D                             ; B4A0
L_B4A2: rts                                     ; B4A2

; ----------------------------------------------------------------------------
LB4A3:  jmp     L_B508                          ; B4A3

; ----------------------------------------------------------------------------
        lda     #$80                            ; B4A6
        sta     $42                             ; B4A8
        lda     #$40                            ; B4AA
        sta     $43                             ; B4AC
        jsr     LE120                           ; B4AE
        ldx     #$02                            ; B4B1
        jsr     LE06A                           ; B4B3
        sta     $4D                             ; B4B6
        lda     #$0A                            ; B4B8
        ldx     #$4D                            ; B4BA
        jsr     LEB14                           ; B4BC
        jsr     LE107                           ; B4BF
        pha                                     ; B4C2
        ldx     #$02                            ; B4C3
        jsr     LE06A                           ; B4C5
        sta     $4C                             ; B4C8
        pla                                     ; B4CA
        bpl     L_B4D2                          ; B4CB
        eor     #$FF                            ; B4CD
        clc                                     ; B4CF
        adc     #$01                            ; B4D0
L_B4D2: cmp     #$40                            ; B4D2
        bcs     L_B4DB                          ; B4D4
        lda     #$01                            ; B4D6
        jmp     L_B4DD                          ; B4D8

; ----------------------------------------------------------------------------
L_B4DB: lda     #$0A                            ; B4DB
L_B4DD: ldx     #$4C                            ; B4DD
        jsr     LEB14                           ; B4DF
        jsr     LE0FA                           ; B4E2
        bne     L_B4EE                          ; B4E5
        lda     #$3C                            ; B4E7
        sta     $A0                             ; B4E9
        jsr     LDF36                           ; B4EB
L_B4EE: lda     $11                             ; B4EE
        asl     a                               ; B4F0
        asl     a                               ; B4F1
        asl     a                               ; B4F2
        asl     a                               ; B4F3
        asl     a                               ; B4F4
        ldy     #$0C                            ; B4F5
        jsr     LE1D5                           ; B4F7
        jsr     LE196                           ; B4FA
        clc                                     ; B4FD
        adc     $4D                             ; B4FE
        sta     $4D                             ; B500
        jsr     LDF68                           ; B502
        jsr     L_A2D4                          ; B505
L_B508: lda     #$10                            ; B508
        sta     $40                             ; B50A
        lda     #$08                            ; B50C
        sta     $41                             ; B50E
        jsr     LEF2B                           ; B510
        beq     L_B518                          ; B513
        jmp     LD804                           ; B515

; ----------------------------------------------------------------------------
L_B518: lda     #$17                            ; B518
        jsr     L_A30A                          ; B51A
        beq     L_B529                          ; B51D
        inc     $46                             ; B51F
        lda     #$40                            ; B521
        sta     $51                             ; B523
        lda     #$00                            ; B525
        sta     $4D                             ; B527
L_B529: lda     #$01                            ; B529
        jsr     LE04E                           ; B52B
        lda     $11                             ; B52E
        lsr     a                               ; B530
        lsr     a                               ; B531
        and     #$01                            ; B532
        clc                                     ; B534
        adc     #$9F                            ; B535
        jmp     LF011                           ; B537

; ----------------------------------------------------------------------------
LB53A:  jmp     L_B557                          ; B53A

; ----------------------------------------------------------------------------
        lda     #$80                            ; B53D
        sta     $42                             ; B53F
        lda     #$40                            ; B541
        sta     $43                             ; B543
        dec     $51                             ; B545
        lda     $11                             ; B547
        and     #$01                            ; B549
        bne     L_B557                          ; B54B
        lda     #$01                            ; B54D
        ldx     #$00                            ; B54F
        jsr     LDFD1                           ; B551
        jsr     LE083                           ; B554
L_B557: lda     #$10                            ; B557
        sta     $40                             ; B559
        lda     #$08                            ; B55B
        sta     $41                             ; B55D
        jsr     LEF2B                           ; B55F
        beq     L_B567                          ; B562
        jmp     LD804                           ; B564

; ----------------------------------------------------------------------------
L_B567: lda     $51                             ; B567
        bne     L_B56E                          ; B569
        jmp     L_A34D                          ; B56B

; ----------------------------------------------------------------------------
L_B56E: lda     #$01                            ; B56E
        jsr     LE04E                           ; B570
        lda     #$A1                            ; B573
        jmp     LF011                           ; B575

.endmacro

