.macro MAC_L_B076
; ----------------------------------------------------------------------------
L_B076: jmp     L_B094                          ; B076

; ----------------------------------------------------------------------------
        lda     #$11                            ; B079
        jsr     L_A2E9                          ; B07B
        lda     #$00                            ; B07E
        sta     $50                             ; B080
        sta     LoadedObject_YVel               ; B082
        lda     #$10                            ; B084
        sta     LoadedObject_XVel               ; B086
        jsr     LE0ED                           ; B088
        bpl     L_B094                          ; B08B
        lda     #$00                            ; B08D
        sec                                     ; B08F
        sbc     LoadedObject_XVel               ; B090
        sta     LoadedObject_XVel               ; B092
L_B094: rts                                     ; B094

; ----------------------------------------------------------------------------
LB095:  jmp     L_B13B                          ; B095

; ----------------------------------------------------------------------------
        lda     #$80                            ; B098
        sta     $42                             ; B09A
        lda     #$80                            ; B09C
        sta     $43                             ; B09E
        jsr     LE0ED                           ; B0A0
        bne     L_B0B0                          ; B0A3
        jsr     LE0FA                           ; B0A5
        bne     L_B0B0                          ; B0A8
        jsr     LD804                           ; B0AA
        jsr     L_9B90                          ; B0AD
L_B0B0: lda     $50                             ; B0B0
        bne     L_B0ED                          ; B0B2
        jsr     LD2FE                           ; B0B4
        jsr     LD3E1                           ; B0B7
        jsr     LD2DE                           ; B0BA
        jsr     LD37D                           ; B0BD
        beq     L_B0C9                          ; B0C0
        lda     #$00                            ; B0C2
        sec                                     ; B0C4
        sbc     LoadedObject_XVel               ; B0C5
        sta     LoadedObject_XVel               ; B0C7
L_B0C9: lda     LoadedObject_YVel               ; B0C9
        bne     L_B0D2                          ; B0CB
        jsr     LE0FA                           ; B0CD
        bmi     L_B13B                          ; B0D0
L_B0D2: jsr     LE0ED                           ; B0D2
        eor     LoadedObject_XVel               ; B0D5
        bmi     L_B13B                          ; B0D7
        lda     #$01                            ; B0D9
        sta     $50                             ; B0DB
        lda     #$00                            ; B0DD
        sta     LoadedObject_XVel               ; B0DF
        sta     LoadedObject_YVel               ; B0E1
        jsr     LDFDD                           ; B0E3
        lda     #$01                            ; B0E6
        sta     $51                             ; B0E8
        jmp     L_B13B                          ; B0EA

; ----------------------------------------------------------------------------
L_B0ED: lda     $11                             ; B0ED
        and     #$3F                            ; B0EF
        bne     L_B0F6                          ; B0F1
        jsr     LDFDD                           ; B0F3
L_B0F6: jsr     LE0ED                           ; B0F6
        bmi     L_B101                          ; B0F9
        clc                                     ; B0FB
        adc     #$20                            ; B0FC
        jmp     L_B104                          ; B0FE

; ----------------------------------------------------------------------------
L_B101: sec                                     ; B101
        sbc     #$20                            ; B102
L_B104: sta     LoadedObject_XVel               ; B104
        dec     $51                             ; B106
        bne     L_B11A                          ; B108
        lda     $52                             ; B10A
        sta     $51                             ; B10C
        jsr     LE0FA                           ; B10E
        bmi     L_B118                          ; B111
        inc     LoadedObject_YVel               ; B113
        jmp     L_B11A                          ; B115

; ----------------------------------------------------------------------------
L_B118: dec     LoadedObject_YVel               ; B118
L_B11A: lda     #$40                            ; B11A
        ldx     #$4D                            ; B11C
        jsr     LEB14                           ; B11E
        jsr     LE083                           ; B121
        bpl     L_B13B                          ; B124
        lda     #$00                            ; B126
        sta     $50                             ; B128
        lda     #$06                            ; B12A
        sta     LoadedObject_YVel               ; B12C
        lda     #$10                            ; B12E
        ldx     LoadedObject_XVel               ; B130
        bmi     L_B139                          ; B132
        eor     #$FF                            ; B134
        clc                                     ; B136
        adc     #$01                            ; B137
L_B139: sta     LoadedObject_XVel               ; B139
L_B13B: lda     #$20                            ; B13B
        sta     $40                             ; B13D
        lda     #$20                            ; B13F
        sta     $41                             ; B141
        jsr     LEF2B                           ; B143
        beq     L_B14B                          ; B146
        jmp     LD7F8                           ; B148

; ----------------------------------------------------------------------------
L_B14B: lda     #$11                            ; B14B
        jsr     L_A30A                          ; B14D
        beq     L_B155                          ; B150
        jmp     L_A34D                          ; B152

; ----------------------------------------------------------------------------
L_B155: lda     #$01                            ; B155
        sta     $44                             ; B157
        lda     $11                             ; B159
        lsr     a                               ; B15B
        and     #$07                            ; B15C
        tax                                     ; B15E
        lda     LB166,x                         ; B15F
        jmp     LF011                           ; B162

; ----------------------------------------------------------------------------
        rts                                     ; B165

; ----------------------------------------------------------------------------
LB166:  .byte   $86,$87,$80,$81,$82,$83,$84,$85 ; B166
.endmacro

