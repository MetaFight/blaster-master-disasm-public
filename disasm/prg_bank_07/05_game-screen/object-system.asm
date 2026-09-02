.macro MAC_L_C5B2
; ----------------------------------------------------------------------------
L_C5B2: lda     LoadedObj + Obj::Position_X_Lo  ; C5B2
        sta     $03F5                           ; C5B4
        lda     LoadedObj + Obj::Position_X_Hi  ; C5B7
        sta     $03F6                           ; C5B9
        lda     LoadedObj + Obj::Position_Y_Lo  ; C5BC
        sta     $03F7                           ; C5BE
        lda     LoadedObj + Obj::Position_Y_Hi  ; C5C1
        sta     $03F8                           ; C5C3
        lda     $14                             ; C5C6
        sta     $03F9                           ; C5C8
        lda     $C1                             ; C5CB
        sta     $03FA                           ; C5CD
        lda     LoadedObj + Obj::Type           ; C5D0
        sta     $0350                           ; C5D2
        lda     $03D0                           ; C5D5
        sta     $0378                           ; C5D8
        lda     $03D1                           ; C5DB
        sta     $0379                           ; C5DE
        lda     $03D2                           ; C5E1
        sta     $037A                           ; C5E4
        lda     $03D3                           ; C5E7
        sta     $037B                           ; C5EA
        lda     $03D4                           ; C5ED
        sta     $037D                           ; C5F0
        lda     $03D5                           ; C5F3
        sta     $037C                           ; C5F6
        rts                                     ; C5F9

; ----------------------------------------------------------------------------
L_C5FA: lda     $03F5                           ; C5FA
        sta     LoadedObj + Obj::Position_X_Lo  ; C5FD
        lda     $03F6                           ; C5FF
        sta     LoadedObj + Obj::Position_X_Hi  ; C602
        lda     $03F7                           ; C604
        sta     LoadedObj + Obj::Position_Y_Lo  ; C607
        lda     $03F8                           ; C609
        sta     LoadedObj + Obj::Position_Y_Hi  ; C60C
        lda     $03F9                           ; C60E
        sta     $14                             ; C611
        lda     $03FA                           ; C613
        sta     $C1                             ; C616
        lda     $0350                           ; C618
        sta     LoadedObj + Obj::Type           ; C61B
        lda     $0378                           ; C61D
        sta     $03D0                           ; C620
        lda     $0379                           ; C623
        sta     $03D1                           ; C626
        lda     $037A                           ; C629
        sta     $03D2                           ; C62C
        lda     $037B                           ; C62F
        sta     $03D3                           ; C632
        lda     $037D                           ; C635
        sta     $03D4                           ; C638
        lda     $037C                           ; C63B
        sta     $03D5                           ; C63E
        rts                                     ; C641

.endmacro

.macro MAC_L_C8DF
; ----------------------------------------------------------------------------
; Copies an entire object slot (14 bytes) from the Object Table at $0400 into LoadedObj_*.
Obj_LoadFromSlot:
        ldy     ObjectSlot_Offset               ; C8DF
        lda     ObjectTable + Obj::Type,y       ; C8E1
        sta     LoadedObj + Obj::Type           ; C8E4
        lda     ObjectTable + Obj::Facing,y     ; C8E6
        sta     LoadedObj + Obj::Facing         ; C8E9
        lda     ObjectTable + Obj::Position_X_Lo,y ; C8EB
        sta     LoadedObj + Obj::Position_X_Lo  ; C8EE
        lda     ObjectTable + Obj::Position_X_Hi,y ; C8F0
        sta     LoadedObj + Obj::Position_X_Hi  ; C8F3
        lda     ObjectTable + Obj::Position_Y_Lo,y ; C8F5
        sta     LoadedObj + Obj::Position_Y_Lo  ; C8F8
        lda     ObjectTable + Obj::Position_Y_Hi,y ; C8FA
        sta     LoadedObj + Obj::Position_Y_Hi  ; C8FD
        lda     ObjectTable + Obj::Velocity_X,y ; C8FF
        sta     LoadedObj + Obj::Velocity_X     ; C902
        lda     ObjectTable + Obj::Velocity_Y,y ; C904
        sta     LoadedObj + Obj::Velocity_Y     ; C907
        lda     ObjectTable + Obj::TileIndex,y  ; C909
        sta     LoadedObj + Obj::TileIndex      ; C90C
        lda     $0409,y                         ; C90E
        sta     $4F                             ; C911
        lda     ObjectTable + Obj::Scratch0,y   ; C913
        sta     LoadedObj + Obj::Scratch0       ; C916
        lda     ObjectTable + Obj::Scratch1,y   ; C918
        sta     LoadedObj + Obj::Scratch1       ; C91B
        lda     ObjectTable + Obj::Scratch2,y   ; C91D
        sta     LoadedObj + Obj::Scratch2       ; C920
        lda     ObjectTable + Obj::Health,y     ; C922
        sta     LoadedObj + Obj::Health         ; C925
        rts                                     ; C927

; ----------------------------------------------------------------------------
; Save LoadedObj_* back to ObjectTable.
Obj_SaveToSlot:
        ldy     ObjectSlot_Offset               ; C928
        lda     LoadedObj + Obj::Type           ; C92A
        sta     ObjectTable + Obj::Type,y       ; C92C
        lda     LoadedObj + Obj::Facing         ; C92F
        sta     ObjectTable + Obj::Facing,y     ; C931
        lda     LoadedObj + Obj::Position_X_Lo  ; C934
        sta     ObjectTable + Obj::Position_X_Lo,y ; C936
        lda     LoadedObj + Obj::Position_X_Hi  ; C939
        sta     ObjectTable + Obj::Position_X_Hi,y ; C93B
        lda     LoadedObj + Obj::Position_Y_Lo  ; C93E
        sta     ObjectTable + Obj::Position_Y_Lo,y ; C940
        lda     LoadedObj + Obj::Position_Y_Hi  ; C943
        sta     ObjectTable + Obj::Position_Y_Hi,y ; C945
        lda     LoadedObj + Obj::Velocity_X     ; C948
        sta     ObjectTable + Obj::Velocity_X,y ; C94A
        lda     LoadedObj + Obj::Velocity_Y     ; C94D
        sta     ObjectTable + Obj::Velocity_Y,y ; C94F
        lda     LoadedObj + Obj::TileIndex      ; C952
        sta     ObjectTable + Obj::TileIndex,y  ; C954
        lda     $4F                             ; C957
        sta     $0409,y                         ; C959
        lda     LoadedObj + Obj::Scratch0       ; C95C
        sta     ObjectTable + Obj::Scratch0,y   ; C95E
        lda     LoadedObj + Obj::Scratch1       ; C961
        sta     ObjectTable + Obj::Scratch1,y   ; C963
        lda     LoadedObj + Obj::Scratch2       ; C966
        sta     ObjectTable + Obj::Scratch2,y   ; C968
        lda     LoadedObj + Obj::Health         ; C96B
        sta     ObjectTable + Obj::Health,y     ; C96D
        rts                                     ; C970

; ----------------------------------------------------------------------------
L_C971: lda     #$00                            ; C971
        sta     ObjectSlot_Offset               ; C973
        sta     ObjectSlot_Index                ; C975
L_C977: ldx     ObjectSlot_Offset               ; C977
        lda     ObjectTable + Obj::Type,x       ; C979
        beq     L_C990                          ; C97C
        jsr     Obj_LoadFromSlot                ; C97E
        lda     $4F                             ; C981
        beq     L_C987                          ; C983
        dec     $4F                             ; C985
L_C987: jsr     L_C9A4                          ; C987
        jsr     Obj_SaveToSlot                  ; C98A
        jsr     L_EC73                          ; C98D
L_C990: lda     ObjectSlot_Offset               ; C990
        clc                                     ; C992
        adc     #$0E                            ; C993
        sta     ObjectSlot_Offset               ; C995
        inc     ObjectSlot_Index                ; C997
        lda     ObjectSlot_Index                ; C999
        cmp     #$12                            ; C99B
        bcc     L_C977                          ; C99D
        lda     #$00                            ; C99F
        sta     $4F                             ; C9A1
        rts                                     ; C9A3

; ----------------------------------------------------------------------------
L_C9A4: ldx     #$40                            ; C9A4
        lda     $14                             ; C9A6
        and     #$08                            ; C9A8
        beq     L_C9AE                          ; C9AA
        ldx     #$60                            ; C9AC
L_C9AE: txa                                     ; C9AE
        pha                                     ; C9AF
        jsr     BankDispatch_Switch             ; C9B0
        pla                                     ; C9B3
        lsr     a                               ; C9B4
        lsr     a                               ; C9B5
        lsr     a                               ; C9B6
        lsr     a                               ; C9B7
        and     #$0F                            ; C9B8
        sta     SavedPrgBank                    ; C9BA
        lda     LoadedObj + Obj::Type           ; C9BC
        sec                                     ; C9BE
        sbc     #$01                            ; C9BF
        jsr     L_EB51                          ; C9C1
        lda     $15                             ; C9C4
        bne     L_C9D3                          ; C9C6
        clc                                     ; C9C8
        lda     IndirectPtrLo                   ; C9C9
        adc     #$03                            ; C9CB
        sta     IndirectPtrLo                   ; C9CD
        bcc     L_C9D3                          ; C9CF
        inc     IndirectPtrHi                   ; C9D1
L_C9D3: jmp     (IndirectPtrLo)                 ; C9D3

.endmacro

.macro MAC_L_D2AB
; ----------------------------------------------------------------------------
; Read LevelTileData[LoadedObj.TileIndex].
; 
; Input:
;   LoadedObj.TileIndex
; 
; Output:
;   A = tile data from LevelTileData
Obj_ReadTile:
        ldx     LoadedObj + Obj::TileIndex      ; D2AB
        lda     LevelTileData,x                 ; D2AD
        rts                                     ; D2B0

; ----------------------------------------------------------------------------
; Reads the tile byte at LoadedObj.TileIndex plus an offset (A).
; 
; Input:
;   A = offset
;     eg, $11 = immediately below
;         $ff = 1 to the left
;         $01 = 1 to the right
; 
; Output:
;   A = Tile data
Obj_ReadTile_WithOffset:
        clc                                     ; D2B1
; A (step offset) + $4E → cell index; A = $0500[index] = the look-ahead tile.
        adc     LoadedObj + Obj::TileIndex      ; D2B2
        tax                                     ; D2B4
        lda     LevelTileData,x                 ; D2B5
        rts                                     ; D2B8

; ----------------------------------------------------------------------------
; Computes the index (+TilemapBaseIndex) into the LevelTileData tile map corresponding to
; LoadedObj's current position.
Obj_CalcTileIndex:
        lda     LoadedObj + Obj::Position_Y_Hi  ; D2B9
        sec                                     ; D2BB
        sbc     $1F                             ; D2BC
        and     #$0F                            ; D2BE
