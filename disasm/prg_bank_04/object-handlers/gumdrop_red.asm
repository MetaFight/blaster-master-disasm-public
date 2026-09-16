.macro MAC_object_handlers__gumdrop_red
; ----------------------------------------------------------------------------
L_BEEF: jmp     L_BEF7                          ; BEEF

; ----------------------------------------------------------------------------
L_BEF2: lda     #$0F                            ; BEF2
        jsr     L_B2B4                          ; BEF4
L_BEF7: rts                                     ; BEF7

; ----------------------------------------------------------------------------
L_BEF8: jmp     L_BF52                          ; BEF8

; ----------------------------------------------------------------------------
L_BEFB: lda     #$80                            ; BEFB
        sta     $42                             ; BEFD
        lda     #$80                            ; BEFF
        sta     $43                             ; BF01
        jsr     LC04B                           ; BF03
        sta     LoadedObj + Obj::Velocity_X     ; BF06
        lda     #$3F                            ; BF08
        ldx     #$4C                            ; BF0A
        jsr     LC14D                           ; BF0C
        ldx     #$03                            ; BF0F
        jsr     LC20A                           ; BF11
        sta     LoadedObj + Obj::Velocity_X     ; BF14
        jsr     LC027                           ; BF16
        jsr     L_B243                          ; BF19
        jsr     LC015                           ; BF1C
        jsr     LC054                           ; BF1F
        sta     LoadedObj + Obj::Velocity_Y     ; BF22
        lda     #$3F                            ; BF24
        ldx     #$4D                            ; BF26
        jsr     LC14D                           ; BF28
        ldx     #$03                            ; BF2B
        jsr     LC20A                           ; BF2D
        sta     LoadedObj + Obj::Velocity_Y     ; BF30
        jsr     LC03F                           ; BF32
        jsr     L_B264                          ; BF35
        jsr     LC018                           ; BF38
        jsr     LC1B3                           ; BF3B
        and     #$40                            ; BF3E
        bne     L_BF52                          ; BF40
        lda     Global_FrameCounter             ; BF42
        and     #$CF                            ; BF44
        bne     L_BF52                          ; BF46
        jsr     LC12F                           ; BF48
        beq     L_BF52                          ; BF4B
        lda     #$58                            ; BF4D
        sta     ObjectTable + Obj::Type,x       ; BF4F
L_BF52: lda     #$10                            ; BF52
        sta     $40                             ; BF54
        lda     #$10                            ; BF56
        sta     $41                             ; BF58
        jsr     LC0FF                           ; BF5A
        beq     L_BF62                          ; BF5D
        jmp     LC17A                           ; BF5F

; ----------------------------------------------------------------------------
L_BF62: lda     #$0F                            ; BF62
        jsr     L_B2C5                          ; BF64
        jsr     LC138                           ; BF67
        jsr     LC0A2                           ; BF6A
        bne     L_BF75                          ; BF6D
        lda     Global_FrameCounter             ; BF6F
        and     #$03                            ; BF71
        bne     L_BF89                          ; BF73
L_BF75: lda     #$00                            ; BF75
        sta     $44                             ; BF77
        lda     Global_FrameCounter             ; BF79
        and     #$08                            ; BF7B
        bne     L_BF84                          ; BF7D
        lda     #$46                            ; BF7F
        jmp     L_BF86                          ; BF81

; ----------------------------------------------------------------------------
L_BF84: lda     #$47                            ; BF84
L_BF86: jmp     LC063                           ; BF86

; ----------------------------------------------------------------------------
L_BF89: rts                                     ; BF89

.endmacro

