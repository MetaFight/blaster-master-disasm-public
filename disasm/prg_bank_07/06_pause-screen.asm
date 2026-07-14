.macro MAC_L_C55D
L_C55D: lda     #$00                            ; C55D
        jsr     L_E61B                          ; C55F
        jsr     L_F833                          ; C562
        lda     #$18                            ; C565
        jsr     Enqueue_Sound_Command           ; C567
        jmp     L_C35E                          ; C56A

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_F833
L_F833: lda     #$10                            ; F833
        sta     $D4                             ; F835
        lda     #$15                            ; F837
        sta     $D5                             ; F839
        jsr     L_EA03                          ; F83B
        lda     $2002                           ; F83E
        lda     #$20                            ; F841
        sta     $2006                           ; F843
        lda     #$00                            ; F846
        sta     $2006                           ; F848
        lda     #$00                            ; F84B
        jsr     L_E9B8                          ; F84D
        jsr     L_F90B                          ; F850
        jsr     L_F927                          ; F853
        jsr     L_F9A5                          ; F856
        lda     $FF                             ; F859
        ora     #$20                            ; F85B
        sta     $FF                             ; F85D
        sta     $2000                           ; F85F
        jsr     L_E6E9                          ; F862
        jsr     L_CE0F                          ; F865
L_F868: jsr     WaitNMI                         ; F868
        jsr     ScreenFade_Step                 ; F86B
        lda     $15                             ; F86E
        bmi     L_F868                          ; F870
L_F872: jsr     WaitNMI                         ; F872
        jsr     L_F88C                          ; F875
        lda     $F3                             ; F878
        and     #$10                            ; F87A
        beq     L_F872                          ; F87C
        jsr     L_CE27                          ; F87E
L_F881: jsr     WaitNMI                         ; F881
        jsr     ScreenFade_Step                 ; F884
        bit     $15                             ; F887
        bvs     L_F881                          ; F889
        rts                                     ; F88B

; ----------------------------------------------------------------------------
L_F88C: lda     $F5                             ; F88C
        and     #$03                            ; F88E
        cmp     #$01                            ; F890
        beq     L_F89A                          ; F892
        cmp     #$02                            ; F894
        beq     L_F89F                          ; F896
        bne     L_F8A6                          ; F898
L_F89A: inc     $BA                             ; F89A
        jmp     L_F8A1                          ; F89C

; ----------------------------------------------------------------------------
L_F89F: dec     $BA                             ; F89F
L_F8A1: lda     #$19                            ; F8A1
        jsr     Enqueue_Sound_Command           ; F8A3
L_F8A6: lda     $BA                             ; F8A6
        bpl     L_F8AE                          ; F8A8
        lda     #$00                            ; F8AA
        beq     L_F8B4                          ; F8AC
L_F8AE: cmp     #$03                            ; F8AE
        bcc     L_F8B6                          ; F8B0
        lda     #$02                            ; F8B2
L_F8B4: sta     $BA                             ; F8B4
L_F8B6: asl     a                               ; F8B6
        asl     a                               ; F8B7
        asl     a                               ; F8B8
        asl     a                               ; F8B9
        asl     a                               ; F8BA
        clc                                     ; F8BB
        adc     #$50                            ; F8BC
        sta     $3E                             ; F8BE
        lda     #$AF                            ; F8C0
        sta     $3F                             ; F8C2
        lda     $10                             ; F8C4
        and     #$02                            ; F8C6
        beq     L_F8E3                          ; F8C8
        lda     #$01                            ; F8CA
        sta     $44                             ; F8CC
        lda     #$5A                            ; F8CE
        sta     $45                             ; F8D0
        jsr     L_ECB4                          ; F8D2
        lda     $3E                             ; F8D5
        clc                                     ; F8D7
        adc     #$18                            ; F8D8
        sta     $3E                             ; F8DA
        lda     #$41                            ; F8DC
        sta     $44                             ; F8DE
        jsr     L_ECB4                          ; F8E0
L_F8E3: lda     #$00                            ; F8E3
        sta     $44                             ; F8E5
        lda     #$5C                            ; F8E7
        sta     $3E                             ; F8E9
        lda     #$84                            ; F8EB
        sta     $45                             ; F8ED
        jsr     L_ED12                          ; F8EF
        lda     #$7C                            ; F8F2
        sta     $3E                             ; F8F4
        lda     #$88                            ; F8F6
        sta     $45                             ; F8F8
        jsr     L_ED12                          ; F8FA
        lda     #$9C                            ; F8FD
        sta     $3E                             ; F8FF
        lda     #$86                            ; F901
        sta     $45                             ; F903
        jsr     L_ED12                          ; F905
        jmp     L_EC73                          ; F908

