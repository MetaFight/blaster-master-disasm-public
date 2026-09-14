.macro MAC_L_BE54
; ----------------------------------------------------------------------------
L_BE54: jmp     L_BE60                          ; BE54

; ----------------------------------------------------------------------------
L_BE57: lda     #$00                            ; BE57
        sta     LoadedObj + Obj::Velocity_X     ; BE59
        lda     #$0E                            ; BE5B
        jsr     L_B2B4                          ; BE5D
L_BE60: rts                                     ; BE60

; ----------------------------------------------------------------------------
L_BE61: jmp     L_BE95                          ; BE61

; ----------------------------------------------------------------------------
L_BE64: lda     #$C0                            ; BE64
        sta     $42                             ; BE66
        lda     #$C0                            ; BE68
        sta     $43                             ; BE6A
        jsr     LC048                           ; BE6C
        sta     LoadedObj + Obj::Velocity_X     ; BE6F
        lda     #$3F                            ; BE71
        ldx     #$4C                            ; BE73
        jsr     LC14D                           ; BE75
        ldx     #$03                            ; BE78
        jsr     LC20A                           ; BE7A
        sta     LoadedObj + Obj::Velocity_X     ; BE7D
        jsr     LC051                           ; BE7F
        sta     LoadedObj + Obj::Velocity_Y     ; BE82
        lda     #$3F                            ; BE84
        ldx     #$4D                            ; BE86
        jsr     LC14D                           ; BE88
        ldx     #$03                            ; BE8B
        jsr     LC20A                           ; BE8D
        sta     LoadedObj + Obj::Velocity_Y     ; BE90
        jsr     LC02D                           ; BE92
L_BE95: lda     #$18                            ; BE95
        sta     $40                             ; BE97
        lda     #$18                            ; BE99
        sta     $41                             ; BE9B
        jsr     LC0FF                           ; BE9D
        beq     L_BEA5                          ; BEA0
        jmp     LC17A                           ; BEA2

; ----------------------------------------------------------------------------
L_BEA5: lda     #$0E                            ; BEA5
        jsr     L_B2C5                          ; BEA7
        clc                                     ; BEAA
        lda     $3F                             ; BEAB
        adc     #$08                            ; BEAD
        sta     $3F                             ; BEAF
        lda     #$11                            ; BEB1
        jsr     LC13E                           ; BEB3
        and     #$24                            ; BEB6
        cmp     #$04                            ; BEB8
        beq     L_BEC7                          ; BEBA
        lda     #$01                            ; BEBC
        sta     $44                             ; BEBE
        lda     #$4C                            ; BEC0
        sta     $45                             ; BEC2
        jsr     LC1AD                           ; BEC4
L_BEC7: lda     $3F                             ; BEC7
        sec                                     ; BEC9
        sbc     #$12                            ; BECA
        sta     $3F                             ; BECC
        lda     Global_FrameCounter             ; BECE
        asl     a                               ; BED0
        ldy     #$06                            ; BED1
        jsr     LC1B6                           ; BED3
        clc                                     ; BED6
        adc     $3F                             ; BED7
        sta     $3F                             ; BED9
        jsr     L_93BD                          ; BEDB
        lda     #$01                            ; BEDE
        sta     $44                             ; BEE0
        ldx     #$25                            ; BEE2
        lda     Global_FrameCounter             ; BEE4
        and     #$08                            ; BEE6
        beq     L_BEEB                          ; BEE8
        inx                                     ; BEEA
L_BEEB: txa                                     ; BEEB
        jmp     LC063                           ; BEEC

.endmacro

