.macro MAC_L_A670
; ----------------------------------------------------------------------------
; (alpha: not fully human-verified / pending re-verification) Applies movement and collision. 
; Then uses collision flags to see if an edge-wrap is required.
; 
; Handles inside wraps (both x and y collision flags set) and outside wraps (neither set).'
; 
; Step the bullet's orientation (LoadedObj.Facing) by $40 (90°) toward target dir
; TerrainCollisionFlags.
; 
; Input:
;   Y = Movement speed
; 
; Output:
;   when an edge-wrap happened and the Obj's heading rotated,
;     A = $00
;   otherwise,
;     A = $FF
; 
; Note: This needs verifying dynamically.  There's a good chance I mixed up the concepts of
; inside/outside corners with CW/CCW walking.
; 
; Start by stashing input arg Y into WR_Context_Dependent_05
Bullet_WalkSurface:
        sty     $05                             ; A670
; Apply movement and collision detection.
        jsr     Obj_MoveAndCollide              ; A672
        lda     LoadedObj + Obj::Scratch1       ; A675
; if CornerWrapCooldown timer (Scratch 1) is 0, skip to Idle handler.
        beq     _Bullet_WalkSurface__Idle       ; A677
; otherwise, decrement timer.
        dec     LoadedObj + Obj::Scratch1       ; A679
; if still > 0, skip to CoolingDown handler.
        bne     _Bullet_WalkSurface__CoolingDown; A67B
        lda     TerrainCollisionFlags           ; A67D
; otherwise, check TerrainCollisionFlags.  If no collisions (floating) return $00;
        beq     _Bullet_WalkSurface__Return_Rotated; A67F
; otherwise, return $FF.
        bne     _Bullet_WalkSurface__Return_NotRotated; A681
; Still cooling down (Scratch1 > 0)
_Bullet_WalkSurface__CoolingDown:
        and     #$03                            ; A683
; Here, A should still be the un-decremented countdown value.
; This is at least 2, otherwise we wouldn't be here.
; 
; if A & b0000_0011 != 0, return $FF (not sure why).
        bne     _Bullet_WalkSurface__Return_NotRotated; A685
        lda     TerrainCollisionFlags           ; A687
        ldx     LoadedObj + Obj::Scratch0       ; A689
; If LoadedObj.Orientation (Scratch0) is positive, skip to TryCornerWrap handler.
        bpl     _Bullet_WalkSurface__TryCornerWrap; A68B
; Otherwise, flip A (TerrainCollisionFlags) bits 6 and 7 (x and y collisions)
; This seems to allow handling both inside and outside corner wraps.
        eor     #$C0                            ; A68D
_Bullet_WalkSurface__TryCornerWrap:
        tax                                     ; A68F
        lda     LoadedObj + Obj::Facing         ; A690
        cpx     #$00                            ; A692
; if X (TerrainCollisionFlags) != 0, skip to inside edge-wrap logic.
        bne     _Bullet_WalkSurface__TryInsideCornerWrap; A694
; otherwise,
_Bullet_WalkSurface__DoOutsideCornerWrap:
        sec                                     ; A696
        sbc     #$40                            ; A697
        jmp     _Bullet_WalkSurface__ApplyNewHeading; A699

; ----------------------------------------------------------------------------
_Bullet_WalkSurface__TryInsideCornerWrap:
        cpx     #$C0                            ; A69C
; If still colliding (bit6 or bit7 set: touching a surface), return $FF.
        bne     _Bullet_WalkSurface__Return_NotRotated; A69E
        clc                                     ; A6A0
; otherwise, we've walked off the edge, so performed and edge-wrap by adding 90deg ($40) to
; LoadedObj.Facing.
        adc     #$40                            ; A6A1
_Bullet_WalkSurface__ApplyNewHeading:
        sta     LoadedObj + Obj::Facing         ; A6A3
        ldy     $05                             ; A6A5
        jsr     Obj_FacingToVelocity            ; A6A7
        jmp     _Bullet_WalkSurface__Return_NotRotated; A6AA

; ----------------------------------------------------------------------------
; Resets the CornerWrapCooldown timer according to TerrainCollisionFlags
;   | bit 7 | bit 6 | Result                    |
;   |-------|-------|---------------------------|
;   | 0     | 0     | CornerWrapCooldown = #$08 |
;   | 0     | 1     | nothing                   |
;   | 1     | 0     | nothing                   |
;   | 1     | 1     | CornerWrapCooldown = #$08 |
_Bullet_WalkSurface__Idle:
        lda     TerrainCollisionFlags           ; A6AD
; if TerrainCollisionFlags bit7 unset, no-y collision.  skip to x-collision check.
        bpl     _Bullet_WalkSurface__MaybeArm   ; A6AF
; if TerrainCollisionFlags bit7 is set, invert bit6 and bit7 flags, no-y collision.  skip to
; x-collision check.
        eor     #$C0                            ; A6B1
; if not aligned, re-arm cooldown $51=$08.
_Bullet_WalkSurface__MaybeArm:
        bne     _Bullet_WalkSurface__Return_NotRotated; A6B3
        lda     #$08                            ; A6B5
        sta     LoadedObj + Obj::Scratch1       ; A6B7
_Bullet_WalkSurface__Return_NotRotated:
        lda     #$FF                            ; A6B9
        rts                                     ; A6BB

; ----------------------------------------------------------------------------
_Bullet_WalkSurface__Return_Rotated:
        lda     #$00                            ; A6BC
        rts                                     ; A6BE

.endmacro

