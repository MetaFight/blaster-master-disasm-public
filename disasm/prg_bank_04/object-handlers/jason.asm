.macro MAC_object_handlers__jason_1_of_2
; ----------------------------------------------------------------------------
L_8A69: nop                                     ; 8A69
        nop                                     ; 8A6A
        nop                                     ; 8A6B
L_8A6C: lda     #$18                            ; 8A6C
        sta     $40                             ; 8A6E
        lda     #$10                            ; 8A70
        sta     $41                             ; 8A72
        jsr     LC0FF                           ; 8A74
        lda     #$00                            ; 8A77
        sta     $44                             ; 8A79
        jsr     L_93BD                          ; 8A7B
        inc     LoadedObj + Obj::Scratch1       ; 8A7E
        bne     L_8A84                          ; 8A80
        dec     LoadedObj + Obj::Scratch1       ; 8A82
L_8A84: lda     LoadedObj + Obj::Scratch1       ; 8A84
        cmp     #$A0                            ; 8A86
        bne     L_8A8F                          ; 8A88
        lda     #$02                            ; 8A8A
        jsr     LC11A                           ; 8A8C
L_8A8F: lda     LoadedObj + Obj::Scratch1       ; 8A8F
        lsr     a                               ; 8A91
        lsr     a                               ; 8A92
        tax                                     ; 8A93
        cpx     #$18                            ; 8A94
        bcc     L_8A9A                          ; 8A96
        ldx     #$17                            ; 8A98
L_8A9A: lda     L_8AA3,x                        ; 8A9A
        clc                                     ; 8A9D
        adc     #$1B                            ; 8A9E
        jmp     LC063                           ; 8AA0

; ----------------------------------------------------------------------------
L_8AA3: .byte   $06,$07,$08,$09,$06,$07,$08,$09 ; 8AA3
        .byte   $06,$07,$08,$09,$06,$06,$06,$06 ; 8AAB
        .byte   $06,$01,$02,$02,$03,$03,$04,$05 ; 8AB3
; ----------------------------------------------------------------------------
L_8ABB: nop                                     ; 8ABB
        nop                                     ; 8ABC
        nop                                     ; 8ABD
L_8ABE: lda     #$18                            ; 8ABE
        sta     $40                             ; 8AC0
        lda     #$10                            ; 8AC2
        sta     $41                             ; 8AC4
        jsr     LC0FF                           ; 8AC6
        lda     #$01                            ; 8AC9
        sta     $44                             ; 8ACB
        inc     LoadedObj + Obj::Scratch1       ; 8ACD
        bne     L_8AD3                          ; 8ACF
        dec     LoadedObj + Obj::Scratch1       ; 8AD1
L_8AD3: lda     LoadedObj + Obj::Scratch1       ; 8AD3
        cmp     #$A0                            ; 8AD5
        bne     L_8ADE                          ; 8AD7
        lda     #$02                            ; 8AD9
        jsr     LC11A                           ; 8ADB
L_8ADE: lda     LoadedObj + Obj::Scratch1       ; 8ADE
        cmp     #$20                            ; 8AE0
        bcs     L_8AF0                          ; 8AE2
        lsr     a                               ; 8AE4
        lsr     a                               ; 8AE5
        and     #$FE                            ; 8AE6
        clc                                     ; 8AE8
        adc     #$D0                            ; 8AE9
        sta     $45                             ; 8AEB
        jsr     LC192                           ; 8AED
L_8AF0: rts                                     ; 8AF0

.endmacro

.macro MAC_object_handlers__jason_2_of_2
; ----------------------------------------------------------------------------
L_8B7A: .byte   $50,$58,$50,$58                 ; 8B7A
; ----------------------------------------------------------------------------
L_8B7E: lda     L_8B8A,x                        ; 8B7E
        sta     LoadedObj + Obj::Scratch1       ; 8B81
        lda     #$84                            ; 8B83
        sta     LoadedObj + Obj::Type           ; 8B85
        jmp     L_8C16                          ; 8B87

; ----------------------------------------------------------------------------
L_8B8A: .byte   $20,$18,$10,$18                 ; 8B8A
L8B8E:  .byte   $00,$10,$00,$F0                 ; 8B8E
L8B92:  .byte   $F0,$00,$10,$00                 ; 8B92
; ----------------------------------------------------------------------------
L_8B96: jmp     L_8BCF                          ; 8B96

