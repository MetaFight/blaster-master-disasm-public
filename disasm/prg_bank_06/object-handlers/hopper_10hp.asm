.macro MAC_L_B16E
; ----------------------------------------------------------------------------
; ObjType $7A: Gray Hopper (10 HP) - Init.
ObjHandler_Tank_7A_Gray_Hopper_10HP_Init:
        jmp     _ObjHandler_Tank_7A_Gray_Hopper_10HP_Init__Done; B16E

; ----------------------------------------------------------------------------
_ObjHandler_Tank_7A_Gray_Hopper_10HP_Init__Update__:
        lda     #$12                            ; B171
; Init the enemy from descriptor $12.
        jsr     TankEnemy_Init                  ; B173
        lda     LoadedObj + Obj::Position_X_Hi  ; B176
        lsr     a                               ; B178
; On even columns, set positive Velocity_X.
        bcc     _ObjHandler_Tank_7A_Gray_Hopper_10HP_Init__VelRight; B179
; Otherwise, set Velocity_X to -0.75
        lda     #$F4                            ; B17B
        jmp     _ObjHandler_Tank_7A_Gray_Hopper_10HP_Init__VelStore; B17D

; ----------------------------------------------------------------------------
; set Velocity_X to +0.75
_ObjHandler_Tank_7A_Gray_Hopper_10HP_Init__VelRight:
        lda     #$0C                            ; B180
; Commit the Velocity_X, then clear Velocity_Y, Scratch0 and Scratch1.
_ObjHandler_Tank_7A_Gray_Hopper_10HP_Init__VelStore:
        sta     LoadedObj + Obj::Velocity_X     ; B182
        lda     #$00                            ; B184
        sta     LoadedObj + Obj::Velocity_Y     ; B186
        lda     #$00                            ; B188
        sta     LoadedObj + Obj::Scratch0       ; B18A
        sta     LoadedObj + Obj::Scratch1       ; B18C
_ObjHandler_Tank_7A_Gray_Hopper_10HP_Init__Done:
        rts                                     ; B18E

; ----------------------------------------------------------------------------
; ObjType $7B: Gray Hopper (10 HP) - Patrolling.
; It drops to the ground, then paces back and forth, reversing off walls and turning back at
; platform edges. At each edge there is a 1-in-16 chance it leaps out over the gap.
ObjHandler_Tank_7B_Gray_Hopper_10HP_Patrolling:
        jmp     _ObjHandler_Tank_7B_GrayHopper10HP_Patrolling_Main__AfterPhysics; B18F

; ----------------------------------------------------------------------------
; +3 body entry (normal play)
; 
; Start by setting collision box dimensions.
_ObjHandler_Tank_7B_Gray_Hopper_10HP_Patrolling__Update__:
        lda     #$80                            ; B192
        sta     $42                             ; B194
        lda     #$C0                            ; B196
        sta     $43                             ; B198
; Scratch0 is the Grounded flag.  0 = airborne, 1 = grounded.
        lda     LoadedObj + Obj::Scratch0       ; B19A
; If grounded, skip gravity physics.
        bne     _ObjHandler_Tank_7B_GrayHopper10HP_Patrolling_Main__GroundedPhysics; B19C
; Otherwise, handle falling and landing.
        jsr     Obj_FallAndLand                 ; B19E
; Skip to post-physics tail if landing didn't happen.
        beq     _ObjHandler_Tank_7B_GrayHopper10HP_Patrolling_Main__AfterPhysics; B1A1
; On landing: Set Grounded = 1 and fall through to Grounded physics.
        inc     LoadedObj + Obj::Scratch0       ; B1A3
; Obj_MoveBounce advances the hopper and reverses Velocity_X off any side wall.
_ObjHandler_Tank_7B_GrayHopper10HP_Patrolling_Main__GroundedPhysics:
        jsr     Obj_MoveBounce                  ; B1A5
; Handle edge-hop.
        jsr     _ObjHandler_Tank_7B_GrayHopper10HP_Patrolling__EdgeHop; B1A8
; The post-physics tail every other path falls into
_ObjHandler_Tank_7B_GrayHopper10HP_Patrolling_Main__AfterPhysics:
        lda     #$10                            ; B1AB
        sta     $40                             ; B1AD
        lda     #$10                            ; B1AF
        sta     $41                             ; B1B1
; Load the object dimensions and do an on-screen test
        jsr     ScreenPos_Compute               ; B1B3
