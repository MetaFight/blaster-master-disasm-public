.macro MAC_L_B4E1
; ----------------------------------------------------------------------------
L_B4E1: jmp     L_B4ED                          ; B4E1

; ----------------------------------------------------------------------------
L_B4E4: lda     #$06                            ; B4E4
        jsr     L_B2B4                          ; B4E6
        lda     #$33                            ; B4E9
        sta     LoadedObj + Obj::Type           ; B4EB
L_B4ED: rts                                     ; B4ED

; ----------------------------------------------------------------------------
L_B4EE: jmp     L_B54F                          ; B4EE

; ----------------------------------------------------------------------------
L_B4F1: lda     #$80                            ; B4F1
        sta     $42                             ; B4F3
        lda     #$80                            ; B4F5
        sta     $43                             ; B4F7
        lda     Global_FrameCounter             ; B4F9
        and     #$1F                            ; B4FB
        bne     L_B54F                          ; B4FD
        jsr     LC1B3                           ; B4FF
        and     #$18                            ; B502
        bne     L_B54F                          ; B504
        jsr     LC12F                           ; B506
        beq     L_B54F                          ; B509
        stx     $05                             ; B50B
        lda     #$34                            ; B50D
        sta     ObjectTable + Obj::Type,x       ; B50F
        lda     $1C                             ; B512
        sta     ObjectTable + Obj::Position_X_Lo,x ; B514
        lda     $1D                             ; B517
        sta     ObjectTable + Obj::Position_X_Hi,x ; B519
        jsr     LC1B3                           ; B51C
        bmi     L_B52C                          ; B51F
        lda     #$30                            ; B521
        sta     ObjectTable + Obj::Velocity_X,x ; B523
        inc     ObjectTable + Obj::Position_X_Hi,x ; B526
        jmp     L_B53A                          ; B529

; ----------------------------------------------------------------------------
L_B52C: lda     #$D0                            ; B52C
        sta     ObjectTable + Obj::Velocity_X,x ; B52E
        lda     ObjectTable + Obj::Position_X_Hi,x ; B531
        clc                                     ; B534
        adc     #$0F                            ; B535
        sta     ObjectTable + Obj::Position_X_Hi,x ; B537
L_B53A: jsr     LC1B3                           ; B53A
        ldx     #$06                            ; B53D
        jsr     LC20A                           ; B53F
        clc                                     ; B542
        adc     LoadedObj + Obj::Position_Y_Hi  ; B543
        ldx     $05                             ; B545
        sta     ObjectTable + Obj::Position_Y_Hi,x ; B547
        lda     #$24                            ; B54A
        jsr     LC216                           ; B54C
L_B54F: lda     #$10                            ; B54F
        sta     $40                             ; B551
        lda     #$10                            ; B553
        sta     $41                             ; B555
        jsr     LC0FF                           ; B557
        beq     L_B55F                          ; B55A
        jmp     LC17A                           ; B55C

; ----------------------------------------------------------------------------
L_B55F: rts                                     ; B55F

; ----------------------------------------------------------------------------
L_B560: jmp     L_B57D                          ; B560

; ----------------------------------------------------------------------------
L_B563: lda     #$80                            ; B563
        sta     $42                             ; B565
        lda     #$80                            ; B567
        sta     $43                             ; B569
        lda     Global_FrameCounter             ; B56B
        asl     a                               ; B56D
        asl     a                               ; B56E
        asl     a                               ; B56F
        ldy     #$20                            ; B570
        jsr     LC1FE                           ; B572
        jsr     LC20D                           ; B575
        sta     LoadedObj + Obj::Velocity_Y     ; B578
        jsr     LC01E                           ; B57A
L_B57D: lda     #$10                            ; B57D
        sta     $40                             ; B57F
        lda     #$10                            ; B581
        sta     $41                             ; B583
        jsr     LC0FF                           ; B585
        beq     L_B58D                          ; B588
        jmp     LC114                           ; B58A

; ----------------------------------------------------------------------------
L_B58D: lda     #$06                            ; B58D
        jsr     L_B2E1                          ; B58F
        lda     #$41                            ; B592
        jsr     LC075                           ; B594
        lda     Global_FrameCounter             ; B597
        lsr     a                               ; B599
        lsr     a                               ; B59A
        lsr     a                               ; B59B
        and     #$01                            ; B59C
        tax                                     ; B59E
        lda     L_B5A5,x                        ; B59F
        jmp     LC063                           ; B5A2

.endmacro

