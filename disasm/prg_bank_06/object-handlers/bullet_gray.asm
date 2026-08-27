.macro MAC_L_A4DE
; ----------------------------------------------------------------------------
L_A4DE: jmp     L_A50D                          ; A4DE

; ----------------------------------------------------------------------------
L_A4E1: lda     LoadedObj + Obj::Position_X_Hi  ; A4E1
        lsr     a                               ; A4E3
        bcc     L_A4F1                          ; A4E4
        lda     #$A0                            ; A4E6
        sta     LoadedObj + Obj::Scratch0       ; A4E8
        lda     #$A0                            ; A4EA
        sta     LoadedObj + Obj::Facing         ; A4EC
        jmp     L_A4F9                          ; A4EE

; ----------------------------------------------------------------------------
L_A4F1: lda     #$60                            ; A4F1
        sta     LoadedObj + Obj::Scratch0       ; A4F3
        lda     #$E0                            ; A4F5
        sta     LoadedObj + Obj::Facing         ; A4F7
L_A4F9: ldy     #$10                            ; A4F9
        jsr     Obj_FacingToVelocity            ; A4FB
        lda     #$00                            ; A4FE
        sta     LoadedObj + Obj::Scratch1       ; A500
        sta     LoadedObj + Obj::Scratch2       ; A502
        lda     #$02                            ; A504
        jsr     TankEnemy_Init                  ; A506
        lda     #$59                            ; A509
        sta     LoadedObj + Obj::Type           ; A50B
L_A50D: rts                                     ; A50D

; ----------------------------------------------------------------------------
; ObjType $58: Gray Bullet (spawn variant B) - Init.
; 
; This variant attempts to latch *downward* initially.
ObjHandler_Tank_58_Gray_Bullet_B_Init:
        jmp     _ObjHandler_Tank_58_Gray_Bullet_B_Init__Done; A50E

; ----------------------------------------------------------------------------
_ObjHandler_Tank_58_Gray_Bullet_B_Init__Body:
        lda     LoadedObj + Obj::Position_X_Hi  ; A511
        lsr     a                               ; A513
; if bit0 of Position_X_Hi is set, skip to down-left spawn.
        bcc     _ObjHandler_Tank_58_Gray_Bullet_B_Init__LeftSide; A514
; otherwise, spawn with Orientation (Scratch0) = #$A0 (up-left) and Facing = #$20 (down-right)
        lda     #$A0                            ; A516
        sta     LoadedObj + Obj::Scratch0       ; A518
        lda     #$20                            ; A51A
        sta     LoadedObj + Obj::Facing         ; A51C
        jmp     _ObjHandler_Tank_58_Gray_Bullet_B_Init__Launch; A51E

; ----------------------------------------------------------------------------
; spawn with Orientation (Scratch0) = #$60 (down-left) and Facing = #$60 (down-left)
_ObjHandler_Tank_58_Gray_Bullet_B_Init__LeftSide:
        lda     #$60                            ; A521
        sta     LoadedObj + Obj::Scratch0       ; A523
        lda     #$60                            ; A525
        sta     LoadedObj + Obj::Facing         ; A527
; Convert the chosen heading to Velocity_X/Y scaled by 1.0 (Y), then go live as the tracking Main
_ObjHandler_Tank_58_Gray_Bullet_B_Init__Launch:
        ldy     #$10                            ; A529
        jsr     Obj_FacingToVelocity            ; A52B
; Clear the orient timer (Scratch1) and Scratch2
        lda     #$00                            ; A52E
        sta     LoadedObj + Obj::Scratch1       ; A530
        sta     LoadedObj + Obj::Scratch2       ; A532
; Call standard enemy init routine with descriptor $02.  This bumps ObjType to $59.
        lda     #$02                            ; A534
        jsr     TankEnemy_Init                  ; A536
_ObjHandler_Tank_58_Gray_Bullet_B_Init__Done:
        rts                                     ; A539

