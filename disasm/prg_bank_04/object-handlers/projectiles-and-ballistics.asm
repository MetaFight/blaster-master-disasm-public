.macro MAC_object_handlers__projectiles_and_ballistics_1_of_7
; ----------------------------------------------------------------------------
L_8F54: jmp     L_8F96                          ; 8F54

; ----------------------------------------------------------------------------
L_8F57: lda     ObjectSlot_Index                ; 8F57
        cmp     #$04                            ; 8F59
        bcs     L_8F97                          ; 8F5B
        lda     $BB                             ; 8F5D
        cmp     #$02                            ; 8F5F
        bcs     L_8F69                          ; 8F61
        lda     ObjectSlot_Index                ; 8F63
        cmp     #$03                            ; 8F65
        bcs     L_8F97                          ; 8F67
L_8F69: jsr     L_8E95                          ; 8F69
        ldx     LoadedObj + Obj::Facing         ; 8F6C
        lda     L8F9B,x                         ; 8F6E
        sta     LoadedObj + Obj::Velocity_X     ; 8F71
        lda     L_8F9A,x                        ; 8F73
        sta     LoadedObj + Obj::Velocity_Y     ; 8F76
        jmp     L_8F8B                          ; 8F78

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

; ----------------------------------------------------------------------------
L_8F97: jmp     LC114                           ; 8F97

.endmacro

; Interrupted by 1 macro:
;   MAC__ungrouped_3_of_12

.macro MAC_object_handlers__projectiles_and_ballistics_2_of_7
; ----------------------------------------------------------------------------
L_8F9F: jmp     L_8FB8                          ; 8F9F

; ----------------------------------------------------------------------------
L_8FA2: lda     #$80                            ; 8FA2
        sta     $42                             ; 8FA4
        lda     #$80                            ; 8FA6
        sta     $43                             ; 8FA8
        dec     LoadedObj + Obj::Scratch1       ; 8FAA
        bne     L_8FB8                          ; 8FAC
        lda     $BB                             ; 8FAE
        bne     L_8FB6                          ; 8FB0
        lda     #$0A                            ; 8FB2
        sta     LoadedObj + Obj::Scratch1       ; 8FB4
L_8FB6: inc     LoadedObj + Obj::Type           ; 8FB6
L_8FB8: lda     #$10                            ; 8FB8
        sta     $40                             ; 8FBA
        lda     #$10                            ; 8FBC
        sta     $41                             ; 8FBE
L_8FC0: jmp     L_8FD8                          ; 8FC0

; ----------------------------------------------------------------------------
L_8FC3: lda     #$40                            ; 8FC3
        sta     $42                             ; 8FC5
        lda     #$40                            ; 8FC7
        sta     $43                             ; 8FC9
        jsr     LC024                           ; 8FCB
        jsr     L_8FF3                          ; 8FCE
        jsr     L_9007                          ; 8FD1
        dec     LoadedObj + Obj::Scratch1       ; 8FD4
        beq     L_8FF0                          ; 8FD6
L_8FD8: lda     #$10                            ; 8FD8
        sta     $40                             ; 8FDA
        lda     #$10                            ; 8FDC
        sta     $41                             ; 8FDE
        jsr     LC0FF                           ; 8FE0
        bne     L_8FF0                          ; 8FE3
        lda     #$01                            ; 8FE5
        jsr     LC1E6                           ; 8FE7
        bmi     L_8FF0                          ; 8FEA
        jsr     L_8F21                          ; 8FEC
        rts                                     ; 8FEF

; ----------------------------------------------------------------------------
L_8FF0: jmp     LC117                           ; 8FF0

.endmacro

; Interrupted by 1 macro:
;   MAC__ungrouped_4_of_12

.macro MAC_object_handlers__projectiles_and_ballistics_3_of_7
; ----------------------------------------------------------------------------
L_9011: jmp     L_903A                          ; 9011

; ----------------------------------------------------------------------------
L_9014: lda     ObjectSlot_Index                ; 9014
        cmp     #$01                            ; 9016
        bne     L_901F                          ; 9018
        lda     #$06                            ; 901A
        sta     LoadedObj + Obj::Type           ; 901C
        rts                                     ; 901E

; ----------------------------------------------------------------------------
L_901F: cmp     #$05                            ; 901F
        bcc     L_9026                          ; 9021
        jmp     LC114                           ; 9023

; ----------------------------------------------------------------------------
L_9026: jsr     L_8E95                          ; 9026
        lda     #$00                            ; 9029
        sta     LoadedObj + Obj::Velocity_X     ; 902B
        sta     LoadedObj + Obj::Velocity_Y     ; 902D
        lda     #$03                            ; 902F
        sta     LoadedObj + Obj::Scratch1       ; 9031
        inc     LoadedObj + Obj::Type           ; 9033
        lda     #$1B                            ; 9035
        jsr     LC216                           ; 9037
L_903A: rts                                     ; 903A

; ----------------------------------------------------------------------------
L_903B: jmp     L_9060                          ; 903B

