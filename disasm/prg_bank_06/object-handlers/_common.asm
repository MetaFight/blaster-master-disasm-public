.macro MAC_L_A2E9
; ----------------------------------------------------------------------------
; (alpha: not fully human-verified / pending re-verification) Shared initialisation routine for
; every damageable tank enemy, called by each enemy's Init handler.
; Overhead parallel: OvhdEnemy_Init ($B2B4). See docs/entities/tank/_shared-enemy-system.md.
; 
; Input:
;    A = descriptor index (aka Thing ID).
; 
; Output:
;   EnemyParam_Ptr[Lo/Hi] ($A1/$A2) point at this enemy's EnemyDesc, so the Main handler and the
;     damage/drop code can reach its ContactDamage/DropType/DropChance without re-deriving them
;   LoadedObj's Health is set from EnemyDesc::Health
;   LoadedObj's IFrameCounter is set to 0
;   LoadedObj's TileIndex is registered with the tilemap by $D2B9 -- derived from the object's
;     own position ($49/$4B vs the camera), NOT from EnemyDesc, which holds no tile field
;   ObjType ($46) is incremented to the enemy's active handler, which is why an Init handler
;     need not advance $46 itself
TankEnemy_Init:
        jsr     TankEnemy_Load_EnemyDescPtr     ; A2E9
; Load desc[0] (EnemyDesc::Health, starting HP) via ($A1),Y → $53; clear anim state $4F.
        ldy     #$00                            ; A2EC
        lda     ($A1),y                         ; A2EE
        sta     LoadedObj + Obj::Health         ; A2F0
        sty     $4F                             ; A2F2
; JSR $D2B9 init tile position; INC $46 → advance to the enemy's main handler.
        jsr     LD2B9                           ; A2F4
        inc     LoadedObj + Obj::Type           ; A2F7
        rts                                     ; A2F9

; ----------------------------------------------------------------------------
; Points EnemyParam_Ptr[Lo/Hi] to the given enemy's TankEnemy_DescTable entry.
; 
; Input:
;    A = TankEnemy_DescTable index (aka Thing ID). 
; 
; Output:
;   EnemyParam_Ptr[Lo/Hi] ($A1/$A2) are set to point to the enemy's 4-byte EnemyDesc entry in
;   TankEnemy_DescTable.
; 
; Start by multiplying A by 4.  EnemyDesc entries are 4-bytes in size so this converts the array
; index into the target element's offset.
TankEnemy_Load_EnemyDescPtr:
        asl     a                               ; A2FA
        asl     a                               ; A2FB
        clc                                     ; A2FC
; A is now the offset into TankEnemy_DescTable for the enemy's EnemyDesc entry.
; Add to first byte of TankEnemy_DescTablePtr to get EnemyParam_PtrLo (with carry)
        adc     TankEnemy_DescTablePtr          ; A2FD
        sta     $A1                             ; A300
        lda     #$00                            ; A302
; Add the carry to second byte of TankEnemy_DescTablePtr to get EnemyParam_PtrHi
        adc     TankEnemy_DescTablePtr+1        ; A304
        sta     $A2                             ; A307
        rts                                     ; A309

; ----------------------------------------------------------------------------
; Shared tank-enemy hit-and-kill test, called once per frame from a damageable enemy's Main
; handler.
; 
; Enemy health is updated according to damage taken.
; 
; Input:
;    A = TankEnemy_DescTable index (aka Thing ID).
; 
; Output:
;   A = $FF when Obj is killed.  $00 otherwise.
; 
; Start by fetching the pointer to this enemy type's Descriptor Record (set to EnemyParam_PtrLo/Hi
; by calling TankEnemy_Load_EnemyDescPtr).
TankEnemy_DamageCheck:
        jsr     TankEnemy_Load_EnemyDescPtr     ; A30A
        ldy     #$01                            ; A30D
; Y=1 selects EnemyDesc field [1] = ContactDamage
        lda     ($A1),y                         ; A30F
