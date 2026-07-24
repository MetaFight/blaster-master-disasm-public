.macro MAC_L_AA5A
; ----------------------------------------------------------------------------
L_AA5A: jmp     L_AA6B                          ; AA5A

; ----------------------------------------------------------------------------
        lda     #$08                            ; AA5D
        jsr     L_A2E9                          ; AA5F
        lda     #$02                            ; AA62
        sta     $52                             ; AA64
        jsr     LEB71                           ; AA66
        sta     $51                             ; AA69
L_AA6B: rts                                     ; AA6B

; ----------------------------------------------------------------------------
LAA6C:  jmp     L_AAD4                          ; AA6C

; ----------------------------------------------------------------------------
        lda     #$80                            ; AA6F
        sta     $42                             ; AA71
        lda     #$80                            ; AA73
        sta     $43                             ; AA75
        inc     $51                             ; AA77
        lda     $51                             ; AA79
        and     #$01                            ; AA7B
        bne     L_AAD4                          ; AA7D
        lda     $51                             ; AA7F
        bpl     L_AA8E                          ; AA81
        ldx     $52                             ; AA83
        cpx     #$02                            ; AA85
        bcc     L_AAD4                          ; AA87
        dec     $52                             ; AA89
        jmp     L_AA96                          ; AA8B

; ----------------------------------------------------------------------------
L_AA8E: ldx     $52                             ; AA8E
        cpx     #$20                            ; AA90
        bcs     L_AAD4                          ; AA92
        inc     $52                             ; AA94
L_AA96: lda     $52                             ; AA96
        cmp     #$04                            ; AA98
        bcc     L_AAD4                          ; AA9A
        lda     $51                             ; AA9C
        and     #$07                            ; AA9E
        bne     L_AAD4                          ; AAA0
        jsr     LDF0F                           ; AAA2
        beq     L_AAD4                          ; AAA5
        jsr     LEB71                           ; AAA7
        and     #$40                            ; AAAA
        bne     L_AAB2                          ; AAAC
        lda     #$80                            ; AAAE
        bne     L_AAB4                          ; AAB0
L_AAB2: lda     #$00                            ; AAB2
L_AAB4: sta     PlayerObj_Facing,x              ; AAB4
        lda     $52                             ; AAB7
        asl     a                               ; AAB9
        clc                                     ; AABA
        adc     #$01                            ; AABB
        sta     $040B,x                         ; AABD
        lda     LoadedObj_Y_Pixel               ; AAC0
        clc                                     ; AAC2
        adc     #$40                            ; AAC3
        sta     PlayerObj_Y_Pixel,x             ; AAC5
        lda     LoadedObj_Y_MetaTile            ; AAC8
        adc     #$00                            ; AACA
        sta     PlayerObj_Y_MetaTile,x          ; AACC
        lda     #$46                            ; AACF
        sta     PlayerObj_Type,x                ; AAD1
L_AAD4: lda     #$10                            ; AAD4
        sta     $40                             ; AAD6
        lda     #$10                            ; AAD8
        sta     $41                             ; AADA
        jsr     LEF2B                           ; AADC
        beq     L_AAE4                          ; AADF
        jmp     LD7F8                           ; AAE1

; ----------------------------------------------------------------------------
L_AAE4: lda     #$08                            ; AAE4
        jsr     L_A30A                          ; AAE6
        beq     L_AAEE                          ; AAE9
        jmp     L_A34D                          ; AAEB

; ----------------------------------------------------------------------------
L_AAEE: jsr     LE07B                           ; AAEE
        lsr     a                               ; AAF1
        lsr     a                               ; AAF2
        lsr     a                               ; AAF3
        lsr     a                               ; AAF4
        and     #$0E                            ; AAF5
        tax                                     ; AAF7
        lda     LAB04,x                         ; AAF8
        sta     $44                             ; AAFB
        lda     LAB03,x                         ; AAFD
        jmp     LF011                           ; AB00

; ----------------------------------------------------------------------------
LAB03:  .byte   $72                             ; AB03
LAB04:  .byte   $81,$72,$81,$72,$81,$72,$81,$73 ; AB04
        .byte   $81,$73,$81,$73,$81,$73,$81     ; AB0C
.endmacro

