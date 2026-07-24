.macro MAC_L_89BE
; ----------------------------------------------------------------------------
L_89BE: lda     $1C                             ; 89BE
        clc                                     ; 89C0
        adc     #$20                            ; 89C1
        and     #$C0                            ; 89C3
        sta     $1C                             ; 89C5
        lda     $1E                             ; 89C7
        clc                                     ; 89C9
        adc     #$20                            ; 89CA
        and     #$C0                            ; 89CC
        sta     $1E                             ; 89CE
        lda     #$00                            ; 89D0
        sta     $94                             ; 89D2
        sta     $51                             ; 89D4
        sta     $D9                             ; 89D6
        lda     #$10                            ; 89D8
        ldx     $47                             ; 89DA
        bmi     L_89E0                          ; 89DC
        lda     #$0D                            ; 89DE
L_89E0: sta     LoadedObj_Type                  ; 89E0
        jmp     L_94FC                          ; 89E2

; ----------------------------------------------------------------------------
L89E5:  jmp     L_8A09                          ; 89E5

; ----------------------------------------------------------------------------
        inc     $51                             ; 89E8
        lda     $51                             ; 89EA
        cmp     #$25                            ; 89EC
        bne     L_8A09                          ; 89EE
        clc                                     ; 89F0
        lda     LoadedObj_X_Pixel               ; 89F1
        adc     #$80                            ; 89F3
        sta     LoadedObj_X_Pixel               ; 89F5
        lda     LoadedObj_X_MetaTile            ; 89F7
        adc     #$09                            ; 89F9
        sta     LoadedObj_X_MetaTile            ; 89FB
        lda     $4E                             ; 89FD
        clc                                     ; 89FF
        adc     #$09                            ; 8A00
        sta     $4E                             ; 8A02
        inc     LoadedObj_Type                  ; 8A04
        jmp     L_8A12                          ; 8A06

; ----------------------------------------------------------------------------
L_8A09: jsr     LD790                           ; 8A09
        jmp     L_8AB2                          ; 8A0C

; ----------------------------------------------------------------------------
L8A0F:  jmp     L_8A1C                          ; 8A0F

; ----------------------------------------------------------------------------
L_8A12: jsr     LCD28                           ; 8A12
        bne     L_8A19                          ; 8A15
        inc     LoadedObj_Type                  ; 8A17
L_8A19: jmp     LD1AD                           ; 8A19

; ----------------------------------------------------------------------------
L_8A1C: rts                                     ; 8A1C

; ----------------------------------------------------------------------------
L8A1D:  jmp     L_8A2B                          ; 8A1D

; ----------------------------------------------------------------------------
        dec     $51                             ; 8A20
        bne     L_8A2B                          ; 8A22
        lda     #$03                            ; 8A24
        sta     LoadedObj_Type                  ; 8A26
        jsr     LC5B2                           ; 8A28
L_8A2B: jmp     L_8A77                          ; 8A2B

; ----------------------------------------------------------------------------
L8A2E:  jmp     L_8A52                          ; 8A2E

; ----------------------------------------------------------------------------
        inc     $51                             ; 8A31
        lda     $51                             ; 8A33
        cmp     #$25                            ; 8A35
        bne     L_8A52                          ; 8A37
        sec                                     ; 8A39
        lda     LoadedObj_X_Pixel               ; 8A3A
        sbc     #$80                            ; 8A3C
        sta     LoadedObj_X_Pixel               ; 8A3E
        lda     LoadedObj_X_MetaTile            ; 8A40
        sbc     #$09                            ; 8A42
        sta     LoadedObj_X_MetaTile            ; 8A44
        lda     $4E                             ; 8A46
        sec                                     ; 8A48
        sbc     #$09                            ; 8A49
        sta     $4E                             ; 8A4B
        inc     LoadedObj_Type                  ; 8A4D
        jmp     L_8A5B                          ; 8A4F

; ----------------------------------------------------------------------------
L_8A52: jsr     LD790                           ; 8A52
        jmp     L_8A77                          ; 8A55

; ----------------------------------------------------------------------------
L8A58:  jmp     L_8A65                          ; 8A58

; ----------------------------------------------------------------------------
L_8A5B: jsr     LCD28                           ; 8A5B
        bne     L_8A62                          ; 8A5E
        inc     LoadedObj_Type                  ; 8A60
L_8A62: jmp     LD1AD                           ; 8A62

; ----------------------------------------------------------------------------
L_8A65: rts                                     ; 8A65

; ----------------------------------------------------------------------------
L8A66:  jmp     L_8A74                          ; 8A66

; ----------------------------------------------------------------------------
        dec     $51                             ; 8A69
        bne     L_8A74                          ; 8A6B
        lda     #$03                            ; 8A6D
        sta     LoadedObj_Type                  ; 8A6F
        jsr     LC5B2                           ; 8A71
L_8A74: jmp     L_8AB2                          ; 8A74

; ----------------------------------------------------------------------------
L_8A77: lda     #$18                            ; 8A77
        sta     $40                             ; 8A79
        lda     #$10                            ; 8A7B
        sta     $41                             ; 8A7D
        jsr     LEF2B                           ; 8A7F
        lda     $3F                             ; 8A82
        pha                                     ; 8A84
        lda     $3E                             ; 8A85
        pha                                     ; 8A87
        lda     $3E                             ; 8A88
        sec                                     ; 8A8A
        sbc     #$30                            ; 8A8B
        sta     $3E                             ; 8A8D
        lda     $4F                             ; 8A8F
        pha                                     ; 8A91
        lda     #$00                            ; 8A92
        sta     $4F                             ; 8A94
        lda     #$00                            ; 8A96
        sta     $44                             ; 8A98
        lda     #$31                            ; 8A9A
        jsr     LF011                           ; 8A9C
        pla                                     ; 8A9F
        sta     $4F                             ; 8AA0
        pla                                     ; 8AA2
        sta     $3E                             ; 8AA3
        pla                                     ; 8AA5
        sta     $3F                             ; 8AA6
        lda     $3E                             ; 8AA8
        sec                                     ; 8AAA
        sbc     $51                             ; 8AAB
        sta     $3E                             ; 8AAD
        jmp     L_950D                          ; 8AAF

; ----------------------------------------------------------------------------
L_8AB2: lda     #$18                            ; 8AB2
        sta     $40                             ; 8AB4
        lda     #$10                            ; 8AB6
        sta     $41                             ; 8AB8
        jsr     LEF2B                           ; 8ABA
        lda     $3F                             ; 8ABD
        pha                                     ; 8ABF
        lda     $3E                             ; 8AC0
        pha                                     ; 8AC2
        lda     $3E                             ; 8AC3
        clc                                     ; 8AC5
        adc     #$20                            ; 8AC6
        sta     $3E                             ; 8AC8
        lda     $4F                             ; 8ACA
        pha                                     ; 8ACC
        lda     #$00                            ; 8ACD
        sta     $4F                             ; 8ACF
        lda     #$00                            ; 8AD1
        sta     $44                             ; 8AD3
        lda     #$31                            ; 8AD5
        jsr     LF011                           ; 8AD7
        pla                                     ; 8ADA
        sta     $4F                             ; 8ADB
        pla                                     ; 8ADD
        sta     $3E                             ; 8ADE
        pla                                     ; 8AE0
        sta     $3F                             ; 8AE1
        lda     $3E                             ; 8AE3
        clc                                     ; 8AE5
        adc     $51                             ; 8AE6
        sta     $3E                             ; 8AE8
        jmp     L_950D                          ; 8AEA

; ----------------------------------------------------------------------------
L_8AED: jsr     LD790                           ; 8AED
        lda     #$00                            ; 8AF0
        sta     $51                             ; 8AF2
        lda     #$09                            ; 8AF4
        sta     LoadedObj_Type                  ; 8AF6
L8AF8:  jmp     L_8B0E                          ; 8AF8

; ----------------------------------------------------------------------------
        lda     #$3A                            ; 8AFB
        sta     $45                             ; 8AFD
        lda     L8B13                           ; 8AFF
        sta     $7A                             ; 8B02
        lda     L8B13+1                         ; 8B04
        sta     $7B                             ; 8B07
        ldy     #$00                            ; 8B09
        jsr     L_8BE5                          ; 8B0B
L_8B0E: lda     #$3A                            ; 8B0E
        jmp     L_8C4D                          ; 8B10

; ----------------------------------------------------------------------------
L8B13:  .addr   L8B15                           ; 8B13
; ----------------------------------------------------------------------------
L8B15:  .byte   $20,$20,$30,$20,$20,$10,$00,$00 ; 8B15
        .byte   $00,$00,$10,$20,$20,$30,$20,$20 ; 8B1D
        .byte   $05,$06,$05,$06,$00,$18         ; 8B25
; ----------------------------------------------------------------------------
L_8B2B: jsr     LD790                           ; 8B2B
        lda     #$00                            ; 8B2E
        sta     $51                             ; 8B30
        lda     #$0A                            ; 8B32
        sta     LoadedObj_Type                  ; 8B34
L8B36:  jmp     L_8B4C                          ; 8B36

; ----------------------------------------------------------------------------
        lda     #$43                            ; 8B39
        sta     $45                             ; 8B3B
        lda     L8B51                           ; 8B3D
        sta     $7A                             ; 8B40
        lda     L8B51+1                         ; 8B42
        sta     $7B                             ; 8B45
        ldy     #$00                            ; 8B47
        jsr     L_8BE5                          ; 8B49
L_8B4C: lda     #$43                            ; 8B4C
        jmp     L_8C4D                          ; 8B4E

