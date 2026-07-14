.macro MAC_L_AFFC
ObjHandler_Tank_76_Shooter_Init:
        jmp     _ObjHandler_Tank_76_Shooter_Init__Done; AFFC

; ----------------------------------------------------------------------------
; init body: JSR TankEnemy_Init ($A2E9) desc $10 (HP $10); JSR $EB71 → $47 = random launch angle;
; LDY #$14 speed → JSR $E1BD angle→velocity vector $4C/$4D; $52=0; RTS  [+3 body entry]
_ObjHandler_Tank_76_Shooter_Init__Update__:
        lda     #$10                            ; AFFF
        jsr     L_A2E9                          ; B001
        jsr     LEB71                           ; B004
        sta     $47                             ; B007
        ldy     #$14                            ; B009
        jsr     LE1BD                           ; B00B
        lda     #$00                            ; B00E
        sta     $52                             ; B010
; Init body terminal RTS; the +0 (render) entry JMPs here — this Init draws nothing.
_ObjHandler_Tank_76_Shooter_Init__Done:
        rts                                     ; B012

; ----------------------------------------------------------------------------
; (alpha: not fully human-verified) 
; ObjType $77 — Shooter (Thing $10), active. A free-drifting enemy that bounces off terrain and
; shoots Small Red shots at the player, but only while its drift already carries it toward them
; and only at a player level with or below it — so it never fires backwards or upwards, and spends
; its time circling until the geometry lines up. Each shot costs a 16-frame recoil during which it
; holds a distinct pose and cannot fire again. HP 16; on death it explodes and may drop a
; Health-x1 pickup. Dual-entry: ObjState 0 runs the hit/render tail only, ObjState 1 the full body
; at +3. See docs/entities/tank/76-77_shooter.md
; ObjState 0: skip all logic, straight to the shared hit/render tail
ObjHandler_Tank_77_Shooter_Main:
        jmp     _ObjHandler_Tank_77_Shooter_Main__HitCheck; B013

; ----------------------------------------------------------------------------
; ObjState 1 body — drift, then decide whether to fire  [+3 body entry]
; $42/$43 = $80: terrain-collision half-extents for the move below
_ObjHandler_Tank_77_Shooter_Main__Update__:
        lda     #$80                            ; B016
        sta     $42                             ; B018
        lda     #$80                            ; B01A
        sta     $43                             ; B01C
; advance by velocity and bounce off walls (reflects $4C on a horizontal wall, $4D on a vertical
; one)
_note_B01E:
        jsr     LDF68                           ; B01E
; fire cooldown $52 — zero means free to fire
_note_B021:
        lda     $52                             ; B021
        beq     _ObjHandler_Tank_77_Shooter_Main__FireCheck; B023
; still cooling down: tick it and hold the recoil pose ($50 = 0)
_note_B025:
        dec     $52                             ; B025
        lda     #$00                            ; B027
        sta     $50                             ; B029
        jmp     _ObjHandler_Tank_77_Shooter_Main__HitCheck; B02B

; ----------------------------------------------------------------------------
; Fire gate — both aim conditions must hold, else fall through unfired
; signed X-distance to player EOR X-velocity sign: negative = drifting AWAY, so hold fire
_ObjHandler_Tank_77_Shooter_Main__FireCheck:
        jsr     LE0ED                           ; B02E
        eor     $4C                             ; B031
        bmi     _ObjHandler_Tank_77_Shooter_Main__SetActive; B033
; signed Y-distance: negative = player is above, so hold fire (it only shoots level or downward)
_note_B035:
        jsr     LE0FA                           ; B035
        bmi     _ObjHandler_Tank_77_Shooter_Main__SetActive; B038
; child to spawn = ObjType $3C (Small Red shot)
_note_B03A:
        lda     #$3C                            ; B03A
        sta     $A0                             ; B03C
; rate-limited spawn — throttles internally on the frame counter and RNG; Z = no shot this frame
_note_B03E:
        jsr     LDF36                           ; B03E
        beq     _ObjHandler_Tank_77_Shooter_Main__SetActive; B041
; shot away: start the 16-frame recoil cooldown
_note_B043:
        lda     #$10                            ; B043
        sta     $52                             ; B045
; Searching pose ($50 = 1) — reached whether or not a shot went out
_ObjHandler_Tank_77_Shooter_Main__SetActive:
        lda     #$01                            ; B047
        sta     $50                             ; B049
; Shared hit/render tail — also the ObjState 0 entry
; $40/$41 = $10: 16×16 hitbox
_ObjHandler_Tank_77_Shooter_Main__HitCheck:
        lda     #$10                            ; B04B
        sta     $40                             ; B04D
        lda     #$10                            ; B04F
        sta     $41                             ; B051
; screen position + overlap against the player's shots
_note_B053:
        jsr     LEF2B                           ; B053
        beq     _ObjHandler_Tank_77_Shooter_Main__Damage; B056
; off-screen: despawn
_note_B058:
        jmp     LD7F8                           ; B058

; ----------------------------------------------------------------------------
; Apply any hit, and die if it emptied the HP
; enemy descriptor $10 (HP 16)
_ObjHandler_Tank_77_Shooter_Main__Damage:
        lda     #$10                            ; B05B
        jsr     L_A30A                          ; B05D
        beq     _ObjHandler_Tank_77_Shooter_Main__Render; B060
; killed: explosion, and maybe a Health-x1 drop
_note_B062:
        jmp     L_A34D                          ; B062

; ----------------------------------------------------------------------------
; Draw the sprite — pose follows the cooldown, facing follows the drift
; OAM attr = sprite sub-palette 1, H-flipped by the sign of $4C
_ObjHandler_Tank_77_Shooter_Main__Render:
        lda     #$01                            ; B065
        jsr     LE04E                           ; B067
; pose select: $50 non-zero (searching) keeps metasprite $6C…
_note_B06A:
        ldx     #$6C                            ; B06A
        lda     $50                             ; B06C
        bne     _ObjHandler_Tank_77_Shooter_Main__TileBase; B06E
; …$50 == 0 (recoiling) bumps it to $6D
_note_B070:
        inx                                     ; B070
; Tail-call the metasprite renderer with the chosen id
_ObjHandler_Tank_77_Shooter_Main__TileBase:
        txa                                     ; B071
        jmp     LF011                           ; B072

; ----------------------------------------------------------------------------
        rts                                     ; B075

; ----------------------------------------------------------------------------
.endmacro

