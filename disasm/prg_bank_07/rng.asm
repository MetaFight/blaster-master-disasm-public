.macro MAC_L_EB71
; ----------------------------------------------------------------------------
; Steps the pseudo-random number generator state RNG_State ($13) by one 8-bit LCG step and returns
; the new byte in A ($13 := $13×5 − 1). Full period 256, so the returned byte's individual bits
; (AND #imm, or its sign via BMI/BPL) are genuinely close to uniform/50-50. Its CARRY FLAG is not:
; the closing SEC/SBC #$01 only clears carry when $13 was $00 on entry, which happens exactly once
; per 256 calls — so a caller that branches on BCC/BCS right after JSR Step_RNG is not flipping a
; coin, it is gating on a ~1-in-256 event. A caller must use the returned byte, not the carry, to
; get an even chance.
Step_RNG:
        lda     $13                             ; EB71
; Advance the PRNG: $13 = $13×5 − 1 (returns the new $13).
        asl     a                               ; EB73
        asl     a                               ; EB74
        clc                                     ; EB75
        adc     $13                             ; EB76
        sec                                     ; EB78
        sbc     #$01                            ; EB79
        sta     $13                             ; EB7B
        rts                                     ; EB7D

.endmacro