; ----------------------------------------------------------------------------
L_903E: lda     #$40                            ; 903E
        sta     $42                             ; 9040
        lda     #$40                            ; 9042
        sta     $43                             ; 9044
        dec     LoadedObj + Obj::Scratch1       ; 9046
        bne     L_9060                          ; 9048
        inc     LoadedObj + Obj::Type           ; 904A
        lda     #$04                            ; 904C
        sta     LoadedObj + Obj::Scratch1       ; 904E
        lda     #$20                            ; 9050
        sta     LoadedObj + Obj::Scratch0       ; 9052
        lda     #$00                            ; 9054
        sta     LoadedObj + Obj::Health         ; 9056
        ldx     LoadedObj + Obj::Facing         ; 9058
        lda     L_906B,x                        ; 905A
        sta     LoadedObj + Obj::Facing         ; 905D
        rts                                     ; 905F

; ----------------------------------------------------------------------------
L_9060: lda     #$10                            ; 9060
        sta     $40                             ; 9062
        lda     #$10                            ; 9064
        sta     $41                             ; 9066
        jmp     L_8ECE                          ; 9068

; ----------------------------------------------------------------------------
L_906B: .byte   $C0,$00,$40,$80                 ; 906B
; ----------------------------------------------------------------------------
L_906F: jmp     L_90C2                          ; 906F

; ----------------------------------------------------------------------------
L_9072: lda     #$40                            ; 9072
        sta     $42                             ; 9074
        lda     #$40                            ; 9076
        sta     $43                             ; 9078
        jsr     L_8FF3                          ; 907A
        jsr     L_9007                          ; 907D
        dec     LoadedObj + Obj::Health         ; 9080
        beq     L_90E8                          ; 9082
        lda     $BB                             ; 9084
        lsr     a                               ; 9086
        bcc     L_908C                          ; 9087
        jsr     LC01E                           ; 9089
L_908C: jsr     LC024                           ; 908C
        lda     Global_FrameCounter             ; 908F
        lsr     a                               ; 9091
        bcs     L_90A2                          ; 9092
        dec     LoadedObj + Obj::Scratch0       ; 9094
        bne     L_90A2                          ; 9096
        lda     #$18                            ; 9098
        sta     LoadedObj + Obj::Scratch0       ; 909A
        dec     LoadedObj + Obj::Scratch1       ; 909C
        bne     L_90A2                          ; 909E
        inc     LoadedObj + Obj::Scratch1       ; 90A0
L_90A2: lda     ObjectSlot_Index                ; 90A2
        lsr     a                               ; 90A4
        bcs     L_90AF                          ; 90A5
        lda     LoadedObj + Obj::Facing         ; 90A7
        clc                                     ; 90A9
        adc     LoadedObj + Obj::Scratch1       ; 90AA
        jmp     L_90B4                          ; 90AC

; ----------------------------------------------------------------------------
L_90AF: lda     LoadedObj + Obj::Facing         ; 90AF
        sec                                     ; 90B1
        sbc     LoadedObj + Obj::Scratch1       ; 90B2
L_90B4: sta     LoadedObj + Obj::Facing         ; 90B4
        pha                                     ; 90B6
        jsr     LC0CC                           ; 90B7
        sta     LoadedObj + Obj::Velocity_X     ; 90BA
        pla                                     ; 90BC
        jsr     LC201                           ; 90BD
        sta     LoadedObj + Obj::Velocity_Y     ; 90C0
L_90C2: lda     #$10                            ; 90C2
        sta     $40                             ; 90C4
        lda     #$10                            ; 90C6
        sta     $41                             ; 90C8
        jsr     LC0FF                           ; 90CA
        bne     L_90E8                          ; 90CD
        lda     #$01                            ; 90CF
        jsr     LC1E6                           ; 90D1
        lda     LoadedObj + Obj::Facing         ; 90D4
        pha                                     ; 90D6
        clc                                     ; 90D7
        adc     #$60                            ; 90D8
        asl     a                               ; 90DA
        rol     a                               ; 90DB
        rol     a                               ; 90DC
        and     #$03                            ; 90DD
        sta     LoadedObj + Obj::Facing         ; 90DF
        jsr     L_8F21                          ; 90E1
        pla                                     ; 90E4
        sta     LoadedObj + Obj::Facing         ; 90E5
        rts                                     ; 90E7

; ----------------------------------------------------------------------------
L_90E8: jmp     LC117                           ; 90E8

; ----------------------------------------------------------------------------
L_90EB: jmp     L_9114                          ; 90EB

; ----------------------------------------------------------------------------
L_90EE: jsr     L_8E95                          ; 90EE
        ldx     LoadedObj + Obj::Facing         ; 90F1
        lda     L9116,x                         ; 90F3
        sta     LoadedObj + Obj::Velocity_X     ; 90F6
        lda     L_9115,x                        ; 90F8
        sta     LoadedObj + Obj::Velocity_Y     ; 90FB
        lda     #$03                            ; 90FD
        sta     LoadedObj + Obj::Scratch1       ; 90FF
        inc     LoadedObj + Obj::Type           ; 9101
        lda     Player_GunLevel                 ; 9103
        cmp     #$07                            ; 9105
        beq     L_910F                          ; 9107
        lda     #$1C                            ; 9109
        jsr     LC216                           ; 910B
        rts                                     ; 910E

; ----------------------------------------------------------------------------
L_910F: lda     #$4F                            ; 910F
        jsr     LC216                           ; 9111
L_9114: rts                                     ; 9114

; ----------------------------------------------------------------------------
L_9115: .byte   $C0                             ; 9115
L9116:  .byte   $00,$40,$00,$C0                 ; 9116
; ----------------------------------------------------------------------------
L_911A: jmp     L_9137                          ; 911A

