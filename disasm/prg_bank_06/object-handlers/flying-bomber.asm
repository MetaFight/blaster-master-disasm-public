.macro MAC_L_AC3C
; ----------------------------------------------------------------------------
L_AC3C: jmp     L_AC62                          ; AC3C

; ----------------------------------------------------------------------------
        lda     #$0B                            ; AC3F
        jsr     L_A2E9                          ; AC41
        jsr     LE0ED                           ; AC44
        and     #$80                            ; AC47
        sta     $47                             ; AC49
        bpl     L_AC51                          ; AC4B
        lda     #$10                            ; AC4D
        bne     L_AC53                          ; AC4F
L_AC51: lda     #$F0                            ; AC51
L_AC53: sta     $52                             ; AC53
        lda     #$00                            ; AC55
        sta     $50                             ; AC57
        lda     #$00                            ; AC59
        sta     $51                             ; AC5B
        ldy     #$28                            ; AC5D
        jsr     LE1BD                           ; AC5F
L_AC62: rts                                     ; AC62

; ----------------------------------------------------------------------------
LAC63:  jmp     L_ACD0                          ; AC63

; ----------------------------------------------------------------------------
        lda     #$80                            ; AC66
        sta     $42                             ; AC68
        lda     #$80                            ; AC6A
        sta     $43                             ; AC6C
        lda     $51                             ; AC6E
        beq     L_AC74                          ; AC70
        dec     $51                             ; AC72
L_AC74: lda     $50                             ; AC74
        beq     L_AC8E                          ; AC76
        jsr     LE07B                           ; AC78
        asl     a                               ; AC7B
        asl     a                               ; AC7C
        bne     L_AC83                          ; AC7D
        lda     #$00                            ; AC7F
        sta     $50                             ; AC81
L_AC83: ldy     #$28                            ; AC83
        jsr     LE1BD                           ; AC85
        jsr     LE083                           ; AC88
        jmp     L_ACD0                          ; AC8B

; ----------------------------------------------------------------------------
L_AC8E: jsr     LE0ED                           ; AC8E
        bpl     L_AC98                          ; AC91
        eor     #$FF                            ; AC93
        clc                                     ; AC95
        adc     #$01                            ; AC96
L_AC98: cmp     #$01                            ; AC98
        bcs     L_ACC3                          ; AC9A
        lda     $51                             ; AC9C
        bne     L_ACC3                          ; AC9E
        lda     #$38                            ; ACA0
        sta     $A0                             ; ACA2
        jsr     LDF46                           ; ACA4
        lda     $52                             ; ACA7
        bpl     L_ACB0                          ; ACA9
        eor     #$FF                            ; ACAB
        clc                                     ; ACAD
        adc     #$01                            ; ACAE
L_ACB0: ldx     LoadedObj_XVel                  ; ACB0
        bmi     L_ACBB                          ; ACB2
        eor     #$FF                            ; ACB4
        clc                                     ; ACB6
        adc     #$01                            ; ACB7
        sta     $52                             ; ACB9
L_ACBB: lda     #$40                            ; ACBB
        sta     $51                             ; ACBD
        lda     #$01                            ; ACBF
        sta     $50                             ; ACC1
L_ACC3: jsr     LE083                           ; ACC3
        bpl     L_ACD0                          ; ACC6
        jsr     LE0D8                           ; ACC8
        ldy     #$28                            ; ACCB
        jsr     LE1BD                           ; ACCD
L_ACD0: lda     #$10                            ; ACD0
        sta     $40                             ; ACD2
        lda     #$10                            ; ACD4
        sta     $41                             ; ACD6
        jsr     LEF2B                           ; ACD8
        beq     L_ACE0                          ; ACDB
        jmp     LD804                           ; ACDD

; ----------------------------------------------------------------------------
L_ACE0: lda     #$0B                            ; ACE0
        jsr     L_A30A                          ; ACE2
        beq     L_ACEA                          ; ACE5
        jmp     L_A34D                          ; ACE7

; ----------------------------------------------------------------------------
L_ACEA: lda     #$01                            ; ACEA
        jsr     LE04E                           ; ACEC
        ldx     #$2F                            ; ACEF
        lda     $50                             ; ACF1
        beq     L_ACF6                          ; ACF3
        inx                                     ; ACF5
L_ACF6: txa                                     ; ACF6
        jmp     LF011                           ; ACF7

; ----------------------------------------------------------------------------
        rts                                     ; ACFA

.endmacro

