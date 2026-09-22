.macro MAC_math_1_of_5
; ----------------------------------------------------------------------------
L_CF10: clc                                     ; CF10
        adc     #$40                            ; CF11
L_CF13: tay                                     ; CF13
        and     #$7F                            ; CF14
        cmp     #$40                            ; CF16
        bcc     L_CF1F                          ; CF18
        eor     #$FF                            ; CF1A
        clc                                     ; CF1C
        adc     #$81                            ; CF1D
L_CF1F: tax                                     ; CF1F
        tya                                     ; CF20
        bmi     L_CF27                          ; CF21
        lda     L_CF2E,x                        ; CF23
        rts                                     ; CF26

; ----------------------------------------------------------------------------
L_CF27: lda     #$00                            ; CF27
        sec                                     ; CF29
        sbc     L_CF2E,x                        ; CF2A
        rts                                     ; CF2D

; ----------------------------------------------------------------------------
L_CF2E: .byte   $00,$01,$02,$02,$03,$04,$05,$05 ; CF2E
        .byte   $06,$07,$08,$09,$09,$0A,$0B,$0C ; CF36
        .byte   $0C,$0D,$0E,$0E,$0F,$10,$10,$11 ; CF3E
        .byte   $12,$12,$13,$14,$14,$15,$15,$16 ; CF46
        .byte   $17,$17,$18,$18,$19,$19,$1A,$1A ; CF4E
        .byte   $1B,$1B,$1B,$1C,$1C,$1D,$1D,$1D ; CF56
        .byte   $1E,$1E,$1E,$1E,$1F,$1F,$1F,$1F ; CF5E
        .byte   $1F,$20,$20,$20,$20,$20,$20,$20 ; CF66
        .byte   $20                             ; CF6E
; ----------------------------------------------------------------------------
L_CF6F: clc                                     ; CF6F
        adc     #$40                            ; CF70
L_CF72: tay                                     ; CF72
        and     #$7F                            ; CF73
        cmp     #$40                            ; CF75
        bcc     L_CF7E                          ; CF77
        eor     #$FF                            ; CF79
        clc                                     ; CF7B
        adc     #$81                            ; CF7C
L_CF7E: tax                                     ; CF7E
        tya                                     ; CF7F
        bmi     L_CF86                          ; CF80
        lda     L_CF8D,x                        ; CF82
        rts                                     ; CF85

; ----------------------------------------------------------------------------
L_CF86: lda     #$00                            ; CF86
        sec                                     ; CF88
        sbc     L_CF8D,x                        ; CF89
        rts                                     ; CF8C

; ----------------------------------------------------------------------------
L_CF8D: .byte   $00,$03,$05,$08,$0B,$0E,$10,$13 ; CF8D
        .byte   $16,$19,$1B,$1E,$21,$23,$26,$28 ; CF95
        .byte   $2B,$2D,$30,$32,$35,$37,$3A,$3C ; CF9D
        .byte   $3E,$40,$43,$45,$47,$49,$4B,$4D ; CFA5
        .byte   $4F,$51,$53,$55,$57,$58,$5A,$5C ; CFAD
        .byte   $5D,$5F,$60,$61,$63,$64,$65,$66 ; CFB5
        .byte   $67,$68,$69,$6A,$6B,$6C,$6D,$6D ; CFBD
        .byte   $6E,$6E,$6F,$6F,$6F,$70,$70,$70 ; CFC5
        .byte   $70                             ; CFCD
; ----------------------------------------------------------------------------
L_CFCE: clc                                     ; CFCE
        adc     #$40                            ; CFCF
L_CFD1: tay                                     ; CFD1
        and     #$7F                            ; CFD2
        cmp     #$40                            ; CFD4
        bcc     L_CFDD                          ; CFD6
        eor     #$FF                            ; CFD8
        clc                                     ; CFDA
        adc     #$81                            ; CFDB
L_CFDD: tax                                     ; CFDD
        tya                                     ; CFDE
        bmi     L_CFE5                          ; CFDF
        lda     L_CFEC,x                        ; CFE1
        rts                                     ; CFE4

