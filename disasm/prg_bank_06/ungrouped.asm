.macro MAC_L_888C
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

; ----------------------------------------------------------------------------
L_89BE: lda     $1C                             ; 89BE
        clc                                     ; 89C0
        adc     #$20                            ; 89C1
        and     #$C0                            ; 89C3
        sta     $1C                             ; 89C5
        lda     $1E                             ; 89C7
        clc                                     ; 89C9
        adc     #$20                            ; 89CA
        and     #$C0                            ; 89CC
        sta     $1E                             ; 89CE
        lda     #$00                            ; 89D0
        sta     $94                             ; 89D2
        sta     $51                             ; 89D4
        sta     $D9                             ; 89D6
        lda     #$10                            ; 89D8
        ldx     $47                             ; 89DA
        bmi     L_89E0                          ; 89DC
        lda     #$0D                            ; 89DE
L_89E0: sta     $46                             ; 89E0
        jmp     L_94FC                          ; 89E2

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_8A77
L_8A77: lda     #$18                            ; 8A77
        sta     $40                             ; 8A79
        lda     #$10                            ; 8A7B
        sta     $41                             ; 8A7D
        jsr     LEF2B                           ; 8A7F
        lda     $3F                             ; 8A82
        pha                                     ; 8A84
        lda     $3E                             ; 8A85
        pha                                     ; 8A87
        lda     $3E                             ; 8A88
        sec                                     ; 8A8A
        sbc     #$30                            ; 8A8B
        sta     $3E                             ; 8A8D
        lda     $4F                             ; 8A8F
        pha                                     ; 8A91
        lda     #$00                            ; 8A92
        sta     $4F                             ; 8A94
        lda     #$00                            ; 8A96
        sta     $44                             ; 8A98
        lda     #$31                            ; 8A9A
        jsr     LF011                           ; 8A9C
        pla                                     ; 8A9F
        sta     $4F                             ; 8AA0
        pla                                     ; 8AA2
        sta     $3E                             ; 8AA3
        pla                                     ; 8AA5
        sta     $3F                             ; 8AA6
        lda     $3E                             ; 8AA8
        sec                                     ; 8AAA
        sbc     $51                             ; 8AAB
        sta     $3E                             ; 8AAD
        jmp     L_950D                          ; 8AAF

; ----------------------------------------------------------------------------
L_8AB2: lda     #$18                            ; 8AB2
        sta     $40                             ; 8AB4
        lda     #$10                            ; 8AB6
        sta     $41                             ; 8AB8
        jsr     LEF2B                           ; 8ABA
        lda     $3F                             ; 8ABD
        pha                                     ; 8ABF
        lda     $3E                             ; 8AC0
        pha                                     ; 8AC2
        lda     $3E                             ; 8AC3
        clc                                     ; 8AC5
        adc     #$20                            ; 8AC6
        sta     $3E                             ; 8AC8
        lda     $4F                             ; 8ACA
        pha                                     ; 8ACC
        lda     #$00                            ; 8ACD
        sta     $4F                             ; 8ACF
        lda     #$00                            ; 8AD1
        sta     $44                             ; 8AD3
        lda     #$31                            ; 8AD5
        jsr     LF011                           ; 8AD7
        pla                                     ; 8ADA
        sta     $4F                             ; 8ADB
        pla                                     ; 8ADD
        sta     $3E                             ; 8ADE
        pla                                     ; 8AE0
        sta     $3F                             ; 8AE1
        lda     $3E                             ; 8AE3
        clc                                     ; 8AE5
        adc     $51                             ; 8AE6
        sta     $3E                             ; 8AE8
        jmp     L_950D                          ; 8AEA

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_8BE5
L_8BE5: ldy     $51                             ; 8BE5
        cpy     #$08                            ; 8BE7
        beq     L_8C00                          ; 8BE9
        lda     ($7A),y                         ; 8BEB
        sta     $4C                             ; 8BED
        tya                                     ; 8BEF
        clc                                     ; 8BF0
        adc     #$08                            ; 8BF1
        tay                                     ; 8BF3
        lda     ($7A),y                         ; 8BF4
        sta     $4D                             ; 8BF6
        inc     $51                             ; 8BF8
        jsr     L_8C32                          ; 8BFA
        jmp     LD2DB                           ; 8BFD

; ----------------------------------------------------------------------------
L_8C00: lda     $47                             ; 8C00
        bmi     L_8C08                          ; 8C02
        lda     #$0F                            ; 8C04
        bne     L_8C0A                          ; 8C06
