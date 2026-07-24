.macro MAC_L_AE78
; ----------------------------------------------------------------------------
L_AE78: jmp     L_AE94                          ; AE78

; ----------------------------------------------------------------------------
        lda     #$0E                            ; AE7B
        jsr     L_A2E9                          ; AE7D
        jsr     LEB71                           ; AE80
        and     #$80                            ; AE83
        sta     $47                             ; AE85
        ldy     #$10                            ; AE87
        jsr     LE1BD                           ; AE89
        lda     #$00                            ; AE8C
        sta     $50                             ; AE8E
        lda     #$10                            ; AE90
        sta     $52                             ; AE92
L_AE94: rts                                     ; AE94

; ----------------------------------------------------------------------------
LAE95:  jmp     L_AF03                          ; AE95

; ----------------------------------------------------------------------------
        lda     #$80                            ; AE98
        sta     $42                             ; AE9A
        lda     #$80                            ; AE9C
        sta     $43                             ; AE9E
        lda     $50                             ; AEA0
        bne     L_AEDC                          ; AEA2
        jsr     LD2DE                           ; AEA4
        jsr     LD37D                           ; AEA7
        beq     L_AEB3                          ; AEAA
        lda     #$02                            ; AEAC
        sta     $50                             ; AEAE
        jmp     L_AF03                          ; AEB0

; ----------------------------------------------------------------------------
L_AEB3: lda     $11                             ; AEB3
        cmp     LoadedObject_Type               ; AEB5
        bne     L_AF03                          ; AEB7
        jsr     LEB71                           ; AEB9
        bcc     L_AF03                          ; AEBC
        lda     #$08                            ; AEBE
        sta     LoadedObject_YVel               ; AEC0
        jsr     LEB71                           ; AEC2
        bmi     L_AED5                          ; AEC5
        lda     #$00                            ; AEC7
        sec                                     ; AEC9
        sbc     $52                             ; AECA
        sta     $52                             ; AECC
        lda     #$00                            ; AECE
        sec                                     ; AED0
        sbc     LoadedObject_YVel               ; AED1
        sta     LoadedObject_YVel               ; AED3
L_AED5: lda     #$01                            ; AED5
        sta     $50                             ; AED7
        jmp     L_AF03                          ; AED9

; ----------------------------------------------------------------------------
L_AEDC: cmp     #$01                            ; AEDC
        bne     L_AEE6                          ; AEDE
        jsr     LD2FE                           ; AEE0
        jsr     LD3E1                           ; AEE3
L_AEE6: jsr     LE07B                           ; AEE6
        and     #$7F                            ; AEE9
        bne     L_AF03                          ; AEEB
        lda     $50                             ; AEED
        cmp     #$02                            ; AEEF
        beq     L_AEFA                          ; AEF1
        jsr     LEB71                           ; AEF3
        and     #$03                            ; AEF6
        bne     L_AF03                          ; AEF8
L_AEFA: lda     #$00                            ; AEFA
        sta     $50                             ; AEFC
        ldy     #$10                            ; AEFE
        jsr     LE1BD                           ; AF00
L_AF03: lda     #$10                            ; AF03
        sta     $40                             ; AF05
        lda     #$10                            ; AF07
        sta     $41                             ; AF09
        jsr     LEF2B                           ; AF0B
        beq     L_AF13                          ; AF0E
        jmp     LD7F8                           ; AF10

; ----------------------------------------------------------------------------
L_AF13: lda     #$0E                            ; AF13
        jsr     L_A30A                          ; AF15
        beq     L_AF1D                          ; AF18
        jmp     L_A34D                          ; AF1A

; ----------------------------------------------------------------------------
L_AF1D: lda     #$01                            ; AF1D
        sta     $44                             ; AF1F
        lda     $47                             ; AF21
        ldx     #$05                            ; AF23
        jsr     LE060                           ; AF25
        and     #$07                            ; AF28
        tax                                     ; AF2A
        lda     LAF32,x                         ; AF2B
        jmp     LF011                           ; AF2E

; ----------------------------------------------------------------------------
        rts                                     ; AF31

; ----------------------------------------------------------------------------
LAF32:  .byte   $86,$87,$80,$81,$82,$83,$84,$85 ; AF32
.endmacro