; At this point, TileIndex holds a temp value corresponding to the *row offset* in the 17x15
; table.
        sta     LoadedObj + Obj::TileIndex      ; D2C0
        asl     a                               ; D2C2
        asl     a                               ; D2C3
        asl     a                               ; D2C4
        asl     a                               ; D2C5
        clc                                     ; D2C6
        adc     LoadedObj + Obj::TileIndex      ; D2C7
; Here, we convert TileIndex (currently a row offset) into an actual *Index*.
; Because a row is 17-wide, we do this by multiplying by 17.
; 
; The multiplication by 17 is implemented as
; TileIndex = TileIndex + (16 * TileIndex)
        sta     LoadedObj + Obj::TileIndex      ; D2C9
        lda     LoadedObj + Obj::Position_X_Hi  ; D2CB
        sec                                     ; D2CD
        sbc     $1D                             ; D2CE
        and     #$1F                            ; D2D0
        clc                                     ; D2D2
; This adds the X component (how far ito the row) to TileIndex
; 
; TileIndex = (Obj.X - Camera.X) + TileIndex
        adc     LoadedObj + Obj::TileIndex      ; D2D3
        clc                                     ; D2D5
        adc     $3A                             ; D2D6
; Finally, we add in TilemapBaseIndex
        sta     LoadedObj + Obj::TileIndex      ; D2D8
        rts                                     ; D2DA

; ----------------------------------------------------------------------------
; Applies Velocity_X and Velocity_Y to LoadedObj's position with carry-aware 16-bit fixed-point
; arithmetic.
; 
; Notes:
;   I'm not sure what the benefits of this variant's arithmetic are over
;   Apply_Double_Velocity_XY's appreach.
;   Why is the sign of the high byte dropped?  Why isn't the Lo addition done first for easy carry
;   into the high byte?
Apply_Velocity_XY:
        jsr     Apply_Velocity_Y                ; D2DB
; Applies Velocity_X to LoadedObj's position with carry-aware 16-bit fixed-point arithmetic.
Apply_Velocity_X:
        lda     LoadedObj + Obj::Position_X_Hi  ; D2DE
        and     #$7F                            ; D2E0
; Clear position hi-byte's sign (not sure why).
        sta     LoadedObj + Obj::Position_X_Hi  ; D2E2
        lda     LoadedObj + Obj::Position_X_Lo  ; D2E4
        clc                                     ; D2E6
        adc     LoadedObj + Obj::Velocity_X     ; D2E7
; Add Velocity_X to position lo-byte and save result.
        sta     LoadedObj + Obj::Position_X_Lo  ; D2E9
; If the carry flag is set, we need to adjust the hi-byte and TileIndex.
; ROR A; EOR $4C: bit 7 = 1 if carry-out and velocity sign disagree (page crossing)
        ror     a                               ; D2EB
; This following EOR produces a positive number if
;   * Velocity_X is negative (bit7 on) and the shifted Carry flag is set (A's bit7 on); (is this
;   even possible) or
;   * Velocity_X is positive and the shifted Carry flag is not set
        eor     LoadedObj + Obj::Velocity_X     ; D2EC
; In either case, no additional care required.  Skip to end.
        bpl     _Apply_Velocity_X__Done         ; D2EE
        lda     LoadedObj + Obj::Velocity_X     ; D2F0
; If Velocity_X is negative, DECrement the position hi-byte and TileIndex.
        bmi     _Apply_Velocity_X__MovedLeft    ; D2F2
; otherwise, INCrement the position hi-byte and TileIndex.
        inc     LoadedObj + Obj::Position_X_Hi  ; D2F4
        inc     LoadedObj + Obj::TileIndex      ; D2F6
        rts                                     ; D2F8

; ----------------------------------------------------------------------------
_Apply_Velocity_X__MovedLeft:
        dec     LoadedObj + Obj::Position_X_Hi  ; D2F9
        dec     LoadedObj + Obj::TileIndex      ; D2FB
_Apply_Velocity_X__Done:
        rts                                     ; D2FD

; ----------------------------------------------------------------------------
; Identical to Apply_Velocity_X apart from TileIndex adjustment logic.
; 
; Moving up requires subracting $11 from TileIndex and moving down requires adding $11 to id. 
; That is the only different between the two.
Apply_Velocity_Y:
        lda     LoadedObj + Obj::Position_Y_Hi  ; D2FE
        and     #$7F                            ; D300
        sta     LoadedObj + Obj::Position_Y_Hi  ; D302
        lda     LoadedObj + Obj::Position_Y_Lo  ; D304
        clc                                     ; D306
        adc     LoadedObj + Obj::Velocity_Y     ; D307
        sta     LoadedObj + Obj::Position_Y_Lo  ; D309
        ror     a                               ; D30B
        eor     LoadedObj + Obj::Velocity_Y     ; D30C
        bpl     _Apply_Velocity_Y__Done         ; D30E
        lda     LoadedObj + Obj::Velocity_Y     ; D310
        bmi     _Apply_Velocity_Y__MovedUp      ; D312
; Handle moving down a tile.
; 
; INC position hi-byte and prep TileIndex addition of $11 (17, one row).
        inc     LoadedObj + Obj::Position_Y_Hi  ; D314
        lda     #$11                            ; D316
        bne     _Apply_Velocity_Y__AdjTileIndex ; D318
; Handle moving up a tile.
; 
; DEC position hi-byte and prep TileIndex addition of $EF (-17, one row).
_Apply_Velocity_Y__MovedUp:
        dec     LoadedObj + Obj::Position_Y_Hi  ; D31A
        lda     #$EF                            ; D31C
; add ±17 to TileIndex
_Apply_Velocity_Y__AdjTileIndex:
        clc                                     ; D31E
        adc     LoadedObj + Obj::TileIndex      ; D31F
        sta     LoadedObj + Obj::TileIndex      ; D321
_Apply_Velocity_Y__Done:
        rts                                     ; D323

; ----------------------------------------------------------------------------
; Apply DOUBLE the LoadedObject's X and Y velocities to its position following 16-bit fixed-point
; arithmetic.
; Also keeps track of TileIndex correctly.
Apply_Double_Velocity_XY:
        jsr     Apply_Double_Velocity_Y         ; D324
; Apply DOUBLE the LoadedObject's X velocity to its position, adjusting tilemap column $4E and
; keeping $49 in 0-$7F. Dispatch $C02A; also the fall-through tail of Apply_Double_Velocity_XY.
Apply_Double_Velocity_X:
        lda     #$00                            ; D327
        ldx     LoadedObj + Obj::Velocity_X     ; D329
; If Velocity_X is positive, use sign-extension byte $00, otherwise use $FF
        bpl     _Apply_Double_Velocity_X__OnSignExtensionByteChosen; D32B
        lda     #$FF                            ; D32D
_Apply_Double_Velocity_X__OnSignExtensionByteChosen:
        pha                                     ; D32F
        txa                                     ; D330
; ASL doubles XVel before the add — this is the actual ×2 in 'double speed'.
        asl     a                               ; D331
        clc                                     ; D332
        adc     LoadedObj + Obj::Position_X_Lo  ; D333
        sta     LoadedObj + Obj::Position_X_Lo  ; D335
; Retrieve the sign-extension byte from the stack to carry into the x-metatile value.
        pla                                     ; D337
        adc     LoadedObj + Obj::Position_X_Hi  ; D338
        pha                                     ; D33A
        sec                                     ; D33B
        sbc     LoadedObj + Obj::Position_X_Hi  ; D33C
        clc                                     ; D33E
; Update the TileIndex accordingly.
        adc     LoadedObj + Obj::TileIndex      ; D33F
        sta     LoadedObj + Obj::TileIndex      ; D341
        pla                                     ; D343
        and     #$7F                            ; D344
        sta     LoadedObj + Obj::Position_X_Hi  ; D346
        rts                                     ; D348

; ----------------------------------------------------------------------------
; Apply DOUBLE the LoadedObject's Y velocity to its position, adjusting tilemap index $4E by
; 16×row (row stride $11) and keeping $4B in 0-$7F. Dispatch $C042; Y half of
; Apply_Double_Velocity_XY.
Apply_Double_Velocity_Y:
        lda     #$00                            ; D349
        ldx     LoadedObj + Obj::Velocity_Y     ; D34B
        bpl     _Apply_Double_Velocity_Y__PushSign; D34D
        lda     #$FF                            ; D34F
; PHA the sign-extension byte ($00 or $FF) then add 2×YVel
_Apply_Double_Velocity_Y__PushSign:
        pha                                     ; D351
        txa                                     ; D352
        asl     a                               ; D353
        clc                                     ; D354
        adc     LoadedObj + Obj::Position_Y_Lo  ; D355
        sta     LoadedObj + Obj::Position_Y_Lo  ; D357
        pla                                     ; D359
        adc     LoadedObj + Obj::Position_Y_Hi  ; D35A
        pha                                     ; D35C
        sec                                     ; D35D
        sbc     LoadedObj + Obj::Position_Y_Hi  ; D35E
        sta     LoadedObj + Obj::Position_Y_Hi  ; D360
        asl     a                               ; D362
        asl     a                               ; D363
        asl     a                               ; D364
        asl     a                               ; D365
        clc                                     ; D366
        adc     LoadedObj + Obj::Position_Y_Hi  ; D367
        clc                                     ; D369
        adc     LoadedObj + Obj::TileIndex      ; D36A
        sta     LoadedObj + Obj::TileIndex      ; D36C
        pla                                     ; D36E
        and     #$7F                            ; D36F
        sta     LoadedObj + Obj::Position_Y_Hi  ; D371
        rts                                     ; D373

; ----------------------------------------------------------------------------
L_D374: jsr     V_Collision_Check               ; D374
        jmp     H_Collision_Check               ; D377

; ----------------------------------------------------------------------------
L_D37A: jsr     Apply_Velocity_X                ; D37A
; X-axis terrain collision check and overlap pushback.
; 
; Mirror of V_Collision_Check.
; 
; Input:
;   Collision box (half extents)
;     LoadedObj_CollisionBox_HalfHeight
;     LoadedObj_CollisionBox_HalfWidth
;   Object sub-tile position
;     LoadedObj_Position_Y_Lo
;     LoadedObj_Position_X_Lo
;  LoadedObj_TileIndex
; 
; Output:
;   on terrain overlap,
;     Z = 0
;     LoadedObj_Position_X_Lo: pushed back to the tile boundary to undo overlap
;   otherwise,
;     Z = 1
H_Collision_Check:
        jsr     _H_Collision_Check__TileLeft    ; D37D
; If there is no overlap to the left (Z = 0) we branch to check for overlap to the right.
        beq     _H_Collision_Check__CheckRight  ; D380
; otherwise, handle overlap to the left by snapping the object's left-edge to the right-edge of
; the overlapping tile.
        lda     $42                             ; D382
        sta     LoadedObj + Obj::Position_X_Lo  ; D384
        rts                                     ; D386

