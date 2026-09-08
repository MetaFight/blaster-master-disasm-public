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
        lda     Tombstoned_ObjTypes,x           ; 8136
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

