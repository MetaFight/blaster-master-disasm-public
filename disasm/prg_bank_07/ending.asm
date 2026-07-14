.macro MAC_L_F273
L_F273: lda     #$08                            ; F273
        jsr     L_E9A6                          ; F275
        jsr     L_CE0F                          ; F278
        jsr     L_F30F                          ; F27B
        lda     #$1F                            ; F27E
        sta     $D5                             ; F280
        sta     $D4                             ; F282
        lda     #$C0                            ; F284
        sta     $51                             ; F286
L_F288: jsr     WaitNMI                         ; F288
        jsr     L_F3C1                          ; F28B
        lda     $10                             ; F28E
        and     #$03                            ; F290
        bne     L_F297                          ; F292
        jsr     ScreenFade_Step                 ; F294
L_F297: dec     $51                             ; F297
        bne     L_F288                          ; F299
        lda     #$00                            ; F29B
        sta     $51                             ; F29D
L_F29F: jsr     WaitNMI                         ; F29F
        jsr     L_F3CF                          ; F2A2
        lda     $10                             ; F2A5
        and     #$03                            ; F2A7
        bne     L_F2B0                          ; F2A9
        lda     #$03                            ; F2AB
        jsr     Enqueue_Sound_Command           ; F2AD
L_F2B0: inc     $51                             ; F2B0
        bne     L_F29F                          ; F2B2
        lda     #$00                            ; F2B4
        sta     $FD                             ; F2B6
        sta     $FC                             ; F2B8
        lda     #$00                            ; F2BA
        sta     $51                             ; F2BC
L_F2BE: jsr     WaitNMI                         ; F2BE
        jsr     L_F33B                          ; F2C1
        inc     $51                             ; F2C4
        bne     L_F2BE                          ; F2C6
        lda     #$17                            ; F2C8
        jsr     Enqueue_Sound_Command           ; F2CA
        lda     #$00                            ; F2CD
        sta     $E0                             ; F2CF
        lda     #$00                            ; F2D1
        sta     $51                             ; F2D3
L_F2D5: jsr     WaitNMI                         ; F2D5
        lda     $51                             ; F2D8
        sta     $FD                             ; F2DA
        jsr     L_F412                          ; F2DC
        lda     $10                             ; F2DF
        lsr     a                               ; F2E1
        bcs     L_F2D5                          ; F2E2
        inc     $51                             ; F2E4
        bne     L_F2D5                          ; F2E6
L_F2E8: jsr     WaitNMI                         ; F2E8
        jsr     L_F412                          ; F2EB
        lda     $E0                             ; F2EE
        beq     L_F2E8                          ; F2F0
        lda     #$00                            ; F2F2
        sta     $E0                             ; F2F4
        jsr     L_CE27                          ; F2F6
L_F2F9: jsr     WaitNMI                         ; F2F9
        lda     $10                             ; F2FC
        and     #$03                            ; F2FE
        bne     L_F305                          ; F300
        jsr     ScreenFade_Step                 ; F302
L_F305: jsr     L_F412                          ; F305
        lda     $B6                             ; F308
        cmp     #$09                            ; F30A
        bcc     L_F2F9                          ; F30C
        rts                                     ; F30E

; ----------------------------------------------------------------------------
L_F30F: ldx     #$1F                            ; F30F
L_F311: lda     LF31B,x                         ; F311
        sta     $0650,x                         ; F314
        dex                                     ; F317
        bpl     L_F311                          ; F318
        rts                                     ; F31A

; ----------------------------------------------------------------------------
LF31B:  .byte   $0F,$30,$10,$00,$0F,$26,$16,$06 ; F31B
        .byte   $0F,$2C,$1B,$0C,$0F,$30,$15,$00 ; F323
        .byte   $0F,$3C,$2C,$1C,$0F,$2C,$1C,$0C ; F32B
        .byte   $0F,$0F,$0F,$0F,$0F,$2A,$1A,$0A ; F333
; ----------------------------------------------------------------------------
L_F33B: lda     $51                             ; F33B
        and     #$E7                            ; F33D
        cmp     #$80                            ; F33F
        bne     L_F358                          ; F341
        lda     $51                             ; F343
        and     #$18                            ; F345
        ora     #$07                            ; F347
        tay                                     ; F349
        ldx     #$07                            ; F34A
