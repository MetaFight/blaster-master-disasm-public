.macro MAC_L_FFD8
L_FFD8: .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FFD8
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FFE0
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FFE8
        .byte   $FF,$FF,$FF                     ; FFF0
LFFF3:  .byte   $FF                             ; FFF3
; ----------------------------------------------------------------------------
Reset:  inc     Reset                           ; FFF4
        jmp     L_F23B                          ; FFF7

; ----------------------------------------------------------------------------
LFFFA:  .addr   L_EB7E                          ; FFFA
        .addr   Reset                           ; FFFC
        .addr   IRQ                             ; FFFE

; End of "BANK07" segment
; ----------------------------------------------------------------------------
.code

.endmacro

