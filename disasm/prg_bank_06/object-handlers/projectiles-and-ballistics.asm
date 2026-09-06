.macro MAC_L_976D
; ----------------------------------------------------------------------------
L_976D: jmp     L_977F                          ; 976D

; ----------------------------------------------------------------------------
L_9770: jsr     L_9707                          ; 9770
        lda     L_9780,x                        ; 9773
        sta     LoadedObj + Obj::Velocity_X     ; 9776
        lda     L_9784,x                        ; 9778
        sta     LoadedObj + Obj::Velocity_Y     ; 977B
L_977D: inc     LoadedObj + Obj::Type           ; 977D
L_977F: rts                                     ; 977F

.endmacro

.macro MAC_L_9788
; ----------------------------------------------------------------------------
L_9788: jmp     L_97C6                          ; 9788

; ----------------------------------------------------------------------------
L_978B: lda     #$80                            ; 978B
        sta     $42                             ; 978D
        lda     #$80                            ; 978F
        sta     $43                             ; 9791
        lda     $B9                             ; 9793
        cmp     #$03                            ; 9795
        bcs     L_979F                          ; 9797
        jsr     Obj_Apply_Velocity_XY           ; 9799
        jmp     L_97A2                          ; 979C

; ----------------------------------------------------------------------------
L_979F: jsr     Apply_Double_Velocity_XY                           ; 979F
L_97A2: jsr     Obj_ReadTile                           ; 97A2
        bpl     L_97C6                          ; 97A5
        asl     a                               ; 97A7
        bpl     L_97C0                          ; 97A8
        lda     $03FC                           ; 97AA
        and     #$02                            ; 97AD
        beq     L_97C0                          ; 97AF
        jsr     LCEDD                           ; 97B1
        lda     #$80                            ; 97B4
        sta     LoadedObj + Obj::Position_X_Lo  ; 97B6
        sta     LoadedObj + Obj::Position_Y_Lo  ; 97B8
        jsr     LD82C                           ; 97BA
        jmp     L_9BD8                          ; 97BD

; ----------------------------------------------------------------------------
L_97C0: jsr     LD82C                           ; 97C0
        jmp     L_9B95                          ; 97C3

; ----------------------------------------------------------------------------
L_97C6: lda     #$10                            ; 97C6
        sta     $40                             ; 97C8
        lda     #$10                            ; 97CA
        sta     $41                             ; 97CC
        jsr     ScreenPos_Compute               ; 97CE
        bne     L_980C                          ; 97D1
        ldx     $B9                             ; 97D3
        lda     L_9835,x                        ; 97D5
        jsr     LD7A0                           ; 97D8
        bmi     L_980C                          ; 97DB
        lda     L_9817                          ; 97DD
        sta     IndirectPtrLo                   ; 97E0
        lda     L9818                           ; 97E2
        sta     IndirectPtrHi                   ; 97E5
        ldy     #$00                            ; 97E7
        ldx     LoadedObj + Obj::Facing         ; 97E9
        lda     L_980F,x                        ; 97EB
        sta     $44                             ; 97EE
        lda     $B9                             ; 97F0
        beq     L_9804                          ; 97F2
        cmp     #$02                            ; 97F4
        bcc     L_97FE                          ; 97F6
        lda     $44                             ; 97F8
        ora     #$03                            ; 97FA
        sta     $44                             ; 97FC
L_97FE: txa                                     ; 97FE
        and     #$01                            ; 97FF
        jmp     LF029                           ; 9801

; ----------------------------------------------------------------------------
L_9804: lda     L_9813,x                        ; 9804
        sta     $45                             ; 9807
        jmp     OAM_Stage_Pattern               ; 9809

; ----------------------------------------------------------------------------
L_980C: jmp     LD82C                           ; 980C

; ----------------------------------------------------------------------------
L_980F: .byte   $00,$40,$80,$00                 ; 980F
L_9813: .byte   $56,$55,$56,$55                 ; 9813
L_9817: .byte   $19                             ; 9817
L9818:  .byte   $98                             ; 9818
L_9819: .byte   $29,$98,$1D,$98                 ; 9819
L_981D: .byte   $00,$00,$00,$4B,$08,$00,$00,$4C ; 981D
        .byte   $08,$00,$10,$4D,$00,$00,$00,$48 ; 9825
        .byte   $00,$08,$00,$49,$00,$08,$10,$4A ; 982D
L_9835: .byte   $04,$06,$08                     ; 9835
.endmacro

.macro MAC_L_9882
; ----------------------------------------------------------------------------
L_9882: nop                                     ; 9882
        nop                                     ; 9883
        nop                                     ; 9884
L_9885: jsr     LD790                           ; 9885
        jsr     L_9707                          ; 9888
        lda     L98A4,x                         ; 988B
        sta     LoadedObj + Obj::Velocity_X     ; 988E
        lda     L_98A3,x                        ; 9890
        sta     LoadedObj + Obj::Velocity_Y     ; 9893
        inc     LoadedObj + Obj::Type           ; 9895
        lda     #$C0                            ; 9897
        sta     LoadedObj + Obj::Scratch1       ; 9899
        sta     LoadedObj + Obj::Scratch2       ; 989B
        lda     #$2F                            ; 989D
        jsr     Enqueue_Sound_Command           ; 989F
        rts                                     ; 98A2

; ----------------------------------------------------------------------------
L_98A3: .byte   $F0                             ; 98A3
L98A4:  .byte   $00,$10,$00,$F0                 ; 98A4
; ----------------------------------------------------------------------------
L_98A8: jmp     L_9919                          ; 98A8

; ----------------------------------------------------------------------------
L_98AB: lda     #$80                            ; 98AB
        sta     $42                             ; 98AD
        lda     #$80                            ; 98AF
        sta     $43                             ; 98B1
        dec     LoadedObj + Obj::Scratch1       ; 98B3
        bne     L_98BD                          ; 98B5
        jsr     LD790                           ; 98B7
        jmp     L_9B95                          ; 98BA

; ----------------------------------------------------------------------------
L_98BD: lda     LoadedObj + Obj::Scratch2       ; 98BD
        beq     L_9916                          ; 98BF
        ldx     LoadedObj + Obj::Scratch0       ; 98C1
        lda     ObjectTable + Obj::Type,x       ; 98C3
        bne     L_98CC                          ; 98C6
        sta     LoadedObj + Obj::Scratch2       ; 98C8
        beq     L_9916                          ; 98CA
L_98CC: lda     ObjectTable + Obj::Position_X_Hi,x ; 98CC
        sec                                     ; 98CF
        sbc     LoadedObj + Obj::Position_X_Hi  ; 98D0
        asl     a                               ; 98D2
        beq     L_98E9                          ; 98D3
        bmi     L_98DF                          ; 98D5
        lda     LoadedObj + Obj::Velocity_X     ; 98D7
        clc                                     ; 98D9
        adc     #$02                            ; 98DA
        jmp     L_98E4                          ; 98DC

