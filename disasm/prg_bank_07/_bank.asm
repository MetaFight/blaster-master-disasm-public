; da65 V2.18 - Ubuntu 2.19-1
; Input file: public/disasm/prg_bank_07.bin
; Page:       1


        .setcpu "6502"

; ----------------------------------------------------------------------------
L0000           := $0000
L007A           := $007A
LBFE5           := $BFE5
LBFE8           := $BFE8
LBFF1           := $BFF1
; ----------------------------------------------------------------------------

; MMC1 mapper registers (write-only serial port; see NesMemory labels)
MMC1_Ctrl_9FFF     := $9FFF
MMC1_ChrBank0_BFFF := $BFFF
MMC1_ChrBank1_DFFF := $DFFF
MMC1_PrgBank_FFFF  := $FFFF

.segment        "BANK07": absolute

.include "dead.asm"
.include "sound.asm"
.include "story-sequence.asm"
.include "trampoline.asm"
.include "ungrouped.asm"

; Emit every group's code in address order (see GroupSplitter).
        MAC_L_C000
        MAC_L_C24F
        MAC_L_DEC2
        MAC_L_DF05
        MAC_L_E01B
        MAC_L_E02F
        MAC_L_E287
        MAC_L_E2C1
        MAC_L_E309
        MAC_L_E61B
        MAC_L_EA56
        MAC_L_EA63
        MAC_L_EA6F
        MAC_L_EAE9
        MAC_L_EB64
        MAC_L_EB71
        MAC_L_F465
        MAC_L_F547
