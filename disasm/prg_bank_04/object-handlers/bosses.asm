.macro MAC_object_handlers__bosses_1_of_2
; ----------------------------------------------------------------------------
L_96F1: nop                                     ; 96F1
        nop                                     ; 96F2
        nop                                     ; 96F3
L_96F4: lda     #$00                            ; 96F4
        sta     $0670                           ; 96F6
        sta     $0671                           ; 96F9
        lda     #$FF                            ; 96FC
        sta     $0672                           ; 96FE
        lda     #$01                            ; 9701
        sta     LoadedObj + Obj::Scratch1       ; 9703
        lda     #$60                            ; 9705
        sta     LoadedObj + Obj::Health         ; 9707
        inc     LoadedObj + Obj::Type           ; 9709
        rts                                     ; 970B

; ----------------------------------------------------------------------------
L_970C: jmp     L_9899                          ; 970C

; ----------------------------------------------------------------------------
L_970F: lda     #$80                            ; 970F
        sta     $42                             ; 9711
        lda     #$C0                            ; 9713
        sta     $43                             ; 9715
        jsr     L_A07B                          ; 9717
        beq     L_971F                          ; 971A
        jmp     L_9899                          ; 971C

; ----------------------------------------------------------------------------
L_971F: lda     LoadedObj + Obj::IFrameCounter  ; 971F
        cmp     #$06                            ; 9721
        bcc     L_9728                          ; 9723
        jmp     L_9899                          ; 9725

; ----------------------------------------------------------------------------
L_9728: dec     LoadedObj + Obj::Scratch1       ; 9728
        bne     L_975C                          ; 972A
        lda     $14                             ; 972C
        cmp     #$03                            ; 972E
        bne     L_973F                          ; 9730
        lda     L_9945                          ; 9732
        sta     IndirectPtrLo                   ; 9735
        lda     L_9945+1                        ; 9737
        sta     IndirectPtrHi                   ; 973A
        jmp     L_9749                          ; 973C

; ----------------------------------------------------------------------------
L_973F: lda     L_9957                          ; 973F
        sta     IndirectPtrLo                   ; 9742
        lda     L9958                           ; 9744
        sta     IndirectPtrHi                   ; 9747
L_9749: inc     $0672                           ; 9749
        ldy     $0672                           ; 974C
L_974F: lda     (IndirectPtrLo),y               ; 974F
        bpl     L_975A                          ; 9751
        ldy     #$00                            ; 9753
        sty     $0672                           ; 9755
        beq     L_974F                          ; 9758
L_975A: sta     LoadedObj + Obj::Scratch0       ; 975A
L_975C: lda     LoadedObj + Obj::Scratch0       ; 975C
        cmp     #$01                            ; 975E
        beq     L_9789                          ; 9760
        cmp     #$02                            ; 9762
        bne     L_9769                          ; 9764
        jmp     L_980B                          ; 9766

; ----------------------------------------------------------------------------
L_9769: cmp     #$03                            ; 9769
        bne     L_9770                          ; 976B
        jmp     L_9832                          ; 976D

; ----------------------------------------------------------------------------
L_9770: cmp     #$04                            ; 9770
        bne     L_9777                          ; 9772
        jmp     L_985B                          ; 9774

; ----------------------------------------------------------------------------
L_9777: cmp     #$05                            ; 9777
        bne     L_977E                          ; 9779
        jmp     L_987A                          ; 977B

; ----------------------------------------------------------------------------
L_977E: lda     LoadedObj + Obj::Scratch1       ; 977E
        bne     L_9786                          ; 9780
        lda     #$20                            ; 9782
        sta     LoadedObj + Obj::Scratch1       ; 9784
L_9786: jmp     L_9899                          ; 9786

; ----------------------------------------------------------------------------
L_9789: lda     LoadedObj + Obj::Scratch1       ; 9789
        bne     L_97D5                          ; 978B
        lda     #$12                            ; 978D
        jsr     LC216                           ; 978F
        lda     #$18                            ; 9792
        sta     $0671                           ; 9794
        lda     #$02                            ; 9797
        sta     LoadedObj + Obj::Scratch1       ; 9799
        lda     LoadedObj + Obj::Position_X_Hi  ; 979B
        pha                                     ; 979D
        lda     LoadedObj + Obj::Position_Y_Hi  ; 979E
        pha                                     ; 97A0
        jsr     LC1B3                           ; 97A1
        and     #$07                            ; 97A4
        clc                                     ; 97A6
        adc     LoadedObj + Obj::Position_Y_Hi  ; 97A7
        sta     LoadedObj + Obj::Position_Y_Hi  ; 97A9
        jsr     LC1B3                           ; 97AB
        and     #$03                            ; 97AE
        bit     $13                             ; 97B0
        bpl     L_97B9                          ; 97B2
        eor     #$FF                            ; 97B4
        clc                                     ; 97B6
        adc     #$01                            ; 97B7
L_97B9: clc                                     ; 97B9
        adc     LoadedObj + Obj::Position_X_Hi  ; 97BA
        sta     LoadedObj + Obj::Position_X_Hi  ; 97BC
        jsr     LC05A                           ; 97BE
        lda     LoadedObj + Obj::Velocity_X     ; 97C1
        jsr     LC0F6                           ; 97C3
        sta     LoadedObj + Obj::Velocity_X     ; 97C6
        lda     LoadedObj + Obj::Velocity_Y     ; 97C8
        jsr     LC0F6                           ; 97CA
        sta     LoadedObj + Obj::Velocity_Y     ; 97CD
        pla                                     ; 97CF
        sta     LoadedObj + Obj::Position_Y_Hi  ; 97D0
        pla                                     ; 97D2
        sta     LoadedObj + Obj::Position_X_Hi  ; 97D3
L_97D5: lda     $0671                           ; 97D5
        jsr     LC0F0                           ; 97D8
        clc                                     ; 97DB
        adc     $0670                           ; 97DC
        sta     $0670                           ; 97DF
        bne     L_97EF                          ; 97E2
        lda     #$08                            ; 97E4
        sta     LoadedObj + Obj::Scratch1       ; 97E6
        lda     #$00                            ; 97E8
        sta     LoadedObj + Obj::Scratch0       ; 97EA
        jmp     L_9899                          ; 97EC

; ----------------------------------------------------------------------------
L_97EF: inc     LoadedObj + Obj::Scratch1       ; 97EF
        dec     $0671                           ; 97F1
        jsr     LC03F                           ; 97F4
        ldx     #$02                            ; 97F7
        ldy     #$08                            ; 97F9
        jsr     LC012                           ; 97FB
        jsr     LC027                           ; 97FE
        ldx     #$02                            ; 9801
        ldy     #$08                            ; 9803
        jsr     LC00C                           ; 9805
        jmp     L_9899                          ; 9808

; ----------------------------------------------------------------------------
L_980B: lda     LoadedObj + Obj::Scratch1       ; 980B
        bne     L_9813                          ; 980D
        lda     #$1E                            ; 980F
        sta     LoadedObj + Obj::Scratch1       ; 9811
L_9813: lda     LoadedObj + Obj::Scratch1       ; 9813
        cmp     #$0A                            ; 9815
        bne     L_982F                          ; 9817
        lda     #$15                            ; 9819
        jsr     LC216                           ; 981B
        inc     LoadedObj + Obj::Position_Y_Hi  ; 981E
        lda     #$71                            ; 9820
        jsr     LC1F5                           ; 9822
        dec     LoadedObj + Obj::Position_Y_Hi  ; 9825
        lda     #$08                            ; 9827
        sta     LoadedObj + Obj::Scratch1       ; 9829
        lda     #$00                            ; 982B
        sta     LoadedObj + Obj::Scratch0       ; 982D
L_982F: jmp     L_9899                          ; 982F

; ----------------------------------------------------------------------------
L_9832: lda     LoadedObj + Obj::Scratch1       ; 9832
        bne     L_983A                          ; 9834
        lda     #$1E                            ; 9836
        sta     LoadedObj + Obj::Scratch1       ; 9838
L_983A: lda     LoadedObj + Obj::Scratch1       ; 983A
        cmp     #$05                            ; 983C
        bne     L_9858                          ; 983E
        lda     #$15                            ; 9840
        jsr     LC216                           ; 9842
        inc     LoadedObj + Obj::Position_Y_Hi  ; 9845
        lda     #$6B                            ; 9847
        jsr     LC1F5                           ; 9849
        lda     #$6B                            ; 984C
        jsr     LC1F5                           ; 984E
        lda     #$6B                            ; 9851
        jsr     LC1F5                           ; 9853
        dec     LoadedObj + Obj::Position_Y_Hi  ; 9856
L_9858: jmp     L_9899                          ; 9858

; ----------------------------------------------------------------------------
L_985B: lda     LoadedObj + Obj::Scratch1       ; 985B
        bne     L_9865                          ; 985D
        lda     #$3C                            ; 985F
        sta     LoadedObj + Obj::Scratch1       ; 9861
        bne     L_9877                          ; 9863
L_9865: cmp     #$32                            ; 9865
        bne     L_9877                          ; 9867
        lda     #$16                            ; 9869
        jsr     LC216                           ; 986B
        inc     LoadedObj + Obj::Position_Y_Hi  ; 986E
        lda     #$6F                            ; 9870
        jsr     LC1F5                           ; 9872
        dec     LoadedObj + Obj::Position_Y_Hi  ; 9875
L_9877: jmp     L_9899                          ; 9877

; ----------------------------------------------------------------------------
L_987A: lda     LoadedObj + Obj::Scratch1       ; 987A
        bne     L_9884                          ; 987C
        lda     #$40                            ; 987E
        sta     LoadedObj + Obj::Scratch1       ; 9880
        bne     L_9896                          ; 9882
L_9884: cmp     #$30                            ; 9884
        bne     L_9896                          ; 9886
        lda     #$16                            ; 9888
        jsr     LC216                           ; 988A
        inc     LoadedObj + Obj::Position_Y_Hi  ; 988D
        lda     #$6D                            ; 988F
        jsr     LC1F5                           ; 9891
        dec     LoadedObj + Obj::Position_Y_Hi  ; 9894
L_9896: jmp     L_9899                          ; 9896

; ----------------------------------------------------------------------------
L_9899: lda     #$10                            ; 9899
        sta     $40                             ; 989B
        lda     #$10                            ; 989D
        sta     $41                             ; 989F
        lda     $B6                             ; 98A1
        beq     L_98A8                          ; 98A3
        jmp     L_9944                          ; 98A5

; ----------------------------------------------------------------------------
L_98A8: jsr     LC0FF                           ; 98A8
        lda     $3F                             ; 98AB
        pha                                     ; 98AD
        lda     $3E                             ; 98AE
        pha                                     ; 98B0
        lda     $3F                             ; 98B1
        sec                                     ; 98B3
        sbc     $0670                           ; 98B4
        sta     $3F                             ; 98B7
        bcc     L_98E6                          ; 98B9
        cmp     #$10                            ; 98BB
        bcc     L_98E6                          ; 98BD
        lda     $3F                             ; 98BF
        sec                                     ; 98C1
        sbc     #$10                            ; 98C2
        sta     $3F                             ; 98C4
        ldx     LoadedObj + Obj::Scratch0       ; 98C6
        lda     #$00                            ; 98C8
        cpx     #$00                            ; 98CA
        beq     L_98E8                          ; 98CC
        lda     #$01                            ; 98CE
        cpx     #$02                            ; 98D0
        beq     L_98E8                          ; 98D2
        cpx     #$03                            ; 98D4
        beq     L_98E8                          ; 98D6
        cpx     #$04                            ; 98D8
        beq     L_98E8                          ; 98DA
        cpx     #$05                            ; 98DC
        beq     L_98E8                          ; 98DE
        lda     #$02                            ; 98E0
        cpx     #$01                            ; 98E2
        beq     L_98E8                          ; 98E4
L_98E6: lda     #$04                            ; 98E6
L_98E8: nop                                     ; 98E8
        nop                                     ; 98E9
        sta     $45                             ; 98EA
        jsr     L_9EB3                          ; 98EC
        pla                                     ; 98EF
        sta     $3E                             ; 98F0
        pla                                     ; 98F2
        sta     $3F                             ; 98F3
        lda     $03FD                           ; 98F5
        bne     L_9944                          ; 98F8
        lda     $0670                           ; 98FA
        bne     L_9944                          ; 98FD
        lda     $45                             ; 98FF
        cmp     #$01                            ; 9901
        bne     L_9930                          ; 9903
        lda     LoadedObj + Obj::IFrameCounter  ; 9905
        bne     L_9930                          ; 9907
        lda     #$10                            ; 9909
        sta     $40                             ; 990B
        lda     #$10                            ; 990D
        sta     $41                             ; 990F
        lda     $3F                             ; 9911
        clc                                     ; 9913
        adc     #$10                            ; 9914
        sta     $3F                             ; 9916
        lda     #$20                            ; 9918
        jsr     LC144                           ; 991A
        pha                                     ; 991D
        lda     $3F                             ; 991E
        sec                                     ; 9920
        sbc     #$10                            ; 9921
        sta     $3F                             ; 9923
        pla                                     ; 9925
        bne     L_9930                          ; 9926
        lda     #$14                            ; 9928
        jsr     LC216                           ; 992A
        jmp     L_9944                          ; 992D

; ----------------------------------------------------------------------------
L_9930: lda     #$30                            ; 9930
        sta     $40                             ; 9932
        lda     #$20                            ; 9934
        sta     $41                             ; 9936
        lda     #$30                            ; 9938
        jsr     LC141                           ; 993A
        bne     L_9944                          ; 993D
        lda     #$10                            ; 993F
        jsr     LC216                           ; 9941
L_9944: rts                                     ; 9944

; ----------------------------------------------------------------------------
L_9945: .addr   L_9947                          ; 9945
; ----------------------------------------------------------------------------
L_9947: .byte   $00,$01,$01,$01,$04,$01,$01,$03 ; 9947
        .byte   $03,$03,$00,$01,$01,$01,$02,$FF ; 994F
L_9957: .byte   $59                             ; 9957
L9958:  .byte   $99                             ; 9958
L_9959: .byte   $01,$01,$01,$01,$00,$02,$02,$02 ; 9959
        .byte   $01,$01,$01,$01,$00,$01,$01,$01 ; 9961
        .byte   $01,$03,$01,$01,$01,$01,$01,$03 ; 9969
        .byte   $01,$02,$01,$03,$01,$03,$01,$01 ; 9971
        .byte   $01,$01,$02,$01,$01,$01,$01,$05 ; 9979
        .byte   $02,$02,$02,$02,$01,$01,$01,$01 ; 9981
        .byte   $05,$FF                         ; 9989
; ----------------------------------------------------------------------------
L_998B: nop                                     ; 998B
        nop                                     ; 998C
        nop                                     ; 998D
L_998E: jsr     LC1B3                           ; 998E
        and     #$0F                            ; 9991
        sec                                     ; 9993
        sbc     #$08                            ; 9994
        sta     LoadedObj + Obj::Velocity_X     ; 9996
        jsr     LC1B3                           ; 9998
        and     #$03                            ; 999B
        clc                                     ; 999D
        adc     #$18                            ; 999E
        sta     LoadedObj + Obj::Velocity_Y     ; 99A0
        lda     #$00                            ; 99A2
        sta     LoadedObj + Obj::Scratch1       ; 99A4
        lda     #$0A                            ; 99A6
        sta     LoadedObj + Obj::Scratch0       ; 99A8
        inc     LoadedObj + Obj::Type           ; 99AA
        rts                                     ; 99AC

; ----------------------------------------------------------------------------
L_99AD: jmp     L_99CA                          ; 99AD

; ----------------------------------------------------------------------------
L_99B0: lda     #$80                            ; 99B0
        sta     $42                             ; 99B2
        lda     #$80                            ; 99B4
        sta     $43                             ; 99B6
        jsr     LC01E                           ; 99B8
        dec     LoadedObj + Obj::Scratch0       ; 99BB
        lda     LoadedObj + Obj::Scratch1       ; 99BD
        clc                                     ; 99BF
        adc     LoadedObj + Obj::Scratch0       ; 99C0
        sta     LoadedObj + Obj::Scratch1       ; 99C2
        bne     L_99CA                          ; 99C4
        lda     #$08                            ; 99C6
        sta     LoadedObj + Obj::Scratch0       ; 99C8
L_99CA: lda     #$10                            ; 99CA
        sta     $40                             ; 99CC
        lda     #$10                            ; 99CE
        sta     $41                             ; 99D0
        jsr     LC0FF                           ; 99D2
        beq     L_99DA                          ; 99D5
        jmp     LC114                           ; 99D7

; ----------------------------------------------------------------------------
L_99DA: lda     #$20                            ; 99DA
        jsr     LC141                           ; 99DC
        lda     $3F                             ; 99DF
        sec                                     ; 99E1
        sbc     LoadedObj + Obj::Scratch1       ; 99E2
        sta     $3F                             ; 99E4
        lda     #$02                            ; 99E6
        sta     $44                             ; 99E8
        lda     #$7D                            ; 99EA
        sta     $45                             ; 99EC
        jsr     LC1AD                           ; 99EE
        rts                                     ; 99F1

; ----------------------------------------------------------------------------
L_99F2: nop                                     ; 99F2
        nop                                     ; 99F3
        nop                                     ; 99F4
L_99F5: inc     LoadedObj + Obj::Type           ; 99F5
        lda     #$00                            ; 99F7
        sta     LoadedObj + Obj::Scratch1       ; 99F9
        lda     #$01                            ; 99FB
        sta     LoadedObj + Obj::Scratch0       ; 99FD
        rts                                     ; 99FF

; ----------------------------------------------------------------------------
L_9A00: jmp     L_9A2B                          ; 9A00

; ----------------------------------------------------------------------------
L_9A03: lda     #$80                            ; 9A03
        sta     $42                             ; 9A05
        lda     #$80                            ; 9A07
        sta     $43                             ; 9A09
        lda     Global_FrameCounter             ; 9A0B
        and     #$01                            ; 9A0D
        bne     L_9A2B                          ; 9A0F
        lda     LoadedObj + Obj::Scratch0       ; 9A11
        bmi     L_9A1F                          ; 9A13
        lda     LoadedObj + Obj::Scratch1       ; 9A15
        cmp     #$0C                            ; 9A17
        bne     L_9A1F                          ; 9A19
        lda     #$FF                            ; 9A1B
        sta     LoadedObj + Obj::Scratch0       ; 9A1D
