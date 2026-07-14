.macro MAC_L_BA88
L_BA88: jmp     L_BAA3                          ; BA88

; ----------------------------------------------------------------------------
        lda     $03FE                           ; BA8B
        and     #$01                            ; BA8E
        beq     L_BA95                          ; BA90
        jmp     LD804                           ; BA92

; ----------------------------------------------------------------------------
L_BA95: jsr     LD7E3                           ; BA95
        lda     $C5                             ; BA98
        ora     #$04                            ; BA9A
        sta     $C5                             ; BA9C
        lda     #$00                            ; BA9E
        jsr     L_BBA7                          ; BAA0
L_BAA3: rts                                     ; BAA3

; ----------------------------------------------------------------------------
LBAA4:  jmp     L_BACF                          ; BAA4

; ----------------------------------------------------------------------------
        lda     $11                             ; BAA7
        cmp     #$A0                            ; BAA9
        bcc     L_BACF                          ; BAAB
        and     #$0F                            ; BAAD
        bne     L_BACF                          ; BAAF
        jsr     LEB71                           ; BAB1
        and     #$1F                            ; BAB4
        eor     #$FF                            ; BAB6
        clc                                     ; BAB8
        adc     #$01                            ; BAB9
        clc                                     ; BABB
        adc     #$08                            ; BABC
        sta     $9D                             ; BABE
        lda     #$30                            ; BAC0
        sta     $9E                             ; BAC2
        inc     $4B                             ; BAC4
        lda     #$48                            ; BAC6
        sta     $A0                             ; BAC8
        jsr     LDF46                           ; BACA
        dec     $4B                             ; BACD
L_BACF: lda     #$1E                            ; BACF
        sta     $D4                             ; BAD1
        lda     #$20                            ; BAD3
        sta     $40                             ; BAD5
        lda     #$40                            ; BAD7
        sta     $41                             ; BAD9
        jsr     LEF2B                           ; BADB
        beq     L_BAE3                          ; BADE
        jmp     L_BB6B                          ; BAE0

; ----------------------------------------------------------------------------
L_BAE3: lda     $03FC                           ; BAE3
        and     #$01                            ; BAE6
        beq     L_BAFA                          ; BAE8
        lda     #$00                            ; BAEA
        jsr     L_BBC7                          ; BAEC
        beq     L_BAF4                          ; BAEF
        jmp     L_BB56                          ; BAF1

; ----------------------------------------------------------------------------
L_BAF4: lda     $45                             ; BAF4
        beq     L_BB01                          ; BAF6
        bne     L_BB10                          ; BAF8
L_BAFA: lda     #$40                            ; BAFA
        jsr     LD711                           ; BAFC
        bne     L_BB10                          ; BAFF
L_BB01: lda     $51                             ; BB01
        bne     L_BB10                          ; BB03
        lda     #$20                            ; BB05
        sta     $51                             ; BB07
        dec     $3F                             ; BB09
        lda     #$31                            ; BB0B
        jsr     Enqueue_Sound_Command           ; BB0D
L_BB10: lda     #$42                            ; BB10
        sta     $44                             ; BB12
        jsr     LD77D                           ; BB14
        lda     $3F                             ; BB17
        sec                                     ; BB19
        sbc     #$10                            ; BB1A
        sta     $3F                             ; BB1C
        lda     $51                             ; BB1E
        bne     L_BB28                          ; BB20
        jsr     L_BB8D                          ; BB22
        jmp     L_BB2B                          ; BB25

; ----------------------------------------------------------------------------
L_BB28: jsr     L_BB92                          ; BB28
L_BB2B: jsr     LEDF5                           ; BB2B
        clc                                     ; BB2E
        lda     $3F                             ; BB2F
        adc     #$10                            ; BB31
        sta     $3F                             ; BB33
        lda     $11                             ; BB35
        cmp     #$A0                            ; BB37
        bcc     L_BB41                          ; BB39
        jsr     L_BB78                          ; BB3B
        jmp     L_BB44                          ; BB3E

; ----------------------------------------------------------------------------
L_BB41: jsr     L_BB7D                          ; BB41
L_BB44: jsr     LEDF5                           ; BB44
        clc                                     ; BB47
        lda     $3F                             ; BB48
        adc     #$10                            ; BB4A
        sta     $3F                             ; BB4C
        lda     #$BC                            ; BB4E
        sta     $45                             ; BB50
        jsr     LEDF5                           ; BB52
        rts                                     ; BB55

; ----------------------------------------------------------------------------
L_BB56: lda     $03FE                           ; BB56
        ora     #$01                            ; BB59
        sta     $03FE                           ; BB5B
        lda     #$4C                            ; BB5E
        jsr     LD851                           ; BB60
        jsr     LCBA9                           ; BB63
        lda     #$32                            ; BB66
        jsr     Enqueue_Sound_Command           ; BB68
L_BB6B: lda     $C5                             ; BB6B
        and     #$FB                            ; BB6D
        sta     $C5                             ; BB6F
        lda     #$00                            ; BB71
        sta     $D4                             ; BB73
        jmp     LD823                           ; BB75

; ----------------------------------------------------------------------------
L_BB78: lda     #$B8                            ; BB78
        sta     $45                             ; BB7A
        rts                                     ; BB7C

; ----------------------------------------------------------------------------
L_BB7D: lda     $11                             ; BB7D
        and     #$04                            ; BB7F
        beq     L_BB88                          ; BB81
        lda     #$B8                            ; BB83
        jmp     L_BB8A                          ; BB85

