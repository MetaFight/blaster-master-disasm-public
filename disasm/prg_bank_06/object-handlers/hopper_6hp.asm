.macro MAC_L_A7CB
; ----------------------------------------------------------------------------
; ObjType $5F: Gray Hopper (6 HP) - Init.
ObjHandler_Tank_5F_Gray_Hopper_6HP_Init:
        jmp     _ObjHandler_Tank_5F_Gray_Hopper_6HP_Init__Done; A7CB

; ----------------------------------------------------------------------------
_ObjHandler_Tank_5F_Gray_Hopper_6HP_Init__Update__:
        lda     #$05                            ; A7CE
; Init the enemy from descriptor $05.
        jsr     TankEnemy_Init                  ; A7D0
        lda     #$30                            ; A7D3
; LoadedObj_Scratch2 is the base hop speed.  Set this to $30.
        sta     LoadedObj + Obj::Scratch2       ; A7D5
; The next few lines set up the Facing field, but these values are overwritten before ever being
; used.
; And, unlike the attack phase, this choses to face AWAY from the player.
        jsr     LoadedObj__Get_DeltaToPlayer_X  ; A7D7
        bpl     _ObjHandler_Tank_5F_GrayHopper6HP_Init__Heading_PlayerRight; A7DA
; player is to the LEFT so set heading $C8 (11.25° CW from UP) which is AWAY from the player
        lda     #$C8                            ; A7DC
        jmp     _ObjHandler_Tank_5F_GrayHopper6HP_Init__StoreFacing; A7DE

; ----------------------------------------------------------------------------
; player is to the RIGHT so set heading to $B8 = $C0 (11.25° tilted CCW from UP) which, again, is
; AWAY from the player.
_ObjHandler_Tank_5F_GrayHopper6HP_Init__Heading_PlayerRight:
        lda     #$B8                            ; A7E1
; commit the heading, then zero Velocity X/Y and the wind-up timer LoadedObj_Scratch1
_ObjHandler_Tank_5F_GrayHopper6HP_Init__StoreFacing:
        sta     LoadedObj + Obj::Facing         ; A7E3
        lda     #$00                            ; A7E5
        sta     LoadedObj + Obj::Velocity_X     ; A7E7
        sta     LoadedObj + Obj::Velocity_Y     ; A7E9
        sta     LoadedObj + Obj::Scratch1       ; A7EB
_ObjHandler_Tank_5F_Gray_Hopper_6HP_Init__Done:
        rts                                     ; A7ED

; ----------------------------------------------------------------------------
; ObjType $60 — Gray Hopper (6 HP), active: the hopping/attack half of the enemy. It falls under
; gravity; on each floor landing it either settles into the walking state $61 or aims a fresh,
; near-vertical hop at the player, and either way it then sits out a 10-frame wind-up on the
; ground before the stored hop velocity carries it up — so it bounds across the ground toward the
; player in bursts.
ObjHandler_Tank_60_Gray_Hopper_6HP_Attacking:
        jmp     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__OnScreenCheck; A7EE

; ----------------------------------------------------------------------------
; $42 = $80 / $43 = $C0: terrain-collision half-extents (16×24 box) — then gate on the wind-up
; timer $51
_ObjHandler_Tank_60_Gray_Hopper_6HP_Attacking__Update__:
        lda     #$80                            ; A7F1
        sta     LoadedObj_CollisionBox_HalfWidth; A7F3
        lda     #$C0                            ; A7F5
        sta     LoadedObj_CollisionBox_HalfHeight; A7F7
        lda     LoadedObj + Obj::Scratch1       ; A7F9
; If LoadedObj_Scratch1 (wind-up) is at 0, then proceed to ground check.
        beq     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__OnWindUpExpired; A7FB
; otherwise, decrement LoadedObj_Scratch1 (wind-up).
        dec     LoadedObj + Obj::Scratch1       ; A7FD
        jmp     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__OnScreenCheck; A7FF

; ----------------------------------------------------------------------------
; wind-up over: take one ballistic step (Obj_GravityMoveBounce_Double with gravity $04, which also
; reflects and damps the velocity on contact) and test bit 6 of the wall flags it returns — a
; vertical, i.e. floor-or-ceiling, contact. Clear means still airborne, so just draw.
_ObjHandler_Tank_60_GrayHopper6HP_Attacking__OnWindUpExpired:
        lda     #$04                            ; A802
        jsr     Obj_GravityMoveBounce_Double    ; A804
        and     #$40                            ; A807
        beq     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__OnScreenCheck; A809
; Handle vertical contact.  Obj_GravityMoveBounce_Double reflects LoadedObj's Velocity_Y on the
; hit so,
; a negative value (pointing up) implies landing
; a positive value implies a ceiling bonk.
        lda     LoadedObj + Obj::Velocity_Y     ; A80B
        bpl     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__OnScreenCheck; A80D
; On Landed:
; Set the 10-frame wind-up (Scratch1)
        lda     #$0A                            ; A80F
        sta     LoadedObj + Obj::Scratch1       ; A811
; then spin Step_RNG to choose whicn state to transition to.
        jsr     Step_RNG                        ; A813
; if either the Carry Flag is unset or if Global_FrameCounter is negative, then carry on with the
; attack.
        bcc     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__Jump; A816
        lda     Global_FrameCounter             ; A818
        bpl     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__Jump; A81A
