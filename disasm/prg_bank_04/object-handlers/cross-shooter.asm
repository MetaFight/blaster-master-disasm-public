.macro MAC_object_handlers__cross_shooter
; ----------------------------------------------------------------------------
L_B6A6: jmp     L_B6AE                          ; B6A6

; ----------------------------------------------------------------------------
L_B6A9: lda     #$09                            ; B6A9
        jsr     L_B2B4                          ; B6AB
L_B6AE: rts                                     ; B6AE

; ----------------------------------------------------------------------------
L_B6AF: jmp     L_B6E0                          ; B6AF

; ----------------------------------------------------------------------------
L_B6B2: lda     #$80                            ; B6B2
        sta     $42                             ; B6B4
        lda     #$80                            ; B6B6
        sta     $43                             ; B6B8
        lda     Global_FrameCounter             ; B6BA
        and     #$1F                            ; B6BC
        bne     L_B6E0                          ; B6BE
        jsr     LC12F                           ; B6C0
        beq     L_B6E0                          ; B6C3
        lda     #$50                            ; B6C5
        sta     ObjectTable + Obj::Type,x       ; B6C7
        lda     Global_FrameCounter             ; B6CA
        and     #$20                            ; B6CC
        sta     ObjectTable + Obj::Scratch0,x   ; B6CE
        lda     LoadedObj + Obj::Position_Y_Lo  ; B6D1
        sec                                     ; B6D3
        sbc     #$40                            ; B6D4
        sta     ObjectTable + Obj::Position_Y_Lo,x ; B6D6
        lda     LoadedObj + Obj::Position_Y_Hi  ; B6D9
        sbc     #$00                            ; B6DB
        sta     ObjectTable + Obj::Position_Y_Hi,x ; B6DD
L_B6E0: lda     #$10                            ; B6E0
        sta     $40                             ; B6E2
        lda     #$10                            ; B6E4
        sta     $41                             ; B6E6
        jsr     LC0FF                           ; B6E8
        beq     L_B6F0                          ; B6EB
        jmp     LC114                           ; B6ED

; ----------------------------------------------------------------------------
L_B6F0: lda     #$09                            ; B6F0
        jsr     L_B2C5                          ; B6F2
        lda     #$01                            ; B6F5
        sta     $44                             ; B6F7
        lda     Global_FrameCounter             ; B6F9
        lsr     a                               ; B6FB
        lsr     a                               ; B6FC
        lsr     a                               ; B6FD
        lsr     a                               ; B6FE
        and     #$03                            ; B6FF
        tax                                     ; B701
        lda     L_B708,x                        ; B702
        jmp     LC063                           ; B705

; ----------------------------------------------------------------------------
L_B708: .byte   $34,$32,$33,$32                 ; B708
.endmacro

