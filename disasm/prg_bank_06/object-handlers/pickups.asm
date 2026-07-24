.macro MAC_L_9C1C
; ----------------------------------------------------------------------------
L_9C1C: nop                                     ; 9C1C
        nop                                     ; 9C1D
        nop                                     ; 9C1E
        lda     #$00                            ; 9C1F
        beq     L_9C5B                          ; 9C21
L9C23:  nop                                     ; 9C23
        nop                                     ; 9C24
        nop                                     ; 9C25
        lda     #$01                            ; 9C26
        bne     L_9C5B                          ; 9C28
L9C2A:  nop                                     ; 9C2A
        nop                                     ; 9C2B
        nop                                     ; 9C2C
        lda     #$02                            ; 9C2D
        bne     L_9C5B                          ; 9C2F
L9C31:  nop                                     ; 9C31
        nop                                     ; 9C32
        nop                                     ; 9C33
        lda     #$03                            ; 9C34
        bne     L_9C5B                          ; 9C36
L9C38:  nop                                     ; 9C38
        nop                                     ; 9C39
        nop                                     ; 9C3A
        lda     #$04                            ; 9C3B
        bne     L_9C5B                          ; 9C3D
L9C3F:  nop                                     ; 9C3F
        nop                                     ; 9C40
        nop                                     ; 9C41
        lda     #$05                            ; 9C42
        bne     L_9C5B                          ; 9C44
L9C46:  nop                                     ; 9C46
        nop                                     ; 9C47
        nop                                     ; 9C48
        lda     #$06                            ; 9C49
        bne     L_9C5B                          ; 9C4B
L9C4D:  nop                                     ; 9C4D
        nop                                     ; 9C4E
        nop                                     ; 9C4F
        lda     #$07                            ; 9C50
        bne     L_9C5B                          ; 9C52
L9C54:  nop                                     ; 9C54
        nop                                     ; 9C55
        nop                                     ; 9C56
        lda     #$08                            ; 9C57
        bne     L_9C5B                          ; 9C59
L_9C5B: sta     $50                             ; 9C5B
        lda     #$35                            ; 9C5D
        sta     LoadedObj_Type                  ; 9C5F
        lda     #$FF                            ; 9C61
        sta     $51                             ; 9C63
        jmp     LD2B9                           ; 9C65

; ----------------------------------------------------------------------------
L9C68:  jmp     L_9C7D                          ; 9C68

; ----------------------------------------------------------------------------
        jsr     LD2AB                           ; 9C6B
        bmi     L_9CBC                          ; 9C6E
        lda     $11                             ; 9C70
        and     #$03                            ; 9C72
        bne     L_9C7D                          ; 9C74
        dec     $51                             ; 9C76
        bne     L_9C7D                          ; 9C78
        jmp     L_9D09                          ; 9C7A

; ----------------------------------------------------------------------------
L_9C7D: jsr     LD2AB                           ; 9C7D
        bmi     L_9CBC                          ; 9C80
        lda     #$10                            ; 9C82
        sta     $40                             ; 9C84
        lda     #$10                            ; 9C86
        sta     $41                             ; 9C88
        jsr     LEF2B                           ; 9C8A
        beq     L_9C92                          ; 9C8D
        jmp     LD7F8                           ; 9C8F

; ----------------------------------------------------------------------------
L_9C92: lda     #$00                            ; 9C92
        jsr     LD71F                           ; 9C94
        beq     L_9CBD                          ; 9C97
        lda     $51                             ; 9C99
        cmp     #$20                            ; 9C9B
        bcs     L_9CA4                          ; 9C9D
        lda     $10                             ; 9C9F
        lsr     a                               ; 9CA1
        bcs     L_9CBC                          ; 9CA2
L_9CA4: ldx     $50                             ; 9CA4
        lda     L9D0C,x                         ; 9CA6
        sta     $45                             ; 9CA9
        lda     L9D15,x                         ; 9CAB
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
L_9CBD: lda     L9D1E                           ; 9CBD
        sta     $7A                             ; 9CC0
        lda     L9D1E+1                         ; 9CC2
        sta     $7B                             ; 9CC5
        lda     $50                             ; 9CC7
        jsr     LEB51                           ; 9CC9
        lda     ($7A),y                         ; 9CCC
        ldx     $50                             ; 9CCE
        clc                                     ; 9CD0
        adc     L9D32,x                         ; 9CD1
        bcc     L_9CD8                          ; 9CD4
        lda     #$FF                            ; 9CD6
L_9CD8: sta     ($7A),y                         ; 9CD8
        ldx     #$02                            ; 9CDA
L_9CDC: lda     $06F0,x                         ; 9CDC
        cmp     #$64                            ; 9CDF
        bcc     L_9CE8                          ; 9CE1
        lda     #$63                            ; 9CE3
        sta     $06F0,x                         ; 9CE5
L_9CE8: dex                                     ; 9CE8
        bpl     L_9CDC                          ; 9CE9
        lda     $50                             ; 9CEB
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
L_9D09: jmp     LD804                           ; 9D09

; ----------------------------------------------------------------------------
L9D0C:  .byte   $60,$60,$6A,$6A,$62,$62,$64,$68 ; 9D0C
        .byte   $66                             ; 9D14
L9D15:  .byte   $01,$04,$01,$04,$01,$04,$01,$01 ; 9D15
        .byte   $01                             ; 9D1D
; ----------------------------------------------------------------------------
L9D1E:  .addr   L9D20                           ; 9D1E
; ----------------------------------------------------------------------------
L9D20:  .byte   $0D,$04,$0D,$04,$C3,$00,$C3,$00 ; 9D20
        .byte   $92,$00,$92,$00,$F0,$06,$F1,$06 ; 9D28
        .byte   $F2,$06                         ; 9D30
L9D32:  .byte   $20,$80,$20,$80,$20,$80,$14,$14 ; 9D32
        .byte   $14                             ; 9D3A
.endmacro

