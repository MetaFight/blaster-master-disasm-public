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

.include "00_title-screen.asm"
.include "01a_story-sequence.asm"
.include "01b_demo-screen.asm"
.include "02_init.asm"
.include "03_intro-screen.asm"
.include "04a_lives-left-screen.asm"
.include "04b_area-entry-screen.asm"
.include "05_game-screen/camera.asm"
.include "05_game-screen/game-loop.asm"
.include "05_game-screen/hud.asm"
.include "05_game-screen/object-system.asm"
.include "06_pause-screen.asm"
.include "_ungrouped.asm"
.include "bank-tail.asm"
.include "camera.asm"
.include "continue-screen.asm"
.include "data.asm"
.include "dead.asm"
.include "drawing-background.asm"
.include "drawing-metasprites.asm"
.include "drawing-sprites.asm"
.include "ending.asm"
.include "hardware.asm"
.include "input.asm"
.include "level-rendering.asm"
.include "math.asm"
.include "mmc1.asm"
.include "rng.asm"
.include "screen-fade.asm"
.include "sound.asm"
.include "timing.asm"
.include "trampoline.asm"

; Emit every group's code in address order (see GroupSplitter).
        MAC_L_C000
        MAC_L_C24F
        MAC_L_C2DB
        MAC_L_C2FB
        MAC_L_C3D5
        MAC_L_C438
        MAC_L_C45F
        MAC_L_C465
        MAC_L_C55D
        MAC_L_C56D
        MAC_L_C5B2
        MAC_L_C642
        MAC_L_C7BE
        MAC_L_C7C7
        MAC_L_C816
        MAC_L_C8DF
        MAC_L_C9D6
        MAC_L_CBB4
        MAC_L_CDBA
        MAC_L_CDD0
        MAC_L_CE4A
        MAC_L_CE55
        MAC_L_CF10
        MAC_L_D02D
        MAC_L_D18D
        MAC_L_D1EF
        MAC_L_D7F8
        MAC_L_D883
        MAC_L_D908
        MAC_L_DCFC
        MAC_L_DEC2
        MAC_L_DF05
        MAC_L_DF0F
        MAC_L_E01B
        MAC_L_E02F
        MAC_L_E060
        MAC_L_E071
        MAC_L_E16B
        MAC_L_E1BD
        MAC_L_E1D2
        MAC_L_E243
        MAC_L_E287
        MAC_L_E2C1
        MAC_L_E309
        MAC_L_E61B
        MAC_L_E697
        MAC_L_E6BE
        MAC_L_E6BF
        MAC_L_E6DE
        MAC_L_E6E9
        MAC_L_E6FA
        MAC_L_E797
        MAC_L_E8A9
        MAC_L_E936
        MAC_L_E953
        MAC_L_EA03
        MAC_L_EA3A
        MAC_L_EA56
        MAC_L_EA63
        MAC_L_EA6F
        MAC_L_EAE9
        MAC_L_EB14
        MAC_L_EB2B
        MAC_L_EB44
        MAC_L_EB64
        MAC_L_EB71
        MAC_L_EB7E
        MAC_L_EBF4
        MAC_L_EC34
        MAC_L_EC61
        MAC_L_ECB4
        MAC_L_EF2B
        MAC_L_F011
        MAC_L_F14E
        MAC_L_F192
        MAC_L_F273
        MAC_L_F45D
        MAC_L_F465
        MAC_L_F547
        MAC_L_F5AE
        MAC_L_F5D9
        MAC_L_F6A7
        MAC_L_F71C
        MAC_L_F7D1
        MAC_L_F833
        MAC_L_F9D5
        MAC_L_FEC0
        MAC_L_FFD8
