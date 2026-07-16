.macro MAC_L_EB71
; ----------------------------------------------------------------------------
L_EB71: lda     $13                             ; EB71
        asl     a                               ; EB73
        asl     a                               ; EB74
        clc                                     ; EB75
        adc     $13                             ; EB76
        sec                                     ; EB78
        sbc     #$01                            ; EB79
        sta     $13                             ; EB7B
        rts                                     ; EB7D

.endmacro