; ----------------------------------------------------------------------------
L_CFE5: lda     #$00                            ; CFE5
        sec                                     ; CFE7
        sbc     L_CFEC,x                        ; CFE8
        rts                                     ; CFEB

; ----------------------------------------------------------------------------
L_CFEC: .byte   $00,$02,$04,$06,$08,$0A,$0C,$0E ; CFEC
        .byte   $10,$12,$13,$15,$17,$19,$1B,$1D ; CFF4
        .byte   $1F,$20,$22,$24,$26,$27,$29,$2B ; CFFC
        .byte   $2C,$2E,$30,$31,$33,$34,$36,$37 ; D004
        .byte   $39,$3A,$3B,$3D,$3E,$3F,$40,$41 ; D00C
        .byte   $43,$44,$45,$46,$47,$47,$48,$49 ; D014
        .byte   $4A,$4B,$4B,$4C,$4D,$4D,$4E,$4E ; D01C
        .byte   $4E,$4F,$4F,$4F,$50,$50,$50,$50 ; D024
        .byte   $50                             ; D02C
.endmacro

; Interrupted by 17 macros:
;   MAC__ungrouped_4_of_17
;   MAC_06_game_screen__viewport_2_of_2
;   MAC__ungrouped_5_of_17
;   MAC_06_game_screen__object_system_2_of_8
;   MAC__ungrouped_6_of_17
;   MAC_06_game_screen__object_system_3_of_8
;   MAC__ungrouped_7_of_17
;   MAC_06_game_screen__object_system_4_of_8
;   MAC__ungrouped_8_of_17
;   MAC_level_rendering
;   MAC__ungrouped_9_of_17
;   MAC_transitions_3_of_3
;   MAC_sound_2_of_2
;   MAC__ungrouped_10_of_17
;   MAC_06_game_screen__object_system_5_of_8
;   MAC__ungrouped_11_of_17
;   MAC_06_game_screen__object_system_6_of_8

.macro MAC_math_2_of_5
; ----------------------------------------------------------------------------
L_E16B: ldx     #$08                            ; E16B
        lda     #$00                            ; E16D
        rol     $9B                             ; E16F
L_E171: rol     a                               ; E171
        cmp     $9C                             ; E172
        bcc     L_E178                          ; E174
        sbc     $9C                             ; E176
L_E178: rol     $9B                             ; E178
        dex                                     ; E17A
        bne     L_E171                          ; E17B
        sta     $9C                             ; E17D
        lda     $9B                             ; E17F
        rts                                     ; E181

; ----------------------------------------------------------------------------
; Unsigned fractional scale — multiply MulDiv_Op1 by the unsigned fraction in MulDiv_Op2. The
; unsigned half of ScaleBySignedFrac.
; 
; Input:
;   MulDiv_Op1 = value to scale, in any fixed-point format
;   MulDiv_Op2 = scale, as fixed08 (0.ffffffff)
; 
; Output:
;   A          = MulDiv_Op1 x MulDiv_Op2, in Op1's own format
;   MulDiv_Op1 = the same value (the result is written back over the input)
.proc ScaleByUnsignedFrac
        ldx     #$08                            ; E182
; A is the running total; the X above counts the 8 shift/add steps, one per bit of MulDiv_Op1.
        lda     #$00                            ; E184
; Shift the next multiplier bit out of MulDiv_Op1; when set, add the (progressively halved)
; multiplicand MulDiv_Op2.
_Loop:
        asl     $9B                             ; E186
        bcc     _Next                           ; E188
        clc                                     ; E18A
        adc     $9C                             ; E18B
; Halve MulDiv_Op2 — halving the multiplicand each step is what makes the routine lossy, and what
; leaves the final LSR to supply the last division by 2.
_Next:
        lsr     $9C                             ; E18D
        dex                                     ; E18F
        bne     _Loop                           ; E190
        lsr     a                               ; E192
        sta     $9B                             ; E193
        rts                                     ; E195
.endproc

