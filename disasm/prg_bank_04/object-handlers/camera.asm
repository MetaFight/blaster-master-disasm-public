.macro MAC_object_handlers__camera_1_of_2
; ----------------------------------------------------------------------------
L_B366: jmp     L_B392                          ; B366

; ----------------------------------------------------------------------------
L_B369: lda     #$04                            ; B369
        jsr     L_B2B4                          ; B36B
        lda     PlayerSlot + Obj::Position_X_Lo ; B36E
        sta     LoadedObj + Obj::Position_X_Lo  ; B371
        lda     PlayerSlot + Obj::Position_X_Hi ; B373
        sta     LoadedObj + Obj::Position_X_Hi  ; B376
        lda     PlayerSlot + Obj::Position_Y_Lo ; B378
        sta     LoadedObj + Obj::Position_Y_Lo  ; B37B
        lda     PlayerSlot + Obj::Position_Y_Hi ; B37D
        sta     LoadedObj + Obj::Position_Y_Hi  ; B380
        lda     #$00                            ; B382
        sta     LoadedObj + Obj::Facing         ; B384
        sta     LoadedObj + Obj::Scratch2       ; B386
        jsr     LC12F                           ; B388
        beq     L_B392                          ; B38B
        lda     #$80                            ; B38D
        sta     ObjectTable + Obj::Facing,x     ; B38F
L_B392: rts                                     ; B392

; ----------------------------------------------------------------------------
L_B393: jmp     L_B3E2                          ; B393

; ----------------------------------------------------------------------------
L_B396: lda     #$80                            ; B396
        sta     $42                             ; B398
        lda     #$80                            ; B39A
        sta     $43                             ; B39C
        lda     PlayerSlot + Obj::Type          ; B39E
        cmp     #$03                            ; B3A1
        beq     L_B3A8                          ; B3A3
        jmp     LC14A                           ; B3A5

; ----------------------------------------------------------------------------
L_B3A8: inc     LoadedObj + Obj::Scratch2       ; B3A8
        lda     LoadedObj + Obj::Scratch2       ; B3AA
        bmi     L_B3B3                          ; B3AC
        eor     #$FF                            ; B3AE
        clc                                     ; B3B0
        adc     #$01                            ; B3B1
L_B3B3: ldx     #$01                            ; B3B3
        jsr     LC20A                           ; B3B5
        clc                                     ; B3B8
        adc     #$54                            ; B3B9
        sta     LoadedObj + Obj::Scratch1       ; B3BB
        jsr     LC048                           ; B3BD
        ldx     #$01                            ; B3C0
        jsr     LC20A                           ; B3C2
        sta     LoadedObj + Obj::Velocity_X     ; B3C5
        lda     #$14                            ; B3C7
        ldx     #$4C                            ; B3C9
        jsr     LC14D                           ; B3CB
        jsr     LC051                           ; B3CE
        ldx     #$01                            ; B3D1
        jsr     LC20A                           ; B3D3
        sta     LoadedObj + Obj::Velocity_Y     ; B3D6
        lda     #$14                            ; B3D8
        ldx     #$4D                            ; B3DA
        jsr     LC14D                           ; B3DC
        jsr     LC01E                           ; B3DF
L_B3E2: lda     #$10                            ; B3E2
        sta     $40                             ; B3E4
        lda     #$10                            ; B3E6
        sta     $41                             ; B3E8
        lda     LoadedObj + Obj::Position_X_Hi  ; B3EA
        pha                                     ; B3EC
        lda     LoadedObj + Obj::Position_X_Lo  ; B3ED
        pha                                     ; B3EF
        lda     LoadedObj + Obj::Position_Y_Hi  ; B3F0
        pha                                     ; B3F2
        lda     LoadedObj + Obj::Position_Y_Lo  ; B3F3
        pha                                     ; B3F5
        lda     Global_FrameCounter             ; B3F6
        asl     a                               ; B3F8
        asl     a                               ; B3F9
        clc                                     ; B3FA
        adc     LoadedObj + Obj::Facing         ; B3FB
        sta     $05                             ; B3FD
        ldy     LoadedObj + Obj::Scratch1       ; B3FF
        lda     $05                             ; B401
        jsr     LC1C8                           ; B403
        jsr     L_B1F9                          ; B406
        ldy     LoadedObj + Obj::Scratch1       ; B409
        lda     $05                             ; B40B
        jsr     LC1B6                           ; B40D
        jsr     L_B21E                          ; B410
        jsr     LC1EC                           ; B413
        jsr     LC0FF                           ; B416
        beq     L_B41E                          ; B419
        jsr     LC17A                           ; B41B