; ----------------------------------------------------------------------------
; ObjType $59: Gray Bullet - Cling-walking.
ObjHandler_Tank_59_Gray_Bullet_Main:
        jmp     _ObjHandler_Tank_59_Gray_Bullet_Main__AfterPhysics; A53A

; ----------------------------------------------------------------------------
; Start by setting collision box.
_ObjHandler_Tank_59_Gray_Bullet_Main__Body:
        lda     #$80                            ; A53D
        sta     $42                             ; A53F
        lda     #$80                            ; A541
        sta     $43                             ; A543
        ldy     #$10                            ; A545
; Then call Bullet_WalkSurface(1.0).
        jsr     Bullet_WalkSurface              ; A547
        jsr     Obj_Get_DeltaToPlayer_X         ; A54A
        and     #$FC                            ; A54D
; if (deltaX & #$FC) != 0, player is not in x-band, so skip to AltCheck.
        bne     _ObjHandler_Tank_59_Gray_Bullet_Main__YBandCheck; A54F
_ObjHandler_Tank_59_Gray_Bullet_Main__XBandHandler:
        jsr     Obj_Get_DeltaToPlayer_Y_q12_4   ; A551
; Otherwise, if A=0 (Y distance is 0 tiles), skip to post-physics tail.
        beq     _ObjHandler_Tank_59_Gray_Bullet_Main__AfterPhysics; A554
; Otherwise, skip to LockOn handler.
        bne     _ObjHandler_Tank_59_Gray_Bullet_Main__TryAttack; A556
_ObjHandler_Tank_59_Gray_Bullet_Main__YBandCheck:
        jsr     Obj_Get_DeltaToPlayer_Y         ; A558
        and     #$FC                            ; A55B
; if (deltaY & #$FC) != 0, player is not in y-band either.  Skip to post-physics tail.
        bne     _ObjHandler_Tank_59_Gray_Bullet_Main__AfterPhysics; A55D
        jsr     Obj_Get_DeltaToPlayer_X_q12_4   ; A55F
; Otherwise, if A=0 (X distance is 0 tiles), skip to post-physics tail.
        beq     _ObjHandler_Tank_59_Gray_Bullet_Main__AfterPhysics; A562
; LDA Scratch0 (the arc offset, added to Facing here — a continuous angle, not a state) CLC ADC
; $47→$01; JSR $A634; CPX $01 BNE $A580: X-alignment lock-on; STX $47; LDY #$40→$E1BD; $51=$10;
; INC $46→$5A
_ObjHandler_Tank_59_Gray_Bullet_Main__TryAttack:
        lda     LoadedObj + Obj::Scratch0       ; A564
        clc                                     ; A566
        adc     LoadedObj + Obj::Facing         ; A567
        sta     $01                             ; A569
; WR_Context_Dependent_01 = scan/attack heading.
        jsr     L_A634                          ; A56B
        cpx     $01                             ; A56E
; if heading to player and scan/attack heading don't match, skip to post-physics tail.
        bne     _ObjHandler_Tank_59_Gray_Bullet_Main__AfterPhysics; A570
; Otherwise, begin the transition to the Attack state!
; 
; Set LoadedObj.Facing to the confirmed attack heading,
        stx     LoadedObj + Obj::Facing         ; A572
        ldy     #$40                            ; A574
; update velocities, with scalar Y (4.0),
        jsr     Obj_FacingToVelocity            ; A576
        lda     #$10                            ; A579
; prime Scratch1 (the attack wind-up countdown timer),
        sta     LoadedObj + Obj::Scratch1       ; A57B
; and increment ObjType to the Attacking state.
        inc     LoadedObj + Obj::Type           ; A57D
        rts                                     ; A57F

; ----------------------------------------------------------------------------
; Set 16×16 bounding box and test if on-screen.
_ObjHandler_Tank_59_Gray_Bullet_Main__AfterPhysics:
        lda     #$10                            ; A580
        sta     $40                             ; A582
        lda     #$10                            ; A584
        sta     $41                             ; A586
        jsr     ScreenPos_Compute               ; A588
; if on-screen, jump to DamageCheck.
        beq     _ObjHandler_Tank_59_Gray_Bullet_Main__DamageCheck; A58B
; Otherwise, tombstone.
        jmp     Obj_TombstoneSlot               ; A58D

; ----------------------------------------------------------------------------
; Call shared DamageCheck routine with descriptor #$01.
_ObjHandler_Tank_59_Gray_Bullet_Main__DamageCheck:
        lda     #$01                            ; A590
        jsr     TankEnemy_DamageCheck           ; A592
; If not fatal, skip to Render.
        beq     _ObjHandler_Tank_59_Gray_Bullet_Main__Render; A595
; Otherwise, call shared Tracked Enemy defeat handler.
        jmp     TankEnemy_DefeatTrackedEnemy    ; A597

; ----------------------------------------------------------------------------
_ObjHandler_Tank_59_Gray_Bullet_Main__Render:
        lda     LoadedObj + Obj::Scratch0       ; A59A
        and     #$80                            ; A59C
; Save Orientation (Scratch0)'s sign bit into WR_Context_Dependent_00
        sta     $00                             ; A59E
        lda     LoadedObj + Obj::Facing         ; A5A0
        sec                                     ; A5A2
        sbc     #$20                            ; A5A3
        lsr     a                               ; A5A5
        ora     $00                             ; A5A6
        lsr     a                               ; A5A8
        lsr     a                               ; A5A9
        lsr     a                               ; A5AA
        lsr     a                               ; A5AB
; Reduce Facing to a table index and copy it into X.
; X = (((Facing - #$20) >> 1) | WR_Context_Dependent_00) >> 4
        tax                                     ; A5AC
; Look up the current orientation's OAM Attributes,
        lda     L_A6BF,x                        ; A5AD
; OR with 1 to specity Sprite palette 1,
        ora     #$01                            ; A5B0
; and store in OAM_Attribute__or__Outgoing_Contact_Damage.
        sta     $44                             ; A5B2
        lda     Global_FrameCounter             ; A5B4
        lsr     a                               ; A5B6
        lsr     a                               ; A5B7
        lsr     a                               ; A5B8
; Animation frame index = bit 3 of Global_FrameCounter.
        and     #$01                            ; A5B9
; Look up the current orientatoin's base Metasprite Id and OR it with the frame index, then call
; MetaSprite_Render.
        ora     L_A6C0,x                        ; A5BB
        jmp     MetaSprite_Render               ; A5BE

; ----------------------------------------------------------------------------
L_A5C1: rts                                     ; A5C1

; ----------------------------------------------------------------------------
; ObjType $5A: Gray Bullet - Attacking.
ObjHandler_Tank_5A_Gray_Bullet_Attacking:
        jmp     _ObjHandler_Tank_5A_GrayBullet_Attacking__AfterPhysics; A5C2

; ----------------------------------------------------------------------------
; Start by setting collision box.
_ObjHandler_Tank_5A_Gray_Bullet_Attacking__Update__:
        lda     #$80                            ; A5C5
        sta     $42                             ; A5C7
        lda     #$80                            ; A5C9
        sta     $43                             ; A5CB
        lda     LoadedObj + Obj::Scratch1       ; A5CD
; If AttackWindUpCounter (Scratch1) is 0, skip to Launch handler.
        beq     _ObjHandler_Tank_5A_GrayBullet_Attacking__Movement; A5CF
; Otherwise, telegraph the attack by making a buzzing sound (restart sound each frame).
        lda     #$43                            ; A5D1
        jsr     Enqueue_Sound_Command           ; A5D3
        dec     LoadedObj + Obj::Scratch1       ; A5D6
; Decrement counter and skip to post-physics tail.
        jmp     _ObjHandler_Tank_5A_GrayBullet_Attacking__AfterPhysics; A5D8

; ----------------------------------------------------------------------------
; Run movement and collision logic.
_ObjHandler_Tank_5A_GrayBullet_Attacking__Movement:
        jsr     Obj_MoveAndCollide              ; A5DB
; if no collisions, skip to post-physics tail.
        beq     _ObjHandler_Tank_5A_GrayBullet_Attacking__AfterPhysics; A5DE
        jsr     Step_RNG                        ; A5E0
        and     #$40                            ; A5E3
; otherwise, — 50/50 chance to turn heading one direction or another.
        beq     _ObjHandler_Tank_5A_GrayBullet_Attacking__TurnA; A5E5
; TurnB
        lda     #$60                            ; A5E7
        ldx     #$60                            ; A5E9
        jmp     _ObjHandler_Tank_5A_GrayBullet_Attacking__TranstionToWalking; A5EB

; ----------------------------------------------------------------------------
_ObjHandler_Tank_5A_GrayBullet_Attacking__TurnA:
        lda     #$A0                            ; A5EE
        ldx     #$A0                            ; A5F0
_ObjHandler_Tank_5A_GrayBullet_Attacking__TranstionToWalking:
        clc                                     ; A5F2
        adc     LoadedObj + Obj::Facing         ; A5F3
; Update Facing,
        sta     LoadedObj + Obj::Facing         ; A5F5
; update Orientation,
        stx     LoadedObj + Obj::Scratch0       ; A5F7
        ldy     #$10                            ; A5F9
; update Velocities with scalar Y (1.0),
        jsr     Obj_FacingToVelocity            ; A5FB
        lda     #$00                            ; A5FE
; reset CornerWrapCooldown (Scratch1),
        sta     LoadedObj + Obj::Scratch1       ; A600
; and, finally, change ObjType back to Walking ($59)
        dec     LoadedObj + Obj::Type           ; A602
        rts                                     ; A604

; ----------------------------------------------------------------------------
; 16×16 hitbox; JSR ScreenPos_Compute ($EF2B); JSR $A30A with enemy descriptor 2 HP=$08;
; defeat→$A34D→ObjType $2C item
_ObjHandler_Tank_5A_GrayBullet_Attacking__AfterPhysics:
        lda     #$10                            ; A605
        sta     $40                             ; A607
        lda     #$10                            ; A609
        sta     $41                             ; A60B
        jsr     ScreenPos_Compute               ; A60D
        beq     _ObjHandler_Tank_5A_Gray_Bullet_Attacking__OnScreen; A610
        jmp     Obj_TombstoneSlot               ; A612

; ----------------------------------------------------------------------------
; On-screen — TankEnemy_DamageCheck (descriptor $02); a kill takes JMP
; TankEnemy_DefeatTrackedEnemy ($A34D), else fall into render.
_ObjHandler_Tank_5A_Gray_Bullet_Attacking__OnScreen:
        lda     #$02                            ; A615
        jsr     TankEnemy_DamageCheck           ; A617
        beq     _ObjHandler_Tank_5A_Gray_Bullet_Attacking__Render; A61A
        jmp     TankEnemy_DefeatTrackedEnemy    ; A61C

; ----------------------------------------------------------------------------
; Alive — facing $47>>5 indexes the (attr,tile) table at $A6CF; set OAM attr $44, JMP
; MetaSprite_Render ($F011).
_ObjHandler_Tank_5A_Gray_Bullet_Attacking__Render:
        lda     LoadedObj + Obj::Facing         ; A61F
        lsr     a                               ; A621
        lsr     a                               ; A622
        lsr     a                               ; A623
        lsr     a                               ; A624
        lsr     a                               ; A625
        tax                                     ; A626
        lda     LA6CF,x                         ; A627
        ora     #$01                            ; A62A
        sta     $44                             ; A62C
        lda     LA6D0,x                         ; A62E
        jmp     MetaSprite_Render               ; A631

.endmacro

.macro MAC_L_A6BF
; ----------------------------------------------------------------------------
L_A6BF: .byte   $C0                             ; A6BF
L_A6C0: .byte   $6A,$00,$68,$00,$6A,$C0,$68,$40 ; A6C0
        .byte   $68,$80,$6A,$80,$68,$40,$6A     ; A6C8
LA6CF:  .byte   $00                             ; A6CF
LA6D0:  .byte   $6A,$80,$68,$40,$6A,$00,$68     ; A6D0
.endmacro

