.macro MAC_L_C438
; ----------------------------------------------------------------------------
L_C438: .byte   $A5,$F4,$29,$80,$D0,$0E,$A5,$F4 ; C438
        .byte   $29,$08,$D0,$10,$A5,$F4,$29,$40 ; C440
        .byte   $D0,$0E,$F0,$89,$A9,$FF,$8D,$FB ; C448
        .byte   $03,$4C,$D5,$C3,$A9,$03,$D0,$07 ; C450
        .byte   $A9,$FF,$85,$C3,$4C,$D5,$C3     ; C458
.endmacro

.macro MAC_L_C465
; ----------------------------------------------------------------------------
L_C465: lda     #$00                            ; C465
        sta     $56                             ; C467
        jsr     L_C8DF                          ; C469
        lda     $B7                             ; C46C
        cmp     #$01                            ; C46E
        bne     L_C475                          ; C470
        jmp     L_C4C8                          ; C472

; ----------------------------------------------------------------------------
L_C475: cmp     #$02                            ; C475
        bne     L_C47C                          ; C477
        jmp     L_C52A                          ; C479

; ----------------------------------------------------------------------------
L_C47C: cmp     #$03                            ; C47C
        bne     L_C483                          ; C47E
        jmp     L_C4BD                          ; C480

; ----------------------------------------------------------------------------
L_C483: cmp     #$04                            ; C483
        bne     L_C48A                          ; C485
        jmp     L_C55D                          ; C487

; ----------------------------------------------------------------------------
L_C48A: cmp     #$05                            ; C48A
        bne     L_C491                          ; C48C
        jmp     L_C4B4                          ; C48E

; ----------------------------------------------------------------------------
L_C491: cmp     #$06                            ; C491
        bne     L_C498                          ; C493
        jmp     L_C56D                          ; C495

; ----------------------------------------------------------------------------
L_C498: cmp     #$07                            ; C498
        bne     L_C49F                          ; C49A
        jmp     L_C586                          ; C49C

; ----------------------------------------------------------------------------
L_C49F: cmp     #$08                            ; C49F
        bne     L_C4A6                          ; C4A1
        jmp     L_C2AC                          ; C4A3

; ----------------------------------------------------------------------------
L_C4A6: cmp     #$09                            ; C4A6
        bne     L_C4AD                          ; C4A8
        jmp     L_C29E                          ; C4AA

; ----------------------------------------------------------------------------
L_C4AD: lda     #$00                            ; C4AD
        sta     $C5                             ; C4AF
        jmp     L_C35E                          ; C4B1

; ----------------------------------------------------------------------------
L_C4B4: lda     $C5                             ; C4B4
        ora     #$02                            ; C4B6
        sta     $C5                             ; C4B8
        jmp     L_C35E                          ; C4BA

; ----------------------------------------------------------------------------
L_C4BD: lda     $C5                             ; C4BD
        eor     #$01                            ; C4BF
        and     #$FD                            ; C4C1
        sta     $C5                             ; C4C3
        jmp     L_C35E                          ; C4C5

; ----------------------------------------------------------------------------
L_C4C8: lda     $14                             ; C4C8
        sta     $D7                             ; C4CA
        lda     #$00                            ; C4CC
        sta     $4C                             ; C4CE
        sta     $4D                             ; C4D0
        jsr     L_C78F                          ; C4D2
        lda     #$80                            ; C4D5
        sta     $48                             ; C4D7
        sta     $4A                             ; C4D9
        lda     $14                             ; C4DB
        and     #$08                            ; C4DD
        beq     L_C4ED                          ; C4DF
        lda     $C1                             ; C4E1
        beq     L_C4E9                          ; C4E3
        lda     #$03                            ; C4E5
        bne     L_C4EF                          ; C4E7
L_C4E9: lda     #$1B                            ; C4E9
        bne     L_C4EF                          ; C4EB
L_C4ED: lda     #$03                            ; C4ED
L_C4EF: sta     $46                             ; C4EF
        jsr     L_C5B2                          ; C4F1
        lda     $14                             ; C4F4
        cmp     $D7                             ; C4F6
        bne     L_C502                          ; C4F8
        lda     #$39                            ; C4FA
        jsr     Enqueue_Sound_Command           ; C4FC
        jmp     L_C527                          ; C4FF

; ----------------------------------------------------------------------------
L_C502: jsr     L_D7E3                          ; C502
        jsr     L_CBA9                          ; C505
        lda     $14                             ; C508
        cmp     #$08                            ; C50A
        bcc     L_C522                          ; C50C
        lda     $D7                             ; C50E
        cmp     #$08                            ; C510
        bcc     L_C522                          ; C512
        lda     #$01                            ; C514
        jsr     Enqueue_Sound_Command           ; C516
        jsr     L_F6A7                          ; C519
        jsr     L_CDBA                          ; C51C
        jmp     L_C527                          ; C51F

; ----------------------------------------------------------------------------
L_C522: lda     #$38                            ; C522
        jsr     Enqueue_Sound_Command           ; C524
L_C527: jmp     L_C35E                          ; C527

; ----------------------------------------------------------------------------
L_C52A: jsr     L_DEC2                          ; C52A
        lda     $06F3                           ; C52D
        bne     L_C55A                          ; C530
        lda     #$3D                            ; C532
        jsr     Enqueue_Sound_Command           ; C534
        dec     $DD                             ; C537
        bpl     L_C551                          ; C539
        dec     $037E                           ; C53B
        beq     L_C55A                          ; C53E
        jsr     L_F71C                          ; C540
        bne     L_C55A                          ; C543
        jsr     L_CDBA                          ; C545
        lda     $14                             ; C548
        ora     #$08                            ; C54A
        sta     $14                             ; C54C
        jmp     L_C2FB                          ; C54E

; ----------------------------------------------------------------------------
L_C551: jsr     L_C5FA                          ; C551
        jsr     L_CDBA                          ; C554
        jmp     L_C326                          ; C557

; ----------------------------------------------------------------------------
L_C55A: jmp     L_C29E                          ; C55A

.endmacro

.macro MAC_L_C56D
; ----------------------------------------------------------------------------
L_C56D: jsr     L_DEC2                          ; C56D
        lda     #$00                            ; C570
        sta     $03FB                           ; C572
        jsr     L_D7E3                          ; C575
        lda     #$00                            ; C578
        jsr     L_E61B                          ; C57A
        jsr     L_F273                          ; C57D
        jsr     L_F9D5                          ; C580
        jmp     L_C264                          ; C583

; ----------------------------------------------------------------------------
L_C586: lda     $14                             ; C586
        and     #$07                            ; C588
        asl     a                               ; C58A
        tax                                     ; C58B
        lda     LC5A2,x                         ; C58C
        sta     $49                             ; C58F
        lda     LC5A3,x                         ; C591
        sta     $4B                             ; C594
        lda     #$80                            ; C596
        sta     $48                             ; C598
        sta     $4A                             ; C59A
        jsr     L_C5B2                          ; C59C
        jmp     L_C35E                          ; C59F

; ----------------------------------------------------------------------------
LC5A2:  .byte   $3D                             ; C5A2
LC5A3:  .byte   $5A,$09,$75,$0E,$06,$37,$5D,$18 ; C5A3
        .byte   $1B,$59,$09,$4A,$40,$59,$2A     ; C5AB
.endmacro

.macro MAC_L_C642
; ----------------------------------------------------------------------------
L_C642: lda     $10                             ; C642
        and     #$07                            ; C644
        tax                                     ; C646
        lda     LC651,x                         ; C647
        sta     $75                             ; C64A
        sta     $76                             ; C64C
        sta     $77                             ; C64E
        rts                                     ; C650

; ----------------------------------------------------------------------------
LC651:  .byte   $30,$22,$24,$26,$28,$2A,$30,$26 ; C651
; ----------------------------------------------------------------------------
L_C659: lda     $C5                             ; C659
        and     #$02                            ; C65B
        bne     L_C679                          ; C65D
        ldx     $14                             ; C65F
        lda     LC9F4,x                         ; C661
        jsr     L_EA3A                          ; C664
        lda     #$00                            ; C667
        jsr     L_EB51                          ; C669
        ldy     #$0F                            ; C66C
L_C66E: lda     (L007A),y                       ; C66E
        sta     $0650,y                         ; C670
        dey                                     ; C673
        bpl     L_C66E                          ; C674
        jmp     L_C683                          ; C676

; ----------------------------------------------------------------------------
L_C679: ldx     #$0F                            ; C679
        lda     #$0F                            ; C67B
L_C67D: sta     $0650,x                         ; C67D
        dex                                     ; C680
        bpl     L_C67D                          ; C681
L_C683: ldx     #$0B                            ; C683
        lda     $FF                             ; C685
        and     #$20                            ; C687
        bne     L_C695                          ; C689
L_C68B: lda     LC6CB,x                         ; C68B
        sta     $0660,x                         ; C68E
        dex                                     ; C691
        bpl     L_C68B                          ; C692
        rts                                     ; C694

; ----------------------------------------------------------------------------
L_C695: lda     LC6BF,x                         ; C695
        sta     $0660,x                         ; C698
        dex                                     ; C69B
        bpl     L_C695                          ; C69C
        lda     $C5                             ; C69E
        and     #$02                            ; C6A0
        beq     L_C6BE                          ; C6A2
        lda     $14                             ; C6A4
        and     #$07                            ; C6A6
        sta     $45                             ; C6A8
        asl     a                               ; C6AA
        clc                                     ; C6AB
        adc     $45                             ; C6AC
        clc                                     ; C6AE
        adc     #$02                            ; C6AF
        tay                                     ; C6B1
        ldx     #$03                            ; C6B2
L_C6B4: lda     LC6D7,y                         ; C6B4
        sta     $0668,x                         ; C6B7
        dey                                     ; C6BA
        dex                                     ; C6BB
        bne     L_C6B4                          ; C6BC
L_C6BE: rts                                     ; C6BE

; ----------------------------------------------------------------------------
LC6BF:  .byte   $0F,$30,$15,$0F,$0F,$30,$00,$0F ; C6BF
        .byte   $0F,$3B,$1B,$0F                 ; C6C7
LC6CB:  .byte   $0F,$30,$15,$0F,$0F,$30,$00,$0F ; C6CB
        .byte   $0F,$3B,$1B,$0F                 ; C6D3
LC6D7:  .byte   $05,$15,$25,$0A,$1A,$27,$16,$11 ; C6D7
        .byte   $38,$16,$26,$34,$1A,$2A,$30,$1B ; C6DF
        .byte   $2B,$3B,$16,$26,$34,$07,$00,$10 ; C6E7
; ----------------------------------------------------------------------------
L_C6EF: lda     $C5                             ; C6EF
        and     #$02                            ; C6F1
        bne     L_C6FF                          ; C6F3
        ldx     $14                             ; C6F5
        lda     LC71A,x                         ; C6F7
        sta     $D5                             ; C6FA
        jmp     L_C709                          ; C6FC

; ----------------------------------------------------------------------------
L_C6FF: lda     $14                             ; C6FF
        and     #$07                            ; C701
        tax                                     ; C703
        lda     LC73A,x                         ; C704
        sta     $D5                             ; C707
L_C709: ldx     $14                             ; C709
        lda     LC72A,x                         ; C70B
        sta     $D4                             ; C70E
        lda     $C5                             ; C710
        lsr     a                               ; C712
        bcc     L_C719                          ; C713
        lda     #$07                            ; C715
        sta     $D4                             ; C717
L_C719: rts                                     ; C719

; ----------------------------------------------------------------------------
LC71A:  .byte   $11,$13,$12,$14,$12,$13,$14,$11 ; C71A
        .byte   $08,$09,$0A,$0B,$0C,$0D,$0E,$0F ; C722
LC72A:  .byte   $10,$10,$10,$10,$10,$10,$10,$10 ; C72A
        .byte   $00,$01,$03,$00,$02,$01,$00,$01 ; C732
