.macro MAC_L_CDBA
L_CDBA: jsr     L_DEC2                          ; CDBA
        lda     $14                             ; CDBD
        and     #$07                            ; CDBF
        tax                                     ; CDC1
        lda     LCDC8,x                         ; CDC2
        jmp     Enqueue_Sound_Command           ; CDC5

; ----------------------------------------------------------------------------
LCDC8:  .byte   $06,$04,$02,$13,$07,$05,$37,$2B ; CDC8
; ----------------------------------------------------------------------------
; Per-frame palette-wipe animator;
; 
; if bit 7 of ScreenFade_Flags ($15) set: DEC ScreenFade_Counter ($B6, 8→0, fade-in);
; if bit 6 set: INC $B6 (0→9, fade-out);
; 
; each step subtracts $B6×8 from $0650–$066F palette shadow
.endmacro

.macro MAC_L_DEC2
L_DEC2: jsr     L_DF05                          ; DEC2
        jsr     LBFE5                           ; DEC5
        jsr     L_DF0A                          ; DEC8
        rts                                     ; DECB

; ----------------------------------------------------------------------------
; Insert value (A) into first empty or matching slot of Sound_Command_Queue ($0370-$0377); 8-slot
; scan from slot 7 down
Enqueue_Sound_Command:
        sta     $E1                             ; DECC
        txa                                     ; DECE
; Save X to stack
_note_DECF:
        pha                                     ; DECF
        ldx     #$07                            ; DED0
_Enqueue_Sound_Command__Find_Empty_Slot_Loop:
        lda     $0370,x                         ; DED2
        beq     _Enqueue_Sound_Command__On_Empty_Slot_Found; DED5
        cmp     $E1                             ; DED7
        bne     _Enqueue_Sound_Command__On_Empty_Slot_Not_Found; DED9
        beq     _Enqueue_Sound_Command__On_Success; DEDB
_Enqueue_Sound_Command__On_Empty_Slot_Found:
        lda     $E1                             ; DEDD
; Write sound command Id to empty slot
_note_DEDF:
        sta     $0370,x                         ; DEDF
        jmp     _Enqueue_Sound_Command__On_Success; DEE2

; ----------------------------------------------------------------------------
; Decrement X and try again
_Enqueue_Sound_Command__On_Empty_Slot_Not_Found:
        dex                                     ; DEE5
        bpl     _Enqueue_Sound_Command__Find_Empty_Slot_Loop; DEE6
_Enqueue_Sound_Command__On_Success:
        pla                                     ; DEE8
; Restore X from stack
_note_DEE9:
        tax                                     ; DEE9
        rts                                     ; DEEA

; ----------------------------------------------------------------------------
L_DEEB: lda     #$07                            ; DEEB
L_DEED: pha                                     ; DEED
        tax                                     ; DEEE
        lda     $0370,x                         ; DEEF
        beq     L_DEF7                          ; DEF2
        jsr     LBFE8                           ; DEF4
L_DEF7: pla                                     ; DEF7
        tax                                     ; DEF8
        lda     #$00                            ; DEF9
        sta     $0370,x                         ; DEFB
        dex                                     ; DEFE
        txa                                     ; DEFF
        bpl     L_DEED                          ; DF00
        jmp     LBFF1                           ; DF02

; ----------------------------------------------------------------------------
.endmacro

