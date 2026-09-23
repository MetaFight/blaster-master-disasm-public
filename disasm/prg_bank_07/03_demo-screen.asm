.macro MAC_03_demo_screen_1_of_2
; ----------------------------------------------------------------------------
L_C2DB: jsr     L_DEC2                          ; C2DB
        inc     $06F4                           ; C2DE
        lda     $06F4                           ; C2E1
        and     #$03                            ; C2E4
        sta     $06F4                           ; C2E6
        tax                                     ; C2E9
        lda     L_C2F7,x                        ; C2EA
        sta     $14                             ; C2ED
        lda     #$83                            ; C2EF
        sta     $06F3                           ; C2F1
        jmp     L_C301                          ; C2F4

; ----------------------------------------------------------------------------
L_C2F7: .byte   $08,$01,$0A,$03                 ; C2F7
.endmacro

; Interrupted by 37 macros:
;   MAC_06_game_screen
;   MAC_06_game_screen__game_loop
;   MAC_transitions_1_of_3
;   MAC_checkpoint
;   MAC__ungrouped_1_of_16
;   MAC_transitions_2_of_3
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
;   MAC_transitions_3_of_3
;   MAC_sound_2_of_2
;   MAC__ungrouped_9_of_16
;   MAC_06_game_screen__object_system_5_of_8
;   MAC__ungrouped_10_of_16
;   MAC_06_game_screen__object_system_6_of_8
;   MAC_math_2_of_5
;   MAC_06_game_screen__object_system_7_of_8
;   MAC_math_3_of_5

.macro MAC_03_demo_screen_2_of_2
; ----------------------------------------------------------------------------
L_E243: lda     $06F3                           ; E243
        and     #$7F                            ; E246
        cmp     #$03                            ; E248
        beq     L_E257                          ; E24A
        lda     #$00                            ; E24C
        sta     $CE                             ; E24E
        lda     #$74                            ; E250
        sta     $CF                             ; E252
        jmp     L_E26C                          ; E254

; ----------------------------------------------------------------------------
L_E257: lda     #$2C                            ; E257
        jsr     BankDispatch_Switch             ; E259
        lda     $06F4                           ; E25C
        and     #$03                            ; E25F
        jsr     L_EB51                          ; E261
        lda     IndirectPtrLo                   ; E264
        sta     $CE                             ; E266
        lda     IndirectPtrHi                   ; E268
        sta     $CF                             ; E26A
L_E26C: lda     #$00                            ; E26C
        sta     $CD                             ; E26E
        sta     $D0                             ; E270
        sta     $D1                             ; E272
        lda     $06F3                           ; E274
        and     #$7F                            ; E277
        sta     $06F3                           ; E279
        cmp     #$01                            ; E27C
        beq     L_E284                          ; E27E
        cmp     #$03                            ; E280
        bne     L_E286                          ; E282
L_E284: inc     $D0                             ; E284
L_E286: rts                                     ; E286

; ----------------------------------------------------------------------------
L_E287: lda     $06F3                           ; E287
        cmp     #$02                            ; E28A
        bne     L_E2C0                          ; E28C
        lda     $F7                             ; E28E
        cmp     $D1                             ; E290
        beq     L_E2A0                          ; E292
        jsr     L_E2AB                          ; E294
        lda     $F7                             ; E297
        sta     $D1                             ; E299
        lda     #$01                            ; E29B
        sta     $D0                             ; E29D
        rts                                     ; E29F

; ----------------------------------------------------------------------------
L_E2A0: inc     $D0                             ; E2A0
        bne     L_E2A7                          ; E2A2
        jsr     L_E2AB                          ; E2A4
L_E2A7: jsr     L_E308                          ; E2A7
        rts                                     ; E2AA

; ----------------------------------------------------------------------------
L_E2AB: ldy     $CD                             ; E2AB
        lda     $D1                             ; E2AD
        sta     ($CE),y                         ; E2AF
        iny                                     ; E2B1
        lda     $D0                             ; E2B2
        sta     ($CE),y                         ; E2B4
        iny                                     ; E2B6
        bne     L_E2BE                          ; E2B7
        lda     #$FF                            ; E2B9
        sta     $06F3                           ; E2BB
L_E2BE: sty     $CD                             ; E2BE
L_E2C0: rts                                     ; E2C0

; ----------------------------------------------------------------------------
L_E2C1: lda     #$02                            ; E2C1
        jsr     BankSave_Switch                 ; E2C3
        lda     $06F3                           ; E2C6
        cmp     #$01                            ; E2C9
        beq     L_E2D1                          ; E2CB
        cmp     #$03                            ; E2CD
        bne     L_E302                          ; E2CF
L_E2D1: lda     $06F3                           ; E2D1
        beq     L_E2E1                          ; E2D4
        lda     $DE                             ; E2D6
        and     #$10                            ; E2D8
        beq     L_E2E1                          ; E2DA
        lda     #$08                            ; E2DC
        jsr     L_D1EF                          ; E2DE
L_E2E1: dec     $D0                             ; E2E1
        bne     L_E2FB                          ; E2E3
        ldy     $CD                             ; E2E5
        lda     ($CE),y                         ; E2E7
        iny                                     ; E2E9
        sta     $D1                             ; E2EA
        lda     ($CE),y                         ; E2EC
        iny                                     ; E2EE
        sta     $D0                             ; E2EF
        sty     $CD                             ; E2F1
        tya                                     ; E2F3
        bne     L_E2FB                          ; E2F4
        lda     #$FF                            ; E2F6
        sta     $06F3                           ; E2F8
L_E2FB: lda     $D1                             ; E2FB
        sta     $F7                             ; E2FD
        jsr     L_E308                          ; E2FF
L_E302: lda     SavedPrgBank                    ; E302
        jsr     BankSave_Switch                 ; E304
        rts                                     ; E307

; ----------------------------------------------------------------------------
L_E308: rts                                     ; E308

.endmacro

