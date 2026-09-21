.macro MAC_object_handlers__auto_gates_and_locks
; ----------------------------------------------------------------------------
; ObjTypes $24, $26, and $28: Auto Gate - Init.
; +0 entrypoint is just 3 NOPs, so both entrypoints do the same things.
.proc ObjHandler_Tank_24_26_28_Auto_Gate_Init
        nop                                     ; 9D3B
        nop                                     ; 9D3C
        nop                                     ; 9D3D
_Body:
        lda     #$00                            ; 9D3E
; Set StateTransitionCounter (Scratch1) to 0 (closed).
        sta     LoadedObj + Obj::Scratch1       ; 9D40
        lda     #$01                            ; 9D42
; Set State (Scratch0) to 1 (closed).
        sta     LoadedObj + Obj::Scratch0       ; 9D44
; Set TileIndex.
        jsr     Obj_CalcTileIndex               ; 9D46
; Advance ObjType to Main handler ($24->$25, $26->$27, $28->$29)
        inc     LoadedObj + Obj::Type           ; 9D49
        rts                                     ; 9D4B
.endproc

; ----------------------------------------------------------------------------
; ObjType $25: Wall Guardian Gate - Main.
.proc ObjHandler_Tank_25_WallGuardianGate_Main
        rts                                     ; 9D4C

; ----------------------------------------------------------------------------
; 2 byte NOP padding.
        nop                                     ; 9D4D
        nop                                     ; 9D4E
; Point IndirectPtr to the appropriate pattern data for the 'Closed' gate tiles.
_Body:
        lda     Area1_Tank_GateCloseTileDrawInstructionPtr ; 9D4F
        sta     IndirectPtrLo                   ; 9D52
        lda     Area1_Tank_GateCloseTileDrawInstructionPtr+1 ; 9D54
        sta     IndirectPtrHi                   ; 9D57
        lda     #$01                            ; 9D59
        ldx     #$00                            ; 9D5B
; Skip to shared GateHandler, passing in A = #$01 and X = 0.
        beq     L_9D83                          ; 9D5D
.endproc
L_9D5F: rts                                     ; 9D5F

; ----------------------------------------------------------------------------
L_9D60: .byte   $EA,$EA                         ; 9D60
; ----------------------------------------------------------------------------
L_9D62: lda     Area4_Tank_GateCloseTileDrawInstructionPtr ; 9D62
        sta     IndirectPtrLo                   ; 9D65
        lda     Area4_Tank_GateCloseTileDrawInstructionPtr+1 ; 9D67
        sta     IndirectPtrHi                   ; 9D6A
        lda     #$02                            ; 9D6C
        ldx     #$F0                            ; 9D6E
        bne     L_9D83                          ; 9D70
L_9D72: rts                                     ; 9D72

; ----------------------------------------------------------------------------
L_9D73: .byte   $EA,$EA                         ; 9D73
; ----------------------------------------------------------------------------
L_9D75: lda     Area4_Tank_GateCloseTileDrawInstructionPtr ; 9D75
        sta     IndirectPtrLo                   ; 9D78
        lda     Area4_Tank_GateCloseTileDrawInstructionPtr+1 ; 9D7A
        sta     IndirectPtrHi                   ; 9D7D
        lda     #$04                            ; 9D7F
        ldx     #$10                            ; 9D81
L_9D83: sta     $08                             ; 9D83
        stx     $09                             ; 9D85
        lda     #$10                            ; 9D87
        sta     $40                             ; 9D89
        lda     #$10                            ; 9D8B
        sta     $41                             ; 9D8D
        jsr     ScreenPos_Compute               ; 9D8F
        beq     L_9D97                          ; 9D92
        jmp     LD823                           ; 9D94

; ----------------------------------------------------------------------------
L_9D97: lda     $03FE                           ; 9D97
        and     $08                             ; 9D9A
        bne     L_9DA1                          ; 9D9C
        jmp     L_9E60                          ; 9D9E

; ----------------------------------------------------------------------------
L_9DA1: lda     #$30                            ; 9DA1
        sta     $40                             ; 9DA3
        lda     #$30                            ; 9DA5
        sta     $41                             ; 9DA7
        lda     $3F                             ; 9DA9
        sec                                     ; 9DAB
        sbc     #$10                            ; 9DAC
        sta     $3F                             ; 9DAE
        lda     #$00                            ; 9DB0
        jsr     Obj_TryDamagePlayer             ; 9DB2
        sta     $45                             ; 9DB5
        lda     LoadedObj + Obj::Scratch0       ; 9DB7
        cmp     #$01                            ; 9DB9
        beq     L_9DD4                          ; 9DBB
        cmp     #$02                            ; 9DBD
        bne     L_9DC4                          ; 9DBF
        jmp     L_9DDD                          ; 9DC1

; ----------------------------------------------------------------------------
L_9DC4: cmp     #$04                            ; 9DC4
        bne     L_9DCB                          ; 9DC6
        jmp     L_9E28                          ; 9DC8

; ----------------------------------------------------------------------------
L_9DCB: lda     $45                             ; 9DCB
        beq     L_9DD3                          ; 9DCD
        lda     #$04                            ; 9DCF
        sta     LoadedObj + Obj::Scratch0       ; 9DD1
L_9DD3: rts                                     ; 9DD3

; ----------------------------------------------------------------------------
L_9DD4: lda     $45                             ; 9DD4
        bne     L_9DDC                          ; 9DD6
        lda     #$02                            ; 9DD8
        sta     LoadedObj + Obj::Scratch0       ; 9DDA
L_9DDC: rts                                     ; 9DDC

