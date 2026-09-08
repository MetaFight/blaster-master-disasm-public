.macro MAC_L_B91A
; ----------------------------------------------------------------------------
L_B91A: jmp     L_B949                          ; B91A

; ----------------------------------------------------------------------------
L_B91D: lda     LoadedObj + Obj::Position_X_Hi  ; B91D
        lsr     a                               ; B91F
        bcc     L_B92D                          ; B920
        lda     #$A0                            ; B922
        sta     LoadedObj + Obj::Scratch0       ; B924
        lda     #$A0                            ; B926
        sta     LoadedObj + Obj::Facing         ; B928
        jmp     L_B935                          ; B92A

; ----------------------------------------------------------------------------
L_B92D: lda     #$60                            ; B92D
        sta     LoadedObj + Obj::Scratch0       ; B92F
        lda     #$E0                            ; B931
        sta     LoadedObj + Obj::Facing         ; B933
L_B935: ldy     #$18                            ; B935
        jsr     Obj_FacingToVelocity            ; B937
        lda     #$00                            ; B93A
        sta     LoadedObj + Obj::Scratch1       ; B93C
        sta     LoadedObj + Obj::Scratch2       ; B93E
        lda     #$1C                            ; B940
        jsr     TankEnemy_Init                  ; B942
        lda     #$8E                            ; B945
        sta     LoadedObj + Obj::Type           ; B947
L_B949: rts                                     ; B949

; ----------------------------------------------------------------------------
; ObjType $8D: Red Bullet (spawn variant B) - Init.
; 
; Exact same logic as ObjHandler_Tank_58_Gray_Bullet_B_Init.  Only differs in values used during
; init:
;   * Uses a movement speed of #$18 (1.5) instead of #$10 (1.0).
;   * Uses Enemy Descriptor #$8E instead of #$02.
ObjHandler_Tank_8D_Red_Bullet_B_Init:
        jmp     _ObjHandler_Tank_8D_Red_Bullet_B_Init__Done; B94A

; ----------------------------------------------------------------------------
_ObjHandler_Tank_8D_Red_Bullet_B_Init__Body:
        lda     LoadedObj + Obj::Position_X_Hi  ; B94D
        lsr     a                               ; B94F
        bcc     _ObjHandler_Tank_8D_Red_Bullet_B_Init__LeftSide; B950
        lda     #$A0                            ; B952
        sta     LoadedObj + Obj::Scratch0       ; B954
        lda     #$20                            ; B956
        sta     LoadedObj + Obj::Facing         ; B958
        jmp     _ObjHandler_Tank_8D_Red_Bullet_B_Init__SetProps; B95A

; ----------------------------------------------------------------------------
_ObjHandler_Tank_8D_Red_Bullet_B_Init__LeftSide:
        lda     #$60                            ; B95D
        sta     LoadedObj + Obj::Scratch0       ; B95F
        lda     #$60                            ; B961
        sta     LoadedObj + Obj::Facing         ; B963
_ObjHandler_Tank_8D_Red_Bullet_B_Init__SetProps:
        ldy     #$18                            ; B965
        jsr     Obj_FacingToVelocity            ; B967
        lda     #$00                            ; B96A
        sta     LoadedObj + Obj::Scratch1       ; B96C
        sta     LoadedObj + Obj::Scratch2       ; B96E
        lda     #$1D                            ; B970
        jsr     TankEnemy_Init                  ; B972
        lda     #$8E                            ; B975
; Set ObjType to #$8E (which is redundant since TankEnemy_Init already INCed it to that value).
        sta     LoadedObj + Obj::Type           ; B977
_ObjHandler_Tank_8D_Red_Bullet_B_Init__Done:
        rts                                     ; B979