; ----------------------------------------------------------------------------
L_98DF: lda     LoadedObj + Obj::Velocity_X     ; 98DF
        sec                                     ; 98E1
        sbc     #$02                            ; 98E2
L_98E4: sta     LoadedObj + Obj::Velocity_X     ; 98E4
        jmp     L_98F0                          ; 98E6

; ----------------------------------------------------------------------------
L_98E9: lda     #$10                            ; 98E9
        ldx     #$4C                            ; 98EB
        jsr     Speed_Limit_Sub                 ; 98ED
L_98F0: ldx     LoadedObj + Obj::Scratch0       ; 98F0
        lda     ObjectTable + Obj::Position_Y_Hi,x ; 98F2
        sec                                     ; 98F5
        sbc     LoadedObj + Obj::Position_Y_Hi  ; 98F6
        asl     a                               ; 98F8
        beq     L_990F                          ; 98F9
        bmi     L_9905                          ; 98FB
        lda     LoadedObj + Obj::Velocity_Y     ; 98FD
        clc                                     ; 98FF
        adc     #$02                            ; 9900
        jmp     L_990A                          ; 9902

; ----------------------------------------------------------------------------
L_9905: lda     LoadedObj + Obj::Velocity_Y     ; 9905
        sec                                     ; 9907
        sbc     #$02                            ; 9908
L_990A: sta     LoadedObj + Obj::Velocity_Y     ; 990A
        jmp     L_9916                          ; 990C

; ----------------------------------------------------------------------------
L_990F: lda     #$10                            ; 990F
        ldx     #$4D                            ; 9911
        jsr     Speed_Limit_Sub                 ; 9913
L_9916: jsr     Obj_Apply_Velocity_XY                           ; 9916
L_9919: lda     #$18                            ; 9919
        sta     $40                             ; 991B
        lda     #$18                            ; 991D
        sta     $41                             ; 991F
        jsr     ScreenPos_Compute               ; 9921
        beq     L_9929                          ; 9924
        jmp     LD790                           ; 9926

; ----------------------------------------------------------------------------
L_9929: lda     #$08                            ; 9929
        jsr     LD7A0                           ; 992B
        bpl     L_9933                          ; 992E
        jmp     LD82C                           ; 9930

; ----------------------------------------------------------------------------
L_9933: lda     #$00                            ; 9933
        sta     $44                             ; 9935
        lda     L_996E                          ; 9937
        sta     IndirectPtrLo                   ; 993A
        lda     L_996E+1                        ; 993C
        sta     IndirectPtrHi                   ; 993F
        ldy     #$00                            ; 9941
        lda     LoadedObj + Obj::Scratch2       ; 9943
        beq     L_9965                          ; 9945
        ldx     LoadedObj + Obj::Scratch0       ; 9947
        lda     ObjectTable + Obj::Position_X_Hi,x ; 9949
        sec                                     ; 994C
        sbc     LoadedObj + Obj::Position_X_Hi  ; 994D
        sta     $00                             ; 994F
        lda     ObjectTable + Obj::Position_Y_Hi,x ; 9951
        sec                                     ; 9954
        sbc     LoadedObj + Obj::Position_Y_Hi  ; 9955
        sta     $01                             ; 9957
        jsr     LD161                           ; 9959
        sta     LoadedObj + Obj::Facing         ; 995C
        lda     $10                             ; 995E
        asl     a                               ; 9960
        and     #$04                            ; 9961
        bpl     L_9967                          ; 9963
L_9965: lda     #$04                            ; 9965
L_9967: clc                                     ; 9967
        adc     LoadedObj + Obj::Facing         ; 9968
        jsr     LF029                           ; 996A
        rts                                     ; 996D

; ----------------------------------------------------------------------------
L_996E: .addr   L_9970                          ; 996E
L_9970: .addr   L_9980                          ; 9970
        .addr   L9988                           ; 9972
        .addr   L9990                           ; 9974
        .addr   L9998                           ; 9976
        .addr   L99A0                           ; 9978
        .addr   L99A4                           ; 997A
        .addr   L99A8                           ; 997C
        .addr   L99AC                           ; 997E
; ----------------------------------------------------------------------------
L_9980: .byte   $00,$00,$01,$7F,$00,$08,$10,$56 ; 9980
L9988:  .byte   $00,$00,$41,$6F,$F8,$00,$50,$55 ; 9988
L9990:  .byte   $00,$00,$81,$7F,$00,$F8,$90,$56 ; 9990
L9998:  .byte   $00,$00,$01,$6F,$08,$00,$10,$55 ; 9998
L99A0:  .byte   $00,$00,$11,$7F                 ; 99A0
L99A4:  .byte   $00,$00,$51,$6F                 ; 99A4
L99A8:  .byte   $00,$00,$91,$7F                 ; 99A8
L99AC:  .byte   $00,$00,$11,$6F                 ; 99AC
.endmacro

.macro MAC_L_99CC
; ----------------------------------------------------------------------------
L_99CC: nop                                     ; 99CC
        nop                                     ; 99CD
        nop                                     ; 99CE
L_99CF: lda     #$00                            ; 99CF
        sta     LoadedObj + Obj::Scratch0       ; 99D1
        sta     $4F                             ; 99D3
        lda     $10                             ; 99D5
        and     #$03                            ; 99D7
        cmp     #$03                            ; 99D9
        bne     L_99DF                          ; 99DB
        lda     #$00                            ; 99DD
L_99DF: tax                                     ; 99DF
        lda     L_99ED,x                        ; 99E0
        sta     LoadedObj + Obj::Facing         ; 99E3
        inc     LoadedObj + Obj::Type           ; 99E5
        lda     #$4D                            ; 99E7
        jsr     Enqueue_Sound_Command           ; 99E9
        rts                                     ; 99EC

; ----------------------------------------------------------------------------
L_99ED: .byte   $00,$08,$10                     ; 99ED
; ----------------------------------------------------------------------------
L_99F0: jmp     L_9A0E                          ; 99F0

; ----------------------------------------------------------------------------
L_99F3: lda     #$80                            ; 99F3
        sta     $42                             ; 99F5
        lda     #$80                            ; 99F7
        sta     $43                             ; 99F9
        lda     $10                             ; 99FB
        and     #$01                            ; 99FD
        bne     L_9A0E                          ; 99FF
        inc     LoadedObj + Obj::Scratch0       ; 9A01
        lda     LoadedObj + Obj::Scratch0       ; 9A03
        cmp     #$10                            ; 9A05
        bcc     L_9A0C                          ; 9A07
        jmp     LD82C                           ; 9A09

; ----------------------------------------------------------------------------
L_9A0C: inc     LoadedObj + Obj::Position_Y_Hi  ; 9A0C
L_9A0E: lda     #$10                            ; 9A0E
        sta     $40                             ; 9A10
        lda     #$10                            ; 9A12
        sta     $41                             ; 9A14
        jsr     ScreenPos_Compute               ; 9A16
        beq     L_9A1E                          ; 9A19
        jmp     LD82C                           ; 9A1B

