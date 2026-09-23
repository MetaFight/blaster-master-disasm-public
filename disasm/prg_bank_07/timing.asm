.macro MAC_timing_1_of_3
; ----------------------------------------------------------------------------
L_CE4A: pha                                     ; CE4A
        jsr     WaitNMI                         ; CE4B
        pla                                     ; CE4E
        sec                                     ; CE4F
        sbc     #$01                            ; CE50
        bne     L_CE4A                          ; CE52
        rts                                     ; CE54

.endmacro

; Interrupted by 37 macros:
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
;   MAC_transitions_3_of_3
;   MAC_sound_2_of_2
;   MAC__ungrouped_9_of_16
;   MAC_06_game_screen__object_system_5_of_8
;   MAC__ungrouped_10_of_16
;   MAC_06_game_screen__object_system_6_of_8
;   MAC_math_2_of_5
;   MAC_06_game_screen__object_system_7_of_8
;   MAC_math_3_of_5
;   MAC_03_demo_screen_2_of_2
;   MAC_02_story_sequence
;   MAC_mmc1
;   MAC_hardware_1_of_7
;   MAC__ungrouped_11_of_16
;   MAC_hardware_2_of_7
;   MAC__ungrouped_12_of_16
;   MAC_hardware_3_of_7
;   MAC__ungrouped_13_of_16
;   MAC_drawing_background_1_of_2
;   MAC_drawing_text
;   MAC_hardware_4_of_7
;   MAC_input

.macro MAC_timing_2_of_3
; ----------------------------------------------------------------------------
; Sets Nmi_SignalFlags bit 7 then spin-waits until NMI handler clears it.  This is the mechanism
; that paces the game loop at 60Hz.
.proc WaitNMI
        lda     #$80                            ; E936
        sta     Nmi_SignalFlags                 ; E938
_Loop:
        bit     Nmi_SignalFlags                 ; E93A
        bmi     _Loop                           ; E93C
        rts                                     ; E93E
.endproc

; ----------------------------------------------------------------------------
L_E93F: lda     $FF                             ; E93F
        ora     #$80                            ; E941
        sta     $FF                             ; E943
        sta     $2000                           ; E945
        rts                                     ; E948

; ----------------------------------------------------------------------------
L_E949: lda     $FF                             ; E949
        and     #$7F                            ; E94B
        sta     $FF                             ; E94D
        sta     $2000                           ; E94F
        rts                                     ; E952

.endmacro

; Interrupted by 8 macros:
;   MAC_drawing_background_2_of_2
;   MAC_hardware_5_of_7
;   MAC__ungrouped_14_of_16
;   MAC_math_4_of_5
;   MAC_06_game_screen__object_system_8_of_8
;   MAC_math_5_of_5
;   MAC__ungrouped_15_of_16
;   MAC_rng

.macro MAC_timing_3_of_3
; ----------------------------------------------------------------------------
; Hardware NMI (VBlank) handler.
; 
; Saves the registers.
; If a bank switch is in progress (Nmi_SignalFlags bit 6) records a deferred NMI and returns.
; Otherwise, runs the frame-update work (Nmi_DoWork).
; Restores the registers before returning.
.proc NMI
        pha                                     ; EB7E
        txa                                     ; EB7F
        pha                                     ; EB80
        tya                                     ; EB81
        pha                                     ; EB82
        bit     Nmi_SignalFlags                 ; EB83
        bvs     _Deferred                       ; EB85
        jsr     L_EB98                          ; EB87
        jmp     _Restore                        ; EB8A

; ----------------------------------------------------------------------------
; Nmi_SignalFlags bit 6 was set (busy during bank switch); record deferred NMI by writing $20 (bit
; 5) to Nmi_SignalFlags and RTI.  This signals BankSave_Switch to call Nmi_DoWork on return
_Deferred:
        lda     #$20                            ; EB8D
        sta     Nmi_SignalFlags                 ; EB8F
; Pop Y/X/A; RTI
_Restore:
        pla                                     ; EB91
        tay                                     ; EB92
        pla                                     ; EB93
        tax                                     ; EB94
        pla                                     ; EB95
        rti                                     ; EB96
.endproc

