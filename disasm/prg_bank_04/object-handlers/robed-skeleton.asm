.macro MAC_object_handlers__robed_skeleton_1_of_2
; ----------------------------------------------------------------------------
L_B9EE: jmp     L_BA00                          ; B9EE

; ----------------------------------------------------------------------------
L_B9F1: lda     #$00                            ; B9F1
        sta     LoadedObj + Obj::Scratch0       ; B9F3
        sta     LoadedObj + Obj::Facing         ; B9F5
        lda     #$30                            ; B9F7
        sta     LoadedObj + Obj::Scratch1       ; B9F9
        lda     #$02                            ; B9FB
        jsr     L_B2B4                          ; B9FD
L_BA00: rts                                     ; BA00

; ----------------------------------------------------------------------------
L_BA01: jmp     L_BA17                          ; BA01

; ----------------------------------------------------------------------------
L_BA04: dec     LoadedObj + Obj::Scratch1       ; BA04
        bpl     L_BA17                          ; BA06
        lda     #$80                            ; BA08
        sta     LoadedObj + Obj::Scratch1       ; BA0A
        inc     LoadedObj + Obj::Type           ; BA0C
        lda     #$00                            ; BA0E
        sta     LoadedObj + Obj::Scratch0       ; BA10
        lda     #$48                            ; BA12
        jsr     LC216                           ; BA14
L_BA17: lda     #$18                            ; BA17
        sta     $40                             ; BA19
        lda     #$10                            ; BA1B
        sta     $41                             ; BA1D
        jsr     LC0FF                           ; BA1F
        beq     L_BA27                          ; BA22
        jmp     LC17A                           ; BA24

; ----------------------------------------------------------------------------
L_BA27: lda     LoadedObj + Obj::Scratch1       ; BA27
        cmp     #$08                            ; BA29
        bcc     L_BA38                          ; BA2B
        cmp     #$30                            ; BA2D
        bcc     L_BA3E                          ; BA2F
        cmp     #$38                            ; BA31
        bcc     L_BA38                          ; BA33
        jmp     L_BAE7                          ; BA35

; ----------------------------------------------------------------------------
L_BA38: lsr     a                               ; BA38
        bcc     L_BA3E                          ; BA39
        jmp     L_BAE7                          ; BA3B

; ----------------------------------------------------------------------------
L_BA3E: lda     #$01                            ; BA3E
        sta     $44                             ; BA40
        lda     #$3B                            ; BA42
        jmp     LC063                           ; BA44

; ----------------------------------------------------------------------------
L_BA47: jmp     L_BAA5                          ; BA47

; ----------------------------------------------------------------------------
L_BA4A: lda     #$C0                            ; BA4A
        sta     $42                             ; BA4C
        lda     #$80                            ; BA4E
        sta     $43                             ; BA50
        dec     LoadedObj + Obj::Scratch0       ; BA52
        bpl     L_BA58                          ; BA54
        inc     LoadedObj + Obj::Scratch0       ; BA56
L_BA58: inc     LoadedObj + Obj::Scratch1       ; BA58
        bne     L_BA62                          ; BA5A
        lda     #$40                            ; BA5C
        sta     LoadedObj + Obj::Scratch1       ; BA5E
        dec     LoadedObj + Obj::Type           ; BA60
L_BA62: lda     LoadedObj + Obj::Scratch1       ; BA62
        and     #$0F                            ; BA64
        bne     L_BAA5                          ; BA66
        lda     LoadedObj + Obj::Scratch1       ; BA68
        and     #$30                            ; BA6A
        bne     L_BA77                          ; BA6C
        jsr     L_BCC5                          ; BA6E
        jsr     LC105                           ; BA71
        jmp     L_BA7D                          ; BA74

; ----------------------------------------------------------------------------
L_BA77: jsr     LC1B3                           ; BA77
        and     #$03                            ; BA7A
        tax                                     ; BA7C
L_BA7D: stx     LoadedObj + Obj::Facing         ; BA7D
        lda     LoadedObj + Obj::TileIndex      ; BA7F
        clc                                     ; BA81
        adc     LBADE,x                         ; BA82
        tax                                     ; BA85
        lda     LevelTileData,x                 ; BA86
        and     #$C0                            ; BA89
        bne     L_BAA5                          ; BA8B
        stx     LoadedObj + Obj::TileIndex      ; BA8D
        ldx     LoadedObj + Obj::Facing         ; BA8F
        lda     LBADA,x                         ; BA91
        clc                                     ; BA94
        adc     LoadedObj + Obj::Position_X_Hi  ; BA95
        sta     LoadedObj + Obj::Position_X_Hi  ; BA97
        lda     L_BAD9,x                        ; BA99
        clc                                     ; BA9C
        adc     LoadedObj + Obj::Position_Y_Hi  ; BA9D
        sta     LoadedObj + Obj::Position_Y_Hi  ; BA9F
        lda     #$08                            ; BAA1
        sta     LoadedObj + Obj::Scratch0       ; BAA3
L_BAA5: lda     #$18                            ; BAA5
        sta     $40                             ; BAA7
        lda     #$10                            ; BAA9
        sta     $41                             ; BAAB
        jsr     LC0FF                           ; BAAD
        beq     L_BAB5                          ; BAB0
        jmp     LC17A                           ; BAB2

; ----------------------------------------------------------------------------
L_BAB5: lda     #$02                            ; BAB5
        jsr     L_B2C5                          ; BAB7
        lda     LoadedObj + Obj::Scratch0       ; BABA
        beq     L_BAD3                          ; BABC
        lsr     a                               ; BABE
        bcs     L_BAD3                          ; BABF
        ldx     LoadedObj + Obj::Facing         ; BAC1
        lda     $3E                             ; BAC3
        clc                                     ; BAC5
        adc     LBAE3,x                         ; BAC6
        sta     $3E                             ; BAC9
        lda     $3F                             ; BACB
        clc                                     ; BACD
        adc     LBAE2,x                         ; BACE
        sta     $3F                             ; BAD1
L_BAD3: jsr     L_93BD                          ; BAD3
        jmp     L_BAE7                          ; BAD6

.endmacro

; Interrupted by 1 macro:
;   MAC__ungrouped_10_of_12

.macro MAC_object_handlers__robed_skeleton_2_of_2
; ----------------------------------------------------------------------------
L_BAE7: lda     #$02                            ; BAE7
        sta     $44                             ; BAE9
        lda     #$3D                            ; BAEB
        jmp     LC063                           ; BAED

.endmacro

