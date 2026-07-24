.macro MAC_L_ACFB
; ----------------------------------------------------------------------------
L_ACFB: jmp     L_AD07                          ; ACFB

; ----------------------------------------------------------------------------
        lda     #$0C                            ; ACFE
        jsr     L_A2E9                          ; AD00
        lda     #$00                            ; AD03
        sta     $50                             ; AD05
L_AD07: rts                                     ; AD07

; ----------------------------------------------------------------------------
LAD08:  jmp     L_ADA9                          ; AD08

; ----------------------------------------------------------------------------
        lda     #$80                            ; AD0B
        sta     $42                             ; AD0D
        lda     #$80                            ; AD0F
        sta     $43                             ; AD11
        lda     $50                             ; AD13
        bne     L_AD4A                          ; AD15
        jsr     LE0FA                           ; AD17
        bpl     L_AD1F                          ; AD1A
        jmp     L_ADA9                          ; AD1C

; ----------------------------------------------------------------------------
L_AD1F: jsr     LE0ED                           ; AD1F
        tax                                     ; AD22
        bpl     L_AD2A                          ; AD23
        eor     #$FF                            ; AD25
        clc                                     ; AD27
        adc     #$01                            ; AD28
L_AD2A: cmp     #$03                            ; AD2A
        bcc     L_AD31                          ; AD2C
        jmp     L_ADA9                          ; AD2E

; ----------------------------------------------------------------------------
L_AD31: jsr     LEB71                           ; AD31
        and     #$1F                            ; AD34
        bne     L_ADA9                          ; AD36
        txa                                     ; AD38
        bpl     L_AD40                          ; AD39
        lda     #$02                            ; AD3B
        jmp     L_AD42                          ; AD3D

; ----------------------------------------------------------------------------
L_AD40: lda     #$FE                            ; AD40
L_AD42: sta     $52                             ; AD42
        lda     #$40                            ; AD44
        sta     $47                             ; AD46
        inc     $50                             ; AD48
L_AD4A: jsr     LE07B                           ; AD4A
        and     #$7F                            ; AD4D
        bne     L_AD65                          ; AD4F
        lda     $47                             ; AD51
        eor     $52                             ; AD53
        bpl     L_AD65                          ; AD55
        jsr     LEB71                           ; AD57
        bmi     L_AD61                          ; AD5A
        lda     #$01                            ; AD5C
        jmp     L_AD63                          ; AD5E

; ----------------------------------------------------------------------------
L_AD61: lda     #$02                            ; AD61
L_AD63: sta     $50                             ; AD63
L_AD65: lda     $47                             ; AD65
        ldy     #$24                            ; AD67
        jsr     LE1B1                           ; AD69
        sta     LoadedObj_XVel                  ; AD6C
        lda     #$24                            ; AD6E
        ldx     $50                             ; AD70
        cpx     #$02                            ; AD72
        beq     L_AD7A                          ; AD74
        asl     a                               ; AD76
        clc                                     ; AD77
        adc     #$02                            ; AD78
L_AD7A: tay                                     ; AD7A
        lda     $47                             ; AD7B
        jsr     LE1B7                           ; AD7D
        sta     LoadedObj_YVel                  ; AD80
        jsr     LE0ED                           ; AD82
        bmi     L_AD8C                          ; AD85
        lda     #$04                            ; AD87
        jmp     L_AD8E                          ; AD89

; ----------------------------------------------------------------------------
L_AD8C: lda     #$FC                            ; AD8C
L_AD8E: clc                                     ; AD8E
        adc     LoadedObj_XVel                  ; AD8F
        sta     LoadedObj_XVel                  ; AD91
        jsr     LD2DE                           ; AD93
        jsr     LD37D                           ; AD96
        jsr     LD2FE                           ; AD99
        jsr     LD3E1                           ; AD9C
        beq     L_ADA9                          ; AD9F
        lda     LoadedObj_YVel                  ; ADA1
        bpl     L_ADA9                          ; ADA3
        lda     #$00                            ; ADA5
        sta     $50                             ; ADA7
L_ADA9: lda     #$10                            ; ADA9
        sta     $40                             ; ADAB
        lda     #$10                            ; ADAD
        sta     $41                             ; ADAF
        jsr     LEF2B                           ; ADB1
        beq     L_ADB9                          ; ADB4
        jmp     LD7F8                           ; ADB6

; ----------------------------------------------------------------------------
L_ADB9: lda     #$0C                            ; ADB9
        jsr     L_A30A                          ; ADBB
        beq     L_ADC3                          ; ADBE
        jmp     L_A34D                          ; ADC0

; ----------------------------------------------------------------------------
L_ADC3: jsr     LE0ED                           ; ADC3
        bmi     L_ADCD                          ; ADC6
        lda     #$01                            ; ADC8
        jmp     L_ADCF                          ; ADCA

; ----------------------------------------------------------------------------
L_ADCD: lda     #$41                            ; ADCD
L_ADCF: sta     $44                             ; ADCF
        lda     $11                             ; ADD1
        lsr     a                               ; ADD3
        lsr     a                               ; ADD4
        lsr     a                               ; ADD5
        and     #$03                            ; ADD6
        tax                                     ; ADD8
        lda     LADE0,x                         ; ADD9
        jmp     LF011                           ; ADDC

; ----------------------------------------------------------------------------
        rts                                     ; ADDF

; ----------------------------------------------------------------------------
LADE0:  .byte   $05,$06,$07,$06                 ; ADE0
.endmacro

