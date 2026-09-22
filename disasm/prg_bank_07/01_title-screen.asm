; Entered by falling through from the end of group "00_startup" (MAC_00_startup).
.macro MAC_01_title_screen_1_of_3
L_C29E: ldx     #$FF                            ; C29E
        txs                                     ; C2A0
        jsr     L_DEC2                          ; C2A1
        jsr     TitleScreen_Wrapper             ; C2A4
        beq     L_C2BC                          ; C2A7
        jsr     L_E309                          ; C2A9
L_C2AC: ldx     #$FF                            ; C2AC
        txs                                     ; C2AE
        lda     #$80                            ; C2AF
        sta     $06F3                           ; C2B1
        jsr     L_DEC2                          ; C2B4
        jsr     TitleScreen_Wrapper             ; C2B7
        bne     L_C2DB                          ; C2BA
L_C2BC: lda     #$08                            ; C2BC
        sta     $14                             ; C2BE
        jsr     L_CDBA                          ; C2C0
        jsr     L_F5D9                          ; C2C3
        lda     #$05                            ; C2C6
        sta     $037E                           ; C2C8
        lda     #$00                            ; C2CB
        sta     $03FE                           ; C2CD
        sta     $03FB                           ; C2D0
        sta     $03FC                           ; C2D3
        sta     $99                             ; C2D6
        jmp     L_C2FB                          ; C2D8

.endmacro

; Interrupted by 62 macros:
;   MAC_03_demo_screen_1_of_2
;   MAC_06_game_screen__game_loop
;   MAC_transitions_1_of_3
;   MAC__ungrouped_1_of_17
;   MAC_transitions_2_of_3
;   MAC_06_game_screen__hud
;   MAC_06_game_screen__object_system_1_of_8
;   MAC__ungrouped_2_of_17
;   MAC_06_game_screen__viewport_1_of_2
;   MAC_sound_1_of_2
;   MAC_screen_fade
;   MAC_timing_1_of_3
;   MAC__ungrouped_3_of_17
;   MAC_06_game_screen__object_system_terrain
;   MAC_math_1_of_5
;   MAC__ungrouped_4_of_17
;   MAC_06_game_screen__viewport_2_of_2
;   MAC__ungrouped_5_of_17
;   MAC_06_game_screen__object_system_2_of_8
;   MAC__ungrouped_6_of_17
;   MAC_06_game_screen__object_system_3_of_8
;   MAC__ungrouped_7_of_17
;   MAC_06_game_screen__object_system_4_of_8
;   MAC__ungrouped_8_of_17
;   MAC_level_rendering
;   MAC__ungrouped_9_of_17
;   MAC_transitions_3_of_3
;   MAC_sound_2_of_2
;   MAC__ungrouped_10_of_17
;   MAC_06_game_screen__object_system_5_of_8
;   MAC__ungrouped_11_of_17
;   MAC_06_game_screen__object_system_6_of_8
;   MAC_math_2_of_5
;   MAC_06_game_screen__object_system_7_of_8
;   MAC_math_3_of_5
;   MAC_03_demo_screen_2_of_2
;   MAC_02_story_sequence
;   MAC_mmc1
;   MAC_hardware_1_of_7
;   MAC__ungrouped_12_of_17
;   MAC_hardware_2_of_7
;   MAC__ungrouped_13_of_17
;   MAC_hardware_3_of_7
;   MAC__ungrouped_14_of_17
;   MAC_hardware_4_of_7
;   MAC_input
;   MAC_timing_2_of_3
;   MAC_drawing_background
;   MAC_hardware_5_of_7
;   MAC__ungrouped_15_of_17
;   MAC_math_4_of_5
;   MAC_06_game_screen__object_system_8_of_8
;   MAC_math_5_of_5
;   MAC__ungrouped_16_of_17
;   MAC_rng
;   MAC_timing_3_of_3
;   MAC_hardware_6_of_7
;   MAC_drawing_sprites
;   MAC__ungrouped_17_of_17
;   MAC_drawing_metasprites
;   MAC_hardware_7_of_7
;   MAC_10_ending_1_of_2