L_F34C: lda     LF359,y                         ; F34C
        sta     $0650,x                         ; F34F
        sta     $58,x                           ; F352
        dey                                     ; F354
        dex                                     ; F355
        bpl     L_F34C                          ; F356
L_F358: rts                                     ; F358

; ----------------------------------------------------------------------------
LF359:  .byte   $0F,$30,$10,$00,$0F,$27,$17,$07 ; F359
        .byte   $0F,$30,$20,$1B,$0F,$28,$18,$08 ; F361
        .byte   $0F,$30,$20,$1B,$0F,$29,$19,$09 ; F369
        .byte   $0F,$30,$21,$1B,$0F,$2A,$1A,$0A ; F371
; ----------------------------------------------------------------------------
L_F379: lda     #$00                            ; F379
        sta     $44                             ; F37B
        lda     #$D6                            ; F37D
        sta     $45                             ; F37F
        jsr     L_EDA4                          ; F381
        lda     $3F                             ; F384
        clc                                     ; F386
        adc     #$08                            ; F387
        sta     $3F                             ; F389
        lda     #$D7                            ; F38B
        sta     $45                             ; F38D
        jsr     L_EDA4                          ; F38F
        lda     $3F                             ; F392
        clc                                     ; F394
        adc     #$08                            ; F395
        sta     $3F                             ; F397
        lda     #$D8                            ; F399
        sta     $45                             ; F39B
        jsr     L_EDA4                          ; F39D
        rts                                     ; F3A0

; ----------------------------------------------------------------------------
L_F3A1: lda     #$22                            ; F3A1
        sta     $44                             ; F3A3
        lda     #$00                            ; F3A5
        sta     $45                             ; F3A7
        jsr     L_EDA4                          ; F3A9
        lda     $3F                             ; F3AC
        clc                                     ; F3AE
        adc     #$08                            ; F3AF
        sta     $3F                             ; F3B1
        jsr     L_EDA4                          ; F3B3
        lda     $3F                             ; F3B6
        clc                                     ; F3B8
        adc     #$08                            ; F3B9
        sta     $3F                             ; F3BB
        jsr     L_EDA4                          ; F3BD
        rts                                     ; F3C0

; ----------------------------------------------------------------------------
L_F3C1: lda     #$80                            ; F3C1
        sta     $3E                             ; F3C3
        lda     #$77                            ; F3C5
        sta     $3F                             ; F3C7
        jsr     L_F379                          ; F3C9
        jmp     L_EC73                          ; F3CC

; ----------------------------------------------------------------------------
L_F3CF: lda     #$80                            ; F3CF
        sta     $3E                             ; F3D1
        lda     $51                             ; F3D3
        cmp     #$20                            ; F3D5
        bcc     L_F3E4                          ; F3D7
        cmp     #$E0                            ; F3D9
        bcs     L_F3E4                          ; F3DB
        lda     $10                             ; F3DD
        and     #$03                            ; F3DF
        jmp     L_F3E8                          ; F3E1

; ----------------------------------------------------------------------------
L_F3E4: lda     $10                             ; F3E4
        and     #$01                            ; F3E6
L_F3E8: sta     $FC                             ; F3E8
        lda     #$77                            ; F3EA
        sec                                     ; F3EC
        sbc     $FC                             ; F3ED
        sta     $3F                             ; F3EF
        pha                                     ; F3F1
        clc                                     ; F3F2
        adc     #$18                            ; F3F3
        sta     $3F                             ; F3F5
        jsr     L_F3A1                          ; F3F7
        pla                                     ; F3FA
        sta     $3F                             ; F3FB
        lda     $51                             ; F3FD
        cmp     #$C0                            ; F3FF
        bcs     L_F411                          ; F401
        lsr     a                               ; F403
        lsr     a                               ; F404
        lsr     a                               ; F405
        clc                                     ; F406
        adc     $3F                             ; F407
        sta     $3F                             ; F409
        jsr     L_F379                          ; F40B
        jmp     L_EC73                          ; F40E

; ----------------------------------------------------------------------------
L_F411: rts                                     ; F411

