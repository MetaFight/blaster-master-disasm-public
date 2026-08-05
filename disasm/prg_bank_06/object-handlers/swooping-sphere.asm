.macro MAC_L_ACFB
; ----------------------------------------------------------------------------
L_ACFB: jmp     L_AD07                          ; ACFB

; ----------------------------------------------------------------------------
L_ACFE: lda     #$0C                            ; ACFE
        jsr     TankEnemy_Init                  ; AD00
        lda     #$00                            ; AD03
        sta     LoadedObj + Obj::Scratch0       ; AD05
L_AD07: rts                                     ; AD07

; ----------------------------------------------------------------------------
L_AD08: jmp     L_ADA9                          ; AD08

; ----------------------------------------------------------------------------
L_AD0B: lda     #$80                            ; AD0B
        sta     LoadedObj_CollisionBox_HalfWidth; AD0D
        lda     #$80                            ; AD0F
        sta     LoadedObj_CollisionBox_HalfHeight; AD11
        lda     LoadedObj + Obj::Scratch0       ; AD13
        bne     L_AD4A                          ; AD15
        jsr     LE0FA                           ; AD17
        bpl     L_AD1F                          ; AD1A
        jmp     L_ADA9                          ; AD1C

; ----------------------------------------------------------------------------
L_AD1F: jsr     LoadedObj__Get_DeltaToPlayer_X                           ; AD1F
        tax                                     ; AD22
        bpl     L_AD2A                          ; AD23
        eor     #$FF                            ; AD25
        clc                                     ; AD27
        adc     #$01                            ; AD28
L_AD2A: cmp     #$03                            ; AD2A
        bcc     L_AD31                          ; AD2C
        jmp     L_ADA9                          ; AD2E

; ----------------------------------------------------------------------------
L_AD31: jsr     Step_RNG                           ; AD31
        and     #$1F                            ; AD34
        bne     L_ADA9                          ; AD36
        txa                                     ; AD38
        bpl     L_AD40                          ; AD39
        lda     #$02                            ; AD3B
        jmp     L_AD42                          ; AD3D

; ----------------------------------------------------------------------------
L_AD40: lda     #$FE                            ; AD40
L_AD42: sta     LoadedObj + Obj::Scratch2       ; AD42
        lda     #$40                            ; AD44
        sta     LoadedObj + Obj::Facing         ; AD46
        inc     LoadedObj + Obj::Scratch0       ; AD48
L_AD4A: jsr     LE07B                           ; AD4A
        and     #$7F                            ; AD4D
        bne     L_AD65                          ; AD4F
        lda     LoadedObj + Obj::Facing         ; AD51
        eor     LoadedObj + Obj::Scratch2       ; AD53
        bpl     L_AD65                          ; AD55
        jsr     Step_RNG                        ; AD57
        bmi     L_AD61                          ; AD5A
        lda     #$01                            ; AD5C
        jmp     L_AD63                          ; AD5E

; ----------------------------------------------------------------------------
L_AD61: lda     #$02                            ; AD61
L_AD63: sta     LoadedObj + Obj::Scratch0       ; AD63
L_AD65: lda     LoadedObj + Obj::Facing         ; AD65
        ldy     #$24                            ; AD67
        jsr     LE1B1                           ; AD69
        sta     LoadedObj + Obj::Velocity_X     ; AD6C
        lda     #$24                            ; AD6E
        ldx     LoadedObj + Obj::Scratch0       ; AD70
        cpx     #$02                            ; AD72
        beq     L_AD7A                          ; AD74
        asl     a                               ; AD76
        clc                                     ; AD77
        adc     #$02                            ; AD78
L_AD7A: tay                                     ; AD7A
        lda     LoadedObj + Obj::Facing         ; AD7B
        jsr     LE1B7                           ; AD7D
        sta     LoadedObj + Obj::Velocity_Y     ; AD80
        jsr     LoadedObj__Get_DeltaToPlayer_X  ; AD82
        bmi     L_AD8C                          ; AD85
        lda     #$04                            ; AD87
        jmp     L_AD8E                          ; AD89

; ----------------------------------------------------------------------------
L_AD8C: lda     #$FC                            ; AD8C
L_AD8E: clc                                     ; AD8E
        adc     LoadedObj + Obj::Velocity_X     ; AD8F
        sta     LoadedObj + Obj::Velocity_X     ; AD91
        jsr     LD2DE                           ; AD93
        jsr     H_Collision_Check               ; AD96
        jsr     LD2FE                           ; AD99
        jsr     V_Collision_Check               ; AD9C
        beq     L_ADA9                          ; AD9F
        lda     LoadedObj + Obj::Velocity_Y     ; ADA1
        bpl     L_ADA9                          ; ADA3
        lda     #$00                            ; ADA5
        sta     LoadedObj + Obj::Scratch0       ; ADA7
L_ADA9: lda     #$10                            ; ADA9
        sta     $40                             ; ADAB
        lda     #$10                            ; ADAD
        sta     $41                             ; ADAF
        jsr     ScreenPos_Compute               ; ADB1
        beq     L_ADB9                          ; ADB4
        jmp     Obj_TombstoneSlot               ; ADB6

; ----------------------------------------------------------------------------
L_ADB9: lda     #$0C                            ; ADB9
        jsr     TankEnemy_DamageCheck           ; ADBB
        beq     L_ADC3                          ; ADBE
        jmp     TankEnemy_Defeat                ; ADC0

; ----------------------------------------------------------------------------
L_ADC3: jsr     LoadedObj__Get_DeltaToPlayer_X                           ; ADC3
        bmi     L_ADCD                          ; ADC6
        lda     #$01                            ; ADC8
        jmp     L_ADCF                          ; ADCA

; ----------------------------------------------------------------------------
L_ADCD: lda     #$41                            ; ADCD
L_ADCF: sta     $44                             ; ADCF
        lda     Global_FrameCounter             ; ADD1
        lsr     a                               ; ADD3
        lsr     a                               ; ADD4
        lsr     a                               ; ADD5
        and     #$03                            ; ADD6
        tax                                     ; ADD8
        lda     L_ADE0,x                        ; ADD9
        jmp     LF011                           ; ADDC

; ----------------------------------------------------------------------------
L_ADDF: rts                                     ; ADDF

; ----------------------------------------------------------------------------
L_ADE0: .byte   $05,$06,$07,$06                 ; ADE0
.endmacro

