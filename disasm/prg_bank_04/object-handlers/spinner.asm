.macro MAC_L_B64D
; ----------------------------------------------------------------------------
L_B64D: jmp     L_B65A                          ; B64D

; ----------------------------------------------------------------------------
L_B650: lda     #$08                            ; B650
        jsr     L_B2B4                          ; B652
        ldx     Global_FrameCounter             ; B655
        inx                                     ; B657
        stx     LoadedObj + Obj::Scratch1       ; B658
L_B65A: rts                                     ; B65A

; ----------------------------------------------------------------------------
L_B65B: jmp     L_B680                          ; B65B

; ----------------------------------------------------------------------------
L_B65E: lda     #$80                            ; B65E
        sta     $42                             ; B660
        lda     #$80                            ; B662
        sta     $43                             ; B664
        lda     Global_FrameCounter             ; B666
        eor     LoadedObj + Obj::Scratch1       ; B668
        and     #$7F                            ; B66A
        bne     L_B680                          ; B66C
        lda     #$03                            ; B66E
        sta     LoadedObj + Obj::Scratch0       ; B670
L_B672: jsr     LC12F                           ; B672
        beq     L_B680                          ; B675
        lda     #$4E                            ; B677
        sta     ObjectTable + Obj::Type,x       ; B679
        dec     LoadedObj + Obj::Scratch0       ; B67C
        bpl     L_B672                          ; B67E
L_B680: lda     #$10                            ; B680
        sta     $40                             ; B682
        lda     #$10                            ; B684
        sta     $41                             ; B686
        jsr     LC0FF                           ; B688
        beq     L_B690                          ; B68B
        jmp     LC114                           ; B68D

; ----------------------------------------------------------------------------
L_B690: lda     #$08                            ; B690
        jsr     L_B2C5                          ; B692
        lda     #$01                            ; B695
        sta     $44                             ; B697
        ldx     #$2E                            ; B699
        lda     Global_FrameCounter             ; B69B
        and     #$10                            ; B69D
        beq     L_B6A2                          ; B69F
        inx                                     ; B6A1
L_B6A2: txa                                     ; B6A2
        jmp     LC063                           ; B6A3

.endmacro

