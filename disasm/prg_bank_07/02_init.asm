.macro MAC_L_C2FB
; ----------------------------------------------------------------------------
L_C2FB: lda     $14                             ; C2FB
        ora     #$08                            ; C2FD
        sta     $14                             ; C2FF
L_C301: lda     #$02                            ; C301
        sta     $DD                             ; C303
        jsr     L_CA14                          ; C305
        lda     #$00                            ; C308
        sta     $13                             ; C30A
        sta     $10                             ; C30C
        sta     $11                             ; C30E
        sta     $06F0                           ; C310
        sta     $06F1                           ; C313
        sta     $06F2                           ; C316
        sta     $92                             ; C319
        lda     #$FF                            ; C31B
        sta     $C1                             ; C31D
        lda     #$03                            ; C31F
        sta     LoadedObject_Type               ; C321
        jsr     L_C5B2                          ; C323
L_C326: lda     $06F3                           ; C326
        asl     a                               ; C329
        bne     L_C334                          ; C32A
        lda     #$00                            ; C32C
        jsr     L_E692                          ; C32E
        jsr     L_F7D1                          ; C331
L_C334: lda     #$00                            ; C334
        sta     $C5                             ; C336
        sta     $15                             ; C338
        sta     $B7                             ; C33A
        sta     $C3                             ; C33C
        sta     $90                             ; C33E
        sta     LoadedObject_XVel               ; C340
        sta     LoadedObject_YVel               ; C342
        sta     $50                             ; C344
        sta     $4F                             ; C346
        sta     $47                             ; C348
        sta     $94                             ; C34A
        sta     $8F                             ; C34C
        lda     #$FF                            ; C34E
        sta     LoadedObject_Health             ; C350
        sta     $03FF                           ; C352
        jsr     L_D7E3                          ; C355
        jsr     L_CBA9                          ; C358
        jsr     L_E243                          ; C35B
L_C35E: lda     #$00                            ; C35E
        sta     $03D6                           ; C360
        sta     $8F                             ; C363
        jsr     L_C6EF                          ; C365
        jsr     L_C659                          ; C368
        jsr     L_E6FA                          ; C36B
        jsr     L_EA03                          ; C36E
        lda     LoadedObject_X_Pixel            ; C371
        sta     $1C                             ; C373
        lda     LoadedObject_X_MetaTile         ; C375
        sta     $1D                             ; C377
        sec                                     ; C379
        lda     $1C                             ; C37A
        sbc     #$00                            ; C37C
        sta     $1C                             ; C37E
        lda     $1D                             ; C380
        sbc     #$08                            ; C382
        sta     $1D                             ; C384
        lda     LoadedObject_Y_Pixel            ; C386
        sta     $1E                             ; C388
        lda     LoadedObject_Y_MetaTile         ; C38A
        sta     $1F                             ; C38C
        sec                                     ; C38E
        lda     $1E                             ; C38F
        sbc     #$80                            ; C391
        sta     $1E                             ; C393
        lda     $1F                             ; C395
        sbc     #$07                            ; C397
        sta     $1F                             ; C399
        jsr     L_CC35                          ; C39B
        jsr     L_DCFC                          ; C39E
        lda     $C5                             ; C3A1
        and     #$02                            ; C3A3
        beq     L_C3AA                          ; C3A5
        jsr     L_C742                          ; C3A7
L_C3AA: jsr     L_C772                          ; C3AA
        lda     #$00                            ; C3AD
        sta     $8E                             ; C3AF
        lda     #$00                            ; C3B1
        sta     ObjectSlot_Offset               ; C3B3
        jsr     L_C928                          ; C3B5
        jsr     L_C9D6                          ; C3B8
        jsr     L_D7B6                          ; C3BB
        jsr     L_CE0F                          ; C3BE
        lda     $C5                             ; C3C1
        bit     LE6E1                           ; C3C3
        beq     L_C3D5                          ; C3C6
        lda     #$00                            ; C3C8
        sta     ObjectSlot_Offset               ; C3CA
        jsr     ObjSlot_Load                    ; C3CC
        jsr     L0000                           ; C3CF
        jmp     L_C465                          ; C3D2

.endmacro

