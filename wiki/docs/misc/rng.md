# Pseudo-Random Number Generator (RNG)

> ⚠️ **Alpha — not fully verified.** This page is published for early access. It has
> either not yet completed human verification, or was verified and has since been
> modified and is awaiting re-verification. It may still contain errors.


Blaster Master's randomness comes from a single one-byte state, **`$13`** (RAM label
`RNG_State`).

## Algorithm

The state is advanced by **`Step_RNG` (`$EB71`, fixed bank 07)**, an 8-bit linear
congruential generator (LCG):

```
Step_RNG:            ; $EB71
    LDA $13
    ASL A                  ; ×2
    ASL A                  ; ×4
    CLC
    ADC $13                ; ×5
    SEC
    SBC #$01               ; ×5 − 1
    STA $13
    RTS
```

i.e. **`$13 := (5 · $13 − 1) mod 256`**, returning the new byte in `A`.

- **Seed:** `LevelInit` (`$C30A`) stores `#$00 → $13`, so the sequence restarts at each
  area load. From `$00` the first outputs are `$FF, $FA, $E1, …`.
- **State persists** across the whole area and only advances when a caller steps it, so the
  stream is deterministic given call timing (the usual NES-RNG property).

## The getter — `DispatchSlot_91_Step_RNG` (`$C1B3`)

Fixed-bank dispatch slot `$91` is simply `JMP Step_RNG`. Almost all gameplay callers
reach the RNG through it (`JSR $C1B3`), which the entity docs write as "`$C1B3` RNG" /
"`LC1B3`". It returns the next pseudo-random byte in `A`.

Consumers typically read:
- the **low bits** (`AND #$0F`, `AND #$03`, `AND #$70`, …) for a random **magnitude**, and
- **bit 7** (via `BIT $13`/`BPL` or `LDA $13`/`BPL`) for a random **± sign / direction**.

## Known consumers

| Consumer | Use |
|---|---|
| `ObjHandler_Ovhd_11` grenade explosion (`$C1B3`) | ±$10 X/Y scatter of blast tiles |
| Boss "Fred" `ObjHandler_Ovhd_5D` (`$97B0`) | bit 7 → random sign of the jump-landing X offset |
| Eye Spawner `ObjHandler_Ovhd_2C` (`$BB27`) | bit 7 → randomly swap `$49`/`$4B` |
| `OvhdBoss_DeathCheck__SpawnBurst` (`$A0E4`) | scatter death-explosion offsets |
| Big Crab `ObjHandler_Ovhd_65` / Boss3 Photophage (`$C1B3`) | random next-state / fire decisions |
| `TankEnemy_SpawnDrop` (`$A350`) / `OvhdEnemy_SpawnDrop` | drop-chance roll: drop when `RNG_State < desc[3]` threshold |

## Secondary use — frame pacing

`StorySequence_FramePaced` (`$E4A6`) steps the same counter and stores the result in `$58`
as a **frame-pacing tick** for story-sequence timing — the byte is reused there as a cheap
changing value rather than as gameplay randomness.

## Scope

Only banks **04** (overhead handlers) and **07** (fixed: seed, step, getter, spawn) touch
`$13` directly.
