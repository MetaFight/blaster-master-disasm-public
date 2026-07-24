; da65 V2.18 - Ubuntu 2.19-1
; Input file: public/disasm/prg_bank_04.bin
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
LC00C           := $C00C
LC012           := $C012
LC015           := $C015
LC018           := $C018
LC01E           := $C01E
LC024           := $C024
LC027           := $C027
LC02D           := $C02D
LC030           := $C030
LC039           := $C039
LC03F           := $C03F
LC045           := $C045
LC048           := $C048
LC04B           := $C04B
LC04E           := $C04E
LC051           := $C051
LC054           := $C054
LC05A           := $C05A
LC05D           := $C05D
LC060           := $C060
LC063           := $C063
LC066           := $C066
LC06F           := $C06F
LC075           := $C075
LC07B           := $C07B
LC07E           := $C07E
LC090           := $C090
LC093           := $C093
LC09C           := $C09C
LC09F           := $C09F
LC0A2           := $C0A2
LC0A8           := $C0A8
LC0C0           := $C0C0
LC0CC           := $C0CC
LC0CF           := $C0CF
LC0D2           := $C0D2
LC0D8           := $C0D8
LC0DE           := $C0DE
LC0E7           := $C0E7
LC0F0           := $C0F0
LC0F6           := $C0F6
LC0FF           := $C0FF
LC105           := $C105
LC10E           := $C10E
LC111           := $C111
LC114           := $C114
LC117           := $C117
LC11A           := $C11A
LC11D           := $C11D
LC12C           := $C12C
LC12F           := $C12F
LC132           := $C132
LC138           := $C138
LC13E           := $C13E
LC141           := $C141
LC144           := $C144
LC147           := $C147
LC14A           := $C14A
LC14D           := $C14D
LC153           := $C153
LC159           := $C159
LC15F           := $C15F
LC165           := $C165
LC16B           := $C16B
LC171           := $C171
LC17A           := $C17A
LC17D           := $C17D
LC189           := $C189
LC18C           := $C18C
LC192           := $C192
LC19E           := $C19E
LC1AD           := $C1AD
LC1B0           := $C1B0
LC1B3           := $C1B3
LC1B6           := $C1B6
LC1C8           := $C1C8
LC1CE           := $C1CE
LC1D1           := $C1D1
LC1D7           := $C1D7
LC1DA           := $C1DA
LC1DD           := $C1DD
LC1E6           := $C1E6
LC1EC           := $C1EC
LC1EF           := $C1EF
LC1F5           := $C1F5
LC1FE           := $C1FE
LC201           := $C201
LC204           := $C204
LC207           := $C207
LC20A           := $C20A
LC20D           := $C20D
LC216           := $C216
LC222           := $C222
; ----------------------------------------------------------------------------

.segment        "BANK04": absolute

.include "_ungrouped.asm"

; Emit every group's code in address order (see GroupSplitter).
        MAC_L_8000
