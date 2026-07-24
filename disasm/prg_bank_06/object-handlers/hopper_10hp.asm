.macro MAC_L_B16E
; ----------------------------------------------------------------------------
L_B16E: jmp     L_B18E                          ; B16E

; ----------------------------------------------------------------------------
        lda     #$12                            ; B171
        jsr     L_A2E9                          ; B173
        lda     LoadedObj_X_MetaTile            ; B176
        lsr     a                               ; B178
        bcc     L_B180                          ; B179
        lda     #$F4                            ; B17B
        jmp     L_B182                          ; B17D

; ----------------------------------------------------------------------------
L_B180: lda     #$0C                            ; B180
L_B182: sta     LoadedObj_XVel                  ; B182
        lda     #$00                            ; B184
        sta     LoadedObj_YVel                  ; B186
        lda     #$00                            ; B188
        sta     $50                             ; B18A
        sta     $51                             ; B18C
L_B18E: rts                                     ; B18E

; ----------------------------------------------------------------------------
LB18F:  jmp     L_B1AB                          ; B18F

; ----------------------------------------------------------------------------
        lda     #$80                            ; B192
        sta     $42                             ; B194
        lda     #$C0                            ; B196
        sta     $43                             ; B198
        lda     $50                             ; B19A
        bne     L_B1A5                          ; B19C
        jsr     LE005                           ; B19E
        beq     L_B1AB                          ; B1A1
        inc     $50                             ; B1A3
L_B1A5: jsr     LDF68                           ; B1A5
        jsr     L_B1DE                          ; B1A8
L_B1AB: lda     #$10                            ; B1AB
        sta     $40                             ; B1AD
        lda     #$10                            ; B1AF
        sta     $41                             ; B1B1
        jsr     LEF2B                           ; B1B3
        beq     L_B1BB                          ; B1B6
        jmp     LD7F8                           ; B1B8

; ----------------------------------------------------------------------------
L_B1BB: lda     #$12                            ; B1BB
        jsr     L_A30A                          ; B1BD
        beq     L_B1C5                          ; B1C0
        jmp     L_A34D                          ; B1C2

; ----------------------------------------------------------------------------
L_B1C5: lda     #$01                            ; B1C5
        jsr     LE04E                           ; B1C7
        lda     $11                             ; B1CA
        lsr     a                               ; B1CC
        lsr     a                               ; B1CD
        lsr     a                               ; B1CE
        lsr     a                               ; B1CF
        and     #$03                            ; B1D0
        tax                                     ; B1D2
        lda     LB1DA,x                         ; B1D3
        jmp     LF011                           ; B1D6

; ----------------------------------------------------------------------------
        rts                                     ; B1D9

; ----------------------------------------------------------------------------
LB1DA:  .byte   $02,$03,$02,$04                 ; B1DA
; ----------------------------------------------------------------------------
L_B1DE: lda     #$11                            ; B1DE
        jsr     LD2B1                           ; B1E0
        bmi     L_B1FE                          ; B1E3
        jsr     LEB71                           ; B1E5
        and     #$0F                            ; B1E8
        beq     L_B1F6                          ; B1EA
        lda     #$00                            ; B1EC
        sec                                     ; B1EE
        sbc     LoadedObj_XVel                  ; B1EF
        sta     LoadedObj_XVel                  ; B1F1
        jmp     L_B1FE                          ; B1F3

; ----------------------------------------------------------------------------
L_B1F6: lda     #$E0                            ; B1F6
        sta     LoadedObj_YVel                  ; B1F8
        lda     #$00                            ; B1FA
        sta     $50                             ; B1FC
L_B1FE: rts                                     ; B1FE

.endmacro