LC73A:  .byte   $19,$18,$19,$18,$1A,$18,$18,$1B ; C73A
; ----------------------------------------------------------------------------
L_C742: jsr     L_EA03                          ; C742
        lda     $2002                           ; C745
        lda     #$20                            ; C748
        sta     $2006                           ; C74A
        lda     #$00                            ; C74D
        sta     $2006                           ; C74F
        lda     $14                             ; C752
        and     #$07                            ; C754
        tax                                     ; C756
        cmp     #$07                            ; C757
        bne     L_C764                          ; C759
        lda     $03FB                           ; C75B
        bpl     L_C764                          ; C75E
        lda     #$0A                            ; C760
        bne     L_C767                          ; C762
L_C764: lda     LC76A,x                         ; C764
L_C767: jmp     L_E9B8                          ; C767

; ----------------------------------------------------------------------------
LC76A:  .byte   $05,$03,$06,$04,$07,$03,$04,$09 ; C76A
; ----------------------------------------------------------------------------
L_C772: lda     $C5                             ; C772
        and     #$01                            ; C774
        bne     L_C77E                          ; C776
        lda     $14                             ; C778
        and     #$08                            ; C77A
        beq     L_C785                          ; C77C
L_C77E: lda     $FF                             ; C77E
        and     #$DF                            ; C780
        jmp     L_C789                          ; C782

; ----------------------------------------------------------------------------
L_C785: lda     $FF                             ; C785
        ora     #$20                            ; C787
L_C789: sta     $FF                             ; C789
        sta     $2000                           ; C78B
        rts                                     ; C78E

; ----------------------------------------------------------------------------
L_C78F: lda     LDD76                           ; C78F
        sta     L007A                           ; C792
        lda     LDD76+1                         ; C794
        sta     $7B                             ; C797
        ldy     #$00                            ; C799
        ldy     #$05                            ; C79B
L_C79D: lda     (L007A),y                       ; C79D
        sta     L0000,y                         ; C79F
        dey                                     ; C7A2
        bpl     L_C79D                          ; C7A3
        iny                                     ; C7A5
        ldx     #$00                            ; C7A6
L_C7A8: lda     (L0000),y                       ; C7A8
        cmp     $14                             ; C7AA
        bne     L_C7BA                          ; C7AC
        lda     ($02),y                         ; C7AE
        cmp     $49                             ; C7B0
        bne     L_C7BA                          ; C7B2
        lda     ($04),y                         ; C7B4
        cmp     $4B                             ; C7B6
        beq     L_C7C7                          ; C7B8
L_C7BA: iny                                     ; C7BA
        bne     L_C7A8                          ; C7BB
        rts                                     ; C7BD

.endmacro

.macro MAC_L_C7C7
; ----------------------------------------------------------------------------
L_C7C7: tya                                     ; C7C7
        eor     #$01                            ; C7C8
        tay                                     ; C7CA
        lda     (L0000),y                       ; C7CB
        sta     $14                             ; C7CD
        lda     ($02),y                         ; C7CF
        sta     $49                             ; C7D1
        lda     ($04),y                         ; C7D3
        sta     $4B                             ; C7D5
        rts                                     ; C7D7

; ----------------------------------------------------------------------------
L_C7D8: lda     LC7F8                           ; C7D8
        sta     L007A                           ; C7DB
        lda     LC7F8+1                         ; C7DD
        sta     $7B                             ; C7E0
        ldy     #$00                            ; C7E2
        lda     #$00                            ; C7E4
        sta     $3E                             ; C7E6
        sta     $3F                             ; C7E8
        sta     $44                             ; C7EA
        lda     $FF                             ; C7EC
        and     #$20                            ; C7EE
        bne     L_C7F5                          ; C7F0
        jmp     L_C880                          ; C7F2

; ----------------------------------------------------------------------------
L_C7F5: jmp     L_C816                          ; C7F5

; ----------------------------------------------------------------------------
LC7F8:  .addr   LC7FA                           ; C7F8
LC7FA:  .addr   LC7FE                           ; C7FA
        .addr   LC806                           ; C7FC
; ----------------------------------------------------------------------------
LC7FE:  .byte   $10,$80,$01,$74,$00,$40,$10,$5E ; C7FE
LC806:  .byte   $10,$80,$01,$5C,$00,$08,$01,$5D ; C806
        .byte   $00,$38,$00,$5E,$00,$08,$10,$5F ; C80E
.endmacro

.macro MAC_L_C9D6
; ----------------------------------------------------------------------------
L_C9D6: lda     #$00                            ; C9D6
        sta     $56                             ; C9D8
L_C9DA: ldx     $56                             ; C9DA
        lda     $0400,x                         ; C9DC
        beq     L_C9EA                          ; C9DF
        jsr     L_C8DF                          ; C9E1
        jsr     L_D2B9                          ; C9E4
        jsr     L_C928                          ; C9E7
L_C9EA: lda     $56                             ; C9EA
        clc                                     ; C9EC
        adc     #$0E                            ; C9ED
        sta     $56                             ; C9EF
        bcc     L_C9DA                          ; C9F1
        rts                                     ; C9F3

; ----------------------------------------------------------------------------
LC9F4:  .byte   $16,$22,$18,$28,$20,$24,$2A,$26 ; C9F4
        .byte   $00,$02,$04,$06,$08,$10,$12,$14 ; C9FC
LCA04:  .byte   $17,$23,$19,$29,$21,$25,$2B,$27 ; CA04
        .byte   $01,$03,$05,$07,$09,$11,$13,$15 ; CA0C
; ----------------------------------------------------------------------------
L_CA14: lda     $14                             ; CA14
        and     #$0F                            ; CA16
        asl     a                               ; CA18
        tax                                     ; CA19
        lda     LCA2B,x                         ; CA1A
        sta     $49                             ; CA1D
        lda     LCA2C,x                         ; CA1F
        sta     $4B                             ; CA22
        lda     #$80                            ; CA24
        sta     $48                             ; CA26
        sta     $4A                             ; CA28
        rts                                     ; CA2A

; ----------------------------------------------------------------------------
LCA2B:  .byte   $5A                             ; CA2B
LCA2C:  .byte   $16,$39,$36,$19,$55,$1E,$79,$69 ; CA2C
        .byte   $5D,$4E,$79,$39,$14,$59,$15,$18 ; CA34
        .byte   $39,$45,$4B,$55,$07,$06,$0B,$36 ; CA3C
        .byte   $0B,$05,$7B,$05,$39,$39,$07     ; CA44
; ----------------------------------------------------------------------------
L_CA4B: lda     $C5                             ; CA4B
        and     #$0C                            ; CA4D
        beq     L_CA52                          ; CA4F
        rts                                     ; CA51

; ----------------------------------------------------------------------------
L_CA52: lda     $D8                             ; CA52
        and     #$01                            ; CA54
        beq     L_CA73                          ; CA56
        lda     #$00                            ; CA58
        sta     L0000                           ; CA5A
        lda     #$70                            ; CA5C
        sta     $01                             ; CA5E
        lda     #$00                            ; CA60
        sta     $02                             ; CA62
        lda     #$71                            ; CA64
        sta     $03                             ; CA66
        lda     #$00                            ; CA68
        sta     $04                             ; CA6A
        lda     #$72                            ; CA6C
        sta     $05                             ; CA6E
        jmp     L_CA89                          ; CA70

; ----------------------------------------------------------------------------
L_CA73: lda     #$31                            ; CA73
        jsr     L_EA3A                          ; CA75
        lda     $14                             ; CA78
        and     #$0F                            ; CA7A
        jsr     L_EB51                          ; CA7C
        ldy     #$05                            ; CA7F
L_CA81: lda     (L007A),y                       ; CA81
        sta     L0000,y                         ; CA83
        dey                                     ; CA86
        bpl     L_CA81                          ; CA87
L_CA89: ldx     #$10                            ; CA89
L_CA8B: ldy     $8E                             ; CA8B
L_CA8D: lda     (L0000),y                       ; CA8D
        bpl     L_CA99                          ; CA8F
        tya                                     ; CA91
        bne     L_CA95                          ; CA92
        rts                                     ; CA94

; ----------------------------------------------------------------------------
L_CA95: ldy     #$00                            ; CA95
        beq     L_CA8D                          ; CA97
L_CA99: sta     $46                             ; CA99
        sty     $8E                             ; CA9B
        lda     ($02),y                         ; CA9D
        sta     $49                             ; CA9F
        sec                                     ; CAA1
        sbc     $1D                             ; CAA2
        and     #$7F                            ; CAA4
        clc                                     ; CAA6
        adc     #$06                            ; CAA7
        cmp     #$1C                            ; CAA9
        bcs     L_CAC0                          ; CAAB
        lda     ($04),y                         ; CAAD
        sta     $4B                             ; CAAF
        sec                                     ; CAB1
        sbc     $1F                             ; CAB2
        and     #$7F                            ; CAB4
        clc                                     ; CAB6
        adc     #$06                            ; CAB7
        cmp     #$1B                            ; CAB9
        bcs     L_CAC0                          ; CABB
        jmp     L_CAC6                          ; CABD

; ----------------------------------------------------------------------------
L_CAC0: inc     $8E                             ; CAC0
        dex                                     ; CAC2
        bne     L_CA8B                          ; CAC3
        rts                                     ; CAC5

; ----------------------------------------------------------------------------
L_CAC6: lda     $8E                             ; CAC6
        ldy     #$49                            ; CAC8
L_CACA: cmp     $0100,y                         ; CACA
        bne     L_CAD2                          ; CACD
        inc     $8E                             ; CACF
        rts                                     ; CAD1

; ----------------------------------------------------------------------------
L_CAD2: dey                                     ; CAD2
        bpl     L_CACA                          ; CAD3
        ldx     #$70                            ; CAD5
        lda     #$08                            ; CAD7
        sta     $57                             ; CAD9
L_CADB: lda     $0400,x                         ; CADB
        beq     L_CAFF                          ; CADE
        inc     $57                             ; CAE0
        lda     $57                             ; CAE2
        cmp     #$12                            ; CAE4
        beq     L_CAF0                          ; CAE6
        txa                                     ; CAE8
        clc                                     ; CAE9
        adc     #$0E                            ; CAEA
        tax                                     ; CAEC
        jmp     L_CADB                          ; CAED

; ----------------------------------------------------------------------------
L_CAF0: inc     $C6                             ; CAF0
        lda     $C6                             ; CAF2
        and     #$3F                            ; CAF4
        tax                                     ; CAF6
        lda     $8E                             ; CAF7
        sta     $010A,x                         ; CAF9
        inc     $8E                             ; CAFC
        rts                                     ; CAFE

; ----------------------------------------------------------------------------
L_CAFF: stx     $56                             ; CAFF
        ldy     $57                             ; CB01
        ldx     $46                             ; CB03
        lda     $FF                             ; CB05
        and     #$20                            ; CB07
        beq     L_CB11                          ; CB09
        lda     LCB51,x                         ; CB0B
        jmp     L_CB14                          ; CB0E

; ----------------------------------------------------------------------------
L_CB11: lda     LCB7C,x                         ; CB11
L_CB14: sta     $0150,y                         ; CB14
        ldx     $56                             ; CB17
        lda     #$01                            ; CB19
        sta     $0400,x                         ; CB1B
        lda     #$00                            ; CB1E
        sta     $0401,x                         ; CB20
        sta     $0406,x                         ; CB23
        sta     $0407,x                         ; CB26
        sta     $040B,x                         ; CB29
        sta     $040A,x                         ; CB2C
        sta     $0409,x                         ; CB2F
        lda     #$20                            ; CB32
        sta     $040D,x                         ; CB34
        lda     #$80                            ; CB37
        sta     $0402,x                         ; CB39
        sta     $0404,x                         ; CB3C
        lda     $49                             ; CB3F
        sta     $0403,x                         ; CB41
        lda     $4B                             ; CB44
        sta     $0405,x                         ; CB46
        lda     $8E                             ; CB49
        sta     $F8,y                           ; CB4B
        inc     $8E                             ; CB4E
        rts                                     ; CB50

