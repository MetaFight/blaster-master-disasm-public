.macro MAC_L_C24F
; ----------------------------------------------------------------------------
L_C24F: lda     #$00                            ; C24F
        sta     $D3                             ; C251
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
        sta     PlayerObj_Type,x                ; C272
        sta     $0500,x                         ; C275
        sta     $0600,x                         ; C278
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

.macro MAC_L_F45D
; ----------------------------------------------------------------------------
L_F45D: jsr     L_F547                          ; F45D
        bne     L_F464                          ; F460
        lda     #$00                            ; F462
L_F464: rts                                     ; F464

.endmacro

.macro MAC_L_F547
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
        jsr     L_EB71                          ; F573
        jmp     L_F57B                          ; F576

; ----------------------------------------------------------------------------
L_F579: lda     #$12                            ; F579
L_F57B: sta     $5B                             ; F57B
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
L_F594: lda     LF59E,x                         ; F594
        sta     $0650,x                         ; F597
        dex                                     ; F59A
        bpl     L_F594                          ; F59B
        rts                                     ; F59D

; ----------------------------------------------------------------------------
LF59E:  .byte   $0F,$3C,$2C,$1C,$0F,$30,$10,$00 ; F59E
        .byte   $0F,$26,$27,$0F,$0F,$29,$10,$0F ; F5A6
.endmacro

