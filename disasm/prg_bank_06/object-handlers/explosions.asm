.macro MAC_L_9B95
; ----------------------------------------------------------------------------
L_9B95: nop                                     ; 9B95
        nop                                     ; 9B96
        nop                                     ; 9B97
L_9B98: lda     #$00                            ; 9B98
        sta     $4F                             ; 9B9A
        lda     #$0A                            ; 9B9C
        sta     LoadedObj + Obj::Scratch1       ; 9B9E
        lda     #$4B                            ; 9BA0
        sta     LoadedObj + Obj::Type           ; 9BA2
        lda     #$28                            ; 9BA4
        jsr     Enqueue_Sound_Command           ; 9BA6
        rts                                     ; 9BA9

; ----------------------------------------------------------------------------
L_9BAA: jmp     L_9BB1                          ; 9BAA

; ----------------------------------------------------------------------------
L_9BAD: dec     LoadedObj + Obj::Scratch1       ; 9BAD
        bmi     L_9BCF                          ; 9BAF
L_9BB1: lda     #$10                            ; 9BB1
        sta     $40                             ; 9BB3
        lda     #$10                            ; 9BB5
        sta     $41                             ; 9BB7
        jsr     ScreenPos_Compute               ; 9BB9
        bne     L_9BCF                          ; 9BBC
        lda     #$00                            ; 9BBE
        sta     $44                             ; 9BC0
        lda     LoadedObj + Obj::Scratch1       ; 9BC2
        lsr     a                               ; 9BC4
        tax                                     ; 9BC5
        lda     L_9BD2,x                        ; 9BC6
        beq     L_9BCE                          ; 9BC9
        jmp     MetaSprite_Render               ; 9BCB

; ----------------------------------------------------------------------------
L_9BCE: rts                                     ; 9BCE

; ----------------------------------------------------------------------------
L_9BCF: jmp     Obj_Despawn                           ; 9BCF

; ----------------------------------------------------------------------------
L_9BD2: .byte   $36,$35,$34,$00,$34,$00         ; 9BD2
; ----------------------------------------------------------------------------
L_9BD8: nop                                     ; 9BD8
        nop                                     ; 9BD9
        nop                                     ; 9BDA
L_9BDB: lda     #$00                            ; 9BDB
        sta     $4F                             ; 9BDD
        lda     #$0C                            ; 9BDF
        sta     LoadedObj + Obj::Scratch1       ; 9BE1
        lda     #$4D                            ; 9BE3
        sta     LoadedObj + Obj::Type           ; 9BE5
        lda     #$28                            ; 9BE7
        jsr     Enqueue_Sound_Command           ; 9BE9
        rts                                     ; 9BEC

; ----------------------------------------------------------------------------
L_9BED: jmp     L_9BF4                          ; 9BED

; ----------------------------------------------------------------------------
L_9BF0: dec     LoadedObj + Obj::Scratch1       ; 9BF0
        bmi     L_9C11                          ; 9BF2
L_9BF4: lda     #$10                            ; 9BF4
        sta     $40                             ; 9BF6
        lda     #$10                            ; 9BF8
        sta     $41                             ; 9BFA
        jsr     ScreenPos_Compute               ; 9BFC
        bne     L_9C11                          ; 9BFF
        lda     #$00                            ; 9C01
        sta     $44                             ; 9C03
        lda     LoadedObj + Obj::Scratch1       ; 9C05
        lsr     a                               ; 9C07
        tax                                     ; 9C08
        lda     L_9C15,x                        ; 9C09
        beq     L_9C14                          ; 9C0C
        jmp     MetaSprite_Render               ; 9C0E

; ----------------------------------------------------------------------------
L_9C11: jmp     Obj_Despawn                           ; 9C11

; ----------------------------------------------------------------------------
L_9C14: rts                                     ; 9C14

; ----------------------------------------------------------------------------
L_9C15: .byte   $36,$35,$34,$37,$00,$37,$00     ; 9C15
.endmacro