; ----------------------------------------------------------------------------
L8B51:  .addr   L8B53                           ; 8B51
; ----------------------------------------------------------------------------
L8B53:  .byte   $00,$00,$10,$20,$20,$30,$20,$20 ; 8B53
        .byte   $E0,$E0,$D0,$E0,$E0,$F0,$00,$00 ; 8B5B
        .byte   $03,$03,$07,$07,$18,$00         ; 8B63
; ----------------------------------------------------------------------------
L_8B69: jsr     LD790                           ; 8B69
        lda     #$00                            ; 8B6C
        sta     $51                             ; 8B6E
        lda     #$0B                            ; 8B70
        sta     LoadedObj_Type                  ; 8B72
L8B74:  jmp     L_8B8A                          ; 8B74

; ----------------------------------------------------------------------------
        lda     #$4C                            ; 8B77
        sta     $45                             ; 8B79
        lda     L8B8F                           ; 8B7B
        sta     $7A                             ; 8B7E
        lda     L8B8F+1                         ; 8B80
        sta     $7B                             ; 8B83
        ldy     #$00                            ; 8B85
        jsr     L_8BE5                          ; 8B87
L_8B8A: lda     #$4C                            ; 8B8A
        jmp     L_8C4D                          ; 8B8C

; ----------------------------------------------------------------------------
L8B8F:  .addr   L8B91                           ; 8B8F
; ----------------------------------------------------------------------------
L8B91:  .byte   $F0,$00,$00,$10,$00,$10,$10,$20 ; 8B91
        .byte   $E0,$F0,$F0,$00,$F0,$00,$00,$10 ; 8B99
        .byte   $06,$05,$06,$05,$00,$E8         ; 8BA1
; ----------------------------------------------------------------------------
L_8BA7: jsr     LD790                           ; 8BA7
        lda     #$00                            ; 8BAA
        sta     $51                             ; 8BAC
        lda     #$0C                            ; 8BAE
        sta     LoadedObj_Type                  ; 8BB0
L8BB2:  jmp     L_8BC8                          ; 8BB2

; ----------------------------------------------------------------------------
        lda     #$55                            ; 8BB5
        sta     $45                             ; 8BB7
        lda     L8BCD                           ; 8BB9
        sta     $7A                             ; 8BBC
        lda     L8BCD+1                         ; 8BBE
        sta     $7B                             ; 8BC1
        ldy     #$00                            ; 8BC3
        jsr     L_8BE5                          ; 8BC5
L_8BC8: lda     #$55                            ; 8BC8
        jmp     L_8C4D                          ; 8BCA

; ----------------------------------------------------------------------------
L8BCD:  .addr   L8BCF                           ; 8BCD
; ----------------------------------------------------------------------------
L8BCF:  .byte   $20,$10,$10,$00,$10,$00,$00,$F0 ; 8BCF
        .byte   $10,$00,$00,$F0,$00,$F0,$F0,$E0 ; 8BD7
        .byte   $07,$07,$03,$03,$18,$00         ; 8BDF
; ----------------------------------------------------------------------------
L_8BE5: ldy     $51                             ; 8BE5
        cpy     #$08                            ; 8BE7
        beq     L_8C00                          ; 8BE9
        lda     ($7A),y                         ; 8BEB
        sta     LoadedObj_XVel                  ; 8BED
        tya                                     ; 8BEF
        clc                                     ; 8BF0
        adc     #$08                            ; 8BF1
        tay                                     ; 8BF3
        lda     ($7A),y                         ; 8BF4
        sta     LoadedObj_YVel                  ; 8BF6
        inc     $51                             ; 8BF8
        jsr     L_8C32                          ; 8BFA
        jmp     LD2DB                           ; 8BFD

; ----------------------------------------------------------------------------
L_8C00: lda     $47                             ; 8C00
        bmi     L_8C08                          ; 8C02
        lda     #$0F                            ; 8C04
        bne     L_8C0A                          ; 8C06
L_8C08: lda     #$80                            ; 8C08
L_8C0A: sta     $47                             ; 8C0A
        lda     $50                             ; 8C0C
        clc                                     ; 8C0E
        adc     #$10                            ; 8C0F
        tay                                     ; 8C11
        lda     ($7A),y                         ; 8C12
        sta     LoadedObj_Type                  ; 8C14
        ldy     #$14                            ; 8C16
        lda     ($7A),y                         ; 8C18
        sta     LoadedObj_XVel                  ; 8C1A
        iny                                     ; 8C1C
        lda     ($7A),y                         ; 8C1D
        sta     LoadedObj_YVel                  ; 8C1F
        jsr     L_8C32                          ; 8C21
        lda     $45                             ; 8C24
        jsr     L_8C4D                          ; 8C26
        lda     #$00                            ; 8C29
        sta     $50                             ; 8C2B
        sta     $51                             ; 8C2D
        pla                                     ; 8C2F
        pla                                     ; 8C30
        rts                                     ; 8C31

; ----------------------------------------------------------------------------
L_8C32: lda     #$01                            ; 8C32
        bit     $50                             ; 8C34
        beq     L_8C3F                          ; 8C36
        lda     #$00                            ; 8C38
        sec                                     ; 8C3A
        sbc     LoadedObj_XVel                  ; 8C3B
        sta     LoadedObj_XVel                  ; 8C3D
L_8C3F: lda     #$02                            ; 8C3F
        bit     $50                             ; 8C41
        beq     L_8C4C                          ; 8C43
        lda     #$00                            ; 8C45
        sec                                     ; 8C47
        sbc     LoadedObj_YVel                  ; 8C48
        sta     LoadedObj_YVel                  ; 8C4A
L_8C4C: rts                                     ; 8C4C

.endmacro

.macro MAC_L_8C64
; ----------------------------------------------------------------------------
L_8C64: jmp     L_8C8B                          ; 8C64

; ----------------------------------------------------------------------------
        lda     #$C0                            ; 8C67
        sta     $42                             ; 8C69
        lda     #$80                            ; 8C6B
        sta     $43                             ; 8C6D
        lda     $51                             ; 8C6F
        bne     L_8C7C                          ; 8C71
        lda     #$06                            ; 8C73
        sta     $D4                             ; 8C75
        lda     #$4A                            ; 8C77
        jsr     Enqueue_Sound_Command           ; 8C79
L_8C7C: inc     $51                             ; 8C7C
        lda     $51                             ; 8C7E
        cmp     #$50                            ; 8C80
        bne     L_8C8B                          ; 8C82
        dec     $51                             ; 8C84
        lda     #$02                            ; 8C86
        jsr     LD1EF                           ; 8C88
L_8C8B: lda     #$18                            ; 8C8B
        sta     $40                             ; 8C8D
        lda     #$10                            ; 8C8F
        sta     $41                             ; 8C91
        jsr     LEF2B                           ; 8C93
        lda     #$00                            ; 8C96
        sta     $44                             ; 8C98
        lda     $51                             ; 8C9A
        lsr     a                               ; 8C9C
        tax                                     ; 8C9D
        cpx     #$05                            ; 8C9E
        bcs     L_8CAA                          ; 8CA0
        lda     L8CAB,x                         ; 8CA2
        bmi     L_8CAA                          ; 8CA5
        jsr     LF011                           ; 8CA7
L_8CAA: rts                                     ; 8CAA

; ----------------------------------------------------------------------------
L8CAB:  .byte   $00,$01,$FF,$01,$00             ; 8CAB
; ----------------------------------------------------------------------------
L8CB0:  jmp     L_8DC0                          ; 8CB0

; ----------------------------------------------------------------------------
        lda     #$C0                            ; 8CB3
        sta     $42                             ; 8CB5
        lda     #$80                            ; 8CB7
        sta     $43                             ; 8CB9
        jsr     LCF07                           ; 8CBB
        jsr     L_96C2                          ; 8CBE
        bne     L_8CCA                          ; 8CC1
        lda     #$03                            ; 8CC3
        sta     LoadedObj_Type                  ; 8CC5
        jmp     L_8DC0                          ; 8CC7

; ----------------------------------------------------------------------------
L_8CCA: lda     #$00                            ; 8CCA
        sta     $50                             ; 8CCC
        jsr     LD21D                           ; 8CCE
        lda     $F7                             ; 8CD1
        and     #$03                            ; 8CD3
        cmp     #$01                            ; 8CD5
        beq     L_8CF2                          ; 8CD7
        cmp     #$02                            ; 8CD9
        beq     L_8CEB                          ; 8CDB
        lda     $11                             ; 8CDD
        and     #$03                            ; 8CDF
        bne     L_8D03                          ; 8CE1
        lda     LoadedObj_XVel                  ; 8CE3
        beq     L_8D03                          ; 8CE5
        bmi     L_8CF4                          ; 8CE7
        bpl     L_8CED                          ; 8CE9
L_8CEB: dec     LoadedObj_XVel                  ; 8CEB
L_8CED: dec     LoadedObj_XVel                  ; 8CED
        jmp     L_8CF6                          ; 8CEF

; ----------------------------------------------------------------------------
L_8CF2: inc     LoadedObj_XVel                  ; 8CF2
L_8CF4: inc     LoadedObj_XVel                  ; 8CF4
L_8CF6: ldx     #$4C                            ; 8CF6
        lda     #$10                            ; 8CF8
        bit     $F7                             ; 8CFA
        bpl     L_8D00                          ; 8CFC
        lda     #$20                            ; 8CFE
L_8D00: jsr     LEB14                           ; 8D00
L_8D03: lda     $F7                             ; 8D03
        and     #$08                            ; 8D05
        bne     L_8D1D                          ; 8D07
        lda     $F7                             ; 8D09
        and     #$04                            ; 8D0B
        bne     L_8D24                          ; 8D0D
        inc     LoadedObj_YVel                  ; 8D0F
        bmi     L_8D39                          ; 8D11
        lda     #$04                            ; 8D13
        cmp     LoadedObj_YVel                  ; 8D15
        bcs     L_8D39                          ; 8D17
        sta     LoadedObj_YVel                  ; 8D19
        bcc     L_8D39                          ; 8D1B