L_9A1F: lda     LoadedObj + Obj::Scratch1       ; 9A1F
        clc                                     ; 9A21
        adc     LoadedObj + Obj::Scratch0       ; 9A22
        sta     LoadedObj + Obj::Scratch1       ; 9A24
        bpl     L_9A2B                          ; 9A26
        jmp     LC114                           ; 9A28

; ----------------------------------------------------------------------------
L_9A2B: lda     #$10                            ; 9A2B
        sta     $40                             ; 9A2D
        lda     #$10                            ; 9A2F
        sta     $41                             ; 9A31
        jsr     LC0FF                           ; 9A33
        lda     $3F                             ; 9A36
        clc                                     ; 9A38
        adc     #$04                            ; 9A39
        sta     $3F                             ; 9A3B
        lda     $10                             ; 9A3D
        ror     a                               ; 9A3F
        ror     a                               ; 9A40
        ror     a                               ; 9A41
        ror     a                               ; 9A42
        and     #$40                            ; 9A43
        ora     #$02                            ; 9A45
        sta     $44                             ; 9A47
        lda     #$E9                            ; 9A49
        sta     $45                             ; 9A4B
        lda     LoadedObj + Obj::Scratch1       ; 9A4D
        beq     L_9A70                          ; 9A4F
        cmp     #$05                            ; 9A51
        bcc     L_9A57                          ; 9A53
        lda     #$05                            ; 9A55
L_9A57: pha                                     ; 9A57
        jsr     LC18C                           ; 9A58
        lda     $3F                             ; 9A5B
        clc                                     ; 9A5D
        adc     #$10                            ; 9A5E
        sta     $3F                             ; 9A60
        cmp     #$F0                            ; 9A62
        bcc     L_9A6A                          ; 9A64
        pla                                     ; 9A66
        jmp     L_9A7C                          ; 9A67

; ----------------------------------------------------------------------------
L_9A6A: pla                                     ; 9A6A
        sec                                     ; 9A6B
        sbc     #$01                            ; 9A6C
        bne     L_9A57                          ; 9A6E
L_9A70: lda     #$EB                            ; 9A70
        sta     $45                             ; 9A72
        jsr     LC18C                           ; 9A74
        lda     #$60                            ; 9A77
        jsr     LC141                           ; 9A79
L_9A7C: rts                                     ; 9A7C

; ----------------------------------------------------------------------------
L_9A7D: nop                                     ; 9A7D
        nop                                     ; 9A7E
        nop                                     ; 9A7F
L_9A80: inc     LoadedObj + Obj::Type           ; 9A80
        lda     #$00                            ; 9A82
        sta     LoadedObj + Obj::Scratch1       ; 9A84
        lda     #$01                            ; 9A86
        sta     LoadedObj + Obj::Scratch0       ; 9A88
        rts                                     ; 9A8A

; ----------------------------------------------------------------------------
L_9A8B: jmp     L_9AB6                          ; 9A8B

; ----------------------------------------------------------------------------
L_9A8E: lda     #$80                            ; 9A8E
        sta     $42                             ; 9A90
        lda     #$80                            ; 9A92
        sta     $43                             ; 9A94
        lda     Global_FrameCounter             ; 9A96
        and     #$03                            ; 9A98
        bne     L_9AB6                          ; 9A9A
        lda     LoadedObj + Obj::Scratch0       ; 9A9C
        bmi     L_9AAA                          ; 9A9E
        lda     LoadedObj + Obj::Scratch1       ; 9AA0
        cmp     #$05                            ; 9AA2
        bne     L_9AAA                          ; 9AA4
        lda     #$FF                            ; 9AA6
        sta     LoadedObj + Obj::Scratch0       ; 9AA8
L_9AAA: lda     LoadedObj + Obj::Scratch1       ; 9AAA
        clc                                     ; 9AAC
        adc     LoadedObj + Obj::Scratch0       ; 9AAD
        sta     LoadedObj + Obj::Scratch1       ; 9AAF
        bpl     L_9AB6                          ; 9AB1
        jmp     LC114                           ; 9AB3

; ----------------------------------------------------------------------------
L_9AB6: lda     #$10                            ; 9AB6
        sta     $40                             ; 9AB8
        lda     #$10                            ; 9ABA
        sta     $41                             ; 9ABC
        jsr     LC0FF                           ; 9ABE
        lda     #$02                            ; 9AC1
        sta     $44                             ; 9AC3
        lda     #$CD                            ; 9AC5
        sta     $45                             ; 9AC7
        jsr     LC18C                           ; 9AC9
        lda     #$CF                            ; 9ACC
        sta     $45                             ; 9ACE
        lda     LoadedObj + Obj::Scratch1       ; 9AD0
        beq     L_9AF3                          ; 9AD2
        cmp     #$05                            ; 9AD4
        bcc     L_9ADA                          ; 9AD6
        lda     #$05                            ; 9AD8
L_9ADA: pha                                     ; 9ADA
        lda     $3F                             ; 9ADB
        clc                                     ; 9ADD
        adc     #$10                            ; 9ADE
        sta     $3F                             ; 9AE0
        cmp     #$F0                            ; 9AE2
        bcc     L_9AEA                          ; 9AE4
        pla                                     ; 9AE6
        jmp     L_9B0A                          ; 9AE7

; ----------------------------------------------------------------------------
L_9AEA: jsr     LC18C                           ; 9AEA
        pla                                     ; 9AED
        sec                                     ; 9AEE
        sbc     #$01                            ; 9AEF
        bne     L_9ADA                          ; 9AF1
L_9AF3: lda     $3F                             ; 9AF3
        clc                                     ; 9AF5
        adc     #$10                            ; 9AF6
        sta     $3F                             ; 9AF8
        cmp     #$F0                            ; 9AFA
        bcs     L_9B0A                          ; 9AFC
        lda     #$6F                            ; 9AFE
        sta     $45                             ; 9B00
        jsr     LC18C                           ; 9B02
        lda     #$40                            ; 9B05
        jsr     LC141                           ; 9B07
L_9B0A: rts                                     ; 9B0A

; ----------------------------------------------------------------------------
L_9B0B: nop                                     ; 9B0B
        nop                                     ; 9B0C
        nop                                     ; 9B0D
L_9B0E: jsr     LC05A                           ; 9B0E
        inc     LoadedObj + Obj::Type           ; 9B11
        rts                                     ; 9B13

; ----------------------------------------------------------------------------
L_9B14: jmp     L_9B22                          ; 9B14

; ----------------------------------------------------------------------------
L_9B17: lda     #$80                            ; 9B17
        sta     $42                             ; 9B19
        lda     #$80                            ; 9B1B
        sta     $43                             ; 9B1D
        jsr     LC01E                           ; 9B1F
L_9B22: lda     #$10                            ; 9B22
        sta     $40                             ; 9B24
        lda     #$10                            ; 9B26
        sta     $41                             ; 9B28
        jsr     LC0FF                           ; 9B2A
        beq     L_9B32                          ; 9B2D
        jmp     LC114                           ; 9B2F

; ----------------------------------------------------------------------------
L_9B32: lda     #$40                            ; 9B32
        jsr     LC141                           ; 9B34
        lda     $10                             ; 9B37
        ror     a                               ; 9B39
        ror     a                               ; 9B3A
        ror     a                               ; 9B3B
        ror     a                               ; 9B3C
        and     #$40                            ; 9B3D
        ora     #$02                            ; 9B3F
        sta     $44                             ; 9B41
        lda     #$E7                            ; 9B43
        sta     $45                             ; 9B45
        jsr     LC18C                           ; 9B47
        rts                                     ; 9B4A

; ----------------------------------------------------------------------------
L_9B4B: nop                                     ; 9B4B
        nop                                     ; 9B4C
        nop                                     ; 9B4D
L_9B4E: jsr     L_A12C                          ; 9B4E
        lda     #$00                            ; 9B51
        sta     LoadedObj + Obj::Scratch1       ; 9B53
        lda     #$40                            ; 9B55
        sta     LoadedObj + Obj::Health         ; 9B57
        lda     #$08                            ; 9B59
        sta     LoadedObj + Obj::Velocity_X     ; 9B5B
        lda     #$03                            ; 9B5D
        sta     LoadedObj + Obj::Velocity_Y     ; 9B5F
        inc     LoadedObj + Obj::Type           ; 9B61
        rts                                     ; 9B63

; ----------------------------------------------------------------------------
L_9B64: jmp     L_9B94                          ; 9B64

; ----------------------------------------------------------------------------
L_9B67: lda     #$80                            ; 9B67
        sta     $42                             ; 9B69
        lda     #$80                            ; 9B6B
        sta     $43                             ; 9B6D
        jsr     L_A07B                          ; 9B6F
        beq     L_9B77                          ; 9B72
        jmp     L_9B94                          ; 9B74

; ----------------------------------------------------------------------------
L_9B77: lda     LoadedObj + Obj::IFrameCounter  ; 9B77
        cmp     #$06                            ; 9B79
        bcs     L_9B94                          ; 9B7B
        inc     LoadedObj + Obj::Scratch1       ; 9B7D
        jsr     LC01E                           ; 9B7F
        lda     Global_FrameCounter             ; 9B82
        and     #$4F                            ; 9B84
        bne     L_9B94                          ; 9B86
        lda     #$73                            ; 9B88
        jsr     LC1F5                           ; 9B8A
        beq     L_9B94                          ; 9B8D
        lda     #$0E                            ; 9B8F
        jsr     LC216                           ; 9B91
L_9B94: lda     #$10                            ; 9B94
        sta     $40                             ; 9B96
        lda     #$10                            ; 9B98
        sta     $41                             ; 9B9A
        lda     $B6                             ; 9B9C
        beq     L_9BA1                          ; 9B9E
        rts                                     ; 9BA0

; ----------------------------------------------------------------------------
L_9BA1: jsr     LC0FF                           ; 9BA1
        lda     $3F                             ; 9BA4
        pha                                     ; 9BA6
        lda     $3E                             ; 9BA7
        pha                                     ; 9BA9
        jsr     L_9D77                          ; 9BAA
        pla                                     ; 9BAD
        sta     $3E                             ; 9BAE
        pla                                     ; 9BB0
        sta     $3F                             ; 9BB1
        lda     LoadedObj + Obj::Velocity_X     ; 9BB3
        bmi     L_9BBF                          ; 9BB5
        lda     $3E                             ; 9BB7
        cmp     #$CC                            ; 9BB9
        bcc     L_9BCE                          ; 9BBB
        bcs     L_9BC5                          ; 9BBD
L_9BBF: lda     $3E                             ; 9BBF
        cmp     #$2C                            ; 9BC1
        bcs     L_9BCE                          ; 9BC3
L_9BC5: lda     LoadedObj + Obj::Velocity_X     ; 9BC5
        eor     #$FF                            ; 9BC7
        clc                                     ; 9BC9
        adc     #$01                            ; 9BCA
        sta     LoadedObj + Obj::Velocity_X     ; 9BCC
L_9BCE: lda     LoadedObj + Obj::Velocity_Y     ; 9BCE
        bmi     L_9BDA                          ; 9BD0
        lda     $3F                             ; 9BD2
        cmp     #$47                            ; 9BD4
        bcc     L_9BE9                          ; 9BD6
        bcs     L_9BE0                          ; 9BD8
L_9BDA: lda     $3F                             ; 9BDA
        cmp     #$17                            ; 9BDC
        bcs     L_9BE9                          ; 9BDE
L_9BE0: lda     LoadedObj + Obj::Velocity_Y     ; 9BE0
        eor     #$FF                            ; 9BE2
        clc                                     ; 9BE4
        adc     #$01                            ; 9BE5
        sta     LoadedObj + Obj::Velocity_Y     ; 9BE7
L_9BE9: lda     $03FD                           ; 9BE9
        bne     L_9C19                          ; 9BEC
        lda     #$40                            ; 9BEE
        sta     $40                             ; 9BF0
        lda     #$30                            ; 9BF2
        sta     $41                             ; 9BF4
        lda     #$20                            ; 9BF6
        jsr     LC090                           ; 9BF8
        beq     L_9C19                          ; 9BFB
        lda     LoadedObj + Obj::IFrameCounter  ; 9BFD
        bne     L_9C19                          ; 9BFF
        lda     #$10                            ; 9C01
        sta     $40                             ; 9C03
        lda     #$10                            ; 9C05
        sta     $41                             ; 9C07
        lda     $3F                             ; 9C09
        pha                                     ; 9C0B
        clc                                     ; 9C0C
        adc     #$20                            ; 9C0D
        sta     $3F                             ; 9C0F
        lda     #$10                            ; 9C11
        jsr     LC093                           ; 9C13
        pla                                     ; 9C16
        sta     $3F                             ; 9C17
L_9C19: lda     LoadedObj + Obj::Scratch1       ; 9C19
        lsr     a                               ; 9C1B
        lsr     a                               ; 9C1C
        sta     $45                             ; 9C1D
        jsr     L_9EB3                          ; 9C1F
        rts                                     ; 9C22

; ----------------------------------------------------------------------------
L_9C23: sta     $06                             ; 9C23
        lda     LoadedObj + Obj::IFrameCounter  ; 9C25
        ora     $03FD                           ; 9C27
        ora     $15                             ; 9C2A
        bne     L_9C63                          ; 9C2C
        lda     $44                             ; 9C2E
        asl     a                               ; 9C30
        rol     a                               ; 9C31
        rol     a                               ; 9C32
        and     #$01                            ; 9C33
        tax                                     ; 9C35
        lda     L_9D6F,x                        ; 9C36
        sta     $07                             ; 9C39
        lda     L9D73,x                         ; 9C3B
        sta     $08                             ; 9C3E
        lda     L9D71,x                         ; 9C40
        sta     $09                             ; 9C43
        lda     L9D75,x                         ; 9C45
        sta     $0A                             ; 9C48
        jsr     L_9D38                          ; 9C4A
        ldx     $06                             ; 9C4D
        lda     #$18                            ; 9C4F
        bit     $44                             ; 9C51
        bvs     L_9C57                          ; 9C53
        lda     #$E8                            ; 9C55
L_9C57: clc                                     ; 9C57
        adc     $0670,x                         ; 9C58
        sta     $0670,x                         ; 9C5B
        lda     $06                             ; 9C5E
        jsr     L_9DA4                          ; 9C60
L_9C63: jsr     LC12C                           ; 9C63
        lda     #$06                            ; 9C66
        sta     $05                             ; 9C68
L_9C6A: lda     $3F                             ; 9C6A
        pha                                     ; 9C6C
        lda     $3E                             ; 9C6D
        pha                                     ; 9C6F
        lda     $05                             ; 9C70
        asl     a                               ; 9C72
        clc                                     ; 9C73
        adc     $06                             ; 9C74
        tax                                     ; 9C76
        lda     $3E                             ; 9C77
        clc                                     ; 9C79
        adc     $0670,x                         ; 9C7A
        sta     $3E                             ; 9C7D
        ror     a                               ; 9C7F
        eor     $0670,x                         ; 9C80
        bpl     L_9C88                          ; 9C83
        jmp     L_9D27                          ; 9C85

; ----------------------------------------------------------------------------
L_9C88: lda     $3F                             ; 9C88
        clc                                     ; 9C8A
        adc     $0671,x                         ; 9C8B
        sta     $3F                             ; 9C8E
        ror     a                               ; 9C90
        eor     $0671,x                         ; 9C91
        bpl     L_9C99                          ; 9C94
        jmp     L_9D27                          ; 9C96

; ----------------------------------------------------------------------------
L_9C99: lda     $03FD                           ; 9C99
        bne     L_9CA9                          ; 9C9C
        lda     $44                             ; 9C9E
        pha                                     ; 9CA0
        lda     #$40                            ; 9CA1
        jsr     LC090                           ; 9CA3
        pla                                     ; 9CA6
        sta     $44                             ; 9CA7
L_9CA9: lda     $14                             ; 9CA9
        cmp     #$01                            ; 9CAB
        beq     L_9CB5                          ; 9CAD
        lda     $05                             ; 9CAF
        beq     L_9CCB                          ; 9CB1
        bne     L_9CC1                          ; 9CB3
L_9CB5: lda     $05                             ; 9CB5
        cmp     #$02                            ; 9CB7
        bne     L_9CC1                          ; 9CB9
        lda     #$00                            ; 9CBB
        sta     $05                             ; 9CBD
        beq     L_9CCB                          ; 9CBF
L_9CC1: lda     #$C7                            ; 9CC1
        sta     $45                             ; 9CC3
        jsr     LC18C                           ; 9CC5
        jmp     L_9D27                          ; 9CC8

; ----------------------------------------------------------------------------
L_9CCB: lda     #$C9                            ; 9CCB
        sta     $45                             ; 9CCD
        jsr     LC18C                           ; 9CCF
        lda     $3F                             ; 9CD2
        clc                                     ; 9CD4
        adc     #$10                            ; 9CD5
        sta     $3F                             ; 9CD7
        lda     #$CB                            ; 9CD9
        sta     $45                             ; 9CDB
        jsr     LC18C                           ; 9CDD
        lda     $03FD                           ; 9CE0
        bne     L_9D27                          ; 9CE3
        lda     $44                             ; 9CE5
        pha                                     ; 9CE7
        lda     #$40                            ; 9CE8
        jsr     LC090                           ; 9CEA
        pla                                     ; 9CED
        sta     $44                             ; 9CEE
        lda     $14                             ; 9CF0
        cmp     #$02                            ; 9CF2
        bcc     L_9D27                          ; 9CF4
        lda     Global_FrameCounter             ; 9CF6
        and     #$07                            ; 9CF8
        bne     L_9D27                          ; 9CFA
        lda     $3F                             ; 9CFC
        cmp     #$40                            ; 9CFE
        bcs     L_9D27                          ; 9D00
        lda     $3E                             ; 9D02
        sec                                     ; 9D04
        sbc     $7C                             ; 9D05
        clc                                     ; 9D07
        adc     #$20                            ; 9D08
        cmp     #$40                            ; 9D0A
        bcs     L_9D27                          ; 9D0C
        lda     LoadedObj + Obj::Position_X_Hi  ; 9D0E
        pha                                     ; 9D10
        lda     LoadedObj + Obj::Position_X_Lo  ; 9D11
        pha                                     ; 9D13
        lda     $3E                             ; 9D14
        sta     LoadedObj + Obj::Position_X_Lo  ; 9D16
        lda     $3F                             ; 9D18
        sta     LoadedObj + Obj::Position_X_Hi  ; 9D1A
        lda     #$75                            ; 9D1C
        jsr     LC1F5                           ; 9D1E
        pla                                     ; 9D21
        sta     LoadedObj + Obj::Position_X_Lo  ; 9D22
        pla                                     ; 9D24
        sta     LoadedObj + Obj::Position_X_Hi  ; 9D25
