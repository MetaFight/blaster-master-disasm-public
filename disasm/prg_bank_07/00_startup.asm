.macro MAC_00_startup
; ----------------------------------------------------------------------------
; Determines whether the current boot-up is Warm (reset button) or Cold (power-on).
; 
; On Warm boots (detected by the presence of the warm boot signature in ram), do a soft init and
; skip to TitleScreen.
; 
; On Cool boots, hard reset the system state and stamp the warm boot signature.
; 
; Both cases yield control to Start_TitleScreen_WithTimeoutToStory.
.proc TryWarmBoot
        lda     #$00                            ; C24F
        sta     SavedPrgBank                    ; C251
        jsr     L_DEC2                          ; C253
        lda     $03F3                           ; C256
        cmp     #$01                            ; C259
        bne     L_C264                          ; C25B
        lda     $03F4                           ; C25D
        cmp     #$23                            ; C260
; If the warm-boot signature is intact ($01/$23), go straight to the TitleScreen.
        beq     Start_TitleScreen_WithTimeoutToStory ; C262
.endproc
L_C264: ldx     #$00                            ; C264
        txa                                     ; C266
L_C267: sta     L0000,x                         ; C267
        sta     $0100,x                         ; C269
        sta     $0200,x                         ; C26C
        sta     $0300,x                         ; C26F
        sta     ObjectTable + Obj::Type,x       ; C272
        sta     ScreenTileMap + TileAttributes::Flags,x ; C275
        sta     OAM_Staging_Buffer + OamEntry::Screen_Y,x ; C278
        sta     $0700,x                         ; C27B
        inx                                     ; C27E
        bne     L_C267                          ; C27F
        lda     #$01                            ; C281
        sta     $03F3                           ; C283
        lda     #$23                            ; C286
        sta     $03F4                           ; C288
        lda     #$30                            ; C28B
        sta     $FF                             ; C28D
        sta     $2000                           ; C28F
        lda     #$06                            ; C292
        sta     $FE                             ; C294
        sta     $2001                           ; C296
        lda     #$FF                            ; C299
        sta     $06F4                           ; C29B
.endmacro
; Falls through into Start_TitleScreen_WithTimeoutToStory, the start of group "01_title-screen" (MAC_01_title_screen_1_of_3).