L_8D1D: dec     LoadedObj_YVel                  ; 8D1D
        dec     LoadedObj_YVel                  ; 8D1F
        jmp     L_8D28                          ; 8D21

; ----------------------------------------------------------------------------
L_8D24: inc     LoadedObj_YVel                  ; 8D24
        inc     LoadedObj_YVel                  ; 8D26
L_8D28: lda     LoadedObj_Health                ; 8D28
        bne     L_8D32                          ; 8D2A
        lda     #$30                            ; 8D2C
        sta     LoadedObj_YVel                  ; 8D2E
        bne     L_8D39                          ; 8D30
L_8D32: ldx     #$4D                            ; 8D32
        lda     #$18                            ; 8D34
        jsr     LEB14                           ; 8D36
L_8D39: jsr     LD3DE                           ; 8D39
        beq     L_8D4E                          ; 8D3C
        lda     LoadedObj_YVel                  ; 8D3E
        bmi     L_8D48                          ; 8D40
        lda     #$03                            ; 8D42
        sta     LoadedObj_Type                  ; 8D44
        bne     L_8D66                          ; 8D46
L_8D48: lda     #$10                            ; 8D48
        sta     LoadedObj_YVel                  ; 8D4A
        bne     L_8D66                          ; 8D4C
L_8D4E: jsr     LD2AB                           ; 8D4E
        and     #$40                            ; 8D51
        bne     L_8D66                          ; 8D53
        lda     #$00                            ; 8D55
        sta     LoadedObj_Y_Pixel               ; 8D57
        inc     LoadedObj_Y_MetaTile            ; 8D59
        lda     $4E                             ; 8D5B
        clc                                     ; 8D5D
        adc     #$11                            ; 8D5E
        sta     $4E                             ; 8D60
        lda     #$10                            ; 8D62
        sta     LoadedObj_YVel                  ; 8D64
L_8D66: jsr     LD37A                           ; 8D66
        beq     L_8D91                          ; 8D69
        lda     LoadedObj_Y_Pixel               ; 8D6B
        bne     L_8D91                          ; 8D6D
        lda     #$F0                            ; 8D6F
        bit     LoadedObj_XVel                  ; 8D71
        bpl     L_8D77                          ; 8D73
        lda     #$EE                            ; 8D75
L_8D77: jsr     LD2B1                           ; 8D77
        and     #$C0                            ; 8D7A
        bne     L_8D91                          ; 8D7C
        lda     #$80                            ; 8D7E
        sta     LoadedObj_X_Pixel               ; 8D80
        sta     LoadedObj_Y_Pixel               ; 8D82
        dec     LoadedObj_Y_MetaTile            ; 8D84
        lda     $4E                             ; 8D86
        sec                                     ; 8D88
        sbc     #$11                            ; 8D89
        sta     $4E                             ; 8D8B
        lda     #$00                            ; 8D8D
        sta     $50                             ; 8D8F
L_8D91: lda     #$00                            ; 8D91
        sta     $94                             ; 8D93
        lda     $F3                             ; 8D95
        and     #$03                            ; 8D97
        cmp     #$01                            ; 8D99
        beq     L_8DAD                          ; 8D9B
        cmp     #$02                            ; 8D9D
        beq     L_8DA5                          ; 8D9F
        lda     $47                             ; 8DA1
        bpl     L_8DAD                          ; 8DA3
L_8DA5: ldx     #$03                            ; 8DA5
        lda     #$80                            ; 8DA7
        ldy     #$90                            ; 8DA9
        bne     L_8DB3                          ; 8DAB
L_8DAD: ldx     #$01                            ; 8DAD
        lda     #$0F                            ; 8DAF
        ldy     #$70                            ; 8DB1
L_8DB3: stx     $BE                             ; 8DB3
        sta     $47                             ; 8DB5
        sty     $BC                             ; 8DB7
        lda     #$C0                            ; 8DB9
        sta     $BD                             ; 8DBB
        jsr     L_96EB                          ; 8DBD
L_8DC0: jmp     L_8DD5                          ; 8DC0

.endmacro

.macro MAC_L_8DD5
; ----------------------------------------------------------------------------
L_8DD5: lda     #$18                            ; 8DD5
        sta     $40                             ; 8DD7
        lda     #$10                            ; 8DD9
        sta     $41                             ; 8DDB
        jsr     LCBDF                           ; 8DDD
        jsr     LEF2B                           ; 8DE0
        jsr     L_894E                          ; 8DE3
        lda     $3F                             ; 8DE6
        pha                                     ; 8DE8
        lda     $3E                             ; 8DE9
        pha                                     ; 8DEB
        lda     $3F                             ; 8DEC
        clc                                     ; 8DEE
        adc     #$04                            ; 8DEF
        sta     $3F                             ; 8DF1
        lda     #$00                            ; 8DF3
        ldx     $47                             ; 8DF5
        bmi     L_8DFB                          ; 8DF7
        lda     #$40                            ; 8DF9
L_8DFB: sta     $44                             ; 8DFB
        ldx     #$38                            ; 8DFD
        lda     $F7                             ; 8DFF
        and     #$03                            ; 8E01
        beq     L_8E11                          ; 8E03
        lda     #$04                            ; 8E05
        bit     $F7                             ; 8E07
        bpl     L_8E0C                          ; 8E09
        lsr     a                               ; 8E0B
L_8E0C: bit     $10                             ; 8E0C
        beq     L_8E11                          ; 8E0E
        inx                                     ; 8E10
L_8E11: txa                                     ; 8E11
        jsr     LF011                           ; 8E12
        pla                                     ; 8E15
        sta     $3E                             ; 8E16
        pla                                     ; 8E18
        sta     $3F                             ; 8E19
        lda     $3F                             ; 8E1B
        clc                                     ; 8E1D
        adc     #$04                            ; 8E1E
        sta     $3F                             ; 8E20
        lda     #$00                            ; 8E22
        sta     $44                             ; 8E24
        lda     $47                             ; 8E26
        lsr     a                               ; 8E28
        lsr     a                               ; 8E29
        and     #$03                            ; 8E2A
        clc                                     ; 8E2C
        adc     #$20                            ; 8E2D
        jmp     LF011                           ; 8E2F

.endmacro

.macro MAC_L_8E97
; ----------------------------------------------------------------------------
L_8E97: jmp     L_8F64                          ; 8E97

; ----------------------------------------------------------------------------
        jsr     LCF07                           ; 8E9A
        lda     #$C0                            ; 8E9D
        sta     $42                             ; 8E9F
        lda     #$80                            ; 8EA1
        sta     $43                             ; 8EA3
        jsr     L_96C2                          ; 8EA5
        lda     #$80                            ; 8EA8
        sta     LoadedObj_Y_Pixel               ; 8EAA
        lda     $99                             ; 8EAC
        and     #$0C                            ; 8EAE
        cmp     #$0C                            ; 8EB0
        beq     L_8EB7                          ; 8EB2
        jmp     L_8F3E                          ; 8EB4

; ----------------------------------------------------------------------------
L_8EB7: lda     #$00                            ; 8EB7
        sec                                     ; 8EB9
        sbc     LoadedObj_XVel                  ; 8EBA
        sta     LoadedObj_XVel                  ; 8EBC
        jsr     L_8E32                          ; 8EBE
        lda     #$00                            ; 8EC1
        sec                                     ; 8EC3
        sbc     LoadedObj_XVel                  ; 8EC4
        sta     LoadedObj_XVel                  ; 8EC6
        jsr     LD2DE                           ; 8EC8
        jsr     LD37D                           ; 8ECB
        beq     L_8EF8                          ; 8ECE
        lda     #$11                            ; 8ED0
        jsr     LD2B1                           ; 8ED2
        bmi     L_8F2F                          ; 8ED5
        ldx     LoadedObj_X_Pixel               ; 8ED7
        lda     $F7                             ; 8ED9
        and     #$03                            ; 8EDB
        cmp     #$01                            ; 8EDD
        beq     L_8EED                          ; 8EDF
        cmp     #$02                            ; 8EE1
        bne     L_8F2F                          ; 8EE3
        cpx     #$40                            ; 8EE5
        bne     L_8F2F                          ; 8EE7
        lda     #$02                            ; 8EE9
        bne     L_8EF3                          ; 8EEB
L_8EED: cpx     #$C0                            ; 8EED
        bne     L_8F2F                          ; 8EEF
        lda     #$03                            ; 8EF1
L_8EF3: sta     $50                             ; 8EF3
        jmp     L_8B69                          ; 8EF5

; ----------------------------------------------------------------------------
L_8EF8: lda     $F7                             ; 8EF8
        and     #$03                            ; 8EFA
        tax                                     ; 8EFC
        lda     LoadedObj_X_Pixel               ; 8EFD
        cmp     #$40                            ; 8EFF
        bcc     L_8F14                          ; 8F01
        cmp     #$C0                            ; 8F03
        bcc     L_8F2F                          ; 8F05
        cpx     #$02                            ; 8F07
        bne     L_8F2F                          ; 8F09
        lda     #$02                            ; 8F0B
        pha                                     ; 8F0D
        ldy     #$C0                            ; 8F0E
        lda     #$F0                            ; 8F10
        bne     L_8F1F                          ; 8F12
L_8F14: cpx     #$01                            ; 8F14
        bne     L_8F2F                          ; 8F16
        lda     #$03                            ; 8F18
        pha                                     ; 8F1A
        ldy     #$40                            ; 8F1B
        lda     #$EE                            ; 8F1D
