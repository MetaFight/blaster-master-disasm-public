; da65 V2.18 - Ubuntu 2.19-1
; Input file: public/disasm/prg_bank_00.bin
; Page:       1


        .setcpu "6502"

        .include "ram.inc"

; ----------------------------------------------------------------------------
; ----------------------------------------------------------------------------

.segment        "BANK00": absolute

TankLvl1_BasePointers:
        .addr   TankLvl1_MapPointers            ; 8000
        .addr   TankLvl1_ScrollData             ; 8002
TankLvl2_BasePointers:
        .addr   TankLvl2_MapPointers            ; 8004
        .addr   TankLvl2_ScrollData             ; 8006
TankLvl3_BasePointers:
        .addr   TankLvl3_MapPointers            ; 8008
        .addr   TankLvl3_ScrollData             ; 800A
TankLvl4_BasePointers:
        .addr   TankLvl4_MapPointers            ; 800C
        .addr   TankLvl4_ScrollData             ; 800E
TankLvl5_BasePointers:
        .addr   TankLvl5_MapPointers            ; 8010
        .addr   TankLvl5_ScrollData             ; 8012
TankLvl1_MapPointers:
        .addr   TankLvl1_BgPalette              ; 8014
        .addr   TankLvl1_TileAttrTable          ; 8016
        .addr   TankLvl1_TileDescTable          ; 8018
        .addr   TankLvl1_StructureDescTable     ; 801A
        .addr   TankLvl1_ChunkDescTable         ; 801C
        .addr   TankLvl1_MapData                ; 801E
; ----------------------------------------------------------------------------
; 4 BgPalette records — the level's 4 background sub-palettes × 4 NES colour indices.
TankLvl1_BgPalette:
        .byte   $0F,$07,$00,$01 ; 8020  Backdrop=$0F Colour1=$07 Colour2=$00 Colour3=$01
        .byte   $0F,$02,$01,$1C ; 8024  Backdrop=$0F Colour1=$02 Colour2=$01 Colour3=$1C
        .byte   $0F,$0A,$18,$28 ; 8028  Backdrop=$0F Colour1=$0A Colour2=$18 Colour3=$28
        .byte   $0F,$17,$19,$10 ; 802C  Backdrop=$0F Colour1=$17 Colour2=$19 Colour3=$10
; 154 TileDesc records — the level's Tile definitions. Index space shared with
; TankLvl1_TileAttrTable, which has the matching 154 entries.
TankLvl1_TileDescTable:
        .byte   $00,$00,$00,$00 ; 8030  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $34,$34,$35,$35 ; 8034  TL=$34 TR=$34 BL=$35 BR=$35
        .byte   $36,$36,$37,$37 ; 8038  TL=$36 TR=$36 BL=$37 BR=$37
        .byte   $23,$23,$23,$23 ; 803C  TL=$23 TR=$23 BL=$23 BR=$23
        .byte   $CA,$DA,$CB,$DB ; 8040  TL=$CA TR=$DA BL=$CB BR=$DB
        .byte   $DA,$DA,$DB,$DB ; 8044  TL=$DA TR=$DA BL=$DB BR=$DB
        .byte   $DA,$EC,$DB,$FC ; 8048  TL=$DA TR=$EC BL=$DB BR=$FC
        .byte   $2D,$4A,$2D,$3D ; 804C  TL=$2D TR=$4A BL=$2D BR=$3D
        .byte   $5A,$2D,$4D,$5D ; 8050  TL=$5A TR=$2D BL=$4D BR=$5D
        .byte   $2D,$2D,$2A,$3A ; 8054  TL=$2D TR=$2D BL=$2A BR=$3A
        .byte   $2D,$2D,$4A,$2D ; 8058  TL=$2D TR=$2D BL=$4A BR=$2D
        .byte   $2E,$3E,$2F,$3F ; 805C  TL=$2E TR=$3E BL=$2F BR=$3F
        .byte   $4E,$5E,$4F,$5F ; 8060  TL=$4E TR=$5E BL=$4F BR=$5F
        .byte   $2B,$3B,$2C,$3C ; 8064  TL=$2B TR=$3B BL=$2C BR=$3C
        .byte   $4B,$5B,$4C,$5C ; 8068  TL=$4B TR=$5B BL=$4C BR=$5C
        .byte   $BD,$11,$07,$17 ; 806C  TL=$BD TR=$11 BL=$07 BR=$17
        .byte   $BD,$11,$06,$16 ; 8070  TL=$BD TR=$11 BL=$06 BR=$16
        .byte   $28,$38,$29,$39 ; 8074  TL=$28 TR=$38 BL=$29 BR=$39
        .byte   $08,$18,$09,$19 ; 8078  TL=$08 TR=$18 BL=$09 BR=$19
        .byte   $C9,$18,$00,$D9 ; 807C  TL=$C9 TR=$18 BL=$00 BR=$D9
        .byte   $08,$F8,$E9,$F9 ; 8080  TL=$08 TR=$F8 BL=$E9 BR=$F9
        .byte   $08,$18,$EB,$FB ; 8084  TL=$08 TR=$18 BL=$EB BR=$FB
        .byte   $0A,$18,$0B,$19 ; 8088  TL=$0A TR=$18 BL=$0B BR=$19
        .byte   $08,$1A,$09,$1B ; 808C  TL=$08 TR=$1A BL=$09 BR=$1B
        .byte   $0A,$18,$0E,$1E ; 8090  TL=$0A TR=$18 BL=$0E BR=$1E
        .byte   $08,$18,$0E,$1E ; 8094  TL=$08 TR=$18 BL=$0E BR=$1E
        .byte   $08,$1A,$0E,$1E ; 8098  TL=$08 TR=$1A BL=$0E BR=$1E
        .byte   $0F,$18,$0B,$19 ; 809C  TL=$0F TR=$18 BL=$0B BR=$19
        .byte   $08,$1F,$09,$1B ; 80A0  TL=$08 TR=$1F BL=$09 BR=$1B
        .byte   $00,$02,$00,$03 ; 80A4  TL=$00 TR=$02 BL=$00 BR=$03
        .byte   $12,$00,$13,$00 ; 80A8  TL=$12 TR=$00 BL=$13 BR=$00
        .byte   $C6,$D6,$C7,$D7 ; 80AC  TL=$C6 TR=$D6 BL=$C7 BR=$D7
        .byte   $20,$14,$21,$15 ; 80B0  TL=$20 TR=$14 BL=$21 BR=$15
        .byte   $04,$14,$05,$15 ; 80B4  TL=$04 TR=$14 BL=$05 BR=$15
        .byte   $04,$30,$05,$31 ; 80B8  TL=$04 TR=$30 BL=$05 BR=$31
        .byte   $C4,$14,$C5,$D5 ; 80BC  TL=$C4 TR=$14 BL=$C5 BR=$D5
        .byte   $04,$F4,$E5,$F5 ; 80C0  TL=$04 TR=$F4 BL=$E5 BR=$F5
        .byte   $04,$14,$EA,$FA ; 80C4  TL=$04 TR=$14 BL=$EA BR=$FA
        .byte   $20,$1C,$0D,$1D ; 80C8  TL=$20 TR=$1C BL=$0D BR=$1D
        .byte   $0C,$1C,$0D,$1D ; 80CC  TL=$0C TR=$1C BL=$0D BR=$1D
        .byte   $40,$50,$41,$51 ; 80D0  TL=$40 TR=$50 BL=$41 BR=$51
        .byte   $00,$CE,$00,$CF ; 80D4  TL=$00 TR=$CE BL=$00 BR=$CF
        .byte   $40,$DE,$41,$DF ; 80D8  TL=$40 TR=$DE BL=$41 BR=$DF
        .byte   $00,$00,$00,$7B ; 80DC  TL=$00 TR=$00 BL=$00 BR=$7B
        .byte   $00,$00,$EF,$FF ; 80E0  TL=$00 TR=$00 BL=$EF BR=$FF
        .byte   $00,$50,$EF,$51 ; 80E4  TL=$00 TR=$50 BL=$EF BR=$51
        .byte   $40,$00,$41,$FF ; 80E8  TL=$40 TR=$00 BL=$41 BR=$FF
        .byte   $40,$50,$00,$51 ; 80EC  TL=$40 TR=$50 BL=$00 BR=$51
        .byte   $00,$00,$EF,$58 ; 80F0  TL=$00 TR=$00 BL=$EF BR=$58
        .byte   $44,$54,$45,$55 ; 80F4  TL=$44 TR=$54 BL=$45 BR=$55
        .byte   $46,$56,$00,$57 ; 80F8  TL=$46 TR=$56 BL=$00 BR=$57
        .byte   $42,$52,$43,$53 ; 80FC  TL=$42 TR=$52 BL=$43 BR=$53
        .byte   $A8,$B8,$A9,$B9 ; 8100  TL=$A8 TR=$B8 BL=$A9 BR=$B9
        .byte   $A6,$B6,$A7,$B7 ; 8104  TL=$A6 TR=$B6 BL=$A7 BR=$B7
        .byte   $AA,$BA,$AB,$BB ; 8108  TL=$AA TR=$BA BL=$AB BR=$BB
        .byte   $CC,$DC,$AB,$BB ; 810C  TL=$CC TR=$DC BL=$AB BR=$BB
        .byte   $AA,$BA,$00,$BB ; 8110  TL=$AA TR=$BA BL=$00 BR=$BB
        .byte   $00,$BA,$DC,$BB ; 8114  TL=$00 TR=$BA BL=$DC BR=$BB
        .byte   $00,$00,$DC,$CC ; 8118  TL=$00 TR=$00 BL=$DC BR=$CC
        .byte   $AA,$BA,$CD,$DD ; 811C  TL=$AA TR=$BA BL=$CD BR=$DD
        .byte   $AA,$00,$AB,$CC ; 8120  TL=$AA TR=$00 BL=$AB BR=$CC
        .byte   $00,$00,$CC,$DC ; 8124  TL=$00 TR=$00 BL=$CC BR=$DC
        .byte   $32,$32,$01,$01 ; 8128  TL=$32 TR=$32 BL=$01 BR=$01
        .byte   $10,$22,$10,$22 ; 812C  TL=$10 TR=$22 BL=$10 BR=$22
        .byte   $47,$00,$48,$49 ; 8130  TL=$47 TR=$00 BL=$48 BR=$49
        .byte   $00,$00,$59,$90 ; 8134  TL=$00 TR=$00 BL=$59 BR=$90
        .byte   $00,$00,$A0,$B0 ; 8138  TL=$00 TR=$00 BL=$A0 BR=$B0
        .byte   $60,$70,$61,$71 ; 813C  TL=$60 TR=$70 BL=$61 BR=$71
        .byte   $80,$90,$81,$91 ; 8140  TL=$80 TR=$90 BL=$81 BR=$91
        .byte   $A0,$B0,$A1,$B1 ; 8144  TL=$A0 TR=$B0 BL=$A1 BR=$B1
        .byte   $69,$78,$00,$79 ; 8148  TL=$69 TR=$78 BL=$00 BR=$79
        .byte   $62,$72,$78,$73 ; 814C  TL=$62 TR=$72 BL=$78 BR=$73
        .byte   $64,$74,$65,$7A ; 8150  TL=$64 TR=$74 BL=$65 BR=$7A
        .byte   $80,$00,$81,$98 ; 8154  TL=$80 TR=$00 BL=$81 BR=$98
        .byte   $04,$7C,$05,$7D ; 8158  TL=$04 TR=$7C BL=$05 BR=$7D
        .byte   $AE,$14,$AF,$15 ; 815C  TL=$AE TR=$14 BL=$AF BR=$15
        .byte   $08,$7C,$09,$7D ; 8160  TL=$08 TR=$7C BL=$09 BR=$7D
        .byte   $8C,$9C,$00,$8D ; 8164  TL=$8C TR=$9C BL=$00 BR=$8D
        .byte   $AC,$AD,$9D,$00 ; 8168  TL=$AC TR=$AD BL=$9D BR=$00
        .byte   $AE,$18,$AF,$19 ; 816C  TL=$AE TR=$18 BL=$AF BR=$19
        .byte   $00,$6B,$00,$6C ; 8170  TL=$00 TR=$6B BL=$00 BR=$6C
        .byte   $00,$00,$32,$32 ; 8174  TL=$00 TR=$00 BL=$32 BR=$32
        .byte   $6B,$00,$6C,$32 ; 8178  TL=$6B TR=$00 BL=$6C BR=$32
        .byte   $62,$72,$63,$73 ; 817C  TL=$62 TR=$72 BL=$63 BR=$73
        .byte   $82,$92,$83,$93 ; 8180  TL=$82 TR=$92 BL=$83 BR=$93
        .byte   $A2,$B2,$A3,$B3 ; 8184  TL=$A2 TR=$B2 BL=$A3 BR=$B3
        .byte   $00,$00,$68,$B1 ; 8188  TL=$00 TR=$00 BL=$68 BR=$B1
        .byte   $79,$74,$00,$00 ; 818C  TL=$79 TR=$74 BL=$00 BR=$00
        .byte   $85,$95,$86,$96 ; 8190  TL=$85 TR=$95 BL=$86 BR=$96
        .byte   $82,$99,$88,$00 ; 8194  TL=$82 TR=$99 BL=$88 BR=$00
        .byte   $04,$7E,$05,$7F ; 8198  TL=$04 TR=$7E BL=$05 BR=$7F
        .byte   $BE,$14,$BF,$15 ; 819C  TL=$BE TR=$14 BL=$BF BR=$15
        .byte   $08,$7E,$09,$7F ; 81A0  TL=$08 TR=$7E BL=$09 BR=$7F
        .byte   $00,$8E,$00,$8F ; 81A4  TL=$00 TR=$8E BL=$00 BR=$8F
        .byte   $9E,$00,$9F,$00 ; 81A8  TL=$9E TR=$00 BL=$9F BR=$00
        .byte   $BE,$18,$BF,$19 ; 81AC  TL=$BE TR=$18 BL=$BF BR=$19
        .byte   $01,$6D,$34,$6D ; 81B0  TL=$01 TR=$6D BL=$34 BR=$6D
        .byte   $01,$01,$34,$34 ; 81B4  TL=$01 TR=$01 BL=$34 BR=$34
        .byte   $6D,$01,$6D,$34 ; 81B8  TL=$6D TR=$01 BL=$6D BR=$34
        .byte   $64,$74,$65,$75 ; 81BC  TL=$64 TR=$74 BL=$65 BR=$75
        .byte   $84,$94,$86,$96 ; 81C0  TL=$84 TR=$94 BL=$86 BR=$96
        .byte   $A4,$B4,$A5,$B5 ; 81C4  TL=$A4 TR=$B4 BL=$A5 BR=$B5
        .byte   $00,$00,$67,$77 ; 81C8  TL=$00 TR=$00 BL=$67 BR=$77
        .byte   $85,$95,$66,$76 ; 81CC  TL=$85 TR=$95 BL=$66 BR=$76
        .byte   $00,$00,$87,$97 ; 81D0  TL=$00 TR=$00 BL=$87 BR=$97
        .byte   $89,$00,$00,$00 ; 81D4  TL=$89 TR=$00 BL=$00 BR=$00
        .byte   $C0,$D0,$C1,$D1 ; 81D8  TL=$C0 TR=$D0 BL=$C1 BR=$D1
        .byte   $D2,$E2,$D3,$E3 ; 81DC  TL=$D2 TR=$E2 BL=$D3 BR=$E3
        .byte   $E0,$F0,$E1,$F1 ; 81E0  TL=$E0 TR=$F0 BL=$E1 BR=$F1
        .byte   $F2,$9E,$F3,$9F ; 81E4  TL=$F2 TR=$9E BL=$F3 BR=$9F
        .byte   $FD,$02,$FE,$03 ; 81E8  TL=$FD TR=$02 BL=$FE BR=$03
        .byte   $12,$ED,$13,$EE ; 81EC  TL=$12 TR=$ED BL=$13 BR=$EE
        .byte   $26,$6D,$27,$6D ; 81F0  TL=$26 TR=$6D BL=$27 BR=$6D
        .byte   $26,$26,$27,$27 ; 81F4  TL=$26 TR=$26 BL=$27 BR=$27
        .byte   $6D,$26,$6D,$27 ; 81F8  TL=$6D TR=$26 BL=$6D BR=$27
        .byte   $00,$00,$00,$6B ; 81FC  TL=$00 TR=$00 BL=$00 BR=$6B
        .byte   $00,$6D,$32,$6D ; 8200  TL=$00 TR=$6D BL=$32 BR=$6D
        .byte   $8A,$8A,$8B,$8B ; 8204  TL=$8A TR=$8A BL=$8B BR=$8B
        .byte   $9A,$9A,$9B,$9B ; 8208  TL=$9A TR=$9A BL=$9B BR=$9B
        .byte   $BC,$BC,$BC,$BC ; 820C  TL=$BC TR=$BC BL=$BC BR=$BC
        .byte   $E7,$F7,$05,$15 ; 8210  TL=$E7 TR=$F7 BL=$05 BR=$15
        .byte   $E6,$F6,$05,$15 ; 8214  TL=$E6 TR=$F6 BL=$05 BR=$15
        .byte   $C2,$00,$C3,$00 ; 8218  TL=$C2 TR=$00 BL=$C3 BR=$00
        .byte   $00,$F2,$00,$F3 ; 821C  TL=$00 TR=$F2 BL=$00 BR=$F3
        .byte   $C0,$D4,$C1,$E4 ; 8220  TL=$C0 TR=$D4 BL=$C1 BR=$E4
        .byte   $F0,$9D,$F1,$9E ; 8224  TL=$F0 TR=$9D BL=$F1 BR=$9E
        .byte   $C8,$D8,$09,$19 ; 8228  TL=$C8 TR=$D8 BL=$09 BR=$19
        .byte   $00,$6F,$00,$00 ; 822C  TL=$00 TR=$6F BL=$00 BR=$00
        .byte   $24,$6D,$25,$6E ; 8230  TL=$24 TR=$6D BL=$25 BR=$6E
        .byte   $24,$24,$25,$25 ; 8234  TL=$24 TR=$24 BL=$25 BR=$25
        .byte   $6E,$24,$6F,$25 ; 8238  TL=$6E TR=$24 BL=$6F BR=$25
        .byte   $01,$6C,$34,$6D ; 823C  TL=$01 TR=$6C BL=$34 BR=$6D
        .byte   $24,$6E,$25,$6F ; 8240  TL=$24 TR=$6E BL=$25 BR=$6F
        .byte   $9A,$9A,$9B,$9B ; 8244  TL=$9A TR=$9A BL=$9B BR=$9B
        .byte   $8A,$8A,$8B,$8B ; 8248  TL=$8A TR=$8A BL=$8B BR=$8B
        .byte   $20,$14,$21,$15 ; 824C  TL=$20 TR=$14 BL=$21 BR=$15
        .byte   $04,$14,$05,$15 ; 8250  TL=$04 TR=$14 BL=$05 BR=$15
        .byte   $04,$30,$05,$31 ; 8254  TL=$04 TR=$30 BL=$05 BR=$31
        .byte   $0A,$18,$0B,$19 ; 8258  TL=$0A TR=$18 BL=$0B BR=$19
        .byte   $08,$18,$09,$19 ; 825C  TL=$08 TR=$18 BL=$09 BR=$19
        .byte   $08,$1A,$09,$1B ; 8260  TL=$08 TR=$1A BL=$09 BR=$1B
        .byte   $06,$16,$0B,$19 ; 8264  TL=$06 TR=$16 BL=$0B BR=$19
        .byte   $06,$16,$09,$19 ; 8268  TL=$06 TR=$16 BL=$09 BR=$19
        .byte   $06,$16,$09,$1B ; 826C  TL=$06 TR=$16 BL=$09 BR=$1B
        .byte   $10,$22,$10,$22 ; 8270  TL=$10 TR=$22 BL=$10 BR=$22
        .byte   $00,$00,$00,$00 ; 8274  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $C2,$00,$C3,$00 ; 8278  TL=$C2 TR=$00 BL=$C3 BR=$00
        .byte   $A8,$B8,$A9,$B9 ; 827C  TL=$A8 TR=$B8 BL=$A9 BR=$B9
        .byte   $32,$32,$01,$01 ; 8280  TL=$32 TR=$32 BL=$01 BR=$01
        .byte   $C4,$14,$C5,$D5 ; 8284  TL=$C4 TR=$14 BL=$C5 BR=$D5
        .byte   $04,$F4,$E5,$F5 ; 8288  TL=$04 TR=$F4 BL=$E5 BR=$F5
        .byte   $04,$14,$EA,$FA ; 828C  TL=$04 TR=$14 BL=$EA BR=$FA
        .byte   $C6,$D6,$C7,$D7 ; 8290  TL=$C6 TR=$D6 BL=$C7 BR=$D7
        .byte   $10,$22,$10,$22 ; 8294  TL=$10 TR=$22 BL=$10 BR=$22
; 244 StructureDesc records — the level's Structure definitions, each a 2×2 quad of Tiles.
TankLvl1_StructureDescTable:
        .byte   $88,$88,$88,$88 ; 8298  TL=$88 TR=$88 BL=$88 BR=$88
        .byte   $12,$12,$12,$12 ; 829C  TL=$12 TR=$12 BL=$12 BR=$12
        .byte   $12,$12,$10,$10 ; 82A0  TL=$12 TR=$12 BL=$10 BR=$10
        .byte   $17,$01,$17,$02 ; 82A4  TL=$17 TR=$01 BL=$17 BR=$02
        .byte   $01,$01,$02,$02 ; 82A8  TL=$01 TR=$01 BL=$02 BR=$02
        .byte   $17,$03,$17,$03 ; 82AC  TL=$17 TR=$03 BL=$17 BR=$03
        .byte   $03,$03,$03,$03 ; 82B0  TL=$03 TR=$03 BL=$03 BR=$03
        .byte   $01,$16,$02,$16 ; 82B4  TL=$01 TR=$16 BL=$02 BR=$16
        .byte   $03,$16,$03,$16 ; 82B8  TL=$03 TR=$16 BL=$03 BR=$16
        .byte   $03,$03,$04,$05 ; 82BC  TL=$03 TR=$03 BL=$04 BR=$05
        .byte   $03,$03,$05,$05 ; 82C0  TL=$03 TR=$03 BL=$05 BR=$05
        .byte   $03,$03,$05,$06 ; 82C4  TL=$03 TR=$03 BL=$05 BR=$06
        .byte   $12,$12,$17,$14 ; 82C8  TL=$12 TR=$12 BL=$17 BR=$14
        .byte   $15,$15,$00,$3D ; 82CC  TL=$15 TR=$15 BL=$00 BR=$3D
        .byte   $17,$00,$17,$00 ; 82D0  TL=$17 TR=$00 BL=$17 BR=$00
        .byte   $3D,$36,$36,$36 ; 82D4  TL=$3D TR=$36 BL=$36 BR=$36
        .byte   $12,$12,$13,$15 ; 82D8  TL=$12 TR=$12 BL=$13 BR=$15
        .byte   $12,$15,$14,$3D ; 82DC  TL=$12 TR=$15 BL=$14 BR=$3D
        .byte   $3D,$3D,$36,$36 ; 82E0  TL=$3D TR=$3D BL=$36 BR=$36
        .byte   $15,$15,$3D,$3D ; 82E4  TL=$15 TR=$15 BL=$3D BR=$3D
        .byte   $12,$12,$13,$16 ; 82E8  TL=$12 TR=$12 BL=$13 BR=$16
        .byte   $36,$36,$36,$36 ; 82EC  TL=$36 TR=$36 BL=$36 BR=$36
        .byte   $3D,$16,$36,$16 ; 82F0  TL=$3D TR=$16 BL=$36 BR=$16
        .byte   $0F,$0F,$1C,$00 ; 82F4  TL=$0F TR=$0F BL=$1C BR=$00
        .byte   $0F,$0F,$3D,$3D ; 82F8  TL=$0F TR=$0F BL=$3D BR=$3D
        .byte   $36,$0F,$36,$3C ; 82FC  TL=$36 TR=$0F BL=$36 BR=$3C
        .byte   $0F,$38,$3D,$39 ; 8300  TL=$0F TR=$38 BL=$3D BR=$39
        .byte   $0F,$0F,$3D,$1B ; 8304  TL=$0F TR=$0F BL=$3D BR=$1B
        .byte   $36,$16,$36,$16 ; 8308  TL=$36 TR=$16 BL=$36 BR=$16
        .byte   $36,$36,$0F,$0F ; 830C  TL=$36 TR=$36 BL=$0F BR=$0F
        .byte   $36,$36,$0F,$38 ; 8310  TL=$36 TR=$36 BL=$0F BR=$38
        .byte   $3C,$3D,$36,$36 ; 8314  TL=$3C TR=$3D BL=$36 BR=$36
        .byte   $3D,$39,$36,$36 ; 8318  TL=$3D TR=$39 BL=$36 BR=$36
        .byte   $4E,$4F,$5E,$5F ; 831C  TL=$4E TR=$4F BL=$5E BR=$5F
        .byte   $4C,$4D,$5C,$5D ; 8320  TL=$4C TR=$4D BL=$5C BR=$5D
        .byte   $04,$05,$03,$03 ; 8324  TL=$04 TR=$05 BL=$03 BR=$03
        .byte   $05,$06,$03,$03 ; 8328  TL=$05 TR=$06 BL=$03 BR=$03
        .byte   $0F,$0F,$1C,$03 ; 832C  TL=$0F TR=$0F BL=$1C BR=$03
        .byte   $0F,$0F,$03,$03 ; 8330  TL=$0F TR=$0F BL=$03 BR=$03
        .byte   $36,$36,$3B,$3B ; 8334  TL=$36 TR=$36 BL=$3B BR=$3B
        .byte   $12,$10,$12,$12 ; 8338  TL=$12 TR=$10 BL=$12 BR=$12
        .byte   $10,$10,$12,$12 ; 833C  TL=$10 TR=$10 BL=$12 BR=$12
        .byte   $6A,$6B,$7A,$91 ; 8340  TL=$6A TR=$6B BL=$7A BR=$91
        .byte   $6C,$36,$7B,$3B ; 8344  TL=$6C TR=$36 BL=$7B BR=$3B
        .byte   $10,$10,$16,$12 ; 8348  TL=$10 TR=$10 BL=$16 BR=$12
        .byte   $10,$10,$12,$17 ; 834C  TL=$10 TR=$10 BL=$12 BR=$17
        .byte   $36,$16,$3B,$16 ; 8350  TL=$36 TR=$16 BL=$3B BR=$16
        .byte   $10,$12,$12,$12 ; 8354  TL=$10 TR=$12 BL=$12 BR=$12
        .byte   $03,$04,$03,$03 ; 8358  TL=$03 TR=$04 BL=$03 BR=$03
        .byte   $03,$03,$03,$04 ; 835C  TL=$03 TR=$03 BL=$03 BR=$04
        .byte   $03,$03,$06,$03 ; 8360  TL=$03 TR=$03 BL=$06 BR=$03
        .byte   $17,$08,$17,$0C ; 8364  TL=$17 TR=$08 BL=$17 BR=$0C
        .byte   $09,$0A,$0D,$0E ; 8368  TL=$09 TR=$0A BL=$0D BR=$0E
        .byte   $07,$08,$0B,$0C ; 836C  TL=$07 TR=$08 BL=$0B BR=$0C
        .byte   $09,$16,$0D,$16 ; 8370  TL=$09 TR=$16 BL=$0D BR=$16
        .byte   $00,$00,$00,$00 ; 8374  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$00,$00,$35 ; 8378  TL=$00 TR=$00 BL=$00 BR=$35
        .byte   $00,$00,$35,$35 ; 837C  TL=$00 TR=$00 BL=$35 BR=$35
        .byte   $00,$35,$00,$10 ; 8380  TL=$00 TR=$35 BL=$00 BR=$10
        .byte   $35,$35,$10,$10 ; 8384  TL=$35 TR=$35 BL=$10 BR=$10
        .byte   $00,$35,$10,$10 ; 8388  TL=$00 TR=$35 BL=$10 BR=$10
        .byte   $35,$00,$10,$00 ; 838C  TL=$35 TR=$00 BL=$10 BR=$00
        .byte   $0F,$0F,$00,$00 ; 8390  TL=$0F TR=$0F BL=$00 BR=$00
        .byte   $00,$16,$00,$16 ; 8394  TL=$00 TR=$16 BL=$00 BR=$16
        .byte   $17,$10,$12,$12 ; 8398  TL=$17 TR=$10 BL=$12 BR=$12
        .byte   $12,$17,$12,$17 ; 839C  TL=$12 TR=$17 BL=$12 BR=$17
        .byte   $35,$00,$10,$10 ; 83A0  TL=$35 TR=$00 BL=$10 BR=$10
        .byte   $19,$19,$34,$34 ; 83A4  TL=$19 TR=$19 BL=$34 BR=$34
        .byte   $00,$10,$10,$12 ; 83A8  TL=$00 TR=$10 BL=$10 BR=$12
        .byte   $10,$10,$16,$17 ; 83AC  TL=$10 TR=$10 BL=$16 BR=$17
        .byte   $3E,$3E,$34,$34 ; 83B0  TL=$3E TR=$3E BL=$34 BR=$34
        .byte   $18,$1A,$34,$34 ; 83B4  TL=$18 TR=$1A BL=$34 BR=$34
        .byte   $3E,$18,$34,$34 ; 83B8  TL=$3E TR=$18 BL=$34 BR=$34
        .byte   $17,$00,$12,$10 ; 83BC  TL=$17 TR=$00 BL=$12 BR=$10
        .byte   $19,$1A,$34,$34 ; 83C0  TL=$19 TR=$1A BL=$34 BR=$34
        .byte   $1A,$19,$34,$34 ; 83C4  TL=$1A TR=$19 BL=$34 BR=$34
        .byte   $1A,$3E,$34,$34 ; 83C8  TL=$1A TR=$3E BL=$34 BR=$34
        .byte   $16,$12,$16,$12 ; 83CC  TL=$16 TR=$12 BL=$16 BR=$12
        .byte   $21,$21,$21,$21 ; 83D0  TL=$21 TR=$21 BL=$21 BR=$21
        .byte   $21,$21,$21,$25 ; 83D4  TL=$21 TR=$21 BL=$21 BR=$25
        .byte   $21,$21,$25,$25 ; 83D8  TL=$21 TR=$21 BL=$25 BR=$25
        .byte   $21,$21,$25,$21 ; 83DC  TL=$21 TR=$21 BL=$25 BR=$21
        .byte   $22,$00,$22,$00 ; 83E0  TL=$22 TR=$00 BL=$22 BR=$00
        .byte   $00,$40,$00,$40 ; 83E4  TL=$00 TR=$40 BL=$00 BR=$40
        .byte   $4A,$4D,$5A,$5D ; 83E8  TL=$4A TR=$4D BL=$5A BR=$5D
        .byte   $41,$42,$00,$00 ; 83EC  TL=$41 TR=$42 BL=$00 BR=$00
        .byte   $41,$42,$56,$43 ; 83F0  TL=$41 TR=$42 BL=$56 BR=$43
        .byte   $00,$00,$44,$45 ; 83F4  TL=$00 TR=$00 BL=$44 BR=$45
        .byte   $46,$47,$00,$57 ; 83F8  TL=$46 TR=$47 BL=$00 BR=$57
        .byte   $54,$55,$64,$65 ; 83FC  TL=$54 TR=$55 BL=$64 BR=$65
        .byte   $00,$00,$43,$49 ; 8400  TL=$00 TR=$00 BL=$43 BR=$49
        .byte   $00,$40,$00,$00 ; 8404  TL=$00 TR=$40 BL=$00 BR=$00
        .byte   $53,$59,$48,$69 ; 8408  TL=$53 TR=$59 BL=$48 BR=$69
        .byte   $00,$20,$00,$20 ; 840C  TL=$00 TR=$20 BL=$00 BR=$20
        .byte   $00,$00,$45,$43 ; 8410  TL=$00 TR=$00 BL=$45 BR=$43
        .byte   $55,$53,$65,$63 ; 8414  TL=$55 TR=$53 BL=$65 BR=$63
        .byte   $0F,$0F,$22,$61 ; 8418  TL=$0F TR=$0F BL=$22 BR=$61
        .byte   $0F,$51,$61,$61 ; 841C  TL=$0F TR=$51 BL=$61 BR=$61
        .byte   $22,$71,$22,$81 ; 8420  TL=$22 TR=$71 BL=$22 BR=$81
        .byte   $71,$71,$0F,$0F ; 8424  TL=$71 TR=$71 BL=$0F BR=$0F
        .byte   $51,$52,$61,$62 ; 8428  TL=$51 TR=$52 BL=$61 BR=$62
        .byte   $58,$73,$58,$83 ; 842C  TL=$58 TR=$73 BL=$58 BR=$83
        .byte   $71,$72,$81,$82 ; 8430  TL=$71 TR=$72 BL=$81 BR=$82
        .byte   $58,$70,$58,$84 ; 8434  TL=$58 TR=$70 BL=$58 BR=$84
        .byte   $51,$51,$61,$83 ; 8438  TL=$51 TR=$51 BL=$61 BR=$83
        .byte   $71,$70,$81,$84 ; 843C  TL=$71 TR=$70 BL=$81 BR=$84
        .byte   $51,$51,$61,$61 ; 8440  TL=$51 TR=$51 BL=$61 BR=$61
        .byte   $51,$20,$61,$20 ; 8444  TL=$51 TR=$20 BL=$61 BR=$20
        .byte   $71,$71,$81,$81 ; 8448  TL=$71 TR=$71 BL=$81 BR=$81
        .byte   $71,$20,$81,$20 ; 844C  TL=$71 TR=$20 BL=$81 BR=$20
        .byte   $21,$21,$11,$11 ; 8450  TL=$21 TR=$21 BL=$11 BR=$11
        .byte   $21,$11,$21,$21 ; 8454  TL=$21 TR=$11 BL=$21 BR=$21
        .byte   $11,$11,$21,$21 ; 8458  TL=$11 TR=$11 BL=$21 BR=$21
        .byte   $00,$00,$00,$66 ; 845C  TL=$00 TR=$00 BL=$00 BR=$66
        .byte   $58,$00,$67,$68 ; 8460  TL=$58 TR=$00 BL=$67 BR=$68
        .byte   $00,$3F,$11,$90 ; 8464  TL=$00 TR=$3F BL=$11 BR=$90
        .byte   $35,$00,$11,$11 ; 8468  TL=$35 TR=$00 BL=$11 BR=$11
        .byte   $00,$00,$00,$0F ; 846C  TL=$00 TR=$00 BL=$00 BR=$0F
        .byte   $11,$00,$22,$2B ; 8470  TL=$11 TR=$00 BL=$22 BR=$2B
        .byte   $00,$00,$2C,$2C ; 8474  TL=$00 TR=$00 BL=$2C BR=$2C
        .byte   $00,$20,$2C,$20 ; 8478  TL=$00 TR=$20 BL=$2C BR=$20
        .byte   $00,$00,$0F,$00 ; 847C  TL=$00 TR=$00 BL=$0F BR=$00
        .byte   $00,$11,$30,$20 ; 8480  TL=$00 TR=$11 BL=$30 BR=$20
        .byte   $11,$21,$21,$21 ; 8484  TL=$11 TR=$21 BL=$21 BR=$21
        .byte   $22,$3F,$22,$3F ; 8488  TL=$22 TR=$3F BL=$22 BR=$3F
        .byte   $20,$21,$20,$21 ; 848C  TL=$20 TR=$21 BL=$20 BR=$21
        .byte   $22,$29,$22,$29 ; 8490  TL=$22 TR=$29 BL=$22 BR=$29
        .byte   $28,$28,$0F,$0F ; 8494  TL=$28 TR=$28 BL=$0F BR=$0F
        .byte   $2C,$2C,$28,$28 ; 8498  TL=$2C TR=$2C BL=$28 BR=$28
        .byte   $28,$28,$28,$28 ; 849C  TL=$28 TR=$28 BL=$28 BR=$28
        .byte   $2A,$20,$2A,$20 ; 84A0  TL=$2A TR=$20 BL=$2A BR=$20
        .byte   $25,$25,$2C,$2C ; 84A4  TL=$25 TR=$25 BL=$2C BR=$2C
        .byte   $21,$24,$22,$2B ; 84A8  TL=$21 TR=$24 BL=$22 BR=$2B
        .byte   $25,$21,$30,$20 ; 84AC  TL=$25 TR=$21 BL=$30 BR=$20
        .byte   $22,$29,$21,$11 ; 84B0  TL=$22 TR=$29 BL=$21 BR=$11
        .byte   $2A,$20,$11,$21 ; 84B4  TL=$2A TR=$20 BL=$11 BR=$21
        .byte   $28,$28,$28,$0F ; 84B8  TL=$28 TR=$28 BL=$28 BR=$0F
        .byte   $28,$28,$0F,$2F ; 84BC  TL=$28 TR=$28 BL=$0F BR=$2F
        .byte   $28,$2E,$28,$28 ; 84C0  TL=$28 TR=$2E BL=$28 BR=$28
        .byte   $2C,$2D,$28,$28 ; 84C4  TL=$2C TR=$2D BL=$28 BR=$28
        .byte   $28,$23,$28,$2E ; 84C8  TL=$28 TR=$23 BL=$28 BR=$2E
        .byte   $25,$25,$2C,$30 ; 84CC  TL=$25 TR=$25 BL=$2C BR=$30
        .byte   $21,$21,$23,$21 ; 84D0  TL=$21 TR=$21 BL=$23 BR=$21
        .byte   $30,$20,$2A,$20 ; 84D4  TL=$30 TR=$20 BL=$2A BR=$20
        .byte   $28,$11,$11,$21 ; 84D8  TL=$28 TR=$11 BL=$11 BR=$21
        .byte   $21,$21,$31,$31 ; 84DC  TL=$21 TR=$21 BL=$31 BR=$31
        .byte   $22,$31,$22,$32 ; 84E0  TL=$22 TR=$31 BL=$22 BR=$32
        .byte   $33,$32,$3A,$37 ; 84E4  TL=$33 TR=$32 BL=$3A BR=$37
        .byte   $21,$21,$31,$21 ; 84E8  TL=$21 TR=$21 BL=$31 BR=$21
        .byte   $33,$31,$3A,$32 ; 84EC  TL=$33 TR=$31 BL=$3A BR=$32
        .byte   $22,$3F,$33,$3F ; 84F0  TL=$22 TR=$3F BL=$33 BR=$3F
        .byte   $20,$21,$23,$21 ; 84F4  TL=$20 TR=$21 BL=$23 BR=$21
        .byte   $22,$29,$22,$3F ; 84F8  TL=$22 TR=$29 BL=$22 BR=$3F
        .byte   $7C,$7D,$92,$6D ; 84FC  TL=$7C TR=$7D BL=$92 BR=$6D
        .byte   $0F,$90,$22,$3F ; 8500  TL=$0F TR=$90 BL=$22 BR=$3F
        .byte   $0F,$0F,$2C,$2C ; 8504  TL=$0F TR=$0F BL=$2C BR=$2C
        .byte   $2E,$2C,$28,$28 ; 8508  TL=$2E TR=$2C BL=$28 BR=$28
        .byte   $22,$37,$22,$36 ; 850C  TL=$22 TR=$37 BL=$22 BR=$36
        .byte   $22,$36,$22,$36 ; 8510  TL=$22 TR=$36 BL=$22 BR=$36
        .byte   $3A,$3F,$36,$3F ; 8514  TL=$3A TR=$3F BL=$36 BR=$3F
        .byte   $3A,$20,$36,$20 ; 8518  TL=$3A TR=$20 BL=$36 BR=$20
        .byte   $36,$3F,$36,$3F ; 851C  TL=$36 TR=$3F BL=$36 BR=$3F
        .byte   $36,$20,$36,$20 ; 8520  TL=$36 TR=$20 BL=$36 BR=$20
        .byte   $22,$3F,$22,$11 ; 8524  TL=$22 TR=$3F BL=$22 BR=$11
        .byte   $28,$28,$11,$11 ; 8528  TL=$28 TR=$28 BL=$11 BR=$11
        .byte   $28,$28,$11,$2F ; 852C  TL=$28 TR=$28 BL=$11 BR=$2F
        .byte   $21,$21,$21,$24 ; 8530  TL=$21 TR=$21 BL=$21 BR=$24
        .byte   $24,$29,$2C,$2D ; 8534  TL=$24 TR=$29 BL=$2C BR=$2D
        .byte   $0F,$0F,$22,$3A ; 8538  TL=$0F TR=$0F BL=$22 BR=$3A
        .byte   $38,$36,$39,$36 ; 853C  TL=$38 TR=$36 BL=$39 BR=$36
        .byte   $22,$3B,$21,$11 ; 8540  TL=$22 TR=$3B BL=$21 BR=$11
        .byte   $3B,$3B,$11,$11 ; 8544  TL=$3B TR=$3B BL=$11 BR=$11
        .byte   $11,$11,$20,$21 ; 8548  TL=$11 TR=$11 BL=$20 BR=$21
        .byte   $36,$3F,$3B,$3F ; 854C  TL=$36 TR=$3F BL=$3B BR=$3F
        .byte   $3B,$20,$11,$21 ; 8550  TL=$3B TR=$20 BL=$11 BR=$21
        .byte   $21,$21,$1F,$31 ; 8554  TL=$21 TR=$21 BL=$1F BR=$31
        .byte   $1F,$33,$1F,$3A ; 8558  TL=$1F TR=$33 BL=$1F BR=$3A
        .byte   $28,$28,$2A,$11 ; 855C  TL=$28 TR=$28 BL=$2A BR=$11
        .byte   $15,$15,$2B,$2C ; 8560  TL=$15 TR=$15 BL=$2B BR=$2C
        .byte   $17,$2B,$17,$29 ; 8564  TL=$17 TR=$2B BL=$17 BR=$29
        .byte   $2D,$28,$28,$28 ; 8568  TL=$2D TR=$28 BL=$28 BR=$28
        .byte   $12,$15,$14,$2B ; 856C  TL=$12 TR=$15 BL=$14 BR=$2B
        .byte   $15,$15,$2C,$2C ; 8570  TL=$15 TR=$15 BL=$2C BR=$2C
        .byte   $2E,$16,$2A,$16 ; 8574  TL=$2E TR=$16 BL=$2A BR=$16
        .byte   $1F,$36,$1F,$36 ; 8578  TL=$1F TR=$36 BL=$1F BR=$36
        .byte   $36,$11,$36,$20 ; 857C  TL=$36 TR=$11 BL=$36 BR=$20
        .byte   $36,$20,$3B,$20 ; 8580  TL=$36 TR=$20 BL=$3B BR=$20
        .byte   $21,$21,$27,$27 ; 8584  TL=$21 TR=$21 BL=$27 BR=$27
        .byte   $17,$29,$17,$29 ; 8588  TL=$17 TR=$29 BL=$17 BR=$29
        .byte   $0F,$0F,$30,$1B ; 858C  TL=$0F TR=$0F BL=$30 BR=$1B
        .byte   $21,$11,$27,$27 ; 8590  TL=$21 TR=$11 BL=$27 BR=$27
        .byte   $11,$11,$27,$27 ; 8594  TL=$11 TR=$11 BL=$27 BR=$27
        .byte   $1F,$36,$1F,$3B ; 8598  TL=$1F TR=$36 BL=$1F BR=$3B
        .byte   $00,$23,$00,$00 ; 859C  TL=$00 TR=$23 BL=$00 BR=$00
        .byte   $11,$2F,$27,$29 ; 85A0  TL=$11 TR=$2F BL=$27 BR=$29
        .byte   $28,$0F,$28,$2E ; 85A4  TL=$28 TR=$0F BL=$28 BR=$2E
        .byte   $0F,$2F,$2C,$2D ; 85A8  TL=$0F TR=$2F BL=$2C BR=$2D
        .byte   $86,$86,$78,$78 ; 85AC  TL=$86 TR=$86 BL=$78 BR=$78
        .byte   $17,$29,$0F,$0F ; 85B0  TL=$17 TR=$29 BL=$0F BR=$0F
        .byte   $2A,$16,$2A,$16 ; 85B4  TL=$2A TR=$16 BL=$2A BR=$16
        .byte   $86,$85,$78,$77 ; 85B8  TL=$86 TR=$85 BL=$78 BR=$77
        .byte   $85,$85,$77,$77 ; 85BC  TL=$85 TR=$85 BL=$77 BR=$77
        .byte   $89,$77,$89,$77 ; 85C0  TL=$89 TR=$77 BL=$89 BR=$77
        .byte   $77,$77,$77,$77 ; 85C4  TL=$77 TR=$77 BL=$77 BR=$77
        .byte   $98,$98,$77,$78 ; 85C8  TL=$98 TR=$98 BL=$77 BR=$78
        .byte   $77,$98,$98,$98 ; 85CC  TL=$77 TR=$98 BL=$98 BR=$98
        .byte   $77,$87,$77,$87 ; 85D0  TL=$77 TR=$87 BL=$77 BR=$87
        .byte   $86,$98,$78,$78 ; 85D4  TL=$86 TR=$98 BL=$78 BR=$78
        .byte   $98,$98,$78,$78 ; 85D8  TL=$98 TR=$98 BL=$78 BR=$78
        .byte   $88,$89,$88,$89 ; 85DC  TL=$88 TR=$89 BL=$88 BR=$89
        .byte   $98,$98,$77,$77 ; 85E0  TL=$98 TR=$98 BL=$77 BR=$77
        .byte   $85,$86,$77,$78 ; 85E4  TL=$85 TR=$86 BL=$77 BR=$78
        .byte   $86,$99,$78,$99 ; 85E8  TL=$86 TR=$99 BL=$78 BR=$99
        .byte   $85,$85,$77,$78 ; 85EC  TL=$85 TR=$85 BL=$77 BR=$78
        .byte   $89,$99,$89,$99 ; 85F0  TL=$89 TR=$99 BL=$89 BR=$99
        .byte   $1C,$2B,$17,$29 ; 85F4  TL=$1C TR=$2B BL=$17 BR=$29
        .byte   $93,$77,$89,$77 ; 85F8  TL=$93 TR=$77 BL=$89 BR=$77
        .byte   $89,$93,$88,$88 ; 85FC  TL=$89 TR=$93 BL=$88 BR=$88
        .byte   $93,$93,$88,$89 ; 8600  TL=$93 TR=$93 BL=$88 BR=$89
        .byte   $98,$77,$77,$77 ; 8604  TL=$98 TR=$77 BL=$77 BR=$77
        .byte   $77,$98,$77,$77 ; 8608  TL=$77 TR=$98 BL=$77 BR=$77
        .byte   $98,$77,$77,$98 ; 860C  TL=$98 TR=$77 BL=$77 BR=$98
        .byte   $77,$77,$93,$93 ; 8610  TL=$77 TR=$77 BL=$93 BR=$93
        .byte   $77,$77,$77,$93 ; 8614  TL=$77 TR=$77 BL=$77 BR=$93
        .byte   $77,$87,$93,$87 ; 8618  TL=$77 TR=$87 BL=$93 BR=$87
        .byte   $89,$77,$89,$98 ; 861C  TL=$89 TR=$77 BL=$89 BR=$98
        .byte   $77,$77,$98,$98 ; 8620  TL=$77 TR=$77 BL=$98 BR=$98
        .byte   $77,$95,$77,$77 ; 8624  TL=$77 TR=$95 BL=$77 BR=$77
        .byte   $98,$77,$93,$93 ; 8628  TL=$98 TR=$77 BL=$93 BR=$93
        .byte   $97,$97,$77,$77 ; 862C  TL=$97 TR=$97 BL=$77 BR=$77
        .byte   $88,$88,$95,$88 ; 8630  TL=$88 TR=$88 BL=$95 BR=$88
        .byte   $89,$77,$88,$88 ; 8634  TL=$89 TR=$77 BL=$88 BR=$88
        .byte   $77,$77,$89,$77 ; 8638  TL=$77 TR=$77 BL=$89 BR=$77
        .byte   $77,$77,$77,$87 ; 863C  TL=$77 TR=$77 BL=$77 BR=$87
        .byte   $77,$77,$88,$88 ; 8640  TL=$77 TR=$77 BL=$88 BR=$88
        .byte   $88,$88,$88,$96 ; 8644  TL=$88 TR=$88 BL=$88 BR=$96
        .byte   $96,$77,$77,$77 ; 8648  TL=$96 TR=$77 BL=$77 BR=$77
        .byte   $88,$93,$88,$88 ; 864C  TL=$88 TR=$93 BL=$88 BR=$88
        .byte   $6C,$28,$7B,$28 ; 8650  TL=$6C TR=$28 BL=$7B BR=$28
        .byte   $10,$28,$12,$10 ; 8654  TL=$10 TR=$28 BL=$12 BR=$10
        .byte   $89,$77,$89,$93 ; 8658  TL=$89 TR=$77 BL=$89 BR=$93
        .byte   $87,$88,$87,$88 ; 865C  TL=$87 TR=$88 BL=$87 BR=$88
        .byte   $96,$99,$77,$99 ; 8660  TL=$96 TR=$99 BL=$77 BR=$99
        .byte   $77,$99,$93,$99 ; 8664  TL=$77 TR=$99 BL=$93 BR=$99
; 203 ChunkDesc records — the level's Chunk definitions, each a 2×2 quad of Structures. These are
; the indices TankLvl1_MapData's 32×32 grid holds.
TankLvl1_ChunkDescTable:
        .byte   $00,$01,$01,$01 ; 8668  TL=$00 TR=$01 BL=$01 BR=$01
        .byte   $01,$01,$01,$01 ; 866C  TL=$01 TR=$01 BL=$01 BR=$01
        .byte   $01,$00,$01,$01 ; 8670  TL=$01 TR=$00 BL=$01 BR=$01
        .byte   $00,$00,$01,$01 ; 8674  TL=$00 TR=$00 BL=$01 BR=$01
        .byte   $02,$01,$01,$02 ; 8678  TL=$02 TR=$01 BL=$01 BR=$02
        .byte   $03,$04,$05,$06 ; 867C  TL=$03 TR=$04 BL=$05 BR=$06
        .byte   $04,$04,$06,$06 ; 8680  TL=$04 TR=$04 BL=$06 BR=$06
        .byte   $04,$07,$06,$08 ; 8684  TL=$04 TR=$07 BL=$06 BR=$08
        .byte   $05,$06,$05,$06 ; 8688  TL=$05 TR=$06 BL=$05 BR=$06
        .byte   $06,$06,$06,$06 ; 868C  TL=$06 TR=$06 BL=$06 BR=$06
        .byte   $06,$06,$09,$0A ; 8690  TL=$06 TR=$06 BL=$09 BR=$0A
        .byte   $06,$06,$0B,$06 ; 8694  TL=$06 TR=$06 BL=$0B BR=$06
        .byte   $06,$08,$06,$08 ; 8698  TL=$06 TR=$08 BL=$06 BR=$08
        .byte   $0C,$0D,$0E,$0F ; 869C  TL=$0C TR=$0D BL=$0E BR=$0F
        .byte   $10,$11,$12,$0F ; 86A0  TL=$10 TR=$11 BL=$12 BR=$0F
        .byte   $13,$14,$15,$16 ; 86A4  TL=$13 TR=$14 BL=$15 BR=$16
        .byte   $0E,$15,$17,$18 ; 86A8  TL=$0E TR=$15 BL=$17 BR=$18
        .byte   $15,$19,$1A,$15 ; 86AC  TL=$15 TR=$19 BL=$1A BR=$15
        .byte   $18,$1B,$15,$1C ; 86B0  TL=$18 TR=$1B BL=$15 BR=$1C
        .byte   $0E,$15,$0E,$15 ; 86B4  TL=$0E TR=$15 BL=$0E BR=$15
        .byte   $1D,$1E,$1F,$20 ; 86B8  TL=$1D TR=$1E BL=$1F BR=$20
        .byte   $15,$1C,$15,$21 ; 86BC  TL=$15 TR=$1C BL=$15 BR=$21
        .byte   $05,$06,$22,$06 ; 86C0  TL=$05 TR=$06 BL=$22 BR=$06
        .byte   $06,$06,$23,$24 ; 86C4  TL=$06 TR=$06 BL=$23 BR=$24
        .byte   $25,$26,$05,$06 ; 86C8  TL=$25 TR=$26 BL=$05 BR=$06
        .byte   $15,$1C,$15,$1C ; 86CC  TL=$15 TR=$1C BL=$15 BR=$1C
        .byte   $0E,$27,$28,$29 ; 86D0  TL=$0E TR=$27 BL=$28 BR=$29
        .byte   $2A,$2B,$2C,$2D ; 86D4  TL=$2A TR=$2B BL=$2C BR=$2D
        .byte   $27,$2E,$29,$2F ; 86D8  TL=$27 TR=$2E BL=$29 BR=$2F
        .byte   $06,$06,$30,$24 ; 86DC  TL=$06 TR=$06 BL=$30 BR=$24
        .byte   $06,$06,$31,$32 ; 86E0  TL=$06 TR=$06 BL=$31 BR=$32
        .byte   $25,$26,$33,$34 ; 86E4  TL=$25 TR=$26 BL=$33 BR=$34
        .byte   $06,$06,$35,$34 ; 86E8  TL=$06 TR=$06 BL=$35 BR=$34
        .byte   $06,$08,$35,$36 ; 86EC  TL=$06 TR=$08 BL=$35 BR=$36
        .byte   $0E,$15,$22,$15 ; 86F0  TL=$0E TR=$15 BL=$22 BR=$15
        .byte   $0E,$37,$0E,$37 ; 86F4  TL=$0E TR=$37 BL=$0E BR=$37
        .byte   $37,$37,$37,$37 ; 86F8  TL=$37 TR=$37 BL=$37 BR=$37
        .byte   $37,$37,$38,$39 ; 86FC  TL=$37 TR=$37 BL=$38 BR=$39
        .byte   $37,$37,$37,$3A ; 8700  TL=$37 TR=$37 BL=$37 BR=$3A
        .byte   $37,$37,$3B,$3C ; 8704  TL=$37 TR=$37 BL=$3B BR=$3C
        .byte   $37,$37,$3B,$3D ; 8708  TL=$37 TR=$37 BL=$3B BR=$3D
        .byte   $37,$37,$37,$3E ; 870C  TL=$37 TR=$37 BL=$37 BR=$3E
        .byte   $37,$3F,$37,$21 ; 8710  TL=$37 TR=$3F BL=$37 BR=$21
        .byte   $17,$18,$0E,$15 ; 8714  TL=$17 TR=$18 BL=$0E BR=$15
        .byte   $1A,$15,$15,$15 ; 8718  TL=$1A TR=$15 BL=$15 BR=$15
        .byte   $19,$1B,$15,$1C ; 871C  TL=$19 TR=$1B BL=$15 BR=$1C
        .byte   $40,$29,$01,$01 ; 8720  TL=$40 TR=$29 BL=$01 BR=$01
        .byte   $29,$2D,$01,$41 ; 8724  TL=$29 TR=$2D BL=$01 BR=$41
        .byte   $3B,$42,$43,$43 ; 8728  TL=$3B TR=$42 BL=$43 BR=$43
        .byte   $44,$29,$43,$43 ; 872C  TL=$44 TR=$29 BL=$43 BR=$43
        .byte   $37,$45,$46,$47 ; 8730  TL=$37 TR=$45 BL=$46 BR=$47
        .byte   $37,$3F,$46,$48 ; 8734  TL=$37 TR=$3F BL=$46 BR=$48
        .byte   $01,$02,$43,$43 ; 8738  TL=$01 TR=$02 BL=$43 BR=$43
        .byte   $01,$49,$43,$43 ; 873C  TL=$01 TR=$49 BL=$43 BR=$43
        .byte   $3C,$3B,$43,$4A ; 8740  TL=$3C TR=$3B BL=$43 BR=$4A
        .byte   $44,$2D,$4B,$4A ; 8744  TL=$44 TR=$2D BL=$4B BR=$4A
        .byte   $37,$37,$46,$46 ; 8748  TL=$37 TR=$37 BL=$46 BR=$46
        .byte   $28,$0E,$43,$4C ; 874C  TL=$28 TR=$0E BL=$43 BR=$4C
        .byte   $3E,$37,$46,$46 ; 8750  TL=$3E TR=$37 BL=$46 BR=$46
        .byte   $2C,$29,$4D,$01 ; 8754  TL=$2C TR=$29 BL=$4D BR=$01
        .byte   $01,$01,$4E,$01 ; 8758  TL=$01 TR=$01 BL=$4E BR=$01
        .byte   $01,$01,$01,$4E ; 875C  TL=$01 TR=$01 BL=$01 BR=$4E
        .byte   $01,$01,$4F,$50 ; 8760  TL=$01 TR=$01 BL=$4F BR=$50
        .byte   $01,$41,$50,$50 ; 8764  TL=$01 TR=$41 BL=$50 BR=$50
        .byte   $4E,$4E,$50,$50 ; 8768  TL=$4E TR=$4E BL=$50 BR=$50
        .byte   $4D,$01,$50,$51 ; 876C  TL=$4D TR=$01 BL=$50 BR=$51
        .byte   $4E,$4E,$4E,$4E ; 8770  TL=$4E TR=$4E BL=$4E BR=$4E
        .byte   $4E,$01,$4E,$02 ; 8774  TL=$4E TR=$01 BL=$4E BR=$02
        .byte   $01,$4E,$01,$4E ; 8778  TL=$01 TR=$4E BL=$01 BR=$4E
        .byte   $52,$53,$54,$55 ; 877C  TL=$52 TR=$53 BL=$54 BR=$55
        .byte   $56,$57,$58,$59 ; 8780  TL=$56 TR=$57 BL=$58 BR=$59
        .byte   $5A,$5B,$5C,$37 ; 8784  TL=$5A TR=$5B BL=$5C BR=$37
        .byte   $5A,$37,$5C,$37 ; 8788  TL=$5A TR=$37 BL=$5C BR=$37
        .byte   $37,$5D,$37,$5D ; 878C  TL=$37 TR=$5D BL=$37 BR=$5D
        .byte   $52,$5B,$52,$37 ; 8790  TL=$52 TR=$5B BL=$52 BR=$37
        .byte   $55,$53,$5B,$55 ; 8794  TL=$55 TR=$53 BL=$5B BR=$55
        .byte   $5E,$57,$5F,$59 ; 8798  TL=$5E TR=$57 BL=$5F BR=$59
        .byte   $55,$37,$37,$37 ; 879C  TL=$55 TR=$37 BL=$37 BR=$37
        .byte   $37,$5B,$37,$37 ; 87A0  TL=$37 TR=$5B BL=$37 BR=$37
        .byte   $5A,$5D,$5C,$5D ; 87A4  TL=$5A TR=$5D BL=$5C BR=$5D
        .byte   $4E,$01,$4E,$01 ; 87A8  TL=$4E TR=$01 BL=$4E BR=$01
        .byte   $60,$61,$62,$63 ; 87AC  TL=$60 TR=$61 BL=$62 BR=$63
        .byte   $64,$65,$66,$67 ; 87B0  TL=$64 TR=$65 BL=$66 BR=$67
        .byte   $64,$68,$66,$69 ; 87B4  TL=$64 TR=$68 BL=$66 BR=$69
        .byte   $6A,$6B,$6C,$6D ; 87B8  TL=$6A TR=$6B BL=$6C BR=$6D
        .byte   $6A,$6A,$6C,$6C ; 87BC  TL=$6A TR=$6A BL=$6C BR=$6C
        .byte   $27,$27,$29,$29 ; 87C0  TL=$27 TR=$27 BL=$29 BR=$29
        .byte   $02,$6E,$01,$4E ; 87C4  TL=$02 TR=$6E BL=$01 BR=$4E
        .byte   $52,$39,$6F,$70 ; 87C8  TL=$52 TR=$39 BL=$6F BR=$70
        .byte   $71,$72,$70,$70 ; 87CC  TL=$71 TR=$72 BL=$70 BR=$70
        .byte   $37,$37,$73,$74 ; 87D0  TL=$37 TR=$37 BL=$73 BR=$74
        .byte   $37,$75,$76,$77 ; 87D4  TL=$37 TR=$75 BL=$76 BR=$77
        .byte   $37,$5D,$77,$78 ; 87D8  TL=$37 TR=$5D BL=$77 BR=$78
        .byte   $38,$39,$70,$70 ; 87DC  TL=$38 TR=$39 BL=$70 BR=$70
        .byte   $79,$38,$77,$7A ; 87E0  TL=$79 TR=$38 BL=$77 BR=$7A
        .byte   $37,$37,$77,$77 ; 87E4  TL=$37 TR=$37 BL=$77 BR=$77
        .byte   $37,$5D,$70,$7B ; 87E8  TL=$37 TR=$5D BL=$70 BR=$7B
        .byte   $4E,$6E,$70,$4E ; 87EC  TL=$4E TR=$6E BL=$70 BR=$4E
        .byte   $7C,$7D,$7C,$7D ; 87F0  TL=$7C TR=$7D BL=$7C BR=$7D
        .byte   $7E,$7F,$7E,$80 ; 87F4  TL=$7E TR=$7F BL=$7E BR=$80
        .byte   $81,$82,$7F,$82 ; 87F8  TL=$81 TR=$82 BL=$7F BR=$82
        .byte   $7E,$81,$7E,$81 ; 87FC  TL=$7E TR=$81 BL=$7E BR=$81
        .byte   $83,$83,$81,$81 ; 8800  TL=$83 TR=$83 BL=$81 BR=$81
        .byte   $81,$82,$81,$82 ; 8804  TL=$81 TR=$82 BL=$81 BR=$82
        .byte   $84,$85,$86,$87 ; 8808  TL=$84 TR=$85 BL=$86 BR=$87
        .byte   $88,$89,$8A,$8B ; 880C  TL=$88 TR=$89 BL=$8A BR=$8B
        .byte   $81,$8C,$81,$81 ; 8810  TL=$81 TR=$8C BL=$81 BR=$81
        .byte   $8D,$8E,$81,$8F ; 8814  TL=$8D TR=$8E BL=$81 BR=$8F
        .byte   $81,$82,$90,$7B ; 8818  TL=$81 TR=$82 BL=$90 BR=$7B
        .byte   $4E,$91,$92,$93 ; 881C  TL=$4E TR=$91 BL=$92 BR=$93
        .byte   $91,$94,$93,$95 ; 8820  TL=$91 TR=$94 BL=$93 BR=$95
        .byte   $7C,$7D,$96,$97 ; 8824  TL=$7C TR=$7D BL=$96 BR=$97
        .byte   $7E,$81,$7E,$7F ; 8828  TL=$7E TR=$81 BL=$7E BR=$7F
        .byte   $80,$82,$81,$82 ; 882C  TL=$80 TR=$82 BL=$81 BR=$82
        .byte   $98,$99,$9A,$9B ; 8830  TL=$98 TR=$99 BL=$9A BR=$9B
        .byte   $81,$81,$81,$81 ; 8834  TL=$81 TR=$81 BL=$81 BR=$81
        .byte   $7F,$7F,$9C,$80 ; 8838  TL=$7F TR=$7F BL=$9C BR=$80
        .byte   $9D,$15,$9E,$15 ; 883C  TL=$9D TR=$15 BL=$9E BR=$15
        .byte   $15,$15,$15,$15 ; 8840  TL=$15 TR=$15 BL=$15 BR=$15
        .byte   $9F,$A0,$A1,$A2 ; 8844  TL=$9F TR=$A0 BL=$A1 BR=$A2
        .byte   $7E,$80,$7E,$81 ; 8848  TL=$7E TR=$80 BL=$7E BR=$81
        .byte   $81,$8C,$7F,$81 ; 884C  TL=$81 TR=$8C BL=$7F BR=$81
        .byte   $7C,$81,$A3,$A4 ; 8850  TL=$7C TR=$81 BL=$A3 BR=$A4
        .byte   $81,$81,$A4,$A4 ; 8854  TL=$81 TR=$81 BL=$A4 BR=$A4
        .byte   $81,$81,$A5,$81 ; 8858  TL=$81 TR=$81 BL=$A5 BR=$81
        .byte   $A6,$83,$7E,$81 ; 885C  TL=$A6 TR=$83 BL=$7E BR=$81
        .byte   $A7,$81,$81,$81 ; 8860  TL=$A7 TR=$81 BL=$81 BR=$81
        .byte   $A8,$A9,$AA,$AB ; 8864  TL=$A8 TR=$A9 BL=$AA BR=$AB
        .byte   $27,$99,$AC,$70 ; 8868  TL=$27 TR=$99 BL=$AC BR=$70
        .byte   $AD,$AE,$70,$4E ; 886C  TL=$AD TR=$AE BL=$70 BR=$4E
        .byte   $7E,$99,$70,$70 ; 8870  TL=$7E TR=$99 BL=$70 BR=$70
        .byte   $81,$81,$70,$70 ; 8874  TL=$81 TR=$81 BL=$70 BR=$70
        .byte   $AF,$91,$B0,$93 ; 8878  TL=$AF TR=$91 BL=$B0 BR=$93
        .byte   $81,$81,$81,$B1 ; 887C  TL=$81 TR=$81 BL=$81 BR=$B1
        .byte   $89,$81,$8B,$81 ; 8880  TL=$89 TR=$81 BL=$8B BR=$81
        .byte   $0C,$B2,$B3,$B4 ; 8884  TL=$0C TR=$B2 BL=$B3 BR=$B4
        .byte   $10,$B5,$9C,$8B ; 8888  TL=$10 TR=$B5 BL=$9C BR=$8B
        .byte   $B6,$14,$81,$B7 ; 888C  TL=$B6 TR=$14 BL=$81 BR=$B7
        .byte   $9E,$15,$9E,$15 ; 8890  TL=$9E TR=$15 BL=$9E BR=$15
        .byte   $B8,$15,$B8,$15 ; 8894  TL=$B8 TR=$15 BL=$B8 BR=$15
        .byte   $15,$B9,$15,$BA ; 8898  TL=$15 TR=$B9 BL=$15 BR=$BA
        .byte   $4E,$01,$BB,$01 ; 889C  TL=$4E TR=$01 BL=$BB BR=$01
        .byte   $BC,$81,$BC,$81 ; 88A0  TL=$BC TR=$81 BL=$BC BR=$81
        .byte   $81,$21,$9B,$BD ; 88A4  TL=$81 TR=$21 BL=$9B BR=$BD
        .byte   $01,$4E,$01,$BB ; 88A8  TL=$01 TR=$4E BL=$01 BR=$BB
        .byte   $54,$27,$BE,$BF ; 88AC  TL=$54 TR=$27 BL=$BE BR=$BF
        .byte   $C0,$27,$BF,$BF ; 88B0  TL=$C0 TR=$27 BL=$BF BR=$BF
        .byte   $27,$C1,$BF,$BF ; 88B4  TL=$27 TR=$C1 BL=$BF BR=$BF
        .byte   $83,$83,$BF,$BF ; 88B8  TL=$83 TR=$83 BL=$BF BR=$BF
        .byte   $A7,$81,$BF,$BF ; 88BC  TL=$A7 TR=$81 BL=$BF BR=$BF
        .byte   $81,$81,$C2,$81 ; 88C0  TL=$81 TR=$81 BL=$C2 BR=$81
        .byte   $81,$81,$BF,$BF ; 88C4  TL=$81 TR=$81 BL=$BF BR=$BF
        .byte   $4E,$4E,$BB,$BB ; 88C8  TL=$4E TR=$4E BL=$BB BR=$BB
        .byte   $81,$C3,$C2,$81 ; 88CC  TL=$81 TR=$C3 BL=$C2 BR=$81
        .byte   $9B,$9B,$81,$81 ; 88D0  TL=$9B TR=$9B BL=$81 BR=$81
        .byte   $C4,$81,$81,$81 ; 88D4  TL=$C4 TR=$81 BL=$81 BR=$81
        .byte   $C5,$01,$00,$01 ; 88D8  TL=$C5 TR=$01 BL=$00 BR=$01
        .byte   $BC,$81,$C6,$89 ; 88DC  TL=$BC TR=$81 BL=$C6 BR=$89
        .byte   $81,$C7,$81,$C7 ; 88E0  TL=$81 TR=$C7 BL=$81 BR=$C7
        .byte   $01,$C5,$01,$00 ; 88E4  TL=$01 TR=$C5 BL=$01 BR=$00
        .byte   $C5,$C5,$00,$00 ; 88E8  TL=$C5 TR=$C5 BL=$00 BR=$00
        .byte   $C8,$C9,$CA,$CB ; 88EC  TL=$C8 TR=$C9 BL=$CA BR=$CB
        .byte   $C9,$C9,$CB,$CB ; 88F0  TL=$C9 TR=$C9 BL=$CB BR=$CB
        .byte   $C9,$CC,$CD,$CE ; 88F4  TL=$C9 TR=$CC BL=$CD BR=$CE
        .byte   $CF,$D0,$00,$D1 ; 88F8  TL=$CF TR=$D0 BL=$00 BR=$D1
        .byte   $D2,$C9,$CB,$D2 ; 88FC  TL=$D2 TR=$C9 BL=$CB BR=$D2
        .byte   $C9,$D3,$CB,$CE ; 8900  TL=$C9 TR=$D3 BL=$CB BR=$CE
        .byte   $D4,$D5,$D6,$CE ; 8904  TL=$D4 TR=$D5 BL=$D6 BR=$CE
        .byte   $00,$01,$00,$01 ; 8908  TL=$00 TR=$01 BL=$00 BR=$01
        .byte   $D7,$8B,$BC,$81 ; 890C  TL=$D7 TR=$8B BL=$BC BR=$81
        .byte   $01,$00,$01,$00 ; 8910  TL=$01 TR=$00 BL=$01 BR=$00
        .byte   $00,$00,$00,$00 ; 8914  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $CA,$CB,$CA,$CB ; 8918  TL=$CA TR=$CB BL=$CA BR=$CB
        .byte   $CB,$CD,$CD,$CB ; 891C  TL=$CB TR=$CD BL=$CD BR=$CB
        .byte   $CB,$CE,$CB,$CE ; 8920  TL=$CB TR=$CE BL=$CB BR=$CE
        .byte   $D8,$CB,$D9,$DA ; 8924  TL=$D8 TR=$CB BL=$D9 BR=$DA
        .byte   $D2,$CB,$CB,$D2 ; 8928  TL=$D2 TR=$CB BL=$CB BR=$D2
        .byte   $CB,$CB,$DB,$DC ; 892C  TL=$CB TR=$CB BL=$DB BR=$DC
        .byte   $CB,$CB,$DD,$CB ; 8930  TL=$CB TR=$CB BL=$DD BR=$CB
        .byte   $CB,$CB,$DE,$DE ; 8934  TL=$CB TR=$CB BL=$DE BR=$DE
        .byte   $DF,$E0,$E0,$00 ; 8938  TL=$DF TR=$E0 BL=$E0 BR=$00
        .byte   $D6,$CE,$D6,$CE ; 893C  TL=$D6 TR=$CE BL=$D6 BR=$CE
        .byte   $9B,$BD,$81,$C7 ; 8940  TL=$9B TR=$BD BL=$81 BR=$C7
        .byte   $E1,$E2,$CA,$CB ; 8944  TL=$E1 TR=$E2 BL=$CA BR=$CB
        .byte   $E2,$E2,$CB,$CB ; 8948  TL=$E2 TR=$E2 BL=$CB BR=$CB
        .byte   $CB,$E3,$E4,$DE ; 894C  TL=$CB TR=$E3 BL=$E4 BR=$DE
        .byte   $E5,$E6,$CB,$CE ; 8950  TL=$E5 TR=$E6 BL=$CB BR=$CE
        .byte   $D8,$CB,$E7,$E8 ; 8954  TL=$D8 TR=$CB BL=$E7 BR=$E8
        .byte   $E2,$E9,$CB,$CE ; 8958  TL=$E2 TR=$E9 BL=$CB BR=$CE
        .byte   $EA,$EA,$00,$00 ; 895C  TL=$EA TR=$EA BL=$00 BR=$00
        .byte   $EB,$E5,$CA,$CB ; 8960  TL=$EB TR=$E5 BL=$CA BR=$CB
        .byte   $EC,$CB,$CB,$CB ; 8964  TL=$EC TR=$CB BL=$CB BR=$CB
        .byte   $CB,$CD,$CD,$DE ; 8968  TL=$CB TR=$CD BL=$CD BR=$DE
        .byte   $D8,$E3,$D9,$DA ; 896C  TL=$D8 TR=$E3 BL=$D9 BR=$DA
        .byte   $00,$ED,$00,$00 ; 8970  TL=$00 TR=$ED BL=$00 BR=$00
        .byte   $2A,$EE,$2C,$EF ; 8974  TL=$2A TR=$EE BL=$2C BR=$EF
        .byte   $EB,$E5,$F0,$99 ; 8978  TL=$EB TR=$E5 BL=$F0 BR=$99
        .byte   $E5,$E5,$DE,$DE ; 897C  TL=$E5 TR=$E5 BL=$DE BR=$DE
        .byte   $EC,$CB,$DE,$DE ; 8980  TL=$EC TR=$CB BL=$DE BR=$DE
        .byte   $CB,$E3,$DE,$DE ; 8984  TL=$CB TR=$E3 BL=$DE BR=$DE
        .byte   $DE,$F1,$F1,$00 ; 8988  TL=$DE TR=$F1 BL=$F1 BR=$00
        .byte   $E5,$E6,$DE,$E0 ; 898C  TL=$E5 TR=$E6 BL=$DE BR=$E0
        .byte   $F2,$CE,$F3,$E0 ; 8990  TL=$F2 TR=$CE BL=$F3 BR=$E0
; 32×32 chunk-index grid = 1024 bytes
TankLvl1_MapData:
        .byte   $00,$01,$01,$01,$02,$03,$03,$03 ; 8994
        .byte   $03,$03,$03,$03,$03,$03,$03,$03 ; 899C
        .byte   $03,$03,$03,$03,$03,$03,$03,$03 ; 89A4
        .byte   $03,$03,$03,$03,$03,$03,$03,$03 ; 89AC
        .byte   $04,$01,$01,$01,$04,$05,$06,$06 ; 89B4
        .byte   $06,$06,$06,$06,$06,$06,$06,$06 ; 89BC
        .byte   $06,$06,$06,$06,$06,$06,$06,$06 ; 89C4
        .byte   $06,$06,$06,$06,$06,$06,$06,$07 ; 89CC
        .byte   $01,$01,$04,$01,$01,$08,$09,$09 ; 89D4
        .byte   $09,$0A,$0B,$0A,$0B,$09,$09,$0A ; 89DC
        .byte   $0B,$09,$09,$0A,$0B,$09,$09,$09 ; 89E4
        .byte   $0A,$0B,$09,$09,$09,$09,$09,$0C ; 89EC
        .byte   $04,$0D,$0E,$0F,$04,$08,$0A,$0B ; 89F4
        .byte   $09,$09,$09,$09,$09,$09,$09,$09 ; 89FC
        .byte   $09,$09,$09,$09,$09,$09,$09,$09 ; 8A04
        .byte   $09,$09,$09,$09,$09,$09,$09,$0C ; 8A0C
        .byte   $01,$10,$11,$12,$01,$08,$09,$09 ; 8A14
        .byte   $09,$09,$09,$09,$09,$09,$09,$09 ; 8A1C
        .byte   $09,$0A,$0B,$09,$09,$09,$09,$09 ; 8A24
        .byte   $09,$09,$09,$09,$0A,$0B,$09,$0C ; 8A2C
        .byte   $01,$13,$14,$15,$01,$16,$09,$17 ; 8A34
        .byte   $09,$09,$09,$09,$09,$0A,$0B,$09 ; 8A3C
        .byte   $09,$09,$09,$17,$09,$0A,$0B,$09 ; 8A44
        .byte   $09,$09,$09,$09,$09,$09,$09,$0C ; 8A4C
        .byte   $04,$10,$11,$12,$01,$18,$09,$09 ; 8A54
        .byte   $09,$09,$09,$17,$09,$09,$09,$09 ; 8A5C
        .byte   $09,$09,$09,$09,$09,$09,$09,$09 ; 8A64
        .byte   $09,$0A,$0B,$09,$09,$09,$09,$0C ; 8A6C
        .byte   $01,$13,$14,$19,$04,$08,$09,$09 ; 8A74
        .byte   $17,$09,$09,$09,$09,$17,$09,$09 ; 8A7C
        .byte   $17,$09,$09,$09,$09,$09,$09,$09 ; 8A84
        .byte   $09,$09,$09,$09,$09,$09,$09,$0C ; 8A8C
        .byte   $01,$10,$11,$12,$04,$08,$17,$09 ; 8A94
        .byte   $09,$09,$09,$09,$09,$09,$09,$09 ; 8A9C
        .byte   $09,$09,$09,$09,$09,$09,$09,$09 ; 8AA4
        .byte   $17,$09,$09,$09,$09,$17,$09,$0C ; 8AAC
        .byte   $04,$13,$14,$19,$01,$18,$09,$09 ; 8AB4
        .byte   $09,$09,$09,$09,$09,$09,$09,$09 ; 8ABC
        .byte   $09,$17,$09,$09,$09,$17,$09,$09 ; 8AC4
        .byte   $09,$09,$09,$09,$09,$09,$09,$0C ; 8ACC
        .byte   $01,$10,$11,$12,$01,$08,$09,$09 ; 8AD4
        .byte   $17,$09,$09,$09,$17,$09,$09,$17 ; 8ADC
        .byte   $09,$09,$09,$17,$09,$09,$09,$17 ; 8AE4
        .byte   $09,$17,$09,$09,$09,$09,$09,$0C ; 8AEC
        .byte   $01,$1A,$1B,$1C,$04,$18,$1D,$09 ; 8AF4
        .byte   $09,$17,$09,$09,$09,$17,$09,$09 ; 8AFC
        .byte   $09,$17,$09,$09,$17,$09,$17,$09 ; 8B04
        .byte   $09,$09,$09,$17,$09,$09,$17,$0C ; 8B0C
        .byte   $01,$01,$04,$01,$01,$08,$1E,$1D ; 8B14
        .byte   $09,$1E,$09,$1D,$09,$09,$1E,$1D ; 8B1C
        .byte   $1D,$1E,$1D,$09,$1E,$1D,$09,$09 ; 8B24
        .byte   $1D,$1E,$09,$09,$1E,$1D,$1E,$0C ; 8B2C
        .byte   $01,$0D,$0E,$0F,$04,$1F,$20,$20 ; 8B34
        .byte   $20,$20,$20,$20,$20,$20,$20,$20 ; 8B3C
        .byte   $20,$20,$20,$20,$20,$20,$20,$20 ; 8B44
        .byte   $20,$20,$20,$20,$20,$20,$20,$21 ; 8B4C
        .byte   $04,$22,$14,$19,$01,$23,$24,$24 ; 8B54
        .byte   $24,$24,$25,$24,$24,$26,$27,$28 ; 8B5C
        .byte   $24,$25,$24,$25,$29,$26,$28,$29 ; 8B64
        .byte   $24,$26,$28,$24,$24,$24,$24,$2A ; 8B6C
        .byte   $01,$2B,$2C,$2D,$01,$2E,$2F,$30 ; 8B74
        .byte   $30,$30,$31,$30,$32,$33,$34,$35 ; 8B7C
        .byte   $30,$31,$36,$37,$38,$33,$39,$38 ; 8B84
        .byte   $32,$33,$39,$3A,$3A,$3A,$3A,$3B ; 8B8C
        .byte   $3C,$10,$11,$12,$3D,$3E,$3F,$40 ; 8B94
        .byte   $40,$40,$41,$42,$3E,$40,$40,$40 ; 8B9C
        .byte   $40,$40,$40,$40,$40,$40,$40,$40 ; 8BA4
        .byte   $40,$40,$40,$40,$40,$40,$40,$41 ; 8BAC
        .byte   $43,$13,$14,$15,$44,$45,$46,$47 ; 8BB4
        .byte   $46,$48,$49,$42,$4A,$4B,$46,$47 ; 8BBC
        .byte   $46,$47,$4B,$46,$4C,$4C,$47,$4D ; 8BC4
        .byte   $4E,$4B,$46,$47,$4B,$46,$4C,$4F ; 8BCC
        .byte   $50,$10,$11,$12,$44,$51,$52,$53 ; 8BD4
        .byte   $52,$53,$54,$42,$51,$53,$52,$53 ; 8BDC
        .byte   $52,$53,$53,$52,$52,$52,$53,$53 ; 8BE4
        .byte   $55,$53,$52,$53,$53,$52,$52,$54 ; 8BEC
        .byte   $50,$1A,$56,$1C,$57,$58,$59,$5A ; 8BF4
        .byte   $59,$5B,$5C,$42,$58,$5D,$59,$5B ; 8BFC
        .byte   $59,$5E,$5D,$59,$59,$59,$5D,$5B ; 8C04
        .byte   $5F,$5E,$59,$5B,$5E,$59,$59,$60 ; 8C0C
        .byte   $50,$01,$01,$01,$44,$61,$42,$62 ; 8C14
        .byte   $42,$63,$64,$42,$42,$42,$61,$65 ; 8C1C
        .byte   $66,$67,$61,$68,$42,$42,$61,$65 ; 8C24
        .byte   $69,$6A,$6B,$65,$6C,$68,$42,$68 ; 8C2C
        .byte   $50,$01,$01,$01,$44,$6D,$6E,$6F ; 8C34
        .byte   $61,$70,$71,$42,$61,$68,$42,$72 ; 8C3C
        .byte   $73,$6A,$66,$6B,$61,$68,$42,$65 ; 8C44
        .byte   $74,$73,$6C,$65,$6B,$42,$61,$42 ; 8C4C
        .byte   $50,$01,$01,$01,$57,$75,$76,$77 ; 8C54
        .byte   $42,$78,$79,$66,$66,$66,$6B,$7A ; 8C5C
        .byte   $7B,$7B,$7C,$6A,$6B,$42,$7D,$7E ; 8C64
        .byte   $73,$74,$6B,$65,$6A,$6B,$61,$68 ; 8C6C
        .byte   $50,$01,$01,$01,$44,$7F,$80,$81 ; 8C74
        .byte   $42,$82,$83,$7C,$73,$73,$6C,$42 ; 8C7C
        .byte   $42,$61,$65,$73,$6A,$66,$7E,$73 ; 8C84
        .byte   $74,$73,$6A,$7E,$74,$6A,$6B,$42 ; 8C8C
        .byte   $50,$01,$04,$01,$44,$6D,$84,$6E ; 8C94
        .byte   $68,$42,$42,$65,$74,$73,$6B,$61 ; 8C9C
        .byte   $42,$42,$65,$85,$7B,$7B,$7C,$74 ; 8CA4
        .byte   $86,$7B,$7B,$7C,$85,$7B,$6C,$68 ; 8CAC
        .byte   $50,$87,$88,$89,$57,$8A,$8B,$8C ; 8CB4
        .byte   $42,$68,$7D,$7E,$73,$69,$6A,$66 ; 8CBC
        .byte   $66,$66,$7E,$6C,$61,$7D,$7E,$73 ; 8CC4
        .byte   $69,$6B,$68,$65,$67,$61,$61,$61 ; 8CCC
        .byte   $8D,$8E,$73,$8F,$90,$91,$92,$93 ; 8CD4
        .byte   $94,$94,$95,$96,$74,$73,$97,$97 ; 8CDC
        .byte   $97,$97,$97,$98,$98,$95,$99,$9A ; 8CE4
        .byte   $9B,$6A,$66,$7E,$6A,$6B,$72,$98 ; 8CEC
        .byte   $9C,$9D,$69,$9E,$9F,$A0,$A0,$A0 ; 8CF4
        .byte   $A0,$A0,$A0,$A1,$A2,$A3,$A0,$A0 ; 8CFC
        .byte   $A0,$A0,$A0,$A0,$A0,$A0,$A4,$A5 ; 8D04
        .byte   $A2,$A2,$A2,$A2,$A2,$A6,$A7,$A0 ; 8D0C
        .byte   $A8,$A9,$69,$9E,$AA,$AB,$AB,$AB ; 8D14
        .byte   $AB,$AB,$AB,$AC,$AD,$AE,$AB,$AB ; 8D1C
        .byte   $AB,$AB,$AB,$AB,$AB,$AB,$AB,$AF ; 8D24
        .byte   $B0,$B1,$B2,$B3,$B3,$B4,$B5,$AB ; 8D2C
        .byte   $A8,$9D,$69,$B6,$AA,$AB,$AB,$AB ; 8D34
        .byte   $AB,$AB,$AB,$B7,$B8,$B9,$BA,$AB ; 8D3C
        .byte   $AB,$AB,$AB,$AB,$AB,$AB,$AB,$AB ; 8D44
        .byte   $BB,$BC,$BD,$AB,$AB,$AB,$B5,$AB ; 8D4C
        .byte   $A8,$9D,$69,$9E,$AA,$AB,$AB,$BE ; 8D54
        .byte   $BA,$AB,$BE,$BF,$C0,$AB,$C1,$BA ; 8D5C
        .byte   $AB,$AB,$AB,$AB,$AB,$AB,$AB,$AB ; 8D64
        .byte   $C2,$C1,$BA,$AB,$AB,$AB,$B5,$AB ; 8D6C
        .byte   $A8,$A9,$C3,$B6,$AA,$C4,$C5,$C6 ; 8D74
        .byte   $C7,$C5,$C6,$C0,$C8,$AB,$AB,$C1 ; 8D7C
        .byte   $C5,$C9,$AB,$AB,$AB,$AB,$AB,$AB ; 8D84
        .byte   $AB,$AB,$C1,$C5,$C5,$C5,$CA,$AB ; 8D8C
; Tile attribute table – bits: 0-1=palette 3=Gateway 2+3=Tunnel(→Overhead) 4=damage 5=ladder
; 6=water 7=solid  3+7=Doorway 4+6=lava 5+7=solid-ladder 6+7=destroyable
TankLvl1_TileAttrTable:
        .byte   $00,$01,$01,$01,$00,$00,$00,$00 ; 8D94
        .byte   $00,$00,$00,$00,$00,$00,$00,$83 ; 8D9C
        .byte   $83,$83,$83,$83,$83,$83,$83,$83 ; 8DA4
        .byte   $83,$83,$83,$83,$83,$83,$83,$C3 ; 8DAC
        .byte   $83,$83,$83,$83,$83,$83,$83,$83 ; 8DB4
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 8DBC
        .byte   $00,$02,$02,$02,$12,$02,$02,$02 ; 8DC4
        .byte   $02,$02,$02,$02,$02,$02,$02,$23 ; 8DCC
        .byte   $02,$02,$02,$02,$02,$02,$02,$02 ; 8DD4
        .byte   $02,$02,$83,$83,$83,$83,$83,$83 ; 8DDC
        .byte   $00,$00,$00,$02,$02,$02,$02,$02 ; 8DE4
        .byte   $00,$02,$83,$83,$83,$8B,$8B,$83 ; 8DEC
        .byte   $00,$00,$00,$02,$00,$02,$00,$00 ; 8DF4
        .byte   $00,$02,$00,$00,$00,$00,$03,$03 ; 8DFC
        .byte   $00,$00,$00,$00,$00,$40,$40,$41 ; 8E04
        .byte   $81,$81,$00,$00,$00,$00,$81,$00 ; 8E0C
        .byte   $00,$00,$00,$00,$00,$41,$81,$81 ; 8E14
        .byte   $81,$81,$81,$81,$81,$81,$81,$81 ; 8E1C
        .byte   $A3,$08,$0C,$41,$41,$81,$81,$81 ; 8E24
        .byte   $81,$60                         ; 8E2C
; 16 bytes — 8 B vertical + 8 B horizontal scroll-boundary flags
TankLvl1_ScrollData:
        .byte   $FF,$00,$00,$80,$7F,$80,$00,$00 ; 8E2E
        .byte   $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0 ; 8E36
; ----------------------------------------------------------------------------
; Level 2 map pointer table (6×16-bit LE ptrs): BgPalette, TileAttr, TileDesc, StructureDesc,
; ChunkDesc, MapData
TankLvl2_MapPointers:
        .addr   TankLvl2_BgPalette              ; 8E3E
        .addr   TankLvl2_TileAttrTable          ; 8E40
        .addr   TankLvl2_TileDescTable          ; 8E42
        .addr   TankLvl2_StructureDescTable     ; 8E44
        .addr   TankLvl2_ChunkDescTable         ; 8E46
        .addr   TankLvl2_MapData                ; 8E48
; ----------------------------------------------------------------------------
; 4 BgPalette records — the level's 4 background sub-palettes × 4 NES colour indices.
TankLvl2_BgPalette:
        .byte   $0F,$0B,$00,$10 ; 8E4A  Backdrop=$0F Colour1=$0B Colour2=$00 Colour3=$10
        .byte   $0F,$0A,$1B,$20 ; 8E4E  Backdrop=$0F Colour1=$0A Colour2=$1B Colour3=$20
        .byte   $0F,$07,$17,$10 ; 8E52  Backdrop=$0F Colour1=$07 Colour2=$17 Colour3=$10
        .byte   $0F,$05,$16,$10 ; 8E56  Backdrop=$0F Colour1=$05 Colour2=$16 Colour3=$10
; 152 TileDesc records — the level's Tile definitions. Index space shared with
; TankLvl2_TileAttrTable, which has the matching 152 entries.
TankLvl2_TileDescTable:
        .byte   $00,$00,$00,$00 ; 8E5A  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $7A,$7A,$7A,$7A ; 8E5E  TL=$7A TR=$7A BL=$7A BR=$7A
        .byte   $6A,$7A,$6A,$7A ; 8E62  TL=$6A TR=$7A BL=$6A BR=$7A
        .byte   $79,$79,$7A,$7A ; 8E66  TL=$79 TR=$79 BL=$7A BR=$7A
        .byte   $69,$79,$6A,$7A ; 8E6A  TL=$69 TR=$79 BL=$6A BR=$7A
        .byte   $7A,$7A,$6A,$7A ; 8E6E  TL=$7A TR=$7A BL=$6A BR=$7A
        .byte   $7A,$79,$7A,$7A ; 8E72  TL=$7A TR=$79 BL=$7A BR=$7A
        .byte   $5A,$7A,$7A,$7A ; 8E76  TL=$5A TR=$7A BL=$7A BR=$7A
        .byte   $7A,$7A,$43,$53 ; 8E7A  TL=$7A TR=$7A BL=$43 BR=$53
        .byte   $7A,$7A,$63,$73 ; 8E7E  TL=$7A TR=$7A BL=$63 BR=$73
        .byte   $44,$54,$45,$55 ; 8E82  TL=$44 TR=$54 BL=$45 BR=$55
        .byte   $64,$74,$65,$75 ; 8E86  TL=$64 TR=$74 BL=$65 BR=$75
        .byte   $66,$76,$67,$77 ; 8E8A  TL=$66 TR=$76 BL=$67 BR=$77
        .byte   $67,$77,$67,$77 ; 8E8E  TL=$67 TR=$77 BL=$67 BR=$77
        .byte   $67,$77,$68,$78 ; 8E92  TL=$67 TR=$77 BL=$68 BR=$78
        .byte   $82,$92,$83,$93 ; 8E96  TL=$82 TR=$92 BL=$83 BR=$93
        .byte   $91,$7A,$6A,$7A ; 8E9A  TL=$91 TR=$7A BL=$6A BR=$7A
        .byte   $84,$94,$85,$95 ; 8E9E  TL=$84 TR=$94 BL=$85 BR=$95
        .byte   $C5,$D5,$C6,$D6 ; 8EA2  TL=$C5 TR=$D5 BL=$C6 BR=$D6
        .byte   $E5,$F5,$E6,$F6 ; 8EA6  TL=$E5 TR=$F5 BL=$E6 BR=$F6
        .byte   $7A,$D7,$7A,$D8 ; 8EAA  TL=$7A TR=$D7 BL=$7A BR=$D8
        .byte   $E7,$F6,$E8,$F6 ; 8EAE  TL=$E7 TR=$F6 BL=$E8 BR=$F6
        .byte   $7A,$7A,$C9,$C9 ; 8EB2  TL=$7A TR=$7A BL=$C9 BR=$C9
        .byte   $C9,$D9,$CA,$DA ; 8EB6  TL=$C9 TR=$D9 BL=$CA BR=$DA
        .byte   $E9,$F9,$EA,$FA ; 8EBA  TL=$E9 TR=$F9 BL=$EA BR=$FA
        .byte   $7A,$7A,$C7,$C8 ; 8EBE  TL=$7A TR=$7A BL=$C7 BR=$C8
        .byte   $5C,$5C,$5C,$5C ; 8EC2  TL=$5C TR=$5C BL=$5C BR=$5C
        .byte   $4C,$5C,$4C,$5C ; 8EC6  TL=$4C TR=$5C BL=$4C BR=$5C
        .byte   $5B,$5B,$5C,$5C ; 8ECA  TL=$5B TR=$5B BL=$5C BR=$5C
        .byte   $4B,$5B,$4C,$5C ; 8ECE  TL=$4B TR=$5B BL=$4C BR=$5C
        .byte   $5C,$5C,$4C,$5C ; 8ED2  TL=$5C TR=$5C BL=$4C BR=$5C
        .byte   $4A,$5C,$5C,$5C ; 8ED6  TL=$4A TR=$5C BL=$5C BR=$5C
        .byte   $46,$56,$47,$57 ; 8EDA  TL=$46 TR=$56 BL=$47 BR=$57
        .byte   $48,$58,$49,$59 ; 8EDE  TL=$48 TR=$58 BL=$49 BR=$59
        .byte   $69,$79,$40,$50 ; 8EE2  TL=$69 TR=$79 BL=$40 BR=$50
        .byte   $79,$79,$60,$70 ; 8EE6  TL=$79 TR=$79 BL=$60 BR=$70
        .byte   $79,$79,$80,$7A ; 8EEA  TL=$79 TR=$79 BL=$80 BR=$7A
        .byte   $41,$51,$4B,$5B ; 8EEE  TL=$41 TR=$51 BL=$4B BR=$5B
        .byte   $61,$5C,$4A,$5C ; 8EF2  TL=$61 TR=$5C BL=$4A BR=$5C
        .byte   $81,$71,$5C,$5B ; 8EF6  TL=$81 TR=$71 BL=$5C BR=$5B
        .byte   $4D,$5D,$4E,$5E ; 8EFA  TL=$4D TR=$5D BL=$4E BR=$5E
        .byte   $4E,$5E,$4E,$5E ; 8EFE  TL=$4E TR=$5E BL=$4E BR=$5E
        .byte   $4E,$5E,$4F,$5F ; 8F02  TL=$4E TR=$5E BL=$4F BR=$5F
        .byte   $86,$96,$87,$97 ; 8F06  TL=$86 TR=$96 BL=$87 BR=$97
        .byte   $C3,$D3,$C4,$D4 ; 8F0A  TL=$C3 TR=$D3 BL=$C4 BR=$D4
        .byte   $A2,$D3,$A3,$D4 ; 8F0E  TL=$A2 TR=$D3 BL=$A3 BR=$D4
        .byte   $C2,$D2,$C4,$D4 ; 8F12  TL=$C2 TR=$D2 BL=$C4 BR=$D4
        .byte   $B2,$D2,$A3,$D4 ; 8F16  TL=$B2 TR=$D2 BL=$A3 BR=$D4
        .byte   $A2,$D3,$B3,$B4 ; 8F1A  TL=$A2 TR=$D3 BL=$B3 BR=$B4
        .byte   $C3,$D2,$C4,$D4 ; 8F1E  TL=$C3 TR=$D2 BL=$C4 BR=$D4
        .byte   $C3,$D3,$A4,$B4 ; 8F22  TL=$C3 TR=$D3 BL=$A4 BR=$B4
        .byte   $B8,$B8,$B9,$B9 ; 8F26  TL=$B8 TR=$B8 BL=$B9 BR=$B9
        .byte   $A8,$A8,$A9,$A9 ; 8F2A  TL=$A8 TR=$A8 BL=$A9 BR=$A9
        .byte   $F7,$A8,$F8,$A9 ; 8F2E  TL=$F7 TR=$A8 BL=$F8 BR=$A9
        .byte   $A9,$A9,$A9,$A9 ; 8F32  TL=$A9 TR=$A9 BL=$A9 BR=$A9
        .byte   $A9,$A9,$A9,$BA ; 8F36  TL=$A9 TR=$A9 BL=$A9 BR=$BA
        .byte   $A9,$A9,$AA,$AA ; 8F3A  TL=$A9 TR=$A9 BL=$AA BR=$AA
        .byte   $A5,$B5,$A6,$B6 ; 8F3E  TL=$A5 TR=$B5 BL=$A6 BR=$B6
        .byte   $A5,$B5,$A7,$B7 ; 8F42  TL=$A5 TR=$B5 BL=$A7 BR=$B7
        .byte   $A6,$B6,$A7,$B7 ; 8F46  TL=$A6 TR=$B6 BL=$A7 BR=$B7
        .byte   $29,$39,$39,$29 ; 8F4A  TL=$29 TR=$39 BL=$39 BR=$29
        .byte   $2D,$39,$2D,$29 ; 8F4E  TL=$2D TR=$39 BL=$2D BR=$29
        .byte   $3C,$3C,$39,$29 ; 8F52  TL=$3C TR=$3C BL=$39 BR=$29
        .byte   $2C,$3C,$2D,$29 ; 8F56  TL=$2C TR=$3C BL=$2D BR=$29
        .byte   $29,$39,$2D,$29 ; 8F5A  TL=$29 TR=$39 BL=$2D BR=$29
        .byte   $29,$3C,$39,$29 ; 8F5E  TL=$29 TR=$3C BL=$39 BR=$29
        .byte   $3D,$39,$39,$29 ; 8F62  TL=$3D TR=$39 BL=$39 BR=$29
        .byte   $10,$10,$20,$30 ; 8F66  TL=$10 TR=$10 BL=$20 BR=$30
        .byte   $29,$39,$39,$29 ; 8F6A  TL=$29 TR=$39 BL=$39 BR=$29
        .byte   $10,$10,$20,$30 ; 8F6E  TL=$10 TR=$10 BL=$20 BR=$30
        .byte   $3C,$3C,$39,$29 ; 8F72  TL=$3C TR=$3C BL=$39 BR=$29
        .byte   $4D,$5D,$4E,$5E ; 8F76  TL=$4D TR=$5D BL=$4E BR=$5E
        .byte   $4E,$5E,$4E,$5E ; 8F7A  TL=$4E TR=$5E BL=$4E BR=$5E
        .byte   $4E,$5E,$4F,$5F ; 8F7E  TL=$4E TR=$5E BL=$4F BR=$5F
        .byte   $90,$A0,$00,$A1 ; 8F82  TL=$90 TR=$A0 BL=$00 BR=$A1
        .byte   $B0,$C0,$B1,$C1 ; 8F86  TL=$B0 TR=$C0 BL=$B1 BR=$C1
        .byte   $D0,$E0,$D1,$00 ; 8F8A  TL=$D0 TR=$E0 BL=$D1 BR=$00
        .byte   $DF,$DD,$EF,$DE ; 8F8E  TL=$DF TR=$DD BL=$EF BR=$DE
        .byte   $ED,$ED,$EE,$EE ; 8F92  TL=$ED TR=$ED BL=$EE BR=$EE
        .byte   $FD,$DF,$FE,$EF ; 8F96  TL=$FD TR=$DF BL=$FE BR=$EF
        .byte   $EF,$00,$FF,$00 ; 8F9A  TL=$EF TR=$00 BL=$FF BR=$00
        .byte   $00,$00,$00,$00 ; 8F9E  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$EF,$00,$FF ; 8FA2  TL=$00 TR=$EF BL=$00 BR=$FF
        .byte   $02,$AB,$02,$AC ; 8FA6  TL=$02 TR=$AB BL=$02 BR=$AC
        .byte   $BB,$CB,$00,$CC ; 8FAA  TL=$BB TR=$CB BL=$00 BR=$CC
        .byte   $02,$AC,$02,$AC ; 8FAE  TL=$02 TR=$AC BL=$02 BR=$AC
        .byte   $00,$CC,$00,$CC ; 8FB2  TL=$00 TR=$CC BL=$00 BR=$CC
        .byte   $DB,$EB,$DC,$00 ; 8FB6  TL=$DB TR=$EB BL=$DC BR=$00
        .byte   $FB,$32,$FC,$32 ; 8FBA  TL=$FB TR=$32 BL=$FC BR=$32
        .byte   $DC,$00,$DC,$00 ; 8FBE  TL=$DC TR=$00 BL=$DC BR=$00
        .byte   $FC,$32,$FC,$32 ; 8FC2  TL=$FC TR=$32 BL=$FC BR=$32
        .byte   $02,$12,$02,$12 ; 8FC6  TL=$02 TR=$12 BL=$02 BR=$12
        .byte   $22,$00,$22,$00 ; 8FCA  TL=$22 TR=$00 BL=$22 BR=$00
        .byte   $02,$12,$6F,$7F ; 8FCE  TL=$02 TR=$12 BL=$6F BR=$7F
        .byte   $22,$00,$8F,$00 ; 8FD2  TL=$22 TR=$00 BL=$8F BR=$00
        .byte   $9E,$11,$AD,$BD ; 8FD6  TL=$9E TR=$11 BL=$AD BR=$BD
        .byte   $21,$31,$CD,$32 ; 8FDA  TL=$21 TR=$31 BL=$CD BR=$32
        .byte   $AE,$00,$AF,$00 ; 8FDE  TL=$AE TR=$00 BL=$AF BR=$00
        .byte   $CE,$32,$CF,$9F ; 8FE2  TL=$CE TR=$32 BL=$CF BR=$9F
        .byte   $BC,$EC,$BC,$EC ; 8FE6  TL=$BC TR=$EC BL=$BC BR=$EC
        .byte   $BC,$EC,$BC,$EC ; 8FEA  TL=$BC TR=$EC BL=$BC BR=$EC
        .byte   $9D,$9D,$9D,$9D ; 8FEE  TL=$9D TR=$9D BL=$9D BR=$9D
        .byte   $0B,$1B,$0C,$1C ; 8FF2  TL=$0B TR=$1B BL=$0C BR=$1C
        .byte   $89,$99,$8A,$9A ; 8FF6  TL=$89 TR=$99 BL=$8A BR=$9A
        .byte   $6D,$7D,$6E,$7E ; 8FFA  TL=$6D TR=$7D BL=$6E BR=$7E
        .byte   $7D,$8D,$7E,$8E ; 8FFE  TL=$7D TR=$8D BL=$7E BR=$8E
        .byte   $6B,$7B,$6C,$7C ; 9002  TL=$6B TR=$7B BL=$6C BR=$7C
        .byte   $8B,$9B,$8C,$9C ; 9006  TL=$8B TR=$9B BL=$8C BR=$9C
        .byte   $0D,$1D,$1D,$0D ; 900A  TL=$0D TR=$1D BL=$1D BR=$0D
        .byte   $0D,$1D,$1D,$00 ; 900E  TL=$0D TR=$1D BL=$1D BR=$00
        .byte   $0D,$1D,$00,$0D ; 9012  TL=$0D TR=$1D BL=$00 BR=$0D
        .byte   $0B,$1B,$0C,$1C ; 9016  TL=$0B TR=$1B BL=$0C BR=$1C
        .byte   $6D,$7D,$6E,$7E ; 901A  TL=$6D TR=$7D BL=$6E BR=$7E
        .byte   $7D,$8D,$7E,$8E ; 901E  TL=$7D TR=$8D BL=$7E BR=$8E
        .byte   $0D,$1D,$1D,$0D ; 9022  TL=$0D TR=$1D BL=$1D BR=$0D
        .byte   $E3,$F3,$E4,$F4 ; 9026  TL=$E3 TR=$F3 BL=$E4 BR=$F4
        .byte   $9E,$11,$02,$12 ; 902A  TL=$9E TR=$11 BL=$02 BR=$12
        .byte   $21,$31,$22,$32 ; 902E  TL=$21 TR=$31 BL=$22 BR=$32
        .byte   $02,$12,$02,$12 ; 9032  TL=$02 TR=$12 BL=$02 BR=$12
        .byte   $22,$32,$22,$32 ; 9036  TL=$22 TR=$32 BL=$22 BR=$32
        .byte   $03,$13,$04,$14 ; 903A  TL=$03 TR=$13 BL=$04 BR=$14
        .byte   $23,$33,$24,$34 ; 903E  TL=$23 TR=$33 BL=$24 BR=$34
        .byte   $9E,$11,$02,$12 ; 9042  TL=$9E TR=$11 BL=$02 BR=$12
        .byte   $21,$31,$22,$32 ; 9046  TL=$21 TR=$31 BL=$22 BR=$32
        .byte   $02,$12,$02,$12 ; 904A  TL=$02 TR=$12 BL=$02 BR=$12
        .byte   $22,$32,$22,$32 ; 904E  TL=$22 TR=$32 BL=$22 BR=$32
        .byte   $21,$3E,$2F,$3F ; 9052  TL=$21 TR=$3E BL=$2F BR=$3F
        .byte   $2F,$3F,$2F,$3F ; 9056  TL=$2F TR=$3F BL=$2F BR=$3F
        .byte   $02,$12,$88,$98 ; 905A  TL=$02 TR=$12 BL=$88 BR=$98
        .byte   $42,$52,$72,$00 ; 905E  TL=$42 TR=$52 BL=$72 BR=$00
        .byte   $9E,$11,$02,$12 ; 9062  TL=$9E TR=$11 BL=$02 BR=$12
        .byte   $11,$21,$22,$2E ; 9066  TL=$11 TR=$21 BL=$22 BR=$2E
        .byte   $02,$12,$02,$12 ; 906A  TL=$02 TR=$12 BL=$02 BR=$12
        .byte   $22,$2E,$22,$2E ; 906E  TL=$22 TR=$2E BL=$22 BR=$2E
        .byte   $02,$12,$6F,$7F ; 9072  TL=$02 TR=$12 BL=$6F BR=$7F
        .byte   $22,$2E,$7F,$7F ; 9076  TL=$22 TR=$2E BL=$7F BR=$7F
        .byte   $05,$15,$06,$06 ; 907A  TL=$05 TR=$15 BL=$06 BR=$06
        .byte   $05,$15,$06,$17 ; 907E  TL=$05 TR=$15 BL=$06 BR=$17
        .byte   $05,$15,$16,$16 ; 9082  TL=$05 TR=$15 BL=$16 BR=$16
        .byte   $05,$15,$07,$06 ; 9086  TL=$05 TR=$15 BL=$07 BR=$06
        .byte   $08,$18,$00,$09 ; 908A  TL=$08 TR=$18 BL=$00 BR=$09
        .byte   $06,$06,$19,$26 ; 908E  TL=$06 TR=$06 BL=$19 BR=$26
        .byte   $25,$35,$36,$00 ; 9092  TL=$25 TR=$35 BL=$36 BR=$00
        .byte   $0A,$1A,$0A,$1A ; 9096  TL=$0A TR=$1A BL=$0A BR=$1A
        .byte   $2A,$3A,$2B,$3B ; 909A  TL=$2A TR=$3A BL=$2B BR=$3B
        .byte   $27,$15,$28,$16 ; 909E  TL=$27 TR=$15 BL=$28 BR=$16
        .byte   $05,$37,$16,$38 ; 90A2  TL=$05 TR=$37 BL=$16 BR=$38
        .byte   $27,$15,$28,$06 ; 90A6  TL=$27 TR=$15 BL=$28 BR=$06
        .byte   $05,$37,$06,$38 ; 90AA  TL=$05 TR=$37 BL=$06 BR=$38
        .byte   $1E,$1E,$1F,$1F ; 90AE  TL=$1E TR=$1E BL=$1F BR=$1F
        .byte   $0E,$0E,$0F,$0F ; 90B2  TL=$0E TR=$0E BL=$0F BR=$0F
        .byte   $BE,$BE,$BF,$BF ; 90B6  TL=$BE TR=$BE BL=$BF BR=$BF
; 142 StructureDesc records — the level's Structure definitions, each a 2×2 quad of Tiles.
TankLvl2_StructureDescTable:
        .byte   $6C,$6C,$6C,$6C ; 90BA  TL=$6C TR=$6C BL=$6C BR=$6C
        .byte   $44,$44,$45,$45 ; 90BE  TL=$44 TR=$44 BL=$45 BR=$45
        .byte   $70,$71,$71,$6F ; 90C2  TL=$70 TR=$71 BL=$71 BR=$6F
        .byte   $70,$71,$6F,$70 ; 90C6  TL=$70 TR=$71 BL=$6F BR=$70
        .byte   $6A,$6B,$6B,$66 ; 90CA  TL=$6A TR=$6B BL=$6B BR=$66
        .byte   $66,$97,$66,$6A ; 90CE  TL=$66 TR=$97 BL=$66 BR=$6A
        .byte   $97,$66,$6B,$66 ; 90D2  TL=$97 TR=$66 BL=$6B BR=$66
        .byte   $04,$03,$02,$01 ; 90D6  TL=$04 TR=$03 BL=$02 BR=$01
        .byte   $03,$03,$01,$01 ; 90DA  TL=$03 TR=$03 BL=$01 BR=$01
        .byte   $6A,$6B,$66,$6A ; 90DE  TL=$6A TR=$6B BL=$66 BR=$6A
        .byte   $05,$01,$02,$01 ; 90E2  TL=$05 TR=$01 BL=$02 BR=$01
        .byte   $01,$01,$01,$01 ; 90E6  TL=$01 TR=$01 BL=$01 BR=$01
        .byte   $07,$08,$01,$0A ; 90EA  TL=$07 TR=$08 BL=$01 BR=$0A
        .byte   $09,$01,$0B,$01 ; 90EE  TL=$09 TR=$01 BL=$0B BR=$01
        .byte   $06,$03,$01,$01 ; 90F2  TL=$06 TR=$03 BL=$01 BR=$01
        .byte   $00,$00,$6C,$6C ; 90F6  TL=$00 TR=$00 BL=$6C BR=$6C
        .byte   $0C,$03,$0D,$01 ; 90FA  TL=$0C TR=$03 BL=$0D BR=$01
        .byte   $6A,$6B,$66,$95 ; 90FE  TL=$6A TR=$6B BL=$66 BR=$95
        .byte   $6A,$6B,$95,$66 ; 9102  TL=$6A TR=$6B BL=$95 BR=$66
        .byte   $6C,$6C,$6C,$04 ; 9106  TL=$6C TR=$6C BL=$6C BR=$04
        .byte   $6C,$6C,$03,$03 ; 910A  TL=$6C TR=$6C BL=$03 BR=$03
        .byte   $6C,$6C,$0C,$03 ; 910E  TL=$6C TR=$6C BL=$0C BR=$03
        .byte   $02,$01,$02,$01 ; 9112  TL=$02 TR=$01 BL=$02 BR=$01
        .byte   $02,$08,$02,$0A ; 9116  TL=$02 TR=$08 BL=$02 BR=$0A
        .byte   $0D,$01,$0D,$01 ; 911A  TL=$0D TR=$01 BL=$0D BR=$01
        .byte   $0D,$01,$0E,$01 ; 911E  TL=$0D TR=$01 BL=$0E BR=$01
        .byte   $66,$66,$66,$66 ; 9122  TL=$66 TR=$66 BL=$66 BR=$66
        .byte   $07,$01,$01,$01 ; 9126  TL=$07 TR=$01 BL=$01 BR=$01
        .byte   $57,$58,$59,$5A ; 912A  TL=$57 TR=$58 BL=$59 BR=$5A
        .byte   $6C,$02,$03,$07 ; 912E  TL=$6C TR=$02 BL=$03 BR=$07
        .byte   $53,$54,$55,$56 ; 9132  TL=$53 TR=$54 BL=$55 BR=$56
        .byte   $6C,$02,$06,$07 ; 9136  TL=$6C TR=$02 BL=$06 BR=$07
        .byte   $0D,$01,$0F,$10 ; 913A  TL=$0D TR=$01 BL=$0F BR=$10
        .byte   $11,$02,$2B,$02 ; 913E  TL=$11 TR=$02 BL=$2B BR=$02
        .byte   $5F,$60,$61,$62 ; 9142  TL=$5F TR=$60 BL=$61 BR=$62
        .byte   $00,$00,$46,$46 ; 9146  TL=$00 TR=$00 BL=$46 BR=$46
        .byte   $66,$66,$65,$65 ; 914A  TL=$66 TR=$66 BL=$65 BR=$65
        .byte   $44,$44,$44,$44 ; 914E  TL=$44 TR=$44 BL=$44 BR=$44
        .byte   $6C,$73,$6C,$6C ; 9152  TL=$6C TR=$73 BL=$6C BR=$6C
        .byte   $73,$6C,$6C,$6C ; 9156  TL=$73 TR=$6C BL=$6C BR=$6C
        .byte   $6C,$6C,$6C,$73 ; 915A  TL=$6C TR=$6C BL=$6C BR=$73
        .byte   $1D,$1C,$1B,$1A ; 915E  TL=$1D TR=$1C BL=$1B BR=$1A
        .byte   $1C,$1C,$1A,$1A ; 9162  TL=$1C TR=$1C BL=$1A BR=$1A
        .byte   $1C,$28,$1A,$29 ; 9166  TL=$1C TR=$28 BL=$1A BR=$29
        .byte   $22,$23,$25,$26 ; 916A  TL=$22 TR=$23 BL=$25 BR=$26
        .byte   $24,$28,$27,$29 ; 916E  TL=$24 TR=$28 BL=$27 BR=$29
        .byte   $6E,$6D,$31,$2E ; 9172  TL=$6E TR=$6D BL=$31 BR=$2E
        .byte   $2F,$2E,$2C,$2C ; 9176  TL=$2F TR=$2E BL=$2C BR=$2C
        .byte   $2C,$2C,$2C,$3A ; 917A  TL=$2C TR=$2C BL=$2C BR=$3A
        .byte   $2C,$2C,$2C,$2C ; 917E  TL=$2C TR=$2C BL=$2C BR=$2C
        .byte   $6E,$6C,$31,$6E ; 9182  TL=$6E TR=$6C BL=$31 BR=$6E
        .byte   $6D,$2F,$6D,$2D ; 9186  TL=$6D TR=$2F BL=$6D BR=$2D
        .byte   $39,$2E,$39,$2C ; 918A  TL=$39 TR=$2E BL=$39 BR=$2C
        .byte   $2E,$2C,$3A,$2C ; 918E  TL=$2E TR=$2C BL=$3A BR=$2C
        .byte   $6C,$6C,$73,$6C ; 9192  TL=$6C TR=$6C BL=$73 BR=$6C
        .byte   $03,$12,$01,$14 ; 9196  TL=$03 TR=$12 BL=$01 BR=$14
        .byte   $13,$03,$15,$01 ; 919A  TL=$13 TR=$03 BL=$15 BR=$01
        .byte   $01,$14,$16,$17 ; 919E  TL=$01 TR=$14 BL=$16 BR=$17
        .byte   $15,$01,$18,$19 ; 91A2  TL=$15 TR=$01 BL=$18 BR=$19
        .byte   $1B,$1A,$1B,$1A ; 91A6  TL=$1B TR=$1A BL=$1B BR=$1A
        .byte   $1A,$1A,$1A,$1A ; 91AA  TL=$1A TR=$1A BL=$1A BR=$1A
        .byte   $1B,$1A,$1B,$64 ; 91AE  TL=$1B TR=$1A BL=$1B BR=$64
        .byte   $1A,$29,$1A,$29 ; 91B2  TL=$1A TR=$29 BL=$1A BR=$29
        .byte   $3A,$35,$34,$36 ; 91B6  TL=$3A TR=$35 BL=$34 BR=$36
        .byte   $2C,$2C,$30,$35 ; 91BA  TL=$2C TR=$2C BL=$30 BR=$35
        .byte   $34,$37,$36,$36 ; 91BE  TL=$34 TR=$37 BL=$36 BR=$36
        .byte   $3B,$35,$34,$37 ; 91C2  TL=$3B TR=$35 BL=$34 BR=$37
        .byte   $34,$30,$36,$34 ; 91C6  TL=$34 TR=$30 BL=$36 BR=$34
        .byte   $36,$37,$37,$36 ; 91CA  TL=$36 TR=$37 BL=$37 BR=$36
        .byte   $2C,$35,$34,$37 ; 91CE  TL=$2C TR=$35 BL=$34 BR=$37
        .byte   $36,$36,$36,$37 ; 91D2  TL=$36 TR=$36 BL=$36 BR=$37
        .byte   $01,$01,$6C,$6C ; 91D6  TL=$01 TR=$01 BL=$6C BR=$6C
        .byte   $6C,$97,$6C,$6C ; 91DA  TL=$6C TR=$97 BL=$6C BR=$6C
        .byte   $97,$6C,$6C,$6C ; 91DE  TL=$97 TR=$6C BL=$6C BR=$6C
        .byte   $05,$01,$6C,$6C ; 91E2  TL=$05 TR=$01 BL=$6C BR=$6C
        .byte   $70,$63,$6F,$64 ; 91E6  TL=$70 TR=$63 BL=$6F BR=$64
        .byte   $1D,$64,$1B,$64 ; 91EA  TL=$1D TR=$64 BL=$1B BR=$64
        .byte   $1E,$29,$1B,$29 ; 91EE  TL=$1E TR=$29 BL=$1B BR=$29
        .byte   $1F,$29,$1A,$29 ; 91F2  TL=$1F TR=$29 BL=$1A BR=$29
        .byte   $1F,$29,$1A,$2A ; 91F6  TL=$1F TR=$29 BL=$1A BR=$2A
        .byte   $1B,$20,$1B,$21 ; 91FA  TL=$1B TR=$20 BL=$1B BR=$21
        .byte   $1A,$29,$1A,$2A ; 91FE  TL=$1A TR=$29 BL=$1A BR=$2A
        .byte   $6A,$6B,$6C,$6C ; 9202  TL=$6A TR=$6B BL=$6C BR=$6C
        .byte   $38,$38,$33,$33 ; 9206  TL=$38 TR=$38 BL=$33 BR=$33
        .byte   $1B,$64,$1B,$64 ; 920A  TL=$1B TR=$64 BL=$1B BR=$64
        .byte   $6C,$6C,$70,$71 ; 920E  TL=$6C TR=$6C BL=$70 BR=$71
        .byte   $00,$00,$00,$00 ; 9212  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$00,$1D,$1C ; 9216  TL=$00 TR=$00 BL=$1D BR=$1C
        .byte   $00,$4A,$1C,$1C ; 921A  TL=$00 TR=$4A BL=$1C BR=$1C
        .byte   $4B,$4C,$47,$00 ; 921E  TL=$4B TR=$4C BL=$47 BR=$00
        .byte   $00,$4A,$1D,$1C ; 9222  TL=$00 TR=$4A BL=$1D BR=$1C
        .byte   $1D,$28,$1B,$29 ; 9226  TL=$1D TR=$28 BL=$1B BR=$29
        .byte   $97,$97,$6F,$70 ; 922A  TL=$97 TR=$97 BL=$6F BR=$70
        .byte   $97,$97,$71,$6F ; 922E  TL=$97 TR=$97 BL=$71 BR=$6F
        .byte   $48,$00,$48,$00 ; 9232  TL=$48 TR=$00 BL=$48 BR=$00
        .byte   $1B,$29,$1B,$29 ; 9236  TL=$1B TR=$29 BL=$1B BR=$29
        .byte   $1B,$29,$1B,$2A ; 923A  TL=$1B TR=$29 BL=$1B BR=$2A
        .byte   $70,$71,$6C,$6C ; 923E  TL=$70 TR=$71 BL=$6C BR=$6C
        .byte   $1A,$20,$1A,$21 ; 9242  TL=$1A TR=$20 BL=$1A BR=$21
        .byte   $48,$00,$49,$00 ; 9246  TL=$48 TR=$00 BL=$49 BR=$00
        .byte   $6C,$6C,$72,$72 ; 924A  TL=$6C TR=$6C BL=$72 BR=$72
        .byte   $83,$83,$85,$85 ; 924E  TL=$83 TR=$83 BL=$85 BR=$85
        .byte   $85,$85,$85,$85 ; 9252  TL=$85 TR=$85 BL=$85 BR=$85
        .byte   $7A,$7B,$7C,$7D ; 9256  TL=$7A TR=$7B BL=$7C BR=$7D
        .byte   $7C,$7D,$7C,$7D ; 925A  TL=$7C TR=$7D BL=$7C BR=$7D
        .byte   $3E,$74,$3C,$78 ; 925E  TL=$3E TR=$74 BL=$3C BR=$78
        .byte   $75,$3F,$79,$3D ; 9262  TL=$75 TR=$3F BL=$79 BR=$3D
        .byte   $3C,$41,$3C,$3C ; 9266  TL=$3C TR=$41 BL=$3C BR=$3C
        .byte   $3E,$42,$3C,$3C ; 926A  TL=$3E TR=$42 BL=$3C BR=$3C
        .byte   $3E,$74,$3C,$76 ; 926E  TL=$3E TR=$74 BL=$3C BR=$76
        .byte   $75,$3F,$77,$3D ; 9272  TL=$75 TR=$3F BL=$77 BR=$3D
        .byte   $3C,$78,$3C,$41 ; 9276  TL=$3C TR=$78 BL=$3C BR=$41
        .byte   $79,$3D,$3E,$42 ; 927A  TL=$79 TR=$3D BL=$3E BR=$42
        .byte   $3C,$76,$3C,$76 ; 927E  TL=$3C TR=$76 BL=$3C BR=$76
        .byte   $77,$3D,$77,$3D ; 9282  TL=$77 TR=$3D BL=$77 BR=$3D
        .byte   $3E,$7A,$3C,$7C ; 9286  TL=$3E TR=$7A BL=$3C BR=$7C
        .byte   $7E,$82,$7F,$84 ; 928A  TL=$7E TR=$82 BL=$7F BR=$84
        .byte   $3C,$7C,$3C,$7C ; 928E  TL=$3C TR=$7C BL=$3C BR=$7C
        .byte   $7F,$84,$74,$84 ; 9292  TL=$7F TR=$84 BL=$74 BR=$84
        .byte   $85,$85,$87,$87 ; 9296  TL=$85 TR=$85 BL=$87 BR=$87
        .byte   $67,$67,$67,$67 ; 929A  TL=$67 TR=$67 BL=$67 BR=$67
        .byte   $3C,$3C,$3C,$3C ; 929E  TL=$3C TR=$3C BL=$3C BR=$3C
        .byte   $4D,$4E,$50,$51 ; 92A2  TL=$4D TR=$4E BL=$50 BR=$51
        .byte   $4F,$43,$52,$00 ; 92A6  TL=$4F TR=$43 BL=$52 BR=$00
        .byte   $43,$43,$33,$33 ; 92AA  TL=$43 TR=$43 BL=$33 BR=$33
        .byte   $43,$43,$33,$00 ; 92AE  TL=$43 TR=$43 BL=$33 BR=$00
        .byte   $43,$43,$00,$00 ; 92B2  TL=$43 TR=$43 BL=$00 BR=$00
        .byte   $43,$43,$00,$33 ; 92B6  TL=$43 TR=$43 BL=$00 BR=$33
        .byte   $80,$84,$81,$84 ; 92BA  TL=$80 TR=$84 BL=$81 BR=$84
        .byte   $43,$5B,$33,$5D ; 92BE  TL=$43 TR=$5B BL=$33 BR=$5D
        .byte   $5C,$84,$5E,$86 ; 92C2  TL=$5C TR=$84 BL=$5E BR=$86
        .byte   $89,$8A,$8E,$00 ; 92C6  TL=$89 TR=$8A BL=$8E BR=$00
        .byte   $00,$00,$96,$96 ; 92CA  TL=$00 TR=$00 BL=$96 BR=$96
        .byte   $67,$67,$65,$65 ; 92CE  TL=$67 TR=$67 BL=$65 BR=$65
        .byte   $8B,$88,$8C,$8D ; 92D2  TL=$8B TR=$88 BL=$8C BR=$8D
        .byte   $00,$8F,$96,$90 ; 92D6  TL=$00 TR=$8F BL=$96 BR=$90
        .byte   $89,$92,$8E,$00 ; 92DA  TL=$89 TR=$92 BL=$8E BR=$00
        .byte   $93,$88,$8C,$8D ; 92DE  TL=$93 TR=$88 BL=$8C BR=$8D
        .byte   $00,$4D,$00,$50 ; 92E2  TL=$00 TR=$4D BL=$00 BR=$50
        .byte   $4E,$4F,$51,$52 ; 92E6  TL=$4E TR=$4F BL=$51 BR=$52
        .byte   $1B,$4D,$1B,$50 ; 92EA  TL=$1B TR=$4D BL=$1B BR=$50
        .byte   $6A,$6B,$6B,$6A ; 92EE  TL=$6A TR=$6B BL=$6B BR=$6A
; 160 ChunkDesc records — the level's Chunk definitions, each a 2×2 quad of Structures. These are
; the indices TankLvl2_MapData's grid holds.
TankLvl2_ChunkDescTable:
        .byte   $00,$00,$01,$00 ; 92F2  TL=$00 TR=$00 BL=$01 BR=$00
        .byte   $00,$00,$00,$00 ; 92F6  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$02,$00,$01 ; 92FA  TL=$00 TR=$02 BL=$00 BR=$01
        .byte   $03,$02,$01,$01 ; 92FE  TL=$03 TR=$02 BL=$01 BR=$01
        .byte   $03,$04,$01,$04 ; 9302  TL=$03 TR=$04 BL=$01 BR=$04
        .byte   $05,$06,$07,$08 ; 9306  TL=$05 TR=$06 BL=$07 BR=$08
        .byte   $09,$04,$08,$08 ; 930A  TL=$09 TR=$04 BL=$08 BR=$08
        .byte   $0A,$0B,$0C,$0D ; 930E  TL=$0A TR=$0B BL=$0C BR=$0D
        .byte   $05,$06,$0E,$08 ; 9312  TL=$05 TR=$06 BL=$0E BR=$08
        .byte   $0B,$0B,$0B,$0B ; 9316  TL=$0B TR=$0B BL=$0B BR=$0B
        .byte   $09,$02,$09,$01 ; 931A  TL=$09 TR=$02 BL=$09 BR=$01
        .byte   $03,$00,$01,$01 ; 931E  TL=$03 TR=$00 BL=$01 BR=$01
        .byte   $00,$00,$01,$01 ; 9322  TL=$00 TR=$00 BL=$01 BR=$01
        .byte   $0F,$04,$00,$04 ; 9326  TL=$0F TR=$04 BL=$00 BR=$04
        .byte   $09,$04,$07,$10 ; 932A  TL=$09 TR=$04 BL=$07 BR=$10
        .byte   $11,$12,$08,$10 ; 932E  TL=$11 TR=$12 BL=$08 BR=$10
        .byte   $09,$04,$08,$10 ; 9332  TL=$09 TR=$04 BL=$08 BR=$10
        .byte   $09,$00,$09,$00 ; 9336  TL=$09 TR=$00 BL=$09 BR=$00
        .byte   $0F,$00,$13,$14 ; 933A  TL=$0F TR=$00 BL=$13 BR=$14
        .byte   $0F,$00,$13,$15 ; 933E  TL=$0F TR=$00 BL=$13 BR=$15
        .byte   $16,$0B,$17,$0D ; 9342  TL=$16 TR=$0B BL=$17 BR=$0D
        .byte   $09,$04,$0E,$08 ; 9346  TL=$09 TR=$04 BL=$0E BR=$08
        .byte   $05,$06,$08,$08 ; 934A  TL=$05 TR=$06 BL=$08 BR=$08
        .byte   $00,$04,$00,$04 ; 934E  TL=$00 TR=$04 BL=$00 BR=$04
        .byte   $16,$18,$16,$19 ; 9352  TL=$16 TR=$18 BL=$16 BR=$19
        .byte   $09,$04,$0E,$10 ; 9356  TL=$09 TR=$04 BL=$0E BR=$10
        .byte   $09,$04,$08,$1A ; 935A  TL=$09 TR=$04 BL=$08 BR=$1A
        .byte   $0A,$18,$1B,$19 ; 935E  TL=$0A TR=$18 BL=$1B BR=$19
        .byte   $09,$04,$0E,$1C ; 9362  TL=$09 TR=$04 BL=$0E BR=$1C
        .byte   $1D,$0B,$1E,$0B ; 9366  TL=$1D TR=$0B BL=$1E BR=$0B
        .byte   $1F,$20,$0B,$21 ; 936A  TL=$1F TR=$20 BL=$0B BR=$21
        .byte   $1F,$0B,$0B,$1C ; 936E  TL=$1F TR=$0B BL=$0B BR=$1C
        .byte   $05,$06,$1E,$07 ; 9372  TL=$05 TR=$06 BL=$1E BR=$07
        .byte   $09,$04,$08,$1C ; 9376  TL=$09 TR=$04 BL=$08 BR=$1C
        .byte   $1F,$18,$0B,$22 ; 937A  TL=$1F TR=$18 BL=$0B BR=$22
        .byte   $00,$04,$23,$04 ; 937E  TL=$00 TR=$04 BL=$23 BR=$04
        .byte   $0B,$1A,$0B,$24 ; 9382  TL=$0B TR=$1A BL=$0B BR=$24
        .byte   $09,$00,$09,$23 ; 9386  TL=$09 TR=$00 BL=$09 BR=$23
        .byte   $00,$00,$23,$23 ; 938A  TL=$00 TR=$00 BL=$23 BR=$23
        .byte   $09,$04,$07,$08 ; 938E  TL=$09 TR=$04 BL=$07 BR=$08
        .byte   $25,$04,$26,$04 ; 9392  TL=$25 TR=$04 BL=$26 BR=$04
        .byte   $09,$25,$09,$00 ; 9396  TL=$09 TR=$25 BL=$09 BR=$00
        .byte   $25,$25,$00,$00 ; 939A  TL=$25 TR=$25 BL=$00 BR=$00
        .byte   $25,$04,$00,$00 ; 939E  TL=$25 TR=$04 BL=$00 BR=$00
        .byte   $09,$04,$00,$00 ; 93A2  TL=$09 TR=$04 BL=$00 BR=$00
        .byte   $09,$25,$00,$27 ; 93A6  TL=$09 TR=$25 BL=$00 BR=$27
        .byte   $25,$25,$26,$27 ; 93AA  TL=$25 TR=$25 BL=$26 BR=$27
        .byte   $28,$04,$26,$04 ; 93AE  TL=$28 TR=$04 BL=$26 BR=$04
        .byte   $0B,$18,$0B,$18 ; 93B2  TL=$0B TR=$18 BL=$0B BR=$18
        .byte   $09,$02,$09,$02 ; 93B6  TL=$09 TR=$02 BL=$09 BR=$02
        .byte   $03,$02,$29,$2A ; 93BA  TL=$03 TR=$02 BL=$29 BR=$2A
        .byte   $03,$02,$2B,$2C ; 93BE  TL=$03 TR=$02 BL=$2B BR=$2C
        .byte   $03,$02,$2D,$2C ; 93C2  TL=$03 TR=$02 BL=$2D BR=$2C
        .byte   $03,$02,$2D,$29 ; 93C6  TL=$03 TR=$02 BL=$2D BR=$29
        .byte   $03,$02,$2A,$2A ; 93CA  TL=$03 TR=$02 BL=$2A BR=$2A
        .byte   $03,$00,$03,$00 ; 93CE  TL=$03 TR=$00 BL=$03 BR=$00
        .byte   $2E,$2F,$30,$31 ; 93D2  TL=$2E TR=$2F BL=$30 BR=$31
        .byte   $32,$33,$34,$35 ; 93D6  TL=$32 TR=$33 BL=$34 BR=$35
        .byte   $00,$36,$00,$27 ; 93DA  TL=$00 TR=$36 BL=$00 BR=$27
        .byte   $07,$08,$16,$0B ; 93DE  TL=$07 TR=$08 BL=$16 BR=$0B
        .byte   $08,$08,$0B,$0B ; 93E2  TL=$08 TR=$08 BL=$0B BR=$0B
        .byte   $37,$38,$39,$3A ; 93E6  TL=$37 TR=$38 BL=$39 BR=$3A
        .byte   $16,$18,$16,$18 ; 93EA  TL=$16 TR=$18 BL=$16 BR=$18
        .byte   $0B,$18,$0B,$19 ; 93EE  TL=$0B TR=$18 BL=$0B BR=$19
        .byte   $0A,$18,$1B,$18 ; 93F2  TL=$0A TR=$18 BL=$1B BR=$18
        .byte   $3B,$3C,$3D,$22 ; 93F6  TL=$3B TR=$3C BL=$3D BR=$22
        .byte   $3E,$3B,$3E,$3B ; 93FA  TL=$3E TR=$3B BL=$3E BR=$3B
        .byte   $03,$02,$2A,$1C ; 93FE  TL=$03 TR=$02 BL=$2A BR=$1C
        .byte   $3F,$40,$1E,$41 ; 9402  TL=$3F TR=$40 BL=$1E BR=$41
        .byte   $42,$43,$44,$44 ; 9406  TL=$42 TR=$43 BL=$44 BR=$44
        .byte   $45,$43,$44,$44 ; 940A  TL=$45 TR=$43 BL=$44 BR=$44
        .byte   $3F,$40,$46,$41 ; 940E  TL=$3F TR=$40 BL=$46 BR=$41
        .byte   $42,$43,$44,$1C ; 9412  TL=$42 TR=$43 BL=$44 BR=$1C
        .byte   $16,$0B,$1E,$0B ; 9416  TL=$16 TR=$0B BL=$1E BR=$0B
        .byte   $0B,$47,$0B,$0E ; 941A  TL=$0B TR=$47 BL=$0B BR=$0E
        .byte   $28,$36,$26,$27 ; 941E  TL=$28 TR=$36 BL=$26 BR=$27
        .byte   $48,$49,$26,$27 ; 9422  TL=$48 TR=$49 BL=$26 BR=$27
        .byte   $4A,$0B,$07,$0B ; 9426  TL=$4A TR=$0B BL=$07 BR=$0B
        .byte   $4B,$02,$4C,$29 ; 942A  TL=$4B TR=$02 BL=$4C BR=$29
        .byte   $4D,$3B,$4E,$3B ; 942E  TL=$4D TR=$3B BL=$4E BR=$3B
        .byte   $03,$02,$2B,$29 ; 9432  TL=$03 TR=$02 BL=$2B BR=$29
        .byte   $4D,$3B,$4F,$50 ; 9436  TL=$4D TR=$3B BL=$4F BR=$50
        .byte   $3E,$3B,$51,$50 ; 943A  TL=$3E TR=$3B BL=$51 BR=$50
        .byte   $52,$52,$00,$00 ; 943E  TL=$52 TR=$52 BL=$00 BR=$00
        .byte   $53,$53,$52,$52 ; 9442  TL=$53 TR=$53 BL=$52 BR=$52
        .byte   $16,$47,$16,$0E ; 9446  TL=$16 TR=$47 BL=$16 BR=$0E
        .byte   $54,$3B,$54,$3B ; 944A  TL=$54 TR=$3B BL=$54 BR=$3B
        .byte   $54,$3B,$54,$50 ; 944E  TL=$54 TR=$3B BL=$54 BR=$50
        .byte   $55,$55,$56,$57 ; 9452  TL=$55 TR=$55 BL=$56 BR=$57
        .byte   $55,$55,$58,$59 ; 9456  TL=$55 TR=$55 BL=$58 BR=$59
        .byte   $55,$55,$5A,$59 ; 945A  TL=$55 TR=$55 BL=$5A BR=$59
        .byte   $1B,$47,$0B,$0E ; 945E  TL=$1B TR=$47 BL=$0B BR=$0E
        .byte   $03,$02,$5B,$2C ; 9462  TL=$03 TR=$02 BL=$5B BR=$2C
        .byte   $5C,$5D,$2D,$2C ; 9466  TL=$5C TR=$5D BL=$2D BR=$2C
        .byte   $56,$3B,$56,$3B ; 946A  TL=$56 TR=$3B BL=$56 BR=$3B
        .byte   $3C,$5E,$3C,$5E ; 946E  TL=$3C TR=$5E BL=$3C BR=$5E
        .byte   $3B,$5E,$3B,$5E ; 9472  TL=$3B TR=$5E BL=$3B BR=$5E
        .byte   $3B,$5E,$3B,$1C ; 9476  TL=$3B TR=$5E BL=$3B BR=$1C
        .byte   $5F,$3B,$60,$50 ; 947A  TL=$5F TR=$3B BL=$60 BR=$50
        .byte   $56,$22,$61,$61 ; 947E  TL=$56 TR=$22 BL=$61 BR=$61
        .byte   $62,$63,$61,$61 ; 9482  TL=$62 TR=$63 BL=$61 BR=$61
        .byte   $50,$63,$61,$61 ; 9486  TL=$50 TR=$63 BL=$61 BR=$61
        .byte   $61,$00,$00,$00 ; 948A  TL=$61 TR=$00 BL=$00 BR=$00
        .byte   $03,$02,$5B,$29 ; 948E  TL=$03 TR=$02 BL=$5B BR=$29
        .byte   $03,$00,$03,$02 ; 9492  TL=$03 TR=$00 BL=$03 BR=$02
        .byte   $00,$00,$03,$02 ; 9496  TL=$00 TR=$00 BL=$03 BR=$02
        .byte   $00,$36,$03,$27 ; 949A  TL=$00 TR=$36 BL=$03 BR=$27
        .byte   $03,$02,$03,$02 ; 949E  TL=$03 TR=$02 BL=$03 BR=$02
        .byte   $03,$04,$03,$04 ; 94A2  TL=$03 TR=$04 BL=$03 BR=$04
        .byte   $56,$56,$56,$56 ; 94A6  TL=$56 TR=$56 BL=$56 BR=$56
        .byte   $03,$02,$1E,$29 ; 94AA  TL=$03 TR=$02 BL=$1E BR=$29
        .byte   $5F,$3B,$5F,$3B ; 94AE  TL=$5F TR=$3B BL=$5F BR=$3B
        .byte   $3E,$3B,$51,$22 ; 94B2  TL=$3E TR=$3B BL=$51 BR=$22
        .byte   $28,$04,$64,$04 ; 94B6  TL=$28 TR=$04 BL=$64 BR=$04
        .byte   $03,$02,$03,$64 ; 94BA  TL=$03 TR=$02 BL=$03 BR=$64
        .byte   $03,$02,$64,$64 ; 94BE  TL=$03 TR=$02 BL=$64 BR=$64
        .byte   $65,$04,$66,$04 ; 94C2  TL=$65 TR=$04 BL=$66 BR=$04
        .byte   $03,$67,$03,$68 ; 94C6  TL=$03 TR=$67 BL=$03 BR=$68
        .byte   $69,$6A,$6B,$6C ; 94CA  TL=$69 TR=$6A BL=$6B BR=$6C
        .byte   $6D,$6E,$6F,$70 ; 94CE  TL=$6D TR=$6E BL=$6F BR=$70
        .byte   $6D,$6E,$71,$72 ; 94D2  TL=$6D TR=$6E BL=$71 BR=$72
        .byte   $73,$74,$75,$76 ; 94D6  TL=$73 TR=$74 BL=$75 BR=$76
        .byte   $66,$04,$77,$04 ; 94DA  TL=$66 TR=$04 BL=$77 BR=$04
        .byte   $09,$04,$1E,$07 ; 94DE  TL=$09 TR=$04 BL=$1E BR=$07
        .byte   $03,$02,$78,$2C ; 94E2  TL=$03 TR=$02 BL=$78 BR=$2C
        .byte   $79,$79,$7A,$7B ; 94E6  TL=$79 TR=$79 BL=$7A BR=$7B
        .byte   $79,$79,$7C,$7C ; 94EA  TL=$79 TR=$79 BL=$7C BR=$7C
        .byte   $6F,$70,$7C,$7C ; 94EE  TL=$6F TR=$70 BL=$7C BR=$7C
        .byte   $79,$79,$7D,$7E ; 94F2  TL=$79 TR=$79 BL=$7D BR=$7E
        .byte   $79,$79,$7E,$7F ; 94F6  TL=$79 TR=$79 BL=$7E BR=$7F
        .byte   $75,$80,$81,$82 ; 94FA  TL=$75 TR=$80 BL=$81 BR=$82
        .byte   $83,$04,$84,$04 ; 94FE  TL=$83 TR=$04 BL=$84 BR=$04
        .byte   $4D,$3B,$51,$50 ; 9502  TL=$4D TR=$3B BL=$51 BR=$50
        .byte   $78,$3B,$85,$50 ; 9506  TL=$78 TR=$3B BL=$85 BR=$50
        .byte   $03,$86,$03,$87 ; 950A  TL=$03 TR=$86 BL=$03 BR=$87
        .byte   $83,$86,$84,$87 ; 950E  TL=$83 TR=$86 BL=$84 BR=$87
        .byte   $88,$56,$84,$84 ; 9512  TL=$88 TR=$56 BL=$84 BR=$84
        .byte   $56,$89,$84,$87 ; 9516  TL=$56 TR=$89 BL=$84 BR=$87
        .byte   $00,$04,$26,$27 ; 951A  TL=$00 TR=$04 BL=$26 BR=$27
        .byte   $09,$04,$26,$27 ; 951E  TL=$09 TR=$04 BL=$26 BR=$27
        .byte   $09,$04,$26,$00 ; 9522  TL=$09 TR=$04 BL=$26 BR=$00
        .byte   $09,$02,$00,$02 ; 9526  TL=$09 TR=$02 BL=$00 BR=$02
        .byte   $00,$00,$00,$27 ; 952A  TL=$00 TR=$00 BL=$00 BR=$27
        .byte   $00,$00,$26,$27 ; 952E  TL=$00 TR=$00 BL=$26 BR=$27
        .byte   $28,$00,$26,$00 ; 9532  TL=$28 TR=$00 BL=$26 BR=$00
        .byte   $00,$02,$00,$02 ; 9536  TL=$00 TR=$02 BL=$00 BR=$02
        .byte   $03,$36,$03,$27 ; 953A  TL=$03 TR=$36 BL=$03 BR=$27
        .byte   $0A,$0B,$1B,$0B ; 953E  TL=$0A TR=$0B BL=$1B BR=$0B
        .byte   $3E,$3B,$3E,$50 ; 9542  TL=$3E TR=$3B BL=$3E BR=$50
        .byte   $8A,$8B,$61,$61 ; 9546  TL=$8A TR=$8B BL=$61 BR=$61
        .byte   $5F,$3B,$5F,$50 ; 954A  TL=$5F TR=$3B BL=$5F BR=$50
        .byte   $16,$47,$16,$1C ; 954E  TL=$16 TR=$47 BL=$16 BR=$1C
        .byte   $3B,$5E,$1E,$5E ; 9552  TL=$3B TR=$5E BL=$1E BR=$5E
        .byte   $61,$61,$00,$00 ; 9556  TL=$61 TR=$61 BL=$00 BR=$00
        .byte   $8C,$8B,$61,$61 ; 955A  TL=$8C TR=$8B BL=$61 BR=$61
        .byte   $78,$3B,$78,$50 ; 955E  TL=$78 TR=$3B BL=$78 BR=$50
        .byte   $28,$02,$26,$02 ; 9562  TL=$28 TR=$02 BL=$26 BR=$02
        .byte   $03,$02,$78,$29 ; 9566  TL=$03 TR=$02 BL=$78 BR=$29
        .byte   $8D,$04,$08,$08 ; 956A  TL=$8D TR=$04 BL=$08 BR=$08
        .byte   $00,$00,$00,$00 ; 956E  TL=$00 TR=$00 BL=$00 BR=$00
; 32×32 chunk-index grid = 1024 bytes
TankLvl2_MapData:
        .byte   $00,$01,$01,$01,$01,$01,$01,$01 ; 9572
        .byte   $02,$03,$03,$03,$03,$03,$03,$03 ; 957A
        .byte   $04,$05,$06,$07,$08,$06,$07,$09 ; 9582
        .byte   $0A,$03,$03,$03,$0B,$0C,$0C,$0C ; 958A
        .byte   $0D,$0E,$0F,$0F,$0F,$10,$10,$10 ; 9592
        .byte   $11,$12,$13,$13,$13,$13,$13,$12 ; 959A
        .byte   $0D,$14,$15,$16,$06,$07,$15,$07 ; 95A2
        .byte   $11,$12,$13,$13,$13,$13,$13,$13 ; 95AA
        .byte   $17,$18,$19,$10,$1A,$0E,$1B,$1C ; 95B2
        .byte   $11,$1D,$1E,$1E,$1E,$1E,$1E,$1F ; 95BA
        .byte   $17,$20,$07,$15,$07,$15,$06,$21 ; 95C2
        .byte   $11,$1D,$1E,$1E,$1E,$1E,$1E,$22 ; 95CA
        .byte   $23,$0E,$10,$1B,$24,$18,$19,$10 ; 95D2
        .byte   $25,$26,$26,$26,$26,$26,$26,$26 ; 95DA
        .byte   $23,$27,$06,$07,$15,$06,$07,$15 ; 95E2
        .byte   $25,$26,$26,$26,$26,$26,$26,$26 ; 95EA
        .byte   $28,$18,$0F,$0F,$0F,$0F,$10,$10 ; 95F2
        .byte   $29,$2A,$2A,$2A,$2A,$2A,$2A,$2A ; 95FA
        .byte   $2B,$2C,$2C,$2C,$2C,$2C,$2C,$2C ; 9602
        .byte   $2D,$2E,$2E,$2E,$2E,$2E,$2E,$2E ; 960A
        .byte   $2F,$0E,$10,$10,$10,$10,$1B,$30 ; 9612
        .byte   $31,$32,$33,$34,$34,$34,$35,$36 ; 961A
        .byte   $37,$38,$39,$38,$38,$39,$38,$39 ; 9622
        .byte   $3A,$3B,$3C,$3D,$3D,$3C,$3D,$3C ; 962A
        .byte   $2F,$3E,$3F,$3F,$3F,$3F,$19,$40 ; 9632
        .byte   $31,$41,$42,$42,$42,$42,$42,$43 ; 963A
        .byte   $37,$44,$45,$46,$47,$45,$47,$48 ; 9642
        .byte   $3A,$49,$4A,$4B,$4C,$4C,$4B,$4D ; 964A
        .byte   $2F,$18,$19,$10,$10,$10,$40,$30 ; 9652
        .byte   $31,$4E,$4F,$42,$50,$51,$52,$33 ; 965A
        .byte   $37,$53,$54,$53,$54,$53,$54,$53 ; 9662
        .byte   $3A,$4B,$4D,$3D,$3C,$3D,$4B,$55 ; 966A
        .byte   $2F,$0E,$1B,$3F,$30,$3F,$3F,$30 ; 9672
        .byte   $31,$56,$42,$42,$52,$33,$35,$4F ; 967A
        .byte   $37,$01,$01,$01,$01,$01,$01,$01 ; 9682
        .byte   $3A,$4B,$4B,$4B,$4B,$4B,$4B,$4D ; 968A
        .byte   $2F,$0E,$10,$10,$40,$19,$10,$1B ; 9692
        .byte   $31,$57,$52,$52,$36,$51,$42,$52 ; 969A
        .byte   $37,$58,$59,$5A,$5A,$5A,$5A,$5A ; 96A2
        .byte   $3A,$3B,$3C,$4B,$3B,$3D,$3C,$5B ; 96AA
        .byte   $2F,$3E,$3F,$3F,$3F,$3F,$3F,$19 ; 96B2
        .byte   $31,$5C,$5D,$34,$34,$35,$51,$33 ; 96BA
        .byte   $37,$5E,$5F,$60,$60,$60,$60,$61 ; 96C2
        .byte   $3A,$49,$4A,$4B,$4D,$4B,$4C,$4D ; 96CA
        .byte   $2F,$18,$19,$10,$1A,$0E,$10,$1B ; 96D2
        .byte   $31,$62,$42,$52,$52,$52,$36,$51 ; 96DA
        .byte   $37,$63,$64,$65,$65,$65,$65,$66 ; 96E2
        .byte   $3A,$4B,$4D,$3D,$5B,$4B,$3D,$5B ; 96EA
        .byte   $2F,$0E,$1B,$30,$24,$18,$3F,$19 ; 96F2
        .byte   $31,$67,$51,$33,$5D,$34,$34,$34 ; 96FA
        .byte   $68,$69,$69,$69,$69,$69,$69,$69 ; 9702
        .byte   $6A,$4B,$4C,$4B,$4C,$4B,$4B,$4B ; 970A
        .byte   $2F,$18,$19,$1B,$19,$1A,$0E,$1B ; 9712
        .byte   $31,$62,$36,$51,$52,$42,$42,$52 ; 971A
        .byte   $6B,$32,$33,$34,$34,$34,$34,$34 ; 9722
        .byte   $6C,$6D,$6D,$6D,$6D,$6D,$6D,$6D ; 972A
        .byte   $2F,$0E,$10,$10,$1B,$24,$18,$19 ; 9732
        .byte   $31,$5C,$34,$34,$35,$51,$52,$43 ; 973A
        .byte   $6B,$6E,$4F,$42,$42,$42,$42,$42 ; 9742
        .byte   $6C,$6D,$6D,$6D,$6D,$6D,$6D,$6D ; 974A
        .byte   $2F,$18,$3F,$19,$1A,$0E,$10,$1B ; 9752
        .byte   $31,$6F,$52,$52,$52,$33,$34,$34 ; 975A
        .byte   $6B,$32,$51,$52,$52,$52,$70,$52 ; 9762
        .byte   $6C,$6D,$6D,$6D,$6D,$6D,$6D,$6D ; 976A
        .byte   $71,$0E,$0F,$1B,$24,$18,$3F,$19 ; 9772
        .byte   $31,$62,$33,$5D,$35,$4F,$42,$42 ; 977A
        .byte   $72,$73,$73,$73,$73,$73,$73,$73 ; 9782
        .byte   $73,$73,$73,$73,$73,$73,$73,$73 ; 978A
        .byte   $74,$18,$19,$10,$10,$1A,$0E,$1B ; 9792
        .byte   $31,$32,$51,$52,$52,$52,$52,$42 ; 979A
        .byte   $75,$76,$77,$76,$78,$77,$76,$76 ; 97A2
        .byte   $77,$76,$78,$76,$76,$77,$78,$79 ; 97AA
        .byte   $7A,$7B,$1B,$30,$3F,$24,$18,$1C ; 97B2
        .byte   $31,$6E,$33,$7C,$34,$5D,$35,$51 ; 97BA
        .byte   $75,$7D,$7E,$7E,$7F,$80,$81,$7E ; 97C2
        .byte   $80,$81,$7F,$80,$81,$7E,$7F,$82 ; 97CA
        .byte   $83,$0E,$10,$1B,$19,$10,$10,$10 ; 97D2
        .byte   $31,$67,$84,$85,$52,$42,$52,$36 ; 97DA
        .byte   $86,$87,$87,$87,$87,$88,$89,$87 ; 97E2
        .byte   $88,$89,$87,$88,$89,$87,$87,$87 ; 97EA
        .byte   $8A,$8B,$8B,$8B,$8C,$2C,$2C,$2C ; 97F2
        .byte   $8D,$62,$33,$7C,$35,$51,$33,$34 ; 97FA
        .byte   $37,$01,$01,$01,$01,$01,$01,$01 ; 9802
        .byte   $01,$01,$01,$01,$8E,$8F,$8F,$8F ; 980A
        .byte   $3C,$3C,$3D,$3C,$90,$58,$59,$5A ; 9812
        .byte   $91,$32,$33,$85,$52,$36,$4F,$52 ; 981A
        .byte   $6C,$27,$06,$06,$06,$06,$06,$06 ; 9822
        .byte   $31,$5C,$35,$36,$92,$3B,$3C,$3D ; 982A
        .byte   $55,$4C,$4B,$55,$90,$5E,$5F,$61 ; 9832
        .byte   $91,$6E,$85,$33,$34,$35,$51,$43 ; 983A
        .byte   $6C,$7B,$93,$09,$09,$09,$15,$93 ; 9842
        .byte   $31,$6F,$94,$43,$92,$49,$4A,$4B ; 984A
        .byte   $4D,$3C,$4B,$4D,$90,$95,$64,$66 ; 9852
        .byte   $91,$32,$36,$51,$52,$52,$36,$33 ; 985A
        .byte   $6C,$27,$07,$09,$09,$09,$09,$09 ; 9862
        .byte   $31,$96,$33,$34,$92,$4B,$55,$4B ; 986A
        .byte   $4C,$4D,$4B,$55,$90,$01,$01,$01 ; 9872
        .byte   $91,$5C,$34,$34,$5D,$34,$35,$51 ; 987A
        .byte   $6C,$14,$08,$07,$09,$09,$09,$09 ; 9882
        .byte   $31,$6F,$94,$42,$92,$4B,$4D,$4B ; 988A
        .byte   $3D,$5B,$4B,$4D,$90,$5A,$5A,$5A ; 9892
        .byte   $91,$6F,$52,$52,$52,$52,$52,$33 ; 989A
        .byte   $6C,$27,$07,$08,$07,$09,$09,$09 ; 98A2
        .byte   $31,$96,$42,$94,$92,$3B,$5B,$4B ; 98AA
        .byte   $4C,$4C,$4B,$97,$90,$98,$60,$60 ; 98B2
        .byte   $91,$62,$33,$5D,$34,$7C,$35,$51 ; 98BA
        .byte   $6C,$14,$08,$07,$15,$07,$09,$09 ; 98C2
        .byte   $31,$6F,$94,$42,$92,$55,$4C,$4B ; 98CA
        .byte   $3C,$3D,$4B,$4B,$90,$99,$65,$9A ; 98D2
        .byte   $91,$32,$51,$52,$42,$9B,$52,$36 ; 98DA
        .byte   $6C,$27,$07,$15,$07,$08,$07,$09 ; 98E2
        .byte   $31,$96,$42,$94,$92,$4D,$3C,$3D ; 98EA
        .byte   $4B,$4B,$4B,$4B,$4B,$4B,$4B,$4B ; 98F2
        .byte   $9C,$5C,$34,$9D,$51,$33,$34,$34 ; 98FA
        .byte   $6C,$14,$15,$07,$15,$06,$06,$93 ; 9902
        .byte   $31,$6F,$94,$42,$92,$4B,$4B,$4B ; 990A
        .byte   $5A,$5A,$5A,$5A,$5A,$5A,$5A,$5A ; 9912
        .byte   $91,$62,$42,$85,$36,$51,$52,$42 ; 991A
        .byte   $6C,$27,$07,$08,$06,$06,$07,$09 ; 9922
        .byte   $31,$96,$42,$52,$37,$5A,$5A,$5A ; 992A
        .byte   $60,$60,$60,$60,$60,$60,$60,$61 ; 9932
        .byte   $91,$6E,$51,$33,$34,$34,$35,$51 ; 993A
        .byte   $6C,$27,$06,$06,$9E,$07,$15,$93 ; 9942
        .byte   $31,$6F,$42,$43,$37,$98,$60,$60 ; 994A
        .byte   $65,$65,$65,$65,$65,$65,$65,$66 ; 9952
        .byte   $91,$32,$36,$51,$52,$52,$52,$36 ; 995A
        .byte   $6C,$14,$15,$06,$07,$08,$06,$93 ; 9962
        .byte   $31,$62,$52,$36,$37,$99,$65,$65 ; 996A
; 16 bytes — 8 B vertical + 8 B horizontal scroll-boundary flags
TankLvl2_ScrollData:
        .byte   $F3,$3F,$0C,$0C,$0F,$CF,$40,$C1 ; 9972
        .byte   $AA,$AA,$AA,$AA,$A8,$6B,$6B,$2B ; 997A
; Tile attribute table – bits: 0-1=palette 3=Gateway 2+3=Tunnel(→Overhead) 4=damage 5=ladder
; 6=water 7=solid  3+7=Doorway 4+6=lava 5+7=solid-ladder 6+7=destroyable
TankLvl2_TileAttrTable:
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 9982
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 998A
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 9992
        .byte   $00,$00,$01,$01,$01,$01,$01,$01 ; 999A
        .byte   $01,$01,$01,$01,$01,$01,$01,$01 ; 99A2
        .byte   $01,$01,$01,$01,$02,$02,$02,$02 ; 99AA
        .byte   $02,$02,$02,$02,$00,$00,$00,$00 ; 99B2
        .byte   $00,$01,$01,$01,$00,$00,$00,$00 ; 99BA
        .byte   $00,$00,$00,$00,$02,$02,$02,$02 ; 99C2
        .byte   $02,$02,$02,$02,$02,$02,$02,$02 ; 99CA
        .byte   $02,$08,$02,$80,$80,$80,$88,$80 ; 99D2
        .byte   $80,$88,$80,$00,$88,$00,$88,$81 ; 99DA
        .byte   $81,$0D,$01,$A0,$20,$C0,$80,$80 ; 99E2
        .byte   $80,$80,$80,$80,$80,$80,$80,$82 ; 99EA
        .byte   $82,$82,$82,$82,$82,$82,$82,$82 ; 99F2
        .byte   $82,$82,$80,$80,$80,$80,$80,$80 ; 99FA
        .byte   $82,$80,$81,$81,$81,$81,$81,$81 ; 9A02
        .byte   $82,$82,$82,$82,$82,$82,$82,$82 ; 9A0A
        .byte   $82,$82,$82,$82,$82,$10,$10,$53 ; 9A12
; ----------------------------------------------------------------------------
; Level 3 map pointer table (6×16-bit LE ptrs): BgPalette, TileAttr, TileDesc, StructureDesc,
; ChunkDesc, MapData
TankLvl3_MapPointers:
        .addr   TankLvl3_BgPalette              ; 9A1A
        .addr   TankLvl3_TileAttrTable          ; 9A1C
        .addr   TankLvl3_TileDescTable          ; 9A1E
        .addr   TankLvl3_StructureDescTable     ; 9A20
        .addr   TankLvl3_ChunkDescTable         ; 9A22
        .addr   TankLvl3_MapData                ; 9A24
; ----------------------------------------------------------------------------
; 4 BgPalette records — the level's 4 background sub-palettes × 4 NES colour indices.
TankLvl3_BgPalette:
        .byte   $0F,$06,$17,$10 ; 9A26  Backdrop=$0F Colour1=$06 Colour2=$17 Colour3=$10
        .byte   $0F,$07,$00,$10 ; 9A2A  Backdrop=$0F Colour1=$07 Colour2=$00 Colour3=$10
        .byte   $0F,$14,$19,$10 ; 9A2E  Backdrop=$0F Colour1=$14 Colour2=$19 Colour3=$10
        .byte   $0F,$0B,$00,$37 ; 9A32  Backdrop=$0F Colour1=$0B Colour2=$00 Colour3=$37
; 121 TileDesc records — the level's Tile definitions. Index space shared with
; TankLvl3_TileAttrTable, which has the matching 121 entries.
TankLvl3_TileDescTable:
        .byte   $00,$00,$00,$00 ; 9A36  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $A8,$B8,$A9,$B9 ; 9A3A  TL=$A8 TR=$B8 BL=$A9 BR=$B9
        .byte   $02,$02,$02,$02 ; 9A3E  TL=$02 TR=$02 BL=$02 BR=$02
        .byte   $12,$02,$12,$02 ; 9A42  TL=$12 TR=$02 BL=$12 BR=$02
        .byte   $11,$11,$02,$02 ; 9A46  TL=$11 TR=$11 BL=$02 BR=$02
        .byte   $06,$11,$12,$02 ; 9A4A  TL=$06 TR=$11 BL=$12 BR=$02
        .byte   $03,$13,$02,$02 ; 9A4E  TL=$03 TR=$13 BL=$02 BR=$02
        .byte   $03,$13,$02,$05 ; 9A52  TL=$03 TR=$13 BL=$02 BR=$05
        .byte   $12,$10,$12,$02 ; 9A56  TL=$12 TR=$10 BL=$12 BR=$02
        .byte   $04,$14,$02,$02 ; 9A5A  TL=$04 TR=$14 BL=$02 BR=$02
        .byte   $F4,$F4,$02,$02 ; 9A5E  TL=$F4 TR=$F4 BL=$02 BR=$02
        .byte   $07,$F4,$12,$02 ; 9A62  TL=$07 TR=$F4 BL=$12 BR=$02
        .byte   $26,$36,$27,$37 ; 9A66  TL=$26 TR=$36 BL=$27 BR=$37
        .byte   $35,$36,$24,$37 ; 9A6A  TL=$35 TR=$36 BL=$24 BR=$37
        .byte   $22,$32,$27,$37 ; 9A6E  TL=$22 TR=$32 BL=$27 BR=$37
        .byte   $34,$32,$24,$37 ; 9A72  TL=$34 TR=$32 BL=$24 BR=$37
        .byte   $23,$32,$27,$37 ; 9A76  TL=$23 TR=$32 BL=$27 BR=$37
        .byte   $33,$36,$27,$37 ; 9A7A  TL=$33 TR=$36 BL=$27 BR=$37
        .byte   $25,$36,$24,$37 ; 9A7E  TL=$25 TR=$36 BL=$24 BR=$37
        .byte   $26,$36,$27,$49 ; 9A82  TL=$26 TR=$36 BL=$27 BR=$49
        .byte   $35,$36,$24,$49 ; 9A86  TL=$35 TR=$36 BL=$24 BR=$49
        .byte   $22,$32,$27,$49 ; 9A8A  TL=$22 TR=$32 BL=$27 BR=$49
        .byte   $34,$32,$24,$49 ; 9A8E  TL=$34 TR=$32 BL=$24 BR=$49
        .byte   $23,$32,$27,$49 ; 9A92  TL=$23 TR=$32 BL=$27 BR=$49
        .byte   $33,$36,$27,$49 ; 9A96  TL=$33 TR=$36 BL=$27 BR=$49
        .byte   $25,$36,$24,$49 ; 9A9A  TL=$25 TR=$36 BL=$24 BR=$49
        .byte   $C1,$C1,$C1,$C1 ; 9A9E  TL=$C1 TR=$C1 BL=$C1 BR=$C1
        .byte   $A6,$A6,$00,$00 ; 9AA2  TL=$A6 TR=$A6 BL=$00 BR=$00
        .byte   $00,$00,$A5,$A5 ; 9AA6  TL=$00 TR=$00 BL=$A5 BR=$A5
        .byte   $42,$52,$43,$53 ; 9AAA  TL=$42 TR=$52 BL=$43 BR=$53
        .byte   $45,$52,$46,$53 ; 9AAE  TL=$45 TR=$52 BL=$46 BR=$53
        .byte   $44,$54,$43,$53 ; 9AB2  TL=$44 TR=$54 BL=$43 BR=$53
        .byte   $55,$54,$46,$53 ; 9AB6  TL=$55 TR=$54 BL=$46 BR=$53
        .byte   $42,$54,$43,$53 ; 9ABA  TL=$42 TR=$54 BL=$43 BR=$53
        .byte   $56,$52,$43,$53 ; 9ABE  TL=$56 TR=$52 BL=$43 BR=$53
        .byte   $40,$50,$41,$51 ; 9AC2  TL=$40 TR=$50 BL=$41 BR=$51
        .byte   $60,$70,$61,$71 ; 9AC6  TL=$60 TR=$70 BL=$61 BR=$71
        .byte   $70,$70,$71,$71 ; 9ACA  TL=$70 TR=$70 BL=$71 BR=$71
        .byte   $70,$80,$71,$81 ; 9ACE  TL=$70 TR=$80 BL=$71 BR=$81
        .byte   $90,$A0,$91,$A1 ; 9AD2  TL=$90 TR=$A0 BL=$91 BR=$A1
        .byte   $B0,$C0,$B1,$53 ; 9AD6  TL=$B0 TR=$C0 BL=$B1 BR=$53
        .byte   $A4,$B4,$43,$B5 ; 9ADA  TL=$A4 TR=$B4 BL=$43 BR=$B5
        .byte   $C4,$D4,$C5,$D5 ; 9ADE  TL=$C4 TR=$D4 BL=$C5 BR=$D5
        .byte   $92,$A2,$91,$A1 ; 9AE2  TL=$92 TR=$A2 BL=$91 BR=$A1
        .byte   $B2,$52,$B1,$53 ; 9AE6  TL=$B2 TR=$52 BL=$B1 BR=$53
        .byte   $42,$B6,$43,$B5 ; 9AEA  TL=$42 TR=$B6 BL=$43 BR=$B5
        .byte   $C6,$D6,$C5,$D5 ; 9AEE  TL=$C6 TR=$D6 BL=$C5 BR=$D5
        .byte   $92,$A2,$93,$A3 ; 9AF2  TL=$92 TR=$A2 BL=$93 BR=$A3
        .byte   $B2,$52,$B3,$C3 ; 9AF6  TL=$B2 TR=$52 BL=$B3 BR=$C3
        .byte   $42,$B6,$A7,$B7 ; 9AFA  TL=$42 TR=$B6 BL=$A7 BR=$B7
        .byte   $C6,$D6,$C7,$D7 ; 9AFE  TL=$C6 TR=$D6 BL=$C7 BR=$D7
        .byte   $1C,$2C,$1D,$2D ; 9B02  TL=$1C TR=$2C BL=$1D BR=$2D
        .byte   $2C,$2C,$59,$59 ; 9B06  TL=$2C TR=$2C BL=$59 BR=$59
        .byte   $2C,$0C,$59,$0D ; 9B0A  TL=$2C TR=$0C BL=$59 BR=$0D
        .byte   $47,$57,$1D,$2D ; 9B0E  TL=$47 TR=$57 BL=$1D BR=$2D
        .byte   $57,$57,$59,$59 ; 9B12  TL=$57 TR=$57 BL=$59 BR=$59
        .byte   $57,$3C,$59,$0D ; 9B16  TL=$57 TR=$3C BL=$59 BR=$0D
        .byte   $2F,$3F,$2E,$3E ; 9B1A  TL=$2F TR=$3F BL=$2E BR=$3E
        .byte   $2E,$3E,$2E,$3E ; 9B1E  TL=$2E TR=$3E BL=$2E BR=$3E
        .byte   $48,$58,$2E,$3E ; 9B22  TL=$48 TR=$58 BL=$2E BR=$3E
        .byte   $0E,$1E,$0F,$1F ; 9B26  TL=$0E TR=$1E BL=$0F BR=$1F
        .byte   $0F,$1F,$0F,$1F ; 9B2A  TL=$0F TR=$1F BL=$0F BR=$1F
        .byte   $20,$30,$21,$31 ; 9B2E  TL=$20 TR=$30 BL=$21 BR=$31
        .byte   $20,$30,$21,$31 ; 9B32  TL=$20 TR=$30 BL=$21 BR=$31
        .byte   $E6,$F6,$E7,$F7 ; 9B36  TL=$E6 TR=$F6 BL=$E7 BR=$F7
        .byte   $F6,$E4,$F7,$E5 ; 9B3A  TL=$F6 TR=$E4 BL=$F7 BR=$E5
        .byte   $64,$74,$65,$75 ; 9B3E  TL=$64 TR=$74 BL=$65 BR=$75
        .byte   $64,$74,$65,$75 ; 9B42  TL=$64 TR=$74 BL=$65 BR=$75
        .byte   $88,$98,$89,$99 ; 9B46  TL=$88 TR=$98 BL=$89 BR=$99
        .byte   $68,$78,$69,$79 ; 9B4A  TL=$68 TR=$78 BL=$69 BR=$79
        .byte   $86,$96,$87,$97 ; 9B4E  TL=$86 TR=$96 BL=$87 BR=$97
        .byte   $66,$76,$67,$77 ; 9B52  TL=$66 TR=$76 BL=$67 BR=$77
        .byte   $08,$38,$09,$39 ; 9B56  TL=$08 TR=$38 BL=$09 BR=$39
        .byte   $08,$18,$09,$19 ; 9B5A  TL=$08 TR=$18 BL=$09 BR=$19
        .byte   $28,$38,$29,$39 ; 9B5E  TL=$28 TR=$38 BL=$29 BR=$39
        .byte   $0A,$1A,$0B,$1B ; 9B62  TL=$0A TR=$1A BL=$0B BR=$1B
        .byte   $2A,$1A,$2B,$1B ; 9B66  TL=$2A TR=$1A BL=$2B BR=$1B
        .byte   $2A,$3A,$2B,$3B ; 9B6A  TL=$2A TR=$3A BL=$2B BR=$3B
        .byte   $0A,$1A,$0B,$1B ; 9B6E  TL=$0A TR=$1A BL=$0B BR=$1B
        .byte   $2A,$1A,$2B,$1B ; 9B72  TL=$2A TR=$1A BL=$2B BR=$1B
        .byte   $2A,$3A,$2B,$3B ; 9B76  TL=$2A TR=$3A BL=$2B BR=$3B
        .byte   $08,$18,$09,$19 ; 9B7A  TL=$08 TR=$18 BL=$09 BR=$19
        .byte   $28,$38,$29,$39 ; 9B7E  TL=$28 TR=$38 BL=$29 BR=$39
        .byte   $62,$72,$63,$73 ; 9B82  TL=$62 TR=$72 BL=$63 BR=$73
        .byte   $72,$72,$73,$73 ; 9B86  TL=$72 TR=$72 BL=$73 BR=$73
        .byte   $72,$82,$73,$83 ; 9B8A  TL=$72 TR=$82 BL=$73 BR=$83
        .byte   $D0,$E0,$D1,$E1 ; 9B8E  TL=$D0 TR=$E0 BL=$D1 BR=$E1
        .byte   $E0,$F0,$D2,$F1 ; 9B92  TL=$E0 TR=$F0 BL=$D2 BR=$F1
        .byte   $D1,$D2,$C2,$D3 ; 9B96  TL=$D1 TR=$D2 BL=$C2 BR=$D3
        .byte   $E2,$F2,$E3,$F3 ; 9B9A  TL=$E2 TR=$F2 BL=$E3 BR=$F3
        .byte   $4A,$5A,$4B,$5B ; 9B9E  TL=$4A TR=$5A BL=$4B BR=$5B
        .byte   $5A,$5A,$5B,$5B ; 9BA2  TL=$5A TR=$5A BL=$5B BR=$5B
        .byte   $6A,$7A,$6B,$7B ; 9BA6  TL=$6A TR=$7A BL=$6B BR=$7B
        .byte   $4C,$6C,$4D,$6D ; 9BAA  TL=$4C TR=$6C BL=$4D BR=$6D
        .byte   $5C,$6C,$5D,$6D ; 9BAE  TL=$5C TR=$6C BL=$5D BR=$6D
        .byte   $5C,$7C,$5D,$7D ; 9BB2  TL=$5C TR=$7C BL=$5D BR=$7D
        .byte   $4E,$5E,$4F,$5F ; 9BB6  TL=$4E TR=$5E BL=$4F BR=$5F
        .byte   $5E,$5E,$5F,$5F ; 9BBA  TL=$5E TR=$5E BL=$5F BR=$5F
        .byte   $6E,$7E,$6F,$7F ; 9BBE  TL=$6E TR=$7E BL=$6F BR=$7F
        .byte   $C8,$D8,$C9,$D9 ; 9BC2  TL=$C8 TR=$D8 BL=$C9 BR=$D9
        .byte   $E8,$F8,$E9,$F9 ; 9BC6  TL=$E8 TR=$F8 BL=$E9 BR=$F9
        .byte   $CA,$DA,$CB,$DB ; 9BCA  TL=$CA TR=$DA BL=$CB BR=$DB
        .byte   $EA,$FA,$EB,$FB ; 9BCE  TL=$EA TR=$FA BL=$EB BR=$FB
        .byte   $AE,$BE,$AC,$8B ; 9BD2  TL=$AE TR=$BE BL=$AC BR=$8B
        .byte   $8A,$9A,$8D,$9B ; 9BD6  TL=$8A TR=$9A BL=$8D BR=$9B
        .byte   $3D,$8A,$8B,$9D ; 9BDA  TL=$3D TR=$8A BL=$8B BR=$9D
        .byte   $AF,$BF,$9B,$AC ; 9BDE  TL=$AF TR=$BF BL=$9B BR=$AC
        .byte   $AC,$8B,$AD,$8C ; 9BE2  TL=$AC TR=$8B BL=$AD BR=$8C
        .byte   $8E,$9B,$8F,$9C ; 9BE6  TL=$8E TR=$9B BL=$8F BR=$9C
        .byte   $8B,$9E,$8C,$9F ; 9BEA  TL=$8B TR=$9E BL=$8C BR=$9F
        .byte   $9B,$AC,$9C,$AD ; 9BEE  TL=$9B TR=$AC BL=$9C BR=$AD
        .byte   $AB,$AB,$AC,$AC ; 9BF2  TL=$AB TR=$AB BL=$AC BR=$AC
        .byte   $AC,$AC,$AD,$AD ; 9BF6  TL=$AC TR=$AC BL=$AD BR=$AD
        .byte   $CC,$DC,$CD,$DD ; 9BFA  TL=$CC TR=$DC BL=$CD BR=$DD
        .byte   $EC,$FC,$ED,$FD ; 9BFE  TL=$EC TR=$FC BL=$ED BR=$FD
        .byte   $EE,$FE,$EF,$FF ; 9C02  TL=$EE TR=$FE BL=$EF BR=$FF
        .byte   $CE,$00,$CF,$00 ; 9C06  TL=$CE TR=$00 BL=$CF BR=$00
        .byte   $00,$00,$00,$00 ; 9C0A  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$DE,$00,$DF ; 9C0E  TL=$00 TR=$DE BL=$00 BR=$DF
        .byte   $AA,$BA,$AA,$BA ; 9C12  TL=$AA TR=$BA BL=$AA BR=$BA
        .byte   $84,$94,$85,$95 ; 9C16  TL=$84 TR=$94 BL=$85 BR=$95
; 128 StructureDesc records — the level's Structure definitions, each a 2×2 quad of Tiles.
TankLvl3_StructureDescTable:
        .byte   $3F,$40,$40,$41 ; 9C1A  TL=$3F TR=$40 BL=$40 BR=$41
        .byte   $41,$3F,$40,$41 ; 9C1E  TL=$41 TR=$3F BL=$40 BR=$41
        .byte   $5D,$5E,$5D,$5E ; 9C22  TL=$5D TR=$5E BL=$5D BR=$5E
        .byte   $5E,$5F,$5E,$5F ; 9C26  TL=$5E TR=$5F BL=$5E BR=$5F
        .byte   $3D,$3A,$3D,$3A ; 9C2A  TL=$3D TR=$3A BL=$3D BR=$3A
        .byte   $33,$34,$33,$34 ; 9C2E  TL=$33 TR=$34 BL=$33 BR=$34
        .byte   $3D,$39,$3D,$3A ; 9C32  TL=$3D TR=$39 BL=$3D BR=$3A
        .byte   $35,$3A,$35,$3A ; 9C36  TL=$35 TR=$3A BL=$35 BR=$3A
        .byte   $3D,$3D,$3D,$3D ; 9C3A  TL=$3D TR=$3D BL=$3D BR=$3D
        .byte   $35,$39,$35,$3A ; 9C3E  TL=$35 TR=$39 BL=$35 BR=$3A
        .byte   $4E,$4F,$38,$3B ; 9C42  TL=$4E TR=$4F BL=$38 BR=$3B
        .byte   $4F,$50,$3C,$3C ; 9C46  TL=$4F TR=$50 BL=$3C BR=$3C
        .byte   $4E,$4F,$3C,$3B ; 9C4A  TL=$4E TR=$4F BL=$3C BR=$3B
        .byte   $4F,$50,$36,$37 ; 9C4E  TL=$4F TR=$50 BL=$36 BR=$37
        .byte   $0A,$0B,$06,$05 ; 9C52  TL=$0A TR=$0B BL=$06 BR=$05
        .byte   $0A,$0A,$04,$03 ; 9C56  TL=$0A TR=$0A BL=$04 BR=$03
        .byte   $02,$03,$04,$03 ; 9C5A  TL=$02 TR=$03 BL=$04 BR=$03
        .byte   $07,$03,$02,$05 ; 9C5E  TL=$07 TR=$03 BL=$02 BR=$05
        .byte   $43,$43,$43,$43 ; 9C62  TL=$43 TR=$43 BL=$43 BR=$43
        .byte   $54,$54,$27,$28 ; 9C66  TL=$54 TR=$54 BL=$27 BR=$28
        .byte   $54,$55,$1F,$1F ; 9C6A  TL=$54 TR=$55 BL=$1F BR=$1F
        .byte   $2B,$2C,$2B,$2C ; 9C6E  TL=$2B TR=$2C BL=$2B BR=$2C
        .byte   $1D,$1D,$1D,$1D ; 9C72  TL=$1D TR=$1D BL=$1D BR=$1D
        .byte   $53,$54,$1F,$1F ; 9C76  TL=$53 TR=$54 BL=$1F BR=$1F
        .byte   $54,$55,$29,$2A ; 9C7A  TL=$54 TR=$55 BL=$29 BR=$2A
        .byte   $2D,$2E,$2D,$2E ; 9C7E  TL=$2D TR=$2E BL=$2D BR=$2E
        .byte   $71,$72,$74,$75 ; 9C82  TL=$71 TR=$72 BL=$74 BR=$75
        .byte   $73,$03,$76,$05 ; 9C86  TL=$73 TR=$03 BL=$76 BR=$05
        .byte   $6F,$6F,$70,$70 ; 9C8A  TL=$6F TR=$6F BL=$70 BR=$70
        .byte   $09,$03,$05,$04 ; 9C8E  TL=$09 TR=$03 BL=$05 BR=$04
        .byte   $05,$03,$04,$03 ; 9C92  TL=$05 TR=$03 BL=$04 BR=$03
        .byte   $67,$68,$6B,$6C ; 9C96  TL=$67 TR=$68 BL=$6B BR=$6C
        .byte   $02,$03,$05,$04 ; 9C9A  TL=$02 TR=$03 BL=$05 BR=$04
        .byte   $49,$4A,$0B,$0A ; 9C9E  TL=$49 TR=$4A BL=$0B BR=$0A
        .byte   $49,$4A,$0A,$0B ; 9CA2  TL=$49 TR=$4A BL=$0A BR=$0B
        .byte   $03,$09,$03,$07 ; 9CA6  TL=$03 TR=$09 BL=$03 BR=$07
        .byte   $1D,$1D,$24,$25 ; 9CAA  TL=$1D TR=$1D BL=$24 BR=$25
        .byte   $1D,$1D,$25,$26 ; 9CAE  TL=$1D TR=$1D BL=$25 BR=$26
        .byte   $1D,$1D,$24,$26 ; 9CB2  TL=$1D TR=$1D BL=$24 BR=$26
        .byte   $69,$6A,$6D,$6E ; 9CB6  TL=$69 TR=$6A BL=$6D BR=$6E
        .byte   $49,$4A,$0A,$0A ; 9CBA  TL=$49 TR=$4A BL=$0A BR=$0A
        .byte   $09,$05,$04,$04 ; 9CBE  TL=$09 TR=$05 BL=$04 BR=$04
        .byte   $08,$02,$03,$05 ; 9CC2  TL=$08 TR=$02 BL=$03 BR=$05
        .byte   $04,$04,$02,$02 ; 9CC6  TL=$04 TR=$04 BL=$02 BR=$02
        .byte   $03,$07,$03,$09 ; 9CCA  TL=$03 TR=$07 BL=$03 BR=$09
        .byte   $2B,$2C,$2F,$30 ; 9CCE  TL=$2B TR=$2C BL=$2F BR=$30
        .byte   $2D,$2E,$31,$32 ; 9CD2  TL=$2D TR=$2E BL=$31 BR=$32
        .byte   $4F,$4F,$40,$41 ; 9CD6  TL=$4F TR=$4F BL=$40 BR=$41
        .byte   $73,$1E,$76,$1E ; 9CDA  TL=$73 TR=$1E BL=$76 BR=$1E
        .byte   $53,$54,$20,$1F ; 9CDE  TL=$53 TR=$54 BL=$20 BR=$1F
        .byte   $1E,$1D,$1E,$1D ; 9CE2  TL=$1E TR=$1D BL=$1E BR=$1D
        .byte   $40,$41,$40,$41 ; 9CE6  TL=$40 TR=$41 BL=$40 BR=$41
        .byte   $20,$1F,$1E,$1D ; 9CEA  TL=$20 TR=$1F BL=$1E BR=$1D
        .byte   $53,$54,$40,$41 ; 9CEE  TL=$53 TR=$54 BL=$40 BR=$41
        .byte   $54,$55,$40,$41 ; 9CF2  TL=$54 TR=$55 BL=$40 BR=$41
        .byte   $1E,$40,$1E,$40 ; 9CF6  TL=$1E TR=$40 BL=$1E BR=$40
        .byte   $41,$1E,$41,$1E ; 9CFA  TL=$41 TR=$1E BL=$41 BR=$1E
        .byte   $1E,$1D,$22,$1D ; 9CFE  TL=$1E TR=$1D BL=$22 BR=$1D
        .byte   $54,$54,$29,$2A ; 9D02  TL=$54 TR=$54 BL=$29 BR=$2A
        .byte   $21,$1F,$1D,$1D ; 9D06  TL=$21 TR=$1F BL=$1D BR=$1D
        .byte   $22,$40,$1D,$40 ; 9D0A  TL=$22 TR=$40 BL=$1D BR=$40
        .byte   $1D,$40,$26,$40 ; 9D0E  TL=$1D TR=$40 BL=$26 BR=$40
        .byte   $22,$3E,$1D,$3E ; 9D12  TL=$22 TR=$3E BL=$1D BR=$3E
        .byte   $01,$1E,$01,$1E ; 9D16  TL=$01 TR=$1E BL=$01 BR=$1E
        .byte   $1D,$3E,$1D,$3E ; 9D1A  TL=$1D TR=$3E BL=$1D BR=$3E
        .byte   $22,$1D,$1D,$1D ; 9D1E  TL=$22 TR=$1D BL=$1D BR=$1D
        .byte   $1E,$1D,$1E,$24 ; 9D22  TL=$1E TR=$1D BL=$1E BR=$24
        .byte   $44,$45,$46,$47 ; 9D26  TL=$44 TR=$45 BL=$46 BR=$47
        .byte   $44,$45,$46,$42 ; 9D2A  TL=$44 TR=$45 BL=$46 BR=$42
        .byte   $44,$45,$42,$42 ; 9D2E  TL=$44 TR=$45 BL=$42 BR=$42
        .byte   $78,$78,$78,$78 ; 9D32  TL=$78 TR=$78 BL=$78 BR=$78
        .byte   $44,$42,$46,$42 ; 9D36  TL=$44 TR=$42 BL=$46 BR=$42
        .byte   $44,$42,$42,$42 ; 9D3A  TL=$44 TR=$42 BL=$42 BR=$42
        .byte   $00,$00,$1B,$1B ; 9D3E  TL=$00 TR=$00 BL=$1B BR=$1B
        .byte   $00,$1C,$1B,$1B ; 9D42  TL=$00 TR=$1C BL=$1B BR=$1B
        .byte   $00,$1A,$00,$1A ; 9D46  TL=$00 TR=$1A BL=$00 BR=$1A
        .byte   $1A,$1A,$1A,$1A ; 9D4A  TL=$1A TR=$1A BL=$1A BR=$1A
        .byte   $42,$42,$42,$47 ; 9D4E  TL=$42 TR=$42 BL=$42 BR=$47
        .byte   $42,$42,$46,$47 ; 9D52  TL=$42 TR=$42 BL=$46 BR=$47
        .byte   $51,$52,$0A,$0A ; 9D56  TL=$51 TR=$52 BL=$0A BR=$0A
        .byte   $63,$64,$65,$66 ; 9D5A  TL=$63 TR=$64 BL=$65 BR=$66
        .byte   $42,$45,$42,$42 ; 9D5E  TL=$42 TR=$45 BL=$42 BR=$42
        .byte   $42,$45,$46,$47 ; 9D62  TL=$42 TR=$45 BL=$46 BR=$47
        .byte   $44,$45,$42,$47 ; 9D66  TL=$44 TR=$45 BL=$42 BR=$47
        .byte   $42,$45,$42,$47 ; 9D6A  TL=$42 TR=$45 BL=$42 BR=$47
        .byte   $42,$42,$46,$42 ; 9D6E  TL=$42 TR=$42 BL=$46 BR=$42
        .byte   $44,$42,$46,$47 ; 9D72  TL=$44 TR=$42 BL=$46 BR=$47
        .byte   $00,$56,$1B,$58 ; 9D76  TL=$00 TR=$56 BL=$1B BR=$58
        .byte   $57,$56,$59,$58 ; 9D7A  TL=$57 TR=$56 BL=$59 BR=$58
        .byte   $56,$57,$58,$59 ; 9D7E  TL=$56 TR=$57 BL=$58 BR=$59
        .byte   $57,$00,$59,$1B ; 9D82  TL=$57 TR=$00 BL=$59 BR=$1B
        .byte   $42,$42,$42,$42 ; 9D86  TL=$42 TR=$42 BL=$42 BR=$42
        .byte   $49,$4A,$20,$1F ; 9D8A  TL=$49 TR=$4A BL=$20 BR=$1F
        .byte   $49,$4A,$1F,$1F ; 9D8E  TL=$49 TR=$4A BL=$1F BR=$1F
        .byte   $1E,$23,$1E,$1D ; 9D92  TL=$1E TR=$23 BL=$1E BR=$1D
        .byte   $1D,$23,$23,$1D ; 9D96  TL=$1D TR=$23 BL=$23 BR=$1D
        .byte   $49,$4A,$21,$1F ; 9D9A  TL=$49 TR=$4A BL=$21 BR=$1F
        .byte   $1E,$23,$23,$1D ; 9D9E  TL=$1E TR=$23 BL=$23 BR=$1D
        .byte   $57,$1C,$59,$1B ; 9DA2  TL=$57 TR=$1C BL=$59 BR=$1B
        .byte   $42,$45,$46,$42 ; 9DA6  TL=$42 TR=$45 BL=$46 BR=$42
        .byte   $49,$4A,$5D,$5E ; 9DAA  TL=$49 TR=$4A BL=$5D BR=$5E
        .byte   $49,$4A,$5E,$5F ; 9DAE  TL=$49 TR=$4A BL=$5E BR=$5F
        .byte   $60,$61,$0F,$0E ; 9DB2  TL=$60 TR=$61 BL=$0F BR=$0E
        .byte   $61,$62,$0E,$0E ; 9DB6  TL=$61 TR=$62 BL=$0E BR=$0E
        .byte   $0D,$0C,$0D,$0C ; 9DBA  TL=$0D TR=$0C BL=$0D BR=$0C
        .byte   $0C,$0C,$0C,$0C ; 9DBE  TL=$0C TR=$0C BL=$0C BR=$0C
        .byte   $60,$61,$10,$0E ; 9DC2  TL=$60 TR=$61 BL=$10 BR=$0E
        .byte   $0D,$0C,$11,$0C ; 9DC6  TL=$0D TR=$0C BL=$11 BR=$0C
        .byte   $14,$13,$14,$13 ; 9DCA  TL=$14 TR=$13 BL=$14 BR=$13
        .byte   $13,$13,$13,$13 ; 9DCE  TL=$13 TR=$13 BL=$13 BR=$13
        .byte   $13,$13,$0C,$0C ; 9DD2  TL=$13 TR=$13 BL=$0C BR=$0C
        .byte   $60,$61,$17,$15 ; 9DD6  TL=$60 TR=$61 BL=$17 BR=$15
        .byte   $61,$62,$15,$15 ; 9DDA  TL=$61 TR=$62 BL=$15 BR=$15
        .byte   $14,$13,$0D,$0C ; 9DDE  TL=$14 TR=$13 BL=$0D BR=$0C
        .byte   $12,$0C,$0D,$0C ; 9DE2  TL=$12 TR=$0C BL=$0D BR=$0C
        .byte   $10,$0E,$0C,$0C ; 9DE6  TL=$10 TR=$0E BL=$0C BR=$0C
        .byte   $0E,$0E,$0C,$0C ; 9DEA  TL=$0E TR=$0E BL=$0C BR=$0C
        .byte   $0F,$0E,$0D,$0C ; 9DEE  TL=$0F TR=$0E BL=$0D BR=$0C
        .byte   $11,$0C,$0C,$0C ; 9DF2  TL=$11 TR=$0C BL=$0C BR=$0C
        .byte   $17,$15,$0C,$0C ; 9DF6  TL=$17 TR=$15 BL=$0C BR=$0C
        .byte   $15,$15,$0C,$0C ; 9DFA  TL=$15 TR=$15 BL=$0C BR=$0C
        .byte   $19,$13,$14,$13 ; 9DFE  TL=$19 TR=$13 BL=$14 BR=$13
        .byte   $18,$13,$0C,$0C ; 9E02  TL=$18 TR=$13 BL=$0C BR=$0C
        .byte   $60,$61,$0E,$0E ; 9E06  TL=$60 TR=$61 BL=$0E BR=$0E
        .byte   $14,$13,$18,$13 ; 9E0A  TL=$14 TR=$13 BL=$18 BR=$13
        .byte   $5A,$5B,$5D,$5E ; 9E0E  TL=$5A TR=$5B BL=$5D BR=$5E
        .byte   $5B,$5C,$5E,$5F ; 9E12  TL=$5B TR=$5C BL=$5E BR=$5F
        .byte   $19,$13,$0D,$0C ; 9E16  TL=$19 TR=$13 BL=$0D BR=$0C
; 179 ChunkDesc records — the level's Chunk definitions, each a 2×2 quad of Structures. These are
; the indices TankLvl3_MapData's grid holds.
TankLvl3_ChunkDescTable:
        .byte   $00,$01,$00,$01 ; 9E1A  TL=$00 TR=$01 BL=$00 BR=$01
        .byte   $02,$03,$00,$01 ; 9E1E  TL=$02 TR=$03 BL=$00 BR=$01
        .byte   $04,$05,$06,$05 ; 9E22  TL=$04 TR=$05 BL=$06 BR=$05
        .byte   $07,$08,$09,$08 ; 9E26  TL=$07 TR=$08 BL=$09 BR=$08
        .byte   $0A,$0B,$09,$08 ; 9E2A  TL=$0A TR=$0B BL=$09 BR=$08
        .byte   $0C,$0D,$06,$05 ; 9E2E  TL=$0C TR=$0D BL=$06 BR=$05
        .byte   $0E,$0F,$10,$11 ; 9E32  TL=$0E TR=$0F BL=$10 BR=$11
        .byte   $00,$12,$00,$12 ; 9E36  TL=$00 TR=$12 BL=$00 BR=$12
        .byte   $13,$14,$15,$16 ; 9E3A  TL=$13 TR=$14 BL=$15 BR=$16
        .byte   $17,$14,$16,$16 ; 9E3E  TL=$17 TR=$14 BL=$16 BR=$16
        .byte   $17,$18,$16,$19 ; 9E42  TL=$17 TR=$18 BL=$16 BR=$19
        .byte   $12,$01,$12,$01 ; 9E46  TL=$12 TR=$01 BL=$12 BR=$01
        .byte   $0E,$0F,$1A,$1B ; 9E4A  TL=$0E TR=$0F BL=$1A BR=$1B
        .byte   $00,$01,$1C,$1C ; 9E4E  TL=$00 TR=$01 BL=$1C BR=$1C
        .byte   $1D,$1E,$1F,$20 ; 9E52  TL=$1D TR=$1E BL=$1F BR=$20
        .byte   $21,$22,$23,$20 ; 9E56  TL=$21 TR=$22 BL=$23 BR=$20
        .byte   $1D,$1E,$23,$20 ; 9E5A  TL=$1D TR=$1E BL=$23 BR=$20
        .byte   $15,$16,$15,$16 ; 9E5E  TL=$15 TR=$16 BL=$15 BR=$16
        .byte   $16,$16,$24,$25 ; 9E62  TL=$16 TR=$16 BL=$24 BR=$25
        .byte   $16,$19,$26,$27 ; 9E66  TL=$16 TR=$19 BL=$26 BR=$27
        .byte   $12,$01,$1C,$1C ; 9E6A  TL=$12 TR=$01 BL=$1C BR=$1C
        .byte   $06,$05,$1F,$05 ; 9E6E  TL=$06 TR=$05 BL=$1F BR=$05
        .byte   $1D,$1E,$23,$27 ; 9E72  TL=$1D TR=$1E BL=$23 BR=$27
        .byte   $28,$21,$29,$2A ; 9E76  TL=$28 TR=$21 BL=$29 BR=$2A
        .byte   $2B,$2C,$29,$2A ; 9E7A  TL=$2B TR=$2C BL=$29 BR=$2A
        .byte   $15,$16,$2D,$26 ; 9E7E  TL=$15 TR=$16 BL=$2D BR=$26
        .byte   $17,$14,$24,$25 ; 9E82  TL=$17 TR=$14 BL=$24 BR=$25
        .byte   $00,$01,$01,$01 ; 9E86  TL=$00 TR=$01 BL=$01 BR=$01
        .byte   $16,$19,$26,$2E ; 9E8A  TL=$16 TR=$19 BL=$26 BR=$2E
        .byte   $12,$2F,$12,$01 ; 9E8E  TL=$12 TR=$2F BL=$12 BR=$01
        .byte   $2F,$2F,$00,$01 ; 9E92  TL=$2F TR=$2F BL=$00 BR=$01
        .byte   $12,$12,$12,$12 ; 9E96  TL=$12 TR=$12 BL=$12 BR=$12
        .byte   $17,$14,$1A,$30 ; 9E9A  TL=$17 TR=$14 BL=$1A BR=$30
        .byte   $31,$14,$32,$16 ; 9E9E  TL=$31 TR=$14 BL=$32 BR=$16
        .byte   $33,$31,$33,$32 ; 9EA2  TL=$33 TR=$31 BL=$33 BR=$32
        .byte   $14,$33,$16,$33 ; 9EA6  TL=$14 TR=$33 BL=$16 BR=$33
        .byte   $33,$34,$33,$32 ; 9EAA  TL=$33 TR=$34 BL=$33 BR=$32
        .byte   $12,$12,$1C,$1C ; 9EAE  TL=$12 TR=$12 BL=$1C BR=$1C
        .byte   $15,$16,$1F,$26 ; 9EB2  TL=$15 TR=$16 BL=$1F BR=$26
        .byte   $16,$16,$16,$16 ; 9EB6  TL=$16 TR=$16 BL=$16 BR=$16
        .byte   $35,$36,$00,$01 ; 9EBA  TL=$35 TR=$36 BL=$00 BR=$01
        .byte   $32,$16,$32,$16 ; 9EBE  TL=$32 TR=$16 BL=$32 BR=$16
        .byte   $33,$37,$33,$37 ; 9EC2  TL=$33 TR=$37 BL=$33 BR=$37
        .byte   $38,$33,$38,$33 ; 9EC6  TL=$38 TR=$33 BL=$38 BR=$33
        .byte   $37,$38,$37,$38 ; 9ECA  TL=$37 TR=$38 BL=$37 BR=$38
        .byte   $33,$32,$33,$32 ; 9ECE  TL=$33 TR=$32 BL=$33 BR=$32
        .byte   $39,$16,$24,$25 ; 9ED2  TL=$39 TR=$16 BL=$24 BR=$25
        .byte   $39,$16,$16,$16 ; 9ED6  TL=$39 TR=$16 BL=$16 BR=$16
        .byte   $17,$18,$26,$2E ; 9EDA  TL=$17 TR=$18 BL=$26 BR=$2E
        .byte   $17,$3A,$16,$19 ; 9EDE  TL=$17 TR=$3A BL=$16 BR=$19
        .byte   $3B,$3C,$24,$3D ; 9EE2  TL=$3B TR=$3C BL=$24 BR=$3D
        .byte   $38,$3B,$38,$26 ; 9EE6  TL=$38 TR=$3B BL=$38 BR=$26
        .byte   $3E,$3F,$40,$3F ; 9EEA  TL=$3E TR=$3F BL=$40 BR=$3F
        .byte   $3B,$41,$24,$25 ; 9EEE  TL=$3B TR=$41 BL=$24 BR=$25
        .byte   $32,$16,$42,$25 ; 9EF2  TL=$32 TR=$16 BL=$42 BR=$25
        .byte   $00,$12,$00,$01 ; 9EF6  TL=$00 TR=$12 BL=$00 BR=$01
        .byte   $12,$12,$00,$12 ; 9EFA  TL=$12 TR=$12 BL=$00 BR=$12
        .byte   $43,$43,$43,$44 ; 9EFE  TL=$43 TR=$43 BL=$43 BR=$44
        .byte   $43,$43,$45,$45 ; 9F02  TL=$43 TR=$43 BL=$45 BR=$45
        .byte   $00,$01,$00,$46 ; 9F06  TL=$00 TR=$01 BL=$00 BR=$46
        .byte   $35,$36,$46,$46 ; 9F0A  TL=$35 TR=$36 BL=$46 BR=$46
        .byte   $00,$12,$1C,$1C ; 9F0E  TL=$00 TR=$12 BL=$1C BR=$1C
        .byte   $43,$43,$43,$43 ; 9F12  TL=$43 TR=$43 BL=$43 BR=$43
        .byte   $43,$47,$44,$48 ; 9F16  TL=$43 TR=$47 BL=$44 BR=$48
        .byte   $49,$4A,$4B,$4C ; 9F1A  TL=$49 TR=$4A BL=$4B BR=$4C
        .byte   $46,$46,$4D,$4E ; 9F1E  TL=$46 TR=$46 BL=$4D BR=$4E
        .byte   $46,$46,$4E,$4E ; 9F22  TL=$46 TR=$46 BL=$4E BR=$4E
        .byte   $4F,$21,$29,$2A ; 9F26  TL=$4F TR=$21 BL=$29 BR=$2A
        .byte   $17,$14,$26,$50 ; 9F2A  TL=$17 TR=$14 BL=$26 BR=$50
        .byte   $43,$44,$44,$48 ; 9F2E  TL=$43 TR=$44 BL=$44 BR=$48
        .byte   $48,$4A,$4B,$4C ; 9F32  TL=$48 TR=$4A BL=$4B BR=$4C
        .byte   $4D,$4E,$51,$45 ; 9F36  TL=$4D TR=$4E BL=$51 BR=$45
        .byte   $52,$43,$45,$45 ; 9F3A  TL=$52 TR=$43 BL=$45 BR=$45
        .byte   $43,$43,$45,$53 ; 9F3E  TL=$43 TR=$43 BL=$45 BR=$53
        .byte   $47,$4A,$48,$4C ; 9F42  TL=$47 TR=$4A BL=$48 BR=$4C
        .byte   $4D,$4E,$54,$43 ; 9F46  TL=$4D TR=$4E BL=$54 BR=$43
        .byte   $55,$4A,$56,$55 ; 9F4A  TL=$55 TR=$4A BL=$56 BR=$55
        .byte   $49,$51,$4B,$4C ; 9F4E  TL=$49 TR=$51 BL=$4B BR=$4C
        .byte   $53,$43,$51,$45 ; 9F52  TL=$53 TR=$43 BL=$51 BR=$45
        .byte   $43,$43,$53,$44 ; 9F56  TL=$43 TR=$43 BL=$53 BR=$44
        .byte   $43,$43,$53,$43 ; 9F5A  TL=$43 TR=$43 BL=$53 BR=$43
        .byte   $43,$43,$44,$45 ; 9F5E  TL=$43 TR=$43 BL=$44 BR=$45
        .byte   $15,$16,$2D,$16 ; 9F62  TL=$15 TR=$16 BL=$2D BR=$16
        .byte   $43,$47,$45,$48 ; 9F66  TL=$43 TR=$47 BL=$45 BR=$48
        .byte   $49,$4D,$4D,$52 ; 9F6A  TL=$49 TR=$4D BL=$4D BR=$52
        .byte   $52,$43,$43,$43 ; 9F6E  TL=$52 TR=$43 BL=$43 BR=$43
        .byte   $43,$56,$43,$43 ; 9F72  TL=$43 TR=$56 BL=$43 BR=$43
        .byte   $4E,$4E,$43,$43 ; 9F76  TL=$4E TR=$4E BL=$43 BR=$43
        .byte   $4E,$55,$43,$47 ; 9F7A  TL=$4E TR=$55 BL=$43 BR=$47
        .byte   $54,$47,$51,$48 ; 9F7E  TL=$54 TR=$47 BL=$51 BR=$48
        .byte   $54,$43,$51,$53 ; 9F82  TL=$54 TR=$43 BL=$51 BR=$53
        .byte   $48,$4A,$1F,$4C ; 9F86  TL=$48 TR=$4A BL=$1F BR=$4C
        .byte   $53,$43,$54,$43 ; 9F8A  TL=$53 TR=$43 BL=$54 BR=$43
        .byte   $44,$48,$48,$4C ; 9F8E  TL=$44 TR=$48 BL=$48 BR=$4C
        .byte   $49,$51,$4B,$27 ; 9F92  TL=$49 TR=$51 BL=$4B BR=$27
        .byte   $4E,$55,$43,$56 ; 9F96  TL=$4E TR=$55 BL=$43 BR=$56
        .byte   $49,$4A,$55,$4C ; 9F9A  TL=$49 TR=$4A BL=$55 BR=$4C
        .byte   $51,$53,$4B,$54 ; 9F9E  TL=$51 TR=$53 BL=$4B BR=$54
        .byte   $57,$58,$59,$59 ; 9FA2  TL=$57 TR=$58 BL=$59 BR=$59
        .byte   $5A,$4A,$59,$4C ; 9FA6  TL=$5A TR=$4A BL=$59 BR=$4C
        .byte   $49,$4A,$4B,$4D ; 9FAA  TL=$49 TR=$4A BL=$4B BR=$4D
        .byte   $4D,$4E,$52,$43 ; 9FAE  TL=$4D TR=$4E BL=$52 BR=$43
        .byte   $43,$44,$43,$47 ; 9FB2  TL=$43 TR=$44 BL=$43 BR=$47
        .byte   $48,$5B,$4B,$4C ; 9FB6  TL=$48 TR=$5B BL=$4B BR=$4C
        .byte   $49,$54,$4B,$54 ; 9FBA  TL=$49 TR=$54 BL=$4B BR=$54
        .byte   $02,$03,$02,$03 ; 9FBE  TL=$02 TR=$03 BL=$02 BR=$03
        .byte   $43,$47,$43,$56 ; 9FC2  TL=$43 TR=$47 BL=$43 BR=$56
        .byte   $50,$4A,$4E,$55 ; 9FC6  TL=$50 TR=$4A BL=$4E BR=$55
        .byte   $4E,$4E,$44,$45 ; 9FCA  TL=$4E TR=$4E BL=$44 BR=$45
        .byte   $4E,$4E,$45,$45 ; 9FCE  TL=$4E TR=$4E BL=$45 BR=$45
        .byte   $4E,$52,$45,$53 ; 9FD2  TL=$4E TR=$52 BL=$45 BR=$53
        .byte   $44,$48,$47,$4C ; 9FD6  TL=$44 TR=$48 BL=$47 BR=$4C
        .byte   $5B,$51,$4B,$4C ; 9FDA  TL=$5B TR=$51 BL=$4B BR=$4C
        .byte   $5C,$5D,$5E,$5F ; 9FDE  TL=$5C TR=$5D BL=$5E BR=$5F
        .byte   $02,$03,$60,$5D ; 9FE2  TL=$02 TR=$03 BL=$60 BR=$5D
        .byte   $5C,$5D,$61,$5F ; 9FE6  TL=$5C TR=$5D BL=$61 BR=$5F
        .byte   $44,$45,$47,$4C ; 9FEA  TL=$44 TR=$45 BL=$47 BR=$4C
        .byte   $45,$48,$4B,$4C ; 9FEE  TL=$45 TR=$48 BL=$4B BR=$4C
        .byte   $5B,$5B,$4B,$4C ; 9FF2  TL=$5B TR=$5B BL=$4B BR=$4C
        .byte   $4D,$55,$54,$47 ; 9FF6  TL=$4D TR=$55 BL=$54 BR=$47
        .byte   $43,$44,$45,$48 ; 9FFA  TL=$43 TR=$44 BL=$45 BR=$48
        .byte   $54,$43,$51,$45 ; 9FFE  TL=$54 TR=$43 BL=$51 BR=$45
        .byte   $53,$43,$51,$53 ; A002  TL=$53 TR=$43 BL=$51 BR=$53
        .byte   $5E,$5F,$5E,$5F ; A006  TL=$5E TR=$5F BL=$5E BR=$5F
        .byte   $5F,$5F,$5F,$5F ; A00A  TL=$5F TR=$5F BL=$5F BR=$5F
        .byte   $5F,$5F,$5F,$27 ; A00E  TL=$5F TR=$5F BL=$5F BR=$27
        .byte   $52,$56,$43,$43 ; A012  TL=$52 TR=$56 BL=$43 BR=$43
        .byte   $5D,$5D,$5F,$5F ; A016  TL=$5D TR=$5D BL=$5F BR=$5F
        .byte   $58,$62,$59,$59 ; A01A  TL=$58 TR=$62 BL=$59 BR=$59
        .byte   $49,$4A,$59,$4C ; A01E  TL=$49 TR=$4A BL=$59 BR=$4C
        .byte   $49,$4D,$4D,$63 ; A022  TL=$49 TR=$4D BL=$4D BR=$63
        .byte   $45,$45,$4B,$4C ; A026  TL=$45 TR=$45 BL=$4B BR=$4C
        .byte   $45,$53,$4B,$51 ; A02A  TL=$45 TR=$53 BL=$4B BR=$51
        .byte   $54,$47,$54,$47 ; A02E  TL=$54 TR=$47 BL=$54 BR=$47
        .byte   $4E,$55,$53,$47 ; A032  TL=$4E TR=$55 BL=$53 BR=$47
        .byte   $63,$48,$48,$4C ; A036  TL=$63 TR=$48 BL=$48 BR=$4C
        .byte   $5F,$5F,$64,$65 ; A03A  TL=$5F TR=$5F BL=$64 BR=$65
        .byte   $54,$56,$54,$43 ; A03E  TL=$54 TR=$56 BL=$54 BR=$43
        .byte   $54,$56,$51,$45 ; A042  TL=$54 TR=$56 BL=$51 BR=$45
        .byte   $52,$47,$45,$48 ; A046  TL=$52 TR=$47 BL=$45 BR=$48
        .byte   $57,$62,$59,$59 ; A04A  TL=$57 TR=$62 BL=$59 BR=$59
        .byte   $49,$50,$4D,$4E ; A04E  TL=$49 TR=$50 BL=$4D BR=$4E
        .byte   $64,$65,$02,$03 ; A052  TL=$64 TR=$65 BL=$02 BR=$03
        .byte   $49,$4A,$4B,$59 ; A056  TL=$49 TR=$4A BL=$4B BR=$59
        .byte   $49,$4A,$59,$59 ; A05A  TL=$49 TR=$4A BL=$59 BR=$59
        .byte   $43,$43,$02,$03 ; A05E  TL=$43 TR=$43 BL=$02 BR=$03
        .byte   $66,$67,$68,$69 ; A062  TL=$66 TR=$67 BL=$68 BR=$69
        .byte   $02,$03,$6A,$67 ; A066  TL=$02 TR=$03 BL=$6A BR=$67
        .byte   $66,$67,$6B,$69 ; A06A  TL=$66 TR=$67 BL=$6B BR=$69
        .byte   $6C,$6D,$1F,$6E ; A06E  TL=$6C TR=$6D BL=$1F BR=$6E
        .byte   $6D,$6D,$6E,$6E ; A072  TL=$6D TR=$6D BL=$6E BR=$6E
        .byte   $6F,$70,$6E,$6E ; A076  TL=$6F TR=$70 BL=$6E BR=$6E
        .byte   $6C,$6D,$71,$6E ; A07A  TL=$6C TR=$6D BL=$71 BR=$6E
        .byte   $6D,$6D,$6E,$27 ; A07E  TL=$6D TR=$6D BL=$6E BR=$27
        .byte   $04,$05,$06,$27 ; A082  TL=$04 TR=$05 BL=$06 BR=$27
        .byte   $72,$69,$68,$69 ; A086  TL=$72 TR=$69 BL=$68 BR=$69
        .byte   $00,$01,$73,$74 ; A08A  TL=$00 TR=$01 BL=$73 BR=$74
        .byte   $68,$69,$68,$69 ; A08E  TL=$68 TR=$69 BL=$68 BR=$69
        .byte   $69,$69,$69,$69 ; A092  TL=$69 TR=$69 BL=$69 BR=$69
        .byte   $00,$01,$75,$74 ; A096  TL=$00 TR=$01 BL=$75 BR=$74
        .byte   $72,$69,$76,$69 ; A09A  TL=$72 TR=$69 BL=$76 BR=$69
        .byte   $00,$01,$77,$78 ; A09E  TL=$00 TR=$01 BL=$77 BR=$78
        .byte   $79,$6D,$7A,$6E ; A0A2  TL=$79 TR=$6D BL=$7A BR=$6E
        .byte   $00,$01,$02,$03 ; A0A6  TL=$00 TR=$01 BL=$02 BR=$03
        .byte   $68,$69,$76,$69 ; A0AA  TL=$68 TR=$69 BL=$76 BR=$69
        .byte   $0C,$0D,$50,$05 ; A0AE  TL=$0C TR=$0D BL=$50 BR=$05
        .byte   $02,$03,$66,$67 ; A0B2  TL=$02 TR=$03 BL=$66 BR=$67
        .byte   $7B,$67,$69,$69 ; A0B6  TL=$7B TR=$67 BL=$69 BR=$69
        .byte   $02,$03,$7B,$67 ; A0BA  TL=$02 TR=$03 BL=$7B BR=$67
        .byte   $7C,$6D,$6E,$6E ; A0BE  TL=$7C TR=$6D BL=$6E BR=$6E
        .byte   $6D,$6D,$7D,$7E ; A0C2  TL=$6D TR=$6D BL=$7D BR=$7E
        .byte   $6D,$6D,$7F,$6E ; A0C6  TL=$6D TR=$6D BL=$7F BR=$6E
        .byte   $7D,$7E,$02,$03 ; A0CA  TL=$7D TR=$7E BL=$02 BR=$03
        .byte   $79,$6D,$7D,$7E ; A0CE  TL=$79 TR=$6D BL=$7D BR=$7E
        .byte   $6D,$6D,$7F,$27 ; A0D2  TL=$6D TR=$6D BL=$7F BR=$27
        .byte   $72,$69,$7D,$7E ; A0D6  TL=$72 TR=$69 BL=$7D BR=$7E
        .byte   $68,$50,$7D,$7E ; A0DA  TL=$68 TR=$50 BL=$7D BR=$7E
        .byte   $69,$69,$7D,$7E ; A0DE  TL=$69 TR=$69 BL=$7D BR=$7E
        .byte   $68,$69,$7D,$7E ; A0E2  TL=$68 TR=$69 BL=$7D BR=$7E
; 32×32 chunk-index grid = 1024 bytes
TankLvl3_MapData:
        .byte   $00,$01,$01,$01,$00,$01,$01,$01 ; A0E6
        .byte   $00,$02,$03,$02,$04,$05,$04,$02 ; A0EE
        .byte   $00,$01,$01,$01,$01,$01,$01,$01 ; A0F6
        .byte   $01,$01,$01,$01,$01,$01,$01,$01 ; A0FE
        .byte   $00,$06,$06,$06,$07,$08,$09,$0A ; A106
        .byte   $0B,$02,$03,$02,$03,$05,$04,$05 ; A10E
        .byte   $00,$00,$00,$00,$00,$0C,$06,$06 ; A116
        .byte   $06,$06,$06,$06,$06,$06,$06,$06 ; A11E
        .byte   $0D,$0E,$0F,$10,$07,$11,$12,$13 ; A126
        .byte   $14,$15,$03,$02,$04,$05,$04,$02 ; A12E
        .byte   $00,$00,$00,$00,$00,$0F,$0F,$10 ; A136
        .byte   $10,$0F,$0F,$10,$10,$0F,$0F,$16 ; A13E
        .byte   $00,$17,$17,$18,$07,$19,$1A,$0A ; A146
        .byte   $0B,$05,$04,$02,$03,$02,$03,$05 ; A14E
        .byte   $00,$00,$00,$00,$00,$18,$17,$17 ; A156
        .byte   $17,$18,$18,$17,$17,$17,$18,$17 ; A15E
        .byte   $1B,$17,$18,$17,$07,$08,$1A,$1C ; A166
        .byte   $1D,$1E,$1E,$1E,$1E,$1E,$1E,$1E ; A16E
        .byte   $1E,$00,$00,$00,$00,$00,$00,$00 ; A176
        .byte   $00,$00,$00,$00,$00,$1B,$1B,$1B ; A17E
        .byte   $0B,$10,$0F,$10,$07,$19,$09,$0A ; A186
        .byte   $1F,$08,$09,$09,$0A,$1F,$08,$1A ; A18E
        .byte   $20,$00,$21,$22,$23,$21,$24,$00 ; A196
        .byte   $21,$00,$21,$09,$09,$1A,$09,$0A ; A19E
        .byte   $14,$0E,$17,$17,$07,$08,$12,$13 ; A1A6
        .byte   $25,$26,$12,$27,$1C,$1F,$11,$28 ; A1AE
        .byte   $28,$00,$29,$2A,$2B,$2C,$2D,$09 ; A1B6
        .byte   $2E,$09,$2F,$12,$12,$09,$12,$13 ; A1BE
        .byte   $0B,$17,$18,$18,$07,$19,$1A,$30 ; A1C6
        .byte   $1F,$08,$09,$12,$31,$1F,$19,$1A ; A1CE
        .byte   $1A,$1A,$2E,$32,$33,$34,$35,$12 ; A1D6
        .byte   $28,$36,$27,$09,$09,$12,$09,$31 ; A1DE
        .byte   $0B,$00,$00,$00,$37,$28,$28,$28 ; A1E6
        .byte   $38,$19,$27,$1A,$1C,$1F,$28,$28 ; A1EE
        .byte   $28,$28,$28,$28,$28,$28,$28,$28 ; A1F6
        .byte   $00,$28,$36,$27,$12,$09,$12,$1C ; A1FE
        .byte   $0B,$06,$06,$06,$00,$06,$06,$00 ; A206
        .byte   $07,$08,$12,$09,$28,$28,$00,$00 ; A20E
        .byte   $00,$00,$39,$3A,$3A,$3A,$3A,$3A ; A216
        .byte   $3A,$3B,$3C,$36,$09,$12,$09,$31 ; A21E
        .byte   $14,$0E,$10,$10,$06,$10,$10,$16 ; A226
        .byte   $3D,$26,$09,$12,$09,$1A,$00,$00 ; A22E
        .byte   $00,$3E,$3F,$40,$40,$40,$40,$40 ; A236
        .byte   $41,$42,$00,$28,$36,$1A,$12,$13 ; A23E
        .byte   $00,$43,$18,$00,$10,$00,$18,$00 ; A246
        .byte   $07,$08,$12,$09,$12,$09,$44,$00 ; A24E
        .byte   $3E,$45,$46,$40,$40,$40,$40,$47 ; A256
        .byte   $48,$49,$3E,$00,$28,$28,$28,$28 ; A25E
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; A266
        .byte   $07,$08,$09,$12,$1A,$12,$28,$00 ; A26E
        .byte   $39,$4A,$40,$40,$4B,$4C,$40,$40 ; A276
        .byte   $40,$4D,$4E,$3A,$4F,$3A,$3A,$50 ; A27E
        .byte   $00,$51,$49,$3E,$00,$00,$00,$00 ; A286
        .byte   $07,$52,$27,$09,$28,$28,$00,$39 ; A28E
        .byte   $53,$40,$40,$54,$55,$56,$57,$58 ; A296
        .byte   $40,$40,$40,$40,$59,$40,$40,$5A ; A29E
        .byte   $0D,$5B,$4D,$5C,$00,$00,$00,$00 ; A2A6
        .byte   $00,$00,$00,$00,$00,$39,$3A,$5D ; A2AE
        .byte   $40,$40,$4B,$55,$3E,$3E,$3E,$56 ; A2B6
        .byte   $4C,$40,$40,$40,$40,$40,$40,$5E ; A2BE
        .byte   $00,$5F,$60,$61,$00,$00,$00,$00 ; A2C6
        .byte   $00,$39,$3A,$3A,$3A,$5D,$40,$40 ; A2CE
        .byte   $40,$54,$55,$3E,$3E,$3E,$3E,$3E ; A2D6
        .byte   $56,$57,$4C,$40,$62,$63,$64,$65 ; A2DE
        .byte   $00,$66,$67,$68,$00,$69,$69,$69 ; A2E6
        .byte   $00,$6A,$6B,$40,$40,$40,$40,$40 ; A2EE
        .byte   $4B,$55,$3E,$3E,$3E,$3E,$3E,$51 ; A2F6
        .byte   $3A,$50,$56,$6C,$6D,$6D,$6E,$3E ; A2FE
        .byte   $00,$6F,$40,$70,$00,$71,$72,$73 ; A306
        .byte   $00,$74,$75,$76,$40,$77,$40,$54 ; A30E
        .byte   $55,$3E,$3E,$3E,$3E,$39,$78,$46 ; A316
        .byte   $40,$79,$78,$46,$40,$40,$4D,$7A ; A31E
        .byte   $0D,$5B,$54,$57,$00,$7B,$7C,$7D ; A326
        .byte   $0D,$5B,$40,$40,$4B,$7E,$57,$55 ; A32E
        .byte   $3E,$3E,$3E,$3E,$3E,$3F,$40,$40 ; A336
        .byte   $40,$40,$40,$40,$40,$40,$40,$5E ; A33E
        .byte   $00,$57,$55,$3E,$00,$71,$7C,$7F ; A346
        .byte   $00,$58,$40,$54,$55,$51,$3A,$3A ; A34E
        .byte   $3A,$3A,$3A,$3A,$78,$46,$40,$40 ; A356
        .byte   $40,$62,$80,$40,$40,$54,$57,$57 ; A35E
        .byte   $00,$00,$00,$00,$00,$71,$7F,$7C ; A366
        .byte   $00,$56,$57,$55,$66,$46,$40,$40 ; A36E
        .byte   $81,$40,$40,$40,$40,$40,$40,$82 ; A376
        .byte   $6D,$6D,$6D,$6D,$6D,$48,$49,$3E ; A37E
        .byte   $00,$45,$83,$84,$00,$7B,$7F,$7F ; A386
        .byte   $00,$05,$04,$05,$85,$40,$40,$47 ; A38E
        .byte   $6D,$86,$40,$81,$81,$82,$6D,$87 ; A396
        .byte   $40,$40,$40,$40,$40,$40,$4D,$7A ; A39E
        .byte   $0D,$5B,$40,$40,$00,$71,$88,$7D ; A3A6
        .byte   $0D,$15,$03,$02,$89,$4C,$40,$40 ; A3AE
        .byte   $40,$8A,$6D,$6D,$6D,$8B,$40,$40 ; A3B6
        .byte   $40,$8C,$40,$40,$40,$40,$40,$5E ; A3BE
        .byte   $00,$5F,$60,$8D,$00,$8E,$69,$8E ; A3C6
        .byte   $00,$05,$03,$02,$04,$89,$57,$4C ; A3CE
        .byte   $8F,$40,$40,$40,$90,$40,$40,$40 ; A3D6
        .byte   $4B,$57,$4C,$40,$40,$40,$54,$57 ; A3DE
        .byte   $00,$91,$91,$91,$00,$69,$69,$69 ; A3E6
        .byte   $00,$02,$04,$05,$03,$05,$04,$89 ; A3EE
        .byte   $57,$57,$57,$57,$57,$57,$57,$57 ; A3F6
        .byte   $55,$3E,$56,$57,$57,$57,$55,$3E ; A3FE
        .byte   $00,$92,$93,$69,$00,$92,$93,$94 ; A406
        .byte   $00,$02,$03,$02,$04,$05,$04,$05 ; A40E
        .byte   $04,$05,$04,$05,$04,$05,$04,$05 ; A416
        .byte   $04,$05,$04,$05,$04,$05,$04,$05 ; A41E
        .byte   $0D,$95,$96,$97,$00,$98,$96,$99 ; A426
        .byte   $0D,$15,$04,$05,$03,$02,$03,$05 ; A42E
        .byte   $03,$02,$04,$02,$03,$00,$03,$02 ; A436
        .byte   $03,$05,$04,$00,$03,$02,$03,$9A ; A43E
        .byte   $00,$00,$9B,$9C,$00,$9D,$9E,$9C ; A446
        .byte   $00,$00,$03,$02,$04,$05,$03,$02 ; A44E
        .byte   $03,$00,$03,$02,$04,$00,$04,$02 ; A456
        .byte   $04,$02,$03,$00,$04,$02,$04,$00 ; A45E
        .byte   $00,$00,$9F,$A0,$00,$98,$A1,$A2 ; A466
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; A46E
        .byte   $00,$A3,$A3,$A3,$A3,$A3,$A3,$A3 ; A476
        .byte   $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3 ; A47E
        .byte   $00,$9F,$A4,$9C,$00,$9D,$9E,$9C ; A486
        .byte   $00,$A5,$04,$05,$04,$05,$04,$05 ; A48E
        .byte   $00,$92,$93,$69,$A6,$94,$93,$69 ; A496
        .byte   $A6,$94,$A7,$A7,$93,$A8,$94,$93 ; A49E
        .byte   $0D,$95,$A1,$A2,$00,$98,$A1,$A2 ; A4A6
        .byte   $00,$05,$04,$02,$03,$02,$03,$9A ; A4AE
        .byte   $0D,$95,$96,$97,$A9,$AA,$AB,$97 ; A4B6
        .byte   $A9,$AA,$AC,$AD,$AB,$96,$AA,$AE ; A4BE
        .byte   $00,$AC,$AF,$AC,$00,$B0,$B1,$AC ; A4C6
        .byte   $00,$02,$03,$05,$04,$02,$04,$05 ; A4CE
        .byte   $00,$AC,$AF,$B1,$AC,$69,$B2,$B1 ; A4D6
        .byte   $AC,$69,$69,$69,$B2,$B1,$69,$AC ; A4DE
; Tile attribute table – bits: 0-1=palette 3=Gateway 2+3=Tunnel(→Overhead) 4=damage 5=ladder
; 6=water 7=solid  3+7=Doorway 4+6=lava 5+7=solid-ladder 6+7=destroyable
TankLvl3_TileAttrTable:
        .byte   $00,$11,$03,$03,$03,$03,$03,$03 ; A4E6
        .byte   $03,$03,$03,$03,$03,$03,$03,$03 ; A4EE
        .byte   $03,$03,$03,$01,$01,$01,$01,$01 ; A4F6
        .byte   $01,$01,$02,$03,$02,$01,$01,$01 ; A4FE
        .byte   $01,$01,$01,$01,$01,$01,$01,$01 ; A506
        .byte   $01,$01,$01,$01,$01,$01,$01,$01 ; A50E
        .byte   $01,$01,$01,$01,$01,$01,$01,$01 ; A516
        .byte   $01,$01,$01,$01,$03,$03,$81,$83 ; A51E
        .byte   $81,$81,$81,$80,$81,$81,$81,$81 ; A526
        .byte   $81,$81,$81,$81,$81,$81,$80,$80 ; A52E
        .byte   $80,$80,$80,$80,$80,$80,$80,$80 ; A536
        .byte   $80,$80,$83,$83,$83,$81,$81,$81 ; A53E
        .byte   $83,$83,$83,$01,$01,$0D,$01,$81 ; A546
        .byte   $81,$81,$81,$81,$89,$89,$81,$81 ; A54E
        .byte   $81,$01,$01,$01,$01,$09,$01,$A1 ; A556
        .byte   $C0                             ; A55E
; 16 bytes — 8 B vertical + 8 B horizontal scroll-boundary flags
TankLvl3_ScrollData:
        .byte   $CF,$3F,$C0,$C0,$40,$80,$C0,$3F ; A55F
        .byte   $EC,$E0,$A0,$E0,$E0,$E0,$E0,$E8 ; A567
; ----------------------------------------------------------------------------
; Level 4 map pointer table (6×16-bit LE ptrs): BgPalette, TileAttr, TileDesc, StructureDesc,
; ChunkDesc, MapData
TankLvl4_MapPointers:
        .addr   TankLvl4_BgPalette              ; A56F
        .addr   TankLvl4_TileAttrTable          ; A571
        .addr   TankLvl4_TileDescTable          ; A573
        .addr   TankLvl4_StructureDescTable     ; A575
        .addr   TankLvl4_ChunkDescTable         ; A577
        .addr   TankLvl4_MapData                ; A579
; ----------------------------------------------------------------------------
; 4 BgPalette records — the level's 4 background sub-palettes × 4 NES colour indices.
TankLvl4_BgPalette:
        .byte   $0F,$0B,$00,$10 ; A57B  Backdrop=$0F Colour1=$0B Colour2=$00 Colour3=$10
        .byte   $0F,$0B,$11,$3C ; A57F  Backdrop=$0F Colour1=$0B Colour2=$11 Colour3=$3C
        .byte   $0F,$07,$00,$3B ; A583  Backdrop=$0F Colour1=$07 Colour2=$00 Colour3=$3B
        .byte   $0F,$06,$17,$38 ; A587  Backdrop=$0F Colour1=$06 Colour2=$17 Colour3=$38
; 131 TileDesc records — the level's Tile definitions. Index space shared with
; TankLvl4_TileAttrTable, which has the matching 131 entries.
TankLvl4_TileDescTable:
        .byte   $00,$00,$00,$00 ; A58B  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $AC,$9C,$AD,$9D ; A58F  TL=$AC TR=$9C BL=$AD BR=$9D
        .byte   $7D,$8D,$7C,$8C ; A593  TL=$7D TR=$8D BL=$7C BR=$8C
        .byte   $88,$98,$89,$99 ; A597  TL=$88 TR=$98 BL=$89 BR=$99
        .byte   $7E,$8E,$7F,$8F ; A59B  TL=$7E TR=$8E BL=$7F BR=$8F
        .byte   $9E,$AE,$B7,$AF ; A59F  TL=$9E TR=$AE BL=$B7 BR=$AF
        .byte   $86,$96,$87,$97 ; A5A3  TL=$86 TR=$96 BL=$87 BR=$97
        .byte   $9E,$AE,$9F,$AF ; A5A7  TL=$9E TR=$AE BL=$9F BR=$AF
        .byte   $AC,$9C,$AD,$9D ; A5AB  TL=$AC TR=$9C BL=$AD BR=$9D
        .byte   $7D,$8D,$7C,$8C ; A5AF  TL=$7D TR=$8D BL=$7C BR=$8C
        .byte   $88,$98,$89,$99 ; A5B3  TL=$88 TR=$98 BL=$89 BR=$99
        .byte   $7E,$8E,$7F,$8F ; A5B7  TL=$7E TR=$8E BL=$7F BR=$8F
        .byte   $9E,$AE,$B7,$AF ; A5BB  TL=$9E TR=$AE BL=$B7 BR=$AF
        .byte   $86,$96,$87,$97 ; A5BF  TL=$86 TR=$96 BL=$87 BR=$97
        .byte   $E4,$F4,$E5,$F5 ; A5C3  TL=$E4 TR=$F4 BL=$E5 BR=$F5
        .byte   $C4,$D4,$C5,$D5 ; A5C7  TL=$C4 TR=$D4 BL=$C5 BR=$D5
        .byte   $C2,$D2,$C3,$D3 ; A5CB  TL=$C2 TR=$D2 BL=$C3 BR=$D3
        .byte   $C0,$D0,$C1,$D1 ; A5CF  TL=$C0 TR=$D0 BL=$C1 BR=$D1
        .byte   $E0,$F0,$E1,$F1 ; A5D3  TL=$E0 TR=$F0 BL=$E1 BR=$F1
        .byte   $E5,$F5,$E4,$F4 ; A5D7  TL=$E5 TR=$F5 BL=$E4 BR=$F4
        .byte   $E2,$F2,$E3,$F3 ; A5DB  TL=$E2 TR=$F2 BL=$E3 BR=$F3
        .byte   $08,$18,$09,$19 ; A5DF  TL=$08 TR=$18 BL=$09 BR=$19
        .byte   $24,$18,$32,$19 ; A5E3  TL=$24 TR=$18 BL=$32 BR=$19
        .byte   $23,$33,$09,$19 ; A5E7  TL=$23 TR=$33 BL=$09 BR=$19
        .byte   $34,$33,$32,$19 ; A5EB  TL=$34 TR=$33 BL=$32 BR=$19
        .byte   $22,$11,$02,$12 ; A5EF  TL=$22 TR=$11 BL=$02 BR=$12
        .byte   $A6,$11,$A7,$12 ; A5F3  TL=$A6 TR=$11 BL=$A7 BR=$12
        .byte   $25,$35,$02,$12 ; A5F7  TL=$25 TR=$35 BL=$02 BR=$12
        .byte   $B6,$35,$A7,$12 ; A5FB  TL=$B6 TR=$35 BL=$A7 BR=$12
        .byte   $22,$11,$02,$12 ; A5FF  TL=$22 TR=$11 BL=$02 BR=$12
        .byte   $A6,$11,$A7,$12 ; A603  TL=$A6 TR=$11 BL=$A7 BR=$12
        .byte   $25,$35,$02,$12 ; A607  TL=$25 TR=$35 BL=$02 BR=$12
        .byte   $B6,$35,$A7,$12 ; A60B  TL=$B6 TR=$35 BL=$A7 BR=$12
        .byte   $22,$11,$A7,$12 ; A60F  TL=$22 TR=$11 BL=$A7 BR=$12
        .byte   $22,$35,$02,$12 ; A613  TL=$22 TR=$35 BL=$02 BR=$12
        .byte   $10,$10,$10,$10 ; A617  TL=$10 TR=$10 BL=$10 BR=$10
        .byte   $A1,$A1,$10,$10 ; A61B  TL=$A1 TR=$A1 BL=$10 BR=$10
        .byte   $A1,$B1,$10,$37 ; A61F  TL=$A1 TR=$B1 BL=$10 BR=$37
        .byte   $A3,$A1,$27,$10 ; A623  TL=$A3 TR=$A1 BL=$27 BR=$10
        .byte   $10,$36,$10,$37 ; A627  TL=$10 TR=$36 BL=$10 BR=$37
        .byte   $26,$10,$27,$10 ; A62B  TL=$26 TR=$10 BL=$27 BR=$10
        .byte   $10,$10,$A0,$A0 ; A62F  TL=$10 TR=$10 BL=$A0 BR=$A0
        .byte   $10,$36,$A0,$B0 ; A633  TL=$10 TR=$36 BL=$A0 BR=$B0
        .byte   $26,$10,$A2,$A0 ; A637  TL=$26 TR=$10 BL=$A2 BR=$A0
        .byte   $A4,$B4,$A5,$B5 ; A63B  TL=$A4 TR=$B4 BL=$A5 BR=$B5
        .byte   $26,$36,$27,$37 ; A63F  TL=$26 TR=$36 BL=$27 BR=$37
        .byte   $A4,$B4,$A5,$B5 ; A643  TL=$A4 TR=$B4 BL=$A5 BR=$B5
        .byte   $26,$36,$27,$37 ; A647  TL=$26 TR=$36 BL=$27 BR=$37
        .byte   $C6,$D6,$E7,$F7 ; A64B  TL=$C6 TR=$D6 BL=$E7 BR=$F7
        .byte   $E6,$F6,$E7,$F7 ; A64F  TL=$E6 TR=$F6 BL=$E7 BR=$F7
        .byte   $C7,$D7,$0D,$1D ; A653  TL=$C7 TR=$D7 BL=$0D BR=$1D
        .byte   $21,$31,$20,$30 ; A657  TL=$21 TR=$31 BL=$20 BR=$30
        .byte   $20,$30,$20,$30 ; A65B  TL=$20 TR=$30 BL=$20 BR=$30
        .byte   $0C,$1C,$0D,$1D ; A65F  TL=$0C TR=$1C BL=$0D BR=$1D
        .byte   $2C,$3C,$2D,$3D ; A663  TL=$2C TR=$3C BL=$2D BR=$3D
        .byte   $0A,$1A,$0B,$1B ; A667  TL=$0A TR=$1A BL=$0B BR=$1B
        .byte   $2A,$3A,$2B,$3B ; A66B  TL=$2A TR=$3A BL=$2B BR=$3B
        .byte   $0E,$1E,$0F,$1F ; A66F  TL=$0E TR=$1E BL=$0F BR=$1F
        .byte   $2E,$3E,$2F,$3F ; A673  TL=$2E TR=$3E BL=$2F BR=$3F
        .byte   $0E,$1E,$0F,$1F ; A677  TL=$0E TR=$1E BL=$0F BR=$1F
        .byte   $5D,$5D,$5F,$5F ; A67B  TL=$5D TR=$5D BL=$5F BR=$5F
        .byte   $10,$10,$10,$10 ; A67F  TL=$10 TR=$10 BL=$10 BR=$10
        .byte   $C6,$D6,$E7,$F7 ; A683  TL=$C6 TR=$D6 BL=$E7 BR=$F7
        .byte   $E6,$F6,$E7,$F7 ; A687  TL=$E6 TR=$F6 BL=$E7 BR=$F7
        .byte   $21,$31,$20,$30 ; A68B  TL=$21 TR=$31 BL=$20 BR=$30
        .byte   $20,$30,$20,$30 ; A68F  TL=$20 TR=$30 BL=$20 BR=$30
        .byte   $8A,$9A,$8B,$9B ; A693  TL=$8A TR=$9A BL=$8B BR=$9B
        .byte   $9A,$AA,$9B,$AB ; A697  TL=$9A TR=$AA BL=$9B BR=$AB
        .byte   $6A,$7A,$6B,$7B ; A69B  TL=$6A TR=$7A BL=$6B BR=$7B
        .byte   $8A,$9A,$8B,$9B ; A69F  TL=$8A TR=$9A BL=$8B BR=$9B
        .byte   $9A,$AA,$9B,$AB ; A6A3  TL=$9A TR=$AA BL=$9B BR=$AB
        .byte   $6A,$7A,$6B,$7B ; A6A7  TL=$6A TR=$7A BL=$6B BR=$7B
        .byte   $68,$78,$69,$79 ; A6AB  TL=$68 TR=$78 BL=$69 BR=$79
        .byte   $46,$54,$43,$51 ; A6AF  TL=$46 TR=$54 BL=$43 BR=$51
        .byte   $44,$54,$41,$51 ; A6B3  TL=$44 TR=$54 BL=$41 BR=$51
        .byte   $44,$56,$41,$53 ; A6B7  TL=$44 TR=$56 BL=$41 BR=$53
        .byte   $42,$50,$43,$51 ; A6BB  TL=$42 TR=$50 BL=$43 BR=$51
        .byte   $40,$50,$41,$51 ; A6BF  TL=$40 TR=$50 BL=$41 BR=$51
        .byte   $40,$52,$41,$53 ; A6C3  TL=$40 TR=$52 BL=$41 BR=$53
        .byte   $42,$50,$47,$55 ; A6C7  TL=$42 TR=$50 BL=$47 BR=$55
        .byte   $40,$50,$45,$55 ; A6CB  TL=$40 TR=$50 BL=$45 BR=$55
        .byte   $40,$52,$45,$57 ; A6CF  TL=$40 TR=$52 BL=$45 BR=$57
        .byte   $06,$14,$07,$15 ; A6D3  TL=$06 TR=$14 BL=$07 BR=$15
        .byte   $04,$14,$05,$15 ; A6D7  TL=$04 TR=$14 BL=$05 BR=$15
        .byte   $04,$16,$05,$17 ; A6DB  TL=$04 TR=$16 BL=$05 BR=$17
        .byte   $4A,$38,$4B,$39 ; A6DF  TL=$4A TR=$38 BL=$4B BR=$39
        .byte   $28,$38,$29,$39 ; A6E3  TL=$28 TR=$38 BL=$29 BR=$39
        .byte   $48,$58,$49,$59 ; A6E7  TL=$48 TR=$58 BL=$49 BR=$59
        .byte   $28,$5A,$29,$5B ; A6EB  TL=$28 TR=$5A BL=$29 BR=$5B
        .byte   $70,$63,$94,$73 ; A6EF  TL=$70 TR=$63 BL=$94 BR=$73
        .byte   $67,$67,$95,$64 ; A6F3  TL=$67 TR=$67 BL=$95 BR=$64
        .byte   $61,$70,$76,$90 ; A6F7  TL=$61 TR=$70 BL=$76 BR=$90
        .byte   $62,$62,$65,$75 ; A6FB  TL=$62 TR=$62 BL=$65 BR=$75
        .byte   $63,$67,$66,$84 ; A6FF  TL=$63 TR=$67 BL=$66 BR=$84
        .byte   $60,$67,$90,$95 ; A703  TL=$60 TR=$67 BL=$90 BR=$95
        .byte   $90,$95,$94,$77 ; A707  TL=$90 TR=$95 BL=$94 BR=$77
        .byte   $61,$70,$73,$95 ; A70B  TL=$61 TR=$70 BL=$73 BR=$95
        .byte   $77,$73,$92,$66 ; A70F  TL=$77 TR=$73 BL=$92 BR=$66
        .byte   $80,$73,$74,$75 ; A713  TL=$80 TR=$73 BL=$74 BR=$75
        .byte   $92,$85,$95,$94 ; A717  TL=$92 TR=$85 BL=$95 BR=$94
        .byte   $65,$75,$66,$82 ; A71B  TL=$65 TR=$75 BL=$66 BR=$82
        .byte   $95,$73,$93,$66 ; A71F  TL=$95 TR=$73 BL=$93 BR=$66
        .byte   $91,$71,$74,$82 ; A723  TL=$91 TR=$71 BL=$74 BR=$82
        .byte   $90,$92,$85,$64 ; A727  TL=$90 TR=$92 BL=$85 BR=$64
        .byte   $73,$77,$76,$93 ; A72B  TL=$73 TR=$77 BL=$76 BR=$93
        .byte   $91,$80,$94,$81 ; A72F  TL=$91 TR=$80 BL=$94 BR=$81
        .byte   $65,$82,$83,$95 ; A733  TL=$65 TR=$82 BL=$83 BR=$95
        .byte   $73,$85,$66,$72 ; A737  TL=$73 TR=$85 BL=$66 BR=$72
        .byte   $64,$76,$82,$94 ; A73B  TL=$64 TR=$76 BL=$82 BR=$94
        .byte   $94,$92,$77,$95 ; A73F  TL=$94 TR=$92 BL=$77 BR=$95
        .byte   $FC,$FC,$FC,$FC ; A743  TL=$FC TR=$FC BL=$FC BR=$FC
        .byte   $03,$13,$03,$13 ; A747  TL=$03 TR=$13 BL=$03 BR=$13
        .byte   $03,$13,$03,$13 ; A74B  TL=$03 TR=$13 BL=$03 BR=$13
        .byte   $4E,$5E,$4F,$00 ; A74F  TL=$4E TR=$5E BL=$4F BR=$00
        .byte   $6E,$B8,$6F,$B9 ; A753  TL=$6E TR=$B8 BL=$6F BR=$B9
        .byte   $A8,$4C,$A9,$4D ; A757  TL=$A8 TR=$4C BL=$A9 BR=$4D
        .byte   $5C,$6C,$00,$6D ; A75B  TL=$5C TR=$6C BL=$00 BR=$6D
        .byte   $A9,$4D,$A9,$4D ; A75F  TL=$A9 TR=$4D BL=$A9 BR=$4D
        .byte   $00,$6D,$00,$6D ; A763  TL=$00 TR=$6D BL=$00 BR=$6D
        .byte   $4F,$00,$4F,$00 ; A767  TL=$4F TR=$00 BL=$4F BR=$00
        .byte   $6F,$B9,$6F,$B9 ; A76B  TL=$6F TR=$B9 BL=$6F BR=$B9
        .byte   $C8,$D8,$C9,$D9 ; A76F  TL=$C8 TR=$D8 BL=$C9 BR=$D9
        .byte   $E8,$F8,$E9,$F9 ; A773  TL=$E8 TR=$F8 BL=$E9 BR=$F9
        .byte   $CA,$DA,$CB,$DB ; A777  TL=$CA TR=$DA BL=$CB BR=$DB
        .byte   $EA,$FA,$EB,$FB ; A77B  TL=$EA TR=$FA BL=$EB BR=$FB
        .byte   $BC,$CC,$BD,$CD ; A77F  TL=$BC TR=$CC BL=$BD BR=$CD
        .byte   $CE,$DE,$CF,$DF ; A783  TL=$CE TR=$DE BL=$CF BR=$DF
        .byte   $DC,$EC,$DD,$ED ; A787  TL=$DC TR=$EC BL=$DD BR=$ED
        .byte   $BE,$FD,$BF,$FD ; A78B  TL=$BE TR=$FD BL=$BF BR=$FD
        .byte   $00,$00,$00,$00 ; A78F  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $FE,$EE,$FF,$EF ; A793  TL=$FE TR=$EE BL=$FF BR=$EF
; 182 StructureDesc records — the level's Structure definitions, each a 2×2 quad of Tiles.
TankLvl4_StructureDescTable:
        .byte   $45,$46,$47,$45 ; A797  TL=$45 TR=$46 BL=$47 BR=$45
        .byte   $45,$46,$46,$47 ; A79B  TL=$45 TR=$46 BL=$46 BR=$47
        .byte   $4D,$4D,$4D,$4D ; A79F  TL=$4D TR=$4D BL=$4D BR=$4D
        .byte   $4D,$4D,$4D,$4E ; A7A3  TL=$4D TR=$4D BL=$4D BR=$4E
        .byte   $40,$3D,$41,$3D ; A7A7  TL=$40 TR=$3D BL=$41 BR=$3D
        .byte   $3D,$3D,$3D,$3D ; A7AB  TL=$3D TR=$3D BL=$3D BR=$3D
        .byte   $4D,$4D,$50,$50 ; A7AF  TL=$4D TR=$4D BL=$50 BR=$50
        .byte   $4C,$4D,$4C,$4D ; A7B3  TL=$4C TR=$4D BL=$4C BR=$4D
        .byte   $4D,$4E,$4D,$4E ; A7B7  TL=$4D TR=$4E BL=$4D BR=$4E
        .byte   $4D,$51,$51,$15 ; A7BB  TL=$4D TR=$51 BL=$51 BR=$15
        .byte   $50,$51,$30,$16 ; A7BF  TL=$50 TR=$51 BL=$30 BR=$16
        .byte   $15,$15,$15,$15 ; A7C3  TL=$15 TR=$15 BL=$15 BR=$15
        .byte   $30,$18,$31,$16 ; A7C7  TL=$30 TR=$18 BL=$31 BR=$16
        .byte   $17,$17,$15,$15 ; A7CB  TL=$17 TR=$17 BL=$15 BR=$15
        .byte   $31,$16,$31,$16 ; A7CF  TL=$31 TR=$16 BL=$31 BR=$16
        .byte   $30,$16,$31,$16 ; A7D3  TL=$30 TR=$16 BL=$31 BR=$16
        .byte   $4F,$4D,$15,$4C ; A7D7  TL=$4F TR=$4D BL=$15 BR=$4C
        .byte   $15,$4F,$15,$15 ; A7DB  TL=$15 TR=$4F BL=$15 BR=$15
        .byte   $4C,$4D,$4F,$4D ; A7DF  TL=$4C TR=$4D BL=$4F BR=$4D
        .byte   $30,$4F,$31,$18 ; A7E3  TL=$30 TR=$4F BL=$31 BR=$18
        .byte   $50,$51,$17,$17 ; A7E7  TL=$50 TR=$51 BL=$17 BR=$17
        .byte   $4D,$4A,$50,$50 ; A7EB  TL=$4D TR=$4A BL=$50 BR=$50
        .byte   $4B,$15,$51,$15 ; A7EF  TL=$4B TR=$15 BL=$51 BR=$15
        .byte   $17,$15,$15,$15 ; A7F3  TL=$17 TR=$15 BL=$15 BR=$15
        .byte   $52,$53,$17,$17 ; A7F7  TL=$52 TR=$53 BL=$17 BR=$17
        .byte   $53,$53,$30,$18 ; A7FB  TL=$53 TR=$53 BL=$30 BR=$18
        .byte   $54,$15,$17,$15 ; A7FF  TL=$54 TR=$15 BL=$17 BR=$15
        .byte   $15,$15,$15,$70 ; A803  TL=$15 TR=$15 BL=$15 BR=$70
        .byte   $31,$7D,$31,$80 ; A807  TL=$31 TR=$7D BL=$31 BR=$80
        .byte   $7E,$7F,$81,$82 ; A80B  TL=$7E TR=$7F BL=$81 BR=$82
        .byte   $53,$54,$30,$18 ; A80F  TL=$53 TR=$54 BL=$30 BR=$18
        .byte   $15,$49,$15,$4F ; A813  TL=$15 TR=$49 BL=$15 BR=$4F
        .byte   $31,$16,$49,$4A ; A817  TL=$31 TR=$16 BL=$49 BR=$4A
        .byte   $15,$15,$4A,$4B ; A81B  TL=$15 TR=$15 BL=$4A BR=$4B
        .byte   $4B,$16,$4E,$16 ; A81F  TL=$4B TR=$16 BL=$4E BR=$16
        .byte   $49,$4A,$4F,$50 ; A823  TL=$49 TR=$4A BL=$4F BR=$50
        .byte   $71,$72,$77,$78 ; A827  TL=$71 TR=$72 BL=$77 BR=$78
        .byte   $4A,$4B,$50,$51 ; A82B  TL=$4A TR=$4B BL=$50 BR=$51
        .byte   $16,$15,$16,$15 ; A82F  TL=$16 TR=$15 BL=$16 BR=$15
        .byte   $73,$74,$75,$76 ; A833  TL=$73 TR=$74 BL=$75 BR=$76
        .byte   $49,$4A,$4C,$4D ; A837  TL=$49 TR=$4A BL=$4C BR=$4D
        .byte   $4A,$4B,$4D,$4E ; A83B  TL=$4A TR=$4B BL=$4D BR=$4E
        .byte   $4B,$6F,$4E,$70 ; A83F  TL=$4B TR=$6F BL=$4E BR=$70
        .byte   $4E,$70,$4E,$70 ; A843  TL=$4E TR=$70 BL=$4E BR=$70
        .byte   $31,$52,$31,$17 ; A847  TL=$31 TR=$52 BL=$31 BR=$17
        .byte   $54,$15,$18,$15 ; A84B  TL=$54 TR=$15 BL=$18 BR=$15
        .byte   $53,$53,$17,$17 ; A84F  TL=$53 TR=$53 BL=$17 BR=$17
        .byte   $32,$36,$39,$3A ; A853  TL=$32 TR=$36 BL=$39 BR=$3A
        .byte   $37,$38,$3B,$3A ; A857  TL=$37 TR=$38 BL=$3B BR=$3A
        .byte   $54,$15,$17,$49 ; A85B  TL=$54 TR=$15 BL=$17 BR=$49
        .byte   $15,$4C,$15,$4F ; A85F  TL=$15 TR=$4C BL=$15 BR=$4F
        .byte   $31,$16,$4A,$4A ; A863  TL=$31 TR=$16 BL=$4A BR=$4A
        .byte   $15,$52,$15,$17 ; A867  TL=$15 TR=$52 BL=$15 BR=$17
        .byte   $52,$6F,$17,$70 ; A86B  TL=$52 TR=$6F BL=$17 BR=$70
        .byte   $3E,$3D,$3F,$3D ; A86F  TL=$3E TR=$3D BL=$3F BR=$3D
        .byte   $4D,$4D,$4C,$4D ; A873  TL=$4D TR=$4D BL=$4C BR=$4D
        .byte   $15,$70,$15,$70 ; A877  TL=$15 TR=$70 BL=$15 BR=$70
        .byte   $4C,$4D,$4F,$50 ; A87B  TL=$4C TR=$4D BL=$4F BR=$50
        .byte   $4E,$70,$51,$70 ; A87F  TL=$4E TR=$70 BL=$51 BR=$70
        .byte   $4D,$4E,$50,$51 ; A883  TL=$4D TR=$4E BL=$50 BR=$51
        .byte   $79,$7A,$7B,$7C ; A887  TL=$79 TR=$7A BL=$7B BR=$7C
        .byte   $17,$44,$15,$44 ; A88B  TL=$17 TR=$44 BL=$15 BR=$44
        .byte   $18,$70,$16,$70 ; A88F  TL=$18 TR=$70 BL=$16 BR=$70
        .byte   $15,$44,$15,$44 ; A893  TL=$15 TR=$44 BL=$15 BR=$44
        .byte   $16,$70,$16,$70 ; A897  TL=$16 TR=$70 BL=$16 BR=$70
        .byte   $44,$18,$44,$16 ; A89B  TL=$44 TR=$18 BL=$44 BR=$16
        .byte   $44,$16,$44,$16 ; A89F  TL=$44 TR=$16 BL=$44 BR=$16
        .byte   $31,$16,$4A,$4B ; A8A3  TL=$31 TR=$16 BL=$4A BR=$4B
        .byte   $52,$53,$30,$18 ; A8A7  TL=$52 TR=$53 BL=$30 BR=$18
        .byte   $54,$16,$30,$16 ; A8AB  TL=$54 TR=$16 BL=$30 BR=$16
        .byte   $50,$50,$30,$16 ; A8AF  TL=$50 TR=$50 BL=$30 BR=$16
        .byte   $51,$15,$15,$15 ; A8B3  TL=$51 TR=$15 BL=$15 BR=$15
        .byte   $31,$16,$31,$49 ; A8B7  TL=$31 TR=$16 BL=$31 BR=$49
        .byte   $49,$4D,$4C,$4D ; A8BB  TL=$49 TR=$4D BL=$4C BR=$4D
        .byte   $4C,$4D,$4D,$4D ; A8BF  TL=$4C TR=$4D BL=$4D BR=$4D
        .byte   $42,$43,$43,$44 ; A8C3  TL=$42 TR=$43 BL=$43 BR=$44
        .byte   $42,$43,$44,$44 ; A8C7  TL=$42 TR=$43 BL=$44 BR=$44
        .byte   $4D,$4E,$4D,$4D ; A8CB  TL=$4D TR=$4E BL=$4D BR=$4D
        .byte   $28,$23,$28,$23 ; A8CF  TL=$28 TR=$23 BL=$28 BR=$23
        .byte   $2B,$29,$42,$43 ; A8D3  TL=$2B TR=$29 BL=$42 BR=$43
        .byte   $29,$29,$42,$43 ; A8D7  TL=$29 TR=$29 BL=$42 BR=$43
        .byte   $44,$42,$08,$08 ; A8DB  TL=$44 TR=$42 BL=$08 BR=$08
        .byte   $43,$44,$08,$08 ; A8DF  TL=$43 TR=$44 BL=$08 BR=$08
        .byte   $44,$42,$0D,$42 ; A8E3  TL=$44 TR=$42 BL=$0D BR=$42
        .byte   $43,$44,$43,$0C ; A8E7  TL=$43 TR=$44 BL=$43 BR=$0C
        .byte   $29,$2A,$42,$43 ; A8EB  TL=$29 TR=$2A BL=$42 BR=$43
        .byte   $0A,$08,$09,$11 ; A8EF  TL=$0A TR=$08 BL=$09 BR=$11
        .byte   $09,$11,$0D,$11 ; A8F3  TL=$09 TR=$11 BL=$0D BR=$11
        .byte   $08,$08,$12,$0E ; A8F7  TL=$08 TR=$08 BL=$12 BR=$0E
        .byte   $08,$08,$0E,$13 ; A8FB  TL=$08 TR=$08 BL=$0E BR=$13
        .byte   $12,$0E,$12,$0E ; A8FF  TL=$12 TR=$0E BL=$12 BR=$0E
        .byte   $0E,$2E,$0E,$2F ; A903  TL=$0E TR=$2E BL=$0E BR=$2F
        .byte   $08,$0B,$14,$09 ; A907  TL=$08 TR=$0B BL=$14 BR=$09
        .byte   $14,$09,$14,$0C ; A90B  TL=$14 TR=$09 BL=$14 BR=$0C
        .byte   $14,$09,$14,$09 ; A90F  TL=$14 TR=$09 BL=$14 BR=$09
        .byte   $26,$24,$28,$23 ; A913  TL=$26 TR=$24 BL=$28 BR=$23
        .byte   $24,$25,$23,$27 ; A917  TL=$24 TR=$25 BL=$23 BR=$27
        .byte   $23,$27,$23,$27 ; A91B  TL=$23 TR=$27 BL=$23 BR=$27
        .byte   $09,$11,$09,$11 ; A91F  TL=$09 TR=$11 BL=$09 BR=$11
        .byte   $08,$0B,$14,$0C ; A923  TL=$08 TR=$0B BL=$14 BR=$0C
        .byte   $0F,$0F,$0E,$0E ; A927  TL=$0F TR=$0F BL=$0E BR=$0E
        .byte   $0E,$0E,$0E,$0E ; A92B  TL=$0E TR=$0E BL=$0E BR=$0E
        .byte   $0E,$0E,$0E,$2E ; A92F  TL=$0E TR=$0E BL=$0E BR=$2E
        .byte   $2E,$0E,$2F,$0E ; A933  TL=$2E TR=$0E BL=$2F BR=$0E
        .byte   $0F,$11,$0E,$11 ; A937  TL=$0F TR=$11 BL=$0E BR=$11
        .byte   $0E,$11,$0E,$11 ; A93B  TL=$0E TR=$11 BL=$0E BR=$11
        .byte   $0E,$2F,$42,$43 ; A93F  TL=$0E TR=$2F BL=$42 BR=$43
        .byte   $12,$0E,$2E,$0E ; A943  TL=$12 TR=$0E BL=$2E BR=$0E
        .byte   $0E,$13,$0E,$13 ; A947  TL=$0E TR=$13 BL=$0E BR=$13
        .byte   $14,$0F,$14,$0E ; A94B  TL=$14 TR=$0F BL=$14 BR=$0E
        .byte   $14,$0E,$14,$0E ; A94F  TL=$14 TR=$0E BL=$14 BR=$0E
        .byte   $42,$43,$14,$09 ; A953  TL=$42 TR=$43 BL=$14 BR=$09
        .byte   $42,$43,$44,$42 ; A957  TL=$42 TR=$43 BL=$44 BR=$42
        .byte   $42,$43,$48,$48 ; A95B  TL=$42 TR=$43 BL=$48 BR=$48
        .byte   $44,$0E,$48,$3C ; A95F  TL=$44 TR=$0E BL=$48 BR=$3C
        .byte   $2F,$0E,$3C,$48 ; A963  TL=$2F TR=$0E BL=$3C BR=$48
        .byte   $0E,$2F,$48,$3C ; A967  TL=$0E TR=$2F BL=$48 BR=$3C
        .byte   $0E,$44,$3C,$48 ; A96B  TL=$0E TR=$44 BL=$3C BR=$48
        .byte   $44,$11,$0B,$11 ; A96F  TL=$44 TR=$11 BL=$0B BR=$11
        .byte   $2F,$0E,$42,$43 ; A973  TL=$2F TR=$0E BL=$42 BR=$43
        .byte   $14,$44,$14,$0A ; A977  TL=$14 TR=$44 BL=$14 BR=$0A
        .byte   $4A,$4A,$4D,$4D ; A97B  TL=$4A TR=$4A BL=$4D BR=$4D
        .byte   $26,$24,$2B,$29 ; A97F  TL=$26 TR=$24 BL=$2B BR=$29
        .byte   $24,$24,$29,$29 ; A983  TL=$24 TR=$24 BL=$29 BR=$29
        .byte   $24,$24,$23,$23 ; A987  TL=$24 TR=$24 BL=$23 BR=$23
        .byte   $00,$00,$00,$00 ; A98B  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $0F,$0F,$0E,$2E ; A98F  TL=$0F TR=$0F BL=$0E BR=$2E
        .byte   $0E,$2F,$0E,$2F ; A993  TL=$0E TR=$2F BL=$0E BR=$2F
        .byte   $23,$23,$23,$23 ; A997  TL=$23 TR=$23 BL=$23 BR=$23
        .byte   $28,$23,$2B,$29 ; A99B  TL=$28 TR=$23 BL=$2B BR=$29
        .byte   $23,$27,$29,$2A ; A99F  TL=$23 TR=$27 BL=$29 BR=$2A
        .byte   $23,$23,$29,$29 ; A9A3  TL=$23 TR=$23 BL=$29 BR=$29
        .byte   $4A,$4A,$50,$50 ; A9A7  TL=$4A TR=$4A BL=$50 BR=$50
        .byte   $1C,$1B,$1A,$19 ; A9AB  TL=$1C TR=$1B BL=$1A BR=$19
        .byte   $1B,$1B,$19,$19 ; A9AF  TL=$1B TR=$1B BL=$19 BR=$19
        .byte   $04,$1F,$02,$1E ; A9B3  TL=$04 TR=$1F BL=$02 BR=$1E
        .byte   $1D,$03,$03,$06 ; A9B7  TL=$1D TR=$03 BL=$03 BR=$06
        .byte   $02,$1E,$02,$1E ; A9BB  TL=$02 TR=$1E BL=$02 BR=$1E
        .byte   $45,$46,$47,$47 ; A9BF  TL=$45 TR=$46 BL=$47 BR=$47
        .byte   $1A,$19,$1A,$19 ; A9C3  TL=$1A TR=$19 BL=$1A BR=$19
        .byte   $19,$19,$70,$19 ; A9C7  TL=$19 TR=$19 BL=$70 BR=$19
        .byte   $6F,$49,$70,$4C ; A9CB  TL=$6F TR=$49 BL=$70 BR=$4C
        .byte   $19,$19,$19,$19 ; A9CF  TL=$19 TR=$19 BL=$19 BR=$19
        .byte   $05,$01,$20,$1F ; A9D3  TL=$05 TR=$01 BL=$20 BR=$1F
        .byte   $01,$01,$1F,$1F ; A9D7  TL=$01 TR=$01 BL=$1F BR=$1F
        .byte   $1E,$1D,$1E,$1D ; A9DB  TL=$1E TR=$1D BL=$1E BR=$1D
        .byte   $1D,$1D,$1D,$1D ; A9DF  TL=$1D TR=$1D BL=$1D BR=$1D
        .byte   $01,$06,$1F,$1F ; A9E3  TL=$01 TR=$06 BL=$1F BR=$1F
        .byte   $1D,$1D,$1D,$2E ; A9E7  TL=$1D TR=$1D BL=$1D BR=$2E
        .byte   $07,$01,$22,$1F ; A9EB  TL=$07 TR=$01 BL=$22 BR=$1F
        .byte   $1D,$2E,$1D,$2F ; A9EF  TL=$1D TR=$2E BL=$1D BR=$2F
        .byte   $01,$04,$1F,$02 ; A9F3  TL=$01 TR=$04 BL=$1F BR=$02
        .byte   $1D,$02,$1D,$02 ; A9F7  TL=$1D TR=$02 BL=$1D BR=$02
        .byte   $02,$1E,$05,$04 ; A9FB  TL=$02 TR=$1E BL=$05 BR=$04
        .byte   $5D,$5E,$65,$66 ; A9FF  TL=$5D TR=$5E BL=$65 BR=$66
        .byte   $5F,$60,$67,$68 ; AA03  TL=$5F TR=$60 BL=$67 BR=$68
        .byte   $1B,$6B,$19,$1B ; AA07  TL=$1B TR=$6B BL=$19 BR=$1B
        .byte   $6C,$6D,$1B,$1B ; AA0B  TL=$6C TR=$6D BL=$1B BR=$1B
        .byte   $59,$5A,$61,$62 ; AA0F  TL=$59 TR=$5A BL=$61 BR=$62
        .byte   $70,$5C,$70,$64 ; AA13  TL=$70 TR=$5C BL=$70 BR=$64
        .byte   $69,$6A,$1B,$1B ; AA17  TL=$69 TR=$6A BL=$1B BR=$1B
        .byte   $70,$1B,$70,$19 ; AA1B  TL=$70 TR=$1B BL=$70 BR=$19
        .byte   $5B,$5C,$63,$64 ; AA1F  TL=$5B TR=$5C BL=$63 BR=$64
        .byte   $1C,$1B,$19,$19 ; AA23  TL=$1C TR=$1B BL=$19 BR=$19
        .byte   $1D,$2F,$48,$3C ; AA27  TL=$1D TR=$2F BL=$48 BR=$3C
        .byte   $1D,$1D,$3C,$48 ; AA2B  TL=$1D TR=$1D BL=$3C BR=$48
        .byte   $1D,$1D,$21,$1D ; AA2F  TL=$1D TR=$1D BL=$21 BR=$1D
        .byte   $19,$19,$19,$2C ; AA33  TL=$19 TR=$19 BL=$19 BR=$2C
        .byte   $19,$2D,$19,$2D ; AA37  TL=$19 TR=$2D BL=$19 BR=$2D
        .byte   $70,$19,$70,$19 ; AA3B  TL=$70 TR=$19 BL=$70 BR=$19
        .byte   $19,$19,$19,$55 ; AA3F  TL=$19 TR=$19 BL=$19 BR=$55
        .byte   $2C,$19,$2D,$19 ; AA43  TL=$2C TR=$19 BL=$2D BR=$19
        .byte   $19,$1B,$19,$19 ; AA47  TL=$19 TR=$1B BL=$19 BR=$19
        .byte   $19,$19,$57,$56 ; AA4B  TL=$19 TR=$19 BL=$57 BR=$56
        .byte   $19,$19,$56,$56 ; AA4F  TL=$19 TR=$19 BL=$56 BR=$56
        .byte   $33,$1C,$34,$1A ; AA53  TL=$33 TR=$1C BL=$34 BR=$1A
        .byte   $19,$19,$57,$58 ; AA57  TL=$19 TR=$19 BL=$57 BR=$58
        .byte   $1E,$1D,$1D,$1D ; AA5B  TL=$1E TR=$1D BL=$1D BR=$1D
        .byte   $1D,$07,$1D,$22 ; AA5F  TL=$1D TR=$07 BL=$1D BR=$22
        .byte   $57,$56,$33,$1C ; AA63  TL=$57 TR=$56 BL=$33 BR=$1C
        .byte   $56,$56,$1B,$1B ; AA67  TL=$56 TR=$56 BL=$1B BR=$1B
        .byte   $35,$36,$39,$3A ; AA6B  TL=$35 TR=$36 BL=$39 BR=$3A
; 158 ChunkDesc records — the level's Chunk definitions, each a 2×2 quad of Structures. These are
; the indices TankLvl4_MapData's grid holds.
TankLvl4_ChunkDescTable:
        .byte   $00,$01,$02,$03 ; AA6F  TL=$00 TR=$01 BL=$02 BR=$03
        .byte   $04,$05,$06,$06 ; AA73  TL=$04 TR=$05 BL=$06 BR=$06
        .byte   $00,$01,$06,$02 ; AA77  TL=$00 TR=$01 BL=$06 BR=$02
        .byte   $00,$01,$06,$06 ; AA7B  TL=$00 TR=$01 BL=$06 BR=$06
        .byte   $07,$08,$07,$08 ; AA7F  TL=$07 TR=$08 BL=$07 BR=$08
        .byte   $02,$09,$0A,$0B ; AA83  TL=$02 TR=$09 BL=$0A BR=$0B
        .byte   $0C,$0D,$0E,$0B ; AA87  TL=$0C TR=$0D BL=$0E BR=$0B
        .byte   $0D,$0D,$0B,$0B ; AA8B  TL=$0D TR=$0D BL=$0B BR=$0B
        .byte   $0F,$10,$0E,$11 ; AA8F  TL=$0F TR=$10 BL=$0E BR=$11
        .byte   $12,$02,$13,$14 ; AA93  TL=$12 TR=$02 BL=$13 BR=$14
        .byte   $15,$16,$0C,$17 ; AA97  TL=$15 TR=$16 BL=$0C BR=$17
        .byte   $0C,$10,$0E,$11 ; AA9B  TL=$0C TR=$10 BL=$0E BR=$11
        .byte   $0D,$0D,$0B,$18 ; AA9F  TL=$0D TR=$0D BL=$0B BR=$18
        .byte   $0C,$0D,$19,$1A ; AAA3  TL=$0C TR=$0D BL=$19 BR=$1A
        .byte   $0C,$0D,$0E,$1B ; AAA7  TL=$0C TR=$0D BL=$0E BR=$1B
        .byte   $0E,$18,$1C,$1D ; AAAB  TL=$0E TR=$18 BL=$1C BR=$1D
        .byte   $19,$1A,$0E,$0B ; AAAF  TL=$19 TR=$1A BL=$0E BR=$0B
        .byte   $0B,$18,$0B,$0B ; AAB3  TL=$0B TR=$18 BL=$0B BR=$0B
        .byte   $1E,$0B,$0E,$1F ; AAB7  TL=$1E TR=$0B BL=$0E BR=$1F
        .byte   $20,$21,$02,$02 ; AABB  TL=$20 TR=$21 BL=$02 BR=$02
        .byte   $0E,$0B,$22,$0B ; AABF  TL=$0E TR=$0B BL=$22 BR=$0B
        .byte   $0E,$0B,$0E,$1F ; AAC3  TL=$0E TR=$0B BL=$0E BR=$1F
        .byte   $0E,$0B,$0E,$0B ; AAC7  TL=$0E TR=$0B BL=$0E BR=$0B
        .byte   $0E,$0B,$0E,$18 ; AACB  TL=$0E TR=$0B BL=$0E BR=$18
        .byte   $0E,$0B,$19,$1A ; AACF  TL=$0E TR=$0B BL=$19 BR=$1A
        .byte   $0B,$0B,$0B,$0B ; AAD3  TL=$0B TR=$0B BL=$0B BR=$0B
        .byte   $0E,$23,$0E,$24 ; AAD7  TL=$0E TR=$23 BL=$0E BR=$24
        .byte   $25,$26,$27,$0B ; AADB  TL=$25 TR=$26 BL=$27 BR=$0B
        .byte   $0E,$18,$0E,$0B ; AADF  TL=$0E TR=$18 BL=$0E BR=$0B
        .byte   $28,$29,$07,$08 ; AAE3  TL=$28 TR=$29 BL=$07 BR=$08
        .byte   $28,$2A,$07,$2B ; AAE7  TL=$28 TR=$2A BL=$07 BR=$2B
        .byte   $2C,$2D,$0E,$18 ; AAEB  TL=$2C TR=$2D BL=$0E BR=$18
        .byte   $0E,$0B,$1E,$0B ; AAEF  TL=$0E TR=$0B BL=$1E BR=$0B
        .byte   $19,$2E,$2F,$30 ; AAF3  TL=$19 TR=$2E BL=$2F BR=$30
        .byte   $2E,$2E,$30,$30 ; AAF7  TL=$2E TR=$2E BL=$30 BR=$30
        .byte   $19,$19,$2F,$2F ; AAFB  TL=$19 TR=$19 BL=$2F BR=$2F
        .byte   $19,$31,$0E,$32 ; AAFF  TL=$19 TR=$31 BL=$0E BR=$32
        .byte   $33,$21,$02,$02 ; AB03  TL=$33 TR=$21 BL=$02 BR=$02
        .byte   $0E,$34,$22,$0B ; AB07  TL=$0E TR=$34 BL=$22 BR=$0B
        .byte   $07,$2B,$07,$2B ; AB0B  TL=$07 TR=$2B BL=$07 BR=$2B
        .byte   $1E,$1B,$0E,$35 ; AB0F  TL=$1E TR=$1B BL=$0E BR=$35
        .byte   $36,$05,$06,$06 ; AB13  TL=$36 TR=$05 BL=$06 BR=$06
        .byte   $05,$05,$06,$06 ; AB17  TL=$05 TR=$05 BL=$06 BR=$06
        .byte   $36,$05,$37,$03 ; AB1B  TL=$36 TR=$05 BL=$37 BR=$03
        .byte   $0E,$0B,$1E,$1B ; AB1F  TL=$0E TR=$0B BL=$1E BR=$1B
        .byte   $0E,$38,$0E,$18 ; AB23  TL=$0E TR=$38 BL=$0E BR=$18
        .byte   $0C,$0C,$0E,$0E ; AB27  TL=$0C TR=$0C BL=$0E BR=$0E
        .byte   $0C,$0D,$0E,$18 ; AB2B  TL=$0C TR=$0D BL=$0E BR=$18
        .byte   $0E,$18,$22,$0B ; AB2F  TL=$0E TR=$18 BL=$22 BR=$0B
        .byte   $07,$2B,$39,$3A ; AB33  TL=$07 TR=$2B BL=$39 BR=$3A
        .byte   $07,$08,$39,$3B ; AB37  TL=$07 TR=$08 BL=$39 BR=$3B
        .byte   $0E,$35,$0E,$38 ; AB3B  TL=$0E TR=$35 BL=$0E BR=$38
        .byte   $1E,$0B,$0E,$0B ; AB3F  TL=$1E TR=$0B BL=$0E BR=$0B
        .byte   $3C,$0B,$19,$1A ; AB43  TL=$3C TR=$0B BL=$19 BR=$1A
        .byte   $3D,$3E,$3F,$40 ; AB47  TL=$3D TR=$3E BL=$3F BR=$40
        .byte   $0C,$41,$0E,$42 ; AB4B  TL=$0C TR=$41 BL=$0E BR=$42
        .byte   $0E,$18,$1E,$0B ; AB4F  TL=$0E TR=$18 BL=$1E BR=$0B
        .byte   $1E,$0B,$1C,$1D ; AB53  TL=$1E TR=$0B BL=$1C BR=$1D
        .byte   $43,$0B,$02,$22 ; AB57  TL=$43 TR=$0B BL=$02 BR=$22
        .byte   $0B,$0B,$0B,$18 ; AB5B  TL=$0B TR=$0B BL=$0B BR=$18
        .byte   $44,$19,$19,$45 ; AB5F  TL=$44 TR=$19 BL=$19 BR=$45
        .byte   $46,$47,$44,$2E ; AB63  TL=$46 TR=$47 BL=$44 BR=$2E
        .byte   $0B,$0B,$1A,$0B ; AB67  TL=$0B TR=$0B BL=$1A BR=$0B
        .byte   $0E,$48,$0E,$49 ; AB6B  TL=$0E TR=$48 BL=$0E BR=$49
        .byte   $4A,$08,$02,$4B ; AB6F  TL=$4A TR=$08 BL=$02 BR=$4B
        .byte   $36,$05,$4C,$4C ; AB73  TL=$36 TR=$05 BL=$4C BR=$4C
        .byte   $36,$36,$4C,$4C ; AB77  TL=$36 TR=$36 BL=$4C BR=$4C
        .byte   $07,$4D,$4C,$4C ; AB7B  TL=$07 TR=$4D BL=$4C BR=$4C
        .byte   $4E,$08,$4E,$08 ; AB7F  TL=$4E TR=$08 BL=$4E BR=$08
        .byte   $07,$4B,$07,$4B ; AB83  TL=$07 TR=$4B BL=$07 BR=$4B
        .byte   $4F,$50,$51,$52 ; AB87  TL=$4F TR=$50 BL=$51 BR=$52
        .byte   $50,$50,$51,$52 ; AB8B  TL=$50 TR=$50 BL=$51 BR=$52
        .byte   $50,$50,$53,$54 ; AB8F  TL=$50 TR=$50 BL=$53 BR=$54
        .byte   $50,$55,$51,$52 ; AB93  TL=$50 TR=$55 BL=$51 BR=$52
        .byte   $4C,$56,$4C,$57 ; AB97  TL=$4C TR=$56 BL=$4C BR=$57
        .byte   $58,$59,$5A,$5B ; AB9B  TL=$58 TR=$59 BL=$5A BR=$5B
        .byte   $5C,$4C,$5D,$4C ; AB9F  TL=$5C TR=$4C BL=$5D BR=$4C
        .byte   $5C,$4C,$5E,$4C ; ABA3  TL=$5C TR=$4C BL=$5E BR=$4C
        .byte   $5F,$60,$4E,$61 ; ABA7  TL=$5F TR=$60 BL=$4E BR=$61
        .byte   $4C,$56,$4C,$62 ; ABAB  TL=$4C TR=$56 BL=$4C BR=$62
        .byte   $63,$4C,$3C,$4C ; ABAF  TL=$63 TR=$4C BL=$3C BR=$4C
        .byte   $4C,$64,$27,$65 ; ABB3  TL=$4C TR=$64 BL=$27 BR=$65
        .byte   $64,$64,$66,$65 ; ABB7  TL=$64 TR=$64 BL=$66 BR=$65
        .byte   $64,$64,$65,$67 ; ABBB  TL=$64 TR=$64 BL=$65 BR=$67
        .byte   $64,$68,$65,$69 ; ABBF  TL=$64 TR=$68 BL=$65 BR=$69
        .byte   $5A,$6A,$6B,$6C ; ABC3  TL=$5A TR=$6A BL=$6B BR=$6C
        .byte   $6D,$64,$6E,$65 ; ABC7  TL=$6D TR=$64 BL=$6E BR=$65
        .byte   $64,$64,$65,$65 ; ABCB  TL=$64 TR=$64 BL=$65 BR=$65
        .byte   $5E,$4C,$5E,$4C ; ABCF  TL=$5E TR=$4C BL=$5E BR=$4C
        .byte   $4E,$61,$4E,$61 ; ABD3  TL=$4E TR=$61 BL=$4E BR=$61
        .byte   $4C,$62,$4C,$62 ; ABD7  TL=$4C TR=$62 BL=$4C BR=$62
        .byte   $6F,$4C,$5E,$4C ; ABDB  TL=$6F TR=$4C BL=$5E BR=$4C
        .byte   $70,$4B,$70,$4B ; ABDF  TL=$70 TR=$4B BL=$70 BR=$4B
        .byte   $71,$71,$70,$4B ; ABE3  TL=$71 TR=$71 BL=$70 BR=$4B
        .byte   $72,$73,$70,$4B ; ABE7  TL=$72 TR=$73 BL=$70 BR=$4B
        .byte   $74,$75,$70,$4B ; ABEB  TL=$74 TR=$75 BL=$70 BR=$4B
        .byte   $4C,$76,$4C,$62 ; ABEF  TL=$4C TR=$76 BL=$4C BR=$62
        .byte   $77,$6C,$5A,$5B ; ABF3  TL=$77 TR=$6C BL=$5A BR=$5B
        .byte   $78,$4C,$5E,$4C ; ABF7  TL=$78 TR=$4C BL=$5E BR=$4C
        .byte   $79,$79,$02,$08 ; ABFB  TL=$79 TR=$79 BL=$02 BR=$08
        .byte   $7A,$7B,$4C,$4C ; ABFF  TL=$7A TR=$7B BL=$4C BR=$4C
        .byte   $7B,$7B,$4C,$4C ; AC03  TL=$7B TR=$7B BL=$4C BR=$4C
        .byte   $7C,$60,$4E,$61 ; AC07  TL=$7C TR=$60 BL=$4E BR=$61
        .byte   $4C,$57,$4C,$4C ; AC0B  TL=$4C TR=$57 BL=$4C BR=$4C
        .byte   $5A,$6A,$4C,$4C ; AC0F  TL=$5A TR=$6A BL=$4C BR=$4C
        .byte   $5D,$4C,$4C,$4C ; AC13  TL=$5D TR=$4C BL=$4C BR=$4C
        .byte   $5F,$7C,$4E,$61 ; AC17  TL=$5F TR=$7C BL=$4E BR=$61
        .byte   $7D,$7D,$7D,$7D ; AC1B  TL=$7D TR=$7D BL=$7D BR=$7D
        .byte   $4C,$62,$4C,$57 ; AC1F  TL=$4C TR=$62 BL=$4C BR=$57
        .byte   $5E,$4C,$5D,$4C ; AC23  TL=$5E TR=$4C BL=$5D BR=$4C
        .byte   $4F,$55,$51,$52 ; AC27  TL=$4F TR=$55 BL=$51 BR=$52
        .byte   $7E,$68,$7F,$69 ; AC2B  TL=$7E TR=$68 BL=$7F BR=$69
        .byte   $5F,$7C,$4E,$80 ; AC2F  TL=$5F TR=$7C BL=$4E BR=$80
        .byte   $7C,$7C,$80,$80 ; AC33  TL=$7C TR=$7C BL=$80 BR=$80
        .byte   $7C,$60,$80,$61 ; AC37  TL=$7C TR=$60 BL=$80 BR=$61
        .byte   $81,$82,$4C,$4C ; AC3B  TL=$81 TR=$82 BL=$4C BR=$4C
        .byte   $80,$80,$80,$80 ; AC3F  TL=$80 TR=$80 BL=$80 BR=$80
        .byte   $80,$61,$80,$61 ; AC43  TL=$80 TR=$61 BL=$80 BR=$61
        .byte   $4E,$80,$81,$83 ; AC47  TL=$4E TR=$80 BL=$81 BR=$83
        .byte   $80,$80,$83,$83 ; AC4B  TL=$80 TR=$80 BL=$83 BR=$83
        .byte   $80,$61,$83,$82 ; AC4F  TL=$80 TR=$61 BL=$83 BR=$82
        .byte   $4E,$61,$81,$82 ; AC53  TL=$4E TR=$61 BL=$81 BR=$82
        .byte   $3C,$4C,$4C,$4C ; AC57  TL=$3C TR=$4C BL=$4C BR=$4C
        .byte   $00,$01,$00,$01 ; AC5B  TL=$00 TR=$01 BL=$00 BR=$01
        .byte   $84,$84,$85,$86 ; AC5F  TL=$84 TR=$84 BL=$85 BR=$86
        .byte   $84,$84,$86,$86 ; AC63  TL=$84 TR=$84 BL=$86 BR=$86
        .byte   $79,$79,$07,$02 ; AC67  TL=$79 TR=$79 BL=$07 BR=$02
        .byte   $79,$79,$02,$02 ; AC6B  TL=$79 TR=$79 BL=$02 BR=$02
        .byte   $87,$88,$89,$8A ; AC6F  TL=$87 TR=$88 BL=$89 BR=$8A
        .byte   $02,$08,$02,$02 ; AC73  TL=$02 TR=$08 BL=$02 BR=$02
        .byte   $8B,$8C,$29,$8D ; AC77  TL=$8B TR=$8C BL=$29 BR=$8D
        .byte   $3C,$8E,$79,$79 ; AC7B  TL=$3C TR=$8E BL=$79 BR=$79
        .byte   $07,$02,$02,$02 ; AC7F  TL=$07 TR=$02 BL=$02 BR=$02
        .byte   $02,$02,$02,$02 ; AC83  TL=$02 TR=$02 BL=$02 BR=$02
        .byte   $8F,$90,$91,$92 ; AC87  TL=$8F TR=$90 BL=$91 BR=$92
        .byte   $90,$93,$94,$92 ; AC8B  TL=$90 TR=$93 BL=$94 BR=$92
        .byte   $95,$90,$96,$92 ; AC8F  TL=$95 TR=$90 BL=$96 BR=$92
        .byte   $90,$90,$96,$92 ; AC93  TL=$90 TR=$90 BL=$96 BR=$92
        .byte   $90,$97,$92,$98 ; AC97  TL=$90 TR=$97 BL=$92 BR=$98
        .byte   $99,$95,$8A,$91 ; AC9B  TL=$99 TR=$95 BL=$8A BR=$91
        .byte   $90,$90,$92,$92 ; AC9F  TL=$90 TR=$90 BL=$92 BR=$92
        .byte   $95,$90,$92,$92 ; ACA3  TL=$95 TR=$90 BL=$92 BR=$92
        .byte   $9A,$9B,$9C,$9D ; ACA7  TL=$9A TR=$9B BL=$9C BR=$9D
        .byte   $9E,$9F,$A0,$A1 ; ACAB  TL=$9E TR=$9F BL=$A0 BR=$A1
        .byte   $9E,$A2,$A0,$A3 ; ACAF  TL=$9E TR=$A2 BL=$A0 BR=$A3
        .byte   $91,$92,$91,$92 ; ACB3  TL=$91 TR=$92 BL=$91 BR=$92
        .byte   $A4,$A5,$00,$01 ; ACB7  TL=$A4 TR=$A5 BL=$00 BR=$01
        .byte   $A6,$98,$91,$98 ; ACBB  TL=$A6 TR=$98 BL=$91 BR=$98
        .byte   $A7,$8E,$A8,$8E ; ACBF  TL=$A7 TR=$8E BL=$A8 BR=$8E
        .byte   $8E,$A9,$8E,$A9 ; ACC3  TL=$8E TR=$A9 BL=$8E BR=$A9
        .byte   $8E,$AA,$AB,$AC ; ACC7  TL=$8E TR=$AA BL=$AB BR=$AC
        .byte   $AD,$AE,$AF,$86 ; ACCB  TL=$AD TR=$AE BL=$AF BR=$86
        .byte   $B0,$8E,$AF,$8E ; ACCF  TL=$B0 TR=$8E BL=$AF BR=$8E
        .byte   $95,$93,$92,$92 ; ACD3  TL=$95 TR=$93 BL=$92 BR=$92
        .byte   $B1,$92,$92,$92 ; ACD7  TL=$B1 TR=$92 BL=$92 BR=$92
        .byte   $B1,$B2,$92,$92 ; ACDB  TL=$B1 TR=$B2 BL=$92 BR=$92
        .byte   $B3,$B4,$B5,$30 ; ACDF  TL=$B3 TR=$B4 BL=$B5 BR=$30
        .byte   $B4,$B4,$30,$30 ; ACE3  TL=$B4 TR=$B4 BL=$30 BR=$30
; 32×32 chunk-index grid = 1024 bytes
TankLvl4_MapData:
        .byte   $00,$00,$01,$01,$02,$00,$01,$00 ; ACE7
        .byte   $00,$01,$02,$00,$01,$01,$01,$01 ; ACEF
        .byte   $00,$03,$02,$00,$03,$03,$02,$00 ; ACF7
        .byte   $00,$00,$03,$03,$02,$00,$02,$00 ; ACFF
        .byte   $04,$05,$06,$07,$08,$05,$06,$09 ; AD07
        .byte   $0A,$06,$0B,$05,$06,$0C,$0D,$06 ; AD0F
        .byte   $04,$06,$0B,$05,$06,$06,$0B,$05 ; AD17
        .byte   $04,$05,$0E,$06,$0B,$05,$0B,$05 ; AD1F
        .byte   $04,$0F,$10,$11,$12,$13,$14,$15 ; AD27
        .byte   $13,$14,$16,$17,$18,$19,$16,$1A ; AD2F
        .byte   $04,$1B,$16,$16,$1C,$10,$16,$16 ; AD37
        .byte   $04,$1D,$1E,$1D,$1F,$20,$16,$16 ; AD3F
        .byte   $04,$21,$21,$22,$21,$21,$21,$21 ; AD47
        .byte   $21,$21,$21,$21,$21,$22,$21,$23 ; AD4F
        .byte   $04,$24,$25,$26,$10,$1C,$12,$13 ; AD57
        .byte   $04,$04,$27,$04,$16,$1C,$28,$20 ; AD5F
        .byte   $04,$00,$29,$2A,$2B,$00,$29,$29 ; AD67
        .byte   $00,$00,$29,$29,$29,$02,$00,$29 ; AD6F
        .byte   $04,$16,$09,$0A,$1C,$10,$16,$09 ; AD77
        .byte   $04,$04,$27,$04,$17,$2C,$2D,$20 ; AD7F
        .byte   $04,$05,$07,$2E,$04,$05,$06,$06 ; AD87
        .byte   $09,$0A,$06,$2F,$0D,$0B,$05,$2E ; AD8F
        .byte   $04,$12,$13,$30,$10,$1C,$10,$16 ; AD97
        .byte   $04,$05,$31,$32,$16,$33,$34,$16 ; AD9F
        .byte   $04,$35,$19,$1A,$04,$1B,$16,$16 ; ADA7
        .byte   $15,$13,$14,$15,$13,$14,$16,$1A ; ADAF
        .byte   $04,$1B,$09,$0A,$1C,$10,$16,$1A ; ADB7
        .byte   $04,$1B,$36,$37,$17,$38,$39,$16 ; ADBF
        .byte   $04,$3A,$3B,$3C,$04,$21,$21,$21 ; ADC7
        .byte   $21,$21,$21,$21,$21,$21,$21,$23 ; ADCF
        .byte   $04,$21,$21,$21,$21,$21,$21,$23 ; ADD7
        .byte   $04,$21,$22,$21,$21,$21,$21,$21 ; ADDF
        .byte   $04,$3D,$3E,$3F,$40,$41,$41,$41 ; ADE7
        .byte   $41,$41,$41,$41,$41,$41,$41,$42 ; ADEF
        .byte   $43,$41,$41,$41,$41,$41,$41,$41 ; ADF7
        .byte   $43,$41,$41,$41,$41,$41,$41,$41 ; ADFF
        .byte   $44,$3A,$3B,$3C,$45,$46,$47,$48 ; AE07
        .byte   $49,$4A,$4B,$4C,$46,$47,$48,$47 ; AE0F
        .byte   $48,$4A,$4B,$4D,$4E,$4F,$4B,$4C ; AE17
        .byte   $48,$4A,$4B,$4D,$4E,$4F,$4B,$50 ; AE1F
        .byte   $44,$3D,$3E,$1A,$45,$51,$52,$53 ; AE27
        .byte   $52,$54,$55,$56,$52,$53,$52,$53 ; AE2F
        .byte   $57,$54,$55,$58,$59,$5A,$55,$56 ; AE37
        .byte   $53,$54,$55,$58,$59,$5A,$55,$5B ; AE3F
        .byte   $44,$3A,$3B,$3C,$45,$5C,$5D,$5E ; AE47
        .byte   $5F,$60,$61,$62,$5D,$5E,$5F,$5E ; AE4F
        .byte   $5D,$60,$61,$58,$59,$5A,$61,$62 ; AE57
        .byte   $5E,$60,$61,$58,$59,$5A,$61,$58 ; AE5F
        .byte   $44,$63,$63,$63,$45,$64,$65,$65 ; AE67
        .byte   $66,$67,$68,$69,$6A,$65,$65,$65 ; AE6F
        .byte   $66,$5A,$55,$58,$59,$5A,$55,$58 ; AE77
        .byte   $4E,$5A,$55,$58,$59,$5A,$55,$58 ; AE7F
        .byte   $59,$6B,$6B,$6B,$4E,$4F,$4B,$4C ; AE87
        .byte   $46,$47,$48,$47,$49,$4A,$4B,$4C ; AE8F
        .byte   $48,$6C,$61,$6D,$6E,$6C,$61,$58 ; AE97
        .byte   $59,$5A,$61,$6D,$48,$6C,$61,$58 ; AE9F
        .byte   $59,$6B,$6B,$6B,$59,$5A,$55,$56 ; AEA7
        .byte   $53,$52,$57,$52,$53,$54,$55,$56 ; AEAF
        .byte   $52,$6F,$55,$56,$53,$54,$55,$58 ; AEB7
        .byte   $59,$5A,$55,$56,$53,$54,$55,$58 ; AEBF
        .byte   $59,$6B,$6B,$6B,$59,$5A,$61,$62 ; AEC7
        .byte   $5E,$5D,$5D,$5F,$5E,$60,$61,$62 ; AECF
        .byte   $5F,$60,$61,$62,$5E,$60,$61,$58 ; AED7
        .byte   $59,$5A,$61,$62,$5E,$60,$61,$58 ; AEDF
        .byte   $59,$6B,$6B,$6B,$59,$5A,$55,$58 ; AEE7
        .byte   $70,$71,$71,$71,$72,$5A,$55,$58 ; AEEF
        .byte   $4E,$5A,$55,$58,$4E,$67,$68,$69 ; AEF7
        .byte   $73,$67,$68,$69,$4E,$67,$68,$69 ; AEFF
        .byte   $59,$6B,$6B,$6B,$59,$5A,$61,$6D ; AF07
        .byte   $46,$47,$48,$47,$49,$6C,$61,$58 ; AF0F
        .byte   $59,$5A,$61,$6D,$48,$47,$47,$4A ; AF17
        .byte   $4B,$4C,$47,$48,$49,$4A,$4B,$4D ; AF1F
        .byte   $59,$6B,$6B,$6B,$59,$5A,$55,$56 ; AF27
        .byte   $52,$52,$53,$57,$57,$6F,$55,$58 ; AF2F
        .byte   $59,$5A,$55,$56,$57,$52,$53,$54 ; AF37
        .byte   $55,$56,$52,$53,$57,$6F,$55,$58 ; AF3F
        .byte   $59,$6B,$6B,$6B,$59,$5A,$61,$62 ; AF47
        .byte   $5D,$5F,$5E,$5D,$5D,$60,$61,$58 ; AF4F
        .byte   $59,$5A,$61,$62,$5D,$5F,$5E,$60 ; AF57
        .byte   $61,$62,$5F,$5E,$5D,$60,$61,$58 ; AF5F
        .byte   $59,$6B,$6B,$6B,$59,$5A,$55,$58 ; AF67
        .byte   $6A,$65,$65,$65,$66,$67,$68,$69 ; AF6F
        .byte   $59,$67,$68,$69,$70,$71,$72,$67 ; AF77
        .byte   $68,$69,$64,$65,$66,$5A,$55,$58 ; AF7F
        .byte   $59,$6B,$6B,$6B,$59,$5A,$61,$6D ; AF87
        .byte   $48,$4A,$4B,$4C,$46,$47,$48,$47 ; AF8F
        .byte   $49,$4A,$4B,$4C,$46,$47,$48,$47 ; AF97
        .byte   $47,$4A,$4B,$4D,$59,$5A,$61,$58 ; AF9F
        .byte   $59,$6B,$6B,$6B,$59,$5A,$55,$56 ; AFA7
        .byte   $52,$54,$55,$56,$57,$52,$53,$52 ; AFAF
        .byte   $53,$6F,$55,$56,$52,$57,$57,$52 ; AFB7
        .byte   $53,$54,$55,$58,$59,$5A,$55,$58 ; AFBF
        .byte   $59,$6B,$6B,$6B,$59,$5A,$61,$62 ; AFC7
        .byte   $5F,$60,$61,$62,$5D,$5F,$5E,$5F ; AFCF
        .byte   $5E,$60,$61,$62,$5D,$5D,$5D,$5F ; AFD7
        .byte   $5E,$60,$61,$58,$59,$5A,$61,$58 ; AFDF
        .byte   $59,$6B,$6B,$6B,$59,$67,$68,$69 ; AFE7
        .byte   $4E,$67,$68,$69,$70,$71,$71,$71 ; AFEF
        .byte   $72,$67,$68,$69,$70,$71,$71,$71 ; AFF7
        .byte   $72,$5A,$55,$58,$59,$5A,$55,$58 ; AFFF
        .byte   $59,$6B,$6B,$6B,$74,$71,$71,$71 ; B007
        .byte   $74,$71,$71,$71,$74,$74,$74,$74 ; B00F
        .byte   $74,$71,$71,$71,$74,$74,$74,$74 ; B017
        .byte   $75,$5A,$61,$58,$59,$5A,$61,$6D ; B01F
        .byte   $76,$6B,$6B,$6B,$77,$77,$77,$77 ; B027
        .byte   $77,$77,$77,$77,$77,$77,$77,$77 ; B02F
        .byte   $77,$77,$77,$77,$77,$77,$77,$77 ; B037
        .byte   $78,$6C,$55,$6D,$79,$67,$68,$7A ; B03F
        .byte   $7B,$6B,$6B,$6B,$04,$63,$7C,$7D ; B047
        .byte   $7E,$7F,$7F,$7F,$7F,$7F,$7F,$7F ; B04F
        .byte   $7F,$7B,$7B,$7B,$7B,$7B,$7B,$7B ; B057
        .byte   $7B,$7B,$80,$7B,$7B,$7B,$7B,$7B ; B05F
        .byte   $7B,$6B,$6B,$6B,$04,$81,$82,$83 ; B067
        .byte   $84,$85,$85,$85,$85,$85,$85,$85 ; B06F
        .byte   $85,$7B,$86,$87,$88,$89,$89,$89 ; B077
        .byte   $8A,$7B,$8B,$8C,$87,$8D,$89,$8A ; B07F
        .byte   $7B,$6B,$6B,$6B,$04,$8E,$8F,$8E ; B087
        .byte   $90,$90,$8E,$90,$8E,$8E,$90,$8E ; B08F
        .byte   $90,$7B,$91,$92,$92,$92,$92,$92 ; B097
        .byte   $93,$7B,$7B,$7B,$92,$7B,$92,$93 ; B09F
        .byte   $7B,$6B,$6B,$6B,$04,$94,$95,$96 ; B0A7
        .byte   $97,$98,$94,$96,$97,$98,$96,$97 ; B0AF
        .byte   $98,$99,$9A,$7B,$86,$87,$9B,$87 ; B0B7
        .byte   $9B,$87,$88,$8C,$87,$88,$87,$9B ; B0BF
        .byte   $7B,$6B,$6B,$6B,$04,$9C,$9D,$9C ; B0C7
        .byte   $9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C ; B0CF
        .byte   $9C,$7B,$7B,$7B,$7B,$92,$7B,$92 ; B0D7
        .byte   $7B,$92,$92,$7B,$92,$92,$92,$7B ; B0DF
; Tile attribute table – bits: 0-1=palette 3=Gateway 2+3=Tunnel(→Overhead) 4=damage 5=ladder
; 6=water 7=solid  3+7=Doorway 4+6=lava 5+7=solid-ladder 6+7=destroyable
TankLvl4_TileAttrTable:
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B0E7
        .byte   $02,$02,$02,$02,$02,$02,$00,$00 ; B0EF
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B0F7
        .byte   $00,$02,$02,$02,$02,$00,$00,$00 ; B0FF
        .byte   $00,$00,$00,$03,$03,$03,$03,$03 ; B107
        .byte   $03,$03,$03,$03,$02,$02,$00,$00 ; B10F
        .byte   $02,$02,$00,$00,$00,$00,$01,$01 ; B117
        .byte   $01,$40,$41,$41,$41,$41,$41,$41 ; B11F
        .byte   $41,$41,$82,$82,$82,$80,$80,$80 ; B127
        .byte   $80,$82,$82,$82,$82,$82,$82,$82 ; B12F
        .byte   $82,$82,$80,$80,$80,$83,$83,$83 ; B137
        .byte   $83,$82,$82,$82,$82,$82,$82,$82 ; B13F
        .byte   $82,$82,$82,$82,$82,$82,$82,$82 ; B147
        .byte   $82,$82,$82,$82,$82,$82,$C3,$A0 ; B14F
        .byte   $20,$83,$83,$83,$83,$83,$8B,$8B ; B157
        .byte   $83,$02,$02,$0E,$02,$02,$02,$02 ; B15F
        .byte   $02,$08,$02                     ; B167
; 16 bytes — 8 B vertical + 8 B horizontal scroll-boundary flags
TankLvl4_ScrollData:
        .byte   $FF,$F0,$7F,$80,$00,$00,$00,$00 ; B16A
        .byte   $8A,$CA,$C0,$C0,$C0,$C0,$C0,$C0 ; B172
; ----------------------------------------------------------------------------
; Level 5 map pointer table (6×16-bit LE ptrs): BgPalette, TileAttr, TileDesc, StructureDesc,
; ChunkDesc, MapData
TankLvl5_MapPointers:
        .addr   TankLvl5_BgPalette              ; B17A
        .addr   TankLvl5_TileAttrTable          ; B17C
        .addr   TankLvl5_TileDescTable          ; B17E
        .addr   TankLvl5_StructureDescTable     ; B180
        .addr   TankLvl5_ChunkDescTable         ; B182
        .addr   TankLvl5_MapData                ; B184
; ----------------------------------------------------------------------------
; 4 BgPalette records — the level's 4 background sub-palettes × 4 NES colour indices.
TankLvl5_BgPalette:
        .byte   $0F,$0C,$1B,$10 ; B186  Backdrop=$0F Colour1=$0C Colour2=$1B Colour3=$10
        .byte   $0F,$07,$17,$10 ; B18A  Backdrop=$0F Colour1=$07 Colour2=$17 Colour3=$10
        .byte   $0F,$0B,$1A,$2A ; B18E  Backdrop=$0F Colour1=$0B Colour2=$1A Colour3=$2A
        .byte   $0F,$0C,$14,$24 ; B192  Backdrop=$0F Colour1=$0C Colour2=$14 Colour3=$24
; 130 TileDesc records — the level's Tile definitions. Index space shared with
; TankLvl5_TileAttrTable, which has the matching 130 entries.
TankLvl5_TileDescTable:
        .byte   $00,$00,$00,$00 ; B196  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $4B,$5B,$4C,$5C ; B19A  TL=$4B TR=$5B BL=$4C BR=$5C
        .byte   $2B,$3B,$2C,$7C ; B19E  TL=$2B TR=$3B BL=$2C BR=$7C
        .byte   $8E,$9E,$6C,$7C ; B1A2  TL=$8E TR=$9E BL=$6C BR=$7C
        .byte   $3C,$5D,$6C,$3D ; B1A6  TL=$3C TR=$5D BL=$6C BR=$3D
        .byte   $84,$1F,$6F,$7C ; B1AA  TL=$84 TR=$1F BL=$6F BR=$7C
        .byte   $0F,$1F,$6C,$7C ; B1AE  TL=$0F TR=$1F BL=$6C BR=$7C
        .byte   $0F,$94,$6C,$7F ; B1B2  TL=$0F TR=$94 BL=$6C BR=$7F
        .byte   $0F,$1F,$8F,$9F ; B1B6  TL=$0F TR=$1F BL=$8F BR=$9F
        .byte   $8E,$9E,$2F,$3F ; B1BA  TL=$8E TR=$9E BL=$2F BR=$3F
        .byte   $2B,$3B,$2C,$7C ; B1BE  TL=$2B TR=$3B BL=$2C BR=$7C
        .byte   $8E,$9E,$6C,$7C ; B1C2  TL=$8E TR=$9E BL=$6C BR=$7C
        .byte   $3C,$5D,$6C,$3D ; B1C6  TL=$3C TR=$5D BL=$6C BR=$3D
        .byte   $4B,$5B,$4C,$B3 ; B1CA  TL=$4B TR=$5B BL=$4C BR=$B3
        .byte   $C2,$D2,$C3,$D3 ; B1CE  TL=$C2 TR=$D2 BL=$C3 BR=$D3
        .byte   $E2,$5B,$E3,$5C ; B1D2  TL=$E2 TR=$5B BL=$E3 BR=$5C
        .byte   $10,$5B,$26,$5C ; B1D6  TL=$10 TR=$5B BL=$26 BR=$5C
        .byte   $26,$5B,$36,$5A ; B1DA  TL=$26 TR=$5B BL=$36 BR=$5A
        .byte   $6D,$5F,$6E,$7F ; B1DE  TL=$6D TR=$5F BL=$6E BR=$7F
        .byte   $6B,$7B,$6C,$7C ; B1E2  TL=$6B TR=$7B BL=$6C BR=$7C
        .byte   $6B,$7D,$6C,$7E ; B1E6  TL=$6B TR=$7D BL=$6C BR=$7E
        .byte   $4F,$7B,$6F,$7C ; B1EA  TL=$4F TR=$7B BL=$6F BR=$7C
        .byte   $4B,$5B,$4C,$5C ; B1EE  TL=$4B TR=$5B BL=$4C BR=$5C
        .byte   $6B,$5F,$6C,$7F ; B1F2  TL=$6B TR=$5F BL=$6C BR=$7F
        .byte   $4F,$7D,$6F,$7E ; B1F6  TL=$4F TR=$7D BL=$6F BR=$7E
        .byte   $4F,$7B,$6F,$3F ; B1FA  TL=$4F TR=$7B BL=$6F BR=$3F
        .byte   $6B,$7B,$6C,$7C ; B1FE  TL=$6B TR=$7B BL=$6C BR=$7C
        .byte   $6B,$7D,$6C,$7E ; B202  TL=$6B TR=$7D BL=$6C BR=$7E
        .byte   $A4,$B4,$A5,$B5 ; B206  TL=$A4 TR=$B4 BL=$A5 BR=$B5
        .byte   $C4,$00,$00,$00 ; B20A  TL=$C4 TR=$00 BL=$00 BR=$00
        .byte   $E4,$F4,$00,$F5 ; B20E  TL=$E4 TR=$F4 BL=$00 BR=$F5
        .byte   $10,$5B,$36,$5A ; B212  TL=$10 TR=$5B BL=$36 BR=$5A
        .byte   $49,$5B,$4A,$5A ; B216  TL=$49 TR=$5B BL=$4A BR=$5A
        .byte   $2D,$7B,$2E,$3E ; B21A  TL=$2D TR=$7B BL=$2E BR=$3E
        .byte   $6B,$7B,$8F,$9F ; B21E  TL=$6B TR=$7B BL=$8F BR=$9F
        .byte   $6B,$5E,$4D,$4E ; B222  TL=$6B TR=$5E BL=$4D BR=$4E
        .byte   $4F,$7B,$85,$3F ; B226  TL=$4F TR=$7B BL=$85 BR=$3F
        .byte   $6B,$7B,$2F,$3F ; B22A  TL=$6B TR=$7B BL=$2F BR=$3F
        .byte   $6B,$5F,$2F,$95 ; B22E  TL=$6B TR=$5F BL=$2F BR=$95
        .byte   $6B,$7B,$2F,$3F ; B232  TL=$6B TR=$7B BL=$2F BR=$3F
        .byte   $8E,$9E,$2F,$3F ; B236  TL=$8E TR=$9E BL=$2F BR=$3F
        .byte   $2D,$7B,$2E,$3E ; B23A  TL=$2D TR=$7B BL=$2E BR=$3E
        .byte   $6B,$7B,$8F,$9F ; B23E  TL=$6B TR=$7B BL=$8F BR=$9F
        .byte   $6B,$5E,$4D,$4E ; B242  TL=$6B TR=$5E BL=$4D BR=$4E
        .byte   $A3,$D4,$C5,$D5 ; B246  TL=$A3 TR=$D4 BL=$C5 BR=$D5
        .byte   $12,$F2,$E5,$F3 ; B24A  TL=$12 TR=$F2 BL=$E5 BR=$F3
        .byte   $56,$55,$54,$5A ; B24E  TL=$56 TR=$55 BL=$54 BR=$5A
        .byte   $25,$35,$02,$02 ; B252  TL=$25 TR=$35 BL=$02 BR=$02
        .byte   $24,$34,$02,$02 ; B256  TL=$24 TR=$34 BL=$02 BR=$02
        .byte   $21,$31,$02,$02 ; B25A  TL=$21 TR=$31 BL=$02 BR=$02
        .byte   $D0,$11,$02,$02 ; B25E  TL=$D0 TR=$11 BL=$02 BR=$02
        .byte   $21,$50,$02,$51 ; B262  TL=$21 TR=$50 BL=$02 BR=$51
        .byte   $40,$31,$41,$02 ; B266  TL=$40 TR=$31 BL=$41 BR=$02
        .byte   $03,$13,$04,$4B ; B26A  TL=$03 TR=$13 BL=$04 BR=$4B
        .byte   $4B,$5B,$80,$90 ; B26E  TL=$4B TR=$5B BL=$80 BR=$90
        .byte   $4B,$5B,$A0,$14 ; B272  TL=$4B TR=$5B BL=$A0 BR=$14
        .byte   $81,$91,$82,$92 ; B276  TL=$81 TR=$91 BL=$82 BR=$92
        .byte   $A1,$59,$A2,$B2 ; B27A  TL=$A1 TR=$59 BL=$A2 BR=$B2
        .byte   $4B,$5B,$80,$90 ; B27E  TL=$4B TR=$5B BL=$80 BR=$90
        .byte   $4B,$5B,$A0,$14 ; B282  TL=$4B TR=$5B BL=$A0 BR=$14
        .byte   $81,$91,$82,$92 ; B286  TL=$81 TR=$91 BL=$82 BR=$92
        .byte   $A1,$59,$A2,$B2 ; B28A  TL=$A1 TR=$59 BL=$A2 BR=$B2
        .byte   $44,$46,$45,$54 ; B28E  TL=$44 TR=$46 BL=$45 BR=$54
        .byte   $86,$98,$68,$9D ; B292  TL=$86 TR=$98 BL=$68 BR=$9D
        .byte   $88,$98,$8D,$9D ; B296  TL=$88 TR=$98 BL=$8D BR=$9D
        .byte   $88,$96,$8D,$78 ; B29A  TL=$88 TR=$96 BL=$8D BR=$78
        .byte   $67,$9C,$68,$9D ; B29E  TL=$67 TR=$9C BL=$68 BR=$9D
        .byte   $8C,$9C,$8D,$9D ; B2A2  TL=$8C TR=$9C BL=$8D BR=$9D
        .byte   $8C,$77,$8D,$78 ; B2A6  TL=$8C TR=$77 BL=$8D BR=$78
        .byte   $67,$9C,$87,$99 ; B2AA  TL=$67 TR=$9C BL=$87 BR=$99
        .byte   $8C,$9C,$89,$99 ; B2AE  TL=$8C TR=$9C BL=$89 BR=$99
        .byte   $8C,$77,$89,$97 ; B2B2  TL=$8C TR=$77 BL=$89 BR=$97
        .byte   $8A,$9A,$8B,$9B ; B2B6  TL=$8A TR=$9A BL=$8B BR=$9B
        .byte   $83,$93,$61,$71 ; B2BA  TL=$83 TR=$93 BL=$61 BR=$71
        .byte   $83,$93,$62,$72 ; B2BE  TL=$83 TR=$93 BL=$62 BR=$72
        .byte   $69,$73,$6A,$71 ; B2C2  TL=$69 TR=$73 BL=$6A BR=$71
        .byte   $63,$73,$61,$71 ; B2C6  TL=$63 TR=$73 BL=$61 BR=$71
        .byte   $63,$79,$61,$7A ; B2CA  TL=$63 TR=$79 BL=$61 BR=$7A
        .byte   $64,$70,$6A,$71 ; B2CE  TL=$64 TR=$70 BL=$6A BR=$71
        .byte   $60,$70,$61,$71 ; B2D2  TL=$60 TR=$70 BL=$61 BR=$71
        .byte   $60,$74,$61,$7A ; B2D6  TL=$60 TR=$74 BL=$61 BR=$7A
        .byte   $64,$70,$65,$72 ; B2DA  TL=$64 TR=$70 BL=$65 BR=$72
        .byte   $60,$70,$62,$72 ; B2DE  TL=$60 TR=$70 BL=$62 BR=$72
        .byte   $60,$74,$62,$75 ; B2E2  TL=$60 TR=$74 BL=$62 BR=$75
        .byte   $47,$76,$06,$16 ; B2E6  TL=$47 TR=$76 BL=$06 BR=$16
        .byte   $66,$76,$06,$16 ; B2EA  TL=$66 TR=$76 BL=$06 BR=$16
        .byte   $66,$57,$06,$16 ; B2EE  TL=$66 TR=$57 BL=$06 BR=$16
        .byte   $22,$32,$23,$33 ; B2F2  TL=$22 TR=$32 BL=$23 BR=$33
        .byte   $22,$58,$23,$33 ; B2F6  TL=$22 TR=$58 BL=$23 BR=$33
        .byte   $48,$32,$23,$33 ; B2FA  TL=$48 TR=$32 BL=$23 BR=$33
        .byte   $05,$15,$06,$16 ; B2FE  TL=$05 TR=$15 BL=$06 BR=$16
        .byte   $29,$39,$2A,$3A ; B302  TL=$29 TR=$39 BL=$2A BR=$3A
        .byte   $09,$19,$0A,$1A ; B306  TL=$09 TR=$19 BL=$0A BR=$1A
        .byte   $17,$27,$18,$28 ; B30A  TL=$17 TR=$27 BL=$18 BR=$28
        .byte   $42,$52,$43,$53 ; B30E  TL=$42 TR=$52 BL=$43 BR=$53
        .byte   $0B,$1B,$0C,$1C ; B312  TL=$0B TR=$1B BL=$0C BR=$1C
        .byte   $0C,$1C,$0C,$1C ; B316  TL=$0C TR=$1C BL=$0C BR=$1C
        .byte   $0D,$1D,$0E,$1E ; B31A  TL=$0D TR=$1D BL=$0E BR=$1E
        .byte   $C6,$D6,$C7,$D7 ; B31E  TL=$C6 TR=$D6 BL=$C7 BR=$D7
        .byte   $E6,$F6,$C7,$D7 ; B322  TL=$E6 TR=$F6 BL=$C7 BR=$D7
        .byte   $E6,$F6,$E7,$F7 ; B326  TL=$E6 TR=$F6 BL=$E7 BR=$F7
        .byte   $C6,$D6,$E7,$F7 ; B32A  TL=$C6 TR=$D6 BL=$E7 BR=$F7
        .byte   $20,$20,$30,$30 ; B32E  TL=$20 TR=$20 BL=$30 BR=$30
        .byte   $20,$07,$30,$08 ; B332  TL=$20 TR=$07 BL=$30 BR=$08
        .byte   $37,$20,$38,$30 ; B336  TL=$37 TR=$20 BL=$38 BR=$30
        .byte   $C8,$D8,$C9,$D9 ; B33A  TL=$C8 TR=$D8 BL=$C9 BR=$D9
        .byte   $E8,$F8,$E9,$F9 ; B33E  TL=$E8 TR=$F8 BL=$E9 BR=$F9
        .byte   $C9,$DA,$C9,$DB ; B342  TL=$C9 TR=$DA BL=$C9 BR=$DB
        .byte   $EA,$FA,$EB,$FB ; B346  TL=$EA TR=$FA BL=$EB BR=$FB
        .byte   $AA,$BA,$AB,$BB ; B34A  TL=$AA TR=$BA BL=$AB BR=$BB
        .byte   $AD,$BA,$AE,$BB ; B34E  TL=$AD TR=$BA BL=$AE BR=$BB
        .byte   $AD,$BD,$AE,$BE ; B352  TL=$AD TR=$BD BL=$AE BR=$BE
        .byte   $AC,$BC,$AC,$BC ; B356  TL=$AC TR=$BC BL=$AC BR=$BC
        .byte   $AF,$BF,$AF,$BF ; B35A  TL=$AF TR=$BF BL=$AF BR=$BF
        .byte   $CC,$DC,$CD,$DD ; B35E  TL=$CC TR=$DC BL=$CD BR=$DD
        .byte   $CA,$B8,$A9,$B9 ; B362  TL=$CA TR=$B8 BL=$A9 BR=$B9
        .byte   $CE,$DE,$CF,$DF ; B366  TL=$CE TR=$DE BL=$CF BR=$DF
        .byte   $A6,$B6,$CB,$B7 ; B36A  TL=$A6 TR=$B6 BL=$CB BR=$B7
        .byte   $A8,$CA,$A9,$B9 ; B36E  TL=$A8 TR=$CA BL=$A9 BR=$B9
        .byte   $EC,$FC,$ED,$FD ; B372  TL=$EC TR=$FC BL=$ED BR=$FD
        .byte   $A6,$B6,$A7,$CB ; B376  TL=$A6 TR=$B6 BL=$A7 BR=$CB
        .byte   $EE,$FE,$EF,$FF ; B37A  TL=$EE TR=$FE BL=$EF BR=$FF
        .byte   $00,$00,$00,$00 ; B37E  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $B0,$C0,$B1,$C1 ; B382  TL=$B0 TR=$C0 BL=$B1 BR=$C1
        .byte   $B0,$C0,$B1,$C1 ; B386  TL=$B0 TR=$C0 BL=$B1 BR=$C1
        .byte   $B0,$C0,$B1,$C1 ; B38A  TL=$B0 TR=$C0 BL=$B1 BR=$C1
        .byte   $00,$00,$00,$00 ; B38E  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $B0,$C0,$B1,$C1 ; B392  TL=$B0 TR=$C0 BL=$B1 BR=$C1
        .byte   $B0,$C0,$B1,$C1 ; B396  TL=$B0 TR=$C0 BL=$B1 BR=$C1
        .byte   $B0,$C0,$B1,$C1 ; B39A  TL=$B0 TR=$C0 BL=$B1 BR=$C1
; 159 StructureDesc records — the level's Structure definitions, each a 2×2 quad of Tiles.
TankLvl5_StructureDescTable:
        .byte   $4F,$4F,$4F,$4F ; B39E  TL=$4F TR=$4F BL=$4F BR=$4F
        .byte   $4C,$4C,$4F,$4F ; B3A2  TL=$4C TR=$4C BL=$4F BR=$4F
        .byte   $4F,$4F,$52,$52 ; B3A6  TL=$4F TR=$4F BL=$52 BR=$52
        .byte   $48,$48,$48,$48 ; B3AA  TL=$48 TR=$48 BL=$48 BR=$48
        .byte   $40,$40,$48,$48 ; B3AE  TL=$40 TR=$40 BL=$48 BR=$48
        .byte   $48,$44,$48,$44 ; B3B2  TL=$48 TR=$44 BL=$48 BR=$44
        .byte   $4F,$53,$50,$63 ; B3B6  TL=$4F TR=$53 BL=$50 BR=$63
        .byte   $4F,$4F,$52,$53 ; B3BA  TL=$4F TR=$4F BL=$52 BR=$53
        .byte   $53,$62,$63,$62 ; B3BE  TL=$53 TR=$62 BL=$63 BR=$62
        .byte   $63,$63,$62,$62 ; B3C2  TL=$63 TR=$63 BL=$62 BR=$62
        .byte   $62,$62,$62,$62 ; B3C6  TL=$62 TR=$62 BL=$62 BR=$62
        .byte   $51,$4F,$63,$4E ; B3CA  TL=$51 TR=$4F BL=$63 BR=$4E
        .byte   $62,$51,$62,$63 ; B3CE  TL=$62 TR=$51 BL=$62 BR=$63
        .byte   $4F,$4F,$51,$52 ; B3D2  TL=$4F TR=$4F BL=$51 BR=$52
        .byte   $63,$63,$4B,$4C ; B3D6  TL=$63 TR=$63 BL=$4B BR=$4C
        .byte   $63,$63,$4C,$4D ; B3DA  TL=$63 TR=$63 BL=$4C BR=$4D
        .byte   $69,$6A,$6B,$6C ; B3DE  TL=$69 TR=$6A BL=$6B BR=$6C
        .byte   $4E,$50,$4E,$50 ; B3E2  TL=$4E TR=$50 BL=$4E BR=$50
        .byte   $4F,$4F,$4E,$4F ; B3E6  TL=$4F TR=$4F BL=$4E BR=$4F
        .byte   $4F,$4F,$4F,$50 ; B3EA  TL=$4F TR=$4F BL=$4F BR=$50
        .byte   $4E,$4F,$51,$52 ; B3EE  TL=$4E TR=$4F BL=$51 BR=$52
        .byte   $00,$72,$7E,$74 ; B3F2  TL=$00 TR=$72 BL=$7E BR=$74
        .byte   $4E,$4F,$51,$4F ; B3F6  TL=$4E TR=$4F BL=$51 BR=$4F
        .byte   $4F,$50,$4F,$53 ; B3FA  TL=$4F TR=$50 BL=$4F BR=$53
        .byte   $73,$4E,$75,$4E ; B3FE  TL=$73 TR=$4E BL=$75 BR=$4E
        .byte   $50,$76,$50,$78 ; B402  TL=$50 TR=$76 BL=$50 BR=$78
        .byte   $4F,$50,$52,$53 ; B406  TL=$4F TR=$50 BL=$52 BR=$53
        .byte   $77,$00,$79,$7E ; B40A  TL=$77 TR=$00 BL=$79 BR=$7E
        .byte   $62,$6D,$62,$70 ; B40E  TL=$62 TR=$6D BL=$62 BR=$70
        .byte   $6E,$6F,$7A,$71 ; B412  TL=$6E TR=$6F BL=$7A BR=$71
        .byte   $4E,$4F,$4E,$4F ; B416  TL=$4E TR=$4F BL=$4E BR=$4F
        .byte   $4F,$50,$4F,$50 ; B41A  TL=$4F TR=$50 BL=$4F BR=$50
        .byte   $51,$52,$7D,$7D ; B41E  TL=$51 TR=$52 BL=$7D BR=$7D
        .byte   $7D,$7D,$49,$49 ; B422  TL=$7D TR=$7D BL=$49 BR=$49
        .byte   $63,$63,$49,$49 ; B426  TL=$63 TR=$63 BL=$49 BR=$49
        .byte   $52,$53,$7D,$7D ; B42A  TL=$52 TR=$53 BL=$7D BR=$7D
        .byte   $62,$62,$65,$65 ; B42E  TL=$62 TR=$62 BL=$65 BR=$65
        .byte   $62,$62,$49,$49 ; B432  TL=$62 TR=$62 BL=$49 BR=$49
        .byte   $4E,$4F,$4F,$4F ; B436  TL=$4E TR=$4F BL=$4F BR=$4F
        .byte   $4F,$50,$4F,$4F ; B43A  TL=$4F TR=$50 BL=$4F BR=$4F
        .byte   $4A,$4A,$63,$63 ; B43E  TL=$4A TR=$4A BL=$63 BR=$63
        .byte   $4B,$4C,$51,$52 ; B442  TL=$4B TR=$4C BL=$51 BR=$52
        .byte   $4C,$4D,$52,$53 ; B446  TL=$4C TR=$4D BL=$52 BR=$53
        .byte   $4B,$4F,$4E,$4F ; B44A  TL=$4B TR=$4F BL=$4E BR=$4F
        .byte   $4F,$4D,$4F,$50 ; B44E  TL=$4F TR=$4D BL=$4F BR=$50
        .byte   $51,$4F,$16,$4E ; B452  TL=$51 TR=$4F BL=$16 BR=$4E
        .byte   $4F,$53,$50,$16 ; B456  TL=$4F TR=$53 BL=$50 BR=$16
        .byte   $31,$32,$35,$35 ; B45A  TL=$31 TR=$32 BL=$35 BR=$35
        .byte   $16,$16,$16,$16 ; B45E  TL=$16 TR=$16 BL=$16 BR=$16
        .byte   $4A,$4A,$16,$16 ; B462  TL=$4A TR=$4A BL=$16 BR=$16
        .byte   $20,$20,$5E,$5E ; B466  TL=$20 TR=$20 BL=$5E BR=$5E
        .byte   $51,$4F,$35,$51 ; B46A  TL=$51 TR=$4F BL=$35 BR=$51
        .byte   $4F,$53,$53,$35 ; B46E  TL=$4F TR=$53 BL=$53 BR=$35
        .byte   $16,$4E,$16,$4E ; B472  TL=$16 TR=$4E BL=$16 BR=$4E
        .byte   $16,$51,$16,$16 ; B476  TL=$16 TR=$51 BL=$16 BR=$16
        .byte   $50,$16,$50,$16 ; B47A  TL=$50 TR=$16 BL=$50 BR=$16
        .byte   $53,$16,$16,$16 ; B47E  TL=$53 TR=$16 BL=$16 BR=$16
        .byte   $4C,$4D,$4F,$50 ; B482  TL=$4C TR=$4D BL=$4F BR=$50
        .byte   $4B,$4C,$4E,$4F ; B486  TL=$4B TR=$4C BL=$4E BR=$4F
        .byte   $4C,$4C,$52,$52 ; B48A  TL=$4C TR=$4C BL=$52 BR=$52
        .byte   $81,$81,$81,$81 ; B48E  TL=$81 TR=$81 BL=$81 BR=$81
        .byte   $62,$51,$65,$65 ; B492  TL=$62 TR=$51 BL=$65 BR=$65
        .byte   $4E,$50,$51,$53 ; B496  TL=$4E TR=$50 BL=$51 BR=$53
        .byte   $16,$16,$20,$20 ; B49A  TL=$16 TR=$16 BL=$20 BR=$20
        .byte   $50,$16,$53,$16 ; B49E  TL=$50 TR=$16 BL=$53 BR=$16
        .byte   $16,$16,$81,$81 ; B4A2  TL=$16 TR=$16 BL=$81 BR=$81
        .byte   $2F,$30,$5E,$5E ; B4A6  TL=$2F TR=$30 BL=$5E BR=$5E
        .byte   $4F,$52,$53,$54 ; B4AA  TL=$4F TR=$52 BL=$53 BR=$54
        .byte   $52,$52,$55,$56 ; B4AE  TL=$52 TR=$52 BL=$55 BR=$56
        .byte   $48,$48,$46,$46 ; B4B2  TL=$48 TR=$48 BL=$46 BR=$46
        .byte   $58,$5A,$66,$67 ; B4B6  TL=$58 TR=$5A BL=$66 BR=$67
        .byte   $5A,$5A,$5D,$68 ; B4BA  TL=$5A TR=$5A BL=$5D BR=$68
        .byte   $32,$33,$35,$35 ; B4BE  TL=$32 TR=$33 BL=$35 BR=$35
        .byte   $5C,$34,$5B,$35 ; B4C2  TL=$5C TR=$34 BL=$5B BR=$35
        .byte   $59,$57,$66,$66 ; B4C6  TL=$59 TR=$57 BL=$66 BR=$66
        .byte   $57,$57,$66,$66 ; B4CA  TL=$57 TR=$57 BL=$66 BR=$66
        .byte   $32,$31,$35,$35 ; B4CE  TL=$32 TR=$31 BL=$35 BR=$35
        .byte   $16,$19,$16,$51 ; B4D2  TL=$16 TR=$19 BL=$16 BR=$51
        .byte   $51,$4F,$16,$19 ; B4D6  TL=$51 TR=$4F BL=$16 BR=$19
        .byte   $5F,$16,$60,$20 ; B4DA  TL=$5F TR=$16 BL=$60 BR=$20
        .byte   $10,$16,$11,$1F ; B4DE  TL=$10 TR=$16 BL=$11 BR=$1F
        .byte   $16,$5F,$16,$60 ; B4E2  TL=$16 TR=$5F BL=$16 BR=$60
        .byte   $16,$60,$20,$60 ; B4E6  TL=$16 TR=$60 BL=$20 BR=$60
        .byte   $16,$10,$20,$11 ; B4EA  TL=$16 TR=$10 BL=$20 BR=$11
        .byte   $3F,$40,$45,$46 ; B4EE  TL=$3F TR=$40 BL=$45 BR=$46
        .byte   $40,$40,$46,$46 ; B4F2  TL=$40 TR=$40 BL=$46 BR=$46
        .byte   $48,$48,$46,$48 ; B4F6  TL=$48 TR=$48 BL=$46 BR=$48
        .byte   $73,$42,$75,$42 ; B4FA  TL=$73 TR=$42 BL=$75 BR=$42
        .byte   $60,$30,$61,$5E ; B4FE  TL=$60 TR=$30 BL=$61 BR=$5E
        .byte   $2F,$60,$5E,$61 ; B502  TL=$2F TR=$60 BL=$5E BR=$61
        .byte   $05,$06,$15,$23 ; B506  TL=$05 TR=$06 BL=$15 BR=$23
        .byte   $08,$23,$16,$16 ; B50A  TL=$08 TR=$23 BL=$16 BR=$16
        .byte   $23,$16,$16,$16 ; B50E  TL=$23 TR=$16 BL=$16 BR=$16
        .byte   $36,$37,$38,$39 ; B512  TL=$36 TR=$37 BL=$38 BR=$39
        .byte   $21,$06,$16,$21 ; B516  TL=$21 TR=$06 BL=$16 BR=$21
        .byte   $06,$06,$22,$13 ; B51A  TL=$06 TR=$06 BL=$22 BR=$13
        .byte   $16,$21,$16,$16 ; B51E  TL=$16 TR=$21 BL=$16 BR=$16
        .byte   $06,$06,$13,$13 ; B522  TL=$06 TR=$06 BL=$13 BR=$13
        .byte   $06,$07,$13,$17 ; B526  TL=$06 TR=$07 BL=$13 BR=$17
        .byte   $22,$13,$16,$21 ; B52A  TL=$22 TR=$13 BL=$16 BR=$21
        .byte   $13,$17,$25,$25 ; B52E  TL=$13 TR=$17 BL=$25 BR=$25
        .byte   $16,$60,$16,$60 ; B532  TL=$16 TR=$60 BL=$16 BR=$60
        .byte   $16,$16,$16,$5F ; B536  TL=$16 TR=$16 BL=$16 BR=$5F
        .byte   $10,$60,$11,$60 ; B53A  TL=$10 TR=$60 BL=$11 BR=$60
        .byte   $4F,$4F,$4F,$53 ; B53E  TL=$4F TR=$4F BL=$4F BR=$53
        .byte   $4F,$4D,$4F,$4F ; B542  TL=$4F TR=$4D BL=$4F BR=$4F
        .byte   $0B,$2A,$2B,$16 ; B546  TL=$0B TR=$2A BL=$2B BR=$16
        .byte   $2A,$0B,$16,$29 ; B54A  TL=$2A TR=$0B BL=$16 BR=$29
        .byte   $16,$16,$16,$0A ; B54E  TL=$16 TR=$16 BL=$16 BR=$0A
        .byte   $16,$3E,$28,$28 ; B552  TL=$16 TR=$3E BL=$28 BR=$28
        .byte   $16,$16,$28,$0C ; B556  TL=$16 TR=$16 BL=$28 BR=$0C
        .byte   $40,$41,$46,$47 ; B55A  TL=$40 TR=$41 BL=$46 BR=$47
        .byte   $48,$48,$48,$46 ; B55E  TL=$48 TR=$48 BL=$48 BR=$46
        .byte   $44,$76,$44,$78 ; B562  TL=$44 TR=$76 BL=$44 BR=$78
        .byte   $3A,$3B,$3C,$3D ; B566  TL=$3A TR=$3B BL=$3C BR=$3D
        .byte   $0B,$0B,$27,$27 ; B56A  TL=$0B TR=$0B BL=$27 BR=$27
        .byte   $16,$16,$0A,$0B ; B56E  TL=$16 TR=$16 BL=$0A BR=$0B
        .byte   $3E,$16,$0B,$0C ; B572  TL=$3E TR=$16 BL=$0B BR=$0C
        .byte   $1A,$1A,$27,$27 ; B576  TL=$1A TR=$1A BL=$27 BR=$27
        .byte   $16,$0A,$0A,$1A ; B57A  TL=$16 TR=$0A BL=$0A BR=$1A
        .byte   $0C,$2E,$1A,$0C ; B57E  TL=$0C TR=$2E BL=$1A BR=$0C
        .byte   $1A,$1A,$27,$2B ; B582  TL=$1A TR=$1A BL=$27 BR=$2B
        .byte   $2A,$1A,$16,$29 ; B586  TL=$2A TR=$1A BL=$16 BR=$29
        .byte   $42,$48,$42,$48 ; B58A  TL=$42 TR=$48 BL=$42 BR=$48
        .byte   $52,$52,$16,$16 ; B58E  TL=$52 TR=$52 BL=$16 BR=$16
        .byte   $52,$53,$16,$16 ; B592  TL=$52 TR=$53 BL=$16 BR=$16
        .byte   $05,$06,$15,$13 ; B596  TL=$05 TR=$06 BL=$15 BR=$13
        .byte   $06,$07,$22,$13 ; B59A  TL=$06 TR=$07 BL=$22 BR=$13
        .byte   $15,$17,$24,$26 ; B59E  TL=$15 TR=$17 BL=$24 BR=$26
        .byte   $42,$48,$45,$46 ; B5A2  TL=$42 TR=$48 BL=$45 BR=$46
        .byte   $48,$48,$43,$48 ; B5A6  TL=$48 TR=$48 BL=$43 BR=$48
        .byte   $06,$07,$21,$17 ; B5AA  TL=$06 TR=$07 BL=$21 BR=$17
        .byte   $48,$48,$48,$43 ; B5AE  TL=$48 TR=$48 BL=$48 BR=$43
        .byte   $48,$44,$46,$47 ; B5B2  TL=$48 TR=$44 BL=$46 BR=$47
        .byte   $16,$4B,$16,$4E ; B5B6  TL=$16 TR=$4B BL=$16 BR=$4E
        .byte   $16,$16,$4B,$4C ; B5BA  TL=$16 TR=$16 BL=$4B BR=$4C
        .byte   $16,$4E,$4C,$4F ; B5BE  TL=$16 TR=$4E BL=$4C BR=$4F
        .byte   $16,$18,$16,$18 ; B5C2  TL=$16 TR=$18 BL=$16 BR=$18
        .byte   $42,$48,$45,$48 ; B5C6  TL=$42 TR=$48 BL=$45 BR=$48
        .byte   $48,$44,$48,$47 ; B5CA  TL=$48 TR=$44 BL=$48 BR=$47
        .byte   $07,$42,$18,$42 ; B5CE  TL=$07 TR=$42 BL=$18 BR=$42
        .byte   $44,$05,$44,$18 ; B5D2  TL=$44 TR=$05 BL=$44 BR=$18
        .byte   $18,$16,$23,$16 ; B5D6  TL=$18 TR=$16 BL=$23 BR=$16
        .byte   $02,$07,$15,$17 ; B5DA  TL=$02 TR=$07 BL=$15 BR=$17
        .byte   $40,$48,$48,$48 ; B5DE  TL=$40 TR=$48 BL=$48 BR=$48
        .byte   $48,$40,$48,$48 ; B5E2  TL=$48 TR=$40 BL=$48 BR=$48
        .byte   $40,$41,$48,$44 ; B5E6  TL=$40 TR=$41 BL=$48 BR=$44
        .byte   $48,$44,$48,$43 ; B5EA  TL=$48 TR=$44 BL=$48 BR=$43
        .byte   $18,$42,$18,$45 ; B5EE  TL=$18 TR=$42 BL=$18 BR=$45
        .byte   $44,$18,$47,$18 ; B5F2  TL=$44 TR=$18 BL=$47 BR=$18
        .byte   $06,$23,$23,$16 ; B5F6  TL=$06 TR=$23 BL=$23 BR=$16
        .byte   $3F,$40,$42,$48 ; B5FA  TL=$3F TR=$40 BL=$42 BR=$48
        .byte   $48,$43,$48,$48 ; B5FE  TL=$48 TR=$43 BL=$48 BR=$48
        .byte   $15,$14,$15,$14 ; B602  TL=$15 TR=$14 BL=$15 BR=$14
        .byte   $15,$17,$24,$25 ; B606  TL=$15 TR=$17 BL=$24 BR=$25
        .byte   $43,$48,$48,$48 ; B60A  TL=$43 TR=$48 BL=$48 BR=$48
        .byte   $00,$00,$00,$00 ; B60E  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $18,$16,$18,$16 ; B612  TL=$18 TR=$16 BL=$18 BR=$16
        .byte   $22,$23,$16,$16 ; B616  TL=$22 TR=$23 BL=$16 BR=$16
; 184 ChunkDesc records — the level's Chunk definitions, each a 2×2 quad of Structures. These are
; the indices TankLvl5_MapData's grid holds.
TankLvl5_ChunkDescTable:
        .byte   $00,$00,$00,$00 ; B61A  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $01,$01,$02,$02 ; B61E  TL=$01 TR=$01 BL=$02 BR=$02
        .byte   $00,$03,$02,$02 ; B622  TL=$00 TR=$03 BL=$02 BR=$02
        .byte   $03,$03,$02,$02 ; B626  TL=$03 TR=$03 BL=$02 BR=$02
        .byte   $04,$04,$02,$02 ; B62A  TL=$04 TR=$04 BL=$02 BR=$02
        .byte   $04,$04,$00,$00 ; B62E  TL=$04 TR=$04 BL=$00 BR=$00
        .byte   $03,$03,$00,$00 ; B632  TL=$03 TR=$03 BL=$00 BR=$00
        .byte   $03,$05,$00,$00 ; B636  TL=$03 TR=$05 BL=$00 BR=$00
        .byte   $00,$06,$07,$08 ; B63A  TL=$00 TR=$06 BL=$07 BR=$08
        .byte   $09,$09,$0A,$0A ; B63E  TL=$09 TR=$09 BL=$0A BR=$0A
        .byte   $0B,$00,$0C,$0D ; B642  TL=$0B TR=$00 BL=$0C BR=$0D
        .byte   $0E,$0F,$10,$11 ; B646  TL=$0E TR=$0F BL=$10 BR=$11
        .byte   $0B,$00,$0C,$12 ; B64A  TL=$0B TR=$00 BL=$0C BR=$12
        .byte   $00,$06,$13,$08 ; B64E  TL=$00 TR=$06 BL=$13 BR=$08
        .byte   $14,$02,$0A,$15 ; B652  TL=$14 TR=$02 BL=$0A BR=$15
        .byte   $16,$17,$18,$19 ; B656  TL=$16 TR=$17 BL=$18 BR=$19
        .byte   $02,$1A,$1B,$0A ; B65A  TL=$02 TR=$1A BL=$1B BR=$0A
        .byte   $09,$09,$1C,$1D ; B65E  TL=$09 TR=$09 BL=$1C BR=$1D
        .byte   $1E,$1F,$1E,$1F ; B662  TL=$1E TR=$1F BL=$1E BR=$1F
        .byte   $20,$0D,$21,$22 ; B666  TL=$20 TR=$0D BL=$21 BR=$22
        .byte   $07,$23,$22,$21 ; B66A  TL=$07 TR=$23 BL=$22 BR=$21
        .byte   $0A,$0A,$24,$24 ; B66E  TL=$0A TR=$0A BL=$24 BR=$24
        .byte   $0A,$25,$25,$26 ; B672  TL=$0A TR=$25 BL=$25 BR=$26
        .byte   $25,$25,$00,$27 ; B676  TL=$25 TR=$25 BL=$00 BR=$27
        .byte   $0A,$28,$24,$24 ; B67A  TL=$0A TR=$28 BL=$24 BR=$24
        .byte   $28,$28,$24,$24 ; B67E  TL=$28 TR=$28 BL=$24 BR=$24
        .byte   $0A,$1E,$24,$14 ; B682  TL=$0A TR=$1E BL=$24 BR=$14
        .byte   $1F,$0A,$1A,$24 ; B686  TL=$1F TR=$0A BL=$1A BR=$24
        .byte   $29,$2A,$24,$24 ; B68A  TL=$29 TR=$2A BL=$24 BR=$24
        .byte   $2B,$2C,$1E,$1F ; B68E  TL=$2B TR=$2C BL=$1E BR=$1F
        .byte   $1E,$00,$2D,$00 ; B692  TL=$1E TR=$00 BL=$2D BR=$00
        .byte   $00,$1F,$00,$2E ; B696  TL=$00 TR=$1F BL=$00 BR=$2E
        .byte   $2F,$2F,$30,$30 ; B69A  TL=$2F TR=$2F BL=$30 BR=$30
        .byte   $31,$31,$30,$30 ; B69E  TL=$31 TR=$31 BL=$30 BR=$30
        .byte   $2F,$2F,$32,$32 ; B6A2  TL=$2F TR=$2F BL=$32 BR=$32
        .byte   $31,$31,$32,$32 ; B6A6  TL=$31 TR=$31 BL=$32 BR=$32
        .byte   $33,$34,$32,$32 ; B6AA  TL=$33 TR=$34 BL=$32 BR=$32
        .byte   $35,$00,$36,$12 ; B6AE  TL=$35 TR=$00 BL=$36 BR=$12
        .byte   $00,$37,$13,$38 ; B6B2  TL=$00 TR=$37 BL=$13 BR=$38
        .byte   $30,$30,$30,$30 ; B6B6  TL=$30 TR=$30 BL=$30 BR=$30
        .byte   $30,$1E,$30,$1E ; B6BA  TL=$30 TR=$1E BL=$30 BR=$1E
        .byte   $01,$01,$00,$00 ; B6BE  TL=$01 TR=$01 BL=$00 BR=$00
        .byte   $39,$30,$1F,$30 ; B6C2  TL=$39 TR=$30 BL=$1F BR=$30
        .byte   $30,$3A,$30,$1E ; B6C6  TL=$30 TR=$3A BL=$30 BR=$1E
        .byte   $1F,$30,$17,$30 ; B6CA  TL=$1F TR=$30 BL=$17 BR=$30
        .byte   $30,$14,$30,$30 ; B6CE  TL=$30 TR=$14 BL=$30 BR=$30
        .byte   $02,$02,$30,$30 ; B6D2  TL=$02 TR=$02 BL=$30 BR=$30
        .byte   $3A,$39,$14,$00 ; B6D6  TL=$3A TR=$39 BL=$14 BR=$00
        .byte   $30,$3A,$30,$11 ; B6DA  TL=$30 TR=$3A BL=$30 BR=$11
        .byte   $3B,$3B,$30,$3C ; B6DE  TL=$3B TR=$3B BL=$30 BR=$3C
        .byte   $3B,$3B,$30,$15 ; B6E2  TL=$3B TR=$3B BL=$30 BR=$15
        .byte   $3B,$3B,$1B,$30 ; B6E6  TL=$3B TR=$3B BL=$1B BR=$30
        .byte   $3B,$3B,$3C,$30 ; B6EA  TL=$3B TR=$3B BL=$3C BR=$30
        .byte   $39,$30,$11,$30 ; B6EE  TL=$39 TR=$30 BL=$11 BR=$30
        .byte   $3B,$3B,$30,$30 ; B6F2  TL=$3B TR=$3B BL=$30 BR=$30
        .byte   $09,$09,$24,$24 ; B6F6  TL=$09 TR=$09 BL=$24 BR=$24
        .byte   $0B,$00,$3D,$0D ; B6FA  TL=$0B TR=$00 BL=$3D BR=$0D
        .byte   $1F,$30,$1F,$30 ; B6FE  TL=$1F TR=$30 BL=$1F BR=$30
        .byte   $30,$3E,$3F,$3F ; B702  TL=$30 TR=$3E BL=$3F BR=$3F
        .byte   $40,$30,$3F,$3F ; B706  TL=$40 TR=$30 BL=$3F BR=$3F
        .byte   $39,$30,$1E,$39 ; B70A  TL=$39 TR=$30 BL=$1E BR=$39
        .byte   $2B,$2C,$00,$00 ; B70E  TL=$2B TR=$2C BL=$00 BR=$00
        .byte   $30,$30,$3F,$3F ; B712  TL=$30 TR=$30 BL=$3F BR=$3F
        .byte   $30,$3B,$3F,$3F ; B716  TL=$30 TR=$3B BL=$3F BR=$3F
        .byte   $3B,$3B,$3F,$3F ; B71A  TL=$3B TR=$3B BL=$3F BR=$3F
        .byte   $3B,$30,$3F,$3F ; B71E  TL=$3B TR=$30 BL=$3F BR=$3F
        .byte   $3E,$30,$3F,$3F ; B722  TL=$3E TR=$30 BL=$3F BR=$3F
        .byte   $30,$30,$41,$41 ; B726  TL=$30 TR=$30 BL=$41 BR=$41
        .byte   $42,$42,$01,$01 ; B72A  TL=$42 TR=$42 BL=$01 BR=$01
        .byte   $42,$39,$01,$1F ; B72E  TL=$42 TR=$39 BL=$01 BR=$1F
        .byte   $3A,$42,$1E,$01 ; B732  TL=$3A TR=$42 BL=$1E BR=$01
        .byte   $00,$00,$43,$44 ; B736  TL=$00 TR=$00 BL=$43 BR=$44
        .byte   $00,$00,$0D,$02 ; B73A  TL=$00 TR=$00 BL=$0D BR=$02
        .byte   $00,$00,$00,$45 ; B73E  TL=$00 TR=$00 BL=$00 BR=$45
        .byte   $00,$00,$45,$45 ; B742  TL=$00 TR=$00 BL=$45 BR=$45
        .byte   $00,$00,$45,$00 ; B746  TL=$00 TR=$00 BL=$45 BR=$00
        .byte   $46,$47,$48,$49 ; B74A  TL=$46 TR=$47 BL=$48 BR=$49
        .byte   $4A,$4B,$4C,$4C ; B74E  TL=$4A TR=$4B BL=$4C BR=$4C
        .byte   $1E,$04,$1E,$45 ; B752  TL=$1E TR=$04 BL=$1E BR=$45
        .byte   $04,$04,$45,$45 ; B756  TL=$04 TR=$04 BL=$45 BR=$45
        .byte   $04,$1F,$45,$1F ; B75A  TL=$04 TR=$1F BL=$45 BR=$1F
        .byte   $16,$2E,$4D,$40 ; B75E  TL=$16 TR=$2E BL=$4D BR=$40
        .byte   $4E,$17,$4D,$40 ; B762  TL=$4E TR=$17 BL=$4D BR=$40
        .byte   $30,$30,$4F,$50 ; B766  TL=$30 TR=$30 BL=$4F BR=$50
        .byte   $51,$30,$52,$53 ; B76A  TL=$51 TR=$30 BL=$52 BR=$53
        .byte   $54,$55,$30,$15 ; B76E  TL=$54 TR=$55 BL=$30 BR=$15
        .byte   $56,$17,$57,$19 ; B772  TL=$56 TR=$17 BL=$57 BR=$19
        .byte   $30,$10,$31,$31 ; B776  TL=$30 TR=$10 BL=$31 BR=$31
        .byte   $58,$42,$01,$01 ; B77A  TL=$58 TR=$42 BL=$01 BR=$01
        .byte   $59,$42,$01,$01 ; B77E  TL=$59 TR=$42 BL=$01 BR=$01
        .byte   $3A,$39,$1E,$1F ; B782  TL=$3A TR=$39 BL=$1E BR=$1F
        .byte   $5A,$5B,$5C,$30 ; B786  TL=$5A TR=$5B BL=$5C BR=$30
        .byte   $04,$2C,$45,$1F ; B78A  TL=$04 TR=$2C BL=$45 BR=$1F
        .byte   $30,$30,$30,$5D ; B78E  TL=$30 TR=$30 BL=$30 BR=$5D
        .byte   $5E,$5F,$30,$60 ; B792  TL=$5E TR=$5F BL=$30 BR=$60
        .byte   $1E,$1F,$1E,$45 ; B796  TL=$1E TR=$1F BL=$1E BR=$45
        .byte   $1E,$1F,$45,$1F ; B79A  TL=$1E TR=$1F BL=$45 BR=$1F
        .byte   $30,$30,$51,$30 ; B79E  TL=$30 TR=$30 BL=$51 BR=$30
        .byte   $30,$30,$3A,$39 ; B7A2  TL=$30 TR=$30 BL=$3A BR=$39
        .byte   $61,$62,$63,$64 ; B7A6  TL=$61 TR=$62 BL=$63 BR=$64
        .byte   $04,$00,$45,$00 ; B7AA  TL=$04 TR=$00 BL=$45 BR=$00
        .byte   $65,$66,$67,$52 ; B7AE  TL=$65 TR=$66 BL=$67 BR=$52
        .byte   $56,$68,$57,$19 ; B7B2  TL=$56 TR=$68 BL=$57 BR=$19
        .byte   $51,$66,$67,$52 ; B7B6  TL=$51 TR=$66 BL=$67 BR=$52
        .byte   $59,$59,$01,$01 ; B7BA  TL=$59 TR=$59 BL=$01 BR=$01
        .byte   $1E,$04,$00,$45 ; B7BE  TL=$1E TR=$04 BL=$00 BR=$45
        .byte   $04,$69,$45,$00 ; B7C2  TL=$04 TR=$69 BL=$45 BR=$00
        .byte   $00,$04,$45,$45 ; B7C6  TL=$00 TR=$04 BL=$45 BR=$45
        .byte   $04,$00,$45,$45 ; B7CA  TL=$04 TR=$00 BL=$45 BR=$45
        .byte   $6A,$6B,$30,$30 ; B7CE  TL=$6A TR=$6B BL=$30 BR=$30
        .byte   $6C,$6D,$54,$55 ; B7D2  TL=$6C TR=$6D BL=$54 BR=$55
        .byte   $6E,$5D,$55,$6F ; B7D6  TL=$6E TR=$5D BL=$55 BR=$6F
        .byte   $56,$70,$57,$71 ; B7DA  TL=$56 TR=$70 BL=$57 BR=$71
        .byte   $55,$6F,$1B,$30 ; B7DE  TL=$55 TR=$6F BL=$1B BR=$30
        .byte   $30,$72,$73,$73 ; B7E2  TL=$30 TR=$72 BL=$73 BR=$73
        .byte   $72,$72,$73,$73 ; B7E6  TL=$72 TR=$72 BL=$73 BR=$73
        .byte   $74,$75,$76,$76 ; B7EA  TL=$74 TR=$75 BL=$76 BR=$76
        .byte   $77,$78,$79,$7A ; B7EE  TL=$77 TR=$78 BL=$79 BR=$7A
        .byte   $04,$04,$03,$03 ; B7F2  TL=$04 TR=$04 BL=$03 BR=$03
        .byte   $1E,$04,$1E,$03 ; B7F6  TL=$1E TR=$04 BL=$1E BR=$03
        .byte   $7B,$05,$7B,$05 ; B7FA  TL=$7B TR=$05 BL=$7B BR=$05
        .byte   $00,$00,$13,$7C ; B7FE  TL=$00 TR=$00 BL=$13 BR=$7C
        .byte   $01,$01,$7C,$7C ; B802  TL=$01 TR=$01 BL=$7C BR=$7C
        .byte   $01,$39,$7C,$7D ; B806  TL=$01 TR=$39 BL=$7C BR=$7D
        .byte   $1E,$05,$1E,$05 ; B80A  TL=$1E TR=$05 BL=$1E BR=$05
        .byte   $7E,$7F,$80,$60 ; B80E  TL=$7E TR=$7F BL=$80 BR=$60
        .byte   $81,$82,$83,$81 ; B812  TL=$81 TR=$82 BL=$83 BR=$81
        .byte   $03,$03,$03,$03 ; B816  TL=$03 TR=$03 BL=$03 BR=$03
        .byte   $84,$85,$85,$5A ; B81A  TL=$84 TR=$85 BL=$85 BR=$5A
        .byte   $1A,$86,$87,$88 ; B81E  TL=$1A TR=$86 BL=$87 BR=$88
        .byte   $30,$30,$10,$30 ; B822  TL=$30 TR=$30 BL=$10 BR=$30
        .byte   $60,$83,$30,$89 ; B826  TL=$60 TR=$83 BL=$30 BR=$89
        .byte   $8A,$8B,$8C,$8D ; B82A  TL=$8A TR=$8B BL=$8C BR=$8D
        .byte   $5A,$5C,$8E,$30 ; B82E  TL=$5A TR=$5C BL=$8E BR=$30
        .byte   $54,$55,$30,$8F ; B832  TL=$54 TR=$55 BL=$30 BR=$8F
        .byte   $90,$91,$7B,$03 ; B836  TL=$90 TR=$91 BL=$7B BR=$03
        .byte   $04,$92,$03,$93 ; B83A  TL=$04 TR=$92 BL=$03 BR=$93
        .byte   $90,$91,$7B,$05 ; B83E  TL=$90 TR=$91 BL=$7B BR=$05
        .byte   $72,$30,$73,$73 ; B842  TL=$72 TR=$30 BL=$73 BR=$73
        .byte   $00,$1F,$00,$00 ; B846  TL=$00 TR=$1F BL=$00 BR=$00
        .byte   $42,$3A,$01,$00 ; B84A  TL=$42 TR=$3A BL=$01 BR=$00
        .byte   $00,$03,$00,$03 ; B84E  TL=$00 TR=$03 BL=$00 BR=$03
        .byte   $94,$95,$5E,$96 ; B852  TL=$94 TR=$95 BL=$5E BR=$96
        .byte   $30,$5D,$30,$97 ; B856  TL=$30 TR=$5D BL=$30 BR=$97
        .byte   $92,$5D,$98,$92 ; B85A  TL=$92 TR=$5D BL=$98 BR=$92
        .byte   $30,$99,$30,$9A ; B85E  TL=$30 TR=$99 BL=$30 BR=$9A
        .byte   $7B,$03,$7B,$03 ; B862  TL=$7B TR=$03 BL=$7B BR=$03
        .byte   $03,$05,$03,$05 ; B866  TL=$03 TR=$05 BL=$03 BR=$05
        .byte   $00,$00,$03,$03 ; B86A  TL=$00 TR=$00 BL=$03 BR=$03
        .byte   $00,$00,$82,$03 ; B86E  TL=$00 TR=$00 BL=$82 BR=$03
        .byte   $00,$03,$03,$03 ; B872  TL=$00 TR=$03 BL=$03 BR=$03
        .byte   $04,$04,$03,$84 ; B876  TL=$04 TR=$04 BL=$03 BR=$84
        .byte   $97,$04,$9B,$84 ; B87A  TL=$97 TR=$04 BL=$9B BR=$84
        .byte   $9C,$9C,$9C,$9C ; B87E  TL=$9C TR=$9C BL=$9C BR=$9C
        .byte   $03,$03,$82,$03 ; B882  TL=$03 TR=$03 BL=$82 BR=$03
        .byte   $03,$03,$03,$84 ; B886  TL=$03 TR=$03 BL=$03 BR=$84
        .byte   $30,$83,$30,$60 ; B88A  TL=$30 TR=$83 BL=$30 BR=$60
        .byte   $54,$55,$10,$30 ; B88E  TL=$54 TR=$55 BL=$10 BR=$30
        .byte   $55,$6F,$30,$54 ; B892  TL=$55 TR=$6F BL=$30 BR=$54
        .byte   $30,$30,$55,$6F ; B896  TL=$30 TR=$30 BL=$55 BR=$6F
        .byte   $5A,$5C,$9D,$30 ; B89A  TL=$5A TR=$5C BL=$9D BR=$30
        .byte   $60,$8F,$30,$99 ; B89E  TL=$60 TR=$8F BL=$30 BR=$99
        .byte   $5D,$30,$55,$55 ; B8A2  TL=$5D TR=$30 BL=$55 BR=$55
        .byte   $30,$30,$5D,$5D ; B8A6  TL=$30 TR=$30 BL=$5D BR=$5D
        .byte   $97,$9B,$9B,$03 ; B8AA  TL=$97 TR=$9B BL=$9B BR=$03
        .byte   $55,$6F,$8F,$30 ; B8AE  TL=$55 TR=$6F BL=$8F BR=$30
        .byte   $30,$89,$30,$60 ; B8B2  TL=$30 TR=$89 BL=$30 BR=$60
        .byte   $03,$03,$82,$84 ; B8B6  TL=$03 TR=$03 BL=$82 BR=$84
        .byte   $9D,$30,$5C,$30 ; B8BA  TL=$9D TR=$30 BL=$5C BR=$30
        .byte   $03,$03,$45,$45 ; B8BE  TL=$03 TR=$03 BL=$45 BR=$45
        .byte   $04,$03,$45,$45 ; B8C2  TL=$04 TR=$03 BL=$45 BR=$45
        .byte   $99,$30,$99,$30 ; B8C6  TL=$99 TR=$30 BL=$99 BR=$30
        .byte   $04,$92,$45,$85 ; B8CA  TL=$04 TR=$92 BL=$45 BR=$85
        .byte   $30,$9A,$30,$97 ; B8CE  TL=$30 TR=$9A BL=$30 BR=$97
        .byte   $61,$5F,$9E,$60 ; B8D2  TL=$61 TR=$5F BL=$9E BR=$60
        .byte   $99,$30,$9A,$5D ; B8D6  TL=$99 TR=$30 BL=$9A BR=$5D
        .byte   $30,$5D,$5D,$97 ; B8DA  TL=$30 TR=$5D BL=$5D BR=$97
        .byte   $97,$9B,$9B,$84 ; B8DE  TL=$97 TR=$9B BL=$9B BR=$84
        .byte   $30,$7B,$97,$9B ; B8E2  TL=$30 TR=$7B BL=$97 BR=$9B
        .byte   $30,$30,$55,$55 ; B8E6  TL=$30 TR=$30 BL=$55 BR=$55
        .byte   $30,$5D,$55,$55 ; B8EA  TL=$30 TR=$5D BL=$55 BR=$55
        .byte   $7B,$03,$9B,$03 ; B8EE  TL=$7B TR=$03 BL=$9B BR=$03
        .byte   $7B,$91,$7B,$03 ; B8F2  TL=$7B TR=$91 BL=$7B BR=$03
        .byte   $03,$98,$03,$03 ; B8F6  TL=$03 TR=$98 BL=$03 BR=$03
; 32×32 chunk-index grid = 1024 bytes
TankLvl5_MapData:
        .byte   $00,$00,$00,$01,$02,$03,$04,$05 ; B8FA
        .byte   $05,$04,$04,$05,$05,$05,$04,$05 ; B902
        .byte   $06,$03,$03,$06,$06,$06,$03,$06 ; B90A
        .byte   $06,$06,$03,$03,$07,$00,$01,$00 ; B912
        .byte   $00,$00,$08,$09,$09,$09,$09,$0A ; B91A
        .byte   $08,$09,$0B,$0A,$00,$08,$09,$0C ; B922
        .byte   $0D,$09,$09,$0E,$0F,$10,$09,$0A ; B92A
        .byte   $00,$08,$09,$11,$12,$08,$09,$0A ; B932
        .byte   $13,$14,$15,$15,$16,$17,$17,$15 ; B93A
        .byte   $15,$18,$19,$15,$12,$11,$15,$1A ; B942
        .byte   $1B,$15,$15,$1C,$1D,$1C,$15,$15 ; B94A
        .byte   $12,$15,$15,$1C,$12,$15,$15,$15 ; B952
        .byte   $1E,$1F,$20,$21,$1E,$00,$1F,$20 ; B95A
        .byte   $20,$21,$20,$20,$12,$21,$20,$20 ; B962
        .byte   $20,$20,$21,$20,$12,$22,$23,$22 ; B96A
        .byte   $24,$22,$23,$22,$12,$20,$20,$21 ; B972
        .byte   $25,$26,$27,$27,$28,$00,$26,$27 ; B97A
        .byte   $27,$27,$27,$27,$12,$27,$27,$27 ; B982
        .byte   $27,$27,$27,$27,$12,$29,$01,$29 ; B98A
        .byte   $29,$29,$01,$29,$12,$2A,$2B,$2A ; B992
        .byte   $28,$2C,$2B,$2A,$2D,$2E,$2F,$27 ; B99A
        .byte   $27,$30,$31,$32,$0F,$33,$34,$35 ; B9A2
        .byte   $27,$30,$36,$32,$0F,$10,$37,$38 ; B9AA
        .byte   $00,$08,$37,$0E,$0F,$33,$28,$39 ; B9B2
        .byte   $3A,$3B,$3A,$3C,$3D,$3C,$3A,$3C ; B9BA
        .byte   $3E,$3A,$3F,$40,$1D,$40,$41,$42 ; B9C2
        .byte   $43,$3A,$3F,$40,$1D,$21,$20,$20 ; B9CA
        .byte   $12,$20,$20,$21,$1D,$1D,$3A,$3C ; B9D2
        .byte   $44,$44,$44,$00,$00,$00,$44,$00 ; B9DA
        .byte   $44,$44,$44,$44,$12,$44,$44,$45 ; B9E2
        .byte   $27,$46,$44,$44,$12,$27,$21,$27 ; B9EA
        .byte   $12,$27,$27,$27,$12,$00,$44,$00 ; B9F2
        .byte   $47,$47,$48,$47,$12,$47,$47,$47 ; B9FA
        .byte   $49,$4A,$4A,$4A,$4B,$00,$00,$12 ; BA02
        .byte   $27,$12,$00,$00,$12,$27,$27,$27 ; BA0A
        .byte   $12,$2B,$2A,$27,$12,$48,$47,$48 ; BA12
        .byte   $4C,$4C,$4D,$4C,$12,$4C,$4C,$4C ; BA1A
        .byte   $4E,$4F,$4F,$4F,$50,$51,$51,$12 ; BA22
        .byte   $27,$52,$12,$00,$12,$21,$27,$27 ; BA2A
        .byte   $12,$28,$2C,$27,$12,$4D,$4C,$4D ; BA32
        .byte   $3E,$53,$54,$32,$0F,$33,$27,$27 ; BA3A
        .byte   $4E,$4F,$27,$55,$56,$33,$34,$12 ; BA42
        .byte   $27,$27,$52,$12,$12,$27,$27,$57 ; BA4A
        .byte   $12,$3A,$3B,$32,$0F,$33,$3E,$54 ; BA52
        .byte   $44,$58,$59,$5A,$1D,$5A,$27,$27 ; BA5A
        .byte   $4E,$5B,$27,$4F,$5C,$21,$35,$51 ; BA62
        .byte   $27,$27,$27,$52,$12,$44,$44,$44 ; BA6A
        .byte   $12,$44,$44,$5A,$1D,$5A,$44,$59 ; BA72
        .byte   $47,$48,$48,$47,$12,$48,$01,$27 ; BA7A
        .byte   $4E,$27,$5D,$5E,$50,$27,$27,$27 ; BA82
        .byte   $27,$27,$27,$27,$5F,$4A,$4A,$4A ; BA8A
        .byte   $60,$47,$48,$47,$48,$47,$47,$48 ; BA92
        .byte   $4C,$4D,$4D,$4C,$12,$27,$27,$61 ; BA9A
        .byte   $4E,$27,$4F,$4F,$50,$5A,$62,$62 ; BAA2
        .byte   $27,$27,$27,$27,$4E,$4F,$5E,$63 ; BAAA
        .byte   $64,$4C,$4D,$4C,$4D,$4C,$4C,$4D ; BAB2
        .byte   $3E,$53,$3E,$32,$0F,$33,$3E,$65 ; BABA
        .byte   $4E,$5D,$5E,$4F,$50,$00,$00,$51 ; BAC2
        .byte   $27,$27,$27,$62,$4E,$5B,$27,$55 ; BACA
        .byte   $66,$33,$3E,$53,$67,$3E,$53,$54 ; BAD2
        .byte   $44,$58,$44,$5A,$1D,$5A,$44,$68 ; BADA
        .byte   $69,$4F,$27,$5E,$50,$51,$51,$27 ; BAE2
        .byte   $62,$62,$5A,$00,$4E,$27,$27,$4F ; BAEA
        .byte   $6A,$5A,$44,$58,$68,$44,$58,$59 ; BAF2
        .byte   $4A,$4A,$4A,$4A,$4A,$4A,$4A,$4A ; BAFA
        .byte   $6B,$5B,$27,$4F,$50,$62,$27,$27 ; BB02
        .byte   $52,$00,$00,$00,$4E,$4F,$27,$5E ; BB0A
        .byte   $6C,$4A,$4A,$4A,$4A,$4A,$4A,$4A ; BB12
        .byte   $6D,$6D,$6D,$6D,$6D,$6D,$6D,$6D ; BB1A
        .byte   $4F,$5D,$27,$5E,$50,$12,$27,$27 ; BB22
        .byte   $27,$52,$00,$00,$4E,$5B,$27,$27 ; BB2A
        .byte   $4F,$6D,$6D,$6D,$6D,$6D,$6D,$6D ; BB32
        .byte   $27,$27,$6E,$6F,$27,$27,$27,$55 ; BB3A
        .byte   $70,$71,$27,$4F,$50,$51,$27,$27 ; BB42
        .byte   $27,$27,$52,$00,$4E,$27,$27,$55 ; BB4A
        .byte   $70,$71,$27,$6E,$6F,$27,$27,$27 ; BB52
        .byte   $72,$73,$73,$74,$72,$75,$72,$4F ; BB5A
        .byte   $4F,$4F,$73,$73,$50,$62,$27,$27 ; BB62
        .byte   $27,$27,$27,$52,$4E,$4F,$72,$4F ; BB6A
        .byte   $4F,$4F,$74,$72,$72,$74,$72,$74 ; BB72
        .byte   $76,$4F,$4F,$4F,$4F,$4F,$4F,$4F ; BB7A
        .byte   $4F,$4F,$4F,$4F,$50,$00,$62,$27 ; BB82
        .byte   $27,$27,$27,$27,$77,$4F,$76,$76 ; BB8A
        .byte   $76,$4F,$4F,$4F,$76,$4F,$4F,$4F ; BB92
        .byte   $78,$6D,$6D,$6D,$6D,$6D,$6D,$6D ; BB9A
        .byte   $6D,$6D,$6D,$6D,$50,$00,$79,$7A ; BBA2
        .byte   $7A,$7A,$7B,$27,$7C,$7D,$7E,$7F ; BBAA
        .byte   $80,$5B,$27,$55,$70,$71,$5E,$63 ; BBB2
        .byte   $70,$71,$27,$6E,$6F,$27,$27,$6E ; BBBA
        .byte   $6F,$27,$27,$55,$56,$33,$81,$29 ; BBC2
        .byte   $29,$5A,$3E,$3E,$7C,$82,$83,$84 ; BBCA
        .byte   $85,$27,$27,$86,$87,$88,$27,$55 ; BBD2
        .byte   $89,$4F,$72,$74,$8A,$72,$72,$74 ; BBDA
        .byte   $75,$72,$73,$4F,$5C,$29,$00,$00 ; BBE2
        .byte   $00,$8B,$44,$8C,$8D,$88,$27,$8E ; BBEA
        .byte   $8F,$90,$27,$91,$92,$93,$27,$86 ; BBF2
        .byte   $7F,$4F,$4F,$4F,$4F,$4F,$4F,$4F ; BBFA
        .byte   $76,$4F,$4F,$4F,$6C,$4A,$4A,$4A ; BC02
        .byte   $94,$4A,$95,$94,$96,$7F,$97,$4F ; BC0A
        .byte   $4F,$4F,$4F,$4F,$7F,$80,$8F,$98 ; BC12
        .byte   $7F,$99,$99,$99,$99,$99,$99,$99 ; BC1A
        .byte   $78,$5B,$5D,$5E,$5B,$27,$5E,$63 ; BC22
        .byte   $78,$7D,$7E,$9A,$7F,$9B,$80,$5B ; BC2A
        .byte   $5E,$5B,$5E,$63,$78,$85,$9C,$7E ; BC32
        .byte   $78,$99,$99,$99,$99,$99,$99,$99 ; BC3A
        .byte   $78,$9D,$9E,$9F,$27,$27,$27,$55 ; BC42
        .byte   $70,$71,$83,$92,$7F,$93,$A0,$27 ; BC4A
        .byte   $27,$27,$27,$55,$70,$71,$27,$A1 ; BC52
        .byte   $78,$99,$99,$99,$99,$99,$99,$99 ; BC5A
        .byte   $78,$9E,$A2,$9F,$A3,$5D,$8F,$A4 ; BC62
        .byte   $89,$A5,$A6,$7E,$A7,$80,$A8,$27 ; BC6A
        .byte   $5D,$A3,$27,$86,$89,$A5,$A3,$91 ; BC72
        .byte   $7F,$99,$99,$99,$7F,$4F,$4F,$4F ; BC7A
        .byte   $A9,$4F,$4F,$4F,$4F,$4F,$AA,$A9 ; BC82
        .byte   $93,$AB,$27,$83,$78,$A0,$27,$8F ; BC8A
        .byte   $98,$AC,$27,$AD,$7F,$4F,$4F,$4F ; BC92
        .byte   $99,$99,$99,$99,$78,$7D,$5B,$27 ; BC9A
        .byte   $5E,$5B,$27,$5E,$AE,$5B,$5E,$63 ; BCA2
        .byte   $78,$AF,$27,$A6,$84,$A8,$B0,$B1 ; BCAA
        .byte   $80,$5B,$27,$B2,$93,$99,$99,$99 ; BCB2
        .byte   $99,$99,$99,$99,$78,$9D,$9E,$A2 ; BCBA
        .byte   $A2,$B3,$B4,$A2,$B4,$9F,$27,$55 ; BCC2
        .byte   $70,$71,$27,$27,$8E,$8F,$A4,$93 ; BCCA
        .byte   $85,$27,$8F,$B5,$93,$99,$99,$99 ; BCD2
        .byte   $99,$99,$99,$99,$B6,$88,$27,$5E ; BCDA
        .byte   $5B,$5E,$AE,$AE,$5B,$27,$27,$86 ; BCE2
        .byte   $89,$88,$B0,$90,$8F,$A4,$7F,$B7 ; BCEA
        .byte   $90,$B0,$A4,$7F,$93,$99,$99,$99 ; BCF2
; Tile attribute table – bits: 0-1=palette 3=Gateway 2+3=Tunnel(→Overhead) 4=damage 5=ladder
; 6=water 7=solid  3+7=Doorway 4+6=lava 5+7=solid-ladder 6+7=destroyable
TankLvl5_TileAttrTable:
        .byte   $80,$41,$42,$42,$42,$42,$42,$42 ; BCFA
        .byte   $42,$42,$81,$81,$81,$42,$42,$42 ; BD02
        .byte   $40,$40,$42,$42,$42,$42,$40,$42 ; BD0A
        .byte   $42,$81,$81,$81,$42,$42,$42,$40 ; BD12
        .byte   $40,$42,$42,$42,$42,$42,$42,$81 ; BD1A
        .byte   $81,$81,$81,$81,$42,$42,$43,$40 ; BD22
        .byte   $40,$40,$40,$40,$40,$40,$42,$42 ; BD2A
        .byte   $42,$42,$43,$43,$43,$43,$43,$80 ; BD32
        .byte   $80,$80,$80,$80,$80,$80,$80,$80 ; BD3A
        .byte   $80,$81,$81,$81,$81,$81,$81,$81 ; BD42
        .byte   $81,$81,$81,$81,$82,$82,$82,$82 ; BD4A
        .byte   $82,$82,$82,$80,$80,$82,$82,$80 ; BD52
        .byte   $80,$80,$00,$00,$00,$00,$02,$02 ; BD5A
        .byte   $02,$01,$01,$0D,$01,$01,$01,$01 ; BD62
        .byte   $01,$01,$81,$81,$81,$81,$81,$81 ; BD6A
        .byte   $81,$81,$08,$C0,$C2,$C1,$88,$C4 ; BD72
        .byte   $C6,$C5                         ; BD7A
; 16 bytes — 8 B vertical + 8 B horizontal scroll-boundary flags
TankLvl5_ScrollData:
        .byte   $FF,$06,$E1,$87,$C3,$E7,$FE,$F1 ; BD7C
        .byte   $15,$17,$77,$76,$36,$95,$A9,$C9 ; BD84
L_BD8C: .byte   $C5,$00,$B0,$02,$A5,$00,$C9,$02 ; BD8C
        .byte   $B0,$03,$20,$3A,$BE,$A9,$10,$85 ; BD94
        .byte   $40,$A9,$10,$85,$41,$20,$FF,$C0 ; BD9C
        .byte   $F0,$03,$4C,$7A,$C1,$A9,$0D,$20 ; BDA4
        .byte   $10,$B3,$A0,$01,$B1,$A3,$20,$44 ; BDAC
        .byte   $C1,$D0,$03,$20,$3A,$BE,$A9,$01 ; BDB4
        .byte   $85,$44,$A5,$11,$29,$1F,$D0,$0B ; BDBC
        .byte   $20,$B3,$C1,$29,$03,$D0,$04,$A9 ; BDC4
        .byte   $10,$85,$52,$A5,$52,$29,$05,$D0 ; BDCC
        .byte   $05,$A9,$3A,$4C,$DC,$BD,$A9,$39 ; BDD4
        .byte   $4C,$63,$C0,$A0,$E0,$20,$60,$4C ; BDDC
        .byte   $0A,$BE,$A9,$80,$85,$42,$A9,$80 ; BDE4
        .byte   $85,$43,$20,$2F,$C1,$F0,$0A,$A9 ; BDEC
        .byte   $54,$9D,$00,$04,$A5,$50,$9D,$0B ; BDF4
        .byte   $04,$18,$A5,$50,$69,$08,$85,$50 ; BDFC
        .byte   $C6,$51,$D0,$02,$C6,$46,$A9,$10 ; BE04
        .byte   $85,$40,$A9,$10,$85,$41,$20,$FF ; BE0C
        .byte   $C0,$F0,$03,$4C,$7A,$C1,$A9,$0D ; BE14
        .byte   $20,$10,$B3,$A0,$01,$B1,$A3,$20 ; BE1C
        .byte   $44,$C1,$A5,$51,$D0,$07,$A5,$53 ; BE24
        .byte   $D0,$03,$20,$F3,$B2,$A9,$01,$85 ; BE2C
        .byte   $44,$A9,$39,$4C,$63,$C0,$20,$05 ; BE34
        .byte   $C1,$AA,$BD,$DF,$BD,$85,$50,$A9 ; BE3C
        .byte   $08,$85,$51,$A9,$20,$85,$52,$A9 ; BE44
        .byte   $43,$85,$46,$60,$4C,$5C,$BE,$A9 ; BE4C
        .byte   $00,$85,$4C,$A9,$0E,$20,$B0,$B2 ; BE54
        .byte   $60,$4C,$91,$BE,$A9,$C0,$85,$42 ; BE5C
        .byte   $A9,$C0,$85,$43,$20,$48,$C0,$85 ; BE64
        .byte   $4C,$A9,$3F,$A2,$4C,$20,$4D,$C1 ; BE6C
        .byte   $A2,$03,$20,$0A,$C2,$85,$4C,$20 ; BE74
        .byte   $51,$C0,$85,$4D,$A9,$3F,$A2,$4D ; BE7C
        .byte   $20,$4D,$C1,$A2,$03,$20,$0A,$C2 ; BE84
        .byte   $85,$4D,$20,$2D,$C0,$A9,$18,$85 ; BE8C
        .byte   $40,$A9,$18,$85,$41,$20,$FF,$C0 ; BE94
        .byte   $F0,$03,$4C,$7A,$C1,$A9,$0E,$20 ; BE9C
        .byte   $C1,$B2,$18,$A5,$3F,$69,$08,$85 ; BEA4
        .byte   $3F,$A9,$11,$20,$3E,$C1,$29,$24 ; BEAC
        .byte   $C9,$04,$F0,$0B,$A9,$01,$85,$44 ; BEB4
        .byte   $A9,$4C,$85,$45,$20,$AD,$C1,$A5 ; BEBC
        .byte   $3F,$38,$E9,$12,$85,$3F,$A5,$11 ; BEC4
        .byte   $0A,$A0,$06,$20,$B6,$C1,$18,$65 ; BECC
        .byte   $3F,$85,$3F,$20,$BB,$93,$A9,$01 ; BED4
        .byte   $85,$44,$A2,$25,$A5,$11,$29,$08 ; BEDC
        .byte   $F0,$01,$E8,$8A,$4C,$63,$C0,$4C ; BEE4
        .byte   $F3,$BE,$A9,$0F,$20,$B0,$B2,$60 ; BEEC
        .byte   $4C,$4E,$BF,$A9,$80,$85,$42,$A9 ; BEF4
        .byte   $80,$85,$43,$20,$4B,$C0,$85,$4C ; BEFC
        .byte   $A9,$3F,$A2,$4C,$20,$4D,$C1,$A2 ; BF04
        .byte   $03,$20,$0A,$C2,$85,$4C,$20,$27 ; BF0C
        .byte   $C0,$20,$3F,$B2,$20,$15,$C0,$20 ; BF14
        .byte   $54,$C0,$85,$4D,$A9,$3F,$A2,$4D ; BF1C
        .byte   $20,$4D,$C1,$A2,$03,$20,$0A,$C2 ; BF24
        .byte   $85,$4D,$20,$3F,$C0,$20,$60,$B2 ; BF2C
        .byte   $20,$18,$C0,$20,$B3,$C1,$29,$40 ; BF34
        .byte   $D0,$10,$A5,$11,$29,$CF,$D0,$0A ; BF3C
        .byte   $20,$2F,$C1,$F0,$05,$A9,$58,$9D ; BF44
        .byte   $00,$04,$A9,$10,$85,$40,$A9,$10 ; BF4C
        .byte   $85,$41,$20,$FF,$C0,$F0,$03,$4C ; BF54
        .byte   $7A,$C1,$A9,$0F,$20,$C1,$B2,$20 ; BF5C
        .byte   $38,$C1,$20,$A2,$C0,$D0,$06,$A5 ; BF64
        .byte   $11,$29,$03,$D0,$14,$A9,$00,$85 ; BF6C
        .byte   $44,$A5,$11,$29,$08,$D0,$05,$A9 ; BF74
        .byte   $46,$4C,$82,$BF,$A9,$47,$4C,$63 ; BF7C
        .byte   $C0,$60,$01,$02,$04,$08,$10,$20 ; BF84
        .byte   $40,$80                         ; BF8C
L_BF8E: .byte   $7E,$00,$00,$7E,$42,$42,$42,$42 ; BF8E
        .byte   $7E,$00,$00,$7E,$42,$42,$42,$42 ; BF96
        .byte   $7E,$00,$00,$00,$80,$00,$00,$00 ; BF9E
        .byte   $00,$00,$60,$C0,$40,$80,$80,$00 ; BFA6
        .byte   $06,$1C,$10,$00,$00,$00,$00,$00 ; BFAE
        .byte   $00,$00,$68,$F0,$E0,$C0,$80,$00 ; BFB6
        .byte   $00,$00,$00,$7E,$42,$42,$42,$42 ; BFBE
        .byte   $7E,$00,$00,$7E,$42,$42,$42,$42 ; BFC6
        .byte   $7E,$00,$00,$7E,$42,$42,$42,$42 ; BFCE
        .byte   $7E,$00,$00,$7E,$42,$42,$42,$42 ; BFD6
        .byte   $7E,$00,$00,$7E                 ; BFDE
L_BFE2: .byte   $4C,$00,$00,$4C,$00,$80,$4C,$10 ; BFE2
        .byte   $80,$4C,$00,$00,$4C,$00,$00,$4C ; BFEA
        .byte   $6D,$80                         ; BFF2
L_BFF4: .byte   $EE,$F4,$FF,$00,$00,$7E,$00,$00 ; BFF4
        .byte   $F4,$FF,$7E                     ; BFFC
        .byte   $00                             ; BFFF

; End of "BANK00" segment
; ----------------------------------------------------------------------------
.code