; ----------------------------------------------------------------------------
; Check for overlap with solid tile to the right and apply push-back on overlap.
_H_Collision_Check__CheckRight:
        jsr     _H_Collision_Check__TileRight   ; D387
; If there is no overlap (A = 0) there's nothing left to do.  Exit.
        beq     _H_Collision_Check__Exit        ; D38A
; otherwise, handle overlap to the right by snapping the object's right-edge to the left-edge of
; the overlapping tile.
        lda     #$00                            ; D38C
        sec                                     ; D38E
        sbc     $42                             ; D38F
        sta     LoadedObj + Obj::Position_X_Lo  ; D391
; Overlap detected.  Return Z = 0.
_H_Collision_Check__Exit:
        rts                                     ; D393

; ----------------------------------------------------------------------------
; compute tile index for the right-edge of the collision box.
_H_Collision_Check__TileRight:
        ldx     LoadedObj + Obj::TileIndex      ; D394
        lda     LoadedObj + Obj::Position_X_Lo  ; D396
        clc                                     ; D398
        adc     $42                             ; D399
; if flush with, or not-overlapping, tile to the right, skip to tile read.
        beq     _H_Collision_Check__ReadTile    ; D39B
        bcc     _H_Collision_Check__ReadTile    ; D39D
; Otherwise, adjust X right one col before tile read.
        inx                                     ; D39F
        jmp     _H_Collision_Check__ReadTile    ; D3A0

; ----------------------------------------------------------------------------
; compute tile index for the left-edge of the collision box.
_H_Collision_Check__TileLeft:
        ldx     LoadedObj + Obj::TileIndex      ; D3A3
        lda     LoadedObj + Obj::Position_X_Lo  ; D3A5
        cmp     $42                             ; D3A7
; if Position_X_Lo >= HalfWidth (no overlap), skip to tile read.
        bcs     _H_Collision_Check__ReadTile    ; D3A9
; Otherwise, adjust X left on col before tile read.
        dex                                     ; D3AB
; Use TileIndex (X) to load the target tile's flags.
; bit 7 being set means the tile is solid.  In this case, we use the escape hatch via BMI.
; Otherwise, check top/bottom Y edge tiles
_H_Collision_Check__ReadTile:
        lda     LevelTileData,x                 ; D3AC
        bmi     _H_Collision_Check__Exit        ; D3AF
; BOTTOM-edge Y cross-check:
; If (Position_Y_Lo + the half-height) > $FF the bottom edge has spilled into the next row, so
; test that tile too (but only once the spill reaches $20 (2px) to allow objects to smoothly round
; corners)
_H_Collision_Check__CheckBottom:
        lda     LoadedObj + Obj::Position_Y_Lo  ; D3B1
        clc                                     ; D3B3
        adc     $43                             ; D3B4
        bcc     _H_Collision_Check__CheckTop    ; D3B6
        cmp     #$20                            ; D3B8
        bcc     _H_Collision_Check__CheckTop    ; D3BA
        txa                                     ; D3BC
        clc                                     ; D3BD
        adc     #$11                            ; D3BE
        tay                                     ; D3C0
        lda     LevelTileData,y                 ; D3C1
        bmi     _H_Collision_Check__Exit        ; D3C4
; TOP-edge Y cross-check:
; Same as bottom-edge check, but with subtraction.
_H_Collision_Check__CheckTop:
        lda     LoadedObj + Obj::Position_Y_Lo  ; D3C6
        sec                                     ; D3C8
        sbc     $43                             ; D3C9
        bcs     _H_Collision_Check__NoCollide   ; D3CB
        cmp     #$E0                            ; D3CD
        bcs     _H_Collision_Check__NoCollide   ; D3CF
        txa                                     ; D3D1
        sec                                     ; D3D2
        sbc     #$11                            ; D3D3
        tay                                     ; D3D5
        lda     LevelTileData,y                 ; D3D6
        bmi     _H_Collision_Check__Exit        ; D3D9
; No overlap detected.  Return Z = 1.
_H_Collision_Check__NoCollide:
        lda     #$00                            ; D3DB
        rts                                     ; D3DD

; ----------------------------------------------------------------------------
L_D3DE: jsr     Apply_Velocity_Y                ; D3DE
; Y-axis terrain collision check and overlap pushback.
; 
; Input:
;   Collision box (half extents)
;     LoadedObj_CollisionBox_HalfHeight
;     LoadedObj_CollisionBox_HalfWidth
;   Object sub-tile position
;     LoadedObj_Position_Y_Lo
;     LoadedObj_Position_X_Lo
;   LoadedObj_TileIndex
; 
; Output:
;   on terrain overlap,
;     Z = 0
;     LoadedObj_Position_Y_Lo: pushed back to the tile boundary to undo overlap
;   otherwise,
;     Z = 1
V_Collision_Check:
        jsr     _V_Collision_Check__TileAbove   ; D3E1
; If there is no overlap above (Z = 0) we branch to check for overlap below.
        beq     _V_Collision_Check__CheckBelow  ; D3E4
; otherwise, handle overlap above by snapping the object's top-edge to the bottom-edge of the tile
; above.
        lda     $43                             ; D3E6
        sta     LoadedObj + Obj::Position_Y_Lo  ; D3E8
        rts                                     ; D3EA

; ----------------------------------------------------------------------------
; Check for overlap with solid tile below and apply push-back on overlap.
_V_Collision_Check__CheckBelow:
        jsr     _V_Collision_Check__TileBelow   ; D3EB
; If there is no overlap below (A = 0) there's nothing left to do.  Exit.
        beq     _V_Collision_Check__Exit        ; D3EE
; otherwise, handle overlap above by snapping the object's bottom-edge to the top-edge of the tile
; below.
        lda     #$00                            ; D3F0
        sec                                     ; D3F2
        sbc     $43                             ; D3F3
        sta     LoadedObj + Obj::Position_Y_Lo  ; D3F5
        rts                                     ; D3F7

; ----------------------------------------------------------------------------
; compute tile index for the bottom-edge of the collision box.
_V_Collision_Check__TileBelow:
        ldx     LoadedObj + Obj::TileIndex      ; D3F8
        lda     LoadedObj + Obj::Position_Y_Lo  ; D3FA
        clc                                     ; D3FC
        adc     $43                             ; D3FD
; Branch if A is 0
        beq     _V_Collision_Check__ReadTile    ; D3FF
; Branch if Y_Lo and HalfHeight didn't overflow
        bcc     _V_Collision_Check__ReadTile    ; D401
; otherwise, adjust X down one row before tile read.
        txa                                     ; D403
        clc                                     ; D404
        adc     #$11                            ; D405
        tax                                     ; D407
        jmp     _V_Collision_Check__ReadTile    ; D408

; ----------------------------------------------------------------------------
; compute tile index for the top-edge of the collision box.
_V_Collision_Check__TileAbove:
        ldx     LoadedObj + Obj::TileIndex      ; D40B
        lda     LoadedObj + Obj::Position_Y_Lo  ; D40D
        cmp     $43                             ; D40F
; if Position_Y_Lo >= HalfHeight (no overlap), skip to tile read.
        bcs     _V_Collision_Check__ReadTile    ; D411
; Otherwise, adjust X up one row before tile read.
        txa                                     ; D413
        sec                                     ; D414
        sbc     #$11                            ; D415
        tax                                     ; D417
; Use TileIndex (X) to load the target tile's flags.
; bit 7 being set means the tile is solid.  In this case, we use the escape hatch via BMI.
; Otherwise, check left/right X edge tiles
_V_Collision_Check__ReadTile:
        lda     LevelTileData,x                 ; D418
        bmi     _V_Collision_Check__Exit        ; D41B
; RIGHT-edge X cross-check:
; If (Position_X_Lo + the half-width) > $FF the right edge has spilled into the next column, so
; test that tile too (but only once the spill reaches $20 (2px) to allow objects to smoothly round
; corners)'
_V_Collision_Check__CheckRight:
        lda     LoadedObj + Obj::Position_X_Lo  ; D41D
        clc                                     ; D41F
        adc     $42                             ; D420
        bcc     _V_Collision_Check__CheckLeft   ; D422
        cmp     #$20                            ; D424
        bcc     _V_Collision_Check__CheckLeft   ; D426
        inx                                     ; D428
        lda     LevelTileData,x                 ; D429
        bmi     _V_Collision_Check__Exit        ; D42C
        dex                                     ; D42E
; LEFT-edge X cross-check:
; Same as right-edge check, but with subtraction.
_V_Collision_Check__CheckLeft:
        lda     LoadedObj + Obj::Position_X_Lo  ; D42F
        sec                                     ; D431
        sbc     $42                             ; D432
        bcs     _V_Collision_Check__NoCollide   ; D434
        cmp     #$E0                            ; D436
        bcs     _V_Collision_Check__NoCollide   ; D438
        dex                                     ; D43A
        lda     LevelTileData,x                 ; D43B
        bmi     _V_Collision_Check__Exit        ; D43E
; No overlap detected.  Return Z = 1.
_V_Collision_Check__NoCollide:
        lda     #$00                            ; D440
; Overlap detected.  Return Z = 0 (guranteed by BMI branch here on tile overlap).
_V_Collision_Check__Exit:
        rts                                     ; D442

; ----------------------------------------------------------------------------
L_D443: jsr     L_D467                          ; D443
        beq     L_D44E                          ; D446
        jsr     L_D452                          ; D448
        lda     #$FF                            ; D44B
        rts                                     ; D44D

; ----------------------------------------------------------------------------
L_D44E: jsr     L_D452                          ; D44E
        rts                                     ; D451

; ----------------------------------------------------------------------------
L_D452: jsr     L_D47C                          ; D452
        lda     LoadedObj + Obj::Velocity_X     ; D455
        beq     L_D48C                          ; D457
        bmi     L_D461                          ; D459
        jsr     L_D48F                          ; D45B
        jmp     L_D48C                          ; D45E

; ----------------------------------------------------------------------------
L_D461: jsr     L_D4BC                          ; D461
        jmp     L_D48C                          ; D464

; ----------------------------------------------------------------------------
L_D467: jsr     L_D47C                          ; D467
        lda     LoadedObj + Obj::Velocity_Y     ; D46A
        beq     L_D48C                          ; D46C
        bmi     L_D476                          ; D46E
        jsr     L_D4E6                          ; D470
        jmp     L_D48C                          ; D473

; ----------------------------------------------------------------------------
L_D476: jsr     L_D510                          ; D476
        jmp     L_D48C                          ; D479

; ----------------------------------------------------------------------------
L_D47C: lda     #$00                            ; D47C
        sta     $0F                             ; D47E
        jsr     L_D5F9                          ; D480
        lda     LoadedObj + Obj::Position_X_Hi  ; D483
        sta     $08                             ; D485
        lda     LoadedObj + Obj::Position_Y_Hi  ; D487
        sta     $09                             ; D489
        rts                                     ; D48B

