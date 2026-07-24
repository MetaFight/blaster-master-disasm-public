.macro MAC_L_AFFC
; ----------------------------------------------------------------------------
; (alpha: not fully human-verified / pending re-verification) ObjType $76 — Shooter (Thing $10,
; 'Gray Shooter'), init. Launches the Shooter on a random straight line: a heading drawn from the
; RNG and a fixed speed, with its gun already loaded. Every Shooter therefore starts drifting in a
; different direction, and it is the Main handler's terrain bouncing that turns that into the
; circling patrol the player sees. TankEnemy_Init advances it to ObjType $77, so this runs for
; exactly one frame. Dual-entry: the +0 (fade/freeze) entry lands on the body's own RTS — this
; Init draws nothing. See docs/entities/tank/76-77_shooter.md
ObjHandler_Tank_76_Shooter_Init:
        jmp     _ObjHandler_Tank_76_Shooter_Init__Done; AFFC

; ----------------------------------------------------------------------------
; Normal-play body — pick a random heading and launch  [+3 body entry]
; enemy descriptor $10: HP 16, and a $80/256 (50%) chance of a Health-x1 ($2C) drop.
; TankEnemy_Init also does INC $46, so the next frame runs ObjType $77
_ObjHandler_Tank_76_Shooter_Init__Update__:
        lda     #$10                            ; AFFF
        jsr     L_A2E9                          ; B001
; $47 is the heading angle (0–255 = full circle), not a state byte — seed it straight from the RNG
        jsr     LEB71                           ; B004
        sta     $47                             ; B007
; speed $14, converted with the heading into the velocity pair $4C/$4D. This is the only place the
; Shooter's velocity is set; nothing steers it afterwards
        ldy     #$14                            ; B009
        jsr     LE1BD                           ; B00B
; gun ready — no recoil to work off
        lda     #$00                            ; B00E
        sta     $52                             ; B010
; Init body terminal RTS; the +0 (render) entry JMPs here — this Init draws nothing.
_ObjHandler_Tank_76_Shooter_Init__Done:
        rts                                     ; B012

; ----------------------------------------------------------------------------
; (alpha: not fully human-verified / pending re-verification) ObjType $77 — Shooter (Thing $10),
; active. A free-drifting enemy that bounces off terrain and shoots Small Red shots at the player,
; but only while its drift already carries it toward them and only at a player level with or below
; it — so it never fires backwards or upwards, and spends its time circling until the geometry
; lines up. Each shot costs a 16-frame recoil during which it holds a distinct pose and cannot
; fire again. HP 16; on death it explodes and may drop a Health-x1 pickup. Dual-entry: in normal
; play ($15 == 0) the object loop enters at +3 and runs the whole body; while a fade or freeze is
; up ($15 != 0) it enters at +0, which skips straight to the hit/render tail. See
; docs/entities/tank/76-77_shooter.md
; +0 (fade/freeze) entry: skip all logic, straight to the shared hit/render tail
ObjHandler_Tank_77_Shooter_Main:
        jmp     _ObjHandler_Tank_77_Shooter_Main__Render__; B013

; ----------------------------------------------------------------------------
; Normal-play body — drift, then decide whether to fire  [+3 body entry]
; $42/$43 = $80: terrain-collision half-extents for the move below
_ObjHandler_Tank_77_Shooter_Main__Update__:
        lda     #$80                            ; B016
        sta     $42                             ; B018
        lda     #$80                            ; B01A
        sta     $43                             ; B01C
; advance by velocity and bounce off walls (reflects $4C on a horizontal wall, $4D on a vertical
; one)
        jsr     LDF68                           ; B01E
; fire cooldown $52 — zero means free to fire
        lda     $52                             ; B021
        beq     _ObjHandler_Tank_77_Shooter_Main__FireCheck; B023
; still cooling down: tick it and hold the recoil pose ($50 = 0)
        dec     $52                             ; B025
        lda     #$00                            ; B027
        sta     $50                             ; B029
        jmp     _ObjHandler_Tank_77_Shooter_Main__Render__; B02B

; ----------------------------------------------------------------------------
; Fire gate — both aim conditions must hold, else fall through unfired
; signed X-distance to player EOR X-velocity sign: negative = drifting AWAY, so hold fire
_ObjHandler_Tank_77_Shooter_Main__FireCheck:
        jsr     LE0ED                           ; B02E
        eor     LoadedObj_XVel                  ; B031
        bmi     _ObjHandler_Tank_77_Shooter_Main__SetActive; B033
; signed Y-distance: negative = player is above, so hold fire (it only shoots level or downward)
        jsr     LE0FA                           ; B035
        bmi     _ObjHandler_Tank_77_Shooter_Main__SetActive; B038
; child to spawn = ObjType $3C (Small Red shot)
        lda     #$3C                            ; B03A
        sta     $A0                             ; B03C
; rate-limited spawn — throttles internally on the frame counter and RNG; Z = no shot this frame
        jsr     LDF36                           ; B03E
        beq     _ObjHandler_Tank_77_Shooter_Main__SetActive; B041
; shot away: start the 16-frame recoil cooldown
        lda     #$10                            ; B043
        sta     $52                             ; B045
; Searching pose ($50 = 1) — reached whether or not a shot went out
_ObjHandler_Tank_77_Shooter_Main__SetActive:
        lda     #$01                            ; B047
        sta     $50                             ; B049
; Shared hit/render tail — also the +0 (fade/freeze) entry
; $40/$41 = $10: 16×16 hitbox
_ObjHandler_Tank_77_Shooter_Main__Render__:
        lda     #$10                            ; B04B
        sta     $40                             ; B04D
        lda     #$10                            ; B04F
        sta     $41                             ; B051
; screen position + overlap against the player's shots
        jsr     LEF2B                           ; B053
        beq     _ObjHandler_Tank_77_Shooter_Main__Damage; B056
; off-screen: despawn
        jmp     LD7F8                           ; B058

; ----------------------------------------------------------------------------
; Apply any hit, and die if it emptied the HP
; enemy descriptor $10 (HP 16)
_ObjHandler_Tank_77_Shooter_Main__Damage:
        lda     #$10                            ; B05B
        jsr     L_A30A                          ; B05D
        beq     _ObjHandler_Tank_77_Shooter_Main__Render; B060
; killed: explosion, and maybe a Health-x1 drop
        jmp     L_A34D                          ; B062

; ----------------------------------------------------------------------------
; Draw the sprite — pose follows the cooldown, facing follows the drift
; OAM attr = sprite sub-palette 1, H-flipped by the sign of $4C
_ObjHandler_Tank_77_Shooter_Main__Render:
        lda     #$01                            ; B065
        jsr     LE04E                           ; B067
; pose select: $50 non-zero (searching) keeps metasprite $6C…
        ldx     #$6C                            ; B06A
        lda     $50                             ; B06C
        bne     _ObjHandler_Tank_77_Shooter_Main__TileBase; B06E
; …$50 == 0 (recoiling) bumps it to $6D
        inx                                     ; B070
; Tail-call the metasprite renderer with the chosen id
_ObjHandler_Tank_77_Shooter_Main__TileBase:
        txa                                     ; B071
        jmp     LF011                           ; B072

; ----------------------------------------------------------------------------
        rts                                     ; B075

.endmacro

