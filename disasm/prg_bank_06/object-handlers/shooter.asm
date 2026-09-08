.macro MAC_L_AFFC
; ----------------------------------------------------------------------------
; ObjType $76: Shooter - Init.
ObjHandler_Tank_76_Shooter_Init:
        jmp     _ObjHandler_Tank_76_Shooter_Init__Done; AFFC

; ----------------------------------------------------------------------------
; Init with shared TankEnemy_Init using Enemy Descriptor #$10.
_ObjHandler_Tank_76_Shooter_Init__Body:
        lda     #$10                            ; AFFF
        jsr     TankEnemy_Init                  ; B001
        jsr     Step_RNG                        ; B004
; Set a random initial heading (Facing)
        sta     LoadedObj + Obj::Facing         ; B007
        ldy     #$14                            ; B009
; Call Obj_FacingToVelocity to put enemy in motion at their Facing heading with speed 1.5 px/f.
        jsr     Obj_FacingToVelocity            ; B00B
        lda     #$00                            ; B00E
; Reset ShotCooldown (Scratch2).
        sta     LoadedObj + Obj::Scratch2       ; B010
; Init body terminal RTS; the +0 (render) entry JMPs here — this Init draws nothing.
_ObjHandler_Tank_76_Shooter_Init__Done:
        rts                                     ; B012

; ----------------------------------------------------------------------------
; ObjType $77: Shooter - Main
ObjHandler_Tank_77_Shooter_Main:
        jmp     _ObjHandler_Tank_77_Shooter_Main__ScreenTest; B013

; ----------------------------------------------------------------------------
; Start by setting collision box.
_ObjHandler_Tank_77_Shooter_Main__Body:
        lda     #$80                            ; B016
        sta     $42                             ; B018
        lda     #$80                            ; B01A
        sta     $43                             ; B01C
; Apply motion and collision.  Collisions are handled by negating the velocity component involved.
        jsr     Obj_MoveBounce                  ; B01E
        lda     LoadedObj + Obj::Scratch2       ; B021
; If ShotCooldown (Scratch2) == 0, skip to TryShoot.
        beq     _ObjHandler_Tank_77_Shooter_Main__TryShoot; B023
; Otherwise, decrement ShotCooldown (Scratch2), set PoseIndex (Scratch0) to 0, and skip to
; ScreenTest
        dec     LoadedObj + Obj::Scratch2       ; B025
        lda     #$00                            ; B027
        sta     LoadedObj + Obj::Scratch0       ; B029
        jmp     _ObjHandler_Tank_77_Shooter_Main__ScreenTest; B02B

; ----------------------------------------------------------------------------
_ObjHandler_Tank_77_Shooter_Main__TryShoot:
        jsr     Obj_Get_DeltaToPlayer_X_q12_4   ; B02E
        eor     LoadedObj + Obj::Velocity_X     ; B031
; If the signs of Velocity X and the X delta to the Player don't match, then skip to
; SetAttackPose.
        bmi     _ObjHandler_Tank_77_Shooter_Main__SetAttackPose; B033
; If the Player is above us, skip to SetAttackPose.
        jsr     Obj_Get_DeltaToPlayer_Y_q12_4   ; B035
        bmi     _ObjHandler_Tank_77_Shooter_Main__SetAttackPose; B038
        lda     #$3C                            ; B03A
        sta     $A0                             ; B03C
; If neither early-exit condition were met, try to spawn a shot projectile (ObjType $3C).
        jsr     Obj_TrySpawnChild_A0_Throttled  ; B03E
; on failure, skip to SetAttackPose.
        beq     _ObjHandler_Tank_77_Shooter_Main__SetAttackPose; B041
        lda     #$10                            ; B043
; on success, start the 16-frame ShotCooldown.
        sta     LoadedObj + Obj::Scratch2       ; B045
_ObjHandler_Tank_77_Shooter_Main__SetAttackPose:
        lda     #$01                            ; B047
        sta     LoadedObj + Obj::Scratch0       ; B049
; Start by setting the bounding box.
_ObjHandler_Tank_77_Shooter_Main__ScreenTest:
        lda     #$10                            ; B04B
        sta     $40                             ; B04D
        lda     #$10                            ; B04F
        sta     $41                             ; B051
        jsr     ScreenPos_Compute               ; B053
; If on-screen, skip to Damage handler.
        beq     _ObjHandler_Tank_77_Shooter_Main__Damage; B056
; otherwise, tombstone.
        jmp     Obj_Tombstone                   ; B058

; ----------------------------------------------------------------------------
_ObjHandler_Tank_77_Shooter_Main__Damage:
        lda     #$10                            ; B05B
; Call shared TankEnemy_DamageCheck with enemy descriptor #$10
        jsr     TankEnemy_DamageCheck           ; B05D
; if non-fatal, skip to Render.
        beq     _ObjHandler_Tank_77_Shooter_Main__Render; B060
; otherwise, die by calling shared TankEnemy_DefeatTrackedEnemy.
        jmp     TankEnemy_DefeatTrackedEnemy    ; B062

; ----------------------------------------------------------------------------
; Sat Xflip and Palette (#$01) OAM attributes
_ObjHandler_Tank_77_Shooter_Main__Render:
        lda     #$01                            ; B065
        jsr     Obj_SetOAMAttr_FlipX_and_Palette ; B067
        ldx     #$6C                            ; B06A
        lda     LoadedObj + Obj::Scratch0       ; B06C
        bne     _ObjHandler_Tank_77_Shooter_Main__TileBase; B06E
        inx                                     ; B070
; Select pose MetaSprite: Base #$6C if PoseIndex == 0, otherwise #$6D.
_ObjHandler_Tank_77_Shooter_Main__TileBase:
        txa                                     ; B071
        jmp     MetaSprite_Render               ; B072

; ----------------------------------------------------------------------------
DEAD__ObjHandler_Tank_77_Shooter_Main__OrphanRTS:
        rts                                     ; B075

.endmacro