; ----------------------------------------------------------------------------
L_D48C: lda     $0F                             ; D48C
        rts                                     ; D48E

; ----------------------------------------------------------------------------
L_D48F: lda     LoadedObj + Obj::Position_X_Hi  ; D48F
        pha                                     ; D491
        lda     LoadedObj + Obj::Position_X_Lo  ; D492
        pha                                     ; D494
        lda     LoadedObj + Obj::Position_Y_Hi  ; D495
        pha                                     ; D497
        lda     LoadedObj + Obj::Position_Y_Lo  ; D498
        pha                                     ; D49A
        jsr     L_D5B8                          ; D49B
        jsr     L_D574                          ; D49E
        bne     L_D4A6                          ; D4A1
        jmp     L_D53A                          ; D4A3

; ----------------------------------------------------------------------------
L_D4A6: pla                                     ; D4A6
        sta     LoadedObj + Obj::Position_Y_Lo  ; D4A7
        pla                                     ; D4A9
        sta     LoadedObj + Obj::Position_Y_Hi  ; D4AA
        pla                                     ; D4AC
        sta     LoadedObj + Obj::Position_X_Lo  ; D4AD
        pla                                     ; D4AF
        sta     LoadedObj + Obj::Position_X_Hi  ; D4B0
        lda     $0A                             ; D4B2
        eor     #$FF                            ; D4B4
        clc                                     ; D4B6
        adc     #$01                            ; D4B7
        sta     LoadedObj + Obj::Position_X_Lo  ; D4B9
        rts                                     ; D4BB

; ----------------------------------------------------------------------------
L_D4BC: lda     LoadedObj + Obj::Position_X_Hi  ; D4BC
        pha                                     ; D4BE
        lda     LoadedObj + Obj::Position_X_Lo  ; D4BF
        pha                                     ; D4C1
        lda     LoadedObj + Obj::Position_Y_Hi  ; D4C2
        pha                                     ; D4C4
        lda     LoadedObj + Obj::Position_Y_Lo  ; D4C5
        pha                                     ; D4C7
        jsr     L_D5AA                          ; D4C8
        jsr     L_D574                          ; D4CB
        beq     L_D53A                          ; D4CE
        pla                                     ; D4D0
        sta     LoadedObj + Obj::Position_Y_Lo  ; D4D1
        pla                                     ; D4D3
        sta     LoadedObj + Obj::Position_Y_Hi  ; D4D4
        pla                                     ; D4D6
        sta     LoadedObj + Obj::Position_X_Lo  ; D4D7
        pla                                     ; D4D9
        sta     LoadedObj + Obj::Position_X_Hi  ; D4DA
        lda     $0A                             ; D4DC
        sta     LoadedObj + Obj::Position_X_Lo  ; D4DE
        bne     L_D4E5                          ; D4E0
        jsr     L_D679                          ; D4E2
L_D4E5: rts                                     ; D4E5

; ----------------------------------------------------------------------------
L_D4E6: lda     LoadedObj + Obj::Position_X_Hi  ; D4E6
        pha                                     ; D4E8
        lda     LoadedObj + Obj::Position_X_Lo  ; D4E9
        pha                                     ; D4EB
        lda     LoadedObj + Obj::Position_Y_Hi  ; D4EC
        pha                                     ; D4EE
        lda     LoadedObj + Obj::Position_Y_Lo  ; D4EF
        pha                                     ; D4F1
        jsr     L_D5DA                          ; D4F2
        jsr     L_D547                          ; D4F5
        beq     L_D53A                          ; D4F8
        pla                                     ; D4FA
        sta     LoadedObj + Obj::Position_Y_Lo  ; D4FB
        pla                                     ; D4FD
        sta     LoadedObj + Obj::Position_Y_Hi  ; D4FE
        pla                                     ; D500
        sta     LoadedObj + Obj::Position_X_Lo  ; D501
        pla                                     ; D503
        sta     LoadedObj + Obj::Position_X_Hi  ; D504
        lda     $0C                             ; D506
        eor     #$FF                            ; D508
        clc                                     ; D50A
        adc     #$01                            ; D50B
        sta     LoadedObj + Obj::Position_Y_Lo  ; D50D
        rts                                     ; D50F

; ----------------------------------------------------------------------------
L_D510: lda     LoadedObj + Obj::Position_X_Hi  ; D510
        pha                                     ; D512
        lda     LoadedObj + Obj::Position_X_Lo  ; D513
        pha                                     ; D515
        lda     LoadedObj + Obj::Position_Y_Hi  ; D516
        pha                                     ; D518
        lda     LoadedObj + Obj::Position_Y_Lo  ; D519
        pha                                     ; D51B
        jsr     L_D5CC                          ; D51C
        jsr     L_D547                          ; D51F
        beq     L_D53A                          ; D522
        pla                                     ; D524
        sta     LoadedObj + Obj::Position_Y_Lo  ; D525
        pla                                     ; D527
        sta     LoadedObj + Obj::Position_Y_Hi  ; D528
        pla                                     ; D52A
        sta     LoadedObj + Obj::Position_X_Lo  ; D52B
        pla                                     ; D52D
        sta     LoadedObj + Obj::Position_X_Hi  ; D52E
        lda     $0C                             ; D530
        sta     LoadedObj + Obj::Position_Y_Lo  ; D532
        bne     L_D539                          ; D534
        jsr     L_D683                          ; D536
L_D539: rts                                     ; D539

; ----------------------------------------------------------------------------
L_D53A: pla                                     ; D53A
        sta     LoadedObj + Obj::Position_Y_Lo  ; D53B
        pla                                     ; D53D
        sta     LoadedObj + Obj::Position_Y_Hi  ; D53E
        pla                                     ; D540
        sta     LoadedObj + Obj::Position_X_Lo  ; D541
        pla                                     ; D543
        sta     LoadedObj + Obj::Position_X_Hi  ; D544
        rts                                     ; D546

; ----------------------------------------------------------------------------
L_D547: lda     LoadedObj + Obj::Position_X_Hi  ; D547
        pha                                     ; D549
        lda     LoadedObj + Obj::Position_X_Lo  ; D54A
        pha                                     ; D54C
        jsr     L_D5B8                          ; D54D
        lda     LoadedObj + Obj::Position_X_Hi  ; D550
        sta     $0E                             ; D552
        pla                                     ; D554
        sta     LoadedObj + Obj::Position_X_Lo  ; D555
        pla                                     ; D557
        sta     LoadedObj + Obj::Position_X_Hi  ; D558
        jsr     L_D5AA                          ; D55A
        jsr     L_D5EE                          ; D55D
L_D560: lda     LevelTileData,x                 ; D560
        bmi     L_D5A5                          ; D563
        inx                                     ; D565
        lda     LoadedObj + Obj::Position_X_Hi  ; D566
        cmp     $0E                             ; D568
        beq     L_D571                          ; D56A
        inc     LoadedObj + Obj::Position_X_Hi  ; D56C
        jmp     L_D560                          ; D56E

; ----------------------------------------------------------------------------
L_D571: lda     #$00                            ; D571
        rts                                     ; D573

; ----------------------------------------------------------------------------
L_D574: lda     LoadedObj + Obj::Position_Y_Hi  ; D574
        pha                                     ; D576
        lda     LoadedObj + Obj::Position_Y_Lo  ; D577
        pha                                     ; D579
        jsr     L_D5DA                          ; D57A
        lda     LoadedObj + Obj::Position_Y_Hi  ; D57D
        sta     $0E                             ; D57F
        pla                                     ; D581
        sta     LoadedObj + Obj::Position_Y_Lo  ; D582
        pla                                     ; D584
        sta     LoadedObj + Obj::Position_Y_Hi  ; D585
        jsr     L_D5CC                          ; D587
        jsr     L_D5EE                          ; D58A
L_D58D: lda     LevelTileData,x                 ; D58D
        bmi     L_D5A5                          ; D590
        txa                                     ; D592
        clc                                     ; D593
        adc     #$11                            ; D594
        tax                                     ; D596
        lda     LoadedObj + Obj::Position_Y_Hi  ; D597
        cmp     $0E                             ; D599
        beq     L_D5A2                          ; D59B
        inc     LoadedObj + Obj::Position_Y_Hi  ; D59D
        jmp     L_D58D                          ; D59F

; ----------------------------------------------------------------------------
L_D5A2: lda     #$00                            ; D5A2
        rts                                     ; D5A4

; ----------------------------------------------------------------------------
L_D5A5: lda     #$FF                            ; D5A5
        sta     $0F                             ; D5A7
        rts                                     ; D5A9

; ----------------------------------------------------------------------------
L_D5AA: lda     LoadedObj + Obj::Position_X_Lo  ; D5AA
        sec                                     ; D5AC
        sbc     $0A                             ; D5AD
        sta     LoadedObj + Obj::Position_X_Lo  ; D5AF
        lda     LoadedObj + Obj::Position_X_Hi  ; D5B1
        sbc     $0B                             ; D5B3
        sta     LoadedObj + Obj::Position_X_Hi  ; D5B5
        rts                                     ; D5B7

; ----------------------------------------------------------------------------
L_D5B8: lda     LoadedObj + Obj::Position_X_Lo  ; D5B8
        clc                                     ; D5BA
        adc     $0A                             ; D5BB
        sta     LoadedObj + Obj::Position_X_Lo  ; D5BD
        lda     LoadedObj + Obj::Position_X_Hi  ; D5BF
        adc     $0B                             ; D5C1
        sta     LoadedObj + Obj::Position_X_Hi  ; D5C3
        lda     LoadedObj + Obj::Position_X_Lo  ; D5C5
        bne     L_D5CB                          ; D5C7
        dec     LoadedObj + Obj::Position_X_Hi  ; D5C9
L_D5CB: rts                                     ; D5CB

; ----------------------------------------------------------------------------
L_D5CC: lda     LoadedObj + Obj::Position_Y_Lo  ; D5CC
        sec                                     ; D5CE
        sbc     $0C                             ; D5CF
        sta     LoadedObj + Obj::Position_Y_Lo  ; D5D1
        lda     LoadedObj + Obj::Position_Y_Hi  ; D5D3
        sbc     $0D                             ; D5D5
        sta     LoadedObj + Obj::Position_Y_Hi  ; D5D7
        rts                                     ; D5D9

; ----------------------------------------------------------------------------
L_D5DA: lda     LoadedObj + Obj::Position_Y_Lo  ; D5DA
        clc                                     ; D5DC
        adc     $0C                             ; D5DD
        sta     LoadedObj + Obj::Position_Y_Lo  ; D5DF
        lda     LoadedObj + Obj::Position_Y_Hi  ; D5E1
        adc     $0D                             ; D5E3
        sta     LoadedObj + Obj::Position_Y_Hi  ; D5E5
        lda     LoadedObj + Obj::Position_Y_Lo  ; D5E7
        bne     L_D5ED                          ; D5E9
        dec     LoadedObj + Obj::Position_Y_Hi  ; D5EB
