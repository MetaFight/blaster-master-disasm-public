.macro MAC_06_game_screen__game_loop
; ----------------------------------------------------------------------------
L_C3D5: jsr     WaitNMI                         ; C3D5
        jsr     L_C971                          ; C3D8
        jsr     L_D883                          ; C3DB
        jsr     ScreenFade_Step                 ; C3DE
        jsr     L_CA4B                          ; C3E1
        jsr     L_C7D8                          ; C3E4
        jsr     L_C642                          ; C3E7
        lda     $B6                             ; C3EA
        cmp     #$09                            ; C3EC
        bcs     L_C465                          ; C3EE
        lda     $B6                             ; C3F0
        bne     L_C402                          ; C3F2
        lda     $06F3                           ; C3F4
        cmp     #$FF                            ; C3F7
        bne     L_C402                          ; C3F9
        dec     $06F3                           ; C3FB
        lda     #$09                            ; C3FE
        bne     L_C45F                          ; C400
L_C402: lda     $06F3                           ; C402
        beq     L_C411                          ; C405
        lda     $DE                             ; C407
        and     #$10                            ; C409
        beq     L_C411                          ; C40B
        lda     #$08                            ; C40D
        bne     L_C45F                          ; C40F
L_C411: lda     $F3                             ; C411
        and     #$10                            ; C413
        beq     L_C430                          ; C415
        lda     $B6                             ; C417
        bne     L_C430                          ; C419
        lda     #$18                            ; C41B
        jsr     Enqueue_Sound_Command           ; C41D
        lda     $C5                             ; C420
        and     #$02                            ; C422
        bne     L_C42A                          ; C424
        lda     #$04                            ; C426
        bne     L_C45F                          ; C428
L_C42A: lda     $15                             ; C42A
        eor     #$01                            ; C42C
        sta     $15                             ; C42E
L_C430: bit     L_FFF3                          ; C430
        bvc     L_C3D5                          ; C433
        jmp     L_C3D5                          ; C435

; ----------------------------------------------------------------------------
L_C438: lda     $F4                             ; C438
        and     #$80                            ; C43A
        bne     L_C44C                          ; C43C
        lda     $F4                             ; C43E
        and     #$08                            ; C440
        bne     L_C454                          ; C442
        lda     $F4                             ; C444
        and     #$40                            ; C446
        bne     L_C458                          ; C448
        beq     L_C3D5                          ; C44A
L_C44C: lda     #$FF                            ; C44C
        sta     $03FB                           ; C44E
        jmp     L_C3D5                          ; C451

; ----------------------------------------------------------------------------
L_C454: lda     #$03                            ; C454
        bne     L_C45F                          ; C456
L_C458: lda     #$FF                            ; C458
        sta     Player_GunLevel                 ; C45A
        jmp     L_C3D5                          ; C45C

; ----------------------------------------------------------------------------
L_C45F: jsr     L_D1EF                          ; C45F
        jmp     L_C3D5                          ; C462

.endmacro

