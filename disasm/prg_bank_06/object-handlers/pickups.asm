.macro MAC_L_9C1C
; ----------------------------------------------------------------------------
L_9C1C: nop                                     ; 9C1C
        nop                                     ; 9C1D
        nop                                     ; 9C1E
L_9C1F: lda     #$00                            ; 9C1F
        beq     L_9C5B                          ; 9C21
L_9C23: nop                                     ; 9C23
        nop                                     ; 9C24
        nop                                     ; 9C25
L_9C26: lda     #$01                            ; 9C26
        bne     L_9C5B                          ; 9C28
L_9C2A: nop                                     ; 9C2A
        nop                                     ; 9C2B
        nop                                     ; 9C2C
L_9C2D: lda     #$02                            ; 9C2D
        bne     L_9C5B                          ; 9C2F
L_9C31: nop                                     ; 9C31
        nop                                     ; 9C32
        nop                                     ; 9C33
L_9C34: lda     #$03                            ; 9C34
        bne     L_9C5B                          ; 9C36
L_9C38: nop                                     ; 9C38
        nop                                     ; 9C39
        nop                                     ; 9C3A
L_9C3B: lda     #$04                            ; 9C3B
        bne     L_9C5B                          ; 9C3D
L_9C3F: nop                                     ; 9C3F
        nop                                     ; 9C40
        nop                                     ; 9C41
L_9C42: lda     #$05                            ; 9C42
        bne     L_9C5B                          ; 9C44
L_9C46: nop                                     ; 9C46
        nop                                     ; 9C47
        nop                                     ; 9C48
L_9C49: lda     #$06                            ; 9C49
        bne     L_9C5B                          ; 9C4B
L_9C4D: nop                                     ; 9C4D
        nop                                     ; 9C4E
        nop                                     ; 9C4F
L_9C50: lda     #$07                            ; 9C50
        bne     L_9C5B                          ; 9C52
L_9C54: nop                                     ; 9C54
        nop                                     ; 9C55
        nop                                     ; 9C56
L_9C57: lda     #$08                            ; 9C57
        bne     L_9C5B                          ; 9C59
L_9C5B: sta     LoadedObj + Obj::Scratch0       ; 9C5B
        lda     #$35                            ; 9C5D
        sta     LoadedObj + Obj::Type           ; 9C5F
        lda     #$FF                            ; 9C61
        sta     LoadedObj + Obj::Scratch1       ; 9C63
        jmp     LD2B9                           ; 9C65

; ----------------------------------------------------------------------------
L_9C68: jmp     L_9C7D                          ; 9C68

; ----------------------------------------------------------------------------
L_9C6B: jsr     LD2AB                           ; 9C6B
        bmi     L_9CBC                          ; 9C6E
        lda     Global_FrameCounter             ; 9C70
        and     #$03                            ; 9C72
        bne     L_9C7D                          ; 9C74
        dec     LoadedObj + Obj::Scratch1       ; 9C76
        bne     L_9C7D                          ; 9C78
        jmp     L_9D09                          ; 9C7A

; ----------------------------------------------------------------------------
L_9C7D: jsr     LD2AB                           ; 9C7D
        bmi     L_9CBC                          ; 9C80
        lda     #$10                            ; 9C82
        sta     $40                             ; 9C84
        lda     #$10                            ; 9C86
        sta     $41                             ; 9C88
        jsr     ScreenPos_Compute               ; 9C8A
        beq     L_9C92                          ; 9C8D
        jmp     Obj_TombstoneSlot               ; 9C8F

; ----------------------------------------------------------------------------
L_9C92: lda     #$00                            ; 9C92
        jsr     LD71F                           ; 9C94
        beq     L_9CBD                          ; 9C97
        lda     LoadedObj + Obj::Scratch1       ; 9C99
        cmp     #$20                            ; 9C9B
        bcs     L_9CA4                          ; 9C9D
        lda     $10                             ; 9C9F
        lsr     a                               ; 9CA1
        bcs     L_9CBC                          ; 9CA2
L_9CA4: ldx     LoadedObj + Obj::Scratch0       ; 9CA4
        lda     L_9D0C,x                        ; 9CA6
        sta     $45                             ; 9CA9
        lda     L_9D15,x                        ; 9CAB
        cmp     #$04                            ; 9CAE
        bne     L_9CB7                          ; 9CB0
        lda     $10                             ; 9CB2
        lsr     a                               ; 9CB4
        and     #$03                            ; 9CB5
L_9CB7: sta     $44                             ; 9CB7
        jmp     LEDF5                           ; 9CB9

; ----------------------------------------------------------------------------
L_9CBC: rts                                     ; 9CBC

; ----------------------------------------------------------------------------
L_9CBD: lda     L_9D1E                          ; 9CBD
        sta     DispatchPtr                     ; 9CC0
        lda     L_9D1E+1                        ; 9CC2
        sta     DispatchPtrHi                   ; 9CC5
        lda     LoadedObj + Obj::Scratch0       ; 9CC7
        jsr     LEB51                           ; 9CC9
        lda     (DispatchPtr),y                 ; 9CCC
        ldx     LoadedObj + Obj::Scratch0       ; 9CCE
        clc                                     ; 9CD0
        adc     L_9D32,x                        ; 9CD1
        bcc     L_9CD8                          ; 9CD4
        lda     #$FF                            ; 9CD6
L_9CD8: sta     (DispatchPtr),y                 ; 9CD8
        ldx     #$02                            ; 9CDA
L_9CDC: lda     $06F0,x                         ; 9CDC
        cmp     #$64                            ; 9CDF
        bcc     L_9CE8                          ; 9CE1
        lda     #$63                            ; 9CE3
        sta     $06F0,x                         ; 9CE5
L_9CE8: dex                                     ; 9CE8
        bpl     L_9CDC                          ; 9CE9
        lda     LoadedObj + Obj::Scratch0       ; 9CEB
        cmp     #$06                            ; 9CED
        bcs     L_9D04                          ; 9CEF
        lsr     a                               ; 9CF1
        bcs     L_9CFC                          ; 9CF2
        lda     #$2C                            ; 9CF4
        jsr     Enqueue_Sound_Command           ; 9CF6
        jmp     L_9D09                          ; 9CF9

; ----------------------------------------------------------------------------
L_9CFC: lda     #$3F                            ; 9CFC
        jsr     Enqueue_Sound_Command           ; 9CFE
        jmp     L_9D09                          ; 9D01

; ----------------------------------------------------------------------------
L_9D04: lda     #$40                            ; 9D04
        jsr     Enqueue_Sound_Command           ; 9D06
L_9D09: jmp     Obj_DespawnAndLog                           ; 9D09

; ----------------------------------------------------------------------------
L_9D0C: .byte   $60,$60,$6A,$6A,$62,$62,$64,$68 ; 9D0C
        .byte   $66                             ; 9D14
L_9D15: .byte   $01,$04,$01,$04,$01,$04,$01,$01 ; 9D15
        .byte   $01                             ; 9D1D
; ----------------------------------------------------------------------------
L_9D1E: .addr   L_9D20                          ; 9D1E
; ----------------------------------------------------------------------------
L_9D20: .byte   $0D,$04,$0D,$04,$C3,$00,$C3,$00 ; 9D20
        .byte   $92,$00,$92,$00,$F0,$06,$F1,$06 ; 9D28
        .byte   $F2,$06                         ; 9D30
L_9D32: .byte   $20,$80,$20,$80,$20,$80,$14,$14 ; 9D32
        .byte   $14                             ; 9D3A
.endmacro

