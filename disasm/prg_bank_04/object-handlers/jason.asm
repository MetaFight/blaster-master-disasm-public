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

; Interrupted by 1 macro:
;   MAC_object_handlers___ungrouped

.macro MAC_object_handlers__jason_2_of_2
; ----------------------------------------------------------------------------
L_8B29: jsr     LC1CE                           ; 8B29
        ldx     LoadedObj + Obj::Facing         ; 8B2C
        lda     L8B8E,x                         ; 8B2E
        sta     LoadedObj + Obj::Velocity_X     ; 8B31
L_8B33: lda     L8B92,x                         ; 8B33
        sta     LoadedObj + Obj::Velocity_Y     ; 8B36
        lda     LoadedObj + Obj::Position_X_Lo  ; 8B38
        cmp     $1C                             ; 8B3A
        lda     LoadedObj + Obj::Position_X_Hi  ; 8B3C
        sbc     $1D                             ; 8B3E
        and     #$7F                            ; 8B40
        cmp     #$03                            ; 8B42
        bcc     L_8B7E                          ; 8B44
        cmp     #$0D                            ; 8B46
        bcs     L_8B7E                          ; 8B48
        lda     LoadedObj + Obj::Position_Y_Lo  ; 8B4A
        cmp     $1E                             ; 8B4C
        lda     LoadedObj + Obj::Position_Y_Hi  ; 8B4E
        sbc     $1F                             ; 8B50
        and     #$7F                            ; 8B52
        cmp     #$03                            ; 8B54
        bcc     L_8B7E                          ; 8B56
        cmp     #$0D                            ; 8B58
        bcs     L_8B7E                          ; 8B5A
        lda     $1C                             ; 8B5C
        clc                                     ; 8B5E
        adc     #$20                            ; 8B5F
        and     #$C0                            ; 8B61
        sta     $1C                             ; 8B63
        lda     $1E                             ; 8B65
        clc                                     ; 8B67
        adc     #$20                            ; 8B68
        and     #$C0                            ; 8B6A
        sta     $1E                             ; 8B6C
        lda     L_8B7A,x                        ; 8B6E
        sta     LoadedObj + Obj::Scratch1       ; 8B71
        lda     #$86                            ; 8B73
        sta     LoadedObj + Obj::Type           ; 8B75
        jmp     L_8C16                          ; 8B77

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

; ----------------------------------------------------------------------------
L_8C3B: lda     #$C0                            ; 8C3B
        sta     $42                             ; 8C3D
        lda     #$80                            ; 8C3F
        sta     $43                             ; 8C41
        jsr     LC11D                           ; 8C43
        lda     LoadedObj + Obj::Health         ; 8C46
        bne     L_8C67                          ; 8C48
        lda     LoadedObj + Obj::IFrameCounter  ; 8C4A
        bne     L_8C64                          ; 8C4C
        lda     #$04                            ; 8C4E
        sta     LoadedObj + Obj::Type           ; 8C50
        lda     #$00                            ; 8C52
        sta     LoadedObj + Obj::Scratch1       ; 8C54
        lda     $C5                             ; 8C56
        ora     #$08                            ; 8C58
        sta     $C5                             ; 8C5A
        jsr     LC0C0                           ; 8C5C
        lda     #$51                            ; 8C5F
        jsr     LC216                           ; 8C61
L_8C64: jmp     L_8D98                          ; 8C64

; ----------------------------------------------------------------------------
L_8C67: lda     LoadedObj + Obj::IFrameCounter  ; 8C67
        bne     L_8C9F                          ; 8C69
        jsr     LC138                           ; 8C6B
        jsr     LC09F                           ; 8C6E
        bne     L_8C9F                          ; 8C71
        txa                                     ; 8C73
        bne     L_8C8B                          ; 8C74
        lda     #$05                            ; 8C76
        sta     LoadedObj + Obj::Type           ; 8C78
        lda     #$00                            ; 8C7A
        sta     LoadedObj + Obj::Scratch1       ; 8C7C
        sta     $E0                             ; 8C7E
        lda     #$49                            ; 8C80
        jsr     LC216                           ; 8C82
        jsr     LC0C0                           ; 8C85
        jmp     L_8D98                          ; 8C88

; ----------------------------------------------------------------------------
L_8C8B: lda     #$20                            ; 8C8B
        sta     LoadedObj + Obj::IFrameCounter  ; 8C8D
        lda     #$1E                            ; 8C8F
        jsr     LC216                           ; 8C91
        lda     LoadedObj + Obj::Health         ; 8C94
        sec                                     ; 8C96
        sbc     #$20                            ; 8C97
        bcs     L_8C9D                          ; 8C99
        lda     #$00                            ; 8C9B
L_8C9D: sta     LoadedObj + Obj::Health         ; 8C9D
L_8C9F: jsr     LC138                           ; 8C9F
        and     #$38                            ; 8CA2
        sta     $45                             ; 8CA4
        jsr     LC132                           ; 8CA6
        jsr     LC138                           ; 8CA9
        jsr     LC0A8                           ; 8CAC
        bne     L_8CD4                          ; 8CAF
        ldx     $79                             ; 8CB1
L_8CB3: lda     L_8DAD,x                        ; 8CB3
        clc                                     ; 8CB6
        adc     LoadedObj + Obj::Velocity_X     ; 8CB7
        sta     LoadedObj + Obj::Velocity_X     ; 8CB9
        lda     L_8DB6,x                        ; 8CBB
        clc                                     ; 8CBE
        adc     LoadedObj + Obj::Velocity_Y     ; 8CBF
        sta     LoadedObj + Obj::Velocity_Y     ; 8CC1
        lda     #$20                            ; 8CC3
        ldx     #$4C                            ; 8CC5
        jsr     LC14D                           ; 8CC7
        lda     #$20                            ; 8CCA
        ldx     #$4D                            ; 8CCC
        jsr     LC14D                           ; 8CCE
        jmp     L_8CE0                          ; 8CD1

