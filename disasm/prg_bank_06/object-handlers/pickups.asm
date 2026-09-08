.macro MAC_L_9C1C
; ----------------------------------------------------------------------------
; -
; 
; 
; ObjType $2C: Pow x1 pickup - Init
ObjHandler_Tank_2C_Pick_up_Pow_x1_Init:
        nop                                     ; 9C1C
        nop                                     ; 9C1D
        nop                                     ; 9C1E
_ObjHandler_Tank_2C_Pick_up_Pow_x1_Init__Body:
        lda     #$00                            ; 9C1F
; Delegate to shared init tail, passing in PickUp Type as A = 0
        beq     _PickUp_Shared_InitTail         ; 9C21
; -
; 
; 
; ObjType $2D: Pow x4 pickup - Init
ObjHandler_Tank_2D_Pick_up_Pow_x4_Init:
        nop                                     ; 9C23
        nop                                     ; 9C24
        nop                                     ; 9C25
_ObjHandler_Tank_2D_Pick_up_Pow_x4_Init__Body:
        lda     #$01                            ; 9C26
; Delegate to shared init tail, passing in PickUp Type as A = 1
        bne     _PickUp_Shared_InitTail         ; 9C28
; -
; 
; 
; ObjType $30: Gun x1 pickup - Init
ObjHandler_Tank_30_Gun_gun_x1:
        nop                                     ; 9C2A
        nop                                     ; 9C2B
        nop                                     ; 9C2C
_ObjHandler_Tank_30_Gun_gun_x1__Body:
        lda     #$02                            ; 9C2D
; Delegate to shared init tail, passing in PickUp Type as A = 2
        bne     _PickUp_Shared_InitTail         ; 9C2F
; -
; 
; 
; ObjType $31: Gun x4 pickup - Init
ObjHandler_Tank_31_Pickup_Gun_x4_Init:
        nop                                     ; 9C31
        nop                                     ; 9C32
        nop                                     ; 9C33
_ObjHandler_Tank_31_Pickup_Gun_x4_Init__Body:
        lda     #$03                            ; 9C34
; Delegate to shared init tail, passing in PickUp Type as A = 3
        bne     _PickUp_Shared_InitTail         ; 9C36
; -
; 
; 
; ObjType $2E: Hover x1 pickup - Init
ObjHandler_Tank_2E_Pick_up_Hover_x1_Init:
        nop                                     ; 9C38
        nop                                     ; 9C39
        nop                                     ; 9C3A
_ObjHandler_Tank_2E_Pick_up_Hover_x1_Init__Body:
        lda     #$04                            ; 9C3B
; Delegate to shared init tail, passing in PickUp Type as A = 4
        bne     _PickUp_Shared_InitTail         ; 9C3D
; -
; 
; 
; ObjType $2F: Hover x4 pickup - Init
ObjHandler_Tank_2F_Pick_up_Hover_x4_Init:
        nop                                     ; 9C3F
        nop                                     ; 9C40
        nop                                     ; 9C41
_ObjHandler_Tank_2F_Pick_up_Hover_x4_Init__Body:
        lda     #$05                            ; 9C42
; Delegate to shared init tail, passing in PickUp Type as A = 5
        bne     _PickUp_Shared_InitTail         ; 9C44
; -
; 
; 
; ObjType $32: Homing Missile pickup - Init
ObjHandler_Tank_32_Homing_Missiles_x20_Init:
        nop                                     ; 9C46
        nop                                     ; 9C47
        nop                                     ; 9C48
_ObjHandler_Tank_32_Homing_Missiles_x20_Init__Body:
        lda     #$06                            ; 9C49
; Delegate to shared init tail, passing in PickUp Type as A = 6
        bne     _PickUp_Shared_InitTail         ; 9C4B
; -
; 
; 
; ObjType $33: Thunder Break x20 pickup - Init
ObjHandler_Tank_33_Pick_up_Lightning_x20_Init:
        nop                                     ; 9C4D
        nop                                     ; 9C4E
        nop                                     ; 9C4F
_ObjHandler_Tank_33_Pick_up_Lightning_x20_Init__Body:
        lda     #$07                            ; 9C50
; Delegate to shared init tail, passing in PickUp Type as A = 7
        bne     _PickUp_Shared_InitTail         ; 9C52
; -
; 
; 
; ObjType $33: Warheads x20 pickup - Init
ObjHandler_Tank_34_Pickup_Warheads_x20_Init:
        nop                                     ; 9C54
        nop                                     ; 9C55
        nop                                     ; 9C56
_ObjHandler_Tank_34_Pickup_Warheads_x20_Init__Body:
        lda     #$08                            ; 9C57
; Delegate to shared init tail, passing in PickUp Type as A = 8
        bne     _PickUp_Shared_InitTail         ; 9C59
; -
; 
; 
; Shared Init Tail for ObjTypes $2C–$34 (discriminators 0–8)
; 
; Input:
;   A = PickUp Type
; 
; Start by saving PickUp Type to Scratch0
_PickUp_Shared_InitTail:
        sta     LoadedObj + Obj::Scratch0       ; 9C5B