; ----------------------------------------------------------------------------
L_9A1E: lda     LoadedObj + Obj::Scratch0       ; 9A1E
        sta     LoadedObj + Obj::Scratch1       ; 9A20
        and     #$08                            ; 9A22
        bne     L_9A42                          ; 9A24
        lda     $3E                             ; 9A26
        pha                                     ; 9A28
        lda     LoadedObj + Obj::Scratch0       ; 9A29
        clc                                     ; 9A2B
        adc     LoadedObj + Obj::Facing         ; 9A2C
        tax                                     ; 9A2E
        lda     L_9A98,x                        ; 9A2F
        clc                                     ; 9A32
        adc     $3E                             ; 9A33
        sta     $3E                             ; 9A35
        lda     #$10                            ; 9A37
        jsr     LD7A0                           ; 9A39
        pla                                     ; 9A3C
        sta     $3E                             ; 9A3D
        jmp     L_9A45                          ; 9A3F

; ----------------------------------------------------------------------------
L_9A42: jsr     LD790                           ; 9A42
L_9A45: lda     #$04                            ; 9A45
L_9A47: pha                                     ; 9A47
        lda     LoadedObj + Obj::Scratch1       ; 9A48
        bit     $E6E4                           ; 9A4A
        bne     L_9A6E                          ; 9A4D
        lda     $3E                             ; 9A4F
        pha                                     ; 9A51
        lda     LoadedObj + Obj::Scratch1       ; 9A52
        clc                                     ; 9A54
        adc     LoadedObj + Obj::Facing         ; 9A55
        tax                                     ; 9A57
        lda     L_9A98,x                        ; 9A58
        clc                                     ; 9A5B
        adc     $3E                             ; 9A5C
        sta     $3E                             ; 9A5E
        lda     L_9AB0,x                        ; 9A60
        sta     $44                             ; 9A63
        lda     L_9A80,x                        ; 9A65
        jsr     MetaSprite_Render               ; 9A68
        pla                                     ; 9A6B
        sta     $3E                             ; 9A6C
L_9A6E: lda     $3F                             ; 9A6E
        sec                                     ; 9A70
        sbc     #$10                            ; 9A71
        sta     $3F                             ; 9A73
        dec     LoadedObj + Obj::Scratch1       ; 9A75
        pla                                     ; 9A77
        sec                                     ; 9A78
        sbc     #$01                            ; 9A79
        bne     L_9A47                          ; 9A7B
        jmp     LEC73                           ; 9A7D

; ----------------------------------------------------------------------------
L_9A80: .byte   $15,$16,$15,$16,$17,$14,$14,$15 ; 9A80
        .byte   $17,$14,$16,$15,$16,$16,$15,$17 ; 9A88
        .byte   $14,$16,$17,$15,$16,$15,$15,$16 ; 9A90
L_9A98: .byte   $00,$04,$08,$0C,$14,$14,$0C,$08 ; 9A98
        .byte   $00,$F8,$F0,$F4,$F8,$F0,$EC,$F0 ; 9AA0
        .byte   $00,$08,$00,$FC,$00,$FC,$FC,$F8 ; 9AA8
L_9AB0: .byte   $03,$03,$03,$03,$43,$43,$03,$03 ; 9AB0
        .byte   $03,$03,$03,$03,$03,$03,$03,$43 ; 9AB8
        .byte   $43,$03,$03,$03,$03,$03,$43,$03 ; 9AC0
.endmacro

.macro MAC_L_9AEB
; ----------------------------------------------------------------------------
L_9AEB: nop                                     ; 9AEB
        nop                                     ; 9AEC
        nop                                     ; 9AED
L_9AEE: jsr     LD790                           ; 9AEE
        lda     #$2F                            ; 9AF1
        jsr     Enqueue_Sound_Command           ; 9AF3
        inc     LoadedObj + Obj::Type           ; 9AF6
        jsr     L_9707                          ; 9AF8
        lda     #$00                            ; 9AFB
        sta     LoadedObj + Obj::Velocity_X     ; 9AFD
        sta     LoadedObj + Obj::Velocity_Y     ; 9AFF
        lda     ObjectSlot_Index                ; 9B01
        cmp     #$03                            ; 9B03
        beq     L_9B29                          ; 9B05
        ldx     LoadedObj + Obj::Facing         ; 9B07
        lda     L_9B2A,x                        ; 9B09
        sta     LoadedObj + Obj::Velocity_X     ; 9B0C
        lda     L9B2B,x                         ; 9B0E
        sta     LoadedObj + Obj::Velocity_Y     ; 9B11
        lda     ObjectSlot_Index                ; 9B13
        cmp     #$04                            ; 9B15
        beq     L_9B29                          ; 9B17
        lda     #$00                            ; 9B19
        sec                                     ; 9B1B
        sec                                     ; 9B1C
        sbc     LoadedObj + Obj::Velocity_X     ; 9B1D
        sta     LoadedObj + Obj::Velocity_X     ; 9B1F
        lda     #$00                            ; 9B21
        sec                                     ; 9B23
        sec                                     ; 9B24
        sbc     LoadedObj + Obj::Velocity_Y     ; 9B25
        sta     LoadedObj + Obj::Velocity_Y     ; 9B27
L_9B29: rts                                     ; 9B29

; ----------------------------------------------------------------------------
L_9B2A: .byte   $F8                             ; 9B2A
L9B2B:  .byte   $00,$08,$00,$F8                 ; 9B2B
.endmacro

.macro MAC_L_9B32
; ----------------------------------------------------------------------------
L_9B32: jsr     Apply_Double_Velocity_XY                           ; 9B32
        ldx     LoadedObj + Obj::Facing         ; 9B35
        lda     L9B7D,x                         ; 9B37
        clc                                     ; 9B3A
        adc     LoadedObj + Obj::Velocity_X     ; 9B3B
        sta     LoadedObj + Obj::Velocity_X     ; 9B3D
        lda     L_9B7C,x                        ; 9B3F
        clc                                     ; 9B42
        adc     LoadedObj + Obj::Velocity_Y     ; 9B43
        sta     LoadedObj + Obj::Velocity_Y     ; 9B45
L_9B47: lda     #$10                            ; 9B47
        sta     $40                             ; 9B49
        lda     #$10                            ; 9B4B
        sta     $41                             ; 9B4D
        jsr     ScreenPos_Compute               ; 9B4F
        bne     L_9B79                          ; 9B52
        lda     #$20                            ; 9B54
        jsr     LD7A0                           ; 9B56
        bmi     L_9B76                          ; 9B59
        lda     #$00                            ; 9B5B
        sta     $44                             ; 9B5D
        lda     L_996E                          ; 9B5F
        sta     IndirectPtrLo                   ; 9B62
        lda     L_996E+1                        ; 9B64
        sta     IndirectPtrHi                   ; 9B67
        ldy     #$00                            ; 9B69
        lda     $10                             ; 9B6B
        asl     a                               ; 9B6D
        and     #$04                            ; 9B6E
        clc                                     ; 9B70
        adc     LoadedObj + Obj::Facing         ; 9B71
        jmp     LF029                           ; 9B73

