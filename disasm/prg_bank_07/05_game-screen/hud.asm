.macro MAC_05_game_screen__hud
; ----------------------------------------------------------------------------
L_C7D8: lda     L_C7F8                          ; C7D8
        sta     IndirectPtrLo                   ; C7DB
        lda     L_C7F8+1                        ; C7DD
        sta     IndirectPtrHi                   ; C7E0
        ldy     #$00                            ; C7E2
        lda     #$00                            ; C7E4
        sta     $3E                             ; C7E6
        sta     $3F                             ; C7E8
        sta     $44                             ; C7EA
        lda     $FF                             ; C7EC
        and     #$20                            ; C7EE
        bne     L_C7F5                          ; C7F0
        jmp     L_C880                          ; C7F2

; ----------------------------------------------------------------------------
L_C7F5: jmp     L_C816                          ; C7F5

; ----------------------------------------------------------------------------
L_C7F8: .addr   L_C7FA                          ; C7F8
L_C7FA: .addr   L_C7FE                          ; C7FA
        .addr   LC806                           ; C7FC
; ----------------------------------------------------------------------------
L_C7FE: .byte   $10,$80,$01,$74,$00,$40,$10,$5E ; C7FE
LC806:  .byte   $10,$80,$01,$5C,$00,$08,$01,$5D ; C806
        .byte   $00,$38,$00,$5E,$00,$08,$10,$5F ; C80E
; ----------------------------------------------------------------------------
L_C816: lda     #$00                            ; C816
        jsr     L_F029                          ; C818
        lda     #$00                            ; C81B
        sta     $44                             ; C81D
        lda     #$10                            ; C81F
        sta     $3E                             ; C821
        lda     #$C0                            ; C823
        sta     $3F                             ; C825
        lda     PlayerSlot + Obj::Health        ; C827
        jsr     L_C841                          ; C82A
        lda     #$01                            ; C82D
        sta     $44                             ; C82F
        lda     #$10                            ; C831
        sta     $3E                             ; C833
        lda     #$80                            ; C835
        sta     $3F                             ; C837
        lda     Player_GunLevel                 ; C839
        jsr     L_C841                          ; C83B
        jmp     L_EC73                          ; C83E

; ----------------------------------------------------------------------------
L_C841: sta     L0000                           ; C841
        lda     #$02                            ; C843
L_C845: pha                                     ; C845
        lda     $3F                             ; C846
        sec                                     ; C848
        sbc     #$10                            ; C849
        sta     $3F                             ; C84B
        lda     L0000                           ; C84D
        ldx     #$7E                            ; C84F
        cmp     #$1F                            ; C851
        bcc     L_C869                          ; C853
        dex                                     ; C855
        dex                                     ; C856
        cmp     #$3F                            ; C857
        bcc     L_C869                          ; C859
        dex                                     ; C85B
        dex                                     ; C85C
        cmp     #$5F                            ; C85D
        bcc     L_C869                          ; C85F
        dex                                     ; C861
        dex                                     ; C862
        cmp     #$7F                            ; C863
        bcc     L_C869                          ; C865
        dex                                     ; C867
        dex                                     ; C868
L_C869: stx     $45                             ; C869
        jsr     OAM_Stage_Pattern               ; C86B
        lda     L0000                           ; C86E
        sec                                     ; C870
        sbc     #$80                            ; C871
        bcs     L_C877                          ; C873
        lda     #$00                            ; C875
L_C877: sta     L0000                           ; C877
        pla                                     ; C879
        sec                                     ; C87A
        sbc     #$01                            ; C87B
        bne     L_C845                          ; C87D
        rts                                     ; C87F

; ----------------------------------------------------------------------------
L_C880: lda     #$01                            ; C880
        jsr     L_F029                          ; C882
        lda     #$00                            ; C885
        sta     $44                             ; C887
        lda     #$10                            ; C889
        sta     $3E                             ; C88B
        lda     #$C0                            ; C88D
        sta     $3F                             ; C88F
        lda     PlayerSlot + Obj::Health        ; C891
        jsr     L_C8AE                          ; C894
        lda     $03FC                           ; C897
        and     #$04                            ; C89A
        beq     L_C8AB                          ; C89C
        lda     #$01                            ; C89E
        sta     $44                             ; C8A0
        lda     #$80                            ; C8A2
        sta     $3F                             ; C8A4
        lda     $92                             ; C8A6
        jsr     L_C8AE                          ; C8A8
L_C8AB: jmp     L_EC73                          ; C8AB

; ----------------------------------------------------------------------------
L_C8AE: sta     L0000                           ; C8AE
        lda     #$04                            ; C8B0
L_C8B2: pha                                     ; C8B2
        lda     $3F                             ; C8B3
        sec                                     ; C8B5
        sbc     #$08                            ; C8B6
        sta     $3F                             ; C8B8
        lda     L0000                           ; C8BA
        ldx     #$59                            ; C8BC
        cmp     #$1F                            ; C8BE
        bcc     L_C8C8                          ; C8C0
        inx                                     ; C8C2
        cmp     #$3F                            ; C8C3
        bcc     L_C8C8                          ; C8C5
        inx                                     ; C8C7
L_C8C8: stx     $45                             ; C8C8
        jsr     OAM_Stage_Pattern               ; C8CA
        lda     L0000                           ; C8CD
        sec                                     ; C8CF
        sbc     #$40                            ; C8D0
        bcs     L_C8D6                          ; C8D2
        lda     #$00                            ; C8D4
L_C8D6: sta     L0000                           ; C8D6
        pla                                     ; C8D8
        sec                                     ; C8D9
        sbc     #$01                            ; C8DA
        bne     L_C8B2                          ; C8DC
        rts                                     ; C8DE

.endmacro

