.macro MAC_L_A8D2
; ----------------------------------------------------------------------------
L_A8D2: jmp     L_A8FA                          ; A8D2

; ----------------------------------------------------------------------------
        lda     #$06                            ; A8D5
        jsr     L_A2E9                          ; A8D7
        lda     #$01                            ; A8DA
        sta     $50                             ; A8DC
        lda     #$00                            ; A8DE
        sta     $4D                             ; A8E0
        lda     #$11                            ; A8E2
        sta     $4C                             ; A8E4
        jsr     LE0ED                           ; A8E6
        bpl     L_A8F2                          ; A8E9
        lda     #$00                            ; A8EB
        sec                                     ; A8ED
        sbc     $4C                             ; A8EE
        sta     $4C                             ; A8F0
L_A8F2: lda     #$00                            ; A8F2
        sta     $51                             ; A8F4
        sta     $47                             ; A8F6
        sta     $52                             ; A8F8
L_A8FA: rts                                     ; A8FA

; ----------------------------------------------------------------------------
LA8FB:  jmp     L_A994                          ; A8FB

; ----------------------------------------------------------------------------
        lda     #$80                            ; A8FE
        sta     $42                             ; A900
        lda     #$40                            ; A902
        sta     $43                             ; A904
        lda     $50                             ; A906
        bne     L_A975                          ; A908
        lda     $52                             ; A90A
        beq     L_A913                          ; A90C
        dec     $52                             ; A90E
        jmp     L_A93E                          ; A910

; ----------------------------------------------------------------------------
L_A913: lda     $11                             ; A913
        and     #$0F                            ; A915
        bne     L_A91E                          ; A917
        lda     #$42                            ; A919
        jsr     Enqueue_Sound_Command           ; A91B
L_A91E: jsr     LE0ED                           ; A91E
        sta     $01                             ; A921
        eor     $4C                             ; A923
        bpl     L_A93E                          ; A925
        lda     #$11                            ; A927
        ldx     $01                             ; A929
        bpl     L_A932                          ; A92B
        eor     #$FF                            ; A92D
        clc                                     ; A92F
        adc     #$01                            ; A930
L_A932: sta     $4C                             ; A932
        jsr     LEB71                           ; A934
        and     #$0F                            ; A937
        clc                                     ; A939
        adc     #$18                            ; A93A
        sta     $52                             ; A93C
L_A93E: lda     #$11                            ; A93E
        jsr     LD2B1                           ; A940
        bpl     L_A970                          ; A943
        jsr     LE083                           ; A945
        and     #$80                            ; A948
        beq     L_A994                          ; A94A
        jsr     LEB71                           ; A94C
        and     #$0F                            ; A94F
        bne     L_A967                          ; A951
        jsr     LEB71                           ; A953
        and     #$0F                            ; A956
        clc                                     ; A958
        adc     #$30                            ; A959
        sta     $52                             ; A95B
        lda     #$00                            ; A95D
        sec                                     ; A95F
        sbc     $4C                             ; A960
        sta     $4C                             ; A962
        jmp     L_A994                          ; A964

; ----------------------------------------------------------------------------
L_A967: lda     #$29                            ; A967
        jsr     Enqueue_Sound_Command           ; A969
        lda     #$D2                            ; A96C
        sta     $4D                             ; A96E
L_A970: inc     $50                             ; A970
        jmp     L_A994                          ; A972

; ----------------------------------------------------------------------------
L_A975: lda     #$02                            ; A975
        ldx     #$00                            ; A977
        jsr     LDFD1                           ; A979
        lda     #$30                            ; A97C
        ldx     #$4D                            ; A97E
        jsr     LEB14                           ; A980
        jsr     LE083                           ; A983
        and     #$40                            ; A986
        beq     L_A994                          ; A988
        lda     $4D                             ; A98A
        bmi     L_A994                          ; A98C
        dec     $50                             ; A98E
        lda     #$00                            ; A990
        sta     $4D                             ; A992
L_A994: lda     #$10                            ; A994
        sta     $40                             ; A996
        lda     #$08                            ; A998
        sta     $41                             ; A99A
        jsr     LEF2B                           ; A99C
        beq     L_A9A4                          ; A99F
        jmp     LD7F8                           ; A9A1

; ----------------------------------------------------------------------------
L_A9A4: lda     #$06                            ; A9A4
        jsr     L_A30A                          ; A9A6
        beq     L_A9AE                          ; A9A9
        jmp     L_A34D                          ; A9AB

; ----------------------------------------------------------------------------
L_A9AE: lda     #$00                            ; A9AE
        jsr     LE04E                           ; A9B0
        dec     $51                             ; A9B3
        bpl     L_A9C3                          ; A9B5
        lda     #$0C                            ; A9B7
        sta     $51                             ; A9B9
        dec     $47                             ; A9BB
        bpl     L_A9C3                          ; A9BD
        lda     #$02                            ; A9BF
        sta     $47                             ; A9C1
L_A9C3: ldx     $47                             ; A9C3
        lda     LA4DB,x                         ; A9C5
        jmp     LF011                           ; A9C8

.endmacro

