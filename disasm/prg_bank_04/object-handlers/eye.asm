.macro MAC_object_handlers__eye_1_of_3
; ----------------------------------------------------------------------------
L_B922: jmp     L_B930                          ; B922

; ----------------------------------------------------------------------------
L_B925: lda     #$00                            ; B925
        sta     LoadedObj + Obj::Facing         ; B927
        sta     LoadedObj + Obj::Scratch1       ; B929
        lda     #$01                            ; B92B
        jsr     L_B2B4                          ; B92D
L_B930: rts                                     ; B930

; ----------------------------------------------------------------------------
L_B931: jmp     L_B998                          ; B931

; ----------------------------------------------------------------------------
L_B934: lda     #$80                            ; B934
        sta     $42                             ; B936
        lda     #$80                            ; B938
        sta     $43                             ; B93A
        lda     LoadedObj + Obj::Scratch1       ; B93C
        and     #$40                            ; B93E
        bne     L_B998                          ; B940
        lda     LoadedObj + Obj::Scratch1       ; B942
        and     #$3F                            ; B944
        bne     L_B958                          ; B946
        jsr     L_BCC5                          ; B948
        jsr     LC105                           ; B94B
        lda     LB9B1,x                         ; B94E
        sta     LoadedObj + Obj::Velocity_X     ; B951
        lda     L_B9B0,x                        ; B953
        sta     LoadedObj + Obj::Velocity_Y     ; B956
L_B958: jsr     LC1B3                           ; B958
        and     #$0F                            ; B95B
        sec                                     ; B95D
        sbc     #$08                            ; B95E
        clc                                     ; B960
        adc     LoadedObj + Obj::Velocity_X     ; B961
        sta     LoadedObj + Obj::Velocity_X     ; B963
        ldx     #$4C                            ; B965
        lda     #$20                            ; B967
        jsr     LC14D                           ; B969
        jsr     LC1B3                           ; B96C
        and     #$0F                            ; B96F
        sec                                     ; B971
        sbc     #$08                            ; B972
        clc                                     ; B974
        adc     LoadedObj + Obj::Velocity_Y     ; B975
        sta     LoadedObj + Obj::Velocity_Y     ; B977
        ldx     #$4D                            ; B979
        lda     #$20                            ; B97B
        jsr     LC14D                           ; B97D
        jsr     LC165                           ; B980
        beq     L_B98C                          ; B983
        lda     #$00                            ; B985
        sec                                     ; B987
        sbc     LoadedObj + Obj::Velocity_X     ; B988
        sta     LoadedObj + Obj::Velocity_X     ; B98A
L_B98C: jsr     LC171                           ; B98C
        beq     L_B998                          ; B98F
        lda     #$00                            ; B991
        sec                                     ; B993
        sbc     LoadedObj + Obj::Velocity_Y     ; B994
        sta     LoadedObj + Obj::Velocity_Y     ; B996
L_B998: lda     #$10                            ; B998
        sta     $40                             ; B99A
        lda     #$10                            ; B99C
        sta     $41                             ; B99E
        jsr     LC0FF                           ; B9A0
        beq     L_B9A8                          ; B9A3
        jmp     LC17A                           ; B9A5

; ----------------------------------------------------------------------------
L_B9A8: lda     #$01                            ; B9A8
        jsr     L_B2C5                          ; B9AA
        jmp     L_B9B5                          ; B9AD

; ----------------------------------------------------------------------------
L_B9B0: .byte   $E0                             ; B9B0
LB9B1:  .byte   $00,$20,$00,$E0                 ; B9B1
; ----------------------------------------------------------------------------
L_B9B5: lda     #$01                            ; B9B5
        sta     $44                             ; B9B7
        jsr     LC138                           ; B9B9
        and     #$24                            ; B9BC
        cmp     #$04                            ; B9BE
        beq     L_B9C9                          ; B9C0
        lda     #$4C                            ; B9C2
        sta     $45                             ; B9C4
        jsr     LC1AD                           ; B9C6
L_B9C9: lda     $3F                             ; B9C9
        sec                                     ; B9CB
        sbc     #$0E                            ; B9CC
        sta     $3F                             ; B9CE
        inc     LoadedObj + Obj::Scratch1       ; B9D0
        lda     LoadedObj + Obj::Scratch1       ; B9D2
        and     #$3F                            ; B9D4
        cmp     #$08                            ; B9D6
        bcc     L_B9E9                          ; B9D8
        ldx     #$41                            ; B9DA
        and     #$08                            ; B9DC
        beq     L_B9E2                          ; B9DE
        ldx     #$01                            ; B9E0
L_B9E2: stx     $44                             ; B9E2
        lda     #$3F                            ; B9E4
        jmp     LC063                           ; B9E6

; ----------------------------------------------------------------------------
L_B9E9: lda     #$41                            ; B9E9
        jmp     LC063                           ; B9EB

.endmacro