L_9D27: pla                                     ; 9D27
        sta     $3E                             ; 9D28
        pla                                     ; 9D2A
        sta     $3F                             ; 9D2B
        dec     $05                             ; 9D2D
        bmi     L_9D34                          ; 9D2F
        jmp     L_9C6A                          ; 9D31

; ----------------------------------------------------------------------------
L_9D34: jsr     LC222                           ; 9D34
        rts                                     ; 9D37

; ----------------------------------------------------------------------------
L_9D38: ldx     $06                             ; 9D38
        lda     $0682,x                         ; 9D3A
        clc                                     ; 9D3D
        adc     $09                             ; 9D3E
        sta     $0682,x                         ; 9D40
        lda     $0680,x                         ; 9D43
        adc     $07                             ; 9D46
        sta     $0680,x                         ; 9D48
        jsr     LC0CF                           ; 9D4B
        ldx     $06                             ; 9D4E
        sta     $0670,x                         ; 9D50
        ldx     $06                             ; 9D53
        lda     $0683,x                         ; 9D55
        clc                                     ; 9D58
        adc     $0A                             ; 9D59
        sta     $0683,x                         ; 9D5B
        lda     $0681,x                         ; 9D5E
        adc     $08                             ; 9D61
        sta     $0681,x                         ; 9D63
        jsr     LC207                           ; 9D66
        ldx     $06                             ; 9D69
        sta     $0671,x                         ; 9D6B
        rts                                     ; 9D6E

; ----------------------------------------------------------------------------
L_9D6F: .byte   $02,$FE                         ; 9D6F
L9D71:  .byte   $19,$DB                         ; 9D71
L9D73:  .byte   $01,$02                         ; 9D73
L9D75:  .byte   $23,$43                         ; 9D75
; ----------------------------------------------------------------------------
L_9D77: lda     $3F                             ; 9D77
        pha                                     ; 9D79
        lda     $3E                             ; 9D7A
        pha                                     ; 9D7C
        lda     #$42                            ; 9D7D
        sta     $44                             ; 9D7F
        lda     $3E                             ; 9D81
        clc                                     ; 9D83
        adc     #$18                            ; 9D84
        sta     $3E                             ; 9D86
        lda     #$00                            ; 9D88
        jsr     L_9C23                          ; 9D8A
        pla                                     ; 9D8D
        sta     $3E                             ; 9D8E
        pla                                     ; 9D90
        sta     $3F                             ; 9D91
        lda     #$02                            ; 9D93
        sta     $44                             ; 9D95
        lda     $3E                             ; 9D97
        sec                                     ; 9D99
        sbc     #$18                            ; 9D9A
        sta     $3E                             ; 9D9C
        lda     #$14                            ; 9D9E
        jsr     L_9C23                          ; 9DA0
        rts                                     ; 9DA3

; ----------------------------------------------------------------------------
L_9DA4: pha                                     ; 9DA4
        tax                                     ; 9DA5
        lda     #$0D                            ; 9DA6
L_9DA8: pha                                     ; 9DA8
        jsr     L_9DD6                          ; 9DA9
        inx                                     ; 9DAC
        pla                                     ; 9DAD
        sec                                     ; 9DAE
        sbc     #$01                            ; 9DAF
        bpl     L_9DA8                          ; 9DB1
        pla                                     ; 9DB3
        tax                                     ; 9DB4
        tay                                     ; 9DB5
        lda     #$08                            ; 9DB6
L_9DB8: pha                                     ; 9DB8
        lda     $0670,x                         ; 9DB9
        sec                                     ; 9DBC
        sbc     $067E,y                         ; 9DBD
        sta     $0670,x                         ; 9DC0
        lda     $0671,x                         ; 9DC3
        sec                                     ; 9DC6
        sbc     $067F,y                         ; 9DC7
        sta     $0671,x                         ; 9DCA
        inx                                     ; 9DCD
        inx                                     ; 9DCE
        pla                                     ; 9DCF
        sec                                     ; 9DD0
        sbc     #$01                            ; 9DD1
        bne     L_9DB8                          ; 9DD3
        rts                                     ; 9DD5

; ----------------------------------------------------------------------------
L_9DD6: lda     $0672,x                         ; 9DD6
        sec                                     ; 9DD9
        sbc     $0670,x                         ; 9DDA
        bmi     L_9DF1                          ; 9DDD
        cmp     #$10                            ; 9DDF
        bcc     L_9DED                          ; 9DE1
        lda     #$10                            ; 9DE3
        clc                                     ; 9DE5
        adc     $0670,x                         ; 9DE6
        sta     $0672,x                         ; 9DE9
        rts                                     ; 9DEC

; ----------------------------------------------------------------------------
L_9DED: dec     $0672,x                         ; 9DED
        rts                                     ; 9DF0

; ----------------------------------------------------------------------------
L_9DF1: cmp     #$F0                            ; 9DF1
        bcs     L_9DFF                          ; 9DF3
        lda     #$F0                            ; 9DF5
        clc                                     ; 9DF7
        adc     $0670,x                         ; 9DF8
        sta     $0672,x                         ; 9DFB
        rts                                     ; 9DFE

; ----------------------------------------------------------------------------
L_9DFF: inc     $0672,x                         ; 9DFF
        rts                                     ; 9E02

; ----------------------------------------------------------------------------
L_9E03: nop                                     ; 9E03
        nop                                     ; 9E04
        nop                                     ; 9E05
L_9E06: jsr     LC05A                           ; 9E06
        lda     LoadedObj + Obj::Velocity_X     ; 9E09
        jsr     LC0F0                           ; 9E0B
        sta     LoadedObj + Obj::Velocity_X     ; 9E0E
        lda     LoadedObj + Obj::Velocity_Y     ; 9E10
        jsr     LC0F0                           ; 9E12
        sta     LoadedObj + Obj::Velocity_Y     ; 9E15
        inc     LoadedObj + Obj::Type           ; 9E17
        rts                                     ; 9E19

; ----------------------------------------------------------------------------
L_9E1A: jmp     L_9E28                          ; 9E1A

; ----------------------------------------------------------------------------
L_9E1D: lda     #$80                            ; 9E1D
        sta     $42                             ; 9E1F
        lda     #$80                            ; 9E21
        sta     $43                             ; 9E23
        jsr     LC01E                           ; 9E25
L_9E28: lda     #$10                            ; 9E28
        sta     $40                             ; 9E2A
        lda     #$10                            ; 9E2C
        sta     $41                             ; 9E2E
        jsr     LC0FF                           ; 9E30
        bne     L_9E4E                          ; 9E33
        lda     #$20                            ; 9E35
        jsr     LC141                           ; 9E37
        beq     L_9E4E                          ; 9E3A
        lda     #$11                            ; 9E3C
        sta     $45                             ; 9E3E
        lda     $10                             ; 9E40
        asl     a                               ; 9E42
        asl     a                               ; 9E43
        and     #$C0                            ; 9E44
        ora     #$01                            ; 9E46
        sta     $44                             ; 9E48
        jsr     LC1AD                           ; 9E4A
        rts                                     ; 9E4D

; ----------------------------------------------------------------------------
L_9E4E: jmp     LC114                           ; 9E4E

; ----------------------------------------------------------------------------
L_9E51: nop                                     ; 9E51
        nop                                     ; 9E52
        nop                                     ; 9E53
L_9E54: lda     LoadedObj + Obj::Position_X_Lo  ; 9E54
        sta     $3E                             ; 9E56
        lda     LoadedObj + Obj::Position_X_Hi  ; 9E58
        sta     $3F                             ; 9E5A
        jsr     LC17D                           ; 9E5C
        jsr     LC05A                           ; 9E5F
        inc     LoadedObj + Obj::Type           ; 9E62
        lda     #$40                            ; 9E64
        sta     LoadedObj + Obj::Scratch1       ; 9E66
        rts                                     ; 9E68

; ----------------------------------------------------------------------------
L_9E69: jmp     L_9E7D                          ; 9E69

; ----------------------------------------------------------------------------
L_9E6C: dec     LoadedObj + Obj::Scratch1       ; 9E6C
        beq     L_9EB0                          ; 9E6E
        jsr     LC01E                           ; 9E70
        lda     LoadedObj + Obj::Velocity_Y     ; 9E73
        cmp     #$70                            ; 9E75
        bcs     L_9E7D                          ; 9E77
        inc     LoadedObj + Obj::Velocity_Y     ; 9E79
        inc     LoadedObj + Obj::Velocity_Y     ; 9E7B
L_9E7D: lda     #$18                            ; 9E7D
        sta     $40                             ; 9E7F
        lda     #$18                            ; 9E81
        sta     $41                             ; 9E83
        jsr     LC0FF                           ; 9E85
        bne     L_9EAF                          ; 9E88
        lda     $3F                             ; 9E8A
        clc                                     ; 9E8C
        adc     #$10                            ; 9E8D
        sta     $3F                             ; 9E8F
        lda     #$40                            ; 9E91
        jsr     LC141                           ; 9E93
        lda     #$01                            ; 9E96
        sta     $44                             ; 9E98
        lda     #$EF                            ; 9E9A
        sta     $45                             ; 9E9C
        jsr     LC18C                           ; 9E9E
        lda     $3F                             ; 9EA1
        sec                                     ; 9EA3
        sbc     #$10                            ; 9EA4
        sta     $3F                             ; 9EA6
        lda     #$ED                            ; 9EA8
        sta     $45                             ; 9EAA
        jsr     LC18C                           ; 9EAC
L_9EAF: rts                                     ; 9EAF

; ----------------------------------------------------------------------------
L_9EB0: jmp     LC114                           ; 9EB0

; ----------------------------------------------------------------------------
L_9EB3: jsr     LC10E                           ; 9EB3
        lda     $45                             ; 9EB6
        and     #$03                            ; 9EB8
        asl     a                               ; 9EBA
        asl     a                               ; 9EBB
        tay                                     ; 9EBC
        lda     LoadedObj + Obj::IFrameCounter  ; 9EBD
        bne     L_9EED                          ; 9EBF
        lda     $14                             ; 9EC1
        and     #$07                            ; 9EC3
        asl     a                               ; 9EC5
        asl     a                               ; 9EC6
        tax                                     ; 9EC7
        lda     #$04                            ; 9EC8
L_9ECA: pha                                     ; 9ECA
        lda     L_9F21,x                        ; 9ECB
        sta     Background_Palettes + BgPalette::Colour0,y ; 9ECE
        sta     $0650,y                         ; 9ED1
        inx                                     ; 9ED4
        iny                                     ; 9ED5
        pla                                     ; 9ED6
        sec                                     ; 9ED7
        sbc     #$01                            ; 9ED8
        bne     L_9ECA                          ; 9EDA
        lda     $03FD                           ; 9EDC
        beq     L_9F04                          ; 9EDF
        lda     $45                             ; 9EE1
        pha                                     ; 9EE3
        jsr     L_9F41                          ; 9EE4
        pla                                     ; 9EE7
        sta     $45                             ; 9EE8
        jmp     L_9F04                          ; 9EEA

; ----------------------------------------------------------------------------
L_9EED: lda     $10                             ; 9EED
        and     #$03                            ; 9EEF
        asl     a                               ; 9EF1
        asl     a                               ; 9EF2
        tax                                     ; 9EF3
        lda     #$04                            ; 9EF4
L_9EF6: pha                                     ; 9EF6
        lda     Sprite_Palettes + SpritePalette::Transparency,x ; 9EF7
        sta     Background_Palettes + BgPalette::Colour0,y ; 9EF9
        inx                                     ; 9EFC
        iny                                     ; 9EFD
        pla                                     ; 9EFE
        sec                                     ; 9EFF
        sbc     #$01                            ; 9F00
        bne     L_9EF6                          ; 9F02
L_9F04: lda     $45                             ; 9F04
        lsr     a                               ; 9F06
        ror     a                               ; 9F07
        ror     a                               ; 9F08
        and     #$C0                            ; 9F09
        rol     $F1                             ; 9F0B
        clc                                     ; 9F0D
        adc     #$1C                            ; 9F0E
        sec                                     ; 9F10
        sbc     $3E                             ; 9F11
        sta     $FD                             ; 9F13
        bcs     L_9F19                          ; 9F15
        inc     $F1                             ; 9F17
L_9F19: lda     #$BF                            ; 9F19
        sec                                     ; 9F1B
        sbc     $3F                             ; 9F1C
        sta     $FC                             ; 9F1E
        rts                                     ; 9F20

; ----------------------------------------------------------------------------
L_9F21: .byte   $0F,$05,$15,$25,$0F,$06,$17,$27 ; 9F21
        .byte   $0F,$1B,$2B,$3B,$0F,$0A,$1A,$27 ; 9F29
        .byte   $0F,$06,$16,$27,$0F,$1B,$2B,$3B ; 9F31
        .byte   $0F,$16,$26,$34,$0F,$1B,$2B,$3B ; 9F39
; ----------------------------------------------------------------------------
L_9F41: lda     $03FD                           ; 9F41
        lsr     a                               ; 9F44
        lsr     a                               ; 9F45
        sta     $45                             ; 9F46
        ldx     #$00                            ; 9F48
        jsr     LC0DE                           ; 9F4A
        ldx     #$04                            ; 9F4D
        jsr     LC0DE                           ; 9F4F
        ldx     #$08                            ; 9F52
        jsr     LC0DE                           ; 9F54
        ldx     #$0C                            ; 9F57
        jsr     LC0DE                           ; 9F59
        ldx     #$18                            ; 9F5C
        jsr     LC0DE                           ; 9F5E
        rts                                     ; 9F61

; ----------------------------------------------------------------------------
L_9F62: rts                                     ; 9F62

; ----------------------------------------------------------------------------
L_9F63: .byte   $EA,$EA                         ; 9F63
; ----------------------------------------------------------------------------
L_9F65: lda     PlayerSlot + Obj::Type          ; 9F65
        cmp     #$03                            ; 9F68
        bne     L_9FB3                          ; 9F6A
        lda     #$10                            ; 9F6C
        sta     $40                             ; 9F6E
        lda     #$10                            ; 9F70
        sta     $41                             ; 9F72
        jsr     LC0FF                           ; 9F74
        beq     L_9F7C                          ; 9F77
        jmp     LC17A                           ; 9F79

; ----------------------------------------------------------------------------
L_9F7C: jsr     L_A072                          ; 9F7C
        and     $03FB                           ; 9F7F
        bne     L_9F93                          ; 9F82
        lda     #$C0                            ; 9F84
        sta     LoadedObj + Obj::Scratch1       ; 9F86
        lda     #$08                            ; 9F88
        jsr     LC216                           ; 9F8A
        jsr     L_A12C                          ; 9F8D
        inc     LoadedObj + Obj::Type           ; 9F90
        rts                                     ; 9F92

; ----------------------------------------------------------------------------
L_9F93: jsr     L_A072                          ; 9F93
        and     $03FC                           ; 9F96
        bne     L_9FB4                          ; 9F99
        lda     $14                             ; 9F9B
        cmp     #$07                            ; 9F9D
        bne     L_9FAF                          ; 9F9F
        lda     #$FF                            ; 9FA1
        sta     $03FD                           ; 9FA3
        lda     #$05                            ; 9FA6
        jsr     LC11A                           ; 9FA8
        lda     #$68                            ; 9FAB
        bne     L_9FB1                          ; 9FAD
L_9FAF: lda     #$6A                            ; 9FAF
L_9FB1: sta     LoadedObj + Obj::Type           ; 9FB1
L_9FB3: rts                                     ; 9FB3

; ----------------------------------------------------------------------------
L_9FB4: jmp     LC14A                           ; 9FB4

; ----------------------------------------------------------------------------
L_9FB7: jmp     L_9FD3                          ; 9FB7

; ----------------------------------------------------------------------------
L_9FBA: dec     LoadedObj + Obj::Scratch1       ; 9FBA
        bne     L_9FD3                          ; 9FBC
        lda     $14                             ; 9FBE
        and     #$07                            ; 9FC0
        tax                                     ; 9FC2
        lda     L_9FE6,x                        ; 9FC3
        sta     LoadedObj + Obj::Type           ; 9FC6
        lda     #$FF                            ; 9FC8
        sta     $03FD                           ; 9FCA
        lda     #$05                            ; 9FCD
        jsr     LC11A                           ; 9FCF
        rts                                     ; 9FD2

; ----------------------------------------------------------------------------
L_9FD3: lda     PlayerSlot + Obj::Type          ; 9FD3
        cmp     #$03                            ; 9FD6
        bne     L_9FDD                          ; 9FD8
        jmp     LC07E                           ; 9FDA

; ----------------------------------------------------------------------------
L_9FDD: jsr     LC07B                           ; 9FDD
        jsr     LC060                           ; 9FE0
        jmp     LC0E7                           ; 9FE3

; ----------------------------------------------------------------------------
L_9FE6: .byte   $62,$5E,$60,$5C,$64,$5E,$5C,$66 ; 9FE6
; ----------------------------------------------------------------------------
L_9FEE: nop                                     ; 9FEE
        nop                                     ; 9FEF
        nop                                     ; 9FF0
L_9FF1: lda     #$10                            ; 9FF1
        sta     $40                             ; 9FF3
        lda     #$10                            ; 9FF5
        sta     $41                             ; 9FF7
        jsr     LC0FF                           ; 9FF9
        beq     L_A001                          ; 9FFC
        jmp     LC17A                           ; 9FFE

; ----------------------------------------------------------------------------
L_A001: lda     $15                             ; A001
        and     #$02                            ; A003
        beq     L_A00C                          ; A005
        lda     $E0                             ; A007
        bne     L_A02F                          ; A009
        rts                                     ; A00B