; ----------------------------------------------------------------------------
; Signed fractional scale — A = A x Y / 128, with A's sign preserved.
; 
; Input:
;   A = signed byte, in any fixed-point format
;   Y = unsigned byte, in any fixed-point format
; 
; Output:
;   A = A x Y / 128, A's sign preserved. Approximate and never over-estimated — the magnitude
;   comes from ScaleByUnsignedFrac ($E182), which is low by 0..3. |result| must be < $80, that
;   routine's precondition.
.proc ScaleBySignedFrac
        sty     $9B                             ; E196
; ASL A does double duty:
; 
; 1. it shifts the sign bit into Carry (Carry set for negative)
; 2. it doubles A, rescaling it from sfixed17 (s.fffffff) to the fixed08 (0.ffffffff) that
; ScaleByUnsignedFrac expects.
; 
; For A < 0 the doubled value is still two's complement here (and for |A| > $40 it no longer
; even has bit 7 set); the fixed08 magnitude only appears after the negate below.
        asl     a                               ; E198
; For non-negative A values, jump to positive handler.
        bcc     _Positive                       ; E199
; For negative A values,
; 
; negate the doubled value,
        eor     #$FF                            ; E19B
        clc                                     ; E19D
        adc     #$01                            ; E19E
        sta     $9C                             ; E1A0
; scale,
        jsr     ScaleByUnsignedFrac             ; E1A2
; and negate the product back.
        eor     #$FF                            ; E1A5
        clc                                     ; E1A7
        adc     #$01                            ; E1A8
        rts                                     ; E1AA

; ----------------------------------------------------------------------------
; A >= 0: the doubled value needs no sign fixup — multiply and return.
_Positive:
        sta     $9C                             ; E1AB
        jsr     ScaleByUnsignedFrac             ; E1AD
        rts                                     ; E1B0
.endproc

; ----------------------------------------------------------------------------
L_E1B1: jsr     Trig_CosByAngle                 ; E1B1
        jmp     ScaleBySignedFrac               ; E1B4

; ----------------------------------------------------------------------------
L_E1B7: jsr     Trig_SinByAngle                 ; E1B7
        jmp     ScaleBySignedFrac               ; E1BA

.endmacro

; Interrupted by 1 macro:
;   MAC_06_game_screen__object_system_7_of_8

.macro MAC_math_3_of_5
; ----------------------------------------------------------------------------
; Cosine of the angle in A.
; Implemented as the sine of (A + $40)
; 
; Input:
;   A = angle (0-255 = full circle)
; 
; Output:
;   A = signed magnitude (0..$7F)
.proc Trig_CosByAngle
        clc                                     ; E1D2
; cos(A) = sin(A + $40), so bias by a quarter-circle ($40) and
; fall into Trig_SinByAngle...
        adc     #$40                            ; E1D3
.endproc
; ___
; 
; Sine of the angle in A
; 
; Input:
;   A = angle (0-255 = full circle)
; 
; Output:
;   A = signed magnitude (0..$7F)
; 
; Handled as 1 of 4 possible cases:
;   +---------+---------------+--------+---------------+---------+
;   | A       | Quadrant      | Half   | A'            | Look-up |
;   |---------+---------------+--------+---------------+---------|
;   | $00–$3F | Q1 (0–90°)    | first  | A' = A        | as-is   |
;   | $40–$7F | Q2 (90–180°)  | first  | A' = $80 - A  | as-is   |
;   | $80–$BF | Q3 (180–270°) | second | A' = A - $80  | negated |
;   | $C0–$FF | Q4 (270–360°) | second | A' = -A       | negated |
;   +---------+---------------+--------+---------------+---------+
.proc Trig_SinByAngle
        cmp     #$40                            ; E1D5
; if A < $40, then handle as Quandrant 1
        bcc     _Quandrant_1                    ; E1D7
        cmp     #$80                            ; E1D9
; if A >= $80, then handle as Half 2 (negative)
        bcs     _Half_2                         ; E1DB
; if $40 <= A < $80, then handle as Quandrant 2 by
; 1. converting A to Q1 equivalent (A = $80 - A), and
; 2. falling into Q1 handler.
_Quandrant_2:
        eor     #$FF                            ; E1DD
        clc                                     ; E1DF
        adc     #$01                            ; E1E0
        and     #$7F                            ; E1E2