; ----------------------------------------------------------------------------
L_911D: lda     #$80                            ; 911D
        sta     $42                             ; 911F
        lda     #$80                            ; 9121
        sta     $43                             ; 9123
        dec     LoadedObj + Obj::Scratch1       ; 9125
        bne     L_9137                          ; 9127
        lda     Global_FrameCounter             ; 9129
        asl     a                               ; 912B
        asl     a                               ; 912C
        asl     a                               ; 912D
        asl     a                               ; 912E
        sta     LoadedObj + Obj::Scratch1       ; 912F
        lda     #$30                            ; 9131
        sta     LoadedObj + Obj::Scratch0       ; 9133
        inc     LoadedObj + Obj::Type           ; 9135
L_9137: lda     #$10                            ; 9137
        sta     $40                             ; 9139
        lda     #$10                            ; 913B
        sta     $41                             ; 913D
        jmp     L_8ECE                          ; 913F

; ----------------------------------------------------------------------------
L_9142: rts                                     ; 9142

; ----------------------------------------------------------------------------
L_9143: .byte   $EA,$EA                         ; 9143
; ----------------------------------------------------------------------------
L_9145: lda     $BB                             ; 9145
        cmp     #$07                            ; 9147
        beq     L_9151                          ; 9149
        jsr     LC01E                           ; 914B
        jmp     L_9154                          ; 914E

; ----------------------------------------------------------------------------
L_9151: jsr     LC024                           ; 9151
L_9154: dec     LoadedObj + Obj::Scratch0       ; 9154
        dec     LoadedObj + Obj::Scratch0       ; 9156
        lda     #$03                            ; 9158
        cmp     LoadedObj + Obj::Scratch0       ; 915A
        bcc     L_9160                          ; 915C
        sta     LoadedObj + Obj::Scratch0       ; 915E
L_9160: lda     LoadedObj + Obj::Scratch1       ; 9160
        clc                                     ; 9162
        adc     LoadedObj + Obj::Scratch0       ; 9163
        sta     LoadedObj + Obj::Scratch1       ; 9165
        lda     LoadedObj + Obj::Position_X_Hi  ; 9167
        pha                                     ; 9169
        lda     LoadedObj + Obj::Position_X_Lo  ; 916A
        pha                                     ; 916C
        lda     LoadedObj + Obj::Position_Y_Hi  ; 916D
        pha                                     ; 916F
        lda     LoadedObj + Obj::Position_Y_Lo  ; 9170
        pha                                     ; 9172
        lda     LoadedObj + Obj::Facing         ; 9173
        lsr     a                               ; 9175
        bcs     L_918E                          ; 9176
        lda     LoadedObj + Obj::Scratch1       ; 9178
        jsr     LC0CC                           ; 917A
        jsr     L_91F2                          ; 917D
        clc                                     ; 9180
        adc     LoadedObj + Obj::Position_X_Lo  ; 9181
        sta     LoadedObj + Obj::Position_X_Lo  ; 9183
        lda     $45                             ; 9185
        adc     LoadedObj + Obj::Position_X_Hi  ; 9187
        sta     LoadedObj + Obj::Position_X_Hi  ; 9189
        jmp     L_91A1                          ; 918B

; ----------------------------------------------------------------------------
L_918E: lda     LoadedObj + Obj::Scratch1       ; 918E
        jsr     LC201                           ; 9190
        jsr     L_91F2                          ; 9193
        clc                                     ; 9196
        adc     LoadedObj + Obj::Position_Y_Lo  ; 9197
        sta     LoadedObj + Obj::Position_Y_Lo  ; 9199
        lda     $45                             ; 919B
        adc     LoadedObj + Obj::Position_Y_Hi  ; 919D
        sta     LoadedObj + Obj::Position_Y_Hi  ; 919F
L_91A1: jsr     LC1EC                           ; 91A1
        jsr     L_8FF3                          ; 91A4
        lda     $BB                             ; 91A7
        cmp     #$07                            ; 91A9
        bne     L_91B3                          ; 91AB
        lda     #$0E                            ; 91AD
        sta     LoadedObj + Obj::Type           ; 91AF
        bne     L_91BE                          ; 91B1
L_91B3: lda     LoadedObj + Obj::Type           ; 91B3
        cmp     #$0E                            ; 91B5
        beq     L_91BE                          ; 91B7
        pla                                     ; 91B9
        pla                                     ; 91BA
        pla                                     ; 91BB
        pla                                     ; 91BC
        rts                                     ; 91BD

; ----------------------------------------------------------------------------
L_91BE: lda     #$08                            ; 91BE
        sta     $40                             ; 91C0
        lda     #$08                            ; 91C2
        sta     $41                             ; 91C4
        jsr     LC0FF                           ; 91C6
        bne     L_91EB                          ; 91C9
        pla                                     ; 91CB
        sta     LoadedObj + Obj::Position_Y_Lo  ; 91CC
        pla                                     ; 91CE
        sta     LoadedObj + Obj::Position_Y_Hi  ; 91CF
        pla                                     ; 91D1
        sta     LoadedObj + Obj::Position_X_Lo  ; 91D2
        pla                                     ; 91D4
        sta     LoadedObj + Obj::Position_X_Hi  ; 91D5
        jsr     L_9007                          ; 91D7
        lda     #$02                            ; 91DA
        jsr     LC1E6                           ; 91DC
        bpl     L_91E7                          ; 91DF
        lda     $BB                             ; 91E1
        cmp     #$07                            ; 91E3
        bcc     L_91EF                          ; 91E5