; ----------------------------------------------------------------------------
L_A00C: jsr     L_A072                          ; A00C
        and     $03FC                           ; A00F
        beq     L_A017                          ; A012
        jmp     LC14A                           ; A014

; ----------------------------------------------------------------------------
L_A017: lda     #$00                            ; A017
        jsr     LC147                           ; A019
        bne     L_A04D                          ; A01C
        lda     #$00                            ; A01E
        sta     $E0                             ; A020
        lda     #$3A                            ; A022
        jsr     LC216                           ; A024
        lda     $15                             ; A027
        ora     #$02                            ; A029
        sta     $15                             ; A02B
        bne     L_A04D                          ; A02D
L_A02F: lda     $15                             ; A02F
        and     #$FD                            ; A031
        sta     $15                             ; A033
        jsr     LC060                           ; A035
        jsr     L_A072                          ; A038
        ora     $03FC                           ; A03B
        sta     $03FC                           ; A03E
        lda     L_A050,x                        ; A041
        ora     $99                             ; A044
        sta     $99                             ; A046
        lda     #$07                            ; A048
        jmp     LC11A                           ; A04A

; ----------------------------------------------------------------------------
L_A04D: jmp     L_A058                          ; A04D

; ----------------------------------------------------------------------------
L_A050: .byte   $40,$10,$01,$80,$02,$04,$08,$00 ; A050
; ----------------------------------------------------------------------------
L_A058: lda     $14                             ; A058
        and     #$07                            ; A05A
        tax                                     ; A05C
        lda     L_A06A,x                        ; A05D
        sta     $45                             ; A060
        lda     #$01                            ; A062
        sta     $44                             ; A064
        jsr     LC192                           ; A066
        rts                                     ; A069

; ----------------------------------------------------------------------------
L_A06A: .byte   $A1,$A1,$A1,$A1,$D1,$D1,$D1,$D1 ; A06A
; ----------------------------------------------------------------------------
L_A072: lda     $14                             ; A072
        and     #$07                            ; A074
        tax                                     ; A076
        lda     L_BF8A,x                        ; A077
        rts                                     ; A07A

; ----------------------------------------------------------------------------
L_A07B: lda     LoadedObj + Obj::Health         ; A07B
        beq     L_A08F                          ; A07D
        lda     $03FD                           ; A07F
        beq     L_A0FF                          ; A082
        dec     $03FD                           ; A084
        bne     L_A0FF                          ; A087
        jsr     L_A118                          ; A089
        jmp     L_A0FC                          ; A08C

; ----------------------------------------------------------------------------
L_A08F: lda     $10                             ; A08F
        lsr     a                               ; A091
        bcs     L_A0AD                          ; A092
        lda     $03FD                           ; A094
        bne     L_A0A3                          ; A097
        lda     #$0A                            ; A099
        jsr     LC216                           ; A09B
        lda     #$0B                            ; A09E
        jsr     LC216                           ; A0A0
L_A0A3: inc     $03FD                           ; A0A3
        lda     $03FD                           ; A0A6
        cmp     #$80                            ; A0A9
        bcs     L_A100                          ; A0AB
L_A0AD: lda     $03FD                           ; A0AD
        cmp     #$60                            ; A0B0
        bcs     L_A0FC                          ; A0B2
        lda     LoadedObj + Obj::Position_X_Hi  ; A0B4
        pha                                     ; A0B6
        lda     LoadedObj + Obj::Position_X_Lo  ; A0B7
        pha                                     ; A0B9
        lda     LoadedObj + Obj::Position_Y_Hi  ; A0BA
        pha                                     ; A0BC
        lda     LoadedObj + Obj::Position_Y_Lo  ; A0BD
        pha                                     ; A0BF
        jsr     LC1B3                           ; A0C0
        sta     LoadedObj + Obj::Position_X_Lo  ; A0C3
        jsr     LC1B3                           ; A0C5
        sta     LoadedObj + Obj::Position_Y_Lo  ; A0C8
        jsr     LC1B3                           ; A0CA
        and     #$07                            ; A0CD
        sec                                     ; A0CF
        sbc     #$04                            ; A0D0
        clc                                     ; A0D2
        adc     LoadedObj + Obj::Position_X_Hi  ; A0D3
        sta     LoadedObj + Obj::Position_X_Hi  ; A0D5
        jsr     LC1B3                           ; A0D7
        and     #$07                            ; A0DA
        sec                                     ; A0DC
        sbc     #$04                            ; A0DD
        clc                                     ; A0DF
        adc     LoadedObj + Obj::Position_Y_Hi  ; A0E0
        sta     LoadedObj + Obj::Position_Y_Hi  ; A0E2
        lda     $13                             ; A0E4
        clc                                     ; A0E6
        adc     $10                             ; A0E7
        sta     $13                             ; A0E9
        lda     #$14                            ; A0EB
        jsr     LC1F5                           ; A0ED
        pla                                     ; A0F0
        sta     LoadedObj + Obj::Position_Y_Lo  ; A0F1
        pla                                     ; A0F3
        sta     LoadedObj + Obj::Position_Y_Hi  ; A0F4
        pla                                     ; A0F6
        sta     LoadedObj + Obj::Position_X_Lo  ; A0F7
        pla                                     ; A0F9
        sta     LoadedObj + Obj::Position_X_Hi  ; A0FA
L_A0FC: lda     $03FD                           ; A0FC
L_A0FF: rts                                     ; A0FF

; ----------------------------------------------------------------------------
L_A100: jsr     LC10E                           ; A100
        jsr     L_A072                          ; A103
        ora     $03FB                           ; A106
        sta     $03FB                           ; A109
        lda     #$5A                            ; A10C
        sta     LoadedObj + Obj::Type           ; A10E
        lda     #$00                            ; A110
        jsr     LC11A                           ; A112
        pla                                     ; A115
        pla                                     ; A116
        rts                                     ; A117

; ----------------------------------------------------------------------------
L_A118: lda     $14                             ; A118
        and     #$07                            ; A11A
        tax                                     ; A11C
        lda     L_A124,x                        ; A11D
        jsr     LC216                           ; A120
        rts                                     ; A123

; ----------------------------------------------------------------------------
L_A124: .byte   $2A,$09,$09,$2A,$09,$09,$2A,$09 ; A124
; ----------------------------------------------------------------------------
L_A12C: ldx     #$7F                            ; A12C
        lda     #$00                            ; A12E
L_A130: sta     $0670,x                         ; A130
        dex                                     ; A133
        bpl     L_A130                          ; A134
        rts                                     ; A136

; ----------------------------------------------------------------------------
L_A137: nop                                     ; A137
        nop                                     ; A138
        nop                                     ; A139
L_A13A: lda     #$08                            ; A13A
        sta     LoadedObj + Obj::Health         ; A13C
        ldx     #$0F                            ; A13E
L_A140: lda     #$08                            ; A140
        sta     $0670,x                         ; A142
        lda     L_A176,x                        ; A145
        clc                                     ; A148
        adc     $1D                             ; A149
        sta     $0680,x                         ; A14B
        lda     L_A186,x                        ; A14E
        clc                                     ; A151
        adc     $1F                             ; A152
        sta     $0690,x                         ; A154
        dex                                     ; A157
        bpl     L_A140                          ; A158
        lda     #$10                            ; A15A
        sta     $06A0                           ; A15C
        sta     $06A3                           ; A15F
        sta     $06A4                           ; A162
        lda     #$00                            ; A165
        sta     $06A1                           ; A167
        sta     $06A2                           ; A16A
        sta     LoadedObj + Obj::Scratch0       ; A16D
        lda     #$0F                            ; A16F
        sta     LoadedObj + Obj::Scratch1       ; A171
        inc     LoadedObj + Obj::Type           ; A173
        rts                                     ; A175

; ----------------------------------------------------------------------------
L_A176: .byte   $03,$05,$07,$09,$0B,$0D,$03,$0D ; A176
        .byte   $03,$0D,$03,$0D,$03,$0D,$03,$0D ; A17E
L_A186: .byte   $03,$03,$03,$03,$03,$03,$05,$05 ; A186
        .byte   $07,$07,$09,$09,$0B,$0B,$0D,$0D ; A18E
; ----------------------------------------------------------------------------
L_A196: rts                                     ; A196

; ----------------------------------------------------------------------------
L_A197: .byte   $EA,$EA                         ; A197
; ----------------------------------------------------------------------------
L_A199: lda     LoadedObj + Obj::Health         ; A199
        sta     $45                             ; A19B
        lda     $06A3                           ; A19D
        sta     LoadedObj + Obj::Health         ; A1A0
        jsr     L_A07B                          ; A1A2
        lda     $45                             ; A1A5
        sta     LoadedObj + Obj::Health         ; A1A7
        lda     $03FD                           ; A1A9
        beq     L_A1B1                          ; A1AC
        jmp     L_A415                          ; A1AE

; ----------------------------------------------------------------------------
L_A1B1: lda     LoadedObj + Obj::Scratch0       ; A1B1
        cmp     #$00                            ; A1B3
        beq     L_A1DC                          ; A1B5
        cmp     #$01                            ; A1B7
        beq     L_A20D                          ; A1B9
        cmp     #$02                            ; A1BB
        beq     L_A22F                          ; A1BD
        cmp     #$03                            ; A1BF
        beq     L_A1C3                          ; A1C1
L_A1C3: dec     LoadedObj + Obj::Scratch1       ; A1C3
        beq     L_A1CA                          ; A1C5
        jmp     L_A415                          ; A1C7

; ----------------------------------------------------------------------------
L_A1CA: jsr     L_A357                          ; A1CA
L_A1CD: jsr     L_A3FF                          ; A1CD
        inc     $06A1                           ; A1D0
        lda     #$1F                            ; A1D3
        sta     LoadedObj + Obj::Scratch1       ; A1D5
        lda     #$00                            ; A1D7
        sta     LoadedObj + Obj::Scratch0       ; A1D9
        rts                                     ; A1DB

; ----------------------------------------------------------------------------
L_A1DC: lda     LoadedObj + Obj::Scratch1       ; A1DC
        cmp     #$1F                            ; A1DE
        bne     L_A1FD                          ; A1E0
        lda     #$00                            ; A1E2
        sta     LoadedObj + Obj::IFrameCounter  ; A1E4
        ldy     #$10                            ; A1E6
L_A1E8: jsr     L_A3E3                          ; A1E8
        lda     LoadedObj + Obj::Health         ; A1EB
        bne     L_A1F7                          ; A1ED
        inc     $06A1                           ; A1EF
        dey                                     ; A1F2
        bne     L_A1E8                          ; A1F3
        beq     L_A207                          ; A1F5
L_A1F7: jsr     LC1EC                           ; A1F7
        jsr     L_A394                          ; A1FA
L_A1FD: dec     LoadedObj + Obj::Scratch1       ; A1FD
        bne     L_A204                          ; A1FF
        jsr     L_A290                          ; A201
L_A204: jmp     L_A415                          ; A204

; ----------------------------------------------------------------------------
L_A207: lda     #$00                            ; A207
        sta     $06A3                           ; A209
        rts                                     ; A20C

; ----------------------------------------------------------------------------
L_A20D: dec     LoadedObj + Obj::Scratch1       ; A20D
        beq     L_A285                          ; A20F
        lda     LoadedObj + Obj::Scratch1       ; A211
        cmp     #$30                            ; A213
        bcs     L_A22C                          ; A215
        and     #$0F                            ; A217
        cmp     #$08                            ; A219
        bne     L_A22C                          ; A21B
        lda     #$77                            ; A21D
        jsr     LC1F5                           ; A21F
        lda     #$78                            ; A222
        jsr     LC1F5                           ; A224
        lda     #$79                            ; A227
        jsr     LC1F5                           ; A229
L_A22C: jmp     L_A415                          ; A22C

; ----------------------------------------------------------------------------
L_A22F: lda     LoadedObj + Obj::Position_X_Lo  ; A22F
        ora     LoadedObj + Obj::Position_Y_Lo  ; A231
        bne     L_A244                          ; A233
        lda     LoadedObj + Obj::Position_X_Hi  ; A235
        and     LoadedObj + Obj::Position_Y_Hi  ; A237
        lsr     a                               ; A239
        bcc     L_A244                          ; A23A
        lda     LoadedObj + Obj::Scratch1       ; A23C
        beq     L_A242                          ; A23E
        dec     LoadedObj + Obj::Scratch1       ; A240
L_A242: beq     L_A285                          ; A242
L_A244: jsr     LC01E                           ; A244
        ldx     #$04                            ; A247
        ldy     #$04                            ; A249
        jsr     LC00C                           ; A24B
        bne     L_A285                          ; A24E
        beq     L_A25A                          ; A250
        lda     #$00                            ; A252
        sec                                     ; A254
        sec                                     ; A255
        sbc     LoadedObj + Obj::Velocity_X     ; A256
        sta     LoadedObj + Obj::Velocity_X     ; A258
L_A25A: ldx     #$04                            ; A25A
        ldy     #$04                            ; A25C
        jsr     LC012                           ; A25E
        bne     L_A285                          ; A261
        beq     L_A26D                          ; A263
        lda     #$00                            ; A265
        sec                                     ; A267
        sec                                     ; A268
        sbc     LoadedObj + Obj::Velocity_Y     ; A269
        sta     LoadedObj + Obj::Velocity_Y     ; A26B
L_A26D: lda     Global_FrameCounter             ; A26D
        and     #$4F                            ; A26F
        bne     L_A282                          ; A271
        jsr     LC1B3                           ; A273
        and     #$0F                            ; A276
        cmp     $06A4                           ; A278
        bcc     L_A282                          ; A27B
        lda     #$7B                            ; A27D
        jsr     LC1F5                           ; A27F
L_A282: jmp     L_A415                          ; A282

; ----------------------------------------------------------------------------
L_A285: lda     #$0F                            ; A285
        sta     LoadedObj + Obj::Scratch1       ; A287
        lda     #$03                            ; A289
        sta     LoadedObj + Obj::Scratch0       ; A28B
        jmp     L_A415                          ; A28D

; ----------------------------------------------------------------------------
L_A290: lda     #$00                            ; A290
        sta     LoadedObj + Obj::Velocity_X     ; A292
        sta     LoadedObj + Obj::Velocity_Y     ; A294
L_A296: ldx     $06A2                           ; A296
        lda     $06A2                           ; A299
        clc                                     ; A29C
        adc     #$02                            ; A29D
        sta     $06A2                           ; A29F
        lda     LA343,x                         ; A2A2
        sta     LoadedObj + Obj::Scratch1       ; A2A5
        lda     LA342,x                         ; A2A7
        cmp     #$05                            ; A2AA
        beq     L_A2FF                          ; A2AC
        cmp     #$01                            ; A2AE
        beq     L_A2C5                          ; A2B0
        cmp     #$02                            ; A2B2
        beq     L_A2C9                          ; A2B4
        cmp     #$03                            ; A2B6
        beq     L_A2CD                          ; A2B8
        cmp     #$04                            ; A2BA
        beq     L_A2D1                          ; A2BC
        lda     #$00                            ; A2BE
        sta     $06A2                           ; A2C0
        beq     L_A296                          ; A2C3
L_A2C5: lda     #$01                            ; A2C5
        bne     L_A2D3                          ; A2C7
L_A2C9: lda     #$03                            ; A2C9
        bne     L_A2D3                          ; A2CB
L_A2CD: lda     #$02                            ; A2CD
        bne     L_A2D3                          ; A2CF
L_A2D1: lda     #$00                            ; A2D1
L_A2D3: sta     LoadedObj + Obj::Facing         ; A2D3
        jsr     L_A309                          ; A2D5
        lda     LoadedObj + Obj::Facing         ; A2D8
        and     #$03                            ; A2DA
        tax                                     ; A2DC
        lda     LA305,x                         ; A2DD
        sta     LoadedObj + Obj::Velocity_X     ; A2E0
        lda     L_A304,x                        ; A2E2
        sta     LoadedObj + Obj::Velocity_Y     ; A2E5
        lda     $06A4                           ; A2E7
        cmp     #$08                            ; A2EA
        bcs     L_A2FA                          ; A2EC
        cmp     #$04                            ; A2EE
        bcs     L_A2F6                          ; A2F0
        asl     LoadedObj + Obj::Velocity_X     ; A2F2
        asl     LoadedObj + Obj::Velocity_Y     ; A2F4
L_A2F6: asl     LoadedObj + Obj::Velocity_X     ; A2F6
        asl     LoadedObj + Obj::Velocity_Y     ; A2F8
L_A2FA: lda     #$02                            ; A2FA
        sta     LoadedObj + Obj::Scratch0       ; A2FC
        rts                                     ; A2FE

; ----------------------------------------------------------------------------
L_A2FF: lda     #$01                            ; A2FF
        sta     LoadedObj + Obj::Scratch0       ; A301
        rts                                     ; A303

; ----------------------------------------------------------------------------
L_A304: .byte   $F8                             ; A304
LA305:  .byte   $00,$08,$00,$F8                 ; A305
; ----------------------------------------------------------------------------
L_A309: lda     #$04                            ; A309
L_A30B: pha                                     ; A30B
        lda     LoadedObj + Obj::Facing         ; A30C
        and     #$03                            ; A30E
        tax                                     ; A310
        jsr     L_A32F                          ; A311
        bmi     L_A320                          ; A314
        txa                                     ; A316
        clc                                     ; A317
        adc     #$04                            ; A318
        tax                                     ; A31A
        jsr     L_A32F                          ; A31B
        bpl     L_A32B                          ; A31E
L_A320: inc     LoadedObj + Obj::Facing         ; A320
        pla                                     ; A322
        sec                                     ; A323
        sbc     #$01                            ; A324
        bne     L_A30B                          ; A326
        lda     #$80                            ; A328
        rts                                     ; A32A

; ----------------------------------------------------------------------------
L_A32B: pla                                     ; A32B
        lda     #$00                            ; A32C
        rts                                     ; A32E

; ----------------------------------------------------------------------------
L_A32F: lda     L_A33A,x                        ; A32F
        clc                                     ; A332
        adc     LoadedObj + Obj::TileIndex      ; A333
        tay                                     ; A335
        lda     LevelTileData,y                 ; A336
        rts                                     ; A339

