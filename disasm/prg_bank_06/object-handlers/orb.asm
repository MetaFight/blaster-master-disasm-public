.macro MAC_L_AE78
; ----------------------------------------------------------------------------
L_AE78: jmp     L_AE94                          ; AE78

; ----------------------------------------------------------------------------
L_AE7B: lda     #$0E                            ; AE7B
        jsr     TankEnemy_Init                  ; AE7D
        jsr     Step_RNG                        ; AE80
        and     #$80                            ; AE83
        sta     LoadedObj + Obj::Facing         ; AE85
        ldy     #$10                            ; AE87
        jsr     Obj_AngleToVelocity             ; AE89
        lda     #$00                            ; AE8C
        sta     LoadedObj + Obj::Scratch0       ; AE8E
        lda     #$10                            ; AE90
        sta     LoadedObj + Obj::Scratch2       ; AE92
L_AE94: rts                                     ; AE94

; ----------------------------------------------------------------------------
L_AE95: jmp     L_AF03                          ; AE95

; ----------------------------------------------------------------------------
L_AE98: lda     #$80                            ; AE98
        sta     $42                             ; AE9A
        lda     #$80                            ; AE9C
        sta     $43                             ; AE9E
        lda     LoadedObj + Obj::Scratch0       ; AEA0
        bne     L_AEDC                          ; AEA2
        jsr     LD2DE                           ; AEA4
        jsr     H_Collision_Check               ; AEA7
        beq     L_AEB3                          ; AEAA
        lda     #$02                            ; AEAC
        sta     LoadedObj + Obj::Scratch0       ; AEAE
        jmp     L_AF03                          ; AEB0

; ----------------------------------------------------------------------------
L_AEB3: lda     Global_FrameCounter             ; AEB3
        cmp     LoadedObj + Obj::Type           ; AEB5
        bne     L_AF03                          ; AEB7
        jsr     Step_RNG                        ; AEB9
        bcc     L_AF03                          ; AEBC
        lda     #$08                            ; AEBE
        sta     LoadedObj + Obj::Velocity_Y     ; AEC0
        jsr     Step_RNG                        ; AEC2
        bmi     L_AED5                          ; AEC5
        lda     #$00                            ; AEC7
        sec                                     ; AEC9
        sbc     LoadedObj + Obj::Scratch2       ; AECA
        sta     LoadedObj + Obj::Scratch2       ; AECC
        lda     #$00                            ; AECE
        sec                                     ; AED0
        sbc     LoadedObj + Obj::Velocity_Y     ; AED1
        sta     LoadedObj + Obj::Velocity_Y     ; AED3
L_AED5: lda     #$01                            ; AED5
        sta     LoadedObj + Obj::Scratch0       ; AED7
        jmp     L_AF03                          ; AED9

; ----------------------------------------------------------------------------
L_AEDC: cmp     #$01                            ; AEDC
        bne     L_AEE6                          ; AEDE
        jsr     LD2FE                           ; AEE0
        jsr     V_Collision_Check               ; AEE3
L_AEE6: jsr     LE07B                           ; AEE6
        and     #$7F                            ; AEE9
        bne     L_AF03                          ; AEEB
        lda     LoadedObj + Obj::Scratch0       ; AEED
        cmp     #$02                            ; AEEF
        beq     L_AEFA                          ; AEF1
        jsr     Step_RNG                        ; AEF3
        and     #$03                            ; AEF6
        bne     L_AF03                          ; AEF8
L_AEFA: lda     #$00                            ; AEFA
        sta     LoadedObj + Obj::Scratch0       ; AEFC
        ldy     #$10                            ; AEFE
        jsr     Obj_AngleToVelocity             ; AF00
L_AF03: lda     #$10                            ; AF03
        sta     $40                             ; AF05
        lda     #$10                            ; AF07
        sta     $41                             ; AF09
        jsr     ScreenPos_Compute               ; AF0B
        beq     L_AF13                          ; AF0E
        jmp     Obj_TombstoneSlot               ; AF10

; ----------------------------------------------------------------------------
L_AF13: lda     #$0E                            ; AF13
        jsr     TankEnemy_DamageCheck           ; AF15
        beq     L_AF1D                          ; AF18
        jmp     TankEnemy_Defeat                ; AF1A

; ----------------------------------------------------------------------------
L_AF1D: lda     #$01                            ; AF1D
        sta     $44                             ; AF1F
        lda     LoadedObj + Obj::Facing         ; AF21
        ldx     #$05                            ; AF23
        jsr     LE060                           ; AF25
        and     #$07                            ; AF28
        tax                                     ; AF2A
        lda     L_AF32,x                        ; AF2B
        jmp     MetaSprite_Render               ; AF2E

; ----------------------------------------------------------------------------
L_AF31: rts                                     ; AF31

; ----------------------------------------------------------------------------
L_AF32: .byte   $86,$87,$80,$81,$82,$83,$84,$85 ; AF32
.endmacro