; If still on-screen, progress to the Damage handler code,
        beq     _ObjHandler_Tank_7B_GrayHopper10HP_Patrolling_Main__Damage; B1B6
; otherwise, start the despawn process by tombstoning.
        jmp     Obj_TombstoneSlot               ; B1B8

; ----------------------------------------------------------------------------
; Run shared damage check routine with enemy descriptor $12.
_ObjHandler_Tank_7B_GrayHopper10HP_Patrolling_Main__Damage:
        lda     #$12                            ; B1BB
        jsr     TankEnemy_DamageCheck           ; B1BD
; If non-fatal, skip to render tail,
        beq     _ObjHandler_Tank_7B_GrayHopper10HP_Patrolling_Main__Render; B1C0
; otherwise, call the shared death handler.
        jmp     TankEnemy_Defeat                ; B1C2

; ----------------------------------------------------------------------------
; Render logic.
; 
; Prep A as with the OAM Attribute byte value,
_ObjHandler_Tank_7B_GrayHopper10HP_Patrolling_Main__Render:
        lda     #$01                            ; B1C5
; Obj_SetAttrFlipX sets the H-flip bit to A and saves a copy to WR_Context_Dependent_44
        jsr     Obj_SetAttrFlipX                ; B1C7
        lda     Global_FrameCounter             ; B1CA
        lsr     a                               ; B1CC
        lsr     a                               ; B1CD
        lsr     a                               ; B1CE
        lsr     a                               ; B1CF
        and     #$03                            ; B1D0
; Use the bottom two bits of the upper nibble (00xx 0000) of Global_FrameCounter as the animation
; frame index.
; 
; This means all patrolling hoppers walk in lock-step, updating their animation frames every 16
; game frames.
        tax                                     ; B1D2
; Load the animation frame Metasprite id and call the renderer sub.
        lda     GrayHopper10HP_Patrolling_MetaSpriteId_ByFrame,x; B1D3
        jmp     MetaSprite_Render               ; B1D6

; ----------------------------------------------------------------------------
; Single unreachable $60 (RTS)
DEAD_TankGrayHopper_OrphanRTS:
        rts                                     ; B1D9

; ----------------------------------------------------------------------------
; Table of 4 metasprite ids used to animate the patrolling state.
GrayHopper10HP_Patrolling_MetaSpriteId_ByFrame:
        .byte   $02,$03,$02,$04                 ; B1DA
; ----------------------------------------------------------------------------
; Handler that has a chance of making the Hopper hop when at a platform edges.
; (well, more accurately, when the tile directly below its center is not solid.  This assumes the
; hopper walked there from a neighboring solid tile.)
_ObjHandler_Tank_7B_GrayHopper10HP_Patrolling__EdgeHop:
        lda     #$11                            ; B1DE
; Test tile below ($11)
        jsr     TileRead_WithOffset             ; B1E0
; If bit 7 is set then the tile is solid.  Nothing to do.  Exit early.
        bmi     _ObjHandler_Tank_7B_GrayHopper10HP_Patrolling__WalkReturn; B1E3
; Otherwise, roll the dice to see if a hop is warranted.
        jsr     Step_RNG                        ; B1E5
        and     #$0F                            ; B1E8
; If the lower nibble is zero, perform a jump.
        beq     _ObjHandler_Tank_7B_GrayHopper10HP_Patrolling__WalkJump; B1EA
        lda     #$00                            ; B1EC
        sec                                     ; B1EE
        sbc     LoadedObj + Obj::Velocity_X     ; B1EF
; otherwise, flip Velocity_X (bounce off edge).
        sta     LoadedObj + Obj::Velocity_X     ; B1F1
        jmp     _ObjHandler_Tank_7B_GrayHopper10HP_Patrolling__WalkReturn; B1F3

; ----------------------------------------------------------------------------
; Initiate jump by setting Velocity_Y to -2.
_ObjHandler_Tank_7B_GrayHopper10HP_Patrolling__WalkJump:
        lda     #$E0                            ; B1F6
        sta     LoadedObj + Obj::Velocity_Y     ; B1F8
        lda     #$00                            ; B1FA
; Set Grounded = 0
        sta     LoadedObj + Obj::Scratch0       ; B1FC
; shared exit.
_ObjHandler_Tank_7B_GrayHopper10HP_Patrolling__WalkReturn:
        rts                                     ; B1FE

.endmacro

