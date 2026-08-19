.macro MAC_L_AF3A
; ----------------------------------------------------------------------------
L_AF3A: jmp     L_AF60                          ; AF3A

; ----------------------------------------------------------------------------
L_AF3D: lda     #$0F                            ; AF3D
        jsr     TankEnemy_Init                  ; AF3F
        jsr     LoadedObj__Get_DeltaToPlayer_X  ; AF42
        and     #$80                            ; AF45
        sta     LoadedObj + Obj::Facing         ; AF47
        bpl     L_AF4F                          ; AF49
        lda     #$10                            ; AF4B
        bne     L_AF51                          ; AF4D
L_AF4F: lda     #$F0                            ; AF4F
L_AF51: sta     LoadedObj + Obj::Scratch2       ; AF51
        lda     #$00                            ; AF53
        sta     LoadedObj + Obj::Scratch0       ; AF55
        lda     #$00                            ; AF57
        sta     LoadedObj + Obj::Scratch1       ; AF59
        ldy     #$28                            ; AF5B
        jsr     Obj_AngleToVelocity             ; AF5D
L_AF60: rts                                     ; AF60

; ----------------------------------------------------------------------------
L_AF61: jmp     L_AFD1                          ; AF61

; ----------------------------------------------------------------------------
L_AF64: lda     #$80                            ; AF64
        sta     $42                             ; AF66
        lda     #$80                            ; AF68
        sta     $43                             ; AF6A
        lda     LoadedObj + Obj::Scratch1       ; AF6C
        beq     L_AF72                          ; AF6E
        dec     LoadedObj + Obj::Scratch1       ; AF70
L_AF72: lda     LoadedObj + Obj::Scratch0       ; AF72
        beq     L_AF8C                          ; AF74
        jsr     Obj_TurnHeading                 ; AF76
        asl     a                               ; AF79
        asl     a                               ; AF7A
        bne     L_AF81                          ; AF7B
        lda     #$00                            ; AF7D
        sta     LoadedObj + Obj::Scratch0       ; AF7F
L_AF81: ldy     #$28                            ; AF81
        jsr     Obj_AngleToVelocity             ; AF83
        jsr     LE083                           ; AF86
        jmp     L_AFD1                          ; AF89

; ----------------------------------------------------------------------------
L_AF8C: jsr     LoadedObj__Get_DeltaToPlayer_X                           ; AF8C
        bpl     L_AF96                          ; AF8F
        eor     #$FF                            ; AF91
        clc                                     ; AF93
        adc     #$01                            ; AF94
L_AF96: cmp     #$01                            ; AF96
        bcs     L_AFC4                          ; AF98
        lda     LoadedObj + Obj::Scratch1       ; AF9A
        bne     L_AFC4                          ; AF9C
        jsr     Obj_TryCloneLoadedObjectIntoEmptySlot ; AF9E
        beq     L_AFBC                          ; AFA1
        lda     #$3A                            ; AFA3
        sta     ObjectTable + Obj::Type,x       ; AFA5
        lda     LoadedObj + Obj::Scratch2       ; AFA8
        bpl     L_AFB1                          ; AFAA
        eor     #$FF                            ; AFAC
        clc                                     ; AFAE
        adc     #$01                            ; AFAF
L_AFB1: ldx     LoadedObj + Obj::Velocity_X     ; AFB1
        bmi     L_AFBC                          ; AFB3
        eor     #$FF                            ; AFB5
        clc                                     ; AFB7
        adc     #$01                            ; AFB8
        sta     LoadedObj + Obj::Scratch2       ; AFBA
L_AFBC: lda     #$40                            ; AFBC
        sta     LoadedObj + Obj::Scratch1       ; AFBE
        lda     #$01                            ; AFC0
        sta     LoadedObj + Obj::Scratch0       ; AFC2
L_AFC4: jsr     LE083                           ; AFC4
        bpl     L_AFD1                          ; AFC7
        jsr     LE0D8                           ; AFC9
        ldy     #$28                            ; AFCC
        jsr     Obj_AngleToVelocity             ; AFCE
L_AFD1: lda     #$10                            ; AFD1
        sta     $40                             ; AFD3
        lda     #$10                            ; AFD5
        sta     $41                             ; AFD7
        jsr     ScreenPos_Compute               ; AFD9
        beq     L_AFE1                          ; AFDC
        jmp     Obj_TombstoneSlot               ; AFDE

; ----------------------------------------------------------------------------
L_AFE1: lda     #$0F                            ; AFE1
        jsr     TankEnemy_DamageCheck           ; AFE3
        beq     L_AFEB                          ; AFE6
        jmp     TankEnemy_Defeat                ; AFE8

; ----------------------------------------------------------------------------
L_AFEB: lda     #$00                            ; AFEB
        jsr     Obj_SetAttrFlipX                ; AFED
        ldx     #$2F                            ; AFF0
        lda     LoadedObj + Obj::Scratch0       ; AFF2
        beq     L_AFF7                          ; AFF4
        inx                                     ; AFF6
L_AFF7: txa                                     ; AFF7
        jmp     MetaSprite_Render               ; AFF8

; ----------------------------------------------------------------------------
L_AFFB: rts                                     ; AFFB

.endmacro

