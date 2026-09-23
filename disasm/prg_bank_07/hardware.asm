.macro MAC_hardware_1_of_7
; ----------------------------------------------------------------------------
; Uploads the $0200 sprite page to PPU OAM. 
; If the mode flag OAM_Flag__HARDCODED_00 is 0, triggers a full 256-byte sprite DMA via $4014
; (OAMADDR reset to 0); 
; otherwise copies 64 bytes/frame manually through OAMDATA ($2004), advancing the quarter index
; $F0 ($00/$40/$80/$C0) so the page uploads over four frames.
.proc OAM_Copy_To_PPU
        lda     OAM_Flag__HARDCODED_00          ; E697
        bne     _DEAD_Manually                  ; E69A
        lda     #$00                            ; E69C
        sta     $2003                           ; E69E
        lda     #$02                            ; E6A1
        sta     $4014                           ; E6A3
        rts                                     ; E6A6

; ----------------------------------------------------------------------------
; Dead in the shipped US ROM — the alternate manual OAM upload path (stream $0200 → OAM data port
; $2004), reached only when OAM_Flag__HARDCODED_00 ($E6BE) ≠ 0, which it never is; the $4014
; sprite-DMA fall-through above is what actually runs.
_DEAD_Manually:
        lda     $F0                             ; E6A7
        and     #$C0                            ; E6A9
        sta     $2003                           ; E6AB
        tax                                     ; E6AE
        ldy     #$40                            ; E6AF
; Copy 64 bytes $0200+X → OAM data port ($2004).
_DEAD_ManualLoop:
        lda     $0200,x                         ; E6B1
        sta     $2004                           ; E6B4
        inx                                     ; E6B7
        dey                                     ; E6B8
        bne     _DEAD_ManualLoop                ; E6B9
        stx     $F0                             ; E6BB
        rts                                     ; E6BD
.endproc

.endmacro

; Interrupted by 1 macro:
;   MAC__ungrouped_11_of_16

.macro MAC_hardware_2_of_7
; ----------------------------------------------------------------------------
L_E6BF: lda     $FF                             ; E6BF
        and     #$FE                            ; E6C1
        sta     $FF                             ; E6C3
        lda     $F1                             ; E6C5
        and     #$01                            ; E6C7
        ora     $FF                             ; E6C9
        sta     $FF                             ; E6CB
        sta     $2000                           ; E6CD
        lda     $2002                           ; E6D0
        lda     $FD                             ; E6D3
        sta     $2005                           ; E6D5
        lda     $FC                             ; E6D8
        sta     $2005                           ; E6DA
        rts                                     ; E6DD

.endmacro

; Interrupted by 1 macro:
;   MAC__ungrouped_12_of_16

.macro MAC_hardware_3_of_7
; ----------------------------------------------------------------------------
L_E6E9: lda     $FE                             ; E6E9
        ora     #$1E                            ; E6EB
        sta     $FE                             ; E6ED
        rts                                     ; E6EF

; ----------------------------------------------------------------------------
L_E6F0: lda     $FE                             ; E6F0
        and     #$E1                            ; E6F2
        sta     $FE                             ; E6F4
        sta     $2001                           ; E6F6
        rts                                     ; E6F9

.endmacro

; Interrupted by 3 macros:
;   MAC__ungrouped_13_of_16
;   MAC_drawing_background_1_of_2
;   MAC_drawing_text

.macro MAC_hardware_4_of_7
; ----------------------------------------------------------------------------
; Clear PPU_CTRL bit2 ($FF shadow + $2000): VRAM address increment = +1 (write across a row).
; Dispatch slot $C234; callers: Nametable_RLE_Decompress ($E95B), NMI palette upload ($EBC0).
.proc PPU_SetAddressIncrementTo_1
        lda     $FF                             ; E895
        and     #$FB                            ; E897
        sta     $2000                           ; E899
        sta     $FF                             ; E89C
        rts                                     ; E89E
.endproc

; ----------------------------------------------------------------------------
; Set PPU_CTRL bit2 ($FF shadow + $2000): VRAM address increment = +32 (write down a column).
; Dispatch slot $C237 (no external callers).
.proc PPU_SetAddressIncrementTo_32
        lda     $FF                             ; E89F
        ora     #$04                            ; E8A1
        sta     $2000                           ; E8A3
        sta     $FF                             ; E8A6
        rts                                     ; E8A8
