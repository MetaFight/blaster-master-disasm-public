.macro MAC_L_ECB4
; ----------------------------------------------------------------------------
L_ECB4: ldx     $3C                             ; ECB4
        lda     $3E                             ; ECB6
        sta     SpriteStagingBuf + OamEntry::Screen_X,x ; ECB8
        lda     $44                             ; ECBB
        sta     SpriteStagingBuf + OamEntry::Attr,x ; ECBD
        lda     $45                             ; ECC0
        sta     SpriteStagingBuf + OamEntry::Tile,x ; ECC2
        lda     $3F                             ; ECC5
        sta     SpriteStagingBuf + OamEntry::Screen_Y,x ; ECC7
        txa                                     ; ECCA
        clc                                     ; ECCB
        adc     #$04                            ; ECCC
        sta     $3C                             ; ECCE
        rts                                     ; ECD0

; ----------------------------------------------------------------------------
L_ECD1: ldx     $3C                             ; ECD1
        lda     $3E                             ; ECD3
        sec                                     ; ECD5
        sbc     #$04                            ; ECD6
        bit     $44                             ; ECD8
        bvs     L_ECE8                          ; ECDA
        sta     SpriteStagingBuf + OamEntry::Screen_X,x ; ECDC
        clc                                     ; ECDF
        adc     #$08                            ; ECE0
        sta     SpriteStagingBuf + $04 + OamEntry::Screen_X,x ; ECE2
        jmp     L_ECF1                          ; ECE5

; ----------------------------------------------------------------------------
L_ECE8: sta     SpriteStagingBuf + $04 + OamEntry::Screen_X,x ; ECE8
        clc                                     ; ECEB
        adc     #$08                            ; ECEC
        sta     SpriteStagingBuf + OamEntry::Screen_X,x ; ECEE
L_ECF1: lda     $44                             ; ECF1
        sta     SpriteStagingBuf + OamEntry::Attr,x ; ECF3
        eor     #$40                            ; ECF6
        sta     SpriteStagingBuf + $04 + OamEntry::Attr,x ; ECF8
        lda     $45                             ; ECFB
        sta     SpriteStagingBuf + OamEntry::Tile,x ; ECFD
        sta     SpriteStagingBuf + $04 + OamEntry::Tile,x ; ED00
        lda     $3F                             ; ED03
        sta     SpriteStagingBuf + OamEntry::Screen_Y,x ; ED05
        sta     SpriteStagingBuf + $04 + OamEntry::Screen_Y,x ; ED08
        txa                                     ; ED0B
        clc                                     ; ED0C
        adc     #$08                            ; ED0D
        sta     $3C                             ; ED0F
        rts                                     ; ED11

; ----------------------------------------------------------------------------
L_ED12: ldx     $3C                             ; ED12
        lda     $3E                             ; ED14
        sec                                     ; ED16
        sbc     #$04                            ; ED17
        bit     $44                             ; ED19
        bvs     L_ED29                          ; ED1B
        sta     SpriteStagingBuf + OamEntry::Screen_X,x ; ED1D
        clc                                     ; ED20
        adc     #$08                            ; ED21
        sta     SpriteStagingBuf + $04 + OamEntry::Screen_X,x ; ED23
        jmp     L_ED32                          ; ED26

; ----------------------------------------------------------------------------
L_ED29: sta     SpriteStagingBuf + $04 + OamEntry::Screen_X,x ; ED29
        clc                                     ; ED2C
        adc     #$08                            ; ED2D
        sta     SpriteStagingBuf + OamEntry::Screen_X,x ; ED2F
