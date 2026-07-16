.macro MAC_L_D18D
; ----------------------------------------------------------------------------
L_D18D: lda     $1F                             ; D18D
        sta     L0000                           ; D18F
        lda     $1E                             ; D191
        jsr     L_D1A4                          ; D193
        sta     $21                             ; D196
        lda     $1D                             ; D198
        sta     L0000                           ; D19A
        lda     $1C                             ; D19C
        jsr     L_D1A4                          ; D19E
        sta     $20                             ; D1A1
        rts                                     ; D1A3

; ----------------------------------------------------------------------------
L_D1A4: ldx     #$04                            ; D1A4
L_D1A6: lsr     L0000                           ; D1A6
        ror     a                               ; D1A8
        dex                                     ; D1A9
        bne     L_D1A6                          ; D1AA
        rts                                     ; D1AC

; ----------------------------------------------------------------------------
L_D1AD: lda     $20                             ; D1AD
        sta     $02                             ; D1AF
        lda     $21                             ; D1B1
        sta     $03                             ; D1B3
        jsr     L_D18D                          ; D1B5
        lda     $20                             ; D1B8
        sec                                     ; D1BA
        sbc     $02                             ; D1BB
        sta     L0000                           ; D1BD
        clc                                     ; D1BF
        adc     $FD                             ; D1C0
        sta     $FD                             ; D1C2
        ror     a                               ; D1C4
        eor     L0000                           ; D1C5
        bpl     L_D1CF                          ; D1C7
        lda     $F1                             ; D1C9
        eor     #$01                            ; D1CB
        sta     $F1                             ; D1CD
L_D1CF: lda     $21                             ; D1CF
        sec                                     ; D1D1
        sbc     $03                             ; D1D2
        sta     L0000                           ; D1D4
        clc                                     ; D1D6
        adc     $FC                             ; D1D7
        sta     $FC                             ; D1D9
        cmp     #$F0                            ; D1DB
        bcc     L_D1EE                          ; D1DD
        bit     L0000                           ; D1DF
        bpl     L_D1E9                          ; D1E1
        sec                                     ; D1E3
        sbc     #$10                            ; D1E4
        jmp     L_D1EC                          ; D1E6

; ----------------------------------------------------------------------------
L_D1E9: clc                                     ; D1E9
        adc     #$10                            ; D1EA
L_D1EC: sta     $FC                             ; D1EC
L_D1EE: rts                                     ; D1EE

.endmacro