L_91E7: jsr     L_8F21                          ; 91E7
        rts                                     ; 91EA

; ----------------------------------------------------------------------------
L_91EB: pla                                     ; 91EB
        pla                                     ; 91EC
        pla                                     ; 91ED
        pla                                     ; 91EE
L_91EF: jmp     LC117                           ; 91EF

.endmacro

; Interrupted by 1 macro:
;   MAC__ungrouped_5_of_12

.macro MAC_object_handlers__projectiles_and_ballistics_4_of_7
; ----------------------------------------------------------------------------
L_920B: jmp     L_9236                          ; 920B

; ----------------------------------------------------------------------------
L_920E: lda     LoadedObj + Obj::Facing         ; 920E
        and     #$03                            ; 9210
        sta     LoadedObj + Obj::Facing         ; 9212
        tax                                     ; 9214
        lda     L9238,x                         ; 9215
        clc                                     ; 9218
        adc     PlayerSlot + Obj::Velocity_X    ; 9219
        sta     LoadedObj + Obj::Velocity_X     ; 921C
        lda     L_9237,x                        ; 921E
        clc                                     ; 9221
        adc     PlayerSlot + Obj::Velocity_Y    ; 9222
        sta     LoadedObj + Obj::Velocity_Y     ; 9225
        lda     #$03                            ; 9227
        sta     LoadedObj + Obj::Scratch1       ; 9229
        lda     #$08                            ; 922B
        sta     LoadedObj + Obj::Scratch0       ; 922D
        inc     LoadedObj + Obj::Type           ; 922F
        lda     #$35                            ; 9231
        jsr     LC216                           ; 9233
L_9236: rts                                     ; 9236

.endmacro

; Interrupted by 1 macro:
;   MAC__ungrouped_6_of_12

.macro MAC_object_handlers__projectiles_and_ballistics_5_of_7
; ----------------------------------------------------------------------------
L_923C: jmp     L_926E                          ; 923C

; ----------------------------------------------------------------------------
L_923F: lda     #$40                            ; 923F
        sta     $42                             ; 9241
        lda     #$40                            ; 9243
        sta     $43                             ; 9245
        jsr     LC024                           ; 9247
        lda     LoadedObj + Obj::Facing         ; 924A
        lsr     a                               ; 924C
        bcc     L_9255                          ; 924D
        jsr     LC015                           ; 924F
        jmp     L_9258                          ; 9252

; ----------------------------------------------------------------------------
L_9255: jsr     LC018                           ; 9255
L_9258: beq     L_9260                          ; 9258
        lda     #$00                            ; 925A
        sta     LoadedObj + Obj::Velocity_X     ; 925C
        sta     LoadedObj + Obj::Velocity_Y     ; 925E
L_9260: dec     LoadedObj + Obj::Scratch1       ; 9260
        lda     LoadedObj + Obj::Scratch1       ; 9262
        jsr     LC0F0                           ; 9264
        clc                                     ; 9267
        adc     LoadedObj + Obj::Scratch0       ; 9268
        sta     LoadedObj + Obj::Scratch0       ; 926A
        bmi     L_92A3                          ; 926C
L_926E: lda     #$10                            ; 926E
        sta     $40                             ; 9270
        lda     #$10                            ; 9272
        sta     $41                             ; 9274
        jsr     LC0FF                           ; 9276
        beq     L_927E                          ; 9279
        jmp     LC117                           ; 927B

; ----------------------------------------------------------------------------
L_927E: jsr     LC138                           ; 927E
        jsr     LC0A2                           ; 9281
        beq     L_9291                          ; 9284
        lda     #$00                            ; 9286
        sta     $44                             ; 9288
        lda     #$4C                            ; 928A
        sta     $45                             ; 928C
        jsr     LC1AD                           ; 928E
L_9291: lda     $3F                             ; 9291
        sec                                     ; 9293
        sbc     LoadedObj + Obj::Scratch0       ; 9294
        bcs     L_929A                          ; 9296
        lda     #$F0                            ; 9298
L_929A: sta     $3F                             ; 929A
        lda     #$3C                            ; 929C
        sta     $45                             ; 929E
        jmp     LC1AD                           ; 92A0

; ----------------------------------------------------------------------------
L_92A3: lda     #$11                            ; 92A3
        sta     LoadedObj + Obj::Type           ; 92A5
        lda     #$09                            ; 92A7
        sta     LoadedObj + Obj::Scratch1       ; 92A9
        rts                                     ; 92AB

.endmacro

; Interrupted by 4 macros:
;   MAC_object_handlers__explosions
;   MAC__ungrouped_7_of_12
;   MAC_object_handlers__pickups_1_of_2
;   MAC_object_handlers__bosses_1_of_2

.macro MAC_object_handlers__projectiles_and_ballistics_6_of_7
; ----------------------------------------------------------------------------
L_AF45: jmp     L_AF66                          ; AF45

