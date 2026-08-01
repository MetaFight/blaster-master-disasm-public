.macro MAC_L_A74B
; ----------------------------------------------------------------------------
L_A74B: jmp     L_A769                          ; A74B

; ----------------------------------------------------------------------------
L_A74E: lda     #$04                            ; A74E
        jsr     TankEnemy_Init                  ; A750
        lda     LoadedObj + Obj::Position_X_Hi  ; A753
        lsr     a                               ; A755
        bcc     L_A75D                          ; A756
        lda     #$F4                            ; A758
        jmp     L_A75F                          ; A75A

; ----------------------------------------------------------------------------
L_A75D: lda     #$0C                            ; A75D
L_A75F: sta     LoadedObj + Obj::Velocity_X     ; A75F
        lda     #$00                            ; A761
        sta     LoadedObj + Obj::Velocity_Y     ; A763
        sta     $50                             ; A765
        sta     $51                             ; A767
L_A769: rts                                     ; A769

; ----------------------------------------------------------------------------
L_A76A: jmp     L_A79E                          ; A76A

; ----------------------------------------------------------------------------
L_A76D: lda     #$80                            ; A76D
        sta     LoadedObj_CollisionBox_HalfWidth; A76F
        lda     #$C0                            ; A771
        sta     LoadedObj_CollisionBox_HalfHeight; A773
        lda     $50                             ; A775
        bne     L_A780                          ; A777
        jsr     LE005                           ; A779
        beq     L_A79E                          ; A77C
        inc     $50                             ; A77E
L_A780: jsr     LDF68                           ; A780
        jsr     LoadedObj__Get_DeltaToPlayer_X  ; A783
        eor     LoadedObj + Obj::Velocity_X     ; A786
        bmi     L_A79B                          ; A788
        lda     LoadedObj + Obj::Velocity_X     ; A78A
        and     #$80                            ; A78C
        sta     $9D                             ; A78E
        lda     #$20                            ; A790
        sta     $9E                             ; A792
        lda     #$48                            ; A794
        sta     $A0                             ; A796
        jsr     LDF36                           ; A798
L_A79B: jsr     L_B1DE                          ; A79B
L_A79E: lda     #$10                            ; A79E
        sta     $40                             ; A7A0
        lda     #$18                            ; A7A2
        sta     $41                             ; A7A4
        jsr     LEF2B                           ; A7A6
        beq     L_A7AE                          ; A7A9
        jmp     LD7F8                           ; A7AB

; ----------------------------------------------------------------------------
L_A7AE: lda     #$04                            ; A7AE
        jsr     L_A30A                          ; A7B0
        beq     L_A7B8                          ; A7B3
        jmp     L_A34D                          ; A7B5

; ----------------------------------------------------------------------------
L_A7B8: lda     #$01                            ; A7B8
        jsr     LE04E                           ; A7BA
        ldx     #$7E                            ; A7BD
        lda     Global_FrameCounter             ; A7BF
        and     #$10                            ; A7C1
        beq     L_A7C6                          ; A7C3
        inx                                     ; A7C5
L_A7C6: txa                                     ; A7C6
        jmp     LF011                           ; A7C7

; ----------------------------------------------------------------------------
L_A7CA: rts                                     ; A7CA

.endmacro