; ----------------------------------------------------------------------------
L_A33A: .byte   $DD,$F0,$10,$ED,$DE,$01,$11,$FE ; A33A
LA342:  .byte   $01                             ; A342
LA343:  .byte   $02,$05,$40,$02,$04,$03,$02,$04 ; A343
        .byte   $04,$04,$02,$02,$02,$05,$40,$01 ; A34B
        .byte   $04,$03,$04,$FF                 ; A353
; ----------------------------------------------------------------------------
L_A357: lda     L_A381                          ; A357
        sta     IndirectPtrLo                   ; A35A
        lda     L_A381+1                        ; A35C
        sta     IndirectPtrHi                   ; A35F
        jsr     L_A3D1                          ; A361
        jsr     LC1B0                           ; A364
        lda     #$80                            ; A367
        ldx     LoadedObj + Obj::TileIndex      ; A369
        sta     LevelTileData,x                 ; A36B
        dex                                     ; A36E
        sta     LevelTileData,x                 ; A36F
        pha                                     ; A372
        txa                                     ; A373
        sec                                     ; A374
        sbc     #$11                            ; A375
        tax                                     ; A377
        pla                                     ; A378
        sta     LevelTileData,x                 ; A379
        inx                                     ; A37C
        sta     LevelTileData,x                 ; A37D
        rts                                     ; A380

; ----------------------------------------------------------------------------
L_A381: .addr   L_A383                          ; A381
; ----------------------------------------------------------------------------
L_A383: .byte   $44,$20,$21,$22,$23,$04,$05,$06 ; A383
        .byte   $07,$14,$15,$16,$17,$50,$51,$52 ; A38B
        .byte   $53                             ; A393
; ----------------------------------------------------------------------------
L_A394: lda     L_A3BE                          ; A394
        sta     IndirectPtrLo                   ; A397
        lda     L_A3BE+1                        ; A399
        sta     IndirectPtrHi                   ; A39C
        jsr     L_A3D1                          ; A39E
        jsr     LC1B0                           ; A3A1
        lda     #$00                            ; A3A4
        ldx     LoadedObj + Obj::TileIndex      ; A3A6
        sta     LevelTileData,x                 ; A3A8
        dex                                     ; A3AB
        sta     LevelTileData,x                 ; A3AC
        pha                                     ; A3AF
        txa                                     ; A3B0
        sec                                     ; A3B1
        sbc     #$11                            ; A3B2
        tax                                     ; A3B4
        pla                                     ; A3B5
        sta     LevelTileData,x                 ; A3B6
        inx                                     ; A3B9
        sta     LevelTileData,x                 ; A3BA
        rts                                     ; A3BD

; ----------------------------------------------------------------------------
L_A3BE: .addr   L_A3C0                          ; A3BE
; ----------------------------------------------------------------------------
L_A3C0: .byte   $44,$00,$00,$00,$00,$00,$00,$00 ; A3C0
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; A3C8
        .byte   $00                             ; A3D0
; ----------------------------------------------------------------------------
L_A3D1: jsr     LC06F                           ; A3D1
        lda     $C7                             ; A3D4
        sec                                     ; A3D6
        sbc     #$02                            ; A3D7
        sta     $C7                             ; A3D9
        lda     $C8                             ; A3DB
        sec                                     ; A3DD
        sbc     #$02                            ; A3DE
        sta     $C8                             ; A3E0
        rts                                     ; A3E2

; ----------------------------------------------------------------------------
L_A3E3: lda     $06A1                           ; A3E3
        and     #$0F                            ; A3E6
        tax                                     ; A3E8
        lda     #$00                            ; A3E9
        sta     LoadedObj + Obj::Position_X_Lo  ; A3EB
        sta     LoadedObj + Obj::Position_Y_Lo  ; A3ED
        lda     $0680,x                         ; A3EF
        sta     LoadedObj + Obj::Position_X_Hi  ; A3F2
        lda     $0690,x                         ; A3F4
        sta     LoadedObj + Obj::Position_Y_Hi  ; A3F7
        lda     $0670,x                         ; A3F9
        sta     LoadedObj + Obj::Health         ; A3FC
        rts                                     ; A3FE

; ----------------------------------------------------------------------------
L_A3FF: lda     $06A1                           ; A3FF
        and     #$0F                            ; A402
        tax                                     ; A404
        lda     LoadedObj + Obj::Position_X_Hi  ; A405
        sta     $0680,x                         ; A407
        lda     LoadedObj + Obj::Position_Y_Hi  ; A40A
        sta     $0690,x                         ; A40C
        lda     LoadedObj + Obj::Health         ; A40F
        sta     $0670,x                         ; A411
        rts                                     ; A414

; ----------------------------------------------------------------------------
L_A415: lda     #$30                            ; A415
        sta     $40                             ; A417
        lda     #$30                            ; A419
        sta     $41                             ; A41B
        jsr     L_A4A5                          ; A41D
        jsr     L_A4C3                          ; A420
        lda     $03FD                           ; A423
        beq     L_A42B                          ; A426
        jsr     L_9F41                          ; A428
L_A42B: jsr     LC0FF                           ; A42B
        lda     $03FD                           ; A42E
        ora     LoadedObj + Obj::IFrameCounter  ; A431
        bne     L_A459                          ; A433
        lda     #$20                            ; A435
        jsr     LC144                           ; A437
        bne     L_A459                          ; A43A
        lda     LoadedObj + Obj::Health         ; A43C
        bne     L_A449                          ; A43E
        jsr     L_9333                          ; A440
        dec     $06A4                           ; A443
        jmp     L_A1CD                          ; A446

; ----------------------------------------------------------------------------
L_A449: lda     $45                             ; A449
        cmp     #$7F                            ; A44B
        bne     L_A459                          ; A44D
        lda     LoadedObj + Obj::Scratch0       ; A44F
        cmp     #$03                            ; A451
        bne     L_A459                          ; A453
        lda     #$0F                            ; A455
        sta     LoadedObj + Obj::Scratch1       ; A457
L_A459: lda     #$02                            ; A459
        sta     $44                             ; A45B
        lda     #$50                            ; A45D
        ldx     LoadedObj + Obj::Scratch0       ; A45F
        cpx     #$00                            ; A461
        beq     L_A46F                          ; A463
        cpx     #$03                            ; A465
        beq     L_A48C                          ; A467
        cpx     #$01                            ; A469
        beq     L_A495                          ; A46B
        bne     L_A49F                          ; A46D
L_A46F: lda     LoadedObj + Obj::Scratch1       ; A46F
        cmp     #$10                            ; A471
        bcc     L_A481                          ; A473
        and     #$02                            ; A475
        beq     L_A4A4                          ; A477
        lda     #$03                            ; A479
        sta     $44                             ; A47B
        lda     #$4D                            ; A47D
        bne     L_A4A1                          ; A47F
L_A481: lsr     a                               ; A481
        lsr     a                               ; A482
        sta     $45                             ; A483
        lda     #$50                            ; A485
        sec                                     ; A487
        sbc     $45                             ; A488
        bne     L_A4A1                          ; A48A
L_A48C: lda     LoadedObj + Obj::Scratch1       ; A48C
        lsr     a                               ; A48E
        lsr     a                               ; A48F
        clc                                     ; A490
        adc     #$4D                            ; A491
        bne     L_A4A1                          ; A493
L_A495: lda     LoadedObj + Obj::Scratch1       ; A495
        cmp     #$30                            ; A497
        bcc     L_A49F                          ; A499
        lda     #$03                            ; A49B
        sta     $44                             ; A49D
L_A49F: lda     #$50                            ; A49F
L_A4A1: jsr     LC063                           ; A4A1
L_A4A4: rts                                     ; A4A4

; ----------------------------------------------------------------------------
L_A4A5: ldx     #$0F                            ; A4A5
L_A4A7: lda     L_A4B3,x                        ; A4A7
        sta     Background_Palettes + BgPalette::Colour0,x ; A4AA
        sta     $0650,x                         ; A4AC
        dex                                     ; A4AF
        bpl     L_A4A7                          ; A4B0
        rts                                     ; A4B2

; ----------------------------------------------------------------------------
L_A4B3: .byte   $0F,$16,$11,$38,$0F,$05,$15,$25 ; A4B3
        .byte   $0F,$00,$0B,$3C,$0F,$07,$0B,$00 ; A4BB
; ----------------------------------------------------------------------------
L_A4C3: lda     #$08                            ; A4C3
        sta     $FC                             ; A4C5
        lda     #$01                            ; A4C7
        sta     $23                             ; A4C9
        rts                                     ; A4CB

; ----------------------------------------------------------------------------
L_A4CC: nop                                     ; A4CC
        nop                                     ; A4CD
        nop                                     ; A4CE
L_A4CF: lda     #$00                            ; A4CF
        beq     L_A4DF                          ; A4D1
L_A4D3: nop                                     ; A4D3
        nop                                     ; A4D4
        nop                                     ; A4D5
L_A4D6: lda     #$01                            ; A4D6
        bne     L_A4DF                          ; A4D8
L_A4DA: nop                                     ; A4DA
        nop                                     ; A4DB
        nop                                     ; A4DC
L_A4DD: lda     #$FF                            ; A4DD
L_A4DF: sta     LoadedObj + Obj::Facing         ; A4DF
        jsr     LC105                           ; A4E1
        txa                                     ; A4E4
        asl     a                               ; A4E5
        clc                                     ; A4E6
        adc     LoadedObj + Obj::Facing         ; A4E7
        and     #$07                            ; A4E9
        tax                                     ; A4EB
        and     #$03                            ; A4EC
        sta     LoadedObj + Obj::Facing         ; A4EE
        lda     LA501,x                         ; A4F0
        sta     LoadedObj + Obj::Velocity_X     ; A4F3
        lda     L_A4FF,x                        ; A4F5
        sta     LoadedObj + Obj::Velocity_Y     ; A4F8
        lda     #$7A                            ; A4FA
        sta     LoadedObj + Obj::Type           ; A4FC
        rts                                     ; A4FE

; ----------------------------------------------------------------------------
L_A4FF: .byte   $E0,$E0                         ; A4FF
LA501:  .byte   $00,$20,$20,$20,$00,$E0,$E0,$E0 ; A501
; ----------------------------------------------------------------------------
L_A509: jmp     L_A517                          ; A509

; ----------------------------------------------------------------------------
L_A50C: lda     #$80                            ; A50C
        sta     $42                             ; A50E
        lda     #$80                            ; A510
        sta     $43                             ; A512
        jsr     LC024                           ; A514
L_A517: lda     #$10                            ; A517
        sta     $40                             ; A519
        lda     #$10                            ; A51B
        sta     $41                             ; A51D
        jsr     LC0FF                           ; A51F
        beq     L_A527                          ; A522
        jmp     LC114                           ; A524

; ----------------------------------------------------------------------------
L_A527: lda     #$20                            ; A527
        jsr     LC141                           ; A529
        lda     #$03                            ; A52C
        ldx     LoadedObj + Obj::Facing         ; A52E
        cpx     #$01                            ; A530
        bne     L_A536                          ; A532
        lda     #$43                            ; A534
L_A536: sta     $44                             ; A536
        lda     L_A547,x                        ; A538
        sta     $45                             ; A53B
        cpx     #$02                            ; A53D
        beq     L_A544                          ; A53F
        jmp     LC1AD                           ; A541

; ----------------------------------------------------------------------------
L_A544: jmp     LC189                           ; A544

; ----------------------------------------------------------------------------
L_A547: .byte   $03,$13,$11,$13                 ; A547
; ----------------------------------------------------------------------------
L_A54B: nop                                     ; A54B
        nop                                     ; A54C
        nop                                     ; A54D
L_A54E: jsr     LC05A                           ; A54E
        lda     LoadedObj + Obj::Velocity_X     ; A551
        jsr     LC0F0                           ; A553
        sta     LoadedObj + Obj::Velocity_X     ; A556
        lda     LoadedObj + Obj::Velocity_Y     ; A558
        jsr     LC0F0                           ; A55A
        sta     LoadedObj + Obj::Velocity_Y     ; A55D
        inc     LoadedObj + Obj::Type           ; A55F
        rts                                     ; A561

; ----------------------------------------------------------------------------
L_A562: jmp     L_A568                          ; A562

; ----------------------------------------------------------------------------
L_A565: jsr     LC01E                           ; A565
L_A568: lda     $10                             ; A568
        and     #$03                            ; A56A
        sta     LoadedObj + Obj::Facing         ; A56C
        jmp     L_A517                          ; A56E

; ----------------------------------------------------------------------------
L_A571: nop                                     ; A571
        nop                                     ; A572
        nop                                     ; A573
L_A574: lda     #$80                            ; A574
        sta     LoadedObj + Obj::Health         ; A576
        lda     #$00                            ; A578
        sta     LoadedObj + Obj::Scratch0       ; A57A
        sta     LoadedObj + Obj::Scratch1       ; A57C
        lda     #$00                            ; A57E
        sta     LoadedObj + Obj::Velocity_X     ; A580
        lda     #$08                            ; A582
        sta     LoadedObj + Obj::Velocity_Y     ; A584
        inc     LoadedObj + Obj::Type           ; A586
        rts                                     ; A588

; ----------------------------------------------------------------------------
L_A589: rts                                     ; A589

; ----------------------------------------------------------------------------
L_A58A: .byte   $EA,$EA                         ; A58A
; ----------------------------------------------------------------------------
L_A58C: jsr     L_A07B                          ; A58C
        bne     L_A5EF                          ; A58F
        lda     LoadedObj + Obj::Health         ; A591
        beq     L_A5EF                          ; A593
        lda     Global_FrameCounter             ; A595
        and     #$3F                            ; A597
        bne     L_A5C1                          ; A599
        lda     PlayerSlot + Obj::Position_X_Hi ; A59B
        sec                                     ; A59E
        sbc     LoadedObj + Obj::Position_X_Hi  ; A59F
        asl     a                               ; A5A1
        beq     L_A5AC                          ; A5A2
        bmi     L_A5AA                          ; A5A4
        lda     #$06                            ; A5A6
        bne     L_A5AC                          ; A5A8
L_A5AA: lda     #$FA                            ; A5AA
L_A5AC: sta     LoadedObj + Obj::Velocity_X     ; A5AC
        lda     PlayerSlot + Obj::Position_Y_Hi ; A5AE
        sec                                     ; A5B1
        sbc     LoadedObj + Obj::Position_Y_Hi  ; A5B2
        asl     a                               ; A5B4
        beq     L_A5BF                          ; A5B5
        bmi     L_A5BD                          ; A5B7
        lda     #$06                            ; A5B9
        bne     L_A5BF                          ; A5BB
L_A5BD: lda     #$FA                            ; A5BD
L_A5BF: sta     LoadedObj + Obj::Velocity_Y     ; A5BF
L_A5C1: jsr     LC03F                           ; A5C1
        ldx     #$04                            ; A5C4
        ldy     #$06                            ; A5C6
        jsr     LC012                           ; A5C8
        beq     L_A5DD                          ; A5CB
        lda     #$00                            ; A5CD
        sta     LoadedObj + Obj::Scratch0       ; A5CF
        lda     LoadedObj + Obj::Velocity_Y     ; A5D1
        bmi     L_A5D9                          ; A5D3
        lda     #$FC                            ; A5D5
        bne     L_A5DB                          ; A5D7
L_A5D9: lda     #$04                            ; A5D9
L_A5DB: sta     LoadedObj + Obj::Velocity_Y     ; A5DB
L_A5DD: jsr     LC027                           ; A5DD
        ldx     #$04                            ; A5E0
        ldy     #$06                            ; A5E2
        jsr     LC00C                           ; A5E4
        lda     Global_FrameCounter             ; A5E7
        and     #$0F                            ; A5E9
        bne     L_A5EF                          ; A5EB
        inc     LoadedObj + Obj::Scratch1       ; A5ED
L_A5EF: lda     #$10                            ; A5EF
        sta     $40                             ; A5F1
        lda     #$10                            ; A5F3
        sta     $41                             ; A5F5
        jsr     LC0FF                           ; A5F7
        jsr     L_A65A                          ; A5FA
        lda     $03FD                           ; A5FD
        bne     L_A628                          ; A600
        lda     LoadedObj + Obj::IFrameCounter  ; A602
        cmp     #$06                            ; A604
        bcs     L_A628                          ; A606
        lda     LoadedObj + Obj::Health         ; A608
        beq     L_A628                          ; A60A
        lda     #$20                            ; A60C
        sta     $40                             ; A60E
        lda     #$20                            ; A610
        sta     $41                             ; A612
        lda     #$20                            ; A614
        jsr     LC144                           ; A616
        bne     L_A620                          ; A619
        lda     #$11                            ; A61B
        jsr     LC216                           ; A61D
L_A620: lda     LoadedObj + Obj::Health         ; A620
        bne     L_A628                          ; A622
        lda     #$C0                            ; A624
        sta     LoadedObj + Obj::IFrameCounter  ; A626
L_A628: lda     $3F                             ; A628
        cmp     #$20                            ; A62A
        bcs     L_A632                          ; A62C
        lda     #$04                            ; A62E
        bne     L_A638                          ; A630
L_A632: cmp     #$B0                            ; A632
        bcc     L_A63E                          ; A634
        lda     #$FC                            ; A636
L_A638: sta     LoadedObj + Obj::Velocity_Y     ; A638
        lda     #$00                            ; A63A
        sta     LoadedObj + Obj::Scratch0       ; A63C
L_A63E: lda     $10                             ; A63E
        lsr     a                               ; A640
        lsr     a                               ; A641
        lsr     a                               ; A642
        and     #$07                            ; A643
        bne     L_A64B                          ; A645
        lda     #$02                            ; A647
        bne     L_A64D                          ; A649
L_A64B: and     #$01                            ; A64B
L_A64D: sta     $45                             ; A64D
        lda     $3F                             ; A64F
        clc                                     ; A651
        adc     #$18                            ; A652
        sta     $3F                             ; A654
        jsr     L_9EB3                          ; A656
        rts                                     ; A659

; ----------------------------------------------------------------------------
L_A65A: lda     #$E0                            ; A65A
L_A65C: pha                                     ; A65C
        jsr     L_A667                          ; A65D
        pla                                     ; A660
        sec                                     ; A661
        sbc     #$20                            ; A662
        bcs     L_A65C                          ; A664
        rts                                     ; A666

