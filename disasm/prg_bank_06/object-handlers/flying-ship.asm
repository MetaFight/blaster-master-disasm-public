.macro MAC_L_ABCF
L_ABCF: jmp     L_ABEB                          ; ABCF

; ----------------------------------------------------------------------------
        lda     #$0A                            ; ABD2
        jsr     L_A2E9                          ; ABD4
        lda     #$10                            ; ABD7
        sta     $4C                             ; ABD9
        lda     #$00                            ; ABDB
        sta     $4D                             ; ABDD
        jsr     LE0ED                           ; ABDF
        bpl     L_ABEB                          ; ABE2
        lda     #$00                            ; ABE4
        sec                                     ; ABE6
        sbc     $4C                             ; ABE7
        sta     $4C                             ; ABE9
L_ABEB: rts                                     ; ABEB

; ----------------------------------------------------------------------------
LABEC:  jmp     L_AC10                          ; ABEC

; ----------------------------------------------------------------------------
        lda     #$80                            ; ABEF
        sta     $42                             ; ABF1
        lda     #$80                            ; ABF3
        sta     $43                             ; ABF5
        jsr     LDF68                           ; ABF7
        lda     $11                             ; ABFA
        and     #$4F                            ; ABFC
        bne     L_AC10                          ; ABFE
        jsr     LE0FA                           ; AC00
        bmi     L_AC10                          ; AC03
        cmp     #$03                            ; AC05
        bcc     L_AC10                          ; AC07
        lda     #$3C                            ; AC09
        sta     $A0                             ; AC0B
        jsr     LDF46                           ; AC0D
L_AC10: lda     #$10                            ; AC10
        sta     $40                             ; AC12
        lda     #$10                            ; AC14
        sta     $41                             ; AC16
        jsr     LEF2B                           ; AC18
        beq     L_AC20                          ; AC1B
        jmp     LD7F8                           ; AC1D

; ----------------------------------------------------------------------------
L_AC20: lda     #$0A                            ; AC20
        jsr     L_A30A                          ; AC22
        beq     L_AC2A                          ; AC25
        jmp     L_A34D                          ; AC27

; ----------------------------------------------------------------------------
L_AC2A: lda     #$01                            ; AC2A
        jsr     LE04E                           ; AC2C
        ldx     #$78                            ; AC2F
        lda     $11                             ; AC31
        and     #$10                            ; AC33
        beq     L_AC38                          ; AC35
        inx                                     ; AC37
L_AC38: txa                                     ; AC38
        jmp     LF011                           ; AC39

; ----------------------------------------------------------------------------
.endmacro