; ----------------------------------------------------------------------------
L_AF48: lda     LoadedObj + Obj::Scratch0       ; AF48
        asl     a                               ; AF4A
        asl     a                               ; AF4B
        asl     a                               ; AF4C
        asl     a                               ; AF4D
        asl     a                               ; AF4E
        asl     a                               ; AF4F
        sta     LoadedObj + Obj::Scratch2       ; AF50
        lda     #$10                            ; AF52
        sta     LoadedObj + Obj::Scratch1       ; AF54
        lda     #$00                            ; AF56
        sta     LoadedObj + Obj::Velocity_X     ; AF58
        sta     LoadedObj + Obj::Velocity_Y     ; AF5A
        inc     LoadedObj + Obj::Type           ; AF5C
        jsr     LC1EC                           ; AF5E
        lda     #$1B                            ; AF61
        jsr     LC216                           ; AF63
L_AF66: rts                                     ; AF66

; ----------------------------------------------------------------------------
L_AF67: jmp     L_AF99                          ; AF67

; ----------------------------------------------------------------------------
L_AF6A: lda     #$80                            ; AF6A
        sta     $42                             ; AF6C
        lda     #$80                            ; AF6E
        sta     $43                             ; AF70
        lda     Global_FrameCounter             ; AF72
        and     #$03                            ; AF74
        cmp     LoadedObj + Obj::Scratch0       ; AF76
        bne     L_AF96                          ; AF78
        clc                                     ; AF7A
        lda     LoadedObj + Obj::Scratch1       ; AF7B
        adc     #$03                            ; AF7D
        sta     LoadedObj + Obj::Scratch1       ; AF7F
        cmp     #$70                            ; AF81
        bcc     L_AF88                          ; AF83
        jmp     LC114                           ; AF85

; ----------------------------------------------------------------------------
L_AF88: lda     Global_FrameCounter             ; AF88
        asl     a                               ; AF8A
        asl     a                               ; AF8B
        clc                                     ; AF8C
        adc     LoadedObj + Obj::Scratch2       ; AF8D
        sta     LoadedObj + Obj::Facing         ; AF8F
        ldy     LoadedObj + Obj::Scratch1       ; AF91
        jsr     LC1EF                           ; AF93
L_AF96: jsr     LC01E                           ; AF96
L_AF99: lda     #$10                            ; AF99
        sta     $40                             ; AF9B
        lda     #$10                            ; AF9D
        sta     $41                             ; AF9F
        jsr     LC0FF                           ; AFA1
        beq     L_AFA9                          ; AFA4
        jmp     LC114                           ; AFA6

; ----------------------------------------------------------------------------
L_AFA9: lda     #$20                            ; AFA9
        jsr     LC147                           ; AFAB
        lda     #$00                            ; AFAE
        sta     $44                             ; AFB0
        lda     #$4E                            ; AFB2
        sta     $45                             ; AFB4
        jmp     LC1AD                           ; AFB6

; ----------------------------------------------------------------------------
L_AFB9: jmp     L_AFF5                          ; AFB9

; ----------------------------------------------------------------------------
L_AFBC: inc     LoadedObj + Obj::Type           ; AFBC
        jsr     LC1EC                           ; AFBE
        lda     LoadedObj + Obj::Scratch0       ; AFC1
        beq     L_AFCF                          ; AFC3
        lda     #$20                            ; AFC5
        sta     LoadedObj + Obj::Velocity_X     ; AFC7
        lda     #$00                            ; AFC9
        sta     LoadedObj + Obj::Velocity_Y     ; AFCB
        beq     L_AFD7                          ; AFCD
L_AFCF: lda     #$00                            ; AFCF
        sta     LoadedObj + Obj::Velocity_X     ; AFD1
        lda     #$20                            ; AFD3
        sta     LoadedObj + Obj::Velocity_Y     ; AFD5
L_AFD7: jsr     LC12F                           ; AFD7
        beq     L_AFF5                          ; AFDA
        lda     LoadedObj + Obj::Velocity_X     ; AFDC
        eor     #$FF                            ; AFDE
        clc                                     ; AFE0
        adc     #$01                            ; AFE1
        sta     ObjectTable + Obj::Velocity_X,x ; AFE3
        lda     LoadedObj + Obj::Velocity_Y     ; AFE6
        eor     #$FF                            ; AFE8
        clc                                     ; AFEA
        adc     #$01                            ; AFEB
        sta     ObjectTable + Obj::Velocity_Y,x ; AFED
        lda     #$1B                            ; AFF0
        jsr     LC216                           ; AFF2
L_AFF5: rts                                     ; AFF5

; ----------------------------------------------------------------------------
L_AFF6: jmp     L_B009                          ; AFF6

; ----------------------------------------------------------------------------
L_AFF9: lda     #$80                            ; AFF9
        sta     $42                             ; AFFB
        lda     #$80                            ; AFFD
        sta     $43                             ; AFFF
        jsr     LC024                           ; B001
        jsr     LC138                           ; B004
        bmi     L_B029                          ; B007
L_B009: lda     #$10                            ; B009
        sta     $40                             ; B00B
        lda     #$10                            ; B00D
        sta     $41                             ; B00F
        jsr     LC0FF                           ; B011
        beq     L_B019                          ; B014
        jmp     LC114                           ; B016

; ----------------------------------------------------------------------------
L_B019: lda     #$20                            ; B019
        jsr     LC147                           ; B01B
        lda     #$00                            ; B01E
        sta     $44                             ; B020
        lda     #$4E                            ; B022
        sta     $45                             ; B024
        jmp     LC1AD                           ; B026

