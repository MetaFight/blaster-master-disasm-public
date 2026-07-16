.macro MAC_L_AF3A
; ----------------------------------------------------------------------------
L_AF3A: jmp     L_AF60                          ; AF3A

; ----------------------------------------------------------------------------
        lda     #$0F                            ; AF3D
        jsr     L_A2E9                          ; AF3F
        jsr     LE0ED                           ; AF42
        and     #$80                            ; AF45
        sta     $47                             ; AF47
        bpl     L_AF4F                          ; AF49
        lda     #$10                            ; AF4B
        bne     L_AF51                          ; AF4D
L_AF4F: lda     #$F0                            ; AF4F
L_AF51: sta     $52                             ; AF51
        lda     #$00                            ; AF53
        sta     $50                             ; AF55
        lda     #$00                            ; AF57
        sta     $51                             ; AF59
        ldy     #$28                            ; AF5B
        jsr     LE1BD                           ; AF5D
L_AF60: rts                                     ; AF60

; ----------------------------------------------------------------------------
LAF61:  jmp     L_AFD1                          ; AF61

; ----------------------------------------------------------------------------
        lda     #$80                            ; AF64
        sta     $42                             ; AF66
        lda     #$80                            ; AF68
        sta     $43                             ; AF6A
        lda     $51                             ; AF6C
        beq     L_AF72                          ; AF6E
        dec     $51                             ; AF70
L_AF72: lda     $50                             ; AF72
        beq     L_AF8C                          ; AF74
        jsr     LE07B                           ; AF76
        asl     a                               ; AF79
        asl     a                               ; AF7A
        bne     L_AF81                          ; AF7B
        lda     #$00                            ; AF7D
        sta     $50                             ; AF7F
L_AF81: ldy     #$28                            ; AF81
        jsr     LE1BD                           ; AF83
        jsr     LE083                           ; AF86
        jmp     L_AFD1                          ; AF89

; ----------------------------------------------------------------------------
L_AF8C: jsr     LE0ED                           ; AF8C
        bpl     L_AF96                          ; AF8F
        eor     #$FF                            ; AF91
        clc                                     ; AF93
        adc     #$01                            ; AF94
L_AF96: cmp     #$01                            ; AF96
        bcs     L_AFC4                          ; AF98
        lda     $51                             ; AF9A
        bne     L_AFC4                          ; AF9C
        jsr     LDF0F                           ; AF9E
        beq     L_AFBC                          ; AFA1
        lda     #$3A                            ; AFA3
        sta     $0400,x                         ; AFA5
        lda     $52                             ; AFA8
        bpl     L_AFB1                          ; AFAA
        eor     #$FF                            ; AFAC
        clc                                     ; AFAE
        adc     #$01                            ; AFAF
L_AFB1: ldx     $4C                             ; AFB1
        bmi     L_AFBC                          ; AFB3
        eor     #$FF                            ; AFB5
        clc                                     ; AFB7
        adc     #$01                            ; AFB8
        sta     $52                             ; AFBA
L_AFBC: lda     #$40                            ; AFBC
        sta     $51                             ; AFBE
        lda     #$01                            ; AFC0
        sta     $50                             ; AFC2
L_AFC4: jsr     LE083                           ; AFC4
        bpl     L_AFD1                          ; AFC7
        jsr     LE0D8                           ; AFC9
        ldy     #$28                            ; AFCC
        jsr     LE1BD                           ; AFCE
L_AFD1: lda     #$10                            ; AFD1
        sta     $40                             ; AFD3
        lda     #$10                            ; AFD5
        sta     $41                             ; AFD7
        jsr     LEF2B                           ; AFD9
        beq     L_AFE1                          ; AFDC
        jmp     LD7F8                           ; AFDE

; ----------------------------------------------------------------------------
L_AFE1: lda     #$0F                            ; AFE1
        jsr     L_A30A                          ; AFE3
        beq     L_AFEB                          ; AFE6
        jmp     L_A34D                          ; AFE8

; ----------------------------------------------------------------------------
L_AFEB: lda     #$00                            ; AFEB
        jsr     LE04E                           ; AFED
        ldx     #$2F                            ; AFF0
        lda     $50                             ; AFF2
        beq     L_AFF7                          ; AFF4
        inx                                     ; AFF6
L_AFF7: txa                                     ; AFF7
        jmp     LF011                           ; AFF8

; ----------------------------------------------------------------------------
        rts                                     ; AFFB

.endmacro

