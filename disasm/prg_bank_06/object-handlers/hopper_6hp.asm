.macro MAC_L_A7CB
; ----------------------------------------------------------------------------
; ObjType $5F — Gray Hopper (6 HP), init. One-frame setup for the hopping enemy.
ObjHandler_Tank_5F_Gray_Hopper_6HP_Init:
        jmp     _ObjHandler_Tank_5F_Gray_Hopper_6HP_Init__Done; A7CB

; ----------------------------------------------------------------------------
_ObjHandler_Tank_5F_Gray_Hopper_6HP_Init__Update__:
        lda     #$05                            ; A7CE
; Init the enemy from descriptor $05.
        jsr     TankEnemy_Init                  ; A7D0
        lda     #$30                            ; A7D3
; LoadedObj_Scratch is the base hop speed.  Set this to $30.
        sta     $52                             ; A7D5
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
; commit the heading, then zero Velocity X/Y and the wind-up timer LoadedObj_AnimFrame
_ObjHandler_Tank_5F_GrayHopper6HP_Init__StoreFacing:
        sta     LoadedObj + Obj::Facing         ; A7E3
        lda     #$00                            ; A7E5
        sta     LoadedObj + Obj::Velocity_X     ; A7E7
        sta     LoadedObj + Obj::Velocity_Y     ; A7E9
        sta     $51                             ; A7EB
_ObjHandler_Tank_5F_Gray_Hopper_6HP_Init__Done:
        rts                                     ; A7ED

; ----------------------------------------------------------------------------
; ObjType $60 — Gray Hopper (6 HP), active: the hopping/attack half of the enemy. It falls under
; gravity; on each floor landing it either settles into the walking state $61 or aims a fresh,
; near-vertical hop at the player, and either way it then sits out a 10-frame wind-up on the
; ground before the stored hop velocity carries it up — so it bounds across the ground toward the
; player in bursts.
ObjHandler_Tank_60_Gray_Hopper_6HP_Attacking:
        jmp     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__Render__; A7EE

; ----------------------------------------------------------------------------
; $42 = $80 / $43 = $C0: terrain-collision half-extents (16×24 box) — then gate on the wind-up
; timer $51
_ObjHandler_Tank_60_Gray_Hopper_6HP_Attacking__Update__:
        lda     #$80                            ; A7F1
        sta     LoadedObj_CollisionBox_HalfWidth; A7F3
        lda     #$C0                            ; A7F5
        sta     LoadedObj_CollisionBox_HalfHeight; A7F7
        lda     $51                             ; A7F9
; If LoadedObj_AnimFrame (wind-up) is at 0, then proceed to ground check.
        beq     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__OnWindUpExpired; A7FB
; otherwise, decrement LoadedObj_AnimFrame (wind-up).
        dec     $51                             ; A7FD
        jmp     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__Render__; A7FF

; ----------------------------------------------------------------------------
; wind-up over: take one ballistic step (Obj_GravityMoveBounce_Double with gravity $04, which also
; reflects and damps the velocity on contact) and test bit 6 of the wall flags it returns — a
; vertical, i.e. floor-or-ceiling, contact. Clear means still airborne, so just draw.
_ObjHandler_Tank_60_GrayHopper6HP_Attacking__OnWindUpExpired:
        lda     #$04                            ; A802
        jsr     Obj_GravityMoveBounce_Double    ; A804
        and     #$40                            ; A807
        beq     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__Render__; A809
; Handle vertical contact.  Obj_GravityMoveBounce_Double reflects LoadedObj's Velocity_Y on the
; hit so,
; a negative value (pointing up) implies landing
; a positive value implies a ceiling bonk.
        lda     LoadedObj + Obj::Velocity_Y     ; A80B
        bpl     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__Render__; A80D
; On Landed:
; Set the 10-frame wind-up (AnimFrame)
        lda     #$0A                            ; A80F
        sta     $51                             ; A811
; then spin Step_RNG to choose whicn state to transition to.
        jsr     Step_RNG                        ; A813
