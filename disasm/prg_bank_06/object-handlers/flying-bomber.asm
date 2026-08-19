.macro MAC_L_AC3C
; ----------------------------------------------------------------------------
; ObjType $6C: Flying Bomber - Init.
ObjHandler_Tank_6C_Flying_Bomber_Init:
        jmp     _ObjHandler_Tank_6C_Flying_Bomber_Init__Done; AC3C

; ----------------------------------------------------------------------------
_ObjHandler_Tank_6C_Flying_Bomber_Init__Update__:
        lda     #$0B                            ; AC3F
; Init the enemy from descriptor $0B.
        jsr     TankEnemy_Init                  ; AC41
; call LoadedObj__Get_DeltaToPlayer_X to store signed X distance to player in A
        jsr     LoadedObj__Get_DeltaToPlayer_X  ; AC44
        and     #$80                            ; AC47
; Keep only bit 7 and store as LoadedObj.Facing
        sta     LoadedObj + Obj::Facing         ; AC49
        bpl     _ObjHandler_Tank_6C_Flying_Bomber_Init__PlayerRight; AC4B
; if facing left, 'swoop-up' turn-increment is angle $10
        lda     #$10                            ; AC4D
        bne     _ObjHandler_Tank_6C_Flying_Bomber_Init__StoreTurnIncrement; AC4F
; if facing right, 'swoop-up' turn-increment is angle $f0
_ObjHandler_Tank_6C_Flying_Bomber_Init__PlayerRight:
        lda     #$F0                            ; AC51
; Store turn-increment into Scratch2
_ObjHandler_Tank_6C_Flying_Bomber_Init__StoreTurnIncrement:
        sta     LoadedObj + Obj::Scratch2       ; AC53
        lda     #$00                            ; AC55
; Clear Scratch0
        sta     LoadedObj + Obj::Scratch0       ; AC57
        lda     #$00                            ; AC59
; Clear Scratch1.
        sta     LoadedObj + Obj::Scratch1       ; AC5B
        ldy     #$28                            ; AC5D
; call Obj_AngleToVelocity to set velocity based on LoadedObj.Facing (angle) and scalar $28 (2.5)
        jsr     Obj_AngleToVelocity             ; AC5F
_ObjHandler_Tank_6C_Flying_Bomber_Init__Done:
        rts                                     ; AC62

; ----------------------------------------------------------------------------
; ObjType $6D: Flying Bomber - Main
ObjHandler_Tank_6D_Flying_Bomber_Main:
        jmp     _ObjHandler_Tank_6D_FlyingBomber_Main__AfterPhysics; AC63

; ----------------------------------------------------------------------------
; Main behaviour logic.
; 
; Start by setting collision box dimensions
_ObjHandler_Tank_6D_Flying_Bomber_Main__Update__:
        lda     #$80                            ; AC66
        sta     $42                             ; AC68
        lda     #$80                            ; AC6A
        sta     $43                             ; AC6C
        lda     LoadedObj + Obj::Scratch1       ; AC6E
; if bomb-drop cooldown is 0, skip ahead.
        beq     _ObjHandler_Tank_6D_FlyingBomber_Main__ActiveCheck; AC70
; otherwise, decrement cooldown.
        dec     LoadedObj + Obj::Scratch1       ; AC72
_ObjHandler_Tank_6D_FlyingBomber_Main__ActiveCheck:
        lda     LoadedObj + Obj::Scratch0       ; AC74
; if HasFired flag not set, skip to approach logic.
        beq     _ObjHandler_Tank_6D_FlyingBomber_Main__ApproachPhase; AC76
; otherwise, update heading to 'swoop up'.  This moves heading towards UP.
        jsr     Obj_TurnHeading                 ; AC78
; The following section checks if the Facing heading is 'UP' ($C0 aka 1100_0000)
; 
; Since the initial headings and the angle increments applied to them don't use the bottom nibble,
; we know they're always 0.
; 
; And since UP is 1100_0000, we test if the heading is UP by dropping the top two bits and
; checking the Z status flag.
; 
; This seems convoluted.  The two ASL require 4 cycles.
; CMP #$C0 would have required just 2.
        asl     a                               ; AC7B
        asl     a                               ; AC7C
; If the heading isn't UP yet, skip ahead.
        bne     _ObjHandler_Tank_6D_FlyingBomber_Main__ActiveMove; AC7D
        lda     #$00                            ; AC7F
; Otherwise, clear the HasFired flag (Scratch0)
        sta     LoadedObj + Obj::Scratch0       ; AC81
_ObjHandler_Tank_6D_FlyingBomber_Main__ActiveMove:
        ldy     #$28                            ; AC83
; Compute new velocities according to heading and scalar in Y
        jsr     Obj_AngleToVelocity             ; AC85
; Apply velocities and handle collisions.
        jsr     LE083                           ; AC88
; Skip to post-physics tail.
        jmp     _ObjHandler_Tank_6D_FlyingBomber_Main__AfterPhysics; AC8B

; ----------------------------------------------------------------------------
; Start by calculating X-delta to player
_ObjHandler_Tank_6D_FlyingBomber_Main__ApproachPhase:
        jsr     LoadedObj__Get_DeltaToPlayer_X  ; AC8E
