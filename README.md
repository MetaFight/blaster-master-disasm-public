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
| **M4** — Verified subroutines (public, clean) | 26 / 849 (3%) |
| **M6** — Verified docs (public, clean) | 2 / 119 (2%) |

- **M4** counts named subroutines in the disassembly whose label carries the `[verified]` tag, against every named subroutine in the ROM's code banks. Verification is a human step: no tool sets the tag.
- **M6** counts knowledge-base pages (`docs/entities/`, `docs/execution-flow/`, `docs/misc/`) marked `verified`, against every page in those trees — published or not.

### Progress by group

A finer-grained view of M4 above, broken down by the same organizational grouping the disassembly's own bank-splitting uses (e.g. bank 06's `object-handlers/hopper_6hp`). `Progress` counts both top-level subroutines and their interior sublabels, which M4 does not — a sublabel has no verification status of its own, so it inherits its enclosing subroutine's. A note on a row flags a verified routine that directly calls a still-unverified subroutine — a caveat on `Progress`, not a deduction from it (a routine's own logic was reviewed; part of its behaviour still depends on code nobody has confirmed yet).

| Progress | Bank / Group | Notes |
|:-:|------|---|
| ⬛⬛⬛⬛<br/>`0.0%` | 04 / `_ungrouped` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 05 / `(ungrouped — no .groups file)` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `_ungrouped` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `dead` |  |
| ◽⬛⬛⬛<br/>`12.5%` | 06 / `object-handlers/_common` |  |
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
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/flying-bomber` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/flying-bomber_caterpillar_red` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/flying-ship` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/hopper_10hp` |  |
| ⬜⬜⬜◽<br/>`94.1%` | 06 / `object-handlers/hopper_6hp` | `ObjHandler_Tank_60_Gray_Hopper_6HP_Attacking` depends on unverified routines `ScreenPos_Compute`, `Obj_StashTypeSetState02` and 4 more. |
| ⬛⬛⬛⬛<br/>`0.0%` | 06 / `object-handlers/hopper_common` |  |
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
| ⬜▫️⬛⬛<br/>`27.5%` | 07 / `05_game-screen/object-system` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `06_pause-screen` |  |
| ▫️⬛⬛⬛<br/>`6.5%` | 07 / `_ungrouped` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `bank-tail` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `camera` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `continue-screen` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `dead` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `drawing-background` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `drawing-metasprites` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `drawing-sprites` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `ending` |  |
| ▫️⬛⬛⬛<br/>`5.8%` | 07 / `hardware` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `input` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `level-rendering` |  |
| ⬜▫️⬛⬛<br/>`30.2%` | 07 / `math` |  |
| ⬛⬛⬛⬛<br/>`0.0%` | 07 / `mmc1` |  |
| ✅✅✅✅ | 07 / `rng` |  |
| ⬜⬜▫️⬛<br/>`57.1%` | 07 / `screen-fade` |  |
| ⬜⬜⬛⬛<br/>`50.0%` | 07 / `sound` |  |
| ◽⬛⬛⬛<br/>`13.3%` | 07 / `timing` |  |

This export publishes **4** pages, of which **2** are alpha — reviewed and published for early access, but not yet fully verified. Alpha pages carry a warning banner and are marked ⚠️ below.

_Generated: 2026-08-02 11:44 UTC_

## Pages

### Entities — Tank

- [Shooter](wiki/docs/entities/tank/76-77_shooter.md) — ⚠️ alpha

### Misc

- [Cut content](wiki/docs/misc/cut-content.md)
- [Pause Screen — Dead Ability Overlay Tiles](wiki/docs/misc/pause-screen-dead-overlays.md)
- [Pseudo-Random Number Generator (RNG)](wiki/docs/misc/rng.md) — ⚠️ alpha

