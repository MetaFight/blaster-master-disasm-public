.macro MAC_object_handlers__robot
; ----------------------------------------------------------------------------
L_B855: jmp     L_B865                          ; B855

; ----------------------------------------------------------------------------
L_B858: lda     #$00                            ; B858
        sta     LoadedObj + Obj::Scratch1       ; B85A
        sta     LoadedObj + Obj::Facing         ; B85C
        sta     LoadedObj + Obj::Scratch0       ; B85E
        lda     #$00                            ; B860
        jsr     L_B2B4                          ; B862
L_B865: rts                                     ; B865

; ----------------------------------------------------------------------------
L_B866: jmp     L_B8CC                          ; B866

; ----------------------------------------------------------------------------
L_B869: lda     #$C0                            ; B869
        sta     $42                             ; B86B
        lda     #$80                            ; B86D
        sta     $43                             ; B86F
        lda     Global_FrameCounter             ; B871
        and     #$1F                            ; B873
        bne     L_B87C                          ; B875
        lda     #$47                            ; B877
        jsr     LC216                           ; B879
L_B87C: lda     LoadedObj + Obj::Scratch0       ; B87C
        beq     L_B885                          ; B87E
        dec     LoadedObj + Obj::Scratch0       ; B880
        jmp     L_B898                          ; B882

; ----------------------------------------------------------------------------
L_B885: inc     LoadedObj + Obj::Scratch1       ; B885
        lda     LoadedObj + Obj::Scratch1       ; B887
        and     #$60                            ; B889
        beq     L_B8CC                          ; B88B
        lda     LoadedObj + Obj::Scratch1       ; B88D
        and     #$1F                            ; B88F
        bne     L_B898                          ; B891
        jsr     LC105                           ; B893
        stx     LoadedObj + Obj::Facing         ; B896
L_B898: ldx     LoadedObj + Obj::Facing         ; B898
        lda     LB91A,x                         ; B89A
        sta     LoadedObj + Obj::Velocity_X     ; B89D
        lda     L_B919,x                        ; B89F
        sta     LoadedObj + Obj::Velocity_Y     ; B8A2
        jsr     LC027                           ; B8A4
        jsr     L_B243                          ; B8A7
        jsr     LC015                           ; B8AA
        jsr     LC03F                           ; B8AD
        jsr     L_B264                          ; B8B0
        jsr     LC018                           ; B8B3
        beq     L_B8C3                          ; B8B6
        lda     #$10                            ; B8B8
        sta     LoadedObj + Obj::Scratch0       ; B8BA
        jsr     LC1B3                           ; B8BC
        and     #$03                            ; B8BF
        sta     LoadedObj + Obj::Facing         ; B8C1
L_B8C3: lda     LoadedObj + Obj::Scratch1       ; B8C3
        and     #$1F                            ; B8C5
        bne     L_B8CC                          ; B8C7
        jsr     L_BBA9                          ; B8C9
L_B8CC: lda     #$18                            ; B8CC
        sta     $40                             ; B8CE
        lda     #$10                            ; B8D0
        sta     $41                             ; B8D2
        jsr     LC0FF                           ; B8D4
        beq     L_B8DC                          ; B8D7
        jmp     LC17A                           ; B8D9

; ----------------------------------------------------------------------------
L_B8DC: lda     #$00                            ; B8DC
        jsr     L_B2C5                          ; B8DE
        jsr     L_93BD                          ; B8E1
        ldx     #$00                            ; B8E4
        lda     LoadedObj + Obj::Facing         ; B8E6
        and     #$03                            ; B8E8
        cmp     #$01                            ; B8EA
        bne     L_B8F0                          ; B8EC
        ldx     #$40                            ; B8EE
L_B8F0: stx     $44                             ; B8F0
        lda     LoadedObj + Obj::Facing         ; B8F2
        and     #$03                            ; B8F4
        cmp     #$03                            ; B8F6
        bne     L_B8FC                          ; B8F8
        lda     #$01                            ; B8FA
L_B8FC: sta     $00                             ; B8FC
        asl     a                               ; B8FE
        clc                                     ; B8FF
        adc     $00                             ; B900
        sta     $00                             ; B902
        lda     $10                             ; B904
        lsr     a                               ; B906
        lsr     a                               ; B907
        lsr     a                               ; B908
        and     #$03                            ; B909
        tax                                     ; B90B
        lda     L_B91E,x                        ; B90C
        clc                                     ; B90F
        adc     $00                             ; B910
        clc                                     ; B912
        adc     #$13                            ; B913
        jmp     LC063                           ; B915

; ----------------------------------------------------------------------------
        rts                                     ; B918

; ----------------------------------------------------------------------------
L_B919: .byte   $F0                             ; B919
LB91A:  .byte   $00,$0A,$00,$F0                 ; B91A
L_B91E: .byte   $00,$01,$00,$02                 ; B91E
.endmacro

