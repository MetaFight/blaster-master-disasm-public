.macro MAC_palette_1_of_2
; ----------------------------------------------------------------------------
L_CE55: lda     $45                             ; CE55
        pha                                     ; CE57
        lda     $10                             ; CE58
        asl     a                               ; CE5A
        asl     a                               ; CE5B
        sta     $45                             ; CE5C
        ldx     #$0F                            ; CE5E
L_CE60: lda     $45                             ; CE60
        clc                                     ; CE62
        adc     #$10                            ; CE63
        and     #$30                            ; CE65
        sta     $45                             ; CE67
        lda     BgPalette_Shadow + BgPalette::Colour0,x ; CE69
        eor     $45                             ; CE6C
        sta     Background_Palettes + BgPalette::Colour0,x ; CE6E
        dex                                     ; CE70
        bpl     L_CE60                          ; CE71
        pla                                     ; CE73
        sta     $45                             ; CE74
        rts                                     ; CE76

; ----------------------------------------------------------------------------
L_CE77: ldx     #$0F                            ; CE77
L_CE79: lda     BgPalette_Shadow + BgPalette::Colour0,x ; CE79
        sta     Background_Palettes + BgPalette::Colour0,x ; CE7C
        dex                                     ; CE7E
        bpl     L_CE79                          ; CE7F
        rts                                     ; CE81

; ----------------------------------------------------------------------------
; Loads the palettes used from the Continue and Lives Left screens (white text on black and a
; sophia-like palette with black replaced with dark blue).
.proc TextScreen_LoadPalettes
        jsr     L_E6FA                          ; CE82
; Load the 4-entry fade colour tables: LCE97 → $0650 (BG), LCE9B → $0660 (sprite).
        ldx     #$03                            ; CE85
_Loop:
        lda     _BackgroundPalette + BgPalette::Colour0,x ; CE87
        sta     BgPalette_Shadow + BgPalette::Colour0,x ; CE8A
        lda     _SpritePalettes + SpritePalette::Transparency,x ; CE8D
        sta     SpritePalette_Shadow + SpritePalette::Transparency,x ; CE90
        dex                                     ; CE93
        bpl     _Loop                           ; CE94
        rts                                     ; CE96

; ----------------------------------------------------------------------------
_BackgroundPalette:
        .byte   $0F,$30,$0F,$0F ; CE97  Colour0=$0F Colour1=$30 Colour2=$0F Colour3=$0F
_SpritePalettes:
        .byte   $0F,$30,$15,$02 ; CE9B  Transparency=$0F Colour1=$30 Colour2=$15 Colour3=$02
        .byte   $0F,$30,$30,$30 ; CE9F  Transparency=$0F Colour1=$30 Colour2=$30 Colour3=$30
.endproc
; ----------------------------------------------------------------------------
L_CEA3: lda     BgPalette_Shadow + BgPalette::Colour0,x ; CEA3
        cmp     #$0F                            ; CEA6
        beq     L_CEB3                          ; CEA8
        sec                                     ; CEAA
        sbc     $45                             ; CEAB
        bcs     L_CEB1                          ; CEAD
        lda     #$0F                            ; CEAF
L_CEB1: sta     Background_Palettes + BgPalette::Colour0,x ; CEB1
L_CEB3: rts                                     ; CEB3

; ----------------------------------------------------------------------------
L_CEB4: inx                                     ; CEB4
        jsr     L_CEA3                          ; CEB5
        inx                                     ; CEB8
        jsr     L_CEA3                          ; CEB9
        inx                                     ; CEBC
        jsr     L_CEA3                          ; CEBD
        txa                                     ; CEC0
        sec                                     ; CEC1
        sbc     #$03                            ; CEC2
        tax                                     ; CEC4
        rts                                     ; CEC5

.endmacro

; Interrupted by 3 macros:
;   MAC_06_game_screen__object_system_terrain
;   MAC_math_1_of_5
;   MAC__ungrouped_3_of_16

.macro MAC_palette_2_of_2
; ----------------------------------------------------------------------------
L_D181: lda     #$0F                            ; D181
        tax                                     ; D183
L_D184: sta     Background_Palettes + BgPalette::Colour0,x ; D184
        sta     BgPalette_Shadow + BgPalette::Colour0,x ; D186
        dex                                     ; D189
        bpl     L_D184                          ; D18A
        rts                                     ; D18C

.endmacro

