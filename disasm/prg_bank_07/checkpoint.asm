.macro MAC_checkpoint
; ----------------------------------------------------------------------------
; Save Player position, current section, active player, player object type, and Parked Sophia
; position, section, and facing.
.proc SetCheckpoint
        lda     LoadedObj + Obj::Position_X_Lo  ; C5B2
        sta     Checkpoint_Position + Vector2::X_Lo ; C5B4
        lda     LoadedObj + Obj::Position_X_Hi  ; C5B7
        sta     Checkpoint_Position + Vector2::X_Hi ; C5B9
        lda     LoadedObj + Obj::Position_Y_Lo  ; C5BC
        sta     Checkpoint_Position + Vector2::Y_Lo ; C5BE
        lda     LoadedObj + Obj::Position_Y_Hi  ; C5C1
        sta     Checkpoint_Position + Vector2::Y_Hi ; C5C3
        lda     $14                             ; C5C6
        sta     $03F9                           ; C5C8
        lda     $C1                             ; C5CB
        sta     $03FA                           ; C5CD
        lda     LoadedObj + Obj::Type           ; C5D0
        sta     $0350                           ; C5D2
        lda     ParkedSophia_Position + Vector2::X_Lo ; C5D5
        sta     Checkpoint_ParkedSophia_Position + Vector2::X_Lo ; C5D8
        lda     ParkedSophia_Position + Vector2::X_Hi ; C5DB
        sta     Checkpoint_ParkedSophia_Position + Vector2::X_Hi ; C5DE
        lda     ParkedSophia_Position + Vector2::Y_Lo ; C5E1
        sta     Checkpoint_ParkedSophia_Position + Vector2::Y_Lo ; C5E4
        lda     ParkedSophia_Position + Vector2::Y_Hi ; C5E7
        sta     Checkpoint_ParkedSophia_Position + Vector2::Y_Hi ; C5EA
        lda     $03D4                           ; C5ED
        sta     $037D                           ; C5F0
        lda     $03D5                           ; C5F3
        sta     $037C                           ; C5F6
        rts                                     ; C5F9
.endproc

; ----------------------------------------------------------------------------
; Restore Player position, current section, active player, player object type, and Parked Sophia
; position, section, and facing.
.proc RestoreCheckpoint
        lda     Checkpoint_Position + Vector2::X_Lo ; C5FA
        sta     LoadedObj + Obj::Position_X_Lo  ; C5FD
        lda     Checkpoint_Position + Vector2::X_Hi ; C5FF
        sta     LoadedObj + Obj::Position_X_Hi  ; C602
        lda     Checkpoint_Position + Vector2::Y_Lo ; C604
        sta     LoadedObj + Obj::Position_Y_Lo  ; C607
        lda     Checkpoint_Position + Vector2::Y_Hi ; C609
        sta     LoadedObj + Obj::Position_Y_Hi  ; C60C
        lda     $03F9                           ; C60E
        sta     $14                             ; C611
        lda     $03FA                           ; C613
        sta     $C1                             ; C616
        lda     $0350                           ; C618
        sta     LoadedObj + Obj::Type           ; C61B
        lda     Checkpoint_ParkedSophia_Position + Vector2::X_Lo ; C61D
        sta     ParkedSophia_Position + Vector2::X_Lo ; C620
        lda     Checkpoint_ParkedSophia_Position + Vector2::X_Hi ; C623
        sta     ParkedSophia_Position + Vector2::X_Hi ; C626
        lda     Checkpoint_ParkedSophia_Position + Vector2::Y_Lo ; C629
        sta     ParkedSophia_Position + Vector2::Y_Lo ; C62C
        lda     Checkpoint_ParkedSophia_Position + Vector2::Y_Hi ; C62F
        sta     ParkedSophia_Position + Vector2::Y_Hi ; C632
        lda     $037D                           ; C635
        sta     $03D4                           ; C638
        lda     $037C                           ; C63B
        sta     $03D5                           ; C63E
        rts                                     ; C641
.endproc

.endmacro