; ----------------------------------------------------------------------------
LCB51:  .byte   $24,$26,$28,$2B,$2E,$30,$32,$35 ; CB51
        .byte   $37,$39,$3B,$3D,$3F,$41,$44,$46 ; CB59
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CB61
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; CB69
        .byte   $5A,$1A,$1B,$1C,$1D,$1E,$1F,$20 ; CB71
        .byte   $21,$22,$68                     ; CB79
LCB7C:  .byte   $54,$56,$58,$5B,$5D,$5F,$62,$64 ; CB7C
        .byte   $66,$68,$6A,$6C,$6E,$70,$72,$74 ; CB84
        .byte   $76,$78,$7A,$4E,$50,$7E,$80,$82 ; CB8C
        .byte   $85,$52,$88,$8A,$8C,$8D,$00,$00 ; CB94
        .byte   $90,$2C,$2D,$30,$31,$2E,$2F,$32 ; CB9C
        .byte   $33,$34,$24,$26,$28             ; CBA4
; ----------------------------------------------------------------------------
L_CBA9: ldx     #$49                            ; CBA9
        lda     #$FF                            ; CBAB
L_CBAD: sta     $0100,x                         ; CBAD
        dex                                     ; CBB0
        bpl     L_CBAD                          ; CBB1
        rts                                     ; CBB3

.endmacro

.macro MAC_L_CE55
; ----------------------------------------------------------------------------
L_CE55: lda     $45                             ; CE55
        pha                                     ; CE57
        lda     $10                             ; CE58
        asl     a                               ; CE5A
        asl     a                               ; CE5B
        sta     $45                             ; CE5C
        ldx     #$0F                            ; CE5E
L_CE60: lda     $45                             ; CE60
        clc                                     ; CE62
        adc     #$10                            ; CE63
        and     #$30                            ; CE65
        sta     $45                             ; CE67
        lda     $0650,x                         ; CE69
        eor     $45                             ; CE6C
        sta     $58,x                           ; CE6E
        dex                                     ; CE70
        bpl     L_CE60                          ; CE71
        pla                                     ; CE73
        sta     $45                             ; CE74
        rts                                     ; CE76

; ----------------------------------------------------------------------------
L_CE77: ldx     #$0F                            ; CE77
L_CE79: lda     $0650,x                         ; CE79
        sta     $58,x                           ; CE7C
        dex                                     ; CE7E
        bpl     L_CE79                          ; CE7F
        rts                                     ; CE81

; ----------------------------------------------------------------------------
L_CE82: jsr     L_E6FA                          ; CE82
        ldx     #$03                            ; CE85
L_CE87: lda     LCE97,x                         ; CE87
        sta     $0650,x                         ; CE8A
        lda     LCE9B,x                         ; CE8D
        sta     $0660,x                         ; CE90
        dex                                     ; CE93
        bpl     L_CE87                          ; CE94
        rts                                     ; CE96

; ----------------------------------------------------------------------------
LCE97:  .byte   $0F,$30,$0F,$0F                 ; CE97
LCE9B:  .byte   $0F,$30,$15,$02,$0F,$30,$30,$30 ; CE9B
; ----------------------------------------------------------------------------
L_CEA3: lda     $0650,x                         ; CEA3
        cmp     #$0F                            ; CEA6
        beq     L_CEB3                          ; CEA8
        sec                                     ; CEAA
        sbc     $45                             ; CEAB
        bcs     L_CEB1                          ; CEAD
        lda     #$0F                            ; CEAF
L_CEB1: sta     $58,x                           ; CEB1
L_CEB3: rts                                     ; CEB3

; ----------------------------------------------------------------------------
L_CEB4: inx                                     ; CEB4
        jsr     L_CEA3                          ; CEB5
        inx                                     ; CEB8
        jsr     L_CEA3                          ; CEB9
        inx                                     ; CEBC
        jsr     L_CEA3                          ; CEBD
        txa                                     ; CEC0
        sec                                     ; CEC1
        sbc     #$03                            ; CEC2
        tax                                     ; CEC4
        rts                                     ; CEC5

; ----------------------------------------------------------------------------
L_CEC6: ldx     $4E                             ; CEC6
        sta     $0500,x                         ; CEC8
        jsr     L_E712                          ; CECB
        lda     $C7                             ; CECE
        and     #$FE                            ; CED0
        sta     $C7                             ; CED2
        lda     $C8                             ; CED4
        and     #$FE                            ; CED6
        sta     $C8                             ; CED8
        jmp     L_E797                          ; CEDA

; ----------------------------------------------------------------------------
L_CEDD: lda     #$00                            ; CEDD
        ldx     $4E                             ; CEDF
        sta     $0500,x                         ; CEE1
        jsr     L_E712                          ; CEE4
        lda     $C7                             ; CEE7
        and     #$FE                            ; CEE9
        sta     $C7                             ; CEEB
        lda     $C8                             ; CEED
        and     #$FE                            ; CEEF
        sta     $C8                             ; CEF1
        lda     LCF00                           ; CEF3
        sta     L007A                           ; CEF6
        lda     LCF00+1                         ; CEF8
        sta     $7B                             ; CEFB
        jmp     L_E797                          ; CEFD

; ----------------------------------------------------------------------------
LCF00:  .addr   LCF02                           ; CF00
; ----------------------------------------------------------------------------
LCF02:  .byte   $22,$01,$01,$01,$01             ; CF02
; ----------------------------------------------------------------------------
L_CF07: jsr     L_D2AB                          ; CF07
        bpl     L_CF0F                          ; CF0A
        jsr     L_CEDD                          ; CF0C
L_CF0F: rts                                     ; CF0F

.endmacro

.macro MAC_L_D02D
; ----------------------------------------------------------------------------
L_D02D: lda     #$00                            ; D02D
        sta     $04                             ; D02F
        lda     L0000                           ; D031
        sec                                     ; D033
        sbc     $02                             ; D034
        ror     $04                             ; D036
        bmi     L_D03F                          ; D038
        lda     $02                             ; D03A
        sec                                     ; D03C
        sbc     L0000                           ; D03D
L_D03F: sta     L0000                           ; D03F
        lda     $01                             ; D041
        sec                                     ; D043
        sbc     $03                             ; D044
        ror     $04                             ; D046
        bmi     L_D04F                          ; D048
        lda     $03                             ; D04A
        sec                                     ; D04C
        sbc     $01                             ; D04D
L_D04F: sta     $01                             ; D04F
        cmp     L0000                           ; D051
        beq     L_D083                          ; D053
        bcs     L_D061                          ; D055
        ldx     $01                             ; D057
        lda     L0000                           ; D059
        sta     $01                             ; D05B
        stx     L0000                           ; D05D
        inc     $04                             ; D05F
L_D061: lda     #$20                            ; D061
        sta     $05                             ; D063
        ldx     #$00                            ; D065
L_D067: asl     L0000                           ; D067
        bcs     L_D071                          ; D069
        lda     L0000                           ; D06B
        cmp     $01                             ; D06D
        bcc     L_D07D                          ; D06F
L_D071: lda     L0000                           ; D071
        sec                                     ; D073
        sbc     $01                             ; D074
        sta     L0000                           ; D076
        txa                                     ; D078
        clc                                     ; D079
        adc     $05                             ; D07A
        tax                                     ; D07C
L_D07D: lsr     $05                             ; D07D
        bne     L_D067                          ; D07F
        beq     L_D085                          ; D081
L_D083: ldx     #$40                            ; D083
L_D085: lda     LD0B4,x                         ; D085
        sta     $4C                             ; D088
        lda     LD0F5,x                         ; D08A
        sta     $4D                             ; D08D
        lda     #$01                            ; D08F
        bit     $04                             ; D091
        beq     L_D09D                          ; D093
        ldx     $4C                             ; D095
        lda     $4D                             ; D097
        sta     $4C                             ; D099
        stx     $4D                             ; D09B
L_D09D: asl     $04                             ; D09D
        bcc     L_D0A8                          ; D09F
        lda     #$00                            ; D0A1
        sec                                     ; D0A3
        sbc     $4D                             ; D0A4
        sta     $4D                             ; D0A6
L_D0A8: asl     $04                             ; D0A8
        bcc     L_D0B3                          ; D0AA
        lda     #$00                            ; D0AC
        sec                                     ; D0AE
        sbc     $4C                             ; D0AF
        sta     $4C                             ; D0B1
L_D0B3: rts                                     ; D0B3

; ----------------------------------------------------------------------------
LD0B4:  .byte   $00,$01,$02,$03,$04,$05,$06,$07 ; D0B4
        .byte   $08,$09,$0A,$0B,$0C,$0D,$0E,$0F ; D0BC
        .byte   $10,$10,$11,$12,$13,$14,$15,$16 ; D0C4
        .byte   $16,$17,$18,$19,$1A,$1A,$1B,$1C ; D0CC
        .byte   $1D,$1D,$1E,$1F,$1F,$20,$21,$21 ; D0D4
        .byte   $22,$23,$23,$24,$24,$25,$25,$26 ; D0DC
        .byte   $26,$27,$27,$28,$28,$29,$29,$2A ; D0E4
        .byte   $2A,$2B,$2B,$2B,$2C,$2C,$2D,$2D ; D0EC
        .byte   $2D                             ; D0F4
LD0F5:  .byte   $40,$40,$40,$40,$40,$40,$40,$40 ; D0F5
        .byte   $40,$3F,$3F,$3F,$3F,$3F,$3F,$3E ; D0FD
        .byte   $3E,$3E,$3E,$3D,$3D,$3D,$3D,$3C ; D105
        .byte   $3C,$3C,$3B,$3B,$3B,$3A,$3A,$3A ; D10D
        .byte   $39,$39,$39,$38,$38,$37,$37,$37 ; D115
        .byte   $36,$36,$36,$35,$35,$34,$34,$34 ; D11D
        .byte   $33,$33,$32,$32,$32,$31,$31,$31 ; D125
        .byte   $30,$30,$2F,$2F,$2F,$2E,$2E,$2E ; D12D
        .byte   $2D                             ; D135
; ----------------------------------------------------------------------------
L_D136: lda     #$10                            ; D136
        bit     $4C                             ; D138
        bmi     L_D13E                          ; D13A
        lda     #$F0                            ; D13C
L_D13E: clc                                     ; D13E
        adc     $4C                             ; D13F
        sta     $4C                             ; D141
        lda     #$10                            ; D143
        bit     $4D                             ; D145
        bmi     L_D150                          ; D147
        lda     #$F0                            ; D149
        clc                                     ; D14B
        adc     $4D                             ; D14C
        sta     $4D                             ; D14E
L_D150: rts                                     ; D150

; ----------------------------------------------------------------------------
L_D151: lda     $0403                           ; D151
        sec                                     ; D154
        sbc     $49                             ; D155
        sta     L0000                           ; D157
        lda     $0405                           ; D159
        sec                                     ; D15C
        sbc     $4B                             ; D15D
        sta     $01                             ; D15F
L_D161: lda     L0000                           ; D161
        sec                                     ; D163
        sbc     $01                             ; D164
        asl     a                               ; D166
        asl     a                               ; D167
        rol     $02                             ; D168
        lda     L0000                           ; D16A
        clc                                     ; D16C
        adc     $01                             ; D16D
        asl     a                               ; D16F
        asl     a                               ; D170
        rol     $02                             ; D171
        lda     $02                             ; D173
        and     #$03                            ; D175
        tax                                     ; D177
        lda     LD17D,x                         ; D178
        tax                                     ; D17B
        rts                                     ; D17C

; ----------------------------------------------------------------------------
LD17D:  .byte   $01,$00,$02,$03                 ; D17D
; ----------------------------------------------------------------------------
L_D181: lda     #$0F                            ; D181
        tax                                     ; D183
L_D184: sta     $58,x                           ; D184
        sta     $0650,x                         ; D186
        dex                                     ; D189
        bpl     L_D184                          ; D18A
        rts                                     ; D18C

