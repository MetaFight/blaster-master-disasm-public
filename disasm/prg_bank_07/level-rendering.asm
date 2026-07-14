.macro MAC_L_D908
L_D908: stx     $39                             ; D908
        lda     $22                             ; D90A
        and     #$3F                            ; D90C
        sta     $22                             ; D90E
        clc                                     ; D910
        adc     LD94E,x                         ; D911
        and     #$3F                            ; D914
        sta     $04                             ; D916
        lda     $23                             ; D918
        jsr     L_E704                          ; D91A
        sta     $23                             ; D91D
        clc                                     ; D91F
        adc     LD952,x                         ; D920
        jsr     L_E704                          ; D923
        sta     $05                             ; D926
        lda     $24                             ; D928
        clc                                     ; D92A
        adc     LD94E,x                         ; D92B
        sta     $08                             ; D92E
        lda     $25                             ; D930
        clc                                     ; D932
        adc     LD952,x                         ; D933
        sta     $09                             ; D936
        lda     $23                             ; D938
        and     #$01                            ; D93A
        beq     L_D943                          ; D93C
        txa                                     ; D93E
        clc                                     ; D93F
        adc     #$04                            ; D940
        tax                                     ; D942
L_D943: lda     $26                             ; D943
        clc                                     ; D945
        adc     LD956,x                         ; D946
        sta     $0C                             ; D949
        jmp     L_D95E                          ; D94B

; ----------------------------------------------------------------------------
LD94E:  .byte   $00,$20,$00,$00                 ; D94E
LD952:  .byte   $00,$00,$1D,$00                 ; D952
LD956:  .byte   $00,$10,$EE,$00,$00,$10,$FF,$00 ; D956
; ----------------------------------------------------------------------------
L_D95E: lda     $08                             ; D95E
        sta     $0A                             ; D960
        lda     $09                             ; D962
        sta     $0B                             ; D964
        jsr     L_D975                          ; D966
        jsr     L_D98C                          ; D969
        jsr     L_D9AF                          ; D96C
        jsr     L_D9D3                          ; D96F
        jmp     L_D9F5                          ; D972

; ----------------------------------------------------------------------------
L_D975: ldx     $14                             ; D975
        lda     LC9F4,x                         ; D977
        ldx     #$00                            ; D97A
        jsr     L_EA3C                          ; D97C
        ldy     #$02                            ; D97F
L_D981: lda     (L0000),y                       ; D981
        sta     $25,y                           ; D983
        iny                                     ; D986
        cpy     #$0C                            ; D987
        bne     L_D981                          ; D989
        rts                                     ; D98B

; ----------------------------------------------------------------------------
L_D98C: lda     $0B                             ; D98C
        and     #$F8                            ; D98E
        asl     a                               ; D990
        rol     $38                             ; D991
        asl     a                               ; D993
        rol     $38                             ; D994
        sta     $37                             ; D996
        lda     $0A                             ; D998
        and     #$F8                            ; D99A
        lsr     a                               ; D99C
        lsr     a                               ; D99D
        lsr     a                               ; D99E
        ora     $37                             ; D99F
        clc                                     ; D9A1
        adc     $2F                             ; D9A2
        sta     $37                             ; D9A4
        lda     $38                             ; D9A6
        and     #$03                            ; D9A8
        adc     $30                             ; D9AA
        sta     $38                             ; D9AC
        rts                                     ; D9AE

; ----------------------------------------------------------------------------
L_D9AF: ldy     #$00                            ; D9AF
        lda     $0B                             ; D9B1
        lsr     a                               ; D9B3
        lsr     a                               ; D9B4
        lsr     a                               ; D9B5
        lda     ($37),y                         ; D9B6
        rol     a                               ; D9B8
        rol     $36                             ; D9B9
        tax                                     ; D9BB
        lda     $0A                             ; D9BC
        lsr     a                               ; D9BE
        lsr     a                               ; D9BF
        lsr     a                               ; D9C0
        txa                                     ; D9C1
        rol     a                               ; D9C2
        rol     $36                             ; D9C3
        clc                                     ; D9C5
        adc     $2D                             ; D9C6
        sta     $35                             ; D9C8
        lda     $36                             ; D9CA
        and     #$03                            ; D9CC
        adc     $2E                             ; D9CE
        sta     $36                             ; D9D0
        rts                                     ; D9D2