; if either the Carry Flag is unset or if Global_FrameCounter is negative, then carry on with the
; attack.
        bcc     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__Jump; A816
        lda     Global_FrameCounter             ; A818
        bpl     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__Jump; A81A
; Otherwise, transition to the patrolling state.
        inc     LoadedObj + Obj::Type           ; A81C
        jmp     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__Render__; A81E

; ----------------------------------------------------------------------------
; hop: play sound $29, then aim. The delta is the X distance (LoadedObj__Get_DeltaToPlayer_X =
; player.X − obj.X), not a Y distance — negative means the player is to the LEFT.
_ObjHandler_Tank_60_GrayHopper6HP_Attacking__Jump:
        lda     #$29                            ; A821
        jsr     Enqueue_Sound_Command           ; A823
        jsr     LoadedObj__Get_DeltaToPlayer_X  ; A826
        bmi     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__Heading_PlayerLeft; A829
        lda     #$C8                            ; A82B
        jmp     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__Launch; A82D

; ----------------------------------------------------------------------------
; player to the LEFT → heading $B8 = $C0 − $08, tilted 11.25° left of straight up (the $C8 above
; is the mirror, for a player to the right). This is the correctly-aimed pair; the Init at
; $A7DC/$A7E1 assigns the same two constants the other way round.
_ObjHandler_Tank_60_GrayHopper6HP_Attacking__Heading_PlayerLeft:
        lda     #$B8                            ; A830
; launch: commit the heading to $47 and pass the speed magnitude $52 + (Step_RNG & $0F) = $30..$3F
; to Obj_AngleToVelocity in Y. This is a velocity computation, not a child spawn — $E1BD resolves
; heading+speed into $4C/$4D through Trig_QuarterSineTable.
; Because $B8/$C8 sit only $08 either side of straight up, the components come out about 4:1 in
; favour of the vertical: |cos| = 25 and |sin| = 125 out of the table's $7F peak, scaled by the
; speed and shifted down 8, giving $4D ≈ −23..−30 (upward) against $4C ≈ ±4..±6. So it leaps
; almost straight up and only drifts onto the player.
_ObjHandler_Tank_60_GrayHopper6HP_Attacking__Launch:
        sta     LoadedObj + Obj::Facing         ; A832
        jsr     Step_RNG                        ; A834
        and     #$0F                            ; A837
        clc                                     ; A839
        adc     $52                             ; A83A
        tay                                     ; A83C
        jsr     Obj_AngleToVelocity             ; A83D
; +0 (fade/freeze) entry, and the tail every other path falls into: $40/$41 give ScreenPos_Compute
; the box's FULL extent — $10 wide by $18 tall, a 16x24 box, which that routine halves itself. It
; returns $00 on-screen; anything else means the hopper has scrolled away, so park the slot via
; Obj_StashTypeSetState02.
_ObjHandler_Tank_60_GrayHopper6HP_Attacking__Render__:
        lda     #$10                            ; A840
        sta     $40                             ; A842
        lda     #$18                            ; A844
        sta     $41                             ; A846
        jsr     LEF2B                           ; A848
        beq     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__Damage; A84B
        jmp     LD7F8                           ; A84D

; ----------------------------------------------------------------------------
; on-screen: run the shared damage check against descriptor $05. A non-zero return means this hit
; killed it — tail-call TankEnemy_Defeat, which does the per-slot bookkeeping and falls into the
; drop spawner.
_ObjHandler_Tank_60_GrayHopper6HP_Attacking__Damage:
        lda     #$05                            ; A850
        jsr     L_A30A                          ; A852
        beq     _ObjHandler_Tank_60_GrayHopper6HP_Attacking__Render; A855
        jmp     L_A34D                          ; A857

; ----------------------------------------------------------------------------
; still alive: $44 = sprite palette 1, plus the horizontal-flip bit when the X velocity $4C is
; non-negative (Obj_SetAttrFlipX derives the flip from $4C, NOT from the heading $47). Then pick
; the pose from the wind-up timer.
_ObjHandler_Tank_60_GrayHopper6HP_Attacking__Render:
        lda     #$01                            ; A85A
        jsr     LE04E                           ; A85C
        lda     $51                             ; A85F
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

