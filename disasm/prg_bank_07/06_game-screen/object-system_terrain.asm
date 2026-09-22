.macro MAC_06_game_screen__object_system_terrain
; ----------------------------------------------------------------------------
L_CEC6: ldx     LoadedObj + Obj::TileIndex      ; CEC6
        sta     ScreenTileMap + TileAttributes::Flags,x ; CEC8
        jsr     L_E712                          ; CECB
        lda     $C7                             ; CECE
        and     #$FE                            ; CED0
        sta     $C7                             ; CED2
        lda     $C8                             ; CED4
        and     #$FE                            ; CED6
        sta     $C8                             ; CED8
        jmp     L_E797                          ; CEDA

; ----------------------------------------------------------------------------
L_CEDD: lda     #$00                            ; CEDD
        ldx     LoadedObj + Obj::TileIndex      ; CEDF
        sta     ScreenTileMap + TileAttributes::Flags,x ; CEE1
        jsr     L_E712                          ; CEE4
        lda     $C7                             ; CEE7
        and     #$FE                            ; CEE9
        sta     $C7                             ; CEEB
        lda     $C8                             ; CEED
        and     #$FE                            ; CEEF
        sta     $C8                             ; CEF1
        lda     L_CF00                          ; CEF3
        sta     IndirectPtrLo                   ; CEF6
        lda     L_CF00+1                        ; CEF8
        sta     IndirectPtrHi                   ; CEFB
        jmp     L_E797                          ; CEFD

; ----------------------------------------------------------------------------
L_CF00: .addr   L_CF02                          ; CF00
; ----------------------------------------------------------------------------
L_CF02: .byte   $22,$01,$01,$01,$01             ; CF02
; ----------------------------------------------------------------------------
L_CF07: jsr     Obj_ReadTile                    ; CF07
        bpl     L_CF0F                          ; CF0A
        jsr     L_CEDD                          ; CF0C
L_CF0F: rts                                     ; CF0F

.endmacro