; ----------------------------------------------------------------------------
L_D9D3: ldy     #$00                            ; D9D3
        lda     $0B                             ; D9D5
        lsr     a                               ; D9D7
        lsr     a                               ; D9D8
        lda     ($35),y                         ; D9D9
        rol     a                               ; D9DB
        rol     $34                             ; D9DC
        tax                                     ; D9DE
        lda     $0A                             ; D9DF
        lsr     a                               ; D9E1
        lsr     a                               ; D9E2
        txa                                     ; D9E3
        rol     a                               ; D9E4
        rol     $34                             ; D9E5
        clc                                     ; D9E7
        adc     $2B                             ; D9E8
        sta     $33                             ; D9EA
        lda     $34                             ; D9EC
        and     #$03                            ; D9EE
        adc     $2C                             ; D9F0
        sta     $34                             ; D9F2
        rts                                     ; D9F4

; ----------------------------------------------------------------------------
L_D9F5: ldy     #$00                            ; D9F5
        lda     $0B                             ; D9F7
        lsr     a                               ; D9F9
        lda     ($33),y                         ; D9FA
        rol     a                               ; D9FC
        rol     $32                             ; D9FD
        tax                                     ; D9FF
        lda     $0A                             ; DA00
        lsr     a                               ; DA02
        txa                                     ; DA03
        rol     a                               ; DA04
        rol     $32                             ; DA05
        clc                                     ; DA07
        adc     $29                             ; DA08
        sta     $31                             ; DA0A
        lda     $32                             ; DA0C
        and     #$03                            ; DA0E
        adc     $2A                             ; DA10
        sta     $32                             ; DA12
        rts                                     ; DA14

; ----------------------------------------------------------------------------
L_DA15: lda     $04                             ; DA15
        sta     $06                             ; DA17
        lda     $05                             ; DA19
        sta     $07                             ; DA1B
        lda     $08                             ; DA1D
        sta     $0A                             ; DA1F
        lda     $09                             ; DA21
        sta     $0B                             ; DA23
        lda     $0C                             ; DA25
        sta     $0D                             ; DA27
        lda     #$21                            ; DA29
        pha                                     ; DA2B
        ldy     #$00                            ; DA2C
L_DA2E: lda     $06                             ; DA2E
        sta     $C7                             ; DA30
        lda     $07                             ; DA32
        sta     $C8                             ; DA34
        jsr     L_E74D                          ; DA36
        jsr     L_F19B                          ; DA39
L_DA3C: lda     ($33),y                         ; DA3C
        tay                                     ; DA3E
        lda     ($27),y                         ; DA3F
        ldx     $0D                             ; DA41
        sta     $0500,x                         ; DA43
        jsr     L_DCDD                          ; DA46
        ldx     $19                             ; DA49
        ldy     #$00                            ; DA4B
        lda     ($31),y                         ; DA4D
        sta     $0300,x                         ; DA4F
        inx                                     ; DA52
        stx     $19                             ; DA53
        pla                                     ; DA55
        sec                                     ; DA56
        sbc     #$01                            ; DA57
        bne     L_DA5E                          ; DA59
        jmp     L_F1BC                          ; DA5B

; ----------------------------------------------------------------------------
L_DA5E: pha                                     ; DA5E
        inc     $06                             ; DA5F
        inc     $0A                             ; DA61
        lda     $06                             ; DA63
        lsr     a                               ; DA65
        bcc     L_DA71                          ; DA66
        inc     $31                             ; DA68
        bne     L_DA6E                          ; DA6A
        inc     $32                             ; DA6C
L_DA6E: jmp     L_DAAF                          ; DA6E

; ----------------------------------------------------------------------------
L_DA71: inc     $0D                             ; DA71
        lda     $0A                             ; DA73
        and     #$03                            ; DA75
        beq     L_DA82                          ; DA77
        inc     $33                             ; DA79
        bne     L_DA7F                          ; DA7B
        inc     $34                             ; DA7D
L_DA7F: jmp     L_DAAC                          ; DA7F

; ----------------------------------------------------------------------------
L_DA82: lda     $0A                             ; DA82
        and     #$07                            ; DA84
        beq     L_DA91                          ; DA86
        inc     $35                             ; DA88
        bne     L_DA8E                          ; DA8A
        inc     $36                             ; DA8C
L_DA8E: jmp     L_DAA9                          ; DA8E

; ----------------------------------------------------------------------------
L_DA91: inc     $37                             ; DA91
        bne     L_DA97                          ; DA93
        inc     $38                             ; DA95
L_DA97: lda     $0A                             ; DA97
        bne     L_DAA6                          ; DA99
        sec                                     ; DA9B
        lda     $37                             ; DA9C
        sbc     #$20                            ; DA9E
        sta     $37                             ; DAA0
        bcs     L_DAA6                          ; DAA2
        dec     $38                             ; DAA4