L_8C08: lda     #$80                            ; 8C08
L_8C0A: sta     $47                             ; 8C0A
        lda     $50                             ; 8C0C
        clc                                     ; 8C0E
        adc     #$10                            ; 8C0F
        tay                                     ; 8C11
        lda     ($7A),y                         ; 8C12
        sta     $46                             ; 8C14
        ldy     #$14                            ; 8C16
        lda     ($7A),y                         ; 8C18
        sta     $4C                             ; 8C1A
        iny                                     ; 8C1C
        lda     ($7A),y                         ; 8C1D
        sta     $4D                             ; 8C1F
        jsr     L_8C32                          ; 8C21
        lda     $45                             ; 8C24
        jsr     L_8C4D                          ; 8C26
        lda     #$00                            ; 8C29
        sta     $50                             ; 8C2B
        sta     $51                             ; 8C2D
        pla                                     ; 8C2F
        pla                                     ; 8C30
        rts                                     ; 8C31

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_8C4D
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

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_8E32
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

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_938E
L_938E: lda     $99                             ; 938E
        and     #$0C                            ; 9390
        cmp     #$0C                            ; 9392
        beq     L_9399                          ; 9394
        jmp     L_9432                          ; 9396

; ----------------------------------------------------------------------------
L_9399: lda     $F7                             ; 9399
        and     #$03                            ; 939B
        tax                                     ; 939D
        lda     $48                             ; 939E
        cmp     #$40                            ; 93A0
        bcc     L_93BB                          ; 93A2
        cmp     #$C0                            ; 93A4
        bcs     L_93AB                          ; 93A6
        jmp     L_9432                          ; 93A8

; ----------------------------------------------------------------------------
L_93AB: cpx     #$01                            ; 93AB
        beq     L_93B2                          ; 93AD
        jmp     L_9432                          ; 93AF

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_9432
L_9432: jsr     LD3DE                           ; 9432
        beq     L_94A5                          ; 9435
        lda     $4D                             ; 9437
        bpl     L_943E                          ; 9439
        jmp     L_94D9                          ; 943B

; ----------------------------------------------------------------------------
L_943E: lda     #$00                            ; 943E
        sta     $4D                             ; 9440
        jsr     L_888C                          ; 9442
        lda     $90                             ; 9445
        beq     L_9451                          ; 9447
        lda     #$06                            ; 9449
        sta     $91                             ; 944B
        lda     #$00                            ; 944D
        sta     $90                             ; 944F
L_9451: lda     $50                             ; 9451
        and     #$03                            ; 9453
        sta     $50                             ; 9455
        beq     L_948B                          ; 9457
        cmp     #$02                            ; 9459
        beq     L_9497                          ; 945B
        cmp     #$03                            ; 945D
        bne     L_9470                          ; 945F
        lda     $F3                             ; 9461
        bpl     L_9470                          ; 9463
        lda     #$01                            ; 9465
        sta     $50                             ; 9467
        lda     L9640                           ; 9469
        sta     $8F                             ; 946C
        bne     L_94DD                          ; 946E
L_9470: dec     $8F                             ; 9470
        bne     L_94DD                          ; 9472
        inc     $50                             ; 9474
        lda     $50                             ; 9476
        cmp     #$02                            ; 9478
        bne     L_94DD                          ; 947A
        ldx     L94FA                           ; 947C
        lda     $98                             ; 947F
        bpl     L_9486                          ; 9481
        ldx     L94FB                           ; 9483
L_9486: stx     $4D                             ; 9486
        jmp     L_94DD                          ; 9488

; ----------------------------------------------------------------------------
L_948B: lda     $F3                             ; 948B
        bpl     L_94DD                          ; 948D
        lda     #$2E                            ; 948F
        jsr     Enqueue_Sound_Command           ; 9491
        jmp     L_949C                          ; 9494

; ----------------------------------------------------------------------------
L_9497: lda     #$2D                            ; 9497
        jsr     Enqueue_Sound_Command           ; 9499
L_949C: inc     $50                             ; 949C
        lda     L9640                           ; 949E
        sta     $8F                             ; 94A1
        bne     L_94DD                          ; 94A3
L_94A5: lda     $98                             ; 94A5
        bpl     L_94B5                          ; 94A7
        lda     $99                             ; 94A9
        and     #$02                            ; 94AB
        beq     L_94B5                          ; 94AD
        lda     #$08                            ; 94AF
        sta     $46                             ; 94B1
        bne     L_94DD                          ; 94B3
L_94B5: lda     $99                             ; 94B5
        and     #$01                            ; 94B7
        beq     L_94CB                          ; 94B9
        lda     $F3                             ; 94BB
        bpl     L_94CB                          ; 94BD
        lda     $90                             ; 94BF
        bne     L_94CB                          ; 94C1
        lda     #$02                            ; 94C3
        sta     $90                             ; 94C5
        lda     #$06                            ; 94C7
        sta     $91                             ; 94C9
