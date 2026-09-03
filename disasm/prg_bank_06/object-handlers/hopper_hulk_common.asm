.macro MAC_L_B1DE
; ----------------------------------------------------------------------------
; Handler that has a chance of making the Hopper/Hulk hop when at a platform edges.
; (well, more accurately, when the tile directly below its center is not solid.  This assumes the
; hopper/hulk walked there from a neighboring solid tile.)
_ObjHandler_Hopper_Hulk_Common__EdgeHop:
        lda     #$11                            ; B1DE
; Test tile below ($11)
        jsr     Obj_ReadTile_WithOffset         ; B1E0
; If bit 7 is set then the tile is solid.  Nothing to do.  Exit early.
        bmi     _ObjHandler_Hopper_Hulk_Common__Return; B1E3
; Otherwise, roll the dice to see if a hop is warranted.
        jsr     Step_RNG                        ; B1E5
        and     #$0F                            ; B1E8
; If the lower nibble is zero, perform a jump.
        beq     _ObjHandler_Hopper_Hulk_Common__WalkJump; B1EA
        lda     #$00                            ; B1EC
        sec                                     ; B1EE
        sbc     LoadedObj + Obj::Velocity_X     ; B1EF
; otherwise, flip Velocity_X (bounce off edge).
        sta     LoadedObj + Obj::Velocity_X     ; B1F1
        jmp     _ObjHandler_Hopper_Hulk_Common__Return; B1F3

; ----------------------------------------------------------------------------
; Initiate jump by setting Velocity_Y to -2.
_ObjHandler_Hopper_Hulk_Common__WalkJump:
        lda     #$E0                            ; B1F6
        sta     LoadedObj + Obj::Velocity_Y     ; B1F8
        lda     #$00                            ; B1FA
; Set Grounded = 0
        sta     LoadedObj + Obj::Scratch0       ; B1FC
; shared exit.
_ObjHandler_Hopper_Hulk_Common__Return:
        rts                                     ; B1FE

.endmacro

