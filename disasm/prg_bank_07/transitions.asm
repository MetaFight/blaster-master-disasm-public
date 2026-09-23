.macro MAC_transitions_1_of_3
; ----------------------------------------------------------------------------
L_C465: lda     #$00                            ; C465
        sta     ObjectSlot_Offset               ; C467
        jsr     Obj_LoadFromSlot                ; C469
        lda     $B7                             ; C46C
L_C46E: cmp     #$01                            ; C46E
        bne     L_C475                          ; C470
        jmp     L_C4C8                          ; C472

; ----------------------------------------------------------------------------
L_C475: cmp     #$02                            ; C475
        bne     L_C47C                          ; C477
        jmp     L_C52A                          ; C479

; ----------------------------------------------------------------------------
L_C47C: cmp     #$03                            ; C47C
        bne     L_C483                          ; C47E
        jmp     L_C4BD                          ; C480

; ----------------------------------------------------------------------------
L_C483: cmp     #$04                            ; C483
        bne     L_C48A                          ; C485
        jmp     L_C55D                          ; C487

; ----------------------------------------------------------------------------
L_C48A: cmp     #$05                            ; C48A
        bne     L_C491                          ; C48C
        jmp     L_C4B4                          ; C48E

; ----------------------------------------------------------------------------
L_C491: cmp     #$06                            ; C491
        bne     L_C498                          ; C493
        jmp     L_C56D                          ; C495

; ----------------------------------------------------------------------------
L_C498: cmp     #$07                            ; C498
        bne     L_C49F                          ; C49A
        jmp     L_C586                          ; C49C

; ----------------------------------------------------------------------------
L_C49F: cmp     #$08                            ; C49F
        bne     L_C4A6                          ; C4A1
        jmp     Start_TitleScreen_WithTimeoutToDemo ; C4A3

; ----------------------------------------------------------------------------
L_C4A6: cmp     #$09                            ; C4A6
        bne     L_C4AD                          ; C4A8
        jmp     Start_TitleScreen_WithTimeoutToStory ; C4AA

; ----------------------------------------------------------------------------
L_C4AD: lda     #$00                            ; C4AD
        sta     $C5                             ; C4AF
        jmp     L_C35E                          ; C4B1

; ----------------------------------------------------------------------------
L_C4B4: lda     $C5                             ; C4B4
        ora     #$02                            ; C4B6
        sta     $C5                             ; C4B8
        jmp     L_C35E                          ; C4BA

; ----------------------------------------------------------------------------
L_C4BD: lda     $C5                             ; C4BD
        eor     #$01                            ; C4BF
        and     #$FD                            ; C4C1
        sta     $C5                             ; C4C3
        jmp     L_C35E                          ; C4C5

; ----------------------------------------------------------------------------
L_C4C8: lda     $14                             ; C4C8
        sta     $D7                             ; C4CA
        lda     #$00                            ; C4CC
        sta     LoadedObj + Obj::Velocity_X     ; C4CE
        sta     LoadedObj + Obj::Velocity_Y     ; C4D0
        jsr     Tunnel_FindAndFollowExit        ; C4D2
        lda     #$80                            ; C4D5
        sta     LoadedObj + Obj::Position_X_Lo  ; C4D7
        sta     LoadedObj + Obj::Position_Y_Lo  ; C4D9
        lda     $14                             ; C4DB
        and     #$08                            ; C4DD
        beq     L_C4ED                          ; C4DF
        lda     $C1                             ; C4E1
        beq     L_C4E9                          ; C4E3
        lda     #$03                            ; C4E5
        bne     L_C4EF                          ; C4E7
L_C4E9: lda     #$1B                            ; C4E9
        bne     L_C4EF                          ; C4EB
L_C4ED: lda     #$03                            ; C4ED
L_C4EF: sta     LoadedObj + Obj::Type           ; C4EF
        jsr     SetCheckpoint                   ; C4F1
        lda     $14                             ; C4F4
        cmp     $D7                             ; C4F6
        bne     L_C502                          ; C4F8
        lda     #$39                            ; C4FA
        jsr     Enqueue_Sound_Command           ; C4FC
        jmp     L_C527                          ; C4FF

