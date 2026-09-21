; da65 V2.18 - Ubuntu 2.19-1
; Input file: public/disasm/prg_bank_06.bin
; Page:       1


        .setcpu "6502"

        .include "../structs.inc"
        .include "../ram.inc"

; ----------------------------------------------------------------------------
L0092           := $0092
L00C3           := $00C3
L040D           := $040D
L06F0           := $06F0
L06F1           := $06F1
L06F2           := $06F2
LC5B2           := $C5B2
Clear_ThingSpawnHistory          := $CBA9
LCBDF           := $CBDF
LCD28           := $CD28
LCEC6           := $CEC6
LCEDD           := $CEDD
LCF07           := $CF07
LD02D           := $D02D
LD136           := $D136
LD161           := $D161
LD1AD           := $D1AD
LD1EF           := $D1EF
LD21D           := $D21D
LD238           := $D238
LD246           := $D246
LD256           := $D256
LD283           := $D283
Obj_ReadTile                     := $D2AB
Obj_ReadTile_WithOffset          := $D2B1
Obj_CalcTileIndex                := $D2B9
Obj_Apply_Velocity_XY            := $D2DB
Obj_Apply_Velocity_X             := $D2DE
Obj_Apply_Velocity_Y             := $D2FE
Apply_Double_Velocity_XY         := $D324
LD37A           := $D37A
H_Collision_Check                := $D37D
LD3DE           := $D3DE
V_Collision_Check                := $D3E1
Obj_MoveUpOneRow                 := $D68D
LD697           := $D697
LD711           := $D711
Obj_TryDamagePlayer              := $D71F
LD77D           := $D77D
LD790           := $D790
LD7A0           := $D7A0
LD7B6           := $D7B6
Obj_CopyFieldsToSlot             := $D7C0
FindEmptyObjectSlot              := $D7CF
ClearEnemySlots                  := $D7E3
Obj_Tombstone                    := $D7F8
Obj_DespawnAndLog                := $D804
Obj_Despawn                      := $D81C
LD823           := $D823
LD82C           := $D82C
Obj_SpawnChild                   := $D851
Enqueue_Sound_Command            := $DECC
Obj_TryCloneIntoEmptySlot        := $DF0F
Obj_TrySpawnChild_A0_Throttled   := $DF36
Obj_SpawnChild_A0                := $DF46
Obj_MoveBounce                   := $DF68
Obj_GravityMoveBounce_Double     := $DFA0
Obj_Apply_Acceleration           := $DFD1
LDFDD           := $DFDD
Obj_FallAndLand                  := $E005
Obj_MoveBounce_TurnAtLedge       := $E02F
Obj_SetOAMAttr_FlipX_and_Palette := $E04E
LE060           := $E060
LE06A           := $E06A
Obj_TurnHeading                  := $E07B
Obj_MoveAndCollide               := $E083
_Obj_ReflectHeading__HandleWall  := $E0D8
Obj_Get_DeltaToPlayer_X_q12_4    := $E0ED
Obj_Get_DeltaToPlayer_Y_q12_4    := $E0FA
Obj_Get_DeltaToPlayer_X          := $E107
Obj_Get_DeltaToPlayer_Y          := $E120
ScaleBySignedFrac                := $E196
LE1B1           := $E1B1
LE1B7           := $E1B7
Obj_FacingToVelocity             := $E1BD
Trig_SinByAngle                  := $E1D5
Speed_Limit_Sub                  := $EB14
LEB51           := $EB51
Step_RNG                         := $EB71
LEC73           := $EC73
OAM_Stage_Pattern                := $ECB4
LEDF5           := $EDF5
ScreenPos_Compute                := $EF2B
Metasprite_Render                := $F011
LF029           := $F029
; ----------------------------------------------------------------------------

.segment        "BANK06": absolute