; ----------------------------------------------------------------------------
L_A667: clc                                     ; A667
        adc     Global_FrameCounter             ; A668
        sta     $00                             ; A66A
        lda     $3F                             ; A66C
        pha                                     ; A66E
        lda     $3E                             ; A66F
        pha                                     ; A671
        lda     $00                             ; A672
        jsr     LC0D2                           ; A674
        sta     $01                             ; A677
        clc                                     ; A679
        adc     $3E                             ; A67A
        sta     $3E                             ; A67C
        ror     a                               ; A67E
        eor     $01                             ; A67F
        bmi     L_A6AC                          ; A681
        lda     $00                             ; A683
        clc                                     ; A685
        adc     LoadedObj + Obj::Scratch1       ; A686
        jsr     LC207                           ; A688
        sta     $01                             ; A68B
        clc                                     ; A68D
        adc     $3F                             ; A68E
        sta     $3F                             ; A690
        ror     a                               ; A692
        eor     $01                             ; A693
        bmi     L_A6AC                          ; A695
        lda     $03FD                           ; A697
        bne     L_A6A1                          ; A69A
        lda     #$20                            ; A69C
        jsr     LC141                           ; A69E
L_A6A1: lda     #$02                            ; A6A1
        sta     $44                             ; A6A3
        lda     #$A7                            ; A6A5
        sta     $45                             ; A6A7
        jsr     LC18C                           ; A6A9
L_A6AC: pla                                     ; A6AC
        sta     $3E                             ; A6AD
        pla                                     ; A6AF
        sta     $3F                             ; A6B0
        rts                                     ; A6B2

; ----------------------------------------------------------------------------
L_A6B3: nop                                     ; A6B3
        nop                                     ; A6B4
        nop                                     ; A6B5
L_A6B6: lda     #$50                            ; A6B6
        sta     LoadedObj + Obj::Health         ; A6B8
        lda     #$40                            ; A6BA
        sta     LoadedObj + Obj::Scratch1       ; A6BC
        lda     #$05                            ; A6BE
        sta     LoadedObj + Obj::Scratch0       ; A6C0
        lda     #$00                            ; A6C2
        sta     LoadedObj + Obj::Velocity_X     ; A6C4
        lda     #$00                            ; A6C6
        sta     LoadedObj + Obj::Velocity_Y     ; A6C8
        inc     LoadedObj + Obj::Type           ; A6CA
        rts                                     ; A6CC

; ----------------------------------------------------------------------------
L_A6CD: rts                                     ; A6CD

; ----------------------------------------------------------------------------
L_A6CE: .byte   $EA,$EA                         ; A6CE
; ----------------------------------------------------------------------------
L_A6D0: jsr     L_A07B                          ; A6D0
        bne     L_A6DB                          ; A6D3
        jsr     L_A6DE                          ; A6D5
        jsr     L_A7A2                          ; A6D8
L_A6DB: jmp     L_A7CF                          ; A6DB

; ----------------------------------------------------------------------------
L_A6DE: lda     LoadedObj + Obj::Scratch0       ; A6DE
        cmp     #$04                            ; A6E0
        bne     L_A6E7                          ; A6E2
        jmp     L_A7A2                          ; A6E4

; ----------------------------------------------------------------------------
L_A6E7: cmp     #$01                            ; A6E7
        bne     L_A6EE                          ; A6E9
        jmp     L_A79A                          ; A6EB

; ----------------------------------------------------------------------------
L_A6EE: cmp     #$02                            ; A6EE
        bne     L_A6F5                          ; A6F0
        jmp     L_A79A                          ; A6F2

; ----------------------------------------------------------------------------
L_A6F5: cmp     #$03                            ; A6F5
        bne     L_A6FC                          ; A6F7
        jmp     L_A74E                          ; A6F9

; ----------------------------------------------------------------------------
L_A6FC: dec     LoadedObj + Obj::Scratch1       ; A6FC
        bne     L_A720                          ; A6FE
        jsr     LC1B3                           ; A700
        and     #$0F                            ; A703
        cmp     #$02                            ; A705
        bcc     L_A730                          ; A707
        cmp     #$03                            ; A709
        bcc     L_A721                          ; A70B
        jsr     LC1B3                           ; A70D
        and     #$70                            ; A710
        clc                                     ; A712
        adc     #$20                            ; A713
        sta     LoadedObj + Obj::Scratch1       ; A715
        lda     #$03                            ; A717
        sta     LoadedObj + Obj::Scratch0       ; A719
        jsr     LC1B3                           ; A71B
        sta     LoadedObj + Obj::Facing         ; A71E
L_A720: rts                                     ; A720

; ----------------------------------------------------------------------------
L_A721: jsr     LC1B3                           ; A721
        and     #$30                            ; A724
        clc                                     ; A726
        adc     #$10                            ; A727
        sta     LoadedObj + Obj::Scratch1       ; A729
        lda     #$01                            ; A72B
        sta     LoadedObj + Obj::Scratch0       ; A72D
        rts                                     ; A72F

; ----------------------------------------------------------------------------
L_A730: jsr     LC1B3                           ; A730
        and     #$30                            ; A733
        clc                                     ; A735
        adc     #$10                            ; A736
        sta     LoadedObj + Obj::Scratch1       ; A738
        lda     #$02                            ; A73A
        sta     LoadedObj + Obj::Scratch0       ; A73C
        rts                                     ; A73E

; ----------------------------------------------------------------------------
L_A73F: jsr     LC1B3                           ; A73F
        and     #$38                            ; A742
        clc                                     ; A744
        adc     #$10                            ; A745
        sta     LoadedObj + Obj::Scratch1       ; A747
        lda     #$04                            ; A749
        sta     LoadedObj + Obj::Scratch0       ; A74B
        rts                                     ; A74D

; ----------------------------------------------------------------------------
L_A74E: lda     LoadedObj + Obj::Scratch1       ; A74E
        bne     L_A760                          ; A750
        lda     LoadedObj + Obj::Velocity_X     ; A752
        beq     L_A793                          ; A754
        lda     #$FE                            ; A756
        ldx     LoadedObj + Obj::Facing         ; A758
        bpl     L_A76A                          ; A75A
        lda     #$02                            ; A75C
        bne     L_A76A                          ; A75E
L_A760: dec     LoadedObj + Obj::Scratch1       ; A760
        lda     #$02                            ; A762
        ldx     LoadedObj + Obj::Facing         ; A764
        bpl     L_A76A                          ; A766
        lda     #$FE                            ; A768
L_A76A: clc                                     ; A76A
        adc     LoadedObj + Obj::Velocity_X     ; A76B
        sta     LoadedObj + Obj::Velocity_X     ; A76D
        lda     #$10                            ; A76F
        ldx     #$4C                            ; A771
        jsr     LC14D                           ; A773
        jsr     LC027                           ; A776
        ldx     #$08                            ; A779
        ldy     #$04                            ; A77B
        jsr     LC00C                           ; A77D
        beq     L_A792                          ; A780
        lda     #$00                            ; A782
        sec                                     ; A784
        sec                                     ; A785
        sbc     LoadedObj + Obj::Velocity_X     ; A786
        sta     LoadedObj + Obj::Velocity_X     ; A788
        lda     #$00                            ; A78A
        sec                                     ; A78C
        sec                                     ; A78D
        sbc     LoadedObj + Obj::Facing         ; A78E
        sta     LoadedObj + Obj::Facing         ; A790
L_A792: rts                                     ; A792

; ----------------------------------------------------------------------------
L_A793: lda     #$00                            ; A793
        sta     LoadedObj + Obj::Velocity_X     ; A795
        jmp     L_A7C6                          ; A797

; ----------------------------------------------------------------------------
L_A79A: dec     LoadedObj + Obj::Scratch1       ; A79A
        beq     L_A79F                          ; A79C
        rts                                     ; A79E

; ----------------------------------------------------------------------------
L_A79F: jmp     L_A7C6                          ; A79F

; ----------------------------------------------------------------------------
L_A7A2: lda     #$1F                            ; A7A2
        ldx     LoadedObj + Obj::Health         ; A7A4
        cpx     #$40                            ; A7A6
        bcs     L_A7B8                          ; A7A8
        lda     #$0F                            ; A7AA
        cpx     #$20                            ; A7AC
        bcs     L_A7B8                          ; A7AE
        lda     Global_FrameCounter             ; A7B0
        and     #$C0                            ; A7B2
        beq     L_A7C5                          ; A7B4
        lda     #$07                            ; A7B6
L_A7B8: and     Global_FrameCounter             ; A7B8
        bne     L_A7C5                          ; A7BA
        inc     LoadedObj + Obj::Position_Y_Hi  ; A7BC
        lda     #$7D                            ; A7BE
        jsr     LC1F5                           ; A7C0
        dec     LoadedObj + Obj::Position_Y_Hi  ; A7C3
L_A7C5: rts                                     ; A7C5

; ----------------------------------------------------------------------------
L_A7C6: lda     #$20                            ; A7C6
        sta     LoadedObj + Obj::Scratch1       ; A7C8
        lda     #$05                            ; A7CA
        sta     LoadedObj + Obj::Scratch0       ; A7CC
        rts                                     ; A7CE

; ----------------------------------------------------------------------------
L_A7CF: lda     #$10                            ; A7CF
        sta     $40                             ; A7D1
        lda     #$10                            ; A7D3
        sta     $41                             ; A7D5
        jsr     LC0FF                           ; A7D7
        lda     LoadedObj + Obj::Scratch0       ; A7DA
        cmp     #$03                            ; A7DC
        beq     L_A7E4                          ; A7DE
        lda     #$00                            ; A7E0
        beq     L_A7EF                          ; A7E2
L_A7E4: lda     $10                             ; A7E4
        lsr     a                               ; A7E6
        lsr     a                               ; A7E7
        lsr     a                               ; A7E8
        and     #$03                            ; A7E9
        tax                                     ; A7EB
        lda     LA8F6,x                         ; A7EC
L_A7EF: sta     $45                             ; A7EF
        lda     $03FD                           ; A7F1
        bne     L_A844                          ; A7F4
        lda     L_A8FA                          ; A7F6
        sta     IndirectPtrLo                   ; A7F9
        lda     LA8FB                           ; A7FB
        sta     IndirectPtrHi                   ; A7FE
        lda     $45                             ; A800
        jsr     LC153                           ; A802
L_A805: lda     (IndirectPtrLo),y               ; A805
        iny                                     ; A807
        cmp     #$FF                            ; A808
        beq     L_A844                          ; A80A
        sta     $40                             ; A80C
        lda     (IndirectPtrLo),y               ; A80E
        iny                                     ; A810
        sta     $41                             ; A811
        lda     $3F                             ; A813
        pha                                     ; A815
        lda     $3E                             ; A816
        pha                                     ; A818
        lda     (IndirectPtrLo),y               ; A819
        iny                                     ; A81B
        clc                                     ; A81C
        adc     $3E                             ; A81D
        sta     $3E                             ; A81F
        lda     (IndirectPtrLo),y               ; A821
        iny                                     ; A823
        clc                                     ; A824
        adc     $3F                             ; A825
        sta     $3F                             ; A827
        lda     $45                             ; A829
        pha                                     ; A82B
        lda     #$20                            ; A82C
        jsr     LC141                           ; A82E
        bne     L_A838                          ; A831
        lda     #$0D                            ; A833
        jsr     LC216                           ; A835
L_A838: pla                                     ; A838
        sta     $45                             ; A839
        pla                                     ; A83B
        sta     $3E                             ; A83C
        pla                                     ; A83E
        sta     $3F                             ; A83F
        jmp     L_A805                          ; A841

; ----------------------------------------------------------------------------
L_A844: lda     $45                             ; A844
        and     #$03                            ; A846
        sta     $45                             ; A848
        pha                                     ; A84A
        lda     $3F                             ; A84B
        pha                                     ; A84D
        lda     $3E                             ; A84E
        pha                                     ; A850
        ldx     $45                             ; A851
        lda     L_A8EE,x                        ; A853
        clc                                     ; A856
        adc     $3E                             ; A857
        sta     $3E                             ; A859
        ldx     #$71                            ; A85B
        lda     $10                             ; A85D
        and     #$08                            ; A85F
        beq     L_A865                          ; A861
        ldx     #$81                            ; A863
L_A865: stx     $45                             ; A865
        lda     #$02                            ; A867
        sta     $44                             ; A869
        jsr     LC12C                           ; A86B
        jsr     LC189                           ; A86E
        lda     $03FD                           ; A871
        bne     L_A895                          ; A874
        lda     LoadedObj + Obj::IFrameCounter  ; A876
        bne     L_A895                          ; A878
        lda     #$10                            ; A87A
        sta     $40                             ; A87C
        lda     #$10                            ; A87E
        sta     $41                             ; A880
        lda     $3F                             ; A882
        clc                                     ; A884
        adc     #$10                            ; A885
        sta     $3F                             ; A887
        lda     #$20                            ; A889
        jsr     LC144                           ; A88B
        bne     L_A895                          ; A88E
        lda     #$0C                            ; A890
        jsr     LC216                           ; A892
L_A895: pla                                     ; A895
        sta     $3E                             ; A896
        pla                                     ; A898
        sta     $3F                             ; A899
        pla                                     ; A89B
        sta     $45                             ; A89C
        lda     $3E                             ; A89E
        sec                                     ; A8A0
        sbc     #$20                            ; A8A1
        sta     $3E                             ; A8A3
        lda     $3F                             ; A8A5
        clc                                     ; A8A7
        adc     #$10                            ; A8A8
        sta     $3F                             ; A8AA
        lda     $45                             ; A8AC
        asl     a                               ; A8AE
        sta     $45                             ; A8AF
        jsr     L_9EB3                          ; A8B1
        lda     $45                             ; A8B4
        asl     a                               ; A8B6
        asl     a                               ; A8B7
        clc                                     ; A8B8
        adc     #$07                            ; A8B9
        and     #$0F                            ; A8BB
        tax                                     ; A8BD
        lda     LoadedObj + Obj::IFrameCounter  ; A8BE
        bne     L_A8D7                          ; A8C0
        lda     $03FD                           ; A8C2
        bne     L_A8D7                          ; A8C5
        ldy     #$03                            ; A8C7
L_A8C9: lda     LA8F2,y                         ; A8C9
        sta     Background_Palettes + BgPalette::Colour0,x ; A8CC
        sta     $0650,x                         ; A8CE
        dex                                     ; A8D1
        dey                                     ; A8D2
        bne     L_A8C9                          ; A8D3
        beq     L_A8ED                          ; A8D5
L_A8D7: lda     #$03                            ; A8D7
L_A8D9: pha                                     ; A8D9
        txa                                     ; A8DA
        sec                                     ; A8DB
        sbc     #$04                            ; A8DC
        and     #$0F                            ; A8DE
        tay                                     ; A8E0
        lda     Background_Palettes + BgPalette::Colour0,y ; A8E1
        sta     Background_Palettes + BgPalette::Colour0,x ; A8E4
        dex                                     ; A8E6
        pla                                     ; A8E7
        sec                                     ; A8E8
        sbc     #$01                            ; A8E9
        bpl     L_A8D9                          ; A8EB
L_A8ED: rts                                     ; A8ED

; ----------------------------------------------------------------------------
L_A8EE: .byte   $00,$00,$F8,$08                 ; A8EE
LA8F2:  .byte   $0F,$06,$16,$14                 ; A8F2
LA8F6:  .byte   $00,$02,$00,$03                 ; A8F6
L_A8FA: .byte   $FC                             ; A8FA
LA8FB:  .byte   $A8                             ; A8FB
L_A8FC: .byte   $04,$A9,$11,$A9,$1E,$A9,$2B,$A9 ; A8FC
L_A904: .byte   $28,$40,$2C,$10,$28,$40,$D4,$10 ; A904
        .byte   $60,$50,$00,$E0,$FF,$28,$40,$24 ; A90C
        .byte   $20,$28,$40,$DC,$20,$60,$50,$00 ; A914
        .byte   $E0,$FF,$28,$40,$24,$10,$28,$40 ; A91C
        .byte   $D4,$20,$60,$50,$00,$E0,$FF,$28 ; A924
        .byte   $40,$2C,$20,$28,$40,$DC,$10,$60 ; A92C
        .byte   $50,$00,$E0,$FF                 ; A934
; ----------------------------------------------------------------------------
L_A938: nop                                     ; A938
        nop                                     ; A939
        nop                                     ; A93A
L_A93B: lda     #$08                            ; A93B
        sta     LoadedObj + Obj::Scratch1       ; A93D
        lda     #$50                            ; A93F
        sta     LoadedObj + Obj::Scratch0       ; A941
        lda     Global_FrameCounter             ; A943
        and     #$3F                            ; A945
        cmp     #$20                            ; A947
        bcc     L_A953                          ; A949
        eor     #$FF                            ; A94B
        clc                                     ; A94D
        adc     #$01                            ; A94E
        clc                                     ; A950
        adc     #$40                            ; A951
L_A953: clc                                     ; A953
        adc     #$30                            ; A954
        pha                                     ; A956
        jsr     LC0CF                           ; A957
        sta     LoadedObj + Obj::Velocity_X     ; A95A
        pla                                     ; A95C
        jsr     LC201                           ; A95D
        sta     LoadedObj + Obj::Velocity_Y     ; A960
        inc     LoadedObj + Obj::Type           ; A962
        rts                                     ; A964

; ----------------------------------------------------------------------------
L_A965: jmp     L_A991                          ; A965

; ----------------------------------------------------------------------------
L_A968: lda     LoadedObj + Obj::IFrameCounter  ; A968
        cmp     #$30                            ; A96A
        bcs     L_A974                          ; A96C
        jsr     LC024                           ; A96E
        jmp     L_A977                          ; A971

; ----------------------------------------------------------------------------
L_A974: jsr     LC01E                           ; A974
L_A977: dec     LoadedObj + Obj::Scratch0       ; A977
        beq     L_A9C3                          ; A979
        lda     LoadedObj + Obj::Scratch1       ; A97B
        beq     L_A991                          ; A97D
        dec     LoadedObj + Obj::Scratch1       ; A97F
        bne     L_A991                          ; A981
        lda     LoadedObj + Obj::Velocity_X     ; A983
        jsr     LC0F0                           ; A985
        sta     LoadedObj + Obj::Velocity_X     ; A988
        lda     LoadedObj + Obj::Velocity_Y     ; A98A
        jsr     LC0F0                           ; A98C
        sta     LoadedObj + Obj::Velocity_Y     ; A98F