L_D5ED: rts                                     ; D5ED

; ----------------------------------------------------------------------------
L_D5EE: lda     LoadedObj + Obj::TileIndex      ; D5EE
        pha                                     ; D5F0
        jsr     Obj_CalcTileIndex               ; D5F1
        tax                                     ; D5F4
        pla                                     ; D5F5
        sta     LoadedObj + Obj::TileIndex      ; D5F6
        rts                                     ; D5F8

; ----------------------------------------------------------------------------
L_D5F9: txa                                     ; D5F9
        lsr     a                               ; D5FA
        ror     $0A                             ; D5FB
        lsr     a                               ; D5FD
        ror     $0A                             ; D5FE
        and     #$3F                            ; D600
        sta     $0B                             ; D602
        lda     $0A                             ; D604
        and     #$C0                            ; D606
        sta     $0A                             ; D608
        tya                                     ; D60A
        lsr     a                               ; D60B
        ror     $0C                             ; D60C
        lsr     a                               ; D60E
        ror     $0C                             ; D60F
        and     #$3F                            ; D611
        sta     $0D                             ; D613
        lda     $0C                             ; D615
        and     #$C0                            ; D617
        sta     $0C                             ; D619
        rts                                     ; D61B

; ----------------------------------------------------------------------------
L_D61C: jsr     L_D635                          ; D61C
        beq     L_D627                          ; D61F
        jsr     L_D627                          ; D621
        lda     #$FF                            ; D624
        rts                                     ; D626

; ----------------------------------------------------------------------------
L_D627: jsr     L_D37A                          ; D627
        beq     L_D634                          ; D62A
        lda     #$00                            ; D62C
        sec                                     ; D62E
        sec                                     ; D62F
        sbc     LoadedObj + Obj::Velocity_X     ; D630
        sta     LoadedObj + Obj::Velocity_X     ; D632
L_D634: rts                                     ; D634

; ----------------------------------------------------------------------------
L_D635: jsr     L_D3DE                          ; D635
        beq     L_D642                          ; D638
        lda     #$00                            ; D63A
        sec                                     ; D63C
        sec                                     ; D63D
        sbc     LoadedObj + Obj::Velocity_Y     ; D63E
        sta     LoadedObj + Obj::Velocity_Y     ; D640
L_D642: rts                                     ; D642

; ----------------------------------------------------------------------------
L_D643: ldx     LoadedObj + Obj::Facing         ; D643
        lda     LoadedObj + Obj::Position_X_Hi  ; D645
        clc                                     ; D647
        adc     L_D65E,x                        ; D648
        sta     LoadedObj + Obj::Position_X_Hi  ; D64B
        lda     LoadedObj + Obj::Position_Y_Hi  ; D64D
        clc                                     ; D64F
        adc     L_D667,x                        ; D650
        sta     LoadedObj + Obj::Position_Y_Hi  ; D653
        lda     LoadedObj + Obj::TileIndex      ; D655
        clc                                     ; D657
        adc     L_D670,x                        ; D658
        sta     LoadedObj + Obj::TileIndex      ; D65B
        rts                                     ; D65D

.endmacro

.macro MAC_L_D71F
; ----------------------------------------------------------------------------
; Deal contact damage to the PLAYER specifically -- the single-record twin of HitboxScan_LockOn.
; 
; Input:
;   A = the contact damage to deal (bits 0-6),
;   box $40/$41 centred on $3E/$3F
; 
; Output:
;   on a hit,
;     A=$00
;     (Z=1)
;     PlayerContact.Damage = damage inflicted
;     WR_Context_Dependent_45 = damange inflicted
; 
;   on a miss (or when Damage already flagged in bit7 of PlayerContact.Damage)
;     A=$FF
;     (Z=0)
; 
; Note:
;   Unlike Collision_Detection_Sub this tests only record 0 and returns normally, so its caller
;   must branch on Z. Reached via dispatch slot $6D ($C147). See the Contact struct.
; 
; Start by stashing A (contact damage to deal) into OAM_Attribute__or__Outgoing_Contact_Damage.
Obj_TryDamagePlayer:
        sta     $44                             ; D71F
        lda     $40                             ; D721
        lsr     a                               ; D723
; $00 = hitbox_width / 2
        sta     L0000                           ; D724
        lda     $3E                             ; D726
        sec                                     ; D728
        sbc     L0000                           ; D729
; $00 = Obj.X - (hitbox_width / 2)
;     = Object left edge
        sta     L0000                           ; D72B
        lda     $41                             ; D72D
        lsr     a                               ; D72F
; $01 = hitbox_height / 2
        sta     $01                             ; D730
        lda     $3F                             ; D732
        sec                                     ; D734
        sbc     $01                             ; D735
; $01 = Obj.Y - (hitbox_height / 2)
;     = Object top edge
        sta     $01                             ; D737
        lda     $7E                             ; D739
; If PlayerContact.Damage <= 0 (negative means already set, 0 means nothing to do), skip to miss
; handler.
        bmi     _Obj_TryDamagePlayer__Miss      ; D73B
        beq     _Obj_TryDamagePlayer__Miss      ; D73D
; WR_Context_Dependent_45 = Previous PlayerContact.Damage value
        sta     $45                             ; D73F
        lda     $7C                             ; D741
        sec                                     ; D743
        sbc     L0000                           ; D744
        cmp     $40                             ; D746
; If
;   PlayerContact.Screen_X - (Object Left Edge) == (Object Hitbox_Width)
;   aka: PlayerContact.Screen_X == (Object Left Edge) + (Object Hitbox_Width)
; X-overlap detected (Player overlaps right edge of object).
; Skip to Y-overlap test.
        beq     _Obj_TryDamagePlayer__CheckY    ; D748
; If
;   PlayerContact.Screen_X - (Object Left Edge) > (Object Hitbox_Width)
;   aka: PlayerContact.Screen_X > (Object Left Edge) + (Object Hitbox_Width)
;   also matches case when (PlayerContact.Screen_X - (Object Left Edge)) wraps negative, meaning
;   player is to left of obj box.
; No X-overlap detected.
; Skip to Miss handler.
        bcs     _Obj_TryDamagePlayer__Miss      ; D74A
; Otherwise,
;   PlayerContact.Screen_X < (Object Left Edge) + Object Hitbox_Width
; Do Y-overlap test:
_Obj_TryDamagePlayer__CheckY:
        lda     $7D                             ; D74C
        sec                                     ; D74E
        sbc     $01                             ; D74F
        cmp     $41                             ; D751
; If PlayerContact.Screen_Y == (Object Top Edge) + (Object Hitbox_Height)
; Y-overlap detected (Player overlaps bottom edge of object).  Skip to Hit handler.
        beq     _Obj_TryDamagePlayer__Hit       ; D753
; If PlayerContact.Screen_Y > (Object Top Edge) + (Object Hitbox_Height)
; No Y-overlap detected.  Skip to Miss handler.
        bcs     _Obj_TryDamagePlayer__Miss      ; D755
; Overlap detected.
_Obj_TryDamagePlayer__Hit:
        lda     $44                             ; D757
        ora     #$80                            ; D759
; PlayerContact.Damage = (incoming damage) | #$80
;                      = incoming damage with bit7 (hit flag) set
        sta     $7E                             ; D75B
; hit exit: return A = #$00, Z=1 (hit)
        lda     #$00                            ; D75D
        rts                                     ; D75F

; ----------------------------------------------------------------------------
; miss exit: return A = #$FF, Z=0 (no hit)
_Obj_TryDamagePlayer__Miss:
        lda     #$FF                            ; D760
        rts                                     ; D762

.endmacro

.macro MAC_L_D7F8
; ----------------------------------------------------------------------------
; Saves the current LoadedObj's ObjType into DormantSlot_SavedType.
; Then, changes the ObjType to $02 (Tombstoned).
; 
; This is first stage of unloading an already-active object that has scrolled off-screen.
; If the Camera scrolls this object back on-screen, the $02 Object Handler will take care of
; restoring the slot to its original state.
Obj_TombstoneSlot:
        ldx     ObjectSlot_Index                ; D7F8
        lda     LoadedObj + Obj::Type           ; D7FA
        sta     DormantSlot_SavedType,x         ; D7FC
        lda     #$02                            ; D7FF
        sta     LoadedObj + Obj::Type           ; D801
        rts                                     ; D803

; ----------------------------------------------------------------------------
; Despawn, logging the kill for slots ≥ 8.
; 
; Slot 0 is always the player.
; Not yet confirmed:
;   Slots 1-5 are for Player weapons.
Obj_DespawnAndLog:
        ldy     ObjectSlot_Index                ; D804
        cpy     #$08                            ; D806
        bcc     Obj_Despawn                     ; D808
; if slot ObjectSlot_Index ≥ 8, then advance ring index ThingIndex_DespawnRing_WriteIndex (modulo
; 64).
        inc     $C6                             ; D80A
        lda     $C6                             ; D80C
        and     #$3F                            ; D80E
        tax                                     ; D810
; Read the slot's saved Thing index before logging it
;   effectively ObjectSlot_ThingIndex,y ($100,y) not Pad2Raw,y ($00F8,y) despite the $00F8 base. 
;   This is because ObjectIndex (Y) is always >= 8 here.
        lda     $F8,y                           ; D811
; Save the Thing index into ThingIndex_DespawnRing
        sta     $010A,x                         ; D814
        lda     #$FF                            ; D817
; Clear the slot's saved Thing index back to the $FF sentinel.
        sta     $F8,y                           ; D819
; Despawn the current object: clear ObjType and IFrames 0.
Obj_Despawn:
        lda     #$00                            ; D81C
        sta     LoadedObj + Obj::Type           ; D81E
        sta     $4F                             ; D820
        rts                                     ; D822

; ----------------------------------------------------------------------------
L_D823: ldy     ObjectSlot_Index                ; D823
        lda     #$FF                            ; D825
        sta     $F8,y                           ; D827
        bne     Obj_Despawn                     ; D82A
L_D82C: lda     ObjectSlot_Index                ; D82C
        sec                                     ; D82E
        sbc     #$01                            ; D82F
        cmp     #$05                            ; D831
        bcs     Obj_Despawn                     ; D833
        jsr     L_D790                          ; D835
        jmp     Obj_Despawn                     ; D838

; ----------------------------------------------------------------------------
L_D83B: lda     LoadedObj + Obj::Position_X_Hi  ; D83B
        sta     L0000                           ; D83D
        lda     LoadedObj + Obj::Position_Y_Hi  ; D83F
        sta     $01                             ; D841
        lda     PlayerSlot + Obj::Position_X_Hi ; D843
        sta     $02                             ; D846
        lda     PlayerSlot + Obj::Position_Y_Hi ; D848
        sta     $03                             ; D84B
        jsr     L_D02D                          ; D84D
        rts                                     ; D850

