.macro MAC_L_ABCF
; ----------------------------------------------------------------------------
L_ABCF: jmp     L_ABEB                          ; ABCF

; ----------------------------------------------------------------------------
L_ABD2: lda     #$0A                            ; ABD2
        jsr     TankEnemy_Init                  ; ABD4
        lda     #$10                            ; ABD7
        sta     LoadedObj + Obj::Velocity_X     ; ABD9
        lda     #$00                            ; ABDB
        sta     LoadedObj + Obj::Velocity_Y     ; ABDD
        jsr     LoadedObj__Get_DeltaToPlayer_X  ; ABDF
        bpl     L_ABEB                          ; ABE2
        lda     #$00                            ; ABE4
        sec                                     ; ABE6
        sbc     LoadedObj + Obj::Velocity_X     ; ABE7
        sta     LoadedObj + Obj::Velocity_X     ; ABE9
L_ABEB: rts                                     ; ABEB

; ----------------------------------------------------------------------------
L_ABEC: jmp     L_AC10                          ; ABEC

; ----------------------------------------------------------------------------
L_ABEF: lda     #$80                            ; ABEF
        sta     $42                             ; ABF1
        lda     #$80                            ; ABF3
        sta     $43                             ; ABF5
        jsr     Obj_MoveBounce                  ; ABF7
        lda     Global_FrameCounter             ; ABFA
        and     #$4F                            ; ABFC
        bne     L_AC10                          ; ABFE
        jsr     LE0FA                           ; AC00
        bmi     L_AC10                          ; AC03
        cmp     #$03                            ; AC05
        bcc     L_AC10                          ; AC07
        lda     #$3C                            ; AC09
        sta     $A0                             ; AC0B
        jsr     LDF46                           ; AC0D
L_AC10: lda     #$10                            ; AC10
        sta     $40                             ; AC12
        lda     #$10                            ; AC14
        sta     $41                             ; AC16
        jsr     ScreenPos_Compute               ; AC18
        beq     L_AC20                          ; AC1B
        jmp     Obj_TombstoneSlot               ; AC1D

; ----------------------------------------------------------------------------
L_AC20: lda     #$0A                            ; AC20
        jsr     TankEnemy_DamageCheck           ; AC22
        beq     L_AC2A                          ; AC25
        jmp     TankEnemy_Defeat                ; AC27

; ----------------------------------------------------------------------------
L_AC2A: lda     #$01                            ; AC2A
        jsr     Obj_SetAttrFlipX                ; AC2C
        ldx     #$78                            ; AC2F
        lda     Global_FrameCounter             ; AC31
        and     #$10                            ; AC33
        beq     L_AC38                          ; AC35
        inx                                     ; AC37
L_AC38: txa                                     ; AC38
        jmp     MetaSprite_Render               ; AC39

.endmacro

