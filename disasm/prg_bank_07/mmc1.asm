.macro MAC_L_E61B
; ----------------------------------------------------------------------------
; Switches the PRG bank.
; 
; Raises the NMI busy flag across the switch so an NMI firing mid-switch is deferred, then replays
; the deferred frame work afterward.
; 
; Input:
;   A = target bank
; 
; Output:
;   ActiveBank = new active bank
; 
; Post-condition:
;   X and Y are preserved
BankSave_Switch:
        sta     $DB                             ; E61B
; backup X onto stack
        txa                                     ; E61D
        pha                                     ; E61E
; backup Y onto stack
        tya                                     ; E61F
        pha                                     ; E620
; Set Nmi_SignalFlags to just bit 6 on.
; This signals the NMI handler to defer its work during the bank switch.
        lda     #$40                            ; E621
        sta     $12                             ; E623
        lda     $DB                             ; E625
; reload bank number from ActiveBank and call MMC1_WritePRG to do the trigger the bank switch.
        jsr     MMC1_WritePRG                   ; E627
; Check Nmi_SignalFlags to see if NMI ran during bank switch.
        lda     $12                             ; E62A
        and     #$20                            ; E62C
; if bit 5 is not set then NMI did not occur.  Carry on with cleanup.
        beq     _BankSave_Switch__Cleanup       ; E62E
; Otherwise, do the deferred NMI work here.
        jsr     L_EB98                          ; E630
_BankSave_Switch__Cleanup:
        lda     #$00                            ; E633
; Clear Nmi_SignalFlags
        sta     $12                             ; E635
; restore Y
        pla                                     ; E637
        tay                                     ; E638
; restore X
        pla                                     ; E639
        tax                                     ; E63A
        rts                                     ; E63B

; ----------------------------------------------------------------------------
; MMC1 5-bit serial write to $FFFF
; write bit 0 of bank number to MMC1 serial shift register at $FFFF
MMC1_WritePRG:
        sta     MMC1_PrgBank_FFFF               ; E63C
        lsr     a                               ; E63F
; write bit 1
        sta     L_FFFA+5                        ; E640
        lsr     a                               ; E643
; write bit 2
        sta     L_FFFA+5                        ; E644
        lsr     a                               ; E647
; write bit 3
        sta     L_FFFA+5                        ; E648
        lsr     a                               ; E64B
; write bit 4
        sta     L_FFFA+5                        ; E64C
; after 5 writes MMC1 latches the 5-bit PRG bank number.  Our work is done.
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
L_E692: sta     SavedPrgBank                    ; E692
        jmp     BankSave_Switch                 ; E694

.endmacro