.endmacro

.macro MAC_L_D1EF
; ----------------------------------------------------------------------------
L_D1EF: sta     $B7                             ; D1EF
        lda     $15                             ; D1F1
        ora     #$40                            ; D1F3
        sta     $15                             ; D1F5
        rts                                     ; D1F7

; ----------------------------------------------------------------------------
L_D1F8: lda     $0402                           ; D1F8
        cmp     $48                             ; D1FB
        lda     $0403                           ; D1FD
        sec                                     ; D200
        sbc     $49                             ; D201
        jsr     L_EB0C                          ; D203
        sta     $45                             ; D206
        lda     $0404                           ; D208
        cmp     $4A                             ; D20B
        lda     $0405                           ; D20D
        sec                                     ; D210
        sbc     $4B                             ; D211
        jsr     L_EB0C                          ; D213
        cmp     $45                             ; D216
        bcs     L_D21C                          ; D218
        lda     $45                             ; D21A
L_D21C: rts                                     ; D21C

; ----------------------------------------------------------------------------
L_D21D: lda     $F7                             ; D21D
        and     #$0F                            ; D21F
        tax                                     ; D221
        lda     LD228,x                         ; D222
        sta     $79                             ; D225
        rts                                     ; D227

; ----------------------------------------------------------------------------
LD228:  .byte   $00,$03,$07,$00,$05,$04,$06,$05 ; D228
        .byte   $01,$02,$08,$01,$00,$03,$07,$00 ; D230
; ----------------------------------------------------------------------------
L_D238: cmp     #$C0                            ; D238
        bcs     L_D240                          ; D23A
        and     #$08                            ; D23C
        bne     L_D243                          ; D23E
L_D240: lda     #$FF                            ; D240
        rts                                     ; D242

; ----------------------------------------------------------------------------
L_D243: lda     #$00                            ; D243
        rts                                     ; D245

; ----------------------------------------------------------------------------
L_D246: cmp     #$C0                            ; D246
        bcs     L_D250                          ; D248
        and     #$0C                            ; D24A
        cmp     #$08                            ; D24C
        beq     L_D253                          ; D24E
L_D250: lda     #$FF                            ; D250
        rts                                     ; D252

; ----------------------------------------------------------------------------
L_D253: lda     #$00                            ; D253
        rts                                     ; D255

; ----------------------------------------------------------------------------
L_D256: ldx     #$FF                            ; D256
        bit     LE6E5                           ; D258
        beq     L_D270                          ; D25B
        bit     LE6E3                           ; D25D
        beq     L_D26D                          ; D260
        lda     $14                             ; D262
        cmp     #$05                            ; D264
        beq     L_D270                          ; D266
        lda     #$00                            ; D268
        sta     $53                             ; D26A
        tax                                     ; D26C
L_D26D: lda     #$00                            ; D26D
        rts                                     ; D26F

; ----------------------------------------------------------------------------
L_D270: lda     #$FF                            ; D270
        rts                                     ; D272

; ----------------------------------------------------------------------------
L_D273: bit     LE6E5                           ; D273
        beq     L_D280                          ; D276
        bit     LE6E3                           ; D278
        beq     L_D280                          ; D27B
        lda     #$00                            ; D27D
        rts                                     ; D27F

; ----------------------------------------------------------------------------
L_D280: lda     #$FF                            ; D280
        rts                                     ; D282

; ----------------------------------------------------------------------------
L_D283: cmp     #$C0                            ; D283
        bcs     L_D28B                          ; D285
        and     #$20                            ; D287
        bne     L_D28E                          ; D289
L_D28B: lda     #$FF                            ; D28B
        rts                                     ; D28D

; ----------------------------------------------------------------------------
L_D28E: lda     #$00                            ; D28E
        rts                                     ; D290

; ----------------------------------------------------------------------------
L_D291: cmp     #$C0                            ; D291
        bcs     L_D29B                          ; D293
        and     #$3C                            ; D295
        cmp     #$04                            ; D297
        beq     L_D29E                          ; D299
L_D29B: lda     #$FF                            ; D29B
        rts                                     ; D29D

; ----------------------------------------------------------------------------
L_D29E: lda     #$00                            ; D29E
        rts                                     ; D2A0

; ----------------------------------------------------------------------------
L_D2A1: cmp     #$C0                            ; D2A1
        bcs     L_D2A8                          ; D2A3
        lda     #$FF                            ; D2A5
        rts                                     ; D2A7

; ----------------------------------------------------------------------------
L_D2A8: lda     #$00                            ; D2A8
        rts                                     ; D2AA

; ----------------------------------------------------------------------------
L_D2AB: ldx     $4E                             ; D2AB
        lda     $0500,x                         ; D2AD
        rts                                     ; D2B0

; ----------------------------------------------------------------------------
L_D2B1: clc                                     ; D2B1
        adc     $4E                             ; D2B2
        tax                                     ; D2B4
        lda     $0500,x                         ; D2B5
        rts                                     ; D2B8

; ----------------------------------------------------------------------------
L_D2B9: lda     $4B                             ; D2B9
        sec                                     ; D2BB
        sbc     $1F                             ; D2BC
        and     #$0F                            ; D2BE
        sta     $4E                             ; D2C0
        asl     a                               ; D2C2
        asl     a                               ; D2C3
        asl     a                               ; D2C4
        asl     a                               ; D2C5
        clc                                     ; D2C6
        adc     $4E                             ; D2C7
        sta     $4E                             ; D2C9
        lda     $49                             ; D2CB
        sec                                     ; D2CD
        sbc     $1D                             ; D2CE
        and     #$1F                            ; D2D0
        clc                                     ; D2D2
        adc     $4E                             ; D2D3
        clc                                     ; D2D5
        adc     $3A                             ; D2D6
        sta     $4E                             ; D2D8
        rts                                     ; D2DA

; ----------------------------------------------------------------------------
L_D2DB: jsr     L_D2FE                          ; D2DB
L_D2DE: lda     $49                             ; D2DE
        and     #$7F                            ; D2E0
        sta     $49                             ; D2E2
        lda     $48                             ; D2E4
        clc                                     ; D2E6
        adc     $4C                             ; D2E7
        sta     $48                             ; D2E9
        ror     a                               ; D2EB
        eor     $4C                             ; D2EC
        bpl     L_D2FD                          ; D2EE
        lda     $4C                             ; D2F0
        bmi     L_D2F9                          ; D2F2
        inc     $49                             ; D2F4
        inc     $4E                             ; D2F6
        rts                                     ; D2F8

; ----------------------------------------------------------------------------
L_D2F9: dec     $49                             ; D2F9
        dec     $4E                             ; D2FB
L_D2FD: rts                                     ; D2FD

; ----------------------------------------------------------------------------
L_D2FE: lda     $4B                             ; D2FE
        and     #$7F                            ; D300
        sta     $4B                             ; D302
        lda     $4A                             ; D304
        clc                                     ; D306
        adc     $4D                             ; D307
        sta     $4A                             ; D309
        ror     a                               ; D30B
        eor     $4D                             ; D30C
        bpl     L_D323                          ; D30E
        lda     $4D                             ; D310
        bmi     L_D31A                          ; D312
        inc     $4B                             ; D314
        lda     #$11                            ; D316
        bne     L_D31E                          ; D318
L_D31A: dec     $4B                             ; D31A
        lda     #$EF                            ; D31C
L_D31E: clc                                     ; D31E
        adc     $4E                             ; D31F
        sta     $4E                             ; D321
L_D323: rts                                     ; D323

; ----------------------------------------------------------------------------
L_D324: jsr     L_D349                          ; D324
L_D327: lda     #$00                            ; D327
        ldx     $4C                             ; D329
        bpl     L_D32F                          ; D32B
        lda     #$FF                            ; D32D
L_D32F: pha                                     ; D32F
        txa                                     ; D330
        asl     a                               ; D331
        clc                                     ; D332
        adc     $48                             ; D333
        sta     $48                             ; D335
        pla                                     ; D337
        adc     $49                             ; D338
        pha                                     ; D33A
        sec                                     ; D33B
        sbc     $49                             ; D33C
        clc                                     ; D33E
        adc     $4E                             ; D33F
        sta     $4E                             ; D341
        pla                                     ; D343
        and     #$7F                            ; D344
        sta     $49                             ; D346
        rts                                     ; D348

; ----------------------------------------------------------------------------
L_D349: lda     #$00                            ; D349
        ldx     $4D                             ; D34B
        bpl     L_D351                          ; D34D
        lda     #$FF                            ; D34F
L_D351: pha                                     ; D351
        txa                                     ; D352
        asl     a                               ; D353
        clc                                     ; D354
        adc     $4A                             ; D355
        sta     $4A                             ; D357
        pla                                     ; D359
        adc     $4B                             ; D35A
        pha                                     ; D35C
        sec                                     ; D35D
        sbc     $4B                             ; D35E
        sta     $4B                             ; D360
        asl     a                               ; D362
        asl     a                               ; D363
        asl     a                               ; D364
        asl     a                               ; D365
        clc                                     ; D366
        adc     $4B                             ; D367
        clc                                     ; D369
        adc     $4E                             ; D36A
        sta     $4E                             ; D36C
        pla                                     ; D36E
        and     #$7F                            ; D36F
        sta     $4B                             ; D371
        rts                                     ; D373

; ----------------------------------------------------------------------------
L_D374: jsr     L_D3E1                          ; D374
        jmp     L_D37D                          ; D377

; ----------------------------------------------------------------------------
L_D37A: jsr     L_D2DE                          ; D37A
L_D37D: jsr     L_D3A3                          ; D37D
        beq     L_D387                          ; D380
        lda     $42                             ; D382
        sta     $48                             ; D384
        rts                                     ; D386

; ----------------------------------------------------------------------------
L_D387: jsr     L_D394                          ; D387
        beq     L_D393                          ; D38A
        lda     #$00                            ; D38C
        sec                                     ; D38E
        sbc     $42                             ; D38F
        sta     $48                             ; D391
L_D393: rts                                     ; D393

; ----------------------------------------------------------------------------
L_D394: ldx     $4E                             ; D394
        lda     $48                             ; D396
        clc                                     ; D398
        adc     $42                             ; D399
        beq     L_D3AC                          ; D39B
        bcc     L_D3AC                          ; D39D
        inx                                     ; D39F
        jmp     L_D3AC                          ; D3A0

; ----------------------------------------------------------------------------
L_D3A3: ldx     $4E                             ; D3A3
        lda     $48                             ; D3A5
        cmp     $42                             ; D3A7
        bcs     L_D3AC                          ; D3A9
        dex                                     ; D3AB
L_D3AC: lda     $0500,x                         ; D3AC
        bmi     L_D393                          ; D3AF
        lda     $4A                             ; D3B1
        clc                                     ; D3B3
        adc     $43                             ; D3B4
        bcc     L_D3C6                          ; D3B6
        cmp     #$20                            ; D3B8
        bcc     L_D3C6                          ; D3BA
        txa                                     ; D3BC
        clc                                     ; D3BD
        adc     #$11                            ; D3BE
        tay                                     ; D3C0
        lda     $0500,y                         ; D3C1
        bmi     L_D393                          ; D3C4
L_D3C6: lda     $4A                             ; D3C6
        sec                                     ; D3C8
        sbc     $43                             ; D3C9
        bcs     L_D3DB                          ; D3CB
        cmp     #$E0                            ; D3CD
        bcs     L_D3DB                          ; D3CF
        txa                                     ; D3D1
        sec                                     ; D3D2
        sbc     #$11                            ; D3D3
        tay                                     ; D3D5
        lda     $0500,y                         ; D3D6
        bmi     L_D393                          ; D3D9
L_D3DB: lda     #$00                            ; D3DB
        rts                                     ; D3DD