L_8F1F: jsr     LD2B1                           ; 8F1F
        bpl     L_8F27                          ; 8F22
        pla                                     ; 8F24
        bpl     L_8F2F                          ; 8F25
L_8F27: pla                                     ; 8F27
        sta     $50                             ; 8F28
        sty     LoadedObj_X_Pixel               ; 8F2A
        jmp     L_8AED                          ; 8F2C

; ----------------------------------------------------------------------------
L_8F2F: lda     #$EF                            ; 8F2F
        jsr     LD2B1                           ; 8F31
        bpl     L_8F3E                          ; 8F34
        lda     $F3                             ; 8F36
        bpl     L_8F49                          ; 8F38
        lda     #$20                            ; 8F3A
        sta     LoadedObj_YVel                  ; 8F3C
L_8F3E: lda     #$02                            ; 8F3E
        sta     $50                             ; 8F40
        lda     #$03                            ; 8F42
        sta     LoadedObj_Type                  ; 8F44
        jmp     L_94FC                          ; 8F46

; ----------------------------------------------------------------------------
L_8F49: jsr     L_9641                          ; 8F49
        clc                                     ; 8F4C
        adc     #$02                            ; 8F4D
        sta     $BE                             ; 8F4F
        lda     #$00                            ; 8F51
        sec                                     ; 8F53
        sec                                     ; 8F54
        sbc     $BC                             ; 8F55
        sta     $BC                             ; 8F57
        lda     #$00                            ; 8F59
        sec                                     ; 8F5B
        sec                                     ; 8F5C
        sbc     $BD                             ; 8F5D
        sta     $BD                             ; 8F5F
        jsr     L_96EB                          ; 8F61
L_8F64: jsr     LCBDF                           ; 8F64
        lda     #$18                            ; 8F67
        sta     $40                             ; 8F69
        lda     #$10                            ; 8F6B
        sta     $41                             ; 8F6D
        jsr     LEF2B                           ; 8F6F
        jsr     L_894E                          ; 8F72
        lda     $3F                             ; 8F75
        pha                                     ; 8F77
        lda     $3E                             ; 8F78
        pha                                     ; 8F7A
        lda     $3F                             ; 8F7B
        sec                                     ; 8F7D
        sbc     #$04                            ; 8F7E
        sta     $3F                             ; 8F80
        lda     #$40                            ; 8F82
        sta     $44                             ; 8F84
        lda     $94                             ; 8F86
        lsr     a                               ; 8F88
        lsr     a                               ; 8F89
        clc                                     ; 8F8A
        adc     $3E                             ; 8F8B
        sec                                     ; 8F8D
        sbc     #$08                            ; 8F8E
        sta     $3E                             ; 8F90
        lda     LoadedObj_X_Pixel               ; 8F92
        asl     a                               ; 8F94
        rol     a                               ; 8F95
        rol     a                               ; 8F96
        pha                                     ; 8F97
        and     #$03                            ; 8F98
        clc                                     ; 8F9A
        adc     #$1C                            ; 8F9B
        jsr     LF011                           ; 8F9D
        lda     $94                             ; 8FA0
        lsr     a                               ; 8FA2
        and     #$06                            ; 8FA3
        eor     #$FF                            ; 8FA5
        clc                                     ; 8FA7
        adc     #$11                            ; 8FA8
        clc                                     ; 8FAA
        adc     $3E                             ; 8FAB
        sta     $3E                             ; 8FAD
        pla                                     ; 8FAF
        clc                                     ; 8FB0
        adc     #$01                            ; 8FB1
        and     #$03                            ; 8FB3
        clc                                     ; 8FB5
        adc     #$1C                            ; 8FB6
        jsr     LF011                           ; 8FB8
        pla                                     ; 8FBB
        sta     $3E                             ; 8FBC
        pla                                     ; 8FBE
        sta     $3F                             ; 8FBF
        lda     $94                             ; 8FC1
        lsr     a                               ; 8FC3
        and     #$06                            ; 8FC4
        sec                                     ; 8FC6
        sbc     #$03                            ; 8FC7
        clc                                     ; 8FC9
        adc     $3F                             ; 8FCA
        sta     $3F                             ; 8FCC
        lda     LoadedObj_XVel                  ; 8FCE
        beq     L_8FDA                          ; 8FD0
        lda     LoadedObj_X_Pixel               ; 8FD2
        and     #$40                            ; 8FD4
        beq     L_8FDA                          ; 8FD6
        inc     $3F                             ; 8FD8
L_8FDA: lda     $94                             ; 8FDA
        beq     L_8FF8                          ; 8FDC
        ldx     #$C0                            ; 8FDE
        bit     $47                             ; 8FE0
        bmi     L_8FE6                          ; 8FE2
        ldx     #$80                            ; 8FE4
L_8FE6: stx     $44                             ; 8FE6
        lda     $94                             ; 8FE8
        lsr     a                               ; 8FEA
        lsr     a                               ; 8FEB
        cmp     #$03                            ; 8FEC
        beq     L_8FF4                          ; 8FEE
        lda     #$25                            ; 8FF0
        bne     L_9005                          ; 8FF2
L_8FF4: lda     #$24                            ; 8FF4
        bne     L_9005                          ; 8FF6
L_8FF8: lda     #$C0                            ; 8FF8
        sta     $44                             ; 8FFA
        lda     $47                             ; 8FFC
        lsr     a                               ; 8FFE
        lsr     a                               ; 8FFF
        and     #$03                            ; 9000
        clc                                     ; 9002
        adc     #$20                            ; 9003
L_9005: jmp     LF011                           ; 9005

; ----------------------------------------------------------------------------
        rts                                     ; 9008

; ----------------------------------------------------------------------------
L9009:  jmp     L_90C9                          ; 9009

; ----------------------------------------------------------------------------
        lda     #$80                            ; 900C
        sta     $42                             ; 900E
        lda     #$C0                            ; 9010
        sta     $43                             ; 9012
        jsr     L_96C2                          ; 9014
        jsr     LCF07                           ; 9017
        lda     #$80                            ; 901A
        sta     LoadedObj_X_Pixel               ; 901C
        lda     LoadedObj_YVel                  ; 901E
        sta     LoadedObj_XVel                  ; 9020
        jsr     L_8E32                          ; 9022
        lda     LoadedObj_XVel                  ; 9025
        sta     LoadedObj_YVel                  ; 9027
        jsr     LD2FE                           ; 9029
        jsr     LD3E1                           ; 902C
        beq     L_9054                          ; 902F
        lda     #$01                            ; 9031
        jsr     LD2B1                           ; 9033
        bmi     L_908B                          ; 9036
        lda     $F7                             ; 9038
        and     #$03                            ; 903A
        tax                                     ; 903C
        lda     LoadedObj_YVel                  ; 903D
        bmi     L_9049                          ; 903F
        cpx     #$01                            ; 9041
        bne     L_908B                          ; 9043
        lda     #$02                            ; 9045
        bne     L_904F                          ; 9047
L_9049: cpx     #$02                            ; 9049
        bne     L_908B                          ; 904B
        lda     #$00                            ; 904D
L_904F: sta     $50                             ; 904F
        jmp     L_8BA7                          ; 9051

; ----------------------------------------------------------------------------
L_9054: lda     $F7                             ; 9054
        and     #$03                            ; 9056
        tax                                     ; 9058
        lda     LoadedObj_Y_Pixel               ; 9059
        cmp     #$40                            ; 905B
        bcc     L_9070                          ; 905D
        cmp     #$C0                            ; 905F
        bcc     L_908B                          ; 9061
        cpx     #$01                            ; 9063
        bne     L_908B                          ; 9065
        lda     #$03                            ; 9067
        pha                                     ; 9069
        ldy     #$C0                            ; 906A
        lda     #$10                            ; 906C
        bne     L_907B                          ; 906E
L_9070: cpx     #$02                            ; 9070
        bne     L_908B                          ; 9072
        lda     #$01                            ; 9074
        pha                                     ; 9076
        ldy     #$40                            ; 9077
        lda     #$EE                            ; 9079
L_907B: jsr     LD2B1                           ; 907B
        bpl     L_9083                          ; 907E
        pla                                     ; 9080
        bpl     L_908B                          ; 9081
L_9083: pla                                     ; 9083
        sta     $50                             ; 9084
        sty     LoadedObj_Y_Pixel               ; 9086
        jmp     L_8B2B                          ; 9088

; ----------------------------------------------------------------------------
L_908B: ldx     $4E                             ; 908B
        inx                                     ; 908D
        lda     $0500,x                         ; 908E
        bmi     L_9097                          ; 9091
        lda     $F3                             ; 9093
        bmi     L_909E                          ; 9095
L_9097: dex                                     ; 9097
        dex                                     ; 9098
        lda     $0500,x                         ; 9099
        bmi     L_90B1                          ; 909C
L_909E: lda     #$C0                            ; 909E
        sta     LoadedObj_X_Pixel               ; 90A0
        lda     #$00                            ; 90A2
        sta     LoadedObj_XVel                  ; 90A4
        lda     #$02                            ; 90A6
        sta     $50                             ; 90A8
        lda     #$03                            ; 90AA
        sta     LoadedObj_Type                  ; 90AC
        jmp     L_94FC                          ; 90AE

; ----------------------------------------------------------------------------
L_90B1: jsr     L_9641                          ; 90B1
        clc                                     ; 90B4
        adc     #$01                            ; 90B5
        sta     $BE                             ; 90B7
        ldx     $BC                             ; 90B9
        lda     $BD                             ; 90BB
        eor     #$FF                            ; 90BD
        clc                                     ; 90BF
        adc     #$01                            ; 90C0
        sta     $BC                             ; 90C2
        stx     $BD                             ; 90C4
        jsr     L_96EB                          ; 90C6
