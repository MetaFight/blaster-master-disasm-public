.macro MAC_L_B29B
; ----------------------------------------------------------------------------
; ObjType $50: Gray Flier Spawner - Init
ObjHandler_Tank_50_Gray_Flier_Spawner_Init:
        jmp     _ObjHandler_Tank_50_Gray_Flier_Spawner_Init__Done; B29B

; ----------------------------------------------------------------------------
_ObjHandler_Tank_50_Gray_Flier_Spawner_Init__Update__:
        lda     #$14                            ; B29E
        jsr     TankEnemy_Init                  ; B2A0
; TankEnemy_Init has already INC'd LoadedObj.ObjType from $50 to $51, so the following lines are
; redundant.
        lda     #$51                            ; B2A3
        sta     LoadedObj + Obj::Type           ; B2A5
_ObjHandler_Tank_50_Gray_Flier_Spawner_Init__Done:
        rts                                     ; B2A7

; ----------------------------------------------------------------------------
; ObjType $51: Gray Flier Spawner - Main
ObjHandler_Tank_51_Gray_Flier_Spawner_Main:
        jmp     _ObjHandler_Tank_51_Gray_Flier_Spawner_Main__TombstoneTail; B2A8

; ----------------------------------------------------------------------------
; Normal-play entry points.
; 
; Spawns a Gray Flier, on average, every 128 frames (~2s).
; 
; Start by setting the collision box dimensions...
_ObjHandler_Tank_51_Gray_Flier_Spawner_Main__Update__:
        lda     #$80                            ; B2AB
        sta     $42                             ; B2AD
        lda     #$80                            ; B2AF
        sta     $43                             ; B2B1
; ...which are promptly never used again.  Probably copy-pasta.
; 
; Then perform an on-screen test via ScreenPos_Compute
        jsr     ScreenPos_Compute               ; B2B3
; Note:  ScreenPos_Compute expects LoadedObj_Hitbox_Width/Height to be set but this subroutine,
; however, does not set them.  So this check will used whatever values are left over from the
; previous object.
; 
; Spawning a child will only happen if the following 3 checks pass:
; Check 1: the spawner must be on-screen.
        bne     _ObjHandler_Tank_51_Gray_Flier_Spawner_Main__TombstoneTail; B2B6
        lda     Global_FrameCounter             ; B2B8
        and     #$1F                            ; B2BA
; Check 2: Global_FrameCounter's lower 5 bits must be 0 (every 32nd tick)
        bne     _ObjHandler_Tank_51_Gray_Flier_Spawner_Main__TombstoneTail; B2BC
        jsr     Step_RNG                        ; B2BE
        and     #$60                            ; B2C1
; Check 3: A 1-in-4 roll (bits 6 and 5 must both be clear)
        bne     _ObjHandler_Tank_51_Gray_Flier_Spawner_Main__TombstoneTail; B2C3
        lda     #$28                            ; B2C5
; call Obj_TryCloneAtScreenEdge with arg A = $28 (Velocity_X 2.5) to spawn a clone at either side
; of screen (chosen randomly).  The child's Velocity_X will be set to point to into the screen.
        jsr     Obj_TryCloneAtScreenEdge        ; B2C7
; On failure, skip to tombstone tail.
        beq     _ObjHandler_Tank_51_Gray_Flier_Spawner_Main__TombstoneTail; B2CA
; overwrite the two inherited fields that must not carry over: ObjType ($7D: Gray Flier), and
; Velocity_Y.
        lda     #$7D                            ; B2CC
        sta     ObjectTable + Obj::Type,x       ; B2CE
        lda     #$00                            ; B2D1
        sta     ObjectTable + Obj::Velocity_Y,x ; B2D3
; spawn SFX $24
        lda     #$24                            ; B2D6
        jsr     Enqueue_Sound_Command           ; B2D8
_ObjHandler_Tank_51_Gray_Flier_Spawner_Main__TombstoneTail:
        lda     #$10                            ; B2DB
        sta     $40                             ; B2DD
        lda     #$10                            ; B2DF
        sta     $41                             ; B2E1
; Test if still on screen.  If so, skip to end.
        jsr     ScreenPos_Compute               ; B2E3
        beq     _ObjHandler_Tank_51_Gray_Flier_Spawner_Main__Return; B2E6
; otherwise, tombstone.
        jmp     Obj_TombstoneSlot               ; B2E8

; ----------------------------------------------------------------------------
_ObjHandler_Tank_51_Gray_Flier_Spawner_Main__Return:
        rts                                     ; B2EB

; ----------------------------------------------------------------------------
L_B2EC: jmp     L_B308                          ; B2EC

; ----------------------------------------------------------------------------
L_B2EF: lda     #$80                            ; B2EF
        sta     $42                             ; B2F1
        lda     #$80                            ; B2F3
        sta     $43                             ; B2F5
        lda     Global_FrameCounter             ; B2F7
        asl     a                               ; B2F9
        asl     a                               ; B2FA
        ldy     #$20                            ; B2FB
        jsr     Trig_SinByAngle                 ; B2FD
        jsr     ScaleBySignedFrac               ; B300
        sta     LoadedObj + Obj::Velocity_Y     ; B303
        jsr     LD2DB                           ; B305
L_B308: lda     #$10                            ; B308
        sta     $40                             ; B30A
        lda     #$10                            ; B30C
        sta     $41                             ; B30E
        jsr     ScreenPos_Compute               ; B310
        beq     L_B318                          ; B313
        jmp     Obj_Despawn                     ; B315

; ----------------------------------------------------------------------------
L_B318: lda     #$14                            ; B318
        jsr     TankEnemy_DamageCheck           ; B31A
        beq     L_B322                          ; B31D
        jmp     L_A347                          ; B31F

; ----------------------------------------------------------------------------
L_B322: lda     #$01                            ; B322
        jsr     Obj_SetAttrFlipX                ; B324
        lda     Global_FrameCounter             ; B327
        lsr     a                               ; B329
        and     #$03                            ; B32A
        tax                                     ; B32C
        lda     L_B333,x                        ; B32D
        jmp     MetaSprite_Render               ; B330

; ----------------------------------------------------------------------------
L_B333: .byte   $08,$09,$0A,$0B                 ; B333
.endmacro