L_94CB: lda     $50                             ; 94CB
        cmp     #$02                            ; 94CD
        beq     L_94DD                          ; 94CF
        lda     #$02                            ; 94D1
        sta     $50                             ; 94D3
        lda     #$10                            ; 94D5
        sta     $4D                             ; 94D7
L_94D9: lda     #$00                            ; 94D9
        sta     $4D                             ; 94DB
L_94DD: lda     $91                             ; 94DD
        beq     L_94E3                          ; 94DF
        dec     $91                             ; 94E1
L_94E3: lda     $50                             ; 94E3
        lsr     a                               ; 94E5
        bcs     L_94EC                          ; 94E6
        lda     #$00                            ; 94E8
        sta     $8F                             ; 94EA
L_94EC: jsr     L_9641                          ; 94EC
        sta     $BE                             ; 94EF
        jsr     L_96EB                          ; 94F1
        jsr     L_96D5                          ; 94F4
        jmp     L_94FC                          ; 94F7

; ----------------------------------------------------------------------------
L94FA:  .byte   $BE                             ; 94FA
L94FB:  .byte   $D2                             ; 94FB
; ----------------------------------------------------------------------------
L_94FC: jsr     LCBDF                           ; 94FC
        lda     #$18                            ; 94FF
        sta     $40                             ; 9501
        lda     #$10                            ; 9503
        sta     $41                             ; 9505
        jsr     LEF2B                           ; 9507
        jsr     L_894E                          ; 950A
L_950D: lda     $3F                             ; 950D
        pha                                     ; 950F
        lda     $3E                             ; 9510
        pha                                     ; 9512
        lda     $3F                             ; 9513
        clc                                     ; 9515
        adc     #$04                            ; 9516
        sta     $3F                             ; 9518
        lda     #$00                            ; 951A
        sta     $44                             ; 951C
        lda     $91                             ; 951E
        bne     L_953A                          ; 9520
        lda     $90                             ; 9522
        beq     L_9542                          ; 9524
        cmp     #$01                            ; 9526
        bne     L_952E                          ; 9528
        lda     #$2C                            ; 952A
        bne     L_953C                          ; 952C
L_952E: dec     $3F                             ; 952E
        lda     $10                             ; 9530
        lsr     a                               ; 9532
        and     #$01                            ; 9533
        clc                                     ; 9535
        adc     #$7A                            ; 9536
        bne     L_953C                          ; 9538
L_953A: lda     #$2E                            ; 953A
L_953C: jsr     LF011                           ; 953C
        jmp     L_95C9                          ; 953F

; ----------------------------------------------------------------------------
L_9542: lda     $C1                             ; 9542
        beq     L_955F                          ; 9544
        lda     $50                             ; 9546
        and     #$03                            ; 9548
        sta     $50                             ; 954A
        cmp     #$02                            ; 954C
        bne     L_955F                          ; 954E
        lda     $4D                             ; 9550
        bmi     L_9559                          ; 9552
        dec     $3F                             ; 9554
        jmp     L_955F                          ; 9556

; ----------------------------------------------------------------------------
L_9559: inc     $3F                             ; 9559
        inc     $3F                             ; 955B
        inc     $3F                             ; 955D
L_955F: lda     $C1                             ; 955F
        beq     L_9588                          ; 9561
        lda     $D9                             ; 9563
        bne     L_956D                          ; 9565
        lda     $50                             ; 9567
        cmp     #$02                            ; 9569
        bne     L_9588                          ; 956B
L_956D: lda     $10                             ; 956D
        lsr     a                               ; 956F
        bcc     L_9597                          ; 9570
        lda     $F7                             ; 9572
        and     #$03                            ; 9574
        cmp     #$01                            ; 9576
        beq     L_9583                          ; 9578
        cmp     #$02                            ; 957A
        bne     L_9597                          ; 957C
        dec     $DA                             ; 957E
        jmp     L_9597                          ; 9580

; ----------------------------------------------------------------------------
L_9583: inc     $DA                             ; 9583
        jmp     L_9597                          ; 9585

; ----------------------------------------------------------------------------
L_9588: lda     $1C                             ; 9588
        lsr     a                               ; 958A
        lsr     a                               ; 958B
        lsr     a                               ; 958C
        lsr     a                               ; 958D
        clc                                     ; 958E
        adc     $3E                             ; 958F
        lsr     a                               ; 9591
        lsr     a                               ; 9592
        and     #$03                            ; 9593
        sta     $DA                             ; 9595