.endproc

.endmacro

; Interrupted by 3 macros:
;   MAC_input
;   MAC_timing_2_of_3
;   MAC_drawing_background_2_of_2

.macro MAC_hardware_5_of_7
; ----------------------------------------------------------------------------
L_EA03: jsr     L_E6FA                          ; EA03
        jsr     L_E6F0                          ; EA06
        lda     #$00                            ; EA09
        sta     $FD                             ; EA0B
        sta     $F1                             ; EA0D
        sta     $FC                             ; EA0F
        sta     LoadedObj + Obj::IFrameCounter  ; EA11
        lda     $FF                             ; EA13
        and     #$D0                            ; EA15
        ora     #$90                            ; EA17
        sta     $FF                             ; EA19
        sta     $2000                           ; EA1B
        lda     $2002                           ; EA1E
        lda     #$20                            ; EA21
        sta     $2006                           ; EA23
        lda     #$00                            ; EA26
        sta     $2006                           ; EA28
        ldy     #$08                            ; EA2B
        lda     #$00                            ; EA2D
        tax                                     ; EA2F
L_EA30: sta     $2007                           ; EA30
        dex                                     ; EA33
        bne     L_EA30                          ; EA34
        dey                                     ; EA36
        bne     L_EA30                          ; EA37
        rts                                     ; EA39

.endmacro

; Interrupted by 7 macros:
;   MAC__ungrouped_14_of_16
;   MAC_math_4_of_5
;   MAC_06_game_screen__object_system_8_of_8
;   MAC_math_5_of_5
;   MAC__ungrouped_15_of_16
;   MAC_rng
;   MAC_timing_3_of_3

.macro MAC_hardware_6_of_7
; ----------------------------------------------------------------------------
L_EC61: lda     #$F0                            ; EC61
        ldx     #$00                            ; EC63
        stx     $3C                             ; EC65
        stx     $3D                             ; EC67
L_EC69: sta     $0200,x                         ; EC69
        inx                                     ; EC6C
        inx                                     ; EC6D
        inx                                     ; EC6E
        inx                                     ; EC6F
        bne     L_EC69                          ; EC70
        rts                                     ; EC72

; ----------------------------------------------------------------------------
L_EC73: lda     $3C                             ; EC73
        beq     L_ECB3                          ; EC75
        lda     OAM_Flag__HARDCODED_00          ; EC77
        bne     L_EC81                          ; EC7A
        lda     Global_FrameCounter             ; EC7C
        lsr     a                               ; EC7E
        bcs     L_EC8A                          ; EC7F
L_EC81: lda     $3D                             ; EC81
        tay                                     ; EC83
        clc                                     ; EC84
        adc     $3C                             ; EC85
        bcc     L_EC97                          ; EC87
        rts                                     ; EC89

; ----------------------------------------------------------------------------
L_EC8A: lda     $3D                             ; EC8A
        sec                                     ; EC8C
        sbc     $3C                             ; EC8D
        bcs     L_EC96                          ; EC8F
        lda     #$00                            ; EC91
        sec                                     ; EC93
        sbc     $3C                             ; EC94
L_EC96: tay                                     ; EC96
L_EC97: sta     $3D                             ; EC97
        ldx     #$00                            ; EC99
L_EC9B: lda     OAM_Staging_Buffer + OamEntry::Screen_Y,x ; EC9B
        sta     $0200,y                         ; EC9E
        inx                                     ; ECA1
        iny                                     ; ECA2
        lda     OAM_Staging_Buffer + OamEntry::Screen_Y,x ; ECA3
        sta     $0200,y                         ; ECA6
        inx                                     ; ECA9
        iny                                     ; ECAA
        cpx     $3C                             ; ECAB
        bne     L_EC9B                          ; ECAD
        lda     #$00                            ; ECAF
        sta     $3C                             ; ECB1
L_ECB3: rts                                     ; ECB3

.endmacro

; Interrupted by 3 macros:
;   MAC_drawing_sprites
;   MAC__ungrouped_16_of_16
;   MAC_drawing_metasprites

.macro MAC_hardware_7_of_7
; ----------------------------------------------------------------------------
L_F192: ldx     $19                             ; F192
        sta     $0300,x                         ; F194
        inx                                     ; F197
        stx     $19                             ; F198
        rts                                     ; F19A

