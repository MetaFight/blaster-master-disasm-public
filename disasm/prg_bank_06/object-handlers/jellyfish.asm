.macro MAC_object_handlers__jellyfish
; ----------------------------------------------------------------------------
; ObjType $80: Jellyfish - init.
.proc ObjHandler_Tank_80_Jellyfish_Init
        jmp     _Done                           ; B3E3

; ----------------------------------------------------------------------------
_Body:
        lda     #$16                            ; B3E6
; Standard enemy init using shared TankEnemy_Init with enemy descriptor #$16.
        jsr     TankEnemy_Init                  ; B3E8
        lda     #$B8                            ; B3EB
        sta     LoadedObj + Obj::Facing         ; B3ED
; Set initial heading (Facing) to up and slightly left ($B8).
        lda     #$08                            ; B3EF
        sta     LoadedObj + Obj::Velocity_Y     ; B3F1
        lda     #$00                            ; B3F3
; Set initial Velocity_Y to a slow #$08 (0.5px/f) sink and zero out Velocity_X and Scratch0.
        sta     LoadedObj + Obj::Velocity_X     ; B3F5
        sta     LoadedObj + Obj::Scratch0       ; B3F7
        lda     #$40                            ; B3F9
; Set SwimCooldown (Scratch1) to #$40.
        sta     LoadedObj + Obj::Scratch1       ; B3FB
_Done:
        rts                                     ; B3FD
.endproc

; ----------------------------------------------------------------------------
; ObjType $81: Jellyfish - Main.
.proc ObjHandler_Tank_81_Jellyfish_Main
        jmp     _ScreenTest                     ; B3FE

; ----------------------------------------------------------------------------
_Body:
; Set collision box.
        lda     #$80                            ; B401
        sta     $42                             ; B403
        lda     #$80                            ; B405
        sta     $43                             ; B407
        lda     LoadedObj + Obj::Scratch0       ; B409
; If swimming, skip to Coasting.
        bne     _Coasting                       ; B40B
; Otherwise, apply motion and collision.
        jsr     Obj_MoveAndCollide              ; B40D
; If no horizontal collision detected (A bit7), skip to Groundcheck.
        bpl     _GroundCheck                    ; B410
; Otherwise, call HandleWall and then kip to TimerTick.
        jsr     _Obj_ReflectHeading__HandleWall ; B412
        jmp     _TimerTick                      ; B415

; ----------------------------------------------------------------------------
_GroundCheck:
        and     #$40                            ; B418
; If no vertical collisions detected (A bit6 clear), skip to TimerTick.
        beq     _TimerTick                      ; B41A
        lda     #$04                            ; B41C
; Set Velocity_Y to #$04 (0.5px/f), a slow drift down.
        sta     LoadedObj + Obj::Velocity_Y     ; B41E
; Decrement SwimCooldown.
_TimerTick:
        dec     LoadedObj + Obj::Scratch1       ; B420
; If still cooling down, skip to ScreenTest.
        bne     _ScreenTest                     ; B422
        lda     #$46                            ; B424
; Otherwise, play swimming SFX,
        jsr     Enqueue_Sound_Command           ; B426
; set State (Scratch0) to 1 (swimming),
        inc     LoadedObj + Obj::Scratch0       ; B429
        jsr     Step_RNG                        ; B42B
        and     #$07                            ; B42E
        clc                                     ; B430
; pick a random speed between #$20 and #$27,
        adc     #$20                            ; B431
        tay                                     ; B433
; and use that and the Heading (Facing) to set the swim Velocity.
        jsr     Obj_FacingToVelocity            ; B434
        jmp     _ScreenTest                     ; B437

; ----------------------------------------------------------------------------
; Coasting on the swim burst.  Affected by gravity.
_Coasting:
        lda     #$01                            ; B43A
        ldx     #$00                            ; B43C
; Apply Acceleration (x:0, y:0.0625) to Velocity.
        jsr     Obj_Apply_Acceleration          ; B43E
; Apply motion and collisions.
        jsr     Obj_MoveAndCollide              ; B441
; Snap to water surface if jutting out.
        jsr     Enemy_TileSnapY                 ; B444
        lda     LoadedObj + Obj::Velocity_Y     ; B447
        cmp     #$04                            ; B449
; if (unsigned)Velocity_Y >= 0.5 (#$04) skip to ScreenTest
        bcs     _ScreenTest                     ; B44B
        lda     #$04                            ; B44D
; Otherwise,
;   clamp Velocity_Y to 0.5 (#$04) - a slow downward drift, 
;   switch State 'sinking' (Scratch0 = 0), 
;   and set SwimCooldown to #$70.
        sta     LoadedObj + Obj::Velocity_Y     ; B44F
        dec     LoadedObj + Obj::Scratch0       ; B451
        lda     #$70                            ; B453
        sta     LoadedObj + Obj::Scratch1       ; B455
_ScreenTest:
        lda     #$10                            ; B457
        sta     $40                             ; B459
        lda     #$10                            ; B45B
        sta     $41                             ; B45D
; Set bounding box and do screen test.
        jsr     ScreenPos_Compute               ; B45F
; if on-screen, skip to Damage.
        beq     _Damage                         ; B462
; if off-screen, tombstone.
        jmp     Obj_Tombstone                   ; B464

; ----------------------------------------------------------------------------
; Use shared TankEnemy_DamageCheck with #$16.
; If non-fatal, skip to render.
; Otherwise, called shared TankEnemy_DefeatTrackedEnemy.
_Damage:
        lda     #$16                            ; B467
        jsr     TankEnemy_DamageCheck           ; B469
        beq     _Render                         ; B46C
        jmp     TankEnemy_DefeatTrackedEnemy    ; B46E

; ----------------------------------------------------------------------------
_Render:
        lda     #$01                            ; B471
; Set OAM Attribute (sprite 1)
        jsr     Obj_SetOAMAttr_FlipX_and_Palette ; B473
        lda     LoadedObj + Obj::Scratch1       ; B476
; If SwimCooldown != 0, Skip to CooldownDraw.
        bne     _CooldownDraw                   ; B478
        lda     #$9E                            ; B47A
; Otherwise, select MetaSprite #$9E and skip to RenderSelectedMetaSprite.
        jmp     _RenderSelectedMetaSprite       ; B47C

; ----------------------------------------------------------------------------
_CooldownDraw:
        cmp     #$20                            ; B47F
; If SwimCooldown (Scratch1) >= #$20, skip to FlutterAnimation
        bcs     _FlutterAnimation               ; B481
        lda     #$9D                            ; B483
; Otherwise, select MetaSprite #$9E and skip to RenderSelectedMetaSprite.
        jmp     _RenderSelectedMetaSprite       ; B485

; ----------------------------------------------------------------------------
; Alternate between selected MetaSprite Id $9D and $9E every 4 frames.
_FlutterAnimation:
        lda     Global_FrameCounter             ; B488
        lsr     a                               ; B48A
        lsr     a                               ; B48B
        and     #$01                            ; B48C
        clc                                     ; B48E
        adc     #$9D                            ; B48F
_RenderSelectedMetaSprite:
        jmp     MetaSprite_Render               ; B491
.endproc

.endmacro