L_90C9: jsr     LCBDF                           ; 90C9
        lda     #$10                            ; 90CC
        sta     $40                             ; 90CE
        lda     #$18                            ; 90D0
        sta     $41                             ; 90D2
        jsr     LEF2B                           ; 90D4
        jsr     L_894E                          ; 90D7
        lda     $3F                             ; 90DA
        pha                                     ; 90DC
        lda     $3E                             ; 90DD
        pha                                     ; 90DF
        lda     $3E                             ; 90E0
        sec                                     ; 90E2
        sbc     #$04                            ; 90E3
        sta     $3E                             ; 90E5
        lda     #$00                            ; 90E7
        sta     $44                             ; 90E9
        lda     $94                             ; 90EB
        lsr     a                               ; 90ED
        lsr     a                               ; 90EE
        clc                                     ; 90EF
        adc     $3F                             ; 90F0
        sec                                     ; 90F2
        sbc     #$08                            ; 90F3
        sta     $3F                             ; 90F5
        lda     LoadedObj_Y_Pixel               ; 90F7
        asl     a                               ; 90F9
        rol     a                               ; 90FA
        rol     a                               ; 90FB
        pha                                     ; 90FC
        and     #$03                            ; 90FD
        clc                                     ; 90FF
        adc     #$1C                            ; 9100
        jsr     LF011                           ; 9102
        lda     $94                             ; 9105
        lsr     a                               ; 9107
        and     #$06                            ; 9108
        eor     #$FF                            ; 910A
        clc                                     ; 910C
        adc     #$11                            ; 910D
        clc                                     ; 910F
        adc     $3F                             ; 9110
        sta     $3F                             ; 9112
        pla                                     ; 9114
        clc                                     ; 9115
        adc     #$01                            ; 9116
        and     #$03                            ; 9118
        clc                                     ; 911A
        adc     #$1C                            ; 911B
        jsr     LF011                           ; 911D
        pla                                     ; 9120
        sta     $3E                             ; 9121
        pla                                     ; 9123
        sta     $3F                             ; 9124
        lda     $94                             ; 9126
        lsr     a                               ; 9128
        and     #$06                            ; 9129
        sec                                     ; 912B
        sbc     #$03                            ; 912C
        clc                                     ; 912E
        adc     $3E                             ; 912F
        sta     $3E                             ; 9131
        lda     LoadedObj_YVel                  ; 9133
        beq     L_913F                          ; 9135
        lda     LoadedObj_Y_Pixel               ; 9137
        and     #$40                            ; 9139
        beq     L_913F                          ; 913B
        dec     $3E                             ; 913D
L_913F: lda     $94                             ; 913F
        beq     L_915D                          ; 9141
        ldx     #$00                            ; 9143
        bit     $47                             ; 9145
        bmi     L_914B                          ; 9147
        ldx     #$80                            ; 9149
L_914B: stx     $44                             ; 914B
        lda     $94                             ; 914D
        lsr     a                               ; 914F
        lsr     a                               ; 9150
        cmp     #$03                            ; 9151
        beq     L_9159                          ; 9153
        lda     #$2B                            ; 9155
        bne     L_916A                          ; 9157
L_9159: lda     #$2A                            ; 9159
        bne     L_916A                          ; 915B
L_915D: lda     #$00                            ; 915D
        sta     $44                             ; 915F
        lda     $47                             ; 9161
        lsr     a                               ; 9163
        lsr     a                               ; 9164
        and     #$03                            ; 9165
        clc                                     ; 9167
        adc     #$26                            ; 9168
L_916A: jmp     LF011                           ; 916A

; ----------------------------------------------------------------------------
        rts                                     ; 916D

; ----------------------------------------------------------------------------
L916E:  jmp     L_9234                          ; 916E

; ----------------------------------------------------------------------------
        lda     #$80                            ; 9171
        sta     $42                             ; 9173
        lda     #$C0                            ; 9175
        sta     $43                             ; 9177
        jsr     LCF07                           ; 9179
        jsr     L_96C2                          ; 917C
        lda     #$80                            ; 917F
        sta     LoadedObj_X_Pixel               ; 9181
        lda     #$00                            ; 9183
        sec                                     ; 9185
        sbc     LoadedObj_YVel                  ; 9186
        sta     LoadedObj_XVel                  ; 9188
        jsr     L_8E32                          ; 918A
        lda     #$00                            ; 918D
        sec                                     ; 918F
        sbc     LoadedObj_XVel                  ; 9190
        sta     LoadedObj_YVel                  ; 9192
        jsr     LD2FE                           ; 9194
        jsr     LD3E1                           ; 9197
        beq     L_91BF                          ; 919A
        lda     #$FF                            ; 919C
        jsr     LD2B1                           ; 919E
        bmi     L_91F6                          ; 91A1
        lda     $F7                             ; 91A3
        and     #$03                            ; 91A5
        tax                                     ; 91A7
        lda     LoadedObj_YVel                  ; 91A8
        bmi     L_91B4                          ; 91AA
        cpx     #$02                            ; 91AC
        bne     L_91F6                          ; 91AE
        lda     #$03                            ; 91B0
        bne     L_91BA                          ; 91B2
L_91B4: cpx     #$01                            ; 91B4
        bne     L_91F6                          ; 91B6
        lda     #$01                            ; 91B8
L_91BA: sta     $50                             ; 91BA
        jmp     L_8BA7                          ; 91BC

; ----------------------------------------------------------------------------
L_91BF: lda     $F7                             ; 91BF
        and     #$03                            ; 91C1
        tax                                     ; 91C3
        lda     LoadedObj_Y_Pixel               ; 91C4
        cmp     #$40                            ; 91C6
        bcc     L_91DB                          ; 91C8
        cmp     #$C0                            ; 91CA
        bcc     L_91F6                          ; 91CC
        cpx     #$02                            ; 91CE
        bne     L_91F6                          ; 91D0
        lda     #$02                            ; 91D2
        pha                                     ; 91D4
        ldy     #$C0                            ; 91D5
        lda     #$12                            ; 91D7
        bne     L_91E6                          ; 91D9
L_91DB: cpx     #$01                            ; 91DB
        bne     L_91F6                          ; 91DD
        lda     #$00                            ; 91DF
        pha                                     ; 91E1
        ldy     #$40                            ; 91E2
        lda     #$F0                            ; 91E4
L_91E6: jsr     LD2B1                           ; 91E6
        bpl     L_91EE                          ; 91E9
        pla                                     ; 91EB
        bpl     L_91F6                          ; 91EC
L_91EE: pla                                     ; 91EE
        sta     $50                             ; 91EF
        sty     LoadedObj_Y_Pixel               ; 91F1
        jmp     L_8B2B                          ; 91F3

; ----------------------------------------------------------------------------
L_91F6: ldx     $4E                             ; 91F6
        dex                                     ; 91F8
        lda     $0500,x                         ; 91F9
        bmi     L_9202                          ; 91FC
        lda     $F3                             ; 91FE
        bmi     L_9209                          ; 9200
L_9202: inx                                     ; 9202
        inx                                     ; 9203
        lda     $0500,x                         ; 9204
        bmi     L_921C                          ; 9207
L_9209: lda     #$40                            ; 9209
        sta     LoadedObj_X_Pixel               ; 920B
        lda     #$00                            ; 920D
        sta     LoadedObj_XVel                  ; 920F
        lda     #$02                            ; 9211
        sta     $50                             ; 9213
        lda     #$03                            ; 9215
        sta     LoadedObj_Type                  ; 9217
        jmp     L_94FC                          ; 9219

; ----------------------------------------------------------------------------
L_921C: jsr     L_9641                          ; 921C
        clc                                     ; 921F
        adc     #$03                            ; 9220
        sta     $BE                             ; 9222
        ldx     $BD                             ; 9224
        lda     $BC                             ; 9226
        eor     #$FF                            ; 9228
        clc                                     ; 922A
        adc     #$01                            ; 922B
        sta     $BD                             ; 922D
        stx     $BC                             ; 922F
        jsr     L_96EB                          ; 9231
L_9234: jsr     LCBDF                           ; 9234
        lda     #$10                            ; 9237
        sta     $40                             ; 9239
        lda     #$18                            ; 923B
        sta     $41                             ; 923D
        jsr     LEF2B                           ; 923F
        jsr     L_894E                          ; 9242
        lda     $3F                             ; 9245
        pha                                     ; 9247
        lda     $3E                             ; 9248
        pha                                     ; 924A
        lda     $3E                             ; 924B
        clc                                     ; 924D
        adc     #$04                            ; 924E
        sta     $3E                             ; 9250
        lda     #$80                            ; 9252
        sta     $44                             ; 9254
        lda     $94                             ; 9256
        lsr     a                               ; 9258
        lsr     a                               ; 9259
        clc                                     ; 925A
        adc     $3F                             ; 925B
        sec                                     ; 925D
        sbc     #$08                            ; 925E
        sta     $3F                             ; 9260
        lda     LoadedObj_Y_Pixel               ; 9262
        asl     a                               ; 9264
        rol     a                               ; 9265
        rol     a                               ; 9266
        pha                                     ; 9267
        and     #$03                            ; 9268
        clc                                     ; 926A
        adc     #$1C                            ; 926B
        jsr     LF011                           ; 926D
        lda     $94                             ; 9270
        lsr     a                               ; 9272
        and     #$06                            ; 9273
        eor     #$FF                            ; 9275
        clc                                     ; 9277
        adc     #$11                            ; 9278
        clc                                     ; 927A
        adc     $3F                             ; 927B
        sta     $3F                             ; 927D
        pla                                     ; 927F
        clc                                     ; 9280
        adc     #$01                            ; 9281
        and     #$03                            ; 9283
        clc                                     ; 9285
        adc     #$1C                            ; 9286
        jsr     LF011                           ; 9288
        pla                                     ; 928B
        sta     $3E                             ; 928C
        pla                                     ; 928E
        sta     $3F                             ; 928F
        lda     $94                             ; 9291
        lsr     a                               ; 9293
        and     #$06                            ; 9294
        eor     #$FF                            ; 9296
        clc                                     ; 9298
        adc     #$04                            ; 9299
        clc                                     ; 929B
        adc     $3E                             ; 929C
        sta     $3E                             ; 929E
        lda     LoadedObj_YVel                  ; 92A0
        beq     L_92AC                          ; 92A2
        lda     LoadedObj_Y_Pixel               ; 92A4
        and     #$40                            ; 92A6
        beq     L_92AC                          ; 92A8
        dec     $3E                             ; 92AA
