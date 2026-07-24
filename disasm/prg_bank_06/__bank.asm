; da65 V2.18 - Ubuntu 2.19-1
; Input file: public/disasm/prg_bank_06.bin
; Page:       1


        .setcpu "6502"

; ----------------------------------------------------------------------------
LoadedObject_Type:= $0046
LoadedObject_X_Pixel:= $0048
LoadedObject_X_MetaTile:= $0049
LoadedObject_Y_Pixel:= $004A
LoadedObject_Y_MetaTile:= $004B
LoadedObject_XVel:= $004C
LoadedObject_YVel:= $004D
LoadedObject_Health:= $0053
ObjectSlot_Index:= $0057
PlayerObj_Type  := $0400
PlayerObj_Facing:= $0401
PlayerObj_X_Pixel:= $0402
PlayerObj_X_MetaTile:= $0403
PlayerObj_Y_Pixel:= $0404
PlayerObj_Y_MetaTile:= $0405
PlayerObj_XVel  := $0406
PlayerObj_YVel  := $0407
PlayerObj_Health:= $040D
LC5B2           := $C5B2
LCBA9           := $CBA9
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
LD2AB           := $D2AB
LD2B1           := $D2B1
LD2B9           := $D2B9
LD2DB           := $D2DB
LD2DE           := $D2DE
LD2FE           := $D2FE
LD324           := $D324
LD37A           := $D37A
LD37D           := $D37D
LD3DE           := $D3DE
LD3E1           := $D3E1
LD68D           := $D68D
LD697           := $D697
LD711           := $D711
LD71F           := $D71F
LD77D           := $D77D
LD790           := $D790
LD7A0           := $D7A0
LD7B6           := $D7B6
LD7C0           := $D7C0
LD7CF           := $D7CF
LD7E3           := $D7E3
LD7F8           := $D7F8
LD804           := $D804
LD81C           := $D81C
LD823           := $D823
LD82C           := $D82C
LD851           := $D851
Enqueue_Sound_Command := $DECC
LDF0F           := $DF0F
LDF36           := $DF36
LDF46           := $DF46
LDF68           := $DF68
LDFA0           := $DFA0
LDFD1           := $DFD1
LDFDD           := $DFDD
LE005           := $E005
LE02F           := $E02F
LE04E           := $E04E
LE060           := $E060
LE06A           := $E06A
LE07B           := $E07B
LE083           := $E083
LE0D8           := $E0D8
LE0ED           := $E0ED
LE0FA           := $E0FA
LE107           := $E107
LE120           := $E120
LE196           := $E196
LE1B1           := $E1B1
LE1B7           := $E1B7
LE1BD           := $E1BD
LE1D5           := $E1D5
LEB14           := $EB14
LEB51           := $EB51
LEB71           := $EB71
LEC73           := $EC73
LECB4           := $ECB4
LEDF5           := $EDF5
LEF2B           := $EF2B
LF011           := $F011
LF029           := $F029
; ----------------------------------------------------------------------------

.segment        "BANK06": absolute

.include "_ungrouped.asm"
.include "bank-tail.asm"
.include "dead.asm"
.include "dispatch.asm"
.include "object-handlers/_ungrouped.asm"
.include "object-handlers/auto-gates_and_locks.asm"
.include "object-handlers/bee.asm"
.include "object-handlers/bomb-canister.asm"
.include "object-handlers/bomb-lobbing-hand.asm"
.include "object-handlers/bomber-rock.asm"
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
.include "object-handlers/hopper_common.asm"
.include "object-handlers/hulk.asm"
.include "object-handlers/jason-small.asm"
.include "object-handlers/jellyfish.asm"
.include "object-handlers/mine.asm"
.include "object-handlers/orb.asm"
.include "object-handlers/orb_kamikaze.asm"
.include "object-handlers/pickups.asm"
.include "object-handlers/projectiles.asm"
.include "object-handlers/running-shell.asm"
.include "object-handlers/scuba-steve.asm"
.include "object-handlers/shooter.asm"
.include "object-handlers/sophia.asm"
.include "object-handlers/submersible.asm"
.include "object-handlers/swooping-sphere.asm"
.include "object-handlers/turret.asm"
.include "object-handlers/wall-guardian.asm"

; Emit every group's code in address order (see GroupSplitter).
        MAC_L_8000
        MAC_L_8124
        MAC_L_815C
        MAC_L_888C
        MAC_L_89BE
        MAC_L_8C4D
        MAC_L_8C64
        MAC_L_8DC3
        MAC_L_8DD5
        MAC_L_8E32
        MAC_L_8E97
        MAC_L_9707
        MAC_L_976D
        MAC_L_9780
        MAC_L_9788
        MAC_L_9838
        MAC_L_9882
        MAC_L_99B0
        MAC_L_99CC
        MAC_L_9AC8
        MAC_L_9AEB
        MAC_L_9B2F
        MAC_L_9B32
        MAC_L_9B81
        MAC_L_9B95
        MAC_L_9C1C
        MAC_L_9D3B
        MAC_L_9E9E
        MAC_L_9EA4
        MAC_L_A237
        MAC_L_A280
        MAC_L_A29E
        MAC_L_A3E2
        MAC_L_A4DE
        MAC_L_A634
        MAC_L_A670
        MAC_L_A6BF
        MAC_L_A6D7
        MAC_L_A74B
        MAC_L_A7CB
        MAC_L_A86E
        MAC_L_A8D2
        MAC_L_A9CB
        MAC_L_AA5A
        MAC_L_AB13
        MAC_L_ABCF
        MAC_L_AC3C
        MAC_L_ACFB
        MAC_L_ADE4
        MAC_L_AE78
        MAC_L_AF3A
        MAC_L_AFFC
        MAC_L_B076
        MAC_L_B16E
        MAC_L_B1FF
        MAC_L_B29B
        MAC_L_B337
        MAC_L_B3E3
        MAC_L_B494
        MAC_L_B578
        MAC_L_B62F
        MAC_L_B6E4
        MAC_L_B832
        MAC_L_B91A
        MAC_L_BA88
        MAC_L_BC21