; Bump ObjType to #$35, the Main PickUp state.
        lda     #$35                            ; 9C5D
        sta     LoadedObj + Obj::Type           ; 9C5F
; Prime Lifetime Counter (Scratch1) to 255.
        lda     #$FF                            ; 9C61
        sta     LoadedObj + Obj::Scratch1       ; 9C63
; Calculate TileIndex
        jmp     Obj_CalcTileIndex               ; 9C65

; ----------------------------------------------------------------------------
; ObjType $35: PickUp - Main
ObjHandler_Common_35_PickUp_Main:
        jmp     _ObjHandler_Common_35_PickUp_Main__AfterAging; 9C68

; ----------------------------------------------------------------------------
_ObjHandler_Common_35_PickUp_Main__Body:
        jsr     Obj_ReadTile                    ; 9C6B
; If tile value is negative (unset, maybe?) skip to exit.
        bmi     _ObjHandler_Common_35_PickUp_Main__Exit; 9C6E
        lda     Global_FrameCounter             ; 9C70
        and     #$03                            ; 9C72
; if (Global_FrameCounter & 3) != 0, skip aging code.
        bne     _ObjHandler_Common_35_PickUp_Main__AfterAging; 9C74
; Otherwise (once every 3 frames), decrement the LifetimeCounter (Scratch1),
        dec     LoadedObj + Obj::Scratch1       ; 9C76
; if still alive, skip to AfterAging handler,
        bne     _ObjHandler_Common_35_PickUp_Main__AfterAging; 9C78
; otherwise, handle despawn.
        jmp     _ObjHandler_Common_35_PickUp_Main__Despawn; 9C7A

; ----------------------------------------------------------------------------
_ObjHandler_Common_35_PickUp_Main__AfterAging:
        jsr     Obj_ReadTile                    ; 9C7D
; Again, read tile data and exit early on negative (unset?) value.
        bmi     _ObjHandler_Common_35_PickUp_Main__Exit; 9C80
        lda     #$10                            ; 9C82
        sta     $40                             ; 9C84
        lda     #$10                            ; 9C86
        sta     $41                             ; 9C88
; Set bounding box and do on-screen test.
        jsr     ScreenPos_Compute               ; 9C8A
; If still on-screen, proceed to player collision check.
        beq     _ObjHandler_Common_35_PickUp_Main__OnScreen; 9C8D
; Otherwise, tombstone.
        jmp     Obj_Tombstone                   ; 9C8F

; ----------------------------------------------------------------------------
_ObjHandler_Common_35_PickUp_Main__OnScreen:
        lda     #$00                            ; 9C92
; Detect contact with Player by calling Obj_TryDamagePlayer with Damage amount = 0
        jsr     Obj_TryDamagePlayer             ; 9C94
; If overlapping, award PickUp payload.
        beq     _ObjHandler_Common_35_PickUp_Main__AwardPayload; 9C97
        lda     LoadedObj + Obj::Scratch1       ; 9C99
        cmp     #$20                            ; 9C9B
; If LifetimeCounter (Scratch1) >= 32, always render (no flicker).
        bcs     _ObjHandler_Common_35_PickUp_Main__Render; 9C9D
        lda     $10                             ; 9C9F
; Otherwise, skip rendering every other frame (flicker).
        lsr     a                               ; 9CA1
        bcs     _ObjHandler_Common_35_PickUp_Main__Exit; 9CA2
_ObjHandler_Common_35_PickUp_Main__Render:
        ldx     LoadedObj + Obj::Scratch0       ; 9CA4
        lda     PickUp_MetaSprite_LookUp,x      ; 9CA6
        sta     $45                             ; 9CA9
; Use the PickUp type (Scratch0) to retrieve the palette mode (static=1, animated=4)
        lda     PickUp_PaletteMode_LookUp,x     ; 9CAB
        cmp     #$04                            ; 9CAE
; If not type #$04 (Hover x4), skip animated palette code.
        bne     _ObjHandler_Common_35_PickUp_Main__DrawMetasprite; 9CB0
; otherwise, animate palette by cycling values 0-3 holding each 2 frames.
        lda     $10                             ; 9CB2
        lsr     a                               ; 9CB4
        and     #$03                            ; 9CB5
_ObjHandler_Common_35_PickUp_Main__DrawMetasprite:
        sta     $44                             ; 9CB7
; Store A as OAM_Stage_Sprite (Palette Index) and call Quad renderer.
        jmp     LEDF5                           ; 9CB9

; ----------------------------------------------------------------------------
_ObjHandler_Common_35_PickUp_Main__Exit:
        rts                                     ; 9CBC

; ----------------------------------------------------------------------------
_ObjHandler_Common_35_PickUp_Main__AwardPayload:
        lda     PickUp_TargetAddress_LookUpPtr  ; 9CBD
        sta     IndirectPtrLo                   ; 9CC0
        lda     PickUp_TargetAddress_LookUpPtr+1; 9CC2
; Copy award target address into IndirectPtrLo/Hi.
        sta     IndirectPtrHi                   ; 9CC5
        lda     LoadedObj + Obj::Scratch0       ; 9CC7
