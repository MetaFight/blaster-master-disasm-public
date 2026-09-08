.macro MAC_L_A74B
; ----------------------------------------------------------------------------
; ObjType $5D: Hulk - Init.
ObjHandler_Tank_5D_Hulk_Init:
        jmp     _ObjHandler_Tank_5D_Hulk_Init__Done; A74B

; ----------------------------------------------------------------------------
_ObjHandler_Tank_5D_Hulk_Init__Body:
        lda     #$04                            ; A74E
; Use shared TankEnemy_Init with enemy descriptor #$04 to do baseline init.
        jsr     TankEnemy_Init                  ; A750
        lda     LoadedObj + Obj::Position_X_Hi  ; A753
        lsr     a                               ; A755
; Pick initial Velocity_X based on the low bit of the spawn position's X coordinate.
        bcc     _ObjHandler_Tank_5D_Hulk_Init__VelRight; A756
; -0.75
        lda     #$F4                            ; A758
        jmp     _ObjHandler_Tank_5D_Hulk_Init__StoreVel; A75A

; ----------------------------------------------------------------------------
; +0.75
_ObjHandler_Tank_5D_Hulk_Init__VelRight:
        lda     #$0C                            ; A75D
; Store Velocity_X and zero out Velocity_Y, Scratch0 and Scratch1
_ObjHandler_Tank_5D_Hulk_Init__StoreVel:
        sta     LoadedObj + Obj::Velocity_X     ; A75F
        lda     #$00                            ; A761
        sta     LoadedObj + Obj::Velocity_Y     ; A763
        sta     LoadedObj + Obj::Scratch0       ; A765
        sta     LoadedObj + Obj::Scratch1       ; A767
_ObjHandler_Tank_5D_Hulk_Init__Done:
        rts                                     ; A769

; ----------------------------------------------------------------------------
; ObjType $5E: Hulk - Main.
ObjHandler_Tank_5E_Hulk_Main:
        jmp     _ObjHandler_Tank_5E_Hulk_Main__OnScreenCheck; A76A

; ----------------------------------------------------------------------------
; Start by setting the collision box.
_ObjHandler_Tank_5E_Hulk_Main__Body:
        lda     #$80                            ; A76D
        sta     $42                             ; A76F
        lda     #$C0                            ; A771
        sta     $43                             ; A773
; If IsGrounded != 0 (Scratch0), skip to Walking physics.
        lda     LoadedObj + Obj::Scratch0       ; A775
        bne     _ObjHandler_Tank_5E_Hulk_Main__WhenGrounded; A777
; Otherwise, handle falling physics.
        jsr     Obj_FallAndLand                 ; A779
; If still in air, skip to OnScreenCheck.
        beq     _ObjHandler_Tank_5E_Hulk_Main__OnScreenCheck; A77C
        inc     LoadedObj + Obj::Scratch0       ; A77E
; When grounded, advance and bounce off walls.
_ObjHandler_Tank_5E_Hulk_Main__WhenGrounded:
        jsr     Obj_MoveBounce                  ; A780
        jsr     Obj_Get_DeltaToPlayer_X_q12_4   ; A783
        eor     LoadedObj + Obj::Velocity_X     ; A786
; Only fire when walking towards player.
        bmi     _ObjHandler_Tank_5E_Hulk_Main__Walk; A788
        lda     LoadedObj + Obj::Velocity_X     ; A78A
; Set a couple of parameters to be read by the projectile Init on the next frame:
;   Param_ProjectSpawn_Heading = Facing sign bit (bit7)
;   Param_ProjectSpawn_Speed = Speed (#$20)
;   Note: There is a race condition with these when multiple Hulks on screen fire at the same
;   time.
        and     #$80                            ; A78C
        sta     $9D                             ; A78E
        lda     #$20                            ; A790
        sta     $9E                             ; A792
        lda     #$48                            ; A794
        sta     $A0                             ; A796
; Spawn a projectile by calling Obj_TrySpawnChild_A0_Throttled with:
;   WR_Context_Dependent_A0 = Child ObjType (#$48, Medium Red Projectile)
        jsr     Obj_TrySpawnChild_A0_Throttled  ; A798
_ObjHandler_Tank_5E_Hulk_Main__Walk:
        jsr     _ObjHandler_Hopper_Hulk_Common__EdgeHop; A79B
; run on-screen test.  If on-screen, do DamageCheck, otherwise, tombstone.
_ObjHandler_Tank_5E_Hulk_Main__OnScreenCheck:
        lda     #$10                            ; A79E
        sta     $40                             ; A7A0
        lda     #$18                            ; A7A2
        sta     $41                             ; A7A4
        jsr     ScreenPos_Compute               ; A7A6
        beq     _ObjHandler_Tank_5E_Hulk_Main__DamageCheck; A7A9
        jmp     Obj_Tombstone                   ; A7AB

; ----------------------------------------------------------------------------
; Use the shared DamageCheck handler TankEnemy_DamageCheck with enemy descriptor #$04.
; If still alive, skip to Alive handler, otherwise jump to shared TankEnemy_DefeatTrackedEnemy
; handler.
_ObjHandler_Tank_5E_Hulk_Main__DamageCheck:
        lda     #$04                            ; A7AE
        jsr     TankEnemy_DamageCheck           ; A7B0
        beq     _ObjHandler_Tank_5E_Hulk_Main__Render; A7B3
        jmp     TankEnemy_DefeatTrackedEnemy    ; A7B5

; ----------------------------------------------------------------------------
_ObjHandler_Tank_5E_Hulk_Main__Render:
        lda     #$01                            ; A7B8
; Set OAM FlipX and Palette attributes.
        jsr     Obj_SetOAMAttr_FlipX_and_Palette ; A7BA
        ldx     #$7E                            ; A7BD
        lda     Global_FrameCounter             ; A7BF
        and     #$10                            ; A7C1
; Based on bit4 of Global_FrameCounter, use either #$7E or #$7F as MetaSprite Id.
        beq     _ObjHandler_Tank_5E_Hulk_Main__RenderMetaSprite; A7C3
        inx                                     ; A7C5
_ObjHandler_Tank_5E_Hulk_Main__RenderMetaSprite:
        txa                                     ; A7C6
        jmp     MetaSprite_Render               ; A7C7

; ----------------------------------------------------------------------------
; Single unreachable $60 (RTS) after the Hulk ($5E) sprite-emit tail (tail-calls JMP $F011 at
; $A7C7). The preceding routine's tail call was peephole-optimised into a direct jump without
; removing the trailing return, so this byte is never executed. Seeded as code so it decodes
; correctly. 20 instances found 2026-07-12, joining the 4 already documented in
; docs/us/misc/dead-code.md.
DEAD__ObjHandler_Tank_5E_Hulk_Main__OrphanRTS:
        rts                                     ; A7CA

.endmacro