; ----------------------------------------------------------------------------
; ObjType $8E: Red Bullet - Cling-walking.
; 
; Identical to ObjHandler_Tank_59_Gray_Bullet_Main apart from:
;   * Walking speed (#$18 instead of #$10)
;   * Attack launching speed (#$60 instead of #$40)
;   * Render code doesn't override palette (defaults to red palette).
ObjHandler_Tank_8E_Red_Bullet_Main:
        jmp     _ObjHandler_Tank_8E_Red_Bullet_Main__AfterPhysics; B97A

; ----------------------------------------------------------------------------
_ObjHandler_Tank_8E_Red_Bullet_Main__Body:
        lda     #$80                            ; B97D
        sta     $42                             ; B97F
        lda     #$80                            ; B981
        sta     $43                             ; B983
        ldy     #$18                            ; B985
        jsr     Bullet_WalkSurface              ; B987
        jsr     Obj_Get_DeltaToPlayer_X         ; B98A
        and     #$FC                            ; B98D
        bne     _ObjHandler_Tank_8E_Red_Bullet_Main__YBandCheck; B98F
_ObjHandler_Tank_8E_Red_Bullet_Main__XBandCheck:
        jsr     Obj_Get_DeltaToPlayer_Y_q12_4   ; B991
        beq     _ObjHandler_Tank_8E_Red_Bullet_Main__AfterPhysics; B994
        bne     _ObjHandler_Tank_8E_Red_Bullet_Main__TryAttack; B996
_ObjHandler_Tank_8E_Red_Bullet_Main__YBandCheck:
        jsr     Obj_Get_DeltaToPlayer_Y         ; B998
        and     #$FC                            ; B99B
        bne     _ObjHandler_Tank_8E_Red_Bullet_Main__AfterPhysics; B99D
        jsr     Obj_Get_DeltaToPlayer_X_q12_4   ; B99F
        beq     _ObjHandler_Tank_8E_Red_Bullet_Main__AfterPhysics; B9A2
_ObjHandler_Tank_8E_Red_Bullet_Main__TryAttack:
        lda     LoadedObj + Obj::Scratch0       ; B9A4
        clc                                     ; B9A6
        adc     LoadedObj + Obj::Facing         ; B9A7
        sta     $01                             ; B9A9
        jsr     L_A634                          ; B9AB
        cpx     $01                             ; B9AE
        bne     _ObjHandler_Tank_8E_Red_Bullet_Main__AfterPhysics; B9B0
        stx     LoadedObj + Obj::Facing         ; B9B2
        ldy     #$60                            ; B9B4
        jsr     Obj_FacingToVelocity            ; B9B6
        lda     #$10                            ; B9B9
        sta     LoadedObj + Obj::Scratch1       ; B9BB
        inc     LoadedObj + Obj::Type           ; B9BD
        rts                                     ; B9BF

; ----------------------------------------------------------------------------
_ObjHandler_Tank_8E_Red_Bullet_Main__AfterPhysics:
        lda     #$10                            ; B9C0
        sta     $40                             ; B9C2
        lda     #$10                            ; B9C4
        sta     $41                             ; B9C6
        jsr     ScreenPos_Compute               ; B9C8
        beq     _ObjHandler_Tank_8E_Red_Bullet_Main__DamageCheck; B9CB
        jmp     Obj_Tombstone                   ; B9CD

; ----------------------------------------------------------------------------
_ObjHandler_Tank_8E_Red_Bullet_Main__DamageCheck:
        lda     #$1C                            ; B9D0
        jsr     TankEnemy_DamageCheck           ; B9D2
        beq     _ObjHandler_Tank_8E_Red_Bullet_Main__Render; B9D5
        jmp     TankEnemy_DefeatTrackedEnemy    ; B9D7

; ----------------------------------------------------------------------------
_ObjHandler_Tank_8E_Red_Bullet_Main__Render:
        lda     LoadedObj + Obj::Scratch0       ; B9DA
        and     #$80                            ; B9DC
        sta     $00                             ; B9DE
        lda     LoadedObj + Obj::Facing         ; B9E0
        sec                                     ; B9E2
        sbc     #$20                            ; B9E3
        lsr     a                               ; B9E5
        ora     $00                             ; B9E6
        lsr     a                               ; B9E8
        lsr     a                               ; B9E9
        lsr     a                               ; B9EA
        lsr     a                               ; B9EB
        tax                                     ; B9EC
        lda     RedBullet_Walking_RenderParamLookup,x; B9ED
        sta     $44                             ; B9F0
        lda     Global_FrameCounter             ; B9F2
        lsr     a                               ; B9F4
        lsr     a                               ; B9F5
        lsr     a                               ; B9F6
        and     #$01                            ; B9F7
        ora     LBA71,x                         ; B9F9
        jmp     MetaSprite_Render               ; B9FC

; ----------------------------------------------------------------------------
L_B9FF: rts                                     ; B9FF

; ----------------------------------------------------------------------------
; ObjType $8F: Red Bullet - Attacking.
; 
; Identitcal to ObjHandler_Tank_5A_Gray_Bullet_Attacking apart from:
;   * Movement speed when returning to Walking state (#$18 instead of #$10)
;   * Rendering palette
;   * Damage Check enemy descriptor (#$1C instead of #$02)
ObjHandler_Tank_8F_Red_Bullet_Attacking:
        jmp     _ObjHandler_Tank_8F_Red_Bullet_Attacking__AfterPhysics; BA00

; ----------------------------------------------------------------------------
_ObjHandler_Tank_8F_Red_Bullet_Attacking__Body:
        lda     #$80                            ; BA03
        sta     $42                             ; BA05
        lda     #$80                            ; BA07
        sta     $43                             ; BA09
        lda     LoadedObj + Obj::Scratch1       ; BA0B
        beq     _ObjHandler_Tank_8F_Red_Bullet_Attacking__Movement; BA0D
        lda     #$43                            ; BA0F
        jsr     Enqueue_Sound_Command           ; BA11
        dec     LoadedObj + Obj::Scratch1       ; BA14
        jmp     _ObjHandler_Tank_8F_Red_Bullet_Attacking__AfterPhysics; BA16

; ----------------------------------------------------------------------------
_ObjHandler_Tank_8F_Red_Bullet_Attacking__Movement:
        jsr     Obj_MoveAndCollide              ; BA19
        beq     _ObjHandler_Tank_8F_Red_Bullet_Attacking__AfterPhysics; BA1C
        jsr     Step_RNG                        ; BA1E
        and     #$40                            ; BA21
        beq     _ObjHandler_Tank_8F_Red_Bullet_Attacking__TurnA; BA23
; TurnB
        lda     #$60                            ; BA25
        ldx     #$60                            ; BA27
        jmp     _ObjHandler_Tank_8F_Red_Bullet_Attacking__TransitionToWalking; BA29

; ----------------------------------------------------------------------------
_ObjHandler_Tank_8F_Red_Bullet_Attacking__TurnA:
        lda     #$A0                            ; BA2C
        ldx     #$A0                            ; BA2E
_ObjHandler_Tank_8F_Red_Bullet_Attacking__TransitionToWalking:
        clc                                     ; BA30
        adc     LoadedObj + Obj::Facing         ; BA31
        sta     LoadedObj + Obj::Facing         ; BA33
        stx     LoadedObj + Obj::Scratch0       ; BA35
        ldy     #$18                            ; BA37
        jsr     Obj_FacingToVelocity            ; BA39
        lda     #$00                            ; BA3C
        sta     LoadedObj + Obj::Scratch1       ; BA3E
        dec     LoadedObj + Obj::Type           ; BA40
        rts                                     ; BA42

; ----------------------------------------------------------------------------
_ObjHandler_Tank_8F_Red_Bullet_Attacking__AfterPhysics:
        lda     #$10                            ; BA43
        sta     $40                             ; BA45
        lda     #$10                            ; BA47
        sta     $41                             ; BA49
        jsr     ScreenPos_Compute               ; BA4B
        beq     _ObjHandler_Tank_8F_Red_Bullet_Attacking__OnScreen; BA4E
        jmp     Obj_Tombstone                   ; BA50

; ----------------------------------------------------------------------------
_ObjHandler_Tank_8F_Red_Bullet_Attacking__OnScreen:
        lda     #$1C                            ; BA53
        jsr     TankEnemy_DamageCheck           ; BA55
        beq     _ObjHandler_Tank_8F_Red_Bullet_Attacking__Render; BA58
        jmp     TankEnemy_DefeatTrackedEnemy    ; BA5A

; ----------------------------------------------------------------------------
_ObjHandler_Tank_8F_Red_Bullet_Attacking__Render:
        lda     LoadedObj + Obj::Facing         ; BA5D
        lsr     a                               ; BA5F
        lsr     a                               ; BA60
        lsr     a                               ; BA61
        lsr     a                               ; BA62
        lsr     a                               ; BA63
        tax                                     ; BA64
        lda     RedBullet_Attacking_RenderParamLookup,x; BA65
        sta     $44                             ; BA68
        lda     LBA81,x                         ; BA6A
        jmp     MetaSprite_Render               ; BA6D

; ----------------------------------------------------------------------------
; Red Bullet, walking phase, rendering parameters per-orientation.
RedBullet_Walking_RenderParamLookup:
        .byte   $C0,$6A ; BA70  OamAttributes=$C0 BaseMetaSpriteId=$6A
        .byte   $00,$68 ; BA72  OamAttributes=$00 BaseMetaSpriteId=$68
        .byte   $00,$6A ; BA74  OamAttributes=$00 BaseMetaSpriteId=$6A
        .byte   $C0,$68 ; BA76  OamAttributes=$C0 BaseMetaSpriteId=$68
        .byte   $40,$68 ; BA78  OamAttributes=$40 BaseMetaSpriteId=$68
        .byte   $80,$6A ; BA7A  OamAttributes=$80 BaseMetaSpriteId=$6A
        .byte   $80,$68 ; BA7C  OamAttributes=$80 BaseMetaSpriteId=$68
        .byte   $40,$6A ; BA7E  OamAttributes=$40 BaseMetaSpriteId=$6A
; Red Bullet, attacking phase, rendering parameters per-orientation.
RedBullet_Attacking_RenderParamLookup:
        .byte   $00,$6A ; BA80  OamAttributes=$00 BaseMetaSpriteId=$6A
        .byte   $80,$68 ; BA82  OamAttributes=$80 BaseMetaSpriteId=$68
        .byte   $40,$6A ; BA84  OamAttributes=$40 BaseMetaSpriteId=$6A
        .byte   $00,$68 ; BA86  OamAttributes=$00 BaseMetaSpriteId=$68
.endmacro