; Use BankDispatch_Index to sanitise IndirectPtrLo/Hi
        jsr     LEB51                           ; 9CC9
; Read pre-award value.
        lda     (IndirectPtrLo),y               ; 9CCC
        ldx     LoadedObj + Obj::Scratch0       ; 9CCE
        clc                                     ; 9CD0
; Add awarded amount.
        adc     PickUp_TargetAmount_LookUp,x    ; 9CD1
        bcc     _ObjHandler_Common_35_PickUp_Main__CommitAward; 9CD4
; On overflow, cap the value.
        lda     #$FF                            ; 9CD6
; Commit updated value back to source address.
_ObjHandler_Common_35_PickUp_Main__CommitAward:
        sta     (IndirectPtrLo),y               ; 9CD8
; Loop over all 3 sub-weapon ammo slots to cap each at 99.
        ldx     #$02                            ; 9CDA
; For each sub-weapon slot,
_ObjHandler_Common_35_PickUp_Main__AmmoCapLoop:
        lda     L06F0,x                         ; 9CDC
        cmp     #$64                            ; 9CDF
        bcc     _ObjHandler_Common_35_PickUp_Main__AmmoCapNext; 9CE1
; if slot >= 100, cap at 99.
        lda     #$63                            ; 9CE3
        sta     L06F0,x                         ; 9CE5
_ObjHandler_Common_35_PickUp_Main__AmmoCapNext:
        dex                                     ; 9CE8
        bpl     _ObjHandler_Common_35_PickUp_Main__AmmoCapLoop; 9CE9
; Finally, enqueue the appropriate sound and despawn.
        lda     LoadedObj + Obj::Scratch0       ; 9CEB
        cmp     #$06                            ; 9CED
; Play sub-weapon sound (pickup type >= #$06)
        bcs     _ObjHandler_Common_35_PickUp_Main__SubWeaponPickUpSound; 9CEF
        lsr     a                               ; 9CF1
; Play x4 sound (bit1 is set)
        bcs     _ObjHandler_Common_35_PickUp_Main__x4PickUpSound; 9CF2
; Otherwise, play x1 sound.
_ObjHandler_Common_35_PickUp_Main__x1PickUpSound:
        lda     #$2C                            ; 9CF4
        jsr     Enqueue_Sound_Command           ; 9CF6
        jmp     _ObjHandler_Common_35_PickUp_Main__Despawn; 9CF9

; ----------------------------------------------------------------------------
_ObjHandler_Common_35_PickUp_Main__x4PickUpSound:
        lda     #$3F                            ; 9CFC
        jsr     Enqueue_Sound_Command           ; 9CFE
        jmp     _ObjHandler_Common_35_PickUp_Main__Despawn; 9D01

; ----------------------------------------------------------------------------
_ObjHandler_Common_35_PickUp_Main__SubWeaponPickUpSound:
        lda     #$40                            ; 9D04
        jsr     Enqueue_Sound_Command           ; 9D06
_ObjHandler_Common_35_PickUp_Main__Despawn:
        jmp     Obj_DespawnAndLog               ; 9D09

; ----------------------------------------------------------------------------
; 9 MetaSprite ids. $60=health, $6A=gun, $62=hover, $64=homing, $68=thunder, $66=multi-warhead.
; Each is the top-left CHR tile of a 16x16 column-major quad (id, id+1, id+$10, id+$11) staged by
; OAM_Stage_Sprite_Shape5_Quad2x2.
PickUp_MetaSprite_LookUp:
        .byte   $60,$60,$6A,$6A,$62,$62,$64,$68 ; 9D0C
        .byte   $66                             ; 9D14
; 9 palette mode entries. One of two options: $01=static (doubles as palette index to use),
; $04=animated.
PickUp_PaletteMode_LookUp:
        .byte   $01,$04,$01,$04,$01,$04,$01,$01 ; 9D15
        .byte   $01                             ; 9D1D
; ----------------------------------------------------------------------------
; Pointer to PickUp_TargetAddress_LookUp
PickUp_TargetAddress_LookUpPtr:
        .addr   PickUp_TargetAddress_LookUp     ; 9D1E
; 9 pointers: HP, HP, Gun, Gun, Hover, Hover, Homing, Lightning, MultiWarhead.
PickUp_TargetAddress_LookUp:
        .addr   L040D                           ; 9D20
        .addr   L040D                           ; 9D22
        .addr   L00C3                           ; 9D24
        .addr   L00C3                           ; 9D26
        .addr   L0092                           ; 9D28
        .addr   L0092                           ; 9D2A
        .addr   L06F0                           ; 9D2C
        .addr   L06F1                           ; 9D2E
        .addr   L06F2                           ; 9D30
; ----------------------------------------------------------------------------
; 9 amounts: Px1=$20; Px4=$80; Gunx1=$20; Gunx4=$80; Hx1=$20; Hx4=$80;
; Homing/Thunder/Multi-Warhead=$14 (20 units).
PickUp_TargetAmount_LookUp:
        .byte   $20,$80,$20,$80,$20,$80,$14,$14 ; 9D32
        .byte   $14                             ; 9D3A
.endmacro

