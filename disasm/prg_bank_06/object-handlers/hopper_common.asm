.macro MAC_L_A86E
; ----------------------------------------------------------------------------
L_A86E: jmp     L_A89F                          ; A86E

; ----------------------------------------------------------------------------
L_A871: lda     #$80                            ; A871
        sta     LoadedObj_CollisionBox_HalfWidth; A873
        lda     #$C0                            ; A875
        sta     LoadedObj_CollisionBox_HalfHeight; A877
        lda     #$00                            ; A879
        sta     LoadedObj + Obj::Velocity_Y     ; A87B
        lda     LoadedObj + Obj::Velocity_X     ; A87D
        bmi     L_A886                          ; A87F
        lda     #$08                            ; A881
        jmp     L_A888                          ; A883

; ----------------------------------------------------------------------------
L_A886: lda     #$F8                            ; A886
L_A888: sta     LoadedObj + Obj::Velocity_X     ; A888
        jsr     LE02F                           ; A88A
        jsr     Step_RNG                        ; A88D
        and     #$3F                            ; A890
        bne     L_A89F                          ; A892
        lda     Global_FrameCounter             ; A894
        bmi     L_A89F                          ; A896
        lda     #$29                            ; A898
        jsr     Enqueue_Sound_Command           ; A89A
        dec     LoadedObj + Obj::Type           ; A89D
L_A89F: lda     #$10                            ; A89F
        sta     $40                             ; A8A1
        lda     #$18                            ; A8A3
        sta     $41                             ; A8A5
        jsr     ScreenPos_Compute               ; A8A7
        beq     L_A8AF                          ; A8AA
        jmp     Obj_TombstoneSlot               ; A8AC

; ----------------------------------------------------------------------------
L_A8AF: lda     #$05                            ; A8AF
        jsr     TankEnemy_DamageCheck           ; A8B1
        beq     L_A8B9                          ; A8B4
        jmp     TankEnemy_Defeat                ; A8B6

; ----------------------------------------------------------------------------
L_A8B9: lda     #$01                            ; A8B9
        jsr     Obj_SetAttrFlipX                ; A8BB
        lda     Global_FrameCounter             ; A8BE
        lsr     a                               ; A8C0
        lsr     a                               ; A8C1
        lsr     a                               ; A8C2
        lsr     a                               ; A8C3
        and     #$03                            ; A8C4
        tax                                     ; A8C6
        lda     L_A8CE,x                        ; A8C7
        jmp     MetaSprite_Render               ; A8CA

; ----------------------------------------------------------------------------
L_A8CD: rts                                     ; A8CD

; ----------------------------------------------------------------------------
L_A8CE: .byte   $02,$03,$02,$04                 ; A8CE
.endmacro

