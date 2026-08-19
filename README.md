# Blaster Master (NES) — Disassembly

A static disassembly of the NES game *Blaster Master (USA)*, done with Claude Code assistance.
This is the **public** export of [MetaFight/blaster-master-disasm](https://github.com/MetaFight/blaster-master-disasm) —
every page below has been reviewed BY A HUMAN. Pages marked ⚠️ alpha are published for early
access but still need human verification — either they have not completed it yet, or they were
verified and have since been modified.

- [`disasm/`](disasm/) — the annotated PRG-ROM disassembly (ca65-compatible listings + MLB labels for emulators)
- [`wiki/`](wiki/) — the knowledge base (per-entity and per-system writeups)

## Progress

| Metric | Progress |
|--------|----------|
| **M4** — Verified subroutines (public, clean) | 56 / 849 (7%) |
| **M6** — Verified docs (public, clean) | 1 / 119 (1%) |

- **M4** counts named subroutines in the disassembly whose label carries the `[verified]` tag, against every named subroutine in the ROM's code banks. Verification is a human step: no tool sets the tag.
- **M6** counts knowledge-base pages (`docs/us/entities/`, `docs/us/execution-flow/`, `docs/us/misc/`) marked `verified`, against every page in those trees — published or not.

### Area 1

<details open>
<summary><b><code>&nbsp;&nbsp;&nbsp;&nbsp;Tank:</code> ⬜⬜⬜▫️⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛ 15.9% </b></summary>

| Entity Variant | Handlers |
|---|---|
| <details><summary>⬜ Auto Gate</summary>⬜ <code>ObjHandler_Tank_24_26_28_Auto_Gate_Init</code><br/>⬜ <code>ObjHandler_Tank_25_Auto_Gate_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Ballistic: Big; Gray</summary>⬜ <code>ObjHandler_Tank_38_Big_Gray_Init</code><br/>⬜ <code>ObjHandler_Tank_39_Big_Gray_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Ballistic: Medium Red; Mine Shrapnel</summary>⬜ <code>ObjHandler_Tank_44_Mine_Shrapnel_Init</code><br/>⬜ <code>ObjHandler_Tank_45_Mine_Shrapnel_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Ballistic: Medium Red; Turret Shot</summary>⬜ <code>ObjHandler_Tank_46_Turret_Shot_Init</code><br/>⬜ <code>ObjHandler_Tank_47_Turret_Shot_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Bullet; Gray</summary>⬜ <code>ObjHandler_Tank_59_Gray_Bullet_Main</code><br/>⬜ <code>ObjHandler_Tank_5A_Gray_Bullet_Attacking</code></details> | 0 / 2 |
| <details><summary>⬜ Bullet; Gray B</summary>⬜ <code>ObjHandler_Tank_58_Gray_Bullet_B_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Bullet; Red</summary>⬜ <code>ObjHandler_Tank_8E_Red_Bullet_Main</code><br/>⬜ <code>ObjHandler_Tank_8F_Red_Bullet_Locked</code></details> | 0 / 2 |
| <details><summary>⬜ Bullet; Red B?</summary>⬜ <code>ObjHandler_Tank_8D_Red_Bullet_B_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Flier; Gray</summary>⬜ <code>ObjHandler_Tank_7D_Gray_Flier_Main</code></details> | 0 / 1 |
| <details><summary>✅ Flying Bomber</summary>✅ <code>ObjHandler_Tank_6C_Flying_Bomber_Init</code><br/>✅ <code>ObjHandler_Tank_6D_Flying_Bomber_Main</code></details> | 2 / 2 |
| <details><summary>⬜ Gray Flier Spawner</summary>⬜ <code>ObjHandler_Tank_50_Gray_Flier_Spawner_Init</code><br/>⬜ <code>ObjHandler_Tank_51_Gray_Flier_Spawner_Main</code></details> | 0 / 2 |
| <details><summary>✅ Gray Hopper; 10HP</summary>✅ <code>ObjHandler_Tank_7A_Gray_Hopper_10HP_Init</code><br/>✅ <code>ObjHandler_Tank_7B_Gray_Hopper_10HP_Patrolling</code></details> | 2 / 2 |
| <details><summary>✅ Gray Hopper; 6HP</summary>✅ <code>ObjHandler_Tank_5F_Gray_Hopper_6HP_Init</code><br/>✅ <code>ObjHandler_Tank_60_Gray_Hopper_6HP_Attacking</code><br/>✅ <code>ObjHandler_Tank_61_GrayHopper6HP_Patrolling</code></details> | 3 / 3 |
| <details><summary>⬜ Hulk</summary>⬜ <code>ObjHandler_Tank_5D_Hulk_Init</code><br/>⬜ <code>ObjHandler_Tank_5E_Hulk_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Jellyfish</summary>⬜ <code>ObjHandler_Tank_80_Jellyfish_Init</code><br/>⬜ <code>ObjHandler_Tank_81_Jellyfish_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Mine</summary>⬜ <code>ObjHandler_Tank_64_Mine_Init</code><br/>⬜ <code>ObjHandler_Tank_65_Mine_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Pick-up</summary>⬜ <code>ObjHandler_Common_35_PickUp_Active</code></details> | 0 / 1 |
| <details><summary>⬜ Pick-up: Gun; x4</summary>⬜ <code>ObjHandler_Tank_31_Pickup_Gun_x4_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Pick-up: Homing Missile; x20</summary>⬜ <code>ObjHandler_Tank_32_Homing_Missiles_ammo</code></details> | 0 / 1 |
| <details><summary>⬜ Pick-up: Hover; x4</summary>⬜ <code>ObjHandler_Tank_2F_Pick_up_Hover_x4_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Pick-up: Pow; x4</summary>⬜ <code>ObjHandler_Tank_2D_Pick_up_Pow_x4_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Projectile: Medium Red; Various</summary>⬜ <code>ObjHandler_Tank_48_Various_Init</code><br/>⬜ <code>ObjHandler_Tank_49_Various_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Projectile: Small Red</summary>⬜ <code>ObjHandler_Tank_3C_Small_Red_Init</code><br/>⬜ <code>ObjHandler_Tank_3D_Small_Red_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Shooter</summary>⬜ <code>ObjHandler_Tank_76_Shooter_Init</code><br/>⬜ <code>ObjHandler_Tank_77_Shooter_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Turret</summary>⬜ <code>ObjHandler_Tank_66_Turret_Init</code><br/>⬜ <code>ObjHandler_Tank_67_Turret_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Wall Guardian</summary>⬜ <code>ObjHandler_Tank_90_Wall_Guardian_Init</code><br/>⬜ <code>ObjHandler_Tank_91_Wall_Guardian_Main</code></details> | 0 / 2 |
</details>

<details >
<summary><b><code>Overhead:</code> ⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛ 0.0% </b></summary>

| Entity Variant | Handlers |
|---|---|
| <details><summary>⬜ Boss Room</summary>⬜ <code>ObjHandler_Ovhd_5A_Boss_Room_Delay</code><br/>⬜ <code>ObjHandler_Ovhd_5B_Boss_Room_Palette_Animation</code></details> | 0 / 2 |
| <details><summary>⬜ Camera; Horizontal</summary>⬜ <code>ObjHandler_Ovhd_3D_Horizontal_Camera_Init</code><br/>⬜ <code>ObjHandler_Ovhd_3E_Horizontal_Camera_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Camera; Vertical</summary>⬜ <code>ObjHandler_Ovhd_3B_Vertical_Camera_Init</code><br/>⬜ <code>ObjHandler_Ovhd_3C_Vertical_Camera_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Flier</summary>⬜ <code>ObjHandler_Ovhd_34_Flier_Main</code></details> | 0 / 1 |
| <details><summary>⬜ Flier Spawner</summary>⬜ <code>ObjHandler_Ovhd_32_Flier_Spawner_Init</code><br/>⬜ <code>ObjHandler_Ovhd_33_Flier_Spawner_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Gumdrop; Gray</summary>⬜ <code>ObjHandler_Ovhd_30_Gray_Gumdrop_Init</code><br/>⬜ <code>ObjHandler_Ovhd_31_Gray_Gumdrop_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Pick-up</summary>⬜ <code>ObjHandler_Ovhd_1A_Pick_up_Pow_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1B_Pick_up_Pow_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1C_Pick_up_Gun_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1D_Pick_up_Gun_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1E_Pick_up_Hover_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1F_Pick_up_Hover_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_20_Pick_up_Homing_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_21_Pick_up_Lightning_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_22_Pick_up_Warheads_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_23_Pickup_Main</code></details> | 0 / 10 |
| <details><summary>⬜ Spinner</summary>⬜ <code>ObjHandler_Ovhd_37_Spinner_Init</code><br/>⬜ <code>ObjHandler_Ovhd_38_Spinner_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Spitter</summary>⬜ <code>ObjHandler_Ovhd_41_Spitter_Init</code><br/>⬜ <code>ObjHandler_Ovhd_42_Spitter_Main</code><br/>⬜ <code>ObjHandler_Ovhd_43_Spitter_Attacking</code></details> | 0 / 3 |
| <details><summary>⬜ Zombie Head</summary>⬜ <code>ObjHandler_Ovhd_44_Zombie_Head_Init</code><br/>⬜ <code>ObjHandler_Ovhd_45_Zombie_Head_Main</code></details> | 0 / 2 |
</details>

### Area 2

<details open>
<summary><b><code>&nbsp;&nbsp;&nbsp;&nbsp;Tank:</code> ⬜⬜⬜◽⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛ 18.4% </b></summary>

| Entity Variant | Handlers |
|---|---|
| <details><summary>⬜ Ballistic: Big; Gray</summary>⬜ <code>ObjHandler_Tank_38_Big_Gray_Init</code><br/>⬜ <code>ObjHandler_Tank_39_Big_Gray_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Ballistic: Medium Red; Mine Shrapnel</summary>⬜ <code>ObjHandler_Tank_44_Mine_Shrapnel_Init</code><br/>⬜ <code>ObjHandler_Tank_45_Mine_Shrapnel_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Bee</summary>⬜ <code>ObjHandler_Tank_70_Bee_Init</code><br/>⬜ <code>ObjHandler_Tank_71_Bee_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Bullet; Gray</summary>⬜ <code>ObjHandler_Tank_59_Gray_Bullet_Main</code><br/>⬜ <code>ObjHandler_Tank_5A_Gray_Bullet_Attacking</code></details> | 0 / 2 |
| <details><summary>⬜ Bullet; Gray A</summary>⬜ <code>ObjHandler_Tank_56_Gray_Bullet_A_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Bullet; Gray B</summary>⬜ <code>ObjHandler_Tank_58_Gray_Bullet_B_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Caterpillar; Gray</summary>⬜ <code>ObjHandler_Tank_54_Gray_Caterpillar_Init</code><br/>⬜ <code>ObjHandler_Tank_55_Gray_Caterpillar_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Caterpillar; Red</summary>⬜ <code>ObjHandler_Tank_62_Red_Caterpillar</code><br/>⬜ <code>ObjHandler_Tank_63_Red_Caterpillar_Main</code></details> | 0 / 2 |
| <details><summary>✅ Flying Bomber</summary>✅ <code>ObjHandler_Tank_6C_Flying_Bomber_Init</code><br/>✅ <code>ObjHandler_Tank_6D_Flying_Bomber_Main</code></details> | 2 / 2 |
| <details><summary>⬜ Flying Ship</summary>⬜ <code>ObjHandler_Tank_6A_Flying_Ship_Init</code><br/>⬜ <code>ObjHandler_Tank_6B_Flying_Ship_Main</code></details> | 0 / 2 |
| <details><summary>✅ Gray Hopper; 10HP</summary>✅ <code>ObjHandler_Tank_7A_Gray_Hopper_10HP_Init</code><br/>✅ <code>ObjHandler_Tank_7B_Gray_Hopper_10HP_Patrolling</code></details> | 2 / 2 |
| <details><summary>✅ Gray Hopper; 6HP</summary>✅ <code>ObjHandler_Tank_5F_Gray_Hopper_6HP_Init</code><br/>✅ <code>ObjHandler_Tank_60_Gray_Hopper_6HP_Attacking</code><br/>✅ <code>ObjHandler_Tank_61_GrayHopper6HP_Patrolling</code></details> | 3 / 3 |
| <details><summary>⬜ Mine</summary>⬜ <code>ObjHandler_Tank_64_Mine_Init</code><br/>⬜ <code>ObjHandler_Tank_65_Mine_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Orb</summary>⬜ <code>ObjHandler_Tank_72_Orb_Init</code><br/>⬜ <code>ObjHandler_Tank_73_Orb_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Orb; Kamikaze</summary>⬜ <code>ObjHandler_Tank_78_Kamikaze_Orb_Init</code><br/>⬜ <code>ObjHandler_Tank_79_Kamikaze_Orb_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Pick-up</summary>⬜ <code>ObjHandler_Common_35_PickUp_Active</code></details> | 0 / 1 |
| <details><summary>⬜ Pick-up: Homing Missile; x20</summary>⬜ <code>ObjHandler_Tank_32_Homing_Missiles_ammo</code></details> | 0 / 1 |
| <details><summary>⬜ Pick-up: Lightning; x20</summary>⬜ <code>ObjHandler_Tank_33_Pick_up_Lightning_x20_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Pick-up: Multi-Warhead; x20</summary>⬜ <code>ObjHandler_Tank_34_Pickup_Warheads_x20_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Pick-up: Pow; x4</summary>⬜ <code>ObjHandler_Tank_2D_Pick_up_Pow_x4_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Projectile: Small Red</summary>⬜ <code>ObjHandler_Tank_3C_Small_Red_Init</code><br/>⬜ <code>ObjHandler_Tank_3D_Small_Red_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Shooter</summary>⬜ <code>ObjHandler_Tank_76_Shooter_Init</code><br/>⬜ <code>ObjHandler_Tank_77_Shooter_Main</code></details> | 0 / 2 |
</details>

<details >
<summary><b><code>Overhead:</code> ⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛ 0.0% </b></summary>

| Entity Variant | Handlers |
|---|---|
| <details><summary>⬜ Boss Room</summary>⬜ <code>ObjHandler_Ovhd_5A_Boss_Room_Delay</code><br/>⬜ <code>ObjHandler_Ovhd_5B_Boss_Room_Palette_Animation</code></details> | 0 / 2 |
| <details><summary>⬜ Cross Shooter</summary>⬜ <code>ObjHandler_Ovhd_39_Cross_Shooter_Init</code><br/>⬜ <code>ObjHandler_Ovhd_3A_Cross_Shooter_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Eye</summary>⬜ <code>ObjHandler_Ovhd_26_Eye_Init</code><br/>⬜ <code>ObjHandler_Ovhd_27_Eye_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Eye Spawner</summary>⬜ <code>ObjHandler_Ovhd_2B_Eye_Spawner_Init_1</code><br/>⬜ <code>ObjHandler_Ovhd_2C_Eye_Spawner_Init_2</code><br/>⬜ <code>ObjHandler_Ovhd_2D_Eye_Spawner_Main</code></details> | 0 / 3 |
| <details><summary>⬜ Pick-up</summary>⬜ <code>ObjHandler_Ovhd_1A_Pick_up_Pow_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1B_Pick_up_Pow_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1C_Pick_up_Gun_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1D_Pick_up_Gun_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1E_Pick_up_Hover_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1F_Pick_up_Hover_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_20_Pick_up_Homing_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_21_Pick_up_Lightning_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_22_Pick_up_Warheads_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_23_Pickup_Main</code></details> | 0 / 10 |
| <details><summary>⬜ Robed Skeleton</summary>⬜ <code>ObjHandler_Ovhd_28_Robed_Skeleton_Init</code><br/>⬜ <code>ObjHandler_Ovhd_29_Robed_Skeleton_Main</code><br/>⬜ <code>ObjHandler_Ovhd_2A_Robed_Skeleton_Teleport</code></details> | 0 / 3 |
</details>

### Area 3

<details >
<summary><b><code>&nbsp;&nbsp;&nbsp;&nbsp;Tank:</code> ⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛ 0.0% </b></summary>

| Entity Variant | Handlers |
|---|---|
| <details><summary>⬜ Ballistic: Big; Gray</summary>⬜ <code>ObjHandler_Tank_38_Big_Gray_Init</code><br/>⬜ <code>ObjHandler_Tank_39_Big_Gray_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Ballistic: Big; Gray, from Bomb Canister</summary>⬜ <code>ObjHandler_Tank_36_Big_Gray_Bomb_Canister_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Ballistic: Medium Red; Mine Shrapnel</summary>⬜ <code>ObjHandler_Tank_44_Mine_Shrapnel_Init</code><br/>⬜ <code>ObjHandler_Tank_45_Mine_Shrapnel_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Ballistic: Medium Red; Turret Shot</summary>⬜ <code>ObjHandler_Tank_46_Turret_Shot_Init</code><br/>⬜ <code>ObjHandler_Tank_47_Turret_Shot_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Ballistic: Red Caterpillar Shell (From Dropper)</summary>⬜ <code>ObjHandler_Tank_42_Red_Caterpillar_Shell_Init</code><br/>⬜ <code>ObjHandler_Tank_43_Red_Caterpillar_Shell_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Bomb Canister</summary>⬜ <code>ObjHandler_Tank_8A_Bomb_Canister_Init</code><br/>⬜ <code>ObjHandler_Tank_8B_Bomb_Canister_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Caterpillar; Gray</summary>⬜ <code>ObjHandler_Tank_54_Gray_Caterpillar_Init</code><br/>⬜ <code>ObjHandler_Tank_55_Gray_Caterpillar_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Caterpillar; Red</summary>⬜ <code>ObjHandler_Tank_62_Red_Caterpillar</code><br/>⬜ <code>ObjHandler_Tank_63_Red_Caterpillar_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Crescent Roller</summary>⬜ <code>ObjHandler_Tank_88_Crescent_Roller_Init</code><br/>⬜ <code>ObjHandler_Tank_89_Crescent_Roller_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Flier; Gray</summary>⬜ <code>ObjHandler_Tank_7D_Gray_Flier_Main</code></details> | 0 / 1 |
| <details><summary>⬜ Gray Flier Spawner</summary>⬜ <code>ObjHandler_Tank_50_Gray_Flier_Spawner_Init</code><br/>⬜ <code>ObjHandler_Tank_51_Gray_Flier_Spawner_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Orb; Kamikaze</summary>⬜ <code>ObjHandler_Tank_78_Kamikaze_Orb_Init</code><br/>⬜ <code>ObjHandler_Tank_79_Kamikaze_Orb_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Red Caterpillar Dropper</summary>⬜ <code>ObjHandler_Tank_5B_Red_Caterpillar_Dropper_Init</code><br/>⬜ <code>ObjHandler_Tank_5C_Red_Caterpillar_Dropper_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Swooping Sphere</summary>⬜ <code>ObjHandler_Tank_6E_Swooping_Sphere_Init</code><br/>⬜ <code>ObjHandler_Tank_6F_Swooping_Sphere_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Turret</summary>⬜ <code>ObjHandler_Tank_66_Turret_Init</code><br/>⬜ <code>ObjHandler_Tank_67_Turret_Main</code></details> | 0 / 2 |
</details>

<details >
<summary><b><code>Overhead:</code> ⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛ 0.0% </b></summary>

| Entity Variant | Handlers |
|---|---|
| <details><summary>⬜ Boss Room</summary>⬜ <code>ObjHandler_Ovhd_5A_Boss_Room_Delay</code><br/>⬜ <code>ObjHandler_Ovhd_5B_Boss_Room_Palette_Animation</code></details> | 0 / 2 |
| <details><summary>⬜ Camera; Horizontal</summary>⬜ <code>ObjHandler_Ovhd_3D_Horizontal_Camera_Init</code><br/>⬜ <code>ObjHandler_Ovhd_3E_Horizontal_Camera_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Camera; Vertical</summary>⬜ <code>ObjHandler_Ovhd_3B_Vertical_Camera_Init</code><br/>⬜ <code>ObjHandler_Ovhd_3C_Vertical_Camera_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Gumdrop; Gray</summary>⬜ <code>ObjHandler_Ovhd_30_Gray_Gumdrop_Init</code><br/>⬜ <code>ObjHandler_Ovhd_31_Gray_Gumdrop_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Gumdrop; Red</summary>⬜ <code>ObjHandler_Ovhd_46_Red_Gumdrop_Init</code><br/>⬜ <code>ObjHandler_Ovhd_47_Red_Gumdrop_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Pick-up</summary>⬜ <code>ObjHandler_Ovhd_1A_Pick_up_Pow_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1B_Pick_up_Pow_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1C_Pick_up_Gun_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1D_Pick_up_Gun_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1E_Pick_up_Hover_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1F_Pick_up_Hover_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_20_Pick_up_Homing_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_21_Pick_up_Lightning_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_22_Pick_up_Warheads_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_23_Pickup_Main</code></details> | 0 / 10 |
| <details><summary>⬜ Slider</summary>⬜ <code>ObjHandler_Ovhd_3F_Slider_Init</code><br/>⬜ <code>ObjHandler_Ovhd_40_Slider_Main</code></details> | 0 / 2 |
</details>

### Area 4

<details open>
<summary><b><code>&nbsp;&nbsp;&nbsp;&nbsp;Tank:</code> ⬜▫️⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛ 6.7% </b></summary>

| Entity Variant | Handlers |
|---|---|
| <details><summary>⬜ Area 4 Lock; Left</summary>⬜ <code>ObjHandler_Tank_24_26_28_Auto_Gate_Init</code><br/>⬜ <code>ObjHandler_Tank_27_Area_4_Left_Lock_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Area 4 Lock; Right</summary>⬜ <code>ObjHandler_Tank_24_26_28_Auto_Gate_Init</code><br/>⬜ <code>ObjHandler_Tank_29_Area_4_Right_Lock_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Ballistic: Medium Red; Mine Shrapnel</summary>⬜ <code>ObjHandler_Tank_44_Mine_Shrapnel_Init</code><br/>⬜ <code>ObjHandler_Tank_45_Mine_Shrapnel_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Ballistic: Medium Red; Turret Shot</summary>⬜ <code>ObjHandler_Tank_46_Turret_Shot_Init</code><br/>⬜ <code>ObjHandler_Tank_47_Turret_Shot_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Bullet; Gray</summary>⬜ <code>ObjHandler_Tank_59_Gray_Bullet_Main</code><br/>⬜ <code>ObjHandler_Tank_5A_Gray_Bullet_Attacking</code></details> | 0 / 2 |
| <details><summary>⬜ Bullet; Gray A</summary>⬜ <code>ObjHandler_Tank_56_Gray_Bullet_A_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Bullet; Gray B</summary>⬜ <code>ObjHandler_Tank_58_Gray_Bullet_B_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Flier; Gray</summary>⬜ <code>ObjHandler_Tank_7D_Gray_Flier_Main</code></details> | 0 / 1 |
| <details><summary>⬜ Gray Flier Spawner</summary>⬜ <code>ObjHandler_Tank_50_Gray_Flier_Spawner_Init</code><br/>⬜ <code>ObjHandler_Tank_51_Gray_Flier_Spawner_Main</code></details> | 0 / 2 |
| <details><summary>✅ Gray Hopper; 10HP</summary>✅ <code>ObjHandler_Tank_7A_Gray_Hopper_10HP_Init</code><br/>✅ <code>ObjHandler_Tank_7B_Gray_Hopper_10HP_Patrolling</code></details> | 2 / 2 |
| <details><summary>⬜ Hulk</summary>⬜ <code>ObjHandler_Tank_5D_Hulk_Init</code><br/>⬜ <code>ObjHandler_Tank_5E_Hulk_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Mine</summary>⬜ <code>ObjHandler_Tank_64_Mine_Init</code><br/>⬜ <code>ObjHandler_Tank_65_Mine_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Orb</summary>⬜ <code>ObjHandler_Tank_72_Orb_Init</code><br/>⬜ <code>ObjHandler_Tank_73_Orb_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Projectile: Medium Red; Various</summary>⬜ <code>ObjHandler_Tank_48_Various_Init</code><br/>⬜ <code>ObjHandler_Tank_49_Various_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Projectile: Small Red</summary>⬜ <code>ObjHandler_Tank_3C_Small_Red_Init</code><br/>⬜ <code>ObjHandler_Tank_3D_Small_Red_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Shooter</summary>⬜ <code>ObjHandler_Tank_76_Shooter_Init</code><br/>⬜ <code>ObjHandler_Tank_77_Shooter_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Turret</summary>⬜ <code>ObjHandler_Tank_66_Turret_Init</code><br/>⬜ <code>ObjHandler_Tank_67_Turret_Main</code></details> | 0 / 2 |
</details>

<details >
<summary><b><code>Overhead:</code> ⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛ 0.0% </b></summary>

| Entity Variant | Handlers |
|---|---|
| <details><summary>⬜ Boss Room</summary>⬜ <code>ObjHandler_Ovhd_5A_Boss_Room_Delay</code><br/>⬜ <code>ObjHandler_Ovhd_5B_Boss_Room_Palette_Animation</code></details> | 0 / 2 |
| <details><summary>⬜ Pick-up</summary>⬜ <code>ObjHandler_Ovhd_1A_Pick_up_Pow_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1B_Pick_up_Pow_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1C_Pick_up_Gun_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1D_Pick_up_Gun_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1E_Pick_up_Hover_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1F_Pick_up_Hover_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_20_Pick_up_Homing_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_21_Pick_up_Lightning_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_22_Pick_up_Warheads_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_23_Pickup_Main</code></details> | 0 / 10 |
| <details><summary>⬜ Robot</summary>⬜ <code>ObjHandler_Ovhd_24_Robot_Init</code><br/>⬜ <code>ObjHandler_Ovhd_25_Robot_Main</code></details> | 0 / 2 |
</details>

### Area 5

<details >
<summary><b><code>&nbsp;&nbsp;&nbsp;&nbsp;Tank:</code> ⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛ 0.0% </b></summary>

| Entity Variant | Handlers |
|---|---|
| <details><summary>⬜ Ballistic: Big; Gray</summary>⬜ <code>ObjHandler_Tank_38_Big_Gray_Init</code><br/>⬜ <code>ObjHandler_Tank_39_Big_Gray_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Bomber Rock</summary>⬜ <code>ObjHandler_Tank_68_Bomber_Rock_Init</code><br/>⬜ <code>ObjHandler_Tank_69_Bomber_Rock_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Projectile: Small Red</summary>⬜ <code>ObjHandler_Tank_3C_Small_Red_Init</code><br/>⬜ <code>ObjHandler_Tank_3D_Small_Red_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Running Shell</summary>⬜ <code>ObjHandler_Tank_85_Running_Shell_Init</code><br/>⬜ <code>ObjHandler_Tank_86_Running_Shell_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Scuba Steve</summary>⬜ <code>ObjHandler_Tank_82_Scuba_Steve_Init</code><br/>⬜ <code>ObjHandler_Tank_83_Scuba_Steve_Main</code><br/>⬜ <code>ObjHandler_Tank_84_Scuba_Steve_Dead</code></details> | 0 / 3 |
| <details><summary>⬜ Submersible</summary>⬜ <code>ObjHandler_Tank_87_Submersible_Main</code></details> | 0 / 1 |
| <details><summary>⬜ Submersible Spawner</summary>⬜ <code>ObjHandler_Tank_52_Submersible_Spawner_Init</code><br/>⬜ <code>ObjHandler_Tank_53_Submersible_Spawner_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Swooping Sphere</summary>⬜ <code>ObjHandler_Tank_6E_Swooping_Sphere_Init</code><br/>⬜ <code>ObjHandler_Tank_6F_Swooping_Sphere_Main</code></details> | 0 / 2 |
</details>

<details >
<summary><b><code>Overhead:</code> ⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛ 0.0% </b></summary>

| Entity Variant | Handlers |
|---|---|
| <details><summary>⬜ Boss Room</summary>⬜ <code>ObjHandler_Ovhd_5A_Boss_Room_Delay</code><br/>⬜ <code>ObjHandler_Ovhd_5B_Boss_Room_Palette_Animation</code></details> | 0 / 2 |
| <details><summary>⬜ Camera; Horizontal</summary>⬜ <code>ObjHandler_Ovhd_3D_Horizontal_Camera_Init</code><br/>⬜ <code>ObjHandler_Ovhd_3E_Horizontal_Camera_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Camera; Vertical</summary>⬜ <code>ObjHandler_Ovhd_3B_Vertical_Camera_Init</code><br/>⬜ <code>ObjHandler_Ovhd_3C_Vertical_Camera_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Gumdrop; Red</summary>⬜ <code>ObjHandler_Ovhd_46_Red_Gumdrop_Init</code><br/>⬜ <code>ObjHandler_Ovhd_47_Red_Gumdrop_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Pick-up</summary>⬜ <code>ObjHandler_Ovhd_1A_Pick_up_Pow_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1B_Pick_up_Pow_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1C_Pick_up_Gun_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1D_Pick_up_Gun_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1E_Pick_up_Hover_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1F_Pick_up_Hover_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_20_Pick_up_Homing_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_21_Pick_up_Lightning_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_22_Pick_up_Warheads_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_23_Pickup_Main</code></details> | 0 / 10 |
| <details><summary>⬜ Slider</summary>⬜ <code>ObjHandler_Ovhd_3F_Slider_Init</code><br/>⬜ <code>ObjHandler_Ovhd_40_Slider_Main</code></details> | 0 / 2 |
</details>

### Area 6

<details >
<summary><b><code>&nbsp;&nbsp;&nbsp;&nbsp;Tank:</code> ⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛ 0.0% </b></summary>

| Entity Variant | Handlers |
|---|---|
| <details><summary>⬜ Ballistic: Big; Gray</summary>⬜ <code>ObjHandler_Tank_38_Big_Gray_Init</code><br/>⬜ <code>ObjHandler_Tank_39_Big_Gray_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Ballistic: Big; Gray, from Bomb Canister</summary>⬜ <code>ObjHandler_Tank_36_Big_Gray_Bomb_Canister_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Ballistic: Medium Red; Mine Shrapnel</summary>⬜ <code>ObjHandler_Tank_44_Mine_Shrapnel_Init</code><br/>⬜ <code>ObjHandler_Tank_45_Mine_Shrapnel_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Bee</summary>⬜ <code>ObjHandler_Tank_70_Bee_Init</code><br/>⬜ <code>ObjHandler_Tank_71_Bee_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Bomb Lobbing Hand</summary>⬜ <code>ObjHandler_Tank_7E_Bomb_Lobbing_Hand_Init</code><br/>⬜ <code>ObjHandler_Tank_7F_Bomb_Lobbing_Hand_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Bullet; Gray</summary>⬜ <code>ObjHandler_Tank_59_Gray_Bullet_Main</code><br/>⬜ <code>ObjHandler_Tank_5A_Gray_Bullet_Attacking</code></details> | 0 / 2 |
| <details><summary>⬜ Bullet; Gray A</summary>⬜ <code>ObjHandler_Tank_56_Gray_Bullet_A_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Bullet; Gray B</summary>⬜ <code>ObjHandler_Tank_58_Gray_Bullet_B_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Caterpillar; Gray</summary>⬜ <code>ObjHandler_Tank_54_Gray_Caterpillar_Init</code><br/>⬜ <code>ObjHandler_Tank_55_Gray_Caterpillar_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Flying Ship</summary>⬜ <code>ObjHandler_Tank_6A_Flying_Ship_Init</code><br/>⬜ <code>ObjHandler_Tank_6B_Flying_Ship_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Mine</summary>⬜ <code>ObjHandler_Tank_64_Mine_Init</code><br/>⬜ <code>ObjHandler_Tank_65_Mine_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Pick-up</summary>⬜ <code>ObjHandler_Common_35_PickUp_Active</code></details> | 0 / 1 |
| <details><summary>⬜ Pick-up: Homing Missile; x20</summary>⬜ <code>ObjHandler_Tank_32_Homing_Missiles_ammo</code></details> | 0 / 1 |
| <details><summary>⬜ Pick-up: Lightning; x20</summary>⬜ <code>ObjHandler_Tank_33_Pick_up_Lightning_x20_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Pick-up: Multi-Warhead; x20</summary>⬜ <code>ObjHandler_Tank_34_Pickup_Warheads_x20_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Projectile: Small Red</summary>⬜ <code>ObjHandler_Tank_3C_Small_Red_Init</code><br/>⬜ <code>ObjHandler_Tank_3D_Small_Red_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Shooter</summary>⬜ <code>ObjHandler_Tank_76_Shooter_Init</code><br/>⬜ <code>ObjHandler_Tank_77_Shooter_Main</code></details> | 0 / 2 |
</details>

<details >
<summary><b><code>Overhead:</code> ⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛ 0.0% </b></summary>

| Entity Variant | Handlers |
|---|---|
| <details><summary>⬜ Boss Room</summary>⬜ <code>ObjHandler_Ovhd_5A_Boss_Room_Delay</code><br/>⬜ <code>ObjHandler_Ovhd_5B_Boss_Room_Palette_Animation</code></details> | 0 / 2 |
| <details><summary>⬜ Charging Robot</summary>⬜ <code>ObjHandler_Ovhd_35_Charging_Robot_Init</code><br/>⬜ <code>ObjHandler_Ovhd_36_Charging_Robot_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Cross Shooter</summary>⬜ <code>ObjHandler_Ovhd_39_Cross_Shooter_Init</code><br/>⬜ <code>ObjHandler_Ovhd_3A_Cross_Shooter_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Eye</summary>⬜ <code>ObjHandler_Ovhd_26_Eye_Init</code><br/>⬜ <code>ObjHandler_Ovhd_27_Eye_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Eye Spawner</summary>⬜ <code>ObjHandler_Ovhd_2B_Eye_Spawner_Init_1</code><br/>⬜ <code>ObjHandler_Ovhd_2C_Eye_Spawner_Init_2</code><br/>⬜ <code>ObjHandler_Ovhd_2D_Eye_Spawner_Main</code></details> | 0 / 3 |
| <details><summary>⬜ Pick-up</summary>⬜ <code>ObjHandler_Ovhd_1A_Pick_up_Pow_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1B_Pick_up_Pow_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1C_Pick_up_Gun_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1D_Pick_up_Gun_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1E_Pick_up_Hover_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1F_Pick_up_Hover_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_20_Pick_up_Homing_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_21_Pick_up_Lightning_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_22_Pick_up_Warheads_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_23_Pickup_Main</code></details> | 0 / 10 |
| <details><summary>⬜ Robed Skeleton</summary>⬜ <code>ObjHandler_Ovhd_28_Robed_Skeleton_Init</code><br/>⬜ <code>ObjHandler_Ovhd_29_Robed_Skeleton_Main</code><br/>⬜ <code>ObjHandler_Ovhd_2A_Robed_Skeleton_Teleport</code></details> | 0 / 3 |
</details>

### Area 7

<details open>
<summary><b><code>&nbsp;&nbsp;&nbsp;&nbsp;Tank:</code> ⬜⬜▫️⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛ 10.3% </b></summary>

| Entity Variant | Handlers |
|---|---|
| <details><summary>⬜ Ballistic: Big; Gray</summary>⬜ <code>ObjHandler_Tank_38_Big_Gray_Init</code><br/>⬜ <code>ObjHandler_Tank_39_Big_Gray_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Ballistic: Medium Red; Mine Shrapnel</summary>⬜ <code>ObjHandler_Tank_44_Mine_Shrapnel_Init</code><br/>⬜ <code>ObjHandler_Tank_45_Mine_Shrapnel_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Ballistic: Medium Red; Turret Shot</summary>⬜ <code>ObjHandler_Tank_46_Turret_Shot_Init</code><br/>⬜ <code>ObjHandler_Tank_47_Turret_Shot_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Bullet; Red</summary>⬜ <code>ObjHandler_Tank_8E_Red_Bullet_Main</code><br/>⬜ <code>ObjHandler_Tank_8F_Red_Bullet_Locked</code></details> | 0 / 2 |
| <details><summary>⬜ Bullet; Red A?</summary>⬜ <code>ObjHandler_Tank_8C_Red_Bullet_A_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Bullet; Red B?</summary>⬜ <code>ObjHandler_Tank_8D_Red_Bullet_B_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Flier; Red</summary>⬜ <code>ObjHandler_Tank_7C_Red_Flier</code></details> | 0 / 1 |
| <details><summary>✅ Flying Bomber</summary>✅ <code>ObjHandler_Tank_6C_Flying_Bomber_Init</code><br/>✅ <code>ObjHandler_Tank_6D_Flying_Bomber_Main</code></details> | 2 / 2 |
| <details><summary>✅ Gray Hopper; 10HP</summary>✅ <code>ObjHandler_Tank_7A_Gray_Hopper_10HP_Init</code><br/>✅ <code>ObjHandler_Tank_7B_Gray_Hopper_10HP_Patrolling</code></details> | 2 / 2 |
| <details><summary>⬜ Hulk</summary>⬜ <code>ObjHandler_Tank_5D_Hulk_Init</code><br/>⬜ <code>ObjHandler_Tank_5E_Hulk_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Mine</summary>⬜ <code>ObjHandler_Tank_64_Mine_Init</code><br/>⬜ <code>ObjHandler_Tank_65_Mine_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Orb</summary>⬜ <code>ObjHandler_Tank_72_Orb_Init</code><br/>⬜ <code>ObjHandler_Tank_73_Orb_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Pick-up</summary>⬜ <code>ObjHandler_Common_35_PickUp_Active</code></details> | 0 / 1 |
| <details><summary>⬜ Pick-up: Gun; x1</summary>⬜ <code>ObjHandler_Tank_30_Gun_gun_x1</code></details> | 0 / 1 |
| <details><summary>⬜ Pick-up: Gun; x4</summary>⬜ <code>ObjHandler_Tank_31_Pickup_Gun_x4_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Pick-up: Homing Missile; x20</summary>⬜ <code>ObjHandler_Tank_32_Homing_Missiles_ammo</code></details> | 0 / 1 |
| <details><summary>⬜ Pick-up: Lightning; x20</summary>⬜ <code>ObjHandler_Tank_33_Pick_up_Lightning_x20_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Pick-up: Multi-Warhead; x20</summary>⬜ <code>ObjHandler_Tank_34_Pickup_Warheads_x20_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Pick-up: Pow; x4</summary>⬜ <code>ObjHandler_Tank_2D_Pick_up_Pow_x4_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Pick-up; Pow x1</summary>⬜ <code>ObjHandler_Tank_2C_Pick_up_Pow_x1_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Projectile: Medium Red; Various</summary>⬜ <code>ObjHandler_Tank_48_Various_Init</code><br/>⬜ <code>ObjHandler_Tank_49_Various_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Projectile: Small Red</summary>⬜ <code>ObjHandler_Tank_3C_Small_Red_Init</code><br/>⬜ <code>ObjHandler_Tank_3D_Small_Red_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Red Flier Spawner</summary>⬜ <code>ObjHandler_Tank_4E_Red_Flier_Spawner_Init</code><br/>⬜ <code>ObjHandler_Tank_4F_Red_Flier_Spawner_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Shooter</summary>⬜ <code>ObjHandler_Tank_76_Shooter_Init</code><br/>⬜ <code>ObjHandler_Tank_77_Shooter_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Turret</summary>⬜ <code>ObjHandler_Tank_66_Turret_Init</code><br/>⬜ <code>ObjHandler_Tank_67_Turret_Main</code></details> | 0 / 2 |
</details>

<details >
<summary><b><code>Overhead:</code> ⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛ 0.0% </b></summary>

| Entity Variant | Handlers |
|---|---|
| <details><summary>⬜ Boss Room</summary>⬜ <code>ObjHandler_Ovhd_5A_Boss_Room_Delay</code><br/>⬜ <code>ObjHandler_Ovhd_5B_Boss_Room_Palette_Animation</code></details> | 0 / 2 |
| <details><summary>⬜ Pick-up</summary>⬜ <code>ObjHandler_Ovhd_1A_Pick_up_Pow_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1B_Pick_up_Pow_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1C_Pick_up_Gun_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1D_Pick_up_Gun_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1E_Pick_up_Hover_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1F_Pick_up_Hover_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_20_Pick_up_Homing_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_21_Pick_up_Lightning_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_22_Pick_up_Warheads_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_23_Pickup_Main</code></details> | 0 / 10 |
| <details><summary>⬜ Robot</summary>⬜ <code>ObjHandler_Ovhd_24_Robot_Init</code><br/>⬜ <code>ObjHandler_Ovhd_25_Robot_Main</code></details> | 0 / 2 |
</details>

### Area 8

<details >
<summary><b><code>&nbsp;&nbsp;&nbsp;&nbsp;Tank:</code> ⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛ 0.0% </b></summary>

| Entity Variant | Handlers |
|---|---|
| <details><summary>⬜ Ballistic: Big; Gray</summary>⬜ <code>ObjHandler_Tank_38_Big_Gray_Init</code><br/>⬜ <code>ObjHandler_Tank_39_Big_Gray_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Ballistic: Big; Gray, from Bomb Canister</summary>⬜ <code>ObjHandler_Tank_36_Big_Gray_Bomb_Canister_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Ballistic: Big; Red Caterpillar payload from Flying Bomber</summary>⬜ <code>ObjHandler_Tank_3A_Red_Caterpillar_Bomb_Init</code><br/>⬜ <code>ObjHandler_Tank_3B_Red_Caterpillar_Bomb_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Ballistic: Medium Red; Mine Shrapnel</summary>⬜ <code>ObjHandler_Tank_44_Mine_Shrapnel_Init</code><br/>⬜ <code>ObjHandler_Tank_45_Mine_Shrapnel_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Bee</summary>⬜ <code>ObjHandler_Tank_70_Bee_Init</code><br/>⬜ <code>ObjHandler_Tank_71_Bee_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Bomb Lobbing Hand</summary>⬜ <code>ObjHandler_Tank_7E_Bomb_Lobbing_Hand_Init</code><br/>⬜ <code>ObjHandler_Tank_7F_Bomb_Lobbing_Hand_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Bullet; Gray</summary>⬜ <code>ObjHandler_Tank_59_Gray_Bullet_Main</code><br/>⬜ <code>ObjHandler_Tank_5A_Gray_Bullet_Attacking</code></details> | 0 / 2 |
| <details><summary>⬜ Bullet; Gray A</summary>⬜ <code>ObjHandler_Tank_56_Gray_Bullet_A_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Bullet; Gray B</summary>⬜ <code>ObjHandler_Tank_58_Gray_Bullet_B_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Bullet; Red</summary>⬜ <code>ObjHandler_Tank_8E_Red_Bullet_Main</code><br/>⬜ <code>ObjHandler_Tank_8F_Red_Bullet_Locked</code></details> | 0 / 2 |
| <details><summary>⬜ Bullet; Red A?</summary>⬜ <code>ObjHandler_Tank_8C_Red_Bullet_A_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Bullet; Red B?</summary>⬜ <code>ObjHandler_Tank_8D_Red_Bullet_B_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Caterpillar; Gray</summary>⬜ <code>ObjHandler_Tank_54_Gray_Caterpillar_Init</code><br/>⬜ <code>ObjHandler_Tank_55_Gray_Caterpillar_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Caterpillar; Red</summary>⬜ <code>ObjHandler_Tank_62_Red_Caterpillar</code><br/>⬜ <code>ObjHandler_Tank_63_Red_Caterpillar_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Flying Bomber; Red Caterpillar</summary>⬜ <code>ObjHandler_Tank_74_Flying_Red_Caterpillar_Bomber</code><br/>⬜ <code>ObjHandler_Tank_75_Flying_Red_Caterpillar_Bomber</code></details> | 0 / 2 |
| <details><summary>⬜ Flying Ship</summary>⬜ <code>ObjHandler_Tank_6A_Flying_Ship_Init</code><br/>⬜ <code>ObjHandler_Tank_6B_Flying_Ship_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Mine</summary>⬜ <code>ObjHandler_Tank_64_Mine_Init</code><br/>⬜ <code>ObjHandler_Tank_65_Mine_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Pick-up</summary>⬜ <code>ObjHandler_Common_35_PickUp_Active</code></details> | 0 / 1 |
| <details><summary>⬜ Pick-up: Homing Missile; x20</summary>⬜ <code>ObjHandler_Tank_32_Homing_Missiles_ammo</code></details> | 0 / 1 |
| <details><summary>⬜ Pick-up: Pow; x4</summary>⬜ <code>ObjHandler_Tank_2D_Pick_up_Pow_x4_Init</code></details> | 0 / 1 |
| <details><summary>⬜ Projectile: Small Red</summary>⬜ <code>ObjHandler_Tank_3C_Small_Red_Init</code><br/>⬜ <code>ObjHandler_Tank_3D_Small_Red_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Shooter</summary>⬜ <code>ObjHandler_Tank_76_Shooter_Init</code><br/>⬜ <code>ObjHandler_Tank_77_Shooter_Main</code></details> | 0 / 2 |
</details>

<details >
<summary><b><code>Overhead:</code> ⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛ 0.0% </b></summary>

| Entity Variant | Handlers |
|---|---|
| <details><summary>⬜ Boss Room</summary>⬜ <code>ObjHandler_Ovhd_5A_Boss_Room_Delay</code><br/>⬜ <code>ObjHandler_Ovhd_5B_Boss_Room_Palette_Animation</code></details> | 0 / 2 |
| <details><summary>⬜ Camera; Horizontal</summary>⬜ <code>ObjHandler_Ovhd_3D_Horizontal_Camera_Init</code><br/>⬜ <code>ObjHandler_Ovhd_3E_Horizontal_Camera_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Camera; Rotating</summary>⬜ <code>ObjHandler_Ovhd_2E_Rotating_Camera_Init</code><br/>⬜ <code>ObjHandler_Ovhd_2F_Rotating_Camera_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Camera; Vertical</summary>⬜ <code>ObjHandler_Ovhd_3B_Vertical_Camera_Init</code><br/>⬜ <code>ObjHandler_Ovhd_3C_Vertical_Camera_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Flier</summary>⬜ <code>ObjHandler_Ovhd_34_Flier_Main</code></details> | 0 / 1 |
| <details><summary>⬜ Flier Spawner</summary>⬜ <code>ObjHandler_Ovhd_32_Flier_Spawner_Init</code><br/>⬜ <code>ObjHandler_Ovhd_33_Flier_Spawner_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Gumdrop; Red</summary>⬜ <code>ObjHandler_Ovhd_46_Red_Gumdrop_Init</code><br/>⬜ <code>ObjHandler_Ovhd_47_Red_Gumdrop_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Pick-up</summary>⬜ <code>ObjHandler_Ovhd_1A_Pick_up_Pow_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1B_Pick_up_Pow_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1C_Pick_up_Gun_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1D_Pick_up_Gun_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1E_Pick_up_Hover_x1_Init</code><br/>⬜ <code>ObjHandler_Ovhd_1F_Pick_up_Hover_x4_Init</code><br/>⬜ <code>ObjHandler_Ovhd_20_Pick_up_Homing_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_21_Pick_up_Lightning_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_22_Pick_up_Warheads_x20_Init</code><br/>⬜ <code>ObjHandler_Ovhd_23_Pickup_Main</code></details> | 0 / 10 |
| <details><summary>⬜ Spinner</summary>⬜ <code>ObjHandler_Ovhd_37_Spinner_Init</code><br/>⬜ <code>ObjHandler_Ovhd_38_Spinner_Main</code></details> | 0 / 2 |
| <details><summary>⬜ Spitter</summary>⬜ <code>ObjHandler_Ovhd_41_Spitter_Init</code><br/>⬜ <code>ObjHandler_Ovhd_42_Spitter_Main</code><br/>⬜ <code>ObjHandler_Ovhd_43_Spitter_Attacking</code></details> | 0 / 3 |
| <details><summary>⬜ Zombie Head</summary>⬜ <code>ObjHandler_Ovhd_44_Zombie_Head_Init</code><br/>⬜ <code>ObjHandler_Ovhd_45_Zombie_Head_Main</code></details> | 0 / 2 |
</details>

### Progress by group

A finer-grained view of M4 above, broken down by the same organizational grouping the disassembly's own bank-splitting uses (e.g. bank 06's `object-handlers/hopper_6hp`). `Progress` counts both top-level subroutines and their interior sublabels, which M4 does not — a sublabel has no verification status of its own, so it inherits its enclosing subroutine's. A note on a row flags a verified routine that directly calls a still-unverified subroutine — a caveat on `Progress`, not a deduction from it (a routine's own logic was reviewed; part of its behaviour still depends on code nobody has confirmed yet).

