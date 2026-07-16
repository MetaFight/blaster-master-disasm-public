.macro MAC_L_888C
; ----------------------------------------------------------------------------
L_888C: lda     $F3                             ; 888C
        and     #$20                            ; 888E
        beq     L_88E8                          ; 8890
        jsr     LD7B6                           ; 8892
        lda     $53                             ; 8895
        sta     $03FF                           ; 8897
        lda     #$FF                            ; 889A
        sta     $53                             ; 889C
        lda     #$00                            ; 889E
        sta     $C1                             ; 88A0
        sta     $94                             ; 88A2
        lda     $14                             ; 88A4
        sta     $03D4                           ; 88A6
        lda     $47                             ; 88A9
        sta     $03D5                           ; 88AB
        lda     $48                             ; 88AE
        sta     $03D0                           ; 88B0
        lda     $49                             ; 88B3
        sta     $03D1                           ; 88B5
        lda     $4A                             ; 88B8
        sta     $03D2                           ; 88BA
        lda     $4B                             ; 88BD
        sta     $03D3                           ; 88BF
        lda     #$1E                            ; 88C2
        sta     $03D6                           ; 88C4
        lda     #$00                            ; 88C7
        sta     $50                             ; 88C9
        lda     #$3E                            ; 88CB
        jsr     Enqueue_Sound_Command           ; 88CD
        lda     #$1B                            ; 88D0
        sta     $46                             ; 88D2
        lda     #$F0                            ; 88D4
        sta     $4D                             ; 88D6
        lda     #$EF                            ; 88D8
        jsr     LD2B1                           ; 88DA
        bmi     L_88E3                          ; 88DD
        lda     #$00                            ; 88DF
        sta     $4A                             ; 88E1
L_88E3: pla                                     ; 88E3
        pla                                     ; 88E4
        jsr     L_88E9                          ; 88E5
L_88E8: rts                                     ; 88E8

; ----------------------------------------------------------------------------
L_88E9: lda     $03D6                           ; 88E9
        beq     L_88F1                          ; 88EC
        dec     $03D6                           ; 88EE
L_88F1: lda     $C1                             ; 88F1
        bne     L_894D                          ; 88F3
        lda     $14                             ; 88F5
        cmp     $03D4                           ; 88F7
        bne     L_894D                          ; 88FA
        lda     $49                             ; 88FC
        pha                                     ; 88FE
        lda     $48                             ; 88FF
        pha                                     ; 8901
        lda     $4B                             ; 8902
        pha                                     ; 8904
        lda     $4A                             ; 8905
        pha                                     ; 8907
        lda     $47                             ; 8908
        pha                                     ; 890A
        lda     $4F                             ; 890B
        pha                                     ; 890D
        lda     $03D0                           ; 890E
        sta     $48                             ; 8911
        lda     $03D1                           ; 8913
        sta     $49                             ; 8916
        lda     $03D2                           ; 8918
        sta     $4A                             ; 891B
        lda     $03D3                           ; 891D
        sta     $4B                             ; 8920
        lda     $03D5                           ; 8922
        sta     $47                             ; 8925
        lda     #$00                            ; 8927
        sta     $4F                             ; 8929
        lda     #$18                            ; 892B
        sta     $40                             ; 892D
        lda     #$10                            ; 892F
        sta     $41                             ; 8931
        jsr     LEF2B                           ; 8933
        bne     L_893B                          ; 8936
        jsr     L_950D                          ; 8938
L_893B: pla                                     ; 893B
        sta     $4F                             ; 893C
        pla                                     ; 893E
        sta     $47                             ; 893F
        pla                                     ; 8941
        sta     $4A                             ; 8942
        pla                                     ; 8944
        sta     $4B                             ; 8945
        pla                                     ; 8947
        sta     $48                             ; 8948
        pla                                     ; 894A
        sta     $49                             ; 894B
L_894D: rts                                     ; 894D