.macro MAC_01_title_screen_2_of_3
; ----------------------------------------------------------------------------
; Wraps the TitleScreen_GameLoop and simply relays its return value.
; 
; On the surface, this seems like a complete waste of code, but, given that the (dead) Stage
; Select screen code sits immediately below, it's reasonable to assume that, at one point, this
; routine didn't simply return after calling TitleScreen_GameLoop.
; 
; Originally, it would have displayed the Stage Select screen after the Title Screen timed out (or
; the player pressed start).
; 
; It looks like the devs cut out the stage select functionality by adding a single RTS instruction
; (presumably once debugging and demo builds were no longer needed).
; 
; Returns:
;   A = $00 if START was pressed.
;   A = $FF if the Title Screen timed out.
.proc TitleScreen_Wrapper
        jsr     _TitleScreen_GameLoop           ; F45D
        bne     _Return                         ; F460
        lda     #$00                            ; F462
_Return:
        rts                                     ; F464

; ----------------------------------------------------------------------------
; DEAD CODE — the full stage-select main loop: renders the 'SELECT START AREA / AND / PRESS START'
; strings, does D-pad navigation, and sets CurrentArea. Enabled only by Game Genie XTVYGGAV, which
; patches the guarding return at $F464 into a no-op.
.proc _DEAD_StageSelectScreen_GameLoop
        lda     #$00                            ; F465
        sta     $01                             ; F467
        lda     L_FFF3                          ; F469
        bpl     _SetArea                        ; F46C
        jsr     L_EA03                          ; F46E
        lda     #$07                            ; F471
        sta     $D5                             ; F473
        sta     $D4                             ; F475
        lda     _Resource_String_SelectStartAreaPtr ; F477
        sta     ::IndirectPtrLo                 ; F47A
        lda     _Resource_String_SelectStartAreaPtr+1 ; F47C
        sta     ::IndirectPtrHi                 ; F47F
        ldy     #$00                            ; F481
        lda     #$08                            ; F483
        sta     $C7                             ; F485
        lda     #$0A                            ; F487
        sta     $C8                             ; F489
        jsr     L_E823                          ; F48B
        lda     #$08                            ; F48E
        sta     $C7                             ; F490
        lda     #$0C                            ; F492
        sta     $C8                             ; F494
        jsr     L_E823                          ; F496
        lda     #$08                            ; F499
        sta     $C7                             ; F49B
        lda     #$0E                            ; F49D
        sta     $C8                             ; F49F
        jsr     L_E823                          ; F4A1
        jsr     L_F1CA                          ; F4A4
        jsr     _InitPalette                    ; F4A7
        jsr     L_CE0F                          ; F4AA
; Per-frame wait+input loop: WaitNMI ($E936), $CDD0, HandleInput ($F4C5); loop while the
; frame/animation counter $B6 < 9.
_GameLoop:
        jsr     WaitNMI                         ; F4AD
        jsr     ScreenFade_Step                 ; F4B0
        jsr     _HandleInput                    ; F4B3
        lda     $B6                             ; F4B6
        cmp     #$09                            ; F4B8
        bcc     _GameLoop                       ; F4BA
; DEAD CODE — ($01 EOR $08) AND $0F → CurrentArea ($14); fallthrough from dead input loop
_SetArea:
        lda     $01                             ; F4BC
        eor     #$08                            ; F4BE
        and     #$0F                            ; F4C0
        sta     $14                             ; F4C2
        rts                                     ; F4C4

; ----------------------------------------------------------------------------
; DEAD CODE — draw stage-number sprite at (X=$70,Y=$97); D-pad UP/DOWN change $01 [0–$10]; START
; fires $CE27
_HandleInput:
        lda     #$70                            ; F4C5
        sta     $3E                             ; F4C7
        lda     #$97                            ; F4C9
        sta     $3F                             ; F4CB
        lda     ::L0000                         ; F4CD
        sta     $44                             ; F4CF
        lda     $01                             ; F4D1
        clc                                     ; F4D3
        adc     #$01                            ; F4D4
        jsr     L_F14E                          ; F4D6
        jsr     L_EC73                          ; F4D9
        lda     $B6                             ; F4DC
        bne     _ReadDpad                       ; F4DE
        lda     $F5                             ; F4E0
        bit     LE6E5                           ; F4E2
        beq     _ReadDpad                       ; F4E5
        jsr     L_CE27                          ; F4E7
; After the START check: BIT the held-input bits ($F5) — D-pad DOWN → IncArea, UP → DecArea,
; neither → RTS.
_ReadDpad:
        lda     $F5                             ; F4EA
        bit     LE6E4                           ; F4EC
        bne     _IncArea                        ; F4EF
        bit     LE6E3                           ; F4F1
        bne     _DecArea                        ; F4F4
        rts                                     ; F4F6

