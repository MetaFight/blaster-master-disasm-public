.macro MAC_dead_1_of_9
L_87F9: .byte   $FC,$FC,$0C,$CC,$02,$0C,$00,$00 ; 87F9
        .byte   $CE,$F4,$08,$0C,$CD,$02,$04,$08 ; 8801
        .byte   $10,$DE                         ; 8809
L_880B: .byte   $FC,$FC,$0C,$CC,$02,$0C,$00,$00 ; 880B
        .byte   $CE,$F4,$08,$0C,$CD,$02,$0C,$00 ; 8813
        .byte   $10,$CF,$00,$00,$0C,$CB,$05,$00 ; 881B
        .byte   $FC,$0C,$C9,$04,$00,$08,$1C,$CA ; 8823
        .byte   $04,$00,$FC,$0C,$C9,$04,$F8,$08 ; 882B
        .byte   $00,$CA,$10,$00,$10,$EA,$00,$00 ; 8833
        .byte   $1C,$C0,$02,$00,$00,$1C,$C1,$02 ; 883B
        .byte   $00,$00,$1C,$C2,$02,$00,$00,$1C ; 8843
        .byte   $E4,$05,$00,$00,$1C,$E6,$05,$FC ; 884B
        .byte   $FF,$00,$C6,$08,$01,$10,$D5,$FC ; 8853
        .byte   $FF,$00,$C6,$08,$01,$10,$D6,$00 ; 885B
        .byte   $00,$1C,$C7,$02,$00,$00,$1C,$E0 ; 8863
        .byte   $05,$00,$00,$1C,$E2,$05,$00,$00 ; 886B
        .byte   $1C,$E4,$05,$00,$FC,$0C,$D8,$04 ; 8873
        .byte   $00,$08,$1C,$D9,$04,$00,$FC,$0C ; 887B
        .byte   $D8,$04,$00,$08,$1C,$DA,$04,$00 ; 8883
        .byte   $FE,$0C,$AC,$02,$00,$08,$1C,$AF ; 888B
        .byte   $02,$00,$FD,$0C,$AC,$02,$00,$08 ; 8893
        .byte   $1C,$AE,$02,$00,$FC,$0C,$AC,$02 ; 889B
        .byte   $00,$08,$1C,$AD,$02,$00,$FD,$0C ; 88A3
        .byte   $AB,$02,$00,$08,$1C,$AE,$02,$04 ; 88AB
        .byte   $FC,$0C,$A3,$05,$F4,$FC,$00,$A5 ; 88B3
        .byte   $00,$08,$00,$A6,$00,$08,$10,$A7 ; 88BB
        .byte   $04,$FC,$0C,$A3,$05,$F4,$FC,$00 ; 88C3
        .byte   $A5,$00,$08,$00,$B6,$00,$08,$10 ; 88CB
        .byte   $A7,$0C,$00,$1C,$C3,$01,$0C,$00 ; 88D3
        .byte   $1C,$C4,$01,$0C,$00,$1C,$C5,$01 ; 88DB
        .byte   $F8,$FC,$00,$EB,$00,$08,$00,$EC ; 88E3
        .byte   $10,$00,$00,$EE,$00,$F8,$10,$ED ; 88EB
        .byte   $00,$00,$1C,$80,$05,$00,$00,$1C ; 88F3
        .byte   $82,$07,$00,$00,$1C,$84,$05,$00 ; 88FB
        .byte   $00,$1C,$86,$05                 ; 8903
.endmacro

.macro MAC_dead_2_of_9
; ----------------------------------------------------------------------------
L_8F7B: lda     $BB                             ; 8F7B
        cmp     #$03                            ; 8F7D
        bcc     L_8F8B                          ; 8F7F
        lda     LoadedObj + Obj::Velocity_X     ; 8F81
        asl     a                               ; 8F83
        sta     LoadedObj + Obj::Velocity_X     ; 8F84
        lda     LoadedObj + Obj::Velocity_Y     ; 8F86
        asl     a                               ; 8F88
        sta     LoadedObj + Obj::Velocity_Y     ; 8F89
L_8F8B: lda     #$03                            ; 8F8B
        sta     LoadedObj + Obj::Scratch1       ; 8F8D
        inc     LoadedObj + Obj::Type           ; 8F8F
        lda     #$1A                            ; 8F91
        jsr     LC216                           ; 8F93
