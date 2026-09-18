.macro MAC_object_handlers__hopper_hulk_common
; ----------------------------------------------------------------------------
L_B1DE: lda     #$11                            ; B1DE
        jsr     Obj_ReadTile_WithOffset         ; B1E0
        bmi     L_B1FE                          ; B1E3
        jsr     Step_RNG                        ; B1E5
        and     #$0F                            ; B1E8
        beq     L_B1F6                          ; B1EA
        lda     #$00                            ; B1EC
        sec                                     ; B1EE
        sbc     LoadedObj + Obj::Velocity_X     ; B1EF
        sta     LoadedObj + Obj::Velocity_X     ; B1F1
        jmp     L_B1FE                          ; B1F3

; ----------------------------------------------------------------------------
L_B1F6: lda     #$E0                            ; B1F6
        sta     LoadedObj + Obj::Velocity_Y     ; B1F8
        lda     #$00                            ; B1FA
        sta     LoadedObj + Obj::Scratch0       ; B1FC
L_B1FE: rts                                     ; B1FE

.endmacro