; ----------------------------------------------------------------------------
; D-pad DOWN: stage-select index $01 += 1, clamped below $10 (16 areas).
_IncArea:
        lda     $01                             ; F4F7
        clc                                     ; F4F9
        adc     #$01                            ; F4FA
        cmp     #$10                            ; F4FC
        bcs     _Done                           ; F4FE
        sta     $01                             ; F500
        rts                                     ; F502

; ----------------------------------------------------------------------------
; D-pad UP: stage-select index $01 −= 1, floored at 0.
_DecArea:
        lda     $01                             ; F503
        beq     _Done                           ; F505
        dec     $01                             ; F507
; RTS — no D-pad change this frame.
_Done:
        rts                                     ; F509

; ----------------------------------------------------------------------------
; DEAD CODE — screen off via $E6FA; blank $0650 via $F9CA; load 4-color palette from $F51F to
; $0650 and $0660
.proc _InitPalette
        jsr     L_E6FA                          ; F50A
        jsr     Background_BlackoutPalettes     ; F50D
        ldx     #$03                            ; F510
; Copy the 4-byte stage-select palette $F51F → BG $0650 and sprite $0660 (X=$03..0).
_CopyLoop:
        lda     _Resource_BgPalette,x           ; F512
        sta     $0650,x                         ; F515
        sta     $0660,x                         ; F518
        dex                                     ; F51B
        bpl     _CopyLoop                       ; F51C
        rts                                     ; F51E
.endproc

; ----------------------------------------------------------------------------
; DEAD DATA — 4-byte BG palette {$0F,$30,$0F,$0F} for stage-select screen
_Resource_BgPalette:
        .byte   $0F,$30,$0F,$0F                 ; F51F
; ----------------------------------------------------------------------------
; DEAD DATA — LE pointer {$25,$F5} = $F525; read by DEAD_StageSelectScreen_GameLoop to prime
; IndirectPtr
_Resource_String_SelectStartAreaPtr:
        .addr   _Resource_String_SelectStartArea ; F523
; ----------------------------------------------------------------------------
; DEAD DATA — 'SELECT START AREA\0' (18 bytes ASCII); rendered by $E823 via IndirectPtr
_Resource_String_SelectStartArea:
        .byte   "SELECT START AREA"             ; F525
                                                ; F52D
                                                ; F535
        .byte   $00                             ; F536
; DEAD DATA — 'AND\0' (4 bytes ASCII)
_Resource_String_And:
        .byte   "AND"                           ; F537
        .byte   $00                             ; F53A
; DEAD DATA — 'PRESS START\0' (12 bytes ASCII)
_Resource_String_PressStart:
        .byte   "PRESS START"                   ; F53B
                                                ; F543
        .byte   $00                             ; F546
.endproc
; ----------------------------------------------------------------------------
; Draws the Title Screen and implements a basic game loop to handle player input.
; Exits when the player presses START or after a timeout.
; 
; Has two phases:
;   First, display title graphics with an animated palette,
;   then, display tile graphics with a static palette.
; 
; Returns:
;   A = $00 if START was pressed.
;   A = $FF if the Title Screen timed out.
; 
; Local variables:
;   PhaseTimeout = Frames remaining in current Phase.
;   Phase = 1 (Flashing title)
;   Phase = 0 (Static title)
.proc _TitleScreen_GameLoop
        lda     #$80                            ; F547
; Set PhaseTimeout to #$80 frames.
        sta     $01                             ; F549
        lda     #$01                            ; F54B
; Set Phase to #$01 (Flashing title).
        sta     $02                             ; F54D
        lda     #$07                            ; F54F
        sta     $D5                             ; F551
; Switch the CHR Bank and draw the title screen
        jsr     _SetBackgroundPalettes          ; F553
        lda     #$02                            ; F556
        jsr     L_E9A6                          ; F558
        jsr     L_CE2E                          ; F55B
_GameLoop:
; Wait for the NMI to finish.
        jsr     WaitNMI                         ; F55E
        lda     $F5                             ; F561
        and     #$10                            ; F563
; If START was pressed, skip to HandleStartPress.
        bne     _HandleStartPress               ; F565
        lda     $01                             ; F567