; ----------------------------------------------------------------------------
L_9DDD: lda     LoadedObj + Obj::Position_Y_Hi  ; 9DDD
        pha                                     ; 9DDF
        lda     LoadedObj + Obj::TileIndex      ; 9DE0
        pha                                     ; 9DE2
        inc     LoadedObj + Obj::Scratch1       ; 9DE3
        lda     LoadedObj + Obj::Scratch1       ; 9DE5
        cmp     #$10                            ; 9DE7
        beq     L_9DFF                          ; 9DE9
        cmp     #$20                            ; 9DEB
        beq     L_9DFC                          ; 9DED
        cmp     #$30                            ; 9DEF
        beq     L_9DF9                          ; 9DF1
        cmp     #$40                            ; 9DF3
        beq     L_9E16                          ; 9DF5
        bne     L_9E1A                          ; 9DF7
L_9DF9: jsr     Obj_MoveUpOneRow                           ; 9DF9
L_9DFC: jsr     Obj_MoveUpOneRow                           ; 9DFC
L_9DFF: lda     L_9E21                          ; 9DFF
        sta     IndirectPtrLo                   ; 9E02
        lda     L_9E21+1                        ; 9E04
        sta     IndirectPtrHi                   ; 9E07
        lda     #$00                            ; 9E09
        jsr     LCEC6                           ; 9E0B
        lda     #$41                            ; 9E0E
        jsr     Enqueue_Sound_Command           ; 9E10
        jmp     L_9E1A                          ; 9E13

; ----------------------------------------------------------------------------
L_9E16: lda     #$03                            ; 9E16
        sta     LoadedObj + Obj::Scratch0       ; 9E18
L_9E1A: pla                                     ; 9E1A
        sta     LoadedObj + Obj::TileIndex      ; 9E1B
        pla                                     ; 9E1D
        sta     LoadedObj + Obj::Position_Y_Hi  ; 9E1E
        rts                                     ; 9E20

; ----------------------------------------------------------------------------
L_9E21: .addr   L_9E23                          ; 9E21
; ----------------------------------------------------------------------------
L_9E23: .byte   $22,$00,$00,$00,$00             ; 9E23
; ----------------------------------------------------------------------------
L_9E28: lda     LoadedObj + Obj::Position_Y_Hi  ; 9E28
        pha                                     ; 9E2A
        lda     LoadedObj + Obj::TileIndex      ; 9E2B
        pha                                     ; 9E2D
        dec     LoadedObj + Obj::Scratch1       ; 9E2E
        beq     L_9E55                          ; 9E30
        lda     LoadedObj + Obj::Scratch1       ; 9E32
        cmp     #$10                            ; 9E34
        beq     L_9E48                          ; 9E36
        cmp     #$20                            ; 9E38
        beq     L_9E45                          ; 9E3A
        cmp     #$30                            ; 9E3C
        beq     L_9E42                          ; 9E3E
        bne     L_9E59                          ; 9E40
L_9E42: jsr     Obj_MoveUpOneRow                           ; 9E42
L_9E45: jsr     Obj_MoveUpOneRow                           ; 9E45
L_9E48: lda     #$80                            ; 9E48
        jsr     LCEC6                           ; 9E4A
        lda     #$41                            ; 9E4D
        jsr     Enqueue_Sound_Command           ; 9E4F
        jmp     L_9E59                          ; 9E52

; ----------------------------------------------------------------------------
L_9E55: lda     #$01                            ; 9E55
        sta     LoadedObj + Obj::Scratch0       ; 9E57
L_9E59: pla                                     ; 9E59
        sta     LoadedObj + Obj::TileIndex      ; 9E5A
        pla                                     ; 9E5C
        sta     LoadedObj + Obj::Position_Y_Hi  ; 9E5D
        rts                                     ; 9E5F

; ----------------------------------------------------------------------------
L_9E60: lda     $09                             ; 9E60
        beq     L_9E84                          ; 9E62
        clc                                     ; 9E64
        adc     $3E                             ; 9E65
        sta     $3E                             ; 9E67
        lda     $03FC                           ; 9E69
        and     #$08                            ; 9E6C
        beq     L_9E85                          ; 9E6E
        lda     #$00                            ; 9E70
        jsr     Obj_TryDamagePlayer             ; 9E72
        bne     L_9E85                          ; 9E75
        lda     #$44                            ; 9E77
        jsr     Enqueue_Sound_Command           ; 9E79
        lda     $08                             ; 9E7C
        ora     $03FE                           ; 9E7E
        sta     $03FE                           ; 9E81
L_9E84: rts                                     ; 9E84

; ----------------------------------------------------------------------------
L_9E85: lda     #$01                            ; 9E85
        sta     $44                             ; 9E87
        lda     #$8E                            ; 9E89
        sta     $45                             ; 9E8B
        jmp     LEDF5                           ; 9E8D

; ----------------------------------------------------------------------------
; Pointer to Area1_Tank_GateCloseTileDrawInstruction.
Area1_Tank_GateCloseTileDrawInstructionPtr:
        .addr   Area1_Tank_GateCloseTileDrawInstruction ; 9E90
; ----------------------------------------------------------------------------
; Instruction to draw a 2x2 pattern tile.
; TBC: The instruction format.
Area1_Tank_GateCloseTileDrawInstruction:
        .byte   $22,$C6,$C7,$D6,$D7             ; 9E92
; ----------------------------------------------------------------------------
; Pointer to Area4_Tank_GateCloseTileDrawInstruction.
Area4_Tank_GateCloseTileDrawInstructionPtr:
        .addr   Area4_Tank_GateCloseTileDrawInstruction ; 9E97
; ----------------------------------------------------------------------------
; Instruction to draw a 2x2 pattern tile.
; TBC: The instruction format.
Area4_Tank_GateCloseTileDrawInstruction:
        .byte   $22,$6A,$6B,$7A,$7B             ; 9E99
.endmacro