L_ED32: lda     $44                             ; ED32
        sta     SpriteStagingBuf + OamEntry::Attr,x ; ED34
        sta     SpriteStagingBuf + $04 + OamEntry::Attr,x ; ED37
        lda     $45                             ; ED3A
        sta     SpriteStagingBuf + OamEntry::Tile,x ; ED3C
        clc                                     ; ED3F
        adc     #$10                            ; ED40
        sta     SpriteStagingBuf + $04 + OamEntry::Tile,x ; ED42
        lda     $3F                             ; ED45
        sta     SpriteStagingBuf + OamEntry::Screen_Y,x ; ED47
        sta     SpriteStagingBuf + $04 + OamEntry::Screen_Y,x ; ED4A
        txa                                     ; ED4D
        clc                                     ; ED4E
        adc     #$08                            ; ED4F
        sta     $3C                             ; ED51
        rts                                     ; ED53

; ----------------------------------------------------------------------------
L_ED54: ldx     $3C                             ; ED54
        lda     $3E                             ; ED56
        sta     SpriteStagingBuf + $04 + OamEntry::Screen_X,x ; ED58
        sec                                     ; ED5B
        sbc     #$08                            ; ED5C
        bit     $44                             ; ED5E
        bvs     L_ED6E                          ; ED60
        sta     SpriteStagingBuf + OamEntry::Screen_X,x ; ED62
        clc                                     ; ED65
        adc     #$10                            ; ED66
        sta     SpriteStagingBuf + $08 + OamEntry::Screen_X,x ; ED68
        jmp     L_ED77                          ; ED6B

; ----------------------------------------------------------------------------
L_ED6E: sta     SpriteStagingBuf + $08 + OamEntry::Screen_X,x ; ED6E
        clc                                     ; ED71
        adc     #$10                            ; ED72
        sta     SpriteStagingBuf + OamEntry::Screen_X,x ; ED74
L_ED77: lda     $44                             ; ED77
        sta     SpriteStagingBuf + OamEntry::Attr,x ; ED79
        sta     SpriteStagingBuf + $04 + OamEntry::Attr,x ; ED7C
        eor     #$40                            ; ED7F
        sta     SpriteStagingBuf + $08 + OamEntry::Attr,x ; ED81
        lda     $45                             ; ED84
        sta     SpriteStagingBuf + OamEntry::Tile,x ; ED86
        sta     SpriteStagingBuf + $08 + OamEntry::Tile,x ; ED89
        clc                                     ; ED8C
        adc     #$10                            ; ED8D
        sta     SpriteStagingBuf + $04 + OamEntry::Tile,x ; ED8F
        lda     $3F                             ; ED92
        sta     SpriteStagingBuf + OamEntry::Screen_Y,x ; ED94
        sta     SpriteStagingBuf + $04 + OamEntry::Screen_Y,x ; ED97
        sta     SpriteStagingBuf + $08 + OamEntry::Screen_Y,x ; ED9A
        txa                                     ; ED9D
        clc                                     ; ED9E
        adc     #$0C                            ; ED9F
        sta     $3C                             ; EDA1
        rts                                     ; EDA3

; ----------------------------------------------------------------------------
L_EDA4: ldx     $3C                             ; EDA4
        lda     $3E                             ; EDA6
        sta     SpriteStagingBuf + $04 + OamEntry::Screen_X,x ; EDA8
        sec                                     ; EDAB
        sbc     #$08                            ; EDAC
        bit     $44                             ; EDAE
        bvs     L_EDBE                          ; EDB0
        sta     SpriteStagingBuf + OamEntry::Screen_X,x ; EDB2
        clc                                     ; EDB5
        adc     #$10                            ; EDB6
        sta     SpriteStagingBuf + $08 + OamEntry::Screen_X,x ; EDB8
        jmp     L_EDC7                          ; EDBB

; ----------------------------------------------------------------------------
L_EDBE: sta     SpriteStagingBuf + $08 + OamEntry::Screen_X,x ; EDBE
        clc                                     ; EDC1
        adc     #$10                            ; EDC2
        sta     SpriteStagingBuf + OamEntry::Screen_X,x ; EDC4