; If already positive, skip to x-align check.
        bpl     _ObjHandler_Tank_6D_FlyingBomber_Main__XAlignCheck; AC91
; Otherwise, negate signed A to get absolute value.
        eor     #$FF                            ; AC93
        clc                                     ; AC95
        adc     #$01                            ; AC96
_ObjHandler_Tank_6D_FlyingBomber_Main__XAlignCheck:
        cmp     #$01                            ; AC98
; if player is 1 or more tiles away, skip to physics.
        bcs     _ObjHandler_Tank_6D_FlyingBomber_Main__ApplyPhysics; AC9A
        lda     LoadedObj + Obj::Scratch1       ; AC9C
; if still in cooldown, skip to physics.
        bne     _ObjHandler_Tank_6D_FlyingBomber_Main__ApplyPhysics; AC9E
        lda     #$38                            ; ACA0
        sta     $A0                             ; ACA2
; otherwise, drop a Big Gray bomb ($38) via Obj_SpawnChild_A0
        jsr     Obj_SpawnChild_A0               ; ACA4
        lda     LoadedObj + Obj::Scratch2       ; ACA7
; if the angle delta used in the swoop-up is positive, skip to Bomb physics
        bpl     _ObjHandler_Tank_6D_FlyingBomber_Main__DirCompute; ACA9
; otherwise, negate angle to get absolute value.
        eor     #$FF                            ; ACAB
        clc                                     ; ACAD
        adc     #$01                            ; ACAE
; orient the dropped bomb by the bomber's own X-velocity sign
_ObjHandler_Tank_6D_FlyingBomber_Main__DirCompute:
        ldx     LoadedObj + Obj::Velocity_X     ; ACB0
; If parent is moving the the left, skip to post-drop logic.
        bmi     _ObjHandler_Tank_6D_FlyingBomber_Main__AfterDrop; ACB2
; Otherwise, flip heading vertically (eg, down-right becomes up-right)
        eor     #$FF                            ; ACB4
        clc                                     ; ACB6
        adc     #$01                            ; ACB7
        sta     LoadedObj + Obj::Scratch2       ; ACB9
; arm the cooldown (Scratch1) and set the HasFired flag (Scratch0)
_ObjHandler_Tank_6D_FlyingBomber_Main__AfterDrop:
        lda     #$40                            ; ACBB
        sta     LoadedObj + Obj::Scratch1       ; ACBD
        lda     #$01                            ; ACBF
        sta     LoadedObj + Obj::Scratch0       ; ACC1
; Apply physics.
; 
; Start by applying velocities and collisions.
_ObjHandler_Tank_6D_FlyingBomber_Main__ApplyPhysics:
        jsr     LE083                           ; ACC3
; if A is positive, no horizontal collision happened, so skip ahead.
        bpl     _ObjHandler_Tank_6D_FlyingBomber_Main__AfterPhysics; ACC6
; otherwise, handle reflecting off a side wall.
        jsr     LE0D8                           ; ACC8
        ldy     #$28                            ; ACCB
; and update velocities based on Facing heading and scalar Y
        jsr     Obj_AngleToVelocity             ; ACCD
_ObjHandler_Tank_6D_FlyingBomber_Main__AfterPhysics:
        lda     #$10                            ; ACD0
        sta     $40                             ; ACD2
        lda     #$10                            ; ACD4
        sta     $41                             ; ACD6
; if object is on-screen, handle damage logic.
        jsr     ScreenPos_Compute               ; ACD8
        beq     _ObjHandler_Tank_6D_FlyingBomber_Main__Damage; ACDB
; Otherwise, immediately despawn.  No tombstoning.
        jmp     Obj_DespawnAndLog               ; ACDD

; ----------------------------------------------------------------------------
_ObjHandler_Tank_6D_FlyingBomber_Main__Damage:
        lda     #$0B                            ; ACE0
; Run common damage handler TankEnemy_DamageCheck with enemy descriptor $0B
        jsr     TankEnemy_DamageCheck           ; ACE2
; if still alive, skip to render tail, otherwise call defeat handler.
        beq     _ObjHandler_Tank_6D_FlyingBomber_Main__Render; ACE5
        jmp     TankEnemy_Defeat                ; ACE7

; ----------------------------------------------------------------------------
_ObjHandler_Tank_6D_FlyingBomber_Main__Render:
        lda     #$01                            ; ACEA
; Update OAM FlipX bit.
        jsr     Obj_SetAttrFlipX                ; ACEC
        ldx     #$2F                            ; ACEF
        lda     LoadedObj + Obj::Scratch0       ; ACF1
; Select metasprite id to draw (affected by HasFired flag).
        beq     _ObjHandler_Tank_6D_FlyingBomber_Main__TileActive; ACF3
        inx                                     ; ACF5
; draw metasprite.
_ObjHandler_Tank_6D_FlyingBomber_Main__TileActive:
        txa                                     ; ACF6
        jmp     MetaSprite_Render               ; ACF7

; ----------------------------------------------------------------------------
; Single unreachable $60 (RTS).
DEAD_TankFlyingBomber_OrphanRTS:
        rts                                     ; ACFA

.endmacro

