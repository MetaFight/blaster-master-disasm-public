.macro MAC_02_story_sequence
; ----------------------------------------------------------------------------
L_E309: lda     #$54                            ; E309
        jsr     Enqueue_Sound_Command           ; E30B
        tsx                                     ; E30E
        stx     $01                             ; E30F
        jsr     L_E355                          ; E311
        lda     #$00                            ; E314
        jsr     L_E3D1                          ; E316
        jsr     L_E355                          ; E319
        lda     #$01                            ; E31C
        jsr     L_E3D1                          ; E31E
        jsr     L_E355                          ; E321
        lda     #$02                            ; E324
        jsr     L_E3D1                          ; E326
        jsr     L_E38A                          ; E329
        lda     #$03                            ; E32C
        jsr     L_E3F0                          ; E32E
        jsr     L_E38A                          ; E331
        lda     #$04                            ; E334
        jsr     L_E3D1                          ; E336
        jsr     L_E355                          ; E339
        lda     #$05                            ; E33C
        jsr     L_E3D1                          ; E33E
        jsr     L_E38A                          ; E341
        lda     #$06                            ; E344
        jsr     L_E3D1                          ; E346
        jsr     L_E38A                          ; E349
        lda     #$07                            ; E34C
        jsr     L_E3D1                          ; E34E
L_E351: ldx     $01                             ; E351
        txs                                     ; E353
        rts                                     ; E354

; ----------------------------------------------------------------------------
L_E355: lda     #$04                            ; E355
        sta     $D5                             ; E357
        lda     L_E368                          ; E359
        sta     IndirectPtrLo                   ; E35C
        lda     L_E368+1                        ; E35E
        sta     IndirectPtrHi                   ; E361
        ldy     #$00                            ; E363
        jmp     L_E3BF                          ; E365

; ----------------------------------------------------------------------------
L_E368: .addr   L_E36A                          ; E368
; ----------------------------------------------------------------------------
L_E36A: .byte   $07,$21,$17,$30,$07,$29,$17,$30 ; E36A
        .byte   $07,$36,$17,$30,$07,$0A,$1A,$21 ; E372
        .byte   $07,$36,$17,$30,$07,$36,$1C,$30 ; E37A
        .byte   $07,$29,$17,$30,$07,$10,$25,$30 ; E382
; ----------------------------------------------------------------------------
L_E38A: lda     #$05                            ; E38A
        sta     $D5                             ; E38C
        lda     L_E39D                          ; E38E
        sta     IndirectPtrLo                   ; E391
        lda     L_E39D+1                        ; E393
        sta     IndirectPtrHi                   ; E396
        ldy     #$00                            ; E398
        jmp     L_E3BF                          ; E39A

; ----------------------------------------------------------------------------
L_E39D: .addr   L_E39F                          ; E39D
; ----------------------------------------------------------------------------
L_E39F: .byte   $07,$11,$15,$30,$07,$29,$17,$3F ; E39F
        .byte   $07,$3F,$00,$30,$07,$0A,$1A,$21 ; E3A7
        .byte   $07,$36,$17,$30,$07,$36,$1C,$30 ; E3AF
        .byte   $07,$29,$17,$30,$07,$10,$25,$30 ; E3B7
; ----------------------------------------------------------------------------
L_E3BF: lda     #$16                            ; E3BF
        sta     $D4                             ; E3C1
        ldx     #$00                            ; E3C3
L_E3C5: lda     (IndirectPtrLo),y               ; E3C5
        iny                                     ; E3C7
        sta     $0650,x                         ; E3C8
        inx                                     ; E3CB
        cpx     #$20                            ; E3CC
        bne     L_E3C5                          ; E3CE
        rts                                     ; E3D0

; ----------------------------------------------------------------------------
L_E3D1: jsr     L_E4BB                          ; E3D1
        jsr     L_E4E0                          ; E3D4
        lda     #$04                            ; E3D7
L_E3D9: pha                                     ; E3D9
        lda     #$3C                            ; E3DA
L_E3DC: pha                                     ; E3DC
        jsr     L_E4AB                          ; E3DD
        pla                                     ; E3E0
        sec                                     ; E3E1
        sbc     #$01                            ; E3E2
        bne     L_E3DC                          ; E3E4
        pla                                     ; E3E6
        sec                                     ; E3E7
        sbc     #$01                            ; E3E8
        bne     L_E3D9                          ; E3EA
        jsr     L_E4EE                          ; E3EC
        rts                                     ; E3EF

; ----------------------------------------------------------------------------
L_E3F0: jsr     L_E4BB                          ; E3F0
        jsr     L_E4E0                          ; E3F3
        lda     #$3C                            ; E3F6