.include "_ungrouped.asm"
.include "bank-tail.asm"
.include "dispatch.asm"
.include "object-handlers/_common.asm"
.include "object-handlers/_ungrouped.asm"
.include "object-handlers/auto-gates_and_locks.asm"
.include "object-handlers/bee.asm"
.include "object-handlers/bomb-canister.asm"
.include "object-handlers/bomb-lobbing-hand.asm"
.include "object-handlers/bomber-rock.asm"
.include "object-handlers/bosses.asm"
.include "object-handlers/bullet_common.asm"
.include "object-handlers/bullet_gray.asm"
.include "object-handlers/bullet_red.asm"
.include "object-handlers/caterpillar_gray.asm"
.include "object-handlers/caterpillar_red.asm"
.include "object-handlers/crescent-roller.asm"
.include "object-handlers/dropper_caterpillar_red.asm"
.include "object-handlers/explosions.asm"
.include "object-handlers/flier_gray.asm"
.include "object-handlers/flier_red.asm"
.include "object-handlers/flying-bomber.asm"
.include "object-handlers/flying-bomber_caterpillar_red.asm"
.include "object-handlers/flying-ship.asm"
.include "object-handlers/hopper_10hp.asm"
.include "object-handlers/hopper_6hp.asm"
.include "object-handlers/hopper_hulk_common.asm"
.include "object-handlers/hulk.asm"
.include "object-handlers/jason-small.asm"
.include "object-handlers/jellyfish.asm"
.include "object-handlers/mine.asm"
.include "object-handlers/orb.asm"
.include "object-handlers/orb_kamikaze.asm"
.include "object-handlers/pickups.asm"
.include "object-handlers/projectiles-and-ballistics.asm"
.include "object-handlers/running-shell.asm"
.include "object-handlers/scuba-steve.asm"
.include "object-handlers/shooter.asm"
.include "object-handlers/sophia.asm"
.include "object-handlers/submersible.asm"
.include "object-handlers/swooping-sphere.asm"
.include "object-handlers/turret.asm"
.include "object-handlers/wall-guardian.asm"

; Emit every group's code in address order (see GroupSplitter).
        MAC_dispatch
        MAC_object_handlers___ungrouped
        MAC_object_handlers__jason_small
        MAC__ungrouped_1_of_9
        MAC_object_handlers__sophia_1_of_6
        MAC__ungrouped_2_of_9
        MAC_object_handlers__sophia_2_of_6
        MAC__ungrouped_3_of_9
        MAC_object_handlers__sophia_3_of_6
        MAC__ungrouped_4_of_9
        MAC_object_handlers__projectiles_and_ballistics_1_of_6
        MAC__ungrouped_5_of_9
        MAC_object_handlers__projectiles_and_ballistics_2_of_6
        MAC_object_handlers__sophia_4_of_6
        MAC_object_handlers__projectiles_and_ballistics_3_of_6
        MAC_object_handlers__sophia_5_of_6
        MAC_object_handlers__projectiles_and_ballistics_4_of_6
        MAC_object_handlers__sophia_6_of_6
        MAC_object_handlers__projectiles_and_ballistics_5_of_6
        MAC__ungrouped_6_of_9
        MAC_object_handlers__explosions
        MAC_object_handlers__pickups
        MAC_object_handlers__auto_gates_and_locks
        MAC__ungrouped_7_of_9
        MAC_object_handlers__projectiles_and_ballistics_6_of_6
        MAC__ungrouped_8_of_9
        MAC_object_handlers___common
        MAC_object_handlers__caterpillar_gray
        MAC_object_handlers__bullet_gray_1_of_2
        MAC__ungrouped_9_of_9
        MAC_object_handlers__bullet_common
        MAC_object_handlers__bullet_gray_2_of_2
        MAC_object_handlers__dropper_caterpillar_red
        MAC_object_handlers__hulk
        MAC_object_handlers__hopper_6hp
        MAC_object_handlers__caterpillar_red
        MAC_object_handlers__mine
        MAC_object_handlers__turret
        MAC_object_handlers__bomber_rock
        MAC_object_handlers__flying_ship
        MAC_object_handlers__flying_bomber
        MAC_object_handlers__swooping_sphere
        MAC_object_handlers__bee
        MAC_object_handlers__orb
        MAC_object_handlers__flying_bomber_caterpillar_red
        MAC_object_handlers__shooter
        MAC_object_handlers__orb_kamikaze
        MAC_object_handlers__hopper_10hp
        MAC_object_handlers__hopper_hulk_common
        MAC_object_handlers__flier_red
        MAC_object_handlers__flier_gray
        MAC_object_handlers__bomb_lobbing_hand
        MAC_object_handlers__jellyfish
        MAC_object_handlers__scuba_steve
        MAC_object_handlers__running_shell
        MAC_object_handlers__submersible
        MAC_object_handlers__crescent_roller
        MAC_object_handlers__bomb_canister
        MAC_object_handlers__bullet_red
        MAC_object_handlers__wall_guardian
        MAC_object_handlers__bosses
        MAC_bank_tail
