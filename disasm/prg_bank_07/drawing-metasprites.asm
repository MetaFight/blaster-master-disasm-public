.macro MAC_L_F011
; ----------------------------------------------------------------------------
; Renders a metasprite selecting the correct metasprite pointer table by sprite size.
; 
; Input:
;   A = metasprite id
;   PPU_CTRL_Shadow = bit 5 of which contains the section-type flag.
;     this allows us to select from the appropriate metasprite table.  Either,
;       1 = table $1A, the 8×16 overhead table
;       0 = table $41, the 8×8  tank table
; 
; Post-condition:
;   Restores the previous bank
MetaSprite_Render:
        pha                                     ; F011
        ldx     #$1A                            ; F012
        lda     $FF                             ; F014
        and     #$20                            ; F016
; Select the metasprite CHR bank ($1A or $41) by testing bit-5 of PPU_CTRL_Shadow.
        bne     _MetaSprite_Render__SelectTable ; F018
        ldx     #$41                            ; F01A
; X = packed bank|entry for BankDispatch_Switch: $1A (bank 1 entry $0A = the 8x16 overhead
; metasprite table $BEA1) when PPU_CTRL_Shadow bit5 set, else $41 (bank 4 entry $01 = the 8x8 tank
; table $8907).
_MetaSprite_Render__SelectTable:
        txa                                     ; F01C
        jsr     BankDispatch_Switch             ; F01D
        pla                                     ; F020
        jsr     L_F029                          ; F021
        lda     $D3                             ; F024
        jmp     BankSave_Switch                 ; F026

; ----------------------------------------------------------------------------
L_F029: asl     a                               ; F029
        tay                                     ; F02A
        bcc     L_F02F                          ; F02B
        inc     DispatchPtrHi                   ; F02D
L_F02F: lda     (DispatchPtr),y                 ; F02F
        iny                                     ; F031
        tax                                     ; F032
        lda     (DispatchPtr),y                 ; F033
        sta     DispatchPtrHi                   ; F035
        stx     DispatchPtr                     ; F037
        lda     $4F                             ; F039
        beq     L_F04B                          ; F03B
        lda     $44                             ; F03D
        and     #$FC                            ; F03F
        sta     $44                             ; F041
        lda     $10                             ; F043
        and     #$03                            ; F045
        ora     $44                             ; F047
        sta     $44                             ; F049
L_F04B: lda     #$00                            ; F04B
        pha                                     ; F04D
        pha                                     ; F04E
L_F04F: lda     $3C                             ; F04F
        cmp     #$40                            ; F051
        bcc     L_F058                          ; F053
        jsr     L_EC73                          ; F055
L_F058: ldy     #$00                            ; F058
        lda     $44                             ; F05A
        asl     a                               ; F05C
        asl     a                               ; F05D
        lda     (DispatchPtr),y                 ; F05E
        iny                                     ; F060
        bcc     L_F065                          ; F061
        eor     #$FF                            ; F063
L_F065: adc     $3E                             ; F065
        sta     $3E                             ; F067
        lda     $44                             ; F069
        asl     a                               ; F06B
        lda     (DispatchPtr),y                 ; F06C
        iny                                     ; F06E
        bcc     L_F073                          ; F06F
        eor     #$FF                            ; F071
L_F073: adc     $3F                             ; F073
        sta     $3F                             ; F075
        ldy     #$03                            ; F077
        lda     (DispatchPtr),y                 ; F079
        sta     $45                             ; F07B
        dey                                     ; F07D
        lda     (DispatchPtr),y                 ; F07E
        tax                                     ; F080
        and     #$0C                            ; F081
        beq     L_F0E8                          ; F083
        cmp     #$04                            ; F085
        bne     L_F08C                          ; F087
        jmp     L_F11E                          ; F089

; ----------------------------------------------------------------------------
L_F08C: cmp     #$08                            ; F08C
        beq     L_F108                          ; F08E
        lda     $44                             ; F090
        pha                                     ; F092
        and     #$C3                            ; F093
        eor     (DispatchPtr),y                 ; F095
        sta     $44                             ; F097
        ldy     #$04                            ; F099
        lda     (DispatchPtr),y                 ; F09B
        jsr     L_F0BC                          ; F09D
        pla                                     ; F0A0
        sta     $44                             ; F0A1
L_F0A3: ldy     #$02                            ; F0A3
        lda     (DispatchPtr),y                 ; F0A5
        and     #$10                            ; F0A7
        beq     L_F0AE                          ; F0A9
        jmp     L_F138                          ; F0AB