; ----------------------------------------------------------------------------
L_C502: jsr     ClearEnemySlots                 ; C502
        jsr     Clear_ThingSpawnHistory         ; C505
        lda     $14                             ; C508
        cmp     #$08                            ; C50A
        bcc     L_C522                          ; C50C
        lda     $D7                             ; C50E
        cmp     #$08                            ; C510
        bcc     L_C522                          ; C512
        lda     #$01                            ; C514
        jsr     Enqueue_Sound_Command           ; C516
        jsr     L_F6A7                          ; C519
        jsr     L_CDBA                          ; C51C
        jmp     L_C527                          ; C51F

; ----------------------------------------------------------------------------
L_C522: lda     #$38                            ; C522
        jsr     Enqueue_Sound_Command           ; C524
L_C527: jmp     L_C35E                          ; C527

; ----------------------------------------------------------------------------
L_C52A: jsr     L_DEC2                          ; C52A
        lda     $06F3                           ; C52D
        bne     L_C55A                          ; C530
        lda     #$3D                            ; C532
        jsr     Enqueue_Sound_Command           ; C534
        dec     $DD                             ; C537
        bpl     L_C551                          ; C539
        dec     $037E                           ; C53B
        beq     L_C55A                          ; C53E
        jsr     L_F71C                          ; C540
        bne     L_C55A                          ; C543
        jsr     L_CDBA                          ; C545
        lda     $14                             ; C548
        ora     #$08                            ; C54A
        sta     $14                             ; C54C
        jmp     Start_GameScreen_FromTankSection ; C54E

; ----------------------------------------------------------------------------
L_C551: jsr     RestoreCheckpoint               ; C551
        jsr     L_CDBA                          ; C554
        jmp     L_C326                          ; C557

; ----------------------------------------------------------------------------
L_C55A: jmp     Start_TitleScreen_WithTimeoutToStory ; C55A

; ----------------------------------------------------------------------------
L_C55D: lda     #$00                            ; C55D
        jsr     BankSave_Switch                 ; C55F
        jsr     L_F833                          ; C562
        lda     #$18                            ; C565
        jsr     Enqueue_Sound_Command           ; C567
        jmp     L_C35E                          ; C56A

; ----------------------------------------------------------------------------
L_C56D: jsr     L_DEC2                          ; C56D
        lda     #$00                            ; C570
        sta     $03FB                           ; C572
        jsr     ClearEnemySlots                 ; C575
        lda     #$00                            ; C578
        jsr     BankSave_Switch                 ; C57A
        jsr     L_F273                          ; C57D
        jsr     L_F9D5                          ; C580
        jmp     L_C264                          ; C583

; ----------------------------------------------------------------------------
L_C586: lda     $14                             ; C586
        and     #$07                            ; C588
        asl     a                               ; C58A
        tax                                     ; C58B
        lda     L_C5A2,x                        ; C58C
        sta     LoadedObj + Obj::Position_X_Hi  ; C58F
        lda     LC5A3,x                         ; C591
        sta     LoadedObj + Obj::Position_Y_Hi  ; C594
        lda     #$80                            ; C596
        sta     LoadedObj + Obj::Position_X_Lo  ; C598
        sta     LoadedObj + Obj::Position_Y_Lo  ; C59A
        jsr     SetCheckpoint                   ; C59C
        jmp     L_C35E                          ; C59F

; ----------------------------------------------------------------------------
L_C5A2: .byte   $3D                             ; C5A2
LC5A3:  .byte   $5A,$09,$75,$0E,$06,$37,$5D,$18 ; C5A3
        .byte   $1B,$59,$09,$4A,$40,$59,$2A     ; C5AB
.endmacro

; Interrupted by 2 macros:
;   MAC_checkpoint
;   MAC__ungrouped_1_of_16

.macro MAC_transitions_2_of_3
; ----------------------------------------------------------------------------
; Tries to find a matching Exit Tunnel for an Original Tunnel at the Player's current position.
; 
; Input:
;   Current_Section
;   LoadedObj + Obj::Position_X_Hi
;   LoadedObj + Obj::Position_Y_Hi
; 
; Output:
;   on Exit found,
;     Current_Section = Exit Tunnel section
;     LoadedObj + Obj::Position_X_Hi = Exit Tunnel X
;     LoadedObj + Obj::Position_Y_Hi = Exit Tunnel Y
;   on Exit not found,
;     Input values left unmodified.
.proc Tunnel_FindAndFollowExit
        lda     L_DD76                          ; C78F
        sta     IndirectPtrLo                   ; C792
        lda     L_DD76+1                        ; C794
        sta     IndirectPtrHi                   ; C797
        ldy     #$00                            ; C799
        ldy     #$05                            ; C79B
