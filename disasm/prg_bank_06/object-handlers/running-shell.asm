.macro MAC_L_B578
; ----------------------------------------------------------------------------
L_B578: jmp     L_B58A                          ; B578

; ----------------------------------------------------------------------------
        lda     #$18                            ; B57B
        jsr     L_A2E9                          ; B57D
        lda     #$00                            ; B580
        sta     LoadedObject_YVel               ; B582
        sta     LoadedObject_XVel               ; B584
        lda     #$02                            ; B586
        sta     $50                             ; B588
L_B58A: rts                                     ; B58A

; ----------------------------------------------------------------------------
LB58B:  jmp     L_B5FB                          ; B58B

; ----------------------------------------------------------------------------
        lda     #$80                            ; B58E
        sta     $42                             ; B590
        lda     #$80                            ; B592
        sta     $43                             ; B594
        lda     $50                             ; B596
        bne     L_B5B2                          ; B598
        jsr     LE0FA                           ; B59A
        bne     L_B5FB                          ; B59D
        inc     $50                             ; B59F
        jsr     LE0ED                           ; B5A1
        bmi     L_B5AB                          ; B5A4
        lda     #$28                            ; B5A6
        jmp     L_B5AD                          ; B5A8

; ----------------------------------------------------------------------------
L_B5AB: lda     #$D8                            ; B5AB
L_B5AD: sta     LoadedObject_XVel               ; B5AD
        jmp     L_B5FB                          ; B5AF

; ----------------------------------------------------------------------------
L_B5B2: cmp     #$01                            ; B5B2
        bne     L_B5D7                          ; B5B4
        lda     #$11                            ; B5B6
        jsr     LD2B1                           ; B5B8
        bmi     L_B5C2                          ; B5BB
        inc     $50                             ; B5BD
        jmp     L_B5FB                          ; B5BF

; ----------------------------------------------------------------------------
L_B5C2: jsr     LE083                           ; B5C2
        and     #$80                            ; B5C5
        beq     L_B5CE                          ; B5C7
        dec     $50                             ; B5C9
        jmp     L_B5FB                          ; B5CB

; ----------------------------------------------------------------------------
L_B5CE: lda     LoadedObject_XVel               ; B5CE
        bne     L_B5FB                          ; B5D0
        dec     $50                             ; B5D2
        jmp     L_B5FB                          ; B5D4

; ----------------------------------------------------------------------------
L_B5D7: lda     #$01                            ; B5D7
        ldx     #$00                            ; B5D9
        jsr     LDFD1                           ; B5DB
        lda     #$20                            ; B5DE
        ldx     #$4D                            ; B5E0
        jsr     LEB14                           ; B5E2
        jsr     LE083                           ; B5E5
        bpl     L_B5F1                          ; B5E8
        lda     #$00                            ; B5EA
        sta     LoadedObject_XVel               ; B5EC
        jmp     L_B5FB                          ; B5EE

; ----------------------------------------------------------------------------
L_B5F1: and     #$40                            ; B5F1
        beq     L_B5FB                          ; B5F3
        lda     LoadedObject_YVel               ; B5F5
        bmi     L_B5FB                          ; B5F7
        dec     $50                             ; B5F9
L_B5FB: lda     #$10                            ; B5FB
        sta     $40                             ; B5FD
        lda     #$10                            ; B5FF
        sta     $41                             ; B601
        jsr     LEF2B                           ; B603
        beq     L_B60B                          ; B606
        jmp     LD7F8                           ; B608

; ----------------------------------------------------------------------------
L_B60B: lda     #$18                            ; B60B
        jsr     L_A30A                          ; B60D
        beq     L_B615                          ; B610
        jmp     L_A34D                          ; B612

; ----------------------------------------------------------------------------
L_B615: lda     #$01                            ; B615
        jsr     LE04E                           ; B617
        lda     $50                             ; B61A
        bne     L_B623                          ; B61C
        lda     #$A2                            ; B61E
        jmp     L_B62C                          ; B620

; ----------------------------------------------------------------------------
L_B623: lda     $11                             ; B623
        lsr     a                               ; B625
        lsr     a                               ; B626
        and     #$01                            ; B627
        clc                                     ; B629
        adc     #$A3                            ; B62A
L_B62C: jmp     LF011                           ; B62C

.endmacro

