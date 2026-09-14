.macro MAC_L_B446
; ----------------------------------------------------------------------------
L_B446: jmp     L_B44E                          ; B446

; ----------------------------------------------------------------------------
L_B449: lda     #$05                            ; B449
        jsr     L_B2B4                          ; B44B
L_B44E: rts                                     ; B44E

; ----------------------------------------------------------------------------
L_B44F: jmp     L_B4A9                          ; B44F

; ----------------------------------------------------------------------------
L_B452: lda     #$80                            ; B452
        sta     $42                             ; B454
        lda     #$80                            ; B456
        sta     $43                             ; B458
        jsr     LC04B                           ; B45A
        sta     LoadedObj + Obj::Velocity_X     ; B45D
        lda     #$3F                            ; B45F
        ldx     #$4C                            ; B461
        jsr     LC14D                           ; B463
        ldx     #$03                            ; B466
        jsr     LC20A                           ; B468
        sta     LoadedObj + Obj::Velocity_X     ; B46B
        jsr     LC027                           ; B46D
        jsr     L_B243                          ; B470
        jsr     LC015                           ; B473
        jsr     LC054                           ; B476
        sta     LoadedObj + Obj::Velocity_Y     ; B479
        lda     #$3F                            ; B47B
        ldx     #$4D                            ; B47D
        jsr     LC14D                           ; B47F
        ldx     #$03                            ; B482
        jsr     LC20A                           ; B484
        sta     LoadedObj + Obj::Velocity_Y     ; B487
        jsr     LC03F                           ; B489
        jsr     L_B264                          ; B48C
        jsr     LC018                           ; B48F
        jsr     LC1B3                           ; B492
        and     #$03                            ; B495
        bne     L_B4A9                          ; B497
        lda     Global_FrameCounter             ; B499
        and     #$CF                            ; B49B
        bne     L_B4A9                          ; B49D
        jsr     LC12F                           ; B49F
        beq     L_B4A9                          ; B4A2
        lda     #$58                            ; B4A4
        sta     ObjectTable + Obj::Type,x       ; B4A6
L_B4A9: lda     #$10                            ; B4A9
        sta     $40                             ; B4AB
        lda     #$10                            ; B4AD
        sta     $41                             ; B4AF
        jsr     LC0FF                           ; B4B1
        beq     L_B4B9                          ; B4B4
        jmp     LC17A                           ; B4B6

; ----------------------------------------------------------------------------
L_B4B9: lda     #$05                            ; B4B9
        jsr     L_B2C5                          ; B4BB
        jsr     LC138                           ; B4BE
        jsr     LC0A2                           ; B4C1
        bne     L_B4CC                          ; B4C4
        lda     Global_FrameCounter             ; B4C6
        and     #$03                            ; B4C8
        bne     L_B4E0                          ; B4CA
L_B4CC: lda     #$01                            ; B4CC
        sta     $44                             ; B4CE
        lda     Global_FrameCounter             ; B4D0
        and     #$08                            ; B4D2
        bne     L_B4DB                          ; B4D4
        lda     #$46                            ; B4D6
        jmp     L_B4DD                          ; B4D8

; ----------------------------------------------------------------------------
L_B4DB: lda     #$47                            ; B4DB
L_B4DD: jmp     LC063                           ; B4DD

; ----------------------------------------------------------------------------
L_B4E0: rts                                     ; B4E0

.endmacro

