.macro MAC_L_B1FF
; ----------------------------------------------------------------------------
L_B1FF: jmp     L_B20B                          ; B1FF

; ----------------------------------------------------------------------------
L_B202: lda     #$13                            ; B202
        jsr     TankEnemy_Init                  ; B204
        lda     #$4F                            ; B207
        sta     LoadedObj + Obj::Type           ; B209
L_B20B: rts                                     ; B20B

; ----------------------------------------------------------------------------
L_B20C: jmp     L_B23F                          ; B20C

; ----------------------------------------------------------------------------
L_B20F: lda     #$80                            ; B20F
        sta     LoadedObj_CollisionBox_HalfWidth; B211
        lda     #$80                            ; B213
        sta     LoadedObj_CollisionBox_HalfHeight; B215
        jsr     ScreenPos_Compute               ; B217
        bne     L_B23F                          ; B21A
        lda     Global_FrameCounter             ; B21C
        and     #$1F                            ; B21E
        bne     L_B23F                          ; B220
        jsr     Step_RNG                        ; B222
        and     #$60                            ; B225
        bne     L_B23F                          ; B227
        lda     #$28                            ; B229
        jsr     L_A29E                          ; B22B
        beq     L_B23F                          ; B22E
        lda     #$7C                            ; B230
        sta     ObjectTable + Obj::Type,x       ; B232
        lda     #$00                            ; B235
        sta     ObjectTable + Obj::Velocity_Y,x ; B237
        lda     #$24                            ; B23A
        jsr     Enqueue_Sound_Command           ; B23C
L_B23F: lda     #$10                            ; B23F
        sta     $40                             ; B241
        lda     #$10                            ; B243
        sta     $41                             ; B245
        jsr     ScreenPos_Compute               ; B247
        beq     L_B24F                          ; B24A
        jmp     Obj_TombstoneSlot               ; B24C

; ----------------------------------------------------------------------------
L_B24F: rts                                     ; B24F

; ----------------------------------------------------------------------------
L_B250: jmp     L_B26C                          ; B250

; ----------------------------------------------------------------------------
L_B253: lda     #$80                            ; B253
        sta     LoadedObj_CollisionBox_HalfWidth; B255
        lda     #$80                            ; B257
        sta     LoadedObj_CollisionBox_HalfHeight; B259
        lda     Global_FrameCounter             ; B25B
        asl     a                               ; B25D
        asl     a                               ; B25E
        ldy     #$28                            ; B25F
        jsr     Trig_SinByAngle                 ; B261
        jsr     ScaleBySignedFrac               ; B264
        sta     LoadedObj + Obj::Velocity_Y     ; B267
        jsr     LD2DB                           ; B269
L_B26C: lda     #$10                            ; B26C
        sta     $40                             ; B26E
        lda     #$10                            ; B270
        sta     $41                             ; B272
        jsr     ScreenPos_Compute               ; B274
        beq     L_B27C                          ; B277
        jmp     Obj_Despawn                     ; B279

; ----------------------------------------------------------------------------
L_B27C: lda     #$13                            ; B27C
        jsr     TankEnemy_DamageCheck           ; B27E
        beq     L_B286                          ; B281
        jmp     L_A347                          ; B283

; ----------------------------------------------------------------------------
L_B286: lda     #$00                            ; B286
        jsr     Obj_SetAttrFlipX                ; B288
        lda     Global_FrameCounter             ; B28B
        lsr     a                               ; B28D
        and     #$03                            ; B28E
        tax                                     ; B290
        lda     L_B297,x                        ; B291
        jmp     MetaSprite_Render               ; B294

; ----------------------------------------------------------------------------
L_B297: .byte   $08,$09,$0A,$0B                 ; B297
.endmacro