; ----------------------------------------------------------------------------
L_D3DE: jsr     L_D2FE                          ; D3DE
L_D3E1: jsr     L_D40B                          ; D3E1
        beq     L_D3EB                          ; D3E4
        lda     $43                             ; D3E6
        sta     $4A                             ; D3E8
        rts                                     ; D3EA

; ----------------------------------------------------------------------------
L_D3EB: jsr     L_D3F8                          ; D3EB
        beq     L_D442                          ; D3EE
        lda     #$00                            ; D3F0
        sec                                     ; D3F2
        sbc     $43                             ; D3F3
        sta     $4A                             ; D3F5
        rts                                     ; D3F7

; ----------------------------------------------------------------------------
L_D3F8: ldx     $4E                             ; D3F8
        lda     $4A                             ; D3FA
        clc                                     ; D3FC
        adc     $43                             ; D3FD
        beq     L_D418                          ; D3FF
        bcc     L_D418                          ; D401
        txa                                     ; D403
        clc                                     ; D404
        adc     #$11                            ; D405
        tax                                     ; D407
        jmp     L_D418                          ; D408

; ----------------------------------------------------------------------------
L_D40B: ldx     $4E                             ; D40B
        lda     $4A                             ; D40D
        cmp     $43                             ; D40F
        bcs     L_D418                          ; D411
        txa                                     ; D413
        sec                                     ; D414
        sbc     #$11                            ; D415
        tax                                     ; D417
L_D418: lda     $0500,x                         ; D418
        bmi     L_D442                          ; D41B
        lda     $48                             ; D41D
        clc                                     ; D41F
        adc     $42                             ; D420
        bcc     L_D42F                          ; D422
        cmp     #$20                            ; D424
        bcc     L_D42F                          ; D426
        inx                                     ; D428
        lda     $0500,x                         ; D429
        bmi     L_D442                          ; D42C
        dex                                     ; D42E
L_D42F: lda     $48                             ; D42F
        sec                                     ; D431
        sbc     $42                             ; D432
        bcs     L_D440                          ; D434
        cmp     #$E0                            ; D436
        bcs     L_D440                          ; D438
        dex                                     ; D43A
        lda     $0500,x                         ; D43B
        bmi     L_D442                          ; D43E
L_D440: lda     #$00                            ; D440
L_D442: rts                                     ; D442

; ----------------------------------------------------------------------------
L_D443: jsr     L_D467                          ; D443
        beq     L_D44E                          ; D446
        jsr     L_D452                          ; D448
        lda     #$FF                            ; D44B
        rts                                     ; D44D

; ----------------------------------------------------------------------------
L_D44E: jsr     L_D452                          ; D44E
        rts                                     ; D451

; ----------------------------------------------------------------------------
L_D452: jsr     L_D47C                          ; D452
        lda     $4C                             ; D455
        beq     L_D48C                          ; D457
        bmi     L_D461                          ; D459
        jsr     L_D48F                          ; D45B
        jmp     L_D48C                          ; D45E

; ----------------------------------------------------------------------------
L_D461: jsr     L_D4BC                          ; D461
        jmp     L_D48C                          ; D464

; ----------------------------------------------------------------------------
L_D467: jsr     L_D47C                          ; D467
        lda     $4D                             ; D46A
        beq     L_D48C                          ; D46C
        bmi     L_D476                          ; D46E
        jsr     L_D4E6                          ; D470
        jmp     L_D48C                          ; D473

; ----------------------------------------------------------------------------
L_D476: jsr     L_D510                          ; D476
        jmp     L_D48C                          ; D479

; ----------------------------------------------------------------------------
L_D47C: lda     #$00                            ; D47C
        sta     $0F                             ; D47E
        jsr     L_D5F9                          ; D480
        lda     $49                             ; D483
        sta     $08                             ; D485
        lda     $4B                             ; D487
        sta     $09                             ; D489
        rts                                     ; D48B

; ----------------------------------------------------------------------------
L_D48C: lda     $0F                             ; D48C
        rts                                     ; D48E

; ----------------------------------------------------------------------------
L_D48F: lda     $49                             ; D48F
        pha                                     ; D491
        lda     $48                             ; D492
        pha                                     ; D494
        lda     $4B                             ; D495
        pha                                     ; D497
        lda     $4A                             ; D498
        pha                                     ; D49A
        jsr     L_D5B8                          ; D49B
        jsr     L_D574                          ; D49E
        bne     L_D4A6                          ; D4A1
        jmp     L_D53A                          ; D4A3

; ----------------------------------------------------------------------------
L_D4A6: pla                                     ; D4A6
        sta     $4A                             ; D4A7
        pla                                     ; D4A9
        sta     $4B                             ; D4AA
        pla                                     ; D4AC
        sta     $48                             ; D4AD
        pla                                     ; D4AF
        sta     $49                             ; D4B0
        lda     $0A                             ; D4B2
        eor     #$FF                            ; D4B4
        clc                                     ; D4B6
        adc     #$01                            ; D4B7
        sta     $48                             ; D4B9
        rts                                     ; D4BB

; ----------------------------------------------------------------------------
L_D4BC: lda     $49                             ; D4BC
        pha                                     ; D4BE
        lda     $48                             ; D4BF
        pha                                     ; D4C1
        lda     $4B                             ; D4C2
        pha                                     ; D4C4
        lda     $4A                             ; D4C5
        pha                                     ; D4C7
        jsr     L_D5AA                          ; D4C8
        jsr     L_D574                          ; D4CB
        beq     L_D53A                          ; D4CE
        pla                                     ; D4D0
        sta     $4A                             ; D4D1
        pla                                     ; D4D3
        sta     $4B                             ; D4D4
        pla                                     ; D4D6
        sta     $48                             ; D4D7
        pla                                     ; D4D9
        sta     $49                             ; D4DA
        lda     $0A                             ; D4DC
        sta     $48                             ; D4DE
        bne     L_D4E5                          ; D4E0
        jsr     L_D679                          ; D4E2
L_D4E5: rts                                     ; D4E5

; ----------------------------------------------------------------------------
L_D4E6: lda     $49                             ; D4E6
        pha                                     ; D4E8
        lda     $48                             ; D4E9
        pha                                     ; D4EB
        lda     $4B                             ; D4EC
        pha                                     ; D4EE
        lda     $4A                             ; D4EF
        pha                                     ; D4F1
        jsr     L_D5DA                          ; D4F2
        jsr     L_D547                          ; D4F5
        beq     L_D53A                          ; D4F8
        pla                                     ; D4FA
        sta     $4A                             ; D4FB
        pla                                     ; D4FD
        sta     $4B                             ; D4FE
        pla                                     ; D500
        sta     $48                             ; D501
        pla                                     ; D503
        sta     $49                             ; D504
        lda     $0C                             ; D506
        eor     #$FF                            ; D508
        clc                                     ; D50A
        adc     #$01                            ; D50B
        sta     $4A                             ; D50D
        rts                                     ; D50F

; ----------------------------------------------------------------------------
L_D510: lda     $49                             ; D510
        pha                                     ; D512
        lda     $48                             ; D513
        pha                                     ; D515
        lda     $4B                             ; D516
        pha                                     ; D518
        lda     $4A                             ; D519
        pha                                     ; D51B
        jsr     L_D5CC                          ; D51C
        jsr     L_D547                          ; D51F
        beq     L_D53A                          ; D522
        pla                                     ; D524
        sta     $4A                             ; D525
        pla                                     ; D527
        sta     $4B                             ; D528
        pla                                     ; D52A
        sta     $48                             ; D52B
        pla                                     ; D52D
        sta     $49                             ; D52E
        lda     $0C                             ; D530
        sta     $4A                             ; D532
        bne     L_D539                          ; D534
        jsr     L_D683                          ; D536
L_D539: rts                                     ; D539

; ----------------------------------------------------------------------------
L_D53A: pla                                     ; D53A
        sta     $4A                             ; D53B
        pla                                     ; D53D
        sta     $4B                             ; D53E
        pla                                     ; D540
        sta     $48                             ; D541
        pla                                     ; D543
        sta     $49                             ; D544
        rts                                     ; D546

; ----------------------------------------------------------------------------
L_D547: lda     $49                             ; D547
        pha                                     ; D549
        lda     $48                             ; D54A
        pha                                     ; D54C
        jsr     L_D5B8                          ; D54D
        lda     $49                             ; D550
        sta     $0E                             ; D552
        pla                                     ; D554
        sta     $48                             ; D555
        pla                                     ; D557
        sta     $49                             ; D558
        jsr     L_D5AA                          ; D55A
        jsr     L_D5EE                          ; D55D
L_D560: lda     $0500,x                         ; D560
        bmi     L_D5A5                          ; D563
        inx                                     ; D565
        lda     $49                             ; D566
        cmp     $0E                             ; D568
        beq     L_D571                          ; D56A
        inc     $49                             ; D56C
        jmp     L_D560                          ; D56E

; ----------------------------------------------------------------------------
L_D571: lda     #$00                            ; D571
        rts                                     ; D573

; ----------------------------------------------------------------------------
L_D574: lda     $4B                             ; D574
        pha                                     ; D576
        lda     $4A                             ; D577
        pha                                     ; D579
        jsr     L_D5DA                          ; D57A
        lda     $4B                             ; D57D
        sta     $0E                             ; D57F
        pla                                     ; D581
        sta     $4A                             ; D582
        pla                                     ; D584
        sta     $4B                             ; D585
        jsr     L_D5CC                          ; D587
        jsr     L_D5EE                          ; D58A
L_D58D: lda     $0500,x                         ; D58D
        bmi     L_D5A5                          ; D590
        txa                                     ; D592
        clc                                     ; D593
        adc     #$11                            ; D594
        tax                                     ; D596
        lda     $4B                             ; D597
        cmp     $0E                             ; D599
        beq     L_D5A2                          ; D59B
        inc     $4B                             ; D59D
        jmp     L_D58D                          ; D59F

; ----------------------------------------------------------------------------
L_D5A2: lda     #$00                            ; D5A2
        rts                                     ; D5A4

; ----------------------------------------------------------------------------
L_D5A5: lda     #$FF                            ; D5A5
        sta     $0F                             ; D5A7
        rts                                     ; D5A9

; ----------------------------------------------------------------------------
L_D5AA: lda     $48                             ; D5AA
        sec                                     ; D5AC
        sbc     $0A                             ; D5AD
        sta     $48                             ; D5AF
        lda     $49                             ; D5B1
        sbc     $0B                             ; D5B3
        sta     $49                             ; D5B5
        rts                                     ; D5B7

; ----------------------------------------------------------------------------
L_D5B8: lda     $48                             ; D5B8
        clc                                     ; D5BA
        adc     $0A                             ; D5BB
        sta     $48                             ; D5BD
        lda     $49                             ; D5BF
        adc     $0B                             ; D5C1
        sta     $49                             ; D5C3
        lda     $48                             ; D5C5
        bne     L_D5CB                          ; D5C7
        dec     $49                             ; D5C9
L_D5CB: rts                                     ; D5CB

; ----------------------------------------------------------------------------
L_D5CC: lda     $4A                             ; D5CC
        sec                                     ; D5CE
        sbc     $0C                             ; D5CF
        sta     $4A                             ; D5D1
        lda     $4B                             ; D5D3
        sbc     $0D                             ; D5D5
        sta     $4B                             ; D5D7
        rts                                     ; D5D9

; ----------------------------------------------------------------------------
L_D5DA: lda     $4A                             ; D5DA
        clc                                     ; D5DC
        adc     $0C                             ; D5DD
        sta     $4A                             ; D5DF
        lda     $4B                             ; D5E1
        adc     $0D                             ; D5E3
        sta     $4B                             ; D5E5
        lda     $4A                             ; D5E7
        bne     L_D5ED                          ; D5E9
        dec     $4B                             ; D5EB
L_D5ED: rts                                     ; D5ED

; ----------------------------------------------------------------------------
L_D5EE: lda     $4E                             ; D5EE
        pha                                     ; D5F0
        jsr     L_D2B9                          ; D5F1
        tax                                     ; D5F4
        pla                                     ; D5F5
        sta     $4E                             ; D5F6
        rts                                     ; D5F8