L_E3F8: pha                                     ; E3F8
        jsr     L_E4A6                          ; E3F9
        pla                                     ; E3FC
        sec                                     ; E3FD
        sbc     #$01                            ; E3FE
        bne     L_E3F8                          ; E400
        lda     #$0C                            ; E402
        sta     $C7                             ; E404
        lda     #$0B                            ; E406
        sta     $C8                             ; E408
        lda     L_E44C                          ; E40A
        sta     IndirectPtrLo                   ; E40D
        lda     L_E44C+1                        ; E40F
        sta     IndirectPtrHi                   ; E412
        ldy     #$00                            ; E414
        jsr     L_E797                          ; E416
        lda     #$3C                            ; E419
L_E41B: pha                                     ; E41B
        jsr     L_E4A6                          ; E41C
        pla                                     ; E41F
        sec                                     ; E420
        sbc     #$01                            ; E421
        bne     L_E41B                          ; E423
        lda     #$0C                            ; E425
        sta     $C7                             ; E427
        lda     #$0B                            ; E429
        sta     $C8                             ; E42B
        lda     L_E479                          ; E42D
        sta     IndirectPtrLo                   ; E430
        lda     L_E479+1                        ; E432
        sta     IndirectPtrHi                   ; E435
        ldy     #$00                            ; E437
        jsr     L_E797                          ; E439
        lda     #$78                            ; E43C
L_E43E: pha                                     ; E43E
        jsr     L_E4A6                          ; E43F
        pla                                     ; E442
        sec                                     ; E443
        sbc     #$01                            ; E444
        bne     L_E43E                          ; E446
        jsr     L_E4EE                          ; E448
        rts                                     ; E44B

; ----------------------------------------------------------------------------
L_E44C: .addr   L_E44E                          ; E44C
; ----------------------------------------------------------------------------
L_E44E: .byte   $76,$00,$00,$00,$00,$00,$00,$00 ; E44E
        .byte   $00,$00,$00,$00,$00,$00,$00,$2E ; E456
        .byte   $2F,$7E,$00,$00,$00,$3E,$3F,$8E ; E45E
        .byte   $6F,$00,$00,$4E,$4F,$7F,$50,$00 ; E466
        .byte   $00,$5E,$5F,$8F,$60,$00,$00,$6E ; E46E
        .byte   $00,$00,$60                     ; E476
; ----------------------------------------------------------------------------
L_E479: .addr   L_E47B                          ; E479
; ----------------------------------------------------------------------------
L_E47B: .byte   $76,$00,$00,$4B,$4C,$4D,$49,$00 ; E47B
        .byte   $5A,$5B,$5C,$5D,$59,$69,$6A,$6B ; E483
        .byte   $6C,$6D,$00,$79,$7A,$7B,$7C,$7D ; E48B
        .byte   $4A,$89,$8A,$8B,$8C,$8D,$50,$99 ; E493
        .byte   $9A,$9B,$9C,$9D,$60,$A9,$AA,$AB ; E49B
        .byte   $AC,$00,$60                     ; E4A3
; ----------------------------------------------------------------------------
L_E4A6: jsr     Step_RNG                        ; E4A6
        sta     BG_Palette_0 + BgPalette::Colour0 ; E4A9
L_E4AB: jsr     WaitNMI                         ; E4AB
        jsr     L_E4FD                          ; E4AE
        lda     $DE                             ; E4B1
        and     #$10                            ; E4B3
        beq     L_E4BA                          ; E4B5
        jmp     L_E351                          ; E4B7

; ----------------------------------------------------------------------------
L_E4BA: rts                                     ; E4BA

; ----------------------------------------------------------------------------
L_E4BB: sta     $02                             ; E4BB
        jsr     L_EA03                          ; E4BD
        lda     #$30                            ; E4C0
        jsr     BankDispatch_Switch             ; E4C2
        lda     #$0B                            ; E4C5
        jsr     L_EB51                          ; E4C7
        lda     $02                             ; E4CA
        jsr     L_EB51                          ; E4CC
        lda     $2002                           ; E4CF
        lda     #$20                            ; E4D2
        sta     $2006                           ; E4D4
        lda     #$00                            ; E4D7
        sta     $2006                           ; E4D9
        jsr     L_E953                          ; E4DC
        rts                                     ; E4DF

; ----------------------------------------------------------------------------
L_E4E0: jsr     L_CE0F                          ; E4E0
L_E4E3: jsr     L_E4AB                          ; E4E3
        jsr     ScreenFade_Step                 ; E4E6
        lda     $15                             ; E4E9
        bmi     L_E4E3                          ; E4EB
        rts                                     ; E4ED

; ----------------------------------------------------------------------------
L_E4EE: jsr     L_CE27                          ; E4EE
L_E4F1: jsr     L_E4AB                          ; E4F1
        jsr     ScreenFade_Step                 ; E4F4
        lda     $15                             ; E4F7
        asl     a                               ; E4F9
        bmi     L_E4F1                          ; E4FA
        rts                                     ; E4FC

