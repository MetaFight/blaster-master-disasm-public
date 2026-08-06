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
ObjSlot_Load:
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
ObjSlot_Save:
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
        jsr     ObjSlot_Load                    ; C97E
        lda     $4F                             ; C981
        beq     L_C987                          ; C983
        dec     $4F                             ; C985
L_C987: jsr     L_C9A4                          ; C987
        jsr     ObjSlot_Save                    ; C98A
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

.macro MAC_L_D324
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
L_D851: pha                                     ; D851
        ldx     #$54                            ; D852
        lda     #$EE                            ; D854
        sta     L0000                           ; D856
        jsr     FindEmptyObjectSlot             ; D858
        beq     L_D869                          ; D85B
        txa                                     ; D85D
        pha                                     ; D85E
        jsr     L_D7C0                          ; D85F
        pla                                     ; D862
        tax                                     ; D863
        pla                                     ; D864
        sta     ObjectTable + Obj::Type,x       ; D865
        rts                                     ; D868

; ----------------------------------------------------------------------------
L_D869: pla                                     ; D869
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
Obj_TryCloneLoadedObjectIntoEmptySlot:
        lda     #$D2                            ; DF0F
        sta     L0000                           ; DF11
        ldx     #$70                            ; DF13
; find the first empty object slot (scan from X=$70, limit $00=$D2)
        jsr     FindEmptyObjectSlot             ; DF15
        beq     _Obj_TryCloneLoadedObjectIntoEmptySlot__NoSlot; DF18
        stx     $A5                             ; DF1A
        jsr     _Obj_TryCloneLoadedObjectIntoEmptySlot__CopyRecord; DF1C
        ldx     $A5                             ; DF1F
        lda     #$01                            ; DF21
        rts                                     ; DF23

; ----------------------------------------------------------------------------
; No free slot: return A=$00 (nothing spawned).
_Obj_TryCloneLoadedObjectIntoEmptySlot__NoSlot:
        lda     #$00                            ; DF24
        rts                                     ; DF26

; ----------------------------------------------------------------------------
; Copy the 14-byte LoadedObject record into the new slot at ObjectTable,X (Y=0..$0D); X advances
; past the slot.
_Obj_TryCloneLoadedObjectIntoEmptySlot__CopyRecord:
        ldy     #$00                            ; DF27
; Copy 14 bytes ($0E) from ZP $46+Y into the slot at $0400,X.
_Obj_TryCloneLoadedObjectIntoEmptySlot__CopyLoop:
        lda     LoadedObject + Obj::Type,y      ; DF29
        sta     ObjectTable + Obj::Type,x       ; DF2C
        inx                                     ; DF2F
        iny                                     ; DF30
        cpy     #$0E                            ; DF31
        bne     _Obj_TryCloneLoadedObjectIntoEmptySlot__CopyLoop; DF33
        rts                                     ; DF35

; ----------------------------------------------------------------------------
L_DF36: lda     Global_FrameCounter             ; DF36
        and     #$4C                            ; DF38
        bne     L_DF43                          ; DF3A
        jsr     Step_RNG                        ; DF3C
        and     #$03                            ; DF3F
        beq     L_DF46                          ; DF41
L_DF43: lda     #$00                            ; DF43
        rts                                     ; DF45

; ----------------------------------------------------------------------------
L_DF46: lda     L0000                           ; DF46
        pha                                     ; DF48
        lda     #$D2                            ; DF49
        sta     L0000                           ; DF4B
        ldx     #$70                            ; DF4D
        jsr     FindEmptyObjectSlot             ; DF4F
        beq     L_DF62                          ; DF52
        lda     $A0                             ; DF54
        sta     ObjectTable + Obj::Type,x       ; DF56
        jsr     L_D7C0                          ; DF59
        pla                                     ; DF5C
        sta     L0000                           ; DF5D
        lda     #$FF                            ; DF5F
        rts                                     ; DF61

; ----------------------------------------------------------------------------
L_DF62: pla                                     ; DF62
        sta     L0000                           ; DF63
        lda     #$00                            ; DF65
        rts                                     ; DF67

; ----------------------------------------------------------------------------
L_DF68: jsr     L_E083                          ; DF68
        bpl     L_DF77                          ; DF6B
        lda     #$00                            ; DF6D
        sec                                     ; DF6F
        sbc     LoadedObj + Obj::Velocity_X     ; DF70
        sta     LoadedObj + Obj::Velocity_X     ; DF72
        jmp     L_DF81                          ; DF74

; ----------------------------------------------------------------------------
L_DF77: asl     a                               ; DF77
        bpl     L_DF81                          ; DF78
        lda     #$00                            ; DF7A
        sec                                     ; DF7C
        sbc     LoadedObj + Obj::Velocity_Y     ; DF7D
        sta     LoadedObj + Obj::Velocity_Y     ; DF7F
L_DF81: lda     TerrainCollisionFlags           ; DF81
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
L_DFDD: jsr     LoadedObj__Get_DeltaToPlayer_X  ; DFDD
        bpl     L_DFE7                          ; DFE0
        eor     #$FF                            ; DFE2
        clc                                     ; DFE4
        adc     #$01                            ; DFE5