L_92AC: lda     $94                             ; 92AC
        beq     L_92CA                          ; 92AE
        ldx     #$C0                            ; 92B0
        bit     $47                             ; 92B2
        bmi     L_92B8                          ; 92B4
        ldx     #$40                            ; 92B6
L_92B8: stx     $44                             ; 92B8
        lda     $94                             ; 92BA
        lsr     a                               ; 92BC
        lsr     a                               ; 92BD
        cmp     #$03                            ; 92BE
        beq     L_92C6                          ; 92C0
        lda     #$2B                            ; 92C2
        bne     L_92D7                          ; 92C4
L_92C6: lda     #$2A                            ; 92C6
        bne     L_92D7                          ; 92C8
L_92CA: lda     #$C0                            ; 92CA
        sta     $44                             ; 92CC
        lda     $47                             ; 92CE
        lsr     a                               ; 92D0
        lsr     a                               ; 92D1
        and     #$03                            ; 92D2
        clc                                     ; 92D4
        adc     #$26                            ; 92D5
L_92D7: jmp     LF011                           ; 92D7

; ----------------------------------------------------------------------------
        rts                                     ; 92DA

; ----------------------------------------------------------------------------
L92DB:  jmp     L_94FC                          ; 92DB

; ----------------------------------------------------------------------------
        lda     #$C0                            ; 92DE
        sta     $42                             ; 92E0
        lda     #$80                            ; 92E2
        sta     $43                             ; 92E4
        jsr     LCF07                           ; 92E6
        jsr     L_96C2                          ; 92E9
        jsr     L_96A2                          ; 92EC
        jsr     L_8E32                          ; 92EF
        lda     LoadedObj_Health                ; 92F2
        beq     L_9358                          ; 92F4
        lda     $90                             ; 92F6
        beq     L_9348                          ; 92F8
        lda     $4F                             ; 92FA
        bne     L_9311                          ; 92FC
        lda     $03FC                           ; 92FE
        and     #$04                            ; 9301
        beq     L_9311                          ; 9303
        lda     $98                             ; 9305
        bmi     L_9311                          ; 9307
        lda     $92                             ; 9309
        beq     L_9311                          ; 930B
        lda     $F7                             ; 930D
        bmi     L_9317                          ; 930F
L_9311: lda     #$01                            ; 9311
        sta     $90                             ; 9313
        bne     L_9348                          ; 9315
L_9317: lda     #$02                            ; 9317
        sta     $90                             ; 9319
        lda     $10                             ; 931B
        and     #$07                            ; 931D
        cmp     #$03                            ; 931F
        bne     L_9328                          ; 9321
        lda     #$30                            ; 9323
        jsr     Enqueue_Sound_Command           ; 9325
L_9328: dec     $92                             ; 9328
        lda     LoadedObj_YVel                  ; 932A
        sec                                     ; 932C
        sbc     #$01                            ; 932D
        bpl     L_9343                          ; 932F
        bit     $98                             ; 9331
        bpl     L_933D                          ; 9333
        cmp     #$F8                            ; 9335
        bcs     L_9343                          ; 9337
        lda     #$F8                            ; 9339
        bne     L_9343                          ; 933B
L_933D: cmp     #$F0                            ; 933D
        bcs     L_9343                          ; 933F
        lda     #$F0                            ; 9341
L_9343: sta     LoadedObj_YVel                  ; 9343
        jmp     L_9376                          ; 9345

; ----------------------------------------------------------------------------
L_9348: lda     LoadedObj_YVel                  ; 9348
        cmp     #$DC                            ; 934A
        bcc     L_9358                          ; 934C
        bit     $F7                             ; 934E
        bmi     L_9358                          ; 9350
        lda     #$00                            ; 9352
        sta     LoadedObj_YVel                  ; 9354
        beq     L_9376                          ; 9356
L_9358: inc     LoadedObj_YVel                  ; 9358
        inc     LoadedObj_YVel                  ; 935A
        bit     $98                             ; 935C
        bmi     L_936A                          ; 935E
        lda     #$40                            ; 9360
        ldx     #$4D                            ; 9362
        jsr     LEB14                           ; 9364
        jmp     L_9376                          ; 9367

; ----------------------------------------------------------------------------
L_936A: lda     LoadedObj_YVel                  ; 936A
        bmi     L_9376                          ; 936C
        cmp     #$08                            ; 936E
        bcc     L_9376                          ; 9370
        lda     #$08                            ; 9372
        sta     LoadedObj_YVel                  ; 9374
L_9376: jsr     LD37A                           ; 9376
        bne     L_93DA                          ; 9379
        lda     LoadedObj_Y_Pixel               ; 937B
        cmp     #$80                            ; 937D
        beq     L_9384                          ; 937F
        jmp     L_9432                          ; 9381

; ----------------------------------------------------------------------------
L_9384: lda     #$11                            ; 9384
        jsr     LD2B1                           ; 9386
        bmi     L_938E                          ; 9389
        jmp     L_9432                          ; 938B

; ----------------------------------------------------------------------------
L_938E: lda     $99                             ; 938E
        and     #$0C                            ; 9390
        cmp     #$0C                            ; 9392
        beq     L_9399                          ; 9394
        jmp     L_9432                          ; 9396

; ----------------------------------------------------------------------------
L_9399: lda     $F7                             ; 9399
        and     #$03                            ; 939B
        tax                                     ; 939D
        lda     LoadedObj_X_Pixel               ; 939E
        cmp     #$40                            ; 93A0
        bcc     L_93BB                          ; 93A2
        cmp     #$C0                            ; 93A4
        bcs     L_93AB                          ; 93A6
        jmp     L_9432                          ; 93A8

; ----------------------------------------------------------------------------
L_93AB: cpx     #$01                            ; 93AB
        beq     L_93B2                          ; 93AD
        jmp     L_9432                          ; 93AF

; ----------------------------------------------------------------------------
L_93B2: ldy     #$C0                            ; 93B2
        lda     #$00                            ; 93B4
        pha                                     ; 93B6
        lda     #$12                            ; 93B7
        bne     L_93C9                          ; 93B9
L_93BB: cpx     #$02                            ; 93BB
        beq     L_93C2                          ; 93BD
        jmp     L_9432                          ; 93BF

; ----------------------------------------------------------------------------
L_93C2: ldy     #$40                            ; 93C2
        lda     #$01                            ; 93C4
        pha                                     ; 93C6
        lda     #$10                            ; 93C7
L_93C9: jsr     LD2B1                           ; 93C9
        bmi     L_93D6                          ; 93CC
        pla                                     ; 93CE
        sta     $50                             ; 93CF
        sty     LoadedObj_X_Pixel               ; 93D1
        jmp     L_8AED                          ; 93D3

; ----------------------------------------------------------------------------
L_93D6: pla                                     ; 93D6
        jmp     L_9432                          ; 93D7

; ----------------------------------------------------------------------------
L_93DA: lda     #$00                            ; 93DA
        sta     LoadedObj_XVel                  ; 93DC
        lda     $50                             ; 93DE
        bne     L_9432                          ; 93E0
        lda     $F7                             ; 93E2
        and     #$03                            ; 93E4
        tax                                     ; 93E6
        lda     LoadedObj_X_Pixel               ; 93E7
        cmp     #$40                            ; 93E9
        beq     L_93FD                          ; 93EB
        cmp     #$C0                            ; 93ED
        bne     L_9432                          ; 93EF
        cpx     #$02                            ; 93F1
        bne     L_9432                          ; 93F3
        lda     #$80                            ; 93F5
        sta     $47                             ; 93F7
        lda     #$FF                            ; 93F9
        bne     L_9407                          ; 93FB
L_93FD: cpx     #$01                            ; 93FD
        bne     L_9432                          ; 93FF
        lda     #$0F                            ; 9401
        sta     $47                             ; 9403
        lda     #$01                            ; 9405
L_9407: jsr     LD2B1                           ; 9407
        jsr     LD238                           ; 940A
        bne     L_9416                          ; 940D
        lda     #$00                            ; 940F
        sta     $91                             ; 9411
        jmp     L_89BE                          ; 9413

; ----------------------------------------------------------------------------
L_9416: lda     $99                             ; 9416
        and     #$04                            ; 9418
        beq     L_9432                          ; 941A
        lda     #$EF                            ; 941C
        jsr     LD2B1                           ; 941E
        bmi     L_9432                          ; 9421
        lda     $47                             ; 9423
        bmi     L_942B                          ; 9425
        lda     #$00                            ; 9427
        beq     L_942D                          ; 9429
L_942B: lda     #$01                            ; 942B
L_942D: sta     $50                             ; 942D
        jmp     L_8B69                          ; 942F