; ----------------------------------------------------------------------------
L_F412: lda     #$9C                            ; F412
        sec                                     ; F414
        sbc     $FD                             ; F415
        sta     $3E                             ; F417
        bcs     L_F457                          ; F419
        lda     #$63                            ; F41B
        sta     $3F                             ; F41D
        lda     #$01                            ; F41F
        sta     $44                             ; F421
        lda     $10                             ; F423
        and     #$07                            ; F425
        bne     L_F42B                          ; F427
        inc     $04                             ; F429
L_F42B: lda     $04                             ; F42B
        cmp     #$03                            ; F42D
        bcc     L_F435                          ; F42F
        lda     #$00                            ; F431
        sta     $04                             ; F433
L_F435: ldx     $04                             ; F435
        lda     LF45A,x                         ; F437
        sta     $45                             ; F43A
        jsr     L_EDF5                          ; F43C
        lda     #$AB                            ; F43F
        sec                                     ; F441
        sbc     $FD                             ; F442
        sta     $3E                             ; F444
        bcs     L_F457                          ; F446
        lda     #$76                            ; F448
        sta     $3F                             ; F44A
        lda     #$03                            ; F44C
        sta     $44                             ; F44E
        lda     #$EA                            ; F450
        sta     $45                             ; F452
        jsr     L_EDF5                          ; F454
L_F457: jmp     L_EC73                          ; F457

; ----------------------------------------------------------------------------
LF45A:  .byte   $E0,$E2,$E4                     ; F45A
; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_F9D5
L_F9D5: lda     #$01                            ; F9D5
        sta     $52                             ; F9D7
        lda     #$17                            ; F9D9
        sta     $D5                             ; F9DB
        sta     $D4                             ; F9DD
        jsr     L_EA03                          ; F9DF
        jsr     L_FCE1                          ; F9E2
        lda     $FF                             ; F9E5
        ora     #$20                            ; F9E7
        sta     $FF                             ; F9E9
        sta     $2000                           ; F9EB
        lda     #$00                            ; F9EE
        sta     $C7                             ; F9F0
        sta     $C8                             ; F9F2
        jsr     L_FCBC                          ; F9F4
        jsr     L_E6E9                          ; F9F7
        jsr     L_FA07                          ; F9FA
        jsr     L_FA17                          ; F9FD
        jsr     L_FA52                          ; FA00
        jsr     L_FA60                          ; FA03
        rts                                     ; FA06

; ----------------------------------------------------------------------------
L_FA07: lda     #$3C                            ; FA07
L_FA09: pha                                     ; FA09
        jsr     L_FC42                          ; FA0A
        jsr     WaitNMI                         ; FA0D
        pla                                     ; FA10
        sec                                     ; FA11
        sbc     #$01                            ; FA12
        bne     L_FA09                          ; FA14
        rts                                     ; FA16

; ----------------------------------------------------------------------------
L_FA17: lda     LFCF9                           ; FA17
        sta     L007A                           ; FA1A
        lda     LFCF9+1                         ; FA1C
        sta     $7B                             ; FA1F
        ldy     #$00                            ; FA21
        lda     #$00                            ; FA23
        sta     $C8                             ; FA25
L_FA27: jsr     L_FBF8                          ; FA27
        jsr     L_FC15                          ; FA2A
        lda     $C8                             ; FA2D
        pha                                     ; FA2F
        clc                                     ; FA30
        adc     #$1D                            ; FA31
        cmp     #$1E                            ; FA33
        bcc     L_FA3A                          ; FA35
        sec                                     ; FA37
        sbc     #$1E                            ; FA38
L_FA3A: sta     $C8                             ; FA3A
        lda     #$0E                            ; FA3C
        sta     $C7                             ; FA3E
        jsr     L_FBD6                          ; FA40
        tax                                     ; FA43
        pla                                     ; FA44
        sta     $C8                             ; FA45
        cpx     #$FF                            ; FA47
        beq     L_FA51                          ; FA49
        jsr     L_FC15                          ; FA4B
        jmp     L_FA27                          ; FA4E

; ----------------------------------------------------------------------------
L_FA51: rts                                     ; FA51

; ----------------------------------------------------------------------------
L_FA52: jsr     L_FC15                          ; FA52
L_FA55: jsr     L_FBF8                          ; FA55
        jsr     L_FC15                          ; FA58
        lda     $E0                             ; FA5B
        beq     L_FA55                          ; FA5D
        rts                                     ; FA5F

