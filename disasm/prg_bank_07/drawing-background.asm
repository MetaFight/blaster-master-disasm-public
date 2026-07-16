.macro MAC_L_E953
; ----------------------------------------------------------------------------
L_E953: ldy     #$00                            ; E953
        jsr     L_E949                          ; E955
        jsr     L_E6F0                          ; E958
        jsr     L_E895                          ; E95B
L_E95E: jsr     L_E996                          ; E95E
        beq     L_E971                          ; E961
        bmi     L_E96B                          ; E963
        jsr     L_E974                          ; E965
        jmp     L_E95E                          ; E968

; ----------------------------------------------------------------------------
L_E96B: jsr     L_E986                          ; E96B
        jmp     L_E95E                          ; E96E

; ----------------------------------------------------------------------------
L_E971: jmp     L_E93F                          ; E971

; ----------------------------------------------------------------------------
L_E974: pha                                     ; E974
        jsr     L_E996                          ; E975
        pla                                     ; E978
L_E979: pha                                     ; E979
        lda     L0000                           ; E97A
        jsr     L_E9A2                          ; E97C
        pla                                     ; E97F
        sec                                     ; E980
        sbc     #$01                            ; E981
        bne     L_E979                          ; E983
        rts                                     ; E985

; ----------------------------------------------------------------------------
L_E986: pha                                     ; E986
        jsr     L_E996                          ; E987
        jsr     L_E9A2                          ; E98A
        pla                                     ; E98D
        sec                                     ; E98E
        sbc     #$01                            ; E98F
        and     #$7F                            ; E991
        bne     L_E986                          ; E993
        rts                                     ; E995

; ----------------------------------------------------------------------------
L_E996: lda     (L007A),y                       ; E996
        sta     L0000                           ; E998
        iny                                     ; E99A
        bne     L_E99F                          ; E99B
        inc     $7B                             ; E99D
L_E99F: lda     L0000                           ; E99F
        rts                                     ; E9A1

; ----------------------------------------------------------------------------
L_E9A2: sta     $2007                           ; E9A2
        rts                                     ; E9A5

; ----------------------------------------------------------------------------
L_E9A6: pha                                     ; E9A6
        jsr     L_EA03                          ; E9A7
        lda     $2002                           ; E9AA
        lda     #$20                            ; E9AD
        sta     $2006                           ; E9AF
        lda     #$00                            ; E9B2
        sta     $2006                           ; E9B4
        pla                                     ; E9B7
L_E9B8: pha                                     ; E9B8
        lda     $DB                             ; E9B9
        sta     $D3                             ; E9BB
        lda     #$30                            ; E9BD
        jsr     L_EA3A                          ; E9BF
        pla                                     ; E9C2
        jsr     L_EB51                          ; E9C3
        jsr     L_E953                          ; E9C6
        lda     $D3                             ; E9C9
        jsr     L_E61B                          ; E9CB
        rts                                     ; E9CE

; ----------------------------------------------------------------------------
L_E9CF: pha                                     ; E9CF
        jsr     L_EA03                          ; E9D0
        lda     $DB                             ; E9D3
        sta     $D3                             ; E9D5
        lda     #$30                            ; E9D7
        jsr     L_EA3A                          ; E9D9
        pla                                     ; E9DC
        jsr     L_EB51                          ; E9DD
        lda     $2002                           ; E9E0
        lda     #$20                            ; E9E3
        sta     $2006                           ; E9E5
        lda     #$00                            ; E9E8
        sta     $2006                           ; E9EA
        jsr     L_E953                          ; E9ED
        jsr     L_CE0F                          ; E9F0
L_E9F3: jsr     ScreenFade_Step                 ; E9F3
        jsr     WaitNMI                         ; E9F6
        lda     $B6                             ; E9F9
        bne     L_E9F3                          ; E9FB
        lda     $D3                             ; E9FD
        jsr     L_E61B                          ; E9FF
        rts                                     ; EA02

.endmacro