; ----------------------------------------------------------------------------
L_8CD4: ldx     $79                             ; 8CD4
        lda     L_8D9B,x                        ; 8CD6
        sta     LoadedObj + Obj::Velocity_X     ; 8CD9
        lda     L_8DA4,x                        ; 8CDB
        sta     LoadedObj + Obj::Velocity_Y     ; 8CDE
L_8CE0: jsr     LC165                           ; 8CE0
        beq     L_8D2B                          ; 8CE3
        lda     $C5                             ; 8CE5
        and     #$02                            ; 8CE7
        bne     L_8D27                          ; 8CE9
        lda     LoadedObj + Obj::Velocity_X     ; 8CEB
        beq     L_8D2B                          ; 8CED
        lda     LoadedObj + Obj::Position_Y_Hi  ; 8CEF
        lsr     a                               ; 8CF1
        ror     a                               ; 8CF2
        eor     LoadedObj + Obj::Position_Y_Lo  ; 8CF3
        bmi     L_8D27                          ; 8CF5
        ldx     LoadedObj + Obj::TileIndex      ; 8CF7
        lda     LoadedObj + Obj::Velocity_X     ; 8CF9
        beq     L_8D2B                          ; 8CFB
        bmi     L_8D01                          ; 8CFD
        inx                                     ; 8CFF
        inx                                     ; 8D00
L_8D01: dex                                     ; 8D01
        lda     LevelTileData,x                 ; 8D02
        and     #$08                            ; 8D05
        beq     L_8D27                          ; 8D07
        lda     #$03                            ; 8D09
        bit     LoadedObj + Obj::Velocity_X     ; 8D0B
        bmi     L_8D11                          ; 8D0D
        lda     #$01                            ; 8D0F
L_8D11: sta     LoadedObj + Obj::Facing         ; 8D11
        lda     LoadedObj + Obj::Position_Y_Lo  ; 8D13
        bpl     L_8D20                          ; 8D15
        inc     LoadedObj + Obj::Position_Y_Hi  ; 8D17
        lda     LoadedObj + Obj::TileIndex      ; 8D19
        clc                                     ; 8D1B
        adc     #$11                            ; 8D1C
        sta     LoadedObj + Obj::TileIndex      ; 8D1E
L_8D20: lda     #$00                            ; 8D20
        sta     LoadedObj + Obj::Position_Y_Lo  ; 8D22
        jmp     L_8B29                          ; 8D24

; ----------------------------------------------------------------------------
L_8D27: lda     #$00                            ; 8D27
        sta     LoadedObj + Obj::Velocity_X     ; 8D29
L_8D2B: jsr     LC03F                           ; 8D2B
        jsr     LC018                           ; 8D2E
        beq     L_8D76                          ; 8D31
        lda     $C5                             ; 8D33
        and     #$02                            ; 8D35
        bne     L_8D72                          ; 8D37
        lda     LoadedObj + Obj::Position_X_Hi  ; 8D39
        lsr     a                               ; 8D3B
        ror     a                               ; 8D3C
        eor     LoadedObj + Obj::Position_X_Lo  ; 8D3D
        bmi     L_8D72                          ; 8D3F
        lda     LoadedObj + Obj::Velocity_Y     ; 8D41
        beq     L_8D76                          ; 8D43
        lda     LoadedObj + Obj::TileIndex      ; 8D45
        sec                                     ; 8D47
        sbc     #$11                            ; 8D48
        bit     LoadedObj + Obj::Velocity_Y     ; 8D4A
        bmi     L_8D51                          ; 8D4C
        clc                                     ; 8D4E
        adc     #$22                            ; 8D4F
L_8D51: tax                                     ; 8D51
        lda     LevelTileData,x                 ; 8D52
        and     #$08                            ; 8D55
        beq     L_8D72                          ; 8D57
        lda     #$00                            ; 8D59
        bit     LoadedObj + Obj::Velocity_Y     ; 8D5B
        bmi     L_8D61                          ; 8D5D
        lda     #$02                            ; 8D5F
L_8D61: sta     LoadedObj + Obj::Facing         ; 8D61
        lda     LoadedObj + Obj::Position_X_Lo  ; 8D63
        bpl     L_8D6B                          ; 8D65
        inc     LoadedObj + Obj::Position_X_Hi  ; 8D67
        inc     LoadedObj + Obj::TileIndex      ; 8D69
L_8D6B: lda     #$00                            ; 8D6B
        sta     LoadedObj + Obj::Position_X_Lo  ; 8D6D
        jmp     L_8B29                          ; 8D6F

; ----------------------------------------------------------------------------
L_8D72: lda     #$00                            ; 8D72
        sta     LoadedObj + Obj::Velocity_Y     ; 8D74
L_8D76: lda     $F7                             ; 8D76
        bmi     L_8D81                          ; 8D78
        lda     $79                             ; 8D7A
        lsr     a                               ; 8D7C
        bcc     L_8D81                          ; 8D7D
        sta     LoadedObj + Obj::Facing         ; 8D7F
L_8D81: jsr     L_8E5B                          ; 8D81
        lda     $45                             ; 8D84
        cmp     #$08                            ; 8D86
        beq     L_8D98                          ; 8D88
        jsr     LC138                           ; 8D8A
        and     #$38                            ; 8D8D
        cmp     #$08                            ; 8D8F
        bne     L_8D98                          ; 8D91
        lda     #$01                            ; 8D93
        jsr     LC11A                           ; 8D95
L_8D98: jmp     L_8DBF                          ; 8D98

.endmacro