L_9597: lda     $94                             ; 9597
        lsr     a                               ; 9599
        lsr     a                               ; 959A
        clc                                     ; 959B
        adc     $3E                             ; 959C
        sec                                     ; 959E
        sbc     #$08                            ; 959F
        sta     $3E                             ; 95A1
        lda     $DA                             ; 95A3
        and     #$03                            ; 95A5
        clc                                     ; 95A7
        adc     #$1C                            ; 95A8
        jsr     LF011                           ; 95AA
        lda     $94                             ; 95AD
        lsr     a                               ; 95AF
        and     #$06                            ; 95B0
        eor     #$FF                            ; 95B2
        clc                                     ; 95B4
        adc     #$11                            ; 95B5
        clc                                     ; 95B7
        adc     $3E                             ; 95B8
        sta     $3E                             ; 95BA
        lda     $DA                             ; 95BC
        clc                                     ; 95BE
        adc     #$01                            ; 95BF
        and     #$03                            ; 95C1
        clc                                     ; 95C3
        adc     #$1C                            ; 95C4
        jsr     LF011                           ; 95C6
L_95C9: pla                                     ; 95C9
        sta     $3E                             ; 95CA
        pla                                     ; 95CC
        sta     $3F                             ; 95CD
        lda     $94                             ; 95CF
        lsr     a                               ; 95D1
        and     #$06                            ; 95D2
        eor     #$FF                            ; 95D4
        clc                                     ; 95D6
        adc     #$04                            ; 95D7
        clc                                     ; 95D9
        adc     $3F                             ; 95DA
        sta     $3F                             ; 95DC
        lda     $8F                             ; 95DE
        beq     L_95E9                          ; 95E0
        inc     $3F                             ; 95E2
        inc     $3F                             ; 95E4
        jmp     L_9601                          ; 95E6

; ----------------------------------------------------------------------------
L_95E9: lda     $50                             ; 95E9
        bne     L_9601                          ; 95EB
        lda     $4C                             ; 95ED
        beq     L_9601                          ; 95EF
        lda     $C1                             ; 95F1
        beq     L_9601                          ; 95F3
        lda     $D9                             ; 95F5
        bne     L_9601                          ; 95F7
        lda     $DA                             ; 95F9
        and     #$02                            ; 95FB
        bne     L_9601                          ; 95FD
        inc     $3F                             ; 95FF
L_9601: lda     $94                             ; 9601
        beq     L_961F                          ; 9603
        ldx     #$00                            ; 9605
        bit     $47                             ; 9607
        bmi     L_960D                          ; 9609
        ldx     #$40                            ; 960B
L_960D: stx     $44                             ; 960D
        lda     $94                             ; 960F
        lsr     a                               ; 9611
        lsr     a                               ; 9612
        cmp     #$03                            ; 9613
        beq     L_961B                          ; 9615
        lda     #$25                            ; 9617
        bne     L_963C                          ; 9619
L_961B: lda     #$24                            ; 961B
        bne     L_963C                          ; 961D
L_961F: lda     $03D6                           ; 961F
        beq     L_962F                          ; 9622
        lda     $47                             ; 9624
        lsr     a                               ; 9626
        and     #$40                            ; 9627
        sta     $44                             ; 9629
        lda     #$32                            ; 962B
        bne     L_963C                          ; 962D
L_962F: lda     #$00                            ; 962F
        sta     $44                             ; 9631
        lda     $47                             ; 9633
        lsr     a                               ; 9635
        lsr     a                               ; 9636
        and     #$03                            ; 9637
        clc                                     ; 9639
        adc     #$20                            ; 963A
L_963C: jmp     LF011                           ; 963C

; ----------------------------------------------------------------------------
        rts                                     ; 963F

; ----------------------------------------------------------------------------
L9640:  .byte   $04                             ; 9640
; ----------------------------------------------------------------------------
L_9641: lda     $47                             ; 9641
        bpl     L_9650                          ; 9643
        ldx     #$03                            ; 9645
        and     #$0F                            ; 9647
        beq     L_965A                          ; 9649
        dec     $47                             ; 964B
        jmp     L_965A                          ; 964D

; ----------------------------------------------------------------------------
L_9650: ldx     #$01                            ; 9650
        and     #$0F                            ; 9652
        cmp     #$0F                            ; 9654
        beq     L_965A                          ; 9656
        inc     $47                             ; 9658
L_965A: lda     $94                             ; 965A
        cmp     #$08                            ; 965C
        bcc     L_9662                          ; 965E
        ldx     #$00                            ; 9660
L_9662: lda     $F7                             ; 9662
        and     #$08                            ; 9664
        bne     L_9672                          ; 9666
        dec     $94                             ; 9668
        bpl     L_967C                          ; 966A
        lda     #$00                            ; 966C
        sta     $94                             ; 966E
        beq     L_967C                          ; 9670
L_9672: inc     $94                             ; 9672
        lda     #$0C                            ; 9674
        cmp     $94                             ; 9676
        bcs     L_967C                          ; 9678
        sta     $94                             ; 967A
