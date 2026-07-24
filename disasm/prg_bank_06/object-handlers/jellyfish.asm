.macro MAC_L_B3E3
; ----------------------------------------------------------------------------
L_B3E3: jmp     L_B3FD                          ; B3E3

; ----------------------------------------------------------------------------
        lda     #$16                            ; B3E6
        jsr     L_A2E9                          ; B3E8
        lda     #$B8                            ; B3EB
        sta     $47                             ; B3ED
        lda     #$08                            ; B3EF
        sta     LoadedObj_YVel                  ; B3F1
        lda     #$00                            ; B3F3
        sta     LoadedObj_XVel                  ; B3F5
        sta     $50                             ; B3F7
        lda     #$40                            ; B3F9
        sta     $51                             ; B3FB
L_B3FD: rts                                     ; B3FD

; ----------------------------------------------------------------------------
LB3FE:  jmp     L_B457                          ; B3FE

; ----------------------------------------------------------------------------
        lda     #$80                            ; B401
        sta     $42                             ; B403
        lda     #$80                            ; B405
        sta     $43                             ; B407
        lda     $50                             ; B409
        bne     L_B43A                          ; B40B
        jsr     LE083                           ; B40D
        bpl     L_B418                          ; B410
        jsr     LE0D8                           ; B412
        jmp     L_B420                          ; B415

; ----------------------------------------------------------------------------
L_B418: and     #$40                            ; B418
        beq     L_B420                          ; B41A
        lda     #$04                            ; B41C
        sta     LoadedObj_YVel                  ; B41E
L_B420: dec     $51                             ; B420
        bne     L_B457                          ; B422
        lda     #$46                            ; B424
        jsr     Enqueue_Sound_Command           ; B426
        inc     $50                             ; B429
        jsr     LEB71                           ; B42B
        and     #$07                            ; B42E
        clc                                     ; B430
        adc     #$20                            ; B431
        tay                                     ; B433
        jsr     LE1BD                           ; B434
        jmp     L_B457                          ; B437

; ----------------------------------------------------------------------------
L_B43A: lda     #$01                            ; B43A
        ldx     #$00                            ; B43C
        jsr     LDFD1                           ; B43E
        jsr     LE083                           ; B441
        jsr     L_A2D4                          ; B444
        lda     LoadedObj_YVel                  ; B447
        cmp     #$04                            ; B449
        bcs     L_B457                          ; B44B
        lda     #$04                            ; B44D
        sta     LoadedObj_YVel                  ; B44F
        dec     $50                             ; B451
        lda     #$70                            ; B453
        sta     $51                             ; B455
L_B457: lda     #$10                            ; B457
        sta     $40                             ; B459
        lda     #$10                            ; B45B
        sta     $41                             ; B45D
        jsr     LEF2B                           ; B45F
        beq     L_B467                          ; B462
        jmp     LD7F8                           ; B464

; ----------------------------------------------------------------------------
L_B467: lda     #$16                            ; B467
        jsr     L_A30A                          ; B469
        beq     L_B471                          ; B46C
        jmp     L_A34D                          ; B46E

; ----------------------------------------------------------------------------
L_B471: lda     #$01                            ; B471
        jsr     LE04E                           ; B473
        lda     $51                             ; B476
        bne     L_B47F                          ; B478
        lda     #$9E                            ; B47A
        jmp     L_B491                          ; B47C

; ----------------------------------------------------------------------------
L_B47F: cmp     #$20                            ; B47F
        bcs     L_B488                          ; B481
        lda     #$9D                            ; B483
        jmp     L_B491                          ; B485

; ----------------------------------------------------------------------------
L_B488: lda     $11                             ; B488
        lsr     a                               ; B48A
        lsr     a                               ; B48B
        and     #$01                            ; B48C
        clc                                     ; B48E
        adc     #$9D                            ; B48F
L_B491: jmp     LF011                           ; B491

.endmacro

