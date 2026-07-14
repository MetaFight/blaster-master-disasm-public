.macro MAC_L_C3D5
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
L_C430: bit     LFFF3                           ; C430
        bvc     L_C3D5                          ; C433
        jmp     L_C3D5                          ; C435

; ----------------------------------------------------------------------------
.endmacro

.macro MAC_L_C45F
L_C45F: jsr     L_D1EF                          ; C45F
        jmp     L_C3D5                          ; C462

; ----------------------------------------------------------------------------
.endmacro

