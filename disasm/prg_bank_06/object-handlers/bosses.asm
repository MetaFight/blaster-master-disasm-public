.macro MAC_L_BBA7
; ----------------------------------------------------------------------------
L_BBA7: jsr     L_BBB8                          ; BBA7
        ldy     #$00                            ; BBAA
        lda     ($A6),y                         ; BBAC
        sta     LoadedObj + Obj::Health         ; BBAE
        sty     $4F                             ; BBB0
        jsr     Obj_CalcTileIndex               ; BBB2
        inc     LoadedObj + Obj::Type           ; BBB5
        rts                                     ; BBB7

; ----------------------------------------------------------------------------
L_BBB8: asl     a                               ; BBB8
        clc                                     ; BBB9
        adc     L_BC1D                          ; BBBA
        sta     $A6                             ; BBBD
        lda     #$00                            ; BBBF
        adc     L_BC1D+1                        ; BBC1
        sta     $A7                             ; BBC4
        rts                                     ; BBC6

; ----------------------------------------------------------------------------
L_BBC7: jsr     L_BBB8                          ; BBC7
        ldy     #$01                            ; BBCA
        lda     ($A6),y                         ; BBCC
        jsr     Enemy_Damage_Check_Sub          ; BBCE
        sta     $45                             ; BBD1
        bne     L_BBE2                          ; BBD3
        lda     LoadedObj + Obj::Health         ; BBD5
        bne     L_BBE2                          ; BBD7
        jsr     Obj_DespawnAndLog               ; BBD9
        jsr     L_BBF5                          ; BBDC
        lda     #$FF                            ; BBDF
        rts                                     ; BBE1

; ----------------------------------------------------------------------------
L_BBE2: lda     #$00                            ; BBE2
        rts                                     ; BBE4

; ----------------------------------------------------------------------------
L_BBE5: jsr     L_BBB8                          ; BBE5
        ldy     #$01                            ; BBE8
        lda     ($A6),y                         ; BBEA
        jsr     Enemy_Damage_Check_Sub          ; BBEC
        bne     L_BBF4                          ; BBEF
        jsr     L_BBF8                          ; BBF1
L_BBF4: rts                                     ; BBF4

; ----------------------------------------------------------------------------
L_BBF5: jsr     Obj_DespawnAndLog                           ; BBF5
L_BBF8: jsr     Step_RNG                           ; BBF8
        and     #$0F                            ; BBFB
        sta     $00                             ; BBFD
        ldy     #$03                            ; BBFF
        lda     ($A6),y                         ; BC01
        cmp     $00                             ; BC03
        bcc     L_BC0C                          ; BC05
        lda     #$00                            ; BC07
        jmp     L_BC18                          ; BC09

; ----------------------------------------------------------------------------
L_BC0C: ldy     #$02                            ; BC0C
        lda     ($A6),y                         ; BC0E
        jsr     Obj_TryCloneIntoEmptySlot       ; BC10
        lda     #$2C                            ; BC13
        sta     ObjectTable + Obj::Type,x       ; BC15
L_BC18: lda     #$4C                            ; BC18
        sta     LoadedObj + Obj::Type           ; BC1A
        rts                                     ; BC1C

; ----------------------------------------------------------------------------
L_BC1D: .addr   L_BC1F                          ; BC1D
.endmacro

