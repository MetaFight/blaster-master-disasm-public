.macro MAC_L_ADE4
; ----------------------------------------------------------------------------
L_ADE4: jmp     L_ADFE                          ; ADE4

; ----------------------------------------------------------------------------
        lda     #$0D                            ; ADE7
        jsr     L_A2E9                          ; ADE9
        lda     #$B8                            ; ADEC
        sta     $47                             ; ADEE
        lda     #$08                            ; ADF0
        sta     LoadedObject_YVel               ; ADF2
        lda     #$00                            ; ADF4
        sta     LoadedObject_XVel               ; ADF6
        sta     $50                             ; ADF8
        lda     #$40                            ; ADFA
        sta     $51                             ; ADFC
L_ADFE: rts                                     ; ADFE

; ----------------------------------------------------------------------------
LADFF:  jmp     L_AE49                          ; ADFF

; ----------------------------------------------------------------------------
        lda     #$80                            ; AE02
        sta     $42                             ; AE04
        lda     #$80                            ; AE06
        sta     $43                             ; AE08
        lda     $50                             ; AE0A
        bne     L_AE2F                          ; AE0C
        lda     $11                             ; AE0E
        and     #$07                            ; AE10
        bne     L_AE19                          ; AE12
        lda     #$45                            ; AE14
        jsr     Enqueue_Sound_Command           ; AE16
L_AE19: jsr     LDF68                           ; AE19
        bpl     L_AE21                          ; AE1C
        jsr     LE0D8                           ; AE1E
L_AE21: dec     $51                             ; AE21
        bne     L_AE49                          ; AE23
        inc     $50                             ; AE25
        ldy     #$1D                            ; AE27
        jsr     LE1BD                           ; AE29
        jmp     L_AE49                          ; AE2C

; ----------------------------------------------------------------------------
L_AE2F: lda     #$02                            ; AE2F
        jsr     LDFA0                           ; AE31
        bpl     L_AE39                          ; AE34
        jsr     LE0D8                           ; AE36
L_AE39: lda     LoadedObject_YVel               ; AE39
        cmp     #$04                            ; AE3B
        bcs     L_AE49                          ; AE3D
        lda     #$04                            ; AE3F
        sta     LoadedObject_YVel               ; AE41
        dec     $50                             ; AE43
        lda     #$40                            ; AE45
        sta     $51                             ; AE47
L_AE49: lda     #$10                            ; AE49
        sta     $40                             ; AE4B
        lda     #$10                            ; AE4D
        sta     $41                             ; AE4F
        jsr     LEF2B                           ; AE51
        beq     L_AE59                          ; AE54
        jmp     LD7F8                           ; AE56

; ----------------------------------------------------------------------------
L_AE59: lda     #$0D                            ; AE59
        jsr     L_A30A                          ; AE5B
        beq     L_AE63                          ; AE5E
        jmp     L_A34D                          ; AE60

; ----------------------------------------------------------------------------
L_AE63: lda     #$01                            ; AE63
        jsr     LE04E                           ; AE65
        lda     $11                             ; AE68
        ldx     #$02                            ; AE6A
        jsr     LE060                           ; AE6C
        and     #$01                            ; AE6F
        clc                                     ; AE71
        adc     #$76                            ; AE72
        jmp     LF011                           ; AE74

; ----------------------------------------------------------------------------
        rts                                     ; AE77

.endmacro

