.macro MAC_L_CE4A
L_CE4A: pha                                     ; CE4A
        jsr     WaitNMI                         ; CE4B
        pla                                     ; CE4E
        sec                                     ; CE4F
        sbc     #$01                            ; CE50
        bne     L_CE4A                          ; CE52
        rts                                     ; CE54

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_E936
WaitNMI:lda     #$80                            ; E936
; Set $12 bit7, then spin until the NMI handler clears it (waits exactly one frame).
_note_E938:
        sta     $12                             ; E938
_WaitNMI__Loop:
        bit     $12                             ; E93A
        bmi     _WaitNMI__Loop                  ; E93C
        rts                                     ; E93E

; ----------------------------------------------------------------------------
L_E93F: lda     $FF                             ; E93F
        ora     #$80                            ; E941
        sta     $FF                             ; E943
        sta     $2000                           ; E945
        rts                                     ; E948

; ----------------------------------------------------------------------------
L_E949: lda     $FF                             ; E949
        and     #$7F                            ; E94B
        sta     $FF                             ; E94D
        sta     $2000                           ; E94F
        rts                                     ; E952

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_EB7E
L_EB7E: pha                                     ; EB7E
        txa                                     ; EB7F
        pha                                     ; EB80
        tya                                     ; EB81
        pha                                     ; EB82
        bit     $12                             ; EB83
        bvs     L_EB8D                          ; EB85
        jsr     L_EB98                          ; EB87
        jmp     L_EB91                          ; EB8A

; ----------------------------------------------------------------------------
L_EB8D: lda     #$20                            ; EB8D
        sta     $12                             ; EB8F
L_EB91: pla                                     ; EB91
        tay                                     ; EB92
        pla                                     ; EB93
        tax                                     ; EB94
        pla                                     ; EB95
        rti                                     ; EB96

; ----------------------------------------------------------------------------
IRQ:    rti                                     ; EB97

; ----------------------------------------------------------------------------
L_EB98: bit     $12                             ; EB98
        bmi     L_EB9F                          ; EB9A
        jmp     L_EC51                          ; EB9C

; ----------------------------------------------------------------------------
L_EB9F: lda     #$00                            ; EB9F
        sta     $12                             ; EBA1
        sta     $2001                           ; EBA3
        jsr     OAM_Copy_To_PPU                 ; EBA6
        lda     $19                             ; EBA9
        beq     L_EBB0                          ; EBAB
        jmp     L_EC34                          ; EBAD

; ----------------------------------------------------------------------------
L_EBB0: lda     $58                             ; EBB0
        sta     $5C                             ; EBB2
        sta     $60                             ; EBB4
        sta     $64                             ; EBB6
        sta     $68                             ; EBB8
        sta     $6C                             ; EBBA
        sta     $70                             ; EBBC
        sta     $74                             ; EBBE
        jsr     L_E895                          ; EBC0
        lda     $2002                           ; EBC3
        lda     #$3F                            ; EBC6
        sta     $2006                           ; EBC8
        lda     #$00                            ; EBCB
        sta     $2006                           ; EBCD
        ldx     #$00                            ; EBD0
L_EBD2: lda     $58,x                           ; EBD2
        and     #$3F                            ; EBD4
        tay                                     ; EBD6
        lda     L_EBF4,y                        ; EBD7
        sta     $2007                           ; EBDA
        inx                                     ; EBDD
        cpx     #$20                            ; EBDE
        bne     L_EBD2                          ; EBE0
        lda     #$3F                            ; EBE2
        sta     $2006                           ; EBE4
        lda     #$00                            ; EBE7
        sta     $2006                           ; EBE9
        sta     $2006                           ; EBEC
        sta     $2006                           ; EBEF
        beq     L_EC34                          ; EBF2
.endmacro

.macro MAC_L_EC34
L_EC34: jsr     L_F1CA                          ; EC34
        jsr     L_E6BF                          ; EC37
        lda     $D4                             ; EC3A
        jsr     L_E664                          ; EC3C
        lda     $D5                             ; EC3F
        jsr     L_E650                          ; EC41
        lda     $FE                             ; EC44
        sta     $2001                           ; EC46
        jsr     L_EC61                          ; EC49
        inc     $11                             ; EC4C
        jsr     L_E8A9                          ; EC4E
L_EC51: lda     #$05                            ; EC51
        jsr     L_E63C                          ; EC53
        jsr     L_DEEB                          ; EC56
        lda     $DB                             ; EC59
        jsr     L_E63C                          ; EC5B
        inc     $10                             ; EC5E
        rts                                     ; EC60

; ----------------------------------------------------------------------------
.endmacro