L_EDC7: lda     $44                             ; EDC7
        sta     SpriteStagingBuf + OamEntry::Attr,x ; EDC9
        sta     SpriteStagingBuf + $04 + OamEntry::Attr,x ; EDCC
        sta     SpriteStagingBuf + $08 + OamEntry::Attr,x ; EDCF
        lda     $45                             ; EDD2
        sta     SpriteStagingBuf + OamEntry::Tile,x ; EDD4
        clc                                     ; EDD7
        adc     #$10                            ; EDD8
        sta     SpriteStagingBuf + $04 + OamEntry::Tile,x ; EDDA
        clc                                     ; EDDD
        adc     #$10                            ; EDDE
        sta     SpriteStagingBuf + $08 + OamEntry::Tile,x ; EDE0
        lda     $3F                             ; EDE3
        sta     SpriteStagingBuf + OamEntry::Screen_Y,x ; EDE5
        sta     SpriteStagingBuf + $04 + OamEntry::Screen_Y,x ; EDE8
        sta     SpriteStagingBuf + $08 + OamEntry::Screen_Y,x ; EDEB
        txa                                     ; EDEE
        clc                                     ; EDEF
        adc     #$0C                            ; EDF0
        sta     $3C                             ; EDF2
        rts                                     ; EDF4

; ----------------------------------------------------------------------------
L_EDF5: ldx     $3C                             ; EDF5
        lda     $3E                             ; EDF7
        sec                                     ; EDF9
        sbc     #$04                            ; EDFA
        bit     $44                             ; EDFC
        bvs     L_EE12                          ; EDFE
        sta     SpriteStagingBuf + OamEntry::Screen_X,x ; EE00
        sta     SpriteStagingBuf + $08 + OamEntry::Screen_X,x ; EE03
        clc                                     ; EE06
        adc     #$08                            ; EE07
        sta     SpriteStagingBuf + $04 + OamEntry::Screen_X,x ; EE09
        sta     SpriteStagingBuf + $0C + OamEntry::Screen_X,x ; EE0C
        jmp     L_EE21                          ; EE0F

; ----------------------------------------------------------------------------
L_EE12: sta     SpriteStagingBuf + $04 + OamEntry::Screen_X,x ; EE12
        sta     SpriteStagingBuf + $0C + OamEntry::Screen_X,x ; EE15
        clc                                     ; EE18
        adc     #$08                            ; EE19
        sta     SpriteStagingBuf + OamEntry::Screen_X,x ; EE1B
        sta     SpriteStagingBuf + $08 + OamEntry::Screen_X,x ; EE1E
L_EE21: lda     $44                             ; EE21
        sta     SpriteStagingBuf + OamEntry::Attr,x ; EE23
        sta     SpriteStagingBuf + $04 + OamEntry::Attr,x ; EE26
        sta     SpriteStagingBuf + $08 + OamEntry::Attr,x ; EE29
        sta     SpriteStagingBuf + $0C + OamEntry::Attr,x ; EE2C
        lda     $45                             ; EE2F
        sta     SpriteStagingBuf + OamEntry::Tile,x ; EE31
        clc                                     ; EE34
        adc     #$10                            ; EE35
        sta     SpriteStagingBuf + $04 + OamEntry::Tile,x ; EE37
        sec                                     ; EE3A
        sbc     #$0F                            ; EE3B
        sta     SpriteStagingBuf + $08 + OamEntry::Tile,x ; EE3D
        clc                                     ; EE40
        adc     #$10                            ; EE41
        sta     SpriteStagingBuf + $0C + OamEntry::Tile,x ; EE43
        lda     $3F                             ; EE46
        sec                                     ; EE48
        sbc     #$04                            ; EE49
        bit     $44                             ; EE4B
        bmi     L_EE61                          ; EE4D
        sta     SpriteStagingBuf + OamEntry::Screen_Y,x ; EE4F
        sta     SpriteStagingBuf + $04 + OamEntry::Screen_Y,x ; EE52
        clc                                     ; EE55
        adc     #$08                            ; EE56
        sta     SpriteStagingBuf + $08 + OamEntry::Screen_Y,x ; EE58
        sta     SpriteStagingBuf + $0C + OamEntry::Screen_Y,x ; EE5B
        jmp     L_EE70                          ; EE5E