; A < $40: Quadrant 1.
; 
; A used as-is.
; Look-up used as-is.
_Quandrant_1:
        tax                                     ; E1E4
        lda     L_E202,x                        ; E1E5
        rts                                     ; E1E8

; ----------------------------------------------------------------------------
_Half_2:
        cmp     #$C0                            ; E1E9
; if A >= $C0, then handle as Quandrant 4
        bcs     _Quandrant_4                    ; E1EB
; if $80 <= A < $C0, then handle as Quandrant 3 by
; 1. setting A = A - $80, and
; 2. Doing the table look-up and negating the result
_Quandrant_3:
        sec                                     ; E1ED
        sbc     #$80                            ; E1EE
        jmp     _LookupNeg                      ; E1F0

; ----------------------------------------------------------------------------
; if A >= $C0, then handle as Quandrant 4 by
; 1. negating A, and
; 2. Doing the table look-up and negating the result
_Quandrant_4:
        eor     #$FF                            ; E1F3
        clc                                     ; E1F5
        adc     #$01                            ; E1F6
; Get Look-up value and return it negated.
_LookupNeg:
        tax                                     ; E1F8
        lda     L_E202,x                        ; E1F9
        eor     #$FF                            ; E1FC
        clc                                     ; E1FE
        adc     #$01                            ; E1FF
        rts                                     ; E201
.endproc

; ----------------------------------------------------------------------------
L_E202: .byte   $00,$03,$06,$09,$0C,$10,$13,$16 ; E202
        .byte   $19,$1C,$1F,$22,$25,$28,$2B,$2E ; E20A
        .byte   $31,$33,$36,$39,$3C,$3F,$41,$44 ; E212
        .byte   $47,$49,$4C,$4E,$51,$53,$55,$58 ; E21A
        .byte   $5A,$5C,$5E,$60,$62,$64,$66,$68 ; E222
        .byte   $6A,$6B,$6D,$6F,$70,$71,$73,$74 ; E22A
        .byte   $75,$76,$78,$79,$7A,$7A,$7B,$7C ; E232
        .byte   $7D,$7D,$7E,$7E,$7E,$7F,$7F,$7F ; E23A
        .byte   $7F                             ; E242
.endmacro

; Interrupted by 15 macros:
;   MAC_03_demo_screen_2_of_2
;   MAC_02_story_sequence
;   MAC_mmc1
;   MAC_hardware_1_of_7
;   MAC__ungrouped_12_of_17
;   MAC_hardware_2_of_7
;   MAC__ungrouped_13_of_17
;   MAC_hardware_3_of_7
;   MAC__ungrouped_14_of_17
;   MAC_hardware_4_of_7
;   MAC_input
;   MAC_timing_2_of_3
;   MAC_drawing_background
;   MAC_hardware_5_of_7
;   MAC__ungrouped_15_of_17

.macro MAC_math_4_of_5
; ----------------------------------------------------------------------------
L_EA6F: ldx     #$09                            ; EA6F
        lda     #$00                            ; EA71
L_EA73: sta     $02,x                           ; EA73
        dex                                     ; EA75
        bpl     L_EA73                          ; EA76
        inc     $07                             ; EA78
        lda     #$10                            ; EA7A
        sta     $0C                             ; EA7C
L_EA7E: lsr     $01                             ; EA7E
        ror     L0000                           ; EA80
        bcc     L_EA8B                          ; EA82
        ldx     #$02                            ; EA84
        ldy     #$07                            ; EA86
        jsr     L_EA97                          ; EA88
L_EA8B: ldx     #$07                            ; EA8B
        ldy     #$07                            ; EA8D
        jsr     L_EA97                          ; EA8F
        dec     $0C                             ; EA92
        bne     L_EA7E                          ; EA94
        rts                                     ; EA96

; ----------------------------------------------------------------------------
L_EA97: clc                                     ; EA97
        lda     #$05                            ; EA98
        sta     $0D                             ; EA9A
