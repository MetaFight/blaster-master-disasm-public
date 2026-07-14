.macro MAC_L_C7BE
L_C7BE: inc     $01                             ; C7BE
        inc     $03                             ; C7C0
        inc     $05                             ; C7C2
        jmp     L_C7A8                          ; C7C4

; ----------------------------------------------------------------------------
L_C7C7: tya                                     ; C7C7
        eor     #$01                            ; C7C8
        tay                                     ; C7CA
        lda     (L0000),y                       ; C7CB
        sta     $14                             ; C7CD
        lda     ($02),y                         ; C7CF
        sta     $49                             ; C7D1
        lda     ($04),y                         ; C7D3
        sta     $4B                             ; C7D5
        rts                                     ; C7D7

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_E01B
L_E01B: lda     $47                             ; E01B
        lsr     a                               ; E01D
        lsr     a                               ; E01E
        lsr     a                               ; E01F
        lsr     a                               ; E020
        lsr     a                               ; E021
        tax                                     ; E022
        lda     LE027,x                         ; E023
        rts                                     ; E026

; ----------------------------------------------------------------------------
LE027:  .byte   $01,$41,$40,$3F,$FF,$EE,$EF,$F0 ; E027
; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_E287
L_E287: lda     $06F3                           ; E287
        cmp     #$02                            ; E28A
        bne     L_E2C0                          ; E28C
        lda     $F7                             ; E28E
        cmp     $D1                             ; E290
        beq     L_E2A0                          ; E292
        jsr     L_E2AB                          ; E294
        lda     $F7                             ; E297
        sta     $D1                             ; E299
        lda     #$01                            ; E29B
        sta     $D0                             ; E29D
        rts                                     ; E29F

; ----------------------------------------------------------------------------
L_E2A0: inc     $D0                             ; E2A0
        bne     L_E2A7                          ; E2A2
        jsr     L_E2AB                          ; E2A4
L_E2A7: jsr     L_E308                          ; E2A7
        rts                                     ; E2AA

; ----------------------------------------------------------------------------
L_E2AB: ldy     $CD                             ; E2AB
        lda     $D1                             ; E2AD
        sta     ($CE),y                         ; E2AF
        iny                                     ; E2B1
        lda     $D0                             ; E2B2
        sta     ($CE),y                         ; E2B4
        iny                                     ; E2B6
        bne     L_E2BE                          ; E2B7
        lda     #$FF                            ; E2B9
        sta     $06F3                           ; E2BB
L_E2BE: sty     $CD                             ; E2BE
L_E2C0: rts                                     ; E2C0

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_EA56
L_EA56: tya                                     ; EA56
        clc                                     ; EA57
        adc     L007A                           ; EA58
        sta     L007A                           ; EA5A
        bcc     L_EA60                          ; EA5C
        inc     $7B                             ; EA5E
L_EA60: jmp     (L007A)                         ; EA60

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_EA6F
L_EA6F: ldx     #$09                            ; EA6F
        lda     #$00                            ; EA71
L_EA73: sta     $02,x                           ; EA73
        dex                                     ; EA75
        bpl     L_EA73                          ; EA76
        inc     $07                             ; EA78
        lda     #$10                            ; EA7A
        sta     $0C                             ; EA7C
L_EA7E: lsr     $01                             ; EA7E
        ror     L0000                           ; EA80
        bcc     L_EA8B                          ; EA82
        ldx     #$02                            ; EA84
        ldy     #$07                            ; EA86
        jsr     L_EA97                          ; EA88
L_EA8B: ldx     #$07                            ; EA8B
        ldy     #$07                            ; EA8D
        jsr     L_EA97                          ; EA8F
        dec     $0C                             ; EA92
        bne     L_EA7E                          ; EA94
        rts                                     ; EA96

; ----------------------------------------------------------------------------
L_EA97: clc                                     ; EA97
        lda     #$05                            ; EA98
        sta     $0D                             ; EA9A
L_EA9C: lda     L0000,x                         ; EA9C
        adc     L0000,y                         ; EA9E
        cmp     #$0A                            ; EAA1
        bcc     L_EAA8                          ; EAA3
        sec                                     ; EAA5
        sbc     #$0A                            ; EAA6
L_EAA8: sta     L0000,x                         ; EAA8
        inx                                     ; EAAA
        iny                                     ; EAAB
        dec     $0D                             ; EAAC
        bne     L_EA9C                          ; EAAE
        rts                                     ; EAB0

; ----------------------------------------------------------------------------
        ldx     #$04                            ; EAB1
L_EAB3: lda     #$00                            ; EAB3
        sta     $03,x                           ; EAB5
        lda     L0000                           ; EAB7
L_EAB9: sec                                     ; EAB9
        sbc     #$10                            ; EABA
        tay                                     ; EABC
        lda     $01                             ; EABD
        sbc     #$27                            ; EABF
        bcc     L_EACB                          ; EAC1
        sta     $01                             ; EAC3
        tya                                     ; EAC5
        inc     $03,x                           ; EAC6
        jmp     L_EAB9                          ; EAC8