L_B41E: lda     #$04                            ; B41E
        jsr     L_B2C5                          ; B420
        lda     #$01                            ; B423
        jsr     LC075                           ; B425
        lda     #$3F                            ; B428
        sta     $45                             ; B42A
        jsr     LC063                           ; B42C
        pla                                     ; B42F
        sta     LoadedObj + Obj::Position_Y_Lo  ; B430
        pla                                     ; B432
        sta     LoadedObj + Obj::Position_Y_Hi  ; B433
        pla                                     ; B435
        sta     LoadedObj + Obj::Position_X_Lo  ; B436
        pla                                     ; B438
        sta     LoadedObj + Obj::Position_X_Hi  ; B439
        lda     PlayerSlot + Obj::Type          ; B43B
        cmp     #$03                            ; B43E
        beq     L_B445                          ; B440
        jmp     LC114                           ; B442

; ----------------------------------------------------------------------------
L_B445: rts                                     ; B445

.endmacro

; Interrupted by 6 macros:
;   MAC_object_handlers__gumdrop_gray
;   MAC_object_handlers__flier
;   MAC__ungrouped_9_of_12
;   MAC_object_handlers__charging_robot
;   MAC_object_handlers__spinner
;   MAC_object_handlers__cross_shooter

.macro MAC_object_handlers__camera_2_of_2
; ----------------------------------------------------------------------------
; ObjType $3B: Vertical Camera - Init.
.proc ObjHandler_Ovhd_3B_Vertical_Camera_Init
        jmp     _Done                           ; B70C

; ----------------------------------------------------------------------------
_Body:
        lda     #$0A                            ; B70F
; Init using shared OvhdEnemy_Init with enemy descriptor #$0A.
        jsr     L_B2B4                          ; B711
        lda     #$00                            ; B714
; Reset IsAttacking (Scratch0) to Idle (0).
        sta     LoadedObj + Obj::Scratch0       ; B716
_Done:
        rts                                     ; B718
.endproc

; ----------------------------------------------------------------------------
; ObjType $3C: Vertical Camera - Main
.proc ObjHandler_Ovhd_3C_Vertical_Camera_Main
        jmp     _ScreenTest                     ; B719

; ----------------------------------------------------------------------------
_Body:
; Set the collision box.
        lda     #$80                            ; B71C
        sta     $42                             ; B71E
        lda     #$80                            ; B720
        sta     $43                             ; B722
        lda     LoadedObj + Obj::Scratch0       ; B724
; If already attacking, skip to Move.
        bne     _Move                           ; B726
; Otherwise, calculate X Delta to the Player.
        jsr     LC045                           ; B728
; If not 0, skip to ScreenTest.
        bne     _ScreenTest                     ; B72B
; Otherwise, start attack by setting IsAttacking (Scratch0) to 1 (true) and clearing Velocity_X.
        inc     LoadedObj + Obj::Scratch0       ; B72D
        lda     #$00                            ; B72F
        sta     LoadedObj + Obj::Velocity_X     ; B731
        jsr     LC04E                           ; B733
; Next, pick Velocity_Y based on sign of Y Delta to Player.
        bmi     _DirUp                          ; B736
; Velocity_Y = +3.5 px/f (down).
        lda     #$38                            ; B738
        bne     _SetVel                         ; B73A
; Velocity_Y = -3.5 px/f (up).
_DirUp:
        lda     #$C8                            ; B73C
; Commit chosen attack direction.
_SetVel:
        sta     LoadedObj + Obj::Velocity_Y     ; B73E
; Apply movement and collisions.
_Move:
        jsr     LC02D                           ; B740
; If no collisions, skip to ScreenTest.
        beq     _ScreenTest                     ; B743
; On collision, unset IsAttacking (Scratch0) and fall through to ScreenTest.
        dec     LoadedObj + Obj::Scratch0       ; B745
_ScreenTest:
        lda     #$10                            ; B747
        sta     $40                             ; B749
        lda     #$10                            ; B74B
        sta     $41                             ; B74D
