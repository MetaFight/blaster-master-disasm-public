; da65 V2.18 - Ubuntu 2.19-1
; Input file: public/disasm/prg_bank_01.bin
; Page:       1


        .setcpu "6502"

        .include "ram.inc"

; ----------------------------------------------------------------------------
; ----------------------------------------------------------------------------

.segment        "BANK01": absolute

TankLvl6_BasePointers:
        .addr   TankLvl6_MapPointers            ; 8000
        .addr   TankLvl6_ScrollData             ; 8002
TankLvl7_BasePointers:
        .addr   TankLvl7_MapPointers            ; 8004
        .addr   TankLvl7_ScrollData             ; 8006
TankLvl8_BasePointers:
        .addr   TankLvl8_MapPointers            ; 8008
        .addr   TankLvl8_ScrollData             ; 800A
OvhdLvl1_BasePointers:
        .addr   OvhdLvl1_MapPointers            ; 800C
        .addr   OvhdLvl1_ScrollData             ; 800E
OvhdLvl3_BasePointers:
        .addr   OvhdLvl3_MapPointers            ; 8010
        .addr   OvhdLvl3_ScrollData             ; 8012
Bk01_MetaspriteTableOverheadPtr:
        .addr   Metasprite_Table_Overhead       ; 8014
TankLvl6_MapPointers:
        .addr   TankLvl6_BgPalette              ; 8016
        .addr   TankLvl6_TileAttrTable          ; 8018
        .addr   TankLvl6_TileDescTable          ; 801A
        .addr   TankLvl6_StructureDescTable     ; 801C
        .addr   TankLvl6_ChunkDescTable         ; 801E
        .addr   TankLvl6_MapData                ; 8020
; ----------------------------------------------------------------------------
; 4 BgPalette records — the level's 4 background sub-palettes × 4 NES colour indices.
TankLvl6_BgPalette:
        .byte   $0F,$1C,$2C,$31 ; 8022  Backdrop=$0F Colour1=$1C Colour2=$2C Colour3=$31
        .byte   $0F,$00,$26,$36 ; 8026  Backdrop=$0F Colour1=$00 Colour2=$26 Colour3=$36
        .byte   $0F,$0B,$1C,$2B ; 802A  Backdrop=$0F Colour1=$0B Colour2=$1C Colour3=$2B
        .byte   $0F,$2C,$3C,$30 ; 802E  Backdrop=$0F Colour1=$2C Colour2=$3C Colour3=$30
; 104 TileDesc records — the level's Tile definitions. Index space shared with
; TankLvl6_TileAttrTable, which has the matching 104 entries.
TankLvl6_TileDescTable:
        .byte   $00,$00,$00,$00 ; 8032  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $20,$30,$30,$20 ; 8036  TL=$20 TR=$30 BL=$30 BR=$20
        .byte   $85,$30,$86,$20 ; 803A  TL=$85 TR=$30 BL=$86 BR=$20
        .byte   $21,$31,$30,$20 ; 803E  TL=$21 TR=$31 BL=$30 BR=$20
        .byte   $20,$30,$86,$20 ; 8042  TL=$20 TR=$30 BL=$86 BR=$20
        .byte   $21,$30,$30,$20 ; 8046  TL=$21 TR=$30 BL=$30 BR=$20
        .byte   $20,$31,$30,$20 ; 804A  TL=$20 TR=$31 BL=$30 BR=$20
        .byte   $20,$30,$30,$01 ; 804E  TL=$20 TR=$30 BL=$30 BR=$01
        .byte   $20,$30,$01,$20 ; 8052  TL=$20 TR=$30 BL=$01 BR=$20
        .byte   $01,$01,$01,$20 ; 8056  TL=$01 TR=$01 BL=$01 BR=$20
        .byte   $01,$01,$30,$01 ; 805A  TL=$01 TR=$01 BL=$30 BR=$01
        .byte   $01,$01,$30,$20 ; 805E  TL=$01 TR=$01 BL=$30 BR=$20
        .byte   $01,$01,$01,$01 ; 8062  TL=$01 TR=$01 BL=$01 BR=$01
        .byte   $6C,$7C,$6D,$7D ; 8066  TL=$6C TR=$7C BL=$6D BR=$7D
        .byte   $6E,$7E,$6D,$7D ; 806A  TL=$6E TR=$7E BL=$6D BR=$7D
        .byte   $6C,$7C,$6F,$7F ; 806E  TL=$6C TR=$7C BL=$6F BR=$7F
        .byte   $6E,$7E,$6F,$7F ; 8072  TL=$6E TR=$7E BL=$6F BR=$7F
        .byte   $63,$73,$64,$74 ; 8076  TL=$63 TR=$73 BL=$64 BR=$74
        .byte   $87,$73,$88,$74 ; 807A  TL=$87 TR=$73 BL=$88 BR=$74
        .byte   $65,$75,$64,$74 ; 807E  TL=$65 TR=$75 BL=$64 BR=$74
        .byte   $65,$75,$88,$74 ; 8082  TL=$65 TR=$75 BL=$88 BR=$74
        .byte   $63,$73,$88,$74 ; 8086  TL=$63 TR=$73 BL=$88 BR=$74
        .byte   $63,$75,$64,$74 ; 808A  TL=$63 TR=$75 BL=$64 BR=$74
        .byte   $65,$73,$64,$74 ; 808E  TL=$65 TR=$73 BL=$64 BR=$74
        .byte   $87,$73,$66,$76 ; 8092  TL=$87 TR=$73 BL=$66 BR=$76
        .byte   $63,$73,$66,$76 ; 8096  TL=$63 TR=$73 BL=$66 BR=$76
        .byte   $B2,$C3,$A3,$B1 ; 809A  TL=$B2 TR=$C3 BL=$A3 BR=$B1
        .byte   $B3,$C3,$A1,$B1 ; 809E  TL=$B3 TR=$C3 BL=$A1 BR=$B1
        .byte   $A2,$B0,$A3,$B1 ; 80A2  TL=$A2 TR=$B0 BL=$A3 BR=$B1
        .byte   $A0,$B0,$A1,$B1 ; 80A6  TL=$A0 TR=$B0 BL=$A1 BR=$B1
        .byte   $AE,$BE,$AF,$BF ; 80AA  TL=$AE TR=$BE BL=$AF BR=$BF
        .byte   $8E,$9E,$8F,$9F ; 80AE  TL=$8E TR=$9E BL=$8F BR=$9F
        .byte   $E8,$F8,$E9,$00 ; 80B2  TL=$E8 TR=$F8 BL=$E9 BR=$00
        .byte   $01,$01,$60,$70 ; 80B6  TL=$01 TR=$01 BL=$60 BR=$70
        .byte   $61,$71,$62,$72 ; 80BA  TL=$61 TR=$71 BL=$62 BR=$72
        .byte   $05,$15,$06,$16 ; 80BE  TL=$05 TR=$15 BL=$06 BR=$16
        .byte   $2F,$3F,$2F,$3F ; 80C2  TL=$2F TR=$3F BL=$2F BR=$3F
        .byte   $4B,$5B,$2F,$3F ; 80C6  TL=$4B TR=$5B BL=$2F BR=$3F
        .byte   $2F,$3F,$0F,$1F ; 80CA  TL=$2F TR=$3F BL=$0F BR=$1F
        .byte   $4C,$5C,$4D,$5D ; 80CE  TL=$4C TR=$5C BL=$4D BR=$5D
        .byte   $1B,$2B,$4C,$5C ; 80D2  TL=$1B TR=$2B BL=$4C BR=$5C
        .byte   $4E,$5E,$2F,$3F ; 80D6  TL=$4E TR=$5E BL=$2F BR=$3F
        .byte   $48,$58,$49,$59 ; 80DA  TL=$48 TR=$58 BL=$49 BR=$59
        .byte   $49,$59,$4A,$5A ; 80DE  TL=$49 TR=$59 BL=$4A BR=$5A
        .byte   $07,$17,$08,$18 ; 80E2  TL=$07 TR=$17 BL=$08 BR=$18
        .byte   $27,$37,$28,$38 ; 80E6  TL=$27 TR=$37 BL=$28 BR=$38
        .byte   $2C,$3C,$2D,$3D ; 80EA  TL=$2C TR=$3C BL=$2D BR=$3D
        .byte   $2E,$3E,$2F,$3F ; 80EE  TL=$2E TR=$3E BL=$2F BR=$3F
        .byte   $09,$19,$0A,$1A ; 80F2  TL=$09 TR=$19 BL=$0A BR=$1A
        .byte   $29,$39,$2A,$3A ; 80F6  TL=$29 TR=$39 BL=$2A BR=$3A
        .byte   $0B,$00,$00,$00 ; 80FA  TL=$0B TR=$00 BL=$00 BR=$00
        .byte   $00,$3B,$00,$00 ; 80FE  TL=$00 TR=$3B BL=$00 BR=$00
        .byte   $0C,$1C,$00,$1D ; 8102  TL=$0C TR=$1C BL=$00 BR=$1D
        .byte   $40,$11,$41,$12 ; 8106  TL=$40 TR=$11 BL=$41 BR=$12
        .byte   $10,$11,$02,$12 ; 810A  TL=$10 TR=$11 BL=$02 BR=$12
        .byte   $10,$50,$02,$51 ; 810E  TL=$10 TR=$50 BL=$02 BR=$51
        .byte   $23,$32,$24,$22 ; 8112  TL=$23 TR=$32 BL=$24 BR=$22
        .byte   $22,$32,$32,$22 ; 8116  TL=$22 TR=$32 BL=$32 BR=$22
        .byte   $22,$33,$32,$34 ; 811A  TL=$22 TR=$33 BL=$32 BR=$34
        .byte   $80,$90,$81,$91 ; 811E  TL=$80 TR=$90 BL=$81 BR=$91
        .byte   $82,$92,$83,$93 ; 8122  TL=$82 TR=$92 BL=$83 BR=$93
        .byte   $80,$92,$81,$93 ; 8126  TL=$80 TR=$92 BL=$81 BR=$93
        .byte   $0D,$0D,$0E,$0E ; 812A  TL=$0D TR=$0D BL=$0E BR=$0E
        .byte   $8C,$9C,$8D,$9D ; 812E  TL=$8C TR=$9C BL=$8D BR=$9D
        .byte   $25,$35,$26,$36 ; 8132  TL=$25 TR=$35 BL=$26 BR=$36
        .byte   $C8,$D8,$26,$36 ; 8136  TL=$C8 TR=$D8 BL=$26 BR=$36
        .byte   $46,$13,$47,$14 ; 813A  TL=$46 TR=$13 BL=$47 BR=$14
        .byte   $03,$13,$04,$14 ; 813E  TL=$03 TR=$13 BL=$04 BR=$14
        .byte   $03,$56,$04,$57 ; 8142  TL=$03 TR=$56 BL=$04 BR=$57
        .byte   $42,$13,$43,$44 ; 8146  TL=$42 TR=$13 BL=$43 BR=$44
        .byte   $03,$13,$45,$55 ; 814A  TL=$03 TR=$13 BL=$45 BR=$55
        .byte   $03,$52,$54,$53 ; 814E  TL=$03 TR=$52 BL=$54 BR=$53
        .byte   $A7,$B7,$A8,$B8 ; 8152  TL=$A7 TR=$B7 BL=$A8 BR=$B8
        .byte   $8A,$9A,$A8,$AA ; 8156  TL=$8A TR=$9A BL=$A8 BR=$AA
        .byte   $A7,$A9,$A8,$AA ; 815A  TL=$A7 TR=$A9 BL=$A8 BR=$AA
        .byte   $A7,$A9,$8B,$00 ; 815E  TL=$A7 TR=$A9 BL=$8B BR=$00
        .byte   $B9,$B5,$89,$99 ; 8162  TL=$B9 TR=$B5 BL=$89 BR=$99
        .byte   $B9,$B5,$BA,$B6 ; 8166  TL=$B9 TR=$B5 BL=$BA BR=$B6
        .byte   $00,$98,$BA,$B6 ; 816A  TL=$00 TR=$98 BL=$BA BR=$B6
        .byte   $A5,$B5,$A6,$B6 ; 816E  TL=$A5 TR=$B5 BL=$A6 BR=$B6
        .byte   $67,$77,$68,$78 ; 8172  TL=$67 TR=$77 BL=$68 BR=$78
        .byte   $67,$77,$6B,$7B ; 8176  TL=$67 TR=$77 BL=$6B BR=$7B
        .byte   $C9,$D9,$CA,$DA ; 817A  TL=$C9 TR=$D9 BL=$CA BR=$DA
        .byte   $D9,$F9,$EA,$FA ; 817E  TL=$D9 TR=$F9 BL=$EA BR=$FA
        .byte   $CB,$DB,$CC,$DC ; 8182  TL=$CB TR=$DB BL=$CC BR=$DC
        .byte   $EB,$FB,$EC,$FC ; 8186  TL=$EB TR=$FB BL=$EC BR=$FC
        .byte   $D4,$E4,$D5,$E5 ; 818A  TL=$D4 TR=$E4 BL=$D5 BR=$E5
        .byte   $E6,$E6,$E7,$E7 ; 818E  TL=$E6 TR=$E6 BL=$E7 BR=$E7
        .byte   $E4,$F4,$E5,$F5 ; 8192  TL=$E4 TR=$F4 BL=$E5 BR=$F5
        .byte   $D6,$00,$D7,$00 ; 8196  TL=$D6 TR=$00 BL=$D7 BR=$00
        .byte   $00,$00,$00,$00 ; 819A  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$F6,$00,$F7 ; 819E  TL=$00 TR=$F6 BL=$00 BR=$F7
        .byte   $C4,$AD,$C5,$CE ; 81A2  TL=$C4 TR=$AD BL=$C5 BR=$CE
        .byte   $BD,$CD,$00,$DE ; 81A6  TL=$BD TR=$CD BL=$00 BR=$DE
        .byte   $C5,$CE,$C5,$CF ; 81AA  TL=$C5 TR=$CE BL=$C5 BR=$CF
        .byte   $00,$DE,$00,$DF ; 81AE  TL=$00 TR=$DE BL=$00 BR=$DF
        .byte   $DD,$ED,$EE,$00 ; 81B2  TL=$DD TR=$ED BL=$EE BR=$00
        .byte   $FD,$C6,$FE,$C7 ; 81B6  TL=$FD TR=$C6 BL=$FE BR=$C7
        .byte   $EE,$00,$EF,$00 ; 81BA  TL=$EE TR=$00 BL=$EF BR=$00
        .byte   $FE,$C7,$FF,$C7 ; 81BE  TL=$FE TR=$C7 BL=$FF BR=$C7
        .byte   $1E,$1E,$1E,$1E ; 81C2  TL=$1E TR=$1E BL=$1E BR=$1E
        .byte   $BB,$BB,$BC,$BC ; 81C6  TL=$BB TR=$BB BL=$BC BR=$BC
        .byte   $AB,$AB,$AC,$AC ; 81CA  TL=$AB TR=$AB BL=$AC BR=$AC
        .byte   $4F,$5F,$4F,$5F ; 81CE  TL=$4F TR=$5F BL=$4F BR=$5F
; 193 StructureDesc records — the level's Structure definitions, each a 2×2 quad of Tiles.
TankLvl6_StructureDescTable:
        .byte   $3C,$3B,$3B,$3C ; 81D2  TL=$3C TR=$3B BL=$3B BR=$3C
        .byte   $39,$3A,$39,$3A ; 81D6  TL=$39 TR=$3A BL=$39 BR=$3A
        .byte   $39,$39,$39,$39 ; 81DA  TL=$39 TR=$39 BL=$39 BR=$39
        .byte   $50,$50,$50,$50 ; 81DE  TL=$50 TR=$50 BL=$50 BR=$50
        .byte   $40,$41,$43,$43 ; 81E2  TL=$40 TR=$41 BL=$43 BR=$43
        .byte   $3F,$40,$43,$43 ; 81E6  TL=$3F TR=$40 BL=$43 BR=$43
        .byte   $40,$40,$43,$43 ; 81EA  TL=$40 TR=$40 BL=$43 BR=$43
        .byte   $38,$39,$38,$39 ; 81EE  TL=$38 TR=$39 BL=$38 BR=$39
        .byte   $3C,$3D,$3B,$3C ; 81F2  TL=$3C TR=$3D BL=$3B BR=$3C
        .byte   $64,$64,$64,$64 ; 81F6  TL=$64 TR=$64 BL=$64 BR=$64
        .byte   $1A,$1B,$1C,$1D ; 81FA  TL=$1A TR=$1B BL=$1C BR=$1D
        .byte   $1B,$1B,$1D,$1D ; 81FE  TL=$1B TR=$1B BL=$1D BR=$1D
        .byte   $3B,$3C,$65,$65 ; 8202  TL=$3B TR=$3C BL=$65 BR=$65
        .byte   $3D,$3B,$3B,$3C ; 8206  TL=$3D TR=$3B BL=$3B BR=$3C
        .byte   $50,$50,$50,$51 ; 820A  TL=$50 TR=$50 BL=$50 BR=$51
        .byte   $50,$51,$51,$0C ; 820E  TL=$50 TR=$51 BL=$51 BR=$0C
        .byte   $51,$0C,$0C,$0C ; 8212  TL=$51 TR=$0C BL=$0C BR=$0C
        .byte   $51,$50,$0C,$51 ; 8216  TL=$51 TR=$50 BL=$0C BR=$51
        .byte   $0C,$0E,$0E,$0D ; 821A  TL=$0C TR=$0E BL=$0E BR=$0D
        .byte   $0C,$0C,$0C,$0E ; 821E  TL=$0C TR=$0C BL=$0C BR=$0E
        .byte   $00,$00,$00,$00 ; 8222  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $14,$13,$12,$11 ; 8226  TL=$14 TR=$13 BL=$12 BR=$11
        .byte   $13,$13,$11,$11 ; 822A  TL=$13 TR=$13 BL=$11 BR=$11
        .byte   $12,$11,$12,$11 ; 822E  TL=$12 TR=$11 BL=$12 BR=$11
        .byte   $11,$11,$11,$11 ; 8232  TL=$11 TR=$11 BL=$11 BR=$11
        .byte   $0C,$0E,$0C,$0D ; 8236  TL=$0C TR=$0E BL=$0C BR=$0D
        .byte   $5C,$5D,$5E,$5F ; 823A  TL=$5C TR=$5D BL=$5E BR=$5F
        .byte   $0D,$0D,$0D,$0D ; 823E  TL=$0D TR=$0D BL=$0D BR=$0D
        .byte   $0E,$0D,$0D,$0D ; 8242  TL=$0E TR=$0D BL=$0D BR=$0D
        .byte   $3E,$3E,$20,$20 ; 8246  TL=$3E TR=$3E BL=$20 BR=$20
        .byte   $3E,$3E,$50,$20 ; 824A  TL=$3E TR=$3E BL=$50 BR=$20
        .byte   $0E,$0E,$0D,$0D ; 824E  TL=$0E TR=$0E BL=$0D BR=$0D
        .byte   $50,$0E,$50,$0D ; 8252  TL=$50 TR=$0E BL=$50 BR=$0D
        .byte   $60,$61,$62,$63 ; 8256  TL=$60 TR=$61 BL=$62 BR=$63
        .byte   $3F,$3F,$65,$65 ; 825A  TL=$3F TR=$3F BL=$65 BR=$65
        .byte   $15,$11,$12,$11 ; 825E  TL=$15 TR=$11 BL=$12 BR=$11
        .byte   $17,$11,$11,$11 ; 8262  TL=$17 TR=$11 BL=$11 BR=$11
        .byte   $1E,$1F,$23,$23 ; 8266  TL=$1E TR=$1F BL=$23 BR=$23
        .byte   $50,$1F,$50,$23 ; 826A  TL=$50 TR=$1F BL=$50 BR=$23
        .byte   $0F,$0D,$0C,$0F ; 826E  TL=$0F TR=$0D BL=$0C BR=$0F
        .byte   $50,$0F,$50,$0C ; 8272  TL=$50 TR=$0F BL=$50 BR=$0C
        .byte   $0D,$0F,$0F,$0C ; 8276  TL=$0D TR=$0F BL=$0F BR=$0C
        .byte   $3F,$3F,$3F,$3F ; 827A  TL=$3F TR=$3F BL=$3F BR=$3F
        .byte   $50,$40,$43,$43 ; 827E  TL=$50 TR=$40 BL=$43 BR=$43
        .byte   $66,$66,$3F,$3F ; 8282  TL=$66 TR=$66 BL=$3F BR=$3F
        .byte   $52,$53,$54,$55 ; 8286  TL=$52 TR=$53 BL=$54 BR=$55
        .byte   $16,$13,$11,$11 ; 828A  TL=$16 TR=$13 BL=$11 BR=$11
        .byte   $66,$66,$65,$65 ; 828E  TL=$66 TR=$66 BL=$65 BR=$65
        .byte   $48,$49,$48,$4A ; 8292  TL=$48 TR=$49 BL=$48 BR=$4A
        .byte   $25,$0E,$27,$0D ; 8296  TL=$25 TR=$0E BL=$27 BR=$0D
        .byte   $48,$48,$48,$48 ; 829A  TL=$48 TR=$48 BL=$48 BR=$48
        .byte   $49,$0D,$4A,$0D ; 829E  TL=$49 TR=$0D BL=$4A BR=$0D
        .byte   $25,$0E,$24,$0D ; 82A2  TL=$25 TR=$0E BL=$24 BR=$0D
        .byte   $0E,$25,$0D,$24 ; 82A6  TL=$0E TR=$25 BL=$0D BR=$24
        .byte   $24,$0D,$24,$0D ; 82AA  TL=$24 TR=$0D BL=$24 BR=$0D
        .byte   $0D,$24,$0D,$24 ; 82AE  TL=$0D TR=$24 BL=$0D BR=$24
        .byte   $3E,$3E,$10,$4E ; 82B2  TL=$3E TR=$3E BL=$10 BR=$4E
        .byte   $3E,$3E,$4F,$4F ; 82B6  TL=$3E TR=$3E BL=$4F BR=$4F
        .byte   $4E,$4F,$4C,$4F ; 82BA  TL=$4E TR=$4F BL=$4C BR=$4F
        .byte   $4F,$4F,$4F,$4F ; 82BE  TL=$4F TR=$4F BL=$4F BR=$4F
        .byte   $4A,$0D,$4B,$0D ; 82C2  TL=$4A TR=$0D BL=$4B BR=$0D
        .byte   $29,$0D,$24,$0D ; 82C6  TL=$29 TR=$0D BL=$24 BR=$0D
        .byte   $0E,$4D,$0D,$4C ; 82CA  TL=$0E TR=$4D BL=$0D BR=$4C
        .byte   $0D,$29,$0D,$24 ; 82CE  TL=$0D TR=$29 BL=$0D BR=$24
        .byte   $3E,$3E,$4A,$0E ; 82D2  TL=$3E TR=$3E BL=$4A BR=$0E
        .byte   $3E,$3E,$29,$0E ; 82D6  TL=$3E TR=$3E BL=$29 BR=$0E
        .byte   $4A,$0D,$4A,$0D ; 82DA  TL=$4A TR=$0D BL=$4A BR=$0D
        .byte   $4A,$0D,$4A,$0F ; 82DE  TL=$4A TR=$0D BL=$4A BR=$0F
        .byte   $3E,$3E,$0E,$29 ; 82E2  TL=$3E TR=$3E BL=$0E BR=$29
        .byte   $4D,$4F,$4C,$4F ; 82E6  TL=$4D TR=$4F BL=$4C BR=$4F
        .byte   $09,$03,$02,$01 ; 82EA  TL=$09 TR=$03 BL=$02 BR=$01
        .byte   $03,$03,$07,$08 ; 82EE  TL=$03 TR=$03 BL=$07 BR=$08
        .byte   $02,$07,$0E,$0E ; 82F2  TL=$02 TR=$07 BL=$0E BR=$0E
        .byte   $03,$03,$01,$01 ; 82F6  TL=$03 TR=$03 BL=$01 BR=$01
        .byte   $08,$01,$0E,$0E ; 82FA  TL=$08 TR=$01 BL=$0E BR=$0E
        .byte   $01,$01,$08,$01 ; 82FE  TL=$01 TR=$01 BL=$08 BR=$01
        .byte   $01,$01,$01,$01 ; 8302  TL=$01 TR=$01 BL=$01 BR=$01
        .byte   $03,$64,$01,$64 ; 8306  TL=$03 TR=$64 BL=$01 BR=$64
        .byte   $64,$09,$64,$02 ; 830A  TL=$64 TR=$09 BL=$64 BR=$02
        .byte   $01,$64,$07,$64 ; 830E  TL=$01 TR=$64 BL=$07 BR=$64
        .byte   $64,$0C,$64,$0C ; 8312  TL=$64 TR=$0C BL=$64 BR=$0C
        .byte   $01,$07,$07,$0E ; 8316  TL=$01 TR=$07 BL=$07 BR=$0E
        .byte   $45,$43,$0A,$42 ; 831A  TL=$45 TR=$43 BL=$0A BR=$42
        .byte   $07,$45,$0E,$0E ; 831E  TL=$07 TR=$45 BL=$0E BR=$0E
        .byte   $43,$43,$43,$43 ; 8322  TL=$43 TR=$43 BL=$43 BR=$43
        .byte   $46,$43,$0E,$45 ; 8326  TL=$46 TR=$43 BL=$0E BR=$45
        .byte   $43,$43,$43,$47 ; 832A  TL=$43 TR=$43 BL=$43 BR=$47
        .byte   $44,$09,$47,$09 ; 832E  TL=$44 TR=$09 BL=$47 BR=$09
        .byte   $46,$47,$0E,$0E ; 8332  TL=$46 TR=$47 BL=$0E BR=$0E
        .byte   $09,$01,$08,$01 ; 8336  TL=$09 TR=$01 BL=$08 BR=$01
        .byte   $0E,$4D,$0D,$4D ; 833A  TL=$0E TR=$4D BL=$0D BR=$4D
        .byte   $0D,$4D,$0F,$4D ; 833E  TL=$0D TR=$4D BL=$0F BR=$4D
        .byte   $35,$36,$06,$03 ; 8342  TL=$35 TR=$36 BL=$06 BR=$03
        .byte   $37,$04,$03,$05 ; 8346  TL=$37 TR=$04 BL=$03 BR=$05
        .byte   $08,$01,$08,$01 ; 834A  TL=$08 TR=$01 BL=$08 BR=$01
        .byte   $01,$01,$07,$0E ; 834E  TL=$01 TR=$01 BL=$07 BR=$0E
        .byte   $07,$0E,$0E,$0D ; 8352  TL=$07 TR=$0E BL=$0E BR=$0D
        .byte   $35,$36,$10,$0C ; 8356  TL=$35 TR=$36 BL=$10 BR=$0C
        .byte   $36,$37,$0C,$10 ; 835A  TL=$36 TR=$37 BL=$0C BR=$10
        .byte   $0D,$0E,$0D,$0D ; 835E  TL=$0D TR=$0E BL=$0D BR=$0D
        .byte   $0F,$0D,$0E,$0D ; 8362  TL=$0F TR=$0D BL=$0E BR=$0D
        .byte   $45,$43,$0E,$42 ; 8366  TL=$45 TR=$43 BL=$0E BR=$42
        .byte   $0D,$45,$0D,$0E ; 836A  TL=$0D TR=$45 BL=$0D BR=$0E
        .byte   $44,$0E,$47,$0D ; 836E  TL=$44 TR=$0E BL=$47 BR=$0D
        .byte   $38,$39,$0E,$0E ; 8372  TL=$38 TR=$39 BL=$0E BR=$0E
        .byte   $39,$39,$45,$38 ; 8376  TL=$39 TR=$39 BL=$45 BR=$38
        .byte   $0E,$45,$0D,$0E ; 837A  TL=$0E TR=$45 BL=$0D BR=$0E
        .byte   $38,$39,$42,$38 ; 837E  TL=$38 TR=$39 BL=$42 BR=$38
        .byte   $39,$3A,$3A,$44 ; 8382  TL=$39 TR=$3A BL=$3A BR=$44
        .byte   $39,$3A,$3A,$47 ; 8386  TL=$39 TR=$3A BL=$3A BR=$47
        .byte   $47,$0E,$0E,$0D ; 838A  TL=$47 TR=$0E BL=$0E BR=$0D
        .byte   $24,$0D,$26,$0D ; 838E  TL=$24 TR=$0D BL=$26 BR=$0D
        .byte   $0D,$24,$0D,$26 ; 8392  TL=$0D TR=$24 BL=$0D BR=$26
        .byte   $0D,$29,$0D,$26 ; 8396  TL=$0D TR=$29 BL=$0D BR=$26
        .byte   $42,$38,$42,$38 ; 839A  TL=$42 TR=$38 BL=$42 BR=$38
        .byte   $3A,$44,$3A,$44 ; 839E  TL=$3A TR=$44 BL=$3A BR=$44
        .byte   $0D,$0D,$0F,$0D ; 83A2  TL=$0D TR=$0D BL=$0F BR=$0D
        .byte   $0C,$00,$00,$00 ; 83A6  TL=$0C TR=$00 BL=$00 BR=$00
        .byte   $0C,$0F,$00,$0C ; 83AA  TL=$0C TR=$0F BL=$00 BR=$0C
        .byte   $43,$43,$2D,$2E ; 83AE  TL=$43 TR=$43 BL=$2D BR=$2E
        .byte   $43,$43,$2D,$2C ; 83B2  TL=$43 TR=$43 BL=$2D BR=$2C
        .byte   $42,$38,$45,$38 ; 83B6  TL=$42 TR=$38 BL=$45 BR=$38
        .byte   $3A,$44,$3A,$47 ; 83BA  TL=$3A TR=$44 BL=$3A BR=$47
        .byte   $0E,$64,$0D,$64 ; 83BE  TL=$0E TR=$64 BL=$0D BR=$64
        .byte   $64,$00,$64,$00 ; 83C2  TL=$64 TR=$00 BL=$64 BR=$00
        .byte   $0D,$64,$0D,$64 ; 83C6  TL=$0D TR=$64 BL=$0D BR=$64
        .byte   $00,$00,$0E,$0E ; 83CA  TL=$00 TR=$00 BL=$0E BR=$0E
        .byte   $00,$0E,$0E,$0D ; 83CE  TL=$00 TR=$0E BL=$0E BR=$0D
        .byte   $00,$10,$66,$66 ; 83D2  TL=$00 TR=$10 BL=$66 BR=$66
        .byte   $10,$00,$66,$66 ; 83D6  TL=$10 TR=$00 BL=$66 BR=$66
        .byte   $21,$22,$23,$23 ; 83DA  TL=$21 TR=$22 BL=$23 BR=$23
        .byte   $0D,$0D,$0F,$0F ; 83DE  TL=$0D TR=$0D BL=$0F BR=$0F
        .byte   $46,$46,$0E,$0E ; 83E2  TL=$46 TR=$46 BL=$0E BR=$0E
        .byte   $24,$0D,$27,$0D ; 83E6  TL=$24 TR=$0D BL=$27 BR=$0D
        .byte   $31,$2F,$33,$24 ; 83EA  TL=$31 TR=$2F BL=$33 BR=$24
        .byte   $31,$30,$33,$32 ; 83EE  TL=$31 TR=$30 BL=$33 BR=$32
        .byte   $0C,$24,$01,$24 ; 83F2  TL=$0C TR=$24 BL=$01 BR=$24
        .byte   $0C,$09,$09,$01 ; 83F6  TL=$0C TR=$09 BL=$09 BR=$01
        .byte   $36,$37,$3F,$10 ; 83FA  TL=$36 TR=$37 BL=$3F BR=$10
        .byte   $3F,$0D,$3F,$0D ; 83FE  TL=$3F TR=$0D BL=$3F BR=$0D
        .byte   $01,$24,$01,$24 ; 8402  TL=$01 TR=$24 BL=$01 BR=$24
        .byte   $02,$01,$02,$01 ; 8406  TL=$02 TR=$01 BL=$02 BR=$01
        .byte   $35,$36,$06,$29 ; 840A  TL=$35 TR=$36 BL=$06 BR=$29
        .byte   $37,$04,$09,$05 ; 840E  TL=$37 TR=$04 BL=$09 BR=$05
        .byte   $36,$36,$09,$03 ; 8412  TL=$36 TR=$36 BL=$09 BR=$03
        .byte   $36,$36,$03,$29 ; 8416  TL=$36 TR=$36 BL=$03 BR=$29
        .byte   $3F,$22,$3F,$23 ; 841A  TL=$3F TR=$22 BL=$3F BR=$23
        .byte   $3F,$0D,$3F,$0F ; 841E  TL=$3F TR=$0D BL=$3F BR=$0F
        .byte   $0D,$0E,$0F,$0F ; 8422  TL=$0D TR=$0E BL=$0F BR=$0F
        .byte   $36,$36,$08,$29 ; 8426  TL=$36 TR=$36 BL=$08 BR=$29
        .byte   $36,$36,$0C,$08 ; 842A  TL=$36 TR=$36 BL=$0C BR=$08
        .byte   $22,$2A,$23,$2B ; 842E  TL=$22 TR=$2A BL=$23 BR=$2B
        .byte   $21,$21,$23,$23 ; 8432  TL=$21 TR=$21 BL=$23 BR=$23
        .byte   $37,$24,$03,$24 ; 8436  TL=$37 TR=$24 BL=$03 BR=$24
        .byte   $35,$36,$09,$03 ; 843A  TL=$35 TR=$36 BL=$09 BR=$03
        .byte   $37,$24,$08,$24 ; 843E  TL=$37 TR=$24 BL=$08 BR=$24
        .byte   $02,$01,$0C,$08 ; 8442  TL=$02 TR=$01 BL=$0C BR=$08
        .byte   $01,$24,$08,$24 ; 8446  TL=$01 TR=$24 BL=$08 BR=$24
        .byte   $35,$36,$08,$29 ; 844A  TL=$35 TR=$36 BL=$08 BR=$29
        .byte   $37,$01,$0C,$08 ; 844E  TL=$37 TR=$01 BL=$0C BR=$08
        .byte   $40,$41,$39,$39 ; 8452  TL=$40 TR=$41 BL=$39 BR=$39
        .byte   $40,$40,$39,$39 ; 8456  TL=$40 TR=$40 BL=$39 BR=$39
        .byte   $0C,$24,$02,$24 ; 845A  TL=$0C TR=$24 BL=$02 BR=$24
        .byte   $31,$34,$33,$0C ; 845E  TL=$31 TR=$34 BL=$33 BR=$0C
        .byte   $0B,$0A,$01,$01 ; 8462  TL=$0B TR=$0A BL=$01 BR=$01
        .byte   $0C,$0B,$01,$01 ; 8466  TL=$0C TR=$0B BL=$01 BR=$01
        .byte   $3B,$3C,$65,$3D ; 846A  TL=$3B TR=$3C BL=$65 BR=$3D
        .byte   $3B,$3C,$3D,$65 ; 846E  TL=$3B TR=$3C BL=$3D BR=$65
        .byte   $1B,$3B,$1D,$3D ; 8472  TL=$1B TR=$3B BL=$1D BR=$3D
        .byte   $3C,$1B,$3D,$1D ; 8476  TL=$3C TR=$1B BL=$3D BR=$1D
        .byte   $1D,$1D,$1D,$1D ; 847A  TL=$1D TR=$1D BL=$1D BR=$1D
        .byte   $02,$24,$02,$24 ; 847E  TL=$02 TR=$24 BL=$02 BR=$24
        .byte   $56,$57,$59,$5A ; 8482  TL=$56 TR=$57 BL=$59 BR=$5A
        .byte   $58,$02,$5B,$02 ; 8486  TL=$58 TR=$02 BL=$5B BR=$02
        .byte   $36,$36,$3F,$03 ; 848A  TL=$36 TR=$36 BL=$3F BR=$03
        .byte   $37,$01,$01,$01 ; 848E  TL=$37 TR=$01 BL=$01 BR=$01
        .byte   $36,$36,$03,$03 ; 8492  TL=$36 TR=$36 BL=$03 BR=$03
        .byte   $37,$01,$03,$01 ; 8496  TL=$37 TR=$01 BL=$03 BR=$01
        .byte   $1C,$1D,$1C,$1D ; 849A  TL=$1C TR=$1D BL=$1C BR=$1D
        .byte   $1D,$3B,$1D,$3D ; 849E  TL=$1D TR=$3B BL=$1D BR=$3D
        .byte   $3C,$1D,$3D,$1D ; 84A2  TL=$3C TR=$1D BL=$3D BR=$1D
        .byte   $36,$36,$3F,$08 ; 84A6  TL=$36 TR=$36 BL=$3F BR=$08
        .byte   $3F,$21,$3F,$23 ; 84AA  TL=$3F TR=$21 BL=$3F BR=$23
        .byte   $37,$01,$07,$08 ; 84AE  TL=$37 TR=$01 BL=$07 BR=$08
        .byte   $01,$01,$07,$0C ; 84B2  TL=$01 TR=$01 BL=$07 BR=$0C
        .byte   $22,$21,$23,$23 ; 84B6  TL=$22 TR=$21 BL=$23 BR=$23
        .byte   $3F,$01,$3F,$08 ; 84BA  TL=$3F TR=$01 BL=$3F BR=$08
        .byte   $01,$01,$07,$08 ; 84BE  TL=$01 TR=$01 BL=$07 BR=$08
        .byte   $35,$36,$07,$0C ; 84C2  TL=$35 TR=$36 BL=$07 BR=$0C
        .byte   $3D,$64,$65,$64 ; 84C6  TL=$3D TR=$64 BL=$65 BR=$64
        .byte   $64,$3B,$64,$3D ; 84CA  TL=$64 TR=$3B BL=$64 BR=$3D
        .byte   $1B,$1D,$1D,$1D ; 84CE  TL=$1B TR=$1D BL=$1D BR=$1D
        .byte   $1D,$1B,$1D,$1D ; 84D2  TL=$1D TR=$1B BL=$1D BR=$1D
; 202 ChunkDesc records — the level's Chunk definitions, each a 2×2 quad of Structures. These are
; the indices TankLvl6_MapData's grid holds.
TankLvl6_ChunkDescTable:
        .byte   $00,$01,$02,$03 ; 84D6  TL=$00 TR=$01 BL=$02 BR=$03
        .byte   $04,$05,$03,$03 ; 84DA  TL=$04 TR=$05 BL=$03 BR=$03
        .byte   $06,$06,$03,$03 ; 84DE  TL=$06 TR=$06 BL=$03 BR=$03
        .byte   $07,$01,$03,$03 ; 84E2  TL=$07 TR=$01 BL=$03 BR=$03
        .byte   $04,$06,$03,$03 ; 84E6  TL=$04 TR=$06 BL=$03 BR=$03
        .byte   $07,$08,$03,$08 ; 84EA  TL=$07 TR=$08 BL=$03 BR=$08
        .byte   $09,$09,$0A,$0B ; 84EE  TL=$09 TR=$09 BL=$0A BR=$0B
        .byte   $0C,$0C,$0B,$0B ; 84F2  TL=$0C TR=$0C BL=$0B BR=$0B
        .byte   $0D,$08,$0D,$08 ; 84F6  TL=$0D TR=$08 BL=$0D BR=$08
        .byte   $00,$00,$02,$02 ; 84FA  TL=$00 TR=$00 BL=$02 BR=$02
        .byte   $07,$03,$07,$03 ; 84FE  TL=$07 TR=$03 BL=$07 BR=$03
        .byte   $03,$0E,$0F,$10 ; 8502  TL=$03 TR=$0E BL=$0F BR=$10
        .byte   $11,$11,$12,$13 ; 8506  TL=$11 TR=$11 BL=$12 BR=$13
        .byte   $0E,$03,$10,$0F ; 850A  TL=$0E TR=$03 BL=$10 BR=$0F
        .byte   $03,$08,$03,$08 ; 850E  TL=$03 TR=$08 BL=$03 BR=$08
        .byte   $0C,$0C,$0A,$0B ; 8512  TL=$0C TR=$0C BL=$0A BR=$0B
        .byte   $09,$09,$0B,$0B ; 8516  TL=$09 TR=$09 BL=$0B BR=$0B
        .byte   $14,$14,$14,$14 ; 851A  TL=$14 TR=$14 BL=$14 BR=$14
        .byte   $07,$01,$07,$01 ; 851E  TL=$07 TR=$01 BL=$07 BR=$01
        .byte   $15,$16,$17,$18 ; 8522  TL=$15 TR=$16 BL=$17 BR=$18
        .byte   $16,$16,$18,$18 ; 8526  TL=$16 TR=$16 BL=$18 BR=$18
        .byte   $19,$12,$1A,$1B ; 852A  TL=$19 TR=$12 BL=$1A BR=$1B
        .byte   $1B,$1C,$1B,$1B ; 852E  TL=$1B TR=$1C BL=$1B BR=$1B
        .byte   $1D,$1E,$1F,$20 ; 8532  TL=$1D TR=$1E BL=$1F BR=$20
        .byte   $19,$12,$1C,$1B ; 8536  TL=$19 TR=$12 BL=$1C BR=$1B
        .byte   $19,$12,$1C,$21 ; 853A  TL=$19 TR=$12 BL=$1C BR=$21
        .byte   $09,$09,$1A,$0A ; 853E  TL=$09 TR=$09 BL=$1A BR=$0A
        .byte   $0D,$08,$0B,$0B ; 8542  TL=$0D TR=$08 BL=$0B BR=$0B
        .byte   $17,$18,$22,$22 ; 8546  TL=$17 TR=$18 BL=$22 BR=$22
        .byte   $22,$22,$15,$16 ; 854A  TL=$22 TR=$22 BL=$15 BR=$16
        .byte   $23,$18,$24,$21 ; 854E  TL=$23 TR=$18 BL=$24 BR=$21
        .byte   $1D,$1E,$25,$26 ; 8552  TL=$1D TR=$1E BL=$25 BR=$26
        .byte   $27,$28,$25,$26 ; 8556  TL=$27 TR=$28 BL=$25 BR=$26
        .byte   $27,$29,$25,$25 ; 855A  TL=$27 TR=$29 BL=$25 BR=$25
        .byte   $0D,$08,$0A,$0B ; 855E  TL=$0D TR=$08 BL=$0A BR=$0B
        .byte   $15,$16,$17,$09 ; 8562  TL=$15 TR=$16 BL=$17 BR=$09
        .byte   $09,$23,$2A,$2A ; 8566  TL=$09 TR=$23 BL=$2A BR=$2A
        .byte   $2A,$2A,$15,$16 ; 856A  TL=$2A TR=$2A BL=$15 BR=$16
        .byte   $07,$03,$07,$01 ; 856E  TL=$07 TR=$03 BL=$07 BR=$01
        .byte   $06,$2B,$02,$02 ; 8572  TL=$06 TR=$2B BL=$02 BR=$02
        .byte   $06,$06,$02,$02 ; 8576  TL=$06 TR=$06 BL=$02 BR=$02
        .byte   $06,$06,$07,$01 ; 857A  TL=$06 TR=$06 BL=$07 BR=$01
        .byte   $03,$00,$02,$02 ; 857E  TL=$03 TR=$00 BL=$02 BR=$02
        .byte   $17,$09,$2C,$2A ; 8582  TL=$17 TR=$09 BL=$2C BR=$2A
        .byte   $15,$09,$17,$09 ; 8586  TL=$15 TR=$09 BL=$17 BR=$09
        .byte   $17,$18,$17,$18 ; 858A  TL=$17 TR=$18 BL=$17 BR=$18
        .byte   $15,$16,$2D,$18 ; 858E  TL=$15 TR=$16 BL=$2D BR=$18
        .byte   $09,$09,$2E,$16 ; 8592  TL=$09 TR=$09 BL=$2E BR=$16
        .byte   $15,$16,$24,$18 ; 8596  TL=$15 TR=$16 BL=$24 BR=$18
        .byte   $2F,$2F,$2E,$16 ; 859A  TL=$2F TR=$2F BL=$2E BR=$16
        .byte   $2A,$2A,$2E,$16 ; 859E  TL=$2A TR=$2A BL=$2E BR=$16
        .byte   $30,$31,$32,$33 ; 85A2  TL=$30 TR=$31 BL=$32 BR=$33
        .byte   $34,$35,$36,$37 ; 85A6  TL=$34 TR=$35 BL=$36 BR=$37
        .byte   $38,$39,$3A,$3B ; 85AA  TL=$38 TR=$39 BL=$3A BR=$3B
        .byte   $09,$09,$2A,$2A ; 85AE  TL=$09 TR=$09 BL=$2A BR=$2A
        .byte   $09,$2A,$2A,$2A ; 85B2  TL=$09 TR=$2A BL=$2A BR=$2A
        .byte   $2A,$2A,$09,$15 ; 85B6  TL=$2A TR=$2A BL=$09 BR=$15
        .byte   $09,$23,$09,$17 ; 85BA  TL=$09 TR=$23 BL=$09 BR=$17
        .byte   $23,$18,$24,$18 ; 85BE  TL=$23 TR=$18 BL=$24 BR=$18
        .byte   $2A,$2F,$2E,$16 ; 85C2  TL=$2A TR=$2F BL=$2E BR=$16
        .byte   $2F,$2A,$16,$16 ; 85C6  TL=$2F TR=$2A BL=$16 BR=$16
        .byte   $32,$3C,$1A,$3D ; 85CA  TL=$32 TR=$3C BL=$1A BR=$3D
        .byte   $36,$37,$36,$37 ; 85CE  TL=$36 TR=$37 BL=$36 BR=$37
        .byte   $3E,$3B,$3F,$21 ; 85D2  TL=$3E TR=$3B BL=$3F BR=$21
        .byte   $15,$16,$1A,$18 ; 85D6  TL=$15 TR=$16 BL=$1A BR=$18
        .byte   $24,$09,$2A,$2A ; 85DA  TL=$24 TR=$09 BL=$2A BR=$2A
        .byte   $24,$18,$2F,$2F ; 85DE  TL=$24 TR=$18 BL=$2F BR=$2F
        .byte   $2E,$16,$23,$18 ; 85E2  TL=$2E TR=$16 BL=$23 BR=$18
        .byte   $15,$16,$17,$21 ; 85E6  TL=$15 TR=$16 BL=$17 BR=$21
        .byte   $17,$18,$1A,$18 ; 85EA  TL=$17 TR=$18 BL=$1A BR=$18
        .byte   $09,$17,$2A,$2A ; 85EE  TL=$09 TR=$17 BL=$2A BR=$2A
        .byte   $2A,$2C,$15,$16 ; 85F2  TL=$2A TR=$2C BL=$15 BR=$16
        .byte   $18,$18,$2F,$2F ; 85F6  TL=$18 TR=$18 BL=$2F BR=$2F
        .byte   $18,$18,$23,$18 ; 85FA  TL=$18 TR=$18 BL=$23 BR=$18
        .byte   $2F,$2F,$16,$16 ; 85FE  TL=$2F TR=$2F BL=$16 BR=$16
        .byte   $2A,$2A,$16,$16 ; 8602  TL=$2A TR=$2A BL=$16 BR=$16
        .byte   $40,$41,$42,$36 ; 8606  TL=$40 TR=$41 BL=$42 BR=$36
        .byte   $36,$37,$41,$37 ; 860A  TL=$36 TR=$37 BL=$41 BR=$37
        .byte   $24,$2A,$2A,$2A ; 860E  TL=$24 TR=$2A BL=$2A BR=$2A
        .byte   $24,$18,$18,$18 ; 8612  TL=$24 TR=$18 BL=$18 BR=$18
        .byte   $02,$02,$02,$02 ; 8616  TL=$02 TR=$02 BL=$02 BR=$02
        .byte   $42,$36,$43,$36 ; 861A  TL=$42 TR=$36 BL=$43 BR=$36
        .byte   $36,$37,$36,$44 ; 861E  TL=$36 TR=$37 BL=$36 BR=$44
        .byte   $3E,$3B,$3F,$45 ; 8622  TL=$3E TR=$3B BL=$3F BR=$45
        .byte   $46,$47,$48,$1F ; 8626  TL=$46 TR=$47 BL=$48 BR=$1F
        .byte   $49,$49,$4A,$4B ; 862A  TL=$49 TR=$49 BL=$4A BR=$4B
        .byte   $49,$49,$4C,$4C ; 862E  TL=$49 TR=$49 BL=$4C BR=$4C
        .byte   $4D,$4E,$4F,$50 ; 8632  TL=$4D TR=$4E BL=$4F BR=$50
        .byte   $49,$49,$51,$1F ; 8636  TL=$49 TR=$49 BL=$51 BR=$1F
        .byte   $49,$52,$4A,$53 ; 863A  TL=$49 TR=$52 BL=$4A BR=$53
        .byte   $54,$54,$55,$54 ; 863E  TL=$54 TR=$54 BL=$55 BR=$54
        .byte   $54,$54,$54,$56 ; 8642  TL=$54 TR=$54 BL=$54 BR=$56
        .byte   $54,$57,$58,$59 ; 8646  TL=$54 TR=$57 BL=$58 BR=$59
        .byte   $30,$41,$32,$33 ; 864A  TL=$30 TR=$41 BL=$32 BR=$33
        .byte   $37,$5A,$37,$5B ; 864E  TL=$37 TR=$5A BL=$37 BR=$5B
        .byte   $49,$49,$5C,$5D ; 8652  TL=$49 TR=$49 BL=$5C BR=$5D
        .byte   $1B,$1B,$1A,$1B ; 8656  TL=$1B TR=$1B BL=$1A BR=$1B
        .byte   $1B,$5E,$1B,$1F ; 865A  TL=$1B TR=$5E BL=$1B BR=$1F
        .byte   $5F,$60,$1C,$1B ; 865E  TL=$5F TR=$60 BL=$1C BR=$1B
        .byte   $61,$62,$63,$1C ; 8662  TL=$61 TR=$62 BL=$63 BR=$1C
        .byte   $1B,$1F,$1B,$1B ; 8666  TL=$1B TR=$1F BL=$1B BR=$1B
        .byte   $29,$64,$1F,$1B ; 866A  TL=$29 TR=$64 BL=$1F BR=$1B
        .byte   $1B,$1B,$1B,$1B ; 866E  TL=$1B TR=$1B BL=$1B BR=$1B
        .byte   $63,$65,$1B,$66 ; 8672  TL=$63 TR=$65 BL=$1B BR=$66
        .byte   $54,$67,$58,$1C ; 8676  TL=$54 TR=$67 BL=$58 BR=$1C
        .byte   $5E,$4C,$1F,$21 ; 867A  TL=$5E TR=$4C BL=$1F BR=$21
        .byte   $1B,$09,$1B,$09 ; 867E  TL=$1B TR=$09 BL=$1B BR=$09
        .byte   $68,$69,$1B,$6A ; 8682  TL=$68 TR=$69 BL=$1B BR=$6A
        .byte   $02,$02,$6B,$6C ; 8686  TL=$02 TR=$02 BL=$6B BR=$6C
        .byte   $6D,$5E,$6E,$1F ; 868A  TL=$6D TR=$5E BL=$6E BR=$1F
        .byte   $29,$09,$1F,$09 ; 868E  TL=$29 TR=$09 BL=$1F BR=$09
        .byte   $09,$1F,$09,$1B ; 8692  TL=$09 TR=$1F BL=$09 BR=$1B
        .byte   $40,$41,$42,$6F ; 8696  TL=$40 TR=$41 BL=$42 BR=$6F
        .byte   $41,$37,$6F,$70 ; 869A  TL=$41 TR=$37 BL=$6F BR=$70
        .byte   $3E,$3B,$71,$45 ; 869E  TL=$3E TR=$3B BL=$71 BR=$45
        .byte   $09,$1B,$09,$1B ; 86A2  TL=$09 TR=$1B BL=$09 BR=$1B
        .byte   $72,$73,$72,$73 ; 86A6  TL=$72 TR=$73 BL=$72 BR=$73
        .byte   $29,$74,$75,$76 ; 86AA  TL=$29 TR=$74 BL=$75 BR=$76
        .byte   $02,$02,$77,$78 ; 86AE  TL=$02 TR=$02 BL=$77 BR=$78
        .byte   $72,$73,$79,$7A ; 86B2  TL=$72 TR=$73 BL=$79 BR=$7A
        .byte   $7B,$7C,$7D,$7C ; 86B6  TL=$7B TR=$7C BL=$7D BR=$7C
        .byte   $14,$14,$14,$2F ; 86BA  TL=$14 TR=$14 BL=$14 BR=$2F
        .byte   $14,$14,$02,$02 ; 86BE  TL=$14 TR=$14 BL=$02 BR=$02
        .byte   $6B,$6C,$72,$73 ; 86C2  TL=$6B TR=$6C BL=$72 BR=$73
        .byte   $14,$14,$1A,$7E ; 86C6  TL=$14 TR=$14 BL=$1A BR=$7E
        .byte   $14,$14,$7F,$7E ; 86CA  TL=$14 TR=$14 BL=$7F BR=$7E
        .byte   $14,$14,$80,$81 ; 86CE  TL=$14 TR=$14 BL=$80 BR=$81
        .byte   $14,$14,$14,$21 ; 86D2  TL=$14 TR=$14 BL=$14 BR=$21
        .byte   $61,$62,$82,$82 ; 86D6  TL=$61 TR=$62 BL=$82 BR=$82
        .byte   $83,$83,$82,$82 ; 86DA  TL=$83 TR=$83 BL=$82 BR=$82
        .byte   $41,$37,$36,$37 ; 86DE  TL=$41 TR=$37 BL=$36 BR=$37
        .byte   $06,$06,$54,$56 ; 86E2  TL=$06 TR=$06 BL=$54 BR=$56
        .byte   $06,$06,$84,$84 ; 86E6  TL=$06 TR=$06 BL=$84 BR=$84
        .byte   $06,$06,$55,$54 ; 86EA  TL=$06 TR=$06 BL=$55 BR=$54
        .byte   $06,$06,$54,$54 ; 86EE  TL=$06 TR=$06 BL=$54 BR=$54
        .byte   $42,$36,$43,$41 ; 86F2  TL=$42 TR=$36 BL=$43 BR=$41
        .byte   $36,$44,$36,$37 ; 86F6  TL=$36 TR=$44 BL=$36 BR=$37
        .byte   $06,$06,$77,$78 ; 86FA  TL=$06 TR=$06 BL=$77 BR=$78
        .byte   $72,$73,$77,$78 ; 86FE  TL=$72 TR=$73 BL=$77 BR=$78
        .byte   $30,$85,$32,$33 ; 8702  TL=$30 TR=$85 BL=$32 BR=$33
        .byte   $86,$87,$88,$89 ; 8706  TL=$86 TR=$87 BL=$88 BR=$89
        .byte   $61,$8A,$63,$8B ; 870A  TL=$61 TR=$8A BL=$63 BR=$8B
        .byte   $1B,$1B,$61,$8A ; 870E  TL=$1B TR=$1B BL=$61 BR=$8A
        .byte   $1B,$1B,$1B,$21 ; 8712  TL=$1B TR=$1B BL=$1B BR=$21
        .byte   $8C,$8D,$2D,$8D ; 8716  TL=$8C TR=$8D BL=$2D BR=$8D
        .byte   $8C,$8D,$8C,$8D ; 871A  TL=$8C TR=$8D BL=$8C BR=$8D
        .byte   $8C,$8D,$8C,$21 ; 871E  TL=$8C TR=$8D BL=$8C BR=$21
        .byte   $8C,$8D,$1A,$8D ; 8722  TL=$8C TR=$8D BL=$1A BR=$8D
        .byte   $8C,$8D,$8E,$8F ; 8726  TL=$8C TR=$8D BL=$8E BR=$8F
        .byte   $8C,$8D,$8E,$90 ; 872A  TL=$8C TR=$8D BL=$8E BR=$90
        .byte   $8C,$8D,$91,$8F ; 872E  TL=$8C TR=$8D BL=$91 BR=$8F
        .byte   $61,$8A,$82,$92 ; 8732  TL=$61 TR=$8A BL=$82 BR=$92
        .byte   $83,$93,$82,$92 ; 8736  TL=$83 TR=$93 BL=$82 BR=$92
        .byte   $94,$93,$82,$92 ; 873A  TL=$94 TR=$93 BL=$82 BR=$92
        .byte   $95,$96,$97,$98 ; 873E  TL=$95 TR=$96 BL=$97 BR=$98
        .byte   $91,$90,$8C,$8D ; 8742  TL=$91 TR=$90 BL=$8C BR=$8D
        .byte   $99,$8D,$8C,$9A ; 8746  TL=$99 TR=$8D BL=$8C BR=$9A
        .byte   $8C,$8D,$8C,$9A ; 874A  TL=$8C TR=$8D BL=$8C BR=$9A
        .byte   $8E,$90,$8C,$8D ; 874E  TL=$8E TR=$90 BL=$8C BR=$8D
        .byte   $06,$05,$03,$03 ; 8752  TL=$06 TR=$05 BL=$03 BR=$03
        .byte   $07,$01,$77,$78 ; 8756  TL=$07 TR=$01 BL=$77 BR=$78
        .byte   $04,$06,$77,$78 ; 875A  TL=$04 TR=$06 BL=$77 BR=$78
        .byte   $8C,$8D,$91,$90 ; 875E  TL=$8C TR=$8D BL=$91 BR=$90
        .byte   $8C,$8D,$99,$8D ; 8762  TL=$8C TR=$8D BL=$99 BR=$8D
        .byte   $99,$8D,$8C,$8D ; 8766  TL=$99 TR=$8D BL=$8C BR=$8D
        .byte   $8C,$9A,$99,$8D ; 876A  TL=$8C TR=$9A BL=$99 BR=$8D
        .byte   $9B,$9C,$97,$98 ; 876E  TL=$9B TR=$9C BL=$97 BR=$98
        .byte   $9D,$9C,$97,$98 ; 8772  TL=$9D TR=$9C BL=$97 BR=$98
        .byte   $9E,$9F,$97,$98 ; 8776  TL=$9E TR=$9F BL=$97 BR=$98
        .byte   $07,$01,$00,$01 ; 877A  TL=$07 TR=$01 BL=$00 BR=$01
        .byte   $02,$02,$78,$78 ; 877E  TL=$02 TR=$02 BL=$78 BR=$78
        .byte   $07,$01,$07,$00 ; 8782  TL=$07 TR=$01 BL=$07 BR=$00
        .byte   $A0,$A1,$00,$00 ; 8786  TL=$A0 TR=$A1 BL=$00 BR=$00
        .byte   $0D,$01,$0D,$01 ; 878A  TL=$0D TR=$01 BL=$0D BR=$01
        .byte   $86,$87,$A2,$89 ; 878E  TL=$86 TR=$87 BL=$A2 BR=$89
        .byte   $87,$A3,$A4,$A5 ; 8792  TL=$87 TR=$A3 BL=$A4 BR=$A5
        .byte   $07,$08,$07,$08 ; 8796  TL=$07 TR=$08 BL=$07 BR=$08
        .byte   $A6,$A7,$A8,$A9 ; 879A  TL=$A6 TR=$A7 BL=$A8 BR=$A9
        .byte   $0A,$0B,$AA,$AA ; 879E  TL=$0A TR=$0B BL=$AA BR=$AA
        .byte   $0B,$0B,$AA,$AA ; 87A2  TL=$0B TR=$0B BL=$AA BR=$AA
        .byte   $09,$09,$09,$09 ; 87A6  TL=$09 TR=$09 BL=$09 BR=$09
        .byte   $0A,$2D,$0C,$0C ; 87AA  TL=$0A TR=$2D BL=$0C BR=$0C
        .byte   $AB,$8D,$AC,$AD ; 87AE  TL=$AB TR=$8D BL=$AC BR=$AD
        .byte   $4C,$4C,$4C,$5C ; 87B2  TL=$4C TR=$4C BL=$4C BR=$5C
        .byte   $8C,$8D,$91,$AE ; 87B6  TL=$8C TR=$8D BL=$91 BR=$AE
        .byte   $4C,$4C,$AF,$4C ; 87BA  TL=$4C TR=$4C BL=$AF BR=$4C
        .byte   $4C,$4C,$B0,$B0 ; 87BE  TL=$4C TR=$4C BL=$B0 BR=$B0
        .byte   $4C,$4C,$B1,$4C ; 87C2  TL=$4C TR=$4C BL=$B1 BR=$4C
        .byte   $B2,$AA,$1A,$AA ; 87C6  TL=$B2 TR=$AA BL=$1A BR=$AA
        .byte   $B3,$B4,$B3,$B4 ; 87CA  TL=$B3 TR=$B4 BL=$B3 BR=$B4
        .byte   $AA,$AA,$AA,$21 ; 87CE  TL=$AA TR=$AA BL=$AA BR=$21
        .byte   $AA,$AA,$AA,$AA ; 87D2  TL=$AA TR=$AA BL=$AA BR=$AA
        .byte   $0A,$0B,$B2,$AA ; 87D6  TL=$0A TR=$0B BL=$B2 BR=$AA
        .byte   $95,$B5,$97,$B6 ; 87DA  TL=$95 TR=$B5 BL=$97 BR=$B6
        .byte   $B7,$B8,$B9,$B9 ; 87DE  TL=$B7 TR=$B8 BL=$B9 BR=$B9
        .byte   $9D,$BA,$97,$B6 ; 87E2  TL=$9D TR=$BA BL=$97 BR=$B6
        .byte   $BB,$BC,$B9,$B9 ; 87E6  TL=$BB TR=$BC BL=$B9 BR=$B9
        .byte   $BB,$B8,$B9,$B9 ; 87EA  TL=$BB TR=$B8 BL=$B9 BR=$B9
        .byte   $0C,$BD,$0A,$0B ; 87EE  TL=$0C TR=$BD BL=$0A BR=$0B
        .byte   $BE,$B4,$0B,$BF ; 87F2  TL=$BE TR=$B4 BL=$0B BR=$BF
        .byte   $B3,$08,$C0,$0B ; 87F6  TL=$B3 TR=$08 BL=$C0 BR=$0B
        .byte   $B2,$AA,$B2,$AA ; 87FA  TL=$B2 TR=$AA BL=$B2 BR=$AA
; 32×32 chunk-index grid = 1024 bytes
TankLvl6_MapData:
        .byte   $00,$01,$02,$01,$02,$01,$02,$01 ; 87FE
        .byte   $02,$01,$02,$01,$03,$04,$04,$04 ; 8806
        .byte   $04,$04,$04,$04,$05,$06,$07,$07 ; 880E
        .byte   $08,$09,$09,$09,$09,$09,$09,$09 ; 8816
        .byte   $0A,$0B,$0C,$0C,$0D,$0B,$0C,$0D ; 881E
        .byte   $0B,$0C,$0C,$0D,$0B,$0C,$0C,$0C ; 8826
        .byte   $0D,$0B,$0D,$0B,$0E,$0F,$07,$10 ; 882E
        .byte   $08,$11,$11,$11,$12,$13,$14,$14 ; 8836
        .byte   $0A,$15,$16,$17,$18,$18,$17,$18 ; 883E
        .byte   $18,$16,$17,$18,$18,$16,$17,$16 ; 8846
        .byte   $18,$18,$18,$19,$0E,$1A,$07,$1B ; 884E
        .byte   $08,$11,$11,$11,$12,$1C,$1D,$1E ; 8856
        .byte   $0A,$1F,$1F,$20,$1F,$1F,$20,$1F ; 885E
        .byte   $21,$1F,$20,$1F,$21,$1F,$20,$1F ; 8866
        .byte   $21,$1F,$21,$1F,$0E,$22,$1B,$10 ; 886E
        .byte   $08,$11,$11,$11,$12,$23,$24,$25 ; 8876
        .byte   $26,$27,$27,$27,$27,$27,$27,$27 ; 887E
        .byte   $28,$27,$27,$27,$29,$27,$27,$27 ; 8886
        .byte   $29,$27,$28,$27,$2A,$09,$09,$09 ; 888E
        .byte   $09,$09,$09,$09,$12,$2B,$2C,$2D ; 8896
        .byte   $12,$11,$11,$11,$12,$2E,$2F,$30 ; 889E
        .byte   $31,$30,$14,$32,$12,$33,$34,$35 ; 88A6
        .byte   $12,$36,$13,$36,$13,$36,$13,$37 ; 88AE
        .byte   $13,$36,$13,$37,$12,$13,$38,$39 ; 88B6
        .byte   $12,$11,$11,$11,$12,$25,$3A,$32 ; 88BE
        .byte   $3A,$3B,$3C,$1E,$12,$3D,$3E,$3F ; 88C6
        .byte   $12,$40,$41,$13,$41,$13,$42,$43 ; 88CE
        .byte   $41,$13,$41,$44,$12,$45,$46,$47 ; 88D6
        .byte   $12,$11,$11,$11,$12,$2D,$48,$49 ; 88DE
        .byte   $32,$3C,$4A,$4B,$12,$4C,$4D,$35 ; 88E6
        .byte   $12,$25,$30,$4E,$13,$41,$13,$41 ; 88EE
        .byte   $13,$41,$13,$32,$12,$25,$30,$4F ; 88F6
        .byte   $12,$50,$50,$50,$12,$50,$50,$50 ; 88FE
        .byte   $50,$50,$50,$50,$12,$51,$52,$53 ; 8906
        .byte   $12,$50,$50,$50,$50,$50,$50,$50 ; 890E
        .byte   $50,$50,$50,$50,$12,$50,$50,$50 ; 8916
        .byte   $12,$54,$55,$56,$57,$55,$58,$59 ; 891E
        .byte   $5A,$5B,$5C,$56,$12,$5D,$4D,$5E ; 8926
        .byte   $12,$54,$55,$57,$55,$5F,$58,$59 ; 892E
        .byte   $5A,$5B,$5A,$5B,$5C,$58,$55,$5F ; 8936
        .byte   $12,$60,$61,$62,$63,$64,$65,$66 ; 893E
        .byte   $67,$68,$61,$69,$12,$3D,$52,$35 ; 8946
        .byte   $12,$6A,$6B,$6C,$6D,$62,$6E,$63 ; 894E
        .byte   $67,$5A,$5B,$68,$6F,$63,$66,$69 ; 8956
        .byte   $12,$63,$66,$63,$66,$63,$66,$63 ; 895E
        .byte   $65,$63,$65,$63,$12,$70,$71,$72 ; 8966
        .byte   $12,$63,$73,$74,$65,$66,$63,$6A ; 896E
        .byte   $65,$67,$68,$66,$63,$65,$66,$63 ; 8976
        .byte   $12,$66,$63,$65,$66,$75,$63,$65 ; 897E
        .byte   $63,$66,$63,$65,$12,$76,$76,$76 ; 8986
        .byte   $12,$6A,$63,$74,$66,$75,$65,$63 ; 898E
        .byte   $66,$63,$66,$63,$75,$66,$63,$65 ; 8996
        .byte   $12,$75,$66,$75,$75,$11,$75,$66 ; 899E
        .byte   $75,$65,$75,$66,$12,$11,$11,$11 ; 89A6
        .byte   $12,$63,$73,$74,$75,$11,$75,$75 ; 89AE
        .byte   $66,$75,$63,$75,$11,$75,$75,$66 ; 89B6
        .byte   $12,$11,$75,$11,$11,$11,$11,$75 ; 89BE
        .byte   $11,$75,$11,$75,$12,$11,$11,$11 ; 89C6
        .byte   $12,$6A,$63,$77,$11,$11,$11,$11 ; 89CE
        .byte   $75,$11,$75,$11,$11,$11,$11,$75 ; 89D6
        .byte   $12,$11,$11,$11,$11,$11,$11,$11 ; 89DE
        .byte   $11,$11,$11,$11,$12,$11,$11,$11 ; 89E6
        .byte   $12,$63,$73,$78,$11,$11,$11,$11 ; 89EE
        .byte   $11,$11,$11,$11,$11,$11,$11,$11 ; 89F6
        .byte   $12,$11,$79,$11,$11,$11,$11,$11 ; 89FE
        .byte   $11,$11,$11,$11,$12,$7A,$7A,$7A ; 8A06
        .byte   $12,$6A,$63,$7B,$11,$11,$11,$11 ; 8A0E
        .byte   $11,$11,$11,$11,$11,$11,$11,$11 ; 8A16
        .byte   $12,$11,$11,$11,$11,$11,$11,$11 ; 8A1E
        .byte   $11,$11,$11,$11,$12,$33,$34,$35 ; 8A26
        .byte   $12,$63,$73,$74,$11,$11,$11,$11 ; 8A2E
        .byte   $11,$11,$11,$11,$11,$11,$11,$11 ; 8A36
        .byte   $12,$7C,$7D,$7E,$7D,$7E,$7D,$7E ; 8A3E
        .byte   $7D,$7E,$7D,$7F,$12,$3D,$3E,$3F ; 8A46
        .byte   $12,$60,$63,$74,$7E,$7D,$7E,$7D ; 8A4E
        .byte   $7E,$7D,$7E,$7D,$7E,$7D,$7D,$7F ; 8A56
        .byte   $12,$80,$81,$80,$81,$80,$81,$80 ; 8A5E
        .byte   $81,$80,$81,$80,$12,$4C,$82,$35 ; 8A66
        .byte   $12,$80,$81,$74,$80,$81,$80,$81 ; 8A6E
        .byte   $80,$81,$80,$81,$80,$81,$80,$80 ; 8A76
        .byte   $12,$83,$84,$85,$86,$86,$83,$84 ; 8A7E
        .byte   $84,$85,$83,$84,$12,$87,$88,$53 ; 8A86
        .byte   $12,$89,$89,$8A,$29,$89,$89,$89 ; 8A8E
        .byte   $89,$89,$89,$89,$89,$89,$89,$89 ; 8A96
        .byte   $12,$68,$65,$67,$5A,$5B,$68,$65 ; 8A9E
        .byte   $65,$67,$68,$65,$12,$8B,$4D,$5E ; 8AA6
        .byte   $12,$8C,$8C,$8C,$12,$8C,$8C,$8C ; 8AAE
        .byte   $8C,$8C,$8C,$8C,$8C,$8C,$8C,$8C ; 8AB6
        .byte   $12,$60,$8D,$8E,$67,$68,$65,$8D ; 8ABE
        .byte   $8E,$65,$65,$8F,$12,$3D,$52,$35 ; 8AC6
        .byte   $12,$90,$91,$92,$12,$93,$91,$91 ; 8ACE
        .byte   $94,$94,$94,$91,$95,$96,$91,$92 ; 8AD6
        .byte   $12,$97,$98,$99,$97,$81,$97,$98 ; 8ADE
        .byte   $99,$97,$81,$97,$12,$70,$71,$72 ; 8AE6
        .byte   $12,$9A,$9A,$9A,$12,$9B,$9C,$96 ; 8AEE
        .byte   $91,$91,$91,$9D,$96,$9D,$96,$9E ; 8AF6
        .byte   $12,$9F,$9F,$9F,$9F,$02,$9F,$9F ; 8AFE
        .byte   $9F,$9F,$02,$9F,$12,$76,$76,$76 ; 8B06
        .byte   $A0,$A1,$A1,$A1,$12,$A2,$A2,$A2 ; 8B0E
        .byte   $A2,$96,$91,$94,$91,$91,$9D,$A2 ; 8B16
        .byte   $12,$11,$11,$11,$11,$11,$11,$11 ; 8B1E
        .byte   $11,$11,$11,$11,$12,$8C,$8C,$8C ; 8B26
        .byte   $8C,$8C,$8C,$8C,$12,$91,$9D,$A2 ; 8B2E
        .byte   $A3,$9D,$A2,$A2,$96,$91,$91,$91 ; 8B36
        .byte   $12,$11,$11,$11,$11,$11,$11,$11 ; 8B3E
        .byte   $11,$11,$11,$11,$12,$90,$95,$A3 ; 8B46
        .byte   $95,$A3,$91,$92,$12,$93,$91,$9D ; 8B4E
        .byte   $A2,$96,$91,$91,$9D,$A2,$A3,$91 ; 8B56
        .byte   $12,$11,$11,$11,$11,$11,$11,$11 ; 8B5E
        .byte   $11,$11,$11,$11,$12,$9B,$A4,$91 ; 8B66
        .byte   $9D,$A2,$A5,$9B,$12,$9A,$9A,$A6 ; 8B6E
        .byte   $A7,$A7,$A8,$A7,$A7,$A7,$A7,$A8 ; 8B76
        .byte   $A9,$76,$AA,$76,$AA,$76,$AA,$76 ; 8B7E
        .byte   $AA,$76,$AA,$76,$12,$91,$94,$91 ; 8B86
        .byte   $91,$91,$95,$96,$AB,$AC,$AC,$AC ; 8B8E
        .byte   $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC ; 8B96
        .byte   $AD,$AE,$AF,$8C,$AF,$8C,$AF,$8C ; 8B9E
        .byte   $AF,$8C,$AF,$8C,$12,$9D,$A2,$96 ; 8BA6
        .byte   $91,$95,$A2,$A3,$B0,$0F,$B1,$07 ; 8BAE
        .byte   $08,$0F,$07,$07,$B2,$B3,$B4,$B5 ; 8BB6
        .byte   $AD,$B6,$B7,$B8,$B9,$91,$B7,$B8 ; 8BBE
        .byte   $BA,$B8,$BB,$92,$12,$93,$91,$9D ; 8BC6
        .byte   $A2,$A2,$96,$92,$B0,$BC,$BD,$BE ; 8BCE
        .byte   $08,$BC,$07,$BF,$BF,$BF,$B4,$C0 ; 8BD6
        .byte   $AD,$C1,$C2,$C3,$C4,$C1,$C2,$C3 ; 8BDE
        .byte   $C5,$C3,$C4,$C1,$12,$9A,$9A,$A6 ; 8BE6
        .byte   $A7,$A7,$A7,$9A,$B0,$C6,$C7,$C8 ; 8BEE
        .byte   $08,$22,$BF,$1B,$BF,$BF,$B4,$C9 ; 8BF6
; 16 bytes — 8 B vertical + 8 B horizontal scroll-boundary flags
TankLvl6_ScrollData:
        .byte   $FB,$FE,$EF,$10,$10,$EF,$F8,$E7 ; 8BFE
        .byte   $87,$D9,$98,$98,$98,$9C,$94,$96 ; 8C06
; Tile attribute table – bits: 0-1=palette 3=Gateway 2+3=Tunnel(→Overhead) 4=damage 5=ladder
; 6=water 7=solid  3+7=Doorway 4+6=lava 5+7=solid-ladder 6+7=destroyable
TankLvl6_TileAttrTable:
        .byte   $00,$02,$02,$02,$02,$02,$02,$02 ; 8C0E
        .byte   $02,$02,$02,$02,$02,$02,$02,$02 ; 8C16
        .byte   $02,$02,$02,$02,$02,$02,$02,$02 ; 8C1E
        .byte   $02,$02,$02,$02,$02,$02,$02,$02 ; 8C26
        .byte   $00,$02,$02,$00,$02,$02,$02,$02 ; 8C2E
        .byte   $02,$02,$01,$01,$80,$80,$80,$02 ; 8C36
        .byte   $80,$80,$00,$00,$80,$83,$83,$83 ; 8C3E
        .byte   $80,$80,$80,$80,$80,$80,$81,$83 ; 8C46
        .byte   $83,$80,$83,$83,$83,$83,$83,$83 ; 8C4E
        .byte   $80,$80,$80,$80,$80,$80,$80,$80 ; 8C56
        .byte   $83,$83,$01,$01,$0D,$01,$01,$01 ; 8C5E
        .byte   $01,$01,$09,$01,$81,$81,$81,$89 ; 8C66
        .byte   $81,$81,$89,$81,$C0,$10,$10,$A3 ; 8C6E
; ----------------------------------------------------------------------------
TankLvl7_MapPointers:
        .addr   TankLvl7_BgPalette              ; 8C76
        .addr   TankLvl7_TileAttrTable          ; 8C78
        .addr   TankLvl7_TileDescTable          ; 8C7A
        .addr   TankLvl7_StructureDescTable     ; 8C7C
        .addr   TankLvl7_ChunkDescTable         ; 8C7E
        .addr   TankLvl7_MapData                ; 8C80
; ----------------------------------------------------------------------------
; 4 BgPalette records — the level's 4 background sub-palettes × 4 NES colour indices.
TankLvl7_BgPalette:
        .byte   $0F,$16,$26,$36 ; 8C82  Backdrop=$0F Colour1=$16 Colour2=$26 Colour3=$36
        .byte   $0F,$07,$16,$26 ; 8C86  Backdrop=$0F Colour1=$07 Colour2=$16 Colour3=$26
        .byte   $0F,$05,$15,$26 ; 8C8A  Backdrop=$0F Colour1=$05 Colour2=$15 Colour3=$26
        .byte   $0F,$08,$0A,$1A ; 8C8E  Backdrop=$0F Colour1=$08 Colour2=$0A Colour3=$1A
; 122 TileDesc records — the level's Tile definitions. Index space shared with
; TankLvl7_TileAttrTable, which has the matching 122 entries.
TankLvl7_TileDescTable:
        .byte   $00,$00,$00,$00 ; 8C92  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $10,$10,$10,$10 ; 8C96  TL=$10 TR=$10 BL=$10 BR=$10
        .byte   $2E,$3E,$2F,$3F ; 8C9A  TL=$2E TR=$3E BL=$2F BR=$3F
        .byte   $10,$3E,$10,$3F ; 8C9E  TL=$10 TR=$3E BL=$10 BR=$3F
        .byte   $0D,$1D,$0E,$1E ; 8CA2  TL=$0D TR=$1D BL=$0E BR=$1E
        .byte   $10,$1D,$10,$1E ; 8CA6  TL=$10 TR=$1D BL=$10 BR=$1E
        .byte   $2E,$3E,$0F,$1F ; 8CAA  TL=$2E TR=$3E BL=$0F BR=$1F
        .byte   $10,$3E,$10,$1F ; 8CAE  TL=$10 TR=$3E BL=$10 BR=$1F
        .byte   $0D,$1D,$0F,$1F ; 8CB2  TL=$0D TR=$1D BL=$0F BR=$1F
        .byte   $2E,$3E,$2F,$3F ; 8CB6  TL=$2E TR=$3E BL=$2F BR=$3F
        .byte   $10,$3E,$10,$3F ; 8CBA  TL=$10 TR=$3E BL=$10 BR=$3F
        .byte   $0D,$1D,$0E,$1E ; 8CBE  TL=$0D TR=$1D BL=$0E BR=$1E
        .byte   $10,$1D,$10,$1E ; 8CC2  TL=$10 TR=$1D BL=$10 BR=$1E
        .byte   $10,$3E,$10,$1F ; 8CC6  TL=$10 TR=$3E BL=$10 BR=$1F
        .byte   $2E,$3E,$0F,$1F ; 8CCA  TL=$2E TR=$3E BL=$0F BR=$1F
        .byte   $0D,$1D,$0F,$1F ; 8CCE  TL=$0D TR=$1D BL=$0F BR=$1F
        .byte   $2E,$3E,$2F,$3F ; 8CD2  TL=$2E TR=$3E BL=$2F BR=$3F
        .byte   $3E,$3E,$1F,$1F ; 8CD6  TL=$3E TR=$3E BL=$1F BR=$1F
        .byte   $0D,$1D,$0E,$1E ; 8CDA  TL=$0D TR=$1D BL=$0E BR=$1E
        .byte   $00,$00,$20,$30 ; 8CDE  TL=$00 TR=$00 BL=$20 BR=$30
        .byte   $09,$17,$0A,$18 ; 8CE2  TL=$09 TR=$17 BL=$0A BR=$18
        .byte   $3A,$4E,$3A,$4F ; 8CE6  TL=$3A TR=$4E BL=$3A BR=$4F
        .byte   $3A,$1A,$3A,$4F ; 8CEA  TL=$3A TR=$1A BL=$3A BR=$4F
        .byte   $3A,$4E,$3A,$4D ; 8CEE  TL=$3A TR=$4E BL=$3A BR=$4D
        .byte   $E0,$F0,$E1,$F3 ; 8CF2  TL=$E0 TR=$F0 BL=$E1 BR=$F3
        .byte   $00,$94,$85,$F3 ; 8CF6  TL=$00 TR=$94 BL=$85 BR=$F3
        .byte   $84,$94,$E1,$F3 ; 8CFA  TL=$84 TR=$94 BL=$E1 BR=$F3
        .byte   $84,$00,$E1,$95 ; 8CFE  TL=$84 TR=$00 BL=$E1 BR=$95
        .byte   $A4,$B4,$00,$B5 ; 8D02  TL=$A4 TR=$B4 BL=$00 BR=$B5
        .byte   $E0,$F0,$E4,$F4 ; 8D06  TL=$E0 TR=$F0 BL=$E4 BR=$F4
        .byte   $C4,$D4,$C5,$00 ; 8D0A  TL=$C4 TR=$D4 BL=$C5 BR=$00
        .byte   $80,$90,$83,$93 ; 8D0E  TL=$80 TR=$90 BL=$83 BR=$93
        .byte   $80,$90,$81,$91 ; 8D12  TL=$80 TR=$90 BL=$81 BR=$91
        .byte   $82,$92,$81,$91 ; 8D16  TL=$82 TR=$92 BL=$81 BR=$91
        .byte   $82,$92,$83,$93 ; 8D1A  TL=$82 TR=$92 BL=$83 BR=$93
        .byte   $00,$D5,$C6,$D6 ; 8D1E  TL=$00 TR=$D5 BL=$C6 BR=$D6
        .byte   $E5,$F5,$E6,$F6 ; 8D22  TL=$E5 TR=$F5 BL=$E6 BR=$F6
        .byte   $A5,$00,$A6,$B6 ; 8D26  TL=$A5 TR=$00 BL=$A6 BR=$B6
        .byte   $00,$00,$86,$96 ; 8D2A  TL=$00 TR=$00 BL=$86 BR=$96
        .byte   $E7,$F7,$E8,$F8 ; 8D2E  TL=$E7 TR=$F7 BL=$E8 BR=$F8
        .byte   $00,$8F,$7B,$F8 ; 8D32  TL=$00 TR=$8F BL=$7B BR=$F8
        .byte   $AF,$BF,$E8,$F8 ; 8D36  TL=$AF TR=$BF BL=$E8 BR=$F8
        .byte   $AF,$00,$E8,$BD ; 8D3A  TL=$AF TR=$00 BL=$E8 BR=$BD
        .byte   $00,$8F,$00,$9F ; 8D3E  TL=$00 TR=$8F BL=$00 BR=$9F
        .byte   $00,$F1,$00,$9F ; 8D42  TL=$00 TR=$F1 BL=$00 BR=$9F
        .byte   $AF,$00,$E8,$BE ; 8D46  TL=$AF TR=$00 BL=$E8 BR=$BE
        .byte   $E7,$AD,$E8,$AE ; 8D4A  TL=$E7 TR=$AD BL=$E8 BR=$AE
        .byte   $AB,$BB,$AC,$BC ; 8D4E  TL=$AB TR=$BB BL=$AC BR=$BC
        .byte   $6B,$7C,$6C,$BC ; 8D52  TL=$6B TR=$7C BL=$6C BR=$BC
        .byte   $4C,$7C,$AC,$BC ; 8D56  TL=$4C TR=$7C BL=$AC BR=$BC
        .byte   $5C,$BB,$6C,$BC ; 8D5A  TL=$5C TR=$BB BL=$6C BR=$BC
        .byte   $A2,$B2,$A3,$B3 ; 8D5E  TL=$A2 TR=$B2 BL=$A3 BR=$B3
        .byte   $C2,$D2,$C3,$D3 ; 8D62  TL=$C2 TR=$D2 BL=$C3 BR=$D3
        .byte   $E2,$F2,$E3,$F3 ; 8D66  TL=$E2 TR=$F2 BL=$E3 BR=$F3
        .byte   $0B,$1B,$0C,$1C ; 8D6A  TL=$0B TR=$1B BL=$0C BR=$1C
        .byte   $19,$29,$0C,$1C ; 8D6E  TL=$19 TR=$29 BL=$0C BR=$1C
        .byte   $05,$15,$06,$16 ; 8D72  TL=$05 TR=$15 BL=$06 BR=$16
        .byte   $25,$35,$26,$36 ; 8D76  TL=$25 TR=$35 BL=$26 BR=$36
        .byte   $07,$17,$08,$18 ; 8D7A  TL=$07 TR=$17 BL=$08 BR=$18
        .byte   $27,$37,$28,$38 ; 8D7E  TL=$27 TR=$37 BL=$28 BR=$38
        .byte   $C7,$D7,$C8,$D8 ; 8D82  TL=$C7 TR=$D7 BL=$C8 BR=$D8
        .byte   $2A,$2A,$2C,$3B ; 8D86  TL=$2A TR=$2A BL=$2C BR=$3B
        .byte   $2A,$2A,$2B,$3B ; 8D8A  TL=$2A TR=$2A BL=$2B BR=$3B
        .byte   $2A,$2A,$2B,$3C ; 8D8E  TL=$2A TR=$2A BL=$2B BR=$3C
        .byte   $A0,$B0,$A1,$B1 ; 8D92  TL=$A0 TR=$B0 BL=$A1 BR=$B1
        .byte   $C0,$B0,$C1,$B1 ; 8D96  TL=$C0 TR=$B0 BL=$C1 BR=$B1
        .byte   $C0,$D0,$C1,$D1 ; 8D9A  TL=$C0 TR=$D0 BL=$C1 BR=$D1
        .byte   $E9,$11,$02,$12 ; 8D9E  TL=$E9 TR=$11 BL=$02 BR=$12
        .byte   $21,$31,$22,$32 ; 8DA2  TL=$21 TR=$31 BL=$22 BR=$32
        .byte   $03,$13,$04,$14 ; 8DA6  TL=$03 TR=$13 BL=$04 BR=$14
        .byte   $23,$33,$24,$34 ; 8DAA  TL=$23 TR=$33 BL=$24 BR=$34
        .byte   $8B,$9B,$8C,$9C ; 8DAE  TL=$8B TR=$9B BL=$8C BR=$9C
        .byte   $8D,$9D,$8E,$9E ; 8DB2  TL=$8D TR=$9D BL=$8E BR=$9E
        .byte   $8A,$9A,$41,$51 ; 8DB6  TL=$8A TR=$9A BL=$41 BR=$51
        .byte   $AA,$BA,$61,$71 ; 8DBA  TL=$AA TR=$BA BL=$61 BR=$71
        .byte   $40,$50,$41,$51 ; 8DBE  TL=$40 TR=$50 BL=$41 BR=$51
        .byte   $60,$70,$61,$71 ; 8DC2  TL=$60 TR=$70 BL=$61 BR=$71
        .byte   $40,$50,$89,$99 ; 8DC6  TL=$40 TR=$50 BL=$89 BR=$99
        .byte   $60,$70,$A9,$B9 ; 8DCA  TL=$60 TR=$70 BL=$A9 BR=$B9
        .byte   $87,$97,$88,$98 ; 8DCE  TL=$87 TR=$97 BL=$88 BR=$98
        .byte   $87,$9A,$88,$51 ; 8DD2  TL=$87 TR=$9A BL=$88 BR=$51
        .byte   $AA,$97,$61,$98 ; 8DD6  TL=$AA TR=$97 BL=$61 BR=$98
        .byte   $87,$50,$88,$51 ; 8DDA  TL=$87 TR=$50 BL=$88 BR=$51
        .byte   $60,$97,$61,$98 ; 8DDE  TL=$60 TR=$97 BL=$61 BR=$98
        .byte   $46,$56,$47,$57 ; 8DE2  TL=$46 TR=$56 BL=$47 BR=$57
        .byte   $66,$76,$67,$77 ; 8DE6  TL=$66 TR=$76 BL=$67 BR=$77
        .byte   $48,$58,$49,$58 ; 8DEA  TL=$48 TR=$58 BL=$49 BR=$58
        .byte   $68,$77,$68,$78 ; 8DEE  TL=$68 TR=$77 BL=$68 BR=$78
        .byte   $69,$4A,$59,$4B ; 8DF2  TL=$69 TR=$4A BL=$59 BR=$4B
        .byte   $5A,$6A,$00,$5B ; 8DF6  TL=$5A TR=$6A BL=$00 BR=$5B
        .byte   $4A,$5A,$4B,$00 ; 8DFA  TL=$4A TR=$5A BL=$4B BR=$00
        .byte   $6A,$79,$5B,$39 ; 8DFE  TL=$6A TR=$79 BL=$5B BR=$39
        .byte   $59,$4B,$59,$4B ; 8E02  TL=$59 TR=$4B BL=$59 BR=$4B
        .byte   $00,$5B,$00,$5B ; 8E06  TL=$00 TR=$5B BL=$00 BR=$5B
        .byte   $4B,$00,$4B,$00 ; 8E0A  TL=$4B TR=$00 BL=$4B BR=$00
        .byte   $5B,$39,$5B,$39 ; 8E0E  TL=$5B TR=$39 BL=$5B BR=$39
        .byte   $7A,$5D,$5F,$5E ; 8E12  TL=$7A TR=$5D BL=$5F BR=$5E
        .byte   $5D,$6D,$5E,$6E ; 8E16  TL=$5D TR=$6D BL=$5E BR=$6E
        .byte   $6D,$7D,$6E,$7E ; 8E1A  TL=$6D TR=$7D BL=$6E BR=$7E
        .byte   $6F,$00,$6F,$00 ; 8E1E  TL=$6F TR=$00 BL=$6F BR=$00
        .byte   $00,$7F,$00,$7F ; 8E22  TL=$00 TR=$7F BL=$00 BR=$7F
        .byte   $42,$52,$43,$53 ; 8E26  TL=$42 TR=$52 BL=$43 BR=$53
        .byte   $62,$72,$63,$73 ; 8E2A  TL=$62 TR=$72 BL=$63 BR=$73
        .byte   $44,$54,$45,$55 ; 8E2E  TL=$44 TR=$54 BL=$45 BR=$55
        .byte   $64,$74,$65,$75 ; 8E32  TL=$64 TR=$74 BL=$65 BR=$75
        .byte   $A7,$F0,$A8,$F3 ; 8E36  TL=$A7 TR=$F0 BL=$A8 BR=$F3
        .byte   $E0,$F0,$E1,$F3 ; 8E3A  TL=$E0 TR=$F0 BL=$E1 BR=$F3
        .byte   $E0,$B7,$E1,$B8 ; 8E3E  TL=$E0 TR=$B7 BL=$E1 BR=$B8
        .byte   $A4,$B4,$00,$B5 ; 8E42  TL=$A4 TR=$B4 BL=$00 BR=$B5
        .byte   $E0,$F0,$E4,$F4 ; 8E46  TL=$E0 TR=$F0 BL=$E4 BR=$F4
        .byte   $C4,$D4,$C5,$00 ; 8E4A  TL=$C4 TR=$D4 BL=$C5 BR=$00
        .byte   $C9,$D9,$C9,$D9 ; 8E4E  TL=$C9 TR=$D9 BL=$C9 BR=$D9
        .byte   $FD,$00,$FD,$00 ; 8E52  TL=$FD TR=$00 BL=$FD BR=$00
        .byte   $CE,$DE,$CF,$DF ; 8E56  TL=$CE TR=$DE BL=$CF BR=$DF
        .byte   $EE,$DE,$EF,$DF ; 8E5A  TL=$EE TR=$DE BL=$EF BR=$DF
        .byte   $EE,$FE,$EF,$FF ; 8E5E  TL=$EE TR=$FE BL=$EF BR=$FF
        .byte   $00,$00,$00,$00 ; 8E62  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$FD,$00,$FD ; 8E66  TL=$00 TR=$FD BL=$00 BR=$FD
        .byte   $00,$00,$00,$00 ; 8E6A  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $CA,$DA,$E1,$F3 ; 8E6E  TL=$CA TR=$DA BL=$E1 BR=$F3
        .byte   $CB,$F0,$CC,$F3 ; 8E72  TL=$CB TR=$F0 BL=$CC BR=$F3
        .byte   $E0,$DB,$E1,$DC ; 8E76  TL=$E0 TR=$DB BL=$E1 BR=$DC
; 177 StructureDesc records — the level's Structure definitions, each a 2×2 quad of Tiles.
TankLvl7_StructureDescTable:
        .byte   $4F,$52,$31,$4B ; 8E7A  TL=$4F TR=$52 BL=$31 BR=$4B
        .byte   $3C,$3C,$3C,$3C ; 8E7E  TL=$3C TR=$3C BL=$3C BR=$3C
        .byte   $38,$3C,$37,$3C ; 8E82  TL=$38 TR=$3C BL=$37 BR=$3C
        .byte   $3C,$39,$3C,$3B ; 8E86  TL=$3C TR=$39 BL=$3C BR=$3B
        .byte   $38,$39,$37,$3B ; 8E8A  TL=$38 TR=$39 BL=$37 BR=$3B
        .byte   $38,$39,$3A,$3B ; 8E8E  TL=$38 TR=$39 BL=$3A BR=$3B
        .byte   $4C,$32,$4C,$32 ; 8E92  TL=$4C TR=$32 BL=$4C BR=$32
        .byte   $2F,$2F,$2F,$2F ; 8E96  TL=$2F TR=$2F BL=$2F BR=$2F
        .byte   $2F,$4B,$2F,$4B ; 8E9A  TL=$2F TR=$4B BL=$2F BR=$4B
        .byte   $53,$4F,$4C,$30 ; 8E9E  TL=$53 TR=$4F BL=$4C BR=$30
        .byte   $4F,$4F,$31,$31 ; 8EA2  TL=$4F TR=$4F BL=$31 BR=$31
        .byte   $36,$3C,$36,$3C ; 8EA6  TL=$36 TR=$3C BL=$36 BR=$3C
        .byte   $3C,$04,$3C,$02 ; 8EAA  TL=$3C TR=$04 BL=$3C BR=$02
        .byte   $3C,$02,$3C,$02 ; 8EAE  TL=$3C TR=$02 BL=$3C BR=$02
        .byte   $36,$05,$36,$03 ; 8EB2  TL=$36 TR=$05 BL=$36 BR=$03
        .byte   $04,$04,$02,$02 ; 8EB6  TL=$04 TR=$04 BL=$02 BR=$02
        .byte   $36,$03,$36,$03 ; 8EBA  TL=$36 TR=$03 BL=$36 BR=$03
        .byte   $02,$02,$02,$02 ; 8EBE  TL=$02 TR=$02 BL=$02 BR=$02
        .byte   $3C,$71,$3C,$70 ; 8EC2  TL=$3C TR=$71 BL=$3C BR=$70
        .byte   $43,$44,$45,$46 ; 8EC6  TL=$43 TR=$44 BL=$45 BR=$46
        .byte   $72,$73,$74,$75 ; 8ECA  TL=$72 TR=$73 BL=$74 BR=$75
        .byte   $02,$02,$06,$06 ; 8ECE  TL=$02 TR=$02 BL=$06 BR=$06
        .byte   $36,$03,$36,$07 ; 8ED2  TL=$36 TR=$03 BL=$36 BR=$07
        .byte   $36,$71,$36,$70 ; 8ED6  TL=$36 TR=$71 BL=$36 BR=$70
        .byte   $04,$04,$06,$06 ; 8EDA  TL=$04 TR=$04 BL=$06 BR=$06
        .byte   $65,$66,$67,$68 ; 8EDE  TL=$65 TR=$66 BL=$67 BR=$68
        .byte   $3C,$0B,$3C,$09 ; 8EE2  TL=$3C TR=$0B BL=$3C BR=$09
        .byte   $3C,$09,$3C,$09 ; 8EE6  TL=$3C TR=$09 BL=$3C BR=$09
        .byte   $36,$0C,$36,$0A ; 8EEA  TL=$36 TR=$0C BL=$36 BR=$0A
        .byte   $0B,$0B,$09,$09 ; 8EEE  TL=$0B TR=$0B BL=$09 BR=$09
        .byte   $36,$0A,$36,$0A ; 8EF2  TL=$36 TR=$0A BL=$36 BR=$0A
        .byte   $09,$09,$09,$09 ; 8EF6  TL=$09 TR=$09 BL=$09 BR=$09
        .byte   $09,$09,$0E,$0E ; 8EFA  TL=$09 TR=$09 BL=$0E BR=$0E
        .byte   $36,$0A,$36,$0D ; 8EFE  TL=$36 TR=$0A BL=$36 BR=$0D
        .byte   $0B,$0B,$0E,$0E ; 8F02  TL=$0B TR=$0B BL=$0E BR=$0E
        .byte   $00,$00,$00,$00 ; 8F06  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $3C,$39,$3C,$4C ; 8F0A  TL=$3C TR=$39 BL=$3C BR=$4C
        .byte   $38,$39,$14,$3B ; 8F0E  TL=$38 TR=$39 BL=$14 BR=$3B
        .byte   $38,$3C,$4B,$3C ; 8F12  TL=$38 TR=$3C BL=$4B BR=$3C
        .byte   $3C,$4C,$3C,$4C ; 8F16  TL=$3C TR=$4C BL=$3C BR=$4C
        .byte   $12,$12,$10,$10 ; 8F1A  TL=$12 TR=$12 BL=$10 BR=$10
        .byte   $16,$12,$15,$10 ; 8F1E  TL=$16 TR=$12 BL=$15 BR=$10
        .byte   $10,$10,$10,$10 ; 8F22  TL=$10 TR=$10 BL=$10 BR=$10
        .byte   $15,$10,$15,$10 ; 8F26  TL=$15 TR=$10 BL=$15 BR=$10
        .byte   $12,$12,$11,$11 ; 8F2A  TL=$12 TR=$12 BL=$11 BR=$11
        .byte   $54,$55,$56,$57 ; 8F2E  TL=$54 TR=$55 BL=$56 BR=$57
        .byte   $3D,$3E,$12,$12 ; 8F32  TL=$3D TR=$3E BL=$12 BR=$12
        .byte   $3E,$3F,$16,$12 ; 8F36  TL=$3E TR=$3F BL=$16 BR=$12
        .byte   $4B,$3C,$4B,$3C ; 8F3A  TL=$4B TR=$3C BL=$4B BR=$3C
        .byte   $6A,$6A,$6A,$6A ; 8F3E  TL=$6A TR=$6A BL=$6A BR=$6A
        .byte   $6A,$6A,$6A,$6B ; 8F42  TL=$6A TR=$6A BL=$6A BR=$6B
        .byte   $6A,$6A,$6A,$6D ; 8F46  TL=$6A TR=$6A BL=$6A BR=$6D
        .byte   $6A,$6A,$6D,$6A ; 8F4A  TL=$6A TR=$6A BL=$6D BR=$6A
        .byte   $6E,$00,$00,$28 ; 8F4E  TL=$6E TR=$00 BL=$00 BR=$28
        .byte   $00,$6C,$29,$2D ; 8F52  TL=$00 TR=$6C BL=$29 BR=$2D
        .byte   $6A,$6A,$69,$6A ; 8F56  TL=$6A TR=$6A BL=$69 BR=$6A
        .byte   $6A,$6D,$6B,$28 ; 8F5A  TL=$6A TR=$6D BL=$6B BR=$28
        .byte   $6D,$6A,$2D,$69 ; 8F5E  TL=$6D TR=$6A BL=$2D BR=$69
        .byte   $3C,$3C,$6A,$6A ; 8F62  TL=$3C TR=$3C BL=$6A BR=$6A
        .byte   $6E,$00,$28,$29 ; 8F66  TL=$6E TR=$00 BL=$28 BR=$29
        .byte   $6B,$28,$3C,$3C ; 8F6A  TL=$6B TR=$28 BL=$3C BR=$3C
        .byte   $2D,$69,$3C,$3C ; 8F6E  TL=$2D TR=$69 BL=$3C BR=$3C
        .byte   $6D,$6D,$29,$29 ; 8F72  TL=$6D TR=$6D BL=$29 BR=$29
        .byte   $6D,$71,$29,$70 ; 8F76  TL=$6D TR=$71 BL=$29 BR=$70
        .byte   $3C,$3E,$3C,$4C ; 8F7A  TL=$3C TR=$3E BL=$3C BR=$4C
        .byte   $60,$61,$63,$76 ; 8F7E  TL=$60 TR=$61 BL=$63 BR=$76
        .byte   $62,$10,$64,$11 ; 8F82  TL=$62 TR=$10 BL=$64 BR=$11
        .byte   $10,$10,$11,$11 ; 8F86  TL=$10 TR=$10 BL=$11 BR=$11
        .byte   $15,$10,$17,$11 ; 8F8A  TL=$15 TR=$10 BL=$17 BR=$11
        .byte   $6A,$6B,$6A,$6B ; 8F8E  TL=$6A TR=$6B BL=$6A BR=$6B
        .byte   $2B,$27,$2C,$27 ; 8F92  TL=$2B TR=$27 BL=$2C BR=$27
        .byte   $27,$2E,$27,$2E ; 8F96  TL=$27 TR=$2E BL=$27 BR=$2E
        .byte   $69,$6A,$69,$6A ; 8F9A  TL=$69 TR=$6A BL=$69 BR=$6A
        .byte   $5A,$5B,$5E,$5F ; 8F9E  TL=$5A TR=$5B BL=$5E BR=$5F
        .byte   $58,$59,$5C,$5D ; 8FA2  TL=$58 TR=$59 BL=$5C BR=$5D
        .byte   $6A,$6E,$6B,$00 ; 8FA6  TL=$6A TR=$6E BL=$6B BR=$00
        .byte   $6A,$6A,$6D,$6D ; 8FAA  TL=$6A TR=$6A BL=$6D BR=$6D
        .byte   $00,$00,$28,$29 ; 8FAE  TL=$00 TR=$00 BL=$28 BR=$29
        .byte   $3E,$3F,$12,$12 ; 8FB2  TL=$3E TR=$3F BL=$12 BR=$12
        .byte   $47,$47,$48,$48 ; 8FB6  TL=$47 TR=$47 BL=$48 BR=$48
        .byte   $4B,$3C,$3C,$3C ; 8FBA  TL=$4B TR=$3C BL=$3C BR=$3C
        .byte   $3C,$4C,$3C,$3C ; 8FBE  TL=$3C TR=$4C BL=$3C BR=$3C
        .byte   $10,$10,$3C,$10 ; 8FC2  TL=$10 TR=$10 BL=$3C BR=$10
        .byte   $20,$00,$21,$00 ; 8FC6  TL=$20 TR=$00 BL=$21 BR=$00
        .byte   $00,$00,$19,$1A ; 8FCA  TL=$00 TR=$00 BL=$19 BR=$1A
        .byte   $22,$00,$1B,$00 ; 8FCE  TL=$22 TR=$00 BL=$1B BR=$00
        .byte   $21,$00,$21,$00 ; 8FD2  TL=$21 TR=$00 BL=$21 BR=$00
        .byte   $20,$00,$22,$00 ; 8FD6  TL=$20 TR=$00 BL=$22 BR=$00
        .byte   $00,$19,$19,$18 ; 8FDA  TL=$00 TR=$19 BL=$19 BR=$18
        .byte   $1A,$1A,$18,$3C ; 8FDE  TL=$1A TR=$1A BL=$18 BR=$3C
        .byte   $41,$3C,$34,$3C ; 8FE2  TL=$41 TR=$3C BL=$34 BR=$3C
        .byte   $3C,$3C,$3C,$4C ; 8FE6  TL=$3C TR=$3C BL=$3C BR=$4C
        .byte   $15,$3C,$5A,$5B ; 8FEA  TL=$15 TR=$3C BL=$5A BR=$5B
        .byte   $11,$11,$3D,$3E ; 8FEE  TL=$11 TR=$11 BL=$3D BR=$3E
        .byte   $5E,$5F,$3E,$3F ; 8FF2  TL=$5E TR=$5F BL=$3E BR=$3F
        .byte   $3C,$10,$58,$59 ; 8FF6  TL=$3C TR=$10 BL=$58 BR=$59
        .byte   $5C,$5D,$3D,$3E ; 8FFA  TL=$5C TR=$5D BL=$3D BR=$3E
        .byte   $17,$11,$3E,$3F ; 8FFE  TL=$17 TR=$11 BL=$3E BR=$3F
        .byte   $10,$71,$11,$70 ; 9002  TL=$10 TR=$71 BL=$11 BR=$70
        .byte   $3C,$41,$3C,$34 ; 9006  TL=$3C TR=$41 BL=$3C BR=$34
        .byte   $18,$18,$18,$18 ; 900A  TL=$18 TR=$18 BL=$18 BR=$18
        .byte   $18,$1A,$18,$18 ; 900E  TL=$18 TR=$1A BL=$18 BR=$18
        .byte   $41,$41,$34,$34 ; 9012  TL=$41 TR=$41 BL=$34 BR=$34
        .byte   $41,$42,$34,$35 ; 9016  TL=$41 TR=$42 BL=$34 BR=$35
        .byte   $1B,$00,$18,$1A ; 901A  TL=$1B TR=$00 BL=$18 BR=$1A
        .byte   $22,$19,$1A,$18 ; 901E  TL=$22 TR=$19 BL=$1A BR=$18
        .byte   $78,$77,$6C,$6D ; 9022  TL=$78 TR=$77 BL=$6C BR=$6D
        .byte   $77,$79,$6D,$6E ; 9026  TL=$77 TR=$79 BL=$6D BR=$6E
        .byte   $40,$41,$33,$34 ; 902A  TL=$40 TR=$41 BL=$33 BR=$34
        .byte   $3D,$3E,$11,$11 ; 902E  TL=$3D TR=$3E BL=$11 BR=$11
        .byte   $3E,$3F,$11,$11 ; 9032  TL=$3E TR=$3F BL=$11 BR=$11
        .byte   $00,$71,$28,$70 ; 9036  TL=$00 TR=$71 BL=$28 BR=$70
        .byte   $1A,$1A,$18,$18 ; 903A  TL=$1A TR=$1A BL=$18 BR=$18
        .byte   $1A,$18,$18,$18 ; 903E  TL=$1A TR=$18 BL=$18 BR=$18
        .byte   $18,$1D,$1E,$00 ; 9042  TL=$18 TR=$1D BL=$1E BR=$00
        .byte   $1D,$18,$20,$1C ; 9046  TL=$1D TR=$18 BL=$20 BR=$1C
        .byte   $1F,$19,$1A,$18 ; 904A  TL=$1F TR=$19 BL=$1A BR=$18
        .byte   $3C,$43,$3C,$46 ; 904E  TL=$3C TR=$43 BL=$3C BR=$46
        .byte   $44,$3C,$45,$46 ; 9052  TL=$44 TR=$3C BL=$45 BR=$46
        .byte   $3C,$44,$45,$46 ; 9056  TL=$3C TR=$44 BL=$45 BR=$46
        .byte   $44,$3C,$45,$3C ; 905A  TL=$44 TR=$3C BL=$45 BR=$3C
        .byte   $20,$00,$21,$3C ; 905E  TL=$20 TR=$00 BL=$21 BR=$3C
        .byte   $1B,$19,$3C,$18 ; 9062  TL=$1B TR=$19 BL=$3C BR=$18
        .byte   $1B,$19,$18,$18 ; 9066  TL=$1B TR=$19 BL=$18 BR=$18
        .byte   $18,$18,$1C,$1D ; 906A  TL=$18 TR=$18 BL=$1C BR=$1D
        .byte   $18,$1D,$1E,$1F ; 906E  TL=$18 TR=$1D BL=$1E BR=$1F
        .byte   $1B,$19,$18,$3C ; 9072  TL=$1B TR=$19 BL=$18 BR=$3C
        .byte   $18,$18,$3C,$18 ; 9076  TL=$18 TR=$18 BL=$3C BR=$18
        .byte   $18,$18,$18,$1D ; 907A  TL=$18 TR=$18 BL=$18 BR=$1D
        .byte   $18,$1A,$1D,$18 ; 907E  TL=$18 TR=$1A BL=$1D BR=$18
        .byte   $1A,$1A,$1D,$1D ; 9082  TL=$1A TR=$1A BL=$1D BR=$1D
        .byte   $1A,$18,$1D,$1D ; 9086  TL=$1A TR=$18 BL=$1D BR=$1D
        .byte   $18,$1A,$1D,$1D ; 908A  TL=$18 TR=$1A BL=$1D BR=$1D
        .byte   $18,$71,$1E,$70 ; 908E  TL=$18 TR=$71 BL=$1E BR=$70
        .byte   $18,$18,$18,$3C ; 9092  TL=$18 TR=$18 BL=$18 BR=$3C
        .byte   $00,$20,$23,$24 ; 9096  TL=$00 TR=$20 BL=$23 BR=$24
        .byte   $00,$00,$25,$26 ; 909A  TL=$00 TR=$00 BL=$25 BR=$26
        .byte   $00,$00,$26,$23 ; 909E  TL=$00 TR=$00 BL=$26 BR=$23
        .byte   $21,$00,$24,$25 ; 90A2  TL=$21 TR=$00 BL=$24 BR=$25
        .byte   $1C,$1D,$26,$23 ; 90A6  TL=$1C TR=$1D BL=$26 BR=$23
        .byte   $1D,$1E,$20,$25 ; 90AA  TL=$1D TR=$1E BL=$20 BR=$25
        .byte   $20,$00,$24,$25 ; 90AE  TL=$20 TR=$00 BL=$24 BR=$25
        .byte   $43,$3C,$45,$3C ; 90B2  TL=$43 TR=$3C BL=$45 BR=$3C
        .byte   $1C,$1D,$00,$00 ; 90B6  TL=$1C TR=$1D BL=$00 BR=$00
        .byte   $1D,$18,$1F,$1C ; 90BA  TL=$1D TR=$18 BL=$1F BR=$1C
        .byte   $19,$1A,$18,$18 ; 90BE  TL=$19 TR=$1A BL=$18 BR=$18
        .byte   $18,$18,$18,$1E ; 90C2  TL=$18 TR=$18 BL=$18 BR=$1E
        .byte   $1D,$1E,$20,$00 ; 90C6  TL=$1D TR=$1E BL=$20 BR=$00
        .byte   $18,$1B,$18,$18 ; 90CA  TL=$18 TR=$1B BL=$18 BR=$18
        .byte   $22,$00,$1A,$1B ; 90CE  TL=$22 TR=$00 BL=$1A BR=$1B
        .byte   $4C,$32,$53,$4F ; 90D2  TL=$4C TR=$32 BL=$53 BR=$4F
        .byte   $2F,$2F,$4F,$4F ; 90D6  TL=$2F TR=$2F BL=$4F BR=$4F
        .byte   $2F,$4B,$4F,$52 ; 90DA  TL=$2F TR=$4B BL=$4F BR=$52
        .byte   $3C,$44,$3C,$46 ; 90DE  TL=$3C TR=$44 BL=$3C BR=$46
        .byte   $43,$3C,$45,$46 ; 90E2  TL=$43 TR=$3C BL=$45 BR=$46
        .byte   $4C,$30,$4C,$32 ; 90E6  TL=$4C TR=$30 BL=$4C BR=$32
        .byte   $4C,$32,$3C,$3C ; 90EA  TL=$4C TR=$32 BL=$3C BR=$3C
        .byte   $31,$31,$2F,$2F ; 90EE  TL=$31 TR=$31 BL=$2F BR=$2F
        .byte   $2F,$2F,$3C,$32 ; 90F2  TL=$2F TR=$2F BL=$3C BR=$32
        .byte   $31,$4B,$2F,$4B ; 90F6  TL=$31 TR=$4B BL=$2F BR=$4B
        .byte   $2F,$4B,$2F,$4D ; 90FA  TL=$2F TR=$4B BL=$2F BR=$4D
        .byte   $53,$4F,$4E,$30 ; 90FE  TL=$53 TR=$4F BL=$4E BR=$30
        .byte   $31,$4B,$2F,$4D ; 9102  TL=$31 TR=$4B BL=$2F BR=$4D
        .byte   $2F,$31,$2F,$2F ; 9106  TL=$2F TR=$31 BL=$2F BR=$2F
        .byte   $31,$2F,$2F,$2F ; 910A  TL=$31 TR=$2F BL=$2F BR=$2F
        .byte   $4C,$32,$4E,$32 ; 910E  TL=$4C TR=$32 BL=$4E BR=$32
        .byte   $4F,$52,$31,$4D ; 9112  TL=$4F TR=$52 BL=$31 BR=$4D
        .byte   $1D,$18,$00,$1C ; 9116  TL=$1D TR=$18 BL=$00 BR=$1C
        .byte   $32,$2F,$32,$2F ; 911A  TL=$32 TR=$2F BL=$32 BR=$2F
        .byte   $4F,$50,$31,$4B ; 911E  TL=$4F TR=$50 BL=$31 BR=$4B
        .byte   $4A,$32,$4C,$32 ; 9122  TL=$4A TR=$32 BL=$4C BR=$32
        .byte   $2F,$49,$2F,$4B ; 9126  TL=$2F TR=$49 BL=$2F BR=$4B
        .byte   $4C,$71,$4C,$70 ; 912A  TL=$4C TR=$71 BL=$4C BR=$70
        .byte   $51,$4F,$4C,$30 ; 912E  TL=$51 TR=$4F BL=$4C BR=$30
        .byte   $4C,$32,$3C,$4C ; 9132  TL=$4C TR=$32 BL=$3C BR=$4C
        .byte   $6A,$28,$3C,$3C ; 9136  TL=$6A TR=$28 BL=$3C BR=$3C
        .byte   $2D,$6A,$3C,$3C ; 913A  TL=$2D TR=$6A BL=$3C BR=$3C
; 206 ChunkDesc records — the level's Chunk definitions, each a 2×2 quad of Structures. These are
; the indices TankLvl7_MapData's grid holds.
TankLvl7_ChunkDescTable:
        .byte   $00,$01,$02,$03 ; 913E  TL=$00 TR=$01 BL=$02 BR=$03
        .byte   $01,$01,$04,$05 ; 9142  TL=$01 TR=$01 BL=$04 BR=$05
        .byte   $01,$06,$02,$03 ; 9146  TL=$01 TR=$06 BL=$02 BR=$03
        .byte   $07,$07,$04,$05 ; 914A  TL=$07 TR=$07 BL=$04 BR=$05
        .byte   $08,$06,$04,$05 ; 914E  TL=$08 TR=$06 BL=$04 BR=$05
        .byte   $08,$09,$04,$05 ; 9152  TL=$08 TR=$09 BL=$04 BR=$05
        .byte   $0A,$0A,$04,$05 ; 9156  TL=$0A TR=$0A BL=$04 BR=$05
        .byte   $0B,$0C,$0B,$0D ; 915A  TL=$0B TR=$0C BL=$0B BR=$0D
        .byte   $0E,$0F,$10,$11 ; 915E  TL=$0E TR=$0F BL=$10 BR=$11
        .byte   $0B,$12,$13,$13 ; 9162  TL=$0B TR=$12 BL=$13 BR=$13
        .byte   $14,$15,$13,$13 ; 9166  TL=$14 TR=$15 BL=$13 BR=$13
        .byte   $16,$15,$13,$13 ; 916A  TL=$16 TR=$15 BL=$13 BR=$13
        .byte   $17,$14,$13,$13 ; 916E  TL=$17 TR=$14 BL=$13 BR=$13
        .byte   $18,$18,$19,$19 ; 9172  TL=$18 TR=$18 BL=$19 BR=$19
        .byte   $13,$13,$02,$03 ; 9176  TL=$13 TR=$13 BL=$02 BR=$03
        .byte   $13,$13,$04,$05 ; 917A  TL=$13 TR=$13 BL=$04 BR=$05
        .byte   $0B,$1A,$0B,$1B ; 917E  TL=$0B TR=$1A BL=$0B BR=$1B
        .byte   $1C,$1D,$1E,$1F ; 9182  TL=$1C TR=$1D BL=$1E BR=$1F
        .byte   $14,$20,$13,$13 ; 9186  TL=$14 TR=$20 BL=$13 BR=$13
        .byte   $21,$20,$13,$13 ; 918A  TL=$21 TR=$20 BL=$13 BR=$13
        .byte   $22,$22,$19,$19 ; 918E  TL=$22 TR=$22 BL=$19 BR=$19
        .byte   $13,$13,$23,$24 ; 9192  TL=$13 TR=$13 BL=$23 BR=$24
        .byte   $13,$13,$05,$25 ; 9196  TL=$13 TR=$13 BL=$05 BR=$25
        .byte   $13,$13,$26,$01 ; 919A  TL=$13 TR=$13 BL=$26 BR=$01
        .byte   $13,$13,$01,$01 ; 919E  TL=$13 TR=$13 BL=$01 BR=$01
        .byte   $23,$27,$23,$27 ; 91A2  TL=$23 TR=$27 BL=$23 BR=$27
        .byte   $28,$29,$2A,$2B ; 91A6  TL=$28 TR=$29 BL=$2A BR=$2B
        .byte   $2C,$2D,$2E,$2F ; 91AA  TL=$2C TR=$2D BL=$2E BR=$2F
        .byte   $30,$01,$30,$01 ; 91AE  TL=$30 TR=$01 BL=$30 BR=$01
        .byte   $31,$31,$31,$31 ; 91B2  TL=$31 TR=$31 BL=$31 BR=$31
        .byte   $31,$31,$31,$32 ; 91B6  TL=$31 TR=$31 BL=$31 BR=$32
        .byte   $33,$34,$35,$36 ; 91BA  TL=$33 TR=$34 BL=$35 BR=$36
        .byte   $31,$31,$37,$31 ; 91BE  TL=$31 TR=$31 BL=$37 BR=$31
        .byte   $38,$39,$3A,$3A ; 91C2  TL=$38 TR=$39 BL=$3A BR=$3A
        .byte   $01,$01,$01,$01 ; 91C6  TL=$01 TR=$01 BL=$01 BR=$01
        .byte   $33,$34,$3B,$36 ; 91CA  TL=$33 TR=$34 BL=$3B BR=$36
        .byte   $33,$34,$3C,$3D ; 91CE  TL=$33 TR=$34 BL=$3C BR=$3D
        .byte   $38,$3E,$3A,$3A ; 91D2  TL=$38 TR=$3E BL=$3A BR=$3A
        .byte   $3F,$14,$3A,$3A ; 91D6  TL=$3F TR=$14 BL=$3A BR=$3A
        .byte   $01,$23,$01,$23 ; 91DA  TL=$01 TR=$23 BL=$01 BR=$23
        .byte   $23,$23,$23,$23 ; 91DE  TL=$23 TR=$23 BL=$23 BR=$23
        .byte   $23,$27,$23,$40 ; 91E2  TL=$23 TR=$27 BL=$23 BR=$40
        .byte   $41,$42,$2E,$2F ; 91E6  TL=$41 TR=$42 BL=$2E BR=$2F
        .byte   $43,$44,$2E,$2F ; 91EA  TL=$43 TR=$44 BL=$2E BR=$2F
        .byte   $2A,$2B,$2A,$2B ; 91EE  TL=$2A TR=$2B BL=$2A BR=$2B
        .byte   $31,$45,$37,$31 ; 91F2  TL=$31 TR=$45 BL=$37 BR=$31
        .byte   $46,$47,$3A,$3A ; 91F6  TL=$46 TR=$47 BL=$3A BR=$3A
        .byte   $48,$31,$31,$32 ; 91FA  TL=$48 TR=$31 BL=$31 BR=$32
        .byte   $46,$49,$3A,$3A ; 91FE  TL=$46 TR=$49 BL=$3A BR=$3A
        .byte   $4A,$47,$3A,$3A ; 9202  TL=$4A TR=$47 BL=$3A BR=$3A
        .byte   $48,$31,$31,$31 ; 9206  TL=$48 TR=$31 BL=$31 BR=$31
        .byte   $14,$47,$3A,$3A ; 920A  TL=$14 TR=$47 BL=$3A BR=$3A
        .byte   $48,$31,$31,$4B ; 920E  TL=$48 TR=$31 BL=$31 BR=$4B
        .byte   $4C,$34,$4D,$36 ; 9212  TL=$4C TR=$34 BL=$4D BR=$36
        .byte   $31,$45,$31,$31 ; 9216  TL=$31 TR=$45 BL=$31 BR=$31
        .byte   $23,$27,$30,$27 ; 921A  TL=$23 TR=$27 BL=$30 BR=$27
        .byte   $43,$44,$2E,$4E ; 921E  TL=$43 TR=$44 BL=$2E BR=$4E
        .byte   $30,$01,$30,$24 ; 9222  TL=$30 TR=$01 BL=$30 BR=$24
        .byte   $01,$01,$05,$25 ; 9226  TL=$01 TR=$01 BL=$05 BR=$25
        .byte   $01,$01,$26,$01 ; 922A  TL=$01 TR=$01 BL=$26 BR=$01
        .byte   $01,$23,$01,$27 ; 922E  TL=$01 TR=$23 BL=$01 BR=$27
        .byte   $23,$23,$4F,$4F ; 9232  TL=$23 TR=$23 BL=$4F BR=$4F
        .byte   $30,$27,$50,$51 ; 9236  TL=$30 TR=$27 BL=$50 BR=$51
        .byte   $2A,$2B,$52,$2B ; 923A  TL=$2A TR=$2B BL=$52 BR=$2B
        .byte   $2A,$2A,$2A,$2A ; 923E  TL=$2A TR=$2A BL=$2A BR=$2A
        .byte   $30,$27,$30,$27 ; 9242  TL=$30 TR=$27 BL=$30 BR=$27
        .byte   $28,$29,$43,$44 ; 9246  TL=$28 TR=$29 BL=$43 BR=$44
        .byte   $01,$27,$01,$27 ; 924A  TL=$01 TR=$27 BL=$01 BR=$27
        .byte   $23,$53,$54,$55 ; 924E  TL=$23 TR=$53 BL=$54 BR=$55
        .byte   $23,$53,$23,$56 ; 9252  TL=$23 TR=$53 BL=$23 BR=$56
        .byte   $23,$57,$58,$59 ; 9256  TL=$23 TR=$57 BL=$58 BR=$59
        .byte   $01,$01,$5A,$5B ; 925A  TL=$01 TR=$01 BL=$5A BR=$5B
        .byte   $4A,$44,$2E,$4E ; 925E  TL=$4A TR=$44 BL=$2E BR=$4E
        .byte   $2A,$5C,$5D,$5E ; 9262  TL=$2A TR=$5C BL=$5D BR=$5E
        .byte   $5F,$2B,$60,$61 ; 9266  TL=$5F TR=$2B BL=$60 BR=$61
        .byte   $2A,$2B,$43,$44 ; 926A  TL=$2A TR=$2B BL=$43 BR=$44
        .byte   $2E,$4E,$2A,$2A ; 926E  TL=$2E TR=$4E BL=$2A BR=$2A
        .byte   $2A,$2B,$62,$14 ; 9272  TL=$2A TR=$2B BL=$62 BR=$14
        .byte   $01,$27,$01,$63 ; 9276  TL=$01 TR=$27 BL=$01 BR=$63
        .byte   $64,$65,$66,$67 ; 927A  TL=$64 TR=$65 BL=$66 BR=$67
        .byte   $68,$69,$6A,$6B ; 927E  TL=$68 TR=$69 BL=$6A BR=$6B
        .byte   $64,$49,$6C,$66 ; 9282  TL=$64 TR=$49 BL=$6C BR=$66
        .byte   $43,$43,$19,$19 ; 9286  TL=$43 TR=$43 BL=$19 BR=$19
        .byte   $2C,$2C,$19,$19 ; 928A  TL=$2C TR=$2C BL=$19 BR=$19
        .byte   $6D,$6E,$19,$19 ; 928E  TL=$6D TR=$6E BL=$19 BR=$19
        .byte   $31,$31,$31,$4B ; 9292  TL=$31 TR=$31 BL=$31 BR=$4B
        .byte   $4C,$4C,$6F,$14 ; 9296  TL=$4C TR=$4C BL=$6F BR=$14
        .byte   $70,$71,$72,$73 ; 929A  TL=$70 TR=$71 BL=$72 BR=$73
        .byte   $68,$74,$6C,$67 ; 929E  TL=$68 TR=$74 BL=$6C BR=$67
        .byte   $65,$70,$64,$64 ; 92A2  TL=$65 TR=$70 BL=$64 BR=$64
        .byte   $30,$75,$30,$27 ; 92A6  TL=$30 TR=$75 BL=$30 BR=$27
        .byte   $13,$13,$4F,$4F ; 92AA  TL=$13 TR=$13 BL=$4F BR=$4F
        .byte   $13,$13,$30,$27 ; 92AE  TL=$13 TR=$13 BL=$30 BR=$27
        .byte   $76,$77,$4F,$4F ; 92B2  TL=$76 TR=$77 BL=$4F BR=$4F
        .byte   $78,$01,$4F,$4F ; 92B6  TL=$78 TR=$01 BL=$4F BR=$4F
        .byte   $01,$01,$4F,$4F ; 92BA  TL=$01 TR=$01 BL=$4F BR=$4F
        .byte   $01,$27,$30,$27 ; 92BE  TL=$01 TR=$27 BL=$30 BR=$27
        .byte   $68,$69,$64,$64 ; 92C2  TL=$68 TR=$69 BL=$64 BR=$64
        .byte   $65,$71,$64,$64 ; 92C6  TL=$65 TR=$71 BL=$64 BR=$64
        .byte   $64,$64,$6C,$67 ; 92CA  TL=$64 TR=$64 BL=$6C BR=$67
        .byte   $23,$79,$54,$49 ; 92CE  TL=$23 TR=$79 BL=$54 BR=$49
        .byte   $50,$51,$01,$01 ; 92D2  TL=$50 TR=$51 BL=$01 BR=$01
        .byte   $7A,$7B,$4A,$7C ; 92D6  TL=$7A TR=$7B BL=$4A BR=$7C
        .byte   $7B,$7B,$7D,$7C ; 92DA  TL=$7B TR=$7B BL=$7D BR=$7C
        .byte   $68,$74,$64,$64 ; 92DE  TL=$68 TR=$74 BL=$64 BR=$64
        .byte   $7B,$7B,$14,$7C ; 92E2  TL=$7B TR=$7B BL=$14 BR=$7C
        .byte   $7B,$7E,$7D,$49 ; 92E6  TL=$7B TR=$7E BL=$7D BR=$49
        .byte   $7F,$64,$4A,$64 ; 92EA  TL=$7F TR=$64 BL=$4A BR=$64
        .byte   $64,$64,$64,$6C ; 92EE  TL=$64 TR=$64 BL=$64 BR=$6C
        .byte   $65,$71,$67,$64 ; 92F2  TL=$65 TR=$71 BL=$67 BR=$64
        .byte   $80,$81,$6C,$67 ; 92F6  TL=$80 TR=$81 BL=$6C BR=$67
        .byte   $64,$65,$72,$73 ; 92FA  TL=$64 TR=$65 BL=$72 BR=$73
        .byte   $68,$69,$6C,$67 ; 92FE  TL=$68 TR=$69 BL=$6C BR=$67
        .byte   $6C,$66,$65,$70 ; 9302  TL=$6C TR=$66 BL=$65 BR=$70
        .byte   $5A,$63,$30,$27 ; 9306  TL=$5A TR=$63 BL=$30 BR=$27
        .byte   $66,$67,$82,$83 ; 930A  TL=$66 TR=$67 BL=$82 BR=$83
        .byte   $65,$71,$72,$73 ; 930E  TL=$65 TR=$71 BL=$72 BR=$73
        .byte   $6C,$67,$84,$83 ; 9312  TL=$6C TR=$67 BL=$84 BR=$83
        .byte   $72,$73,$6C,$67 ; 9316  TL=$72 TR=$73 BL=$6C BR=$67
        .byte   $85,$14,$6C,$67 ; 931A  TL=$85 TR=$14 BL=$6C BR=$67
        .byte   $6C,$66,$84,$82 ; 931E  TL=$6C TR=$66 BL=$84 BR=$82
        .byte   $64,$65,$6C,$67 ; 9322  TL=$64 TR=$65 BL=$6C BR=$67
        .byte   $71,$86,$64,$49 ; 9326  TL=$71 TR=$86 BL=$64 BR=$49
        .byte   $64,$64,$64,$64 ; 932A  TL=$64 TR=$64 BL=$64 BR=$64
        .byte   $6C,$67,$65,$71 ; 932E  TL=$6C TR=$67 BL=$65 BR=$71
        .byte   $87,$88,$19,$19 ; 9332  TL=$87 TR=$88 BL=$19 BR=$19
        .byte   $89,$8A,$19,$19 ; 9336  TL=$89 TR=$8A BL=$19 BR=$19
        .byte   $8B,$8C,$19,$19 ; 933A  TL=$8B TR=$8C BL=$19 BR=$19
        .byte   $89,$8D,$19,$19 ; 933E  TL=$89 TR=$8D BL=$19 BR=$19
        .byte   $8B,$73,$19,$19 ; 9342  TL=$8B TR=$73 BL=$19 BR=$19
        .byte   $6C,$66,$19,$19 ; 9346  TL=$6C TR=$66 BL=$19 BR=$19
        .byte   $8E,$27,$08,$27 ; 934A  TL=$8E TR=$27 BL=$08 BR=$27
        .byte   $8F,$90,$54,$91 ; 934E  TL=$8F TR=$90 BL=$54 BR=$91
        .byte   $64,$64,$72,$73 ; 9352  TL=$64 TR=$64 BL=$72 BR=$73
        .byte   $92,$93,$94,$95 ; 9356  TL=$92 TR=$93 BL=$94 BR=$95
        .byte   $30,$75,$30,$96 ; 935A  TL=$30 TR=$75 BL=$30 BR=$96
        .byte   $13,$13,$97,$97 ; 935E  TL=$13 TR=$13 BL=$97 BR=$97
        .byte   $13,$13,$98,$06 ; 9362  TL=$13 TR=$13 BL=$98 BR=$06
        .byte   $13,$13,$07,$07 ; 9366  TL=$13 TR=$13 BL=$07 BR=$07
        .byte   $13,$13,$08,$96 ; 936A  TL=$13 TR=$13 BL=$08 BR=$96
        .byte   $78,$99,$08,$96 ; 936E  TL=$78 TR=$99 BL=$08 BR=$96
        .byte   $13,$13,$08,$06 ; 9372  TL=$13 TR=$13 BL=$08 BR=$06
        .byte   $9A,$99,$08,$06 ; 9376  TL=$9A TR=$99 BL=$08 BR=$06
        .byte   $00,$27,$08,$27 ; 937A  TL=$00 TR=$27 BL=$08 BR=$27
        .byte   $64,$64,$64,$86 ; 937E  TL=$64 TR=$64 BL=$64 BR=$86
        .byte   $30,$9B,$50,$9C ; 9382  TL=$30 TR=$9B BL=$50 BR=$9C
        .byte   $9D,$9D,$9E,$07 ; 9386  TL=$9D TR=$9D BL=$9E BR=$07
        .byte   $9F,$06,$A0,$A1 ; 938A  TL=$9F TR=$06 BL=$A0 BR=$A1
        .byte   $07,$07,$0A,$0A ; 938E  TL=$07 TR=$07 BL=$0A BR=$0A
        .byte   $08,$9B,$00,$06 ; 9392  TL=$08 TR=$9B BL=$00 BR=$06
        .byte   $9D,$9D,$07,$07 ; 9396  TL=$9D TR=$9D BL=$07 BR=$07
        .byte   $A2,$A1,$A3,$A4 ; 939A  TL=$A2 TR=$A1 BL=$A3 BR=$A4
        .byte   $0A,$0A,$07,$07 ; 939E  TL=$0A TR=$0A BL=$07 BR=$07
        .byte   $00,$9B,$08,$06 ; 93A2  TL=$00 TR=$9B BL=$08 BR=$06
        .byte   $9F,$06,$08,$09 ; 93A6  TL=$9F TR=$06 BL=$08 BR=$09
        .byte   $9F,$06,$08,$06 ; 93AA  TL=$9F TR=$06 BL=$08 BR=$06
        .byte   $07,$07,$07,$07 ; 93AE  TL=$07 TR=$07 BL=$07 BR=$07
        .byte   $A0,$A5,$A3,$A4 ; 93B2  TL=$A0 TR=$A5 BL=$A3 BR=$A4
        .byte   $08,$09,$08,$06 ; 93B6  TL=$08 TR=$09 BL=$08 BR=$06
        .byte   $A6,$A1,$A3,$A4 ; 93BA  TL=$A6 TR=$A1 BL=$A3 BR=$A4
        .byte   $08,$27,$00,$27 ; 93BE  TL=$08 TR=$27 BL=$00 BR=$27
        .byte   $72,$2D,$6C,$67 ; 93C2  TL=$72 TR=$2D BL=$6C BR=$67
        .byte   $64,$72,$72,$53 ; 93C6  TL=$64 TR=$72 BL=$72 BR=$53
        .byte   $23,$56,$23,$56 ; 93CA  TL=$23 TR=$56 BL=$23 BR=$56
        .byte   $A7,$64,$23,$73 ; 93CE  TL=$A7 TR=$64 BL=$23 BR=$73
        .byte   $72,$49,$6C,$66 ; 93D2  TL=$72 TR=$49 BL=$6C BR=$66
        .byte   $01,$01,$5A,$09 ; 93D6  TL=$01 TR=$01 BL=$5A BR=$09
        .byte   $4A,$A8,$0A,$0A ; 93DA  TL=$4A TR=$A8 BL=$0A BR=$0A
        .byte   $A3,$A4,$A9,$AA ; 93DE  TL=$A3 TR=$A4 BL=$A9 BR=$AA
        .byte   $07,$07,$AB,$AA ; 93E2  TL=$07 TR=$07 BL=$AB BR=$AA
        .byte   $07,$2D,$07,$0A ; 93E6  TL=$07 TR=$2D BL=$07 BR=$0A
        .byte   $08,$AC,$00,$09 ; 93EA  TL=$08 TR=$AC BL=$00 BR=$09
        .byte   $14,$07,$0A,$07 ; 93EE  TL=$14 TR=$07 BL=$0A BR=$07
        .byte   $0A,$07,$07,$07 ; 93F2  TL=$0A TR=$07 BL=$07 BR=$07
        .byte   $A9,$AD,$08,$06 ; 93F6  TL=$A9 TR=$AD BL=$08 BR=$06
        .byte   $00,$06,$08,$09 ; 93FA  TL=$00 TR=$06 BL=$08 BR=$09
        .byte   $07,$07,$0A,$07 ; 93FE  TL=$07 TR=$07 BL=$0A BR=$07
        .byte   $07,$07,$07,$0A ; 9402  TL=$07 TR=$07 BL=$07 BR=$0A
        .byte   $AB,$AA,$00,$09 ; 9406  TL=$AB TR=$AA BL=$00 BR=$09
        .byte   $07,$2D,$0A,$0A ; 940A  TL=$07 TR=$2D BL=$0A BR=$0A
        .byte   $08,$27,$08,$27 ; 940E  TL=$08 TR=$27 BL=$08 BR=$27
        .byte   $30,$06,$30,$06 ; 9412  TL=$30 TR=$06 BL=$30 BR=$06
        .byte   $08,$06,$08,$09 ; 9416  TL=$08 TR=$06 BL=$08 BR=$09
        .byte   $AB,$AD,$00,$06 ; 941A  TL=$AB TR=$AD BL=$00 BR=$06
        .byte   $08,$06,$00,$09 ; 941E  TL=$08 TR=$06 BL=$00 BR=$09
        .byte   $07,$0A,$07,$07 ; 9422  TL=$07 TR=$0A BL=$07 BR=$07
        .byte   $00,$09,$08,$06 ; 9426  TL=$00 TR=$09 BL=$08 BR=$06
        .byte   $08,$06,$08,$06 ; 942A  TL=$08 TR=$06 BL=$08 BR=$06
        .byte   $07,$07,$A9,$AD ; 942E  TL=$07 TR=$07 BL=$A9 BR=$AD
        .byte   $08,$01,$08,$01 ; 9432  TL=$08 TR=$01 BL=$08 BR=$01
        .byte   $8E,$AE,$01,$01 ; 9436  TL=$8E TR=$AE BL=$01 BR=$01
        .byte   $07,$07,$01,$01 ; 943A  TL=$07 TR=$07 BL=$01 BR=$01
        .byte   $08,$06,$01,$01 ; 943E  TL=$08 TR=$06 BL=$01 BR=$01
        .byte   $08,$06,$01,$06 ; 9442  TL=$08 TR=$06 BL=$01 BR=$06
        .byte   $33,$34,$AF,$B0 ; 9446  TL=$33 TR=$34 BL=$AF BR=$B0
        .byte   $31,$31,$37,$4B ; 944A  TL=$31 TR=$31 BL=$37 BR=$4B
        .byte   $01,$06,$01,$06 ; 944E  TL=$01 TR=$06 BL=$01 BR=$06
        .byte   $00,$06,$08,$06 ; 9452  TL=$00 TR=$06 BL=$08 BR=$06
        .byte   $46,$2D,$3A,$3A ; 9456  TL=$46 TR=$2D BL=$3A BR=$3A
        .byte   $3A,$3A,$31,$31 ; 945A  TL=$3A TR=$3A BL=$31 BR=$31
        .byte   $01,$09,$01,$06 ; 945E  TL=$01 TR=$09 BL=$01 BR=$06
        .byte   $A9,$AA,$08,$09 ; 9462  TL=$A9 TR=$AA BL=$08 BR=$09
        .byte   $07,$0A,$0A,$0A ; 9466  TL=$07 TR=$0A BL=$0A BR=$0A
        .byte   $00,$09,$00,$06 ; 946A  TL=$00 TR=$09 BL=$00 BR=$06
        .byte   $A6,$A5,$A3,$A4 ; 946E  TL=$A6 TR=$A5 BL=$A3 BR=$A4
        .byte   $01,$06,$01,$09 ; 9472  TL=$01 TR=$06 BL=$01 BR=$09
; 32×32 chunk-index grid = 1024 bytes
TankLvl7_MapData:
        .byte   $00,$01,$01,$01,$01,$01,$01,$01 ; 9476
        .byte   $01,$01,$01,$01,$01,$01,$01,$01 ; 947E
        .byte   $02,$03,$04,$03,$04,$03,$04,$03 ; 9486
        .byte   $04,$03,$04,$03,$04,$03,$05,$06 ; 948E
        .byte   $07,$08,$08,$08,$08,$08,$08,$08 ; 9496
        .byte   $08,$08,$08,$08,$08,$08,$08,$08 ; 949E
        .byte   $07,$08,$08,$08,$08,$08,$08,$08 ; 94A6
        .byte   $08,$08,$08,$08,$08,$08,$08,$08 ; 94AE
        .byte   $09,$0A,$0B,$0B,$0B,$0B,$0B,$0B ; 94B6
        .byte   $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0C ; 94BE
        .byte   $09,$0A,$0B,$0B,$0B,$0B,$0B,$0B ; 94C6
        .byte   $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0C ; 94CE
        .byte   $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D ; 94D6
        .byte   $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D ; 94DE
        .byte   $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D ; 94E6
        .byte   $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D ; 94EE
        .byte   $0E,$0F,$0F,$0F,$0F,$0F,$0F,$0F ; 94F6
        .byte   $0F,$0F,$0F,$0F,$0E,$0F,$0F,$0F ; 94FE
        .byte   $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F ; 9506
        .byte   $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F ; 950E
        .byte   $07,$08,$08,$08,$08,$08,$08,$08 ; 9516
        .byte   $08,$08,$08,$08,$07,$08,$08,$08 ; 951E
        .byte   $08,$08,$08,$08,$08,$08,$08,$08 ; 9526
        .byte   $08,$08,$08,$08,$08,$08,$08,$08 ; 952E
        .byte   $09,$0A,$0B,$0B,$0B,$0B,$0B,$0B ; 9536
        .byte   $0B,$0B,$0B,$0C,$09,$0A,$0B,$0B ; 953E
        .byte   $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B ; 9546
        .byte   $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0C ; 954E
        .byte   $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D ; 9556
        .byte   $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D ; 955E
        .byte   $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D ; 9566
        .byte   $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D ; 956E
        .byte   $0E,$0F,$0F,$0F,$0F,$0F,$0F,$0F ; 9576
        .byte   $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F ; 957E
        .byte   $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F ; 9586
        .byte   $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F ; 958E
        .byte   $10,$11,$11,$11,$11,$11,$11,$11 ; 9596
        .byte   $11,$11,$11,$11,$11,$11,$11,$11 ; 959E
        .byte   $11,$11,$11,$11,$11,$11,$11,$11 ; 95A6
        .byte   $11,$11,$11,$11,$11,$11,$11,$11 ; 95AE
        .byte   $09,$12,$13,$13,$13,$13,$13,$13 ; 95B6
        .byte   $13,$13,$13,$13,$13,$13,$13,$13 ; 95BE
        .byte   $13,$13,$13,$13,$13,$13,$13,$13 ; 95C6
        .byte   $13,$13,$13,$13,$13,$13,$13,$0C ; 95CE
        .byte   $14,$14,$14,$14,$14,$14,$14,$14 ; 95D6
        .byte   $14,$14,$14,$14,$14,$14,$14,$14 ; 95DE
        .byte   $14,$14,$14,$14,$14,$14,$14,$14 ; 95E6
        .byte   $14,$14,$14,$14,$14,$14,$14,$14 ; 95EE
        .byte   $15,$16,$16,$16,$16,$16,$16,$16 ; 95F6
        .byte   $16,$16,$16,$16,$17,$18,$18,$18 ; 95FE
        .byte   $18,$18,$18,$18,$18,$18,$18,$18 ; 9606
        .byte   $18,$18,$18,$18,$18,$18,$18,$18 ; 960E
        .byte   $19,$1A,$1A,$1A,$1A,$1A,$1A,$1A ; 9616
        .byte   $1A,$1A,$1A,$1B,$1C,$1D,$1E,$1F ; 961E
        .byte   $20,$21,$1E,$1F,$22,$23,$20,$24 ; 9626
        .byte   $21,$24,$25,$26,$27,$28,$28,$28 ; 962E
        .byte   $29,$2A,$2B,$2C,$2B,$2C,$2B,$2C ; 9636
        .byte   $2B,$2C,$2B,$2C,$1C,$1F,$2D,$2E ; 963E
        .byte   $2F,$1F,$2D,$30,$22,$31,$32,$1D ; 9646
        .byte   $1D,$1E,$1F,$20,$27,$28,$28,$28 ; 964E
        .byte   $19,$2C,$2B,$2B,$2C,$2B,$2C,$2C ; 9656
        .byte   $2C,$2C,$2C,$2C,$1C,$33,$34,$35 ; 965E
        .byte   $36,$2E,$34,$35,$22,$1E,$1F,$20 ; 9666
        .byte   $24,$36,$2E,$32,$27,$28,$28,$28 ; 966E
        .byte   $37,$2B,$2C,$2C,$2B,$2C,$38,$2C ; 9676
        .byte   $2C,$2C,$2C,$2C,$39,$3A,$3A,$3A ; 967E
        .byte   $3A,$3A,$3A,$3A,$3B,$36,$2E,$32 ; 9686
        .byte   $1E,$1F,$20,$21,$3C,$3D,$3D,$3D ; 968E
        .byte   $3E,$3F,$2C,$38,$2C,$38,$40,$38 ; 9696
        .byte   $2C,$38,$2C,$2C,$41,$1A,$1A,$1A ; 969E
        .byte   $1A,$42,$1A,$1A,$1C,$1F,$20,$21 ; 96A6
        .byte   $2D,$2E,$32,$1D,$43,$44,$45,$46 ; 96AE
        .byte   $47,$48,$38,$40,$38,$40,$40,$40 ; 96B6
        .byte   $38,$40,$38,$49,$22,$4A,$38,$4B ; 96BE
        .byte   $38,$4C,$38,$4D,$1C,$2E,$32,$1E ; 96C6
        .byte   $1F,$20,$1D,$21,$4E,$4F,$50,$51 ; 96CE
        .byte   $41,$52,$52,$52,$52,$52,$52,$52 ; 96D6
        .byte   $52,$52,$52,$53,$41,$53,$52,$54 ; 96DE
        .byte   $52,$52,$52,$54,$1C,$34,$35,$2D ; 96E6
        .byte   $2E,$32,$55,$56,$43,$57,$58,$59 ; 96EE
        .byte   $5A,$5B,$5B,$5B,$5B,$5B,$5B,$5B ; 96F6
        .byte   $5C,$5B,$5B,$5B,$5D,$5B,$5B,$5B ; 96FE
        .byte   $5C,$5B,$5B,$5B,$5E,$5F,$5F,$5F ; 9706
        .byte   $5F,$5F,$5F,$5F,$60,$61,$62,$63 ; 970E
        .byte   $41,$45,$44,$45,$45,$44,$45,$64 ; 9716
        .byte   $65,$66,$58,$67,$58,$68,$67,$68 ; 971E
        .byte   $41,$69,$68,$67,$58,$68,$67,$68 ; 9726
        .byte   $68,$67,$58,$6A,$65,$6B,$6C,$6D ; 972E
        .byte   $65,$66,$6E,$61,$61,$6F,$70,$71 ; 9736
        .byte   $72,$73,$74,$75,$74,$76,$75,$77 ; 973E
        .byte   $41,$75,$76,$75,$74,$76,$75,$76 ; 9746
        .byte   $76,$75,$74,$78,$72,$73,$79,$7A ; 974E
        .byte   $72,$73,$62,$76,$7B,$7C,$62,$7B ; 9756
        .byte   $41,$7D,$7E,$7D,$7E,$7F,$7D,$7F ; 975E
        .byte   $41,$7D,$7F,$7D,$7E,$7F,$7D,$7F ; 9766
        .byte   $7F,$7D,$7E,$7D,$41,$80,$81,$82 ; 976E
        .byte   $83,$45,$84,$74,$76,$85,$86,$84 ; 9776
        .byte   $87,$88,$89,$8A,$8B,$88,$89,$8A ; 977E
        .byte   $8C,$88,$89,$8A,$8B,$88,$89,$8A ; 9786
        .byte   $8D,$8A,$8D,$8A,$8E,$8A,$8D,$8A ; 978E
        .byte   $8F,$61,$63,$7C,$74,$7C,$85,$90 ; 9796
        .byte   $91,$92,$93,$94,$95,$96,$97,$98 ; 979E
        .byte   $99,$96,$9A,$94,$95,$96,$9B,$9C ; 97A6
        .byte   $9D,$9C,$9E,$98,$9F,$98,$9F,$98 ; 97AE
        .byte   $A0,$A1,$74,$A2,$A3,$A4,$75,$A5 ; 97B6
        .byte   $A6,$A7,$A8,$9C,$9D,$9C,$A9,$AA ; 97BE
        .byte   $AB,$AC,$9D,$9C,$9E,$AD,$9E,$98 ; 97C6
        .byte   $AE,$98,$AF,$B0,$9C,$B1,$B2,$B3 ; 97CE
        .byte   $B4,$7F,$7E,$7E,$7E,$7E,$7D,$7F ; 97D6
        .byte   $B5,$9C,$B6,$94,$B7,$98,$AF,$94 ; 97DE
        .byte   $B8,$94,$B7,$AD,$9D,$B9,$BA,$AD ; 97E6
        .byte   $9D,$9C,$BB,$B1,$BC,$94,$B8,$9C ; 97EE
        .byte   $BD,$18,$18,$18,$18,$18,$18,$18 ; 97F6
        .byte   $BE,$BF,$C0,$BF,$C0,$BF,$C0,$BF ; 97FE
        .byte   $C1,$9C,$9D,$B9,$AE,$AD,$BB,$B9 ; 9806
        .byte   $AE,$AD,$BB,$9C,$BB,$9C,$BB,$9C ; 980E
        .byte   $BD,$1D,$C2,$1F,$1D,$21,$1E,$1F ; 9816
        .byte   $22,$1F,$20,$21,$1E,$1F,$C3,$56 ; 981E
        .byte   $C4,$B9,$AE,$98,$BA,$98,$9F,$AD ; 9826
        .byte   $BB,$B9,$BA,$AD,$9E,$98,$C5,$9C ; 982E
        .byte   $BD,$1F,$2D,$2E,$32,$24,$1F,$C6 ; 9836
        .byte   $22,$33,$24,$1F,$24,$2E,$24,$C7 ; 983E
        .byte   $C8,$AD,$9D,$9C,$9D,$B9,$C9,$CA ; 9846
        .byte   $CB,$AD,$9D,$B9,$CC,$9C,$BB,$9C ; 984E
        .byte   $BD,$33,$32,$24,$24,$2D,$2E,$32 ; 9856
        .byte   $22,$35,$36,$2E,$34,$35,$34,$35 ; 985E
        .byte   $CD,$94,$B7,$98,$AE,$98,$C5,$9C ; 9866
        .byte   $9E,$98,$AE,$98,$AE,$98,$C5,$9C ; 986E
; Tile attribute table – bits: 0-1=palette 3=Gateway 2+3=Tunnel(→Overhead) 4=damage 5=ladder
; 6=water 7=solid  3+7=Doorway 4+6=lava 5+7=solid-ladder 6+7=destroyable
TankLvl7_TileAttrTable:
        .byte   $00,$01,$03,$03,$03,$03,$03,$03 ; 9876
        .byte   $03,$02,$02,$02,$02,$02,$02,$02 ; 987E
        .byte   $01,$01,$01,$01,$81,$01,$01,$01 ; 9886
        .byte   $01,$01,$01,$01,$01,$01,$01,$02 ; 988E
        .byte   $02,$02,$02,$02,$02,$02,$02,$03 ; 9896
        .byte   $03,$03,$03,$03,$03,$03,$03,$03 ; 989E
        .byte   $03,$03,$03,$01,$01,$01,$01,$81 ; 98A6
        .byte   $81,$81,$81,$81,$80,$80,$80,$80 ; 98AE
        .byte   $80,$80,$80,$80,$80,$80,$80,$81 ; 98B6
        .byte   $81,$81,$81,$81,$81,$81,$81,$81 ; 98BE
        .byte   $81,$81,$81,$81,$01,$01,$0D,$01 ; 98C6
        .byte   $81,$81,$81,$81,$81,$89,$89,$81 ; 98CE
        .byte   $01,$00,$01,$01,$01,$02,$02,$12 ; 98D6
        .byte   $12,$C0,$C0,$C0,$C0,$C0,$C0,$A1 ; 98DE
        .byte   $01,$01,$01,$01,$09,$01,$08,$C0 ; 98E6
        .byte   $C0,$C0                         ; 98EE
; 16 bytes — 8 B vertical + 8 B horizontal scroll-boundary flags
TankLvl7_ScrollData:
        .byte   $FF,$FF,$FF,$FF,$19,$FE,$3F,$F0 ; 98F0
        .byte   $88,$90,$80,$95,$95,$A9,$A8,$A8 ; 98F8
; ----------------------------------------------------------------------------
TankLvl8_MapPointers:
        .addr   TankLvl8_BgPalette              ; 9900
        .addr   TankLvl8_TileAttrTable          ; 9902
        .addr   TankLvl8_TileDescTable          ; 9904
        .addr   TankLvl8_StructureDescTable     ; 9906
        .addr   TankLvl8_ChunkDescTable         ; 9908
        .addr   TankLvl8_MapData                ; 990A
; ----------------------------------------------------------------------------
; 4 BgPalette records — the level's 4 background sub-palettes × 4 NES colour indices.
TankLvl8_BgPalette:
        .byte   $0F,$05,$14,$35 ; 990C  Backdrop=$0F Colour1=$05 Colour2=$14 Colour3=$35
        .byte   $0F,$05,$16,$36 ; 9910  Backdrop=$0F Colour1=$05 Colour2=$16 Colour3=$36
        .byte   $0F,$02,$13,$23 ; 9914  Backdrop=$0F Colour1=$02 Colour2=$13 Colour3=$23
        .byte   $0F,$05,$1B,$20 ; 9918  Backdrop=$0F Colour1=$05 Colour2=$1B Colour3=$20
; 133 TileDesc records — the level's Tile definitions. Index space shared with
; TankLvl8_TileAttrTable, which has the matching 133 entries.
TankLvl8_TileDescTable:
        .byte   $00,$00,$00,$00 ; 991C  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $C0,$01,$C1,$D1 ; 9920  TL=$C0 TR=$01 BL=$C1 BR=$D1
        .byte   $20,$30,$21,$31 ; 9924  TL=$20 TR=$30 BL=$21 BR=$31
        .byte   $22,$32,$21,$31 ; 9928  TL=$22 TR=$32 BL=$21 BR=$31
        .byte   $33,$30,$21,$31 ; 992C  TL=$33 TR=$30 BL=$21 BR=$31
        .byte   $20,$32,$21,$31 ; 9930  TL=$20 TR=$32 BL=$21 BR=$31
        .byte   $46,$30,$47,$5A ; 9934  TL=$46 TR=$30 BL=$47 BR=$5A
        .byte   $20,$56,$4A,$57 ; 9938  TL=$20 TR=$56 BL=$4A BR=$57
        .byte   $20,$30,$4A,$5A ; 993C  TL=$20 TR=$30 BL=$4A BR=$5A
        .byte   $00,$24,$00,$25 ; 9940  TL=$00 TR=$24 BL=$00 BR=$25
        .byte   $20,$30,$23,$31 ; 9944  TL=$20 TR=$30 BL=$23 BR=$31
        .byte   $5C,$6C,$5D,$6D ; 9948  TL=$5C TR=$6C BL=$5D BR=$6D
        .byte   $5B,$6B,$5D,$6D ; 994C  TL=$5B TR=$6B BL=$5D BR=$6D
        .byte   $4B,$6B,$4D,$6D ; 9950  TL=$4B TR=$6B BL=$4D BR=$6D
        .byte   $5C,$6B,$5D,$6D ; 9954  TL=$5C TR=$6B BL=$5D BR=$6D
        .byte   $E1,$F1,$E2,$F2 ; 9958  TL=$E1 TR=$F1 BL=$E2 BR=$F2
        .byte   $B7,$F1,$B8,$F2 ; 995C  TL=$B7 TR=$F1 BL=$B8 BR=$F2
        .byte   $E0,$F0,$E2,$F2 ; 9960  TL=$E0 TR=$F0 BL=$E2 BR=$F2
        .byte   $F4,$F0,$B8,$F2 ; 9964  TL=$F4 TR=$F0 BL=$B8 BR=$F2
        .byte   $26,$36,$27,$37 ; 9968  TL=$26 TR=$36 BL=$27 BR=$37
        .byte   $2C,$3C,$2D,$3D ; 996C  TL=$2C TR=$3C BL=$2D BR=$3D
        .byte   $2A,$3A,$2B,$3B ; 9970  TL=$2A TR=$3A BL=$2B BR=$3B
        .byte   $2E,$3E,$2F,$3F ; 9974  TL=$2E TR=$3E BL=$2F BR=$3F
        .byte   $3B,$3A,$27,$3B ; 9978  TL=$3B TR=$3A BL=$27 BR=$3B
        .byte   $4E,$5E,$4F,$5F ; 997C  TL=$4E TR=$5E BL=$4F BR=$5F
        .byte   $26,$36,$2D,$3D ; 9980  TL=$26 TR=$36 BL=$2D BR=$3D
        .byte   $2C,$3C,$7C,$7A ; 9984  TL=$2C TR=$3C BL=$7C BR=$7A
        .byte   $26,$36,$6A,$7A ; 9988  TL=$26 TR=$36 BL=$6A BR=$7A
        .byte   $26,$36,$27,$37 ; 998C  TL=$26 TR=$36 BL=$27 BR=$37
        .byte   $2C,$3C,$2D,$3D ; 9990  TL=$2C TR=$3C BL=$2D BR=$3D
        .byte   $2A,$3A,$2B,$3B ; 9994  TL=$2A TR=$3A BL=$2B BR=$3B
        .byte   $2E,$3E,$2F,$3F ; 9998  TL=$2E TR=$3E BL=$2F BR=$3F
        .byte   $3B,$3A,$27,$3B ; 999C  TL=$3B TR=$3A BL=$27 BR=$3B
        .byte   $4E,$5E,$4F,$5F ; 99A0  TL=$4E TR=$5E BL=$4F BR=$5F
        .byte   $26,$36,$2D,$3D ; 99A4  TL=$26 TR=$36 BL=$2D BR=$3D
        .byte   $2C,$3C,$7C,$7A ; 99A8  TL=$2C TR=$3C BL=$7C BR=$7A
        .byte   $26,$36,$6A,$7A ; 99AC  TL=$26 TR=$36 BL=$6A BR=$7A
        .byte   $26,$36,$27,$37 ; 99B0  TL=$26 TR=$36 BL=$27 BR=$37
        .byte   $2C,$3C,$2D,$3D ; 99B4  TL=$2C TR=$3C BL=$2D BR=$3D
        .byte   $2A,$3A,$2B,$3B ; 99B8  TL=$2A TR=$3A BL=$2B BR=$3B
        .byte   $2E,$3E,$2F,$3F ; 99BC  TL=$2E TR=$3E BL=$2F BR=$3F
        .byte   $3B,$3A,$27,$3B ; 99C0  TL=$3B TR=$3A BL=$27 BR=$3B
        .byte   $4E,$5E,$4F,$5F ; 99C4  TL=$4E TR=$5E BL=$4F BR=$5F
        .byte   $26,$36,$2D,$3D ; 99C8  TL=$26 TR=$36 BL=$2D BR=$3D
        .byte   $2C,$3C,$7C,$7A ; 99CC  TL=$2C TR=$3C BL=$7C BR=$7A
        .byte   $26,$36,$6A,$7A ; 99D0  TL=$26 TR=$36 BL=$6A BR=$7A
        .byte   $80,$90,$81,$91 ; 99D4  TL=$80 TR=$90 BL=$81 BR=$91
        .byte   $8E,$90,$8F,$91 ; 99D8  TL=$8E TR=$90 BL=$8F BR=$91
        .byte   $7B,$8B,$81,$91 ; 99DC  TL=$7B TR=$8B BL=$81 BR=$91
        .byte   $8D,$8B,$8F,$91 ; 99E0  TL=$8D TR=$8B BL=$8F BR=$91
        .byte   $80,$8B,$81,$91 ; 99E4  TL=$80 TR=$8B BL=$81 BR=$91
        .byte   $49,$59,$49,$59 ; 99E8  TL=$49 TR=$59 BL=$49 BR=$59
        .byte   $69,$79,$69,$79 ; 99EC  TL=$69 TR=$79 BL=$69 BR=$79
        .byte   $68,$78,$68,$78 ; 99F0  TL=$68 TR=$78 BL=$68 BR=$78
        .byte   $7D,$58,$49,$59 ; 99F4  TL=$7D TR=$58 BL=$49 BR=$59
        .byte   $48,$58,$69,$79 ; 99F8  TL=$48 TR=$58 BL=$69 BR=$79
        .byte   $48,$8C,$68,$78 ; 99FC  TL=$48 TR=$8C BL=$68 BR=$78
        .byte   $C2,$D2,$C3,$D3 ; 9A00  TL=$C2 TR=$D2 BL=$C3 BR=$D3
        .byte   $C4,$D4,$C3,$D3 ; 9A04  TL=$C4 TR=$D4 BL=$C3 BR=$D3
        .byte   $E3,$D2,$E4,$D3 ; 9A08  TL=$E3 TR=$D2 BL=$E4 BR=$D3
        .byte   $F3,$D4,$E4,$D3 ; 9A0C  TL=$F3 TR=$D4 BL=$E4 BR=$D3
        .byte   $C2,$D4,$C3,$D3 ; 9A10  TL=$C2 TR=$D4 BL=$C3 BR=$D3
        .byte   $A2,$B2,$A3,$B3 ; 9A14  TL=$A2 TR=$B2 BL=$A3 BR=$B3
        .byte   $0E,$1C,$0F,$1D ; 9A18  TL=$0E TR=$1C BL=$0F BR=$1D
        .byte   $C5,$D5,$C6,$D6 ; 9A1C  TL=$C5 TR=$D5 BL=$C6 BR=$D6
        .byte   $E5,$F5,$E6,$F6 ; 9A20  TL=$E5 TR=$F5 BL=$E6 BR=$F6
        .byte   $0C,$1C,$0D,$1D ; 9A24  TL=$0C TR=$1C BL=$0D BR=$1D
        .byte   $0E,$1E,$0F,$1F ; 9A28  TL=$0E TR=$1E BL=$0F BR=$1F
        .byte   $41,$50,$42,$12 ; 9A2C  TL=$41 TR=$50 BL=$42 BR=$12
        .byte   $40,$50,$02,$12 ; 9A30  TL=$40 TR=$50 BL=$02 BR=$12
        .byte   $40,$51,$02,$52 ; 9A34  TL=$40 TR=$51 BL=$02 BR=$52
        .byte   $43,$11,$42,$12 ; 9A38  TL=$43 TR=$11 BL=$42 BR=$12
        .byte   $10,$53,$02,$52 ; 9A3C  TL=$10 TR=$53 BL=$02 BR=$52
        .byte   $43,$11,$44,$55 ; 9A40  TL=$43 TR=$11 BL=$44 BR=$55
        .byte   $10,$11,$45,$55 ; 9A44  TL=$10 TR=$11 BL=$45 BR=$55
        .byte   $10,$53,$45,$54 ; 9A48  TL=$10 TR=$53 BL=$45 BR=$54
        .byte   $10,$11,$02,$12 ; 9A4C  TL=$10 TR=$11 BL=$02 BR=$12
        .byte   $6E,$7E,$6F,$7F ; 9A50  TL=$6E TR=$7E BL=$6F BR=$7F
        .byte   $66,$76,$67,$77 ; 9A54  TL=$66 TR=$76 BL=$67 BR=$77
        .byte   $64,$74,$65,$75 ; 9A58  TL=$64 TR=$74 BL=$65 BR=$75
        .byte   $C7,$D7,$C8,$D8 ; 9A5C  TL=$C7 TR=$D7 BL=$C8 BR=$D8
        .byte   $E7,$F7,$E8,$F8 ; 9A60  TL=$E7 TR=$F7 BL=$E8 BR=$F8
        .byte   $0C,$1C,$0D,$1D ; 9A64  TL=$0C TR=$1C BL=$0D BR=$1D
        .byte   $0E,$1E,$0F,$1F ; 9A68  TL=$0E TR=$1E BL=$0F BR=$1F
        .byte   $07,$19,$08,$12 ; 9A6C  TL=$07 TR=$19 BL=$08 BR=$12
        .byte   $09,$19,$02,$12 ; 9A70  TL=$09 TR=$19 BL=$02 BR=$12
        .byte   $09,$17,$02,$18 ; 9A74  TL=$09 TR=$17 BL=$02 BR=$18
        .byte   $08,$11,$03,$12 ; 9A78  TL=$08 TR=$11 BL=$03 BR=$12
        .byte   $10,$18,$02,$15 ; 9A7C  TL=$10 TR=$18 BL=$02 BR=$15
        .byte   $03,$11,$04,$14 ; 9A80  TL=$03 TR=$11 BL=$04 BR=$14
        .byte   $10,$11,$13,$05 ; 9A84  TL=$10 TR=$11 BL=$13 BR=$05
        .byte   $10,$15,$06,$16 ; 9A88  TL=$10 TR=$15 BL=$06 BR=$16
        .byte   $28,$38,$29,$39 ; 9A8C  TL=$28 TR=$38 BL=$29 BR=$39
        .byte   $28,$38,$29,$39 ; 9A90  TL=$28 TR=$38 BL=$29 BR=$39
        .byte   $98,$88,$99,$89 ; 9A94  TL=$98 TR=$88 BL=$99 BR=$89
        .byte   $88,$88,$89,$89 ; 9A98  TL=$88 TR=$88 BL=$89 BR=$89
        .byte   $62,$70,$63,$71 ; 9A9C  TL=$62 TR=$70 BL=$63 BR=$71
        .byte   $60,$70,$61,$71 ; 9AA0  TL=$60 TR=$70 BL=$61 BR=$71
        .byte   $60,$72,$61,$73 ; 9AA4  TL=$60 TR=$72 BL=$61 BR=$73
        .byte   $A4,$B4,$A5,$B5 ; 9AA8  TL=$A4 TR=$B4 BL=$A5 BR=$B5
        .byte   $A6,$B6,$A5,$B5 ; 9AAC  TL=$A6 TR=$B6 BL=$A5 BR=$B5
        .byte   $82,$92,$83,$93 ; 9AB0  TL=$82 TR=$92 BL=$83 BR=$93
        .byte   $82,$92,$84,$94 ; 9AB4  TL=$82 TR=$92 BL=$84 BR=$94
        .byte   $85,$95,$87,$97 ; 9AB8  TL=$85 TR=$95 BL=$87 BR=$97
        .byte   $86,$96,$87,$97 ; 9ABC  TL=$86 TR=$96 BL=$87 BR=$97
        .byte   $CC,$DC,$CD,$DD ; 9AC0  TL=$CC TR=$DC BL=$CD BR=$DD
        .byte   $EC,$FC,$ED,$FD ; 9AC4  TL=$EC TR=$FC BL=$ED BR=$FD
        .byte   $CE,$DE,$CF,$DF ; 9AC8  TL=$CE TR=$DE BL=$CF BR=$DF
        .byte   $EE,$FE,$EF,$FF ; 9ACC  TL=$EE TR=$FE BL=$EF BR=$FF
        .byte   $C9,$D9,$CA,$DA ; 9AD0  TL=$C9 TR=$D9 BL=$CA BR=$DA
        .byte   $E9,$D9,$EA,$DA ; 9AD4  TL=$E9 TR=$D9 BL=$EA BR=$DA
        .byte   $E9,$F9,$EA,$FA ; 9AD8  TL=$E9 TR=$F9 BL=$EA BR=$FA
        .byte   $CB,$DB,$CB,$DB ; 9ADC  TL=$CB TR=$DB BL=$CB BR=$DB
        .byte   $00,$00,$00,$00 ; 9AE0  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $EB,$FB,$EB,$FB ; 9AE4  TL=$EB TR=$FB BL=$EB BR=$FB
        .byte   $AB,$AB,$AC,$AC ; 9AE8  TL=$AB TR=$AB BL=$AC BR=$AC
        .byte   $AB,$9A,$AC,$9B ; 9AEC  TL=$AB TR=$9A BL=$AC BR=$9B
        .byte   $AA,$BA,$00,$BB ; 9AF0  TL=$AA TR=$BA BL=$00 BR=$BB
        .byte   $9D,$AD,$9E,$00 ; 9AF4  TL=$9D TR=$AD BL=$9E BR=$00
        .byte   $BD,$AE,$BE,$AF ; 9AF8  TL=$BD TR=$AE BL=$BE BR=$AF
        .byte   $AE,$AE,$AF,$AF ; 9AFC  TL=$AE TR=$AE BL=$AF BR=$AF
        .byte   $AC,$AC,$AC,$AC ; 9B00  TL=$AC TR=$AC BL=$AC BR=$AC
        .byte   $AC,$9C,$AC,$9C ; 9B04  TL=$AC TR=$9C BL=$AC BR=$9C
        .byte   $00,$BC,$00,$BC ; 9B08  TL=$00 TR=$BC BL=$00 BR=$BC
        .byte   $9F,$00,$9F,$00 ; 9B0C  TL=$9F TR=$00 BL=$9F BR=$00
        .byte   $BF,$AF,$BF,$AF ; 9B10  TL=$BF TR=$AF BL=$BF BR=$AF
        .byte   $AF,$AF,$AF,$AF ; 9B14  TL=$AF TR=$AF BL=$AF BR=$AF
        .byte   $A0,$B0,$A1,$B1 ; 9B18  TL=$A0 TR=$B0 BL=$A1 BR=$B1
        .byte   $A0,$B0,$A1,$B1 ; 9B1C  TL=$A0 TR=$B0 BL=$A1 BR=$B1
        .byte   $A0,$B0,$A1,$B1 ; 9B20  TL=$A0 TR=$B0 BL=$A1 BR=$B1
        .byte   $A9,$B9,$A9,$B9 ; 9B24  TL=$A9 TR=$B9 BL=$A9 BR=$B9
        .byte   $A9,$B9,$A9,$B9 ; 9B28  TL=$A9 TR=$B9 BL=$A9 BR=$B9
        .byte   $34,$A7,$35,$A8 ; 9B2C  TL=$34 TR=$A7 BL=$35 BR=$A8
; 149 StructureDesc records — the level's Structure definitions, each a 2×2 quad of Tiles.
TankLvl8_StructureDescTable:
        .byte   $4C,$4C,$4C,$4C ; 9B30  TL=$4C TR=$4C BL=$4C BR=$4C
        .byte   $61,$61,$61,$61 ; 9B34  TL=$61 TR=$61 BL=$61 BR=$61
        .byte   $0B,$0B,$0B,$0B ; 9B38  TL=$0B TR=$0B BL=$0B BR=$0B
        .byte   $0B,$0E,$0B,$0B ; 9B3C  TL=$0B TR=$0E BL=$0B BR=$0B
        .byte   $0C,$0C,$0B,$0B ; 9B40  TL=$0C TR=$0C BL=$0B BR=$0B
        .byte   $0C,$49,$0B,$0E ; 9B44  TL=$0C TR=$49 BL=$0B BR=$0E
        .byte   $4A,$4A,$0C,$0C ; 9B48  TL=$4A TR=$4A BL=$0C BR=$0C
        .byte   $4D,$4D,$4D,$4D ; 9B4C  TL=$4D TR=$4D BL=$4D BR=$4D
        .byte   $4B,$0D,$0C,$0B ; 9B50  TL=$4B TR=$0D BL=$0C BR=$0B
        .byte   $4D,$4E,$4D,$4E ; 9B54  TL=$4D TR=$4E BL=$4D BR=$4E
        .byte   $33,$34,$33,$34 ; 9B58  TL=$33 TR=$34 BL=$33 BR=$34
        .byte   $34,$34,$34,$34 ; 9B5C  TL=$34 TR=$34 BL=$34 BR=$34
        .byte   $34,$35,$34,$35 ; 9B60  TL=$34 TR=$35 BL=$34 BR=$35
        .byte   $4F,$4D,$4F,$4D ; 9B64  TL=$4F TR=$4D BL=$4F BR=$4D
        .byte   $00,$00,$00,$00 ; 9B68  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $5C,$5C,$5C,$5C ; 9B6C  TL=$5C TR=$5C BL=$5C BR=$5C
        .byte   $4C,$4C,$00,$00 ; 9B70  TL=$4C TR=$4C BL=$00 BR=$00
        .byte   $60,$61,$60,$61 ; 9B74  TL=$60 TR=$61 BL=$60 BR=$61
        .byte   $61,$62,$61,$62 ; 9B78  TL=$61 TR=$62 BL=$61 BR=$62
        .byte   $1F,$1E,$1D,$1C ; 9B7C  TL=$1F TR=$1E BL=$1D BR=$1C
        .byte   $40,$41,$50,$51 ; 9B80  TL=$40 TR=$41 BL=$50 BR=$51
        .byte   $1E,$1E,$1C,$1C ; 9B84  TL=$1E TR=$1E BL=$1C BR=$1C
        .byte   $1C,$1C,$1C,$1C ; 9B88  TL=$1C TR=$1C BL=$1C BR=$1C
        .byte   $5E,$5F,$36,$37 ; 9B8C  TL=$5E TR=$5F BL=$36 BR=$37
        .byte   $5F,$5F,$37,$37 ; 9B90  TL=$5F TR=$5F BL=$37 BR=$37
        .byte   $6D,$6E,$70,$71 ; 9B94  TL=$6D TR=$6E BL=$70 BR=$71
        .byte   $6F,$34,$72,$34 ; 9B98  TL=$6F TR=$34 BL=$72 BR=$34
        .byte   $5F,$5F,$37,$38 ; 9B9C  TL=$5F TR=$5F BL=$37 BR=$38
        .byte   $1D,$1C,$1D,$1C ; 9BA0  TL=$1D TR=$1C BL=$1D BR=$1C
        .byte   $69,$6A,$6B,$6C ; 9BA4  TL=$69 TR=$6A BL=$6B BR=$6C
        .byte   $20,$1E,$1C,$1C ; 9BA8  TL=$20 TR=$1E BL=$1C BR=$1C
        .byte   $22,$1C,$1D,$1C ; 9BAC  TL=$22 TR=$1C BL=$1D BR=$1C
        .byte   $21,$1C,$1C,$1C ; 9BB0  TL=$21 TR=$1C BL=$1C BR=$1C
        .byte   $84,$84,$84,$84 ; 9BB4  TL=$84 TR=$84 BL=$84 BR=$84
        .byte   $76,$77,$7C,$7D ; 9BB8  TL=$76 TR=$77 BL=$7C BR=$7D
        .byte   $78,$78,$7E,$7E ; 9BBC  TL=$78 TR=$78 BL=$7E BR=$7E
        .byte   $73,$73,$79,$79 ; 9BC0  TL=$73 TR=$73 BL=$79 BR=$79
        .byte   $74,$75,$7A,$7B ; 9BC4  TL=$74 TR=$75 BL=$7A BR=$7B
        .byte   $16,$15,$14,$13 ; 9BC8  TL=$16 TR=$15 BL=$14 BR=$13
        .byte   $15,$15,$13,$13 ; 9BCC  TL=$15 TR=$15 BL=$13 BR=$13
        .byte   $13,$13,$13,$13 ; 9BD0  TL=$13 TR=$13 BL=$13 BR=$13
        .byte   $17,$15,$13,$13 ; 9BD4  TL=$17 TR=$15 BL=$13 BR=$13
        .byte   $14,$13,$1A,$1B ; 9BD8  TL=$14 TR=$13 BL=$1A BR=$1B
        .byte   $13,$13,$1B,$1B ; 9BDC  TL=$13 TR=$13 BL=$1B BR=$1B
        .byte   $17,$15,$1B,$1B ; 9BE0  TL=$17 TR=$15 BL=$1B BR=$1B
        .byte   $1C,$1C,$24,$24 ; 9BE4  TL=$1C TR=$1C BL=$24 BR=$24
        .byte   $5D,$5D,$5D,$5D ; 9BE8  TL=$5D TR=$5D BL=$5D BR=$5D
        .byte   $14,$13,$14,$13 ; 9BEC  TL=$14 TR=$13 BL=$14 BR=$13
        .byte   $28,$27,$26,$25 ; 9BF0  TL=$28 TR=$27 BL=$26 BR=$25
        .byte   $2A,$25,$25,$25 ; 9BF4  TL=$2A TR=$25 BL=$25 BR=$25
        .byte   $27,$27,$25,$25 ; 9BF8  TL=$27 TR=$27 BL=$25 BR=$25
        .byte   $2B,$25,$26,$25 ; 9BFC  TL=$2B TR=$25 BL=$26 BR=$25
        .byte   $25,$25,$25,$25 ; 9C00  TL=$25 TR=$25 BL=$25 BR=$25
        .byte   $18,$13,$13,$13 ; 9C04  TL=$18 TR=$13 BL=$13 BR=$13
        .byte   $26,$25,$26,$25 ; 9C08  TL=$26 TR=$25 BL=$26 BR=$25
        .byte   $29,$27,$25,$25 ; 9C0C  TL=$29 TR=$27 BL=$25 BR=$25
        .byte   $63,$63,$63,$63 ; 9C10  TL=$63 TR=$63 BL=$63 BR=$63
        .byte   $68,$68,$68,$68 ; 9C14  TL=$68 TR=$68 BL=$68 BR=$68
        .byte   $66,$66,$84,$84 ; 9C18  TL=$66 TR=$66 BL=$84 BR=$84
        .byte   $65,$65,$66,$66 ; 9C1C  TL=$65 TR=$65 BL=$66 BR=$66
        .byte   $31,$30,$2F,$2E ; 9C20  TL=$31 TR=$30 BL=$2F BR=$2E
        .byte   $66,$65,$30,$66 ; 9C24  TL=$66 TR=$65 BL=$30 BR=$66
        .byte   $65,$66,$66,$31 ; 9C28  TL=$65 TR=$66 BL=$66 BR=$31
        .byte   $2E,$32,$2E,$2E ; 9C2C  TL=$2E TR=$32 BL=$2E BR=$2E
        .byte   $30,$2E,$2E,$2E ; 9C30  TL=$30 TR=$2E BL=$2E BR=$2E
        .byte   $66,$66,$31,$30 ; 9C34  TL=$66 TR=$66 BL=$31 BR=$30
        .byte   $66,$68,$2E,$66 ; 9C38  TL=$66 TR=$68 BL=$2E BR=$66
        .byte   $2F,$2E,$2F,$2E ; 9C3C  TL=$2F TR=$2E BL=$2F BR=$2E
        .byte   $3C,$3A,$3B,$39 ; 9C40  TL=$3C TR=$3A BL=$3B BR=$39
        .byte   $39,$39,$39,$3E ; 9C44  TL=$39 TR=$39 BL=$39 BR=$3E
        .byte   $3D,$3A,$39,$39 ; 9C48  TL=$3D TR=$3A BL=$39 BR=$39
        .byte   $31,$2E,$2E,$2E ; 9C4C  TL=$31 TR=$2E BL=$2E BR=$2E
        .byte   $2E,$2E,$2E,$2E ; 9C50  TL=$2E TR=$2E BL=$2E BR=$2E
        .byte   $3A,$3A,$39,$39 ; 9C54  TL=$3A TR=$3A BL=$39 BR=$39
        .byte   $39,$3E,$39,$39 ; 9C58  TL=$39 TR=$3E BL=$39 BR=$39
        .byte   $3E,$39,$39,$3E ; 9C5C  TL=$3E TR=$39 BL=$39 BR=$3E
        .byte   $39,$3E,$3E,$3E ; 9C60  TL=$39 TR=$3E BL=$3E BR=$3E
        .byte   $3E,$3E,$39,$39 ; 9C64  TL=$3E TR=$3E BL=$39 BR=$39
        .byte   $3E,$3E,$3E,$39 ; 9C68  TL=$3E TR=$3E BL=$3E BR=$39
        .byte   $39,$39,$3E,$39 ; 9C6C  TL=$39 TR=$39 BL=$3E BR=$39
        .byte   $3E,$3E,$3E,$3E ; 9C70  TL=$3E TR=$3E BL=$3E BR=$3E
        .byte   $67,$67,$68,$68 ; 9C74  TL=$67 TR=$67 BL=$68 BR=$68
        .byte   $84,$84,$67,$67 ; 9C78  TL=$84 TR=$84 BL=$67 BR=$67
        .byte   $2E,$2E,$67,$67 ; 9C7C  TL=$2E TR=$2E BL=$67 BR=$67
        .byte   $64,$64,$63,$63 ; 9C80  TL=$64 TR=$64 BL=$63 BR=$63
        .byte   $39,$39,$39,$39 ; 9C84  TL=$39 TR=$39 BL=$39 BR=$39
        .byte   $3E,$3E,$39,$3E ; 9C88  TL=$3E TR=$3E BL=$39 BR=$3E
        .byte   $2F,$2E,$2E,$2E ; 9C8C  TL=$2F TR=$2E BL=$2E BR=$2E
        .byte   $67,$67,$66,$66 ; 9C90  TL=$67 TR=$67 BL=$66 BR=$66
        .byte   $68,$68,$66,$66 ; 9C94  TL=$68 TR=$68 BL=$66 BR=$66
        .byte   $32,$30,$2E,$2E ; 9C98  TL=$32 TR=$30 BL=$2E BR=$2E
        .byte   $64,$64,$3A,$3A ; 9C9C  TL=$64 TR=$64 BL=$3A BR=$3A
        .byte   $3E,$39,$39,$39 ; 9CA0  TL=$3E TR=$39 BL=$39 BR=$39
        .byte   $0B,$0B,$0B,$44 ; 9CA4  TL=$0B TR=$0B BL=$0B BR=$44
        .byte   $0B,$0B,$45,$45 ; 9CA8  TL=$0B TR=$0B BL=$45 BR=$45
        .byte   $0B,$0B,$45,$46 ; 9CAC  TL=$0B TR=$0B BL=$45 BR=$46
        .byte   $0B,$44,$44,$4C ; 9CB0  TL=$0B TR=$44 BL=$44 BR=$4C
        .byte   $45,$45,$5A,$5A ; 9CB4  TL=$45 TR=$45 BL=$5A BR=$5A
        .byte   $46,$44,$4C,$4C ; 9CB8  TL=$46 TR=$44 BL=$4C BR=$4C
        .byte   $45,$46,$5A,$4C ; 9CBC  TL=$45 TR=$46 BL=$5A BR=$4C
        .byte   $0B,$44,$45,$4C ; 9CC0  TL=$0B TR=$44 BL=$45 BR=$4C
        .byte   $4C,$5B,$5B,$09 ; 9CC4  TL=$4C TR=$5B BL=$5B BR=$09
        .byte   $09,$03,$04,$02 ; 9CC8  TL=$09 TR=$03 BL=$04 BR=$02
        .byte   $03,$03,$02,$02 ; 9CCC  TL=$03 TR=$03 BL=$02 BR=$02
        .byte   $45,$4C,$5A,$5B ; 9CD0  TL=$45 TR=$4C BL=$5A BR=$5B
        .byte   $59,$5B,$05,$03 ; 9CD4  TL=$59 TR=$5B BL=$05 BR=$03
        .byte   $5A,$5A,$09,$03 ; 9CD8  TL=$5A TR=$5A BL=$09 BR=$03
        .byte   $5A,$4C,$03,$59 ; 9CDC  TL=$5A TR=$4C BL=$03 BR=$59
        .byte   $04,$02,$02,$02 ; 9CE0  TL=$04 TR=$02 BL=$02 BR=$02
        .byte   $02,$05,$02,$02 ; 9CE4  TL=$02 TR=$05 BL=$02 BR=$02
        .byte   $46,$0B,$4C,$46 ; 9CE8  TL=$46 TR=$0B BL=$4C BR=$46
        .byte   $59,$4C,$05,$59 ; 9CEC  TL=$59 TR=$4C BL=$05 BR=$59
        .byte   $46,$0B,$4C,$45 ; 9CF0  TL=$46 TR=$0B BL=$4C BR=$45
        .byte   $59,$5B,$04,$03 ; 9CF4  TL=$59 TR=$5B BL=$04 BR=$03
        .byte   $09,$59,$04,$05 ; 9CF8  TL=$09 TR=$59 BL=$04 BR=$05
        .byte   $5A,$5B,$03,$03 ; 9CFC  TL=$5A TR=$5B BL=$03 BR=$03
        .byte   $09,$04,$04,$02 ; 9D00  TL=$09 TR=$04 BL=$04 BR=$02
        .byte   $02,$02,$02,$02 ; 9D04  TL=$02 TR=$02 BL=$02 BR=$02
        .byte   $02,$02,$06,$07 ; 9D08  TL=$02 TR=$02 BL=$06 BR=$07
        .byte   $06,$07,$54,$55 ; 9D0C  TL=$06 TR=$07 BL=$54 BR=$55
        .byte   $54,$55,$4C,$4A ; 9D10  TL=$54 TR=$55 BL=$4C BR=$4A
        .byte   $02,$02,$08,$08 ; 9D14  TL=$02 TR=$02 BL=$08 BR=$08
        .byte   $55,$55,$4A,$4A ; 9D18  TL=$55 TR=$55 BL=$4A BR=$4A
        .byte   $55,$56,$4A,$4C ; 9D1C  TL=$55 TR=$56 BL=$4A BR=$4C
        .byte   $06,$08,$55,$56 ; 9D20  TL=$06 TR=$08 BL=$55 BR=$56
        .byte   $02,$02,$06,$08 ; 9D24  TL=$02 TR=$02 BL=$06 BR=$08
        .byte   $08,$08,$54,$56 ; 9D28  TL=$08 TR=$08 BL=$54 BR=$56
        .byte   $02,$02,$08,$07 ; 9D2C  TL=$02 TR=$02 BL=$08 BR=$07
        .byte   $57,$4C,$57,$4C ; 9D30  TL=$57 TR=$4C BL=$57 BR=$4C
        .byte   $44,$4C,$47,$4C ; 9D34  TL=$44 TR=$4C BL=$47 BR=$4C
        .byte   $44,$45,$47,$4C ; 9D38  TL=$44 TR=$45 BL=$47 BR=$4C
        .byte   $4C,$58,$5A,$5B ; 9D3C  TL=$4C TR=$58 BL=$5A BR=$5B
        .byte   $5A,$5B,$09,$03 ; 9D40  TL=$5A TR=$5B BL=$09 BR=$03
        .byte   $4C,$4A,$4B,$0D ; 9D44  TL=$4C TR=$4A BL=$4B BR=$0D
        .byte   $0C,$0B,$0B,$0B ; 9D48  TL=$0C TR=$0B BL=$0B BR=$0B
        .byte   $4A,$4C,$0C,$49 ; 9D4C  TL=$4A TR=$4C BL=$0C BR=$49
        .byte   $06,$07,$55,$55 ; 9D50  TL=$06 TR=$07 BL=$55 BR=$55
        .byte   $4C,$4C,$4B,$49 ; 9D54  TL=$4C TR=$4C BL=$4B BR=$49
        .byte   $4C,$4C,$4A,$4A ; 9D58  TL=$4C TR=$4C BL=$4A BR=$4A
        .byte   $47,$58,$47,$58 ; 9D5C  TL=$47 TR=$58 BL=$47 BR=$58
        .byte   $42,$43,$02,$02 ; 9D60  TL=$42 TR=$43 BL=$02 BR=$02
        .byte   $02,$02,$02,$07 ; 9D64  TL=$02 TR=$02 BL=$02 BR=$07
        .byte   $07,$54,$54,$4C ; 9D68  TL=$07 TR=$54 BL=$54 BR=$4C
        .byte   $7F,$7F,$7F,$7F ; 9D6C  TL=$7F TR=$7F BL=$7F BR=$7F
        .byte   $47,$4C,$49,$4A ; 9D70  TL=$47 TR=$4C BL=$49 BR=$4A
        .byte   $0E,$0C,$0B,$0B ; 9D74  TL=$0E TR=$0C BL=$0B BR=$0B
        .byte   $55,$56,$4C,$4C ; 9D78  TL=$55 TR=$56 BL=$4C BR=$4C
        .byte   $47,$4C,$47,$4C ; 9D7C  TL=$47 TR=$4C BL=$47 BR=$4C
        .byte   $02,$02,$54,$55 ; 9D80  TL=$02 TR=$02 BL=$54 BR=$55
; 254 ChunkDesc records — the level's Chunk definitions, each a 2×2 quad of Structures. These are
; the indices TankLvl8_MapData's grid holds.
TankLvl8_ChunkDescTable:
        .byte   $00,$00,$01,$01 ; 9D84  TL=$00 TR=$00 BL=$01 BR=$01
        .byte   $00,$02,$01,$01 ; 9D88  TL=$00 TR=$02 BL=$01 BR=$01
        .byte   $02,$02,$01,$01 ; 9D8C  TL=$02 TR=$02 BL=$01 BR=$01
        .byte   $02,$03,$01,$01 ; 9D90  TL=$02 TR=$03 BL=$01 BR=$01
        .byte   $04,$04,$01,$01 ; 9D94  TL=$04 TR=$04 BL=$01 BR=$01
        .byte   $05,$06,$01,$07 ; 9D98  TL=$05 TR=$06 BL=$01 BR=$07
        .byte   $08,$04,$09,$0A ; 9D9C  TL=$08 TR=$04 BL=$09 BR=$0A
        .byte   $04,$04,$0B,$0B ; 9DA0  TL=$04 TR=$04 BL=$0B BR=$0B
        .byte   $02,$02,$0C,$0D ; 9DA4  TL=$02 TR=$02 BL=$0C BR=$0D
        .byte   $02,$02,$07,$0E ; 9DA8  TL=$02 TR=$02 BL=$07 BR=$0E
        .byte   $02,$02,$0E,$0E ; 9DAC  TL=$02 TR=$02 BL=$0E BR=$0E
        .byte   $02,$02,$0F,$01 ; 9DB0  TL=$02 TR=$02 BL=$0F BR=$01
        .byte   $02,$10,$01,$01 ; 9DB4  TL=$02 TR=$10 BL=$01 BR=$01
        .byte   $11,$12,$11,$12 ; 9DB8  TL=$11 TR=$12 BL=$11 BR=$12
        .byte   $13,$14,$14,$13 ; 9DBC  TL=$13 TR=$14 BL=$14 BR=$13
        .byte   $15,$15,$16,$16 ; 9DC0  TL=$15 TR=$15 BL=$16 BR=$16
        .byte   $11,$07,$11,$07 ; 9DC4  TL=$11 TR=$07 BL=$11 BR=$07
        .byte   $09,$17,$09,$0A ; 9DC8  TL=$09 TR=$17 BL=$09 BR=$0A
        .byte   $18,$18,$19,$1A ; 9DCC  TL=$18 TR=$18 BL=$19 BR=$1A
        .byte   $1B,$0D,$0C,$0D ; 9DD0  TL=$1B TR=$0D BL=$0C BR=$0D
        .byte   $07,$0E,$07,$0E ; 9DD4  TL=$07 TR=$0E BL=$07 BR=$0E
        .byte   $0E,$0E,$0E,$0E ; 9DD8  TL=$0E TR=$0E BL=$0E BR=$0E
        .byte   $0F,$12,$0F,$12 ; 9DDC  TL=$0F TR=$12 BL=$0F BR=$12
        .byte   $13,$15,$1C,$16 ; 9DE0  TL=$13 TR=$15 BL=$1C BR=$16
        .byte   $15,$15,$16,$1D ; 9DE4  TL=$15 TR=$15 BL=$16 BR=$1D
        .byte   $1C,$14,$1C,$1E ; 9DE8  TL=$1C TR=$14 BL=$1C BR=$1E
        .byte   $1F,$14,$20,$1E ; 9DEC  TL=$1F TR=$14 BL=$20 BR=$1E
        .byte   $1F,$21,$20,$1E ; 9DF0  TL=$1F TR=$21 BL=$20 BR=$1E
        .byte   $18,$18,$0B,$0B ; 9DF4  TL=$18 TR=$18 BL=$0B BR=$0B
        .byte   $0C,$0D,$0C,$0D ; 9DF8  TL=$0C TR=$0D BL=$0C BR=$0D
        .byte   $14,$1F,$1E,$20 ; 9DFC  TL=$14 TR=$1F BL=$1E BR=$20
        .byte   $21,$1F,$1E,$20 ; 9E00  TL=$21 TR=$1F BL=$1E BR=$20
        .byte   $16,$14,$16,$1E ; 9E04  TL=$16 TR=$14 BL=$16 BR=$1E
        .byte   $14,$1F,$15,$20 ; 9E08  TL=$14 TR=$1F BL=$15 BR=$20
        .byte   $1C,$16,$1C,$16 ; 9E0C  TL=$1C TR=$16 BL=$1C BR=$16
        .byte   $14,$1F,$14,$1C ; 9E10  TL=$14 TR=$1F BL=$14 BR=$1C
        .byte   $16,$16,$16,$16 ; 9E14  TL=$16 TR=$16 BL=$16 BR=$16
        .byte   $09,$0A,$09,$0A ; 9E18  TL=$09 TR=$0A BL=$09 BR=$0A
        .byte   $0B,$18,$0B,$0B ; 9E1C  TL=$0B TR=$18 BL=$0B BR=$0B
        .byte   $1F,$16,$20,$16 ; 9E20  TL=$1F TR=$16 BL=$20 BR=$16
        .byte   $16,$21,$16,$1E ; 9E24  TL=$16 TR=$21 BL=$16 BR=$1E
        .byte   $21,$1F,$14,$1C ; 9E28  TL=$21 TR=$1F BL=$14 BR=$1C
        .byte   $1C,$21,$1C,$1E ; 9E2C  TL=$1C TR=$21 BL=$1C BR=$1E
        .byte   $13,$21,$14,$13 ; 9E30  TL=$13 TR=$21 BL=$14 BR=$13
        .byte   $1F,$16,$20,$22 ; 9E34  TL=$1F TR=$16 BL=$20 BR=$22
        .byte   $11,$07,$23,$24 ; 9E38  TL=$11 TR=$07 BL=$23 BR=$24
        .byte   $09,$0A,$25,$0A ; 9E3C  TL=$09 TR=$0A BL=$25 BR=$0A
        .byte   $14,$14,$1E,$15 ; 9E40  TL=$14 TR=$14 BL=$1E BR=$15
        .byte   $14,$21,$15,$15 ; 9E44  TL=$14 TR=$21 BL=$15 BR=$15
        .byte   $14,$14,$15,$15 ; 9E48  TL=$14 TR=$14 BL=$15 BR=$15
        .byte   $11,$07,$11,$0F ; 9E4C  TL=$11 TR=$07 BL=$11 BR=$0F
        .byte   $09,$17,$0F,$0F ; 9E50  TL=$09 TR=$17 BL=$0F BR=$0F
        .byte   $18,$18,$0F,$0F ; 9E54  TL=$18 TR=$18 BL=$0F BR=$0F
        .byte   $1B,$0D,$0F,$0F ; 9E58  TL=$1B TR=$0D BL=$0F BR=$0F
        .byte   $07,$0E,$0F,$0F ; 9E5C  TL=$07 TR=$0E BL=$0F BR=$0F
        .byte   $0E,$0E,$0F,$0F ; 9E60  TL=$0E TR=$0E BL=$0F BR=$0F
        .byte   $14,$21,$1E,$15 ; 9E64  TL=$14 TR=$21 BL=$1E BR=$15
        .byte   $16,$16,$16,$22 ; 9E68  TL=$16 TR=$16 BL=$16 BR=$22
        .byte   $11,$0F,$23,$24 ; 9E6C  TL=$11 TR=$0F BL=$23 BR=$24
        .byte   $26,$27,$25,$28 ; 9E70  TL=$26 TR=$27 BL=$25 BR=$28
        .byte   $27,$27,$28,$28 ; 9E74  TL=$27 TR=$27 BL=$28 BR=$28
        .byte   $0F,$0F,$29,$0F ; 9E78  TL=$0F TR=$0F BL=$29 BR=$0F
        .byte   $0F,$0F,$0F,$0F ; 9E7C  TL=$0F TR=$0F BL=$0F BR=$0F
        .byte   $21,$14,$15,$15 ; 9E80  TL=$21 TR=$14 BL=$15 BR=$15
        .byte   $11,$0F,$11,$0F ; 9E84  TL=$11 TR=$0F BL=$11 BR=$0F
        .byte   $0F,$2A,$0F,$0F ; 9E88  TL=$0F TR=$2A BL=$0F BR=$0F
        .byte   $28,$28,$2A,$2B ; 9E8C  TL=$28 TR=$28 BL=$2A BR=$2B
        .byte   $28,$28,$2A,$28 ; 9E90  TL=$28 TR=$28 BL=$2A BR=$28
        .byte   $28,$29,$28,$2B ; 9E94  TL=$28 TR=$29 BL=$28 BR=$2B
        .byte   $0F,$0F,$2C,$22 ; 9E98  TL=$0F TR=$0F BL=$2C BR=$22
        .byte   $0F,$12,$23,$24 ; 9E9C  TL=$0F TR=$12 BL=$23 BR=$24
        .byte   $1C,$16,$25,$16 ; 9EA0  TL=$1C TR=$16 BL=$25 BR=$16
        .byte   $21,$14,$1E,$15 ; 9EA4  TL=$21 TR=$14 BL=$1E BR=$15
        .byte   $21,$1F,$15,$20 ; 9EA8  TL=$21 TR=$1F BL=$15 BR=$20
        .byte   $21,$21,$21,$21 ; 9EAC  TL=$21 TR=$21 BL=$21 BR=$21
        .byte   $28,$0F,$2A,$29 ; 9EB0  TL=$28 TR=$0F BL=$2A BR=$29
        .byte   $14,$14,$21,$21 ; 9EB4  TL=$14 TR=$14 BL=$21 BR=$21
        .byte   $1F,$2D,$21,$21 ; 9EB8  TL=$1F TR=$2D BL=$21 BR=$21
        .byte   $2D,$2D,$21,$21 ; 9EBC  TL=$2D TR=$2D BL=$21 BR=$21
        .byte   $01,$01,$0F,$2E ; 9EC0  TL=$01 TR=$01 BL=$0F BR=$2E
        .byte   $01,$01,$2E,$2E ; 9EC4  TL=$01 TR=$01 BL=$2E BR=$2E
        .byte   $01,$01,$2E,$0F ; 9EC8  TL=$01 TR=$01 BL=$2E BR=$0F
        .byte   $01,$01,$0F,$0F ; 9ECC  TL=$01 TR=$01 BL=$0F BR=$0F
        .byte   $01,$0F,$0F,$0F ; 9ED0  TL=$01 TR=$0F BL=$0F BR=$0F
        .byte   $28,$29,$2F,$28 ; 9ED4  TL=$28 TR=$29 BL=$2F BR=$28
        .byte   $0F,$01,$0F,$0F ; 9ED8  TL=$0F TR=$01 BL=$0F BR=$0F
        .byte   $0F,$2E,$0F,$2E ; 9EDC  TL=$0F TR=$2E BL=$0F BR=$2E
        .byte   $2E,$30,$30,$31 ; 9EE0  TL=$2E TR=$30 BL=$30 BR=$31
        .byte   $32,$32,$2E,$2E ; 9EE4  TL=$32 TR=$32 BL=$2E BR=$2E
        .byte   $32,$32,$33,$34 ; 9EE8  TL=$32 TR=$32 BL=$33 BR=$34
        .byte   $32,$32,$34,$34 ; 9EEC  TL=$32 TR=$32 BL=$34 BR=$34
        .byte   $32,$2E,$34,$34 ; 9EF0  TL=$32 TR=$2E BL=$34 BR=$34
        .byte   $2E,$0F,$2E,$0F ; 9EF4  TL=$2E TR=$0F BL=$2E BR=$0F
        .byte   $0F,$0F,$26,$27 ; 9EF8  TL=$0F TR=$0F BL=$26 BR=$27
        .byte   $26,$27,$2F,$28 ; 9EFC  TL=$26 TR=$27 BL=$2F BR=$28
        .byte   $35,$0F,$28,$0F ; 9F00  TL=$35 TR=$0F BL=$28 BR=$0F
        .byte   $0F,$0F,$30,$32 ; 9F04  TL=$0F TR=$0F BL=$30 BR=$32
        .byte   $0F,$30,$30,$31 ; 9F08  TL=$0F TR=$30 BL=$30 BR=$31
        .byte   $36,$34,$2E,$2E ; 9F0C  TL=$36 TR=$34 BL=$2E BR=$2E
        .byte   $37,$32,$33,$34 ; 9F10  TL=$37 TR=$32 BL=$33 BR=$34
        .byte   $31,$34,$2E,$2E ; 9F14  TL=$31 TR=$34 BL=$2E BR=$2E
        .byte   $34,$34,$33,$34 ; 9F18  TL=$34 TR=$34 BL=$33 BR=$34
        .byte   $34,$34,$34,$34 ; 9F1C  TL=$34 TR=$34 BL=$34 BR=$34
        .byte   $34,$34,$34,$22 ; 9F20  TL=$34 TR=$34 BL=$34 BR=$22
        .byte   $2E,$0F,$23,$24 ; 9F24  TL=$2E TR=$0F BL=$23 BR=$24
        .byte   $35,$28,$28,$28 ; 9F28  TL=$35 TR=$28 BL=$28 BR=$28
        .byte   $0F,$0F,$23,$24 ; 9F2C  TL=$0F TR=$0F BL=$23 BR=$24
        .byte   $29,$27,$28,$28 ; 9F30  TL=$29 TR=$27 BL=$28 BR=$28
        .byte   $36,$34,$25,$34 ; 9F34  TL=$36 TR=$34 BL=$25 BR=$34
        .byte   $37,$32,$34,$34 ; 9F38  TL=$37 TR=$32 BL=$34 BR=$34
        .byte   $31,$34,$34,$34 ; 9F3C  TL=$31 TR=$34 BL=$34 BR=$34
        .byte   $0F,$0F,$37,$0F ; 9F40  TL=$0F TR=$0F BL=$37 BR=$0F
        .byte   $30,$32,$36,$34 ; 9F44  TL=$30 TR=$32 BL=$36 BR=$34
        .byte   $2E,$2E,$32,$2E ; 9F48  TL=$2E TR=$2E BL=$32 BR=$2E
        .byte   $35,$28,$2B,$2B ; 9F4C  TL=$35 TR=$28 BL=$2B BR=$2B
        .byte   $2B,$0F,$0F,$0F ; 9F50  TL=$2B TR=$0F BL=$0F BR=$0F
        .byte   $33,$34,$0F,$0F ; 9F54  TL=$33 TR=$34 BL=$0F BR=$0F
        .byte   $34,$34,$0F,$0F ; 9F58  TL=$34 TR=$34 BL=$0F BR=$0F
        .byte   $33,$34,$36,$34 ; 9F5C  TL=$33 TR=$34 BL=$36 BR=$34
        .byte   $34,$34,$34,$1D ; 9F60  TL=$34 TR=$34 BL=$34 BR=$1D
        .byte   $34,$37,$34,$0F ; 9F64  TL=$34 TR=$37 BL=$34 BR=$0F
        .byte   $0F,$2E,$38,$2E ; 9F68  TL=$0F TR=$2E BL=$38 BR=$2E
        .byte   $34,$37,$34,$34 ; 9F6C  TL=$34 TR=$37 BL=$34 BR=$34
        .byte   $2E,$0F,$2E,$39 ; 9F70  TL=$2E TR=$0F BL=$2E BR=$39
        .byte   $0F,$0F,$39,$39 ; 9F74  TL=$0F TR=$0F BL=$39 BR=$39
        .byte   $0F,$0F,$39,$38 ; 9F78  TL=$0F TR=$0F BL=$39 BR=$38
        .byte   $0F,$0F,$38,$38 ; 9F7C  TL=$0F TR=$0F BL=$38 BR=$38
        .byte   $38,$2E,$38,$2E ; 9F80  TL=$38 TR=$2E BL=$38 BR=$2E
        .byte   $2E,$39,$2E,$39 ; 9F84  TL=$2E TR=$39 BL=$2E BR=$39
        .byte   $39,$39,$39,$39 ; 9F88  TL=$39 TR=$39 BL=$39 BR=$39
        .byte   $39,$3A,$3B,$3C ; 9F8C  TL=$39 TR=$3A BL=$3B BR=$3C
        .byte   $3D,$3E,$3F,$40 ; 9F90  TL=$3D TR=$3E BL=$3F BR=$40
        .byte   $39,$41,$42,$43 ; 9F94  TL=$39 TR=$41 BL=$42 BR=$43
        .byte   $39,$38,$39,$38 ; 9F98  TL=$39 TR=$38 BL=$39 BR=$38
        .byte   $38,$38,$38,$38 ; 9F9C  TL=$38 TR=$38 BL=$38 BR=$38
        .byte   $38,$44,$44,$45 ; 9FA0  TL=$38 TR=$44 BL=$44 BR=$45
        .byte   $38,$38,$46,$38 ; 9FA4  TL=$38 TR=$38 BL=$46 BR=$38
        .byte   $47,$48,$48,$48 ; 9FA8  TL=$47 TR=$48 BL=$48 BR=$48
        .byte   $48,$48,$48,$48 ; 9FAC  TL=$48 TR=$48 BL=$48 BR=$48
        .byte   $48,$48,$48,$22 ; 9FB0  TL=$48 TR=$48 BL=$48 BR=$22
        .byte   $39,$38,$23,$24 ; 9FB4  TL=$39 TR=$38 BL=$23 BR=$24
        .byte   $44,$49,$25,$4A ; 9FB8  TL=$44 TR=$49 BL=$25 BR=$4A
        .byte   $4B,$4C,$4D,$4E ; 9FBC  TL=$4B TR=$4C BL=$4D BR=$4E
        .byte   $4F,$46,$50,$1D ; 9FC0  TL=$4F TR=$46 BL=$50 BR=$1D
        .byte   $48,$48,$51,$52 ; 9FC4  TL=$48 TR=$48 BL=$51 BR=$52
        .byte   $53,$51,$39,$39 ; 9FC8  TL=$53 TR=$51 BL=$39 BR=$39
        .byte   $48,$48,$51,$51 ; 9FCC  TL=$48 TR=$48 BL=$51 BR=$51
        .byte   $51,$39,$39,$39 ; 9FD0  TL=$51 TR=$39 BL=$39 BR=$39
        .byte   $54,$54,$38,$38 ; 9FD4  TL=$54 TR=$54 BL=$38 BR=$38
        .byte   $55,$56,$54,$54 ; 9FD8  TL=$55 TR=$56 BL=$54 BR=$54
        .byte   $3C,$48,$43,$48 ; 9FDC  TL=$3C TR=$48 BL=$43 BR=$48
        .byte   $57,$48,$48,$48 ; 9FE0  TL=$57 TR=$48 BL=$48 BR=$48
        .byte   $39,$41,$3B,$43 ; 9FE4  TL=$39 TR=$41 BL=$3B BR=$43
        .byte   $2E,$39,$23,$24 ; 9FE8  TL=$2E TR=$39 BL=$23 BR=$24
        .byte   $48,$48,$25,$48 ; 9FEC  TL=$48 TR=$48 BL=$25 BR=$48
        .byte   $48,$51,$58,$59 ; 9FF0  TL=$48 TR=$51 BL=$58 BR=$59
        .byte   $5A,$48,$48,$48 ; 9FF4  TL=$5A TR=$48 BL=$48 BR=$48
        .byte   $4B,$4C,$5B,$5B ; 9FF8  TL=$4B TR=$4C BL=$5B BR=$5B
        .byte   $4F,$46,$50,$5C ; 9FFC  TL=$4F TR=$46 BL=$50 BR=$5C
        .byte   $2E,$2E,$37,$32 ; A000  TL=$2E TR=$2E BL=$37 BR=$32
        .byte   $39,$51,$39,$39 ; A004  TL=$39 TR=$51 BL=$39 BR=$39
        .byte   $38,$2E,$38,$38 ; A008  TL=$38 TR=$2E BL=$38 BR=$38
        .byte   $2E,$2E,$38,$38 ; A00C  TL=$2E TR=$2E BL=$38 BR=$38
        .byte   $2E,$2E,$38,$02 ; A010  TL=$2E TR=$2E BL=$38 BR=$02
        .byte   $2E,$2E,$02,$02 ; A014  TL=$2E TR=$2E BL=$02 BR=$02
        .byte   $2E,$39,$02,$02 ; A018  TL=$2E TR=$39 BL=$02 BR=$02
        .byte   $39,$39,$02,$02 ; A01C  TL=$39 TR=$39 BL=$02 BR=$02
        .byte   $39,$39,$02,$5D ; A020  TL=$39 TR=$39 BL=$02 BR=$5D
        .byte   $39,$39,$5E,$5F ; A024  TL=$39 TR=$39 BL=$5E BR=$5F
        .byte   $39,$38,$02,$38 ; A028  TL=$39 TR=$38 BL=$02 BR=$38
        .byte   $38,$02,$38,$02 ; A02C  TL=$38 TR=$02 BL=$38 BR=$02
        .byte   $02,$02,$02,$02 ; A030  TL=$02 TR=$02 BL=$02 BR=$02
        .byte   $02,$02,$02,$60 ; A034  TL=$02 TR=$02 BL=$02 BR=$60
        .byte   $02,$02,$61,$61 ; A038  TL=$02 TR=$02 BL=$61 BR=$61
        .byte   $02,$02,$62,$63 ; A03C  TL=$02 TR=$02 BL=$62 BR=$63
        .byte   $02,$60,$64,$65 ; A040  TL=$02 TR=$60 BL=$64 BR=$65
        .byte   $61,$61,$66,$67 ; A044  TL=$61 TR=$61 BL=$66 BR=$67
        .byte   $62,$68,$69,$66 ; A048  TL=$62 TR=$68 BL=$69 BR=$66
        .byte   $6A,$6B,$6C,$6D ; A04C  TL=$6A TR=$6B BL=$6C BR=$6D
        .byte   $61,$61,$67,$67 ; A050  TL=$61 TR=$61 BL=$67 BR=$67
        .byte   $61,$6E,$67,$6F ; A054  TL=$61 TR=$6E BL=$67 BR=$6F
        .byte   $02,$38,$70,$38 ; A058  TL=$02 TR=$38 BL=$70 BR=$38
        .byte   $38,$38,$23,$24 ; A05C  TL=$38 TR=$38 BL=$23 BR=$24
        .byte   $02,$02,$02,$5D ; A060  TL=$02 TR=$02 BL=$02 BR=$5D
        .byte   $62,$63,$71,$72 ; A064  TL=$62 TR=$63 BL=$71 BR=$72
        .byte   $64,$65,$73,$74 ; A068  TL=$64 TR=$65 BL=$73 BR=$74
        .byte   $67,$67,$75,$75 ; A06C  TL=$67 TR=$67 BL=$75 BR=$75
        .byte   $69,$72,$75,$75 ; A070  TL=$69 TR=$72 BL=$75 BR=$75
        .byte   $73,$74,$75,$75 ; A074  TL=$73 TR=$74 BL=$75 BR=$75
        .byte   $75,$75,$75,$75 ; A078  TL=$75 TR=$75 BL=$75 BR=$75
        .byte   $75,$75,$75,$76 ; A07C  TL=$75 TR=$75 BL=$75 BR=$76
        .byte   $75,$76,$77,$78 ; A080  TL=$75 TR=$76 BL=$77 BR=$78
        .byte   $79,$79,$7A,$7A ; A084  TL=$79 TR=$79 BL=$7A BR=$7A
        .byte   $79,$75,$7B,$7C ; A088  TL=$79 TR=$75 BL=$7B BR=$7C
        .byte   $75,$75,$7D,$75 ; A08C  TL=$75 TR=$75 BL=$7D BR=$75
        .byte   $75,$75,$79,$79 ; A090  TL=$75 TR=$75 BL=$79 BR=$79
        .byte   $75,$75,$76,$7E ; A094  TL=$75 TR=$75 BL=$76 BR=$7E
        .byte   $75,$75,$7F,$7E ; A098  TL=$75 TR=$75 BL=$7F BR=$7E
        .byte   $75,$6D,$7F,$22 ; A09C  TL=$75 TR=$6D BL=$7F BR=$22
        .byte   $80,$38,$23,$24 ; A0A0  TL=$80 TR=$38 BL=$23 BR=$24
        .byte   $4B,$4C,$4D,$22 ; A0A4  TL=$4B TR=$4C BL=$4D BR=$22
        .byte   $02,$02,$02,$81 ; A0A8  TL=$02 TR=$02 BL=$02 BR=$81
        .byte   $82,$68,$83,$66 ; A0AC  TL=$82 TR=$68 BL=$83 BR=$66
        .byte   $84,$74,$6C,$75 ; A0B0  TL=$84 TR=$74 BL=$6C BR=$75
        .byte   $77,$78,$85,$08 ; A0B4  TL=$77 TR=$78 BL=$85 BR=$08
        .byte   $85,$08,$86,$02 ; A0B8  TL=$85 TR=$08 BL=$86 BR=$02
        .byte   $04,$04,$02,$02 ; A0BC  TL=$04 TR=$04 BL=$02 BR=$02
        .byte   $05,$87,$02,$03 ; A0C0  TL=$05 TR=$87 BL=$02 BR=$03
        .byte   $7B,$88,$05,$06 ; A0C4  TL=$7B TR=$88 BL=$05 BR=$06
        .byte   $88,$78,$06,$08 ; A0C8  TL=$88 TR=$78 BL=$06 BR=$08
        .byte   $7A,$7A,$04,$04 ; A0CC  TL=$7A TR=$7A BL=$04 BR=$04
        .byte   $7A,$89,$04,$04 ; A0D0  TL=$7A TR=$89 BL=$04 BR=$04
        .byte   $78,$8A,$08,$04 ; A0D4  TL=$78 TR=$8A BL=$08 BR=$04
        .byte   $8A,$38,$04,$38 ; A0D8  TL=$8A TR=$38 BL=$04 BR=$38
        .byte   $38,$38,$00,$00 ; A0DC  TL=$38 TR=$38 BL=$00 BR=$00
        .byte   $38,$02,$00,$02 ; A0E0  TL=$38 TR=$02 BL=$00 BR=$02
        .byte   $02,$8B,$02,$8B ; A0E4  TL=$02 TR=$8B BL=$02 BR=$8B
        .byte   $66,$75,$75,$75 ; A0E8  TL=$66 TR=$75 BL=$75 BR=$75
        .byte   $8C,$8C,$75,$75 ; A0EC  TL=$8C TR=$8C BL=$75 BR=$75
        .byte   $8C,$8D,$75,$8E ; A0F0  TL=$8C TR=$8D BL=$75 BR=$8E
        .byte   $86,$02,$02,$02 ; A0F4  TL=$86 TR=$02 BL=$02 BR=$02
        .byte   $02,$02,$5E,$5F ; A0F8  TL=$02 TR=$02 BL=$5E BR=$5F
        .byte   $02,$38,$02,$00 ; A0FC  TL=$02 TR=$38 BL=$02 BR=$00
        .byte   $21,$8F,$13,$8F ; A100  TL=$21 TR=$8F BL=$13 BR=$8F
        .byte   $00,$00,$00,$00 ; A104  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $8F,$8F,$8F,$13 ; A108  TL=$8F TR=$8F BL=$8F BR=$13
        .byte   $8F,$00,$15,$1D ; A10C  TL=$8F TR=$00 BL=$15 BR=$1D
        .byte   $00,$02,$00,$02 ; A110  TL=$00 TR=$02 BL=$00 BR=$02
        .byte   $75,$6F,$75,$6D ; A114  TL=$75 TR=$6F BL=$75 BR=$6D
        .byte   $02,$00,$70,$00 ; A118  TL=$02 TR=$00 BL=$70 BR=$00
        .byte   $00,$00,$00,$8F ; A11C  TL=$00 TR=$00 BL=$00 BR=$8F
        .byte   $00,$21,$8F,$8F ; A120  TL=$00 TR=$21 BL=$8F BR=$8F
        .byte   $8F,$8F,$8F,$8F ; A124  TL=$8F TR=$8F BL=$8F BR=$8F
        .byte   $00,$00,$8F,$13 ; A128  TL=$00 TR=$00 BL=$8F BR=$13
        .byte   $02,$90,$02,$91 ; A12C  TL=$02 TR=$90 BL=$02 BR=$91
        .byte   $92,$75,$93,$79 ; A130  TL=$92 TR=$75 BL=$93 BR=$79
        .byte   $66,$67,$75,$75 ; A134  TL=$66 TR=$67 BL=$75 BR=$75
        .byte   $75,$75,$76,$94 ; A138  TL=$75 TR=$75 BL=$76 BR=$94
        .byte   $75,$79,$88,$78 ; A13C  TL=$75 TR=$79 BL=$88 BR=$78
        .byte   $75,$75,$79,$75 ; A140  TL=$75 TR=$75 BL=$79 BR=$75
        .byte   $80,$00,$23,$24 ; A144  TL=$80 TR=$00 BL=$23 BR=$24
        .byte   $8F,$8F,$25,$13 ; A148  TL=$8F TR=$8F BL=$25 BR=$13
        .byte   $00,$8F,$00,$8F ; A14C  TL=$00 TR=$8F BL=$00 BR=$8F
        .byte   $13,$8F,$21,$8F ; A150  TL=$13 TR=$8F BL=$21 BR=$8F
        .byte   $8F,$8F,$8F,$00 ; A154  TL=$8F TR=$8F BL=$8F BR=$00
        .byte   $90,$7A,$91,$04 ; A158  TL=$90 TR=$7A BL=$91 BR=$04
        .byte   $7B,$7C,$05,$87 ; A15C  TL=$7B TR=$7C BL=$05 BR=$87
        .byte   $75,$75,$7B,$88 ; A160  TL=$75 TR=$75 BL=$7B BR=$88
        .byte   $79,$79,$78,$8A ; A164  TL=$79 TR=$79 BL=$78 BR=$8A
        .byte   $7A,$85,$04,$86 ; A168  TL=$7A TR=$85 BL=$04 BR=$86
        .byte   $06,$08,$02,$02 ; A16C  TL=$06 TR=$08 BL=$02 BR=$02
        .byte   $7A,$00,$04,$00 ; A170  TL=$7A TR=$00 BL=$04 BR=$00
        .byte   $8F,$21,$8F,$13 ; A174  TL=$8F TR=$21 BL=$8F BR=$13
        .byte   $8F,$13,$8F,$1C ; A178  TL=$8F TR=$13 BL=$8F BR=$1C
; 32×32 chunk-index grid = 1024 bytes
TankLvl8_MapData:
        .byte   $00,$00,$00,$00,$01,$02,$02,$02 ; A17C
        .byte   $02,$03,$04,$04,$05,$06,$07,$08 ; A184
        .byte   $09,$0A,$0A,$0A,$0B,$02,$02,$02 ; A18C
        .byte   $02,$02,$02,$02,$0C,$00,$00,$00 ; A194
        .byte   $0D,$0E,$0F,$0F,$0F,$0F,$0F,$0F ; A19C
        .byte   $0F,$0F,$0F,$0F,$10,$11,$12,$13 ; A1A4
        .byte   $14,$15,$15,$15,$16,$17,$0F,$0F ; A1AC
        .byte   $0F,$0F,$0F,$0F,$0F,$0F,$18,$0F ; A1B4
        .byte   $0D,$19,$1A,$1B,$1A,$1B,$1A,$1B ; A1BC
        .byte   $1A,$1A,$1A,$1A,$10,$11,$1C,$1D ; A1C4
        .byte   $14,$15,$15,$15,$16,$1E,$1F,$1E ; A1CC
        .byte   $1F,$1F,$1F,$1E,$1F,$1E,$20,$21 ; A1D4
        .byte   $0D,$22,$1E,$1E,$1F,$1E,$1E,$23 ; A1DC
        .byte   $1E,$1E,$1E,$24,$10,$25,$26,$13 ; A1E4
        .byte   $14,$15,$15,$15,$16,$19,$1B,$27 ; A1EC
        .byte   $28,$27,$24,$28,$1B,$27,$24,$24 ; A1F4
        .byte   $0D,$19,$1B,$1A,$1A,$1A,$1A,$0E ; A1FC
        .byte   $1B,$1A,$1B,$1B,$10,$25,$1C,$1D ; A204
        .byte   $14,$15,$15,$15,$16,$22,$1E,$24 ; A20C
        .byte   $24,$24,$24,$24,$24,$24,$24,$24 ; A214
        .byte   $0D,$22,$1E,$1F,$29,$29,$29,$23 ; A21C
        .byte   $23,$1E,$1E,$24,$10,$25,$26,$13 ; A224
        .byte   $14,$15,$15,$15,$16,$2A,$1A,$27 ; A22C
        .byte   $24,$24,$24,$24,$24,$24,$24,$24 ; A234
        .byte   $0D,$2A,$1A,$1A,$0E,$0E,$0E,$0E ; A23C
        .byte   $2B,$1A,$1B,$2C,$2D,$2E,$1C,$1D ; A244
        .byte   $14,$15,$15,$15,$16,$22,$1E,$24 ; A24C
        .byte   $24,$24,$24,$24,$24,$24,$24,$24 ; A254
        .byte   $0D,$29,$1E,$23,$23,$1E,$1E,$1E ; A25C
        .byte   $23,$1E,$1E,$2F,$10,$11,$1C,$1D ; A264
        .byte   $14,$15,$15,$15,$16,$19,$1B,$27 ; A26C
        .byte   $24,$24,$24,$24,$24,$24,$24,$24 ; A274
        .byte   $0D,$0E,$1B,$0E,$0E,$1A,$1A,$1A ; A27C
        .byte   $30,$30,$31,$31,$32,$33,$34,$35 ; A284
        .byte   $36,$37,$37,$37,$16,$22,$1E,$24 ; A28C
        .byte   $24,$24,$24,$24,$24,$24,$24,$24 ; A294
        .byte   $0D,$0E,$1E,$1E,$1E,$1E,$1E,$1E ; A29C
        .byte   $38,$21,$1E,$39,$3A,$3B,$3C,$3C ; A2A4
        .byte   $3C,$3C,$3D,$3E,$16,$2A,$1A,$27 ; A2AC
        .byte   $24,$24,$24,$24,$24,$24,$24,$24 ; A2B4
        .byte   $0D,$0E,$1A,$1A,$1A,$3F,$1A,$1A ; A2BC
        .byte   $1A,$1A,$1B,$31,$40,$3E,$41,$42 ; A2C4
        .byte   $41,$43,$44,$45,$46,$47,$1E,$1E ; A2CC
        .byte   $1E,$1E,$1E,$24,$1E,$1E,$1E,$1E ; A2D4
        .byte   $0D,$0E,$1E,$1E,$1E,$1F,$1F,$1F ; A2DC
        .byte   $1F,$48,$49,$24,$40,$3E,$3E,$4A ; A2E4
        .byte   $3E,$41,$4B,$3D,$16,$4C,$4D,$4E ; A2EC
        .byte   $4E,$4E,$4E,$4E,$4E,$4E,$4E,$4E ; A2F4
        .byte   $4F,$50,$50,$50,$50,$50,$50,$50 ; A2FC
        .byte   $51,$52,$52,$52,$53,$3E,$3E,$3E ; A304
        .byte   $3E,$3E,$41,$54,$55,$52,$52,$52 ; A30C
        .byte   $52,$52,$52,$52,$52,$52,$52,$52 ; A314
        .byte   $56,$57,$58,$59,$5A,$5A,$5A,$5B ; A31C
        .byte   $5C,$3E,$5D,$3D,$3E,$3E,$5D,$3E ; A324
        .byte   $3E,$3E,$5E,$5F,$3E,$60,$3E,$60 ; A32C
        .byte   $3E,$61,$3E,$61,$3E,$60,$3E,$3E ; A334
        .byte   $56,$62,$63,$64,$65,$66,$66,$67 ; A33C
        .byte   $68,$3B,$69,$45,$6A,$3B,$69,$6B ; A344
        .byte   $3D,$5E,$69,$45,$6A,$6C,$6D,$6E ; A34C
        .byte   $6D,$6E,$6D,$6E,$6D,$6E,$6D,$6F ; A354
        .byte   $56,$70,$64,$63,$6E,$66,$4A,$71 ; A35C
        .byte   $5C,$3E,$4A,$3E,$3E,$3E,$41,$42 ; A364
        .byte   $44,$72,$73,$3E,$3E,$3E,$74,$75 ; A36C
        .byte   $4A,$76,$75,$4A,$3E,$76,$77,$78 ; A374
        .byte   $79,$62,$63,$6E,$66,$4A,$70,$7A ; A37C
        .byte   $7B,$7C,$7C,$7C,$7C,$7C,$7C,$7C ; A384
        .byte   $7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C ; A38C
        .byte   $7C,$7C,$7C,$7C,$7D,$7E,$7E,$7E ; A394
        .byte   $7F,$70,$64,$65,$4A,$70,$66,$66 ; A39C
        .byte   $80,$81,$81,$81,$82,$81,$81,$82 ; A3A4
        .byte   $83,$83,$81,$84,$83,$83,$83,$81 ; A3AC
        .byte   $82,$84,$84,$83,$85,$86,$87,$88 ; A3B4
        .byte   $7F,$62,$63,$4A,$70,$66,$66,$66 ; A3BC
        .byte   $80,$81,$81,$82,$89,$82,$82,$89 ; A3C4
        .byte   $8A,$8A,$82,$89,$8A,$8A,$8A,$82 ; A3CC
        .byte   $89,$8A,$8A,$8B,$8C,$8D,$8E,$8F ; A3D4
        .byte   $7F,$70,$64,$5A,$66,$66,$66,$66 ; A3DC
        .byte   $80,$81,$82,$89,$8A,$8A,$90,$90 ; A3E4
        .byte   $91,$90,$92,$90,$91,$91,$90,$92 ; A3EC
        .byte   $91,$92,$91,$93,$85,$94,$95,$94 ; A3F4
        .byte   $7F,$62,$63,$6E,$66,$66,$66,$66 ; A3FC
        .byte   $80,$81,$96,$8A,$8A,$91,$81,$81 ; A404
        .byte   $81,$81,$81,$81,$81,$81,$81,$81 ; A40C
        .byte   $81,$81,$81,$81,$85,$86,$86,$86 ; A414
        .byte   $7F,$70,$64,$65,$66,$66,$66,$66 ; A41C
        .byte   $80,$82,$97,$8A,$91,$98,$83,$83 ; A424
        .byte   $81,$81,$81,$82,$83,$84,$83,$83 ; A42C
        .byte   $81,$82,$84,$83,$85,$86,$87,$88 ; A434
        .byte   $7F,$62,$63,$64,$65,$66,$66,$67 ; A43C
        .byte   $99,$9A,$8A,$9B,$82,$89,$8A,$8A ; A444
        .byte   $82,$82,$82,$89,$8A,$9C,$8A,$8A ; A44C
        .byte   $82,$89,$9C,$8B,$8C,$8D,$9D,$9E ; A454
        .byte   $7F,$70,$64,$4A,$4A,$4A,$9F,$71 ; A45C
        .byte   $80,$A0,$92,$90,$90,$92,$90,$90 ; A464
        .byte   $92,$90,$92,$90,$92,$90,$90,$90 ; A46C
        .byte   $90,$90,$92,$93,$85,$94,$8E,$9D ; A474
        .byte   $A1,$A2,$A2,$A2,$A3,$A4,$A4,$A4 ; A47C
        .byte   $A5,$A6,$A6,$A6,$A6,$A6,$A6,$A7 ; A484
        .byte   $A8,$A6,$A6,$A7,$A8,$A6,$A7,$A8 ; A48C
        .byte   $A6,$A7,$A8,$A6,$A9,$8E,$9D,$8E ; A494
        .byte   $86,$86,$87,$88,$AA,$AB,$AB,$AB ; A49C
        .byte   $AB,$AB,$AC,$AD,$AE,$AF,$B0,$B1 ; A4A4
        .byte   $B2,$B3,$B3,$B1,$B2,$B3,$B1,$B2 ; A4AC
        .byte   $B3,$B1,$B2,$B4,$B5,$95,$8E,$9D ; A4B4
        .byte   $B6,$8D,$8E,$8F,$AA,$AB,$AB,$B7 ; A4BC
        .byte   $AF,$B8,$B9,$BA,$BB,$BC,$BD,$BE ; A4C4
        .byte   $BF,$C0,$C1,$C2,$BD,$C3,$C4,$C2 ; A4CC
        .byte   $BD,$C5,$C2,$C6,$C7,$8D,$9D,$C8 ; A4D4
        .byte   $86,$94,$95,$94,$AA,$AB,$C9,$CA ; A4DC
        .byte   $CB,$BD,$BD,$C3,$C3,$BF,$C0,$CC ; A4E4
        .byte   $CD,$CE,$CF,$D0,$D1,$D2,$D3,$D0 ; A4EC
        .byte   $D4,$D3,$D0,$D4,$D5,$94,$95,$94 ; A4F4
        .byte   $D6,$D6,$D6,$D6,$D7,$AB,$D8,$D9 ; A4FC
        .byte   $DA,$DB,$CC,$D2,$D2,$CD,$CE,$DC ; A504
        .byte   $AB,$B7,$DD,$AB,$AB,$AB,$B7,$DD ; A50C
        .byte   $AB,$B7,$DD,$AB,$DE,$D6,$D6,$D6 ; A514
        .byte   $DF,$E0,$E1,$E2,$E3,$AB,$D8,$DA ; A51C
        .byte   $BD,$E4,$B4,$AD,$AD,$AE,$AF,$B0 ; A524
        .byte   $B3,$B1,$B2,$B3,$B3,$B3,$B1,$B2 ; A52C
        .byte   $B3,$B1,$B2,$B4,$E5,$E6,$DF,$DF ; A534
        .byte   $E1,$E7,$E8,$E9,$E3,$AB,$EA,$EB ; A53C
        .byte   $DA,$BD,$BD,$EC,$EC,$BB,$BC,$BD ; A544
        .byte   $ED,$EE,$C0,$C1,$C2,$BD,$C5,$EF ; A54C
        .byte   $C3,$C3,$BD,$C6,$F0,$F1,$E8,$E8 ; A554
        .byte   $F2,$F3,$F3,$F4,$E3,$AB,$AB,$F5 ; A55C
        .byte   $D2,$F6,$C0,$C0,$F7,$F8,$C0,$CC ; A564
        .byte   $F9,$FA,$CE,$CF,$D0,$D1,$D3,$D0 ; A56C
        .byte   $D4,$D2,$D0,$D4,$FB,$E6,$FC,$FD ; A574
; Tile attribute table – bits: 0-1=palette 3=Gateway 2+3=Tunnel(→Overhead) 4=damage 5=ladder
; 6=water 7=solid  3+7=Doorway 4+6=lava 5+7=solid-ladder 6+7=destroyable
TankLvl8_TileAttrTable:
        .byte   $00,$03,$00,$00,$00,$00,$00,$00 ; A57C
        .byte   $00,$00,$00,$01,$01,$01,$01,$00 ; A584
        .byte   $00,$00,$00,$01,$01,$01,$01,$01 ; A58C
        .byte   $01,$01,$01,$01,$03,$03,$03,$03 ; A594
        .byte   $03,$03,$03,$03,$03,$02,$02,$02 ; A59C
        .byte   $02,$02,$02,$02,$02,$02,$03,$03 ; A5A4
        .byte   $03,$03,$03,$00,$00,$00,$00,$00 ; A5AC
        .byte   $00,$00,$00,$00,$00,$00,$00,$81 ; A5B4
        .byte   $81,$81,$81,$81,$80,$80,$80,$80 ; A5BC
        .byte   $80,$80,$80,$80,$80,$81,$81,$81 ; A5C4
        .byte   $81,$81,$82,$82,$80,$80,$80,$80 ; A5CC
        .byte   $80,$80,$80,$80,$80,$83,$81,$81 ; A5D4
        .byte   $80,$80,$80,$81,$81,$80,$80,$80 ; A5DC
        .byte   $80,$01,$01,$0D,$01,$00,$00,$00 ; A5E4
        .byte   $00,$08,$00,$80,$80,$80,$80,$80 ; A5EC
        .byte   $80,$80,$80,$88,$88,$80,$80,$C2 ; A5F4
        .byte   $C1,$C0,$A0,$20,$13             ; A5FC
; 16 bytes — 8 B vertical + 8 B horizontal scroll-boundary flags
TankLvl8_ScrollData:
        .byte   $FF,$00,$18,$E7,$3F,$01,$FE,$81 ; A601
        .byte   $9C,$9C,$94,$B4,$A1,$A1,$C1,$41 ; A609
; ----------------------------------------------------------------------------
OvhdLvl1_MapPointers:
        .addr   OvhdLvl1_BgPalette              ; A611
        .addr   OvhdLvl1_TileAttrTable          ; A613
        .addr   OvhdLvl1_TileDescTable          ; A615
        .addr   OvhdLvl1_StructureDescTable     ; A617
        .addr   OvhdLvl1_ChunkDescTable         ; A619
        .addr   OvhdLvl1_MapData                ; A61B
; ----------------------------------------------------------------------------
; 4 BgPalette records — the level's 4 background sub-palettes × 4 NES colour indices.
OvhdLvl1_BgPalette:
        .byte   $0F,$06,$17,$27 ; A61D  Backdrop=$0F Colour1=$06 Colour2=$17 Colour3=$27
        .byte   $0F,$07,$19,$28 ; A621  Backdrop=$0F Colour1=$07 Colour2=$19 Colour3=$28
        .byte   $0F,$07,$17,$19 ; A625  Backdrop=$0F Colour1=$07 Colour2=$17 Colour3=$19
        .byte   $0F,$07,$00,$10 ; A629  Backdrop=$0F Colour1=$07 Colour2=$00 Colour3=$10
; 76 TileDesc records — the level's Tile definitions. Index space shared with
; OvhdLvl1_TileAttrTable, which has the matching 76 entries.
OvhdLvl1_TileDescTable:
        .byte   $00,$00,$00,$00 ; A62D  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $22,$32,$23,$33 ; A631  TL=$22 TR=$32 BL=$23 BR=$33
        .byte   $29,$32,$2A,$33 ; A635  TL=$29 TR=$32 BL=$2A BR=$33
        .byte   $39,$36,$2A,$33 ; A639  TL=$39 TR=$36 BL=$2A BR=$33
        .byte   $26,$36,$23,$33 ; A63D  TL=$26 TR=$36 BL=$23 BR=$33
        .byte   $27,$37,$25,$35 ; A641  TL=$27 TR=$37 BL=$25 BR=$35
        .byte   $24,$34,$25,$35 ; A645  TL=$24 TR=$34 BL=$25 BR=$35
        .byte   $24,$34,$28,$38 ; A649  TL=$24 TR=$34 BL=$28 BR=$38
        .byte   $22,$32,$23,$3A ; A64D  TL=$22 TR=$32 BL=$23 BR=$3A
        .byte   $22,$33,$28,$38 ; A651  TL=$22 TR=$33 BL=$28 BR=$38
        .byte   $29,$33,$2A,$38 ; A655  TL=$29 TR=$33 BL=$2A BR=$38
        .byte   $01,$01,$01,$01 ; A659  TL=$01 TR=$01 BL=$01 BR=$01
        .byte   $4A,$49,$4A,$49 ; A65D  TL=$4A TR=$49 BL=$4A BR=$49
        .byte   $49,$5A,$49,$5A ; A661  TL=$49 TR=$5A BL=$49 BR=$5A
        .byte   $4A,$59,$4A,$59 ; A665  TL=$4A TR=$59 BL=$4A BR=$59
        .byte   $4A,$5A,$4A,$5A ; A669  TL=$4A TR=$5A BL=$4A BR=$5A
        .byte   $0D,$1C,$0A,$13 ; A66D  TL=$0D TR=$1C BL=$0A BR=$13
        .byte   $0C,$1C,$03,$13 ; A671  TL=$0C TR=$1C BL=$03 BR=$13
        .byte   $0C,$1D,$03,$1A ; A675  TL=$0C TR=$1D BL=$03 BR=$1A
        .byte   $09,$12,$0A,$13 ; A679  TL=$09 TR=$12 BL=$0A BR=$13
        .byte   $02,$12,$03,$13 ; A67D  TL=$02 TR=$12 BL=$03 BR=$13
        .byte   $02,$19,$03,$1A ; A681  TL=$02 TR=$19 BL=$03 BR=$1A
        .byte   $09,$14,$41,$15 ; A685  TL=$09 TR=$14 BL=$41 BR=$15
        .byte   $04,$14,$05,$15 ; A689  TL=$04 TR=$14 BL=$05 BR=$15
        .byte   $04,$19,$05,$51 ; A68D  TL=$04 TR=$19 BL=$05 BR=$51
        .byte   $40,$50,$1B,$17 ; A691  TL=$40 TR=$50 BL=$1B BR=$17
        .byte   $40,$50,$07,$17 ; A695  TL=$40 TR=$50 BL=$07 BR=$17
        .byte   $40,$50,$07,$17 ; A699  TL=$40 TR=$50 BL=$07 BR=$17
        .byte   $0B,$16,$08,$18 ; A69D  TL=$0B TR=$16 BL=$08 BR=$18
        .byte   $06,$16,$08,$18 ; A6A1  TL=$06 TR=$16 BL=$08 BR=$18
        .byte   $06,$20,$08,$18 ; A6A5  TL=$06 TR=$20 BL=$08 BR=$18
        .byte   $40,$10,$07,$11 ; A6A9  TL=$40 TR=$10 BL=$07 BR=$11
        .byte   $06,$30,$21,$31 ; A6AD  TL=$06 TR=$30 BL=$21 BR=$31
        .byte   $40,$50,$08,$18 ; A6B1  TL=$40 TR=$50 BL=$08 BR=$18
        .byte   $40,$50,$08,$18 ; A6B5  TL=$40 TR=$50 BL=$08 BR=$18
        .byte   $4B,$5B,$4C,$5C ; A6B9  TL=$4B TR=$5B BL=$4C BR=$5C
        .byte   $5B,$5B,$5C,$5C ; A6BD  TL=$5B TR=$5B BL=$5C BR=$5C
        .byte   $5B,$6B,$5C,$6C ; A6C1  TL=$5B TR=$6B BL=$5C BR=$6C
        .byte   $4C,$5C,$4C,$5C ; A6C5  TL=$4C TR=$5C BL=$4C BR=$5C
        .byte   $5C,$6C,$5C,$6C ; A6C9  TL=$5C TR=$6C BL=$5C BR=$6C
        .byte   $4C,$5C,$4D,$5D ; A6CD  TL=$4C TR=$5C BL=$4D BR=$5D
        .byte   $5C,$5C,$5D,$5D ; A6D1  TL=$5C TR=$5C BL=$5D BR=$5D
        .byte   $5C,$6C,$5D,$6D ; A6D5  TL=$5C TR=$6C BL=$5D BR=$6D
        .byte   $4E,$5E,$4F,$00 ; A6D9  TL=$4E TR=$5E BL=$4F BR=$00
        .byte   $5E,$6E,$00,$4F ; A6DD  TL=$5E TR=$6E BL=$00 BR=$4F
        .byte   $4F,$00,$4F,$5F ; A6E1  TL=$4F TR=$00 BL=$4F BR=$5F
        .byte   $00,$4F,$6F,$4F ; A6E5  TL=$00 TR=$4F BL=$6F BR=$4F
        .byte   $2B,$3B,$2C,$3C ; A6E9  TL=$2B TR=$3B BL=$2C BR=$3C
        .byte   $0E,$1E,$0F,$1F ; A6ED  TL=$0E TR=$1E BL=$0F BR=$1F
        .byte   $2D,$3D,$2F,$3F ; A6F1  TL=$2D TR=$3D BL=$2F BR=$3F
        .byte   $2D,$3D,$2F,$3E ; A6F5  TL=$2D TR=$3D BL=$2F BR=$3E
        .byte   $2D,$3D,$2E,$3E ; A6F9  TL=$2D TR=$3D BL=$2E BR=$3E
        .byte   $2D,$3D,$2E,$3F ; A6FD  TL=$2D TR=$3D BL=$2E BR=$3F
        .byte   $4B,$5B,$4C,$5C ; A701  TL=$4B TR=$5B BL=$4C BR=$5C
        .byte   $5B,$6B,$5C,$6C ; A705  TL=$5B TR=$6B BL=$5C BR=$6C
        .byte   $4C,$5C,$4C,$5C ; A709  TL=$4C TR=$5C BL=$4C BR=$5C
        .byte   $5C,$6C,$5C,$6C ; A70D  TL=$5C TR=$6C BL=$5C BR=$6C
        .byte   $0D,$1C,$0A,$13 ; A711  TL=$0D TR=$1C BL=$0A BR=$13
        .byte   $09,$12,$0A,$13 ; A715  TL=$09 TR=$12 BL=$0A BR=$13
        .byte   $0C,$1D,$03,$1A ; A719  TL=$0C TR=$1D BL=$03 BR=$1A
        .byte   $02,$19,$03,$1A ; A71D  TL=$02 TR=$19 BL=$03 BR=$1A
        .byte   $0D,$1C,$0A,$13 ; A721  TL=$0D TR=$1C BL=$0A BR=$13
        .byte   $0C,$1C,$03,$13 ; A725  TL=$0C TR=$1C BL=$03 BR=$13
        .byte   $0C,$1D,$03,$1A ; A729  TL=$0C TR=$1D BL=$03 BR=$1A
        .byte   $09,$12,$0A,$13 ; A72D  TL=$09 TR=$12 BL=$0A BR=$13
        .byte   $02,$12,$03,$13 ; A731  TL=$02 TR=$12 BL=$03 BR=$13
        .byte   $02,$19,$03,$1A ; A735  TL=$02 TR=$19 BL=$03 BR=$1A
        .byte   $22,$32,$23,$7D ; A739  TL=$22 TR=$32 BL=$23 BR=$7D
        .byte   $22,$32,$8D,$8D ; A73D  TL=$22 TR=$32 BL=$8D BR=$8D
        .byte   $22,$32,$9D,$33 ; A741  TL=$22 TR=$32 BL=$9D BR=$33
        .byte   $22,$7E,$23,$7E ; A745  TL=$22 TR=$7E BL=$23 BR=$7E
        .byte   $8F,$9F,$00,$00 ; A749  TL=$8F TR=$9F BL=$00 BR=$00
        .byte   $7E,$32,$7E,$33 ; A74D  TL=$7E TR=$32 BL=$7E BR=$33
        .byte   $22,$7F,$23,$33 ; A751  TL=$22 TR=$7F BL=$23 BR=$33
        .byte   $8D,$8D,$23,$33 ; A755  TL=$8D TR=$8D BL=$23 BR=$33
        .byte   $9E,$32,$23,$33 ; A759  TL=$9E TR=$32 BL=$23 BR=$33
; 124 StructureDesc records — the level's Structure definitions, each a 2×2 quad of Tiles.
OvhdLvl1_StructureDescTable:
        .byte   $41,$41,$41,$41 ; A75D  TL=$41 TR=$41 BL=$41 BR=$41
        .byte   $40,$41,$40,$41 ; A761  TL=$40 TR=$41 BL=$40 BR=$41
        .byte   $41,$42,$41,$42 ; A765  TL=$41 TR=$42 BL=$41 BR=$42
        .byte   $41,$41,$17,$17 ; A769  TL=$41 TR=$41 BL=$17 BR=$17
        .byte   $19,$1A,$1C,$1D ; A76D  TL=$19 TR=$1A BL=$1C BR=$1D
        .byte   $1A,$1A,$1D,$1D ; A771  TL=$1A TR=$1A BL=$1D BR=$1D
        .byte   $1A,$1F,$1D,$20 ; A775  TL=$1A TR=$1F BL=$1D BR=$20
        .byte   $1A,$1A,$1D,$1F ; A779  TL=$1A TR=$1A BL=$1D BR=$1F
        .byte   $1A,$1A,$3D,$3F ; A77D  TL=$1A TR=$1A BL=$3D BR=$3F
        .byte   $00,$00,$00,$00 ; A781  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $03,$04,$02,$01 ; A785  TL=$03 TR=$04 BL=$02 BR=$01
        .byte   $04,$04,$01,$01 ; A789  TL=$04 TR=$04 BL=$01 BR=$01
        .byte   $02,$01,$02,$01 ; A78D  TL=$02 TR=$01 BL=$02 BR=$01
        .byte   $01,$01,$01,$01 ; A791  TL=$01 TR=$01 BL=$01 BR=$01
        .byte   $30,$30,$30,$30 ; A795  TL=$30 TR=$30 BL=$30 BR=$30
        .byte   $09,$2F,$01,$01 ; A799  TL=$09 TR=$2F BL=$01 BR=$01
        .byte   $04,$05,$01,$06 ; A79D  TL=$04 TR=$05 BL=$01 BR=$06
        .byte   $01,$06,$01,$06 ; A7A1  TL=$01 TR=$06 BL=$01 BR=$06
        .byte   $40,$42,$40,$42 ; A7A5  TL=$40 TR=$42 BL=$40 BR=$42
        .byte   $02,$08,$02,$06 ; A7A9  TL=$02 TR=$08 BL=$02 BR=$06
        .byte   $10,$12,$40,$42 ; A7AD  TL=$10 TR=$12 BL=$40 BR=$42
        .byte   $01,$06,$02,$06 ; A7B1  TL=$01 TR=$06 BL=$02 BR=$06
        .byte   $09,$2F,$09,$2F ; A7B5  TL=$09 TR=$2F BL=$09 BR=$2F
        .byte   $09,$2F,$2F,$01 ; A7B9  TL=$09 TR=$2F BL=$2F BR=$01
        .byte   $01,$09,$09,$2F ; A7BD  TL=$01 TR=$09 BL=$09 BR=$2F
        .byte   $2F,$2F,$01,$01 ; A7C1  TL=$2F TR=$2F BL=$01 BR=$01
        .byte   $40,$42,$16,$18 ; A7C5  TL=$40 TR=$42 BL=$16 BR=$18
        .byte   $01,$07,$01,$01 ; A7C9  TL=$01 TR=$07 BL=$01 BR=$01
        .byte   $21,$21,$04,$04 ; A7CD  TL=$21 TR=$21 BL=$04 BR=$04
        .byte   $02,$06,$02,$06 ; A7D1  TL=$02 TR=$06 BL=$02 BR=$06
        .byte   $02,$06,$01,$06 ; A7D5  TL=$02 TR=$06 BL=$01 BR=$06
        .byte   $02,$07,$02,$01 ; A7D9  TL=$02 TR=$07 BL=$02 BR=$01
        .byte   $02,$01,$01,$01 ; A7DD  TL=$02 TR=$01 BL=$01 BR=$01
        .byte   $01,$01,$09,$2F ; A7E1  TL=$01 TR=$01 BL=$09 BR=$2F
        .byte   $11,$11,$14,$14 ; A7E5  TL=$11 TR=$11 BL=$14 BR=$14
        .byte   $3E,$3E,$41,$41 ; A7E9  TL=$3E TR=$3E BL=$41 BR=$41
        .byte   $12,$35,$15,$37 ; A7ED  TL=$12 TR=$35 BL=$15 BR=$37
        .byte   $36,$10,$38,$13 ; A7F1  TL=$36 TR=$10 BL=$38 BR=$13
        .byte   $1A,$1A,$10,$12 ; A7F5  TL=$1A TR=$1A BL=$10 BR=$12
        .byte   $42,$26,$18,$28 ; A7F9  TL=$42 TR=$26 BL=$18 BR=$28
        .byte   $27,$40,$2A,$16 ; A7FD  TL=$27 TR=$40 BL=$2A BR=$16
        .byte   $1A,$2B,$1D,$2D ; A801  TL=$1A TR=$2B BL=$1D BR=$2D
        .byte   $2C,$1A,$2E,$1D ; A805  TL=$2C TR=$1A BL=$2E BR=$1D
        .byte   $01,$08,$02,$06 ; A809  TL=$01 TR=$08 BL=$02 BR=$06
        .byte   $32,$34,$32,$34 ; A80D  TL=$32 TR=$34 BL=$32 BR=$34
        .byte   $32,$34,$32,$33 ; A811  TL=$32 TR=$34 BL=$32 BR=$33
        .byte   $04,$0C,$01,$01 ; A815  TL=$04 TR=$0C BL=$01 BR=$01
        .byte   $0D,$04,$01,$01 ; A819  TL=$0D TR=$04 BL=$01 BR=$01
        .byte   $01,$01,$34,$01 ; A81D  TL=$01 TR=$01 BL=$34 BR=$01
        .byte   $01,$01,$01,$32 ; A821  TL=$01 TR=$01 BL=$01 BR=$32
        .byte   $32,$34,$33,$34 ; A825  TL=$32 TR=$34 BL=$33 BR=$34
        .byte   $01,$32,$01,$01 ; A829  TL=$01 TR=$32 BL=$01 BR=$01
        .byte   $34,$01,$31,$01 ; A82D  TL=$34 TR=$01 BL=$31 BR=$01
        .byte   $01,$32,$01,$31 ; A831  TL=$01 TR=$32 BL=$01 BR=$31
        .byte   $34,$01,$01,$01 ; A835  TL=$34 TR=$01 BL=$01 BR=$01
        .byte   $33,$33,$02,$01 ; A839  TL=$33 TR=$33 BL=$02 BR=$01
        .byte   $33,$34,$01,$31 ; A83D  TL=$33 TR=$34 BL=$01 BR=$31
        .byte   $33,$33,$01,$01 ; A841  TL=$33 TR=$33 BL=$01 BR=$01
        .byte   $01,$31,$01,$31 ; A845  TL=$01 TR=$31 BL=$01 BR=$31
        .byte   $2F,$08,$01,$01 ; A849  TL=$2F TR=$08 BL=$01 BR=$01
        .byte   $2F,$2F,$01,$06 ; A84D  TL=$2F TR=$2F BL=$01 BR=$06
        .byte   $2F,$2F,$2F,$2F ; A851  TL=$2F TR=$2F BL=$2F BR=$2F
        .byte   $33,$34,$02,$01 ; A855  TL=$33 TR=$34 BL=$02 BR=$01
        .byte   $33,$34,$01,$01 ; A859  TL=$33 TR=$34 BL=$01 BR=$01
        .byte   $40,$41,$16,$17 ; A85D  TL=$40 TR=$41 BL=$16 BR=$17
        .byte   $11,$11,$17,$17 ; A861  TL=$11 TR=$11 BL=$17 BR=$17
        .byte   $11,$12,$41,$42 ; A865  TL=$11 TR=$12 BL=$41 BR=$42
        .byte   $21,$21,$04,$05 ; A869  TL=$21 TR=$21 BL=$04 BR=$05
        .byte   $01,$01,$02,$01 ; A86D  TL=$01 TR=$01 BL=$02 BR=$01
        .byte   $32,$33,$34,$01 ; A871  TL=$32 TR=$33 BL=$34 BR=$01
        .byte   $33,$34,$01,$32 ; A875  TL=$33 TR=$34 BL=$01 BR=$32
        .byte   $01,$01,$33,$34 ; A879  TL=$01 TR=$01 BL=$33 BR=$34
        .byte   $02,$07,$01,$01 ; A87D  TL=$02 TR=$07 BL=$01 BR=$01
        .byte   $02,$01,$02,$43 ; A881  TL=$02 TR=$01 BL=$02 BR=$43
        .byte   $01,$01,$44,$45 ; A885  TL=$01 TR=$01 BL=$44 BR=$45
        .byte   $02,$46,$02,$49 ; A889  TL=$02 TR=$46 BL=$02 BR=$49
        .byte   $47,$48,$4A,$4B ; A88D  TL=$47 TR=$48 BL=$4A BR=$4B
        .byte   $32,$34,$01,$01 ; A891  TL=$32 TR=$34 BL=$01 BR=$01
        .byte   $01,$32,$32,$33 ; A895  TL=$01 TR=$32 BL=$32 BR=$33
        .byte   $34,$01,$33,$33 ; A899  TL=$34 TR=$01 BL=$33 BR=$33
        .byte   $32,$34,$01,$31 ; A89D  TL=$32 TR=$34 BL=$01 BR=$31
        .byte   $01,$31,$01,$32 ; A8A1  TL=$01 TR=$31 BL=$01 BR=$32
        .byte   $32,$33,$01,$01 ; A8A5  TL=$32 TR=$33 BL=$01 BR=$01
        .byte   $01,$08,$01,$06 ; A8A9  TL=$01 TR=$08 BL=$01 BR=$06
        .byte   $10,$11,$16,$17 ; A8AD  TL=$10 TR=$11 BL=$16 BR=$17
        .byte   $41,$42,$17,$18 ; A8B1  TL=$41 TR=$42 BL=$17 BR=$18
        .byte   $11,$3E,$14,$41 ; A8B5  TL=$11 TR=$3E BL=$14 BR=$41
        .byte   $04,$04,$01,$32 ; A8B9  TL=$04 TR=$04 BL=$01 BR=$32
        .byte   $04,$04,$34,$01 ; A8BD  TL=$04 TR=$04 BL=$34 BR=$01
        .byte   $2F,$2F,$09,$2F ; A8C1  TL=$2F TR=$2F BL=$09 BR=$2F
        .byte   $02,$01,$02,$32 ; A8C5  TL=$02 TR=$01 BL=$02 BR=$32
        .byte   $02,$32,$02,$01 ; A8C9  TL=$02 TR=$32 BL=$02 BR=$01
        .byte   $01,$06,$34,$06 ; A8CD  TL=$01 TR=$06 BL=$34 BR=$06
        .byte   $34,$06,$01,$06 ; A8D1  TL=$34 TR=$06 BL=$01 BR=$06
        .byte   $01,$01,$43,$44 ; A8D5  TL=$01 TR=$01 BL=$43 BR=$44
        .byte   $01,$06,$45,$06 ; A8D9  TL=$01 TR=$06 BL=$45 BR=$06
        .byte   $46,$47,$49,$4A ; A8DD  TL=$46 TR=$47 BL=$49 BR=$4A
        .byte   $48,$06,$4B,$06 ; A8E1  TL=$48 TR=$06 BL=$4B BR=$06
        .byte   $04,$04,$43,$44 ; A8E5  TL=$04 TR=$04 BL=$43 BR=$44
        .byte   $04,$04,$45,$01 ; A8E9  TL=$04 TR=$04 BL=$45 BR=$01
        .byte   $48,$01,$4B,$01 ; A8ED  TL=$48 TR=$01 BL=$4B BR=$01
        .byte   $16,$17,$23,$24 ; A8F1  TL=$16 TR=$17 BL=$23 BR=$24
        .byte   $17,$18,$24,$25 ; A8F5  TL=$17 TR=$18 BL=$24 BR=$25
        .byte   $21,$21,$03,$04 ; A8F9  TL=$21 TR=$21 BL=$03 BR=$04
        .byte   $02,$09,$02,$01 ; A8FD  TL=$02 TR=$09 BL=$02 BR=$01
        .byte   $0A,$2F,$0A,$2F ; A901  TL=$0A TR=$2F BL=$0A BR=$2F
        .byte   $11,$12,$17,$18 ; A905  TL=$11 TR=$12 BL=$17 BR=$18
        .byte   $21,$1F,$04,$04 ; A909  TL=$21 TR=$1F BL=$04 BR=$04
        .byte   $01,$06,$01,$0E ; A90D  TL=$01 TR=$06 BL=$01 BR=$0E
        .byte   $01,$0E,$01,$06 ; A911  TL=$01 TR=$0E BL=$01 BR=$06
        .byte   $28,$29,$39,$3E ; A915  TL=$28 TR=$29 BL=$39 BR=$3E
        .byte   $29,$2A,$3E,$3B ; A919  TL=$29 TR=$2A BL=$3E BR=$3B
        .byte   $3A,$41,$40,$41 ; A91D  TL=$3A TR=$41 BL=$40 BR=$41
        .byte   $41,$3C,$41,$42 ; A921  TL=$41 TR=$3C BL=$41 BR=$42
        .byte   $02,$01,$0F,$01 ; A925  TL=$02 TR=$01 BL=$0F BR=$01
        .byte   $0F,$01,$02,$01 ; A929  TL=$0F TR=$01 BL=$02 BR=$01
        .byte   $21,$21,$30,$30 ; A92D  TL=$21 TR=$21 BL=$30 BR=$30
        .byte   $21,$1F,$04,$05 ; A931  TL=$21 TR=$1F BL=$04 BR=$05
        .byte   $0A,$2F,$2F,$2F ; A935  TL=$0A TR=$2F BL=$2F BR=$2F
        .byte   $01,$01,$45,$01 ; A939  TL=$01 TR=$01 BL=$45 BR=$01
        .byte   $2F,$2F,$02,$01 ; A93D  TL=$2F TR=$2F BL=$02 BR=$01
        .byte   $00,$00,$00,$00 ; A941  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$00,$00,$00 ; A945  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$00,$00,$00 ; A949  TL=$00 TR=$00 BL=$00 BR=$00
; 136 ChunkDesc records — the level's Chunk definitions, each a 2×2 quad of Structures. These are
; the indices OvhdLvl1_MapData's grid holds.
OvhdLvl1_ChunkDescTable:
        .byte   $00,$00,$01,$02 ; A94D  TL=$00 TR=$00 BL=$01 BR=$02
        .byte   $03,$03,$04,$05 ; A951  TL=$03 TR=$03 BL=$04 BR=$05
        .byte   $03,$03,$05,$05 ; A955  TL=$03 TR=$03 BL=$05 BR=$05
        .byte   $03,$03,$05,$06 ; A959  TL=$03 TR=$03 BL=$05 BR=$06
        .byte   $03,$03,$07,$08 ; A95D  TL=$03 TR=$03 BL=$07 BR=$08
        .byte   $09,$09,$09,$09 ; A961  TL=$09 TR=$09 BL=$09 BR=$09
        .byte   $01,$02,$01,$02 ; A965  TL=$01 TR=$02 BL=$01 BR=$02
        .byte   $0A,$0B,$0C,$0D ; A969  TL=$0A TR=$0B BL=$0C BR=$0D
        .byte   $0B,$0B,$0E,$0D ; A96D  TL=$0B TR=$0B BL=$0E BR=$0D
        .byte   $0B,$0B,$0D,$0D ; A971  TL=$0B TR=$0B BL=$0D BR=$0D
        .byte   $0B,$0B,$0F,$0D ; A975  TL=$0B TR=$0B BL=$0F BR=$0D
        .byte   $0B,$10,$0D,$11 ; A979  TL=$0B TR=$10 BL=$0D BR=$11
        .byte   $10,$12,$11,$12 ; A97D  TL=$10 TR=$12 BL=$11 BR=$12
        .byte   $0A,$0B,$13,$14 ; A981  TL=$0A TR=$0B BL=$13 BR=$14
        .byte   $10,$12,$15,$12 ; A985  TL=$10 TR=$12 BL=$15 BR=$12
        .byte   $0A,$10,$0C,$11 ; A989  TL=$0A TR=$10 BL=$0C BR=$11
        .byte   $0C,$0D,$0C,$0D ; A98D  TL=$0C TR=$0D BL=$0C BR=$0D
        .byte   $16,$17,$18,$19 ; A991  TL=$16 TR=$17 BL=$18 BR=$19
        .byte   $0E,$0D,$0D,$0D ; A995  TL=$0E TR=$0D BL=$0D BR=$0D
        .byte   $0D,$0D,$0D,$0D ; A999  TL=$0D TR=$0D BL=$0D BR=$0D
        .byte   $0D,$0D,$0D,$0E ; A99D  TL=$0D TR=$0D BL=$0D BR=$0E
        .byte   $16,$0F,$0D,$0F ; A9A1  TL=$16 TR=$0F BL=$0D BR=$0F
        .byte   $0D,$11,$0D,$11 ; A9A5  TL=$0D TR=$11 BL=$0D BR=$11
        .byte   $11,$1A,$1B,$1C ; A9A9  TL=$11 TR=$1A BL=$1B BR=$1C
        .byte   $1D,$12,$1E,$12 ; A9AD  TL=$1D TR=$12 BL=$1E BR=$12
        .byte   $1D,$1A,$1F,$1C ; A9B1  TL=$1D TR=$1A BL=$1F BR=$1C
        .byte   $0C,$11,$20,$11 ; A9B5  TL=$0C TR=$11 BL=$20 BR=$11
        .byte   $21,$0D,$0D,$0D ; A9B9  TL=$21 TR=$0D BL=$0D BR=$0D
        .byte   $01,$02,$01,$00 ; A9BD  TL=$01 TR=$02 BL=$01 BR=$00
        .byte   $0C,$0D,$22,$22 ; A9C1  TL=$0C TR=$0D BL=$22 BR=$22
        .byte   $0D,$0D,$22,$22 ; A9C5  TL=$0D TR=$0D BL=$22 BR=$22
        .byte   $11,$12,$22,$23 ; A9C9  TL=$11 TR=$12 BL=$22 BR=$23
        .byte   $0D,$0D,$24,$25 ; A9CD  TL=$0D TR=$0D BL=$24 BR=$25
        .byte   $0D,$11,$22,$22 ; A9D1  TL=$0D TR=$11 BL=$22 BR=$22
        .byte   $01,$02,$00,$00 ; A9D5  TL=$01 TR=$02 BL=$00 BR=$00
        .byte   $0F,$0D,$0F,$0F ; A9D9  TL=$0F TR=$0D BL=$0F BR=$0F
        .byte   $01,$00,$01,$02 ; A9DD  TL=$01 TR=$00 BL=$01 BR=$02
        .byte   $03,$03,$07,$26 ; A9E1  TL=$03 TR=$03 BL=$07 BR=$26
        .byte   $27,$28,$29,$2A ; A9E5  TL=$27 TR=$28 BL=$29 BR=$2A
        .byte   $0B,$0B,$2B,$14 ; A9E9  TL=$0B TR=$0B BL=$2B BR=$14
        .byte   $0A,$2C,$0C,$2D ; A9ED  TL=$0A TR=$2C BL=$0C BR=$2D
        .byte   $2E,$2F,$30,$31 ; A9F1  TL=$2E TR=$2F BL=$30 BR=$31
        .byte   $2C,$10,$32,$11 ; A9F5  TL=$2C TR=$10 BL=$32 BR=$11
        .byte   $2E,$2F,$0D,$0D ; A9F9  TL=$2E TR=$2F BL=$0D BR=$0D
        .byte   $1D,$12,$1D,$12 ; A9FD  TL=$1D TR=$12 BL=$1D BR=$12
        .byte   $0C,$33,$0C,$0D ; AA01  TL=$0C TR=$33 BL=$0C BR=$0D
        .byte   $34,$35,$0D,$0D ; AA05  TL=$34 TR=$35 BL=$0D BR=$0D
        .byte   $36,$11,$0D,$11 ; AA09  TL=$36 TR=$11 BL=$0D BR=$11
        .byte   $0C,$33,$37,$38 ; AA0D  TL=$0C TR=$33 BL=$37 BR=$38
        .byte   $39,$38,$0D,$3A ; AA11  TL=$39 TR=$38 BL=$0D BR=$3A
        .byte   $3B,$3C,$0D,$11 ; AA15  TL=$3B TR=$3C BL=$0D BR=$11
        .byte   $01,$02,$00,$02 ; AA19  TL=$01 TR=$02 BL=$00 BR=$02
        .byte   $3D,$12,$1D,$12 ; AA1D  TL=$3D TR=$12 BL=$1D BR=$12
        .byte   $0C,$33,$3E,$3A ; AA21  TL=$0C TR=$33 BL=$3E BR=$3A
        .byte   $3F,$3A,$0D,$3A ; AA25  TL=$3F TR=$3A BL=$0D BR=$3A
        .byte   $19,$3C,$0D,$11 ; AA29  TL=$19 TR=$3C BL=$0D BR=$11
        .byte   $00,$02,$01,$02 ; AA2D  TL=$00 TR=$02 BL=$01 BR=$02
        .byte   $1D,$40,$1F,$1C ; AA31  TL=$1D TR=$40 BL=$1F BR=$1C
        .byte   $41,$41,$1C,$1C ; AA35  TL=$41 TR=$41 BL=$1C BR=$1C
        .byte   $41,$42,$43,$12 ; AA39  TL=$41 TR=$42 BL=$43 BR=$12
        .byte   $44,$11,$0C,$11 ; AA3D  TL=$44 TR=$11 BL=$0C BR=$11
        .byte   $0B,$0B,$45,$46 ; AA41  TL=$0B TR=$0B BL=$45 BR=$46
        .byte   $0B,$0B,$47,$0D ; AA45  TL=$0B TR=$0B BL=$47 BR=$0D
        .byte   $0B,$0B,$0D,$31 ; AA49  TL=$0B TR=$0B BL=$0D BR=$31
        .byte   $2E,$2F,$47,$0D ; AA4D  TL=$2E TR=$2F BL=$47 BR=$0D
        .byte   $0E,$0E,$0E,$0E ; AA51  TL=$0E TR=$0E BL=$0E BR=$0E
        .byte   $1D,$1A,$48,$1C ; AA55  TL=$1D TR=$1A BL=$48 BR=$1C
        .byte   $3D,$1A,$48,$1C ; AA59  TL=$3D TR=$1A BL=$48 BR=$1C
        .byte   $0C,$0D,$20,$0D ; AA5D  TL=$0C TR=$0D BL=$20 BR=$0D
        .byte   $11,$12,$11,$12 ; AA61  TL=$11 TR=$12 BL=$11 BR=$12
        .byte   $0C,$11,$0C,$11 ; AA65  TL=$0C TR=$11 BL=$0C BR=$11
        .byte   $0C,$35,$3E,$3A ; AA69  TL=$0C TR=$35 BL=$3E BR=$3A
        .byte   $49,$4A,$4B,$4C ; AA6D  TL=$49 TR=$4A BL=$4B BR=$4C
        .byte   $0D,$4D,$0D,$0D ; AA71  TL=$0D TR=$4D BL=$0D BR=$0D
        .byte   $4E,$4F,$50,$0D ; AA75  TL=$4E TR=$4F BL=$50 BR=$0D
        .byte   $30,$51,$52,$3F ; AA79  TL=$30 TR=$51 BL=$52 BR=$3F
        .byte   $30,$0D,$0D,$0D ; AA7D  TL=$30 TR=$0D BL=$0D BR=$0D
        .byte   $0C,$16,$0C,$16 ; AA81  TL=$0C TR=$16 BL=$0C BR=$16
        .byte   $0D,$16,$0D,$16 ; AA85  TL=$0D TR=$16 BL=$0D BR=$16
        .byte   $53,$54,$1B,$1C ; AA89  TL=$53 TR=$54 BL=$1B BR=$1C
        .byte   $41,$55,$1C,$1C ; AA8D  TL=$41 TR=$55 BL=$1C BR=$1C
        .byte   $0C,$3A,$3E,$3A ; AA91  TL=$0C TR=$3A BL=$3E BR=$3A
        .byte   $33,$38,$0D,$3A ; AA95  TL=$33 TR=$38 BL=$0D BR=$3A
        .byte   $52,$39,$22,$22 ; AA99  TL=$52 TR=$39 BL=$22 BR=$22
        .byte   $3F,$0D,$22,$22 ; AA9D  TL=$3F TR=$0D BL=$22 BR=$22
        .byte   $0C,$16,$22,$56 ; AAA1  TL=$0C TR=$16 BL=$22 BR=$56
        .byte   $0D,$16,$24,$25 ; AAA5  TL=$0D TR=$16 BL=$24 BR=$25
        .byte   $03,$03,$05,$08 ; AAA9  TL=$03 TR=$03 BL=$05 BR=$08
        .byte   $57,$58,$33,$36 ; AAAD  TL=$57 TR=$58 BL=$33 BR=$36
        .byte   $0B,$2C,$16,$19 ; AAB1  TL=$0B TR=$2C BL=$16 BR=$19
        .byte   $0B,$2C,$19,$19 ; AAB5  TL=$0B TR=$2C BL=$19 BR=$19
        .byte   $0B,$0B,$59,$0D ; AAB9  TL=$0B TR=$0B BL=$59 BR=$0D
        .byte   $5A,$30,$5B,$36 ; AABD  TL=$5A TR=$30 BL=$5B BR=$36
        .byte   $31,$30,$33,$36 ; AAC1  TL=$31 TR=$30 BL=$33 BR=$36
        .byte   $31,$5C,$33,$5D ; AAC5  TL=$31 TR=$5C BL=$33 BR=$5D
        .byte   $19,$19,$0D,$0D ; AAC9  TL=$19 TR=$19 BL=$0D BR=$0D
        .byte   $19,$0D,$0D,$0D ; AACD  TL=$19 TR=$0D BL=$0D BR=$0D
        .byte   $16,$0D,$16,$0D ; AAD1  TL=$16 TR=$0D BL=$16 BR=$0D
        .byte   $5E,$5F,$60,$61 ; AAD5  TL=$5E TR=$5F BL=$60 BR=$61
        .byte   $2C,$0D,$2C,$0D ; AAD9  TL=$2C TR=$0D BL=$2C BR=$0D
        .byte   $2C,$2C,$0D,$0D ; AADD  TL=$2C TR=$2C BL=$0D BR=$0D
        .byte   $11,$40,$1B,$1C ; AAE1  TL=$11 TR=$40 BL=$1B BR=$1C
        .byte   $16,$0D,$56,$22 ; AAE5  TL=$16 TR=$0D BL=$56 BR=$22
        .byte   $13,$14,$1D,$12 ; AAE9  TL=$13 TR=$14 BL=$1D BR=$12
        .byte   $2C,$2C,$0C,$0D ; AAED  TL=$2C TR=$2C BL=$0C BR=$0D
        .byte   $44,$0D,$0C,$0D ; AAF1  TL=$44 TR=$0D BL=$0C BR=$0D
        .byte   $62,$63,$60,$64 ; AAF5  TL=$62 TR=$63 BL=$60 BR=$64
        .byte   $01,$02,$65,$66 ; AAF9  TL=$01 TR=$02 BL=$65 BR=$66
        .byte   $54,$41,$67,$1C ; AAFD  TL=$54 TR=$41 BL=$67 BR=$1C
        .byte   $68,$19,$69,$0D ; AB01  TL=$68 TR=$19 BL=$69 BR=$0D
        .byte   $59,$19,$16,$0D ; AB05  TL=$59 TR=$19 BL=$16 BR=$0D
        .byte   $0D,$11,$16,$11 ; AB09  TL=$0D TR=$11 BL=$16 BR=$11
        .byte   $54,$6A,$67,$6B ; AB0D  TL=$54 TR=$6A BL=$67 BR=$6B
        .byte   $2B,$14,$1E,$12 ; AB11  TL=$2B TR=$14 BL=$1E BR=$12
        .byte   $0D,$6C,$0D,$6D ; AB15  TL=$0D TR=$6C BL=$0D BR=$6D
        .byte   $6E,$6F,$70,$71 ; AB19  TL=$6E TR=$6F BL=$70 BR=$71
        .byte   $72,$0D,$73,$0D ; AB1D  TL=$72 TR=$0D BL=$73 BR=$0D
        .byte   $11,$40,$1B,$74 ; AB21  TL=$11 TR=$40 BL=$1B BR=$74
        .byte   $41,$41,$1C,$74 ; AB25  TL=$41 TR=$41 BL=$1C BR=$74
        .byte   $41,$6A,$1C,$75 ; AB29  TL=$41 TR=$6A BL=$1C BR=$75
        .byte   $69,$0D,$69,$0D ; AB2D  TL=$69 TR=$0D BL=$69 BR=$0D
        .byte   $16,$0D,$16,$19 ; AB31  TL=$16 TR=$0D BL=$16 BR=$19
        .byte   $16,$11,$59,$11 ; AB35  TL=$16 TR=$11 BL=$59 BR=$11
        .byte   $0D,$0E,$0D,$0E ; AB39  TL=$0D TR=$0E BL=$0D BR=$0E
        .byte   $69,$0D,$76,$19 ; AB3D  TL=$69 TR=$0D BL=$76 BR=$19
        .byte   $0D,$0D,$59,$0D ; AB41  TL=$0D TR=$0D BL=$59 BR=$0D
        .byte   $16,$11,$16,$11 ; AB45  TL=$16 TR=$11 BL=$16 BR=$11
        .byte   $41,$6A,$1C,$6B ; AB49  TL=$41 TR=$6A BL=$1C BR=$6B
        .byte   $44,$11,$20,$11 ; AB4D  TL=$44 TR=$11 BL=$20 BR=$11
        .byte   $5E,$77,$60,$64 ; AB51  TL=$5E TR=$77 BL=$60 BR=$64
        .byte   $78,$19,$22,$22 ; AB55  TL=$78 TR=$19 BL=$22 BR=$22
        .byte   $19,$19,$22,$22 ; AB59  TL=$19 TR=$19 BL=$22 BR=$22
        .byte   $19,$11,$22,$22 ; AB5D  TL=$19 TR=$11 BL=$22 BR=$22
        .byte   $00,$00,$00,$00 ; AB61  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$00,$00,$00 ; AB65  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$00,$00,$00 ; AB69  TL=$00 TR=$00 BL=$00 BR=$00
; 800 bytes (level 9 is 32×25 rather than 32×32)
OvhdLvl1_MapData:
        .byte   $00,$01,$02,$02,$02,$02,$02,$02 ; AB6D
        .byte   $02,$02,$02,$03,$00,$01,$04,$02 ; AB75
        .byte   $04,$02,$04,$03,$00,$01,$02,$03 ; AB7D
        .byte   $00,$05,$05,$05,$05,$05,$05,$05 ; AB85
        .byte   $06,$07,$08,$09,$0A,$08,$09,$09 ; AB8D
        .byte   $09,$08,$0A,$0B,$06,$07,$0C,$0D ; AB95
        .byte   $0E,$0D,$0C,$0F,$06,$07,$09,$0B ; AB9D
        .byte   $06,$05,$05,$05,$05,$05,$05,$05 ; ABA5
        .byte   $06,$10,$11,$12,$13,$14,$11,$13 ; ABAD
        .byte   $12,$14,$15,$16,$06,$10,$17,$18 ; ABB5
        .byte   $19,$18,$19,$1A,$06,$10,$13,$16 ; ABBD
        .byte   $06,$05,$05,$05,$05,$05,$05,$05 ; ABC5
        .byte   $06,$10,$14,$13,$12,$13,$13,$14 ; ABCD
        .byte   $13,$1B,$14,$16,$1C,$1D,$1E,$1F ; ABD5
        .byte   $1D,$1F,$20,$21,$22,$1D,$20,$21 ; ABDD
        .byte   $22,$05,$05,$05,$05,$05,$05,$05 ; ABE5
        .byte   $06,$10,$23,$13,$13,$15,$12,$13 ; ABED
        .byte   $23,$13,$12,$16,$24,$01,$02,$02 ; ABF5
        .byte   $25,$02,$26,$03,$00,$01,$26,$03 ; ABFD
        .byte   $00,$05,$05,$05,$05,$05,$05,$05 ; AC05
        .byte   $06,$10,$14,$1B,$12,$14,$13,$14 ; AC0D
        .byte   $12,$14,$14,$16,$06,$0D,$27,$27 ; AC15
        .byte   $0E,$28,$29,$2A,$06,$07,$2B,$0B ; AC1D
        .byte   $06,$05,$05,$05,$05,$05,$05,$05 ; AC25
        .byte   $06,$10,$12,$15,$14,$1B,$12,$11 ; AC2D
        .byte   $13,$1B,$12,$16,$06,$2C,$2C,$2C ; AC35
        .byte   $2C,$2D,$2E,$2F,$06,$30,$31,$32 ; AC3D
        .byte   $06,$05,$05,$05,$05,$05,$05,$05 ; AC45
        .byte   $22,$1D,$1E,$1E,$1E,$1E,$20,$1E ; AC4D
        .byte   $1E,$1E,$1E,$21,$33,$34,$2C,$2C ; AC55
        .byte   $2C,$10,$13,$16,$06,$35,$36,$37 ; AC5D
        .byte   $06,$05,$05,$05,$05,$05,$05,$05 ; AC65
        .byte   $00,$01,$02,$02,$02,$02,$26,$03 ; AC6D
        .byte   $00,$01,$02,$03,$38,$2C,$2C,$2C ; AC75
        .byte   $39,$3A,$3B,$3C,$06,$30,$31,$37 ; AC7D
        .byte   $06,$05,$05,$05,$05,$05,$05,$05 ; AC85
        .byte   $06,$07,$09,$3D,$3E,$3F,$40,$0B ; AC8D
        .byte   $06,$41,$41,$41,$06,$19,$42,$43 ; AC95
        .byte   $44,$13,$45,$46,$06,$47,$36,$32 ; AC9D
        .byte   $06,$05,$05,$05,$05,$05,$05,$05 ; ACA5
        .byte   $06,$48,$49,$1B,$4A,$4B,$4C,$16 ; ACAD
        .byte   $06,$4D,$4E,$16,$06,$48,$13,$13 ; ACB5
        .byte   $4F,$3A,$50,$1A,$06,$51,$52,$32 ; ACBD
        .byte   $06,$05,$05,$05,$05,$05,$05,$05 ; ACC5
        .byte   $22,$1D,$1E,$53,$54,$1E,$1E,$21 ; ACCD
        .byte   $22,$55,$56,$21,$22,$1D,$1E,$1E ; ACD5
        .byte   $1E,$1E,$1E,$21,$22,$1D,$20,$21 ; ACDD
        .byte   $33,$05,$05,$05,$05,$05,$05,$05 ; ACE5
        .byte   $00,$01,$02,$02,$02,$02,$02,$03 ; ACED
        .byte   $00,$01,$26,$02,$02,$02,$02,$03 ; ACF5
        .byte   $00,$01,$02,$02,$57,$02,$26,$03 ; ACFD
        .byte   $00,$05,$05,$05,$05,$05,$05,$05 ; AD05
        .byte   $06,$41,$58,$41,$58,$41,$58,$41 ; AD0D
        .byte   $06,$07,$2B,$59,$5A,$5B,$09,$0B ; AD15
        .byte   $06,$07,$09,$09,$0C,$07,$2B,$0B ; AD1D
        .byte   $06,$05,$05,$05,$05,$05,$05,$05 ; AD25
        .byte   $06,$5C,$41,$5D,$41,$5D,$41,$5E ; AD2D
        .byte   $06,$4D,$5F,$60,$13,$61,$13,$62 ; AD35
        .byte   $06,$10,$63,$64,$65,$3A,$3B,$3C ; AD3D
        .byte   $06,$05,$05,$05,$05,$05,$05,$05 ; AD45
        .byte   $06,$41,$5D,$41,$5D,$41,$5D,$41 ; AD4D
        .byte   $1C,$1D,$1E,$66,$1E,$1E,$1E,$21 ; AD55
        .byte   $33,$67,$68,$63,$63,$13,$45,$46 ; AD5D
        .byte   $06,$05,$05,$05,$05,$05,$05,$05 ; AD65
        .byte   $06,$5C,$41,$5D,$41,$5D,$41,$5E ; AD6D
        .byte   $24,$01,$02,$03,$00,$01,$02,$03 ; AD75
        .byte   $38,$39,$3A,$3A,$3B,$69,$17,$1A ; AD7D
        .byte   $06,$05,$05,$05,$05,$05,$05,$05 ; AD85
        .byte   $06,$41,$5D,$41,$5D,$41,$5D,$41 ; AD8D
        .byte   $06,$07,$6A,$0B,$06,$07,$09,$0B ; AD95
        .byte   $6B,$6C,$3B,$69,$45,$10,$13,$16 ; AD9D
        .byte   $06,$05,$05,$05,$05,$05,$05,$05 ; ADA5
        .byte   $06,$5C,$41,$5D,$41,$5D,$41,$5E ; ADAD
        .byte   $06,$6D,$6E,$6F,$06,$70,$71,$72 ; ADB5
        .byte   $73,$74,$45,$10,$75,$76,$76,$77 ; ADBD
        .byte   $06,$05,$05,$05,$05,$05,$05,$05 ; ADC5
        .byte   $06,$41,$5D,$41,$5D,$41,$5D,$41 ; ADCD
        .byte   $06,$78,$79,$7A,$06,$10,$65,$77 ; ADD5
        .byte   $06,$10,$45,$10,$7B,$7B,$7B,$16 ; ADDD
        .byte   $06,$05,$05,$05,$05,$05,$05,$05 ; ADE5
        .byte   $06,$5C,$41,$5D,$41,$5D,$41,$5E ; ADED
        .byte   $06,$7C,$7D,$7E,$06,$6C,$7F,$80 ; ADF5
        .byte   $06,$10,$65,$76,$76,$76,$3B,$3C ; ADFD
        .byte   $06,$05,$05,$05,$05,$05,$05,$05 ; AE05
        .byte   $06,$41,$5D,$41,$5D,$41,$5D,$16 ; AE0D
        .byte   $6B,$10,$61,$7E,$06,$10,$13,$16 ; AE15
        .byte   $06,$10,$13,$7B,$7B,$7B,$45,$46 ; AE1D
        .byte   $06,$05,$05,$05,$05,$05,$05,$05 ; AE25
        .byte   $06,$5C,$41,$5D,$41,$5D,$41,$72 ; AE2D
        .byte   $73,$74,$60,$7E,$06,$10,$81,$16 ; AE35
        .byte   $06,$10,$4F,$3A,$3A,$3A,$50,$1A ; AE3D
        .byte   $06,$05,$05,$05,$05,$05,$05,$05 ; AE45
        .byte   $22,$1D,$1E,$1E,$1E,$1E,$1E,$21 ; AE4D
        .byte   $22,$82,$83,$84,$22,$1D,$1E,$21 ; AE55
        .byte   $22,$1D,$1E,$1E,$1E,$1E,$1E,$21 ; AE5D
        .byte   $22,$05,$05,$05,$05,$05,$05,$05 ; AE65
        .byte   $02,$02,$02,$02,$02,$02,$02,$02 ; AE6D
        .byte   $02,$02,$02,$02,$02,$02,$02,$02 ; AE75
        .byte   $02,$02,$02,$02,$02,$02,$02,$02 ; AE7D
        .byte   $02,$05,$05,$05,$05,$05,$05,$05 ; AE85
; Tile attribute table – bits: 0-1=palette 2=walk-behind 3=Tunnel(→Tank) 4=damage 7=solid 
; 3+7=Doorway 6+7=destroyable
OvhdLvl1_TileAttrTable:
        .byte   $00,$02,$02,$02,$02,$02,$02,$02 ; AE8D
        .byte   $02,$02,$02,$02,$03,$03,$03,$03 ; AE95
        .byte   $05,$05,$05,$05,$05,$05,$81,$81 ; AE9D
        .byte   $81,$80,$80,$80,$80,$80,$80,$80 ; AEA5
        .byte   $80,$80,$80,$87,$87,$87,$8F,$8F ; AEAD
        .byte   $87,$87,$87,$83,$83,$8B,$8B,$80 ; AEB5
        .byte   $C3,$10,$10,$10,$10,$07,$07,$07 ; AEBD
        .byte   $07,$8D,$8D,$8D,$8D,$85,$85,$85 ; AEC5
        .byte   $85,$85,$85,$02,$02,$02,$02,$08 ; AECD
        .byte   $02,$02,$02,$02                 ; AED5
; 16 bytes — 8 B vertical + 8 B horizontal scroll-boundary flags
OvhdLvl1_ScrollData:
        .byte   $FC,$1C,$E0,$FC,$30,$00,$FC,$00 ; AED9
        .byte   $96,$96,$B6,$AA,$BA,$BA,$00,$00 ; AEE1
; ----------------------------------------------------------------------------
OvhdLvl3_MapPointers:
        .addr   OvhdLvl3_BgPalette              ; AEE9
        .addr   OvhdLvl3_TileAttrTable          ; AEEB
        .addr   OvhdLvl3_TileDescTable          ; AEED
        .addr   OvhdLvl3_StructureDescTable     ; AEEF
        .addr   OvhdLvl3_ChunkDescTable         ; AEF1
        .addr   OvhdLvl3_MapData                ; AEF3
; ----------------------------------------------------------------------------
; 4 BgPalette records — the level's 4 background sub-palettes × 4 NES colour indices.
OvhdLvl3_BgPalette:
        .byte   $0F,$07,$00,$10 ; AEF5  Backdrop=$0F Colour1=$07 Colour2=$00 Colour3=$10
        .byte   $0F,$05,$14,$10 ; AEF9  Backdrop=$0F Colour1=$05 Colour2=$14 Colour3=$10
        .byte   $0F,$0B,$1B,$2C ; AEFD  Backdrop=$0F Colour1=$0B Colour2=$1B Colour3=$2C
        .byte   $0F,$16,$26,$36 ; AF01  Backdrop=$0F Colour1=$16 Colour2=$26 Colour3=$36
; 90 TileDesc records — the level's Tile definitions.
OvhdLvl3_TileDescTable:
        .byte   $00,$00,$00,$00 ; AF05  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $8B,$8B,$8B,$8B ; AF09  TL=$8B TR=$8B BL=$8B BR=$8B
        .byte   $9C,$8B,$9C,$8B ; AF0D  TL=$9C TR=$8B BL=$9C BR=$8B
        .byte   $8B,$9D,$8B,$9E ; AF11  TL=$8B TR=$9D BL=$8B BR=$9E
        .byte   $8B,$9E,$8B,$9E ; AF15  TL=$8B TR=$9E BL=$8B BR=$9E
        .byte   $8B,$9E,$8B,$9F ; AF19  TL=$8B TR=$9E BL=$8B BR=$9F
        .byte   $89,$99,$8A,$9A ; AF1D  TL=$89 TR=$99 BL=$8A BR=$9A
        .byte   $05,$15,$06,$16 ; AF21  TL=$05 TR=$15 BL=$06 BR=$16
        .byte   $15,$15,$08,$16 ; AF25  TL=$15 TR=$15 BL=$08 BR=$16
        .byte   $15,$17,$08,$18 ; AF29  TL=$15 TR=$17 BL=$08 BR=$18
        .byte   $15,$27,$08,$28 ; AF2D  TL=$15 TR=$27 BL=$08 BR=$28
        .byte   $22,$32,$23,$33 ; AF31  TL=$22 TR=$32 BL=$23 BR=$33
        .byte   $24,$32,$25,$33 ; AF35  TL=$24 TR=$32 BL=$25 BR=$33
        .byte   $24,$34,$25,$35 ; AF39  TL=$24 TR=$34 BL=$25 BR=$35
        .byte   $26,$36,$25,$37 ; AF3D  TL=$26 TR=$36 BL=$25 BR=$37
        .byte   $45,$55,$46,$56 ; AF41  TL=$45 TR=$55 BL=$46 BR=$56
        .byte   $46,$56,$46,$56 ; AF45  TL=$46 TR=$56 BL=$46 BR=$56
        .byte   $47,$57,$48,$58 ; AF49  TL=$47 TR=$57 BL=$48 BR=$58
        .byte   $4C,$5C,$4D,$5D ; AF4D  TL=$4C TR=$5C BL=$4D BR=$5D
        .byte   $6C,$5C,$6D,$5D ; AF51  TL=$6C TR=$5C BL=$6D BR=$5D
        .byte   $6C,$7C,$6D,$7D ; AF55  TL=$6C TR=$7C BL=$6D BR=$7D
        .byte   $6C,$8C,$6D,$8D ; AF59  TL=$6C TR=$8C BL=$6D BR=$8D
        .byte   $4E,$5E,$4F,$5F ; AF5D  TL=$4E TR=$5E BL=$4F BR=$5F
        .byte   $6E,$5E,$6F,$5F ; AF61  TL=$6E TR=$5E BL=$6F BR=$5F
        .byte   $6E,$7E,$6F,$7F ; AF65  TL=$6E TR=$7E BL=$6F BR=$7F
        .byte   $6E,$8E,$6F,$8F ; AF69  TL=$6E TR=$8E BL=$6F BR=$8F
        .byte   $02,$14,$04,$94 ; AF6D  TL=$02 TR=$14 BL=$04 BR=$94
        .byte   $14,$14,$84,$94 ; AF71  TL=$14 TR=$14 BL=$84 BR=$94
        .byte   $14,$12,$84,$04 ; AF75  TL=$14 TR=$12 BL=$84 BR=$04
        .byte   $04,$93,$04,$94 ; AF79  TL=$04 TR=$93 BL=$04 BR=$94
        .byte   $83,$93,$84,$94 ; AF7D  TL=$83 TR=$93 BL=$84 BR=$94
        .byte   $83,$04,$84,$04 ; AF81  TL=$83 TR=$04 BL=$84 BR=$04
        .byte   $04,$93,$03,$14 ; AF85  TL=$04 TR=$93 BL=$03 BR=$14
        .byte   $83,$93,$14,$14 ; AF89  TL=$83 TR=$93 BL=$14 BR=$14
        .byte   $83,$04,$14,$13 ; AF8D  TL=$83 TR=$04 BL=$14 BR=$13
        .byte   $83,$93,$84,$02 ; AF91  TL=$83 TR=$93 BL=$84 BR=$02
        .byte   $83,$93,$12,$94 ; AF95  TL=$83 TR=$93 BL=$12 BR=$94
        .byte   $83,$03,$84,$94 ; AF99  TL=$83 TR=$03 BL=$84 BR=$94
        .byte   $13,$93,$84,$94 ; AF9D  TL=$13 TR=$93 BL=$84 BR=$94
        .byte   $70,$69,$71,$9B ; AFA1  TL=$70 TR=$69 BL=$71 BR=$9B
        .byte   $4C,$5C,$4D,$5D ; AFA5  TL=$4C TR=$5C BL=$4D BR=$5D
        .byte   $6C,$5C,$6D,$5D ; AFA9  TL=$6C TR=$5C BL=$6D BR=$5D
        .byte   $6C,$7C,$6D,$7D ; AFAD  TL=$6C TR=$7C BL=$6D BR=$7D
        .byte   $6C,$8C,$6D,$8D ; AFB1  TL=$6C TR=$8C BL=$6D BR=$8D
        .byte   $40,$50,$40,$50 ; AFB5  TL=$40 TR=$50 BL=$40 BR=$50
        .byte   $50,$60,$50,$60 ; AFB9  TL=$50 TR=$60 BL=$50 BR=$60
        .byte   $3E,$14,$3E,$14 ; AFBD  TL=$3E TR=$14 BL=$3E BR=$14
        .byte   $14,$3F,$14,$3F ; AFC1  TL=$14 TR=$3F BL=$14 BR=$3F
        .byte   $41,$51,$41,$51 ; AFC5  TL=$41 TR=$51 BL=$41 BR=$51
        .byte   $51,$61,$51,$61 ; AFC9  TL=$51 TR=$61 BL=$51 BR=$61
        .byte   $64,$64,$65,$65 ; AFCD  TL=$64 TR=$64 BL=$65 BR=$65
        .byte   $65,$65,$66,$66 ; AFD1  TL=$65 TR=$65 BL=$66 BR=$66
        .byte   $2E,$2E,$04,$04 ; AFD5  TL=$2E TR=$2E BL=$04 BR=$04
        .byte   $04,$04,$2F,$2F ; AFD9  TL=$04 TR=$04 BL=$2F BR=$2F
        .byte   $74,$74,$75,$75 ; AFDD  TL=$74 TR=$74 BL=$75 BR=$75
        .byte   $75,$75,$76,$76 ; AFE1  TL=$75 TR=$75 BL=$76 BR=$76
        .byte   $42,$00,$43,$00 ; AFE5  TL=$42 TR=$00 BL=$43 BR=$00
        .byte   $00,$52,$00,$53 ; AFE9  TL=$00 TR=$52 BL=$00 BR=$53
        .byte   $43,$62,$44,$63 ; AFED  TL=$43 TR=$62 BL=$44 BR=$63
        .byte   $72,$53,$73,$54 ; AFF1  TL=$72 TR=$53 BL=$73 BR=$54
        .byte   $67,$77,$68,$78 ; AFF5  TL=$67 TR=$77 BL=$68 BR=$78
        .byte   $68,$78,$49,$59 ; AFF9  TL=$68 TR=$78 BL=$49 BR=$59
        .byte   $67,$79,$68,$7A ; AFFD  TL=$67 TR=$79 BL=$68 BR=$7A
        .byte   $68,$7A,$49,$7B ; B001  TL=$68 TR=$7A BL=$49 BR=$7B
        .byte   $4A,$5A,$4B,$5B ; B005  TL=$4A TR=$5A BL=$4B BR=$5B
        .byte   $5A,$6A,$5B,$6B ; B009  TL=$5A TR=$6A BL=$5B BR=$6B
        .byte   $80,$90,$81,$91 ; B00D  TL=$80 TR=$90 BL=$81 BR=$91
        .byte   $80,$90,$81,$91 ; B011  TL=$80 TR=$90 BL=$81 BR=$91
        .byte   $85,$95,$86,$96 ; B015  TL=$85 TR=$95 BL=$86 BR=$96
        .byte   $87,$97,$88,$98 ; B019  TL=$87 TR=$97 BL=$88 BR=$98
        .byte   $14,$14,$84,$94 ; B01D  TL=$14 TR=$14 BL=$84 BR=$94
        .byte   $04,$93,$04,$94 ; B021  TL=$04 TR=$93 BL=$04 BR=$94
        .byte   $83,$93,$84,$94 ; B025  TL=$83 TR=$93 BL=$84 BR=$94
        .byte   $83,$04,$84,$04 ; B029  TL=$83 TR=$04 BL=$84 BR=$04
        .byte   $02,$14,$04,$94 ; B02D  TL=$02 TR=$14 BL=$04 BR=$94
        .byte   $04,$93,$04,$94 ; B031  TL=$04 TR=$93 BL=$04 BR=$94
        .byte   $14,$12,$84,$04 ; B035  TL=$14 TR=$12 BL=$84 BR=$04
        .byte   $83,$04,$84,$04 ; B039  TL=$83 TR=$04 BL=$84 BR=$04
        .byte   $3E,$14,$3E,$14 ; B03D  TL=$3E TR=$14 BL=$3E BR=$14
        .byte   $14,$3F,$14,$3F ; B041  TL=$14 TR=$3F BL=$14 BR=$3F
        .byte   $02,$14,$04,$02 ; B045  TL=$02 TR=$14 BL=$04 BR=$02
        .byte   $14,$14,$14,$14 ; B049  TL=$14 TR=$14 BL=$14 BR=$14
        .byte   $14,$12,$12,$04 ; B04D  TL=$14 TR=$12 BL=$12 BR=$04
        .byte   $04,$04,$04,$04 ; B051  TL=$04 TR=$04 BL=$04 BR=$04
        .byte   $01,$01,$00,$00 ; B055  TL=$01 TR=$01 BL=$00 BR=$00
        .byte   $04,$04,$04,$04 ; B059  TL=$04 TR=$04 BL=$04 BR=$04
        .byte   $04,$03,$03,$14 ; B05D  TL=$04 TR=$03 BL=$03 BR=$14
        .byte   $14,$14,$14,$14 ; B061  TL=$14 TR=$14 BL=$14 BR=$14
        .byte   $13,$04,$14,$13 ; B065  TL=$13 TR=$04 BL=$14 BR=$13
        .byte   $89,$9E,$8A,$9F ; B069  TL=$89 TR=$9E BL=$8A BR=$9F
; 99 StructureDesc records — the level's Structure definitions, each a 2×2 quad of Tiles.
OvhdLvl3_StructureDescTable:
        .byte   $47,$48,$47,$48 ; B06D  TL=$47 TR=$48 BL=$47 BR=$48
        .byte   $48,$48,$48,$23 ; B071  TL=$48 TR=$48 BL=$48 BR=$23
        .byte   $48,$49,$48,$49 ; B075  TL=$48 TR=$49 BL=$48 BR=$49
        .byte   $48,$48,$21,$21 ; B079  TL=$48 TR=$48 BL=$21 BR=$21
        .byte   $07,$08,$0B,$0C ; B07D  TL=$07 TR=$08 BL=$0B BR=$0C
        .byte   $08,$08,$0C,$0C ; B081  TL=$08 TR=$08 BL=$0C BR=$0C
        .byte   $08,$0A,$0C,$0E ; B085  TL=$08 TR=$0A BL=$0C BR=$0E
        .byte   $48,$48,$24,$48 ; B089  TL=$48 TR=$48 BL=$24 BR=$48
        .byte   $07,$08,$07,$08 ; B08D  TL=$07 TR=$08 BL=$07 BR=$08
        .byte   $08,$08,$08,$08 ; B091  TL=$08 TR=$08 BL=$08 BR=$08
        .byte   $08,$08,$0A,$0F ; B095  TL=$08 TR=$08 BL=$0A BR=$0F
        .byte   $08,$08,$0F,$08 ; B099  TL=$08 TR=$08 BL=$0F BR=$08
        .byte   $08,$0A,$08,$0A ; B09D  TL=$08 TR=$0A BL=$08 BR=$0A
        .byte   $00,$00,$00,$00 ; B0A1  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $06,$06,$06,$06 ; B0A5  TL=$06 TR=$06 BL=$06 BR=$06
        .byte   $06,$06,$50,$51 ; B0A9  TL=$06 TR=$06 BL=$50 BR=$51
        .byte   $06,$06,$52,$06 ; B0AD  TL=$06 TR=$06 BL=$52 BR=$06
        .byte   $53,$54,$56,$57 ; B0B1  TL=$53 TR=$54 BL=$56 BR=$57
        .byte   $55,$06,$58,$06 ; B0B5  TL=$55 TR=$06 BL=$58 BR=$06
        .byte   $06,$59,$06,$59 ; B0B9  TL=$06 TR=$59 BL=$06 BR=$59
        .byte   $02,$01,$02,$01 ; B0BD  TL=$02 TR=$01 BL=$02 BR=$01
        .byte   $01,$01,$01,$01 ; B0C1  TL=$01 TR=$01 BL=$01 BR=$01
        .byte   $04,$10,$04,$10 ; B0C5  TL=$04 TR=$10 BL=$04 BR=$10
        .byte   $10,$01,$10,$01 ; B0C9  TL=$10 TR=$01 BL=$10 BR=$01
        .byte   $04,$11,$01,$01 ; B0CD  TL=$04 TR=$11 BL=$01 BR=$01
        .byte   $11,$01,$01,$01 ; B0D1  TL=$11 TR=$01 BL=$01 BR=$01
        .byte   $01,$04,$01,$04 ; B0D5  TL=$01 TR=$04 BL=$01 BR=$04
        .byte   $02,$50,$02,$53 ; B0D9  TL=$02 TR=$50 BL=$02 BR=$53
        .byte   $51,$52,$54,$55 ; B0DD  TL=$51 TR=$52 BL=$54 BR=$55
        .byte   $02,$56,$02,$01 ; B0E1  TL=$02 TR=$56 BL=$02 BR=$01
        .byte   $57,$58,$01,$01 ; B0E5  TL=$57 TR=$58 BL=$01 BR=$01
        .byte   $01,$0F,$04,$10 ; B0E9  TL=$01 TR=$0F BL=$04 BR=$10
        .byte   $0F,$01,$10,$01 ; B0ED  TL=$0F TR=$01 BL=$10 BR=$01
        .byte   $27,$27,$27,$42 ; B0F1  TL=$27 TR=$27 BL=$27 BR=$42
        .byte   $27,$27,$42,$01 ; B0F5  TL=$27 TR=$27 BL=$42 BR=$01
        .byte   $27,$42,$27,$27 ; B0F9  TL=$27 TR=$42 BL=$27 BR=$27
        .byte   $42,$01,$27,$27 ; B0FD  TL=$42 TR=$01 BL=$27 BR=$27
        .byte   $1A,$1B,$1D,$1E ; B101  TL=$1A TR=$1B BL=$1D BR=$1E
        .byte   $1B,$1B,$1E,$1E ; B105  TL=$1B TR=$1B BL=$1E BR=$1E
        .byte   $26,$48,$48,$48 ; B109  TL=$26 TR=$48 BL=$48 BR=$48
        .byte   $48,$25,$48,$48 ; B10D  TL=$48 TR=$25 BL=$48 BR=$48
        .byte   $1B,$46,$1E,$48 ; B111  TL=$1B TR=$46 BL=$1E BR=$48
        .byte   $46,$1B,$48,$1E ; B115  TL=$46 TR=$1B BL=$48 BR=$1E
        .byte   $47,$48,$20,$21 ; B119  TL=$47 TR=$48 BL=$20 BR=$21
        .byte   $1B,$1C,$1E,$1F ; B11D  TL=$1B TR=$1C BL=$1E BR=$1F
        .byte   $01,$01,$01,$28 ; B121  TL=$01 TR=$01 BL=$01 BR=$28
        .byte   $01,$01,$29,$29 ; B125  TL=$01 TR=$01 BL=$29 BR=$29
        .byte   $04,$12,$04,$16 ; B129  TL=$04 TR=$12 BL=$04 BR=$16
        .byte   $13,$13,$18,$18 ; B12D  TL=$13 TR=$13 BL=$18 BR=$18
        .byte   $01,$04,$29,$2B ; B131  TL=$01 TR=$04 BL=$29 BR=$2B
        .byte   $13,$15,$18,$19 ; B135  TL=$13 TR=$15 BL=$18 BR=$19
        .byte   $20,$21,$32,$34 ; B139  TL=$20 TR=$21 BL=$32 BR=$34
        .byte   $21,$22,$34,$36 ; B13D  TL=$21 TR=$22 BL=$34 BR=$36
        .byte   $27,$27,$27,$01 ; B141  TL=$27 TR=$27 BL=$27 BR=$01
        .byte   $27,$27,$01,$01 ; B145  TL=$27 TR=$27 BL=$01 BR=$01
        .byte   $27,$01,$27,$01 ; B149  TL=$27 TR=$01 BL=$27 BR=$01
        .byte   $27,$27,$43,$43 ; B14D  TL=$27 TR=$27 BL=$43 BR=$43
        .byte   $43,$43,$43,$43 ; B151  TL=$43 TR=$43 BL=$43 BR=$43
        .byte   $27,$27,$42,$42 ; B155  TL=$27 TR=$27 BL=$42 BR=$42
        .byte   $27,$42,$27,$42 ; B159  TL=$27 TR=$42 BL=$27 BR=$42
        .byte   $42,$42,$42,$42 ; B15D  TL=$42 TR=$42 BL=$42 BR=$42
        .byte   $48,$49,$21,$22 ; B161  TL=$48 TR=$49 BL=$21 BR=$22
        .byte   $08,$09,$0C,$0D ; B165  TL=$08 TR=$09 BL=$0C BR=$0D
        .byte   $02,$01,$29,$29 ; B169  TL=$02 TR=$01 BL=$29 BR=$29
        .byte   $01,$01,$2A,$01 ; B16D  TL=$01 TR=$01 BL=$2A BR=$01
        .byte   $14,$02,$18,$02 ; B171  TL=$14 TR=$02 BL=$18 BR=$02
        .byte   $01,$04,$01,$3E ; B175  TL=$01 TR=$04 BL=$01 BR=$3E
        .byte   $01,$3F,$01,$04 ; B179  TL=$01 TR=$3F BL=$01 BR=$04
        .byte   $33,$35,$4A,$46 ; B17D  TL=$33 TR=$35 BL=$4A BR=$46
        .byte   $35,$37,$46,$4C ; B181  TL=$35 TR=$37 BL=$46 BR=$4C
        .byte   $4B,$48,$47,$48 ; B185  TL=$4B TR=$48 BL=$47 BR=$48
        .byte   $48,$4D,$48,$49 ; B189  TL=$48 TR=$4D BL=$48 BR=$49
        .byte   $02,$01,$3C,$01 ; B18D  TL=$02 TR=$01 BL=$3C BR=$01
        .byte   $3D,$01,$02,$01 ; B191  TL=$3D TR=$01 BL=$02 BR=$01
        .byte   $08,$09,$08,$09 ; B195  TL=$08 TR=$09 BL=$08 BR=$09
        .byte   $01,$01,$43,$43 ; B199  TL=$01 TR=$01 BL=$43 BR=$43
        .byte   $01,$04,$43,$43 ; B19D  TL=$01 TR=$04 BL=$43 BR=$43
        .byte   $43,$43,$02,$01 ; B1A1  TL=$43 TR=$43 BL=$02 BR=$01
        .byte   $43,$43,$01,$04 ; B1A5  TL=$43 TR=$43 BL=$01 BR=$04
        .byte   $45,$45,$45,$45 ; B1A9  TL=$45 TR=$45 BL=$45 BR=$45
        .byte   $02,$01,$43,$43 ; B1AD  TL=$02 TR=$01 BL=$43 BR=$43
        .byte   $1C,$2C,$1F,$2E ; B1B1  TL=$1C TR=$2C BL=$1F BR=$2E
        .byte   $2D,$1A,$2F,$1D ; B1B5  TL=$2D TR=$1A BL=$2F BR=$1D
        .byte   $49,$4E,$22,$30 ; B1B9  TL=$49 TR=$4E BL=$22 BR=$30
        .byte   $4F,$47,$31,$20 ; B1BD  TL=$4F TR=$47 BL=$31 BR=$20
        .byte   $09,$38,$09,$3A ; B1C1  TL=$09 TR=$38 BL=$09 BR=$3A
        .byte   $39,$07,$3B,$07 ; B1C5  TL=$39 TR=$07 BL=$3B BR=$07
        .byte   $01,$40,$01,$01 ; B1C9  TL=$01 TR=$40 BL=$01 BR=$01
        .byte   $41,$01,$01,$01 ; B1CD  TL=$41 TR=$01 BL=$01 BR=$01
        .byte   $01,$01,$50,$51 ; B1D1  TL=$01 TR=$01 BL=$50 BR=$51
        .byte   $01,$01,$52,$01 ; B1D5  TL=$01 TR=$01 BL=$52 BR=$01
        .byte   $55,$01,$58,$01 ; B1D9  TL=$55 TR=$01 BL=$58 BR=$01
        .byte   $01,$04,$01,$05 ; B1DD  TL=$01 TR=$04 BL=$01 BR=$05
        .byte   $09,$38,$0D,$3A ; B1E1  TL=$09 TR=$38 BL=$0D BR=$3A
        .byte   $39,$07,$3B,$0B ; B1E5  TL=$39 TR=$07 BL=$3B BR=$0B
        .byte   $06,$40,$06,$06 ; B1E9  TL=$06 TR=$40 BL=$06 BR=$06
        .byte   $41,$06,$06,$06 ; B1ED  TL=$41 TR=$06 BL=$06 BR=$06
        .byte   $45,$06,$45,$06 ; B1F1  TL=$45 TR=$06 BL=$45 BR=$06
        .byte   $06,$45,$06,$45 ; B1F5  TL=$06 TR=$45 BL=$06 BR=$45
; 114 ChunkDesc records — the level's Chunk definitions, each a 2×2 quad of Structures. These are
; the indices OvhdLvl3_MapData's grid holds.
OvhdLvl3_ChunkDescTable:
        .byte   $00,$01,$00,$02 ; B1F9  TL=$00 TR=$01 BL=$00 BR=$02
        .byte   $03,$03,$04,$05 ; B1FD  TL=$03 TR=$03 BL=$04 BR=$05
        .byte   $03,$03,$05,$05 ; B201  TL=$03 TR=$03 BL=$05 BR=$05
        .byte   $03,$03,$05,$06 ; B205  TL=$03 TR=$03 BL=$05 BR=$06
        .byte   $07,$01,$00,$02 ; B209  TL=$07 TR=$01 BL=$00 BR=$02
        .byte   $03,$03,$08,$09 ; B20D  TL=$03 TR=$03 BL=$08 BR=$09
        .byte   $03,$03,$09,$09 ; B211  TL=$03 TR=$03 BL=$09 BR=$09
        .byte   $03,$03,$0A,$0B ; B215  TL=$03 TR=$03 BL=$0A BR=$0B
        .byte   $03,$03,$09,$0C ; B219  TL=$03 TR=$03 BL=$09 BR=$0C
        .byte   $07,$02,$00,$02 ; B21D  TL=$07 TR=$02 BL=$00 BR=$02
        .byte   $0D,$0D,$0D,$0D ; B221  TL=$0D TR=$0D BL=$0D BR=$0D
        .byte   $00,$02,$00,$02 ; B225  TL=$00 TR=$02 BL=$00 BR=$02
        .byte   $0E,$0E,$0E,$0E ; B229  TL=$0E TR=$0E BL=$0E BR=$0E
        .byte   $0F,$10,$11,$12 ; B22D  TL=$0F TR=$10 BL=$11 BR=$12
        .byte   $0E,$13,$0E,$13 ; B231  TL=$0E TR=$13 BL=$0E BR=$13
        .byte   $14,$15,$14,$15 ; B235  TL=$14 TR=$15 BL=$14 BR=$15
        .byte   $15,$15,$15,$15 ; B239  TL=$15 TR=$15 BL=$15 BR=$15
        .byte   $16,$17,$16,$17 ; B23D  TL=$16 TR=$17 BL=$16 BR=$17
        .byte   $16,$17,$18,$19 ; B241  TL=$16 TR=$17 BL=$18 BR=$19
        .byte   $15,$1A,$15,$1A ; B245  TL=$15 TR=$1A BL=$15 BR=$1A
        .byte   $1B,$1C,$1D,$1E ; B249  TL=$1B TR=$1C BL=$1D BR=$1E
        .byte   $1F,$20,$16,$17 ; B24D  TL=$1F TR=$20 BL=$16 BR=$17
        .byte   $15,$15,$1F,$20 ; B251  TL=$15 TR=$15 BL=$1F BR=$20
        .byte   $21,$22,$23,$24 ; B255  TL=$21 TR=$22 BL=$23 BR=$24
        .byte   $0E,$0E,$25,$26 ; B259  TL=$0E TR=$0E BL=$25 BR=$26
        .byte   $0E,$13,$26,$26 ; B25D  TL=$0E TR=$13 BL=$26 BR=$26
        .byte   $00,$02,$27,$28 ; B261  TL=$00 TR=$02 BL=$27 BR=$28
        .byte   $14,$15,$26,$26 ; B265  TL=$14 TR=$15 BL=$26 BR=$26
        .byte   $15,$15,$26,$26 ; B269  TL=$15 TR=$15 BL=$26 BR=$26
        .byte   $16,$17,$29,$2A ; B26D  TL=$16 TR=$17 BL=$29 BR=$2A
        .byte   $15,$1A,$26,$26 ; B271  TL=$15 TR=$1A BL=$26 BR=$26
        .byte   $00,$02,$27,$02 ; B275  TL=$00 TR=$02 BL=$27 BR=$02
        .byte   $2B,$03,$04,$05 ; B279  TL=$2B TR=$03 BL=$04 BR=$05
        .byte   $00,$02,$00,$28 ; B27D  TL=$00 TR=$02 BL=$00 BR=$28
        .byte   $0E,$0E,$26,$26 ; B281  TL=$0E TR=$0E BL=$26 BR=$26
        .byte   $0E,$0E,$26,$2C ; B285  TL=$0E TR=$0E BL=$26 BR=$2C
        .byte   $2D,$2E,$2F,$30 ; B289  TL=$2D TR=$2E BL=$2F BR=$30
        .byte   $2E,$31,$30,$32 ; B28D  TL=$2E TR=$31 BL=$30 BR=$32
        .byte   $00,$02,$33,$34 ; B291  TL=$00 TR=$02 BL=$33 BR=$34
        .byte   $35,$36,$37,$15 ; B295  TL=$35 TR=$36 BL=$37 BR=$15
        .byte   $36,$36,$15,$15 ; B299  TL=$36 TR=$36 BL=$15 BR=$15
        .byte   $38,$36,$39,$15 ; B29D  TL=$38 TR=$36 BL=$39 BR=$15
        .byte   $21,$3A,$3B,$3C ; B2A1  TL=$21 TR=$3A BL=$3B BR=$3C
        .byte   $39,$15,$39,$39 ; B2A5  TL=$39 TR=$15 BL=$39 BR=$39
        .byte   $15,$39,$39,$39 ; B2A9  TL=$15 TR=$39 BL=$39 BR=$39
        .byte   $03,$3D,$05,$3E ; B2AD  TL=$03 TR=$3D BL=$05 BR=$3E
        .byte   $3F,$2E,$30,$30 ; B2B1  TL=$3F TR=$2E BL=$30 BR=$30
        .byte   $2E,$40,$30,$41 ; B2B5  TL=$2E TR=$40 BL=$30 BR=$41
        .byte   $15,$42,$15,$43 ; B2B9  TL=$15 TR=$42 BL=$15 BR=$43
        .byte   $44,$45,$46,$47 ; B2BD  TL=$44 TR=$45 BL=$46 BR=$47
        .byte   $48,$15,$49,$15 ; B2C1  TL=$48 TR=$15 BL=$49 BR=$15
        .byte   $37,$15,$37,$15 ; B2C5  TL=$37 TR=$15 BL=$37 BR=$15
        .byte   $15,$15,$15,$1A ; B2C9  TL=$15 TR=$15 BL=$15 BR=$1A
        .byte   $25,$2C,$00,$02 ; B2CD  TL=$25 TR=$2C BL=$00 BR=$02
        .byte   $15,$1A,$14,$1A ; B2D1  TL=$15 TR=$1A BL=$14 BR=$1A
        .byte   $2B,$3D,$08,$4A ; B2D5  TL=$2B TR=$3D BL=$08 BR=$4A
        .byte   $39,$39,$39,$39 ; B2D9  TL=$39 TR=$39 BL=$39 BR=$39
        .byte   $36,$36,$26,$26 ; B2DD  TL=$36 TR=$36 BL=$26 BR=$26
        .byte   $35,$36,$2A,$26 ; B2E1  TL=$35 TR=$36 BL=$2A BR=$26
        .byte   $15,$1A,$25,$26 ; B2E5  TL=$15 TR=$1A BL=$25 BR=$26
        .byte   $3C,$3C,$3C,$3C ; B2E9  TL=$3C TR=$3C BL=$3C BR=$3C
        .byte   $14,$15,$14,$1A ; B2ED  TL=$14 TR=$15 BL=$14 BR=$1A
        .byte   $4B,$4C,$4D,$4E ; B2F1  TL=$4B TR=$4C BL=$4D BR=$4E
        .byte   $2B,$03,$08,$0C ; B2F5  TL=$2B TR=$03 BL=$08 BR=$0C
        .byte   $0E,$0E,$4F,$4F ; B2F9  TL=$0E TR=$0E BL=$4F BR=$4F
        .byte   $0E,$0E,$4F,$0E ; B2FD  TL=$0E TR=$0E BL=$4F BR=$0E
        .byte   $0E,$13,$4F,$4F ; B301  TL=$0E TR=$13 BL=$4F BR=$4F
        .byte   $14,$15,$14,$3C ; B305  TL=$14 TR=$15 BL=$14 BR=$3C
        .byte   $15,$1A,$3C,$1A ; B309  TL=$15 TR=$1A BL=$3C BR=$1A
        .byte   $14,$1A,$14,$1A ; B30D  TL=$14 TR=$1A BL=$14 BR=$1A
        .byte   $14,$15,$26,$2C ; B311  TL=$14 TR=$15 BL=$26 BR=$2C
        .byte   $4F,$0E,$4F,$0E ; B315  TL=$4F TR=$0E BL=$4F BR=$0E
        .byte   $4F,$4F,$4F,$4F ; B319  TL=$4F TR=$4F BL=$4F BR=$4F
        .byte   $14,$3C,$14,$15 ; B31D  TL=$14 TR=$3C BL=$14 BR=$15
        .byte   $3C,$1A,$15,$1A ; B321  TL=$3C TR=$1A BL=$15 BR=$1A
        .byte   $25,$2C,$00,$28 ; B325  TL=$25 TR=$2C BL=$00 BR=$28
        .byte   $15,$15,$26,$2C ; B329  TL=$15 TR=$15 BL=$26 BR=$2C
        .byte   $03,$3D,$09,$4A ; B32D  TL=$03 TR=$3D BL=$09 BR=$4A
        .byte   $03,$3D,$08,$4A ; B331  TL=$03 TR=$3D BL=$08 BR=$4A
        .byte   $50,$4C,$4D,$4E ; B335  TL=$50 TR=$4C BL=$4D BR=$4E
        .byte   $0E,$13,$25,$26 ; B339  TL=$0E TR=$13 BL=$25 BR=$26
        .byte   $15,$15,$51,$52 ; B33D  TL=$15 TR=$15 BL=$51 BR=$52
        .byte   $00,$01,$27,$02 ; B341  TL=$00 TR=$01 BL=$27 BR=$02
        .byte   $03,$3D,$04,$3E ; B345  TL=$03 TR=$3D BL=$04 BR=$3E
        .byte   $2B,$03,$04,$06 ; B349  TL=$2B TR=$03 BL=$04 BR=$06
        .byte   $53,$54,$55,$56 ; B34D  TL=$53 TR=$54 BL=$55 BR=$56
        .byte   $03,$03,$08,$0C ; B351  TL=$03 TR=$03 BL=$08 BR=$0C
        .byte   $57,$58,$15,$15 ; B355  TL=$57 TR=$58 BL=$15 BR=$15
        .byte   $4F,$0E,$0E,$0E ; B359  TL=$4F TR=$0E BL=$0E BR=$0E
        .byte   $4F,$0E,$4F,$4F ; B35D  TL=$4F TR=$0E BL=$4F BR=$4F
        .byte   $4F,$13,$4F,$13 ; B361  TL=$4F TR=$13 BL=$4F BR=$13
        .byte   $59,$5A,$11,$5B ; B365  TL=$59 TR=$5A BL=$11 BR=$5B
        .byte   $14,$1A,$14,$5C ; B369  TL=$14 TR=$1A BL=$14 BR=$5C
        .byte   $15,$15,$14,$15 ; B36D  TL=$15 TR=$15 BL=$14 BR=$15
        .byte   $15,$15,$25,$26 ; B371  TL=$15 TR=$15 BL=$25 BR=$26
        .byte   $14,$1A,$26,$26 ; B375  TL=$14 TR=$1A BL=$26 BR=$26
        .byte   $0E,$4F,$0E,$0E ; B379  TL=$0E TR=$4F BL=$0E BR=$0E
        .byte   $4F,$4F,$4F,$0E ; B37D  TL=$4F TR=$4F BL=$4F BR=$0E
        .byte   $0E,$4F,$0E,$13 ; B381  TL=$0E TR=$4F BL=$0E BR=$13
        .byte   $2B,$03,$08,$09 ; B385  TL=$2B TR=$03 BL=$08 BR=$09
        .byte   $15,$1A,$15,$5C ; B389  TL=$15 TR=$1A BL=$15 BR=$5C
        .byte   $0E,$0E,$51,$52 ; B38D  TL=$0E TR=$0E BL=$51 BR=$52
        .byte   $53,$54,$5D,$5E ; B391  TL=$53 TR=$54 BL=$5D BR=$5E
        .byte   $5F,$60,$4F,$0E ; B395  TL=$5F TR=$60 BL=$4F BR=$0E
        .byte   $4F,$4F,$39,$39 ; B399  TL=$4F TR=$4F BL=$39 BR=$39
        .byte   $4F,$13,$39,$39 ; B39D  TL=$4F TR=$13 BL=$39 BR=$39
        .byte   $4F,$0E,$39,$39 ; B3A1  TL=$4F TR=$0E BL=$39 BR=$39
        .byte   $0E,$4F,$39,$39 ; B3A5  TL=$0E TR=$4F BL=$39 BR=$39
        .byte   $0E,$4F,$0E,$4F ; B3A9  TL=$0E TR=$4F BL=$0E BR=$4F
        .byte   $5F,$60,$0E,$0E ; B3AD  TL=$5F TR=$60 BL=$0E BR=$0E
        .byte   $4F,$13,$0E,$13 ; B3B1  TL=$4F TR=$13 BL=$0E BR=$13
        .byte   $61,$62,$0E,$0E ; B3B5  TL=$61 TR=$62 BL=$0E BR=$0E
        .byte   $2B,$3D,$04,$3E ; B3B9  TL=$2B TR=$3D BL=$04 BR=$3E
        .byte   $4F,$4F,$0E,$0E ; B3BD  TL=$4F TR=$4F BL=$0E BR=$0E
; 32×32 chunk-index grid = 1024 bytes
OvhdLvl3_MapData:
        .byte   $00,$01,$02,$03,$04,$05,$06,$06 ; B3C1
        .byte   $06,$06,$07,$06,$07,$06,$07,$06 ; B3C9
        .byte   $06,$06,$06,$06,$07,$06,$07,$06 ; B3D1
        .byte   $07,$06,$06,$08,$09,$0A,$0A,$0A ; B3D9
        .byte   $0B,$0C,$0D,$0E,$0B,$0F,$10,$10 ; B3E1
        .byte   $10,$10,$11,$10,$12,$10,$11,$10 ; B3E9
        .byte   $10,$10,$10,$10,$11,$10,$11,$10 ; B3F1
        .byte   $12,$10,$10,$13,$0B,$0A,$0A,$0A ; B3F9
        .byte   $0B,$0C,$0C,$0E,$0B,$14,$10,$15 ; B401
        .byte   $10,$15,$12,$15,$10,$15,$12,$16 ; B409
        .byte   $10,$10,$10,$15,$12,$15,$12,$15 ; B411
        .byte   $16,$10,$17,$13,$0B,$0A,$0A,$0A ; B419
        .byte   $0B,$0C,$18,$19,$1A,$1B,$1C,$1D ; B421
        .byte   $1C,$1D,$1C,$1D,$1C,$1D,$1C,$1D ; B429
        .byte   $1C,$1C,$1C,$1D,$1C,$1D,$1C,$1D ; B431
        .byte   $1D,$1C,$1C,$1E,$1F,$0A,$0A,$0A ; B439
        .byte   $0B,$0E,$20,$03,$04,$05,$06,$08 ; B441
        .byte   $04,$05,$06,$06,$06,$06,$06,$06 ; B449
        .byte   $06,$06,$06,$08,$04,$05,$06,$06 ; B451
        .byte   $08,$04,$05,$08,$09,$0A,$0A,$0A ; B459
        .byte   $21,$22,$23,$0E,$0B,$0F,$24,$25 ; B461
        .byte   $26,$0F,$10,$27,$28,$28,$29,$28 ; B469
        .byte   $29,$28,$2A,$13,$0B,$0F,$10,$10 ; B471
        .byte   $13,$0B,$2B,$2C,$0B,$0A,$0A,$0A ; B479
        .byte   $00,$01,$2D,$0E,$0B,$2E,$2F,$30 ; B481
        .byte   $31,$32,$28,$28,$29,$10,$28,$29 ; B489
        .byte   $28,$33,$29,$13,$0B,$0F,$34,$35 ; B491
        .byte   $36,$37,$38,$38,$0B,$0A,$0A,$0A ; B499
        .byte   $0B,$0C,$18,$19,$1F,$0F,$24,$25 ; B4A1
        .byte   $21,$1B,$1C,$39,$39,$39,$39,$39 ; B4A9
        .byte   $1C,$39,$3A,$1E,$1F,$0F,$13,$0B ; B4B1
        .byte   $0F,$10,$10,$3B,$1F,$0A,$0A,$0A ; B4B9
        .byte   $0B,$0E,$20,$03,$09,$2E,$2F,$13 ; B4C1
        .byte   $00,$05,$08,$04,$06,$06,$06,$06 ; B4C9
        .byte   $06,$06,$06,$06,$09,$3C,$13,$0B ; B4D1
        .byte   $3D,$35,$3E,$3F,$09,$0A,$0A,$0A ; B4D9
        .byte   $0B,$40,$41,$42,$0B,$0F,$24,$25 ; B4E1
        .byte   $0B,$43,$44,$0B,$0F,$10,$10,$10 ; B4E9
        .byte   $10,$10,$10,$13,$21,$1B,$1E,$1F ; B4F1
        .byte   $45,$21,$46,$13,$0B,$0A,$0A,$0A ; B4F9
        .byte   $0B,$47,$40,$48,$0B,$2E,$2F,$13 ; B501
        .byte   $0B,$49,$4A,$37,$0F,$10,$10,$34 ; B509
        .byte   $4B,$1C,$4C,$13,$00,$05,$06,$4D ; B511
        .byte   $45,$00,$4E,$4F,$0B,$0A,$0A,$0A ; B519
        .byte   $21,$23,$0C,$50,$1A,$1B,$51,$1E ; B521
        .byte   $1A,$1B,$1C,$1C,$1C,$1C,$1C,$1E ; B529
        .byte   $52,$05,$4D,$45,$21,$1B,$1C,$1C ; B531
        .byte   $1E,$1F,$0F,$3B,$1F,$0A,$0A,$0A ; B539
        .byte   $00,$53,$0E,$54,$04,$05,$55,$08 ; B541
        .byte   $04,$56,$04,$05,$06,$06,$06,$08 ; B549
        .byte   $09,$0F,$10,$13,$00,$05,$06,$06 ; B551
        .byte   $06,$4D,$4F,$3F,$09,$0A,$0A,$0A ; B559
        .byte   $0B,$0C,$0C,$42,$0B,$0F,$57,$13 ; B561
        .byte   $0B,$45,$0B,$10,$10,$10,$10,$13 ; B569
        .byte   $21,$46,$10,$3B,$1F,$0F,$10,$10 ; B571
        .byte   $10,$10,$10,$13,$0B,$0A,$0A,$0A ; B579
        .byte   $0B,$58,$59,$5A,$0B,$0F,$5B,$13 ; B581
        .byte   $0B,$45,$0B,$10,$10,$34,$35,$36 ; B589
        .byte   $00,$4E,$5C,$3F,$09,$0F,$10,$10 ; B591
        .byte   $34,$35,$5D,$13,$0B,$0A,$0A,$0A ; B599
        .byte   $21,$22,$23,$0E,$21,$1B,$1C,$1E ; B5A1
        .byte   $1F,$45,$0B,$10,$5E,$1E,$1A,$5F ; B5A9
        .byte   $1F,$0F,$10,$13,$21,$46,$10,$5E ; B5B1
        .byte   $1E,$1A,$1B,$1E,$1F,$0A,$0A,$0A ; B5B9
        .byte   $00,$01,$2D,$0E,$00,$06,$06,$08 ; B5C1
        .byte   $09,$45,$0B,$13,$00,$05,$06,$08 ; B5C9
        .byte   $09,$0F,$10,$13,$00,$4E,$45,$00 ; B5D1
        .byte   $05,$06,$06,$08,$09,$0A,$0A,$0A ; B5D9
        .byte   $0B,$0C,$41,$0E,$0B,$0C,$0C,$0E ; B5E1
        .byte   $0B,$5C,$37,$13,$0B,$0F,$10,$13 ; B5E9
        .byte   $0B,$0F,$5E,$1E,$1F,$0F,$13,$0B ; B5F1
        .byte   $0F,$10,$10,$13,$0B,$0A,$0A,$0A ; B5F9
        .byte   $0B,$60,$61,$62,$0B,$0C,$0C,$0E ; B601
        .byte   $0B,$0F,$10,$13,$0B,$0F,$10,$13 ; B609
        .byte   $0B,$5C,$63,$08,$09,$0F,$64,$37 ; B611
        .byte   $0F,$10,$10,$13,$0B,$0A,$0A,$0A ; B619
        .byte   $0B,$0C,$18,$19,$1A,$22,$65,$19 ; B621
        .byte   $1A,$1B,$51,$1E,$1A,$1B,$51,$1E ; B629
        .byte   $1A,$1B,$51,$1E,$1A,$1B,$1C,$1C ; B631
        .byte   $1C,$4C,$10,$3B,$1F,$0A,$0A,$0A ; B639
        .byte   $0B,$0E,$20,$03,$04,$01,$66,$03 ; B641
        .byte   $04,$05,$55,$08,$04,$05,$55,$08 ; B649
        .byte   $04,$05,$55,$08,$04,$05,$06,$06 ; B651
        .byte   $06,$4D,$5C,$3F,$09,$0A,$0A,$0A ; B659
        .byte   $0B,$0C,$0C,$0E,$0B,$48,$67,$0E ; B661
        .byte   $0B,$0F,$57,$13,$0B,$0F,$57,$13 ; B669
        .byte   $0B,$0F,$57,$13,$0B,$0F,$10,$10 ; B671
        .byte   $10,$10,$10,$13,$0B,$0A,$0A,$0A ; B679
        .byte   $0B,$0C,$0C,$0E,$0B,$68,$68,$69 ; B681
        .byte   $0B,$0F,$10,$64,$37,$0F,$10,$64 ; B689
        .byte   $37,$0F,$10,$13,$0B,$0F,$5B,$34 ; B691
        .byte   $35,$5D,$10,$13,$0B,$0A,$0A,$0A ; B699
        .byte   $21,$22,$23,$0E,$0B,$6A,$6A,$69 ; B6A1
        .byte   $21,$1B,$51,$1C,$1C,$1C,$1C,$1C ; B6A9
        .byte   $1C,$1C,$1C,$1E,$1A,$1B,$1C,$1E ; B6B1
        .byte   $1A,$1B,$1C,$1E,$1A,$0A,$0A,$0A ; B6B9
        .byte   $00,$01,$2D,$0E,$0B,$6B,$6B,$6B ; B6C1
        .byte   $00,$05,$55,$08,$04,$05,$06,$08 ; B6C9
        .byte   $04,$06,$06,$06,$06,$06,$06,$06 ; B6D1
        .byte   $06,$06,$06,$06,$06,$0A,$0A,$0A ; B6D9
        .byte   $0B,$0C,$18,$19,$1F,$6A,$6A,$69 ; B6E1
        .byte   $0B,$0F,$57,$13,$0B,$0F,$10,$13 ; B6E9
        .byte   $0B,$0A,$0A,$0A,$0A,$0A,$0A,$0A ; B6F1
        .byte   $0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A ; B6F9
        .byte   $0B,$0E,$20,$03,$09,$6B,$6B,$6B ; B701
        .byte   $0B,$0F,$10,$64,$37,$0F,$10,$13 ; B709
        .byte   $0B,$0A,$0A,$0A,$0A,$0A,$0A,$0A ; B711
        .byte   $0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A ; B719
        .byte   $21,$22,$65,$19,$1A,$22,$65,$19 ; B721
        .byte   $1A,$1B,$1C,$1C,$1C,$4C,$10,$3B ; B729
        .byte   $1F,$0A,$0A,$0A,$0A,$0A,$0A,$0A ; B731
        .byte   $0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A ; B739
        .byte   $00,$01,$66,$03,$04,$01,$66,$03 ; B741
        .byte   $04,$06,$06,$06,$06,$4D,$5C,$3F ; B749
        .byte   $09,$0A,$0A,$0A,$0A,$0A,$0A,$0A ; B751
        .byte   $0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A ; B759
        .byte   $0B,$6C,$6D,$5A,$0B,$6C,$6D,$6E ; B761
        .byte   $0B,$0F,$10,$10,$10,$10,$10,$13 ; B769
        .byte   $0B,$0A,$0A,$0A,$0A,$0A,$0A,$0A ; B771
        .byte   $0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A ; B779
        .byte   $0B,$60,$6F,$6E,$70,$60,$71,$6E ; B781
        .byte   $0B,$14,$10,$34,$35,$5D,$10,$13 ; B789
        .byte   $0B,$0A,$0A,$0A,$0A,$0A,$0A,$0A ; B791
        .byte   $0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A ; B799
        .byte   $21,$22,$22,$22,$22,$22,$22,$19 ; B7A1
        .byte   $1A,$1B,$1C,$1E,$1A,$1B,$1C,$1E ; B7A9
        .byte   $1A,$0A,$0A,$0A,$0A,$0A,$0A,$0A ; B7B1
        .byte   $0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A ; B7B9
; 16 bytes — 8 B vertical + 8 B horizontal scroll-boundary flags
OvhdLvl3_ScrollData:
        .byte   $FF,$7E,$38,$40,$40,$78,$3E,$C0 ; B7C1
        .byte   $C1,$E5,$E5,$E5,$E5,$E5,$E8,$A8 ; B7C9
; Tile attribute table – bits: 0-1=palette 2=walk-behind 3=Tunnel(→Tank) 4=damage 7=solid 
; 3+7=Doorway 6+7=destroyable
OvhdLvl3_TileAttrTable:
        .byte   $00,$00,$00,$00,$00,$00,$00,$80 ; B7D1
        .byte   $80,$80,$80,$83,$83,$83,$83,$04 ; B7D9
        .byte   $80,$80,$80,$80,$80,$80,$80,$80 ; B7E1
        .byte   $80,$80,$04,$04,$04,$04,$04,$04 ; B7E9
        .byte   $84,$84,$84,$84,$84,$84,$84,$80 ; B7F1
        .byte   $04,$04,$04,$04,$07,$07,$07,$07 ; B7F9
        .byte   $87,$87,$87,$87,$87,$87,$87,$87 ; B801
        .byte   $83,$83,$8B,$8B,$00,$00,$00,$00 ; B809
        .byte   $00,$00,$C1,$C2,$12,$13,$84,$84 ; B811
        .byte   $84,$84,$8C,$8C,$8C,$8C,$8F,$8F ; B819
        .byte   $02,$02,$02,$02,$08,$02,$02,$02 ; B821
        .byte   $02,$00                         ; B829
L_B82B: .byte   $00,$EC,$0C,$08,$04,$00,$10,$1C ; B82B
        .byte   $0A,$03,$00,$ED,$0C,$08,$04,$00 ; B833
        .byte   $10,$1C,$0C,$04,$00,$ED,$0C,$08 ; B83B
        .byte   $04,$00,$10,$5C,$0C,$04,$00,$EC ; B843
        .byte   $0C,$30,$04,$00,$10,$1C,$32,$04 ; B84B
        .byte   $00,$ED,$0C,$30,$04,$00,$10,$1C ; B853
        .byte   $34,$04,$00,$ED,$0C,$30,$04,$00 ; B85B
        .byte   $10,$1C,$36,$04,$00,$EC,$0C,$00 ; B863
        .byte   $03,$00,$10,$1C,$02,$04,$00,$ED ; B86B
        .byte   $0C,$00,$03,$00,$10,$1C,$04,$04 ; B873
        .byte   $00,$ED,$0C,$00,$03,$00,$10,$1C ; B87B
        .byte   $06,$04,$04,$08,$04,$8F,$B8,$F0 ; B883
        .byte   $10,$14,$8F,$B8,$00,$00,$20,$20 ; B88B
        .byte   $08,$00,$20,$20,$08,$00,$30,$20 ; B893
        .byte   $00,$FB,$11,$5A,$00,$00,$55,$A8 ; B89B
        .byte   $B8,$00,$FB,$91,$5A,$00,$FB,$1D ; B8A3
        .byte   $3A,$02,$FC,$FB,$1D,$38,$02,$00 ; B8AB
        .byte   $00,$55,$BC,$B8,$FC,$F3,$9D,$38 ; B8B3
        .byte   $02,$00,$F7,$11,$58,$00,$EC,$0D ; B8BB
        .byte   $A5,$04,$00,$10,$1D,$A7,$04,$00 ; B8C3
        .byte   $ED,$0D,$A5,$04,$00,$10,$1D,$A9 ; B8CB
        .byte   $04,$00,$ED,$0D,$A5,$04,$00,$10 ; B8D3
        .byte   $1D,$AB,$04,$00,$EC,$0D,$DD,$04 ; B8DB
        .byte   $00,$10,$1D,$DF,$04,$00,$ED,$0D ; B8E3
        .byte   $DD,$04,$00,$10,$1D,$AD,$04,$00 ; B8EB
        .byte   $ED,$0D,$DD,$04,$00,$10,$1D,$AF ; B8F3
        .byte   $04,$00,$EC,$0D,$D5,$04,$00,$10 ; B8FB
        .byte   $1D,$D7,$04,$00,$ED,$0D,$D5,$04 ; B903
        .byte   $00,$10,$1D,$D9,$04,$00,$ED,$0D ; B90B
        .byte   $D5,$04,$00,$10,$1D,$DB,$04,$00 ; B913
        .byte   $EC,$0C,$A0,$04,$00,$10,$1C,$A2 ; B91B
        .byte   $04,$00,$EC,$0C,$A4,$04,$00,$10 ; B923
        .byte   $1C,$A6,$04,$00,$EC,$0C,$A8,$04 ; B92B
        .byte   $00,$10,$1C,$AA,$04,$00,$EC,$0C ; B933
        .byte   $AC,$04,$00,$10,$1C,$AE,$04,$00 ; B93B
        .byte   $FC,$1C,$DE,$04,$00,$00,$14,$67 ; B943
        .byte   $B8,$00,$00,$14,$49,$B8,$00,$00 ; B94B
        .byte   $14,$2B,$B8,$00,$00,$54,$49,$B8 ; B953
        .byte   $00,$EC,$0C,$AD,$04,$00,$10,$1C ; B95B
        .byte   $AF,$04,$00,$EC,$0C,$DD,$04,$00 ; B963
        .byte   $10,$1C,$DF,$04,$00,$FC,$1C,$E3 ; B96B
        .byte   $02,$00,$FC,$1C,$C3,$02,$00,$FC ; B973
        .byte   $1C,$A3,$02,$00,$FC,$1C,$A5,$02 ; B97B
        .byte   $00,$FC,$1C,$A7,$02,$00,$FC,$9C ; B983
        .byte   $A7,$02,$00,$FC,$9C,$A5,$02,$F8 ; B98B
        .byte   $EC,$00,$E9,$08,$00,$00,$D9,$08 ; B993
        .byte   $00,$40,$E9,$F8,$10,$1C,$EB,$03 ; B99B
        .byte   $00,$EC,$0C,$E9,$03,$00,$10,$1C ; B9A3
        .byte   $EB,$03,$F8,$EC,$00,$E9,$08,$00 ; B9AB
        .byte   $00,$D9,$08,$00,$40,$E9,$F8,$10 ; B9B3
        .byte   $1C,$CB,$03,$00,$EC,$0C,$E9,$03 ; B9BB
        .byte   $00,$10,$1C,$CB,$03,$00,$F4,$0C ; B9C3
        .byte   $A9,$03,$00,$10,$1C,$AB,$03,$00 ; B9CB
        .byte   $F4,$0C,$C9,$03,$00,$10,$1C,$CB ; B9D3
        .byte   $03,$00,$F4,$0C,$E9,$03,$00,$10 ; B9DB
        .byte   $1C,$EB,$03,$00,$EC,$0C,$E3,$02 ; B9E3
        .byte   $00,$10,$1C,$E7,$02,$00,$EC,$0C ; B9EB
        .byte   $E5,$02,$00,$10,$1C,$E7,$02,$00 ; B9F3
        .byte   $EC,$0C,$AD,$04,$00,$10,$1C,$AF ; B9FB
        .byte   $04,$00,$EC,$0C,$DD,$04,$00,$10 ; BA03
        .byte   $1C,$DF,$04,$00,$EC,$0C,$A9,$03 ; BA0B
        .byte   $00,$10,$1C,$AB,$03,$F8,$EC,$00 ; BA13
        .byte   $A9,$08,$00,$00,$C9,$08,$00,$40 ; BA1B
        .byte   $A9,$F8,$10,$1C,$AB,$03,$00,$EC ; BA23
        .byte   $0C,$C5,$03,$00,$10,$1C,$C7,$03 ; BA2B
        .byte   $F8,$EC,$00,$C5,$08,$00,$00,$F5 ; BA33
        .byte   $08,$00,$40,$C5,$F8,$10,$1C,$C7 ; BA3B
        .byte   $03,$F8,$EC,$00,$E5,$08,$00,$00 ; BA43
        .byte   $D5,$08,$00,$40,$E5,$F8,$10,$1C ; BA4B
        .byte   $E7,$03,$00,$EC,$0C,$E5,$03,$00 ; BA53
        .byte   $10,$1C,$E7,$03,$00,$FC,$1C,$A7 ; BA5B
        .byte   $02,$00,$FC,$1C,$A5,$02,$00,$FC ; BA63
        .byte   $1C,$A3,$02,$00,$FC,$1C,$E5,$02 ; BA6B
        .byte   $00,$FC,$1C,$E7,$02,$00,$F0,$0C ; BA73
        .byte   $DD,$04,$00,$10,$1C,$DF,$04,$F8 ; BA7B
        .byte   $F0,$00,$DD,$0C,$00,$0C,$E9,$02 ; BA83
        .byte   $F4,$10,$00,$DF,$0C,$00,$1C,$EB ; BA8B
        .byte   $02,$00,$FC,$1C,$C5,$02,$00,$FC ; BA93
        .byte   $1C,$C7,$02,$00,$EC,$0C,$A9,$04 ; BA9B
        .byte   $00,$10,$1C,$AB,$04,$00,$EC,$0C ; BAA3
        .byte   $A9,$04,$00,$10,$1C,$AD,$04,$00 ; BAAB
        .byte   $EC,$0C,$A9,$04,$00,$10,$1C,$AF ; BAB3
        .byte   $04,$00,$FC,$1C,$A3,$02,$FC,$FC ; BABB
        .byte   $00,$A3,$08,$00,$10,$C3,$00,$F8 ; BAC3
        .byte   $0C,$05,$02,$F4,$00,$00,$21,$18 ; BACB
        .byte   $00,$00,$51,$E8,$10,$00,$23,$0C ; BAD3
        .byte   $00,$0C,$07,$02,$0C,$00,$10,$53 ; BADB
        .byte   $00,$F8,$0C,$25,$02,$F4,$00,$00 ; BAE3
        .byte   $21,$18,$00,$00,$51,$E8,$10,$00 ; BAEB
        .byte   $23,$0C,$00,$0C,$27,$02,$0C,$00 ; BAF3
        .byte   $10,$53,$00,$F8,$0C,$45,$02,$F4 ; BAFB
        .byte   $00,$00,$21,$18,$00,$00,$51,$E8 ; BB03
        .byte   $10,$00,$23,$0C,$00,$0C,$47,$02 ; BB0B
        .byte   $0C,$00,$10,$53,$00,$F8,$0C,$31 ; BB13
        .byte   $02,$F4,$00,$00,$21,$18,$00,$00 ; BB1B
        .byte   $51,$E8,$10,$00,$23,$0C,$00,$0C ; BB23
        .byte   $33,$02,$0C,$00,$10,$53,$08,$F8 ; BB2B
        .byte   $0C,$8C,$02,$00,$10,$8C,$8C,$02 ; BB33
        .byte   $F0,$F0,$4C,$8C,$02,$00,$10,$DC ; BB3B
        .byte   $8C,$02,$08,$F8,$0C,$8E,$02,$00 ; BB43
        .byte   $10,$8C,$8E,$02,$F0,$F0,$4C,$8E ; BB4B
        .byte   $02,$00,$10,$DC,$8E,$02,$F8,$E8 ; BB53
        .byte   $04,$63,$BB,$10,$D0,$54,$63,$BB ; BB5B
        .byte   $00,$00,$0C,$81,$02,$00,$10,$0C ; BB63
        .byte   $83,$02,$00,$10,$0C,$85,$02,$00 ; BB6B
        .byte   $10,$1C,$87,$02,$F8,$E8,$04,$81 ; BB73
        .byte   $BB,$0C,$D0,$54,$81,$BB,$00,$00 ; BB7B
        .byte   $0C,$81,$02,$00,$10,$0C,$83,$02 ; BB83
        .byte   $00,$10,$0C,$85,$02,$FC,$10,$00 ; BB8B
        .byte   $87,$08,$00,$10,$A3,$F8,$E8,$04 ; BB93
        .byte   $A2,$BB,$0C,$D0,$54,$A2,$BB,$00 ; BB9B
        .byte   $00,$0C,$81,$02,$00,$10,$0C,$83 ; BBA3
        .byte   $02,$00,$10,$0C,$85,$02,$FC,$10 ; BBAB
        .byte   $00,$87,$08,$00,$10,$A1,$00,$F8 ; BBB3
        .byte   $0C,$89,$02,$00,$10,$1C,$8B,$02 ; BBBB
        .byte   $00,$F8,$0C,$A5,$01,$00,$10,$1C ; BBC3
        .byte   $A7,$01,$00,$F8,$0C,$A9,$01,$00 ; BBCB
        .byte   $10,$1C,$AB,$01,$00,$00,$1C,$AD ; BBD3
        .byte   $01,$00,$00,$1C,$8D,$02,$00,$00 ; BBDB
        .byte   $1C,$AD,$01,$00,$00,$1C,$AF,$02 ; BBE3
        .byte   $00,$00,$04,$F1,$BC,$18,$F0,$0C ; BBEB
        .byte   $4D,$02,$00,$F0,$0C,$2F,$02,$00 ; BBF3
        .byte   $F0,$1C,$29,$02,$00,$00,$40,$0D ; BBFB
        .byte   $00,$F0,$00,$25,$00,$F0,$00,$23 ; BC03
        .byte   $0C,$00,$0C,$27,$02,$00,$10,$0C ; BC0B
        .byte   $29,$02,$E8,$F8,$04,$44,$BE,$FC ; BC13
        .byte   $10,$40,$5B,$08,$00,$40,$4B,$FC ; BC1B
        .byte   $10,$4C,$4D,$02,$18,$F0,$0C,$0F ; BC23
        .byte   $02,$00,$18,$54,$84,$BE,$00,$00 ; BC2B
        .byte   $04,$04,$BD,$F4,$10,$00,$67,$08 ; BC33
        .byte   $00,$10,$77,$00,$00,$04,$2E,$BD ; BC3B
        .byte   $F4,$10,$00,$67,$08,$00,$10,$77 ; BC43
        .byte   $00,$00,$04,$04,$BD,$F8,$10,$1C ; BC4B
        .byte   $97,$02,$00,$00,$04,$2E,$BD,$F8 ; BC53
        .byte   $10,$1C,$97,$02,$00,$00,$04,$5B ; BC5B
        .byte   $BD,$FC,$F0,$0C,$35,$02,$00,$F0 ; BC63
        .byte   $1C,$33,$02,$00,$00,$04,$5B,$BD ; BC6B
        .byte   $FC,$E8,$14,$70,$BE,$00,$00,$04 ; BC73
        .byte   $F1,$BC,$18,$D8,$04,$58,$BE,$00 ; BC7B
        .byte   $10,$1C,$4D,$02,$00,$00,$04,$83 ; BC83
        .byte   $BD,$E4,$E0,$40,$5B,$08,$F0,$00 ; BC8B
        .byte   $9F,$FC,$F0,$14,$8E,$BE,$00,$00 ; BC93
        .byte   $04,$83,$BD,$E4,$D0,$00,$3B,$08 ; BC9B
        .byte   $00,$00,$9F,$FC,$F0,$14,$7A,$BE ; BCA3
        .byte   $00,$00,$04,$83,$BD,$E8,$D0,$14 ; BCAB
        .byte   $62,$BE,$00,$00,$04,$B0,$BD,$00 ; BCB3
        .byte   $00,$14,$CF,$BD,$00,$00,$04,$DC ; BCBB
        .byte   $BD,$00,$00,$14,$CF,$BD,$00,$00 ; BCC3
        .byte   $04,$FF,$BD,$00,$00,$14,$CF,$BD ; BCCB
        .byte   $00,$00,$04,$B0,$BD,$00,$00,$14 ; BCD3
        .byte   $16,$BE,$00,$00,$04,$DC,$BD,$00 ; BCDB
        .byte   $00,$14,$16,$BE,$00,$00,$04,$FF ; BCE3
        .byte   $BD,$00,$00,$14,$16,$BE,$00,$00 ; BCEB
        .byte   $00,$0D,$00,$F0,$04,$20,$BE,$00 ; BCF3
        .byte   $10,$0C,$6B,$02,$00,$18,$14,$84 ; BCFB
        .byte   $BE,$00,$00,$00,$69,$00,$E0,$00 ; BD03
        .byte   $23,$F4,$08,$04,$44,$BE,$00,$10 ; BD0B
        .byte   $0C,$6B,$02,$00,$18,$04,$84,$BE ; BD13
        .byte   $18,$F0,$0C,$4D,$02,$00,$F0,$0C ; BD1B
        .byte   $79,$02,$04,$F0,$00,$87,$FC,$F0 ; BD23
        .byte   $1C,$27,$02,$00,$00,$00,$69,$00 ; BD2B
        .byte   $E0,$00,$23,$F4,$08,$04,$44,$BE ; BD33
        .byte   $FC,$10,$40,$5B,$08,$00,$40,$4B ; BD3B
        .byte   $FC,$10,$4C,$4D,$02,$18,$08,$44 ; BD43
        .byte   $84,$BE,$00,$E0,$0C,$99,$02,$04 ; BD4B
        .byte   $F0,$00,$87,$FC,$F0,$1C,$27,$02 ; BD53
        .byte   $00,$00,$00,$0D,$00,$F0,$00,$25 ; BD5B
        .byte   $00,$F0,$00,$23,$F4,$00,$0C,$4F ; BD63
        .byte   $02,$00,$18,$04,$4E,$BE,$00,$18 ; BD6B
        .byte   $04,$84,$BE,$18,$F0,$0C,$4D,$02 ; BD73
        .byte   $FC,$F0,$00,$4B,$08,$00,$10,$5B ; BD7B
        .byte   $00,$00,$40,$0D,$00,$F0,$00,$25 ; BD83
        .byte   $00,$F0,$00,$23,$0C,$00,$0C,$33 ; BD8B
        .byte   $02,$00,$10,$0C,$35,$02,$00,$10 ; BD93
        .byte   $4C,$6B,$02,$E4,$00,$40,$5B,$08 ; BD9B
        .byte   $00,$40,$4B,$FC,$10,$4C,$4D,$02 ; BDA3
        .byte   $18,$08,$54,$84,$BE,$F4,$E0,$04 ; BDAB
        .byte   $8E,$BE,$08,$00,$00,$9F,$F8,$10 ; BDB3
        .byte   $40,$5B,$08,$00,$40,$4B,$FC,$10 ; BDBB
        .byte   $4C,$4D,$02,$0C,$D0,$00,$23,$0C ; BDC3
        .byte   $00,$1C,$33,$02,$00,$00,$04,$32 ; BDCB
        .byte   $BE,$F0,$00,$00,$67,$08,$00,$10 ; BDD3
        .byte   $77,$F4,$E0,$04,$7A,$BE,$04,$20 ; BDDB
        .byte   $00,$3B,$08,$00,$00,$9F,$F8,$10 ; BDE3
        .byte   $40,$5B,$08,$00,$40,$4B,$FC,$10 ; BDEB
        .byte   $4C,$4D,$02,$0C,$D0,$00,$23,$0C ; BDF3
        .byte   $00,$1C,$33,$02,$F4,$F0,$04,$62 ; BDFB
        .byte   $BE,$08,$00,$40,$4B,$FC,$10,$4C ; BE03
        .byte   $4D,$02,$0C,$D0,$00,$23,$0C,$00 ; BE0B
        .byte   $1C,$33,$02,$00,$00,$04,$32,$BE ; BE13
        .byte   $F4,$00,$1C,$97,$02,$00,$00,$00 ; BE1B
        .byte   $25,$00,$F0,$00,$23,$0C,$00,$0C ; BE23
        .byte   $27,$02,$E8,$08,$14,$44,$BE,$00 ; BE2B
        .byte   $38,$44,$84,$BE,$00,$E0,$0C,$99 ; BE33
        .byte   $02,$F4,$00,$00,$69,$10,$F0,$10 ; BE3B
        .byte   $AB,$00,$F8,$0C,$03,$02,$00,$10 ; BE43
        .byte   $1C,$05,$02,$00,$F8,$0C,$53,$02 ; BE4B
        .byte   $00,$10,$1C,$55,$02,$00,$F8,$0C ; BE53
        .byte   $73,$02,$00,$10,$1C,$75,$02,$00 ; BE5B
        .byte   $F0,$0C,$07,$02,$00,$10,$0C,$09 ; BE63
        .byte   $02,$FC,$10,$10,$0B,$00,$F8,$0C ; BE6B
        .byte   $47,$02,$00,$10,$1C,$49,$02,$FC ; BE73
        .byte   $00,$0C,$1D,$04,$FC,$F0,$1C,$1B ; BE7B
        .byte   $02,$00,$F8,$0C,$6D,$02,$00,$10 ; BE83
        .byte   $1C,$6F,$02,$00,$F0,$0C,$8B,$02 ; BE8B
        .byte   $00,$10,$0C,$8D,$02,$FC,$10,$10 ; BE93
        .byte   $8F,$04,$00,$1C,$31,$04         ; BE9B
; Overhead-section metasprite pointer table (8×16 sprites); 2-byte LE def pointers indexed by
; sprite-id×2, walked by MetaSprite_RenderNoBank ($F029) after MetaSprite_Render ($F011) maps bank
; 1 (via $EA3A index $1A). Defs sit below the table. See docs/entities/metasprite-system.md
Metasprite_Table_Overhead:
        .byte   $2B,$B8,$35,$B8,$3F,$B8,$49,$B8 ; BEA1
        .byte   $53,$B8,$5D,$B8,$67,$B8,$71,$B8 ; BEA9
        .byte   $7B,$B8,$85,$B8,$8F,$B8,$9B,$B8 ; BEB1
        .byte   $9F,$B8,$A4,$B8,$A8,$B8,$AD,$B8 ; BEB9
        .byte   $B2,$B8,$B7,$B8,$BC,$B8,$C0,$B8 ; BEC1
        .byte   $CA,$B8,$D4,$B8,$DE,$B8,$E8,$B8 ; BEC9
        .byte   $F2,$B8,$FC,$B8,$06,$B9,$10,$B9 ; BED1
        .byte   $1A,$B9,$24,$B9,$2E,$B9,$38,$B9 ; BED9
        .byte   $42,$B9,$47,$B9,$4C,$B9,$51,$B9 ; BEE1
        .byte   $56,$B9,$5B,$B9,$65,$B9,$6F,$B9 ; BEE9
        .byte   $74,$B9,$79,$B9,$7E,$B9,$83,$B9 ; BEF1
        .byte   $88,$B9,$8D,$B9,$92,$B9,$A3,$B9 ; BEF9
        .byte   $AD,$B9,$BE,$B9,$C8,$B9,$D2,$B9 ; BF01
        .byte   $DC,$B9,$E6,$B9,$F0,$B9,$FA,$B9 ; BF09
        .byte   $04,$BA,$0E,$BA,$18,$BA,$29,$BA ; BF11
        .byte   $33,$BA,$44,$BA,$55,$BA,$5F,$BA ; BF19
        .byte   $64,$BA,$69,$BA,$6E,$BA,$73,$BA ; BF21
        .byte   $78,$BA,$82,$BA,$94,$BA,$99,$BA ; BF29
        .byte   $9E,$BA,$A8,$BA,$B2,$BA,$BC,$BA ; BF31
        .byte   $C1,$BA,$C9,$BA,$E3,$BA,$FD,$BA ; BF39
        .byte   $17,$BB,$31,$BB,$45,$BB,$59,$BB ; BF41
        .byte   $59,$BB,$77,$BB,$98,$BB,$B9,$BB ; BF49
        .byte   $C3,$BB,$CD,$BB,$D7,$BB,$DC,$BB ; BF51
        .byte   $E1,$BB,$E6,$BB,$EB,$BB,$FF,$BB ; BF59
        .byte   $31,$BC,$3E,$BC,$4B,$BC,$55,$BC ; BF61
        .byte   $5F,$BC,$6E,$BC,$78,$BC,$87,$BC ; BF69
        .byte   $99,$BC,$AB,$BC,$B5,$BC,$BF,$BC ; BF71
        .byte   $C9,$BC,$D3,$BC,$DD,$BC,$E7,$BC ; BF79
L_BF81: .byte   $47,$4C,$63,$C0,$60,$01,$02,$04 ; BF81
        .byte   $08,$10,$20,$40,$80             ; BF89
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

; End of "BANK01" segment
; ----------------------------------------------------------------------------
.code