L_967C: lda     #$90                            ; 967C
        sta     $BC                             ; 967E
        lda     #$A0                            ; 9680
        sta     $BD                             ; 9682
        lda     $94                             ; 9684
        beq     L_9694                          ; 9686
        cmp     #$08                            ; 9688
        bcc     L_9694                          ; 968A
        lda     #$50                            ; 968C
        sta     $BC                             ; 968E
        lda     #$A0                            ; 9690
        sta     $BD                             ; 9692
L_9694: lda     $47                             ; 9694
        bmi     L_96A0                          ; 9696
        lda     #$00                            ; 9698
        sec                                     ; 969A
        sec                                     ; 969B
        sbc     $BC                             ; 969C
        sta     $BC                             ; 969E
L_96A0: txa                                     ; 96A0
        rts                                     ; 96A1

; ----------------------------------------------------------------------------
L_96A2: lda     $14                             ; 96A2
        cmp     #$0D                            ; 96A4
        bne     L_96BD                          ; 96A6
        lda     $50                             ; 96A8
        cmp     #$02                            ; 96AA
        beq     L_96BD                          ; 96AC
        lda     #$11                            ; 96AE
        jsr     LD2B1                           ; 96B0
        and     #$03                            ; 96B3
        cmp     #$01                            ; 96B5
        beq     L_96BD                          ; 96B7
        lda     #$FF                            ; 96B9
        bne     L_96BF                          ; 96BB
L_96BD: lda     #$00                            ; 96BD
L_96BF: sta     $D9                             ; 96BF
        rts                                     ; 96C1

; ----------------------------------------------------------------------------
L_96C2: ldx     $4E                             ; 96C2
        lda     $0500,x                         ; 96C4
        and     #$40                            ; 96C7
        bne     L_96D0                          ; 96C9
        lda     #$00                            ; 96CB
        sta     $98                             ; 96CD
        rts                                     ; 96CF

; ----------------------------------------------------------------------------
L_96D0: lda     #$80                            ; 96D0
        sta     $98                             ; 96D2
        rts                                     ; 96D4

; ----------------------------------------------------------------------------
L_96D5: lda     $F3                             ; 96D5
        and     #$04                            ; 96D7
        beq     L_96EA                          ; 96D9
        ldx     $4E                             ; 96DB
        lda     $0500,x                         ; 96DD
        jsr     LD246                           ; 96E0
        bne     L_96EA                          ; 96E3
        lda     #$01                            ; 96E5
        jmp     LD1EF                           ; 96E7

; ----------------------------------------------------------------------------
L_96EA: rts                                     ; 96EA

; ----------------------------------------------------------------------------
L_96EB: bit     $F3                             ; 96EB
        bvc     L_9706                          ; 96ED
        lda     $F7                             ; 96EF
        bit     $E6E3                           ; 96F1
        beq     L_9738                          ; 96F4
        ldx     $BA                             ; 96F6
        bne     L_96FD                          ; 96F8
        jmp     L_9838                          ; 96FA

; ----------------------------------------------------------------------------
L_96FD: dex                                     ; 96FD
        bne     L_9703                          ; 96FE
        jmp     L_99B0                          ; 9700

; ----------------------------------------------------------------------------
L_9703: jmp     L_9AC8                          ; 9703

; ----------------------------------------------------------------------------
L_9706: rts                                     ; 9706

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

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_9780
L_9780: .byte   $00,$40,$00,$C0                 ; 9780
L9784:  .byte   $C0,$00,$40,$00                 ; 9784
; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_9838
L_9838: lda     #$54                            ; 9838
        sta     $02                             ; 983A
        lda     #$06                            ; 983C
L_983E: pha                                     ; 983E
        lda     $06F0                           ; 983F
        beq     L_986C                          ; 9842
        ldx     $02                             ; 9844
        lda     $0400,x                         ; 9846
        cmp     #$54                            ; 9849
        bcc     L_986C                          ; 984B
        ldx     #$1C                            ; 984D
        lda     #$46                            ; 984F
        sta     $00                             ; 9851
        jsr     LD7CF                           ; 9853
        beq     L_9880                          ; 9856
        dec     $06F0                           ; 9858
        txa                                     ; 985B
        pha                                     ; 985C
        jsr     LD7C0                           ; 985D
        pla                                     ; 9860
        tax                                     ; 9861
        lda     $02                             ; 9862
        sta     $040A,x                         ; 9864
        lda     #$15                            ; 9867
        sta     $0400,x                         ; 9869
L_986C: pla                                     ; 986C
        clc                                     ; 986D
        adc     #$01                            ; 986E
        cmp     #$12                            ; 9870
        beq     L_9881                          ; 9872
        pha                                     ; 9874
        lda     $02                             ; 9875
        clc                                     ; 9877
        adc     #$0E                            ; 9878
        sta     $02                             ; 987A
        pla                                     ; 987C
        jmp     L_983E                          ; 987D