; ----------------------------------------------------------------------------
L_894E: lda     $4F                             ; 894E
        bne     L_89BB                          ; 8950
        lda     $53                             ; 8952
        bne     L_897B                          ; 8954
        lda     $46                             ; 8956
        cmp     #$03                            ; 8958
        bne     L_8960                          ; 895A
        lda     $50                             ; 895C
        beq     L_8964                          ; 895E
L_8960: inc     $4F                             ; 8960
        bne     L_89BB                          ; 8962
L_8964: jsr     LD7E3                           ; 8964
        lda     #$04                            ; 8967
        sta     $46                             ; 8969
        lda     $C5                             ; 896B
        ora     #$08                            ; 896D
        sta     $C5                             ; 896F
        lda     #$00                            ; 8971
        sta     $51                             ; 8973
        sta     $91                             ; 8975
        sta     $90                             ; 8977
        beq     L_89BB                          ; 8979
L_897B: lda     #$7F                            ; 897B
        jsr     LD7A0                           ; 897D
        bpl     L_898D                          ; 8980
        pha                                     ; 8982
        and     #$7F                            ; 8983
        beq     L_898A                          ; 8985
        jsr     LD136                           ; 8987
L_898A: pla                                     ; 898A
        bmi     L_8997                          ; 898B
L_898D: jsr     LD2AB                           ; 898D
        jsr     LD256                           ; 8990
        bne     L_89BA                          ; 8993
        lda     #$40                            ; 8995
L_8997: and     #$7F                            ; 8997
        beq     L_89BA                          ; 8999
        ldx     #$03                            ; 899B
        stx     $46                             ; 899D
        ldx     #$02                            ; 899F
        stx     $50                             ; 89A1
        ldx     #$20                            ; 89A3
        stx     $4F                             ; 89A5
        eor     #$FF                            ; 89A7
        clc                                     ; 89A9
        adc     #$01                            ; 89AA
        clc                                     ; 89AC
        adc     $53                             ; 89AD
        bcs     L_89B3                          ; 89AF
        lda     #$00                            ; 89B1
L_89B3: sta     $53                             ; 89B3
        lda     #$3C                            ; 89B5
        jsr     Enqueue_Sound_Command           ; 89B7
L_89BA: rts                                     ; 89BA

; ----------------------------------------------------------------------------
L_89BB: jmp     LD790                           ; 89BB

.endmacro

.macro MAC_L_8C4D
; ----------------------------------------------------------------------------
L_8C4D: pha                                     ; 8C4D
        jsr     LCBDF                           ; 8C4E
        jsr     LEF2B                           ; 8C51
        lda     $50                             ; 8C54
        lsr     a                               ; 8C56
        ror     a                               ; 8C57
        ror     a                               ; 8C58
        and     #$C0                            ; 8C59
        sta     $44                             ; 8C5B
        pla                                     ; 8C5D
        clc                                     ; 8C5E
        adc     $51                             ; 8C5F
        jmp     LF011                           ; 8C61

.endmacro

.macro MAC_L_8E32
; ----------------------------------------------------------------------------
L_8E32: lda     $53                             ; 8E32
        beq     L_8E62                          ; 8E34
        jsr     LD21D                           ; 8E36
        lda     $50                             ; 8E39
        bne     L_8E47                          ; 8E3B
        lda     $D9                             ; 8E3D
        beq     L_8E47                          ; 8E3F
        lda     $10                             ; 8E41
        and     #$0F                            ; 8E43
        bne     L_8E62                          ; 8E45
L_8E47: lda     $F7                             ; 8E47
        and     #$03                            ; 8E49
        cmp     #$01                            ; 8E4B
        beq     L_8E63                          ; 8E4D
        cmp     #$02                            ; 8E4F
        beq     L_8E78                          ; 8E51
        lda     $50                             ; 8E53
        bne     L_8E62                          ; 8E55
        lda     $4C                             ; 8E57
        beq     L_8E62                          ; 8E59
        bmi     L_8E60                          ; 8E5B
        dec     $4C                             ; 8E5D
        rts                                     ; 8E5F

