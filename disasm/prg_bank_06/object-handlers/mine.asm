.macro MAC_L_A9CB
L_A9CB: jmp     L_A9DD                          ; A9CB

; ----------------------------------------------------------------------------
        lda     #$07                            ; A9CE
        jsr     L_A2E9                          ; A9D0
        lda     #$00                            ; A9D3
        sta     $4C                             ; A9D5
        sta     $4D                             ; A9D7
        lda     #$01                            ; A9D9
        sta     $50                             ; A9DB
L_A9DD: rts                                     ; A9DD

; ----------------------------------------------------------------------------
LA9DE:  jmp     L_AA03                          ; A9DE

; ----------------------------------------------------------------------------
        lda     #$80                            ; A9E1
        sta     $42                             ; A9E3
        lda     #$80                            ; A9E5
        sta     $43                             ; A9E7
        lda     $50                             ; A9E9
        beq     L_A9FA                          ; A9EB
        jsr     LE005                           ; A9ED
        beq     L_A9F8                          ; A9F0
        lda     #$00                            ; A9F2
        sta     $4C                             ; A9F4
        beq     L_AA03                          ; A9F6
L_A9F8: inc     $50                             ; A9F8
L_A9FA: lda     #$11                            ; A9FA
        jsr     LD2B1                           ; A9FC
        bmi     L_AA03                          ; A9FF
        dec     $50                             ; AA01
L_AA03: lda     #$10                            ; AA03
        sta     $40                             ; AA05
        lda     #$10                            ; AA07
        sta     $41                             ; AA09
        jsr     LEF2B                           ; AA0B
        beq     L_AA13                          ; AA0E
        jmp     LD7F8                           ; AA10

; ----------------------------------------------------------------------------
L_AA13: clc                                     ; AA13
        lda     $3F                             ; AA14
        adc     #$04                            ; AA16
        sta     $3F                             ; AA18
        lda     #$07                            ; AA1A
        jsr     L_A30A                          ; AA1C
        lda     $45                             ; AA1F
        bne     L_AA3B                          ; AA21
        jsr     L_A34D                          ; AA23
        lda     $00                             ; AA26
        pha                                     ; AA28
        lda     #$06                            ; AA29
        sta     $00                             ; AA2B
L_AA2D: lda     #$44                            ; AA2D
        sta     $A0                             ; AA2F
        jsr     LDF46                           ; AA31
        dec     $00                             ; AA34
        bne     L_AA2D                          ; AA36
        pla                                     ; AA38
        sta     $00                             ; AA39
L_AA3B: lda     #$41                            ; AA3B
        sta     $44                             ; AA3D
        lda     $11                             ; AA3F
        and     #$20                            ; AA41
        beq     L_AA54                          ; AA43
        lda     $11                             ; AA45
        and     #$1F                            ; AA47
        bne     L_AA50                          ; AA49
        lda     #$20                            ; AA4B
        jsr     Enqueue_Sound_Command           ; AA4D
L_AA50: lda     #$88                            ; AA50
        bne     L_AA56                          ; AA52
L_AA54: lda     #$89                            ; AA54
L_AA56: jmp     LF011                           ; AA56

; ----------------------------------------------------------------------------
        rts                                     ; AA59

; ----------------------------------------------------------------------------
.endmacro

