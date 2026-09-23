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

.include "00_startup.asm"
.include "01_title-screen.asm"
.include "02_story-sequence.asm"
.include "03_demo-screen.asm"
.include "04_intro-screen.asm"
.include "05_lives-left-screen.asm"
.include "06_game-screen.asm"
.include "06_game-screen/game-loop.asm"
.include "06_game-screen/hud.asm"
.include "06_game-screen/object-system.asm"
.include "06_game-screen/object-system_terrain.asm"
.include "06_game-screen/viewport.asm"
.include "07_pause-screen.asm"
.include "08_area-entry-screen.asm"
.include "09_continue-screen.asm"
.include "10_ending.asm"
.include "_ungrouped.asm"
.include "bank-interface.asm"
.include "bank-tail.asm"
.include "checkpoint.asm"
.include "data.asm"
.include "drawing-background.asm"
.include "drawing-metasprites.asm"
.include "drawing-sprites.asm"
.include "drawing-text.asm"
.include "hardware.asm"
.include "input.asm"
.include "level-rendering.asm"
.include "math.asm"
.include "mmc1.asm"
.include "palette.asm"
.include "rng.asm"
.include "screen-fade.asm"
.include "sound.asm"
.include "timing.asm"
.include "transitions.asm"

; Emit every group's code in address order (see GroupSplitter).
        MAC_bank_interface
        MAC_00_startup  ; falls through into MAC_01_title_screen_1_of_3
        MAC_01_title_screen_1_of_3
        MAC_03_demo_screen_1_of_2
        MAC_06_game_screen
        MAC_06_game_screen__game_loop
        MAC_transitions_1_of_3
        MAC_checkpoint
        MAC__ungrouped_1_of_16
        MAC_transitions_2_of_3
        MAC_06_game_screen__hud
        MAC_06_game_screen__object_system_1_of_8
        MAC__ungrouped_2_of_16
        MAC_06_game_screen__viewport_1_of_2
        MAC_sound_1_of_2
        MAC_screen_fade
        MAC_timing_1_of_3
        MAC_palette_1_of_2
        MAC_06_game_screen__object_system_terrain
        MAC_math_1_of_5
        MAC__ungrouped_3_of_16
        MAC_palette_2_of_2
        MAC_06_game_screen__viewport_2_of_2
        MAC__ungrouped_4_of_16
        MAC_06_game_screen__object_system_2_of_8
        MAC__ungrouped_5_of_16
        MAC_06_game_screen__object_system_3_of_8
        MAC__ungrouped_6_of_16
        MAC_06_game_screen__object_system_4_of_8
        MAC__ungrouped_7_of_16
        MAC_level_rendering
        MAC__ungrouped_8_of_16
        MAC_transitions_3_of_3
        MAC_sound_2_of_2
        MAC__ungrouped_9_of_16
        MAC_06_game_screen__object_system_5_of_8
        MAC__ungrouped_10_of_16
        MAC_06_game_screen__object_system_6_of_8
        MAC_math_2_of_5
        MAC_06_game_screen__object_system_7_of_8
        MAC_math_3_of_5
        MAC_03_demo_screen_2_of_2
        MAC_02_story_sequence
        MAC_mmc1
        MAC_hardware_1_of_7
        MAC__ungrouped_11_of_16
        MAC_hardware_2_of_7
        MAC__ungrouped_12_of_16
        MAC_hardware_3_of_7
        MAC__ungrouped_13_of_16
        MAC_drawing_background_1_of_2
        MAC_drawing_text
        MAC_hardware_4_of_7
        MAC_input
        MAC_timing_2_of_3
        MAC_drawing_background_2_of_2
        MAC_hardware_5_of_7
        MAC__ungrouped_14_of_16
        MAC_math_4_of_5
        MAC_06_game_screen__object_system_8_of_8
        MAC_math_5_of_5
        MAC__ungrouped_15_of_16
        MAC_rng
        MAC_timing_3_of_3
        MAC_hardware_6_of_7
        MAC_drawing_sprites
        MAC__ungrouped_16_of_16
        MAC_drawing_metasprites
        MAC_hardware_7_of_7
        MAC_10_ending_1_of_2
        MAC_01_title_screen_2_of_3
        MAC_04_intro_screen
        MAC_08_area_entry_screen
        MAC_09_continue_screen
        MAC_05_lives_left_screen
        MAC_07_pause_screen
        MAC_01_title_screen_3_of_3
        MAC_10_ending_2_of_2
        MAC_data
        MAC_bank_tail
