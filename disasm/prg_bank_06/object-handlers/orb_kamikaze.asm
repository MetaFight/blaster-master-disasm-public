.macro MAC_L_B076
; ----------------------------------------------------------------------------
L_B076: jmp     L_B094                          ; B076

; ----------------------------------------------------------------------------
L_B079: lda     #$11                            ; B079
        jsr     TankEnemy_Init                  ; B07B
        lda     #$00                            ; B07E
        sta     LoadedObj + Obj::Scratch0       ; B080
        sta     LoadedObj + Obj::Velocity_Y     ; B082
        lda     #$10                            ; B084
        sta     LoadedObj + Obj::Velocity_X     ; B086
        jsr     LoadedObj__Get_DeltaToPlayer_X  ; B088
        bpl     L_B094                          ; B08B
        lda     #$00                            ; B08D
        sec                                     ; B08F
        sbc     LoadedObj + Obj::Velocity_X     ; B090
        sta     LoadedObj + Obj::Velocity_X     ; B092
L_B094: rts                                     ; B094

; ----------------------------------------------------------------------------
L_B095: jmp     L_B13B                          ; B095

; ----------------------------------------------------------------------------
L_B098: lda     #$80                            ; B098
        sta     LoadedObj_CollisionBox_HalfWidth; B09A
        lda     #$80                            ; B09C
        sta     LoadedObj_CollisionBox_HalfHeight; B09E
        jsr     LoadedObj__Get_DeltaToPlayer_X  ; B0A0
        bne     L_B0B0                          ; B0A3
        jsr     LE0FA                           ; B0A5
        bne     L_B0B0                          ; B0A8
        jsr     Obj_DespawnAndLog               ; B0AA
        jsr     L_9B90                          ; B0AD
L_B0B0: lda     LoadedObj + Obj::Scratch0       ; B0B0
        bne     L_B0ED                          ; B0B2
        jsr     LD2FE                           ; B0B4
        jsr     V_Collision_Check               ; B0B7
        jsr     LD2DE                           ; B0BA
        jsr     H_Collision_Check               ; B0BD
        beq     L_B0C9                          ; B0C0
        lda     #$00                            ; B0C2
        sec                                     ; B0C4
        sbc     LoadedObj + Obj::Velocity_X     ; B0C5
        sta     LoadedObj + Obj::Velocity_X     ; B0C7
L_B0C9: lda     LoadedObj + Obj::Velocity_Y     ; B0C9
        bne     L_B0D2                          ; B0CB
        jsr     LE0FA                           ; B0CD
        bmi     L_B13B                          ; B0D0
L_B0D2: jsr     LoadedObj__Get_DeltaToPlayer_X                           ; B0D2
        eor     LoadedObj + Obj::Velocity_X     ; B0D5
        bmi     L_B13B                          ; B0D7
        lda     #$01                            ; B0D9
        sta     LoadedObj + Obj::Scratch0       ; B0DB
        lda     #$00                            ; B0DD
        sta     LoadedObj + Obj::Velocity_X     ; B0DF
        sta     LoadedObj + Obj::Velocity_Y     ; B0E1
        jsr     LDFDD                           ; B0E3
        lda     #$01                            ; B0E6
        sta     LoadedObj + Obj::Scratch1       ; B0E8
        jmp     L_B13B                          ; B0EA

; ----------------------------------------------------------------------------
L_B0ED: lda     Global_FrameCounter             ; B0ED
        and     #$3F                            ; B0EF
        bne     L_B0F6                          ; B0F1
        jsr     LDFDD                           ; B0F3
L_B0F6: jsr     LoadedObj__Get_DeltaToPlayer_X                           ; B0F6
        bmi     L_B101                          ; B0F9
        clc                                     ; B0FB
        adc     #$20                            ; B0FC
        jmp     L_B104                          ; B0FE

; ----------------------------------------------------------------------------
L_B101: sec                                     ; B101
        sbc     #$20                            ; B102
L_B104: sta     LoadedObj + Obj::Velocity_X     ; B104
        dec     LoadedObj + Obj::Scratch1       ; B106
        bne     L_B11A                          ; B108
        lda     LoadedObj + Obj::Scratch2       ; B10A
        sta     LoadedObj + Obj::Scratch1       ; B10C
        jsr     LE0FA                           ; B10E
        bmi     L_B118                          ; B111
        inc     LoadedObj + Obj::Velocity_Y     ; B113
        jmp     L_B11A                          ; B115

; ----------------------------------------------------------------------------
L_B118: dec     LoadedObj + Obj::Velocity_Y     ; B118
L_B11A: lda     #$40                            ; B11A
        ldx     #$4D                            ; B11C
        jsr     Speed_Limit_Sub                 ; B11E
        jsr     LE083                           ; B121
        bpl     L_B13B                          ; B124
        lda     #$00                            ; B126
        sta     LoadedObj + Obj::Scratch0       ; B128
        lda     #$06                            ; B12A
        sta     LoadedObj + Obj::Velocity_Y     ; B12C
        lda     #$10                            ; B12E
        ldx     LoadedObj + Obj::Velocity_X     ; B130
        bmi     L_B139                          ; B132
        eor     #$FF                            ; B134
        clc                                     ; B136
        adc     #$01                            ; B137
L_B139: sta     LoadedObj + Obj::Velocity_X     ; B139
L_B13B: lda     #$20                            ; B13B
        sta     $40                             ; B13D
        lda     #$20                            ; B13F
        sta     $41                             ; B141
        jsr     ScreenPos_Compute               ; B143
        beq     L_B14B                          ; B146
        jmp     Obj_TombstoneSlot               ; B148

; ----------------------------------------------------------------------------
L_B14B: lda     #$11                            ; B14B
        jsr     TankEnemy_DamageCheck           ; B14D
        beq     L_B155                          ; B150
        jmp     TankEnemy_Defeat                ; B152

; ----------------------------------------------------------------------------
L_B155: lda     #$01                            ; B155
        sta     $44                             ; B157
        lda     Global_FrameCounter             ; B159
        lsr     a                               ; B15B
        and     #$07                            ; B15C
        tax                                     ; B15E
        lda     L_B166,x                        ; B15F
        jmp     LF011                           ; B162

; ----------------------------------------------------------------------------
L_B165: rts                                     ; B165

; ----------------------------------------------------------------------------
L_B166: .byte   $86,$87,$80,$81,$82,$83,$84,$85 ; B166
.endmacro