; ----------------------------------------------------------------------------
L_8E60: inc     $4C                             ; 8E60
L_8E62: rts                                     ; 8E62

; ----------------------------------------------------------------------------
L_8E63: lda     $47                             ; 8E63
        and     #$7F                            ; 8E65
        sta     $47                             ; 8E67
        lda     $50                             ; 8E69
        bne     L_8E73                          ; 8E6B
        bit     $98                             ; 8E6D
        bmi     L_8E73                          ; 8E6F
        inc     $4C                             ; 8E71
L_8E73: inc     $4C                             ; 8E73
        jmp     L_8E8A                          ; 8E75

; ----------------------------------------------------------------------------
L_8E78: lda     $47                             ; 8E78
        ora     #$80                            ; 8E7A
        sta     $47                             ; 8E7C
        lda     $50                             ; 8E7E
        bne     L_8E88                          ; 8E80
        bit     $98                             ; 8E82
        bmi     L_8E88                          ; 8E84
        dec     $4C                             ; 8E86
L_8E88: dec     $4C                             ; 8E88
L_8E8A: ldx     #$4C                            ; 8E8A
        lda     #$18                            ; 8E8C
        bit     $98                             ; 8E8E
        bpl     L_8E94                          ; 8E90
        lda     #$08                            ; 8E92
L_8E94: jmp     LEB14                           ; 8E94

.endmacro

.macro MAC_L_9707
; ----------------------------------------------------------------------------
L_9707: ldx     #$00                            ; 9707
        stx     $4F                             ; 9709
        lda     $BC                             ; 970B
        bpl     L_9711                          ; 970D
        ldx     #$FF                            ; 970F
L_9711: clc                                     ; 9711
        adc     $48                             ; 9712
        sta     $48                             ; 9714
        txa                                     ; 9716
        adc     $49                             ; 9717
        sta     $49                             ; 9719
        ldx     #$00                            ; 971B
        lda     $BD                             ; 971D
        bpl     L_9723                          ; 971F
        ldx     #$FF                            ; 9721
L_9723: clc                                     ; 9723
        adc     $4A                             ; 9724
        sta     $4A                             ; 9726
        txa                                     ; 9728
        adc     $4B                             ; 9729
        sta     $4B                             ; 972B
        jsr     LD2B9                           ; 972D
        lda     $BE                             ; 9730
        and     #$03                            ; 9732
        sta     $47                             ; 9734
        tax                                     ; 9736
        rts                                     ; 9737

; ----------------------------------------------------------------------------
L_9738: ldx     #$0E                            ; 9738
        lda     #$2A                            ; 973A
        sta     $00                             ; 973C
        jsr     LD7CF                           ; 973E
        beq     L_976C                          ; 9741
        lda     #$13                            ; 9743
        sta     $0400,x                         ; 9745
        jsr     LD7C0                           ; 9748
        lda     $03FC                           ; 974B
        bit     $E6E2                           ; 974E
        bne     L_9763                          ; 9751
        and     #$01                            ; 9753
        bne     L_975D                          ; 9755
        lda     #$1F                            ; 9757
        ldx     #$00                            ; 9759
        beq     L_9767                          ; 975B
L_975D: lda     #$21                            ; 975D
        ldx     #$01                            ; 975F
        bne     L_9767                          ; 9761
L_9763: lda     #$22                            ; 9763
        ldx     #$02                            ; 9765
L_9767: stx     $B9                             ; 9767
        jsr     Enqueue_Sound_Command           ; 9769
L_976C: rts                                     ; 976C

.endmacro

.macro MAC_L_9780
; ----------------------------------------------------------------------------
L_9780: .byte   $00,$40,$00,$C0                 ; 9780
L9784:  .byte   $C0,$00,$40,$00                 ; 9784
.endmacro

.macro MAC_L_9B81
; ----------------------------------------------------------------------------
L_9B81: lda     #$28                            ; 9B81
        jsr     Enqueue_Sound_Command           ; 9B83
        lda     #$4A                            ; 9B86
        jmp     LD851                           ; 9B88