L_DFE7: pha                                     ; DFE7
        jsr     L_E0FA                          ; DFE8
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
L_E005: lda     #$02                            ; E005
        jsr     Obj_GravityMoveBounce_Double    ; E007
        asl     a                               ; E00A
        bpl     L_E018                          ; E00B
        lda     LoadedObj + Obj::Velocity_Y     ; E00D
        bpl     L_E018                          ; E00F
        lda     #$00                            ; E011
        sta     LoadedObj + Obj::Velocity_Y     ; E013
        lda     #$FF                            ; E015
        rts                                     ; E017

; ----------------------------------------------------------------------------
L_E018: lda     #$00                            ; E018
        rts                                     ; E01A

.endmacro

.macro MAC_L_E02F
; ----------------------------------------------------------------------------
L_E02F: jsr     L_DF68                          ; E02F
        lda     LoadedObj + Obj::Scratch1       ; E032
        beq     L_E03B                          ; E034
        dec     LoadedObj + Obj::Scratch1       ; E036
        jmp     L_E04D                          ; E038

; ----------------------------------------------------------------------------
L_E03B: lda     #$11                            ; E03B
        jsr     L_D2B1                          ; E03D
        bmi     L_E04D                          ; E040
        lda     #$00                            ; E042
        sec                                     ; E044
        sbc     LoadedObj + Obj::Velocity_X     ; E045
        sta     LoadedObj + Obj::Velocity_X     ; E047
        lda     #$20                            ; E049
        sta     LoadedObj + Obj::Scratch1       ; E04B
L_E04D: rts                                     ; E04D

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
L_E07B: lda     LoadedObj + Obj::Facing         ; E07B
        clc                                     ; E07D
        adc     LoadedObj + Obj::Scratch2       ; E07E
        sta     LoadedObj + Obj::Facing         ; E080
        rts                                     ; E082

; ----------------------------------------------------------------------------
L_E083: jsr     L_D2DE                          ; E083
        jsr     H_Collision_Check               ; E086
        beq     L_E090                          ; E089
        lda     #$80                            ; E08B
        jmp     L_E092                          ; E08D

; ----------------------------------------------------------------------------
L_E090: lda     #$00                            ; E090
L_E092: sta     TerrainCollisionFlags           ; E092
        jsr     L_D2FE                          ; E094
        jsr     V_Collision_Check               ; E097
        beq     L_E0A2                          ; E09A
        lda     TerrainCollisionFlags           ; E09C
        ora     #$40                            ; E09E
        sta     TerrainCollisionFlags           ; E0A0
L_E0A2: lda     TerrainCollisionFlags           ; E0A2
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
L_E0D0: lda     TerrainCollisionFlags           ; E0D0
        bmi     L_E0D8                          ; E0D2
        asl     a                               ; E0D4
        bmi     L_E0E5                          ; E0D5
        rts                                     ; E0D7

; ----------------------------------------------------------------------------
L_E0D8: lda     LoadedObj + Obj::Facing         ; E0D8
        sec                                     ; E0DA
        sbc     #$40                            ; E0DB
        eor     #$FF                            ; E0DD
        clc                                     ; E0DF
        adc     #$41                            ; E0E0
        sta     LoadedObj + Obj::Facing         ; E0E2
        rts                                     ; E0E4

; ----------------------------------------------------------------------------
L_E0E5: lda     #$00                            ; E0E5
        sec                                     ; E0E7
        sbc     LoadedObj + Obj::Facing         ; E0E8
        sta     LoadedObj + Obj::Facing         ; E0EA
        rts                                     ; E0EC

; ----------------------------------------------------------------------------
; Signed X-distance from this object to the player:  Returns X = pixel/frac byte, A = metatile
; byte (carries the sign).
LoadedObj__Get_DeltaToPlayer_X:
        lda     PlayerSlot + Obj::Position_X_Lo ; E0ED
        sec                                     ; E0F0
        sbc     LoadedObj + Obj::Position_X_Lo  ; E0F1
        tax                                     ; E0F3
        lda     PlayerSlot + Obj::Position_X_Hi ; E0F4
        sbc     LoadedObj + Obj::Position_X_Hi  ; E0F7
        rts                                     ; E0F9

; ----------------------------------------------------------------------------
L_E0FA: lda     PlayerSlot + Obj::Position_Y_Lo ; E0FA
        sec                                     ; E0FD
        sbc     LoadedObj + Obj::Position_Y_Lo  ; E0FE
        tax                                     ; E100
        lda     PlayerSlot + Obj::Position_Y_Hi ; E101
        sbc     LoadedObj + Obj::Position_Y_Hi  ; E104
        rts                                     ; E106

; ----------------------------------------------------------------------------
L_E107: lda     L0000                           ; E107
        pha                                     ; E109
        jsr     LoadedObj__Get_DeltaToPlayer_X  ; E10A
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
L_E120: lda     L0000                           ; E120
        pha                                     ; E122
        jsr     L_E0FA                          ; E123
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
        jsr     LoadedObj__Get_DeltaToPlayer_X  ; E13C
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
        jsr     L_E0FA                          ; E155
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
Obj_AngleToVelocity:
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