; ----------------------------------------------------------------------------
L_F0AE: clc                                     ; F0AE
        lda     DispatchPtr                     ; F0AF
        adc     #$05                            ; F0B1
        sta     DispatchPtr                     ; F0B3
        bcc     L_F0B9                          ; F0B5
        inc     DispatchPtrHi                   ; F0B7
L_F0B9: jmp     L_F04F                          ; F0B9

; ----------------------------------------------------------------------------
L_F0BC: tax                                     ; F0BC
        dex                                     ; F0BD
        bne     L_F0C3                          ; F0BE
        jmp     L_ECD1                          ; F0C0

; ----------------------------------------------------------------------------
L_F0C3: dex                                     ; F0C3
        bne     L_F0C9                          ; F0C4
        jmp     L_ED12                          ; F0C6

; ----------------------------------------------------------------------------
L_F0C9: dex                                     ; F0C9
        bne     L_F0CF                          ; F0CA
        jmp     L_ED54                          ; F0CC

; ----------------------------------------------------------------------------
L_F0CF: dex                                     ; F0CF
        bne     L_F0D5                          ; F0D0
        jmp     L_EDA4                          ; F0D2

; ----------------------------------------------------------------------------
L_F0D5: dex                                     ; F0D5
        bne     L_F0DB                          ; F0D6
        jmp     L_EDF5                          ; F0D8

; ----------------------------------------------------------------------------
L_F0DB: dex                                     ; F0DB
        bne     L_F0E1                          ; F0DC
        jmp     L_EE77                          ; F0DE

; ----------------------------------------------------------------------------
L_F0E1: dex                                     ; F0E1
        bne     L_F0E7                          ; F0E2
        jmp     L_EEE9                          ; F0E4

; ----------------------------------------------------------------------------
L_F0E7: rts                                     ; F0E7

; ----------------------------------------------------------------------------
L_F0E8: ldx     $3C                             ; F0E8
        lda     $3E                             ; F0EA
        sta     SpriteStagingBuf + OamEntry::Screen_X,x ; F0EC
        lda     $3F                             ; F0EF
        sta     SpriteStagingBuf + OamEntry::Screen_Y,x ; F0F1
        lda     $45                             ; F0F4
        sta     SpriteStagingBuf + OamEntry::Tile,x ; F0F6
        lda     $44                             ; F0F9
        and     #$C3                            ; F0FB
        eor     (DispatchPtr),y                 ; F0FD
        sta     SpriteStagingBuf + OamEntry::Attr,x ; F0FF
        txa                                     ; F102
        clc                                     ; F103
        adc     #$04                            ; F104
        sta     $3C                             ; F106
L_F108: ldy     #$02                            ; F108
        lda     (DispatchPtr),y                 ; F10A
        and     #$10                            ; F10C
        bne     L_F138                          ; F10E
        clc                                     ; F110
        lda     DispatchPtr                     ; F111
        adc     #$04                            ; F113
        sta     DispatchPtr                     ; F115
        bcc     L_F11B                          ; F117
        inc     DispatchPtrHi                   ; F119
L_F11B: jmp     L_F04F                          ; F11B

; ----------------------------------------------------------------------------
L_F11E: txa                                     ; F11E
        and     #$C3                            ; F11F
        eor     $44                             ; F121
        sta     $44                             ; F123
        lda     DispatchPtrHi                   ; F125
        pha                                     ; F127
        lda     DispatchPtr                     ; F128
        pha                                     ; F12A
        ldy     #$04                            ; F12B
        lda     (DispatchPtr),y                 ; F12D
        sta     DispatchPtrHi                   ; F12F
        lda     $45                             ; F131
        sta     DispatchPtr                     ; F133
        jmp     L_F04F                          ; F135

; ----------------------------------------------------------------------------
L_F138: pla                                     ; F138
        sta     DispatchPtr                     ; F139
        pla                                     ; F13B
        sta     DispatchPtrHi                   ; F13C
        beq     L_F0E7                          ; F13E
        ldy     #$02                            ; F140
        lda     (DispatchPtr),y                 ; F142
        and     #$C0                            ; F144
        eor     $44                             ; F146
        sta     $44                             ; F148
        jmp     L_F0A3                          ; F14A

; ----------------------------------------------------------------------------
L_F14D: rts                                     ; F14D

.endmacro