; Set object bounds and do the screen test.
        jsr     LC0FF                           ; B74F
; if off-screen then tombstone, otherwise skip to OnScreen.
        beq     _OnScreen                       ; B752
        jmp     LC17A                           ; B754

; ----------------------------------------------------------------------------
; Handle incoming damage (using enemy descriptor #$0A), then
; Draw animated sprite (unless occluded by foreground tile, in which case only draw every 4th
; frame to create a flicker).
_OnScreen:
        lda     #$0A                            ; B757
        jsr     L_B2C5                          ; B759
        jsr     LC138                           ; B75C
        jsr     LC0A2                           ; B75F
        bne     _Draw                           ; B762
        lda     Global_FrameCounter             ; B764
        and     #$03                            ; B766
        bne     _Ret                            ; B768
; Set OAM Attributes to sprite palette 1,
; Pick animation MetaSprite Id based on Global_FrameCounter (each animation frame last 16 draw
; frames),
; Render selected MetaSprite.
_Draw:
        lda     #$01                            ; B76A
        sta     $44                             ; B76C
        lda     Global_FrameCounter             ; B76E
        lsr     a                               ; B770
        lsr     a                               ; B771
        lsr     a                               ; B772
        lsr     a                               ; B773
        and     #$03                            ; B774
        tax                                     ; B776
        lda     Camera_MetaSpriteId_ByFrame,x   ; B777
        jmp     LC063                           ; B77A

; ----------------------------------------------------------------------------
_Ret:
        rts                                     ; B77D
.endproc

; ----------------------------------------------------------------------------
; Table of 4 MetaSprite Ids used to animate both Vertical and Horizontal Cameras.
Camera_MetaSpriteId_ByFrame:
        .byte   $2A,$2B,$2C,$2D                 ; B77E
; ----------------------------------------------------------------------------
L_B782: jmp     L_B78E                          ; B782

; ----------------------------------------------------------------------------
L_B785: lda     #$0B                            ; B785
        jsr     L_B2B4                          ; B787
        lda     #$00                            ; B78A
        sta     LoadedObj + Obj::Scratch0       ; B78C
L_B78E: rts                                     ; B78E

; ----------------------------------------------------------------------------
L_B78F: jmp     L_B7BD                          ; B78F

; ----------------------------------------------------------------------------
L_B792: lda     #$80                            ; B792
        sta     $42                             ; B794
        lda     #$80                            ; B796
        sta     $43                             ; B798
        lda     LoadedObj + Obj::Scratch0       ; B79A
        bne     L_B7B6                          ; B79C
        jsr     LC04E                           ; B79E
        bne     L_B7BD                          ; B7A1
        inc     LoadedObj + Obj::Scratch0       ; B7A3
        lda     #$00                            ; B7A5
        sta     LoadedObj + Obj::Velocity_Y     ; B7A7
        jsr     LC045                           ; B7A9
        bmi     L_B7B2                          ; B7AC
        lda     #$38                            ; B7AE
        bne     L_B7B4                          ; B7B0
L_B7B2: lda     #$C8                            ; B7B2
L_B7B4: sta     LoadedObj + Obj::Velocity_X     ; B7B4
L_B7B6: jsr     LC02D                           ; B7B6
        beq     L_B7BD                          ; B7B9
        dec     LoadedObj + Obj::Scratch0       ; B7BB
L_B7BD: lda     #$10                            ; B7BD
        sta     $40                             ; B7BF
        lda     #$10                            ; B7C1
        sta     $41                             ; B7C3
        jsr     LC0FF                           ; B7C5
        beq     L_B7CD                          ; B7C8
        jmp     LC17A                           ; B7CA

; ----------------------------------------------------------------------------
L_B7CD: lda     #$0B                            ; B7CD
        jsr     L_B2C5                          ; B7CF
        lda     #$01                            ; B7D2
        sta     $44                             ; B7D4
        lda     Global_FrameCounter             ; B7D6
        lsr     a                               ; B7D8
        lsr     a                               ; B7D9
        lsr     a                               ; B7DA
        lsr     a                               ; B7DB
        and     #$03                            ; B7DC
        tax                                     ; B7DE
        lda     Camera_MetaSpriteId_ByFrame,x   ; B7DF
        jmp     LC063                           ; B7E2

.endmacro