L_DAA6: jsr     L_D9AF                          ; DAA6
L_DAA9: jsr     L_D9D3                          ; DAA9
L_DAAC: jsr     L_D9F5                          ; DAAC
L_DAAF: lda     $06                             ; DAAF
        and     #$1F                            ; DAB1
        beq     L_DAB8                          ; DAB3
        jmp     L_DA3C                          ; DAB5

; ----------------------------------------------------------------------------
L_DAB8: lda     $06                             ; DAB8
        and     #$3F                            ; DABA
        sta     $06                             ; DABC
        jsr     L_F1BC                          ; DABE
        jmp     L_DA2E                          ; DAC1

; ----------------------------------------------------------------------------
L_DAC4: lda     $08                             ; DAC4
        sta     $0A                             ; DAC6
        lda     $09                             ; DAC8
        sta     $0B                             ; DACA
        lda     $04                             ; DACC
        sta     $06                             ; DACE
        lda     $05                             ; DAD0
        sta     $07                             ; DAD2
        lda     $0C                             ; DAD4
        sta     $0D                             ; DAD6
        lda     #$1E                            ; DAD8
        pha                                     ; DADA
        ldy     #$00                            ; DADB
L_DADD: lda     $06                             ; DADD
        sta     $C7                             ; DADF
        lda     $07                             ; DAE1
        sta     $C8                             ; DAE3
        jsr     L_E74D                          ; DAE5
        jsr     L_F19F                          ; DAE8
L_DAEB: pla                                     ; DAEB
        pha                                     ; DAEC
        cmp     #$01                            ; DAED
        bne     L_DAF7                          ; DAEF
        lda     $05                             ; DAF1
        and     #$01                            ; DAF3
        bne     L_DB04                          ; DAF5
L_DAF7: lda     ($33),y                         ; DAF7
        tay                                     ; DAF9
        lda     ($27),y                         ; DAFA
        ldx     $0D                             ; DAFC
        sta     $0500,x                         ; DAFE
        jsr     L_DCDD                          ; DB01
L_DB04: ldx     $19                             ; DB04
        ldy     #$00                            ; DB06
        lda     ($31),y                         ; DB08
        sta     $0300,x                         ; DB0A
        inx                                     ; DB0D
        stx     $19                             ; DB0E
        pla                                     ; DB10
        sec                                     ; DB11
        sbc     #$01                            ; DB12
        bne     L_DB19                          ; DB14
        jmp     L_F1BC                          ; DB16

; ----------------------------------------------------------------------------
L_DB19: pha                                     ; DB19
        inc     $07                             ; DB1A
        inc     $0B                             ; DB1C
        lda     $07                             ; DB1E
        lsr     a                               ; DB20
        bcc     L_DB31                          ; DB21
        clc                                     ; DB23
        lda     $31                             ; DB24
        adc     #$02                            ; DB26
        sta     $31                             ; DB28
        bcc     L_DB2E                          ; DB2A
        inc     $32                             ; DB2C
L_DB2E: jmp     L_DB85                          ; DB2E

; ----------------------------------------------------------------------------
L_DB31: lda     $0D                             ; DB31
        clc                                     ; DB33
        adc     #$11                            ; DB34
        sta     $0D                             ; DB36
        lda     $0B                             ; DB38
        and     #$03                            ; DB3A
        beq     L_DB4C                          ; DB3C
        clc                                     ; DB3E
        lda     $33                             ; DB3F
        adc     #$02                            ; DB41
        sta     $33                             ; DB43
        bcc     L_DB49                          ; DB45
        inc     $34                             ; DB47
L_DB49: jmp     L_DB82                          ; DB49

; ----------------------------------------------------------------------------
L_DB4C: lda     $0B                             ; DB4C
        and     #$07                            ; DB4E
        beq     L_DB60                          ; DB50
        clc                                     ; DB52
        lda     $35                             ; DB53
        adc     #$02                            ; DB55
        sta     $35                             ; DB57
        bcc     L_DB5D                          ; DB59
        inc     $36                             ; DB5B
L_DB5D: jmp     L_DB7F                          ; DB5D

; ----------------------------------------------------------------------------
L_DB60: clc                                     ; DB60
        lda     $37                             ; DB61
        adc     #$20                            ; DB63
        sta     $37                             ; DB65
        bcc     L_DB6B                          ; DB67
        inc     $38                             ; DB69
