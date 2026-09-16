.macro MAC_object_handlers___ungrouped
; ----------------------------------------------------------------------------
L_8AF1: jmp     L_8B28                          ; 8AF1

; ----------------------------------------------------------------------------
L_8AF4: lda     #$20                            ; 8AF4
        sta     $40                             ; 8AF6
        lda     #$20                            ; 8AF8
        sta     $41                             ; 8AFA
        jsr     LC0FF                           ; 8AFC
        bne     L_8B09                          ; 8AFF
        ldx     ObjectSlot_Index                ; 8B01
        lda     Tombstoned_ObjTypes,x           ; 8B03
        sta     LoadedObj + Obj::Type           ; 8B06
        rts                                     ; 8B08

; ----------------------------------------------------------------------------
L_8B09: lda     LoadedObj + Obj::Position_X_Hi  ; 8B09
        sec                                     ; 8B0B
        sbc     $1D                             ; 8B0C
        clc                                     ; 8B0E
        adc     #$08                            ; 8B0F
        and     #$7F                            ; 8B11
        cmp     #$20                            ; 8B13
        bcs     L_8B25                          ; 8B15
        lda     LoadedObj + Obj::Position_Y_Hi  ; 8B17
        sec                                     ; 8B19
        sbc     $1F                             ; 8B1A
        clc                                     ; 8B1C
        adc     #$08                            ; 8B1D
        and     #$7F                            ; 8B1F
        cmp     #$20                            ; 8B21
        bcc     L_8B28                          ; 8B23
L_8B25: jmp     LC0E7                           ; 8B25

; ----------------------------------------------------------------------------
L_8B28: rts                                     ; 8B28

.endmacro

