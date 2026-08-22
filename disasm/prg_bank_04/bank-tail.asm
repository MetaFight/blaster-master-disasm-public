.macro MAC_L_BF92
; ----------------------------------------------------------------------------
L_BF8A: .byte   $01,$02,$04,$08,$10,$20,$40,$80 ; BF8A
L_BF92: .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF92
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF9A
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFA2
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFAA
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFB2
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFBA
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFC2
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFCA
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFD2
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFDA
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFE2
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFEA
        .byte   $FF,$FF                         ; BFF2
L_BFF4: .byte   $EE,$F4,$FF,$FF,$FF,$FF,$00,$00 ; BFF4
        .byte   $F4,$FF,$FF                     ; BFFC
        .byte   $FF                             ; BFFF

; End of "BANK04" segment
; ----------------------------------------------------------------------------
.code

.endmacro

