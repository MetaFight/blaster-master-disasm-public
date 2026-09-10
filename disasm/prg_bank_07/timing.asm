.macro MAC_L_CE4A
; ----------------------------------------------------------------------------
L_CE4A: pha                                     ; CE4A
        jsr     WaitNMI                         ; CE4B
        pla                                     ; CE4E
        sec                                     ; CE4F
        sbc     #$01                            ; CE50
        bne     L_CE4A                          ; CE52
        rts                                     ; CE54

.endmacro

.macro MAC_L_E936
; ----------------------------------------------------------------------------
; Sets Nmi_SignalFlags bit 7 then spin-waits until NMI handler clears it.  This is the mechanism
; that paces the game loop at 60Hz.
WaitNMI:lda     #$80                            ; E936
        sta     Nmi_SignalFlags                 ; E938
_WaitNMI__Loop:
        bit     Nmi_SignalFlags                 ; E93A
        bmi     _WaitNMI__Loop                  ; E93C
        rts                                     ; E93E

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

.macro MAC_L_EB7E
; ----------------------------------------------------------------------------
; Hardware NMI (VBlank) handler.
; 
; Saves the registers.
; If a bank switch is in progress (Nmi_SignalFlags bit 6) records a deferred NMI and returns.
; Otherwise, runs the frame-update work (Nmi_DoWork).
; Restores the registers before returning.
NMI:    pha                                     ; EB7E
        txa                                     ; EB7F
        pha                                     ; EB80
        tya                                     ; EB81
        pha                                     ; EB82
        bit     Nmi_SignalFlags                 ; EB83
        bvs     _NMI__Deferred                  ; EB85
        jsr     L_EB98                          ; EB87
        jmp     _NMI__Restore                   ; EB8A

; ----------------------------------------------------------------------------
; Nmi_SignalFlags bit 6 was set (busy during bank switch); record deferred NMI by writing $20 (bit
; 5) to Nmi_SignalFlags and RTI.  This signals BankSave_Switch to call Nmi_DoWork on return
_NMI__Deferred:
        lda     #$20                            ; EB8D
        sta     Nmi_SignalFlags                 ; EB8F
; Pop Y/X/A; RTI
_NMI__Restore:
        pla                                     ; EB91
        tay                                     ; EB92
        pla                                     ; EB93
        tax                                     ; EB94
        pla                                     ; EB95
        rti                                     ; EB96

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
L_EBB0: lda     BG_Palette_0 + BgPalette::Backdrop ; EBB0
        sta     BG_Palette_1 + BgPalette::Backdrop ; EBB2
        sta     BG_Palette_2 + BgPalette::Backdrop ; EBB4
        sta     BG_Palette_3 + BgPalette::Backdrop ; EBB6
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
L_EBD2: lda     Background_Palettes + BgPalette::Backdrop,x ; EBD2
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
.endmacro

.macro MAC_L_EC34
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

