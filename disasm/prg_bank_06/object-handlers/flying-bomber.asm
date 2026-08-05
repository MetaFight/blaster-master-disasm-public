.macro MAC_L_AC3C
; ----------------------------------------------------------------------------
L_AC3C: jmp     L_AC62                          ; AC3C

; ----------------------------------------------------------------------------
L_AC3F: lda     #$0B                            ; AC3F
        jsr     TankEnemy_Init                  ; AC41
        jsr     LoadedObj__Get_DeltaToPlayer_X  ; AC44
        and     #$80                            ; AC47
        sta     LoadedObj + Obj::Facing         ; AC49
        bpl     L_AC51                          ; AC4B
        lda     #$10                            ; AC4D
        bne     L_AC53                          ; AC4F
L_AC51: lda     #$F0                            ; AC51
L_AC53: sta     LoadedObj + Obj::Scratch2       ; AC53
        lda     #$00                            ; AC55
        sta     LoadedObj + Obj::Scratch0       ; AC57
        lda     #$00                            ; AC59
        sta     LoadedObj + Obj::Scratch1       ; AC5B
        ldy     #$28                            ; AC5D
        jsr     Obj_AngleToVelocity             ; AC5F
L_AC62: rts                                     ; AC62

; ----------------------------------------------------------------------------
L_AC63: jmp     L_ACD0                          ; AC63

; ----------------------------------------------------------------------------
L_AC66: lda     #$80                            ; AC66
        sta     LoadedObj_CollisionBox_HalfWidth; AC68
        lda     #$80                            ; AC6A
        sta     LoadedObj_CollisionBox_HalfHeight; AC6C
        lda     LoadedObj + Obj::Scratch1       ; AC6E
        beq     L_AC74                          ; AC70
        dec     LoadedObj + Obj::Scratch1       ; AC72
L_AC74: lda     LoadedObj + Obj::Scratch0       ; AC74
        beq     L_AC8E                          ; AC76
        jsr     LE07B                           ; AC78
        asl     a                               ; AC7B
        asl     a                               ; AC7C
        bne     L_AC83                          ; AC7D
        lda     #$00                            ; AC7F
        sta     LoadedObj + Obj::Scratch0       ; AC81
L_AC83: ldy     #$28                            ; AC83
        jsr     Obj_AngleToVelocity             ; AC85
        jsr     LE083                           ; AC88
        jmp     L_ACD0                          ; AC8B

; ----------------------------------------------------------------------------
L_AC8E: jsr     LoadedObj__Get_DeltaToPlayer_X                           ; AC8E
        bpl     L_AC98                          ; AC91
        eor     #$FF                            ; AC93
        clc                                     ; AC95
        adc     #$01                            ; AC96
L_AC98: cmp     #$01                            ; AC98
        bcs     L_ACC3                          ; AC9A
        lda     LoadedObj + Obj::Scratch1       ; AC9C
        bne     L_ACC3                          ; AC9E
        lda     #$38                            ; ACA0
        sta     $A0                             ; ACA2
        jsr     LDF46                           ; ACA4
        lda     LoadedObj + Obj::Scratch2       ; ACA7
        bpl     L_ACB0                          ; ACA9
        eor     #$FF                            ; ACAB
        clc                                     ; ACAD
        adc     #$01                            ; ACAE
L_ACB0: ldx     LoadedObj + Obj::Velocity_X     ; ACB0
        bmi     L_ACBB                          ; ACB2
        eor     #$FF                            ; ACB4
        clc                                     ; ACB6
        adc     #$01                            ; ACB7
        sta     LoadedObj + Obj::Scratch2       ; ACB9
L_ACBB: lda     #$40                            ; ACBB
        sta     LoadedObj + Obj::Scratch1       ; ACBD
        lda     #$01                            ; ACBF
        sta     LoadedObj + Obj::Scratch0       ; ACC1
L_ACC3: jsr     LE083                           ; ACC3
        bpl     L_ACD0                          ; ACC6
        jsr     LE0D8                           ; ACC8
        ldy     #$28                            ; ACCB
        jsr     Obj_AngleToVelocity             ; ACCD
L_ACD0: lda     #$10                            ; ACD0
        sta     $40                             ; ACD2
        lda     #$10                            ; ACD4
        sta     $41                             ; ACD6
        jsr     ScreenPos_Compute               ; ACD8
        beq     L_ACE0                          ; ACDB
        jmp     Obj_DespawnAndLog               ; ACDD

; ----------------------------------------------------------------------------
L_ACE0: lda     #$0B                            ; ACE0
        jsr     TankEnemy_DamageCheck           ; ACE2
        beq     L_ACEA                          ; ACE5
        jmp     TankEnemy_Defeat                ; ACE7

; ----------------------------------------------------------------------------
L_ACEA: lda     #$01                            ; ACEA
        jsr     LE04E                           ; ACEC
        ldx     #$2F                            ; ACEF
        lda     LoadedObj + Obj::Scratch0       ; ACF1
        beq     L_ACF6                          ; ACF3
        inx                                     ; ACF5
L_ACF6: txa                                     ; ACF6
        jmp     LF011                           ; ACF7

; ----------------------------------------------------------------------------
L_ACFA: rts                                     ; ACFA

.endmacro

