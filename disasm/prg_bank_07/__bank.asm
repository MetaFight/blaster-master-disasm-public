; da65 V2.18 - Ubuntu 2.19-1
; Input file: public/disasm/prg_bank_07.bin
; Page:       1


        .setcpu "6502"

        .include "../structs.inc"
        .include "../ram.inc"

; ----------------------------------------------------------------------------
L0000           := $0000
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
.include "05_game-screen/game-loop.asm"
.include "05_game-screen/hud.asm"
.include "05_game-screen/object-system.asm"
.include "05_game-screen/object-system_terrain.asm"
.include "05_game-screen/viewport.asm"
.include "06_pause-screen.asm"
.include "_ungrouped.asm"
.include "bank-interface.asm"
.include "bank-tail.asm"
.include "continue-screen.asm"
.include "data.asm"
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

; Emit every group's code in address order (see GroupSplitter).
        MAC_bank_interface
        MAC_00_title_screen_1_of_3
        MAC_01b_demo_screen_1_of_2
        MAC_02_init
        MAC_05_game_screen__game_loop_1_of_2
        MAC__ungrouped_1_of_20
        MAC_05_game_screen__game_loop_2_of_2
        MAC__ungrouped_2_of_20
        MAC_06_pause_screen_1_of_2
        MAC__ungrouped_3_of_20
        MAC_05_game_screen__object_system_1_of_9
        MAC__ungrouped_4_of_20
        MAC_05_game_screen__hud
        MAC_05_game_screen__object_system_2_of_9
        MAC__ungrouped_5_of_20
        MAC_05_game_screen__viewport_1_of_2
        MAC_sound_1_of_2
        MAC_screen_fade
        MAC_timing_1_of_3
        MAC__ungrouped_6_of_20
        MAC_05_game_screen__object_system_terrain
        MAC_math_1_of_5
        MAC__ungrouped_7_of_20
        MAC_05_game_screen__viewport_2_of_2
        MAC__ungrouped_8_of_20
        MAC_05_game_screen__object_system_3_of_9
        MAC__ungrouped_9_of_20
        MAC_05_game_screen__object_system_4_of_9
        MAC__ungrouped_10_of_20
        MAC_05_game_screen__object_system_5_of_9
        MAC__ungrouped_11_of_20
        MAC_level_rendering
        MAC__ungrouped_12_of_20
        MAC_sound_2_of_2
        MAC__ungrouped_13_of_20
        MAC_05_game_screen__object_system_6_of_9
        MAC__ungrouped_14_of_20
        MAC_05_game_screen__object_system_7_of_9
        MAC_math_2_of_5
        MAC_05_game_screen__object_system_8_of_9
        MAC_math_3_of_5
        MAC_01b_demo_screen_2_of_2
        MAC_01a_story_sequence
        MAC_mmc1
        MAC_hardware_1_of_7
        MAC__ungrouped_15_of_20
        MAC_hardware_2_of_7
        MAC__ungrouped_16_of_20
        MAC_hardware_3_of_7
        MAC__ungrouped_17_of_20
        MAC_hardware_4_of_7
        MAC_input
        MAC_timing_2_of_3
        MAC_drawing_background
        MAC_hardware_5_of_7
        MAC__ungrouped_18_of_20
        MAC_math_4_of_5
        MAC_05_game_screen__object_system_9_of_9
        MAC_math_5_of_5
        MAC__ungrouped_19_of_20
        MAC_rng
        MAC_timing_3_of_3
        MAC_hardware_6_of_7
        MAC_drawing_sprites
        MAC__ungrouped_20_of_20
        MAC_drawing_metasprites
        MAC_hardware_7_of_7
        MAC_ending_1_of_2
        MAC_00_title_screen_2_of_3
        MAC_03_intro_screen
        MAC_04b_area_entry_screen
        MAC_continue_screen
        MAC_04a_lives_left_screen
        MAC_06_pause_screen_2_of_2
        MAC_00_title_screen_3_of_3
        MAC_ending_2_of_2
        MAC_data
        MAC_bank_tail
