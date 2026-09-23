.macro MAC_drawing_text
; ----------------------------------------------------------------------------
L_E823: jsr     L_E74D                          ; E823
L_E826: jsr     L_F19B                          ; E826
        ldy     #$00                            ; E829
L_E82B: lda     (IndirectPtrLo),y               ; E82B
        iny                                     ; E82D
        cmp     #$00                            ; E82E
        beq     L_E83A                          ; E830
        jsr     L_F192                          ; E832
        inc     $C7                             ; E835
        jmp     L_E82B                          ; E837

; ----------------------------------------------------------------------------
L_E83A: jsr     L_F1BC                          ; E83A
        jmp     L_EB44                          ; E83D

; ----------------------------------------------------------------------------
L_E840: jsr     L_EAE9                          ; E840
        pha                                     ; E843
        jsr     L_E74D                          ; E844
        jsr     L_F19B                          ; E847
        pla                                     ; E84A
        pha                                     ; E84B
        lsr     a                               ; E84C
        lsr     a                               ; E84D
        lsr     a                               ; E84E
        lsr     a                               ; E84F
        jsr     L_E85A                          ; E850
        pla                                     ; E853
        jsr     L_E85A                          ; E854
        jmp     L_F1BC                          ; E857

; ----------------------------------------------------------------------------
L_E85A: and     #$0F                            ; E85A
        clc                                     ; E85C
        adc     #$30                            ; E85D
        jmp     L_F192                          ; E85F

; ----------------------------------------------------------------------------
L_E862: jsr     L_EAE9                          ; E862
        pha                                     ; E865
        jsr     L_E74D                          ; E866
        jsr     L_F19B                          ; E869
        pla                                     ; E86C
        pha                                     ; E86D
        lsr     a                               ; E86E
        lsr     a                               ; E86F
        lsr     a                               ; E870
        lsr     a                               ; E871
        jsr     L_E87C                          ; E872
        pla                                     ; E875
        jsr     L_E87C                          ; E876
        jmp     L_F1BC                          ; E879

; ----------------------------------------------------------------------------
L_E87C: and     #$0F                            ; E87C
        clc                                     ; E87E
        adc     #$F6                            ; E87F
        jmp     L_F192                          ; E881

; ----------------------------------------------------------------------------
L_E884: pha                                     ; E884
        jsr     L_E74D                          ; E885
        jsr     L_F19B                          ; E888
        pla                                     ; E88B
        clc                                     ; E88C
        adc     #$30                            ; E88D
        jsr     L_F192                          ; E88F
        jmp     L_F1BC                          ; E892

.endmacro