; ----------------------------------------------------------------------------
L_EE61: sta     SpriteStagingBuf + $08 + OamEntry::Screen_Y,x ; EE61
        sta     SpriteStagingBuf + $0C + OamEntry::Screen_Y,x ; EE64
        clc                                     ; EE67
        adc     #$08                            ; EE68
        sta     SpriteStagingBuf + OamEntry::Screen_Y,x ; EE6A
        sta     SpriteStagingBuf + $04 + OamEntry::Screen_Y,x ; EE6D
L_EE70: txa                                     ; EE70
        clc                                     ; EE71
        adc     #$10                            ; EE72
        sta     $3C                             ; EE74
        rts                                     ; EE76

; ----------------------------------------------------------------------------
L_EE77: ldx     $3C                             ; EE77
        lda     $3E                             ; EE79
        sec                                     ; EE7B
        sbc     #$0C                            ; EE7C
        bit     $44                             ; EE7E
        bvs     L_EE9A                          ; EE80
        sta     SpriteStagingBuf + OamEntry::Screen_X,x ; EE82
        clc                                     ; EE85
        adc     #$08                            ; EE86
        sta     SpriteStagingBuf + $04 + OamEntry::Screen_X,x ; EE88
        clc                                     ; EE8B
        adc     #$08                            ; EE8C
        sta     SpriteStagingBuf + $08 + OamEntry::Screen_X,x ; EE8E
        clc                                     ; EE91
        adc     #$08                            ; EE92
        sta     SpriteStagingBuf + $0C + OamEntry::Screen_X,x ; EE94
        jmp     L_EEAF                          ; EE97

; ----------------------------------------------------------------------------
L_EE9A: sta     SpriteStagingBuf + $0C + OamEntry::Screen_X,x ; EE9A
        clc                                     ; EE9D
        adc     #$08                            ; EE9E
        sta     SpriteStagingBuf + $08 + OamEntry::Screen_X,x ; EEA0
        clc                                     ; EEA3
        adc     #$08                            ; EEA4
        sta     SpriteStagingBuf + $04 + OamEntry::Screen_X,x ; EEA6
        clc                                     ; EEA9
        adc     #$08                            ; EEAA
        sta     SpriteStagingBuf + OamEntry::Screen_X,x ; EEAC
L_EEAF: lda     $44                             ; EEAF
        sta     SpriteStagingBuf + OamEntry::Attr,x ; EEB1
        sta     SpriteStagingBuf + $04 + OamEntry::Attr,x ; EEB4
        sta     SpriteStagingBuf + $08 + OamEntry::Attr,x ; EEB7
        sta     SpriteStagingBuf + $0C + OamEntry::Attr,x ; EEBA
        lda     $45                             ; EEBD
        sta     SpriteStagingBuf + OamEntry::Tile,x ; EEBF
        clc                                     ; EEC2
        adc     #$10                            ; EEC3
        sta     SpriteStagingBuf + $04 + OamEntry::Tile,x ; EEC5
        clc                                     ; EEC8
        adc     #$10                            ; EEC9
        sta     SpriteStagingBuf + $08 + OamEntry::Tile,x ; EECB
        clc                                     ; EECE
        adc     #$10                            ; EECF
        sta     SpriteStagingBuf + $0C + OamEntry::Tile,x ; EED1
        lda     $3F                             ; EED4
        sta     SpriteStagingBuf + OamEntry::Screen_Y,x ; EED6
        sta     SpriteStagingBuf + $04 + OamEntry::Screen_Y,x ; EED9
        sta     SpriteStagingBuf + $08 + OamEntry::Screen_Y,x ; EEDC
        sta     SpriteStagingBuf + $0C + OamEntry::Screen_Y,x ; EEDF
        txa                                     ; EEE2
        clc                                     ; EEE3
        adc     #$10                            ; EEE4
        sta     $3C                             ; EEE6
        rts                                     ; EEE8