; ----------------------------------------------------------------------------
L_EB97: rti                                     ; EB97

; ----------------------------------------------------------------------------
L_EB98: bit     Nmi_SignalFlags                 ; EB98
        bmi     L_EB9F                          ; EB9A
        jmp     L_EC51                          ; EB9C

; ----------------------------------------------------------------------------
L_EB9F: lda     #$00                            ; EB9F
        sta     Nmi_SignalFlags                 ; EBA1
        sta     $2001                           ; EBA3
        jsr     OAM_Copy_To_PPU                 ; EBA6
        lda     $19                             ; EBA9
        beq     L_EBB0                          ; EBAB
        jmp     L_EC34                          ; EBAD

; ----------------------------------------------------------------------------
L_EBB0: lda     BG_Palette_0 + BgPalette::Colour0 ; EBB0
        sta     BG_Palette_1 + BgPalette::Colour0 ; EBB2
        sta     BG_Palette_2 + BgPalette::Colour0 ; EBB4
        sta     BG_Palette_3 + BgPalette::Colour0 ; EBB6
        sta     Sprite_Palette_0 + SpritePalette::Transparency ; EBB8
        sta     Sprite_Palette_1 + SpritePalette::Transparency ; EBBA
        sta     Sprite_Palette_2 + SpritePalette::Transparency ; EBBC
        sta     Sprite_Palette_3 + SpritePalette::Transparency ; EBBE
        jsr     PPU_SetAddressIncrementTo_1     ; EBC0
        lda     $2002                           ; EBC3
        lda     #$3F                            ; EBC6
        sta     $2006                           ; EBC8
        lda     #$00                            ; EBCB
        sta     $2006                           ; EBCD
        ldx     #$00                            ; EBD0
L_EBD2: lda     Background_Palettes + BgPalette::Colour0,x ; EBD2
        and     #$3F                            ; EBD4
        tay                                     ; EBD6
        lda     L_EBF4,y                        ; EBD7
        sta     $2007                           ; EBDA
        inx                                     ; EBDD
        cpx     #$20                            ; EBDE
        bne     L_EBD2                          ; EBE0
        lda     #$3F                            ; EBE2
        sta     $2006                           ; EBE4
        lda     #$00                            ; EBE7
        sta     $2006                           ; EBE9
        sta     $2006                           ; EBEC
        sta     $2006                           ; EBEF
        beq     L_EC34                          ; EBF2
; #region _Nmi_DoWork__PaletteSanitizeTable — 64 bytes
L_EBF4: .byte   $00,$01,$02,$03,$04,$05,$06,$07 ; EBF4
        .byte   $08,$09,$0A,$0B,$0C,$0F,$0F,$0F ; EBFC
        .byte   $10,$11,$12,$13,$14,$15,$16,$17 ; EC04
        .byte   $18,$19,$1A,$1B,$1C,$0F,$0F,$0F ; EC0C
        .byte   $20,$21,$22,$23,$24,$25,$26,$27 ; EC14
        .byte   $28,$29,$2A,$2B,$2C,$0F,$0F,$0F ; EC1C
        .byte   $30,$31,$32,$33,$34,$35,$36,$37 ; EC24
        .byte   $38,$39,$3A,$3B,$3C,$3D,$3E,$0F ; EC2C
; #endregion

; ----------------------------------------------------------------------------
L_EC34: jsr     L_F1CA                          ; EC34
        jsr     L_E6BF                          ; EC37
        lda     $D4                             ; EC3A
        jsr     L_E664                          ; EC3C
        lda     $D5                             ; EC3F
        jsr     L_E650                          ; EC41
        lda     $FE                             ; EC44
        sta     $2001                           ; EC46
        jsr     L_EC61                          ; EC49
        inc     Global_FrameCounter             ; EC4C
        jsr     L_E8A9                          ; EC4E
L_EC51: lda     #$05                            ; EC51
        jsr     MMC1_WritePRG                   ; EC53
        jsr     L_DEEB                          ; EC56
        lda     $DB                             ; EC59
        jsr     MMC1_WritePRG                   ; EC5B
        inc     $10                             ; EC5E
        rts                                     ; EC60

.endmacro