; ----------------------------------------------------------------------------
L_FA60: jsr     L_FA7A                          ; FA60
        lda     #$00                            ; FA63
        sta     $FC                             ; FA65
        jsr     L_FAB9                          ; FA67
        jsr     L_FA8F                          ; FA6A
L_FA6D: jsr     L_FC42                          ; FA6D
        jsr     WaitNMI                         ; FA70
        lda     $F3                             ; FA73
        and     #$10                            ; FA75
        beq     L_FA6D                          ; FA77
        rts                                     ; FA79

; ----------------------------------------------------------------------------
L_FA7A: jsr     L_FC42                          ; FA7A
        jsr     WaitNMI                         ; FA7D
        ldx     #$0F                            ; FA80
        txa                                     ; FA82
L_FA83: sta     $58,x                           ; FA83
        dex                                     ; FA85
        bpl     L_FA83                          ; FA86
        jsr     L_FC42                          ; FA88
        jsr     WaitNMI                         ; FA8B
        rts                                     ; FA8E

; ----------------------------------------------------------------------------
L_FA8F: lda     #$50                            ; FA8F
        sta     $45                             ; FA91
L_FA93: lda     $45                             ; FA93
        pha                                     ; FA95
        jsr     L_FC42                          ; FA96
        jsr     WaitNMI                         ; FA99
        pla                                     ; FA9C
        sta     $45                             ; FA9D
        lda     $10                             ; FA9F
        and     #$03                            ; FAA1
        bne     L_FA93                          ; FAA3
        lda     $45                             ; FAA5
        sec                                     ; FAA7
        sbc     #$10                            ; FAA8
        sta     $45                             ; FAAA
        bmi     L_FAB8                          ; FAAC
        ldx     #$0F                            ; FAAE
L_FAB0: jsr     L_CEA3                          ; FAB0
        dex                                     ; FAB3
        bpl     L_FAB0                          ; FAB4
        bmi     L_FA93                          ; FAB6
L_FAB8: rts                                     ; FAB8

; ----------------------------------------------------------------------------
L_FAB9: lda     LFAF8                           ; FAB9
        sta     L007A                           ; FABC
        lda     LFAF8+1                         ; FABE
        sta     $7B                             ; FAC1
        ldy     #$00                            ; FAC3
L_FAC5: jsr     L_FC42                          ; FAC5
        ldy     #$00                            ; FAC8
        lda     (L007A),y                       ; FACA
        iny                                     ; FACC
        sta     $BF                             ; FACD
        lda     (L007A),y                       ; FACF
        beq     L_FAF5                          ; FAD1
        iny                                     ; FAD3
        sta     $C0                             ; FAD4
        jsr     L_F19B                          ; FAD6
L_FAD9: lda     (L007A),y                       ; FAD9
        iny                                     ; FADB
        cmp     #$FF                            ; FADC
        beq     L_FAE7                          ; FADE
        sta     $0300,x                         ; FAE0
        inx                                     ; FAE3
        jmp     L_FAD9                          ; FAE4

; ----------------------------------------------------------------------------
L_FAE7: stx     $19                             ; FAE7
        jsr     L_F1BC                          ; FAE9
        jsr     L_EB44                          ; FAEC
        jsr     WaitNMI                         ; FAEF
        jmp     L_FAC5                          ; FAF2

; ----------------------------------------------------------------------------
L_FAF5: jmp     WaitNMI                         ; FAF5