; ----------------------------------------------------------------------------
L_D5F9: txa                                     ; D5F9
        lsr     a                               ; D5FA
        ror     $0A                             ; D5FB
        lsr     a                               ; D5FD
        ror     $0A                             ; D5FE
        and     #$3F                            ; D600
        sta     $0B                             ; D602
        lda     $0A                             ; D604
        and     #$C0                            ; D606
        sta     $0A                             ; D608
        tya                                     ; D60A
        lsr     a                               ; D60B
        ror     $0C                             ; D60C
        lsr     a                               ; D60E
        ror     $0C                             ; D60F
        and     #$3F                            ; D611
        sta     $0D                             ; D613
        lda     $0C                             ; D615
        and     #$C0                            ; D617
        sta     $0C                             ; D619
        rts                                     ; D61B

; ----------------------------------------------------------------------------
L_D61C: jsr     L_D635                          ; D61C
        beq     L_D627                          ; D61F
        jsr     L_D627                          ; D621
        lda     #$FF                            ; D624
        rts                                     ; D626

; ----------------------------------------------------------------------------
L_D627: jsr     L_D37A                          ; D627
        beq     L_D634                          ; D62A
        lda     #$00                            ; D62C
        sec                                     ; D62E
        sec                                     ; D62F
        sbc     $4C                             ; D630
        sta     $4C                             ; D632
L_D634: rts                                     ; D634

; ----------------------------------------------------------------------------
L_D635: jsr     L_D3DE                          ; D635
        beq     L_D642                          ; D638
        lda     #$00                            ; D63A
        sec                                     ; D63C
        sec                                     ; D63D
        sbc     $4D                             ; D63E
        sta     $4D                             ; D640
L_D642: rts                                     ; D642

; ----------------------------------------------------------------------------
L_D643: ldx     $47                             ; D643
        lda     $49                             ; D645
        clc                                     ; D647
        adc     LD65E,x                         ; D648
        sta     $49                             ; D64B
        lda     $4B                             ; D64D
        clc                                     ; D64F
        adc     LD667,x                         ; D650
        sta     $4B                             ; D653
        lda     $4E                             ; D655
        clc                                     ; D657
        adc     LD670,x                         ; D658
        sta     $4E                             ; D65B
        rts                                     ; D65D

; ----------------------------------------------------------------------------
LD65E:  .byte   $00,$00,$01,$01,$01,$00,$FF,$FF ; D65E
        .byte   $FF                             ; D666
LD667:  .byte   $00,$FF,$FF,$00,$01,$01,$01,$00 ; D667
        .byte   $FF                             ; D66F
LD670:  .byte   $00,$EF,$F0,$01,$12,$11,$10,$FF ; D670
        .byte   $EE                             ; D678
; ----------------------------------------------------------------------------
L_D679: inc     $49                             ; D679
        inc     $4E                             ; D67B
        rts                                     ; D67D

; ----------------------------------------------------------------------------
L_D67E: dec     $49                             ; D67E
        dec     $4E                             ; D680
        rts                                     ; D682

; ----------------------------------------------------------------------------
L_D683: inc     $4B                             ; D683
        lda     $4E                             ; D685
        clc                                     ; D687
        adc     #$11                            ; D688
        sta     $4E                             ; D68A
        rts                                     ; D68C

; ----------------------------------------------------------------------------
L_D68D: dec     $4B                             ; D68D
        lda     $4E                             ; D68F
        sec                                     ; D691
        sbc     #$11                            ; D692
        sta     $4E                             ; D694
        rts                                     ; D696

; ----------------------------------------------------------------------------
L_D697: jsr     L_D6CD                          ; D697
        txa                                     ; D69A
        pha                                     ; D69B
        lda     $45                             ; D69C
        cmp     #$7F                            ; D69E
        beq     L_D6C0                          ; D6A0
        lda     $53                             ; D6A2
        sec                                     ; D6A4
        sbc     $45                             ; D6A5
        bcs     L_D6AB                          ; D6A7
        lda     #$00                            ; D6A9
L_D6AB: sta     $53                             ; D6AB
        bcc     L_D6B7                          ; D6AD
        lda     #$36                            ; D6AF
        jsr     Enqueue_Sound_Command           ; D6B1
        jmp     L_D6BC                          ; D6B4

; ----------------------------------------------------------------------------
L_D6B7: lda     #$1D                            ; D6B7
        jsr     Enqueue_Sound_Command           ; D6B9
L_D6BC: lda     #$08                            ; D6BC
        sta     $4F                             ; D6BE
L_D6C0: pla                                     ; D6C0
        tax                                     ; D6C1
        lda     $44                             ; D6C2
        beq     L_D6CA                          ; D6C4
        ora     #$80                            ; D6C6
        sta     $7E,x                           ; D6C8
L_D6CA: lda     #$00                            ; D6CA
        rts                                     ; D6CC

; ----------------------------------------------------------------------------
L_D6CD: sta     $44                             ; D6CD
        lda     $40                             ; D6CF
        lsr     a                               ; D6D1
        sta     L0000                           ; D6D2
        lda     $3E                             ; D6D4
        sec                                     ; D6D6
        sbc     L0000                           ; D6D7
        sta     L0000                           ; D6D9
        lda     $41                             ; D6DB
        lsr     a                               ; D6DD
        sta     $01                             ; D6DE
        lda     $3F                             ; D6E0
        sec                                     ; D6E2
        sbc     $01                             ; D6E3
        sta     $01                             ; D6E5
        ldx     #$0F                            ; D6E7
L_D6E9: lda     $7E,x                           ; D6E9
        bmi     L_D707                          ; D6EB
        beq     L_D707                          ; D6ED
        sta     $45                             ; D6EF
        lda     $7C,x                           ; D6F1
        sec                                     ; D6F3
        sbc     L0000                           ; D6F4
        cmp     $40                             ; D6F6
        beq     L_D6FC                          ; D6F8
        bcs     L_D707                          ; D6FA
L_D6FC: lda     $7D,x                           ; D6FC
        sec                                     ; D6FE
        sbc     $01                             ; D6FF
        cmp     $41                             ; D701
        beq     L_D710                          ; D703
        bcc     L_D710                          ; D705
L_D707: dex                                     ; D707
        dex                                     ; D708
        dex                                     ; D709
        bpl     L_D6E9                          ; D70A
        pla                                     ; D70C
        pla                                     ; D70D
        lda     #$FF                            ; D70E
L_D710: rts                                     ; D710

; ----------------------------------------------------------------------------
L_D711: jsr     L_D6CD                          ; D711
        lda     $44                             ; D714
        beq     L_D71E                          ; D716
        ora     #$80                            ; D718
        sta     $7E,x                           ; D71A
        lda     #$00                            ; D71C
L_D71E: rts                                     ; D71E

; ----------------------------------------------------------------------------
L_D71F: sta     $44                             ; D71F
        lda     $40                             ; D721
        lsr     a                               ; D723
        sta     L0000                           ; D724
        lda     $3E                             ; D726
        sec                                     ; D728
        sbc     L0000                           ; D729
        sta     L0000                           ; D72B
        lda     $41                             ; D72D
        lsr     a                               ; D72F
        sta     $01                             ; D730
        lda     $3F                             ; D732
        sec                                     ; D734
        sbc     $01                             ; D735
        sta     $01                             ; D737
        lda     $7E                             ; D739
        bmi     L_D760                          ; D73B
        beq     L_D760                          ; D73D
        sta     $45                             ; D73F
        lda     $7C                             ; D741
        sec                                     ; D743
        sbc     L0000                           ; D744
        cmp     $40                             ; D746
        beq     L_D74C                          ; D748
        bcs     L_D760                          ; D74A
L_D74C: lda     $7D                             ; D74C
        sec                                     ; D74E
        sbc     $01                             ; D74F
        cmp     $41                             ; D751
        beq     L_D757                          ; D753
        bcs     L_D760                          ; D755
L_D757: lda     $44                             ; D757
        ora     #$80                            ; D759
        sta     $7E                             ; D75B
        lda     #$00                            ; D75D
        rts                                     ; D75F

; ----------------------------------------------------------------------------
L_D760: lda     #$FF                            ; D760
        rts                                     ; D762

; ----------------------------------------------------------------------------
L_D763: jsr     L_D697                          ; D763
        bne     L_D76F                          ; D766
        lda     #$0C                            ; D768
        jsr     Enqueue_Sound_Command           ; D76A
        lda     #$00                            ; D76D
L_D76F: rts                                     ; D76F

; ----------------------------------------------------------------------------
L_D770: jsr     L_D711                          ; D770
        bne     L_D77C                          ; D773
        lda     #$0D                            ; D775
        jsr     Enqueue_Sound_Command           ; D777
        lda     #$00                            ; D77A
L_D77C: rts                                     ; D77C

; ----------------------------------------------------------------------------
L_D77D: lda     $4F                             ; D77D
        beq     L_D78F                          ; D77F
        lda     $44                             ; D781
        and     #$FC                            ; D783
        sta     $44                             ; D785
        lda     $10                             ; D787
        and     #$03                            ; D789
        ora     $44                             ; D78B
        sta     $44                             ; D78D
L_D78F: rts                                     ; D78F

; ----------------------------------------------------------------------------
L_D790: jsr     L_D798                          ; D790
        lda     #$00                            ; D793
        sta     $7E,x                           ; D795
        rts                                     ; D797

; ----------------------------------------------------------------------------
L_D798: lda     $57                             ; D798
        asl     a                               ; D79A
        clc                                     ; D79B
        adc     $57                             ; D79C
        tax                                     ; D79E
        rts                                     ; D79F

; ----------------------------------------------------------------------------
L_D7A0: pha                                     ; D7A0
        jsr     L_D798                          ; D7A1
        lda     $7E,x                           ; D7A4
        tay                                     ; D7A6
        lda     $3E                             ; D7A7
        sta     $7C,x                           ; D7A9
        lda     $3F                             ; D7AB
        sta     $7D,x                           ; D7AD
        pla                                     ; D7AF
        and     #$7F                            ; D7B0
        sta     $7E,x                           ; D7B2
        tya                                     ; D7B4
        rts                                     ; D7B5

; ----------------------------------------------------------------------------
L_D7B6: ldx     #$11                            ; D7B6
        lda     #$00                            ; D7B8
L_D7BA: sta     $7C,x                           ; D7BA
        dex                                     ; D7BC
        bpl     L_D7BA                          ; D7BD
        rts                                     ; D7BF

; ----------------------------------------------------------------------------
L_D7C0: ldy     #$01                            ; D7C0
L_D7C2: inx                                     ; D7C2
        lda     $46,y                           ; D7C3
        sta     $0400,x                         ; D7C6
        iny                                     ; D7C9
        cpy     #$0E                            ; D7CA
        bne     L_D7C2                          ; D7CC
        rts                                     ; D7CE

; ----------------------------------------------------------------------------
L_D7CF: lda     $0400,x                         ; D7CF
        beq     L_D7E0                          ; D7D2
        cpx     L0000                           ; D7D4
        beq     L_D7E2                          ; D7D6
        txa                                     ; D7D8
        clc                                     ; D7D9
        adc     #$0E                            ; D7DA
        tax                                     ; D7DC
        jmp     L_D7CF                          ; D7DD

; ----------------------------------------------------------------------------
L_D7E0: lda     #$FF                            ; D7E0
L_D7E2: rts                                     ; D7E2

; ----------------------------------------------------------------------------
L_D7E3: lda     #$00                            ; D7E3
        ldx     #$0E                            ; D7E5
L_D7E7: sta     $0400,x                         ; D7E7
        inx                                     ; D7EA
        bne     L_D7E7                          ; D7EB
        rts                                     ; D7ED

; ----------------------------------------------------------------------------
L_D7EE: lda     #$00                            ; D7EE
        ldx     #$0D                            ; D7F0