; ----------------------------------------------------------------------------
L_EACB: lda     $01                             ; EACB
        sta     $02                             ; EACD
        lda     L0000                           ; EACF
        asl     a                               ; EAD1
        rol     $01                             ; EAD2
        asl     a                               ; EAD4
        rol     $01                             ; EAD5
        clc                                     ; EAD7
        adc     L0000                           ; EAD8
        sta     L0000                           ; EADA
        lda     $01                             ; EADC
        adc     $02                             ; EADE
        asl     L0000                           ; EAE0
        rol     a                               ; EAE2
        sta     $01                             ; EAE3
        dex                                     ; EAE5
        bpl     L_EAB3                          ; EAE6
        rts                                     ; EAE8

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_EB64
L_EB64: pha                                     ; EB64
        lda     #$31                            ; EB65
        jsr     L_EA3A                          ; EB67
        pla                                     ; EB6A
        jsr     L_EB51                          ; EB6B
        jmp     (L007A)                         ; EB6E

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_F465
L_F465: lda     #$00                            ; F465
        sta     $01                             ; F467
        lda     LFFF3                           ; F469
        bpl     L_F4BC                          ; F46C
        jsr     L_EA03                          ; F46E
        lda     #$07                            ; F471
        sta     $D5                             ; F473
        sta     $D4                             ; F475
        lda     LF523                           ; F477
        sta     L007A                           ; F47A
        lda     LF524                           ; F47C
        sta     $7B                             ; F47F
        ldy     #$00                            ; F481
        lda     #$08                            ; F483
        sta     $C7                             ; F485
        lda     #$0A                            ; F487
        sta     $C8                             ; F489
        jsr     L_E823                          ; F48B
        lda     #$08                            ; F48E
        sta     $C7                             ; F490
        lda     #$0C                            ; F492
        sta     $C8                             ; F494
        jsr     L_E823                          ; F496
        lda     #$08                            ; F499
        sta     $C7                             ; F49B
        lda     #$0E                            ; F49D
        sta     $C8                             ; F49F
        jsr     L_E823                          ; F4A1
        jsr     L_F1CA                          ; F4A4
        jsr     L_F50A                          ; F4A7
        jsr     L_CE0F                          ; F4AA
L_F4AD: jsr     WaitNMI                         ; F4AD
        jsr     ScreenFade_Step                 ; F4B0
        jsr     L_F4C5                          ; F4B3
        lda     $B6                             ; F4B6
        cmp     #$09                            ; F4B8
        bcc     L_F4AD                          ; F4BA
L_F4BC: lda     $01                             ; F4BC
        eor     #$08                            ; F4BE
        and     #$0F                            ; F4C0
        sta     $14                             ; F4C2
        rts                                     ; F4C4

; ----------------------------------------------------------------------------
L_F4C5: lda     #$70                            ; F4C5
        sta     $3E                             ; F4C7
        lda     #$97                            ; F4C9
        sta     $3F                             ; F4CB
        lda     L0000                           ; F4CD
        sta     $44                             ; F4CF
        lda     $01                             ; F4D1
        clc                                     ; F4D3
        adc     #$01                            ; F4D4
        jsr     L_F14E                          ; F4D6
        jsr     L_EC73                          ; F4D9
        lda     $B6                             ; F4DC
        bne     L_F4EA                          ; F4DE
        lda     $F5                             ; F4E0
        bit     LE6E5                           ; F4E2
        beq     L_F4EA                          ; F4E5
        jsr     L_CE27                          ; F4E7
L_F4EA: lda     $F5                             ; F4EA
        bit     LE6E4                           ; F4EC
        bne     L_F4F7                          ; F4EF
        bit     LE6E3                           ; F4F1
        bne     L_F503                          ; F4F4
        rts                                     ; F4F6

; ----------------------------------------------------------------------------
L_F4F7: lda     $01                             ; F4F7
        clc                                     ; F4F9
        adc     #$01                            ; F4FA
        cmp     #$10                            ; F4FC
        bcs     L_F509                          ; F4FE
        sta     $01                             ; F500
        rts                                     ; F502

; ----------------------------------------------------------------------------
L_F503: lda     $01                             ; F503
        beq     L_F509                          ; F505
        dec     $01                             ; F507
L_F509: rts                                     ; F509

; ----------------------------------------------------------------------------
L_F50A: jsr     L_E6FA                          ; F50A
        jsr     L_F9CA                          ; F50D
        ldx     #$03                            ; F510
L_F512: lda     LF51F,x                         ; F512
        sta     $0650,x                         ; F515
        sta     $0660,x                         ; F518
        dex                                     ; F51B
        bpl     L_F512                          ; F51C
        rts                                     ; F51E

; ----------------------------------------------------------------------------
LF51F:  .byte   $0F,$30,$0F,$0F                 ; F51F
LF523:  .byte   $25                             ; F523
LF524:  .byte   $F5,$53,$45,$4C,$45,$43,$54,$20 ; F524
        .byte   $53,$54,$41,$52,$54,$20,$41,$52 ; F52C
        .byte   $45,$41,$00,$41,$4E,$44,$00,$50 ; F534
        .byte   $52,$45,$53,$53,$20,$53,$54,$41 ; F53C
        .byte   $52,$54,$00                     ; F544
; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_F5AE
L_F5AE: lda     LF5CF                           ; F5AE
        sta     L007A                           ; F5B1
        lda     LF5D0                           ; F5B3
        sta     $7B                             ; F5B6
        ldy     #$00                            ; F5B8
        lda     #$02                            ; F5BA
        sta     $C7                             ; F5BC
        lda     #$1B                            ; F5BE
        sta     $C8                             ; F5C0
        jsr     L_E823                          ; F5C2
        lda     $03D9                           ; F5C5
        jsr     L_E840                          ; F5C8
        jsr     L_F1CA                          ; F5CB
        rts                                     ; F5CE

; ----------------------------------------------------------------------------
LF5CF:  .byte   $D1                             ; F5CF
LF5D0:  .byte   $F5,$43,$52,$45,$44,$49,$54,$20 ; F5D0
        .byte   $00                             ; F5D8
; ----------------------------------------------------------------------------
.endmacro

