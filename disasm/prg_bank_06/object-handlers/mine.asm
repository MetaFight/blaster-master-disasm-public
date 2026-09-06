.macro MAC_L_A9CB
; ----------------------------------------------------------------------------
; ObjType $64: Mine - Init.
ObjHandler_Tank_64_Mine_Init:
        jmp     _ObjHandler_Tank_64_Mine_Init__Done; A9CB

; ----------------------------------------------------------------------------
_ObjHandler_Tank_64_Mine_Init__Body:
        lda     #$07                            ; A9CE
; Call shared TankEnemy_Init with enemy descriptor #$07
        jsr     TankEnemy_Init                  ; A9D0
        lda     #$00                            ; A9D3
; Zero velocity.
        sta     LoadedObj + Obj::Velocity_X     ; A9D5
        sta     LoadedObj + Obj::Velocity_Y     ; A9D7
        lda     #$01                            ; A9D9
; Set BuggedCounter to 1.
        sta     LoadedObj + Obj::Scratch0       ; A9DB
_ObjHandler_Tank_64_Mine_Init__Done:
        rts                                     ; A9DD

; ----------------------------------------------------------------------------
; ObjType $65: Mine - Main
ObjHandler_Tank_65_Mine_Main:
        jmp     _ObjHandler_Tank_65_Mine_Main__ScreenTest; A9DE

; ----------------------------------------------------------------------------
; Start by setting collision box.
_ObjHandler_Tank_65_Mine_Main__Body:
        lda     #$80                            ; A9E1
        sta     $42                             ; A9E3
        lda     #$80                            ; A9E5
        sta     $43                             ; A9E7
        lda     LoadedObj + Obj::Scratch0       ; A9E9
; If BuggedCounter == 0, skip to CheckTerrain.
        beq     _ObjHandler_Tank_65_Mine_Main__CheckTerrain; A9EB
; Apply motion, do collision checks, and update Velocity_Y accordingly.
        jsr     Obj_FallAndLand                 ; A9ED
; If not grounded, skip to HandleFalling.
        beq     _ObjHandler_Tank_65_Mine_Main__HandleFalling; A9F0
        lda     #$00                            ; A9F2
        sta     LoadedObj + Obj::Velocity_X     ; A9F4
; Otherwise, zero Velocity_X (again) and skip to ScreenTest.
        beq     _ObjHandler_Tank_65_Mine_Main__ScreenTest; A9F6
; Incrememnt BuggedCounter (Scratch0).
_ObjHandler_Tank_65_Mine_Main__HandleFalling:
        inc     LoadedObj + Obj::Scratch0       ; A9F8
_ObjHandler_Tank_65_Mine_Main__CheckTerrain:
        lda     #$11                            ; A9FA
; Check tile below.
        jsr     Obj_ReadTile_WithOffset         ; A9FC
; If solid, skip to ScreenTest.
        bmi     _ObjHandler_Tank_65_Mine_Main__ScreenTest; A9FF
; Otherwise, decrement BuggedCounter (Scratch0).
        dec     LoadedObj + Obj::Scratch0       ; AA01
; Set bounding box, perform on-screen test, if on-screen skip to DamageCheck, if off-screen
; tombstone.
_ObjHandler_Tank_65_Mine_Main__ScreenTest:
        lda     #$10                            ; AA03
        sta     $40                             ; AA05
        lda     #$10                            ; AA07
        sta     $41                             ; AA09
        jsr     ScreenPos_Compute               ; AA0B
        beq     _ObjHandler_Tank_65_Mine_Main__Damage; AA0E
        jmp     Obj_TombstoneSlot               ; AA10

; ----------------------------------------------------------------------------
_ObjHandler_Tank_65_Mine_Main__Damage:
        clc                                     ; AA13
        lda     $3F                             ; AA14
        adc     #$04                            ; AA16
; Nudge collison box down 4px.
        sta     $3F                             ; AA18
        lda     #$07                            ; AA1A
; Run shared TankEnemy_DamageCheck with enemy description #$07.
        jsr     TankEnemy_DamageCheck           ; AA1C
        lda     $45                             ; AA1F
; If no contact, skip to RenderAndSound tail.
        bne     _ObjHandler_Tank_65_Mine_Main__RenderAndSound; AA21
; Otherwise: Call shared defeat handler.
        jsr     TankEnemy_DefeatTrackedEnemy    ; AA23
        lda     $00                             ; AA26
; Backup WR_Context_Dependent_00.
        pha                                     ; AA28
        lda     #$06                            ; AA29
        sta     $00                             ; AA2B
; Spawn (up to) 6 shrapnel framents in a loop.
_ObjHandler_Tank_65_Mine_Main__ExplodeLoop:
        lda     #$44                            ; AA2D
        sta     $A0                             ; AA2F
        jsr     Obj_SpawnChild_A0               ; AA31
        dec     $00                             ; AA34
        bne     _ObjHandler_Tank_65_Mine_Main__ExplodeLoop; AA36
        pla                                     ; AA38
; Restore WR_Context_Dependent_00.
        sta     $00                             ; AA39
; Set OAM Attributes (h-flip, sprite palette 1),
; Alternate between MetaSprite Id #$88 and #$89 every 32 frames,
; Beep (SFX #$20) every 64 frames.
_ObjHandler_Tank_65_Mine_Main__RenderAndSound:
        lda     #$41                            ; AA3B
        sta     $44                             ; AA3D
        lda     Global_FrameCounter             ; AA3F
        and     #$20                            ; AA41
        beq     _ObjHandler_Tank_65_Mine_Main__TileBase; AA43
        lda     Global_FrameCounter             ; AA45
        and     #$1F                            ; AA47
        bne     _ObjHandler_Tank_65_Mine_Main__TileAlt; AA49
        lda     #$20                            ; AA4B
        jsr     Enqueue_Sound_Command           ; AA4D
_ObjHandler_Tank_65_Mine_Main__TileAlt:
        lda     #$88                            ; AA50
        bne     _ObjHandler_Tank_65_Mine_Main__SetTile; AA52
_ObjHandler_Tank_65_Mine_Main__TileBase:
        lda     #$89                            ; AA54
; Render selected MetaSprite Id.
_ObjHandler_Tank_65_Mine_Main__SetTile:
        jmp     MetaSprite_Render               ; AA56

; ----------------------------------------------------------------------------
DEAD__ObjHandler_Tank_65_Mine_Main__OrphanRTS:
        rts                                     ; AA59

.endmacro

