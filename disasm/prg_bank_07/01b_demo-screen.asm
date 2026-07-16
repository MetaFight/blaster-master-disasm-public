.macro MAC_L_C2DB
; ----------------------------------------------------------------------------
L_C2DB: jsr     L_DEC2                          ; C2DB
        inc     $06F4                           ; C2DE
        lda     $06F4                           ; C2E1
        and     #$03                            ; C2E4
        sta     $06F4                           ; C2E6
        tax                                     ; C2E9
        lda     LC2F7,x                         ; C2EA
        sta     $14                             ; C2ED
        lda     #$83                            ; C2EF
        sta     $06F3                           ; C2F1
        jmp     L_C301                          ; C2F4

; ----------------------------------------------------------------------------
LC2F7:  .byte   $08,$01,$0A,$03                 ; C2F7
.endmacro

.macro MAC_L_E243
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
        jsr     L_EA3A                          ; E259
        lda     $06F4                           ; E25C
        and     #$03                            ; E25F
        jsr     L_EB51                          ; E261
        lda     L007A                           ; E264
        sta     $CE                             ; E266
        lda     $7B                             ; E268
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

.endmacro

.macro MAC_L_E2C1
; ----------------------------------------------------------------------------
L_E2C1: lda     #$02                            ; E2C1
        jsr     L_E61B                          ; E2C3
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
L_E302: lda     $D3                             ; E302
        jsr     L_E61B                          ; E304
        rts                                     ; E307

; ----------------------------------------------------------------------------
L_E308: rts                                     ; E308

.endmacro

