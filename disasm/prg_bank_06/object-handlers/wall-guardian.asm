.macro MAC_L_BA88
; ----------------------------------------------------------------------------
; ObjType $90: Wall Guardian - Init.
ObjHandler_Tank_90_Wall_Guardian_Init:
        jmp     _ObjHandler_Tank_90_Wall_Guardian_Init__Done; BA88

; ----------------------------------------------------------------------------
_ObjHandler_Tank_90_Wall_Guardian_Init__Body:
        lda     $03FE                           ; BA8B
        and     #$01                            ; BA8E
; If IsDefeated flag is not set, skip to Spawn.
        beq     _ObjHandler_Tank_90_Wall_Guardian_Init__Spawn; BA90
; Otherwise, despawn.
        jmp     Obj_DespawnAndLog               ; BA92

; ----------------------------------------------------------------------------
; Start by despawning all other enemies.
; This is so we can switch the graphics bank without affecting enemy graphics.
_ObjHandler_Tank_90_Wall_Guardian_Init__Spawn:
        jsr     ClearEnemySlots                 ; BA95
        lda     $C5                             ; BA98
        ora     #$04                            ; BA9A
; Enable object spawning.
        sta     $C5                             ; BA9C
        lda     #$00                            ; BA9E
; Initialise tank section boss with descriptor #$00.
        jsr     TankBoss_InitFromTableEntry     ; BAA0
_ObjHandler_Tank_90_Wall_Guardian_Init__Done:
        rts                                     ; BAA3

; ----------------------------------------------------------------------------
; ObjType $91: Wall Guardian - Main.
ObjHandler_Tank_91_Wall_Guardian_Main:
        jmp     _ObjHandler_Tank_91_Wall_Guardian_Main__ScreenTest; BAA4

; ----------------------------------------------------------------------------
_ObjHandler_Tank_91_Wall_Guardian_Main__Body:
        lda     Global_FrameCounter             ; BAA7
        cmp     #$A0                            ; BAA9
; If Global_FrameCounter < #$A0, skip to ScreenTest.
        bcc     _ObjHandler_Tank_91_Wall_Guardian_Main__ScreenTest; BAAB
        and     #$0F                            ; BAAD
; If Global_FrameCounter's lower 4 bits aren't clear, skip to ScreenTest.
        bne     _ObjHandler_Tank_91_Wall_Guardian_Main__ScreenTest; BAAF
; >>> Shooting a projectile:
        jsr     Step_RNG                        ; BAB1
        and     #$1F                            ; BAB4
        eor     #$FF                            ; BAB6
        clc                                     ; BAB8
        adc     #$01                            ; BAB9
        clc                                     ; BABB
        adc     #$08                            ; BABC
; Pick a random angle within a spread: −(RNG & $1F) + 8.
        sta     $9D                             ; BABE
        lda     #$30                            ; BAC0
; Pick shot speed $30.
        sta     $9E                             ; BAC2
; Temporarily nudge LoadedObj.Position_Y_Hi down one so spawned projects (that copy it) emerge
; from the Wall Guardian's mouth.
        inc     LoadedObj + Obj::Position_Y_Hi  ; BAC4
        lda     #$48                            ; BAC6
; Pick child ObjType $48 (Medium Red Projectile)
        sta     $A0                             ; BAC8
; Spawn projectile using selected angle, shot speed, and ObjType.
        jsr     Obj_SpawnChild_A0               ; BACA
; Restore original LoadedObj.Position_Y_Hi.
        dec     LoadedObj + Obj::Position_Y_Hi  ; BACD
_ObjHandler_Tank_91_Wall_Guardian_Main__ScreenTest:
        lda     #$1E                            ; BACF
; Switch CHR Bank to where the Wall Guardian graphics are.  (This is why all other visible objects
; needed to be removed).
        sta     $D4                             ; BAD1
; Set bounding box.
        lda     #$20                            ; BAD3
        sta     $40                             ; BAD5
        lda     #$40                            ; BAD7
        sta     $41                             ; BAD9
; Perform screen test.
        jsr     ScreenPos_Compute               ; BADB
; if on-screen, skip to VulnerabilityCheck.
        beq     _ObjHandler_Tank_91_Wall_Guardian_Main__VulnerabilityCheck; BADE
; if off-screen, skip to CleanUp.
        jmp     _ObjHandler_Tank_91_Wall_Guardian_Main__CleanUp; BAE0