L_D7F2: sta     $46,x                           ; D7F2
        dex                                     ; D7F4
        bne     L_D7F2                          ; D7F5
        rts                                     ; D7F7

.endmacro

.macro MAC_L_D883
; ----------------------------------------------------------------------------
L_D883: lda     #$00                            ; D883
        sta     $93                             ; D885
        lda     $1C                             ; D887
        sta     $C9                             ; D889
        asl     a                               ; D88B
        lda     $1D                             ; D88C
        sta     $CA                             ; D88E
        rol     a                               ; D890
        cmp     $24                             ; D891
        beq     L_D8BC                          ; D893
        bpl     L_D8A6                          ; D895
        dec     $22                             ; D897
        dec     $24                             ; D899
        lda     $22                             ; D89B
        lsr     a                               ; D89D
        bcc     L_D8A2                          ; D89E
        dec     $26                             ; D8A0
L_D8A2: ldx     #$03                            ; D8A2
        bne     L_D8B3                          ; D8A4
L_D8A6: inc     $22                             ; D8A6
        inc     $24                             ; D8A8
        lda     $22                             ; D8AA
        lsr     a                               ; D8AC
        bcs     L_D8B1                          ; D8AD
        inc     $26                             ; D8AF
L_D8B1: ldx     #$01                            ; D8B1
L_D8B3: jsr     L_D908                          ; D8B3
        jsr     L_DAC4                          ; D8B6
        jmp     L_DBE4                          ; D8B9

; ----------------------------------------------------------------------------
L_D8BC: lda     $1E                             ; D8BC
        sta     $CB                             ; D8BE
        clc                                     ; D8C0
        adc     #$40                            ; D8C1
        sta     L0000                           ; D8C3
        lda     $1F                             ; D8C5
        sta     $CC                             ; D8C7
        adc     #$00                            ; D8C9
        sta     $01                             ; D8CB
        asl     L0000                           ; D8CD
        lda     $01                             ; D8CF
        rol     a                               ; D8D1
        cmp     $25                             ; D8D2
        beq     L_D907                          ; D8D4
        bpl     L_D8EC                          ; D8D6
        dec     $23                             ; D8D8
        dec     $25                             ; D8DA
        lda     $23                             ; D8DC
        lsr     a                               ; D8DE
        bcc     L_D8E8                          ; D8DF
        lda     $26                             ; D8E1
        sec                                     ; D8E3
        sbc     #$11                            ; D8E4
        sta     $26                             ; D8E6
L_D8E8: ldx     #$00                            ; D8E8
        beq     L_D8FE                          ; D8EA
L_D8EC: inc     $23                             ; D8EC
        inc     $25                             ; D8EE
        lda     $23                             ; D8F0
        lsr     a                               ; D8F2
        bcs     L_D8FC                          ; D8F3
        lda     $26                             ; D8F5
        clc                                     ; D8F7
        adc     #$11                            ; D8F8
        sta     $26                             ; D8FA
L_D8FC: ldx     #$02                            ; D8FC
L_D8FE: jsr     L_D908                          ; D8FE
        jsr     L_DA15                          ; D901
        jmp     L_DB98                          ; D904

; ----------------------------------------------------------------------------
L_D907: rts                                     ; D907

.endmacro

.macro MAC_L_DCFC
; ----------------------------------------------------------------------------
L_DCFC: lda     #$01                            ; DCFC
        sta     $39                             ; DCFE
        lda     $1C                             ; DD00
        asl     a                               ; DD02
        lda     $1D                             ; DD03
        rol     a                               ; DD05
        sta     $24                             ; DD06
        sta     $08                             ; DD08
        and     #$01                            ; DD0A
        sta     $22                             ; DD0C
        sta     $04                             ; DD0E
        lda     $1E                             ; DD10
        asl     a                               ; DD12
        lda     $1F                             ; DD13
        rol     a                               ; DD15
        sta     $25                             ; DD16
        sta     $09                             ; DD18
        and     #$01                            ; DD1A
        sta     $23                             ; DD1C
        sta     $05                             ; DD1E
        lda     #$00                            ; DD20
        sta     $26                             ; DD22
        sta     $3A                             ; DD24
        sta     $0C                             ; DD26
        sta     $F1                             ; DD28
        lda     $FF                             ; DD2A
        and     #$FE                            ; DD2C
        sta     $FF                             ; DD2E
        jsr     L_D18D                          ; DD30
        lda     $20                             ; DD33
        and     #$0F                            ; DD35
        sta     $FD                             ; DD37
        lda     $21                             ; DD39
        and     #$0F                            ; DD3B
        sta     $FC                             ; DD3D
        lda     #$1E                            ; DD3F
L_DD41: pha                                     ; DD41
        jsr     L_D95E                          ; DD42
        jsr     L_DA15                          ; DD45
        pla                                     ; DD48
        pha                                     ; DD49
        cmp     #$01                            ; DD4A
        beq     L_DD51                          ; DD4C
        jsr     L_DB98                          ; DD4E
L_DD51: jsr     L_F1CA                          ; DD51
        inc     $05                             ; DD54
        inc     $09                             ; DD56
        lda     $05                             ; DD58
        cmp     #$1E                            ; DD5A
        bcc     L_DD62                          ; DD5C
        lda     #$00                            ; DD5E
        sta     $05                             ; DD60
L_DD62: lda     #$01                            ; DD62
        bit     $05                             ; DD64
        bne     L_DD6F                          ; DD66
        lda     $0C                             ; DD68
        clc                                     ; DD6A
        adc     #$11                            ; DD6B
        sta     $0C                             ; DD6D
L_DD6F: pla                                     ; DD6F
        sec                                     ; DD70
        sbc     #$01                            ; DD71
        bne     L_DD41                          ; DD73
        rts                                     ; DD75

; ----------------------------------------------------------------------------
LDD76:  .addr   LDD78                           ; DD76
LDD78:  .addr   LDD7E                           ; DD78
        .addr   LDDEA                           ; DD7A
        .addr   LDE56                           ; DD7C
; ----------------------------------------------------------------------------
LDD7E:  .byte   $08,$09,$08,$0B,$09,$0A,$09,$0E ; DD7E
        .byte   $0A,$0F,$0B,$0C,$0C,$0D,$08,$00 ; DD86
        .byte   $08,$00,$08,$00,$08,$00,$08,$00 ; DD8E
        .byte   $09,$01,$09,$01,$09,$01,$09,$01 ; DD96
        .byte   $0A,$02,$0A,$02,$0A,$02,$0A,$02 ; DD9E
        .byte   $0A,$02,$0B,$03,$0B,$03,$0B,$03 ; DDA6
        .byte   $0B,$03,$0C,$04,$0C,$04,$0C,$04 ; DDAE
        .byte   $0C,$04,$0C,$04,$0D,$05,$0D,$05 ; DDB6
        .byte   $0D,$05,$0D,$05,$0E,$06,$0E,$06 ; DDBE
        .byte   $0E,$06,$0E,$06,$0E,$06,$0E,$0E ; DDC6
        .byte   $0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E ; DDCE
        .byte   $0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E ; DDD6
        .byte   $0E,$0E,$0F,$07,$0F,$07,$0F,$07 ; DDDE
        .byte   $0F,$07,$0F,$07                 ; DDE6
LDDEA:  .byte   $09,$45,$09,$06,$16,$55,$1E,$05 ; DDEA
        .byte   $41,$39,$7A,$36,$6E,$05,$1A,$3D ; DDF2
        .byte   $3E,$36,$7A,$39,$26,$06,$16,$29 ; DDFA
        .byte   $7E,$06,$46,$09,$5A,$06,$26,$59 ; DE02
        .byte   $3A,$19,$28,$16,$0E,$09,$16,$26 ; DE0A
        .byte   $24,$59,$04,$0A,$7C,$0A,$7C,$7A ; DE12
        .byte   $1C,$3A,$28,$09,$14,$79,$5E,$39 ; DE1A
        .byte   $54,$69,$24,$19,$14,$06,$44,$4A ; DE22
        .byte   $34,$0A,$7E,$56,$2E,$06,$06,$6A ; DE2A
        .byte   $3E,$3A,$1E,$0E,$7E,$46,$4E,$04 ; DE32
        .byte   $2E,$34,$6E,$44,$7E,$04,$6E,$04 ; DE3A
        .byte   $3E,$24,$04,$3E,$7E,$44,$34,$3E ; DE42
        .byte   $7E,$44,$7A,$16,$7A,$36,$7E,$16 ; DE4A
        .byte   $0E,$7A,$0E,$59                 ; DE52
LDE56:  .byte   $7D,$4B,$2D,$0B,$5D,$07,$6D,$39 ; DE56
        .byte   $17,$07,$1B,$0B,$07,$7B,$5D,$3A ; DE5E
        .byte   $55,$2A,$69,$5A,$5D,$2A,$7F,$46 ; DE66
        .byte   $0B,$09,$2D,$79,$3F,$19,$1B,$49 ; DE6E
        .byte   $2F,$3A,$41,$09,$5D,$06,$7D,$79 ; DE76
        .byte   $77,$5A,$19,$19,$27,$29,$69,$19 ; DE7E
        .byte   $71,$59,$07,$06,$7B,$6A,$29,$4A ; DE86
        .byte   $5B,$4A,$6B,$16,$17,$29,$5B,$49 ; DE8E
        .byte   $6B,$39,$75,$06,$35,$16,$69,$2A ; DE96
        .byte   $69,$5A,$79,$6A,$69,$3E,$4B,$19 ; DE9E
        .byte   $19,$3D,$35,$09,$09,$7D,$4F,$09 ; DEA6
        .byte   $09,$79,$29,$77,$29,$57,$19,$59 ; DEAE
        .byte   $19,$69,$07,$49,$3F,$49,$4B,$7A ; DEB6
        .byte   $6B,$69,$77,$29                 ; DEBE
.endmacro

.macro MAC_L_DF05
; ----------------------------------------------------------------------------
L_DF05: lda     #$05                            ; DF05
        jmp     L_E61B                          ; DF07

; ----------------------------------------------------------------------------
L_DF0A: lda     $D3                             ; DF0A
        jmp     L_E61B                          ; DF0C

.endmacro

.macro MAC_L_E060
; ----------------------------------------------------------------------------
L_E060: lsr     a                               ; E060
        dex                                     ; E061
        bne     L_E060                          ; E062
        rts                                     ; E064

; ----------------------------------------------------------------------------
L_E065: asl     a                               ; E065
        dex                                     ; E066
        bne     L_E065                          ; E067
        rts                                     ; E069

; ----------------------------------------------------------------------------
L_E06A: cmp     #$80                            ; E06A
        ror     a                               ; E06C
        dex                                     ; E06D
        bne     L_E06A                          ; E06E
        rts                                     ; E070

.endmacro

.macro MAC_L_E6BE
; ----------------------------------------------------------------------------
L_E6BE: .byte   $00                             ; E6BE
.endmacro

.macro MAC_L_E6DE
; ----------------------------------------------------------------------------
L_E6DE: jmp     L_E6DE                          ; E6DE

; ----------------------------------------------------------------------------
LE6E1:  .byte   $01,$02                         ; E6E1
LE6E3:  .byte   $04                             ; E6E3
LE6E4:  .byte   $08                             ; E6E4
LE6E5:  .byte   $10                             ; E6E5
LE6E6:  .byte   $20,$40,$80                     ; E6E6
.endmacro

.macro MAC_L_E6FA
; ----------------------------------------------------------------------------
L_E6FA: lda     #$0F                            ; E6FA
        ldx     #$1F                            ; E6FC
L_E6FE: sta     $58,x                           ; E6FE
        dex                                     ; E700
        bpl     L_E6FE                          ; E701
        rts                                     ; E703

; ----------------------------------------------------------------------------
L_E704: bpl     L_E70A                          ; E704
        clc                                     ; E706
        adc     #$1E                            ; E707
        rts                                     ; E709