; ----------------------------------------------------------------------------
L_9B8B: lda     #$28                            ; 9B8B
        jsr     Enqueue_Sound_Command           ; 9B8D
L_9B90: lda     #$4C                            ; 9B90
        jmp     LD851                           ; 9B92

.endmacro

.macro MAC_L_9E9E
; ----------------------------------------------------------------------------
L_9E9E: lda     #$23                            ; 9E9E
        jsr     Enqueue_Sound_Command           ; 9EA0
        rts                                     ; 9EA3

.endmacro

.macro MAC_L_A29E
; ----------------------------------------------------------------------------
L_A29E: sta     $06                             ; A29E
        jsr     LDF0F                           ; A2A0
        beq     L_A2D1                          ; A2A3
        stx     $05                             ; A2A5
        jsr     LEB71                           ; A2A7
        and     #$40                            ; A2AA
        bne     L_A2B3                          ; A2AC
        lda     #$01                            ; A2AE
        jmp     L_A2BC                          ; A2B0

; ----------------------------------------------------------------------------
L_A2B3: lda     #$00                            ; A2B3
        sec                                     ; A2B5
        sbc     $06                             ; A2B6
        sta     $06                             ; A2B8
        lda     #$0F                            ; A2BA
L_A2BC: clc                                     ; A2BC
        adc     $1D                             ; A2BD
        ldx     $05                             ; A2BF
        sta     $0403,x                         ; A2C1
        lda     $1C                             ; A2C4
        sta     $0402,x                         ; A2C6
        lda     $06                             ; A2C9
        sta     $0406,x                         ; A2CB
        lda     #$01                            ; A2CE
        rts                                     ; A2D0

; ----------------------------------------------------------------------------
L_A2D1: lda     #$00                            ; A2D1
        rts                                     ; A2D3

; ----------------------------------------------------------------------------
L_A2D4: lda     #$00                            ; A2D4
        jsr     LD2B1                           ; A2D6
        and     #$C0                            ; A2D9
        cmp     #$40                            ; A2DB
        beq     L_A2E8                          ; A2DD
        lda     #$00                            ; A2DF
        sta     $4A                             ; A2E1
        inc     $4B                             ; A2E3
        jsr     LD2B9                           ; A2E5
L_A2E8: rts                                     ; A2E8

; ----------------------------------------------------------------------------
L_A2E9: jsr     L_A2FA                          ; A2E9
        ldy     #$00                            ; A2EC
        lda     ($A1),y                         ; A2EE
        sta     $53                             ; A2F0
        sty     $4F                             ; A2F2
        jsr     LD2B9                           ; A2F4
        inc     $46                             ; A2F7
        rts                                     ; A2F9

; ----------------------------------------------------------------------------
L_A2FA: asl     a                               ; A2FA
        asl     a                               ; A2FB
        clc                                     ; A2FC
        adc     LA368                           ; A2FD
        sta     $A1                             ; A300
        lda     #$00                            ; A302
        adc     LA368+1                         ; A304
        sta     $A2                             ; A307
        rts                                     ; A309

; ----------------------------------------------------------------------------
L_A30A: jsr     L_A2FA                          ; A30A
        ldy     #$01                            ; A30D
        lda     ($A1),y                         ; A30F
        jsr     LD697                           ; A311
        sta     $45                             ; A314
        bne     L_A324                          ; A316
        lda     $53                             ; A318
        bne     L_A324                          ; A31A
        lda     #$1D                            ; A31C
        jsr     Enqueue_Sound_Command           ; A31E
        lda     #$FF                            ; A321
        rts                                     ; A323

; ----------------------------------------------------------------------------
L_A324: lda     #$00                            ; A324
        rts                                     ; A326