; ----------------------------------------------------------------------------
LFAF8:  .addr   LFAFA                           ; FAF8
; ----------------------------------------------------------------------------
LFAFA:  .byte   $D2,$20,$04,$00,$05,$00,$14,$00 ; FAFA
        .byte   $05,$00,$15,$FF,$12,$21,$60,$70 ; FB02
        .byte   $80,$90,$A0,$B0,$C0,$D0,$E0,$FF ; FB0A
        .byte   $32,$21,$61,$71,$81,$91,$A1,$B1 ; FB12
        .byte   $C1,$D1,$E1,$FF,$52,$21,$62,$72 ; FB1A
        .byte   $82,$92,$A2,$B2,$C2,$D2,$E2,$FF ; FB22
        .byte   $72,$21,$63,$73,$83,$93,$A3,$B3 ; FB2A
        .byte   $C3,$D3,$E3,$F3,$FF,$92,$21,$64 ; FB32
        .byte   $74,$84,$94,$A4,$B4,$C4,$D4,$E4 ; FB3A
        .byte   $FF,$B2,$21,$65,$75,$85,$95,$A5 ; FB42
        .byte   $B5,$C5,$D5,$FF,$70,$22,$56,$45 ; FB4A
        .byte   $52,$59,$00,$54,$48,$41,$4E,$4B ; FB52
        .byte   $53,$2E,$2E,$21,$21,$FF,$AE,$22 ; FB5A
        .byte   $50,$52,$45,$53,$45,$4E,$54,$45 ; FB62
        .byte   $44,$00,$42,$59,$2E,$2E,$2E,$FF ; FB6A
        .byte   $14,$23,$0B,$0D,$1B,$1D,$07,$17 ; FB72
        .byte   $0F,$09,$19,$16,$FF,$34,$23,$0C ; FB7A
        .byte   $0E,$1C,$1E,$08,$18,$1F,$0A,$1A ; FB82
        .byte   $26,$FF,$C0,$23,$00,$AA,$AA,$00 ; FB8A
        .byte   $00,$00,$00,$00,$00,$AA,$AA,$00 ; FB92
        .byte   $00,$00,$00,$10,$00,$AA,$AA,$00 ; FB9A
        .byte   $00,$00,$00,$C0,$00,$AA,$AA,$00 ; FBA2
        .byte   $00,$00,$00,$CC,$FF,$E0,$23,$00 ; FBAA
        .byte   $AA,$AA,$C0,$F0,$F0,$F0,$FC,$00 ; FBB2
        .byte   $AA,$AA,$CC,$FF,$FF,$FF,$83,$00 ; FBBA
        .byte   $AA,$AA,$00,$0F,$00,$00,$0C,$00 ; FBC2
        .byte   $0A,$0A,$00,$00,$00,$00,$00,$FF ; FBCA
        .byte   $00,$00,$00,$00                 ; FBD2
; ----------------------------------------------------------------------------
L_FBD6: jsr     L_E74D                          ; FBD6
        jsr     L_F19B                          ; FBD9
        ldy     #$00                            ; FBDC
L_FBDE: lda     (L007A),y                       ; FBDE
        iny                                     ; FBE0
        cmp     #$2F                            ; FBE1
        beq     L_FBEF                          ; FBE3
        cmp     #$FF                            ; FBE5
        beq     L_FBEF                          ; FBE7
        jsr     L_F192                          ; FBE9
        jmp     L_FBDE                          ; FBEC

; ----------------------------------------------------------------------------
L_FBEF: pha                                     ; FBEF
        jsr     L_F1BC                          ; FBF0
        jsr     L_EB44                          ; FBF3
        pla                                     ; FBF6
        rts                                     ; FBF7

; ----------------------------------------------------------------------------
L_FBF8: lda     #$0E                            ; FBF8
        sta     $C7                             ; FBFA
        jsr     L_E74D                          ; FBFC
        jsr     L_F19B                          ; FBFF
        ldx     $19                             ; FC02
        ldy     #$12                            ; FC04
        lda     #$00                            ; FC06
L_FC08: sta     $0300,x                         ; FC08
        inx                                     ; FC0B
        dey                                     ; FC0C
        bne     L_FC08                          ; FC0D
        stx     $19                             ; FC0F
        jsr     L_F1BC                          ; FC11
        rts                                     ; FC14

; ----------------------------------------------------------------------------
L_FC15: jsr     L_FC42                          ; FC15
        jsr     WaitNMI                         ; FC18
        dec     $52                             ; FC1B
        bne     L_FC15                          ; FC1D
        lda     LFC41                           ; FC1F
        sta     $52                             ; FC22
        inc     $FC                             ; FC24
        lda     $FC                             ; FC26
        and     #$03                            ; FC28
        bne     L_FC15                          ; FC2A
        lda     $FC                             ; FC2C
        and     #$07                            ; FC2E
        bne     L_FC40                          ; FC30
        inc     $C8                             ; FC32
        lda     $C8                             ; FC34
        cmp     #$1E                            ; FC36
        bne     L_FC40                          ; FC38
        lda     #$00                            ; FC3A
        sta     $C8                             ; FC3C
        sta     $FC                             ; FC3E
L_FC40: rts                                     ; FC40