; ----------------------------------------------------------------------------
; Quick-spawn a child object with ObjType = A
; 
; Input:
;   A = target child ObjType
Obj_SpawnChild:
        pha                                     ; D851
        ldx     #$54                            ; D852
        lda     #$EE                            ; D854
        sta     L0000                           ; D856
; Search ObjectTable for an empty slot from offset $54 (to limit $EE).
        jsr     FindEmptyObjectSlot             ; D858
; If unable to find empty slot, skip to fail tail.
        beq     _Obj_SpawnChild__NoSlot         ; D85B
; Otherwise, clone the parent via Obj_CopyFieldsToSlot and store the child ObjType.
        txa                                     ; D85D
        pha                                     ; D85E
        jsr     Obj_CopyFieldsToSlot            ; D85F
        pla                                     ; D862
        tax                                     ; D863
        pla                                     ; D864
        sta     ObjectTable + Obj::Type,x       ; D865
        rts                                     ; D868

; ----------------------------------------------------------------------------
; Fail tail (no free slot).  Pull the saved ObjType and return 0.
_Obj_SpawnChild__NoSlot:
        pla                                     ; D869
        lda     #$00                            ; D86A
        rts                                     ; D86C

; ----------------------------------------------------------------------------
L_D86D: ldx     #$4C                            ; D86D
        lda     #$40                            ; D86F
        jsr     Speed_Limit_Sub                 ; D871
        lda     LoadedObj + Obj::Velocity_Y     ; D874
        sec                                     ; D876
        sbc     #$40                            ; D877
        sta     LoadedObj + Obj::Velocity_Y     ; D879
        ldx     #$4D                            ; D87B
        lda     #$40                            ; D87D
        jsr     Speed_Limit_Sub                 ; D87F
        rts                                     ; D882

.endmacro

.macro MAC_L_DF0F
; ----------------------------------------------------------------------------
; Tries to clone the current LoadedObject into an empty ObjectTable slot.
; 
; Since the new spawn is a clone of the parent, it inherits the parent's position and other
; properties.  Callers will overwrite those as necessary.
; 
; Output:
;   on succes,
;     A = 1
;     X = the found slot offset
;   on failure to find slot,
;     A = 0
Obj_TryCloneIntoEmptySlot:
        lda     #$D2                            ; DF0F
        sta     L0000                           ; DF11
        ldx     #$70                            ; DF13
; find the first empty object slot (scan from X=$70, limit $00=$D2)
        jsr     FindEmptyObjectSlot             ; DF15
        beq     _Obj_TryCloneIntoEmptySlot__NoSlot; DF18
        stx     $A5                             ; DF1A
        jsr     _Obj_TryCloneIntoEmptySlot__CopyRecord; DF1C
        ldx     $A5                             ; DF1F
        lda     #$01                            ; DF21
        rts                                     ; DF23

; ----------------------------------------------------------------------------
; No free slot: return A=$00 (nothing spawned).
_Obj_TryCloneIntoEmptySlot__NoSlot:
        lda     #$00                            ; DF24
        rts                                     ; DF26

; ----------------------------------------------------------------------------
; Copy the 14-byte LoadedObject record into the new slot at ObjectTable,X (Y=0..$0D); X advances
; past the slot.
_Obj_TryCloneIntoEmptySlot__CopyRecord:
        ldy     #$00                            ; DF27
; Copy 14 bytes ($0E) from ZP $46+Y into the slot at $0400,X.
_Obj_TryCloneIntoEmptySlot__CopyLoop:
        lda     LoadedObject + Obj::Type,y      ; DF29
        sta     ObjectTable + Obj::Type,x       ; DF2C
        inx                                     ; DF2F
        iny                                     ; DF30
        cpy     #$0E                            ; DF31
        bne     _Obj_TryCloneIntoEmptySlot__CopyLoop; DF33
        rts                                     ; DF35

; ----------------------------------------------------------------------------
L_DF36: lda     Global_FrameCounter             ; DF36
        and     #$4C                            ; DF38
        bne     L_DF43                          ; DF3A
        jsr     Step_RNG                        ; DF3C
        and     #$03                            ; DF3F
        beq     Obj_SpawnChild_A0               ; DF41
L_DF43: lda     #$00                            ; DF43
        rts                                     ; DF45

; ----------------------------------------------------------------------------
; Spawns a child object if an empty slot is available.
; 
; The child's ObjType is taken from WR_Context_Dependent_A0.  The remaining fields are cloned from
; the parent.
; 
; Itput:
;   WR_Context_Dependent_00 = TBD
;   WR_Context_Dependent_A0 = The child's Object Type
; 
; Output:
;   on success,
;     A = $FF
;     Z = 0 
;   on failure (no empty slot)
;     A = $00
;     Z = 1
; 
; Takes special care to restore WR_Context_Dependent_00 to its pre-call value.
Obj_SpawnChild_A0:
        lda     L0000                           ; DF46
        pha                                     ; DF48
        lda     #$D2                            ; DF49
        sta     L0000                           ; DF4B
        ldx     #$70                            ; DF4D
; find the first empty object slot (scan from X=$70, limit $00=$D2)
        jsr     FindEmptyObjectSlot             ; DF4F
        beq     _Obj_SpawnChild_A0__NoSlot      ; DF52
; child ObjType = $A0 → $0400,X, then clone the parent's fields 1–13 (Obj_CopyFieldsToSlot)
        lda     $A0                             ; DF54
        sta     ObjectTable + Obj::Type,x       ; DF56
        jsr     Obj_CopyFieldsToSlot            ; DF59
        pla                                     ; DF5C
        sta     L0000                           ; DF5D
        lda     #$FF                            ; DF5F
        rts                                     ; DF61

; ----------------------------------------------------------------------------
; No free slot.  Restore WR_Context_Dependent_00 and return A=$00/Z=1 (nothing spawned).
_Obj_SpawnChild_A0__NoSlot:
        pla                                     ; DF62
        sta     L0000                           ; DF63
        lda     #$00                            ; DF65
        rts                                     ; DF67

; ----------------------------------------------------------------------------
; Applies Velocity_X and Velocity_Y to LoadedObject (via Obj_MoveAndCollide).
; 
; Then, handles bouncing horizontally and/or vertically based on collisions.
; 
; Returns:
;   A = TerrainCollisionFlags
;     bit 7: horizontal collision
;     bit 6: vertical collision
Obj_MoveBounce:
        jsr     Obj_MoveAndCollide              ; DF68
; If bit 7 (side wall collision flag) is clear, skip to vertical checks.
        bpl     _Obj_MoveBounce__CheckVertical  ; DF6B
; Otherwise, flip Velocity_X and return.
        lda     #$00                            ; DF6D
        sec                                     ; DF6F
        sbc     LoadedObj + Obj::Velocity_X     ; DF70
        sta     LoadedObj + Obj::Velocity_X     ; DF72
        jmp     _Obj_MoveBounce__Return         ; DF74

; ----------------------------------------------------------------------------
; Handle vertical collisions
_Obj_MoveBounce__CheckVertical:
        asl     a                               ; DF77
; Probe bit 6 (floor/ceiling collision flag).  Return early if clear.
        bpl     _Obj_MoveBounce__Return         ; DF78
; Otherwise, flip Velocity_Y.
        lda     #$00                            ; DF7A
        sec                                     ; DF7C
        sbc     LoadedObj + Obj::Velocity_Y     ; DF7D
        sta     LoadedObj + Obj::Velocity_Y     ; DF7F
; Return the TerrainCollisionFlags.
_Obj_MoveBounce__Return:
        lda     TerrainCollisionFlags           ; DF81
        rts                                     ; DF83

; ----------------------------------------------------------------------------
; Double-speed variant of Obj_MoveBounce: advance via Obj_MoveAndCollide_Double and reflect
; velocity on collisions.
; Flags:
;   bit7 (side wall) negates XVel $4C,
;   bit6 (floor/ceiling) negates YVel $4D. 
; 
; Output:
;  A = wall flags
;  TerrainCollisionFlags = wall flags
Obj_MoveBounce_Double:
        jsr     Obj_MoveAndCollide_Double       ; DF84
; Branch on positive, means branch when bit 7 is 0.  This means no x-collision.
        bpl     _Obj_MoveBounce_Double__CheckVertical; DF87
; On negative, however, handle X-bounce.
; Set Accumulator to 0, then subtract X-Velocity to get the mirrored value
        lda     #$00                            ; DF89
        sec                                     ; DF8B
        sbc     LoadedObj + Obj::Velocity_X     ; DF8C
; Save mirrored X-Velocity
        sta     LoadedObj + Obj::Velocity_X     ; DF8E
        jmp     _Obj_MoveBounce_Double__Return  ; DF90

; ----------------------------------------------------------------------------
; Probe bit6 (floor/ceiling) set → negate YVel $4D.
_Obj_MoveBounce_Double__CheckVertical:
        asl     a                               ; DF93
        bpl     _Obj_MoveBounce_Double__Return  ; DF94
; Handle Y-bounce
; Set Accumulator to 0, then subtract Y-Velocity to get the mirrored value
        lda     #$00                            ; DF96
        sec                                     ; DF98
        sbc     LoadedObj + Obj::Velocity_Y     ; DF99
; Save mirrored X-Velocity
        sta     LoadedObj + Obj::Velocity_Y     ; DF9B
; Return the wall flags ($9A).
_Obj_MoveBounce_Double__Return:
        lda     TerrainCollisionFlags           ; DF9D
        rts                                     ; DF9F

; ----------------------------------------------------------------------------
; Adds gravity (A) to LoadedObj's Velocity_Y then moves at double speed with wall reflection.
; Dampens the bounce to 1/4 on a floor/ceiling hit, and clamps both velocities to ±$28.
; 
; Input:
;   A = Gravity
; 
; Output:
;   A = Wall flags
;     bit 7 for horizontal collisions
;     bit 6 for vertical collisions
; 
;   LoadedObj's Velocity_Y = previous velocity with gravity applied and reflected if that movement
;   resulted in a collision with a floor or ceiling.
Obj_GravityMoveBounce_Double:
        ldy     #$00                            ; DFA0
        pha                                     ; DFA2
        tya                                     ; DFA3
        and     Global_FrameCounter             ; DFA4
; This always branches.
        beq     _Obj_GravityMoveBounce_Double__ApplyGravity; DFA6
; dead
        pla                                     ; DFA8
; dead
        jmp     _Obj_GravityMoveBounce_Double__Move; DFA9