; ----------------------------------------------------------------------------
L_9B76: jsr     SpawnBigExplosion               ; 9B76
L_9B79: jmp     LD82C                           ; 9B79

; ----------------------------------------------------------------------------
L_9B7C: .byte   $FF                             ; 9B7C
L9B7D:  .byte   $00,$01,$00,$FF                 ; 9B7D
.endmacro

.macro MAC_L_9EA4
; ----------------------------------------------------------------------------
L_9EA4: jmp     L_9EBE                          ; 9EA4

; ----------------------------------------------------------------------------
L_9EA7: lda     $9D                             ; 9EA7
        sta     LoadedObj + Obj::Facing         ; 9EA9
        lda     #$70                            ; 9EAB
        sta     LoadedObj + Obj::Scratch1       ; 9EAD
        ldy     $9E                             ; 9EAF
        jsr     Obj_FacingToVelocity            ; 9EB1
        jsr     Obj_CalcTileIndex               ; 9EB4
        lda     #$39                            ; 9EB7
        sta     LoadedObj + Obj::Type           ; 9EB9
        jsr     PlaySound_23                    ; 9EBB
L_9EBE: rts                                     ; 9EBE

; ----------------------------------------------------------------------------
; ObjType $38: Big Gray Ballistic Ball - Init
ObjHandler_Tank_38_Big_Gray_Init:
        jmp     _ObjHandler_Tank_38_Big_Gray_Init__Done; 9EBF

; ----------------------------------------------------------------------------
_ObjHandler_Tank_38_Big_Gray_Init__Body:
        jsr     Step_RNG                        ; 9EC2
        and     #$1F                            ; 9EC5
        clc                                     ; 9EC7
        adc     #$B0                            ; 9EC8
; Facing = (rng & 1F) + $B0.  Range of values: [$B0..$CF]
        sta     LoadedObj + Obj::Facing         ; 9ECA
        lda     #$70                            ; 9ECC
; Scratch1 is the Lifetime timer.  Init this to 112 frames
        sta     LoadedObj + Obj::Scratch1       ; 9ECE
        ldy     #$28                            ; 9ED0
; Derive initial Velocities from Facing heading and provided scalar (Y)
        jsr     Obj_FacingToVelocity            ; 9ED2
; Set TileIndex
        jsr     Obj_CalcTileIndex               ; 9ED5
; Increment ObjType to Main type.
        inc     LoadedObj + Obj::Type           ; 9ED8
        lda     #$25                            ; 9EDA
; Play launch sound.
        jsr     Enqueue_Sound_Command           ; 9EDC
_ObjHandler_Tank_38_Big_Gray_Init__Done:
        rts                                     ; 9EDF

; ----------------------------------------------------------------------------
; ObjType $39: Big Gray Ballistic Ball - Main.
; 
; Affected by gravity.  Bounces off walls and the ground.  Also rolls on the ground.
; Explodes when its lifetime timer (Scratch1) runs out.
ObjHandler_Tank_39_Big_Gray_Main:
        jmp     _ObjHandler_Tank_39_Ballistic_BigGray_Main__AfterPhysics; 9EE0

; ----------------------------------------------------------------------------
; Normal-play body.
; 
; Starts by setting collision box.
_ObjHandler_Tank_39_Big_Gray_Main__Body:
        lda     #$80                            ; 9EE3
        sta     $42                             ; 9EE5
        lda     #$80                            ; 9EE7
        sta     $43                             ; 9EE9
; Apply gravity of 2 to Velocity_Y, then apply Velocities to position twice, accounting for
; bouncing off solid terrain.
        lda     #$02                            ; 9EEB
        jsr     Obj_GravityMoveBounce_Double    ; 9EED
; tick the lifetime timer.
        dec     LoadedObj + Obj::Scratch1       ; 9EF0
; At zero, skip to explosion logic.
        beq     _ObjHandler_Tank_39_Ballistic_BigGray_Main__Explode; 9EF2
        lda     LoadedObj + Obj::Scratch1       ; 9EF4
        cmp     #$01                            ; 9EF6
; Otherwise, at NOT one, skip to post-physics tail.
        bne     _ObjHandler_Tank_39_Ballistic_BigGray_Main__AfterPhysics; 9EF8
        lda     #$80                            ; 9EFA
        sta     $42                             ; 9EFC
        lda     #$80                            ; 9EFE
        sta     $43                             ; 9F00
; Otherwise (at 1), set the collision box again (not sure why) and skip the code that sets the
; object dimensions for the on-screen test to go straight to the on-screen test.  This looks like
; a bug.
        jmp     _ObjHandler_Tank_39_Ballistic_BigGray_Main__ScreenCheck; 9F02

; ----------------------------------------------------------------------------
; set object dimensions and fall through into on-screen test.
_ObjHandler_Tank_39_Ballistic_BigGray_Main__AfterPhysics:
        lda     #$10                            ; 9F05
        sta     $40                             ; 9F07
        lda     #$10                            ; 9F09
        sta     $41                             ; 9F0B
_ObjHandler_Tank_39_Ballistic_BigGray_Main__ScreenCheck:
        jsr     ScreenPos_Compute               ; 9F0D
; if on-screen, jump to render code.
        beq     _ObjHandler_Tank_39_Ballistic_BigGray_Main__Render; 9F10
; otherwise, despawn immediately.  No tombstoning.
        jmp     Obj_Despawn                     ; 9F12

; ----------------------------------------------------------------------------
; Nudge the draw position, test player contact, and draw tile $6D
_ObjHandler_Tank_39_Ballistic_BigGray_Main__Render:
        clc                                     ; 9F15
        lda     $3F                             ; 9F16
        adc     #$03                            ; 9F18
        sta     $3F                             ; 9F1A
        lda     #$40                            ; 9F1C
        jsr     Obj_TryDamagePlayer             ; 9F1E
        beq     _ObjHandler_Tank_39_Ballistic_BigGray_Main__Explode; 9F21
        lda     #$01                            ; 9F23
        sta     $44                             ; 9F25
        lda     #$6D                            ; 9F27
        sta     $45                             ; 9F29
        jmp     OAM_Stage_Pattern               ; 9F2B

; ----------------------------------------------------------------------------
; lifetime expired: Spawn explosion, enqueue sfx, and despawn.
_ObjHandler_Tank_39_Ballistic_BigGray_Main__Explode:
        jsr     SpawnBigExplosion_NoSound       ; 9F2E
        lda     #$27                            ; 9F31
        jsr     Enqueue_Sound_Command           ; 9F33
        jmp     Obj_Despawn                     ; 9F36