; Copy the 3 LE sub-table pointers into $00-$05 for the tunnel-pair search.
_CopyPtrLoop:
        lda     (IndirectPtrLo),y               ; C79D
        sta     L0000,y                         ; C79F
        dey                                     ; C7A2
        bpl     _CopyPtrLoop                    ; C7A3
        iny                                     ; C7A5
        ldx     #$00                            ; C7A6
; Search the tunnel origin/destination pairs for an origin match.
_MatchLoop:
        lda     (L0000),y                       ; C7A8
        cmp     $14                             ; C7AA
        bne     _NextEntry                      ; C7AC
        lda     ($02),y                         ; C7AE
        cmp     LoadedObj + Obj::Position_X_Hi  ; C7B0
        bne     _NextEntry                      ; C7B2
        lda     ($04),y                         ; C7B4
        cmp     LoadedObj + Obj::Position_Y_Hi  ; C7B6
        beq     _Match                          ; C7B8
; Advance to next tunnel-pair entry.
_NextEntry:
        iny                                     ; C7BA
        bne     _MatchLoop                      ; C7BB
        rts                                     ; C7BD

; ----------------------------------------------------------------------------
; Callerless 9-byte block — the cut page-crossing continuation of Tunnel_FindAndFollowExit's
; tunnel-pair search. $01/$03/$05 are the high bytes of the three ZP sub-table pointers ($00-$05),
; so it advances all three arrays by one page and re-enters the scan loop. The live loop instead
; returns when the Y index wraps ($C7BD), capping the search at 256 entries — that return reads as
; a one-byte patch that severed this fall-through. Never executed.
_DEAD_NextPage:
        inc     $01                             ; C7BE
        inc     $03                             ; C7C0
        inc     $05                             ; C7C2
        jmp     _MatchLoop                      ; C7C4

; ----------------------------------------------------------------------------
; Make the Exit Tunnel values active.
_Match:
        tya                                     ; C7C7
        eor     #$01                            ; C7C8
; Each pair sits at offsets 2k/2k+1 within its table, so flipping bit 0 of the offset in Y selects
; the other end of the pair: the Exit Tunnel.
        tay                                     ; C7CA
        lda     (L0000),y                       ; C7CB
        sta     $14                             ; C7CD
        lda     ($02),y                         ; C7CF
        sta     LoadedObj + Obj::Position_X_Hi  ; C7D1
        lda     ($04),y                         ; C7D3
        sta     LoadedObj + Obj::Position_Y_Hi  ; C7D5
        rts                                     ; C7D7
.endproc

.endmacro

; Interrupted by 22 macros:
;   MAC_06_game_screen__hud
;   MAC_06_game_screen__object_system_1_of_8
;   MAC__ungrouped_2_of_16
;   MAC_06_game_screen__viewport_1_of_2
;   MAC_sound_1_of_2
;   MAC_screen_fade
;   MAC_timing_1_of_3
;   MAC_palette_1_of_2
;   MAC_06_game_screen__object_system_terrain
;   MAC_math_1_of_5
;   MAC__ungrouped_3_of_16
;   MAC_palette_2_of_2
;   MAC_06_game_screen__viewport_2_of_2
;   MAC__ungrouped_4_of_16
;   MAC_06_game_screen__object_system_2_of_8
;   MAC__ungrouped_5_of_16
;   MAC_06_game_screen__object_system_3_of_8
;   MAC__ungrouped_6_of_16
;   MAC_06_game_screen__object_system_4_of_8
;   MAC__ungrouped_7_of_16
;   MAC_level_rendering
;   MAC__ungrouped_8_of_16

.macro MAC_transitions_3_of_3
; ----------------------------------------------------------------------------
L_DD76: .addr   L_DD78                          ; DD76
L_DD78: .addr   L_DD7E                          ; DD78
        .addr   L_DDEA                          ; DD7A
        .addr   L_DE56                          ; DD7C