; ----------------------------------------------------------------------------
L_9432: jsr     LD3DE                           ; 9432
        beq     L_94A5                          ; 9435
        lda     LoadedObj_YVel                  ; 9437
        bpl     L_943E                          ; 9439
        jmp     L_94D9                          ; 943B

; ----------------------------------------------------------------------------
L_943E: lda     #$00                            ; 943E
        sta     LoadedObj_YVel                  ; 9440
        jsr     L_888C                          ; 9442
        lda     $90                             ; 9445
        beq     L_9451                          ; 9447
        lda     #$06                            ; 9449
        sta     $91                             ; 944B
        lda     #$00                            ; 944D
        sta     $90                             ; 944F
L_9451: lda     $50                             ; 9451
        and     #$03                            ; 9453
        sta     $50                             ; 9455
        beq     L_948B                          ; 9457
        cmp     #$02                            ; 9459
        beq     L_9497                          ; 945B
        cmp     #$03                            ; 945D
        bne     L_9470                          ; 945F
        lda     $F3                             ; 9461
        bpl     L_9470                          ; 9463
        lda     #$01                            ; 9465
        sta     $50                             ; 9467
        lda     L9640                           ; 9469
        sta     $8F                             ; 946C
        bne     L_94DD                          ; 946E
L_9470: dec     $8F                             ; 9470
        bne     L_94DD                          ; 9472
        inc     $50                             ; 9474
        lda     $50                             ; 9476
        cmp     #$02                            ; 9478
        bne     L_94DD                          ; 947A
        ldx     L94FA                           ; 947C
        lda     $98                             ; 947F
        bpl     L_9486                          ; 9481
        ldx     L94FB                           ; 9483
L_9486: stx     LoadedObj_YVel                  ; 9486
        jmp     L_94DD                          ; 9488

; ----------------------------------------------------------------------------
L_948B: lda     $F3                             ; 948B
        bpl     L_94DD                          ; 948D
        lda     #$2E                            ; 948F
        jsr     Enqueue_Sound_Command           ; 9491
        jmp     L_949C                          ; 9494

; ----------------------------------------------------------------------------
L_9497: lda     #$2D                            ; 9497
        jsr     Enqueue_Sound_Command           ; 9499
L_949C: inc     $50                             ; 949C
        lda     L9640                           ; 949E
        sta     $8F                             ; 94A1
        bne     L_94DD                          ; 94A3
L_94A5: lda     $98                             ; 94A5
        bpl     L_94B5                          ; 94A7
        lda     $99                             ; 94A9
        and     #$02                            ; 94AB
        beq     L_94B5                          ; 94AD
        lda     #$08                            ; 94AF
        sta     LoadedObj_Type                  ; 94B1
        bne     L_94DD                          ; 94B3
L_94B5: lda     $99                             ; 94B5
        and     #$01                            ; 94B7
        beq     L_94CB                          ; 94B9
        lda     $F3                             ; 94BB
        bpl     L_94CB                          ; 94BD
        lda     $90                             ; 94BF
        bne     L_94CB                          ; 94C1
        lda     #$02                            ; 94C3
        sta     $90                             ; 94C5
        lda     #$06                            ; 94C7
        sta     $91                             ; 94C9
L_94CB: lda     $50                             ; 94CB
        cmp     #$02                            ; 94CD
        beq     L_94DD                          ; 94CF
        lda     #$02                            ; 94D1
        sta     $50                             ; 94D3
        lda     #$10                            ; 94D5
        sta     LoadedObj_YVel                  ; 94D7
L_94D9: lda     #$00                            ; 94D9
        sta     LoadedObj_YVel                  ; 94DB
L_94DD: lda     $91                             ; 94DD
        beq     L_94E3                          ; 94DF
        dec     $91                             ; 94E1
L_94E3: lda     $50                             ; 94E3
        lsr     a                               ; 94E5
        bcs     L_94EC                          ; 94E6
        lda     #$00                            ; 94E8
        sta     $8F                             ; 94EA
L_94EC: jsr     L_9641                          ; 94EC
        sta     $BE                             ; 94EF
        jsr     L_96EB                          ; 94F1
        jsr     L_96D5                          ; 94F4
        jmp     L_94FC                          ; 94F7

; ----------------------------------------------------------------------------
L94FA:  .byte   $BE                             ; 94FA
L94FB:  .byte   $D2                             ; 94FB
; ----------------------------------------------------------------------------
L_94FC: jsr     LCBDF                           ; 94FC
        lda     #$18                            ; 94FF
        sta     $40                             ; 9501
        lda     #$10                            ; 9503
        sta     $41                             ; 9505
        jsr     LEF2B                           ; 9507
        jsr     L_894E                          ; 950A
L_950D: lda     $3F                             ; 950D
        pha                                     ; 950F
        lda     $3E                             ; 9510
        pha                                     ; 9512
        lda     $3F                             ; 9513
        clc                                     ; 9515
        adc     #$04                            ; 9516
        sta     $3F                             ; 9518
        lda     #$00                            ; 951A
        sta     $44                             ; 951C
        lda     $91                             ; 951E
        bne     L_953A                          ; 9520
        lda     $90                             ; 9522
        beq     L_9542                          ; 9524
        cmp     #$01                            ; 9526
        bne     L_952E                          ; 9528
        lda     #$2C                            ; 952A
        bne     L_953C                          ; 952C
L_952E: dec     $3F                             ; 952E
        lda     $10                             ; 9530
        lsr     a                               ; 9532
        and     #$01                            ; 9533
        clc                                     ; 9535
        adc     #$7A                            ; 9536
        bne     L_953C                          ; 9538
L_953A: lda     #$2E                            ; 953A
L_953C: jsr     LF011                           ; 953C
        jmp     L_95C9                          ; 953F

; ----------------------------------------------------------------------------
L_9542: lda     $C1                             ; 9542
        beq     L_955F                          ; 9544
        lda     $50                             ; 9546
        and     #$03                            ; 9548
        sta     $50                             ; 954A
        cmp     #$02                            ; 954C
        bne     L_955F                          ; 954E
        lda     LoadedObj_YVel                  ; 9550
        bmi     L_9559                          ; 9552
        dec     $3F                             ; 9554
        jmp     L_955F                          ; 9556

; ----------------------------------------------------------------------------
L_9559: inc     $3F                             ; 9559
        inc     $3F                             ; 955B
        inc     $3F                             ; 955D
L_955F: lda     $C1                             ; 955F
        beq     L_9588                          ; 9561
        lda     $D9                             ; 9563
        bne     L_956D                          ; 9565
        lda     $50                             ; 9567
        cmp     #$02                            ; 9569
        bne     L_9588                          ; 956B
L_956D: lda     $10                             ; 956D
        lsr     a                               ; 956F
        bcc     L_9597                          ; 9570
        lda     $F7                             ; 9572
        and     #$03                            ; 9574
        cmp     #$01                            ; 9576
        beq     L_9583                          ; 9578
        cmp     #$02                            ; 957A
        bne     L_9597                          ; 957C
        dec     $DA                             ; 957E
        jmp     L_9597                          ; 9580

; ----------------------------------------------------------------------------
L_9583: inc     $DA                             ; 9583
        jmp     L_9597                          ; 9585

; ----------------------------------------------------------------------------
L_9588: lda     $1C                             ; 9588
        lsr     a                               ; 958A
        lsr     a                               ; 958B
        lsr     a                               ; 958C
        lsr     a                               ; 958D
        clc                                     ; 958E
        adc     $3E                             ; 958F
        lsr     a                               ; 9591
        lsr     a                               ; 9592
        and     #$03                            ; 9593
        sta     $DA                             ; 9595
L_9597: lda     $94                             ; 9597
        lsr     a                               ; 9599
        lsr     a                               ; 959A
        clc                                     ; 959B
        adc     $3E                             ; 959C
        sec                                     ; 959E
        sbc     #$08                            ; 959F
        sta     $3E                             ; 95A1
        lda     $DA                             ; 95A3
        and     #$03                            ; 95A5
        clc                                     ; 95A7
        adc     #$1C                            ; 95A8
        jsr     LF011                           ; 95AA
        lda     $94                             ; 95AD
        lsr     a                               ; 95AF
        and     #$06                            ; 95B0
        eor     #$FF                            ; 95B2
        clc                                     ; 95B4
        adc     #$11                            ; 95B5
        clc                                     ; 95B7
        adc     $3E                             ; 95B8
        sta     $3E                             ; 95BA
        lda     $DA                             ; 95BC
        clc                                     ; 95BE
        adc     #$01                            ; 95BF
        and     #$03                            ; 95C1
        clc                                     ; 95C3
        adc     #$1C                            ; 95C4
        jsr     LF011                           ; 95C6
L_95C9: pla                                     ; 95C9
        sta     $3E                             ; 95CA
        pla                                     ; 95CC
        sta     $3F                             ; 95CD
        lda     $94                             ; 95CF
        lsr     a                               ; 95D1
        and     #$06                            ; 95D2
        eor     #$FF                            ; 95D4
        clc                                     ; 95D6
        adc     #$04                            ; 95D7
        clc                                     ; 95D9
        adc     $3F                             ; 95DA
        sta     $3F                             ; 95DC
        lda     $8F                             ; 95DE
        beq     L_95E9                          ; 95E0
        inc     $3F                             ; 95E2
        inc     $3F                             ; 95E4
        jmp     L_9601                          ; 95E6

