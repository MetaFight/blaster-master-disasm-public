.macro MAC_bank_tail
L_FFD8: .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FFD8
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FFE0
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FFE8
        .byte   $FF,$FF,$FF                     ; FFF0
L_FFF3: .byte   $FF                             ; FFF3
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