; Pass A (the attacker's ContactDamage) into Enemy_Damage_Check_Sub
        jsr     Enemy_Damage_Check_Sub          ; A311
; Store Enemy_Damage_Check_Sub's return code into t_Projectile_Damage_45.
;   $00 on a connecting hit,
;   $FF on a miss
        sta     $45                             ; A314
; If no hit occurred, then the target is necessarily still alive, so branch to the no-kill
; handler.
        bne     _TankEnemy_DamageCheck__NotKilled; A316
; Otherwise handle the hit.
; 
; Re-read Health (already decremented by Enemy_Damage_Check_Sub).
        lda     LoadedObj + Obj::Health         ; A318
; If it's still > 0, then skill to the no-kill handler.
        bne     _TankEnemy_DamageCheck__NotKilled; A31A
; If Health is 0, play a sound effect and return $FF to indicate the kill.
        lda     #$1D                            ; A31C
        jsr     Enqueue_Sound_Command           ; A31E
        lda     #$FF                            ; A321
        rts                                     ; A323

; ----------------------------------------------------------------------------
; Return $00 to indicate damage was not applied or it was applied but left Health > 0.
_TankEnemy_DamageCheck__NotKilled:
        lda     #$00                            ; A324
        rts                                     ; A326

; ----------------------------------------------------------------------------
L_A327: jsr     TankEnemy_Load_EnemyDescPtr     ; A327
        ldy     #$01                            ; A32A
        lda     ($A1),y                         ; A32C
        jsr     Enemy_Damage_Check_Sub          ; A32E
        sta     $45                             ; A331
        bne     L_A344                          ; A333
        lda     LoadedObj + Obj::Health         ; A335
        bne     L_A344                          ; A337
        lda     #$1D                            ; A339
        jsr     Enqueue_Sound_Command           ; A33B
        jsr     L_A350                          ; A33E
        lda     #$FF                            ; A341
        rts                                     ; A343

; ----------------------------------------------------------------------------
L_A344: lda     #$00                            ; A344
        rts                                     ; A346

; ----------------------------------------------------------------------------
L_A347: jsr     Obj_Despawn                           ; A347
        jmp     L_A350                          ; A34A

; ----------------------------------------------------------------------------
; Shared enemy DEATH tail.
; 
; ~29 handlers JMP here after TankEnemy_DamageCheck reports a kill.
; 
; First calls Obj_DespawnAndLog for object slot bookkeeping and then falls into
; TankEnemy_SpawnDrop.'
TankEnemy_Defeat:
        jsr     Obj_DespawnAndLog               ; A34D
L_A350: jsr     Step_RNG                           ; A350
        ldy     #$03                            ; A353
        cmp     ($A1),y                         ; A355
        bcs     L_A365                          ; A357
        jsr     Obj_TryCloneLoadedObjectIntoEmptySlot ; A359
        beq     L_A365                          ; A35C
        ldy     #$02                            ; A35E
        lda     ($A1),y                         ; A360
        sta     ObjectTable + Obj::Type,x       ; A362
L_A365: jmp     L_9B8B                          ; A365

; ----------------------------------------------------------------------------
; LE self-pointer (=$A36A) to TankEnemy_DescTable. Tank parallel of OvhdEnemy_DescTablePtr
; ($B324).
TankEnemy_DescTablePtr:
        .addr   TankEnemy_DescTable             ; A368
; ----------------------------------------------------------------------------
; 30 x EnemyDesc, indexed by descriptor index via TankEnemy_Load_EnemyDescPtr (accessed only via
; computed ($A1) pointer). See the EnemyDesc struct.
; 
; The descriptor index equals the spawn-list Thing id for all 30 entries (see
; docs/entities/entity-map.md), so this is one descriptor per Thing.
; 
; Index->enemy:
;   00=GrayCaterpillar($54)
;   01=GrayBulletA($56)*
;   02=GrayBulletB($58)*
;   03=RedCatDropper($5B)
;   04=Hulk($5D)
;   05=GrayHopper6($5F)
;   06=RedCaterpillar($62)
;   07=Mine($64)
;   08=Turret($66)
;   09=BomberRock($68)
;   0A=FlyingShip($6A)
;   0B=FlyingBomber($6C)
;   0C=SwoopingSphere($6E)
;   0D=Bee($70) 0E=Orb($72)
;   0F=FlyingRedCatBomber($74)
;   10=Shooter($76)
;   11=KamikazeOrb($78)
;   12=GrayHopper10($7A)
;   13=RedFlierSpawner($4E)
;   14=GrayFlierSpawner($50)
;   15=BombLobbingHand($7E)
;   16=Jellyfish($80)
;   17=ScubaSteve($82)
;   18=RunningShell($85)
;   19=SubmersibleSpawner($52)
;   1A=CrescentRoller($88)
;   1B=BombCanister($8A)
;   1C=RedBulletA($8C)*
;   1D=RedBulletB($8D)*
; 
; * The two bullet families each own a Thing pair whose descriptors hold identical bytes, and
; their handlers do not respect the split. Gray: $56 Init, $58 Init and $5A Attacking all pass 02,
; while 01 is reached only by $59 Main's damage check. Red: $8C Init passes 1C and $8D Init passes
; 1D, but $8E Main and $8F Locked both pass 1C. Behaviourally harmless — 01/02 and 1C/1D are
; byte-identical — so which of a pair a handler names is not evidence of that handler's Thing.
; 
; Tank parallel of OvhdEnemy_DescTable ($B326). See docs/entities/tank/_shared-enemy-system.md.
TankEnemy_DescTable:
        .byte   $04,$08,$2C,$60 ; A36A  Health=$04 DropType=$2C DropChance=$60
        .byte   $08,$10,$2C,$80 ; A36E  Health=$08 DropType=$2C DropChance=$80
        .byte   $08,$10,$2C,$80 ; A372  Health=$08 DropType=$2C DropChance=$80
        .byte   $20,$28,$2E,$80 ; A376  Health=$20 DropType=$2E DropChance=$80
        .byte   $08,$10,$2C,$80 ; A37A  Health=$08 DropType=$2C DropChance=$80
        .byte   $06,$10,$2C,$80 ; A37E  Health=$06 DropType=$2C DropChance=$80
        .byte   $08,$10,$2E,$50 ; A382  Health=$08 DropType=$2E DropChance=$50
        .byte   $04,$20,$2C,$80 ; A386  Health=$04 DropType=$2C DropChance=$80
        .byte   $18,$10,$2E,$A0 ; A38A  Health=$18 DropType=$2E DropChance=$A0
        .byte   $10,$10,$2C,$F0 ; A38E  Health=$10 DropType=$2C DropChance=$F0
        .byte   $0A,$20,$2E,$80 ; A392  Health=$0A DropType=$2E DropChance=$80
        .byte   $03,$10,$2C,$80 ; A396  Health=$03 DropType=$2C DropChance=$80
        .byte   $04,$18,$2C,$A8 ; A39A  Health=$04 DropType=$2C DropChance=$A8
        .byte   $03,$10,$2C,$80 ; A39E  Health=$03 DropType=$2C DropChance=$80
        .byte   $06,$20,$2C,$80 ; A3A2  Health=$06 DropType=$2C DropChance=$80
        .byte   $18,$20,$2C,$E0 ; A3A6  Health=$18 DropType=$2C DropChance=$E0
        .byte   $03,$10,$2C,$80 ; A3AA  Health=$03 DropType=$2C DropChance=$80
        .byte   $03,$20,$2C,$A0 ; A3AE  Health=$03 DropType=$2C DropChance=$A0
        .byte   $0A,$10,$2C,$80 ; A3B2  Health=$0A DropType=$2C DropChance=$80
        .byte   $10,$20,$2C,$60 ; A3B6  Health=$10 DropType=$2C DropChance=$60
        .byte   $04,$20,$2E,$70 ; A3BA  Health=$04 DropType=$2E DropChance=$70
        .byte   $08,$20,$2C,$80 ; A3BE  Health=$08 DropType=$2C DropChance=$80
        .byte   $03,$10,$2C,$90 ; A3C2  Health=$03 DropType=$2C DropChance=$90
        .byte   $03,$10,$2C,$B0 ; A3C6  Health=$03 DropType=$2C DropChance=$B0
        .byte   $08,$10,$2C,$70 ; A3CA  Health=$08 DropType=$2C DropChance=$70
        .byte   $04,$20,$2C,$80 ; A3CE  Health=$04 DropType=$2C DropChance=$80
        .byte   $30,$18,$2C,$D0 ; A3D2  Health=$30 DropType=$2C DropChance=$D0
        .byte   $20,$20,$2C,$C0 ; A3D6  Health=$20 DropType=$2C DropChance=$C0
        .byte   $10,$20,$2C,$80 ; A3DA  Health=$10 DropType=$2C DropChance=$80
        .byte   $10,$20,$2C,$80 ; A3DE  Health=$10 DropType=$2C DropChance=$80
.endmacro