L_A991: lda     #$10                            ; A991
        sta     $40                             ; A993
        lda     #$10                            ; A995
        sta     $41                             ; A997
        jsr     LC0FF                           ; A999
        bne     L_A9CA                          ; A99C
        lda     #$20                            ; A99E
        jsr     LC141                           ; A9A0
        beq     L_A9C3                          ; A9A3
        lda     #$02                            ; A9A5
        sta     $44                             ; A9A7
        lda     LoadedObj + Obj::Scratch1       ; A9A9
        lsr     a                               ; A9AB
        tax                                     ; A9AC
        lda     L_A9CD,x                        ; A9AD
        sta     $45                             ; A9B0
        cpx     #$02                            ; A9B2
        bcc     L_A9B9                          ; A9B4
        jmp     LC1AD                           ; A9B6

; ----------------------------------------------------------------------------
L_A9B9: cpx     #$01                            ; A9B9
        bne     L_A9C0                          ; A9BB
        jmp     LC189                           ; A9BD

; ----------------------------------------------------------------------------
L_A9C0: jmp     LC18C                           ; A9C0

; ----------------------------------------------------------------------------
L_A9C3: lda     #$10                            ; A9C3
        sta     LoadedObj + Obj::Scratch1       ; A9C5
        inc     LoadedObj + Obj::Type           ; A9C7
        rts                                     ; A9C9

; ----------------------------------------------------------------------------
L_A9CA: jmp     LC114                           ; A9CA

; ----------------------------------------------------------------------------
L_A9CD: .byte   $C1,$B1,$A1,$91                 ; A9CD
; ----------------------------------------------------------------------------
L_A9D1: nop                                     ; A9D1
        nop                                     ; A9D2
        nop                                     ; A9D3
L_A9D4: dec     LoadedObj + Obj::Scratch1       ; A9D4
        bne     L_A9DB                          ; A9D6
        jmp     LC114                           ; A9D8

; ----------------------------------------------------------------------------
L_A9DB: lda     #$10                            ; A9DB
        sta     $40                             ; A9DD
        lda     #$10                            ; A9DF
        sta     $41                             ; A9E1
        jsr     LC0FF                           ; A9E3
        lda     #$20                            ; A9E6
        jsr     LC141                           ; A9E8
        lda     #$02                            ; A9EB
        sta     $44                             ; A9ED
        lda     #$E1                            ; A9EF
        ldx     LoadedObj + Obj::Scratch1       ; A9F1
        cpx     #$08                            ; A9F3
        bcs     L_A9F9                          ; A9F5
        lda     #$F1                            ; A9F7
L_A9F9: sta     $45                             ; A9F9
        lda     #$02                            ; A9FB
        sta     $44                             ; A9FD
        jsr     LC189                           ; A9FF
        rts                                     ; AA02

; ----------------------------------------------------------------------------
L_AA03: nop                                     ; AA03
        nop                                     ; AA04
        nop                                     ; AA05
L_AA06: jsr     L_A12C                          ; AA06
        lda     #$3C                            ; AA09
        sta     LoadedObj + Obj::Health         ; AA0B
        lda     #$00                            ; AA0D
        sta     LoadedObj + Obj::Scratch0       ; AA0F
        sta     LoadedObj + Obj::Scratch1       ; AA11
        sta     $0670                           ; AA13
        sta     $0671                           ; AA16
        lda     #$00                            ; AA19
        sta     LoadedObj + Obj::Velocity_X     ; AA1B
        sta     LoadedObj + Obj::Velocity_Y     ; AA1D
        lda     $1C                             ; AA1F
        sta     LoadedObj + Obj::Position_X_Lo  ; AA21
        lda     $1D                             ; AA23
        clc                                     ; AA25
        adc     #$08                            ; AA26
        sta     LoadedObj + Obj::Position_X_Hi  ; AA28
        lda     $1F                             ; AA2A
        clc                                     ; AA2C
        adc     #$05                            ; AA2D
        sta     LoadedObj + Obj::Position_Y_Hi  ; AA2F
        inc     LoadedObj + Obj::Type           ; AA31
        rts                                     ; AA33

; ----------------------------------------------------------------------------
L_AA34: rts                                     ; AA34

; ----------------------------------------------------------------------------
L_AA35: .byte   $EA,$EA                         ; AA35
; ----------------------------------------------------------------------------
L_AA37: jsr     L_A07B                          ; AA37
        bne     L_AA4D                          ; AA3A
        lda     LoadedObj + Obj::Health         ; AA3C
        beq     L_AA4D                          ; AA3E
        lda     $03FD                           ; AA40
        bne     L_AA4D                          ; AA43
        lda     Global_FrameCounter             ; AA45
        and     #$03                            ; AA47
        bne     L_AA4D                          ; AA49
        inc     LoadedObj + Obj::Scratch1       ; AA4B
L_AA4D: jsr     L_AA72                          ; AA4D
        jsr     L_AB72                          ; AA50
        lda     LoadedObj + Obj::Position_X_Hi  ; AA53
        pha                                     ; AA55
        lda     LoadedObj + Obj::Position_X_Lo  ; AA56
        pha                                     ; AA58
        lda     LoadedObj + Obj::Position_Y_Hi  ; AA59
        pha                                     ; AA5B
        lda     LoadedObj + Obj::Position_Y_Lo  ; AA5C
        pha                                     ; AA5E
        jsr     L_AA7B                          ; AA5F
        pla                                     ; AA62
        sta     LoadedObj + Obj::Position_Y_Lo  ; AA63
        pla                                     ; AA65
        sta     LoadedObj + Obj::Position_Y_Hi  ; AA66
        pla                                     ; AA68
        sta     LoadedObj + Obj::Position_X_Lo  ; AA69
        pla                                     ; AA6B
        sta     LoadedObj + Obj::Position_X_Hi  ; AA6C
        jsr     L_AB99                          ; AA6E
        rts                                     ; AA71

; ----------------------------------------------------------------------------
L_AA72: lda     #$08                            ; AA72
        sta     $FC                             ; AA74
        lda     #$01                            ; AA76
        sta     $23                             ; AA78
        rts                                     ; AA7A

; ----------------------------------------------------------------------------
L_AA7B: lda     LoadedObj + Obj::Health         ; AA7B
        beq     L_AA8D                          ; AA7D
        lda     $03FD                           ; AA7F
        bne     L_AA8D                          ; AA82
        jsr     L_AB36                          ; AA84
        jsr     L_AA91                          ; AA87
        jsr     L_AACC                          ; AA8A
L_AA8D: jsr     L_AAE2                          ; AA8D
        rts                                     ; AA90

; ----------------------------------------------------------------------------
L_AA91: lda     LoadedObj + Obj::Health         ; AA91
        beq     L_AACB                          ; AA93
        lda     $03FD                           ; AA95
        bne     L_AACB                          ; AA98
        lda     #$28                            ; AA9A
        sta     $40                             ; AA9C
        lda     #$40                            ; AA9E
        sta     $41                             ; AAA0
        lda     #$30                            ; AAA2
        jsr     LC090                           ; AAA4
        lda     LoadedObj + Obj::IFrameCounter  ; AAA7
        bne     L_AACB                          ; AAA9
        lda     #$10                            ; AAAB
        sta     $40                             ; AAAD
        lda     #$10                            ; AAAF
        sta     $41                             ; AAB1
        lda     $3F                             ; AAB3
        pha                                     ; AAB5
        clc                                     ; AAB6
        adc     #$20                            ; AAB7
        sta     $3F                             ; AAB9
        lda     #$30                            ; AABB
        jsr     LC093                           ; AABD
        pla                                     ; AAC0
        sta     $3F                             ; AAC1
        lda     LoadedObj + Obj::IFrameCounter  ; AAC3
        beq     L_AACB                          ; AAC5
        lda     #$10                            ; AAC7
        sta     LoadedObj + Obj::IFrameCounter  ; AAC9
L_AACB: rts                                     ; AACB

; ----------------------------------------------------------------------------
L_AACC: lda     $03FD                           ; AACC
        bne     L_AAE1                          ; AACF
        lda     $0670                           ; AAD1
        cmp     #$10                            ; AAD4
        bne     L_AAE1                          ; AAD6
        inc     LoadedObj + Obj::Position_Y_Hi  ; AAD8
        lda     #$80                            ; AADA
        jsr     LC1F5                           ; AADC
        dec     LoadedObj + Obj::Position_Y_Hi  ; AADF
L_AAE1: rts                                     ; AAE1

; ----------------------------------------------------------------------------
L_AAE2: lda     #$10                            ; AAE2
        sta     $40                             ; AAE4
        lda     #$10                            ; AAE6
        sta     $41                             ; AAE8
        jsr     LC0FF                           ; AAEA
        lda     $0670                           ; AAED
        bne     L_AB16                          ; AAF0
        lda     $0671                           ; AAF2
        beq     L_AAFD                          ; AAF5
        dec     $0671                           ; AAF7
        jmp     L_AB16                          ; AAFA

; ----------------------------------------------------------------------------
L_AAFD: jsr     LC1B3                           ; AAFD
        and     #$1F                            ; AB00
        cmp     #$0A                            ; AB02
        bne     L_AB16                          ; AB04
        lda     #$20                            ; AB06
        sta     $0670                           ; AB08
        jsr     LC1B3                           ; AB0B
        and     #$60                            ; AB0E
        clc                                     ; AB10
        adc     #$20                            ; AB11
        sta     $0671                           ; AB13
L_AB16: lda     $0670                           ; AB16
        beq     L_AB1E                          ; AB19
        dec     $0670                           ; AB1B
L_AB1E: lda     #$02                            ; AB1E
        sta     $44                             ; AB20
        lda     $0670                           ; AB22
        lsr     a                               ; AB25
        lsr     a                               ; AB26
        lsr     a                               ; AB27
        and     #$03                            ; AB28
        tax                                     ; AB2A
        lda     L_AB32,x                        ; AB2B
        jsr     LC063                           ; AB2E
        rts                                     ; AB31

; ----------------------------------------------------------------------------
L_AB32: .byte   $55,$54,$55,$56                 ; AB32
; ----------------------------------------------------------------------------
L_AB36: lda     LoadedObj + Obj::Scratch1       ; AB36
        jsr     LC0CF                           ; AB38
        bmi     L_AB41                          ; AB3B
        ldy     #$00                            ; AB3D
        beq     L_AB43                          ; AB3F
L_AB41: ldy     #$FF                            ; AB41
L_AB43: clc                                     ; AB43
        adc     LoadedObj + Obj::Position_X_Lo  ; AB44
        sta     LoadedObj + Obj::Position_X_Lo  ; AB46
        tya                                     ; AB48
        adc     LoadedObj + Obj::Position_X_Hi  ; AB49
        sta     LoadedObj + Obj::Position_X_Hi  ; AB4B
        lda     LoadedObj + Obj::Scratch1       ; AB4D
        asl     a                               ; AB4F
        asl     a                               ; AB50
        jsr     LC204                           ; AB51
        bmi     L_AB5A                          ; AB54
        ldy     #$00                            ; AB56
        beq     L_AB5C                          ; AB58
L_AB5A: ldy     #$FF                            ; AB5A
L_AB5C: clc                                     ; AB5C
        adc     LoadedObj + Obj::Position_Y_Lo  ; AB5D
        sta     LoadedObj + Obj::Position_Y_Lo  ; AB5F
        tya                                     ; AB61
        adc     LoadedObj + Obj::Position_Y_Hi  ; AB62
        sta     LoadedObj + Obj::Position_Y_Hi  ; AB64
        lda     #$10                            ; AB66
        sta     $40                             ; AB68
        lda     #$10                            ; AB6A
        sta     $41                             ; AB6C
        jsr     LC0FF                           ; AB6E
        rts                                     ; AB71

; ----------------------------------------------------------------------------
L_AB72: lda     $03FD                           ; AB72
        bne     L_AB98                          ; AB75
        lda     #$F0                            ; AB77
        sta     $40                             ; AB79
        lda     #$50                            ; AB7B
        sta     $41                             ; AB7D
        lda     $3F                             ; AB7F
        pha                                     ; AB81
        lda     $3E                             ; AB82
        pha                                     ; AB84
        lda     #$80                            ; AB85
        sta     $3E                             ; AB87
        lda     #$28                            ; AB89
        sta     $3F                             ; AB8B
        lda     #$70                            ; AB8D
        jsr     LC141                           ; AB8F
        pla                                     ; AB92
        sta     $3E                             ; AB93
        pla                                     ; AB95
        sta     $3F                             ; AB96
L_AB98: rts                                     ; AB98

; ----------------------------------------------------------------------------
L_AB99: ldx     #$0F                            ; AB99
L_AB9B: lda     L_ABB6,x                        ; AB9B
        sta     $0650,x                         ; AB9E
        sta     Background_Palettes + BgPalette::Colour0,x ; ABA1
        dex                                     ; ABA3
        bpl     L_AB9B                          ; ABA4
        ldx     #$03                            ; ABA6
L_ABA8: lda     L_ABB6,x                        ; ABA8
        sta     $0668,x                         ; ABAB
        sta     Sprite_Palettes + $08 + SpritePalette::Transparency,x ; ABAE
        dex                                     ; ABB0
        bpl     L_ABA8                          ; ABB1
        jmp     L_9F41                          ; ABB3

; ----------------------------------------------------------------------------
L_ABB6: .byte   $0F,$07,$00,$10,$0F,$09,$07,$00 ; ABB6
        .byte   $0F,$07,$17,$28,$0F,$09,$1A,$24 ; ABBE
; ----------------------------------------------------------------------------
L_ABC6: nop                                     ; ABC6
        nop                                     ; ABC7
        nop                                     ; ABC8
L_ABC9: lda     ObjectSlot_Index                ; ABC9
        cmp     #$0C                            ; ABCB
        bcc     L_ABD2                          ; ABCD
        jmp     LC114                           ; ABCF

; ----------------------------------------------------------------------------
L_ABD2: lda     #$0A                            ; ABD2
        sta     LoadedObj + Obj::Scratch1       ; ABD4
        lda     #$20                            ; ABD6
        sta     LoadedObj + Obj::Velocity_Y     ; ABD8
        jsr     LC1B3                           ; ABDA
        and     #$3F                            ; ABDD
        sec                                     ; ABDF
        sbc     #$20                            ; ABE0
        sta     LoadedObj + Obj::Velocity_X     ; ABE2
        inc     LoadedObj + Obj::Type           ; ABE4
        rts                                     ; ABE6

; ----------------------------------------------------------------------------
L_ABE7: jmp     L_AC06                          ; ABE7

; ----------------------------------------------------------------------------
L_ABEA: lda     #$C0                            ; ABEA
        sta     $42                             ; ABEC
        lda     #$C0                            ; ABEE
        sta     $43                             ; ABF0
        lda     LoadedObj + Obj::Velocity_Y     ; ABF2
        clc                                     ; ABF4
        adc     #$02                            ; ABF5
        sta     LoadedObj + Obj::Velocity_Y     ; ABF7
        lda     #$60                            ; ABF9
        ldx     #$4D                            ; ABFB
        jsr     LC14D                           ; ABFD
        jsr     LC03F                           ; AC00
        jsr     LC16B                           ; AC03
L_AC06: lda     #$18                            ; AC06
        sta     $40                             ; AC08
        lda     #$18                            ; AC0A
        sta     $41                             ; AC0C
        lda     $03FD                           ; AC0E
        beq     L_AC16                          ; AC11
        jmp     LC114                           ; AC13

; ----------------------------------------------------------------------------
L_AC16: jsr     LC0FF                           ; AC16
        beq     L_AC2A                          ; AC19
        dec     LoadedObj + Obj::Scratch1       ; AC1B
        bne     L_AC22                          ; AC1D
        jmp     LC114                           ; AC1F

; ----------------------------------------------------------------------------
L_AC22: lda     #$00                            ; AC22
        sec                                     ; AC24
        sec                                     ; AC25
        sbc     LoadedObj + Obj::Velocity_Y     ; AC26
        sta     LoadedObj + Obj::Velocity_Y     ; AC28
L_AC2A: lda     #$40                            ; AC2A
        jsr     LC141                           ; AC2C
        bne     L_AC3D                          ; AC2F
        lda     LoadedObj + Obj::Velocity_Y     ; AC31
        bmi     L_AC3D                          ; AC33
        lda     #$00                            ; AC35
        sec                                     ; AC37
        sec                                     ; AC38
        sbc     LoadedObj + Obj::Velocity_Y     ; AC39
        sta     LoadedObj + Obj::Velocity_Y     ; AC3B
L_AC3D: lda     #$02                            ; AC3D
        sta     $44                             ; AC3F
        lda     $10                             ; AC41
        lsr     a                               ; AC43
        lsr     a                               ; AC44
        and     #$03                            ; AC45
        tax                                     ; AC47
        lda     L_AC54,x                        ; AC48
        jsr     LC063                           ; AC4B
        rts                                     ; AC4E

; ----------------------------------------------------------------------------
L_AC4F: lda     #$14                            ; AC4F
        sta     LoadedObj + Obj::Type           ; AC51
        rts                                     ; AC53

; ----------------------------------------------------------------------------
L_AC54: .byte   $5A,$5B,$5C,$5D                 ; AC54
; ----------------------------------------------------------------------------
L_AC58: nop                                     ; AC58
        nop                                     ; AC59
        nop                                     ; AC5A
L_AC5B: jsr     L_A12C                          ; AC5B
        lda     #$C0                            ; AC5E
        sta     LoadedObj + Obj::Health         ; AC60
        lda     #$02                            ; AC62
        sta     LoadedObj + Obj::Scratch0       ; AC64
        lda     #$20                            ; AC66
        sta     LoadedObj + Obj::Scratch1       ; AC68
        lda     #$00                            ; AC6A
        sta     $03FD                           ; AC6C
        lda     #$00                            ; AC6F
        sta     LoadedObj + Obj::Velocity_X     ; AC71
        lda     #$08                            ; AC73
        sta     LoadedObj + Obj::Velocity_Y     ; AC75
        lda     #$02                            ; AC77
        sta     $0671                           ; AC79
        inc     LoadedObj + Obj::Type           ; AC7C
        lda     #$37                            ; AC7E
        jsr     LC216                           ; AC80
        rts                                     ; AC83