; ----------------------------------------------------------------------------
L_DD7E: .byte   $08,$09 ; DD7E  Origin=$08 Destination=$09
        .byte   $08,$0B ; DD80  Origin=$08 Destination=$0B
        .byte   $09,$0A ; DD82  Origin=$09 Destination=$0A
        .byte   $09,$0E ; DD84  Origin=$09 Destination=$0E
        .byte   $0A,$0F ; DD86  Origin=$0A Destination=$0F
        .byte   $0B,$0C ; DD88  Origin=$0B Destination=$0C
        .byte   $0C,$0D ; DD8A  Origin=$0C Destination=$0D
        .byte   $08,$00 ; DD8C  Origin=$08 Destination=$00
        .byte   $08,$00 ; DD8E  Origin=$08 Destination=$00
        .byte   $08,$00 ; DD90  Origin=$08 Destination=$00
        .byte   $08,$00 ; DD92  Origin=$08 Destination=$00
        .byte   $08,$00 ; DD94  Origin=$08 Destination=$00
        .byte   $09,$01 ; DD96  Origin=$09 Destination=$01
        .byte   $09,$01 ; DD98  Origin=$09 Destination=$01
        .byte   $09,$01 ; DD9A  Origin=$09 Destination=$01
        .byte   $09,$01 ; DD9C  Origin=$09 Destination=$01
        .byte   $0A,$02 ; DD9E  Origin=$0A Destination=$02
        .byte   $0A,$02 ; DDA0  Origin=$0A Destination=$02
        .byte   $0A,$02 ; DDA2  Origin=$0A Destination=$02
        .byte   $0A,$02 ; DDA4  Origin=$0A Destination=$02
        .byte   $0A,$02 ; DDA6  Origin=$0A Destination=$02
        .byte   $0B,$03 ; DDA8  Origin=$0B Destination=$03
        .byte   $0B,$03 ; DDAA  Origin=$0B Destination=$03
        .byte   $0B,$03 ; DDAC  Origin=$0B Destination=$03
        .byte   $0B,$03 ; DDAE  Origin=$0B Destination=$03
        .byte   $0C,$04 ; DDB0  Origin=$0C Destination=$04
        .byte   $0C,$04 ; DDB2  Origin=$0C Destination=$04
        .byte   $0C,$04 ; DDB4  Origin=$0C Destination=$04
        .byte   $0C,$04 ; DDB6  Origin=$0C Destination=$04
        .byte   $0C,$04 ; DDB8  Origin=$0C Destination=$04
        .byte   $0D,$05 ; DDBA  Origin=$0D Destination=$05
        .byte   $0D,$05 ; DDBC  Origin=$0D Destination=$05
        .byte   $0D,$05 ; DDBE  Origin=$0D Destination=$05
        .byte   $0D,$05 ; DDC0  Origin=$0D Destination=$05
        .byte   $0E,$06 ; DDC2  Origin=$0E Destination=$06
        .byte   $0E,$06 ; DDC4  Origin=$0E Destination=$06
        .byte   $0E,$06 ; DDC6  Origin=$0E Destination=$06
        .byte   $0E,$06 ; DDC8  Origin=$0E Destination=$06
        .byte   $0E,$06 ; DDCA  Origin=$0E Destination=$06
        .byte   $0E,$0E ; DDCC  Origin=$0E Destination=$0E
        .byte   $0E,$0E ; DDCE  Origin=$0E Destination=$0E
        .byte   $0E,$0E ; DDD0  Origin=$0E Destination=$0E
        .byte   $0E,$0E ; DDD2  Origin=$0E Destination=$0E
        .byte   $0E,$0E ; DDD4  Origin=$0E Destination=$0E
        .byte   $0E,$0E ; DDD6  Origin=$0E Destination=$0E
        .byte   $0E,$0E ; DDD8  Origin=$0E Destination=$0E
        .byte   $0E,$0E ; DDDA  Origin=$0E Destination=$0E
        .byte   $0E,$0E ; DDDC  Origin=$0E Destination=$0E
        .byte   $0E,$0E ; DDDE  Origin=$0E Destination=$0E
        .byte   $0F,$07 ; DDE0  Origin=$0F Destination=$07
        .byte   $0F,$07 ; DDE2  Origin=$0F Destination=$07
        .byte   $0F,$07 ; DDE4  Origin=$0F Destination=$07
        .byte   $0F,$07 ; DDE6  Origin=$0F Destination=$07
        .byte   $0F,$07 ; DDE8  Origin=$0F Destination=$07