; ----------------------------------------------------------------------------
; Gravity is popped from stack and added to the LoadedObj's Y velocity.
; The BVS guard skips the store on signed overflow.
_Obj_GravityMoveBounce_Double__ApplyGravity:
        pla                                     ; DFAC
        clc                                     ; DFAD
        adc     LoadedObj + Obj::Velocity_Y     ; DFAE
        bvs     _Obj_GravityMoveBounce_Double__Move; DFB0
        sta     LoadedObj + Obj::Velocity_Y     ; DFB2
; Double move+bounce; floor/ceiling hit (bit6) → damp YVel to 1/4 ($40/256).
_Obj_GravityMoveBounce_Double__Move:
        jsr     Obj_MoveBounce_Double           ; DFB4
        and     #$40                            ; DFB7
        beq     _Obj_GravityMoveBounce_Double__ClampSpeed; DFB9
        lda     #$40                            ; DFBB
        jsr     Obj_ScaleVelY                   ; DFBD
; Clamp LoadedObj's velocities
_Obj_GravityMoveBounce_Double__ClampSpeed:
        lda     #$28                            ; DFC0
        ldx     #$4D                            ; DFC2
; The previous two lines prepare a call into Speed_Limit_Sub.
; 
; A = Clamp value ($28)
; X = Value to be clamped.  In this case, LoadedObj's Velocity_Y ($4D)
; 
; once prepped, call the sub.
        jsr     Speed_Limit_Sub                 ; DFC4
        lda     #$28                            ; DFC7
        ldx     #$4C                            ; DFC9
; Repeat for LoadedObj's Velocity_X ($4C)
        jsr     Speed_Limit_Sub                 ; DFCB
; Return TerrainCollisionFlags in A
        lda     TerrainCollisionFlags           ; DFCE
        rts                                     ; DFD0

; ----------------------------------------------------------------------------
L_DFD1: clc                                     ; DFD1
        adc     LoadedObj + Obj::Velocity_Y     ; DFD2
        sta     LoadedObj + Obj::Velocity_Y     ; DFD4
        txa                                     ; DFD6
        clc                                     ; DFD7
        adc     LoadedObj + Obj::Velocity_X     ; DFD8
        sta     LoadedObj + Obj::Velocity_X     ; DFDA
        rts                                     ; DFDC

; ----------------------------------------------------------------------------
L_DFDD: jsr     Obj_Get_DeltaToPlayer_X_q12_4   ; DFDD
        bpl     L_DFE7                          ; DFE0
        eor     #$FF                            ; DFE2
        clc                                     ; DFE4
        adc     #$01                            ; DFE5
L_DFE7: pha                                     ; DFE7
        jsr     Obj_Get_DeltaToPlayer_Y_q12_4   ; DFE8
        bpl     L_DFF2                          ; DFEB
        eor     #$FF                            ; DFED
        clc                                     ; DFEF
        adc     #$01                            ; DFF0
L_DFF2: bne     L_DFF6                          ; DFF2
        lda     #$01                            ; DFF4
L_DFF6: sta     $9C                             ; DFF6
        pla                                     ; DFF8
        sta     $9B                             ; DFF9
        jsr     L_E16B                          ; DFFB
        bne     L_E002                          ; DFFE
        lda     #$01                            ; E000
L_E002: sta     LoadedObj + Obj::Scratch2       ; E002
        rts                                     ; E004

; ----------------------------------------------------------------------------
; Applies a gravity of 2 px/s^2 (via Obj_GravityMoveBounce_Double).
; 
; Returns:
;   on landing,
;     Velocity_Y = 0
;     A = $FF (landed)
;   otherwise,
;     A = $00
Obj_FallAndLand:
        lda     #$02                            ; E005
        jsr     Obj_GravityMoveBounce_Double    ; E007
        asl     a                               ; E00A
; Test bit 6.  If clear, skip to 'not landed' tail.
        bpl     _Obj_FallAndLand__NotLanded     ; E00B
; Test Velocity_Y.  If positive, skip to 'not landed' tail.
        lda     LoadedObj + Obj::Velocity_Y     ; E00D
        bpl     _Obj_FallAndLand__NotLanded     ; E00F
; otherwise, set Velocity_Y to 0 and A to $FF and return.
        lda     #$00                            ; E011
        sta     LoadedObj + Obj::Velocity_Y     ; E013
        lda     #$FF                            ; E015
        rts                                     ; E017

; ----------------------------------------------------------------------------
; No floor hit (or hit the ceiling): return A=$00.
_Obj_FallAndLand__NotLanded:
        lda     #$00                            ; E018
        rts                                     ; E01A

.endmacro

.macro MAC_L_E02F
; ----------------------------------------------------------------------------
; Obj_MoveBounce plus terrain checks to turn at walls and ledge edges.
; 
; Input:
;   LoadedObj.Scratch1 = an edge cooldown timer.  Edge checks only happen when it is 0.
; 
; # when the turn cooldown LoadedObj.Scratch1 is idle, probe the tile below via
; Obj_ReadTile_WithOffset arg $11 (the feet probe the ice check also uses); if it is not solid
; (bit7 clear - a dropoff) reverse XVel $4C and arm a $20-frame cooldown. Walker motion that turns
; back at platform edges. Dispatch slot $C033 - no callers in USA ROM.'
Obj_MoveBounce_TurnAtLedge:
        jsr     Obj_MoveBounce                  ; E02F
        lda     LoadedObj + Obj::Scratch1       ; E032
; if Scratch1 (probe cooldown) is 0, skip to probe logic,
        beq     _Obj_MoveBounce_TurnAtLedge__Probe; E034
; otherwise, decrement the cooldown and exit sub.
        dec     LoadedObj + Obj::Scratch1       ; E036
        jmp     _Obj_MoveBounce_TurnAtLedge__Return; E038

; ----------------------------------------------------------------------------
; Probe logic
_Obj_MoveBounce_TurnAtLedge__Probe:
        lda     #$11                            ; E03B
; Read the tile directly below ($11).
        jsr     Obj_ReadTile_WithOffset         ; E03D
; if bit 7 is set, then it's solid.  Nothing else to do, so exit early.
        bmi     _Obj_MoveBounce_TurnAtLedge__Return; E040
; Otherwise, negate Velocity X,
        lda     #$00                            ; E042
        sec                                     ; E044
        sbc     LoadedObj + Obj::Velocity_X     ; E045
        sta     LoadedObj + Obj::Velocity_X     ; E047
        lda     #$20                            ; E049
; and set the probe cooldown to 32 frames.
        sta     LoadedObj + Obj::Scratch1       ; E04B
; RTS.
_Obj_MoveBounce_TurnAtLedge__Return:
        rts                                     ; E04D

; ----------------------------------------------------------------------------
; Sets the sprite OAM attribute ($44) to A, adding the horizontal-flip bit when the object faces
; right (X velocity $4C non-negative). One call sets both palette and facing — e.g. the Fliers
; pass their palette index (Red $7C = pal 0, Gray $7D = pal 1).
Obj_SetAttrFlipX:
        ldx     LoadedObj + Obj::Velocity_X     ; E04E
        bmi     _Obj_SetAttrFlipX__Store        ; E050
; If XVel $4C ≥ 0, XOR the horizontal-flip bit ($40) into attr A; store to $44.
        eor     #$40                            ; E052
; Store OAM attribute $44.
_Obj_SetAttrFlipX__Store:
        sta     $44                             ; E054
        rts                                     ; E056

; ----------------------------------------------------------------------------
L_E057: ldx     LoadedObj + Obj::Velocity_Y     ; E057
        bpl     L_E05D                          ; E059
        eor     #$80                            ; E05B
L_E05D: sta     $44                             ; E05D
        rts                                     ; E05F

.endmacro

.macro MAC_L_E071
; ----------------------------------------------------------------------------
L_E071: lda     LoadedObj + Obj::Scratch2       ; E071
        eor     #$FF                            ; E073
        clc                                     ; E075
        adc     #$01                            ; E076
        sta     LoadedObj + Obj::Scratch2       ; E078
        rts                                     ; E07A

; ----------------------------------------------------------------------------
; Updates the LoadedObj.Facing heading by adding an angle delta.
; 
; Input:
;   LoadedObj.Scratch2 = the angle delta
; 
; Output:
;   LoadedObj.Facing = the updated heading
Obj_TurnHeading:
        lda     LoadedObj + Obj::Facing         ; E07B
        clc                                     ; E07D
        adc     LoadedObj + Obj::Scratch2       ; E07E
        sta     LoadedObj + Obj::Facing         ; E080
        rts                                     ; E082

; ----------------------------------------------------------------------------
; Advance an object by its velocity and resolve the terrain collision, on both axes.
; 
; Input:
;   Collision box (half extents)
;     LoadedObj_CollisionBox_HalfHeight
;     LoadedObj_CollisionBox_HalfWidth
;   Object sub-tile position
;     LoadedObj_Position_Y_Lo
;     LoadedObj_Position_X_Lo
; LoadedObj_TileIndex
; 
; Output:
;   A = the wall flags (also stored TerrainCollisionFlags)
;     bit7 ($80) = side wall hit,
;     bit6 ($40) = floor/ceiling hit.
Obj_MoveAndCollide:
        jsr     Apply_Velocity_X                ; E083
        jsr     H_Collision_Check               ; E086
; Apply_Velocity_X then H_Collision_Check.
; Z = 1 means no collision happend.  Skip ahead.
        beq     _Obj_MoveAndCollide__NoWallX    ; E089
; Otherwise, prepare TerrainCollisionFlags value with side-wall flag (bit7) set.
        lda     #$80                            ; E08B
        jmp     _Obj_MoveAndCollide__StoreX     ; E08D

; ----------------------------------------------------------------------------
; No horizontal collisions, so result side-wall flag is off.
_Obj_MoveAndCollide__NoWallX:
        lda     #$00                            ; E090
; store side-wall flag (bit7).
_Obj_MoveAndCollide__StoreX:
        sta     TerrainCollisionFlags           ; E092
        jsr     Apply_Velocity_Y                ; E094
        jsr     V_Collision_Check               ; E097
; Apply_Velocity_Y then V_Collision_Check.
; Z = 1 means no collision happend.  Skip ahead.
        beq     _Obj_MoveAndCollide__Return     ; E09A
; Otherwise, set the ceiling-floor flag (bit6) on in TerrainCollisionFlags.
        lda     TerrainCollisionFlags           ; E09C
        ora     #$40                            ; E09E
        sta     TerrainCollisionFlags           ; E0A0
; Copy result (TerrainCollisionFlags) into A and return
_Obj_MoveAndCollide__Return:
        lda     TerrainCollisionFlags           ; E0A2
        rts                                     ; E0A4

