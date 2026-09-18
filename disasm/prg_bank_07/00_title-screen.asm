.macro MAC_00_title_screen_1_of_2
; ----------------------------------------------------------------------------
L_C24F: lda     #$00                            ; C24F
        sta     SavedPrgBank                    ; C251
        jsr     L_DEC2                          ; C253
        lda     $03F3                           ; C256
        cmp     #$01                            ; C259
        bne     L_C264                          ; C25B
        lda     $03F4                           ; C25D
        cmp     #$23                            ; C260
        beq     L_C29E                          ; C262
L_C264: ldx     #$00                            ; C264
        txa                                     ; C266
L_C267: sta     L0000,x                         ; C267
        sta     $0100,x                         ; C269
        sta     $0200,x                         ; C26C
        sta     $0300,x                         ; C26F
        sta     ObjectTable + Obj::Type,x       ; C272
        sta     LevelTileData,x                 ; C275
        sta     OAM_Staging_Buffer + OamEntry::Screen_Y,x ; C278
        sta     $0700,x                         ; C27B
        inx                                     ; C27E
        bne     L_C267                          ; C27F
        lda     #$01                            ; C281
        sta     $03F3                           ; C283
        lda     #$23                            ; C286
        sta     $03F4                           ; C288
        lda     #$30                            ; C28B
        sta     $FF                             ; C28D
        sta     $2000                           ; C28F
        lda     #$06                            ; C292
        sta     $FE                             ; C294
        sta     $2001                           ; C296
        lda     #$FF                            ; C299
        sta     $06F4                           ; C29B
L_C29E: ldx     #$FF                            ; C29E
        txs                                     ; C2A0
        jsr     L_DEC2                          ; C2A1
        jsr     L_F45D                          ; C2A4
        beq     L_C2BC                          ; C2A7
        jsr     L_E309                          ; C2A9
L_C2AC: ldx     #$FF                            ; C2AC
        txs                                     ; C2AE
        lda     #$80                            ; C2AF
        sta     $06F3                           ; C2B1
        jsr     L_DEC2                          ; C2B4
        jsr     L_F45D                          ; C2B7
        bne     L_C2DB                          ; C2BA
L_C2BC: lda     #$08                            ; C2BC
        sta     $14                             ; C2BE
        jsr     L_CDBA                          ; C2C0
        jsr     L_F5D9                          ; C2C3
        lda     #$05                            ; C2C6
        sta     $037E                           ; C2C8
        lda     #$00                            ; C2CB
        sta     $03FE                           ; C2CD
        sta     $03FB                           ; C2D0
        sta     $03FC                           ; C2D3
        sta     $99                             ; C2D6
        jmp     L_C2FB                          ; C2D8

.endmacro

.macro MAC_00_title_screen_2_of_2
; ----------------------------------------------------------------------------
L_F45D: jsr     L_F547                          ; F45D
        bne     L_F464                          ; F460
        lda     #$00                            ; F462
L_F464: rts                                     ; F464

; ----------------------------------------------------------------------------
L_F465: lda     #$00                            ; F465
        sta     $01                             ; F467
        lda     LFFF3                           ; F469
        bpl     L_F4BC                          ; F46C
        jsr     L_EA03                          ; F46E
        lda     #$07                            ; F471
        sta     $D5                             ; F473
        sta     $D4                             ; F475
        lda     L_F523                          ; F477
        sta     IndirectPtrLo                   ; F47A
        lda     L_F523+1                        ; F47C
        sta     IndirectPtrHi                   ; F47F
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
L_F512: lda     L_F51F,x                        ; F512
        sta     $0650,x                         ; F515
        sta     $0660,x                         ; F518
        dex                                     ; F51B
        bpl     L_F512                          ; F51C
        rts                                     ; F51E

; ----------------------------------------------------------------------------
L_F51F: .byte   $0F,$30,$0F,$0F                 ; F51F
; ----------------------------------------------------------------------------
L_F523: .addr   L_F525                          ; F523
; ----------------------------------------------------------------------------
L_F525: .byte   "SELECT START AREA"             ; F525
                                                ; F52D
                                                ; F535
        .byte   $00                             ; F536
L_F537: .byte   "AND"                           ; F537
        .byte   $00                             ; F53A
L_F53B: .byte   "PRESS START"                   ; F53B
                                                ; F543
        .byte   $00                             ; F546
; ----------------------------------------------------------------------------
L_F547: lda     #$80                            ; F547
        sta     $01                             ; F549
        lda     #$01                            ; F54B
        sta     $02                             ; F54D
        lda     #$07                            ; F54F
        sta     $D5                             ; F551
        jsr     L_F58F                          ; F553
        lda     #$02                            ; F556
        jsr     L_E9A6                          ; F558
        jsr     L_CE2E                          ; F55B
L_F55E: jsr     WaitNMI                         ; F55E
        lda     $F5                             ; F561
        and     #$10                            ; F563
        bne     L_F589                          ; F565
        lda     $01                             ; F567
        bne     L_F56D                          ; F569
        dec     $02                             ; F56B
L_F56D: dec     $01                             ; F56D
        lda     $02                             ; F56F
        beq     L_F579                          ; F571
        jsr     Step_RNG                        ; F573
        jmp     L_F57B                          ; F576

; ----------------------------------------------------------------------------
L_F579: lda     #$12                            ; F579
L_F57B: sta     BG_Palette_0 + BgPalette::Colour3 ; F57B
        lda     $01                             ; F57D
        ora     $02                             ; F57F
        bne     L_F55E                          ; F581
        jsr     L_CE3C                          ; F583
        lda     #$FF                            ; F586
        rts                                     ; F588

; ----------------------------------------------------------------------------
L_F589: jsr     L_CE3C                          ; F589
        lda     #$00                            ; F58C
        rts                                     ; F58E

; ----------------------------------------------------------------------------
L_F58F: jsr     L_F9CA                          ; F58F
        ldx     #$0F                            ; F592
L_F594: lda     L_F59E,x                        ; F594
        sta     $0650,x                         ; F597
        dex                                     ; F59A
        bpl     L_F594                          ; F59B
        rts                                     ; F59D

; ----------------------------------------------------------------------------
L_F59E: .byte   $0F,$3C,$2C,$1C,$0F,$30,$10,$00 ; F59E
        .byte   $0F,$26,$27,$0F,$0F,$29,$10,$0F ; F5A6
; ----------------------------------------------------------------------------
L_F5AE: lda     L_F5CF                          ; F5AE
        sta     IndirectPtrLo                   ; F5B1
        lda     L_F5CF+1                        ; F5B3
        sta     IndirectPtrHi                   ; F5B6
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
L_F5CF: .addr   L_F5D1                          ; F5CF
; ----------------------------------------------------------------------------
L_F5D1: .byte   "CREDIT "                       ; F5D1
        .byte   $00                             ; F5D8
.endmacro

