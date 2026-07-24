.macro MAC_L_B832
; ----------------------------------------------------------------------------
L_B832: jmp     L_B842                          ; B832

; ----------------------------------------------------------------------------
        lda     #$1B                            ; B835
        jsr     L_A2E9                          ; B837
        lda     #$00                            ; B83A
        sta     LoadedObject_YVel               ; B83C
        sta     LoadedObject_XVel               ; B83E
        sta     $50                             ; B840
L_B842: rts                                     ; B842

; ----------------------------------------------------------------------------
LB843:  jmp     L_B8EF                          ; B843

; ----------------------------------------------------------------------------
        lda     #$80                            ; B846
        sta     $42                             ; B848
        lda     #$80                            ; B84A
        sta     $43                             ; B84C
        lda     $50                             ; B84E
        bne     L_B87E                          ; B850
        lda     #$A7                            ; B852
        sta     $51                             ; B854
        jsr     LE0FA                           ; B856
        bpl     L_B860                          ; B859
        eor     #$FF                            ; B85B
        clc                                     ; B85D
        adc     #$01                            ; B85E
L_B860: cmp     #$02                            ; B860
        bcc     L_B867                          ; B862
        jmp     L_B8EF                          ; B864

; ----------------------------------------------------------------------------
L_B867: jsr     LE0ED                           ; B867
        bpl     L_B871                          ; B86A
        eor     #$FF                            ; B86C
        clc                                     ; B86E
        adc     #$01                            ; B86F
L_B871: cmp     #$06                            ; B871
        bcc     L_B878                          ; B873
        jmp     L_B8EF                          ; B875

; ----------------------------------------------------------------------------
L_B878: inc     $50                             ; B878
        lda     #$00                            ; B87A
        sta     $52                             ; B87C
L_B87E: cmp     #$01                            ; B87E
        bne     L_B8C8                          ; B880
        inc     $52                             ; B882
        ldx     $52                             ; B884
        lda     #$A8                            ; B886
        sta     $51                             ; B888
        cpx     #$18                            ; B88A
        bcc     L_B8EF                          ; B88C
        lda     #$A9                            ; B88E
        sta     $51                             ; B890
        cpx     #$30                            ; B892
        bne     L_B8A9                          ; B894
        inc     $50                             ; B896
        jsr     LE0ED                           ; B898
        bpl     L_B8A2                          ; B89B
        lda     #$10                            ; B89D
        jmp     L_B8A4                          ; B89F

; ----------------------------------------------------------------------------
L_B8A2: lda     #$F0                            ; B8A2
L_B8A4: sta     LoadedObject_XVel               ; B8A4
        jmp     L_B8EF                          ; B8A6

; ----------------------------------------------------------------------------
L_B8A9: jsr     LEB71                           ; B8A9
        ldx     #$04                            ; B8AC
        jsr     LE06A                           ; B8AE
        clc                                     ; B8B1
        adc     #$C0                            ; B8B2
        sta     $9D                             ; B8B4
        lda     #$20                            ; B8B6
        sta     $9E                             ; B8B8
        lda     #$36                            ; B8BA
        sta     $A0                             ; B8BC
        jsr     LDF46                           ; B8BE
        lda     #$AA                            ; B8C1
        sta     $51                             ; B8C3
        jmp     L_B8EF                          ; B8C5

; ----------------------------------------------------------------------------
L_B8C8: lda     $11                             ; B8C8
        and     #$0F                            ; B8CA
        bne     L_B8D3                          ; B8CC
        lda     #$4C                            ; B8CE
        jsr     Enqueue_Sound_Command           ; B8D0
L_B8D3: lda     $11                             ; B8D3
        and     #$04                            ; B8D5
        beq     L_B8DE                          ; B8D7
        lda     #$A8                            ; B8D9
        jmp     L_B8E0                          ; B8DB

; ----------------------------------------------------------------------------
L_B8DE: lda     #$A9                            ; B8DE
L_B8E0: sta     $51                             ; B8E0
        lda     #$01                            ; B8E2
        jsr     LDFA0                           ; B8E4
        and     #$40                            ; B8E7
        beq     L_B8EF                          ; B8E9
        lda     #$00                            ; B8EB
        sta     LoadedObject_YVel               ; B8ED
L_B8EF: lda     #$10                            ; B8EF
        sta     $40                             ; B8F1
        lda     #$10                            ; B8F3
        sta     $41                             ; B8F5
        jsr     LEF2B                           ; B8F7
        beq     L_B906                          ; B8FA
        lda     #$00                            ; B8FC
        sec                                     ; B8FE
        sbc     LoadedObject_XVel               ; B8FF
        sta     LoadedObject_XVel               ; B901
        jmp     LD7F8                           ; B903

; ----------------------------------------------------------------------------
L_B906: lda     #$1B                            ; B906
        jsr     L_A30A                          ; B908
        beq     L_B910                          ; B90B
        jmp     L_A34D                          ; B90D

; ----------------------------------------------------------------------------
L_B910: lda     #$01                            ; B910
        jsr     LE04E                           ; B912
        lda     $51                             ; B915
        jmp     LF011                           ; B917

.endmacro

