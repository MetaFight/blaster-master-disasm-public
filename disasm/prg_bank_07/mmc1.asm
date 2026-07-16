.macro MAC_L_E61B
; ----------------------------------------------------------------------------
L_E61B: sta     $DB                             ; E61B
        txa                                     ; E61D
        pha                                     ; E61E
        tya                                     ; E61F
        pha                                     ; E620
        lda     #$40                            ; E621
        sta     $12                             ; E623
        lda     $DB                             ; E625
        jsr     L_E63C                          ; E627
        lda     $12                             ; E62A
        and     #$20                            ; E62C
        beq     L_E633                          ; E62E
        jsr     L_EB98                          ; E630
L_E633: lda     #$00                            ; E633
        sta     $12                             ; E635
        pla                                     ; E637
        tay                                     ; E638
        pla                                     ; E639
        tax                                     ; E63A
        rts                                     ; E63B

; ----------------------------------------------------------------------------
L_E63C: sta     MMC1_PrgBank_FFFF               ; E63C
        lsr     a                               ; E63F
        sta     MMC1_PrgBank_FFFF               ; E640
        lsr     a                               ; E643
        sta     MMC1_PrgBank_FFFF               ; E644
        lsr     a                               ; E647
        sta     MMC1_PrgBank_FFFF               ; E648
        lsr     a                               ; E64B
        sta     MMC1_PrgBank_FFFF               ; E64C
        rts                                     ; E64F

; ----------------------------------------------------------------------------
L_E650: sta     MMC1_ChrBank1_DFFF              ; E650
        lsr     a                               ; E653
        sta     MMC1_ChrBank1_DFFF              ; E654
        lsr     a                               ; E657
        sta     MMC1_ChrBank1_DFFF              ; E658
        lsr     a                               ; E65B
        sta     MMC1_ChrBank1_DFFF              ; E65C
        lsr     a                               ; E65F
        sta     MMC1_ChrBank1_DFFF              ; E660
        rts                                     ; E663

; ----------------------------------------------------------------------------
L_E664: sta     MMC1_ChrBank0_BFFF              ; E664
        lsr     a                               ; E667
        sta     MMC1_ChrBank0_BFFF              ; E668
        lsr     a                               ; E66B
        sta     MMC1_ChrBank0_BFFF              ; E66C
        lsr     a                               ; E66F
        sta     MMC1_ChrBank0_BFFF              ; E670
        lsr     a                               ; E673
        sta     MMC1_ChrBank0_BFFF              ; E674
        rts                                     ; E677

; ----------------------------------------------------------------------------
L_E678: sta     MMC1_Ctrl_9FFF                  ; E678
        lsr     a                               ; E67B
        sta     MMC1_Ctrl_9FFF                  ; E67C
        lsr     a                               ; E67F
        sta     MMC1_Ctrl_9FFF                  ; E680
        lsr     a                               ; E683
        sta     MMC1_Ctrl_9FFF                  ; E684
        lsr     a                               ; E687
        sta     MMC1_Ctrl_9FFF                  ; E688
        rts                                     ; E68B

; ----------------------------------------------------------------------------
L_E68C: lda     #$80                            ; E68C
        sta     MMC1_PrgBank_FFFF               ; E68E
        rts                                     ; E691

; ----------------------------------------------------------------------------
L_E692: sta     $D3                             ; E692
        jmp     L_E61B                          ; E694

.endmacro