; ----------------------------------------------------------------------------
L_9880: pla                                     ; 9880
L_9881: rts                                     ; 9881

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_99B0
L_99B0: ldx     #$46                            ; 99B0
        lda     #$46                            ; 99B2
        sta     $00                             ; 99B4
        jsr     LD7CF                           ; 99B6
        beq     L_99CB                          ; 99B9
        lda     $06F1                           ; 99BB
        beq     L_99CB                          ; 99BE
        dec     $06F1                           ; 99C0
        lda     #$17                            ; 99C3
        sta     $0400,x                         ; 99C5
        jmp     LD7C0                           ; 99C8

; ----------------------------------------------------------------------------
L_99CB: rts                                     ; 99CB

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_9AC8
L_9AC8: ldx     #$2A                            ; 9AC8
L_9ACA: lda     $06F2                           ; 9ACA
        beq     L_9AEA                          ; 9ACD
        txa                                     ; 9ACF
        pha                                     ; 9AD0
        lda     $0400,x                         ; 9AD1
        bne     L_9AE1                          ; 9AD4
        lda     #$19                            ; 9AD6
        sta     $0400,x                         ; 9AD8
        jsr     LD7C0                           ; 9ADB
        dec     $06F2                           ; 9ADE
L_9AE1: pla                                     ; 9AE1
        clc                                     ; 9AE2
        adc     #$0E                            ; 9AE3
        tax                                     ; 9AE5
        cmp     #$54                            ; 9AE6
        bne     L_9ACA                          ; 9AE8
L_9AEA: rts                                     ; 9AEA

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_9B81
L_9B81: lda     #$28                            ; 9B81
        jsr     Enqueue_Sound_Command           ; 9B83
        lda     #$4A                            ; 9B86
        jmp     LD851                           ; 9B88

; ----------------------------------------------------------------------------
L_9B8B: lda     #$28                            ; 9B8B
        jsr     Enqueue_Sound_Command           ; 9B8D
L_9B90: lda     #$4C                            ; 9B90
        jmp     LD851                           ; 9B92

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_9BD2
L_9BD2: .byte   $36,$35,$34,$00,$34,$00         ; 9BD2
; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_9C15
L_9C15: .byte   $36,$35,$34,$37,$00,$37,$00     ; 9C15
; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_9D0C
L_9D0C: .byte   $60,$60,$6A,$6A,$62,$62,$64,$68 ; 9D0C
        .byte   $66                             ; 9D14
L9D15:  .byte   $01,$04,$01,$04,$01,$04,$01,$01 ; 9D15
        .byte   $01                             ; 9D1D
L9D1E:  .byte   $20                             ; 9D1E
L9D1F:  .byte   $9D,$0D,$04,$0D,$04,$C3,$00,$C3 ; 9D1F
        .byte   $00,$92,$00,$92,$00,$F0,$06,$F1 ; 9D27
        .byte   $06,$F2,$06                     ; 9D2F
L9D32:  .byte   $20,$80,$20,$80,$20,$80,$14,$14 ; 9D32
        .byte   $14                             ; 9D3A
; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_9E93
L9E90:  .byte   $92                             ; 9E90
L9E91:  .byte   $9E,$22                         ; 9E91
L_9E93: .byte   $C6,$C7,$D6,$D7                 ; 9E93
L9E97:  .byte   $99                             ; 9E97
L9E98:  .byte   $9E,$22,$6A,$6B,$7A,$7B         ; 9E98
; ----------------------------------------------------------------------------
L_9E9E: lda     #$23                            ; 9E9E
        jsr     Enqueue_Sound_Command           ; 9EA0
        rts                                     ; 9EA3

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_A29E
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
        adc     LA369                           ; A304
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
LA368:  .byte   $6A                             ; A368
LA369:  .byte   $A3,$04,$08,$2C,$60,$08,$10,$2C ; A369
        .byte   $80,$08,$10,$2C,$80,$20,$28,$2E ; A371
        .byte   $80,$08,$10,$2C,$80,$06,$10,$2C ; A379
        .byte   $80,$08,$10,$2E,$50,$04,$20,$2C ; A381
        .byte   $80,$18,$10,$2E,$A0,$10,$10,$2C ; A389
        .byte   $F0,$0A,$20,$2E,$80,$03,$10,$2C ; A391
        .byte   $80,$04,$18,$2C,$A8,$03,$10,$2C ; A399
        .byte   $80,$06,$20,$2C,$80,$18,$20,$2C ; A3A1
        .byte   $E0,$03,$10,$2C,$80,$03,$20,$2C ; A3A9
        .byte   $A0,$0A,$10,$2C,$80,$10,$20,$2C ; A3B1
        .byte   $60,$04,$20,$2E,$70,$08,$20,$2C ; A3B9
        .byte   $80,$03,$10,$2C,$90,$03,$10,$2C ; A3C1
        .byte   $B0,$08,$10,$2C,$70,$04,$20,$2C ; A3C9
        .byte   $80,$30,$18,$2C,$D0,$20,$20,$2C ; A3D1
        .byte   $C0,$10,$20,$2C,$80,$10,$20,$2C ; A3D9
        .byte   $80                             ; A3E1
; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_A4DB
L_A4DB: .byte   $11,$12,$13                     ; A4DB
; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_A634
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

; ----------------------------------------------------------------------------
L_A670: sty     $05                             ; A670
        jsr     LE083                           ; A672
        lda     $51                             ; A675
        beq     L_A6AD                          ; A677
        dec     $51                             ; A679
        bne     L_A683                          ; A67B
        lda     $9A                             ; A67D
        beq     L_A6BC                          ; A67F
        bne     L_A6B9                          ; A681
L_A683: and     #$03                            ; A683
        bne     L_A6B9                          ; A685
        lda     $9A                             ; A687
        ldx     $50                             ; A689
        bpl     L_A68F                          ; A68B
        eor     #$C0                            ; A68D
L_A68F: tax                                     ; A68F
        lda     $47                             ; A690
        cpx     #$00                            ; A692
        bne     L_A69C                          ; A694
        sec                                     ; A696
        sbc     #$40                            ; A697
        jmp     L_A6A3                          ; A699

; ----------------------------------------------------------------------------
L_A69C: cpx     #$C0                            ; A69C
        bne     L_A6B9                          ; A69E
        clc                                     ; A6A0
        adc     #$40                            ; A6A1
L_A6A3: sta     $47                             ; A6A3
        ldy     $05                             ; A6A5
        jsr     LE1BD                           ; A6A7
        jmp     L_A6B9                          ; A6AA

; ----------------------------------------------------------------------------
L_A6AD: lda     $9A                             ; A6AD
        bpl     L_A6B3                          ; A6AF
        eor     #$C0                            ; A6B1
L_A6B3: bne     L_A6B9                          ; A6B3
        lda     #$08                            ; A6B5
        sta     $51                             ; A6B7
L_A6B9: lda     #$FF                            ; A6B9
        rts                                     ; A6BB

; ----------------------------------------------------------------------------
L_A6BC: lda     #$00                            ; A6BC
        rts                                     ; A6BE

; ----------------------------------------------------------------------------
LA6BF:  .byte   $C0                             ; A6BF
LA6C0:  .byte   $6A,$00,$68,$00,$6A,$C0,$68,$40 ; A6C0
        .byte   $68,$80,$6A,$80,$68,$40,$6A     ; A6C8
LA6CF:  .byte   $00                             ; A6CF
LA6D0:  .byte   $6A,$80,$68,$40,$6A,$00,$68     ; A6D0
; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_B81C
L_B81C: jsr     LE0ED                           ; B81C
        bmi     L_B826                          ; B81F
        lda     #$08                            ; B821
        jmp     L_B828                          ; B823

; ----------------------------------------------------------------------------
L_B826: lda     #$F8                            ; B826
L_B828: sta     $4C                             ; B828
        rts                                     ; B82A

; ----------------------------------------------------------------------------
L_B82B: lda     $52                             ; B82B
        beq     L_B831                          ; B82D
        dec     $52                             ; B82F
L_B831: rts                                     ; B831

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_BA70
L_BA70: .byte   $C0                             ; BA70
LBA71:  .byte   $6A,$00,$68,$00,$6A,$C0,$68,$40 ; BA71
        .byte   $68,$80,$6A,$80,$68,$40,$6A     ; BA79
LBA80:  .byte   $00                             ; BA80
LBA81:  .byte   $6A,$80,$68,$40,$6A,$00,$68     ; BA81
; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_BB78
L_BB78: lda     #$B8                            ; BB78
        sta     $45                             ; BB7A
        rts                                     ; BB7C

; ----------------------------------------------------------------------------
L_BB7D: lda     $11                             ; BB7D
        and     #$04                            ; BB7F
        beq     L_BB88                          ; BB81
        lda     #$B8                            ; BB83
        jmp     L_BB8A                          ; BB85

; ----------------------------------------------------------------------------
L_BB88: lda     #$BA                            ; BB88
L_BB8A: sta     $45                             ; BB8A
        rts                                     ; BB8C

; ----------------------------------------------------------------------------
L_BB8D: lda     #$B6                            ; BB8D
        sta     $45                             ; BB8F
        rts                                     ; BB91

; ----------------------------------------------------------------------------
L_BB92: dec     $51                             ; BB92
        lda     $51                             ; BB94
        lsr     a                               ; BB96
        lsr     a                               ; BB97
        tax                                     ; BB98
        lda     LBB9F,x                         ; BB99
        sta     $45                             ; BB9C
        rts                                     ; BB9E