L_EA9C: lda     L0000,x                         ; EA9C
        adc     L0000,y                         ; EA9E
        cmp     #$0A                            ; EAA1
        bcc     L_EAA8                          ; EAA3
        sec                                     ; EAA5
        sbc     #$0A                            ; EAA6
L_EAA8: sta     L0000,x                         ; EAA8
        inx                                     ; EAAA
        iny                                     ; EAAB
        dec     $0D                             ; EAAC
        bne     L_EA9C                          ; EAAE
        rts                                     ; EAB0

; ----------------------------------------------------------------------------
L_EAB1: ldx     #$04                            ; EAB1
L_EAB3: lda     #$00                            ; EAB3
        sta     $03,x                           ; EAB5
        lda     L0000                           ; EAB7
L_EAB9: sec                                     ; EAB9
        sbc     #$10                            ; EABA
        tay                                     ; EABC
        lda     $01                             ; EABD
        sbc     #$27                            ; EABF
        bcc     L_EACB                          ; EAC1
        sta     $01                             ; EAC3
        tya                                     ; EAC5
        inc     $03,x                           ; EAC6
        jmp     L_EAB9                          ; EAC8

; ----------------------------------------------------------------------------
L_EACB: lda     $01                             ; EACB
        sta     $02                             ; EACD
        lda     L0000                           ; EACF
        asl     a                               ; EAD1
        rol     $01                             ; EAD2
        asl     a                               ; EAD4
        rol     $01                             ; EAD5
        clc                                     ; EAD7
        adc     L0000                           ; EAD8
        sta     L0000                           ; EADA
        lda     $01                             ; EADC
        adc     $02                             ; EADE
        asl     L0000                           ; EAE0
        rol     a                               ; EAE2
        sta     $01                             ; EAE3
        dex                                     ; EAE5
        bpl     L_EAB3                          ; EAE6
        rts                                     ; EAE8

; ----------------------------------------------------------------------------
L_EAE9: sta     $45                             ; EAE9
        cmp     #$63                            ; EAEB
        bcs     L_EB09                          ; EAED
        ldx     #$00                            ; EAEF
        stx     $44                             ; EAF1
L_EAF3: sec                                     ; EAF3
        sbc     #$0A                            ; EAF4
        bcc     L_EAFF                          ; EAF6
        sta     $45                             ; EAF8
        inc     $44                             ; EAFA
        jmp     L_EAF3                          ; EAFC

; ----------------------------------------------------------------------------
L_EAFF: lda     $44                             ; EAFF
        asl     a                               ; EB01
        asl     a                               ; EB02
        asl     a                               ; EB03
        asl     a                               ; EB04
        clc                                     ; EB05
        adc     $45                             ; EB06
        rts                                     ; EB08

; ----------------------------------------------------------------------------
L_EB09: lda     #$99                            ; EB09
        rts                                     ; EB0B

; ----------------------------------------------------------------------------
L_EB0C: bpl     L_EB13                          ; EB0C
        eor     #$FF                            ; EB0E
        clc                                     ; EB10
        adc     #$01                            ; EB11
L_EB13: rts                                     ; EB13

.endmacro

; Interrupted by 1 macro:
;   MAC_06_game_screen__object_system_8_of_8

.macro MAC_math_5_of_5
; ----------------------------------------------------------------------------
L_EB2B: beq     L_EB36                          ; EB2B
        bpl     L_EB33                          ; EB2D
        clc                                     ; EB2F
        adc     #$01                            ; EB30
        rts                                     ; EB32

; ----------------------------------------------------------------------------
L_EB33: sec                                     ; EB33
        sbc     #$01                            ; EB34
L_EB36: rts                                     ; EB36

; ----------------------------------------------------------------------------
L_EB37: cmp     #$80                            ; EB37
        ror     a                               ; EB39
L_EB3A: cmp     #$80                            ; EB3A
        ror     a                               ; EB3C
L_EB3D: cmp     #$80                            ; EB3D
        ror     a                               ; EB3F
L_EB40: cmp     #$80                            ; EB40
        ror     a                               ; EB42
        rts                                     ; EB43

.endmacro