| Progress | Bank / Group | Notes |
|:-:|------|---|
| ✅✅✅✅ | 06 / `object-handlers/flying-bomber` | `ObjHandler_Tank_6D_Flying_Bomber_Main` depends on unverified routines `Obj_MoveAndCollide` and `Obj_ReflectHeading`. |
| ✅✅✅✅ | 06 / `object-handlers/hopper_10hp` |  |
| ✅✅✅✅ | 06 / `object-handlers/hopper_6hp` |  |
| ✅✅✅✅ | 07 / `rng` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 04 / `_ungrouped` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 05 / `(ungrouped — no .groups file)` |  |
| ⬜◽⬛⬛<br/>`44.4%` | 06 / `object-handlers/_common` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `_ungrouped` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `dead` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/_ungrouped` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/auto-gates_and_locks` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/bee` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/bomb-canister` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/bomb-lobbing-hand` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/bomber-rock` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/bullet_common` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/bullet_gray` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/bullet_red` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/caterpillar_gray` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/caterpillar_red` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/crescent-roller` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/dropper_caterpillar_red` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/explosions` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/flier_gray` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/flier_red` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/flying-bomber_caterpillar_red` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/flying-ship` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/hulk` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/jason-small` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/jellyfish` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/mine` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/orb` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/orb_kamikaze` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/pickups` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/projectiles` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/running-shell` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/scuba-steve` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/shooter` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/sophia` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/submersible` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/swooping-sphere` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/turret` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/wall-guardian` |  |
| ⬜⬜▫️⬛<br/>`57.1%` | 07 / `screen-fade` |  |
| ⬜⬜▫️⬛<br/>`52.5%` | 07 / `05_game-screen/object-system` | `Obj_MoveBounce` depends on unverified routine `Obj_MoveAndCollide`. |
| ⬜⬜⬛⬛<br/>`50.0%` | 07 / `sound` |  |
| ⬜◽⬛⬛<br/>`37.5%` | 07 / `mmc1` | `BankSave_Switch` depends on unverified routine `Nmi_DoWork`. |
| ⬜▫️⬛⬛<br/>`33.3%` | 07 / `timing` | `NMI` depends on unverified routine `Nmi_DoWork`. |
| ⬜▫️⬛⬛<br/>`30.2%` | 07 / `math` |  |
| ▫️⬛⬛⬛<br/>`7.4%` | 07 / `drawing-metasprites` | `MetaSprite_Render` depends on unverified routine `MetaSprite_RenderNoBank`. |
| ▫️⬛⬛⬛<br/>`5.8%` | 07 / `hardware` |  |
| ▫️⬛⬛⬛<br/>`5.1%` | 07 / `_ungrouped` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `00_title-screen` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `01a_story-sequence` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `01b_demo-screen` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `02_init` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `03_intro-screen` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `04a_lives-left-screen` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `04b_area-entry-screen` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `05_game-screen/camera` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `05_game-screen/game-loop` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `05_game-screen/hud` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `06_pause-screen` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `bank-tail` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `camera` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `continue-screen` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `dead` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `drawing-background` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `drawing-sprites` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `ending` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `input` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `level-rendering` |  |

This export publishes **5** pages, of which **4** are alpha — reviewed and published for early access, but not yet fully verified. Alpha pages carry a warning banner and are marked ⚠️ below.

_Generated: 2026-08-19 15:03 UTC_

## Pages

### Entities — Tank

- [Flying Bomber](wiki/docs/us/entities/tank/6c-6d_flying-bomber.md)
- [Shooter](wiki/docs/us/entities/tank/76-77_shooter.md) — ⚠️ alpha

### Misc

- [Cut content](wiki/docs/us/misc/cut-content.md) — ⚠️ alpha
- [Pause Screen — Dead Ability Overlay Tiles](wiki/docs/us/misc/pause-screen-dead-overlays.md) — ⚠️ alpha
- [Pseudo-Random Number Generator (RNG)](wiki/docs/us/misc/rng.md) — ⚠️ alpha