L_8F96: rts                                     ; 8F96

.endmacro

.macro MAC_dead_3_of_9
; ----------------------------------------------------------------------------
L_A73F: jsr     LC1B3                           ; A73F
        and     #$38                            ; A742
        clc                                     ; A744
        adc     #$10                            ; A745
        sta     LoadedObj + Obj::Scratch1       ; A747
        lda     #$04                            ; A749
        sta     LoadedObj + Obj::Scratch0       ; A74B
        rts                                     ; A74D

.endmacro

.macro MAC_dead_4_of_9
; ----------------------------------------------------------------------------
L_AC4F: lda     #$14                            ; AC4F
        sta     LoadedObj + Obj::Type           ; AC51
        rts                                     ; AC53

.endmacro

.macro MAC_dead_5_of_9
; ----------------------------------------------------------------------------
L_AD99: lda     #$04                            ; AD99
        sta     LoadedObj + Obj::Scratch0       ; AD9B
        lda     #$37                            ; AD9D
        sta     LoadedObj + Obj::Scratch1       ; AD9F
        rts                                     ; ADA1

.endmacro

.macro MAC_dead_6_of_9
; ----------------------------------------------------------------------------
L_AE42: lda     LoadedObj + Obj::Scratch1       ; AE42
        cmp     #$30                            ; AE44
        bcs     L_AE54                          ; AE46
        cmp     #$18                            ; AE48
        bcs     L_AE50                          ; AE4A
        lda     #$08                            ; AE4C
        bne     L_AE56                          ; AE4E
L_AE50: lda     #$07                            ; AE50
        bne     L_AE56                          ; AE52
L_AE54: lda     #$06                            ; AE54
L_AE56: sta     $0670                           ; AE56
        rts                                     ; AE59

.endmacro

.macro MAC_dead_7_of_9
; ----------------------------------------------------------------------------
L_B16B: jmp     L_B172                          ; B16B

; ----------------------------------------------------------------------------
L_B16E: lda     #$17                            ; B16E
        sta     LoadedObj + Obj::Type           ; B170
L_B172: rts                                     ; B172

; ----------------------------------------------------------------------------
L_B173: jmp     L_B17E                          ; B173

; ----------------------------------------------------------------------------
L_B176: lda     #$80                            ; B176
        sta     $42                             ; B178
        lda     #$80                            ; B17A
        sta     $43                             ; B17C
L_B17E: lda     #$10                            ; B17E
        sta     $40                             ; B180
        lda     #$10                            ; B182
        sta     $41                             ; B184
        jsr     LC0FF                           ; B186
        beq     L_B18E                          ; B189
        jmp     LC114                           ; B18B

; ----------------------------------------------------------------------------
L_B18E: lda     #$80                            ; B18E
        jsr     LC147                           ; B190
        bne     L_B198                          ; B193
        jmp     L_B1DB                          ; B195

; ----------------------------------------------------------------------------
L_B198: lda     #$03                            ; B198
        sta     $44                             ; B19A
        lda     #$2A                            ; B19C
        sta     $45                             ; B19E
        jmp     LC1AD                           ; B1A0

; ----------------------------------------------------------------------------
L_B1A3: jmp     L_B1AA                          ; B1A3

; ----------------------------------------------------------------------------
L_B1A6: lda     #$19                            ; B1A6
        sta     LoadedObj + Obj::Type           ; B1A8
L_B1AA: rts                                     ; B1AA

; ----------------------------------------------------------------------------
L_B1AB: jmp     L_B1B6                          ; B1AB

; ----------------------------------------------------------------------------
L_B1AE: lda     #$80                            ; B1AE
        sta     $42                             ; B1B0
        lda     #$80                            ; B1B2
        sta     $43                             ; B1B4
L_B1B6: lda     #$10                            ; B1B6
        sta     $40                             ; B1B8
        lda     #$10                            ; B1BA
        sta     $41                             ; B1BC
        jsr     LC0FF                           ; B1BE
        beq     L_B1C6                          ; B1C1
        jmp     LC114                           ; B1C3

; ----------------------------------------------------------------------------
L_B1C6: lda     #$80                            ; B1C6
        jsr     LC147                           ; B1C8
        bne     L_B1D0                          ; B1CB
        jmp     L_B1EB                          ; B1CD