L_DB6B: lda     $0B                             ; DB6B
        bne     L_DB7C                          ; DB6D
        sec                                     ; DB6F
        lda     $37                             ; DB70
        sbc     #$00                            ; DB72
        sta     $37                             ; DB74
        lda     $38                             ; DB76
        sbc     #$04                            ; DB78
        sta     $38                             ; DB7A
L_DB7C: jsr     L_D9AF                          ; DB7C
L_DB7F: jsr     L_D9D3                          ; DB7F
L_DB82: jsr     L_D9F5                          ; DB82
L_DB85: lda     $07                             ; DB85
        cmp     #$1E                            ; DB87
        bcs     L_DB8E                          ; DB89
        jmp     L_DAEB                          ; DB8B

; ----------------------------------------------------------------------------
L_DB8E: lda     #$00                            ; DB8E
        sta     $07                             ; DB90
        jsr     L_F1BC                          ; DB92
        jmp     L_DADD                          ; DB95

; ----------------------------------------------------------------------------
L_DB98: lda     $04                             ; DB98
        sta     $06                             ; DB9A
        lda     $05                             ; DB9C
        sta     $07                             ; DB9E
        jsr     L_DC2D                          ; DBA0
        lda     #$09                            ; DBA3
        pha                                     ; DBA5
L_DBA6: lda     $06                             ; DBA6
        sta     $C7                             ; DBA8
        lda     $07                             ; DBAA
        sta     $C8                             ; DBAC
        jsr     L_E775                          ; DBAE
        jsr     L_F19B                          ; DBB1
L_DBB4: jsr     L_DC51                          ; DBB4
        ldx     $19                             ; DBB7
        sta     $0300,x                         ; DBB9
        inx                                     ; DBBC
        stx     $19                             ; DBBD
        pla                                     ; DBBF
        sec                                     ; DBC0
        sbc     #$01                            ; DBC1
        bne     L_DBC8                          ; DBC3
        jmp     L_F1BC                          ; DBC5

; ----------------------------------------------------------------------------
L_DBC8: pha                                     ; DBC8
        inc     $0D                             ; DBC9
        inc     $0D                             ; DBCB
        lda     $06                             ; DBCD
        clc                                     ; DBCF
        adc     #$04                            ; DBD0
        sta     $06                             ; DBD2
        and     #$1C                            ; DBD4
        bne     L_DBB4                          ; DBD6
        jsr     L_F1BC                          ; DBD8
        lda     $06                             ; DBDB
        and     #$3F                            ; DBDD
        sta     $06                             ; DBDF
        jmp     L_DBA6                          ; DBE1

; ----------------------------------------------------------------------------
L_DBE4: lda     $04                             ; DBE4
        sta     $06                             ; DBE6
        lda     #$00                            ; DBE8
        sta     $07                             ; DBEA
        lda     $05                             ; DBEC
        lsr     a                               ; DBEE
        sta     L0000                           ; DBEF
        asl     a                               ; DBF1
        asl     a                               ; DBF2
        asl     a                               ; DBF3
        asl     a                               ; DBF4
        clc                                     ; DBF5
        adc     L0000                           ; DBF6
        sta     L0000                           ; DBF8
        lda     $0C                             ; DBFA
        sec                                     ; DBFC
        sbc     #$01                            ; DBFD
        sec                                     ; DBFF
        sbc     L0000                           ; DC00
        sta     $0D                             ; DC02
        lda     $06                             ; DC04
        and     #$02                            ; DC06
        beq     L_DC0C                          ; DC08
        dec     $0D                             ; DC0A
L_DC0C: lda     $06                             ; DC0C
        sta     $C7                             ; DC0E
        lda     $07                             ; DC10
        sta     $C8                             ; DC12
        jsr     L_E775                          ; DC14
        jsr     L_F1A3                          ; DC17
L_DC1A: jsr     L_DCD4                          ; DC1A
        ldx     $19                             ; DC1D
        sta     $0300,x                         ; DC1F
        inc     $19                             ; DC22
        lda     $07                             ; DC24
        cmp     #$1E                            ; DC26
        bcc     L_DC1A                          ; DC28
        jmp     L_F1BC                          ; DC2A

; ----------------------------------------------------------------------------
L_DC2D: lda     $0C                             ; DC2D
        sta     $0D                             ; DC2F
        lda     $05                             ; DC31
        and     #$02                            ; DC33
        beq     L_DC3E                          ; DC35
        lda     $0D                             ; DC37
        sec                                     ; DC39
        sbc     #$11                            ; DC3A
        sta     $0D                             ; DC3C