; ----------------------------------------------------------------------------
_ObjHandler_Tank_91_Wall_Guardian_Main__VulnerabilityCheck:
        lda     $03FC                           ; BAE3
        and     #$01                            ; BAE6
; If Hyper hasn't been acquired yet, skip to DeflectDamage.
        beq     _ObjHandler_Tank_91_Wall_Guardian_Main__DeflectDamage; BAE8
        lda     #$00                            ; BAEA
; Otherwise, Wall Guardian is vulnerable, so call TankBoss_DamageCheck (with boss descriptor #$00)
; to process damage exchange (delegating to Enemy_DamageCheck).
        jsr     L_BBC7                          ; BAEC
; If non-fatal, skip to CollisionResult.
        beq     _ObjHandler_Tank_91_Wall_Guardian_Main__ProcessDamage; BAEF
; Otherwise, skip to Death.
        jmp     _ObjHandler_Tank_91_Wall_Guardian_Main__Death; BAF1

; ----------------------------------------------------------------------------
_ObjHandler_Tank_91_Wall_Guardian_Main__ProcessDamage:
        lda     $45                             ; BAF4
; Pull the Enemy_DamageCheck result from WR_Context_Dependent_45
; On hit, skip to DamageAnimation.
        beq     _ObjHandler_Tank_91_Wall_Guardian_Main__DamageAnimation; BAF6
        bne     _ObjHandler_Tank_91_Wall_Guardian_Main__Render; BAF8
; Not yet defeatable: just scan for a player shot overlapping the box ($44 = $40)
_ObjHandler_Tank_91_Wall_Guardian_Main__DeflectDamage:
        lda     #$40                            ; BAFA
        jsr     LD711                           ; BAFC
        bne     _ObjHandler_Tank_91_Wall_Guardian_Main__Render; BAFF
_ObjHandler_Tank_91_Wall_Guardian_Main__DamageAnimation:
        lda     LoadedObj + Obj::Scratch1       ; BB01
; If the DamageAnimationFrameCounter (Scratch1) has already started, skip to Render tail.
        bne     _ObjHandler_Tank_91_Wall_Guardian_Main__Render; BB03
        lda     #$20                            ; BB05
; Otherwise, set the DamageAnimationFrameCounter (Scratch1) to #$20 frames,
        sta     LoadedObj + Obj::Scratch1       ; BB07
; bump the drawn position up by 1 to telegraph the hit landed,
        dec     $3F                             ; BB09
        lda     #$31                            ; BB0B
; And play SFX $31.
        jsr     Enqueue_Sound_Command           ; BB0D
; Draw the body as three stacked 16-px rows, top to bottom.
_ObjHandler_Tank_91_Wall_Guardian_Main__Render:
        lda     #$42                            ; BB10
; Set the OAM attribute to #$42 (sprite palette 2, h-flip on).
        sta     $44                             ; BB12
; Handle IFrames palette animation.
        jsr     LD77D                           ; BB14
        lda     $3F                             ; BB17
        sec                                     ; BB19
        sbc     #$10                            ; BB1A
; Bump the draw position up 16px for drawing the top row.
        sta     $3F                             ; BB1C
        lda     LoadedObj + Obj::Scratch1       ; BB1E
; Decide how to draw the top-row:
; 
; If the DamageAnimationFrameCounter (Scratch1) != 0, skip to AnimateMandibles.
        bne     _ObjHandler_Tank_91_Wall_Guardian_Main__AnimateEyes; BB20
; Otherwise, use default top row tile and skip to DrawMidRow.
        jsr     WallGuardian_UseDefaultEyeTile  ; BB22
        jmp     _ObjHandler_Tank_91_Wall_Guardian_Main__DrawMidRow; BB25

; ----------------------------------------------------------------------------
_ObjHandler_Tank_91_Wall_Guardian_Main__AnimateEyes:
        jsr     WallGuardian_PlayEyeBlinkAnimation; BB28
; Start by staging the selected top row tile.
_ObjHandler_Tank_91_Wall_Guardian_Main__DrawMidRow:
        jsr     LEDF5                           ; BB2B
        clc                                     ; BB2E
        lda     $3F                             ; BB2F
        adc     #$10                            ; BB31
; Bump the draw position down 16px for drawing the middle row.
        sta     $3F                             ; BB33
        lda     Global_FrameCounter             ; BB35
        cmp     #$A0                            ; BB37
; if Global_FrameCounter < #$A0, skip to AnimateMandibles.
        bcc     _ObjHandler_Tank_91_Wall_Guardian_Main__AnimateMandibles; BB39
; Otherwise, use default mid row tile and skip to DrawBottomRow.
        jsr     WallGuardian_UseDefaultMandibleTile; BB3B
        jmp     _ObjHandler_Tank_91_Wall_Guardian_Main__DrawBottomRow; BB3E

; ----------------------------------------------------------------------------
; idle: alternate the middle-row tile on a 4-frame cycle
_ObjHandler_Tank_91_Wall_Guardian_Main__AnimateMandibles:
        jsr     WallGuardian_PlayMandibleAnimation; BB41
; Stage the middle row, step the draw position down 16px again, and stage the static bottom row.
_ObjHandler_Tank_91_Wall_Guardian_Main__DrawBottomRow:
        jsr     LEDF5                           ; BB44
        clc                                     ; BB47
        lda     $3F                             ; BB48
        adc     #$10                            ; BB4A
        sta     $3F                             ; BB4C
        lda     #$BC                            ; BB4E
        sta     $45                             ; BB50
        jsr     LEDF5                           ; BB52
        rts                                     ; BB55

; ----------------------------------------------------------------------------
_ObjHandler_Tank_91_Wall_Guardian_Main__Death:
        lda     $03FE                           ; BB56
        ora     #$01                            ; BB59
; Record defeat to avoid respawning later.
        sta     $03FE                           ; BB5B
        lda     #$4C                            ; BB5E
; Spawn an explosion (ObjType $4C),
        jsr     Obj_SpawnChild                  ; BB60
; reset the Thing spawn history (not sure why this is necessary),
        jsr     Clear_ThingSpawnHistory         ; BB63
        lda     #$32                            ; BB66
; and trigger the death SFX ($32).
        jsr     Enqueue_Sound_Command           ; BB68
; Clean Up: Clear boss mode, release the CHR bank, and free the object slot.
_ObjHandler_Tank_91_Wall_Guardian_Main__CleanUp:
        lda     $C5                             ; BB6B
        and     #$FB                            ; BB6D
        sta     $C5                             ; BB6F
        lda     #$00                            ; BB71
        sta     $D4                             ; BB73
        jmp     LD823                           ; BB75

; ----------------------------------------------------------------------------
; Select the default mid row tile for the Wall Guardian.
WallGuardian_UseDefaultMandibleTile:
        lda     #$B8                            ; BB78
        sta     $45                             ; BB7A
        rts                                     ; BB7C

; ----------------------------------------------------------------------------
; Alternate between tile id #$B8 and #$BA on a 4-frame cycle.
WallGuardian_PlayMandibleAnimation:
        lda     Global_FrameCounter             ; BB7D
        and     #$04                            ; BB7F
        beq     _WallGuardian_PlayMandibleAnimation__Use_BA; BB81
        lda     #$B8                            ; BB83
        jmp     _WallGuardian_PlayMandibleAnimation__Store; BB85

; ----------------------------------------------------------------------------
_WallGuardian_PlayMandibleAnimation__Use_BA:
        lda     #$BA                            ; BB88
_WallGuardian_PlayMandibleAnimation__Store:
        sta     $45                             ; BB8A
        rts                                     ; BB8C

; ----------------------------------------------------------------------------
; Select the default top row tile for the Wall Guardian.
WallGuardian_UseDefaultEyeTile:
        lda     #$B6                            ; BB8D
        sta     $45                             ; BB8F
        rts                                     ; BB91

; ----------------------------------------------------------------------------
; Select the top-row tile based on DamageAnimationFrameCounter (Scratch1).
WallGuardian_PlayEyeBlinkAnimation:
        dec     LoadedObj + Obj::Scratch1       ; BB92
        lda     LoadedObj + Obj::Scratch1       ; BB94
        lsr     a                               ; BB96
        lsr     a                               ; BB97
        tax                                     ; BB98
        lda     WallGuardian_EyeBlinkAnimationTiles,x; BB99
        sta     $45                             ; BB9C
        rts                                     ; BB9E

; ----------------------------------------------------------------------------
; Table of tile ids used in Wall Guardian's eye blinking animation.r
WallGuardian_EyeBlinkAnimationTiles:
        .byte   $B6,$B4,$B2,$B0,$B0,$B2,$B4,$B6 ; BB9F
.endmacro