; ----------------------------------------------------------------------------
LFC41:  .byte   $05                             ; FC41
; ----------------------------------------------------------------------------
L_FC42: lda     #$00                            ; FC42
        sta     $44                             ; FC44
        lda     #$3C                            ; FC46
        sta     $3E                             ; FC48
        lda     #$FF                            ; FC4A
        sta     $3F                             ; FC4C
        jsr     L_FC9F                          ; FC4E
        lda     #$9F                            ; FC51
        sta     $3F                             ; FC53
        jsr     L_FC9F                          ; FC55
        lda     #$4F                            ; FC58
        sta     $3F                             ; FC5A
        lda     #$86                            ; FC5C
        sta     $45                             ; FC5E
        lda     #$05                            ; FC60
L_FC62: pha                                     ; FC62
        lda     #$20                            ; FC63
        sta     $3E                             ; FC65
        lda     $45                             ; FC67
        pha                                     ; FC69
        lda     #$08                            ; FC6A
L_FC6C: pha                                     ; FC6C
        jsr     L_ECB4                          ; FC6D
        lda     $3E                             ; FC70
        clc                                     ; FC72
        adc     #$08                            ; FC73
        sta     $3E                             ; FC75
        lda     $45                             ; FC77
        clc                                     ; FC79
        adc     #$10                            ; FC7A
        sta     $45                             ; FC7C
        pla                                     ; FC7E
        sec                                     ; FC7F
        sbc     #$01                            ; FC80
        bne     L_FC6C                          ; FC82
        jsr     L_EC73                          ; FC84
        pla                                     ; FC87
        sta     $45                             ; FC88
        lda     $3F                             ; FC8A
        clc                                     ; FC8C
        adc     #$10                            ; FC8D
        sta     $3F                             ; FC8F
        lda     $45                             ; FC91
        clc                                     ; FC93
        adc     #$02                            ; FC94
        sta     $45                             ; FC96
        pla                                     ; FC98
        sec                                     ; FC99
        sbc     #$01                            ; FC9A
        bne     L_FC62                          ; FC9C
        rts                                     ; FC9E

; ----------------------------------------------------------------------------
L_FC9F: lda     #$7E                            ; FC9F
        sta     $45                             ; FCA1
        jsr     L_ECD1                          ; FCA3
        lda     #$04                            ; FCA6
L_FCA8: pha                                     ; FCA8
        lda     $3F                             ; FCA9
        clc                                     ; FCAB
        adc     #$10                            ; FCAC
        sta     $3F                             ; FCAE
        jsr     L_ECD1                          ; FCB0
        pla                                     ; FCB3
        sec                                     ; FCB4
        sbc     #$01                            ; FCB5
        bne     L_FCA8                          ; FCB7
        jmp     L_EC73                          ; FCB9

; ----------------------------------------------------------------------------
L_FCBC: jsr     L_E6FA                          ; FCBC
        ldx     #$13                            ; FCBF
L_FCC1: lda     LFCCD,x                         ; FCC1
        sta     $58,x                           ; FCC4
        sta     $0650,x                         ; FCC6
        dex                                     ; FCC9
        bpl     L_FCC1                          ; FCCA
        rts                                     ; FCCC

; ----------------------------------------------------------------------------
LFCCD:  .byte   $0F,$30,$36,$11,$0F,$30,$36,$27 ; FCCD
        .byte   $0F,$00,$3C,$15,$0F,$3C,$2C,$1C ; FCD5
        .byte   $0F,$00,$3C,$15                 ; FCDD
; ----------------------------------------------------------------------------
L_FCE1: lda     $2002                           ; FCE1
        lda     #$23                            ; FCE4
        sta     $2006                           ; FCE6
        lda     #$C0                            ; FCE9
        sta     $2006                           ; FCEB
        lda     #$FF                            ; FCEE
        ldx     #$40                            ; FCF0
L_FCF2: sta     $2007                           ; FCF2
        dex                                     ; FCF5
        bne     L_FCF2                          ; FCF6
        rts                                     ; FCF8