; ----------------------------------------------------------------------------
L_9F39: jmp     L_9F59                          ; 9F39

; ----------------------------------------------------------------------------
L_9F3C: jsr     Step_RNG                           ; 9F3C
        and     #$0F                            ; 9F3F
        clc                                     ; 9F41
        adc     #$B8                            ; 9F42
        sta     LoadedObj + Obj::Facing         ; 9F44
        lda     #$50                            ; 9F46
        sta     LoadedObj + Obj::Scratch1       ; 9F48
        ldy     #$18                            ; 9F4A
        jsr     Obj_FacingToVelocity            ; 9F4C
        jsr     Obj_CalcTileIndex               ; 9F4F
        inc     LoadedObj + Obj::Type           ; 9F52
        lda     #$25                            ; 9F54
        jsr     Enqueue_Sound_Command           ; 9F56
L_9F59: rts                                     ; 9F59

; ----------------------------------------------------------------------------
L_9F5A: jmp     L_9F7F                          ; 9F5A

; ----------------------------------------------------------------------------
L_9F5D: lda     #$80                            ; 9F5D
        sta     $42                             ; 9F5F
        lda     #$80                            ; 9F61
        sta     $43                             ; 9F63
        lda     #$02                            ; 9F65
        jsr     Obj_GravityMoveBounce_Double    ; 9F67
        dec     LoadedObj + Obj::Scratch1       ; 9F6A
        beq     L_9FA8                          ; 9F6C
        lda     LoadedObj + Obj::Scratch1       ; 9F6E
        cmp     #$01                            ; 9F70
        bne     L_9F7F                          ; 9F72
        lda     #$80                            ; 9F74
        sta     $42                             ; 9F76
        lda     #$80                            ; 9F78
        sta     $43                             ; 9F7A
        jmp     L_9F87                          ; 9F7C

; ----------------------------------------------------------------------------
L_9F7F: lda     #$10                            ; 9F7F
        sta     $40                             ; 9F81
        lda     #$10                            ; 9F83
        sta     $41                             ; 9F85
L_9F87: jsr     ScreenPos_Compute                           ; 9F87
        beq     L_9F8F                          ; 9F8A
        jmp     Obj_TombstoneSlot               ; 9F8C

; ----------------------------------------------------------------------------
L_9F8F: clc                                     ; 9F8F
        lda     $3F                             ; 9F90
        adc     #$03                            ; 9F92
        sta     $3F                             ; 9F94
        lda     #$40                            ; 9F96
        jsr     Obj_TryDamagePlayer             ; 9F98
        beq     L_9FA8                          ; 9F9B
        lda     #$00                            ; 9F9D
        sta     $44                             ; 9F9F
        lda     #$6D                            ; 9FA1
        sta     $45                             ; 9FA3
        jmp     OAM_Stage_Pattern               ; 9FA5

; ----------------------------------------------------------------------------
L_9FA8: jsr     SpawnBigExplosion_NoSound       ; 9FA8
        lda     #$27                            ; 9FAB
        jsr     Enqueue_Sound_Command           ; 9FAD
        lda     #$06                            ; 9FB0
        jsr     TankEnemy_Init                  ; 9FB2
        lda     #$63                            ; 9FB5
        sta     LoadedObj + Obj::Type           ; 9FB7
        lda     #$01                            ; 9FB9
        sta     LoadedObj + Obj::Scratch0       ; 9FBB
        lda     #$E8                            ; 9FBD
        sta     LoadedObj + Obj::Velocity_Y     ; 9FBF
        lda     #$11                            ; 9FC1
        sta     LoadedObj + Obj::Velocity_X     ; 9FC3
        jsr     Obj_Get_DeltaToPlayer_X_q12_4   ; 9FC5
        bpl     L_9FD1                          ; 9FC8
        lda     #$00                            ; 9FCA
        sec                                     ; 9FCC
        sbc     LoadedObj + Obj::Velocity_X     ; 9FCD
        sta     LoadedObj + Obj::Velocity_X     ; 9FCF
L_9FD1: lda     #$00                            ; 9FD1
        sta     LoadedObj + Obj::Scratch1       ; 9FD3
        sta     LoadedObj + Obj::Facing         ; 9FD5
        sta     LoadedObj + Obj::Scratch2       ; 9FD7
        rts                                     ; 9FD9

; ----------------------------------------------------------------------------
; ObjType $3C: Small Red shot
ObjHandler_Tank_3C_Small_Red_Init:
        jmp     _ObjHandler_Tank_3C_Small_Red_Init__Done; 9FDA

; ----------------------------------------------------------------------------
; Start by bumping LoadedObj.Type to the Main ObjType.
_ObjHandler_Tank_3C_Small_Red_Init__Body:
        inc     LoadedObj + Obj::Type           ; 9FDD
; Call ScreenPos_Compute (despite not preparing any of its input... this has to be a bug, right?).
        jsr     ScreenPos_Compute               ; 9FDF
        lda     $3E                             ; 9FE2
        sta     $00                             ; 9FE4
        lda     $3F                             ; 9FE6
        sta     $01                             ; 9FE8
        lda     $7C                             ; 9FEA
        sta     $02                             ; 9FEC
        lda     $7D                             ; 9FEE
        sta     $03                             ; 9FF0
; Set the Velocities by calling Obj_AimVelocityFromDelta with parameters:
;   WR_Context_Dependent_00 = Starting_X
;   WR_Context_Dependent_01 = Starting_Y
;   WR_Context_Dependent_02 = Player_X
;   WR_Context_Dependent_03 = Player_Y
        jmp     LD02D                           ; 9FF2

; ----------------------------------------------------------------------------
; Cut spawn-sound trigger for the Small Red projectile.
DEAD__ObjHandler_Tank_3C_Small_Red_Init__PlaySFX:
        jsr     PlaySound_23                    ; 9FF5
_ObjHandler_Tank_3C_Small_Red_Init__Done:
        rts                                     ; 9FF8

; ----------------------------------------------------------------------------
; ObjType $3D: Small Red shot - Main
ObjHandler_Tank_3D_Small_Red_Main:
        jmp     _ObjHandler_Tank_3D_Proj_SmallRed_Main__ScreenTest; 9FF9

; ----------------------------------------------------------------------------
; Start by setting collision box.
_ObjHandler_Tank_3D_Small_Red_Main__Body:
        lda     #$40                            ; 9FFC
        sta     $42                             ; 9FFE
        lda     #$40                            ; A000
        sta     $43                             ; A002
; Apply motion and collisions.
        jsr     Obj_MoveAndCollide              ; A004
; If terrain collision occurred, skip to Explode.
        bne     _ObjHandler_Tank_3D_Proj_SmallRed_Main__Explode; A007
