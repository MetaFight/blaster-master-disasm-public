.macro MAC_object_handlers__hulk
; ----------------------------------------------------------------------------
; ObjType $5D: Hulk - Init.
.proc ObjHandler_Tank_5D_Hulk_Init
        jmp     _Done                           ; A74B

; ----------------------------------------------------------------------------
_Body:
        lda     #$04                            ; A74E
; Use shared TankEnemy_Init with enemy descriptor #$04 to do baseline init.
        jsr     TankEnemy_Init                  ; A750
        lda     LoadedObj + Obj::Position_X_Hi  ; A753
        lsr     a                               ; A755
; Pick initial Velocity_X based on the low bit of the spawn position's X coordinate.
        bcc     _VelRight                       ; A756
; -0.75
        lda     #$F4                            ; A758
        jmp     _StoreVel                       ; A75A

; ----------------------------------------------------------------------------
; +0.75
_VelRight:
        lda     #$0C                            ; A75D
; Store Velocity_X and zero out Velocity_Y, Scratch0 and Scratch1
_StoreVel:
        sta     LoadedObj + Obj::Velocity_X     ; A75F
        lda     #$00                            ; A761
        sta     LoadedObj + Obj::Velocity_Y     ; A763
        sta     LoadedObj + Obj::Scratch0       ; A765
        sta     LoadedObj + Obj::Scratch1       ; A767
_Done:
        rts                                     ; A769
.endproc

; ----------------------------------------------------------------------------
; ObjType $5E: Hulk - Main.
.proc ObjHandler_Tank_5E_Hulk_Main
        jmp     _OnScreenCheck                  ; A76A

; ----------------------------------------------------------------------------
_Body:
; Set the collision box.
        lda     #$80                            ; A76D
        sta     $42                             ; A76F
        lda     #$C0                            ; A771
        sta     $43                             ; A773
; If IsGrounded != 0 (Scratch0), skip to Walking physics.
        lda     LoadedObj + Obj::Scratch0       ; A775
        bne     _WhenGrounded                   ; A777
; Otherwise, handle falling physics.
        jsr     Obj_FallAndLand                 ; A779
; If still in air, skip to OnScreenCheck.
        beq     _OnScreenCheck                  ; A77C
        inc     LoadedObj + Obj::Scratch0       ; A77E
; When grounded, advance and bounce off walls.
_WhenGrounded:
        jsr     Obj_MoveBounce                  ; A780
        jsr     Obj_Get_DeltaToPlayer_X_q12_4   ; A783
        eor     LoadedObj + Obj::Velocity_X     ; A786
; Only fire when walking towards player.
        bmi     _Walk                           ; A788
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
;   SpawnChild_ObjType = Child ObjType (#$48, Medium Red Projectile)
        jsr     Obj_TrySpawnChild_A0_Throttled  ; A798
_Walk:
        jsr     L_B1DE                          ; A79B
; run on-screen test.  If on-screen, do DamageCheck, otherwise, tombstone.
_OnScreenCheck:
        lda     #$10                            ; A79E
        sta     $40                             ; A7A0
        lda     #$18                            ; A7A2
        sta     $41                             ; A7A4
        jsr     ScreenPos_Compute               ; A7A6
        beq     _DamageCheck                    ; A7A9
        jmp     Obj_Tombstone                   ; A7AB

; ----------------------------------------------------------------------------
; Use the shared DamageCheck handler TankEnemy_DamageCheck with enemy descriptor #$04.
; If still alive, skip to Alive handler, otherwise jump to shared TankEnemy_DefeatTrackedEnemy
; handler.
_DamageCheck:
        lda     #$04                            ; A7AE
        jsr     TankEnemy_DamageCheck           ; A7B0
        beq     _Render                         ; A7B3
        jmp     TankEnemy_DefeatTrackedEnemy    ; A7B5

; ----------------------------------------------------------------------------
_Render:
        lda     #$01                            ; A7B8
; Set OAM FlipX and Palette attributes.
        jsr     Obj_SetOAMAttr_FlipX_and_Palette ; A7BA
        ldx     #$7E                            ; A7BD
        lda     Global_FrameCounter             ; A7BF
        and     #$10                            ; A7C1
; Based on bit4 of Global_FrameCounter, use either #$7E or #$7F as Metasprite Id.
        beq     _RenderMetasprite               ; A7C3
        inx                                     ; A7C5
_RenderMetasprite:
        txa                                     ; A7C6
        jmp     Metasprite_Render               ; A7C7

; ----------------------------------------------------------------------------
; Unreachable RTS (dead).
        rts                                     ; A7CA
.endproc

.endmacro