; ----------------------------------------------------------------------------
L_95E9: lda     $50                             ; 95E9
        bne     L_9601                          ; 95EB
        lda     LoadedObj_XVel                  ; 95ED
        beq     L_9601                          ; 95EF
        lda     $C1                             ; 95F1
        beq     L_9601                          ; 95F3
        lda     $D9                             ; 95F5
        bne     L_9601                          ; 95F7
        lda     $DA                             ; 95F9
        and     #$02                            ; 95FB
        bne     L_9601                          ; 95FD
        inc     $3F                             ; 95FF
L_9601: lda     $94                             ; 9601
        beq     L_961F                          ; 9603
        ldx     #$00                            ; 9605
        bit     $47                             ; 9607
        bmi     L_960D                          ; 9609
        ldx     #$40                            ; 960B
L_960D: stx     $44                             ; 960D
        lda     $94                             ; 960F
        lsr     a                               ; 9611
        lsr     a                               ; 9612
        cmp     #$03                            ; 9613
        beq     L_961B                          ; 9615
        lda     #$25                            ; 9617
        bne     L_963C                          ; 9619
L_961B: lda     #$24                            ; 961B
        bne     L_963C                          ; 961D
L_961F: lda     $03D6                           ; 961F
        beq     L_962F                          ; 9622
        lda     $47                             ; 9624
        lsr     a                               ; 9626
        and     #$40                            ; 9627
        sta     $44                             ; 9629
        lda     #$32                            ; 962B
        bne     L_963C                          ; 962D
L_962F: lda     #$00                            ; 962F
        sta     $44                             ; 9631
        lda     $47                             ; 9633
        lsr     a                               ; 9635
        lsr     a                               ; 9636
        and     #$03                            ; 9637
        clc                                     ; 9639
        adc     #$20                            ; 963A
L_963C: jmp     LF011                           ; 963C

; ----------------------------------------------------------------------------
        rts                                     ; 963F

; ----------------------------------------------------------------------------
L9640:  .byte   $04                             ; 9640
; ----------------------------------------------------------------------------
L_9641: lda     $47                             ; 9641
        bpl     L_9650                          ; 9643
        ldx     #$03                            ; 9645
        and     #$0F                            ; 9647
        beq     L_965A                          ; 9649
        dec     $47                             ; 964B
        jmp     L_965A                          ; 964D

; ----------------------------------------------------------------------------
L_9650: ldx     #$01                            ; 9650
        and     #$0F                            ; 9652
        cmp     #$0F                            ; 9654
        beq     L_965A                          ; 9656
        inc     $47                             ; 9658
L_965A: lda     $94                             ; 965A
        cmp     #$08                            ; 965C
        bcc     L_9662                          ; 965E
        ldx     #$00                            ; 9660
L_9662: lda     $F7                             ; 9662
        and     #$08                            ; 9664
        bne     L_9672                          ; 9666
        dec     $94                             ; 9668
        bpl     L_967C                          ; 966A
        lda     #$00                            ; 966C
        sta     $94                             ; 966E
        beq     L_967C                          ; 9670
L_9672: inc     $94                             ; 9672
        lda     #$0C                            ; 9674
        cmp     $94                             ; 9676
        bcs     L_967C                          ; 9678
        sta     $94                             ; 967A
L_967C: lda     #$90                            ; 967C
        sta     $BC                             ; 967E
        lda     #$A0                            ; 9680
        sta     $BD                             ; 9682
        lda     $94                             ; 9684
        beq     L_9694                          ; 9686
        cmp     #$08                            ; 9688
        bcc     L_9694                          ; 968A
        lda     #$50                            ; 968C
        sta     $BC                             ; 968E
        lda     #$A0                            ; 9690
        sta     $BD                             ; 9692
L_9694: lda     $47                             ; 9694
        bmi     L_96A0                          ; 9696
        lda     #$00                            ; 9698
        sec                                     ; 969A
        sec                                     ; 969B
        sbc     $BC                             ; 969C
        sta     $BC                             ; 969E
L_96A0: txa                                     ; 96A0
        rts                                     ; 96A1

; ----------------------------------------------------------------------------
L_96A2: lda     $14                             ; 96A2
        cmp     #$0D                            ; 96A4
        bne     L_96BD                          ; 96A6
        lda     $50                             ; 96A8
        cmp     #$02                            ; 96AA
        beq     L_96BD                          ; 96AC
        lda     #$11                            ; 96AE
        jsr     LD2B1                           ; 96B0
        and     #$03                            ; 96B3
        cmp     #$01                            ; 96B5
        beq     L_96BD                          ; 96B7
        lda     #$FF                            ; 96B9
        bne     L_96BF                          ; 96BB
L_96BD: lda     #$00                            ; 96BD
L_96BF: sta     $D9                             ; 96BF
        rts                                     ; 96C1

; ----------------------------------------------------------------------------
L_96C2: ldx     $4E                             ; 96C2
        lda     $0500,x                         ; 96C4
        and     #$40                            ; 96C7
        bne     L_96D0                          ; 96C9
        lda     #$00                            ; 96CB
        sta     $98                             ; 96CD
        rts                                     ; 96CF

; ----------------------------------------------------------------------------
L_96D0: lda     #$80                            ; 96D0
        sta     $98                             ; 96D2
        rts                                     ; 96D4

; ----------------------------------------------------------------------------
L_96D5: lda     $F3                             ; 96D5
        and     #$04                            ; 96D7
        beq     L_96EA                          ; 96D9
        ldx     $4E                             ; 96DB
        lda     $0500,x                         ; 96DD
        jsr     LD246                           ; 96E0
        bne     L_96EA                          ; 96E3
        lda     #$01                            ; 96E5
        jmp     LD1EF                           ; 96E7

; ----------------------------------------------------------------------------
L_96EA: rts                                     ; 96EA

; ----------------------------------------------------------------------------
L_96EB: bit     $F3                             ; 96EB
        bvc     L_9706                          ; 96ED
        lda     $F7                             ; 96EF
        bit     $E6E3                           ; 96F1
        beq     L_9738                          ; 96F4
        ldx     $BA                             ; 96F6
        bne     L_96FD                          ; 96F8
        jmp     L_9838                          ; 96FA

; ----------------------------------------------------------------------------
L_96FD: dex                                     ; 96FD
        bne     L_9703                          ; 96FE
        jmp     L_99B0                          ; 9700

; ----------------------------------------------------------------------------
L_9703: jmp     L_9AC8                          ; 9703

; ----------------------------------------------------------------------------
L_9706: rts                                     ; 9706

.endmacro

.macro MAC_L_9838
; ----------------------------------------------------------------------------
L_9838: lda     #$54                            ; 9838
        sta     $02                             ; 983A
        lda     #$06                            ; 983C
L_983E: pha                                     ; 983E
        lda     $06F0                           ; 983F
        beq     L_986C                          ; 9842
        ldx     $02                             ; 9844
        lda     PlayerObj_Type,x                ; 9846
        cmp     #$54                            ; 9849
        bcc     L_986C                          ; 984B
        ldx     #$1C                            ; 984D
        lda     #$46                            ; 984F
        sta     $00                             ; 9851
        jsr     LD7CF                           ; 9853
        beq     L_9880                          ; 9856
        dec     $06F0                           ; 9858
        txa                                     ; 985B
        pha                                     ; 985C
        jsr     LD7C0                           ; 985D
        pla                                     ; 9860
        tax                                     ; 9861
        lda     $02                             ; 9862
        sta     $040A,x                         ; 9864
        lda     #$15                            ; 9867
        sta     PlayerObj_Type,x                ; 9869
L_986C: pla                                     ; 986C
        clc                                     ; 986D
        adc     #$01                            ; 986E
        cmp     #$12                            ; 9870
        beq     L_9881                          ; 9872
        pha                                     ; 9874
        lda     $02                             ; 9875
        clc                                     ; 9877
        adc     #$0E                            ; 9878
        sta     $02                             ; 987A
        pla                                     ; 987C
        jmp     L_983E                          ; 987D

; ----------------------------------------------------------------------------
L_9880: pla                                     ; 9880
L_9881: rts                                     ; 9881

.endmacro

.macro MAC_L_99B0
; ----------------------------------------------------------------------------
L_99B0: ldx     #$46                            ; 99B0
        lda     #$46                            ; 99B2
        sta     $00                             ; 99B4
        jsr     LD7CF                           ; 99B6
        beq     L_99CB                          ; 99B9
        lda     $06F1                           ; 99BB
        beq     L_99CB                          ; 99BE
        dec     $06F1                           ; 99C0
        lda     #$17                            ; 99C3
        sta     PlayerObj_Type,x                ; 99C5
        jmp     LD7C0                           ; 99C8

; ----------------------------------------------------------------------------
L_99CB: rts                                     ; 99CB

.endmacro

.macro MAC_L_9AC8
; ----------------------------------------------------------------------------
L_9AC8: ldx     #$2A                            ; 9AC8
L_9ACA: lda     $06F2                           ; 9ACA
        beq     L_9AEA                          ; 9ACD
        txa                                     ; 9ACF
        pha                                     ; 9AD0
        lda     PlayerObj_Type,x                ; 9AD1
        bne     L_9AE1                          ; 9AD4
        lda     #$19                            ; 9AD6
        sta     PlayerObj_Type,x                ; 9AD8
        jsr     LD7C0                           ; 9ADB
        dec     $06F2                           ; 9ADE
L_9AE1: pla                                     ; 9AE1
        clc                                     ; 9AE2
        adc     #$0E                            ; 9AE3
        tax                                     ; 9AE5
        cmp     #$54                            ; 9AE6
        bne     L_9ACA                          ; 9AE8
L_9AEA: rts                                     ; 9AEA

.endmacro

.macro MAC_L_9B2F
; ----------------------------------------------------------------------------
L_9B2F: jmp     L_9B47                          ; 9B2F

.endmacro