_ObjHandler_Tank_3D_Proj_SmallRed_Main__ScreenTest:
        lda     #$08                            ; A009
        sta     $40                             ; A00B
        lda     #$08                            ; A00D
        sta     $41                             ; A00F
        jsr     ScreenPos_Compute               ; A011
; If on screen, skip to Damage.
        beq     _ObjHandler_Tank_3D_Proj_SmallRed_Main__Damage; A014
; Otherwise, despawn.
        jmp     Obj_Despawn                     ; A016

; ----------------------------------------------------------------------------
_ObjHandler_Tank_3D_Proj_SmallRed_Main__Damage:
        lda     #$0C                            ; A019
; Test for contact with Player dealing #$0C damage on contact.
        jsr     Obj_TryDamagePlayer             ; A01B
        lda     #$00                            ; A01E
        sta     $44                             ; A020
        lda     #$25                            ; A022
        sta     $45                             ; A024
; Draw shot as single CHR pattern #$25 using OAM attributes no x-flip and sprite palette 0.
        jmp     OAM_Stage_Pattern               ; A026

; ----------------------------------------------------------------------------
; Burst into a Mid Explosion, then despawn
_ObjHandler_Tank_3D_Proj_SmallRed_Main__Explode:
        jsr     SpawnMidExplosion               ; A029
        jmp     Obj_Despawn                     ; A02C

; ----------------------------------------------------------------------------
L_A02F: jmp     L_A046                          ; A02F

; ----------------------------------------------------------------------------
L_A032: jsr     Step_RNG                           ; A032
        and     #$0F                            ; A035
        lsr     a                               ; A037
        bcc     L_A03F                          ; A038
        eor     #$FF                            ; A03A
        clc                                     ; A03C
        adc     #$01                            ; A03D
L_A03F: sta     LoadedObj + Obj::Velocity_X     ; A03F
        inc     LoadedObj + Obj::Type           ; A041
        jsr     PlaySound_23                    ; A043
L_A046: rts                                     ; A046

; ----------------------------------------------------------------------------
L_A047: jmp     L_A063                          ; A047

; ----------------------------------------------------------------------------
L_A04A: lda     #$40                            ; A04A
        sta     $42                             ; A04C
        lda     #$40                            ; A04E
        sta     $43                             ; A050
        lda     #$02                            ; A052
        jsr     Obj_GravityMoveBounce_Double    ; A054
        bne     L_A083                          ; A057
        jsr     Obj_Get_DeltaToPlayer_X_q12_4   ; A059
        bne     L_A063                          ; A05C
        jsr     Obj_Get_DeltaToPlayer_Y_q12_4   ; A05E
        beq     L_A083                          ; A061
L_A063: lda     #$08                            ; A063
        sta     $40                             ; A065
        lda     #$08                            ; A067
        sta     $41                             ; A069
        jsr     ScreenPos_Compute               ; A06B
        beq     L_A073                          ; A06E
        jmp     Obj_Despawn                     ; A070

; ----------------------------------------------------------------------------
L_A073: lda     #$08                            ; A073
        jsr     Obj_TryDamagePlayer             ; A075
        lda     #$00                            ; A078
        sta     $44                             ; A07A
        lda     #$54                            ; A07C
        sta     $45                             ; A07E
        jmp     OAM_Stage_Pattern               ; A080

; ----------------------------------------------------------------------------
L_A083: jsr     SpawnMidExplosion               ; A083
        jmp     Obj_Despawn                     ; A086

; ----------------------------------------------------------------------------
L_A089: jmp     L_A0B5                          ; A089

; ----------------------------------------------------------------------------
L_A08C: jsr     Obj_Get_DeltaToPlayer_X_q12_4                           ; A08C
        tay                                     ; A08F
        bpl     L_A097                          ; A090
        eor     #$FF                            ; A092
        clc                                     ; A094
        adc     #$01                            ; A095
L_A097: cmp     #$10                            ; A097
        bcs     L_A0B5                          ; A099
        cmp     #$0A                            ; A09B
        bcs     L_A0B5                          ; A09D
        tax                                     ; A09F
        lda     L_A0EB,x                        ; A0A0
        sta     LoadedObj + Obj::Facing         ; A0A3
        tya                                     ; A0A5
        bpl     L_A0AB                          ; A0A6
        jsr     _Obj_ReflectHeading__SideWall   ; A0A8
L_A0AB: ldy     #$30                            ; A0AB
        jsr     Obj_FacingToVelocity            ; A0AD
        inc     LoadedObj + Obj::Type           ; A0B0
        jsr     PlaySound_23                    ; A0B2
L_A0B5: rts                                     ; A0B5

; ----------------------------------------------------------------------------
L_A0B6: jmp     L_A0C8                          ; A0B6

; ----------------------------------------------------------------------------
L_A0B9: lda     #$40                            ; A0B9
        sta     $42                             ; A0BB
        lda     #$40                            ; A0BD
        sta     $43                             ; A0BF
        lda     #$02                            ; A0C1
        jsr     Obj_GravityMoveBounce_Double    ; A0C3
        bne     L_A0E5                          ; A0C6
L_A0C8: lda     #$0C                            ; A0C8
        sta     $40                             ; A0CA
        lda     #$0C                            ; A0CC
        sta     $41                             ; A0CE
        jsr     ScreenPos_Compute               ; A0D0
        bne     L_A0E8                          ; A0D3
        lda     #$20                            ; A0D5
        jsr     Obj_TryDamagePlayer             ; A0D7
        lda     #$00                            ; A0DA
        sta     $44                             ; A0DC
        lda     #$54                            ; A0DE
        sta     $45                             ; A0E0
        jmp     OAM_Stage_Pattern               ; A0E2

; ----------------------------------------------------------------------------
L_A0E5: jsr     SpawnMidExplosion               ; A0E5
L_A0E8: jmp     Obj_Despawn                           ; A0E8

; ----------------------------------------------------------------------------
L_A0EB: .byte   $C0,$C3,$C6,$C8,$CA,$CD,$D0,$D0 ; A0EB
        .byte   $D0,$D0,$D0                     ; A0F3
; ----------------------------------------------------------------------------
L_A0F6: jmp     L_A121                          ; A0F6

; ----------------------------------------------------------------------------
L_A0F9: lda     #$00                            ; A0F9
        sta     LoadedObj + Obj::Velocity_X     ; A0FB
        sta     LoadedObj + Obj::Velocity_Y     ; A0FD
        clc                                     ; A0FF
        lda     LoadedObj + Obj::Position_X_Lo  ; A100
        adc     #$08                            ; A102
        sta     LoadedObj + Obj::Position_X_Lo  ; A104
        bcc     L_A10A                          ; A106
        inc     LoadedObj + Obj::Position_X_Hi  ; A108
L_A10A: clc                                     ; A10A
        lda     LoadedObj + Obj::Position_Y_Lo  ; A10B
        adc     #$08                            ; A10D
        sta     LoadedObj + Obj::Position_Y_Lo  ; A10F
        bcc     L_A115                          ; A111
        inc     LoadedObj + Obj::Position_Y_Hi  ; A113
