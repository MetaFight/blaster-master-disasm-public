.macro MAC_L_ECB4
; ----------------------------------------------------------------------------
L_ECB4: ldx     $3C                             ; ECB4
        lda     $3E                             ; ECB6
        sta     $0603,x                         ; ECB8
        lda     $44                             ; ECBB
        sta     $0602,x                         ; ECBD
        lda     $45                             ; ECC0
        sta     $0601,x                         ; ECC2
        lda     $3F                             ; ECC5
        sta     $0600,x                         ; ECC7
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
        sta     $0603,x                         ; ECDC
        clc                                     ; ECDF
        adc     #$08                            ; ECE0
        sta     $0607,x                         ; ECE2
        jmp     L_ECF1                          ; ECE5

; ----------------------------------------------------------------------------
L_ECE8: sta     $0607,x                         ; ECE8
        clc                                     ; ECEB
        adc     #$08                            ; ECEC
        sta     $0603,x                         ; ECEE
L_ECF1: lda     $44                             ; ECF1
        sta     $0602,x                         ; ECF3
        eor     #$40                            ; ECF6
        sta     $0606,x                         ; ECF8
        lda     $45                             ; ECFB
        sta     $0601,x                         ; ECFD
        sta     $0605,x                         ; ED00
        lda     $3F                             ; ED03
        sta     $0600,x                         ; ED05
        sta     $0604,x                         ; ED08
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
        sta     $0603,x                         ; ED1D
        clc                                     ; ED20
        adc     #$08                            ; ED21
        sta     $0607,x                         ; ED23
        jmp     L_ED32                          ; ED26

; ----------------------------------------------------------------------------
L_ED29: sta     $0607,x                         ; ED29
        clc                                     ; ED2C
        adc     #$08                            ; ED2D
        sta     $0603,x                         ; ED2F
L_ED32: lda     $44                             ; ED32
        sta     $0602,x                         ; ED34
        sta     $0606,x                         ; ED37
        lda     $45                             ; ED3A
        sta     $0601,x                         ; ED3C
        clc                                     ; ED3F
        adc     #$10                            ; ED40
        sta     $0605,x                         ; ED42
        lda     $3F                             ; ED45
        sta     $0600,x                         ; ED47
        sta     $0604,x                         ; ED4A
        txa                                     ; ED4D
        clc                                     ; ED4E
        adc     #$08                            ; ED4F
        sta     $3C                             ; ED51
        rts                                     ; ED53

; ----------------------------------------------------------------------------
L_ED54: ldx     $3C                             ; ED54
        lda     $3E                             ; ED56
        sta     $0607,x                         ; ED58
        sec                                     ; ED5B
        sbc     #$08                            ; ED5C
        bit     $44                             ; ED5E
        bvs     L_ED6E                          ; ED60
        sta     $0603,x                         ; ED62
        clc                                     ; ED65
        adc     #$10                            ; ED66
        sta     $060B,x                         ; ED68
        jmp     L_ED77                          ; ED6B

; ----------------------------------------------------------------------------
L_ED6E: sta     $060B,x                         ; ED6E
        clc                                     ; ED71
        adc     #$10                            ; ED72
        sta     $0603,x                         ; ED74
L_ED77: lda     $44                             ; ED77
        sta     $0602,x                         ; ED79
        sta     $0606,x                         ; ED7C
        eor     #$40                            ; ED7F
        sta     $060A,x                         ; ED81
        lda     $45                             ; ED84
        sta     $0601,x                         ; ED86
        sta     $0609,x                         ; ED89
        clc                                     ; ED8C
        adc     #$10                            ; ED8D
        sta     $0605,x                         ; ED8F
        lda     $3F                             ; ED92
        sta     $0600,x                         ; ED94
        sta     $0604,x                         ; ED97
        sta     $0608,x                         ; ED9A
        txa                                     ; ED9D
        clc                                     ; ED9E
        adc     #$0C                            ; ED9F
        sta     $3C                             ; EDA1
        rts                                     ; EDA3

; ----------------------------------------------------------------------------
L_EDA4: ldx     $3C                             ; EDA4
        lda     $3E                             ; EDA6
        sta     $0607,x                         ; EDA8
        sec                                     ; EDAB
        sbc     #$08                            ; EDAC
        bit     $44                             ; EDAE
        bvs     L_EDBE                          ; EDB0
        sta     $0603,x                         ; EDB2
        clc                                     ; EDB5
        adc     #$10                            ; EDB6
        sta     $060B,x                         ; EDB8
        jmp     L_EDC7                          ; EDBB

; ----------------------------------------------------------------------------
L_EDBE: sta     $060B,x                         ; EDBE
        clc                                     ; EDC1
        adc     #$10                            ; EDC2
        sta     $0603,x                         ; EDC4
L_EDC7: lda     $44                             ; EDC7
        sta     $0602,x                         ; EDC9
        sta     $0606,x                         ; EDCC
        sta     $060A,x                         ; EDCF
        lda     $45                             ; EDD2
        sta     $0601,x                         ; EDD4
        clc                                     ; EDD7
        adc     #$10                            ; EDD8
        sta     $0605,x                         ; EDDA
        clc                                     ; EDDD
        adc     #$10                            ; EDDE
        sta     $0609,x                         ; EDE0
        lda     $3F                             ; EDE3
        sta     $0600,x                         ; EDE5
        sta     $0604,x                         ; EDE8
        sta     $0608,x                         ; EDEB
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
        sta     $0603,x                         ; EE00
        sta     $060B,x                         ; EE03
        clc                                     ; EE06
        adc     #$08                            ; EE07
        sta     $0607,x                         ; EE09
        sta     $060F,x                         ; EE0C
        jmp     L_EE21                          ; EE0F

