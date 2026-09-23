.macro MAC_screen_fade
; ----------------------------------------------------------------------------
; Per-frame palette-wipe animator;
; 
; if bit 7 of ScreenFade_Flags ($15) set: DEC ScreenFade_Counter ($B6, 8→0, fade-in);
; if bit 6 set: INC $B6 (0→9, fade-out);
; 
; each step subtracts $B6×8 from $0650–$066F palette shadow
.proc ScreenFade_Step
        lda     $15                             ; CDD0
; bits 6 and 7
        and     #$C0                            ; CDD2
; Neither bit set, so abort.
        beq     _Return                         ; CDD4
        lda     $19                             ; CDD6
        bne     _Return                         ; CDD8
        lda     $15                             ; CDDA
        bmi     _Fade_In                        ; CDDC
        lda     $B6                             ; CDDE
; is completly faded out?
        cmp     #$09                            ; CDE0
        bcs     _On_Completely_Faded_Out        ; CDE2
_Fade_Out:
        inc     $B6                             ; CDE4
        jmp     _Apply_Change                   ; CDE6

; ----------------------------------------------------------------------------
_Fade_In:
        dec     $B6                             ; CDE9
        beq     _On_Completely_Faded_Out        ; CDEB
_Apply_Change:
        lda     $B6                             ; CDED
        asl     a                               ; CDEF
        asl     a                               ; CDF0
        asl     a                               ; CDF1
        and     #$F0                            ; CDF2
        sta     L0000                           ; CDF4
        ldx     #$1F                            ; CDF6
_Apply_To_Palette_Entry_X:
        lda     BgPalette_Shadow + BgPalette::Colour0,x ; CDF8
        sec                                     ; CDFB
        sbc     L0000                           ; CDFC
        bcs     _Save_Palette_Entry             ; CDFE
; Clamp to $0F on underflow
        lda     #$0F                            ; CE00
_Save_Palette_Entry:
        sta     Background_Palettes + BgPalette::Colour0,x ; CE02
        dex                                     ; CE04
        bpl     _Apply_To_Palette_Entry_X       ; CE05
        rts                                     ; CE07

; ----------------------------------------------------------------------------
_On_Completely_Faded_Out:
        lda     $15                             ; CE08
        and     #$3F                            ; CE0A
        sta     $15                             ; CE0C
_Return:
        rts                                     ; CE0E
.endproc

; ----------------------------------------------------------------------------
L_CE0F: lda     $15                             ; CE0F
        and     #$01                            ; CE11
        ora     #$80                            ; CE13
        sta     $15                             ; CE15
        lda     #$08                            ; CE17
        sta     $B6                             ; CE19
        jsr     L_E6FA                          ; CE1B
        jsr     L_E93F                          ; CE1E
        jsr     WaitNMI                         ; CE21
        jmp     L_E6E9                          ; CE24

; ----------------------------------------------------------------------------
L_CE27: lda     $15                             ; CE27
        ora     #$40                            ; CE29
        sta     $15                             ; CE2B
        rts                                     ; CE2D

; ----------------------------------------------------------------------------
L_CE2E: jsr     L_CE0F                          ; CE2E
L_CE31: jsr     WaitNMI                         ; CE31
        jsr     ScreenFade_Step                 ; CE34
        lda     $15                             ; CE37
        bmi     L_CE31                          ; CE39
        rts                                     ; CE3B

; ----------------------------------------------------------------------------
L_CE3C: jsr     L_CE27                          ; CE3C
L_CE3F: jsr     WaitNMI                         ; CE3F
        jsr     ScreenFade_Step                 ; CE42
        bit     $15                             ; CE45
        bvs     L_CE3F                          ; CE47
        rts                                     ; CE49

.endmacro

