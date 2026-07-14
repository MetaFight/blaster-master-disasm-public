.macro MAC_L_A670
L_A670: sty     $05                             ; A670
        jsr     LE083                           ; A672
        lda     $51                             ; A675
        beq     L_A6AD                          ; A677
        dec     $51                             ; A679
        bne     L_A683                          ; A67B
        lda     $9A                             ; A67D
        beq     L_A6BC                          ; A67F
        bne     L_A6B9                          ; A681
L_A683: and     #$03                            ; A683
        bne     L_A6B9                          ; A685
        lda     $9A                             ; A687
        ldx     $50                             ; A689
        bpl     L_A68F                          ; A68B
        eor     #$C0                            ; A68D
L_A68F: tax                                     ; A68F
        lda     $47                             ; A690
        cpx     #$00                            ; A692
        bne     L_A69C                          ; A694
        sec                                     ; A696
        sbc     #$40                            ; A697
        jmp     L_A6A3                          ; A699

; ----------------------------------------------------------------------------
L_A69C: cpx     #$C0                            ; A69C
        bne     L_A6B9                          ; A69E
        clc                                     ; A6A0
        adc     #$40                            ; A6A1
L_A6A3: sta     $47                             ; A6A3
        ldy     $05                             ; A6A5
        jsr     LE1BD                           ; A6A7
        jmp     L_A6B9                          ; A6AA

; ----------------------------------------------------------------------------
L_A6AD: lda     $9A                             ; A6AD
        bpl     L_A6B3                          ; A6AF
        eor     #$C0                            ; A6B1
L_A6B3: bne     L_A6B9                          ; A6B3
        lda     #$08                            ; A6B5
        sta     $51                             ; A6B7
L_A6B9: lda     #$FF                            ; A6B9
        rts                                     ; A6BB

; ----------------------------------------------------------------------------
L_A6BC: lda     #$00                            ; A6BC
        rts                                     ; A6BE

; ----------------------------------------------------------------------------
.endmacro

