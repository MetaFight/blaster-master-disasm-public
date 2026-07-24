.macro MAC_L_A3E2
; ----------------------------------------------------------------------------
L_A3E2: jmp     L_A40A                          ; A3E2

; ----------------------------------------------------------------------------
        lda     #$00                            ; A3E5
        jsr     L_A2E9                          ; A3E7
        lda     #$01                            ; A3EA
        sta     $50                             ; A3EC
        lda     #$00                            ; A3EE
        sta     LoadedObj_YVel                  ; A3F0
        lda     #$0F                            ; A3F2
        sta     LoadedObj_XVel                  ; A3F4
        jsr     LE0ED                           ; A3F6
        bpl     L_A402                          ; A3F9
        lda     #$00                            ; A3FB
        sec                                     ; A3FD
        sbc     LoadedObj_XVel                  ; A3FE
        sta     LoadedObj_XVel                  ; A400
L_A402: lda     #$00                            ; A402
        sta     $51                             ; A404
        sta     $47                             ; A406
        sta     $52                             ; A408
L_A40A: rts                                     ; A40A

; ----------------------------------------------------------------------------
LA40B:  jmp     L_A4A4                          ; A40B

; ----------------------------------------------------------------------------
        lda     #$80                            ; A40E
        sta     $42                             ; A410
        lda     #$40                            ; A412
        sta     $43                             ; A414
        lda     $50                             ; A416
        bne     L_A485                          ; A418
        lda     $52                             ; A41A
        beq     L_A423                          ; A41C
        dec     $52                             ; A41E
        jmp     L_A44E                          ; A420

; ----------------------------------------------------------------------------
L_A423: lda     $11                             ; A423
        and     #$0F                            ; A425
        bne     L_A42E                          ; A427
        lda     #$42                            ; A429
        jsr     Enqueue_Sound_Command           ; A42B
L_A42E: jsr     LE0ED                           ; A42E
        sta     $01                             ; A431
        eor     LoadedObj_XVel                  ; A433
        bpl     L_A44E                          ; A435
        lda     #$0F                            ; A437
        ldx     $01                             ; A439
        bpl     L_A442                          ; A43B
        eor     #$FF                            ; A43D
        clc                                     ; A43F
        adc     #$01                            ; A440
L_A442: sta     LoadedObj_XVel                  ; A442
        jsr     LEB71                           ; A444
        and     #$0F                            ; A447
        clc                                     ; A449
        adc     #$18                            ; A44A
        sta     $52                             ; A44C
L_A44E: lda     #$11                            ; A44E
        jsr     LD2B1                           ; A450
        bpl     L_A480                          ; A453
        jsr     LE083                           ; A455
        and     #$80                            ; A458
        beq     L_A4A4                          ; A45A
        jsr     LEB71                           ; A45C
        and     #$0F                            ; A45F
        bne     L_A477                          ; A461
        jsr     LEB71                           ; A463
        and     #$0F                            ; A466
        clc                                     ; A468
        adc     #$30                            ; A469
        sta     $52                             ; A46B
        lda     #$00                            ; A46D
        sec                                     ; A46F
        sbc     LoadedObj_XVel                  ; A470
        sta     LoadedObj_XVel                  ; A472
        jmp     L_A4A4                          ; A474

; ----------------------------------------------------------------------------
L_A477: lda     #$29                            ; A477
        jsr     Enqueue_Sound_Command           ; A479
        lda     #$E0                            ; A47C
        sta     LoadedObj_YVel                  ; A47E
L_A480: inc     $50                             ; A480
        jmp     L_A4A4                          ; A482

; ----------------------------------------------------------------------------
L_A485: lda     #$02                            ; A485
        ldx     #$00                            ; A487
        jsr     LDFD1                           ; A489
        lda     #$30                            ; A48C
        ldx     #$4D                            ; A48E
        jsr     LEB14                           ; A490
        jsr     LE083                           ; A493
        and     #$40                            ; A496
        beq     L_A4A4                          ; A498
        lda     LoadedObj_YVel                  ; A49A
        bmi     L_A4A4                          ; A49C
        dec     $50                             ; A49E
        lda     #$00                            ; A4A0
        sta     LoadedObj_YVel                  ; A4A2
L_A4A4: lda     #$10                            ; A4A4
        sta     $40                             ; A4A6
        lda     #$08                            ; A4A8
        sta     $41                             ; A4AA
        jsr     LEF2B                           ; A4AC
        beq     L_A4B4                          ; A4AF
        jmp     LD7F8                           ; A4B1

; ----------------------------------------------------------------------------
L_A4B4: lda     #$00                            ; A4B4
        jsr     L_A30A                          ; A4B6
        beq     L_A4BE                          ; A4B9
        jmp     L_A34D                          ; A4BB

; ----------------------------------------------------------------------------
L_A4BE: lda     #$01                            ; A4BE
        jsr     LE04E                           ; A4C0
        dec     $51                             ; A4C3
        bpl     L_A4D3                          ; A4C5
        lda     #$0C                            ; A4C7
        sta     $51                             ; A4C9
        dec     $47                             ; A4CB
        bpl     L_A4D3                          ; A4CD
        lda     #$02                            ; A4CF
        sta     $47                             ; A4D1
L_A4D3: ldx     $47                             ; A4D3
        lda     LA4DB,x                         ; A4D5
        jmp     LF011                           ; A4D8

; ----------------------------------------------------------------------------
LA4DB:  .byte   $11,$12,$13                     ; A4DB
.endmacro