; ----------------------------------------------------------------------------
        .byte   $20,$FA,$A2,$A0,$01,$B1,$A1,$20 ; A327
        .byte   $97,$D6,$85,$45,$D0,$0F,$A5,$53 ; A32F
        .byte   $D0,$0B,$A9,$1D,$20,$CC,$DE,$20 ; A337
        .byte   $50,$A3,$A9,$FF,$60,$A9,$00,$60 ; A33F
; ----------------------------------------------------------------------------
L_A347: jsr     LD81C                           ; A347
        jmp     L_A350                          ; A34A

; ----------------------------------------------------------------------------
L_A34D: jsr     LD804                           ; A34D
L_A350: jsr     LEB71                           ; A350
        ldy     #$03                            ; A353
        cmp     ($A1),y                         ; A355
        bcs     L_A365                          ; A357
        jsr     LDF0F                           ; A359
        beq     L_A365                          ; A35C
        ldy     #$02                            ; A35E
        lda     ($A1),y                         ; A360
        sta     $0400,x                         ; A362
L_A365: jmp     L_9B8B                          ; A365

; ----------------------------------------------------------------------------
LA368:  .addr   LA36A                           ; A368
; ----------------------------------------------------------------------------
LA36A:  .byte   $04,$08,$2C,$60,$08,$10,$2C,$80 ; A36A
        .byte   $08,$10,$2C,$80,$20,$28,$2E,$80 ; A372
        .byte   $08,$10,$2C,$80,$06,$10,$2C,$80 ; A37A
        .byte   $08,$10,$2E,$50,$04,$20,$2C,$80 ; A382
        .byte   $18,$10,$2E,$A0,$10,$10,$2C,$F0 ; A38A
        .byte   $0A,$20,$2E,$80,$03,$10,$2C,$80 ; A392
        .byte   $04,$18,$2C,$A8,$03,$10,$2C,$80 ; A39A
        .byte   $06,$20,$2C,$80,$18,$20,$2C,$E0 ; A3A2
        .byte   $03,$10,$2C,$80,$03,$20,$2C,$A0 ; A3AA
        .byte   $0A,$10,$2C,$80,$10,$20,$2C,$60 ; A3B2
        .byte   $04,$20,$2E,$70,$08,$20,$2C,$80 ; A3BA
        .byte   $03,$10,$2C,$90,$03,$10,$2C,$B0 ; A3C2
        .byte   $08,$10,$2C,$70,$04,$20,$2C,$80 ; A3CA
        .byte   $30,$18,$2C,$D0,$20,$20,$2C,$C0 ; A3D2
        .byte   $10,$20,$2C,$80,$10,$20,$2C,$80 ; A3DA
.endmacro

.macro MAC_L_A634
; ----------------------------------------------------------------------------
L_A634: lda     $00                             ; A634
        pha                                     ; A636
        jsr     LE0ED                           ; A637
        bpl     L_A641                          ; A63A
        eor     #$FF                            ; A63C
        clc                                     ; A63E
        adc     #$01                            ; A63F
L_A641: sta     $00                             ; A641
        jsr     LE0FA                           ; A643
        bpl     L_A64D                          ; A646
        eor     #$FF                            ; A648
        clc                                     ; A64A
        adc     #$01                            ; A64B
L_A64D: cmp     $00                             ; A64D
        bcs     L_A660                          ; A64F
        jsr     LE0ED                           ; A651
        bmi     L_A65B                          ; A654
        ldx     #$00                            ; A656
        jmp     L_A66C                          ; A658

; ----------------------------------------------------------------------------
L_A65B: ldx     #$80                            ; A65B
        jmp     L_A66C                          ; A65D

; ----------------------------------------------------------------------------
L_A660: jsr     LE0FA                           ; A660
        bmi     L_A66A                          ; A663
        ldx     #$40                            ; A665
        jmp     L_A66C                          ; A667

; ----------------------------------------------------------------------------
L_A66A: ldx     #$C0                            ; A66A
L_A66C: pla                                     ; A66C
        sta     $00                             ; A66D
        rts                                     ; A66F

.endmacro