.macro MAC_object_handlers__eye_2_of_3
; ----------------------------------------------------------------------------
L_BAF0: jmp     L_BB03                          ; BAF0

; ----------------------------------------------------------------------------
L_BAF3: ldx     #$62                            ; BAF3
        lda     #$D2                            ; BAF5
        sta     $00                             ; BAF7
        jsr     LC1D7                           ; BAF9
        beq     L_BB03                          ; BAFC
        lda     #$2C                            ; BAFE
        sta     ObjectTable + Obj::Type,x       ; BB00
L_BB03: lda     #$10                            ; BB03
        sta     $40                             ; BB05
        lda     #$10                            ; BB07
        sta     $41                             ; BB09
        jsr     LC0FF                           ; BB0B
        beq     L_BB13                          ; BB0E
        jmp     LC114                           ; BB10

; ----------------------------------------------------------------------------
L_BB13: rts                                     ; BB13

; ----------------------------------------------------------------------------
L_BB14: jmp     L_BB70                          ; BB14

; ----------------------------------------------------------------------------
L_BB17: jsr     LC1B3                           ; BB17
        ldx     #$FF                            ; BB1A
        lsr     a                               ; BB1C
        bcs     L_BB21                          ; BB1D
        ldx     #$20                            ; BB1F
L_BB21: stx     LoadedObj + Obj::Position_X_Hi  ; BB21
        and     #$0F                            ; BB23
        sta     LoadedObj + Obj::Position_Y_Hi  ; BB25
        lda     $13                             ; BB27
        bpl     L_BB33                          ; BB29
        ldx     LoadedObj + Obj::Position_X_Hi  ; BB2B
        lda     LoadedObj + Obj::Position_Y_Hi  ; BB2D
        sta     LoadedObj + Obj::Position_X_Hi  ; BB2F
        stx     LoadedObj + Obj::Position_Y_Hi  ; BB31
L_BB33: lda     $1D                             ; BB33
        clc                                     ; BB35
        adc     LoadedObj + Obj::Position_X_Hi  ; BB36
        sta     LoadedObj + Obj::Position_X_Hi  ; BB38
        lda     $1F                             ; BB3A
        clc                                     ; BB3C
        adc     LoadedObj + Obj::Position_Y_Hi  ; BB3D
        sta     LoadedObj + Obj::Position_Y_Hi  ; BB3F
        lda     $1C                             ; BB41
        sta     LoadedObj + Obj::Position_X_Lo  ; BB43
        lda     $1E                             ; BB45
        sta     LoadedObj + Obj::Position_Y_Lo  ; BB47
        jsr     LC105                           ; BB49
        lda     L_BB71,x                        ; BB4C
        sta     LoadedObj + Obj::Facing         ; BB4F
        jsr     LC1B3                           ; BB51
        and     #$3F                            ; BB54
        sec                                     ; BB56
        sbc     #$20                            ; BB57
        clc                                     ; BB59
        adc     LoadedObj + Obj::Facing         ; BB5A
        sta     LoadedObj + Obj::Facing         ; BB5C
        jsr     LC0CC                           ; BB5E
        sta     LoadedObj + Obj::Velocity_X     ; BB61
        lda     LoadedObj + Obj::Facing         ; BB63
        jsr     LC201                           ; BB65
        sta     LoadedObj + Obj::Velocity_Y     ; BB68
        inc     LoadedObj + Obj::Type           ; BB6A
        lda     #$70                            ; BB6C
        sta     LoadedObj + Obj::Scratch0       ; BB6E
L_BB70: rts                                     ; BB70

.endmacro

.macro MAC_object_handlers__eye_3_of_3
; ----------------------------------------------------------------------------
L_BB75: jmp     L_BB93                          ; BB75

; ----------------------------------------------------------------------------
L_BB78: lda     #$80                            ; BB78
        sta     $42                             ; BB7A
        lda     #$80                            ; BB7C
        sta     $43                             ; BB7E
        dec     LoadedObj + Obj::Scratch0       ; BB80
        bne     L_BB87                          ; BB82
        jmp     LC114                           ; BB84

; ----------------------------------------------------------------------------
L_BB87: lda     LoadedObj + Obj::Scratch0       ; BB87
        and     #$0F                            ; BB89
        bne     L_BB90                          ; BB8B
        jsr     L_BCC5                          ; BB8D
L_BB90: jsr     LC01E                           ; BB90
L_BB93: lda     #$10                            ; BB93
        sta     $40                             ; BB95
        lda     #$10                            ; BB97
        sta     $41                             ; BB99
        jsr     LC0FF                           ; BB9B
        bne     L_BBA8                          ; BB9E
        lda     #$03                            ; BBA0
        jsr     L_B2C5                          ; BBA2
        jmp     L_B9B5                          ; BBA5

; ----------------------------------------------------------------------------
L_BBA8: rts                                     ; BBA8

.endmacro

