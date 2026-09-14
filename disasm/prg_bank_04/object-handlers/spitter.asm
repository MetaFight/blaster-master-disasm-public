.macro MAC_L_BD5C
; ----------------------------------------------------------------------------
L_BD5C: jmp     L_BD68                          ; BD5C

; ----------------------------------------------------------------------------
L_BD5F: lda     #$00                            ; BD5F
        sta     LoadedObj + Obj::Scratch2       ; BD61
        lda     #$0D                            ; BD63
        jsr     L_B2B4                          ; BD65
L_BD68: rts                                     ; BD68

; ----------------------------------------------------------------------------
L_BD69: jmp     L_BD9D                          ; BD69

; ----------------------------------------------------------------------------
L_BD6C: lda     #$80                            ; BD6C
        sta     $42                             ; BD6E
        lda     #$80                            ; BD70
        sta     $43                             ; BD72
        lda     LoadedObj + Obj::Scratch2       ; BD74
        beq     L_BD7A                          ; BD76
        dec     LoadedObj + Obj::Scratch2       ; BD78
L_BD7A: jsr     LC045                           ; BD7A
        bpl     L_BD84                          ; BD7D
        eor     #$FF                            ; BD7F
        clc                                     ; BD81
        adc     #$01                            ; BD82
L_BD84: sta     $00                             ; BD84
        jsr     LC04E                           ; BD86
        bpl     L_BD90                          ; BD89
        eor     #$FF                            ; BD8B
        clc                                     ; BD8D
        adc     #$01                            ; BD8E
L_BD90: cmp     $00                             ; BD90
        bcs     L_BD96                          ; BD92
        lda     $00                             ; BD94
L_BD96: cmp     #$02                            ; BD96
        bcs     L_BD9D                          ; BD98
        jsr     L_BE3E                          ; BD9A
L_BD9D: lda     #$10                            ; BD9D
        sta     $40                             ; BD9F
        lda     #$10                            ; BDA1
        sta     $41                             ; BDA3
        jsr     LC0FF                           ; BDA5
        beq     L_BDAD                          ; BDA8
        jmp     LC17A                           ; BDAA

; ----------------------------------------------------------------------------
L_BDAD: lda     #$0D                            ; BDAD
        jsr     L_B314                          ; BDAF
        ldy     #$01                            ; BDB2
        lda     ($A3),y                         ; BDB4
        jsr     LC144                           ; BDB6
        bne     L_BDBE                          ; BDB9
        jsr     L_BE3E                          ; BDBB
L_BDBE: lda     #$01                            ; BDBE
        sta     $44                             ; BDC0
        lda     Global_FrameCounter             ; BDC2
        and     #$1F                            ; BDC4
        bne     L_BDD3                          ; BDC6
        jsr     LC1B3                           ; BDC8
        and     #$03                            ; BDCB
        bne     L_BDD3                          ; BDCD
        lda     #$10                            ; BDCF
        sta     LoadedObj + Obj::Scratch2       ; BDD1
L_BDD3: lda     LoadedObj + Obj::Scratch2       ; BDD3
        and     #$05                            ; BDD5
        bne     L_BDDE                          ; BDD7
        lda     #$3A                            ; BDD9
        jmp     L_BDE0                          ; BDDB

; ----------------------------------------------------------------------------
L_BDDE: lda     #$39                            ; BDDE
L_BDE0: jmp     LC063                           ; BDE0

; ----------------------------------------------------------------------------
L_BDE3: .byte   $A0,$E0,$20,$60                 ; BDE3
; ----------------------------------------------------------------------------
L_BDE7: jmp     L_BE0E                          ; BDE7

; ----------------------------------------------------------------------------
L_BDEA: lda     #$80                            ; BDEA
        sta     $42                             ; BDEC
        lda     #$80                            ; BDEE
        sta     $43                             ; BDF0
        jsr     LC12F                           ; BDF2
        beq     L_BE01                          ; BDF5
        lda     #$54                            ; BDF7
        sta     ObjectTable + Obj::Type,x       ; BDF9
        lda     LoadedObj + Obj::Scratch0       ; BDFC
        sta     ObjectTable + Obj::Scratch1,x   ; BDFE
L_BE01: clc                                     ; BE01
        lda     LoadedObj + Obj::Scratch0       ; BE02
        adc     #$08                            ; BE04
        sta     LoadedObj + Obj::Scratch0       ; BE06
        dec     LoadedObj + Obj::Scratch1       ; BE08
        bne     L_BE0E                          ; BE0A
        dec     LoadedObj + Obj::Type           ; BE0C
L_BE0E: lda     #$10                            ; BE0E
        sta     $40                             ; BE10
        lda     #$10                            ; BE12
        sta     $41                             ; BE14
        jsr     LC0FF                           ; BE16
        beq     L_BE1E                          ; BE19
        jmp     LC17A                           ; BE1B

; ----------------------------------------------------------------------------
L_BE1E: lda     #$0D                            ; BE1E
        jsr     L_B314                          ; BE20
        ldy     #$01                            ; BE23
        lda     ($A3),y                         ; BE25
        jsr     LC144                           ; BE27
        lda     LoadedObj + Obj::Scratch1       ; BE2A
        bne     L_BE35                          ; BE2C
        lda     LoadedObj + Obj::Health         ; BE2E
        bne     L_BE35                          ; BE30
        jsr     L_B2F7                          ; BE32
L_BE35: lda     #$01                            ; BE35
        sta     $44                             ; BE37
        lda     #$39                            ; BE39
        jmp     LC063                           ; BE3B

; ----------------------------------------------------------------------------
L_BE3E: jsr     LC105                           ; BE3E
        tax                                     ; BE41
        lda     L_BDE3,x                        ; BE42
        sta     LoadedObj + Obj::Scratch0       ; BE45
        lda     #$08                            ; BE47
        sta     LoadedObj + Obj::Scratch1       ; BE49
        lda     #$20                            ; BE4B
        sta     LoadedObj + Obj::Scratch2       ; BE4D
        lda     #$43                            ; BE4F
        sta     LoadedObj + Obj::Type           ; BE51
        rts                                     ; BE53

.endmacro