; ----------------------------------------------------------------------------
L_B029: jsr     L_9329                          ; B029
        jmp     LC114                           ; B02C

; ----------------------------------------------------------------------------
L_B02F: jmp     L_B040                          ; B02F

; ----------------------------------------------------------------------------
L_B032: lda     #$40                            ; B032
        sta     LoadedObj + Obj::Velocity_Y     ; B034
        inc     LoadedObj + Obj::Type           ; B036
        jsr     LC1EC                           ; B038
        lda     #$52                            ; B03B
        jsr     LC216                           ; B03D
L_B040: rts                                     ; B040

; ----------------------------------------------------------------------------
L_B041: jmp     L_B054                          ; B041

; ----------------------------------------------------------------------------
L_B044: lda     #$80                            ; B044
        sta     $42                             ; B046
        lda     #$80                            ; B048
        sta     $43                             ; B04A
        jsr     LC030                           ; B04C
        beq     L_B054                          ; B04F
        jmp     LC114                           ; B051

; ----------------------------------------------------------------------------
L_B054: lda     #$10                            ; B054
        sta     $40                             ; B056
        lda     #$10                            ; B058
        sta     $41                             ; B05A
        jsr     LC0FF                           ; B05C
        beq     L_B064                          ; B05F
        jmp     LC114                           ; B061

; ----------------------------------------------------------------------------
L_B064: lda     #$20                            ; B064
        jsr     LC147                           ; B066
        lda     #$03                            ; B069
        sta     $44                             ; B06B
        lda     #$DB                            ; B06D
        sta     $45                             ; B06F
        jmp     LC1AD                           ; B071

; ----------------------------------------------------------------------------
L_B074: jmp     L_B08A                          ; B074

; ----------------------------------------------------------------------------
L_B077: lda     LoadedObj + Obj::Scratch1       ; B077
        sta     LoadedObj + Obj::Facing         ; B079
        ldy     #$11                            ; B07B
        jsr     LC1EF                           ; B07D
        inc     LoadedObj + Obj::Type           ; B080
        jsr     LC1EC                           ; B082
        lda     #$1B                            ; B085
        jsr     LC216                           ; B087
L_B08A: rts                                     ; B08A

; ----------------------------------------------------------------------------
L_B08B: jmp     L_B09E                          ; B08B

; ----------------------------------------------------------------------------
L_B08E: lda     #$80                            ; B08E
        sta     $42                             ; B090
        lda     #$80                            ; B092
        sta     $43                             ; B094
        jsr     LC030                           ; B096
        beq     L_B09E                          ; B099
        jmp     LC114                           ; B09B

; ----------------------------------------------------------------------------
L_B09E: lda     #$10                            ; B09E
        sta     $40                             ; B0A0
        lda     #$10                            ; B0A2
        sta     $41                             ; B0A4
        jsr     LC0FF                           ; B0A6
        beq     L_B0AE                          ; B0A9
        jmp     LC114                           ; B0AB

; ----------------------------------------------------------------------------
L_B0AE: lda     #$20                            ; B0AE
        jsr     LC147                           ; B0B0
        lda     #$00                            ; B0B3
        sta     $44                             ; B0B5
        lda     #$4E                            ; B0B7
        sta     $45                             ; B0B9
        jmp     LC1AD                           ; B0BB

; ----------------------------------------------------------------------------
L_B0BE: jmp     L_B0CB                          ; B0BE

; ----------------------------------------------------------------------------
L_B0C1: ldy     #$18                            ; B0C1
        jsr     LC1EF                           ; B0C3
        inc     LoadedObj + Obj::Type           ; B0C6
        jsr     LC1EC                           ; B0C8
L_B0CB: rts                                     ; B0CB

; ----------------------------------------------------------------------------
L_B0CC: jmp     L_B0DF                          ; B0CC

; ----------------------------------------------------------------------------
L_B0CF: lda     #$80                            ; B0CF
        sta     $42                             ; B0D1
        lda     #$80                            ; B0D3
        sta     $43                             ; B0D5
        jsr     LC030                           ; B0D7
        beq     L_B0DF                          ; B0DA
        jmp     LC114                           ; B0DC

; ----------------------------------------------------------------------------
L_B0DF: lda     #$10                            ; B0DF
        sta     $40                             ; B0E1
        lda     #$10                            ; B0E3
        sta     $41                             ; B0E5
        jsr     LC0FF                           ; B0E7
        beq     L_B0EF                          ; B0EA
        jmp     LC114                           ; B0EC

; ----------------------------------------------------------------------------
L_B0EF: lda     #$20                            ; B0EF
        jsr     LC147                           ; B0F1
        lda     #$00                            ; B0F4
        sta     $44                             ; B0F6
        lda     #$4E                            ; B0F8
        sta     $45                             ; B0FA
        jmp     LC1AD                           ; B0FC

; ----------------------------------------------------------------------------
L_B0FF: jmp     L_B131                          ; B0FF

