.macro MAC_L_ADE4
; ----------------------------------------------------------------------------
L_ADE4: jmp     L_ADFE                          ; ADE4

; ----------------------------------------------------------------------------
L_ADE7: lda     #$0D                            ; ADE7
        jsr     TankEnemy_Init                  ; ADE9
        lda     #$B8                            ; ADEC
        sta     LoadedObj + Obj::Facing         ; ADEE
        lda     #$08                            ; ADF0
        sta     LoadedObj + Obj::Velocity_Y     ; ADF2
        lda     #$00                            ; ADF4
        sta     LoadedObj + Obj::Velocity_X     ; ADF6
        sta     LoadedObj + Obj::Scratch0       ; ADF8
        lda     #$40                            ; ADFA
        sta     LoadedObj + Obj::Scratch1       ; ADFC
L_ADFE: rts                                     ; ADFE

; ----------------------------------------------------------------------------
L_ADFF: jmp     L_AE49                          ; ADFF

; ----------------------------------------------------------------------------
L_AE02: lda     #$80                            ; AE02
        sta     $42                             ; AE04
        lda     #$80                            ; AE06
        sta     $43                             ; AE08
        lda     LoadedObj + Obj::Scratch0       ; AE0A
        bne     L_AE2F                          ; AE0C
        lda     Global_FrameCounter             ; AE0E
        and     #$07                            ; AE10
        bne     L_AE19                          ; AE12
        lda     #$45                            ; AE14
        jsr     Enqueue_Sound_Command           ; AE16
L_AE19: jsr     Obj_MoveBounce                           ; AE19
        bpl     L_AE21                          ; AE1C
        jsr     LE0D8                           ; AE1E
L_AE21: dec     LoadedObj + Obj::Scratch1       ; AE21
        bne     L_AE49                          ; AE23
        inc     LoadedObj + Obj::Scratch0       ; AE25
        ldy     #$1D                            ; AE27
        jsr     Obj_AngleToVelocity             ; AE29
        jmp     L_AE49                          ; AE2C

; ----------------------------------------------------------------------------
L_AE2F: lda     #$02                            ; AE2F
        jsr     Obj_GravityMoveBounce_Double    ; AE31
        bpl     L_AE39                          ; AE34
        jsr     LE0D8                           ; AE36
L_AE39: lda     LoadedObj + Obj::Velocity_Y     ; AE39
        cmp     #$04                            ; AE3B
        bcs     L_AE49                          ; AE3D
        lda     #$04                            ; AE3F
        sta     LoadedObj + Obj::Velocity_Y     ; AE41
        dec     LoadedObj + Obj::Scratch0       ; AE43
        lda     #$40                            ; AE45
        sta     LoadedObj + Obj::Scratch1       ; AE47
L_AE49: lda     #$10                            ; AE49
        sta     $40                             ; AE4B
        lda     #$10                            ; AE4D
        sta     $41                             ; AE4F
        jsr     ScreenPos_Compute               ; AE51
        beq     L_AE59                          ; AE54
        jmp     Obj_TombstoneSlot               ; AE56

; ----------------------------------------------------------------------------
L_AE59: lda     #$0D                            ; AE59
        jsr     TankEnemy_DamageCheck           ; AE5B
        beq     L_AE63                          ; AE5E
        jmp     TankEnemy_Defeat                ; AE60

; ----------------------------------------------------------------------------
L_AE63: lda     #$01                            ; AE63
        jsr     Obj_SetAttrFlipX                ; AE65
        lda     Global_FrameCounter             ; AE68
        ldx     #$02                            ; AE6A
        jsr     LE060                           ; AE6C
        and     #$01                            ; AE6F
        clc                                     ; AE71
        adc     #$76                            ; AE72
        jmp     MetaSprite_Render               ; AE74

; ----------------------------------------------------------------------------
L_AE77: rts                                     ; AE77

.endmacro