; ----------------------------------------------------------------------------
L_F19B: lda     #$00                            ; F19B
        beq     L_F1A5                          ; F19D
L_F19F: lda     #$80                            ; F19F
        bne     L_F1A5                          ; F1A1
L_F1A3: lda     #$40                            ; F1A3
L_F1A5: ldx     $19                             ; F1A5
        sta     $0302,x                         ; F1A7
        lda     $BF                             ; F1AA
        sta     $0300,x                         ; F1AC
        inx                                     ; F1AF
        lda     $C0                             ; F1B0
        sta     $0300,x                         ; F1B2
        inx                                     ; F1B5
        stx     $18                             ; F1B6
        inx                                     ; F1B8
        stx     $19                             ; F1B9
        rts                                     ; F1BB

; ----------------------------------------------------------------------------
L_F1BC: lda     $19                             ; F1BC
        clc                                     ; F1BE
        sbc     $18                             ; F1BF
        ldx     $18                             ; F1C1
        ora     $0300,x                         ; F1C3
        sta     $0300,x                         ; F1C6
        rts                                     ; F1C9

; ----------------------------------------------------------------------------
L_F1CA: ldx     #$00                            ; F1CA
L_F1CC: cpx     $19                             ; F1CC
        bcc     L_F1DA                          ; F1CE
        lda     #$00                            ; F1D0
        sta     $19                             ; F1D2
        lda     $FF                             ; F1D4
        sta     $2000                           ; F1D6
        rts                                     ; F1D9

; ----------------------------------------------------------------------------
L_F1DA: lda     $2002                           ; F1DA
        lda     $0301,x                         ; F1DD
        sta     $2006                           ; F1E0
        sta     $1B                             ; F1E3
        lda     $0300,x                         ; F1E5
        sta     $2006                           ; F1E8
        sta     $1A                             ; F1EB
        inx                                     ; F1ED
        inx                                     ; F1EE
        lda     $0300,x                         ; F1EF
        bmi     L_F1FC                          ; F1F2
        and     #$40                            ; F1F4
        bne     L_F216                          ; F1F6
        lda     #$00                            ; F1F8
        beq     L_F1FE                          ; F1FA
L_F1FC: lda     #$04                            ; F1FC
L_F1FE: sta     $2000                           ; F1FE
        lda     $0300,x                         ; F201
        inx                                     ; F204
        and     #$3F                            ; F205
        tay                                     ; F207
        beq     L_F1CC                          ; F208
L_F20A: lda     $0300,x                         ; F20A
        sta     $2007                           ; F20D
        inx                                     ; F210
        dey                                     ; F211
        bne     L_F20A                          ; F212
        beq     L_F1CC                          ; F214
L_F216: lda     $0300,x                         ; F216
        and     #$3F                            ; F219
        tay                                     ; F21B
        inx                                     ; F21C
L_F21D: lda     $2002                           ; F21D
        lda     $1B                             ; F220
        sta     $2006                           ; F222
        lda     $1A                             ; F225
        sta     $2006                           ; F227
        clc                                     ; F22A
        adc     #$08                            ; F22B
        sta     $1A                             ; F22D
        lda     $0300,x                         ; F22F
        sta     $2007                           ; F232
        inx                                     ; F235
        dey                                     ; F236
        bne     L_F21D                          ; F237
        beq     L_F1CC                          ; F239
L_F23B: sei                                     ; F23B
        cld                                     ; F23C
        ldx     #$FF                            ; F23D
        txs                                     ; F23F
        lda     #$00                            ; F240
        sta     $2000                           ; F242
        sta     $2001                           ; F245
        sta     $4010                           ; F248
        lda     #$40                            ; F24B
        sta     $4017                           ; F24D
L_F250: lda     $2002                           ; F250
        bpl     L_F250                          ; F253
L_F255: lda     $2002                           ; F255
        bpl     L_F255                          ; F258
        jsr     L_E68C                          ; F25A
        lda     #$1E                            ; F25D
        jsr     L_E678                          ; F25F
        lda     #$30                            ; F262
        sta     $FF                             ; F264
        sta     $2000                           ; F266
        lda     #$06                            ; F269
        sta     $FE                             ; F26B
        sta     $2001                           ; F26D
        jmp     TryWarmBoot                     ; F270

.endmacro