L_DDEA: .byte   $09,$45 ; DDEA  Origin=$09 Destination=$45
        .byte   $09,$06 ; DDEC  Origin=$09 Destination=$06
        .byte   $16,$55 ; DDEE  Origin=$16 Destination=$55
        .byte   $1E,$05 ; DDF0  Origin=$1E Destination=$05
        .byte   $41,$39 ; DDF2  Origin=$41 Destination=$39
        .byte   $7A,$36 ; DDF4  Origin=$7A Destination=$36
        .byte   $6E,$05 ; DDF6  Origin=$6E Destination=$05
        .byte   $1A,$3D ; DDF8  Origin=$1A Destination=$3D
        .byte   $3E,$36 ; DDFA  Origin=$3E Destination=$36
        .byte   $7A,$39 ; DDFC  Origin=$7A Destination=$39
        .byte   $26,$06 ; DDFE  Origin=$26 Destination=$06
        .byte   $16,$29 ; DE00  Origin=$16 Destination=$29
        .byte   $7E,$06 ; DE02  Origin=$7E Destination=$06
        .byte   $46,$09 ; DE04  Origin=$46 Destination=$09
        .byte   $5A,$06 ; DE06  Origin=$5A Destination=$06
        .byte   $26,$59 ; DE08  Origin=$26 Destination=$59
        .byte   $3A,$19 ; DE0A  Origin=$3A Destination=$19
        .byte   $28,$16 ; DE0C  Origin=$28 Destination=$16
        .byte   $0E,$09 ; DE0E  Origin=$0E Destination=$09
        .byte   $16,$26 ; DE10  Origin=$16 Destination=$26
        .byte   $24,$59 ; DE12  Origin=$24 Destination=$59
        .byte   $04,$0A ; DE14  Origin=$04 Destination=$0A
        .byte   $7C,$0A ; DE16  Origin=$7C Destination=$0A
        .byte   $7C,$7A ; DE18  Origin=$7C Destination=$7A
        .byte   $1C,$3A ; DE1A  Origin=$1C Destination=$3A
        .byte   $28,$09 ; DE1C  Origin=$28 Destination=$09
        .byte   $14,$79 ; DE1E  Origin=$14 Destination=$79
        .byte   $5E,$39 ; DE20  Origin=$5E Destination=$39
        .byte   $54,$69 ; DE22  Origin=$54 Destination=$69
        .byte   $24,$19 ; DE24  Origin=$24 Destination=$19
        .byte   $14,$06 ; DE26  Origin=$14 Destination=$06
        .byte   $44,$4A ; DE28  Origin=$44 Destination=$4A
        .byte   $34,$0A ; DE2A  Origin=$34 Destination=$0A
        .byte   $7E,$56 ; DE2C  Origin=$7E Destination=$56
        .byte   $2E,$06 ; DE2E  Origin=$2E Destination=$06
        .byte   $06,$6A ; DE30  Origin=$06 Destination=$6A
        .byte   $3E,$3A ; DE32  Origin=$3E Destination=$3A
        .byte   $1E,$0E ; DE34  Origin=$1E Destination=$0E
        .byte   $7E,$46 ; DE36  Origin=$7E Destination=$46
        .byte   $4E,$04 ; DE38  Origin=$4E Destination=$04
        .byte   $2E,$34 ; DE3A  Origin=$2E Destination=$34
        .byte   $6E,$44 ; DE3C  Origin=$6E Destination=$44
        .byte   $7E,$04 ; DE3E  Origin=$7E Destination=$04
        .byte   $6E,$04 ; DE40  Origin=$6E Destination=$04
        .byte   $3E,$24 ; DE42  Origin=$3E Destination=$24
        .byte   $04,$3E ; DE44  Origin=$04 Destination=$3E
        .byte   $7E,$44 ; DE46  Origin=$7E Destination=$44
        .byte   $34,$3E ; DE48  Origin=$34 Destination=$3E
        .byte   $7E,$44 ; DE4A  Origin=$7E Destination=$44
        .byte   $7A,$16 ; DE4C  Origin=$7A Destination=$16
        .byte   $7A,$36 ; DE4E  Origin=$7A Destination=$36
        .byte   $7E,$16 ; DE50  Origin=$7E Destination=$16
        .byte   $0E,$7A ; DE52  Origin=$0E Destination=$7A
        .byte   $0E,$59 ; DE54  Origin=$0E Destination=$59
