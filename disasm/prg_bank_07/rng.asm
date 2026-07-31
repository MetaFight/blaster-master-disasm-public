.macro MAC_L_EB71
; ----------------------------------------------------------------------------
; Steps the pseudo-random number generator state RNG_State ($13) by one 8-bit LCG step and returns
; the new byte in A.
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