; ----------------------------------------------------------------------------
L_E4FD: lda     #$00                            ; E4FD
        sta     $44                             ; E4FF
        lda     $02                             ; E501
        asl     a                               ; E503
        tax                                     ; E504
        lda     L_E53D,x                        ; E505
        sta     $3E                             ; E508
        lda     LE53E,x                         ; E50A
        sta     $3F                             ; E50D
        lda     L_E54D                          ; E50F
        sta     IndirectPtrLo                   ; E512
        lda     L_E54D+1                        ; E514
        sta     IndirectPtrHi                   ; E517
        ldy     #$00                            ; E519
        lda     $02                             ; E51B
        asl     a                               ; E51D
        jsr     L_F029                          ; E51E
        jsr     L_EC73                          ; E521
        lda     L_E54D                          ; E524
        sta     IndirectPtrLo                   ; E527
        lda     L_E54D+1                        ; E529
        sta     IndirectPtrHi                   ; E52C
        ldy     #$00                            ; E52E
        lda     $02                             ; E530
        asl     a                               ; E532
        clc                                     ; E533
        adc     #$01                            ; E534
        jsr     L_F029                          ; E536
        jsr     L_EC73                          ; E539
        rts                                     ; E53C

; ----------------------------------------------------------------------------
L_E53D: .byte   $08                             ; E53D
LE53E:  .byte   $07,$08,$07,$50,$5F,$08,$07,$60 ; E53E
        .byte   $57,$70,$57,$80,$6F,$90,$3F     ; E546
; ----------------------------------------------------------------------------
; #region StorySeq_MetaSpritePtrs — 34 bytes
L_E54D: .addr   LE54F                           ; E54D
LE54F:  .addr   L_E56F                          ; E54F
        .addr   L_E56F                          ; E551
        .addr   L_E56F                          ; E553
        .addr   L_E56F                          ; E555
        .addr   LE572                           ; E557
        .addr   L_E56F                          ; E559
        .addr   L_E56F                          ; E55B
        .addr   L_E56F                          ; E55D
        .addr   LE594                           ; E55F
        .addr   L_E56F                          ; E561
        .addr   LE59E                           ; E563
        .addr   L_E56F                          ; E565
        .addr   LE5B7                           ; E567
        .addr   L_E56F                          ; E569
        .addr   LE5CB                           ; E56B
        .addr   LE5E9                           ; E56D
; #endregion

; ----------------------------------------------------------------------------
L_E56F: .byte   $00,$00,$18                     ; E56F
LE572:  .byte   $04,$04,$0C,$02,$05,$00,$10,$0D ; E572
        .byte   $04,$05,$14,$F0,$0C,$06,$07,$08 ; E57A
        .byte   $00,$0C,$0E,$07,$08,$00,$0C,$3E ; E582
        .byte   $07,$0C,$00,$0E,$24,$05,$FC,$14 ; E58A
        .byte   $13,$11                         ; E592
LE594:  .byte   $04,$04,$0C,$20,$05,$00,$10,$1D ; E594
        .byte   $22,$05                         ; E59C
LE59E:  .byte   $04,$04,$0C,$0A,$05,$10,$00,$0C ; E59E
        .byte   $2A,$05,$F0,$10,$0D,$0C,$05,$10 ; E5A6
        .byte   $00,$0D,$2C,$05,$F8,$10,$1D,$1E ; E5AE
        .byte   $05                             ; E5B6
LE5B7:  .byte   $08,$04,$0D,$16,$07,$0C,$00,$0C ; E5B7
        .byte   $26,$05,$F0,$10,$0D,$08,$05,$10 ; E5BF
        .byte   $00,$1D,$28,$05                 ; E5C7
LE5CB:  .byte   $1C,$00,$0C,$40,$06,$00,$08,$0C ; E5CB
        .byte   $41,$06,$00,$08,$0C,$42,$06,$00 ; E5D3
        .byte   $08,$0C,$43,$06,$00,$08,$0C,$44 ; E5DB
        .byte   $06,$00,$08,$1C,$45,$06         ; E5E3
LE5E9:  .byte   $EC,$FC,$0F,$5A,$07,$2C,$00,$0F ; E5E9
        .byte   $6A,$05,$D0,$10,$0F,$4C,$05,$10 ; E5F1
        .byte   $00,$0F,$46,$05,$10,$00,$0F,$66 ; E5F9
        .byte   $05,$10,$00,$0F,$6C,$05,$D0,$10 ; E601
        .byte   $0F,$4E,$05,$10,$00,$0F,$48,$05 ; E609
        .byte   $10,$00,$0F,$68,$05,$10,$00,$1F ; E611
        .byte   $6E,$05                         ; E619
.endmacro