L_A115: lda     #$0A                            ; A115
        sta     LoadedObj + Obj::Scratch1       ; A117
        jsr     Obj_CalcTileIndex               ; A119
        inc     LoadedObj + Obj::Type           ; A11C
        jsr     PlaySound_23                    ; A11E
L_A121: rts                                     ; A121

; ----------------------------------------------------------------------------
L_A122: jmp     L_A13D                          ; A122

; ----------------------------------------------------------------------------
L_A125: lda     #$80                            ; A125
        sta     $42                             ; A127
        lda     #$80                            ; A129
        sta     $43                             ; A12B
        lda     LoadedObj + Obj::Scratch1       ; A12D
        beq     L_A136                          ; A12F
        dec     LoadedObj + Obj::Scratch1       ; A131
        jmp     L_A13D                          ; A133

; ----------------------------------------------------------------------------
L_A136: lda     #$03                            ; A136
        jsr     Obj_GravityMoveBounce_Double    ; A138
        bne     L_A15F                          ; A13B
L_A13D: lda     #$10                            ; A13D
        sta     $40                             ; A13F
        lda     #$10                            ; A141
        sta     $41                             ; A143
        jsr     ScreenPos_Compute               ; A145
        beq     L_A14D                          ; A148
        jmp     Obj_Despawn                     ; A14A

; ----------------------------------------------------------------------------
L_A14D: lda     #$20                            ; A14D
        jsr     Obj_TryDamagePlayer             ; A14F
        beq     L_A15F                          ; A152
        lda     #$00                            ; A154
        sta     $44                             ; A156
        lda     #$DA                            ; A158
        sta     $45                             ; A15A
        jmp     OAM_Stage_Pattern               ; A15C

; ----------------------------------------------------------------------------
L_A15F: jsr     SpawnBigExplosion_NoSound       ; A15F
        lda     #$27                            ; A162
        jsr     Enqueue_Sound_Command           ; A164
        lda     #$06                            ; A167
        jsr     TankEnemy_Init                  ; A169
        lda     #$63                            ; A16C
        sta     LoadedObj + Obj::Type           ; A16E
        lda     #$01                            ; A170
        sta     LoadedObj + Obj::Scratch0       ; A172
        lda     #$E8                            ; A174
        sta     LoadedObj + Obj::Velocity_Y     ; A176
        lda     #$11                            ; A178
        sta     LoadedObj + Obj::Velocity_X     ; A17A
        jsr     Obj_Get_DeltaToPlayer_X_q12_4   ; A17C
        bpl     L_A188                          ; A17F
        lda     #$00                            ; A181
        sec                                     ; A183
        sbc     LoadedObj + Obj::Velocity_X     ; A184
        sta     LoadedObj + Obj::Velocity_X     ; A186
L_A188: lda     #$00                            ; A188
        sta     LoadedObj + Obj::Scratch1       ; A18A
        sta     LoadedObj + Obj::Facing         ; A18C
        sta     LoadedObj + Obj::Scratch2       ; A18E
        rts                                     ; A190

; ----------------------------------------------------------------------------
; ObjType $44: Mine Shrapnel (Medium Red ballistic) - Init.
ObjHandler_Tank_44_Mine_Shrapnel_Init:
        jmp     _ObjHandler_Tank_44_Mine_Shrapnel_Init__Done; A191

; ----------------------------------------------------------------------------
_ObjHandler_Tank_44_Mine_Shrapnel_Init__Body:
        jsr     Step_RNG                        ; A194
        and     #$1F                            ; A197
        clc                                     ; A199
        adc     #$B0                            ; A19A
; Pick a random heading (Facing).
        sta     LoadedObj + Obj::Facing         ; A19C
; Set TTL (Scratch1) to #$40.
        lda     #$40                            ; A19E
        sta     LoadedObj + Obj::Scratch1       ; A1A0
; Set Velocity according to heading (Facing) and scalar #$20.
        ldy     #$20                            ; A1A2
        jsr     Obj_FacingToVelocity            ; A1A4
        jsr     Obj_CalcTileIndex               ; A1A7
; Calculate TileIndex and bump LoadedObj.Type to #$45, the Main state.
        inc     LoadedObj + Obj::Type           ; A1AA
_ObjHandler_Tank_44_Mine_Shrapnel_Init__Done:
        rts                                     ; A1AC

; ----------------------------------------------------------------------------
; ObjType $45: Mine Shrapnel (Medium Red ballistic) - Main.
ObjHandler_Tank_45_Mine_Shrapnel_Main:
        jmp     _ObjHandler_Tank_45_Ballistic_MineShrapnel_Main__OnScreenTest; A1AD

; ----------------------------------------------------------------------------
; Start by setting the collision box.
_ObjHandler_Tank_45_Mine_Shrapnel_Main__Body:
        lda     #$80                            ; A1B0
        sta     $42                             ; A1B2
        lda     #$80                            ; A1B4
        sta     $43                             ; A1B6
; Decrement the lifetime timer (Scratch1).
        dec     LoadedObj + Obj::Scratch1       ; A1B8
; If still alive, skip to Physics.
        bne     _ObjHandler_Tank_45_Ballistic_MineShrapnel_Main__Physics; A1BA
; Otherwise, despawn.
        jmp     Obj_Despawn                     ; A1BC

; ----------------------------------------------------------------------------
_ObjHandler_Tank_45_Ballistic_MineShrapnel_Main__Physics:
        lda     #$02                            ; A1BF
        ldx     #$00                            ; A1C1
; Update the Velocity under a gravity of 2px/f^2.
        jsr     Obj_Apply_Acceleration          ; A1C3
; Update the Position by applying Velocity_X/Y
        jsr     Obj_Apply_Velocity_X            ; A1C6
        jsr     Obj_Apply_Velocity_Y            ; A1C9
_ObjHandler_Tank_45_Ballistic_MineShrapnel_Main__OnScreenTest:
        lda     #$10                            ; A1CC
        sta     $40                             ; A1CE
        lda     #$10                            ; A1D0
        sta     $41                             ; A1D2
; Set bounding box and do on-screen test.
        jsr     ScreenPos_Compute               ; A1D4
; If off-screen, skip to Despawn.
        bne     _ObjHandler_Tank_45_Ballistic_MineShrapnel_Main__Despawn; A1D7
        lda     #$10                            ; A1D9
; Otherwise, do damage check using shared Obj_TryDamagePlayer with enemy descriptor #$10.
        jsr     Obj_TryDamagePlayer             ; A1DB
; On contact, skip to Defeat.
        beq     _ObjHandler_Tank_45_Ballistic_MineShrapnel_Main__Defeat; A1DE
        lda     #$00                            ; A1E0
        sta     $44                             ; A1E2
        lda     #$54                            ; A1E4
        sta     $45                             ; A1E6