; If PhaseTimeout != 0, skip to AdvancePhase.
        bne     _AdvancePhase                   ; F569
        dec     $02                             ; F56B
; Decrements the current phase's PhaseTimeout, then picks either an animated bg palette or a
; static one depending on the current phase.
_AdvancePhase:
        dec     $01                             ; F56D
        lda     $02                             ; F56F
        beq     _SelectFixedPaletteColor        ; F571
        jsr     Step_RNG                        ; F573
        jmp     _UpdatePalette                  ; F576

; ----------------------------------------------------------------------------
_SelectFixedPaletteColor:
        lda     #$12                            ; F579
_UpdatePalette:
; Store the selected palette color
        sta     ::BG_Palette_0 + BgPalette::Colour3 ; F57B
        lda     $01                             ; F57D
        ora     $02                             ; F57F
; If both either PhaseTimeout or Phase != 0, do another iteration of GameLoop.
        bne     _GameLoop                       ; F581
; Otherwise, do a synchronous FadeOut and return #$FF (timed out) when it's done.
        jsr     L_CE3C                          ; F583
        lda     #$FF                            ; F586
        rts                                     ; F588

; ----------------------------------------------------------------------------
; Do a synchronous FadeOut and return #$00 (pressed START).
_HandleStartPress:
        jsr     L_CE3C                          ; F589
        lda     #$00                            ; F58C
        rts                                     ; F58E

; ----------------------------------------------------------------------------
; Load the BG palettes from TitleScreen_Palette.
.proc _SetBackgroundPalettes
; Blackout the background palettes,
        jsr     Background_BlackoutPalettes     ; F58F
        ldx     #$0F                            ; F592
; then copy the four 4-byte background palettes.
_CopyLoop:
        lda     _TitleScreen_Palette + BgPalette::Colour0,x ; F594
        sta     $0650,x                         ; F597
        dex                                     ; F59A
        bpl     _CopyLoop                       ; F59B
        rts                                     ; F59D

; ----------------------------------------------------------------------------
; 16-byte palette for the title screen.
_TitleScreen_Palette:
        .byte   $0F,$3C,$2C,$1C ; F59E  Colour0=$0F Colour1=$3C Colour2=$2C Colour3=$1C
        .byte   $0F,$30,$10,$00 ; F5A2  Colour0=$0F Colour1=$30 Colour2=$10 Colour3=$00
        .byte   $0F,$26,$27,$0F ; F5A6  Colour0=$0F Colour1=$26 Colour2=$27 Colour3=$0F
        .byte   $0F,$29,$10,$0F ; F5AA  Colour0=$0F Colour1=$29 Colour2=$10 Colour3=$0F
.endproc
.endproc
.endproc
; ----------------------------------------------------------------------------
L_F5AE: lda     L_F5CF                          ; F5AE
        sta     IndirectPtrLo                   ; F5B1
        lda     L_F5CF+1                        ; F5B3
        sta     IndirectPtrHi                   ; F5B6
        ldy     #$00                            ; F5B8
        lda     #$02                            ; F5BA
        sta     $C7                             ; F5BC
        lda     #$1B                            ; F5BE
        sta     $C8                             ; F5C0
        jsr     L_E823                          ; F5C2
        lda     $03D9                           ; F5C5
        jsr     L_E840                          ; F5C8
        jsr     L_F1CA                          ; F5CB
        rts                                     ; F5CE

; ----------------------------------------------------------------------------
L_F5CF: .addr   L_F5D1                          ; F5CF
; ----------------------------------------------------------------------------
L_F5D1: .byte   "CREDIT "                       ; F5D1
        .byte   $00                             ; F5D8
.endmacro

; Interrupted by 5 macros:
;   MAC_04_intro_screen
;   MAC_08_area_entry_screen
;   MAC_09_continue_screen
;   MAC_05_lives_left_screen
;   MAC_07_pause_screen

.macro MAC_01_title_screen_3_of_3
; ----------------------------------------------------------------------------
; Fill the Palette_Shadow buffer (32 bytes) with $0F (black).
.proc Background_BlackoutPalettes
        lda     #$0F                            ; F9CA
        ldx     #$1F                            ; F9CC
_Loop:
        sta     $0650,x                         ; F9CE
        dex                                     ; F9D1
        bpl     _Loop                           ; F9D2
        rts                                     ; F9D4
.endproc

.endmacro

