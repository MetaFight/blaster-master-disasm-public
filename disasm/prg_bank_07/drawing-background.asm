.macro MAC_drawing_background_1_of_2
; ----------------------------------------------------------------------------
L_E797: lda     $01                             ; E797
        pha                                     ; E799
        lda     L0000                           ; E79A
        pha                                     ; E79C
        lda     $03                             ; E79D
        pha                                     ; E79F
        lda     $02                             ; E7A0
        pha                                     ; E7A2
        lda     $C8                             ; E7A3
        sta     $02                             ; E7A5
        ldy     #$00                            ; E7A7
        lda     (IndirectPtrLo),y               ; E7A9
        iny                                     ; E7AB
        sta     L0000                           ; E7AC
        asl     a                               ; E7AE
        bcc     L_E7B6                          ; E7AF
        lda     (IndirectPtrLo),y               ; E7B1
        iny                                     ; E7B3
        sta     $45                             ; E7B4
L_E7B6: jsr     L_E74D                          ; E7B6
        jsr     L_F19F                          ; E7B9
        lda     L0000                           ; E7BC
        and     #$0F                            ; E7BE
        sta     $01                             ; E7C0
        lda     $45                             ; E7C2
        sta     $03                             ; E7C4
L_E7C6: bit     L0000                           ; E7C6
        bmi     L_E7D0                          ; E7C8
        lda     (IndirectPtrLo),y               ; E7CA
        iny                                     ; E7CC
        jmp     L_E7D4                          ; E7CD

; ----------------------------------------------------------------------------
L_E7D0: lda     $03                             ; E7D0
        inc     $03                             ; E7D2
L_E7D4: sta     $0300,x                         ; E7D4
        inx                                     ; E7D7
        dec     $01                             ; E7D8
        beq     L_E7F6                          ; E7DA
        inc     $C8                             ; E7DC
        lda     $C8                             ; E7DE
        cmp     #$1E                            ; E7E0
        bne     L_E7C6                          ; E7E2
        lda     #$00                            ; E7E4
        sta     $C8                             ; E7E6
        stx     $19                             ; E7E8
        jsr     L_F1BC                          ; E7EA
        jsr     L_E74D                          ; E7ED
        jsr     L_F19F                          ; E7F0
        jmp     L_E7C6                          ; E7F3

; ----------------------------------------------------------------------------
L_E7F6: stx     $19                             ; E7F6
        jsr     L_F1BC                          ; E7F8
        lda     $45                             ; E7FB
        clc                                     ; E7FD
        adc     #$10                            ; E7FE
        sta     $45                             ; E800
        lda     L0000                           ; E802
        sec                                     ; E804
        sbc     #$10                            ; E805
        sta     L0000                           ; E807
        and     #$70                            ; E809
        beq     L_E816                          ; E80B
        lda     $02                             ; E80D
        sta     $C8                             ; E80F
        inc     $C7                             ; E811
        jmp     L_E7B6                          ; E813

; ----------------------------------------------------------------------------
L_E816: pla                                     ; E816
        sta     $02                             ; E817
        pla                                     ; E819
        sta     $03                             ; E81A
        pla                                     ; E81C
        sta     L0000                           ; E81D
        pla                                     ; E81F
        sta     $01                             ; E820
        rts                                     ; E822

.endmacro

; Interrupted by 4 macros:
;   MAC_drawing_text
;   MAC_hardware_4_of_7
;   MAC_input
;   MAC_timing_2_of_3

.macro MAC_drawing_background_2_of_2
; ----------------------------------------------------------------------------
L_E953: ldy     #$00                            ; E953
        jsr     L_E949                          ; E955
        jsr     L_E6F0                          ; E958
        jsr     PPU_SetAddressIncrementTo_1     ; E95B
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
L_E996: lda     (IndirectPtrLo),y               ; E996
        sta     L0000                           ; E998
        iny                                     ; E99A
        bne     L_E99F                          ; E99B
        inc     IndirectPtrHi                   ; E99D
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
        sta     SavedPrgBank                    ; E9BB
        lda     #$30                            ; E9BD
        jsr     BankDispatch_Switch             ; E9BF
        pla                                     ; E9C2
        jsr     L_EB51                          ; E9C3
        jsr     L_E953                          ; E9C6
        lda     SavedPrgBank                    ; E9C9
        jsr     BankSave_Switch                 ; E9CB
        rts                                     ; E9CE

; ----------------------------------------------------------------------------
L_E9CF: pha                                     ; E9CF
        jsr     L_EA03                          ; E9D0
        lda     $DB                             ; E9D3
        sta     SavedPrgBank                    ; E9D5
        lda     #$30                            ; E9D7
        jsr     BankDispatch_Switch             ; E9D9
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
        lda     SavedPrgBank                    ; E9FD
        jsr     BankSave_Switch                 ; E9FF
        rts                                     ; EA02

.endmacro

