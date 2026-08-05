.macro MAC_L_AA5A
; ----------------------------------------------------------------------------
L_AA5A: jmp     L_AA6B                          ; AA5A

; ----------------------------------------------------------------------------
L_AA5D: lda     #$08                            ; AA5D
        jsr     TankEnemy_Init                  ; AA5F
        lda     #$02                            ; AA62
        sta     LoadedObj + Obj::Scratch2       ; AA64
        jsr     Step_RNG                        ; AA66
        sta     LoadedObj + Obj::Scratch1       ; AA69
L_AA6B: rts                                     ; AA6B

; ----------------------------------------------------------------------------
L_AA6C: jmp     L_AAD4                          ; AA6C

; ----------------------------------------------------------------------------
L_AA6F: lda     #$80                            ; AA6F
        sta     LoadedObj_CollisionBox_HalfWidth; AA71
        lda     #$80                            ; AA73
        sta     LoadedObj_CollisionBox_HalfHeight; AA75
        inc     LoadedObj + Obj::Scratch1       ; AA77
        lda     LoadedObj + Obj::Scratch1       ; AA79
        and     #$01                            ; AA7B
        bne     L_AAD4                          ; AA7D
        lda     LoadedObj + Obj::Scratch1       ; AA7F
        bpl     L_AA8E                          ; AA81
        ldx     LoadedObj + Obj::Scratch2       ; AA83
        cpx     #$02                            ; AA85
        bcc     L_AAD4                          ; AA87
        dec     LoadedObj + Obj::Scratch2       ; AA89
        jmp     L_AA96                          ; AA8B

; ----------------------------------------------------------------------------
L_AA8E: ldx     LoadedObj + Obj::Scratch2       ; AA8E
        cpx     #$20                            ; AA90
        bcs     L_AAD4                          ; AA92
        inc     LoadedObj + Obj::Scratch2       ; AA94
L_AA96: lda     LoadedObj + Obj::Scratch2       ; AA96
        cmp     #$04                            ; AA98
        bcc     L_AAD4                          ; AA9A
        lda     LoadedObj + Obj::Scratch1       ; AA9C
        and     #$07                            ; AA9E
        bne     L_AAD4                          ; AAA0
        jsr     Obj_TryCloneLoadedObjectIntoEmptySlot ; AAA2
        beq     L_AAD4                          ; AAA5
        jsr     Step_RNG                        ; AAA7
        and     #$40                            ; AAAA
        bne     L_AAB2                          ; AAAC
        lda     #$80                            ; AAAE
        bne     L_AAB4                          ; AAB0
L_AAB2: lda     #$00                            ; AAB2
L_AAB4: sta     ObjectTable + Obj::Facing,x     ; AAB4
        lda     LoadedObj + Obj::Scratch2       ; AAB7
        asl     a                               ; AAB9
        clc                                     ; AABA
        adc     #$01                            ; AABB
        sta     ObjectTable + Obj::Scratch1,x   ; AABD
        lda     LoadedObj + Obj::Position_Y_Lo  ; AAC0
        clc                                     ; AAC2
        adc     #$40                            ; AAC3
        sta     ObjectTable + Obj::Position_Y_Lo,x ; AAC5
        lda     LoadedObj + Obj::Position_Y_Hi  ; AAC8
        adc     #$00                            ; AACA
        sta     ObjectTable + Obj::Position_Y_Hi,x ; AACC
        lda     #$46                            ; AACF
        sta     ObjectTable + Obj::Type,x       ; AAD1
L_AAD4: lda     #$10                            ; AAD4
        sta     $40                             ; AAD6
        lda     #$10                            ; AAD8
        sta     $41                             ; AADA
        jsr     ScreenPos_Compute               ; AADC
        beq     L_AAE4                          ; AADF
        jmp     Obj_TombstoneSlot               ; AAE1

; ----------------------------------------------------------------------------
L_AAE4: lda     #$08                            ; AAE4
        jsr     TankEnemy_DamageCheck           ; AAE6
        beq     L_AAEE                          ; AAE9
        jmp     TankEnemy_Defeat                ; AAEB

; ----------------------------------------------------------------------------
L_AAEE: jsr     LE07B                           ; AAEE
        lsr     a                               ; AAF1
        lsr     a                               ; AAF2
        lsr     a                               ; AAF3
        lsr     a                               ; AAF4
        and     #$0E                            ; AAF5
        tax                                     ; AAF7
        lda     LAB04,x                         ; AAF8
        sta     $44                             ; AAFB
        lda     L_AB03,x                        ; AAFD
        jmp     MetaSprite_Render               ; AB00

; ----------------------------------------------------------------------------
L_AB03: .byte   $72                             ; AB03
LAB04:  .byte   $81,$72,$81,$72,$81,$72,$81,$73 ; AB04
        .byte   $81,$73,$81,$73,$81,$73,$81     ; AB0C
.endmacro

