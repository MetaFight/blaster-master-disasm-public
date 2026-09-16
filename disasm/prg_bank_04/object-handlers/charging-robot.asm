.macro MAC_object_handlers__charging_robot
; ----------------------------------------------------------------------------
L_B5A7: jmp     L_B5EF                          ; B5A7

; ----------------------------------------------------------------------------
L_B5AA: jsr     LC1B3                           ; B5AA
        and     #$0F                            ; B5AD
        bne     L_B5EF                          ; B5AF
        lda     #$07                            ; B5B1
        jsr     L_B2B4                          ; B5B3
        lda     #$30                            ; B5B6
        sta     LoadedObj + Obj::Velocity_Y     ; B5B8
        lda     $1F                             ; B5BA
        clc                                     ; B5BC
        adc     #$01                            ; B5BD
        sta     LoadedObj + Obj::Position_Y_Hi  ; B5BF
        lda     $1E                             ; B5C1
        sta     LoadedObj + Obj::Position_Y_Lo  ; B5C3
        lda     #$00                            ; B5C5
        sta     LoadedObj + Obj::Velocity_X     ; B5C7
        lda     PlayerSlot + Obj::Position_X_Lo ; B5C9
        sta     LoadedObj + Obj::Position_X_Lo  ; B5CC
        lda     PlayerSlot + Obj::Position_X_Hi ; B5CE
        sta     LoadedObj + Obj::Position_X_Hi  ; B5D1
        jsr     LC1B3                           ; B5D3
        ldx     #$05                            ; B5D6
        jsr     LC20A                           ; B5D8
        clc                                     ; B5DB
        adc     LoadedObj + Obj::Position_X_Hi  ; B5DC
        sta     LoadedObj + Obj::Position_X_Hi  ; B5DE
        jsr     LC1EC                           ; B5E0
        lda     #$00                            ; B5E3
        jsr     LC13E                           ; B5E5
        and     #$C0                            ; B5E8
        beq     L_B5EF                          ; B5EA
        jmp     LC114                           ; B5EC

; ----------------------------------------------------------------------------
L_B5EF: rts                                     ; B5EF

; ----------------------------------------------------------------------------
L_B5F0: jmp     L_B623                          ; B5F0

; ----------------------------------------------------------------------------
L_B5F3: lda     #$80                            ; B5F3
        sta     $42                             ; B5F5
        lda     #$80                            ; B5F7
        sta     $43                             ; B5F9
        lda     LoadedObj + Obj::Scratch2       ; B5FB
        beq     L_B604                          ; B5FD
        dec     LoadedObj + Obj::Scratch2       ; B5FF
        jmp     L_B620                          ; B601

; ----------------------------------------------------------------------------
L_B604: jsr     LC04E                           ; B604
        bpl     L_B60E                          ; B607
        eor     #$FF                            ; B609
        clc                                     ; B60B
        adc     #$01                            ; B60C
L_B60E: cmp     #$02                            ; B60E
        bcs     L_B620                          ; B610
        jsr     LC12F                           ; B612
        beq     L_B620                          ; B615
        lda     #$58                            ; B617
        sta     ObjectTable + Obj::Type,x       ; B619
        lda     #$08                            ; B61C
        sta     LoadedObj + Obj::Scratch2       ; B61E
L_B620: jsr     LC01E                           ; B620
L_B623: lda     #$10                            ; B623
        sta     $40                             ; B625
        lda     #$10                            ; B627
        sta     $41                             ; B629
        jsr     LC0FF                           ; B62B
        beq     L_B633                          ; B62E
        jmp     LC114                           ; B630

; ----------------------------------------------------------------------------
L_B633: lda     #$07                            ; B633
        jsr     L_B2C5                          ; B635
        lda     #$01                            ; B638
        sta     $44                             ; B63A
        lda     #$37                            ; B63C
        sta     $45                             ; B63E
        lda     Global_FrameCounter             ; B640
        and     #$04                            ; B642
        bne     L_B648                          ; B644
        inc     $45                             ; B646
L_B648: lda     $45                             ; B648
        jmp     LC063                           ; B64A

.endmacro

