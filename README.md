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
| **M4** — Verified subroutines (public, clean) | 16 / 848 (2%) |
| **M6** — Verified docs (public, clean) | 2 / 119 (2%) |

- **M4** counts named subroutines in the disassembly whose label carries the `[verified]` tag, against every named subroutine in the ROM's code banks. Verification is a human step: no tool sets the tag.
- **M6** counts knowledge-base pages (`docs/entities/`, `docs/execution-flow/`, `docs/misc/`) marked `verified`, against every page in those trees — published or not.

This export publishes **4** pages, of which **2** are alpha — reviewed and published for early access, but not yet fully verified. Alpha pages carry a warning banner and are marked ⚠️ below.

_Generated: 2026-07-28 23:14 UTC_

## Pages

### Entities — Tank

- [Shooter](wiki/docs/entities/tank/76-77_shooter.md) — ⚠️ alpha

### Misc

- [Cut content](wiki/docs/misc/cut-content.md)
- [Pause Screen — Dead Ability Overlay Tiles](wiki/docs/misc/pause-screen-dead-overlays.md)
- [Pseudo-Random Number Generator (RNG)](wiki/docs/misc/rng.md) — ⚠️ alpha

