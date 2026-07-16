.macro MAC_L_F011
; ----------------------------------------------------------------------------
L_F011: pha                                     ; F011
        ldx     #$1A                            ; F012
        lda     $FF                             ; F014
        and     #$20                            ; F016
        bne     L_F01C                          ; F018
        ldx     #$41                            ; F01A
L_F01C: txa                                     ; F01C
        jsr     L_EA3A                          ; F01D
        pla                                     ; F020
        jsr     L_F029                          ; F021
        lda     $D3                             ; F024
        jmp     L_E61B                          ; F026

; ----------------------------------------------------------------------------
L_F029: asl     a                               ; F029
        tay                                     ; F02A
        bcc     L_F02F                          ; F02B
        inc     $7B                             ; F02D
L_F02F: lda     (L007A),y                       ; F02F
        iny                                     ; F031
        tax                                     ; F032
        lda     (L007A),y                       ; F033
        sta     $7B                             ; F035
        stx     L007A                           ; F037
        lda     $4F                             ; F039
        beq     L_F04B                          ; F03B
        lda     $44                             ; F03D
        and     #$FC                            ; F03F
        sta     $44                             ; F041
        lda     $10                             ; F043
        and     #$03                            ; F045
        ora     $44                             ; F047
        sta     $44                             ; F049
L_F04B: lda     #$00                            ; F04B
        pha                                     ; F04D
        pha                                     ; F04E
L_F04F: lda     $3C                             ; F04F
        cmp     #$40                            ; F051
        bcc     L_F058                          ; F053
        jsr     L_EC73                          ; F055
L_F058: ldy     #$00                            ; F058
        lda     $44                             ; F05A
        asl     a                               ; F05C
        asl     a                               ; F05D
        lda     (L007A),y                       ; F05E
        iny                                     ; F060
        bcc     L_F065                          ; F061
        eor     #$FF                            ; F063
L_F065: adc     $3E                             ; F065
        sta     $3E                             ; F067
        lda     $44                             ; F069
        asl     a                               ; F06B
        lda     (L007A),y                       ; F06C
        iny                                     ; F06E
        bcc     L_F073                          ; F06F
        eor     #$FF                            ; F071
L_F073: adc     $3F                             ; F073
        sta     $3F                             ; F075
        ldy     #$03                            ; F077
        lda     (L007A),y                       ; F079
        sta     $45                             ; F07B
        dey                                     ; F07D
        lda     (L007A),y                       ; F07E
        tax                                     ; F080
        and     #$0C                            ; F081
        beq     L_F0E8                          ; F083
        cmp     #$04                            ; F085
        bne     L_F08C                          ; F087
        jmp     L_F11E                          ; F089

; ----------------------------------------------------------------------------
L_F08C: cmp     #$08                            ; F08C
        beq     L_F108                          ; F08E
        lda     $44                             ; F090
        pha                                     ; F092
        and     #$C3                            ; F093
        eor     (L007A),y                       ; F095
        sta     $44                             ; F097
        ldy     #$04                            ; F099
        lda     (L007A),y                       ; F09B
        jsr     L_F0BC                          ; F09D
        pla                                     ; F0A0
        sta     $44                             ; F0A1
L_F0A3: ldy     #$02                            ; F0A3
        lda     (L007A),y                       ; F0A5
        and     #$10                            ; F0A7
        beq     L_F0AE                          ; F0A9
        jmp     L_F138                          ; F0AB

; ----------------------------------------------------------------------------
L_F0AE: clc                                     ; F0AE
        lda     L007A                           ; F0AF
        adc     #$05                            ; F0B1
        sta     L007A                           ; F0B3
        bcc     L_F0B9                          ; F0B5
        inc     $7B                             ; F0B7
L_F0B9: jmp     L_F04F                          ; F0B9

; ----------------------------------------------------------------------------
L_F0BC: tax                                     ; F0BC
        dex                                     ; F0BD
        bne     L_F0C3                          ; F0BE
        jmp     L_ECD1                          ; F0C0

; ----------------------------------------------------------------------------
L_F0C3: dex                                     ; F0C3
        bne     L_F0C9                          ; F0C4
        jmp     L_ED12                          ; F0C6

; ----------------------------------------------------------------------------
L_F0C9: dex                                     ; F0C9
        bne     L_F0CF                          ; F0CA
        jmp     L_ED54                          ; F0CC

; ----------------------------------------------------------------------------
L_F0CF: dex                                     ; F0CF
        bne     L_F0D5                          ; F0D0
        jmp     L_EDA4                          ; F0D2

; ----------------------------------------------------------------------------
L_F0D5: dex                                     ; F0D5
        bne     L_F0DB                          ; F0D6
        jmp     L_EDF5                          ; F0D8

; ----------------------------------------------------------------------------
L_F0DB: dex                                     ; F0DB
        bne     L_F0E1                          ; F0DC
        jmp     L_EE77                          ; F0DE

; ----------------------------------------------------------------------------
L_F0E1: dex                                     ; F0E1
        bne     L_F0E7                          ; F0E2
        jmp     L_EEE9                          ; F0E4

; ----------------------------------------------------------------------------
L_F0E7: rts                                     ; F0E7

; ----------------------------------------------------------------------------
L_F0E8: ldx     $3C                             ; F0E8
        lda     $3E                             ; F0EA
        sta     $0603,x                         ; F0EC
        lda     $3F                             ; F0EF
        sta     $0600,x                         ; F0F1
        lda     $45                             ; F0F4
        sta     $0601,x                         ; F0F6
        lda     $44                             ; F0F9
        and     #$C3                            ; F0FB
        eor     (L007A),y                       ; F0FD
        sta     $0602,x                         ; F0FF
        txa                                     ; F102
        clc                                     ; F103
        adc     #$04                            ; F104
        sta     $3C                             ; F106
L_F108: ldy     #$02                            ; F108
        lda     (L007A),y                       ; F10A
        and     #$10                            ; F10C
        bne     L_F138                          ; F10E
        clc                                     ; F110
        lda     L007A                           ; F111
        adc     #$04                            ; F113
        sta     L007A                           ; F115
        bcc     L_F11B                          ; F117
        inc     $7B                             ; F119
L_F11B: jmp     L_F04F                          ; F11B

; ----------------------------------------------------------------------------
L_F11E: txa                                     ; F11E
        and     #$C3                            ; F11F
        eor     $44                             ; F121
        sta     $44                             ; F123
        lda     $7B                             ; F125
        pha                                     ; F127
        lda     L007A                           ; F128
        pha                                     ; F12A
        ldy     #$04                            ; F12B
        lda     (L007A),y                       ; F12D
        sta     $7B                             ; F12F
        lda     $45                             ; F131
        sta     L007A                           ; F133
        jmp     L_F04F                          ; F135

; ----------------------------------------------------------------------------
L_F138: pla                                     ; F138
        sta     L007A                           ; F139
        pla                                     ; F13B
        sta     $7B                             ; F13C
        beq     L_F0E7                          ; F13E
        ldy     #$02                            ; F140
        lda     (L007A),y                       ; F142
        and     #$C0                            ; F144
        eor     $44                             ; F146
        sta     $44                             ; F148
        jmp     L_F0A3                          ; F14A

; ----------------------------------------------------------------------------
        rts                                     ; F14D

.endmacro