; Otherwise, transition to the patrolling state.
        inc     LoadedObj + Obj::Type           ; A81C
        jmp     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__OnScreenCheck; A81E

; ----------------------------------------------------------------------------
; Carry out Jump attack.
_ObjHandler_Tank_60_GrayHopper6HP_Attacking__Jump:
        lda     #$29                            ; A821
; Play sound $29.
        jsr     Enqueue_Sound_Command           ; A823
; Determine if the player is to the right or to the left.
        jsr     LoadedObj__Get_DeltaToPlayer_X  ; A826
; branch if player is to the left
        bmi     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__Heading_PlayerLeft; A829
; otherwise, handle player to the right.
; $C0 the heading for UP.  We want a heading pointing right, so we add 8 increments (clockwise)
; and use $C8.
        lda     #$C8                            ; A82B
        jmp     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__Launch; A82D

; ----------------------------------------------------------------------------
; When the player to the left we want a heading pointing left, so we move 8 increments
; (counter-clockwise) from UP giving us $B8.
_ObjHandler_Tank_60_GrayHopper6HP_Attacking__Heading_PlayerLeft:
        lda     #$B8                            ; A830
; Here he handle the physics of the jump.
; 
; <<< continue here, editing the block below >>>
; advance RNG
; pass the speed magnitude (Scratch2) + (Step_RNG & $0F) = $30..$3F to Obj_AngleToVelocity in Y.
; 
; Obj_AngleToVelocity resolves heading+speed into $4C/$4D through Trig_QuarterSineTable.
; Because $B8/$C8 sit only $08 either side of straight up, the components come out about 4:1 in
; favour of the vertical: |cos| = 25 and |sin| = 125 out of the table's $7F peak, scaled by the
; speed and shifted down 8, giving $4D ≈ −23..−30 (upward) against $4C ≈ ±4..±6. So it leaps
; almost straight up and only drifts onto the player.
; 
; Start by committing the heading to LoadedObj.Facing
_ObjHandler_Tank_60_GrayHopper6HP_Attacking__Launch:
        sta     LoadedObj + Obj::Facing         ; A832
; Next, take the lower 4 bits of the next random number to add a bit of randomness to the base
; jump speed (stored in Scratch2)
;   The base speed is $30
;   The randomness rangess from $00 to $0F, so
;   The resulting speed is $30..$3F
        jsr     Step_RNG                        ; A834
        and     #$0F                            ; A837
        clc                                     ; A839
        adc     LoadedObj + Obj::Scratch2       ; A83A
; Transfer this to Y to use as the Scale Factor argument when calling Obj_AngleToVelocity.
        tay                                     ; A83C
; This sets the Obj's Velocity, causing it to jump/attack.
        jsr     Obj_AngleToVelocity             ; A83D
_ObjHandler_Tank_60_GrayHopper6HP_Attacking__OnScreenCheck:
        lda     #$10                            ; A840
        sta     $40                             ; A842
        lda     #$18                            ; A844
        sta     $41                             ; A846
; Load Hitbox dimensions in LoadedObj_Hitbox_Width/Height and call ScreenPos_Compute
;   $00 means on-screen
;   $FF means off-screen
        jsr     ScreenPos_Compute               ; A848
; If still on-screen, run damage logic,
        beq     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__Damage; A84B
; otherwise, prep for despawn by tombstoning.
        jmp     Obj_TombstoneSlot               ; A84D

; ----------------------------------------------------------------------------
; on-screen: run the shared damage check against descriptor $05. A non-zero return means this hit
; killed it — tail-call TankEnemy_Defeat, which does the per-slot bookkeeping and falls into the
; drop spawner.
_ObjHandler_Tank_60_GrayHopper6HP_Attacking__Damage:
        lda     #$05                            ; A850
        jsr     TankEnemy_DamageCheck           ; A852
        beq     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__Render; A855
        jmp     TankEnemy_Defeat                ; A857

; ----------------------------------------------------------------------------
; still alive: $44 = sprite palette 1, plus the horizontal-flip bit when the X velocity $4C is
; non-negative (Obj_SetAttrFlipX derives the flip from $4C, NOT from the heading $47). Then pick
; the pose from the wind-up timer.
_ObjHandler_Tank_60_GrayHopper6HP_Attacking__Render:
        lda     #$01                            ; A85A
        jsr     LE04E                           ; A85C
        lda     LoadedObj + Obj::Scratch1       ; A85F
        beq     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__TileIdle; A861
; $51 ≠ 0 — on the ground, winding up → metasprite $02, the crouched pose with the leg planted
        lda     #$02                            ; A863
        jmp     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__SetTile; A865

; ----------------------------------------------------------------------------
; $51 = 0 — airborne (or free-falling) → metasprite $03, the tucked pose
_ObjHandler_Tank_60_GrayHopper6HP_Attacking__TileIdle:
        lda     #$03                            ; A868
; tail-call MetaSprite_Render ($F011) with the chosen metasprite id in A
_ObjHandler_Tank_60_GrayHopper6HP_Attacking__SetTile:
        jmp     LF011                           ; A86A

; ----------------------------------------------------------------------------
L_A86D: rts                                     ; A86D

.endmacro