; ----------------------------------------------------------------------------
L_BB88: lda     #$BA                            ; BB88
L_BB8A: sta     $45                             ; BB8A
        rts                                     ; BB8C

; ----------------------------------------------------------------------------
L_BB8D: lda     #$B6                            ; BB8D
        sta     $45                             ; BB8F
        rts                                     ; BB91

; ----------------------------------------------------------------------------
L_BB92: dec     $51                             ; BB92
        lda     $51                             ; BB94
        lsr     a                               ; BB96
        lsr     a                               ; BB97
        tax                                     ; BB98
        lda     LBB9F,x                         ; BB99
        sta     $45                             ; BB9C
        rts                                     ; BB9E

; ----------------------------------------------------------------------------
LBB9F:  .byte   $B6,$B4,$B2,$B0,$B0,$B2,$B4,$B6 ; BB9F
; ----------------------------------------------------------------------------
L_BBA7: jsr     L_BBB8                          ; BBA7
        ldy     #$00                            ; BBAA
        lda     ($A6),y                         ; BBAC
        sta     $53                             ; BBAE
        sty     $4F                             ; BBB0
        jsr     LD2B9                           ; BBB2
        inc     $46                             ; BBB5
        rts                                     ; BBB7

; ----------------------------------------------------------------------------
L_BBB8: asl     a                               ; BBB8
        clc                                     ; BBB9
        adc     LBC1D                           ; BBBA
        sta     $A6                             ; BBBD
        lda     #$00                            ; BBBF
        adc     LBC1D+1                         ; BBC1
        sta     $A7                             ; BBC4
        rts                                     ; BBC6

; ----------------------------------------------------------------------------
L_BBC7: jsr     L_BBB8                          ; BBC7
        ldy     #$01                            ; BBCA
        lda     ($A6),y                         ; BBCC
        jsr     LD697                           ; BBCE
        sta     $45                             ; BBD1
        bne     L_BBE2                          ; BBD3
        lda     $53                             ; BBD5
        bne     L_BBE2                          ; BBD7
        jsr     LD804                           ; BBD9
        jsr     L_BBF5                          ; BBDC
        lda     #$FF                            ; BBDF
        rts                                     ; BBE1

; ----------------------------------------------------------------------------
L_BBE2: lda     #$00                            ; BBE2
        rts                                     ; BBE4

; ----------------------------------------------------------------------------
        jsr     L_BBB8                          ; BBE5
        ldy     #$01                            ; BBE8
        lda     ($A6),y                         ; BBEA
        jsr     LD697                           ; BBEC
        bne     L_BBF4                          ; BBEF
        jsr     L_BBF8                          ; BBF1
L_BBF4: rts                                     ; BBF4

; ----------------------------------------------------------------------------
L_BBF5: jsr     LD804                           ; BBF5
L_BBF8: jsr     LEB71                           ; BBF8
        and     #$0F                            ; BBFB
        sta     $00                             ; BBFD
        ldy     #$03                            ; BBFF
        lda     ($A6),y                         ; BC01
        cmp     $00                             ; BC03
        bcc     L_BC0C                          ; BC05
        lda     #$00                            ; BC07
        jmp     L_BC18                          ; BC09

; ----------------------------------------------------------------------------
L_BC0C: ldy     #$02                            ; BC0C
        lda     ($A6),y                         ; BC0E
        jsr     LDF0F                           ; BC10
        lda     #$2C                            ; BC13
        sta     $0400,x                         ; BC15
L_BC18: lda     #$4C                            ; BC18
        sta     $46                             ; BC1A
        rts                                     ; BC1C

; ----------------------------------------------------------------------------
LBC1D:  .addr   LBC1F                           ; BC1D
; ----------------------------------------------------------------------------
LBC1F:  .byte   $B0,$40,$FF,$FF,$FF,$FF,$FF,$FF ; BC1F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC27
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC2F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC37
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC3F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC47
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC4F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC57
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC5F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC67
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC6F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC77
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC7F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC87
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC8F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC97
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC9F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCA7
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCAF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCB7
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCBF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCC7
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCCF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCD7
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCDF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCE7
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCEF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCF7
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCFF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD07
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD0F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD17
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD1F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD27
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD2F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD37
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD3F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD47
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD4F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD57
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD5F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD67
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD6F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD77
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD7F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD87
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD8F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD97
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD9F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDA7
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDAF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDB7
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDBF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDC7
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDCF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDD7
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDDF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDE7
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDEF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDF7
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDFF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE07
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE0F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE17
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE1F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE27
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE2F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE37
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE3F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE47
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE4F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE57
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE5F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE67
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE6F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE77
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE7F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE87
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE8F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE97
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE9F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEA7
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEAF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEB7
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEBF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEC7
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BECF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BED7
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEDF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEE7
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEEF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEF7
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEFF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF07
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF0F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF17
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF1F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF27
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF2F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF37
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF3F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF47
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF4F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF57
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF5F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF67
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF6F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF77
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF7F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF87
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF8F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF97
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF9F
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFA7
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFAF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFB7
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFBF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFC7
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFCF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFD7
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFDF
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFE7
        .byte   $FF,$FF,$FF,$FF,$FF,$EE,$F4,$FF ; BFEF
        .byte   $4C,$3B,$F2,$7E,$EB,$F4,$FF,$FF ; BFF7
        .byte   $FF                             ; BFFF

; End of "BANK06" segment
; ----------------------------------------------------------------------------
.code

.endmacro

