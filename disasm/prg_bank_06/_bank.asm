; da65 V2.18 - Ubuntu 2.19-1
; Input file: public/disasm/prg_bank_06.bin
; Page:       1


        .setcpu "6502"

; ----------------------------------------------------------------------------
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

.include "dispatch.asm"
.include "jason-small.asm"
.include "object-handler.asm"
.include "sophia.asm"
.include "ungrouped.asm"

; Emit every group's code in address order (see GroupSplitter).
        MAC_L_8000
        MAC_L_8124
        MAC_L_815F
        MAC_L_882A
        MAC_L_888C
        MAC_L_89E5
        MAC_L_8A77
        MAC_L_8AED
        MAC_L_8BE5
        MAC_L_8C32
        MAC_L_8C4D
        MAC_L_8C64
        MAC_L_8E32
        MAC_L_8E97
        MAC_L_938E
        MAC_L_93B2
        MAC_L_9432
        MAC_L_976D
        MAC_L_9780
        MAC_L_9788
        MAC_L_9838
        MAC_L_9882
        MAC_L_99B0
        MAC_L_99CC
        MAC_L_9AC8
        MAC_L_9AEB
        MAC_L_9B81
        MAC_L_9B95
        MAC_L_9BD2
        MAC_L_9BD8
        MAC_L_9C15
        MAC_L_9C1C
        MAC_L_9D0C
        MAC_L_9D3B
        MAC_L_9E93
        MAC_L_9EA4
        MAC_L_A29E
        MAC_L_A3E2
        MAC_L_A4DB
        MAC_L_A4DE
        MAC_L_A634
        MAC_L_A6D7
        MAC_L_B81C
        MAC_L_B832
        MAC_L_BA70
        MAC_L_BA88
        MAC_L_BB78