; ----------------------------------------------------------------------------
; Double-speed Obj_MoveAndCollide: Apply_Double_Velocity_X + H_Collision_Check → $9A bit7 (side
; wall); Apply_Double_Velocity_Y + V_Collision_Check → bit6 (floor/ceiling); returns $9A. Dispatch
; slot $C030; used by the overhead projectile handlers (Slider Laser $53, Spitter Shot $55, Th2C
; Shot $57) and in-bank by Obj_MoveBounce_Double ($DF84).
Obj_MoveAndCollide_Double:
        jsr     Apply_Double_Velocity_X         ; E0A5
        jsr     H_Collision_Check               ; E0A8
        beq     _Obj_MoveAndCollide_Double__NoWallX; E0AB
        lda     #$80                            ; E0AD
        jmp     _Obj_MoveAndCollide_Double__StoreX; E0AF

; ----------------------------------------------------------------------------
; No side wall: X flag = 0.
_Obj_MoveAndCollide_Double__NoWallX:
        lda     #$00                            ; E0B2
; $9A = side-wall flag (bit7).
_Obj_MoveAndCollide_Double__StoreX:
        sta     TerrainCollisionFlags           ; E0B4
        jsr     Apply_Double_Velocity_Y         ; E0B6
        jsr     V_Collision_Check               ; E0B9
        beq     _Obj_MoveAndCollide_Double__Return; E0BC
        lda     TerrainCollisionFlags           ; E0BE
        ora     #$40                            ; E0C0
        sta     TerrainCollisionFlags           ; E0C2
; Copy result (TerrainCollisionFlags) into A and return
_Obj_MoveAndCollide_Double__Return:
        lda     TerrainCollisionFlags           ; E0C4
        rts                                     ; E0C6

; ----------------------------------------------------------------------------
; Scale LoadedObj's Velocity_Y by the fraction in A.
; 
; Input:
;   A = fraction, unsigned byte, in any fixed-point format.
;   LoadedObj's Velocity_Y = signed
; 
; Output:
;   A = LoadedObj's Velocity_Y scaled by A
;   LoadedObj's Velocity_Y = same as A
Obj_ScaleVelY:
        tay                                     ; E0C7
        lda     LoadedObj + Obj::Velocity_Y     ; E0C8
        jsr     ScaleBySignedFrac               ; E0CA
        sta     LoadedObj + Obj::Velocity_Y     ; E0CD
        rts                                     ; E0CF

; ----------------------------------------------------------------------------
; Bounce the heading angle LoadedObj.Facing according to the boundary flags in
; TerrainCollisionFlags:
;   bit7 (side wall) -> Mirror about vertical (Facing = $80 - Facing) 
;   bit6 (floor/ceiling) -> Mirror about horizontal (Facing = -Facing)
Obj_ReflectHeading:
        lda     TerrainCollisionFlags           ; E0D0
        bmi     _Obj_ReflectHeading__SideWall   ; E0D2
        asl     a                               ; E0D4
        bmi     _Obj_ReflectHeading__FloorCeiling; E0D5
        rts                                     ; E0D7

; ----------------------------------------------------------------------------
; LoadedObj.Facing = $80 - LoadedObj.Facing.
_Obj_ReflectHeading__SideWall:
        lda     LoadedObj + Obj::Facing         ; E0D8
        sec                                     ; E0DA
        sbc     #$40                            ; E0DB
        eor     #$FF                            ; E0DD
        clc                                     ; E0DF
        adc     #$41                            ; E0E0
        sta     LoadedObj + Obj::Facing         ; E0E2
        rts                                     ; E0E4

; ----------------------------------------------------------------------------
; LoadedObj.Facing = -LoadedObj.Facing.
_Obj_ReflectHeading__FloorCeiling:
        lda     #$00                            ; E0E5
        sec                                     ; E0E7
        sbc     LoadedObj + Obj::Facing         ; E0E8
        sta     LoadedObj + Obj::Facing         ; E0EA
        rts                                     ; E0EC

; ----------------------------------------------------------------------------
; Calculates signed X-distance from this object to the player.
;   Returns:
;     A = Hi byte (signed)
;     X = Lo byte (unsigned)
Obj_Get_DeltaToPlayer_X_q12_4:
        lda     PlayerSlot + Obj::Position_X_Lo ; E0ED
        sec                                     ; E0F0
        sbc     LoadedObj + Obj::Position_X_Lo  ; E0F1
        tax                                     ; E0F3
        lda     PlayerSlot + Obj::Position_X_Hi ; E0F4
        sbc     LoadedObj + Obj::Position_X_Hi  ; E0F7
        rts                                     ; E0F9

; ----------------------------------------------------------------------------
; Calculates signed Y-distance from this object to the player.
;   Returns:
;     A = Hi byte (signed)
;     X = Lo byte (unsigned)
Obj_Get_DeltaToPlayer_Y_q12_4:
        lda     PlayerSlot + Obj::Position_Y_Lo ; E0FA
        sec                                     ; E0FD
        sbc     LoadedObj + Obj::Position_Y_Lo  ; E0FE
        tax                                     ; E100
        lda     PlayerSlot + Obj::Position_Y_Hi ; E101
        sbc     LoadedObj + Obj::Position_Y_Hi  ; E104
        rts                                     ; E106

; ----------------------------------------------------------------------------
; Signed X-distance to the player as single byte.
; 
; Recombines Obj_Get_DeltaToPlayer_X_q12_4's 16-bit result A (hi-byte in q8) and X (lo-byte in
; q4.4) as (A<<4)|(X>>4).
Obj_Get_DeltaToPlayer_X:
        lda     L0000                           ; E107
        pha                                     ; E109
        jsr     Obj_Get_DeltaToPlayer_X_q12_4   ; E10A
        asl     a                               ; E10D
        asl     a                               ; E10E
        asl     a                               ; E10F
        asl     a                               ; E110
        sta     L0000                           ; E111
        txa                                     ; E113
        lsr     a                               ; E114
        lsr     a                               ; E115
        lsr     a                               ; E116
        lsr     a                               ; E117
        ora     L0000                           ; E118
        tax                                     ; E11A
        pla                                     ; E11B
        sta     L0000                           ; E11C
        txa                                     ; E11E
        rts                                     ; E11F

; ----------------------------------------------------------------------------
; Signed Y-distance to the player as single byte.
; 
; Recombines Obj_Get_DeltaToPlayer_Y_q12_4's 16-bit result A (hi-byte in q8) and X (lo-byte in
; q4.4) as (A<<4)|(X>>4).
Obj_Get_DeltaToPlayer_Y:
        lda     L0000                           ; E120
        pha                                     ; E122
        jsr     Obj_Get_DeltaToPlayer_Y_q12_4   ; E123
        asl     a                               ; E126
        asl     a                               ; E127
        asl     a                               ; E128
        asl     a                               ; E129
        sta     L0000                           ; E12A
        txa                                     ; E12C
        lsr     a                               ; E12D
        lsr     a                               ; E12E
        lsr     a                               ; E12F
        lsr     a                               ; E130
        ora     L0000                           ; E131
        tax                                     ; E133
        pla                                     ; E134
        sta     L0000                           ; E135
        txa                                     ; E137
        rts                                     ; E138

; ----------------------------------------------------------------------------
L_E139: lda     L0000                           ; E139
        pha                                     ; E13B
        jsr     Obj_Get_DeltaToPlayer_X_q12_4   ; E13C
        asl     a                               ; E13F
        asl     a                               ; E140
        asl     a                               ; E141
        sta     L0000                           ; E142
        txa                                     ; E144
        lsr     a                               ; E145
        lsr     a                               ; E146
        lsr     a                               ; E147
        lsr     a                               ; E148
        lsr     a                               ; E149
        ora     L0000                           ; E14A
        tax                                     ; E14C
        pla                                     ; E14D
        sta     L0000                           ; E14E
        txa                                     ; E150
        rts                                     ; E151

; ----------------------------------------------------------------------------
L_E152: lda     L0000                           ; E152
        pha                                     ; E154
        jsr     Obj_Get_DeltaToPlayer_Y_q12_4   ; E155
        asl     a                               ; E158
        asl     a                               ; E159
        asl     a                               ; E15A
        sta     L0000                           ; E15B
        txa                                     ; E15D
        lsr     a                               ; E15E
        lsr     a                               ; E15F
        lsr     a                               ; E160
        lsr     a                               ; E161
        lsr     a                               ; E162
        ora     L0000                           ; E163
        tax                                     ; E165
        pla                                     ; E166
        sta     L0000                           ; E167
        txa                                     ; E169
        rts                                     ; E16A

.endmacro

.macro MAC_L_E1BD
; ----------------------------------------------------------------------------
; Convert LoadedObj's Facing (heading) to a scaled Velocity vector
; 
; Input:
;   LoadedObj.Facing = angle as 0-255 spanning a full circle
;   Y = scale factor
; 
; Output:
;   LoadedObj.Velocity_X = cos(LoadedObj.Facing) x scale
;   LoadedObj.Velocity_Y = sin(LoadedObj.Facing) x scale
Obj_FacingToVelocity:
        lda     LoadedObj + Obj::Facing         ; E1BD
; Look up cos(A)
        jsr     Trig_CosByAngle                 ; E1BF
; Scale by Y
        jsr     ScaleBySignedFrac               ; E1C2
; Save into LoadedObj.Velocity_X
        sta     LoadedObj + Obj::Velocity_X     ; E1C5
        lda     LoadedObj + Obj::Facing         ; E1C7
; Look up sin(A)
        jsr     Trig_SinByAngle                 ; E1C9
; Scale by Y
        jsr     ScaleBySignedFrac               ; E1CC
; Save into LoadedObj.Velocity_Y
        sta     LoadedObj + Obj::Velocity_Y     ; E1CF
        rts                                     ; E1D1

.endmacro

.macro MAC_L_EB14
; ----------------------------------------------------------------------------
; Clamps the signed velocity ZP[$00+X] into [-A, +A]
; 
; Input:
;   X = the ZP index
;   A = the positive speed limit
Speed_Limit_Sub:
        ldy     L0000,x                         ; EB14
        bmi     _Speed_Limit_Sub__Negative      ; EB16
; When Velocity is non-negative:
; 
; Compare limit A against Velocity
        cmp     L0000,x                         ; EB18
; if A >= Velocity, return without change.
        bcs     _Speed_Limit_Sub__Return        ; EB1A
; otherwise (clamping is required since Velocity > A), clamp ZP[$00+X] to A
        sta     L0000,x                         ; EB1C
        rts                                     ; EB1E

; ----------------------------------------------------------------------------
; When Velocity is negative:
; 
; negate A via two's complement → -A for comparison
_Speed_Limit_Sub__Negative:
        eor     #$FF                            ; EB1F
        clc                                     ; EB21
        adc     #$01                            ; EB22
; Compare limit -A against negative velocity
        cmp     L0000,x                         ; EB24
; if -A < Velocity, return without change.
        bcc     _Speed_Limit_Sub__Return        ; EB26
; otherwise (clamping is probably required since Velocity <= -A), clamp ZP[$00+X] to A
        sta     L0000,x                         ; EB28
; RTS (velocity within limit).
_Speed_Limit_Sub__Return:
        rts                                     ; EB2A

.endmacro

