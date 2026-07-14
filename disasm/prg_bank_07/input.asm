.macro MAC_L_E8A9
L_E8A9: lda     $F7                             ; E8A9
        sta     $F5                             ; E8AB
        lda     $F8                             ; E8AD
        sta     $F6                             ; E8AF
        jsr     L_E914                          ; E8B1
        lda     $F7                             ; E8B4
        pha                                     ; E8B6
        jsr     L_E914                          ; E8B7
        pla                                     ; E8BA
        cmp     $F7                             ; E8BB
        beq     L_E8C2                          ; E8BD
        jsr     L_E914                          ; E8BF
L_E8C2: lda     $F7                             ; E8C2
        sta     $DE                             ; E8C4
        lda     $F8                             ; E8C6
        sta     $DF                             ; E8C8
        jsr     L_E2C1                          ; E8CA
        jsr     L_E287                          ; E8CD
        ldx     #$01                            ; E8D0
L_E8D2: lda     $F7,x                           ; E8D2
        eor     $F5,x                           ; E8D4
        and     $F7,x                           ; E8D6
        sta     $F5,x                           ; E8D8
        dex                                     ; E8DA
        bpl     L_E8D2                          ; E8DB
        lda     $F5                             ; E8DD
        sta     $F3                             ; E8DF
        lda     $F6                             ; E8E1
        sta     $F4                             ; E8E3
        lda     $F5                             ; E8E5
        ora     $F6                             ; E8E7
        bne     L_E907                          ; E8E9
        lda     $F7                             ; E8EB
        ora     $F8                             ; E8ED
        beq     L_E907                          ; E8EF
        inc     $78                             ; E8F1
        lda     $78                             ; E8F3
        cmp     #$19                            ; E8F5
        bcc     L_E90B                          ; E8F7
        lda     $F7                             ; E8F9
        sta     $F5                             ; E8FB
        lda     $F8                             ; E8FD
        sta     $F6                             ; E8FF
        lda     #$14                            ; E901
        sta     $78                             ; E903
        bne     L_E90B                          ; E905
L_E907: lda     #$00                            ; E907
        sta     $78                             ; E909
L_E90B: lda     $F5                             ; E90B
        beq     L_E913                          ; E90D
        lda     $F7                             ; E90F
        sta     $F5                             ; E911
L_E913: rts                                     ; E913

; ----------------------------------------------------------------------------
L_E914: ldx     $FB                             ; E914
        inx                                     ; E916
        stx     $4016                           ; E917
        dex                                     ; E91A
        stx     $4016                           ; E91B
        ldx     #$08                            ; E91E
L_E920: lda     $4016                           ; E920
        and     #$03                            ; E923
        cmp     #$01                            ; E925
        rol     $F7                             ; E927
        lda     $4017                           ; E929
        and     #$03                            ; E92C
        cmp     #$01                            ; E92E
        rol     $F8                             ; E930
        dex                                     ; E932
        bne     L_E920                          ; E933
        rts                                     ; E935

; ----------------------------------------------------------------------------
; Set NmiFrameFlag bit 7 then spin until NMI handler clears it; guarantees 60 Hz pacing
.endmacro

