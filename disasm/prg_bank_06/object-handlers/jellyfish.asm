.macro MAC_L_B3E3
; ----------------------------------------------------------------------------
L_B3E3: jmp     L_B3FD                          ; B3E3

; ----------------------------------------------------------------------------
L_B3E6: lda     #$16                            ; B3E6
        jsr     TankEnemy_Init                  ; B3E8
        lda     #$B8                            ; B3EB
        sta     LoadedObj + Obj::Facing         ; B3ED
        lda     #$08                            ; B3EF
        sta     LoadedObj + Obj::Velocity_Y     ; B3F1
        lda     #$00                            ; B3F3
        sta     LoadedObj + Obj::Velocity_X     ; B3F5
        sta     LoadedObj + Obj::Scratch0       ; B3F7
        lda     #$40                            ; B3F9
        sta     LoadedObj + Obj::Scratch1       ; B3FB
L_B3FD: rts                                     ; B3FD

; ----------------------------------------------------------------------------
L_B3FE: jmp     L_B457                          ; B3FE

; ----------------------------------------------------------------------------
L_B401: lda     #$80                            ; B401
        sta     $42                             ; B403
        lda     #$80                            ; B405
        sta     $43                             ; B407
        lda     LoadedObj + Obj::Scratch0       ; B409
        bne     L_B43A                          ; B40B
        jsr     LE083                           ; B40D
        bpl     L_B418                          ; B410
        jsr     LE0D8                           ; B412
        jmp     L_B420                          ; B415

; ----------------------------------------------------------------------------
L_B418: and     #$40                            ; B418
        beq     L_B420                          ; B41A
        lda     #$04                            ; B41C
        sta     LoadedObj + Obj::Velocity_Y     ; B41E
L_B420: dec     LoadedObj + Obj::Scratch1       ; B420
        bne     L_B457                          ; B422
        lda     #$46                            ; B424
        jsr     Enqueue_Sound_Command           ; B426
        inc     LoadedObj + Obj::Scratch0       ; B429
        jsr     Step_RNG                        ; B42B
        and     #$07                            ; B42E
        clc                                     ; B430
        adc     #$20                            ; B431
        tay                                     ; B433
        jsr     Obj_AngleToVelocity             ; B434
        jmp     L_B457                          ; B437

; ----------------------------------------------------------------------------
L_B43A: lda     #$01                            ; B43A
        ldx     #$00                            ; B43C
        jsr     LDFD1                           ; B43E
        jsr     LE083                           ; B441
        jsr     L_A2D4                          ; B444
        lda     LoadedObj + Obj::Velocity_Y     ; B447
        cmp     #$04                            ; B449
        bcs     L_B457                          ; B44B
        lda     #$04                            ; B44D
        sta     LoadedObj + Obj::Velocity_Y     ; B44F
        dec     LoadedObj + Obj::Scratch0       ; B451
        lda     #$70                            ; B453
        sta     LoadedObj + Obj::Scratch1       ; B455
L_B457: lda     #$10                            ; B457
        sta     $40                             ; B459
        lda     #$10                            ; B45B
        sta     $41                             ; B45D
        jsr     ScreenPos_Compute               ; B45F
        beq     L_B467                          ; B462
        jmp     Obj_TombstoneSlot               ; B464

; ----------------------------------------------------------------------------
L_B467: lda     #$16                            ; B467
        jsr     TankEnemy_DamageCheck           ; B469
        beq     L_B471                          ; B46C
        jmp     TankEnemy_Defeat                ; B46E

; ----------------------------------------------------------------------------
L_B471: lda     #$01                            ; B471
        jsr     Obj_SetAttrFlipX                ; B473
        lda     LoadedObj + Obj::Scratch1       ; B476
        bne     L_B47F                          ; B478
        lda     #$9E                            ; B47A
        jmp     L_B491                          ; B47C

; ----------------------------------------------------------------------------
L_B47F: cmp     #$20                            ; B47F
        bcs     L_B488                          ; B481
        lda     #$9D                            ; B483
        jmp     L_B491                          ; B485

; ----------------------------------------------------------------------------
L_B488: lda     Global_FrameCounter             ; B488
        lsr     a                               ; B48A
        lsr     a                               ; B48B
        and     #$01                            ; B48C
        clc                                     ; B48E
        adc     #$9D                            ; B48F
L_B491: jmp     MetaSprite_Render                           ; B491

.endmacro

