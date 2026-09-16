.macro MAC_object_handlers__pickups
; ----------------------------------------------------------------------------
L_95CF: nop                                     ; 95CF
        nop                                     ; 95D0
        nop                                     ; 95D1
L_95D2: lda     #$00                            ; 95D2
        beq     L_960E                          ; 95D4
L_95D6: nop                                     ; 95D6
        nop                                     ; 95D7
        nop                                     ; 95D8
L_95D9: lda     #$01                            ; 95D9
        bne     L_960E                          ; 95DB
L_95DD: nop                                     ; 95DD
        nop                                     ; 95DE
        nop                                     ; 95DF
L_95E0: lda     #$02                            ; 95E0
        bne     L_960E                          ; 95E2
L_95E4: nop                                     ; 95E4
        nop                                     ; 95E5
        nop                                     ; 95E6
L_95E7: lda     #$03                            ; 95E7
        bne     L_960E                          ; 95E9
L_95EB: nop                                     ; 95EB
        nop                                     ; 95EC
        nop                                     ; 95ED
L_95EE: lda     #$04                            ; 95EE
        bne     L_960E                          ; 95F0
L_95F2: nop                                     ; 95F2
        nop                                     ; 95F3
        nop                                     ; 95F4
L_95F5: lda     #$05                            ; 95F5
        bne     L_960E                          ; 95F7
L_95F9: nop                                     ; 95F9
        nop                                     ; 95FA
        nop                                     ; 95FB
L_95FC: lda     #$06                            ; 95FC
        bne     L_960E                          ; 95FE
L_9600: nop                                     ; 9600
        nop                                     ; 9601
        nop                                     ; 9602
L_9603: lda     #$07                            ; 9603
        bne     L_960E                          ; 9605
L_9607: nop                                     ; 9607
        nop                                     ; 9608
        nop                                     ; 9609
L_960A: lda     #$08                            ; 960A
        bne     L_960E                          ; 960C
L_960E: sta     LoadedObj + Obj::Scratch0       ; 960E
        lda     #$23                            ; 9610
        sta     LoadedObj + Obj::Type           ; 9612
        lda     #$FF                            ; 9614
        sta     LoadedObj + Obj::Scratch1       ; 9616
        jmp     LC1EC                           ; 9618

; ----------------------------------------------------------------------------
L_961B: jmp     L_9633                          ; 961B

; ----------------------------------------------------------------------------
L_961E: jsr     LC138                           ; 961E
        bmi     L_9672                          ; 9621
        lda     Global_FrameCounter             ; 9623
        and     #$03                            ; 9625
        bne     L_9630                          ; 9627
        dec     LoadedObj + Obj::Scratch1       ; 9629
        bne     L_9630                          ; 962B
        jmp     L_96BF                          ; 962D

; ----------------------------------------------------------------------------
L_9630: jmp     L_9638                          ; 9630

; ----------------------------------------------------------------------------
L_9633: jsr     LC138                           ; 9633
        bmi     L_9672                          ; 9636
L_9638: lda     #$10                            ; 9638
        sta     $40                             ; 963A
        lda     #$10                            ; 963C
        sta     $41                             ; 963E
        jsr     LC0FF                           ; 9640
        beq     L_9648                          ; 9643
        jmp     LC17A                           ; 9645

; ----------------------------------------------------------------------------
L_9648: lda     #$00                            ; 9648
        jsr     LC147                           ; 964A
        beq     L_9673                          ; 964D
        lda     LoadedObj + Obj::Scratch1       ; 964F
        cmp     #$20                            ; 9651
        bcs     L_965A                          ; 9653
        lda     $10                             ; 9655
        lsr     a                               ; 9657
        bcs     L_9672                          ; 9658
L_965A: ldx     LoadedObj + Obj::Scratch0       ; 965A
        lda     L_96C2,x                        ; 965C
        sta     $45                             ; 965F
        lda     L_96CB,x                        ; 9661
        cmp     #$04                            ; 9664
        bne     L_966D                          ; 9666
        lda     $10                             ; 9668
        lsr     a                               ; 966A
        and     #$03                            ; 966B
L_966D: sta     $44                             ; 966D
        jmp     LC18C                           ; 966F

; ----------------------------------------------------------------------------
L_9672: rts                                     ; 9672

; ----------------------------------------------------------------------------
L_9673: lda     L_96D4                          ; 9673
        sta     IndirectPtrLo                   ; 9676
        lda     L_96D4+1                        ; 9678
        sta     IndirectPtrHi                   ; 967B
        lda     LoadedObj + Obj::Scratch0       ; 967D
        jsr     LC153                           ; 967F
        lda     (IndirectPtrLo),y               ; 9682
        ldx     LoadedObj + Obj::Scratch0       ; 9684
        clc                                     ; 9686
        adc     L_96E8,x                        ; 9687
        bcc     L_968E                          ; 968A
        lda     #$FF                            ; 968C
L_968E: sta     (IndirectPtrLo),y               ; 968E
        ldx     #$02                            ; 9690
L_9692: lda     $06F0,x                         ; 9692
        cmp     #$64                            ; 9695
        bcc     L_969E                          ; 9697
        lda     #$63                            ; 9699
        sta     $06F0,x                         ; 969B
L_969E: dex                                     ; 969E
        bpl     L_9692                          ; 969F
        lda     LoadedObj + Obj::Scratch0       ; 96A1
        cmp     #$06                            ; 96A3
        bcs     L_96BA                          ; 96A5
        lsr     a                               ; 96A7
        bcs     L_96B2                          ; 96A8
        lda     #$2C                            ; 96AA
        jsr     LC216                           ; 96AC
        jmp     L_96BF                          ; 96AF

; ----------------------------------------------------------------------------
L_96B2: lda     #$3F                            ; 96B2
        jsr     LC216                           ; 96B4
        jmp     L_96BF                          ; 96B7

; ----------------------------------------------------------------------------
L_96BA: lda     #$40                            ; 96BA
        jsr     LC216                           ; 96BC
L_96BF: jmp     LC14A                           ; 96BF

; ----------------------------------------------------------------------------
L_96C2: .byte   $80,$80,$8A,$8A,$82,$82,$84,$88 ; 96C2
        .byte   $86                             ; 96CA
L_96CB: .byte   $01,$04,$01,$04,$01,$04,$01,$01 ; 96CB
        .byte   $01                             ; 96D3
; ----------------------------------------------------------------------------
L_96D4: .addr   L_96D6                          ; 96D4
; ----------------------------------------------------------------------------
L_96D6: .byte   $0D,$04,$0D,$04,$C3,$00,$C3,$00 ; 96D6
        .byte   $92,$00,$92,$00,$F0,$06,$F1,$06 ; 96DE
        .byte   $F2,$06                         ; 96E6
L_96E8: .byte   $20,$80,$20,$80,$20,$80,$14,$14 ; 96E8
        .byte   $14                             ; 96F0
.endmacro