; ----------------------------------------------------------------------------
L_E70A: cmp     #$1E                            ; E70A
        bcc     L_E711                          ; E70C
        sec                                     ; E70E
        sbc     #$1E                            ; E70F
L_E711: rts                                     ; E711

; ----------------------------------------------------------------------------
L_E712: lda     $C9                             ; E712
        asl     a                               ; E714
        lda     $CA                             ; E715
        rol     a                               ; E717
        sta     $C7                             ; E718
        lda     $48                             ; E71A
        asl     a                               ; E71C
        lda     $49                             ; E71D
        rol     a                               ; E71F
        sec                                     ; E720
        sbc     $C7                             ; E721
        clc                                     ; E723
        adc     $22                             ; E724
        sta     $C7                             ; E726
        lda     $CB                             ; E728
        clc                                     ; E72A
        adc     #$40                            ; E72B
        sta     $C8                             ; E72D
        lda     $CC                             ; E72F
        adc     #$00                            ; E731
        asl     $C8                             ; E733
        rol     a                               ; E735
        sta     $C8                             ; E736
        lda     $4A                             ; E738
        asl     a                               ; E73A
        lda     $4B                             ; E73B
        rol     a                               ; E73D
        sec                                     ; E73E
        sbc     $C8                             ; E73F
        clc                                     ; E741
        adc     $23                             ; E742
        jsr     L_E704                          ; E744
        sta     $C8                             ; E747
        rts                                     ; E749

; ----------------------------------------------------------------------------
L_E74A: jsr     L_E712                          ; E74A
L_E74D: lda     #$00                            ; E74D
        sta     $BF                             ; E74F
        lda     $C8                             ; E751
        lsr     a                               ; E753
        ror     $BF                             ; E754
        lsr     a                               ; E756
        ror     $BF                             ; E757
        lsr     a                               ; E759
        ror     $BF                             ; E75A
        ora     #$20                            ; E75C
        sta     $C0                             ; E75E
        lda     $C7                             ; E760
        and     #$1F                            ; E762
        ora     $BF                             ; E764
        sta     $BF                             ; E766
        lda     $C7                             ; E768
        and     #$20                            ; E76A
        beq     L_E774                          ; E76C
        lda     $C0                             ; E76E
        ora     #$04                            ; E770
        sta     $C0                             ; E772
L_E774: rts                                     ; E774

; ----------------------------------------------------------------------------
L_E775: lda     $C7                             ; E775
        lsr     a                               ; E777
        lsr     a                               ; E778
        and     #$07                            ; E779
        sta     $BF                             ; E77B
        lda     $C8                             ; E77D
        asl     a                               ; E77F
        and     #$38                            ; E780
        ora     $BF                             ; E782
        ora     #$C0                            ; E784
        sta     $BF                             ; E786
        lda     #$23                            ; E788
        sta     $C0                             ; E78A
        lda     $C7                             ; E78C
        and     #$20                            ; E78E
        beq     L_E796                          ; E790
        lda     #$27                            ; E792
        sta     $C0                             ; E794
L_E796: rts                                     ; E796

.endmacro

.macro MAC_L_EA3A
; ----------------------------------------------------------------------------
L_EA3A: ldx     #$7A                            ; EA3A
L_EA3C: tay                                     ; EA3C
        lsr     a                               ; EA3D
        lsr     a                               ; EA3E
        lsr     a                               ; EA3F
        lsr     a                               ; EA40
        jsr     L_E61B                          ; EA41
        tya                                     ; EA44
        and     #$0F                            ; EA45
        asl     a                               ; EA47
        tay                                     ; EA48
        lda     $8000,y                         ; EA49
        sta     L0000,x                         ; EA4C
        lda     $8001,y                         ; EA4E
        sta     $01,x                           ; EA51
        ldy     #$00                            ; EA53
        rts                                     ; EA55

.endmacro

.macro MAC_L_EA63
; ----------------------------------------------------------------------------
L_EA63: lda     (L007A),y                       ; EA63
        pha                                     ; EA65
        iny                                     ; EA66
        lda     (L007A),y                       ; EA67
        sta     $7B                             ; EA69
        pla                                     ; EA6B
        sta     L007A                           ; EA6C
        rts                                     ; EA6E

.endmacro

.macro MAC_L_EB14
; ----------------------------------------------------------------------------
L_EB14: ldy     L0000,x                         ; EB14
        bmi     L_EB1F                          ; EB16
        cmp     L0000,x                         ; EB18
        bcs     L_EB2A                          ; EB1A
        sta     L0000,x                         ; EB1C
        rts                                     ; EB1E

; ----------------------------------------------------------------------------
L_EB1F: eor     #$FF                            ; EB1F
        clc                                     ; EB21
        adc     #$01                            ; EB22
        cmp     L0000,x                         ; EB24
        bcc     L_EB2A                          ; EB26
        sta     L0000,x                         ; EB28
L_EB2A: rts                                     ; EB2A

.endmacro

.macro MAC_L_EB44
; ----------------------------------------------------------------------------
L_EB44: tya                                     ; EB44
        clc                                     ; EB45
        adc     L007A                           ; EB46
        sta     L007A                           ; EB48
        bcc     L_EB4E                          ; EB4A
        inc     $7B                             ; EB4C
L_EB4E: ldy     #$00                            ; EB4E
        rts                                     ; EB50

; ----------------------------------------------------------------------------
L_EB51: asl     a                               ; EB51
        tay                                     ; EB52
        bcc     L_EB57                          ; EB53
        inc     $7B                             ; EB55
L_EB57: lda     (L007A),y                       ; EB57
        iny                                     ; EB59
        tax                                     ; EB5A
        lda     (L007A),y                       ; EB5B
        sta     $7B                             ; EB5D
        stx     L007A                           ; EB5F
        ldy     #$00                            ; EB61
        rts                                     ; EB63

.endmacro

.macro MAC_L_EBF4
L_EBF4: .byte   $00,$01,$02,$03,$04,$05,$06,$07 ; EBF4
        .byte   $08,$09,$0A,$0B,$0C,$0F,$0F,$0F ; EBFC
        .byte   $10,$11,$12,$13,$14,$15,$16,$17 ; EC04
        .byte   $18,$19,$1A,$1B,$1C,$0F,$0F,$0F ; EC0C
        .byte   $20,$21,$22,$23,$24,$25,$26,$27 ; EC14
        .byte   $28,$29,$2A,$2B,$2C,$0F,$0F,$0F ; EC1C
        .byte   $30,$31,$32,$33,$34,$35,$36,$37 ; EC24
        .byte   $38,$39,$3A,$3B,$3C,$3D,$3E,$0F ; EC2C
.endmacro

.macro MAC_L_EF2B
; ----------------------------------------------------------------------------
L_EF2B: lda     $48                             ; EF2B
        sec                                     ; EF2D
        sbc     $1C                             ; EF2E
        sta     $3E                             ; EF30
        lda     $49                             ; EF32
        sbc     $1D                             ; EF34
        lsr     a                               ; EF36
        ror     $3E                             ; EF37
        lsr     a                               ; EF39
        ror     $3E                             ; EF3A
        lsr     a                               ; EF3C
        ror     $3E                             ; EF3D
        lsr     a                               ; EF3F
        ror     $3E                             ; EF40
        sta     L0000                           ; EF42
        lda     $4A                             ; EF44
        sec                                     ; EF46
        sbc     $1E                             ; EF47
        sta     $3F                             ; EF49
        lda     $4B                             ; EF4B
        sbc     $1F                             ; EF4D
        lsr     a                               ; EF4F
        ror     $3F                             ; EF50
        lsr     a                               ; EF52
        ror     $3F                             ; EF53
        lsr     a                               ; EF55
        ror     $3F                             ; EF56
        lsr     a                               ; EF58
        ror     $3F                             ; EF59
        ora     L0000                           ; EF5B
        and     #$07                            ; EF5D
        bne     L_EF85                          ; EF5F
        lda     $40                             ; EF61
        lsr     a                               ; EF63
        clc                                     ; EF64
        adc     $3E                             ; EF65
        cmp     $40                             ; EF67
        bcc     L_EF85                          ; EF69
        lda     $41                             ; EF6B
        lsr     a                               ; EF6D
        eor     #$FF                            ; EF6E
        clc                                     ; EF70
        adc     #$01                            ; EF71
        clc                                     ; EF73
        adc     $3F                             ; EF74
        bcc     L_EF85                          ; EF76
        cmp     #$0C                            ; EF78
        bcc     L_EF85                          ; EF7A
        clc                                     ; EF7C
        adc     $41                             ; EF7D
        bcs     L_EF85                          ; EF7F
        cmp     #$E4                            ; EF81
        bcc     L_EF8B                          ; EF83
L_EF85: jsr     L_EFD7                          ; EF85
        lda     #$FF                            ; EF88
        rts                                     ; EF8A

; ----------------------------------------------------------------------------
L_EF8B: jsr     L_EFD7                          ; EF8B
        lda     #$00                            ; EF8E
        rts                                     ; EF90

; ----------------------------------------------------------------------------
L_EF91: lda     $3F                             ; EF91
        pha                                     ; EF93
        lda     $3E                             ; EF94
        pha                                     ; EF96
        jsr     L_EFF4                          ; EF97
        lda     $3E                             ; EF9A
        asl     a                               ; EF9C
        rol     $49                             ; EF9D
        asl     a                               ; EF9F
        rol     $49                             ; EFA0
        asl     a                               ; EFA2
        rol     $49                             ; EFA3
        asl     a                               ; EFA5
        rol     $49                             ; EFA6
        clc                                     ; EFA8
        adc     $1C                             ; EFA9
        sta     $48                             ; EFAB
        lda     $49                             ; EFAD
        and     #$0F                            ; EFAF
        adc     $1D                             ; EFB1
        sta     $49                             ; EFB3
        lda     $3F                             ; EFB5
        asl     a                               ; EFB7
        rol     $4B                             ; EFB8
        asl     a                               ; EFBA
        rol     $4B                             ; EFBB
        asl     a                               ; EFBD
        rol     $4B                             ; EFBE
        asl     a                               ; EFC0
        rol     $4B                             ; EFC1
        clc                                     ; EFC3
        adc     $1E                             ; EFC4
        sta     $4A                             ; EFC6
        lda     $4B                             ; EFC8
        and     #$0F                            ; EFCA
        adc     $1F                             ; EFCC
        sta     $4B                             ; EFCE
        pla                                     ; EFD0
        sta     $3E                             ; EFD1
        pla                                     ; EFD3
        sta     $3F                             ; EFD4
        rts                                     ; EFD6

; ----------------------------------------------------------------------------
L_EFD7: lda     $3E                             ; EFD7
        sec                                     ; EFD9
        sbc     #$04                            ; EFDA
        sta     $3E                             ; EFDC
        lda     $FF                             ; EFDE
        and     #$20                            ; EFE0
        bne     L_EFEC                          ; EFE2
        lda     $3F                             ; EFE4
        sec                                     ; EFE6
        sbc     #$05                            ; EFE7
        sta     $3F                             ; EFE9
        rts                                     ; EFEB

; ----------------------------------------------------------------------------
L_EFEC: lda     $3F                             ; EFEC
        sec                                     ; EFEE
        sbc     #$09                            ; EFEF
        sta     $3F                             ; EFF1
        rts                                     ; EFF3

; ----------------------------------------------------------------------------
L_EFF4: lda     $3E                             ; EFF4
        clc                                     ; EFF6
        adc     #$04                            ; EFF7
        sta     $3E                             ; EFF9
        lda     $FF                             ; EFFB
        and     #$20                            ; EFFD
        bne     L_F009                          ; EFFF
        lda     $3F                             ; F001
        clc                                     ; F003
        adc     #$05                            ; F004
        sta     $3F                             ; F006
        rts                                     ; F008

; ----------------------------------------------------------------------------
L_F009: lda     $3F                             ; F009
        clc                                     ; F00B
        adc     #$09                            ; F00C
        sta     $3F                             ; F00E
        rts                                     ; F010

.endmacro

