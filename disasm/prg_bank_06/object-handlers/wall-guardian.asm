.macro MAC_L_BA88
; ----------------------------------------------------------------------------
; ObjType $90: Wall Guardian - Init.
ObjHandler_Tank_90_Wall_Guardian_Init:
        jmp     _ObjHandler_Tank_90_Wall_Guardian_Init__Done; BA88

; ----------------------------------------------------------------------------
_ObjHandler_Tank_90_Wall_Guardian_Init__Body:
        lda     $03FE                           ; BA8B
        and     #$01                            ; BA8E
; If IsDefeated flag is not set, skip to Spawn.
        beq     _ObjHandler_Tank_90_Wall_Guardian_Init__Spawn; BA90
; Otherwise, despawn.
        jmp     Obj_DespawnAndLog               ; BA92

; ----------------------------------------------------------------------------
; Start by despawning all other enemies.
; This is so we can switch the graphics bank without affecting enemy graphics.
_ObjHandler_Tank_90_Wall_Guardian_Init__Spawn:
        jsr     ClearEnemySlots                 ; BA95
        lda     $C5                             ; BA98
        ora     #$04                            ; BA9A
; Enable object spawning.
        sta     $C5                             ; BA9C
        lda     #$00                            ; BA9E
; Initialise tank section boss with descriptor #$00.
        jsr     TankBoss_InitFromTableEntry     ; BAA0
_ObjHandler_Tank_90_Wall_Guardian_Init__Done:
        rts                                     ; BAA3

; ----------------------------------------------------------------------------
L_BAA4: jmp     L_BACF                          ; BAA4

; ----------------------------------------------------------------------------
L_BAA7: lda     Global_FrameCounter             ; BAA7
        cmp     #$A0                            ; BAA9
        bcc     L_BACF                          ; BAAB
        and     #$0F                            ; BAAD
        bne     L_BACF                          ; BAAF
        jsr     Step_RNG                        ; BAB1
        and     #$1F                            ; BAB4
        eor     #$FF                            ; BAB6
        clc                                     ; BAB8
        adc     #$01                            ; BAB9
        clc                                     ; BABB
        adc     #$08                            ; BABC
        sta     $9D                             ; BABE
        lda     #$30                            ; BAC0
        sta     $9E                             ; BAC2
        inc     LoadedObj + Obj::Position_Y_Hi  ; BAC4
        lda     #$48                            ; BAC6
        sta     $A0                             ; BAC8
        jsr     Obj_SpawnChild_A0               ; BACA
        dec     LoadedObj + Obj::Position_Y_Hi  ; BACD
L_BACF: lda     #$1E                            ; BACF
        sta     $D4                             ; BAD1
        lda     #$20                            ; BAD3
        sta     $40                             ; BAD5
        lda     #$40                            ; BAD7
        sta     $41                             ; BAD9
        jsr     ScreenPos_Compute               ; BADB
        beq     L_BAE3                          ; BADE
        jmp     L_BB6B                          ; BAE0

; ----------------------------------------------------------------------------
L_BAE3: lda     $03FC                           ; BAE3
        and     #$01                            ; BAE6
        beq     L_BAFA                          ; BAE8
        lda     #$00                            ; BAEA
        jsr     L_BBC7                          ; BAEC
        beq     L_BAF4                          ; BAEF
        jmp     L_BB56                          ; BAF1

; ----------------------------------------------------------------------------
L_BAF4: lda     $45                             ; BAF4
        beq     L_BB01                          ; BAF6
        bne     L_BB10                          ; BAF8
L_BAFA: lda     #$40                            ; BAFA
        jsr     LD711                           ; BAFC
        bne     L_BB10                          ; BAFF
L_BB01: lda     LoadedObj + Obj::Scratch1       ; BB01
        bne     L_BB10                          ; BB03
        lda     #$20                            ; BB05
        sta     LoadedObj + Obj::Scratch1       ; BB07
        dec     $3F                             ; BB09
        lda     #$31                            ; BB0B
        jsr     Enqueue_Sound_Command           ; BB0D
L_BB10: lda     #$42                            ; BB10
        sta     $44                             ; BB12
        jsr     LD77D                           ; BB14
        lda     $3F                             ; BB17
        sec                                     ; BB19
        sbc     #$10                            ; BB1A
        sta     $3F                             ; BB1C
        lda     LoadedObj + Obj::Scratch1       ; BB1E
        bne     L_BB28                          ; BB20
        jsr     L_BB8D                          ; BB22
        jmp     L_BB2B                          ; BB25

; ----------------------------------------------------------------------------
L_BB28: jsr     L_BB92                          ; BB28
L_BB2B: jsr     LEDF5                           ; BB2B
        clc                                     ; BB2E
        lda     $3F                             ; BB2F
        adc     #$10                            ; BB31
        sta     $3F                             ; BB33
        lda     Global_FrameCounter             ; BB35
        cmp     #$A0                            ; BB37
        bcc     L_BB41                          ; BB39
        jsr     L_BB78                          ; BB3B
        jmp     L_BB44                          ; BB3E

; ----------------------------------------------------------------------------
L_BB41: jsr     L_BB7D                          ; BB41
L_BB44: jsr     LEDF5                           ; BB44
        clc                                     ; BB47
        lda     $3F                             ; BB48
        adc     #$10                            ; BB4A
        sta     $3F                             ; BB4C
        lda     #$BC                            ; BB4E
        sta     $45                             ; BB50
        jsr     LEDF5                           ; BB52
        rts                                     ; BB55

; ----------------------------------------------------------------------------
L_BB56: lda     $03FE                           ; BB56
        ora     #$01                            ; BB59
        sta     $03FE                           ; BB5B
        lda     #$4C                            ; BB5E
        jsr     Obj_SpawnChild                  ; BB60
        jsr     LCBA9                           ; BB63
        lda     #$32                            ; BB66
        jsr     Enqueue_Sound_Command           ; BB68
L_BB6B: lda     $C5                             ; BB6B
        and     #$FB                            ; BB6D
        sta     $C5                             ; BB6F
        lda     #$00                            ; BB71
        sta     $D4                             ; BB73
        jmp     LD823                           ; BB75

; ----------------------------------------------------------------------------
L_BB78: lda     #$B8                            ; BB78
        sta     $45                             ; BB7A
        rts                                     ; BB7C

; ----------------------------------------------------------------------------
L_BB7D: lda     Global_FrameCounter             ; BB7D
        and     #$04                            ; BB7F
        beq     L_BB88                          ; BB81
        lda     #$B8                            ; BB83
        jmp     L_BB8A                          ; BB85

; ----------------------------------------------------------------------------
L_BB88: lda     #$BA                            ; BB88
L_BB8A: sta     $45                             ; BB8A
        rts                                     ; BB8C

; ----------------------------------------------------------------------------
L_BB8D: lda     #$B6                            ; BB8D
        sta     $45                             ; BB8F
        rts                                     ; BB91

; ----------------------------------------------------------------------------
L_BB92: dec     LoadedObj + Obj::Scratch1       ; BB92
        lda     LoadedObj + Obj::Scratch1       ; BB94
        lsr     a                               ; BB96
        lsr     a                               ; BB97
        tax                                     ; BB98
        lda     L_BB9F,x                        ; BB99
        sta     $45                             ; BB9C
        rts                                     ; BB9E

; ----------------------------------------------------------------------------
L_BB9F: .byte   $B6,$B4,$B2,$B0,$B0,$B2,$B4,$B6 ; BB9F
.endmacro

