.macro MAC_L_B62F
; ----------------------------------------------------------------------------
L_B62F: jmp     L_B63B                          ; B62F

; ----------------------------------------------------------------------------
        lda     #$19                            ; B632
        jsr     L_A2E9                          ; B634
        lda     #$53                            ; B637
        sta     LoadedObject_Type               ; B639
L_B63B: rts                                     ; B63B

; ----------------------------------------------------------------------------
LB63C:  jmp     L_B66F                          ; B63C

; ----------------------------------------------------------------------------
        lda     #$80                            ; B63F
        sta     $42                             ; B641
        lda     #$80                            ; B643
        sta     $43                             ; B645
        jsr     LEF2B                           ; B647
        bne     L_B66F                          ; B64A
        lda     $11                             ; B64C
        and     #$3F                            ; B64E
        bne     L_B66F                          ; B650
        jsr     LEB71                           ; B652
        and     #$41                            ; B655
        bne     L_B66F                          ; B657
        lda     #$20                            ; B659
        jsr     L_A29E                          ; B65B
        beq     L_B66F                          ; B65E
        lda     #$87                            ; B660
        sta     PlayerObj_Type,x                ; B662
        lda     #$00                            ; B665
        sta     PlayerObj_YVel,x                ; B667
        lda     #$24                            ; B66A
        jsr     Enqueue_Sound_Command           ; B66C
L_B66F: lda     #$10                            ; B66F
        sta     $40                             ; B671
        lda     #$10                            ; B673
        sta     $41                             ; B675
        jsr     LEF2B                           ; B677
        beq     L_B67F                          ; B67A
        jmp     LD7F8                           ; B67C

; ----------------------------------------------------------------------------
L_B67F: rts                                     ; B67F

; ----------------------------------------------------------------------------
LB680:  jmp     L_B6B8                          ; B680

; ----------------------------------------------------------------------------
        lda     #$80                            ; B683
        sta     $42                             ; B685
        lda     #$80                            ; B687
        sta     $43                             ; B689
        jsr     LD2B9                           ; B68B
        lda     #$00                            ; B68E
        jsr     LD2B1                           ; B690
        and     #$C0                            ; B693
        cmp     #$40                            ; B695
        beq     L_B69C                          ; B697
        jmp     LD81C                           ; B699

; ----------------------------------------------------------------------------
L_B69C: lda     $11                             ; B69C
        asl     a                               ; B69E
        asl     a                               ; B69F
        ldy     #$08                            ; B6A0
        jsr     LE1D5                           ; B6A2
        jsr     LE196                           ; B6A5
        sta     LoadedObject_YVel               ; B6A8
        jsr     LE083                           ; B6AA
        and     #$80                            ; B6AD
        beq     L_B6B8                          ; B6AF
        lda     #$00                            ; B6B1
        sec                                     ; B6B3
        sbc     LoadedObject_XVel               ; B6B4
        sta     LoadedObject_XVel               ; B6B6
L_B6B8: lda     #$10                            ; B6B8
        sta     $40                             ; B6BA
        lda     #$10                            ; B6BC
        sta     $41                             ; B6BE
        jsr     LEF2B                           ; B6C0
        beq     L_B6C8                          ; B6C3
        jmp     LD81C                           ; B6C5

; ----------------------------------------------------------------------------
L_B6C8: lda     #$19                            ; B6C8
        jsr     L_A30A                          ; B6CA
        beq     L_B6D2                          ; B6CD
        jmp     L_A347                          ; B6CF

; ----------------------------------------------------------------------------
L_B6D2: lda     #$01                            ; B6D2
        jsr     LE04E                           ; B6D4
        lda     $11                             ; B6D7
        lsr     a                               ; B6D9
        lsr     a                               ; B6DA
        lsr     a                               ; B6DB
        and     #$01                            ; B6DC
        clc                                     ; B6DE
        adc     #$A5                            ; B6DF
        jmp     LF011                           ; B6E1

.endmacro