L_DE56: .byte   $7D,$4B ; DE56  Origin=$7D Destination=$4B
        .byte   $2D,$0B ; DE58  Origin=$2D Destination=$0B
        .byte   $5D,$07 ; DE5A  Origin=$5D Destination=$07
        .byte   $6D,$39 ; DE5C  Origin=$6D Destination=$39
        .byte   $17,$07 ; DE5E  Origin=$17 Destination=$07
        .byte   $1B,$0B ; DE60  Origin=$1B Destination=$0B
        .byte   $07,$7B ; DE62  Origin=$07 Destination=$7B
        .byte   $5D,$3A ; DE64  Origin=$5D Destination=$3A
        .byte   $55,$2A ; DE66  Origin=$55 Destination=$2A
        .byte   $69,$5A ; DE68  Origin=$69 Destination=$5A
        .byte   $5D,$2A ; DE6A  Origin=$5D Destination=$2A
        .byte   $7F,$46 ; DE6C  Origin=$7F Destination=$46
        .byte   $0B,$09 ; DE6E  Origin=$0B Destination=$09
        .byte   $2D,$79 ; DE70  Origin=$2D Destination=$79
        .byte   $3F,$19 ; DE72  Origin=$3F Destination=$19
        .byte   $1B,$49 ; DE74  Origin=$1B Destination=$49
        .byte   $2F,$3A ; DE76  Origin=$2F Destination=$3A
        .byte   $41,$09 ; DE78  Origin=$41 Destination=$09
        .byte   $5D,$06 ; DE7A  Origin=$5D Destination=$06
        .byte   $7D,$79 ; DE7C  Origin=$7D Destination=$79
        .byte   $77,$5A ; DE7E  Origin=$77 Destination=$5A
        .byte   $19,$19 ; DE80  Origin=$19 Destination=$19
        .byte   $27,$29 ; DE82  Origin=$27 Destination=$29
        .byte   $69,$19 ; DE84  Origin=$69 Destination=$19
        .byte   $71,$59 ; DE86  Origin=$71 Destination=$59
        .byte   $07,$06 ; DE88  Origin=$07 Destination=$06
        .byte   $7B,$6A ; DE8A  Origin=$7B Destination=$6A
        .byte   $29,$4A ; DE8C  Origin=$29 Destination=$4A
        .byte   $5B,$4A ; DE8E  Origin=$5B Destination=$4A
        .byte   $6B,$16 ; DE90  Origin=$6B Destination=$16
        .byte   $17,$29 ; DE92  Origin=$17 Destination=$29
        .byte   $5B,$49 ; DE94  Origin=$5B Destination=$49
        .byte   $6B,$39 ; DE96  Origin=$6B Destination=$39
        .byte   $75,$06 ; DE98  Origin=$75 Destination=$06
        .byte   $35,$16 ; DE9A  Origin=$35 Destination=$16
        .byte   $69,$2A ; DE9C  Origin=$69 Destination=$2A
        .byte   $69,$5A ; DE9E  Origin=$69 Destination=$5A
        .byte   $79,$6A ; DEA0  Origin=$79 Destination=$6A
        .byte   $69,$3E ; DEA2  Origin=$69 Destination=$3E
        .byte   $4B,$19 ; DEA4  Origin=$4B Destination=$19
        .byte   $19,$3D ; DEA6  Origin=$19 Destination=$3D
        .byte   $35,$09 ; DEA8  Origin=$35 Destination=$09
        .byte   $09,$7D ; DEAA  Origin=$09 Destination=$7D
        .byte   $4F,$09 ; DEAC  Origin=$4F Destination=$09
        .byte   $09,$79 ; DEAE  Origin=$09 Destination=$79
        .byte   $29,$77 ; DEB0  Origin=$29 Destination=$77
        .byte   $29,$57 ; DEB2  Origin=$29 Destination=$57
        .byte   $19,$59 ; DEB4  Origin=$19 Destination=$59
        .byte   $19,$69 ; DEB6  Origin=$19 Destination=$69
        .byte   $07,$49 ; DEB8  Origin=$07 Destination=$49
        .byte   $3F,$49 ; DEBA  Origin=$3F Destination=$49
        .byte   $4B,$7A ; DEBC  Origin=$4B Destination=$7A
        .byte   $6B,$69 ; DEBE  Origin=$6B Destination=$69
        .byte   $77,$29 ; DEC0  Origin=$77 Destination=$29
.endmacro