L_DC3E: lda     $04                             ; DC3E
        and     #$02                            ; DC40
        beq     L_DC46                          ; DC42
        dec     $0D                             ; DC44
L_DC46: rts                                     ; DC46

; ----------------------------------------------------------------------------
L_DC47: lda     $0500,x                         ; DC47
        lsr     a                               ; DC4A
        ror     L0000                           ; DC4B
        lsr     a                               ; DC4D
        ror     L0000                           ; DC4E
        rts                                     ; DC50

; ----------------------------------------------------------------------------
L_DC51: lda     $39                             ; DC51
        lsr     a                               ; DC53
        bcs     L_DC64                          ; DC54
        lda     $39                             ; DC56
        eor     $05                             ; DC58
        and     #$02                            ; DC5A
        beq     L_DC64                          ; DC5C
        lda     $39                             ; DC5E
        beq     L_DC81                          ; DC60
        bne     L_DC9A                          ; DC62
L_DC64: ldx     $0D                             ; DC64
        jsr     L_DC47                          ; DC66
        inx                                     ; DC69
        jsr     L_DC47                          ; DC6A
        txa                                     ; DC6D
        clc                                     ; DC6E
        adc     #$10                            ; DC6F
        tax                                     ; DC71
        jsr     L_DC47                          ; DC72
        inx                                     ; DC75
        jsr     L_DC47                          ; DC76
        txa                                     ; DC79
        clc                                     ; DC7A
        adc     #$10                            ; DC7B
        tax                                     ; DC7D
        lda     L0000                           ; DC7E
        rts                                     ; DC80

; ----------------------------------------------------------------------------
L_DC81: ldx     $0D                             ; DC81
        dex                                     ; DC83
        jsr     L_DC47                          ; DC84
        inx                                     ; DC87
        jsr     L_DC47                          ; DC88
        txa                                     ; DC8B
        clc                                     ; DC8C
        adc     #$11                            ; DC8D
        tax                                     ; DC8F
        jsr     L_DC47                          ; DC90
        inx                                     ; DC93
        jsr     L_DC47                          ; DC94
        lda     L0000                           ; DC97
        rts                                     ; DC99

; ----------------------------------------------------------------------------
L_DC9A: ldx     $0D                             ; DC9A
        jsr     L_DC47                          ; DC9C
        inx                                     ; DC9F
        jsr     L_DC47                          ; DCA0
        txa                                     ; DCA3
        clc                                     ; DCA4
        adc     #$11                            ; DCA5
        tax                                     ; DCA7
        jsr     L_DC47                          ; DCA8
        inx                                     ; DCAB
        jsr     L_DC47                          ; DCAC
        lda     L0000                           ; DCAF
        rts                                     ; DCB1

; ----------------------------------------------------------------------------
L_DCB2: lda     $07                             ; DCB2
        eor     $05                             ; DCB4
        and     #$1E                            ; DCB6
        bne     L_DCBC                          ; DCB8
        inc     $0D                             ; DCBA
L_DCBC: ldx     $0D                             ; DCBC
        jsr     L_DC47                          ; DCBE
        inx                                     ; DCC1
        jsr     L_DC47                          ; DCC2
        txa                                     ; DCC5
        clc                                     ; DCC6
        adc     #$10                            ; DCC7
        tax                                     ; DCC9
        stx     $0D                             ; DCCA
        lda     $07                             ; DCCC
        clc                                     ; DCCE
        adc     #$02                            ; DCCF
        sta     $07                             ; DCD1
        rts                                     ; DCD3

; ----------------------------------------------------------------------------
L_DCD4: jsr     L_DCB2                          ; DCD4
        jsr     L_DCB2                          ; DCD7
        lda     L0000                           ; DCDA
        rts                                     ; DCDC

; ----------------------------------------------------------------------------
L_DCDD: tay                                     ; DCDD
        and     #$20                            ; DCDE
        beq     L_DCFB                          ; DCE0
        lda     $0A                             ; DCE2
        ora     $0B                             ; DCE4
        lsr     a                               ; DCE6
        bcs     L_DCFB                          ; DCE7
        ldx     $93                             ; DCE9
        cpx     #$04                            ; DCEB
        beq     L_DCFB                          ; DCED
        sty     $AA,x                           ; DCEF
        lda     $0A                             ; DCF1
        sta     $AE,x                           ; DCF3
        lda     $0B                             ; DCF5
        sta     $B2,x                           ; DCF7
        inc     $93                             ; DCF9
L_DCFB: rts                                     ; DCFB

; ----------------------------------------------------------------------------
.endmacro

