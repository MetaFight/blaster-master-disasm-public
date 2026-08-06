.macro MAC_L_B16E
; ----------------------------------------------------------------------------
L_B16E: jmp     L_B18E                          ; B16E

; ----------------------------------------------------------------------------
L_B171: lda     #$12                            ; B171
        jsr     TankEnemy_Init                  ; B173
        lda     LoadedObj + Obj::Position_X_Hi  ; B176
        lsr     a                               ; B178
        bcc     L_B180                          ; B179
        lda     #$F4                            ; B17B
        jmp     L_B182                          ; B17D

; ----------------------------------------------------------------------------
L_B180: lda     #$0C                            ; B180
L_B182: sta     LoadedObj + Obj::Velocity_X     ; B182
        lda     #$00                            ; B184
        sta     LoadedObj + Obj::Velocity_Y     ; B186
        lda     #$00                            ; B188
        sta     LoadedObj + Obj::Scratch0       ; B18A
        sta     LoadedObj + Obj::Scratch1       ; B18C
L_B18E: rts                                     ; B18E

; ----------------------------------------------------------------------------
L_B18F: jmp     L_B1AB                          ; B18F

; ----------------------------------------------------------------------------
L_B192: lda     #$80                            ; B192
        sta     LoadedObj_CollisionBox_HalfWidth; B194
        lda     #$C0                            ; B196
        sta     LoadedObj_CollisionBox_HalfHeight; B198
        lda     LoadedObj + Obj::Scratch0       ; B19A
        bne     L_B1A5                          ; B19C
        jsr     LE005                           ; B19E
        beq     L_B1AB                          ; B1A1
        inc     LoadedObj + Obj::Scratch0       ; B1A3
L_B1A5: jsr     LDF68                           ; B1A5
        jsr     L_B1DE                          ; B1A8
L_B1AB: lda     #$10                            ; B1AB
        sta     $40                             ; B1AD
        lda     #$10                            ; B1AF
        sta     $41                             ; B1B1
        jsr     ScreenPos_Compute               ; B1B3
        beq     L_B1BB                          ; B1B6
        jmp     Obj_TombstoneSlot               ; B1B8

; ----------------------------------------------------------------------------
L_B1BB: lda     #$12                            ; B1BB
        jsr     TankEnemy_DamageCheck           ; B1BD
        beq     L_B1C5                          ; B1C0
        jmp     TankEnemy_Defeat                ; B1C2

; ----------------------------------------------------------------------------
L_B1C5: lda     #$01                            ; B1C5
        jsr     Obj_SetAttrFlipX                ; B1C7
        lda     Global_FrameCounter             ; B1CA
        lsr     a                               ; B1CC
        lsr     a                               ; B1CD
        lsr     a                               ; B1CE
        lsr     a                               ; B1CF
        and     #$03                            ; B1D0
        tax                                     ; B1D2
        lda     L_B1DA,x                        ; B1D3
        jmp     MetaSprite_Render               ; B1D6

; ----------------------------------------------------------------------------
L_B1D9: rts                                     ; B1D9

; ----------------------------------------------------------------------------
L_B1DA: .byte   $02,$03,$02,$04                 ; B1DA
; ----------------------------------------------------------------------------
L_B1DE: lda     #$11                            ; B1DE
        jsr     TileRead_WithOffset             ; B1E0
        bmi     L_B1FE                          ; B1E3
        jsr     Step_RNG                        ; B1E5
        and     #$0F                            ; B1E8
        beq     L_B1F6                          ; B1EA
        lda     #$00                            ; B1EC
        sec                                     ; B1EE
        sbc     LoadedObj + Obj::Velocity_X     ; B1EF
        sta     LoadedObj + Obj::Velocity_X     ; B1F1
        jmp     L_B1FE                          ; B1F3

; ----------------------------------------------------------------------------
L_B1F6: lda     #$E0                            ; B1F6
        sta     LoadedObj + Obj::Velocity_Y     ; B1F8
        lda     #$00                            ; B1FA
        sta     LoadedObj + Obj::Scratch0       ; B1FC
L_B1FE: rts                                     ; B1FE

.endmacro