; ----------------------------------------------------------------------------
L_AC84: rts                                     ; AC84

; ----------------------------------------------------------------------------
L_AC85: .byte   $EA,$EA                         ; AC85
; ----------------------------------------------------------------------------
L_AC87: jsr     L_A07B                          ; AC87
        lda     $03FD                           ; AC8A
        beq     L_AC9F                          ; AC8D
        cmp     #$60                            ; AC8F
        bcc     L_ACA2                          ; AC91
        lda     LoadedObj + Obj::Health         ; AC93
        bne     L_ACA2                          ; AC95
        lda     #$06                            ; AC97
        jsr     LC11A                           ; AC99
        jmp     L_ACA2                          ; AC9C

; ----------------------------------------------------------------------------
L_AC9F: jsr     L_ACB9                          ; AC9F
L_ACA2: jsr     L_ACAC                          ; ACA2
        jsr     L_ADA2                          ; ACA5
        jsr     L_AE62                          ; ACA8
        rts                                     ; ACAB

; ----------------------------------------------------------------------------
L_ACAC: lda     #$08                            ; ACAC
        sta     $FC                             ; ACAE
        lda     #$01                            ; ACB0
        sta     $23                             ; ACB2
        lda     #$1C                            ; ACB4
        sta     $D5                             ; ACB6
        rts                                     ; ACB8

; ----------------------------------------------------------------------------
L_ACB9: lda     LoadedObj + Obj::Scratch0       ; ACB9
        cmp     #$02                            ; ACBB
        bne     L_ACC2                          ; ACBD
        jmp     L_AD3A                          ; ACBF

; ----------------------------------------------------------------------------
L_ACC2: cmp     #$03                            ; ACC2
        bne     L_ACC9                          ; ACC4
        jmp     L_AD42                          ; ACC6

; ----------------------------------------------------------------------------
L_ACC9: cmp     #$04                            ; ACC9
        bne     L_ACD0                          ; ACCB
        jmp     L_AD55                          ; ACCD

; ----------------------------------------------------------------------------
L_ACD0: dec     LoadedObj + Obj::Scratch1       ; ACD0
        bne     L_ACD7                          ; ACD2
        jmp     L_AD63                          ; ACD4

; ----------------------------------------------------------------------------
L_ACD7: lda     Global_FrameCounter             ; ACD7
        and     #$0F                            ; ACD9
        cmp     #$05                            ; ACDB
        bne     L_AD1F                          ; ACDD
        lda     LoadedObj + Obj::Position_X_Hi  ; ACDF
        pha                                     ; ACE1
        sec                                     ; ACE2
        sbc     #$01                            ; ACE3
        sta     LoadedObj + Obj::Position_X_Hi  ; ACE5
        lda     LoadedObj + Obj::Position_Y_Hi  ; ACE7
        pha                                     ; ACE9
        clc                                     ; ACEA
        adc     #$02                            ; ACEB
        sta     LoadedObj + Obj::Position_Y_Hi  ; ACED
        jsr     LC05A                           ; ACEF
        pla                                     ; ACF2
        sta     LoadedObj + Obj::Position_Y_Hi  ; ACF3
        pla                                     ; ACF5
        sta     LoadedObj + Obj::Position_X_Hi  ; ACF6
        lda     LoadedObj + Obj::Velocity_X     ; ACF8
        jsr     LC0F0                           ; ACFA
        sta     LoadedObj + Obj::Velocity_X     ; ACFD
        lda     LoadedObj + Obj::Velocity_Y     ; ACFF
        jsr     LC0F0                           ; AD01
        sta     LoadedObj + Obj::Velocity_Y     ; AD04
        lda     LoadedObj + Obj::Velocity_X     ; AD06
        bne     L_AD14                          ; AD08
        jsr     LC1B3                           ; AD0A
        and     #$1F                            ; AD0D
        sec                                     ; AD0F
        sbc     #$10                            ; AD10
        sta     LoadedObj + Obj::Velocity_X     ; AD12
L_AD14: lda     LoadedObj + Obj::Velocity_Y     ; AD14
        bne     L_AD1F                          ; AD16
        jsr     LC1B3                           ; AD18
        and     #$0F                            ; AD1B
        sta     LoadedObj + Obj::Velocity_Y     ; AD1D
L_AD1F: lda     Global_FrameCounter             ; AD1F
        and     #$08                            ; AD21
        beq     L_AD39                          ; AD23
        jsr     LC03F                           ; AD25
        ldx     #$04                            ; AD28
        ldy     #$06                            ; AD2A
        jsr     LC012                           ; AD2C
        jsr     LC027                           ; AD2F
        ldx     #$04                            ; AD32
        ldy     #$06                            ; AD34
        jsr     LC00C                           ; AD36
L_AD39: rts                                     ; AD39

; ----------------------------------------------------------------------------
L_AD3A: dec     LoadedObj + Obj::Scratch1       ; AD3A
        bne     L_AD41                          ; AD3C
        jmp     L_AD63                          ; AD3E

; ----------------------------------------------------------------------------
L_AD41: rts                                     ; AD41

; ----------------------------------------------------------------------------
L_AD42: dec     LoadedObj + Obj::Scratch1       ; AD42
        bne     L_AD49                          ; AD44
        jmp     L_AD63                          ; AD46

; ----------------------------------------------------------------------------
L_AD49: lda     LoadedObj + Obj::Scratch1       ; AD49
        cmp     #$24                            ; AD4B
        bne     L_AD54                          ; AD4D
        lda     #$82                            ; AD4F
        jsr     LC1F5                           ; AD51
L_AD54: rts                                     ; AD54

; ----------------------------------------------------------------------------
L_AD55: dec     LoadedObj + Obj::Scratch1       ; AD55
        bne     L_AD5C                          ; AD57
        jmp     L_AD63                          ; AD59

; ----------------------------------------------------------------------------
L_AD5C: lda     LoadedObj + Obj::Scratch1       ; AD5C
        cmp     #$02                            ; AD5E
        bne     L_AD62                          ; AD60
L_AD62: rts                                     ; AD62

; ----------------------------------------------------------------------------
L_AD63: jsr     LC105                           ; AD63
        cmp     #$02                            ; AD66
        bne     L_AD87                          ; AD68
        jsr     LC159                           ; AD6A
        cmp     #$05                            ; AD6D
        bcs     L_AD87                          ; AD6F
        jsr     LC1B3                           ; AD71
        and     #$0F                            ; AD74
        cmp     #$06                            ; AD76
        bcc     L_AD87                          ; AD78
        cmp     #$0F                            ; AD7A
        bcc     L_AD90                          ; AD7C
        lda     #$02                            ; AD7E
        sta     LoadedObj + Obj::Scratch0       ; AD80
        lda     #$20                            ; AD82
        sta     LoadedObj + Obj::Scratch1       ; AD84
        rts                                     ; AD86

; ----------------------------------------------------------------------------
L_AD87: lda     #$01                            ; AD87
        sta     LoadedObj + Obj::Scratch0       ; AD89
        lda     #$40                            ; AD8B
        sta     LoadedObj + Obj::Scratch1       ; AD8D
        rts                                     ; AD8F

; ----------------------------------------------------------------------------
L_AD90: lda     #$03                            ; AD90
        sta     LoadedObj + Obj::Scratch0       ; AD92
        lda     #$3B                            ; AD94
        sta     LoadedObj + Obj::Scratch1       ; AD96
        rts                                     ; AD98

; ----------------------------------------------------------------------------
L_AD99: lda     #$04                            ; AD99
        sta     LoadedObj + Obj::Scratch0       ; AD9B
        lda     #$37                            ; AD9D
        sta     LoadedObj + Obj::Scratch1       ; AD9F
        rts                                     ; ADA1

; ----------------------------------------------------------------------------
L_ADA2: lda     #$30                            ; ADA2
        sta     $40                             ; ADA4
        lda     #$38                            ; ADA6
        sta     $41                             ; ADA8
        jsr     LC0FF                           ; ADAA
        jsr     L_ADE7                          ; ADAD
        lda     $03FD                           ; ADB0
        ora     LoadedObj + Obj::IFrameCounter  ; ADB3
        bne     L_ADD2                          ; ADB5
        lda     $3F                             ; ADB7
        pha                                     ; ADB9
        sec                                     ; ADBA
        sbc     #$08                            ; ADBB
        sta     $3F                             ; ADBD
        lda     #$40                            ; ADBF
        jsr     LC093                           ; ADC1
        bne     L_ADCF                          ; ADC4
        lda     #$10                            ; ADC6
        sta     LoadedObj + Obj::IFrameCounter  ; ADC8
        lda     #$4B                            ; ADCA
        jsr     LC216                           ; ADCC
L_ADCF: pla                                     ; ADCF
        sta     $3F                             ; ADD0
L_ADD2: lda     $3F                             ; ADD2
        sec                                     ; ADD4
        sbc     #$18                            ; ADD5
        sta     $3F                             ; ADD7
        lda     #$02                            ; ADD9
        sta     $44                             ; ADDB
        lda     $0670                           ; ADDD
        clc                                     ; ADE0
        adc     #$5E                            ; ADE1
        jsr     LC063                           ; ADE3
        rts                                     ; ADE6

; ----------------------------------------------------------------------------
L_ADE7: ldx     LoadedObj + Obj::Health         ; ADE7
        lda     #$01                            ; ADE9
        cpx     #$80                            ; ADEB
        bcs     L_ADF7                          ; ADED
        lda     #$02                            ; ADEF
        cpx     #$40                            ; ADF1
        bcs     L_ADF7                          ; ADF3
        lda     #$00                            ; ADF5
L_ADF7: sta     $0671                           ; ADF7
        lda     LoadedObj + Obj::Scratch0       ; ADFA
        cmp     #$02                            ; ADFC
        beq     L_AE5A                          ; ADFE
        cmp     #$03                            ; AE00
        beq     L_AE1B                          ; AE02
        lda     Global_FrameCounter             ; AE04
        lsr     a                               ; AE06
        lsr     a                               ; AE07
        lsr     a                               ; AE08
        lsr     a                               ; AE09
        and     #$01                            ; AE0A
        sta     $0670                           ; AE0C
        lda     $0671                           ; AE0F
        asl     a                               ; AE12
        clc                                     ; AE13
        adc     $0670                           ; AE14
        sta     $0670                           ; AE17
        rts                                     ; AE1A

; ----------------------------------------------------------------------------
L_AE1B: lda     $0671                           ; AE1B
        asl     a                               ; AE1E
        clc                                     ; AE1F
        adc     $0671                           ; AE20
        sta     $0670                           ; AE23
        lda     LoadedObj + Obj::Scratch1       ; AE26
        cmp     #$24                            ; AE28
        bcc     L_AE38                          ; AE2A
        cmp     #$2A                            ; AE2C
        bcc     L_AE34                          ; AE2E
        lda     #$09                            ; AE30
        bne     L_AE3A                          ; AE32
L_AE34: lda     #$0A                            ; AE34
        bne     L_AE3A                          ; AE36
L_AE38: lda     #$0B                            ; AE38
L_AE3A: clc                                     ; AE3A
        adc     $0670                           ; AE3B
        sta     $0670                           ; AE3E
        rts                                     ; AE41

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

; ----------------------------------------------------------------------------
L_AE5A: lda     $0671                           ; AE5A
        asl     a                               ; AE5D
        sta     $0670                           ; AE5E
        rts                                     ; AE61

; ----------------------------------------------------------------------------
L_AE62: ldx     #$0F                            ; AE62
L_AE64: lda     L_AE7F,x                        ; AE64
        sta     $0650,x                         ; AE67
        sta     Background_Palettes + BgPalette::Colour0,x ; AE6A
        dex                                     ; AE6C
        bpl     L_AE64                          ; AE6D
        ldx     #$03                            ; AE6F
L_AE71: lda     L_AE8F,x                        ; AE71
        sta     $0668,x                         ; AE74
        sta     Sprite_Palettes + $08 + SpritePalette::Transparency,x ; AE77
        dex                                     ; AE79
        bpl     L_AE71                          ; AE7A
        jmp     L_9F41                          ; AE7C

; ----------------------------------------------------------------------------
L_AE7F: .byte   $0F,$07,$00,$10,$0F,$09,$07,$00 ; AE7F
        .byte   $0F,$07,$17,$28,$0F,$09,$1A,$24 ; AE87
L_AE8F: .byte   $0F,$07,$26,$30                 ; AE8F
; ----------------------------------------------------------------------------
L_AE93: nop                                     ; AE93
        nop                                     ; AE94
        nop                                     ; AE95
L_AE96: lda     #$00                            ; AE96
        sta     LoadedObj + Obj::Scratch1       ; AE98
        sta     LoadedObj + Obj::Scratch0       ; AE9A
        dec     LoadedObj + Obj::Position_X_Hi  ; AE9C
        dec     LoadedObj + Obj::Position_Y_Hi  ; AE9E
        jsr     LC05A                           ; AEA0
        lda     LoadedObj + Obj::Velocity_X     ; AEA3
        bmi     L_AEAD                          ; AEA5
        cmp     #$18                            ; AEA7
        bcs     L_AEB5                          ; AEA9
        bcc     L_AEB1                          ; AEAB
L_AEAD: cmp     #$E8                            ; AEAD
        bcc     L_AEB9                          ; AEAF
L_AEB1: lda     #$00                            ; AEB1
        beq     L_AEBB                          ; AEB3
L_AEB5: lda     #$01                            ; AEB5
        bne     L_AEBB                          ; AEB7
L_AEB9: lda     #$02                            ; AEB9
L_AEBB: sta     LoadedObj + Obj::Velocity_X     ; AEBB
        inc     LoadedObj + Obj::Type           ; AEBD
        lda     #$50                            ; AEBF
        jsr     LC216                           ; AEC1
        rts                                     ; AEC4

; ----------------------------------------------------------------------------
L_AEC5: jmp     L_AEDF                          ; AEC5

; ----------------------------------------------------------------------------
L_AEC8: lda     LoadedObj + Obj::Scratch0       ; AEC8
        bmi     L_AED8                          ; AECA
        inc     LoadedObj + Obj::Scratch1       ; AECC
        lda     LoadedObj + Obj::Scratch1       ; AECE
        cmp     #$07                            ; AED0
        bcc     L_AEDF                          ; AED2
        dec     LoadedObj + Obj::Scratch0       ; AED4
        bne     L_AEDF                          ; AED6
L_AED8: dec     LoadedObj + Obj::Scratch1       ; AED8
        bpl     L_AEDF                          ; AEDA
        jmp     LC114                           ; AEDC

; ----------------------------------------------------------------------------
L_AEDF: lda     #$18                            ; AEDF
        sta     $40                             ; AEE1
        lda     #$18                            ; AEE3
        sta     $41                             ; AEE5
        jsr     LC0FF                           ; AEE7
        lda     #$00                            ; AEEA
L_AEEC: pha                                     ; AEEC
        lda     LoadedObj + Obj::Velocity_X     ; AEED
        beq     L_AF1F                          ; AEEF
        cmp     #$01                            ; AEF1
        beq     L_AF0A                          ; AEF3
        lda     #$00                            ; AEF5
        sta     $44                             ; AEF7
        lda     #$81                            ; AEF9
        sta     $45                             ; AEFB
        jsr     LC1AD                           ; AEFD
        lda     $3E                             ; AF00
        sec                                     ; AF02
        sbc     #$08                            ; AF03
        sta     $3E                             ; AF05
        jmp     L_AF2A                          ; AF07

; ----------------------------------------------------------------------------
L_AF0A: lda     #$40                            ; AF0A
        sta     $44                             ; AF0C
        lda     #$81                            ; AF0E
        sta     $45                             ; AF10
        jsr     LC1AD                           ; AF12
        lda     $3E                             ; AF15
        clc                                     ; AF17
        adc     #$08                            ; AF18
        sta     $3E                             ; AF1A
        jmp     L_AF2A                          ; AF1C

; ----------------------------------------------------------------------------
L_AF1F: lda     #$00                            ; AF1F
        sta     $44                             ; AF21
        lda     #$71                            ; AF23
        sta     $45                             ; AF25
        jsr     LC1AD                           ; AF27
L_AF2A: lda     $3F                             ; AF2A
        clc                                     ; AF2C
        adc     #$10                            ; AF2D
        sta     $3F                             ; AF2F
        cmp     #$E8                            ; AF31
        bcs     L_AF43                          ; AF33
        pla                                     ; AF35
        clc                                     ; AF36
        adc     #$01                            ; AF37
        cmp     LoadedObj + Obj::Scratch1       ; AF39
        bcc     L_AEEC                          ; AF3B
        lda     #$40                            ; AF3D
        jsr     LC141                           ; AF3F
        rts                                     ; AF42

; ----------------------------------------------------------------------------
L_AF43: pla                                     ; AF43
        rts                                     ; AF44

.endmacro

; Interrupted by 25 macros:
;   MAC_object_handlers__projectiles_and_ballistics_6_of_7
;   MAC_object_handlers__pickups_2_of_2
;   MAC__ungrouped_8_of_12
;   MAC_object_handlers__camera_1_of_2
;   MAC_object_handlers__gumdrop_gray
;   MAC_object_handlers__flier
;   MAC__ungrouped_9_of_12
;   MAC_object_handlers__charging_robot
;   MAC_object_handlers__spinner
;   MAC_object_handlers__cross_shooter
;   MAC_object_handlers__camera_2_of_2
;   MAC_object_handlers__slider
;   MAC_object_handlers__robot
;   MAC_object_handlers__eye_1_of_3
;   MAC_object_handlers__robed_skeleton_1_of_2
;   MAC__ungrouped_10_of_12
;   MAC_object_handlers__robed_skeleton_2_of_2
;   MAC_object_handlers__eye_2_of_3
;   MAC__ungrouped_11_of_12
;   MAC_object_handlers__eye_3_of_3
;   MAC__ungrouped_12_of_12
;   MAC_object_handlers__projectiles_and_ballistics_7_of_7
;   MAC_object_handlers__spitter
;   MAC_object_handlers__zombie_head
;   MAC_object_handlers__gumdrop_red

.macro MAC_object_handlers__bosses_2_of_2
; ----------------------------------------------------------------------------
L_BF8A: .byte   $01,$02,$04,$08,$10,$20,$40,$80 ; BF8A
.endmacro