; ----------------------------------------------------------------------------
L_8B99: lda     #$C0                            ; 8B99
        sta     $42                             ; 8B9B
        lda     #$80                            ; 8B9D
        sta     $43                             ; 8B9F
        jsr     LC01E                           ; 8BA1
        dec     LoadedObj + Obj::Scratch1       ; 8BA4
        bne     L_8BCF                          ; 8BA6
        inc     LoadedObj + Obj::Type           ; 8BA8
        lda     LoadedObj + Obj::Facing         ; 8BAA
        asl     a                               ; 8BAC
        tax                                     ; 8BAD
        lda     LoadedObj + Obj::Position_X_Lo  ; 8BAE
        clc                                     ; 8BB0
        adc     L_8BD2,x                        ; 8BB1
        sta     LoadedObj + Obj::Position_X_Lo  ; 8BB4
        lda     LoadedObj + Obj::Position_X_Hi  ; 8BB6
        adc     L8BD3,x                         ; 8BB8
        sta     LoadedObj + Obj::Position_X_Hi  ; 8BBB
        lda     LoadedObj + Obj::Position_Y_Lo  ; 8BBD
        clc                                     ; 8BBF
        adc     L8BDA,x                         ; 8BC0
        sta     LoadedObj + Obj::Position_Y_Lo  ; 8BC3
        lda     LoadedObj + Obj::Position_Y_Hi  ; 8BC5
        adc     L8BDB,x                         ; 8BC7
        sta     LoadedObj + Obj::Position_Y_Hi  ; 8BCA
        jmp     LC1EC                           ; 8BCC

; ----------------------------------------------------------------------------
L_8BCF: jmp     L_8C16                          ; 8BCF

; ----------------------------------------------------------------------------
L_8BD2: .byte   $00                             ; 8BD2
L8BD3:  .byte   $00,$80,$02,$00,$00,$80,$FD     ; 8BD3
L8BDA:  .byte   $00                             ; 8BDA
L8BDB:  .byte   $FE,$00,$00,$00,$02,$00,$00     ; 8BDB
; ----------------------------------------------------------------------------
L_8BE2: rts                                     ; 8BE2

; ----------------------------------------------------------------------------
L_8BE3: nop                                     ; 8BE3
        nop                                     ; 8BE4
L_8BE5: jsr     LC1DD                           ; 8BE5
        bne     L_8BF6                          ; 8BE8
        inc     LoadedObj + Obj::Type           ; 8BEA
        jsr     LC1EC                           ; 8BEC
        ldx     LoadedObj + Obj::Facing         ; 8BEF
        lda     L_8BF9,x                        ; 8BF1
        sta     LoadedObj + Obj::Scratch1       ; 8BF4
L_8BF6: jmp     LC1DA                           ; 8BF6

; ----------------------------------------------------------------------------
L_8BF9: .byte   $10,$18,$20,$18                 ; 8BF9
; ----------------------------------------------------------------------------
L_8BFD: jmp     L_8C16                          ; 8BFD

; ----------------------------------------------------------------------------
L_8C00: lda     #$C0                            ; 8C00
        sta     $42                             ; 8C02
        lda     #$80                            ; 8C04
        sta     $43                             ; 8C06
        jsr     LC01E                           ; 8C08
        dec     LoadedObj + Obj::Scratch1       ; 8C0B
        bne     L_8C16                          ; 8C0D
        lda     #$03                            ; 8C0F
        sta     LoadedObj + Obj::Type           ; 8C11
        jsr     LC1D1                           ; 8C13
L_8C16: jsr     LC15F                           ; 8C16
        lda     #$18                            ; 8C19
        sta     $40                             ; 8C1B
        lda     #$10                            ; 8C1D
        sta     $41                             ; 8C1F
        jsr     LC0FF                           ; 8C21
        beq     L_8C27                          ; 8C24
        rts                                     ; 8C26

; ----------------------------------------------------------------------------
L_8C27: lda     LoadedObj + Obj::Facing         ; 8C27
        lsr     a                               ; 8C29
        bcc     L_8C32                          ; 8C2A
        jsr     L_94A9                          ; 8C2C
        jmp     L_8E15                          ; 8C2F

; ----------------------------------------------------------------------------
L_8C32: jsr     L_9522                          ; 8C32
        jmp     L_8E15                          ; 8C35

; ----------------------------------------------------------------------------
L_8C38: jmp     L_8D98                          ; 8C38

.endmacro

