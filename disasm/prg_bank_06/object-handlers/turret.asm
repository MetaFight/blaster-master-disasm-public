.macro MAC_object_handlers__turret
; ----------------------------------------------------------------------------
; ObjType $66: Ceiling Turret - Init.
.proc ObjHandler_Tank_66_Turret_Init
        jmp     _Done                           ; AA5A

; ----------------------------------------------------------------------------
_Body:
        lda     #$08                            ; AA5D
; Init via TankEnemy_Init with descriptor #$08.
        jsr     TankEnemy_Init                  ; AA5F
        lda     #$02                            ; AA62
; Set Ballistic Speed (Scratch2) to #$02 (0.125).
        sta     LoadedObj + Obj::Scratch2       ; AA64
        jsr     Step_RNG                        ; AA66
; Set PhaseCounter (Scratch1) to a random initial value.
        sta     LoadedObj + Obj::Scratch1       ; AA69
_Done:
        rts                                     ; AA6B
.endproc

; ----------------------------------------------------------------------------
; ObjType $67: Ceiling Turret - Main.
.proc ObjHandler_Tank_67_Turret_Main
        jmp     _Bookkeeping                    ; AA6C

; ----------------------------------------------------------------------------
_Body:
; Set the collision box.
        lda     #$80                            ; AA6F
        sta     $42                             ; AA71
        lda     #$80                            ; AA73
        sta     $43                             ; AA75
; Increment the PhaseCounter.
        inc     LoadedObj + Obj::Scratch1       ; AA77
        lda     LoadedObj + Obj::Scratch1       ; AA79
        and     #$01                            ; AA7B
; On odd frames, skip straight to bookkeeping tail.
        bne     _Bookkeeping                    ; AA7D
        lda     LoadedObj + Obj::Scratch1       ; AA7F
; If bit7 of PhaseCounter (Scratch1) is not set, skip to the SpinUp handler.
        bpl     _SpinUp                         ; AA81
; If SpinSpeed (Scratch2) <= #$01, skip to bookkeeping.
; otherwise, decrement and skip to FireCheck.
_SpinDown:
        ldx     LoadedObj + Obj::Scratch2       ; AA83
        cpx     #$02                            ; AA85
        bcc     _Bookkeeping                    ; AA87
        dec     LoadedObj + Obj::Scratch2       ; AA89
        jmp     _FireCheck                      ; AA8B

; ----------------------------------------------------------------------------
; If SpinSpeed (Scratch2) >= #$20, skip to bookkeeping.
; otherwise, increment and fall through to FireCheck.
_SpinUp:
        ldx     LoadedObj + Obj::Scratch2       ; AA8E
        cpx     #$20                            ; AA90
        bcs     _Bookkeeping                    ; AA92
        inc     LoadedObj + Obj::Scratch2       ; AA94
_FireCheck:
        lda     LoadedObj + Obj::Scratch2       ; AA96
        cmp     #$04                            ; AA98
; If SpinSpeed (Scratch2) <= #$04, skip to bookkeeping.
        bcc     _Bookkeeping                    ; AA9A
        lda     LoadedObj + Obj::Scratch1       ; AA9C
        and     #$07                            ; AA9E
; If lower 3 bits of PhaseCounter (Scratch1) not clear, skip to bookkeeping.
        bne     _Bookkeeping                    ; AAA0
; Otherwise, try to spawn a ballistic projectile.
        jsr     Obj_TryCloneIntoEmptySlot       ; AAA2
; On failure, skip to bookkeeping.
        beq     _Bookkeeping                    ; AAA5
        jsr     Step_RNG                        ; AAA7
        and     #$40                            ; AAAA
; On success, (X = BallisticSlot) pick shot direction randomly.
        bne     _DirAlt                         ; AAAC
        lda     #$80                            ; AAAE
        bne     _FireShot                       ; AAB0
_DirAlt:
        lda     #$00                            ; AAB2
; Store selected shot direction into BallisticSlot.Facing,
_FireShot:
        sta     ObjectTable + Obj::Facing,x     ; AAB4
        lda     LoadedObj + Obj::Scratch2       ; AAB7
        asl     a                               ; AAB9
        clc                                     ; AABA
        adc     #$01                            ; AABB
; Set BallisticSlot.Scratch1 to (SpinSpeed * 2 + 1)
        sta     ObjectTable + Obj::Scratch1,x   ; AABD
        lda     LoadedObj + Obj::Position_Y_Lo  ; AAC0
        clc                                     ; AAC2
        adc     #$40                            ; AAC3
        sta     ObjectTable + Obj::Position_Y_Lo,x ; AAC5
        lda     LoadedObj + Obj::Position_Y_Hi  ; AAC8
        adc     #$00                            ; AACA
; Set Ballistic y position relative to parent.
        sta     ObjectTable + Obj::Position_Y_Hi,x ; AACC
        lda     #$46                            ; AACF
        sta     ObjectTable + Obj::Type,x       ; AAD1
; Do on-screen test.  If on-screen, handle damage path.  Otherwise, tombstone.
_Bookkeeping:
        lda     #$10                            ; AAD4
        sta     $40                             ; AAD6
        lda     #$10                            ; AAD8
        sta     $41                             ; AADA
        jsr     ScreenPos_Compute               ; AADC
        beq     _Damage                         ; AADF
        jmp     Obj_Tombstone                   ; AAE1

; ----------------------------------------------------------------------------
; Used shared damage handler with descriptor #$08.  If non-fatal, skip to renderer, otherwise skip
; to shared defeat handler.
_Damage:
        lda     #$08                            ; AAE4
        jsr     TankEnemy_DamageCheck           ; AAE6
        beq     _Render                         ; AAE9
        jmp     TankEnemy_DefeatTrackedEnemy    ; AAEB

; ----------------------------------------------------------------------------
; Update Facing based on SpinSpeed (Scratch2)
_Render:
        jsr     Obj_TurnHeading                 ; AAEE
        lsr     a                               ; AAF1
        lsr     a                               ; AAF2
        lsr     a                               ; AAF3
        lsr     a                               ; AAF4
; Convert the heading to a lookup table index,
        and     #$0E                            ; AAF5
        tax                                     ; AAF7
        lda     TankTurret_SpriteByAngle + TurretRenderParams::OamAttributes,x ; AAF8
; set the OAM attributes,
        sta     $44                             ; AAFB
        lda     TankTurret_SpriteByAngle + TurretRenderParams::MetaSpriteId,x ; AAFD
; and fetch the MetaSprite Id before calling the shared MetaSprite_Render.
        jmp     MetaSprite_Render               ; AB00
.endproc

; ----------------------------------------------------------------------------
; Turret render table.  8 [metaspriteId, attr] pairs.
TankTurret_SpriteByAngle:
        .byte   $72,$81 ; AB03  MetaSpriteId=$72 OamAttributes=$81
        .byte   $72,$81 ; AB05  MetaSpriteId=$72 OamAttributes=$81
        .byte   $72,$81 ; AB07  MetaSpriteId=$72 OamAttributes=$81
        .byte   $72,$81 ; AB09  MetaSpriteId=$72 OamAttributes=$81
        .byte   $73,$81 ; AB0B  MetaSpriteId=$73 OamAttributes=$81
        .byte   $73,$81 ; AB0D  MetaSpriteId=$73 OamAttributes=$81
        .byte   $73,$81 ; AB0F  MetaSpriteId=$73 OamAttributes=$81
        .byte   $73,$81 ; AB11  MetaSpriteId=$73 OamAttributes=$81
.endmacro

