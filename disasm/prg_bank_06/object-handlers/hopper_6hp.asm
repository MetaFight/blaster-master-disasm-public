.macro MAC_L_A7CB
; ----------------------------------------------------------------------------
; ObjType $5F — Gray Hopper (6 HP), init. One-frame setup for the hopping enemy: takes its stats
; from tank-enemy descriptor $05, faces the player, primes its hop-interval timer, and advances to
; the Main $60. Draws nothing; the +0 (fade/freeze) entry jumps to the terminal RTS. See
; docs/entities/tank/5f-61_hopper-6hp.md
ObjHandler_Tank_5F_Gray_Hopper_6HP_Init:
        jmp     _ObjHandler_Tank_5F_Gray_Hopper_6HP_Init__Done; A7CB

; ----------------------------------------------------------------------------
; Load enemy from descriptor ($05), face the player, go live as $60
_ObjHandler_Tank_5F_Gray_Hopper_6HP_Init__Update__:
        lda     #$05                            ; A7CE
        jsr     L_A2E9                          ; A7D0
; hop-interval timer $52 = $30
        lda     #$30                            ; A7D3
        sta     $52                             ; A7D5
; Get x-delta to player to figure out where to face
        jsr     LoadedObj__Get_DeltaToPlayer_X  ; A7D7
        bpl     _ObjHandler_Tank_5F_GrayHopper6HP_Init__Facing_Right; A7DA
; Player is to the left, so face left
        lda     #$C8                            ; A7DC
        jmp     _ObjHandler_Tank_5F_GrayHopper6HP_Init__StoreFacing; A7DE

; ----------------------------------------------------------------------------
; Player is to the right, so face right
_ObjHandler_Tank_5F_GrayHopper6HP_Init__Facing_Right:
        lda     #$B8                            ; A7E1
_ObjHandler_Tank_5F_GrayHopper6HP_Init__StoreFacing:
        sta     LoadedObj_Facing                ; A7E3
        lda     #$00                            ; A7E5
        sta     LoadedObj_Velocity_X            ; A7E7
        sta     LoadedObj_Velocity_Y            ; A7E9
        sta     $51                             ; A7EB
; Init body terminal RTS; the +0 (render) entry JMPs here — this Init draws nothing.
_ObjHandler_Tank_5F_Gray_Hopper_6HP_Init__Done:
        rts                                     ; A7ED

; ----------------------------------------------------------------------------
LA7EE:  jmp     L_A840                          ; A7EE

; ----------------------------------------------------------------------------
        lda     #$80                            ; A7F1
        sta     $42                             ; A7F3
        lda     #$C0                            ; A7F5
        sta     $43                             ; A7F7
        lda     $51                             ; A7F9
        beq     L_A802                          ; A7FB
        dec     $51                             ; A7FD
        jmp     L_A840                          ; A7FF

; ----------------------------------------------------------------------------
L_A802: lda     #$04                            ; A802
        jsr     LDFA0                           ; A804
        and     #$40                            ; A807
        beq     L_A840                          ; A809
        lda     LoadedObj_Velocity_Y            ; A80B
        bpl     L_A840                          ; A80D
        lda     #$0A                            ; A80F
        sta     $51                             ; A811
        jsr     LEB71                           ; A813
        bcc     L_A821                          ; A816
        lda     Global_FrameCounter             ; A818
        bpl     L_A821                          ; A81A
        inc     LoadedObj_Type                  ; A81C
        jmp     L_A840                          ; A81E

; ----------------------------------------------------------------------------
L_A821: lda     #$29                            ; A821
        jsr     Enqueue_Sound_Command           ; A823
        jsr     LoadedObj__Get_DeltaToPlayer_X  ; A826
        bmi     L_A830                          ; A829
        lda     #$C8                            ; A82B
        jmp     L_A832                          ; A82D

; ----------------------------------------------------------------------------
L_A830: lda     #$B8                            ; A830
L_A832: sta     LoadedObj_Facing                ; A832
        jsr     LEB71                           ; A834
        and     #$0F                            ; A837
        clc                                     ; A839
        adc     $52                             ; A83A
        tay                                     ; A83C
        jsr     LE1BD                           ; A83D
L_A840: lda     #$10                            ; A840
        sta     $40                             ; A842
        lda     #$18                            ; A844
        sta     $41                             ; A846
        jsr     LEF2B                           ; A848
        beq     L_A850                          ; A84B
        jmp     LD7F8                           ; A84D

; ----------------------------------------------------------------------------
L_A850: lda     #$05                            ; A850
        jsr     L_A30A                          ; A852
        beq     L_A85A                          ; A855
        jmp     L_A34D                          ; A857

; ----------------------------------------------------------------------------
L_A85A: lda     #$01                            ; A85A
        jsr     LE04E                           ; A85C
        lda     $51                             ; A85F
        beq     L_A868                          ; A861
        lda     #$02                            ; A863
        jmp     L_A86A                          ; A865

; ----------------------------------------------------------------------------
L_A868: lda     #$03                            ; A868
L_A86A: jmp     LF011                           ; A86A

; ----------------------------------------------------------------------------
        rts                                     ; A86D

.endmacro

