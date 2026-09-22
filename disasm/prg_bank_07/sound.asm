.macro MAC_sound_1_of_2
; ----------------------------------------------------------------------------
L_CDBA: jsr     L_DEC2                          ; CDBA
        lda     $14                             ; CDBD
        and     #$07                            ; CDBF
        tax                                     ; CDC1
        lda     L_CDC8,x                        ; CDC2
        jmp     Enqueue_Sound_Command           ; CDC5

; ----------------------------------------------------------------------------
L_CDC8: .byte   $06,$04,$02,$13,$07,$05,$37,$2B ; CDC8
.endmacro

; Interrupted by 17 macros:
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

.macro MAC_sound_2_of_2
; ----------------------------------------------------------------------------
L_DEC2: jsr     L_DF05                          ; DEC2
        jsr     LBFE5                           ; DEC5
        jsr     L_DF0A                          ; DEC8
        rts                                     ; DECB

; ----------------------------------------------------------------------------
; Insert value (A) into first empty or matching slot of Sound_Command_Queue ($0370-$0377); 8-slot
; scan from slot 7 down
.proc Enqueue_Sound_Command
        sta     $E1                             ; DECC
        txa                                     ; DECE
; Save X to stack
        pha                                     ; DECF
        ldx     #$07                            ; DED0
_Find_Empty_Slot_Loop:
        lda     $0370,x                         ; DED2
        beq     _On_Empty_Slot_Found            ; DED5
        cmp     $E1                             ; DED7
        bne     _On_Empty_Slot_Not_Found        ; DED9
        beq     _On_Success                     ; DEDB
_On_Empty_Slot_Found:
        lda     $E1                             ; DEDD
; Write sound command Id to empty slot
        sta     $0370,x                         ; DEDF
        jmp     _On_Success                     ; DEE2

; ----------------------------------------------------------------------------
; Decrement X and try again
_On_Empty_Slot_Not_Found:
        dex                                     ; DEE5
        bpl     _Find_Empty_Slot_Loop           ; DEE6
_On_Success:
        pla                                     ; DEE8
; Restore X from stack
        tax                                     ; DEE9
        rts                                     ; DEEA
.endproc

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

.endmacro

