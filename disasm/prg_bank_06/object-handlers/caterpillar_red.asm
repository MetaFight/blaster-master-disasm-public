.macro MAC_L_A8D2
; ----------------------------------------------------------------------------
L_A8D2: jmp     L_A8FA                          ; A8D2

; ----------------------------------------------------------------------------
L_A8D5: lda     #$06                            ; A8D5
        jsr     TankEnemy_Init                  ; A8D7
        lda     #$01                            ; A8DA
        sta     LoadedObj + Obj::Scratch0       ; A8DC
        lda     #$00                            ; A8DE
        sta     LoadedObj + Obj::Velocity_Y     ; A8E0
        lda     #$11                            ; A8E2
        sta     LoadedObj + Obj::Velocity_X     ; A8E4
        jsr     LoadedObj__Get_DeltaToPlayer_X  ; A8E6
        bpl     L_A8F2                          ; A8E9
        lda     #$00                            ; A8EB
        sec                                     ; A8ED
        sbc     LoadedObj + Obj::Velocity_X     ; A8EE
        sta     LoadedObj + Obj::Velocity_X     ; A8F0
L_A8F2: lda     #$00                            ; A8F2
        sta     LoadedObj + Obj::Scratch1       ; A8F4
        sta     LoadedObj + Obj::Facing         ; A8F6
        sta     LoadedObj + Obj::Scratch2       ; A8F8
L_A8FA: rts                                     ; A8FA

; ----------------------------------------------------------------------------
L_A8FB: jmp     L_A994                          ; A8FB

; ----------------------------------------------------------------------------
L_A8FE: lda     #$80                            ; A8FE
        sta     $42                             ; A900
        lda     #$40                            ; A902
        sta     $43                             ; A904
        lda     LoadedObj + Obj::Scratch0       ; A906
        bne     L_A975                          ; A908
        lda     LoadedObj + Obj::Scratch2       ; A90A
        beq     L_A913                          ; A90C
        dec     LoadedObj + Obj::Scratch2       ; A90E
        jmp     L_A93E                          ; A910

; ----------------------------------------------------------------------------
L_A913: lda     Global_FrameCounter             ; A913
        and     #$0F                            ; A915
        bne     L_A91E                          ; A917
        lda     #$42                            ; A919
        jsr     Enqueue_Sound_Command           ; A91B
L_A91E: jsr     LoadedObj__Get_DeltaToPlayer_X                           ; A91E
        sta     $01                             ; A921
        eor     LoadedObj + Obj::Velocity_X     ; A923
        bpl     L_A93E                          ; A925
        lda     #$11                            ; A927
        ldx     $01                             ; A929
        bpl     L_A932                          ; A92B
        eor     #$FF                            ; A92D
        clc                                     ; A92F
        adc     #$01                            ; A930
L_A932: sta     LoadedObj + Obj::Velocity_X     ; A932
        jsr     Step_RNG                        ; A934
        and     #$0F                            ; A937
        clc                                     ; A939
        adc     #$18                            ; A93A
        sta     LoadedObj + Obj::Scratch2       ; A93C
L_A93E: lda     #$11                            ; A93E
        jsr     TileRead_WithOffset             ; A940
        bpl     L_A970                          ; A943
        jsr     LE083                           ; A945
        and     #$80                            ; A948
        beq     L_A994                          ; A94A
        jsr     Step_RNG                        ; A94C
        and     #$0F                            ; A94F
        bne     L_A967                          ; A951
        jsr     Step_RNG                        ; A953
        and     #$0F                            ; A956
        clc                                     ; A958
        adc     #$30                            ; A959
        sta     LoadedObj + Obj::Scratch2       ; A95B
        lda     #$00                            ; A95D
        sec                                     ; A95F
        sbc     LoadedObj + Obj::Velocity_X     ; A960
        sta     LoadedObj + Obj::Velocity_X     ; A962
        jmp     L_A994                          ; A964

; ----------------------------------------------------------------------------
L_A967: lda     #$29                            ; A967
        jsr     Enqueue_Sound_Command           ; A969
        lda     #$D2                            ; A96C
        sta     LoadedObj + Obj::Velocity_Y     ; A96E
L_A970: inc     LoadedObj + Obj::Scratch0       ; A970
        jmp     L_A994                          ; A972

; ----------------------------------------------------------------------------
L_A975: lda     #$02                            ; A975
        ldx     #$00                            ; A977
        jsr     LDFD1                           ; A979
        lda     #$30                            ; A97C
        ldx     #$4D                            ; A97E
        jsr     Speed_Limit_Sub                 ; A980
        jsr     LE083                           ; A983
        and     #$40                            ; A986
        beq     L_A994                          ; A988
        lda     LoadedObj + Obj::Velocity_Y     ; A98A
        bmi     L_A994                          ; A98C
        dec     LoadedObj + Obj::Scratch0       ; A98E
        lda     #$00                            ; A990
        sta     LoadedObj + Obj::Velocity_Y     ; A992
L_A994: lda     #$10                            ; A994
        sta     $40                             ; A996
        lda     #$08                            ; A998
        sta     $41                             ; A99A
        jsr     ScreenPos_Compute               ; A99C
        beq     L_A9A4                          ; A99F
        jmp     Obj_TombstoneSlot               ; A9A1

; ----------------------------------------------------------------------------
L_A9A4: lda     #$06                            ; A9A4
        jsr     TankEnemy_DamageCheck           ; A9A6
        beq     L_A9AE                          ; A9A9
        jmp     TankEnemy_Defeat                ; A9AB

; ----------------------------------------------------------------------------
L_A9AE: lda     #$00                            ; A9AE
        jsr     Obj_SetAttrFlipX                ; A9B0
        dec     LoadedObj + Obj::Scratch1       ; A9B3
        bpl     L_A9C3                          ; A9B5
        lda     #$0C                            ; A9B7
        sta     LoadedObj + Obj::Scratch1       ; A9B9
        dec     LoadedObj + Obj::Facing         ; A9BB
        bpl     L_A9C3                          ; A9BD
        lda     #$02                            ; A9BF
        sta     LoadedObj + Obj::Facing         ; A9C1
L_A9C3: ldx     LoadedObj + Obj::Facing         ; A9C3
        lda     L_A4DB,x                        ; A9C5
        jmp     MetaSprite_Render               ; A9C8

.endmacro

