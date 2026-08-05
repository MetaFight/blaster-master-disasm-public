.macro MAC_L_A6D7
; ----------------------------------------------------------------------------
L_A6D7: jmp     L_A6E3                          ; A6D7

; ----------------------------------------------------------------------------
L_A6DA: lda     #$03                            ; A6DA
        jsr     TankEnemy_Init                  ; A6DC
        lda     #$00                            ; A6DF
        sta     LoadedObj + Obj::Scratch0       ; A6E1
L_A6E3: rts                                     ; A6E3

; ----------------------------------------------------------------------------
L_A6E4: jmp     L_A71F                          ; A6E4

; ----------------------------------------------------------------------------
L_A6E7: lda     #$80                            ; A6E7
        sta     LoadedObj_CollisionBox_HalfWidth; A6E9
        lda     #$80                            ; A6EB
        sta     LoadedObj_CollisionBox_HalfHeight; A6ED
        lda     LoadedObj + Obj::Scratch0       ; A6EF
        bne     L_A71F                          ; A6F1
        jsr     LE0FA                           ; A6F3
        bmi     L_A71F                          ; A6F6
        bpl     L_A6FF                          ; A6F8
        eor     #$FF                            ; A6FA
        clc                                     ; A6FC
        adc     #$01                            ; A6FD
L_A6FF: lsr     a                               ; A6FF
        sta     $00                             ; A700
        inc     $00                             ; A702
        jsr     LoadedObj__Get_DeltaToPlayer_X  ; A704
        bpl     L_A70E                          ; A707
        eor     #$FF                            ; A709
        clc                                     ; A70B
        adc     #$01                            ; A70C
L_A70E: cmp     $00                             ; A70E
        bcc     L_A715                          ; A710
        jmp     L_A71F                          ; A712

; ----------------------------------------------------------------------------
L_A715: jsr     Obj_TryCloneLoadedObjectIntoEmptySlot                           ; A715
        lda     #$42                            ; A718
        sta     ObjectTable + Obj::Type,x       ; A71A
        inc     LoadedObj + Obj::Scratch0       ; A71D
L_A71F: lda     #$10                            ; A71F
        sta     $40                             ; A721
        lda     #$10                            ; A723
        sta     $41                             ; A725
        jsr     ScreenPos_Compute               ; A727
        beq     L_A72F                          ; A72A
        jmp     Obj_TombstoneSlot               ; A72C

; ----------------------------------------------------------------------------
L_A72F: lda     #$03                            ; A72F
        jsr     TankEnemy_DamageCheck           ; A731
        beq     L_A739                          ; A734
        jmp     TankEnemy_Defeat                ; A736

; ----------------------------------------------------------------------------
L_A739: lda     #$00                            ; A739
        sta     $44                             ; A73B
        lda     LoadedObj + Obj::Scratch0       ; A73D
        beq     L_A745                          ; A73F
        lda     #$10                            ; A741
        bne     L_A747                          ; A743
L_A745: lda     #$0E                            ; A745
L_A747: jmp     MetaSprite_Render                           ; A747

; ----------------------------------------------------------------------------
L_A74A: rts                                     ; A74A

.endmacro

