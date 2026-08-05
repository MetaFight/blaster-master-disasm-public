.macro MAC_L_FFD8
L_FFD1: .byte   $81,$0F,$80,$9F,$C7,$1F,$00     ; FFD1
L_FFD8: .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FFD8
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FFE0
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FFE8
        .byte   $FF,$FF,$FF                     ; FFF0
LFFF3:  .byte   $FF                             ; FFF3
; ----------------------------------------------------------------------------
L_FFF4: inc     L_FFF4                          ; FFF4
        jmp     L_F23B                          ; FFF7

; ----------------------------------------------------------------------------
L_FFFA: .addr   NMI                             ; FFFA
        .addr   L_FFF4                          ; FFFC
        .addr   L_EB97                          ; FFFE

; End of "BANK07" segment
; ----------------------------------------------------------------------------
.code

.endmacro