; ----------------------------------------------------------------------------
L_EEE9: ldx     $3C                             ; EEE9
        lda     $3E                             ; EEEB
        sta     SpriteStagingBuf + OamEntry::Screen_X,x ; EEED
        sta     SpriteStagingBuf + $04 + OamEntry::Screen_X,x ; EEF0
        lda     $44                             ; EEF3
        sta     SpriteStagingBuf + OamEntry::Attr,x ; EEF5
        sta     SpriteStagingBuf + $04 + OamEntry::Attr,x ; EEF8
        lda     $45                             ; EEFB
        sta     SpriteStagingBuf + OamEntry::Tile,x ; EEFD
        clc                                     ; EF00
        adc     #$01                            ; EF01
        sta     SpriteStagingBuf + $04 + OamEntry::Tile,x ; EF03
        lda     $3F                             ; EF06
        sec                                     ; EF08
        sbc     #$04                            ; EF09
        bit     $44                             ; EF0B
        bmi     L_EF1B                          ; EF0D
        sta     SpriteStagingBuf + OamEntry::Screen_Y,x ; EF0F
        clc                                     ; EF12
        adc     #$08                            ; EF13
        sta     SpriteStagingBuf + $04 + OamEntry::Screen_Y,x ; EF15
        jmp     L_EF24                          ; EF18

; ----------------------------------------------------------------------------
L_EF1B: sta     SpriteStagingBuf + $04 + OamEntry::Screen_Y,x ; EF1B
        clc                                     ; EF1E
        adc     #$08                            ; EF1F
        sta     SpriteStagingBuf + OamEntry::Screen_Y,x ; EF21
L_EF24: txa                                     ; EF24
        clc                                     ; EF25
        adc     #$08                            ; EF26
        sta     $3C                             ; EF28
        rts                                     ; EF2A

.endmacro

.macro MAC_L_F14E
; ----------------------------------------------------------------------------
L_F14E: pha                                     ; F14E
        lsr     a                               ; F14F
        lsr     a                               ; F150
        lsr     a                               ; F151
        lsr     a                               ; F152
        jsr     L_F157                          ; F153
        pla                                     ; F156
L_F157: and     #$0F                            ; F157
        clc                                     ; F159
        adc     #$30                            ; F15A
        cmp     #$3A                            ; F15C
        bcc     L_F163                          ; F15E
        clc                                     ; F160
        adc     #$07                            ; F161
L_F163: sta     $45                             ; F163
        jsr     L_ECB4                          ; F165
        lda     $3E                             ; F168
        clc                                     ; F16A
        adc     #$08                            ; F16B
        sta     $3E                             ; F16D
        rts                                     ; F16F

; ----------------------------------------------------------------------------
L_F170: ldy     #$00                            ; F170
L_F172: lda     (DispatchPtr),y                 ; F172
        beq     L_F186                          ; F174
        sta     $45                             ; F176
        jsr     L_ECB4                          ; F178
        lda     $3E                             ; F17B
        clc                                     ; F17D
        adc     #$08                            ; F17E
        sta     $3E                             ; F180
        iny                                     ; F182
        jmp     L_F172                          ; F183

; ----------------------------------------------------------------------------
L_F186: iny                                     ; F186
        tya                                     ; F187
        clc                                     ; F188
        adc     DispatchPtr                     ; F189
        sta     DispatchPtr                     ; F18B
        bcc     L_F191                          ; F18D
        inc     DispatchPtrHi                   ; F18F
L_F191: rts                                     ; F191

.endmacro