; ----------------------------------------------------------------------------
L_EE12: sta     $0607,x                         ; EE12
        sta     $060F,x                         ; EE15
        clc                                     ; EE18
        adc     #$08                            ; EE19
        sta     $0603,x                         ; EE1B
        sta     $060B,x                         ; EE1E
L_EE21: lda     $44                             ; EE21
        sta     $0602,x                         ; EE23
        sta     $0606,x                         ; EE26
        sta     $060A,x                         ; EE29
        sta     $060E,x                         ; EE2C
        lda     $45                             ; EE2F
        sta     $0601,x                         ; EE31
        clc                                     ; EE34
        adc     #$10                            ; EE35
        sta     $0605,x                         ; EE37
        sec                                     ; EE3A
        sbc     #$0F                            ; EE3B
        sta     $0609,x                         ; EE3D
        clc                                     ; EE40
        adc     #$10                            ; EE41
        sta     $060D,x                         ; EE43
        lda     $3F                             ; EE46
        sec                                     ; EE48
        sbc     #$04                            ; EE49
        bit     $44                             ; EE4B
        bmi     L_EE61                          ; EE4D
        sta     $0600,x                         ; EE4F
        sta     $0604,x                         ; EE52
        clc                                     ; EE55
        adc     #$08                            ; EE56
        sta     $0608,x                         ; EE58
        sta     $060C,x                         ; EE5B
        jmp     L_EE70                          ; EE5E

; ----------------------------------------------------------------------------
L_EE61: sta     $0608,x                         ; EE61
        sta     $060C,x                         ; EE64
        clc                                     ; EE67
        adc     #$08                            ; EE68
        sta     $0600,x                         ; EE6A
        sta     $0604,x                         ; EE6D
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
        sta     $0603,x                         ; EE82
        clc                                     ; EE85
        adc     #$08                            ; EE86
        sta     $0607,x                         ; EE88
        clc                                     ; EE8B
        adc     #$08                            ; EE8C
        sta     $060B,x                         ; EE8E
        clc                                     ; EE91
        adc     #$08                            ; EE92
        sta     $060F,x                         ; EE94
        jmp     L_EEAF                          ; EE97

; ----------------------------------------------------------------------------
L_EE9A: sta     $060F,x                         ; EE9A
        clc                                     ; EE9D
        adc     #$08                            ; EE9E
        sta     $060B,x                         ; EEA0
        clc                                     ; EEA3
        adc     #$08                            ; EEA4
        sta     $0607,x                         ; EEA6
        clc                                     ; EEA9
        adc     #$08                            ; EEAA
        sta     $0603,x                         ; EEAC
L_EEAF: lda     $44                             ; EEAF
        sta     $0602,x                         ; EEB1
        sta     $0606,x                         ; EEB4
        sta     $060A,x                         ; EEB7
        sta     $060E,x                         ; EEBA
        lda     $45                             ; EEBD
        sta     $0601,x                         ; EEBF
        clc                                     ; EEC2
        adc     #$10                            ; EEC3
        sta     $0605,x                         ; EEC5
        clc                                     ; EEC8
        adc     #$10                            ; EEC9
        sta     $0609,x                         ; EECB
        clc                                     ; EECE
        adc     #$10                            ; EECF
        sta     $060D,x                         ; EED1
        lda     $3F                             ; EED4
        sta     $0600,x                         ; EED6
        sta     $0604,x                         ; EED9
        sta     $0608,x                         ; EEDC
        sta     $060C,x                         ; EEDF
        txa                                     ; EEE2
        clc                                     ; EEE3
        adc     #$10                            ; EEE4
        sta     $3C                             ; EEE6
        rts                                     ; EEE8

; ----------------------------------------------------------------------------
L_EEE9: ldx     $3C                             ; EEE9
        lda     $3E                             ; EEEB
        sta     $0603,x                         ; EEED
        sta     $0607,x                         ; EEF0
        lda     $44                             ; EEF3
        sta     $0602,x                         ; EEF5
        sta     $0606,x                         ; EEF8
        lda     $45                             ; EEFB
        sta     $0601,x                         ; EEFD
        clc                                     ; EF00
        adc     #$01                            ; EF01
        sta     $0605,x                         ; EF03
        lda     $3F                             ; EF06
        sec                                     ; EF08
        sbc     #$04                            ; EF09
        bit     $44                             ; EF0B
        bmi     L_EF1B                          ; EF0D
        sta     $0600,x                         ; EF0F
        clc                                     ; EF12
        adc     #$08                            ; EF13
        sta     $0604,x                         ; EF15
        jmp     L_EF24                          ; EF18

; ----------------------------------------------------------------------------
L_EF1B: sta     $0604,x                         ; EF1B
        clc                                     ; EF1E
        adc     #$08                            ; EF1F
        sta     $0600,x                         ; EF21
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
L_F172: lda     (L007A),y                       ; F172
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
        adc     L007A                           ; F189
        sta     L007A                           ; F18B
        bcc     L_F191                          ; F18D
        inc     $7B                             ; F18F
L_F191: rts                                     ; F191

.endmacro