; ----------------------------------------------------------------------------
LFCF9:  .addr   LFCFB                           ; FCF9
; ----------------------------------------------------------------------------
LFCFB:  .byte   $44,$49,$52,$45,$43,$54,$4F,$52 ; FCFB
        .byte   $2F,$20,$2F,$20,$20,$20,$20,$48 ; FD03
        .byte   $2E,$48,$49,$47,$41,$53,$49,$59 ; FD0B
        .byte   $41,$2F,$20,$2F,$20,$20,$20,$20 ; FD13
        .byte   $4B,$2E,$4B,$49,$54,$41,$5A,$55 ; FD1B
        .byte   $4D,$49,$2F,$20,$2F,$20,$2F,$4D ; FD23
        .byte   $41,$4E,$41,$47,$45,$52,$2F,$20 ; FD2B
        .byte   $2F,$20,$20,$20,$20,$4B,$2E,$59 ; FD33
        .byte   $4F,$53,$48,$49,$44,$41,$2F,$20 ; FD3B
        .byte   $2F,$20,$2F,$47,$41,$4D,$45,$20 ; FD43
        .byte   $44,$45,$53,$49,$47,$4E,$2F,$20 ; FD4B
        .byte   $2F,$20,$20,$20,$20,$46,$41,$4E ; FD53
        .byte   $4B,$59,$2E,$2F,$20,$2F,$20,$20 ; FD5B
        .byte   $20,$20,$41,$4E,$44,$20,$4F,$54 ; FD63
        .byte   $48,$45,$52,$53,$2F,$20,$2F,$20 ; FD6B
        .byte   $2F,$43,$48,$41,$52,$41,$43,$54 ; FD73
        .byte   $45,$52,$2F,$20,$20,$20,$20,$44 ; FD7B
        .byte   $45,$53,$49,$47,$4E,$2F,$20,$2F ; FD83
        .byte   $20,$20,$20,$20,$46,$41,$4E,$4B ; FD8B
        .byte   $59,$2E,$2F,$20,$2F,$20,$2F,$41 ; FD93
        .byte   $52,$54,$20,$44,$45,$53,$49,$47 ; FD9B
        .byte   $4E,$2F,$20,$2F,$20,$20,$20,$20 ; FDA3
        .byte   $50,$47,$4D,$2D,$46,$31,$2F,$20 ; FDAB
        .byte   $2F,$20,$2F,$4D,$55,$53,$49,$43 ; FDB3
        .byte   $2F,$20,$43,$4F,$4D,$50,$4F,$53 ; FDBB
        .byte   $45,$52,$2F,$20,$2F,$20,$20,$20 ; FDC3
        .byte   $20,$4E,$41,$4F,$4B,$49,$20,$4B ; FDCB
        .byte   $4F,$44,$41,$4B,$41,$2F,$20,$2F ; FDD3
        .byte   $20,$2F,$53,$4F,$55,$4E,$44,$2F ; FDDB
        .byte   $20,$50,$52,$4F,$47,$52,$41,$4D ; FDE3
        .byte   $2F,$20,$2F,$20,$20,$20,$20,$4D ; FDEB
        .byte   $41,$52,$55,$4D,$4F,$2F,$20,$2F ; FDF3
        .byte   $20,$2F,$50,$52,$4F,$47,$52,$41 ; FDFB
        .byte   $4D,$2F,$20,$2F,$20,$20,$20,$20 ; FE03
        .byte   $53,$45,$4E,$54,$41,$2F,$20,$2F ; FE0B
        .byte   $20,$20,$20,$20,$4B,$41,$4E,$5A ; FE13
        .byte   $2F,$20,$2F,$20,$2F,$53,$50,$45 ; FE1B
        .byte   $43,$49,$41,$4C,$2F,$20,$54,$48 ; FE23
        .byte   $41,$4E,$4B,$53,$20,$54,$4F,$2F ; FE2B
        .byte   $20,$2F,$20,$20,$20,$20,$4D,$4F ; FE33
        .byte   $52,$49,$4B,$45,$4E,$2F,$20,$2F ; FE3B
        .byte   $20,$20,$20,$20,$43,$48,$49,$41 ; FE43
        .byte   $4F,$2F,$20,$2F,$20,$FF,$FF,$FF ; FE4B
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FE53
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FE5B
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FE63
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FE6B
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FE73
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FE7B
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FE83
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FE8B
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FE93
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FE9B
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FEA3
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FEAB
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FEB3
        .byte   $FF,$FF,$FF,$FF,$FF             ; FEBB
.endmacro

