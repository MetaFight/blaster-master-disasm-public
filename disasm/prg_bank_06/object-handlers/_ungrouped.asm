.macro MAC_L_8124
; ----------------------------------------------------------------------------
L_8124: jmp     L_815B                          ; 8124

; ----------------------------------------------------------------------------
L_8127: lda     #$20                            ; 8127
        sta     $40                             ; 8129
        lda     #$20                            ; 812B
        sta     $41                             ; 812D
        jsr     ScreenPos_Compute               ; 812F
        bne     L_813C                          ; 8132
        ldx     ObjectSlot_Index                ; 8134
        lda     DormantSlot_SavedType,x         ; 8136
        sta     LoadedObj + Obj::Type           ; 8139
        rts                                     ; 813B

; ----------------------------------------------------------------------------
L_813C: lda     LoadedObj + Obj::Position_X_Hi  ; 813C
        sec                                     ; 813E
        sbc     $1D                             ; 813F
        clc                                     ; 8141
        adc     #$08                            ; 8142
        and     #$7F                            ; 8144
        cmp     #$20                            ; 8146
        bcs     L_8158                          ; 8148
        lda     LoadedObj + Obj::Position_Y_Hi  ; 814A
        sec                                     ; 814C
        sbc     $1F                             ; 814D
        clc                                     ; 814F
        adc     #$08                            ; 8150
        and     #$7F                            ; 8152
        cmp     #$20                            ; 8154
        bcc     L_815B                          ; 8156
L_8158: jmp     LD823                           ; 8158

; ----------------------------------------------------------------------------
L_815B: rts                                     ; 815B

.endmacro

.macro MAC_L_A237
; ----------------------------------------------------------------------------
L_A237: jmp     L_A24C                          ; A237

; ----------------------------------------------------------------------------
L_A23A: lda     $9D                             ; A23A
        sta     LoadedObj + Obj::Facing         ; A23C
        lda     $9E                             ; A23E
        tay                                     ; A240
        jsr     Obj_AngleToVelocity             ; A241
        jsr     LD2B9                           ; A244
        inc     LoadedObj + Obj::Type           ; A247
        jsr     L_9E9E                          ; A249
L_A24C: rts                                     ; A24C

; ----------------------------------------------------------------------------
L_A24D: jmp     L_A25D                          ; A24D

; ----------------------------------------------------------------------------
L_A250: lda     #$40                            ; A250
        sta     $42                             ; A252
        lda     #$40                            ; A254
        sta     $43                             ; A256
        jsr     LE083                           ; A258
        bne     L_A27A                          ; A25B
L_A25D: lda     #$08                            ; A25D
        sta     $40                             ; A25F
        lda     #$08                            ; A261
        sta     $41                             ; A263
        jsr     ScreenPos_Compute               ; A265
        bne     L_A27D                          ; A268
        lda     #$20                            ; A26A
        jsr     LD711                           ; A26C
        lda     #$00                            ; A26F
        sta     $44                             ; A271
        lda     #$54                            ; A273
        sta     $45                             ; A275
        jmp     LECB4                           ; A277

; ----------------------------------------------------------------------------
L_A27A: jsr     L_9B81                          ; A27A
L_A27D: jmp     Obj_Despawn                           ; A27D

.endmacro