; ----------------------------------------------------------------------------
LBB9F:  .byte   $B6,$B4,$B2,$B0,$B0,$B2,$B4,$B6 ; BB9F
; ----------------------------------------------------------------------------
L_BBA7: jsr     L_BBB8                          ; BBA7
        ldy     #$00                            ; BBAA
        lda     ($A6),y                         ; BBAC
        sta     $53                             ; BBAE
        sty     $4F                             ; BBB0
        jsr     LD2B9                           ; BBB2
        inc     $46                             ; BBB5
        rts                                     ; BBB7

; ----------------------------------------------------------------------------
L_BBB8: asl     a                               ; BBB8
        clc                                     ; BBB9
        adc     LBC1D                           ; BBBA
        sta     $A6                             ; BBBD
        lda     #$00                            ; BBBF
        adc     LBC1E                           ; BBC1
        sta     $A7                             ; BBC4
        rts                                     ; BBC6

; ----------------------------------------------------------------------------
L_BBC7: jsr     L_BBB8                          ; BBC7
        ldy     #$01                            ; BBCA
        lda     ($A6),y                         ; BBCC
        jsr     LD697                           ; BBCE
        sta     $45                             ; BBD1
        bne     L_BBE2                          ; BBD3
        lda     $53                             ; BBD5
        bne     L_BBE2                          ; BBD7
        jsr     LD804                           ; BBD9
        jsr     L_BBF5                          ; BBDC
        lda     #$FF                            ; BBDF
        rts                                     ; BBE1

; ----------------------------------------------------------------------------
L_BBE2: lda     #$00                            ; BBE2
        rts                                     ; BBE4

; ----------------------------------------------------------------------------
        jsr     L_BBB8                          ; BBE5
        ldy     #$01                            ; BBE8
        lda     ($A6),y                         ; BBEA
        jsr     LD697                           ; BBEC
        bne     L_BBF4                          ; BBEF
        jsr     L_BBF8                          ; BBF1
L_BBF4: rts                                     ; BBF4

; ----------------------------------------------------------------------------
L_BBF5: jsr     LD804                           ; BBF5
L_BBF8: jsr     LEB71                           ; BBF8
        and     #$0F                            ; BBFB
        sta     $00                             ; BBFD
        ldy     #$03                            ; BBFF
        lda     ($A6),y                         ; BC01
        cmp     $00                             ; BC03
        bcc     L_BC0C                          ; BC05
        lda     #$00                            ; BC07
        jmp     L_BC18                          ; BC09

; ----------------------------------------------------------------------------
L_BC0C: ldy     #$02                            ; BC0C
        lda     ($A6),y                         ; BC0E
        jsr     LDF0F                           ; BC10
        lda     #$2C                            ; BC13
        sta     $0400,x                         ; BC15
L_BC18: lda     #$4C                            ; BC18
        sta     $46                             ; BC1A
        rts                                     ; BC1C

; ----------------------------------------------------------------------------
LBC1D:  .byte   $1F                             ; BC1D
LBC1E:  .byte   $BC,$B0,$40,$FF,$FF,$FF,$FF,$FF ; BC1E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC26
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC2E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC36
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC3E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC46
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC4E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC56
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC5E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC66
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC6E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC76
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC7E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC86
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC8E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC96
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BC9E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCA6
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCAE
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCB6
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCBE
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCC6
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCCE
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCD6
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCDE
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCE6
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCEE
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCF6
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCFE
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD06
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD0E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD16
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD1E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD26
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD2E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD36
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD3E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD46
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD4E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD56
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD5E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD66
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD6E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD76
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD7E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD86
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD8E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD96
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BD9E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDA6
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDAE
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDB6
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDBE
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDC6
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDCE
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDD6
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDDE
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDE6
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDEE
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDF6
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BDFE
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE06
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE0E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE16
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE1E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE26
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE2E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE36
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE3E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE46
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE4E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE56
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE5E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE66
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE6E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE76
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE7E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE86
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE8E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE96
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BE9E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEA6
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEAE
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEB6
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEBE
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEC6
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BECE
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BED6
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEDE
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEE6
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEEE
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEF6
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BEFE
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF06
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF0E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF16
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF1E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF26
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF2E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF36
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF3E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF46
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF4E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF56
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF5E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF66
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF6E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF76
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF7E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF86
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF8E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF96
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF9E
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFA6
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFAE
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFB6
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFBE
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFC6
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFCE
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFD6
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFDE
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFE6
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$EE,$F4 ; BFEE
        .byte   $FF,$4C,$3B,$F2,$7E,$EB,$F4,$FF ; BFF6
        .byte   $FF                             ; BFFE
        .byte   $FF                             ; BFFF

; End of "BANK06" segment
; ----------------------------------------------------------------------------
.code

.endmacro

