.macro MAC_L_AB13
; ----------------------------------------------------------------------------
L_AB13: jmp     L_AB23                          ; AB13

; ----------------------------------------------------------------------------
        lda     #$09                            ; AB16
        jsr     L_A2E9                          ; AB18
        lda     #$00                            ; AB1B
        sta     LoadedObj_XVel                  ; AB1D
        sta     LoadedObj_YVel                  ; AB1F
        sta     $50                             ; AB21
L_AB23: rts                                     ; AB23

; ----------------------------------------------------------------------------
LAB24:  jmp     L_ABA4                          ; AB24

; ----------------------------------------------------------------------------
        lda     #$80                            ; AB27
        sta     $42                             ; AB29
        lda     #$80                            ; AB2B
        sta     $43                             ; AB2D
        lda     $50                             ; AB2F
        bmi     L_AB56                          ; AB31
        jsr     LE0FA                           ; AB33
        bpl     L_AB3D                          ; AB36
        eor     #$FF                            ; AB38
        clc                                     ; AB3A
        adc     #$01                            ; AB3B
L_AB3D: cmp     #$04                            ; AB3D
        bcs     L_AB9E                          ; AB3F
        jsr     LE0ED                           ; AB41
        bpl     L_AB4B                          ; AB44
        eor     #$FF                            ; AB46
        clc                                     ; AB48
        adc     #$01                            ; AB49
L_AB4B: cmp     #$03                            ; AB4B
        bcs     L_AB9E                          ; AB4D
        lda     #$80                            ; AB4F
        sta     $50                             ; AB51
        jmp     L_AB9E                          ; AB53

; ----------------------------------------------------------------------------
L_AB56: and     #$01                            ; AB56
        cmp     #$01                            ; AB58
        beq     L_AB6E                          ; AB5A
        lda     #$02                            ; AB5C
        jsr     LDFA0                           ; AB5E
        and     #$40                            ; AB61
        beq     L_ABA4                          ; AB63
        lda     #$00                            ; AB65
        sta     LoadedObj_YVel                  ; AB67
        inc     $50                             ; AB69
        jmp     L_AB9E                          ; AB6B

; ----------------------------------------------------------------------------
L_AB6E: jsr     LE0FA                           ; AB6E
        bpl     L_AB78                          ; AB71
        eor     #$FF                            ; AB73
        clc                                     ; AB75
        adc     #$01                            ; AB76
L_AB78: cmp     #$04                            ; AB78
        bcs     L_AB9E                          ; AB7A
        jsr     LE0ED                           ; AB7C
        bpl     L_AB86                          ; AB7F
        eor     #$FF                            ; AB81
        clc                                     ; AB83
        adc     #$01                            ; AB84
L_AB86: cmp     #$08                            ; AB86
        bcs     L_AB9E                          ; AB88
        lda     $11                             ; AB8A
        and     #$1F                            ; AB8C
        bne     L_AB97                          ; AB8E
        lda     #$38                            ; AB90
        sta     $A0                             ; AB92
        jsr     LDF46                           ; AB94
L_AB97: lda     $50                             ; AB97
        and     #$BF                            ; AB99
        jmp     L_ABA2                          ; AB9B

; ----------------------------------------------------------------------------
L_AB9E: lda     $50                             ; AB9E
        ora     #$40                            ; ABA0
L_ABA2: sta     $50                             ; ABA2
L_ABA4: lda     #$10                            ; ABA4
        sta     $40                             ; ABA6
        lda     #$10                            ; ABA8
        sta     $41                             ; ABAA
        jsr     LEF2B                           ; ABAC
        beq     L_ABB4                          ; ABAF
        jmp     LD7F8                           ; ABB1

; ----------------------------------------------------------------------------
L_ABB4: lda     #$09                            ; ABB4
        jsr     L_A30A                          ; ABB6
        beq     L_ABBE                          ; ABB9
        jmp     L_A34D                          ; ABBB

; ----------------------------------------------------------------------------
L_ABBE: lda     #$41                            ; ABBE
        sta     $44                             ; ABC0
        ldx     #$74                            ; ABC2
        lda     $50                             ; ABC4
        and     #$40                            ; ABC6
        beq     L_ABCB                          ; ABC8
        inx                                     ; ABCA
L_ABCB: txa                                     ; ABCB
        jmp     LF011                           ; ABCC

.endmacro

