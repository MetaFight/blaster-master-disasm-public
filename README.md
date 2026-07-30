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
| **M4** — Verified subroutines (public, clean) | 17 / 849 (2%) |
| **M6** — Verified docs (public, clean) | 2 / 119 (2%) |

- **M4** counts named subroutines in the disassembly whose label carries the `[verified]` tag, against every named subroutine in the ROM's code banks. Verification is a human step: no tool sets the tag.
- **M6** counts knowledge-base pages (`docs/entities/`, `docs/execution-flow/`, `docs/misc/`) marked `verified`, against every page in those trees — published or not.

### Progress by group

A finer-grained view of M4 above, broken down by the same organizational grouping the disassembly's own bank-splitting uses (e.g. bank 06's `object-handlers/hopper_6hp`). `Progress` counts both top-level subroutines and their interior sublabels, which M4 does not — a sublabel has no verification status of its own, so it inherits its enclosing subroutine's. A note on a row flags a verified routine that directly calls a still-unverified subroutine — a caveat on `Progress`, not a deduction from it (a routine's own logic was reviewed; part of its behaviour still depends on code nobody has confirmed yet).

| Progress | Group | Notes |
|:--|------|---|
| 00.0%&nbsp;⬛⬛⬛⬛ | `04/_ungrouped` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `05/(ungrouped — no .groups file)` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/_ungrouped` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/dead` |  |
| 12.5%&nbsp;◽⬛⬛⬛ | `06/object-handlers/_common` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/_ungrouped` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/auto-gates_and_locks` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/bee` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/bomb-canister` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/bomb-lobbing-hand` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/bomber-rock` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/bullet_common` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/bullet_gray` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/bullet_red` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/caterpillar_gray` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/caterpillar_red` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/crescent-roller` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/dropper_caterpillar_red` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/explosions` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/flier_gray` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/flier_red` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/flying-bomber` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/flying-bomber_caterpillar_red` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/flying-ship` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/hopper_10hp` |  |
| 94.1%&nbsp;⬜⬜⬜◽ | `06/object-handlers/hopper_6hp` | ObjHandler_Tank_60_Gray_Hopper_6HP_Attacking depends on 9 unverified routines. |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/hopper_common` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/hulk` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/jason-small` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/jellyfish` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/mine` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/orb` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/orb_kamikaze` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/pickups` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/projectiles` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/running-shell` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/scuba-steve` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/shooter` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/sophia` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/submersible` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/swooping-sphere` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/turret` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `06/object-handlers/wall-guardian` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/00_title-screen` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/01a_story-sequence` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/01b_demo-screen` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/02_init` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/03_intro-screen` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/04a_lives-left-screen` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/04b_area-entry-screen` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/05_game-screen/camera` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/05_game-screen/game-loop` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/05_game-screen/hud` |  |
| 13.5%&nbsp;◽⬛⬛⬛ | `07/05_game-screen/object-system` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/06_pause-screen` |  |
| 07.3%&nbsp;▫️⬛⬛⬛ | `07/_ungrouped` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/bank-tail` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/camera` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/continue-screen` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/dead` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/drawing-background` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/drawing-metasprites` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/drawing-sprites` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/ending` |  |
| 05.8%&nbsp;▫️⬛⬛⬛ | `07/hardware` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/input` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/level-rendering` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/math` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/mmc1` |  |
| 00.0%&nbsp;⬛⬛⬛⬛ | `07/rng` |  |
| 57.1%&nbsp;⬜⬜▫️⬛ | `07/screen-fade` |  |
| 50.0%&nbsp;⬜⬜⬛⬛ | `07/sound` |  |
| 13.3%&nbsp;◽⬛⬛⬛ | `07/timing` |  |

This export publishes **4** pages, of which **2** are alpha — reviewed and published for early access, but not yet fully verified. Alpha pages carry a warning banner and are marked ⚠️ below.

_Generated: 2026-07-30 11:16 UTC_

## Pages

### Entities — Tank

- [Shooter](wiki/docs/entities/tank/76-77_shooter.md) — ⚠️ alpha

### Misc

- [Cut content](wiki/docs/misc/cut-content.md)
- [Pause Screen — Dead Ability Overlay Tiles](wiki/docs/misc/pause-screen-dead-overlays.md)
- [Pseudo-Random Number Generator (RNG)](wiki/docs/misc/rng.md) — ⚠️ alpha