; ----------------------------------------------------------------------------
L_B102: inc     LoadedObj + Obj::Type           ; B102
        jsr     LC0FF                           ; B104
        lda     $3E                             ; B107
        sta     $00                             ; B109
        lda     $3F                             ; B10B
        sta     $01                             ; B10D
        lda     $7C                             ; B10F
        sta     $02                             ; B111
        lda     $7D                             ; B113
        sta     $03                             ; B115
        jsr     LC05D                           ; B117
        lda     LoadedObj + Obj::Velocity_Y     ; B11A
        ldx     #$01                            ; B11C
        jsr     LC20A                           ; B11E
        sta     LoadedObj + Obj::Velocity_Y     ; B121
        lda     LoadedObj + Obj::Velocity_X     ; B123
        ldx     #$01                            ; B125
        jsr     LC20A                           ; B127
        sta     LoadedObj + Obj::Velocity_X     ; B12A
        lda     #$1A                            ; B12C
        jsr     LC216                           ; B12E
L_B131: rts                                     ; B131

; ----------------------------------------------------------------------------
L_B132: jmp     L_B14B                          ; B132

; ----------------------------------------------------------------------------
L_B135: lda     #$40                            ; B135
        sta     $42                             ; B137
        lda     #$40                            ; B139
        sta     $43                             ; B13B
        jsr     LC01E                           ; B13D
        jsr     LC138                           ; B140
        bpl     L_B14B                          ; B143
        jsr     L_9333                          ; B145
        jmp     LC114                           ; B148

; ----------------------------------------------------------------------------
L_B14B: lda     #$08                            ; B14B
        sta     $40                             ; B14D
        lda     #$08                            ; B14F
        sta     $41                             ; B151
        jsr     LC0FF                           ; B153
        beq     L_B15B                          ; B156
        jmp     LC114                           ; B158

; ----------------------------------------------------------------------------
L_B15B: lda     #$08                            ; B15B
        jsr     LC147                           ; B15D
        lda     #$00                            ; B160
        sta     $44                             ; B162
        lda     #$4E                            ; B164
        sta     $45                             ; B166
        jmp     LC1AD                           ; B168

.endmacro

; Interrupted by 20 macros:
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

.macro MAC_object_handlers__projectiles_and_ballistics_7_of_7
; ----------------------------------------------------------------------------
L_BBC2: jmp     L_BBE2                          ; BBC2

; ----------------------------------------------------------------------------
L_BBC5: lda     #$10                            ; BBC5
        sta     LoadedObj + Obj::Health         ; BBC7
        lda     #$00                            ; BBC9
        sta     LoadedObj + Obj::IFrameCounter  ; BBCB
        lda     #$40                            ; BBCD
        sta     LoadedObj + Obj::Scratch1       ; BBCF
        inc     LoadedObj + Obj::Type           ; BBD1
        jsr     LC0FF                           ; BBD3
        ldx     LoadedObj + Obj::Facing         ; BBD6
        lda     LBBE4,x                         ; BBD8
        sta     LoadedObj + Obj::Velocity_X     ; BBDB
        lda     L_BBE3,x                        ; BBDD
        sta     LoadedObj + Obj::Velocity_Y     ; BBE0
L_BBE2: rts                                     ; BBE2

; ----------------------------------------------------------------------------
L_BBE3: .byte   $D0                             ; BBE3
LBBE4:  .byte   $00,$30,$00,$D0                 ; BBE4
; ----------------------------------------------------------------------------
L_BBE8: jmp     L_BC02                          ; BBE8

; ----------------------------------------------------------------------------
L_BBEB: lda     #$80                            ; BBEB
        sta     $42                             ; BBED
        lda     #$80                            ; BBEF
        sta     $43                             ; BBF1
        dec     LoadedObj + Obj::Scratch1       ; BBF3
        bne     L_BBFA                          ; BBF5
        jmp     LC114                           ; BBF7

; ----------------------------------------------------------------------------
L_BBFA: jsr     LC02D                           ; BBFA
        beq     L_BC02                          ; BBFD
        jmp     LC114                           ; BBFF

; ----------------------------------------------------------------------------
L_BC02: lda     #$10                            ; BC02
        sta     $40                             ; BC04
        lda     #$10                            ; BC06
        sta     $41                             ; BC08
        jsr     LC0FF                           ; BC0A
        beq     L_BC12                          ; BC0D
        jmp     LC114                           ; BC0F

; ----------------------------------------------------------------------------
L_BC12: lda     #$10                            ; BC12
        jsr     LC144                           ; BC14
        bne     L_BC1C                          ; BC17
        jmp     LC114                           ; BC19

; ----------------------------------------------------------------------------
L_BC1C: lda     #$00                            ; BC1C
        sta     $44                             ; BC1E
        lda     #$4E                            ; BC20
        sta     $45                             ; BC22
        jmp     LC1AD                           ; BC24

; ----------------------------------------------------------------------------
        rts                                     ; BC27

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
; ----------------------------------------------------------------------------
L_BC65: jmp     L_BC83                          ; BC65

; ----------------------------------------------------------------------------
L_BC68: lda     #$10                            ; BC68
        sta     LoadedObj + Obj::Health         ; BC6A
        lda     #$00                            ; BC6C
        sta     LoadedObj + Obj::IFrameCounter  ; BC6E
        inc     LoadedObj + Obj::Type           ; BC70
        jsr     LC0FF                           ; BC72
        lda     LoadedObj + Obj::Facing         ; BC75
        jsr     LC0CC                           ; BC77
        sta     LoadedObj + Obj::Velocity_X     ; BC7A
        lda     LoadedObj + Obj::Facing         ; BC7C
        jsr     LC201                           ; BC7E
        sta     LoadedObj + Obj::Velocity_Y     ; BC81
