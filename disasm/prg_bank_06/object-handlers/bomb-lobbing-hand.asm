.macro MAC_L_B337
; ----------------------------------------------------------------------------
L_B337: jmp     L_B34E                          ; B337

; ----------------------------------------------------------------------------
L_B33A: lda     #$15                            ; B33A
        jsr     TankEnemy_Init                  ; B33C
        sec                                     ; B33F
        lda     LoadedObj + Obj::Position_Y_Lo  ; B340
        sbc     #$30                            ; B342
        sta     LoadedObj + Obj::Position_Y_Lo  ; B344
        bcs     L_B34A                          ; B346
        dec     LoadedObj + Obj::Position_Y_Hi  ; B348
L_B34A: lda     #$00                            ; B34A
        sta     LoadedObj + Obj::Scratch0       ; B34C
L_B34E: rts                                     ; B34E

; ----------------------------------------------------------------------------
L_B34F: jmp     L_B3AF                          ; B34F

; ----------------------------------------------------------------------------
L_B352: lda     #$80                            ; B352
        sta     LoadedObj_CollisionBox_HalfWidth; B354
        lda     #$C0                            ; B356
        sta     LoadedObj_CollisionBox_HalfHeight; B358
        jsr     LoadedObj__Get_DeltaToPlayer_X  ; B35A
        sta     LoadedObj + Obj::Velocity_X     ; B35D
        bpl     L_B366                          ; B35F
        eor     #$FF                            ; B361
        clc                                     ; B363
        adc     #$01                            ; B364
L_B366: sta     $00                             ; B366
        jsr     LE0FA                           ; B368
        bpl     L_B372                          ; B36B
        eor     #$FF                            ; B36D
        clc                                     ; B36F
        adc     #$01                            ; B370
L_B372: sta     $01                             ; B372
        cmp     $00                             ; B374
        bcs     L_B37A                          ; B376
        lda     $00                             ; B378
L_B37A: cmp     #$05                            ; B37A
        bcs     L_B3A9                          ; B37C
        lda     #$01                            ; B37E
        sta     LoadedObj + Obj::Scratch0       ; B380
        jsr     Step_RNG                        ; B382
        and     #$07                            ; B385
        clc                                     ; B387
        adc     #$08                            ; B388
        sta     $9E                             ; B38A
        lda     LoadedObj + Obj::Velocity_X     ; B38C
        bmi     L_B395                          ; B38E
        lda     #$F0                            ; B390
        jmp     L_B397                          ; B392

; ----------------------------------------------------------------------------
L_B395: lda     #$90                            ; B395
L_B397: sta     $9D                             ; B397
        lda     #$36                            ; B399
        sta     $A0                             ; B39B
        jsr     LDF36                           ; B39D
        beq     L_B3AF                          ; B3A0
        lda     #$09                            ; B3A2
        sta     LoadedObj + Obj::Scratch1       ; B3A4
        jmp     L_B3AF                          ; B3A6

; ----------------------------------------------------------------------------
L_B3A9: lda     #$00                            ; B3A9
        sta     LoadedObj + Obj::Scratch0       ; B3AB
        sta     LoadedObj + Obj::Scratch1       ; B3AD
L_B3AF: lda     #$10                            ; B3AF
        sta     $40                             ; B3B1
        lda     #$18                            ; B3B3
        sta     $41                             ; B3B5
        jsr     ScreenPos_Compute               ; B3B7
        beq     L_B3BF                          ; B3BA
        jmp     Obj_TombstoneSlot               ; B3BC

; ----------------------------------------------------------------------------
L_B3BF: lda     #$15                            ; B3BF
        jsr     TankEnemy_DamageCheck           ; B3C1
        beq     L_B3C9                          ; B3C4
        jmp     TankEnemy_Defeat                ; B3C6

; ----------------------------------------------------------------------------
L_B3C9: lda     #$01                            ; B3C9
        jsr     Obj_SetAttrFlipX                ; B3CB
        lda     LoadedObj + Obj::Scratch0       ; B3CE
        beq     L_B3DD                          ; B3D0
        lda     LoadedObj + Obj::Scratch1       ; B3D2
        beq     L_B3DD                          ; B3D4
        dec     LoadedObj + Obj::Scratch1       ; B3D6
        lda     #$71                            ; B3D8
        jmp     L_B3DF                          ; B3DA

; ----------------------------------------------------------------------------
L_B3DD: lda     #$70                            ; B3DD
L_B3DF: jsr     MetaSprite_Render                           ; B3DF
        rts                                     ; B3E2

.endmacro

