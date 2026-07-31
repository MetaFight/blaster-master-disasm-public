.macro MAC_L_8DC3
; ----------------------------------------------------------------------------
L_8DC3: .byte   $00,$00,$01,$01,$01,$00,$FF,$FF ; 8DC3
        .byte   $FF                             ; 8DCB
L_8DCC: .byte   $00,$FF,$FF,$00,$01,$01,$01,$00 ; 8DCC
        .byte   $FF                             ; 8DD4
.endmacro

.macro MAC_L_A280
; ----------------------------------------------------------------------------
L_A280: clc                                     ; A280
        lda     PlayerSlot + Obj::Health        ; A281
        adc     #$10                            ; A284
        bcc     L_A28A                          ; A286
        lda     #$FF                            ; A288
L_A28A: sta     PlayerSlot + Obj::Health        ; A28A
        jmp     LD81C                           ; A28D

; ----------------------------------------------------------------------------
L_A290: clc                                     ; A290
        lda     $92                             ; A291
        adc     #$10                            ; A293
        bcc     L_A299                          ; A295
        lda     #$FF                            ; A297
L_A299: sta     $92                             ; A299
        jmp     LD81C                           ; A29B

.endmacro

