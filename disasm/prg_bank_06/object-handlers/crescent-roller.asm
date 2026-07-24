.macro MAC_L_B6E4
; ----------------------------------------------------------------------------
L_B6E4: jmp     L_B6F3                          ; B6E4

; ----------------------------------------------------------------------------
        lda     #$1A                            ; B6E7
        jsr     L_A2E9                          ; B6E9
        jsr     L_B81C                          ; B6EC
        lda     #$00                            ; B6EF
        sta     $50                             ; B6F1
L_B6F3: rts                                     ; B6F3

; ----------------------------------------------------------------------------
LB6F4:  jmp     L_B787                          ; B6F4

; ----------------------------------------------------------------------------
        lda     #$C0                            ; B6F7
        sta     $42                             ; B6F9
        lda     #$80                            ; B6FB
        sta     $43                             ; B6FD
        lda     $50                             ; B6FF
        bne     L_B72D                          ; B701
        lda     #$01                            ; B703
        jsr     LDFA0                           ; B705
        and     #$40                            ; B708
        beq     L_B710                          ; B70A
        lda     #$00                            ; B70C
        sta     LoadedObj_YVel                  ; B70E
L_B710: jsr     L_B82B                          ; B710
        bne     L_B787                          ; B713
        jsr     LE0FA                           ; B715
        bne     L_B72A                          ; B718
        jsr     LE0ED                           ; B71A
        bpl     L_B724                          ; B71D
        eor     #$FF                            ; B71F
        clc                                     ; B721
        adc     #$01                            ; B722
L_B724: cmp     #$05                            ; B724
        bne     L_B72A                          ; B726
        inc     $50                             ; B728
L_B72A: jmp     L_B787                          ; B72A

; ----------------------------------------------------------------------------
L_B72D: lda     $11                             ; B72D
        and     #$4C                            ; B72F
        bne     L_B76D                          ; B731
        jsr     LEB71                           ; B733
        and     #$03                            ; B736
        bne     L_B76D                          ; B738
        jsr     LDF0F                           ; B73A
        beq     L_B76D                          ; B73D
        stx     $09                             ; B73F
        jsr     LE0ED                           ; B741
        bmi     L_B74B                          ; B744
        lda     #$E8                            ; B746
        jmp     L_B74D                          ; B748

; ----------------------------------------------------------------------------
L_B74B: lda     #$A8                            ; B74B
L_B74D: ldx     $09                             ; B74D
        sta     PlayerObj_Facing,x              ; B74F
        jsr     LEB71                           ; B752
        ldx     #$04                            ; B755
        jsr     LE06A                           ; B757
        ldx     $09                             ; B75A
        clc                                     ; B75C
        adc     PlayerObj_Facing,x              ; B75D
        sta     PlayerObj_Facing,x              ; B760
        lda     #$28                            ; B763
        sta     $040B,x                         ; B765
        lda     #$46                            ; B768
        sta     PlayerObj_Type,x                ; B76A
L_B76D: lda     $11                             ; B76D
        cmp     #$55                            ; B76F
        bne     L_B787                          ; B771
        dec     $50                             ; B773
        lda     #$20                            ; B775
        sta     $52                             ; B777
        jsr     L_B81C                          ; B779
        lda     #$00                            ; B77C
        sec                                     ; B77E
        sbc     LoadedObj_XVel                  ; B77F
        sta     LoadedObj_XVel                  ; B781
        lda     #$00                            ; B783
        sta     LoadedObj_YVel                  ; B785
L_B787: lda     #$18                            ; B787
        sta     $40                             ; B789
        lda     #$10                            ; B78B
        sta     $41                             ; B78D
        jsr     LEF2B                           ; B78F
        beq     L_B797                          ; B792
        jmp     LD7F8                           ; B794

; ----------------------------------------------------------------------------
L_B797: lda     #$1A                            ; B797
        jsr     L_A30A                          ; B799
        beq     L_B7A1                          ; B79C
        jsr     L_A34D                          ; B79E
L_B7A1: lda     $50                             ; B7A1
        bne     L_B7A8                          ; B7A3
        jmp     L_B7AB                          ; B7A5

; ----------------------------------------------------------------------------
L_B7A8: jmp     L_B7E3                          ; B7A8

; ----------------------------------------------------------------------------
L_B7AB: lda     $3F                             ; B7AB
        pha                                     ; B7AD
        lda     #$01                            ; B7AE
        jsr     LE04E                           ; B7B0
        jsr     LD77D                           ; B7B3
        clc                                     ; B7B6
        lda     $3F                             ; B7B7
        adc     #$04                            ; B7B9
        sta     $3F                             ; B7BB
        lda     $11                             ; B7BD
        lsr     a                               ; B7BF
        lsr     a                               ; B7C0
        lsr     a                               ; B7C1
        and     #$03                            ; B7C2
        clc                                     ; B7C4
        adc     #$FC                            ; B7C5
        sta     $45                             ; B7C7
        jsr     LECB4                           ; B7C9
        lda     $3F                             ; B7CC
        sec                                     ; B7CE
        sbc     #$08                            ; B7CF
        sta     $3F                             ; B7D1
        lda     #$FB                            ; B7D3
        sta     $45                             ; B7D5
        jsr     LECB4                           ; B7D7
        pla                                     ; B7DA
        sta     $3F                             ; B7DB
        lda     #$B0                            ; B7DD
        jsr     LF011                           ; B7DF
        rts                                     ; B7E2

; ----------------------------------------------------------------------------
L_B7E3: lda     $3F                             ; B7E3
        pha                                     ; B7E5
        jsr     LE0ED                           ; B7E6
        bmi     L_B7F0                          ; B7E9
        lda     #$41                            ; B7EB
        jmp     L_B7F2                          ; B7ED

; ----------------------------------------------------------------------------
L_B7F0: lda     #$01                            ; B7F0
L_B7F2: sta     $44                             ; B7F2
        jsr     LD77D                           ; B7F4
        clc                                     ; B7F7
        lda     $3F                             ; B7F8
        adc     #$04                            ; B7FA
        sta     $3F                             ; B7FC
        lda     #$FC                            ; B7FE
        sta     $45                             ; B800
        jsr     LECB4                           ; B802
        lda     $3F                             ; B805
        sec                                     ; B807
        sbc     #$0C                            ; B808
        sta     $3F                             ; B80A
        lda     #$FB                            ; B80C
        sta     $45                             ; B80E
        jsr     LECB4                           ; B810
        pla                                     ; B813
        sta     $3F                             ; B814
        lda     #$B0                            ; B816
        jsr     LF011                           ; B818
        rts                                     ; B81B

; ----------------------------------------------------------------------------
L_B81C: jsr     LE0ED                           ; B81C
        bmi     L_B826                          ; B81F
        lda     #$08                            ; B821
        jmp     L_B828                          ; B823

; ----------------------------------------------------------------------------
L_B826: lda     #$F8                            ; B826
L_B828: sta     LoadedObj_XVel                  ; B828
        rts                                     ; B82A

; ----------------------------------------------------------------------------
L_B82B: lda     $52                             ; B82B
        beq     L_B831                          ; B82D
        dec     $52                             ; B82F
L_B831: rts                                     ; B831

.endmacro