L_BC83: rts                                     ; BC83

; ----------------------------------------------------------------------------
L_BC84: jmp     L_BC9F                          ; BC84

; ----------------------------------------------------------------------------
L_BC87: lda     #$80                            ; BC87
        sta     $42                             ; BC89
        lda     #$80                            ; BC8B
        sta     $43                             ; BC8D
        jsr     LC165                           ; BC8F
        beq     L_BC97                          ; BC92
        jmp     LC114                           ; BC94

; ----------------------------------------------------------------------------
L_BC97: jsr     LC171                           ; BC97
        beq     L_BC9F                          ; BC9A
        jmp     LC114                           ; BC9C

; ----------------------------------------------------------------------------
L_BC9F: lda     #$10                            ; BC9F
        sta     $40                             ; BCA1
        lda     #$10                            ; BCA3
        sta     $41                             ; BCA5
        jsr     LC0FF                           ; BCA7
        beq     L_BCAF                          ; BCAA
        jmp     LC114                           ; BCAC

; ----------------------------------------------------------------------------
L_BCAF: lda     #$10                            ; BCAF
        jsr     LC144                           ; BCB1
        bne     L_BCB9                          ; BCB4
        jmp     LC114                           ; BCB6

; ----------------------------------------------------------------------------
L_BCB9: lda     #$00                            ; BCB9
        sta     $44                             ; BCBB
        lda     #$4E                            ; BCBD
        sta     $45                             ; BCBF
        jmp     LC1AD                           ; BCC1

; ----------------------------------------------------------------------------
        rts                                     ; BCC4

; ----------------------------------------------------------------------------
L_BCC5: ldx     #$8C                            ; BCC5
        lda     #$D2                            ; BCC7
        sta     $00                             ; BCC9
        jsr     LC1D7                           ; BCCB
        beq     L_BCD8                          ; BCCE
        lda     #$4C                            ; BCD0
        sta     ObjectTable + Obj::Type,x       ; BCD2
        jmp     LC0D8                           ; BCD5

; ----------------------------------------------------------------------------
L_BCD8: rts                                     ; BCD8

; ----------------------------------------------------------------------------
L_BCD9: jmp     L_BD08                          ; BCD9

; ----------------------------------------------------------------------------
L_BCDC: jsr     L_BD4A                          ; BCDC
        jsr     LC0FF                           ; BCDF
        lda     $3E                             ; BCE2
        sta     $00                             ; BCE4
        lda     $3F                             ; BCE6
        sta     $01                             ; BCE8
        lda     $7C                             ; BCEA
        sta     $02                             ; BCEC
        lda     $7D                             ; BCEE
        sta     $03                             ; BCF0
        jsr     LC05D                           ; BCF2
        lda     LoadedObj + Obj::Velocity_X     ; BCF5
        cmp     #$80                            ; BCF7
        ror     a                               ; BCF9
        sta     LoadedObj + Obj::Velocity_X     ; BCFA
        lda     LoadedObj + Obj::Velocity_Y     ; BCFC
        cmp     #$80                            ; BCFE
        ror     a                               ; BD00
        sta     LoadedObj + Obj::Velocity_Y     ; BD01
        lda     #$1B                            ; BD03
        jsr     LC216                           ; BD05
L_BD08: rts                                     ; BD08

; ----------------------------------------------------------------------------
L_BD09: jmp     L_BD24                          ; BD09

; ----------------------------------------------------------------------------
L_BD0C: lda     #$40                            ; BD0C
        sta     $42                             ; BD0E
        lda     #$40                            ; BD10
        sta     $43                             ; BD12
        jsr     LC165                           ; BD14
        beq     L_BD1C                          ; BD17
        jmp     LC114                           ; BD19

; ----------------------------------------------------------------------------
L_BD1C: jsr     LC171                           ; BD1C
        beq     L_BD24                          ; BD1F
        jmp     LC114                           ; BD21

; ----------------------------------------------------------------------------
L_BD24: lda     #$08                            ; BD24
        sta     $40                             ; BD26
        lda     #$08                            ; BD28
        sta     $41                             ; BD2A
        jsr     LC0FF                           ; BD2C
        beq     L_BD34                          ; BD2F
        jmp     LC114                           ; BD31

; ----------------------------------------------------------------------------
L_BD34: lda     #$10                            ; BD34
        jsr     LC144                           ; BD36
        bne     L_BD3E                          ; BD39
        jmp     LC114                           ; BD3B

; ----------------------------------------------------------------------------
L_BD3E: lda     #$00                            ; BD3E
        sta     $44                             ; BD40
        lda     #$4E                            ; BD42
        sta     $45                             ; BD44
        jmp     LC1AD                           ; BD46

; ----------------------------------------------------------------------------
        rts                                     ; BD49

; ----------------------------------------------------------------------------
L_BD4A: lda     #$10                            ; BD4A
        sta     LoadedObj + Obj::Health         ; BD4C
        lda     #$00                            ; BD4E
        sta     LoadedObj + Obj::IFrameCounter  ; BD50
        sta     LoadedObj + Obj::Facing         ; BD52
        sta     LoadedObj + Obj::Scratch1       ; BD54
        jsr     LC1EC                           ; BD56
        inc     LoadedObj + Obj::Type           ; BD59
        rts                                     ; BD5B

.endmacro

