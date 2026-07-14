.macro MAC_L_E309
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
        lda     LE368                           ; E359
        sta     L007A                           ; E35C
        lda     LE369                           ; E35E
        sta     $7B                             ; E361
        ldy     #$00                            ; E363
        jmp     L_E3BF                          ; E365

; ----------------------------------------------------------------------------
LE368:  .byte   $6A                             ; E368
LE369:  .byte   $E3,$07,$21,$17,$30,$07,$29,$17 ; E369
        .byte   $30,$07,$36,$17,$30,$07,$0A,$1A ; E371
        .byte   $21,$07,$36,$17,$30,$07,$36,$1C ; E379
        .byte   $30,$07,$29,$17,$30,$07,$10,$25 ; E381
        .byte   $30                             ; E389
; ----------------------------------------------------------------------------
L_E38A: lda     #$05                            ; E38A
        sta     $D5                             ; E38C
        lda     LE39D                           ; E38E
        sta     L007A                           ; E391
        lda     LE39E                           ; E393
        sta     $7B                             ; E396
        ldy     #$00                            ; E398
        jmp     L_E3BF                          ; E39A

; ----------------------------------------------------------------------------
LE39D:  .byte   $9F                             ; E39D
LE39E:  .byte   $E3,$07,$11,$15,$30,$07,$29,$17 ; E39E
        .byte   $3F,$07,$3F,$00,$30,$07,$0A,$1A ; E3A6
        .byte   $21,$07,$36,$17,$30,$07,$36,$1C ; E3AE
        .byte   $30,$07,$29,$17,$30,$07,$10,$25 ; E3B6
        .byte   $30                             ; E3BE
; ----------------------------------------------------------------------------
L_E3BF: lda     #$16                            ; E3BF
        sta     $D4                             ; E3C1
        ldx     #$00                            ; E3C3
L_E3C5: lda     (L007A),y                       ; E3C5
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
        lda     LE44C                           ; E40A
        sta     L007A                           ; E40D
        lda     LE44D                           ; E40F
        sta     $7B                             ; E412
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
        lda     LE479                           ; E42D
        sta     L007A                           ; E430
        lda     LE47A                           ; E432
        sta     $7B                             ; E435
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
LE44C:  .byte   $4E                             ; E44C
LE44D:  .byte   $E4,$76,$00,$00,$00,$00,$00,$00 ; E44D
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; E455
        .byte   $2E,$2F,$7E,$00,$00,$00,$3E,$3F ; E45D
        .byte   $8E,$6F,$00,$00,$4E,$4F,$7F,$50 ; E465
        .byte   $00,$00,$5E,$5F,$8F,$60,$00,$00 ; E46D
        .byte   $6E,$00,$00,$60                 ; E475
LE479:  .byte   $7B                             ; E479
LE47A:  .byte   $E4,$76,$00,$00,$4B,$4C,$4D,$49 ; E47A
        .byte   $00,$5A,$5B,$5C,$5D,$59,$69,$6A ; E482
        .byte   $6B,$6C,$6D,$00,$79,$7A,$7B,$7C ; E48A
        .byte   $7D,$4A,$89,$8A,$8B,$8C,$8D,$50 ; E492
        .byte   $99,$9A,$9B,$9C,$9D,$60,$A9,$AA ; E49A
        .byte   $AB,$AC,$00,$60                 ; E4A2
; ----------------------------------------------------------------------------
L_E4A6: jsr     L_EB71                          ; E4A6
        sta     $58                             ; E4A9
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
        jsr     L_EA3A                          ; E4C2
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
        lda     LE53D,x                         ; E505
        sta     $3E                             ; E508
        lda     LE53E,x                         ; E50A
        sta     $3F                             ; E50D
        lda     LE54D                           ; E50F
        sta     L007A                           ; E512
        lda     LE54E                           ; E514
        sta     $7B                             ; E517
        ldy     #$00                            ; E519
        lda     $02                             ; E51B
        asl     a                               ; E51D
        jsr     L_F029                          ; E51E
        jsr     L_EC73                          ; E521
        lda     LE54D                           ; E524
        sta     L007A                           ; E527
        lda     LE54E                           ; E529
        sta     $7B                             ; E52C
        ldy     #$00                            ; E52E
        lda     $02                             ; E530
        asl     a                               ; E532
        clc                                     ; E533
        adc     #$01                            ; E534
        jsr     L_F029                          ; E536
        jsr     L_EC73                          ; E539
        rts                                     ; E53C

; ----------------------------------------------------------------------------
LE53D:  .byte   $08                             ; E53D
LE53E:  .byte   $07,$08,$07,$50,$5F,$08,$07,$60 ; E53E
        .byte   $57,$70,$57,$80,$6F,$90,$3F     ; E546
LE54D:  .byte   $4F                             ; E54D
LE54E:  .byte   $E5,$6F,$E5,$6F,$E5,$6F,$E5,$6F ; E54E
        .byte   $E5,$72,$E5,$6F,$E5,$6F,$E5,$6F ; E556
        .byte   $E5,$94,$E5,$6F,$E5,$9E,$E5,$6F ; E55E
        .byte   $E5,$B7,$E5,$6F,$E5,$CB,$E5,$E9 ; E566
        .byte   $E5,$00,$00,$18,$04,$04,$0C,$02 ; E56E
        .byte   $05,$00,$10,$0D,$04,$05,$14,$F0 ; E576
        .byte   $0C,$06,$07,$08,$00,$0C,$0E,$07 ; E57E
        .byte   $08,$00,$0C,$3E,$07,$0C,$00,$0E ; E586
        .byte   $24,$05,$FC,$14,$13,$11,$04,$04 ; E58E
        .byte   $0C,$20,$05,$00,$10,$1D,$22,$05 ; E596
        .byte   $04,$04,$0C,$0A,$05,$10,$00,$0C ; E59E
        .byte   $2A,$05,$F0,$10,$0D,$0C,$05,$10 ; E5A6
        .byte   $00,$0D,$2C,$05,$F8,$10,$1D,$1E ; E5AE
        .byte   $05,$08,$04,$0D,$16,$07,$0C,$00 ; E5B6
        .byte   $0C,$26,$05,$F0,$10,$0D,$08,$05 ; E5BE
        .byte   $10,$00,$1D,$28,$05,$1C,$00,$0C ; E5C6
        .byte   $40,$06,$00,$08,$0C,$41,$06,$00 ; E5CE
        .byte   $08,$0C,$42,$06,$00,$08,$0C,$43 ; E5D6
        .byte   $06,$00,$08,$0C,$44,$06,$00,$08 ; E5DE
        .byte   $1C,$45,$06,$EC,$FC,$0F,$5A,$07 ; E5E6
        .byte   $2C,$00,$0F,$6A,$05,$D0,$10,$0F ; E5EE
        .byte   $4C,$05,$10,$00,$0F,$46,$05,$10 ; E5F6
        .byte   $00,$0F,$66,$05,$10,$00,$0F,$6C ; E5FE
        .byte   $05,$D0,$10,$0F,$4E,$05,$10,$00 ; E606
        .byte   $0F,$48,$05,$10,$00,$0F,$68,$05 ; E60E
        .byte   $10,$00,$1F,$6E,$05             ; E616
; ----------------------------------------------------------------------------
.endmacro