; ----------------------------------------------------------------------------
L_B1D0: lda     #$03                            ; B1D0
        sta     $44                             ; B1D2
        lda     #$2A                            ; B1D4
        sta     $45                             ; B1D6
        jmp     LC1AD                           ; B1D8

; ----------------------------------------------------------------------------
L_B1DB: clc                                     ; B1DB
        lda     PlayerSlot + Obj::Health        ; B1DC
        adc     #$10                            ; B1DF
        bcc     L_B1E5                          ; B1E1
        lda     #$FF                            ; B1E3
L_B1E5: sta     PlayerSlot + Obj::Health        ; B1E5
        jmp     LC114                           ; B1E8

; ----------------------------------------------------------------------------
L_B1EB: clc                                     ; B1EB
        lda     $92                             ; B1EC
        adc     #$10                            ; B1EE
        bcc     L_B1F4                          ; B1F0
        lda     #$FF                            ; B1F2
L_B1F4: sta     $92                             ; B1F4
        jmp     LC114                           ; B1F6

.endmacro

.macro MAC_dead_8_of_9
; ----------------------------------------------------------------------------
L_B285: jsr     L_B29E                          ; B285
        clc                                     ; B288
        lda     LoadedObj + Obj::Position_X_Lo  ; B289
        adc     LoadedObj + Obj::Velocity_X     ; B28B
        sta     LoadedObj + Obj::Position_X_Lo  ; B28D
        ror     a                               ; B28F
        eor     LoadedObj + Obj::Velocity_X     ; B290
        bpl     L_B29D                          ; B292
        lda     LoadedObj + Obj::Velocity_X     ; B294
        bmi     L_B29B                          ; B296
        inc     LoadedObj + Obj::Position_X_Hi  ; B298
        rts                                     ; B29A

; ----------------------------------------------------------------------------
L_B29B: dec     LoadedObj + Obj::Position_X_Hi  ; B29B
L_B29D: rts                                     ; B29D

; ----------------------------------------------------------------------------
L_B29E: clc                                     ; B29E
        lda     LoadedObj + Obj::Position_Y_Lo  ; B29F
        adc     LoadedObj + Obj::Velocity_Y     ; B2A1
        sta     LoadedObj + Obj::Position_Y_Lo  ; B2A3
        ror     a                               ; B2A5
        eor     LoadedObj + Obj::Velocity_Y     ; B2A6
        bpl     L_B2B3                          ; B2A8
        lda     LoadedObj + Obj::Velocity_Y     ; B2AA
        bmi     L_B2B1                          ; B2AC
        inc     LoadedObj + Obj::Position_Y_Hi  ; B2AE
        rts                                     ; B2B0

; ----------------------------------------------------------------------------
L_B2B1: dec     LoadedObj + Obj::Position_Y_Hi  ; B2B1
L_B2B3: rts                                     ; B2B3

.endmacro

.macro MAC_dead_9_of_9
; ----------------------------------------------------------------------------
L_BC28: jsr     LC105                           ; BC28
        lda     L_BC61,x                        ; BC2B
        sta     $04                             ; BC2E
        lda     #$04                            ; BC30
L_BC32: pha                                     ; BC32
        ldx     #$8C                            ; BC33
        lda     #$D2                            ; BC35
        sta     $00                             ; BC37
        jsr     LC1D7                           ; BC39
        beq     L_BC5F                          ; BC3C
        txa                                     ; BC3E
        pha                                     ; BC3F
        lda     #$4A                            ; BC40
        sta     ObjectTable + Obj::Type,x       ; BC42
        jsr     LC0D8                           ; BC45
        pla                                     ; BC48
        tax                                     ; BC49
        pla                                     ; BC4A
        pha                                     ; BC4B
        asl     a                               ; BC4C
        asl     a                               ; BC4D
        asl     a                               ; BC4E
        sec                                     ; BC4F
        sbc     #$10                            ; BC50
        clc                                     ; BC52
        adc     $04                             ; BC53
        sta     ObjectTable + Obj::Facing,x     ; BC55
        pla                                     ; BC58
        sec                                     ; BC59
        sbc     #$01                            ; BC5A
        bpl     L_BC32                          ; BC5C
        rts                                     ; BC5E

; ----------------------------------------------------------------------------
L_BC5F: pla                                     ; BC5F
        rts                                     ; BC60

; ----------------------------------------------------------------------------
L_BC61: .byte   $C0,$00,$40,$80                 ; BC61
.endmacro

