.macro MAC_L_B7E5
; ----------------------------------------------------------------------------
L_B7E5: jmp     L_B7F5                          ; B7E5

; ----------------------------------------------------------------------------
L_B7E8: lda     #$0C                            ; B7E8
        jsr     L_B2B4                          ; B7EA
        lda     #$00                            ; B7ED
        sta     LoadedObj + Obj::Velocity_Y     ; B7EF
        lda     #$09                            ; B7F1
        sta     LoadedObj + Obj::Velocity_X     ; B7F3
L_B7F5: rts                                     ; B7F5

; ----------------------------------------------------------------------------
L_B7F6: jmp     L_B82F                          ; B7F6

; ----------------------------------------------------------------------------
L_B7F9: lda     #$80                            ; B7F9
        sta     $42                             ; B7FB
        lda     #$80                            ; B7FD
        sta     $43                             ; B7FF
        lda     LoadedObj + Obj::Scratch1       ; B801
        beq     L_B80A                          ; B803
        dec     LoadedObj + Obj::Scratch1       ; B805
        jmp     L_B82C                          ; B807

; ----------------------------------------------------------------------------
L_B80A: jsr     LC048                           ; B80A
        and     #$FC                            ; B80D
        bne     L_B82C                          ; B80F
        lda     #$40                            ; B811
        sta     LoadedObj + Obj::Scratch1       ; B813
        jsr     LC12F                           ; B815
        beq     L_B82C                          ; B818
        lda     #$52                            ; B81A
        sta     ObjectTable + Obj::Type,x       ; B81C
        lda     PlayerSlot + Obj::Velocity_X    ; B81F
        ldx     #$01                            ; B822
        jsr     LC20A                           ; B824
        ldx     $A5                             ; B827
        sta     ObjectTable + Obj::Velocity_X,x ; B829
L_B82C: jsr     LC039                           ; B82C
L_B82F: lda     #$10                            ; B82F
        sta     $40                             ; B831
        lda     #$10                            ; B833
        sta     $41                             ; B835
        jsr     LC0FF                           ; B837
        beq     L_B83F                          ; B83A
        jmp     LC17A                           ; B83C

; ----------------------------------------------------------------------------
L_B83F: lda     #$0C                            ; B83F
        jsr     L_B2C5                          ; B841
        lda     #$01                            ; B844
        sta     $44                             ; B846
        ldx     #$4B                            ; B848
        lda     Global_FrameCounter             ; B84A
        and     #$20                            ; B84C
        beq     L_B851                          ; B84E
        inx                                     ; B850
L_B851: txa                                     ; B851
        jmp     LC063                           ; B852

.endmacro