; ----------------------------------------------------------------------------
L_F90B: ldx     #$0F                            ; F90B
L_F90D: lda     LF917,x                         ; F90D
        sta     $0650,x                         ; F910
        dex                                     ; F913
        bpl     L_F90D                          ; F914
        rts                                     ; F916

; ----------------------------------------------------------------------------
LF917:  .byte   $0F,$35,$15,$05,$0F,$30,$00,$0B ; F917
        .byte   $0F,$3C,$1C,$0C,$0F,$37,$17,$07 ; F91F
; ----------------------------------------------------------------------------
L_F927: lda     $99                             ; F927
        sta     $05                             ; F929
        lda     #$00                            ; F92B
L_F92D: pha                                     ; F92D
        lsr     $05                             ; F92E
        bcc     L_F966                          ; F930
        lda     LF96F                           ; F932
        sta     L007A                           ; F935
        lda     LF96F+1                         ; F937
        sta     $7B                             ; F93A
        ldy     #$00                            ; F93C
        pla                                     ; F93E
        pha                                     ; F93F
        asl     a                               ; F940
        tay                                     ; F941
        jsr     L_EA63                          ; F942
        ldy     #$00                            ; F945
        lda     (L007A),y                       ; F947
        iny                                     ; F949
        sta     $C7                             ; F94A
        lda     (L007A),y                       ; F94C
        iny                                     ; F94E
        sta     $C8                             ; F94F
        bit     $C7                             ; F951
        bmi     L_F966                          ; F953
        clc                                     ; F955
        lda     L007A                           ; F956
        adc     #$02                            ; F958
        sta     L007A                           ; F95A
        bcc     L_F960                          ; F95C
        inc     $7B                             ; F95E
L_F960: jsr     L_E797                          ; F960
        jsr     L_F1CA                          ; F963
L_F966: pla                                     ; F966
        clc                                     ; F967
        adc     #$01                            ; F968
        cmp     #$08                            ; F96A
        bne     L_F92D                          ; F96C
        rts                                     ; F96E

; ----------------------------------------------------------------------------
LF96F:  .addr   LF971                           ; F96F
LF971:  .addr   LF981                           ; F971
        .addr   LF98D                           ; F973
        .addr   LF991                           ; F975
        .addr   LF99C                           ; F977
        .addr   LF989                           ; F979
        .addr   LF9A4                           ; F97B
        .addr   LF985                           ; F97D
        .addr   LF9A0                           ; F97F
; ----------------------------------------------------------------------------
LF981:  .byte   $18,$08,$C2,$28                 ; F981
LF985:  .byte   $0E,$04,$C2,$6A                 ; F985
LF989:  .byte   $04,$04,$E2,$68                 ; F989
LF98D:  .byte   $18,$0A,$B2,$2A                 ; F98D
LF991:  .byte   $18,$0C,$42,$2C,$2D,$3C,$3D,$4C ; F991
        .byte   $4D,$5A,$5B                     ; F999
LF99C:  .byte   $18,$0E,$C2,$2C                 ; F99C
LF9A0:  .byte   $02,$0E,$B2,$6C                 ; F9A0
LF9A4:  .byte   $80                             ; F9A4
; ----------------------------------------------------------------------------
L_F9A5: lda     #$0B                            ; F9A5
        sta     $C7                             ; F9A7
        lda     #$18                            ; F9A9
        sta     $C8                             ; F9AB
        lda     #$00                            ; F9AD
L_F9AF: pha                                     ; F9AF
        tax                                     ; F9B0
        lda     $06F0,x                         ; F9B1
        jsr     L_E862                          ; F9B4
        jsr     L_F1CA                          ; F9B7
        lda     $C7                             ; F9BA
        clc                                     ; F9BC
        adc     #$04                            ; F9BD
        sta     $C7                             ; F9BF
        pla                                     ; F9C1
        clc                                     ; F9C2
        adc     #$01                            ; F9C3
        cmp     #$03                            ; F9C5
        bne     L_F9AF                          ; F9C7
        rts                                     ; F9C9

; ----------------------------------------------------------------------------
L_F9CA: lda     #$0F                            ; F9CA
        ldx     #$1F                            ; F9CC
L_F9CE: sta     $0650,x                         ; F9CE
        dex                                     ; F9D1
        bpl     L_F9CE                          ; F9D2
        rts                                     ; F9D4

; ----------------------------------------------------------------------------
.endmacro