; Otherwise, draw CHR pattern #$54.
        jmp     OAM_Stage_Pattern               ; A1E8

; ----------------------------------------------------------------------------
_ObjHandler_Tank_45_Ballistic_MineShrapnel_Main__Defeat:
        jsr     SpawnMidExplosion               ; A1EB
_ObjHandler_Tank_45_Ballistic_MineShrapnel_Main__Despawn:
        jmp     Obj_Despawn                     ; A1EE

; ----------------------------------------------------------------------------
; ObjType $46: Turret Shot (Medium Red ballistic) - Init.
ObjHandler_Tank_46_Turret_Shot_Init:
        jmp     _ObjHandler_Tank_46_Turret_Shot_Init__Done; A1F1

; ----------------------------------------------------------------------------
_ObjHandler_Tank_46_Turret_Shot_Init__Body:
        ldy     LoadedObj + Obj::Scratch1       ; A1F4
; Update Velocities according to LoadedObj.Facing and LoadedObj.Scratch1 (passed in from parent)
; as the scalar.
        jsr     Obj_FacingToVelocity            ; A1F6
; Set LoadedObj.TileIndex.
        jsr     Obj_CalcTileIndex               ; A1F9
; Increment ObjType to Main state.
        inc     LoadedObj + Obj::Type           ; A1FC
; Play firing SFX.
        jsr     PlaySound_23                    ; A1FE
; Init body terminal RTS; the +0 (render) entry JMPs here — this Init draws nothing.
_ObjHandler_Tank_46_Turret_Shot_Init__Done:
        rts                                     ; A201

; ----------------------------------------------------------------------------
; ObjType $47: Turret Shot (Medium Red ballistic) - Main.
ObjHandler_Tank_47_Turret_Shot_Main:
        jmp     _ObjHandler_Tank_47_Turret_Shot_Main__AfterPhysics; A202

; ----------------------------------------------------------------------------
; Start by setting collision box.
_ObjHandler_Tank_47_Turret_Shot_Main__Body:
        lda     #$40                            ; A205
        sta     $42                             ; A207
        lda     #$40                            ; A209
        sta     $43                             ; A20B
; Apply movement using gravity constant #$02.
        lda     #$02                            ; A20D
        jsr     Obj_GravityMoveBounce_Double    ; A20F
; On terrain hit, skip to Explode tail.
        bne     _ObjHandler_Tank_47_Turret_Shot_Main__Explode; A212
_ObjHandler_Tank_47_Turret_Shot_Main__AfterPhysics:
        lda     #$08                            ; A214
        sta     $40                             ; A216
        lda     #$08                            ; A218
        sta     $41                             ; A21A
; Do on-screen test.
        jsr     ScreenPos_Compute               ; A21C
; If off-screen, skip to Despawn.
        bne     _ObjHandler_Tank_47_Turret_Shot_Main__Despawn; A21F
        lda     #$08                            ; A221
; Otherwise, handle collisions with other objects.
        jsr     LD711                           ; A223
        lda     #$00                            ; A226
        sta     $44                             ; A228
        lda     #$54                            ; A22A
        sta     $45                             ; A22C
; Draw as single 8x8 pattern #$54 with Sprite Palette #$00.
        jmp     OAM_Stage_Pattern               ; A22E

; ----------------------------------------------------------------------------
_ObjHandler_Tank_47_Turret_Shot_Main__Explode:
        jsr     SpawnMidExplosion               ; A231
_ObjHandler_Tank_47_Turret_Shot_Main__Despawn:
        jmp     Obj_Despawn                     ; A234

; ----------------------------------------------------------------------------
; ObjType $48: Medium Red Projectile - Init.
; 
; Heading (Param_ProjectSpawn_Heading) and Speed (Param_ProjectSpawn_Speed) provided by spawn
; parent.
; Note: This can lead to race conditions when multiple parents uses the parameter variables on the
; same frame.
ObjHandler_Tank_48_Medium_Red_Projectile_Init:
        jmp     _ObjHandler_Tank_48_Medium_Red_Projectile_Init__Done; A237

; ----------------------------------------------------------------------------
_ObjHandler_Tank_48_Medium_Red_Projectile_Init__Body:
        lda     $9D                             ; A23A
; Set LoadedObj.Facing = Param_ProjectSpawn_Heading
        sta     LoadedObj + Obj::Facing         ; A23C
        lda     $9E                             ; A23E
        tay                                     ; A240
; Set LoadedObj.Velocity_X/Y based on Facing heading and scalar Y
        jsr     Obj_FacingToVelocity            ; A241
; Set LoadedObj.TileIndex.
        jsr     Obj_CalcTileIndex               ; A244
; Increment LoadedObj.Type to Main state.
        inc     LoadedObj + Obj::Type           ; A247
; Play launch SFX.
        jsr     PlaySound_23                    ; A249
_ObjHandler_Tank_48_Medium_Red_Projectile_Init__Done:
        rts                                     ; A24C

; ----------------------------------------------------------------------------
; ObjType $49: Medium Red Projectile - Main.
ObjHandler_Tank_49_Medium_Red_Projectile_Main:
        jmp     _ObjHandler_Tank_49_Medium_Red_Projectile_Main__Render__; A24D

; ----------------------------------------------------------------------------
; Start by setting collision box.
_ObjHandler_Tank_49_Medium_Red_Projectile_Main__Body:
        lda     #$40                            ; A250
        sta     $42                             ; A252
        lda     #$40                            ; A254
        sta     $43                             ; A256
; Apply movement and collisions.
        jsr     Obj_MoveAndCollide              ; A258
; On a collision, skip to HitExplode.
        bne     _ObjHandler_Tank_49_Medium_Red_Projectile_Main__HitExplode; A25B
_ObjHandler_Tank_49_Medium_Red_Projectile_Main__Render__:
        lda     #$08                            ; A25D
        sta     $40                             ; A25F
        lda     #$08                            ; A261
        sta     $41                             ; A263
; Run on-screen test.
        jsr     ScreenPos_Compute               ; A265
; If off-screen, skip to Despawn.
        bne     _ObjHandler_Tank_49_Medium_Red_Projectile_Main__Despawn; A268
        lda     #$20                            ; A26A
; Otherwise, handle collisions with Player.
        jsr     LD711                           ; A26C
        lda     #$00                            ; A26F
        sta     $44                             ; A271
        lda     #$54                            ; A273
        sta     $45                             ; A275
; Draw pattern #$54 with palette OAM attributes #$00 (no flips, palette 0).
        jmp     OAM_Stage_Pattern               ; A277

; ----------------------------------------------------------------------------
_ObjHandler_Tank_49_Medium_Red_Projectile_Main__HitExplode:
        jsr     SpawnMidExplosion               ; A27A
_ObjHandler_Tank_49_Medium_Red_Projectile_Main__Despawn:
        jmp     Obj_Despawn                     ; A27D

.endmacro

