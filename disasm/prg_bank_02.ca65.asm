; da65 V2.18 - Ubuntu 2.19-1
; Input file: public/disasm/prg_bank_02.bin
; Page:       1


        .setcpu "6502"

        .include "ram.inc"

; ----------------------------------------------------------------------------
; ----------------------------------------------------------------------------

.segment        "BANK02": absolute

; (alpha: not fully human-verified / pending re-verification)
OvhdLvl5_BasePointers:
        .addr   OvhdLvl5_MapPointers            ; 8000
        .addr   OvhdLvl5_ScrollData             ; 8002
; (alpha: not fully human-verified / pending re-verification)
OvhdLvl2_BasePointers:
        .addr   OvhdLvl2_MapPointers            ; 8004
        .addr   OvhdLvl2_ScrollData             ; 8006
; (alpha: not fully human-verified / pending re-verification)
OvhdLvl6_BasePointers:
        .addr   OvhdLvl6_MapPointers            ; 8008
        .addr   OvhdLvl6_ScrollData             ; 800A
; (alpha: not fully human-verified / pending re-verification)
OvhdLvl8_BasePointers:
        .addr   OvhdLvl8_MapPointers            ; 800C
        .addr   OvhdLvl8_ScrollData             ; 800E
; (alpha: not fully human-verified / pending re-verification)
OvhdLvl4_BasePointers:
        .addr   OvhdLvl4_MapPointers            ; 8010
        .addr   OvhdLvl4_ScrollData             ; 8012
; (alpha: not fully human-verified / pending re-verification)
OvhdLvl7_BasePointers:
        .addr   OvhdLvl7_MapPointers            ; 8014
        .addr   OvhdLvl7_ScrollData             ; 8016
L_8018: .addr   L_801A                          ; 8018
L_801A: .addr   L_BA62                          ; 801A
        .addr   L_BB62                          ; 801C
        .addr   L_BC62                          ; 801E
        .addr   L_BD62                          ; 8020
OvhdLvl5_MapPointers:
        .addr   OvhdLvl5_BgPalette              ; 8022
        .addr   OvhdLvl5_TileAttrTable          ; 8024
        .addr   OvhdLvl5_TileDescTable          ; 8026
        .addr   OvhdLvl5_StructureDescTable     ; 8028
        .addr   OvhdLvl5_ChunkDescTable         ; 802A
        .addr   OvhdLvl5_MapData                ; 802C
; ----------------------------------------------------------------------------
; 4 BgPalette records — the level's 4 background sub-palettes × 4 NES colour indices.
OvhdLvl5_BgPalette:
        .byte   $0F,$0A,$1A,$2A ; 802E  Backdrop=$0F Colour1=$0A Colour2=$1A Colour3=$2A
        .byte   $0F,$02,$12,$21 ; 8032  Backdrop=$0F Colour1=$02 Colour2=$12 Colour3=$21
        .byte   $0F,$0A,$11,$2C ; 8036  Backdrop=$0F Colour1=$0A Colour2=$11 Colour3=$2C
        .byte   $0F,$16,$26,$36 ; 803A  Backdrop=$0F Colour1=$16 Colour2=$26 Colour3=$36
; 112 TileDesc records — the level's Tile definitions. Index space shared with
; OvhdLvl5_TileAttrTable, which has the matching 112 entries.
OvhdLvl5_TileDescTable:
        .byte   $00,$00,$00,$00 ; 803E  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $82,$82,$82,$82 ; 8042  TL=$82 TR=$82 BL=$82 BR=$82
        .byte   $92,$82,$92,$82 ; 8046  TL=$92 TR=$82 BL=$92 BR=$82
        .byte   $82,$20,$82,$21 ; 804A  TL=$82 TR=$20 BL=$82 BR=$21
        .byte   $82,$10,$82,$11 ; 804E  TL=$82 TR=$10 BL=$82 BR=$11
        .byte   $82,$10,$82,$38 ; 8052  TL=$82 TR=$10 BL=$82 BR=$38
        .byte   $0D,$1D,$82,$11 ; 8056  TL=$0D TR=$1D BL=$82 BR=$11
        .byte   $2D,$3D,$92,$82 ; 805A  TL=$2D TR=$3D BL=$92 BR=$82
        .byte   $00,$00,$00,$1E ; 805E  TL=$00 TR=$00 BL=$00 BR=$1E
        .byte   $00,$00,$29,$39 ; 8062  TL=$00 TR=$00 BL=$29 BR=$39
        .byte   $00,$00,$09,$19 ; 8066  TL=$00 TR=$00 BL=$09 BR=$19
        .byte   $00,$00,$0E,$00 ; 806A  TL=$00 TR=$00 BL=$0E BR=$00
        .byte   $00,$1F,$00,$04 ; 806E  TL=$00 TR=$1F BL=$00 BR=$04
        .byte   $2A,$3A,$2B,$3B ; 8072  TL=$2A TR=$3A BL=$2B BR=$3B
        .byte   $0A,$1A,$0B,$1B ; 8076  TL=$0A TR=$1A BL=$0B BR=$1B
        .byte   $0F,$00,$04,$00 ; 807A  TL=$0F TR=$00 BL=$04 BR=$00
        .byte   $2C,$3C,$2B,$3B ; 807E  TL=$2C TR=$3C BL=$2B BR=$3B
        .byte   $0C,$1C,$0B,$1B ; 8082  TL=$0C TR=$1C BL=$0B BR=$1B
        .byte   $02,$14,$04,$00 ; 8086  TL=$02 TR=$14 BL=$04 BR=$00
        .byte   $00,$04,$14,$13 ; 808A  TL=$00 TR=$04 BL=$14 BR=$13
        .byte   $04,$00,$03,$14 ; 808E  TL=$04 TR=$00 BL=$03 BR=$14
        .byte   $14,$12,$00,$04 ; 8092  TL=$14 TR=$12 BL=$00 BR=$04
        .byte   $3E,$14,$00,$00 ; 8096  TL=$3E TR=$14 BL=$00 BR=$00
        .byte   $14,$3F,$00,$00 ; 809A  TL=$14 TR=$3F BL=$00 BR=$00
        .byte   $00,$00,$3E,$14 ; 809E  TL=$00 TR=$00 BL=$3E BR=$14
        .byte   $00,$00,$14,$3F ; 80A2  TL=$00 TR=$00 BL=$14 BR=$3F
        .byte   $2E,$00,$04,$00 ; 80A6  TL=$2E TR=$00 BL=$04 BR=$00
        .byte   $04,$00,$2F,$00 ; 80AA  TL=$04 TR=$00 BL=$2F BR=$00
        .byte   $00,$2E,$00,$04 ; 80AE  TL=$00 TR=$2E BL=$00 BR=$04
        .byte   $00,$04,$00,$2F ; 80B2  TL=$00 TR=$04 BL=$00 BR=$2F
        .byte   $04,$00,$04,$00 ; 80B6  TL=$04 TR=$00 BL=$04 BR=$00
        .byte   $00,$04,$00,$04 ; 80BA  TL=$00 TR=$04 BL=$00 BR=$04
        .byte   $14,$14,$00,$00 ; 80BE  TL=$14 TR=$14 BL=$00 BR=$00
        .byte   $00,$00,$14,$14 ; 80C2  TL=$00 TR=$00 BL=$14 BR=$14
        .byte   $00,$03,$00,$00 ; 80C6  TL=$00 TR=$03 BL=$00 BR=$00
        .byte   $13,$00,$00,$00 ; 80CA  TL=$13 TR=$00 BL=$00 BR=$00
        .byte   $00,$00,$00,$02 ; 80CE  TL=$00 TR=$00 BL=$00 BR=$02
        .byte   $00,$00,$12,$00 ; 80D2  TL=$00 TR=$00 BL=$12 BR=$00
        .byte   $05,$15,$06,$16 ; 80D6  TL=$05 TR=$15 BL=$06 BR=$16
        .byte   $15,$15,$08,$16 ; 80DA  TL=$15 TR=$15 BL=$08 BR=$16
        .byte   $15,$17,$08,$18 ; 80DE  TL=$15 TR=$17 BL=$08 BR=$18
        .byte   $15,$27,$08,$28 ; 80E2  TL=$15 TR=$27 BL=$08 BR=$28
        .byte   $45,$55,$46,$56 ; 80E6  TL=$45 TR=$55 BL=$46 BR=$56
        .byte   $46,$56,$46,$56 ; 80EA  TL=$46 TR=$56 BL=$46 BR=$56
        .byte   $47,$57,$48,$58 ; 80EE  TL=$47 TR=$57 BL=$48 BR=$58
        .byte   $4C,$5C,$4D,$5D ; 80F2  TL=$4C TR=$5C BL=$4D BR=$5D
        .byte   $6C,$5C,$6D,$5D ; 80F6  TL=$6C TR=$5C BL=$6D BR=$5D
        .byte   $6C,$7C,$6D,$7D ; 80FA  TL=$6C TR=$7C BL=$6D BR=$7D
        .byte   $4E,$5E,$4F,$5F ; 80FE  TL=$4E TR=$5E BL=$4F BR=$5F
        .byte   $6E,$5E,$6F,$5F ; 8102  TL=$6E TR=$5E BL=$6F BR=$5F
        .byte   $6E,$7E,$6F,$7F ; 8106  TL=$6E TR=$7E BL=$6F BR=$7F
        .byte   $6C,$8C,$6D,$8D ; 810A  TL=$6C TR=$8C BL=$6D BR=$8D
        .byte   $6E,$8E,$6F,$8F ; 810E  TL=$6E TR=$8E BL=$6F BR=$8F
        .byte   $3E,$14,$3E,$14 ; 8112  TL=$3E TR=$14 BL=$3E BR=$14
        .byte   $14,$3F,$14,$3F ; 8116  TL=$14 TR=$3F BL=$14 BR=$3F
        .byte   $41,$51,$41,$51 ; 811A  TL=$41 TR=$51 BL=$41 BR=$51
        .byte   $51,$61,$51,$61 ; 811E  TL=$51 TR=$61 BL=$51 BR=$61
        .byte   $40,$50,$40,$50 ; 8122  TL=$40 TR=$50 BL=$40 BR=$50
        .byte   $50,$60,$50,$60 ; 8126  TL=$50 TR=$60 BL=$50 BR=$60
        .byte   $2E,$2E,$04,$04 ; 812A  TL=$2E TR=$2E BL=$04 BR=$04
        .byte   $04,$04,$2F,$2F ; 812E  TL=$04 TR=$04 BL=$2F BR=$2F
        .byte   $64,$64,$65,$65 ; 8132  TL=$64 TR=$64 BL=$65 BR=$65
        .byte   $65,$65,$66,$66 ; 8136  TL=$65 TR=$65 BL=$66 BR=$66
        .byte   $74,$74,$75,$75 ; 813A  TL=$74 TR=$74 BL=$75 BR=$75
        .byte   $75,$75,$76,$76 ; 813E  TL=$75 TR=$75 BL=$76 BR=$76
        .byte   $42,$00,$43,$00 ; 8142  TL=$42 TR=$00 BL=$43 BR=$00
        .byte   $00,$52,$00,$53 ; 8146  TL=$00 TR=$52 BL=$00 BR=$53
        .byte   $43,$62,$44,$63 ; 814A  TL=$43 TR=$62 BL=$44 BR=$63
        .byte   $72,$53,$73,$54 ; 814E  TL=$72 TR=$53 BL=$73 BR=$54
        .byte   $4A,$5A,$4B,$5B ; 8152  TL=$4A TR=$5A BL=$4B BR=$5B
        .byte   $5A,$6A,$5B,$6B ; 8156  TL=$5A TR=$6A BL=$5B BR=$6B
        .byte   $67,$77,$68,$78 ; 815A  TL=$67 TR=$77 BL=$68 BR=$78
        .byte   $68,$78,$49,$59 ; 815E  TL=$68 TR=$78 BL=$49 BR=$59
        .byte   $67,$79,$68,$7A ; 8162  TL=$67 TR=$79 BL=$68 BR=$7A
        .byte   $68,$7A,$49,$7B ; 8166  TL=$68 TR=$7A BL=$49 BR=$7B
        .byte   $00,$07,$07,$00 ; 816A  TL=$00 TR=$07 BL=$07 BR=$00
        .byte   $00,$07,$00,$00 ; 816E  TL=$00 TR=$07 BL=$00 BR=$00
        .byte   $00,$00,$07,$00 ; 8172  TL=$00 TR=$00 BL=$07 BR=$00
        .byte   $07,$07,$07,$07 ; 8176  TL=$07 TR=$07 BL=$07 BR=$07
        .byte   $70,$69,$71,$9B ; 817A  TL=$70 TR=$69 BL=$71 BR=$9B
        .byte   $01,$01,$01,$01 ; 817E  TL=$01 TR=$01 BL=$01 BR=$01
        .byte   $87,$97,$88,$98 ; 8182  TL=$87 TR=$97 BL=$88 BR=$98
        .byte   $80,$90,$81,$91 ; 8186  TL=$80 TR=$90 BL=$81 BR=$91
        .byte   $02,$14,$04,$02 ; 818A  TL=$02 TR=$14 BL=$04 BR=$02
        .byte   $14,$14,$14,$14 ; 818E  TL=$14 TR=$14 BL=$14 BR=$14
        .byte   $14,$12,$12,$04 ; 8192  TL=$14 TR=$12 BL=$12 BR=$04
        .byte   $04,$04,$04,$04 ; 8196  TL=$04 TR=$04 BL=$04 BR=$04
        .byte   $00,$00,$00,$00 ; 819A  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $04,$04,$04,$04 ; 819E  TL=$04 TR=$04 BL=$04 BR=$04
        .byte   $04,$03,$03,$14 ; 81A2  TL=$04 TR=$03 BL=$03 BR=$14
        .byte   $14,$14,$14,$14 ; 81A6  TL=$14 TR=$14 BL=$14 BR=$14
        .byte   $13,$04,$14,$13 ; 81AA  TL=$13 TR=$04 BL=$14 BR=$13
        .byte   $4C,$5C,$4D,$5D ; 81AE  TL=$4C TR=$5C BL=$4D BR=$5D
        .byte   $6C,$5C,$6D,$5D ; 81B2  TL=$6C TR=$5C BL=$6D BR=$5D
        .byte   $6C,$7C,$6D,$7D ; 81B6  TL=$6C TR=$7C BL=$6D BR=$7D
        .byte   $6C,$8C,$6D,$8D ; 81BA  TL=$6C TR=$8C BL=$6D BR=$8D
        .byte   $3E,$14,$3E,$14 ; 81BE  TL=$3E TR=$14 BL=$3E BR=$14
        .byte   $14,$3F,$14,$3F ; 81C2  TL=$14 TR=$3F BL=$14 BR=$3F
        .byte   $3E,$14,$3E,$14 ; 81C6  TL=$3E TR=$14 BL=$3E BR=$14
        .byte   $14,$3F,$14,$3F ; 81CA  TL=$14 TR=$3F BL=$14 BR=$3F
        .byte   $02,$14,$04,$00 ; 81CE  TL=$02 TR=$14 BL=$04 BR=$00
        .byte   $14,$12,$00,$04 ; 81D2  TL=$14 TR=$12 BL=$00 BR=$04
        .byte   $04,$00,$04,$00 ; 81D6  TL=$04 TR=$00 BL=$04 BR=$00
        .byte   $00,$04,$00,$04 ; 81DA  TL=$00 TR=$04 BL=$00 BR=$04
        .byte   $00,$07,$07,$00 ; 81DE  TL=$00 TR=$07 BL=$07 BR=$00
        .byte   $00,$07,$00,$00 ; 81E2  TL=$00 TR=$07 BL=$00 BR=$00
        .byte   $00,$00,$07,$00 ; 81E6  TL=$00 TR=$00 BL=$07 BR=$00
        .byte   $07,$07,$07,$07 ; 81EA  TL=$07 TR=$07 BL=$07 BR=$07
        .byte   $04,$00,$04,$00 ; 81EE  TL=$04 TR=$00 BL=$04 BR=$00
        .byte   $00,$04,$00,$04 ; 81F2  TL=$00 TR=$04 BL=$00 BR=$04
        .byte   $14,$14,$00,$00 ; 81F6  TL=$14 TR=$14 BL=$00 BR=$00
        .byte   $46,$56,$46,$56 ; 81FA  TL=$46 TR=$56 BL=$46 BR=$56
; 112 StructureDesc records — the level's Structure definitions, each a 2×2 quad of Tiles.
OvhdLvl5_StructureDescTable:
        .byte   $4B,$4B,$0B,$4B ; 81FE  TL=$4B TR=$4B BL=$0B BR=$4B
        .byte   $4B,$4B,$4B,$08 ; 8202  TL=$4B TR=$4B BL=$4B BR=$08
        .byte   $0F,$4B,$1E,$4B ; 8206  TL=$0F TR=$4B BL=$1E BR=$4B
        .byte   $4B,$0C,$4B,$1F ; 820A  TL=$4B TR=$0C BL=$4B BR=$1F
        .byte   $4B,$4B,$09,$21 ; 820E  TL=$4B TR=$4B BL=$09 BR=$21
        .byte   $4B,$4B,$21,$21 ; 8212  TL=$4B TR=$4B BL=$21 BR=$21
        .byte   $0D,$27,$10,$27 ; 8216  TL=$0D TR=$27 BL=$10 BR=$27
        .byte   $27,$27,$27,$27 ; 821A  TL=$27 TR=$27 BL=$27 BR=$27
        .byte   $4B,$4B,$21,$0A ; 821E  TL=$4B TR=$4B BL=$21 BR=$0A
        .byte   $27,$0E,$27,$11 ; 8222  TL=$27 TR=$0E BL=$27 BR=$11
        .byte   $27,$27,$27,$29 ; 8226  TL=$27 TR=$27 BL=$27 BR=$29
        .byte   $27,$27,$12,$20 ; 822A  TL=$27 TR=$27 BL=$12 BR=$20
        .byte   $27,$27,$20,$15 ; 822E  TL=$27 TR=$27 BL=$20 BR=$15
        .byte   $1E,$4B,$1E,$4B ; 8232  TL=$1E TR=$4B BL=$1E BR=$4B
        .byte   $4B,$1F,$4B,$1F ; 8236  TL=$4B TR=$1F BL=$4B BR=$1F
        .byte   $07,$01,$02,$01 ; 823A  TL=$07 TR=$01 BL=$02 BR=$01
        .byte   $01,$01,$01,$01 ; 823E  TL=$01 TR=$01 BL=$01 BR=$01
        .byte   $02,$01,$02,$01 ; 8242  TL=$02 TR=$01 BL=$02 BR=$01
        .byte   $01,$01,$53,$54 ; 8246  TL=$01 TR=$01 BL=$53 BR=$54
        .byte   $01,$01,$55,$01 ; 824A  TL=$01 TR=$01 BL=$55 BR=$01
        .byte   $56,$57,$59,$5A ; 824E  TL=$56 TR=$57 BL=$59 BR=$5A
        .byte   $58,$01,$5B,$01 ; 8252  TL=$58 TR=$01 BL=$5B BR=$01
        .byte   $01,$06,$01,$04 ; 8256  TL=$01 TR=$06 BL=$01 BR=$04
        .byte   $01,$04,$01,$04 ; 825A  TL=$01 TR=$04 BL=$01 BR=$04
        .byte   $52,$52,$52,$52 ; 825E  TL=$52 TR=$52 BL=$52 BR=$52
        .byte   $14,$21,$26,$27 ; 8262  TL=$14 TR=$21 BL=$26 BR=$27
        .byte   $21,$13,$27,$28 ; 8266  TL=$21 TR=$13 BL=$27 BR=$28
        .byte   $01,$01,$12,$20 ; 826A  TL=$01 TR=$01 BL=$12 BR=$20
        .byte   $01,$01,$20,$15 ; 826E  TL=$01 TR=$01 BL=$20 BR=$15
        .byte   $14,$21,$3D,$3B ; 8272  TL=$14 TR=$21 BL=$3D BR=$3B
        .byte   $21,$13,$3B,$3F ; 8276  TL=$21 TR=$13 BL=$3B BR=$3F
        .byte   $01,$04,$01,$49 ; 827A  TL=$01 TR=$04 BL=$01 BR=$49
        .byte   $01,$4A,$01,$04 ; 827E  TL=$01 TR=$4A BL=$01 BR=$04
        .byte   $3E,$3C,$64,$20 ; 8282  TL=$3E TR=$3C BL=$64 BR=$20
        .byte   $3C,$40,$20,$65 ; 8286  TL=$3C TR=$40 BL=$20 BR=$65
        .byte   $66,$4B,$1E,$4B ; 828A  TL=$66 TR=$4B BL=$1E BR=$4B
        .byte   $4B,$67,$4B,$1F ; 828E  TL=$4B TR=$67 BL=$4B BR=$1F
        .byte   $02,$01,$47,$01 ; 8292  TL=$02 TR=$01 BL=$47 BR=$01
        .byte   $48,$01,$02,$01 ; 8296  TL=$48 TR=$01 BL=$02 BR=$01
        .byte   $01,$5C,$04,$2D ; 829A  TL=$01 TR=$5C BL=$04 BR=$2D
        .byte   $5D,$5F,$2E,$33 ; 829E  TL=$5D TR=$5F BL=$2E BR=$33
        .byte   $04,$30,$01,$01 ; 82A2  TL=$04 TR=$30 BL=$01 BR=$01
        .byte   $31,$34,$01,$04 ; 82A6  TL=$31 TR=$34 BL=$01 BR=$04
        .byte   $4B,$22,$4B,$4B ; 82AA  TL=$4B TR=$22 BL=$4B BR=$4B
        .byte   $20,$20,$68,$68 ; 82AE  TL=$20 TR=$20 BL=$68 BR=$68
        .byte   $6E,$6E,$4B,$4B ; 82B2  TL=$6E TR=$6E BL=$4B BR=$4B
        .byte   $23,$4B,$4B,$4B ; 82B6  TL=$23 TR=$4B BL=$4B BR=$4B
        .byte   $5D,$5D,$2E,$2E ; 82BA  TL=$5D TR=$5D BL=$2E BR=$2E
        .byte   $31,$31,$02,$01 ; 82BE  TL=$31 TR=$31 BL=$02 BR=$01
        .byte   $31,$31,$01,$01 ; 82C2  TL=$31 TR=$31 BL=$01 BR=$01
        .byte   $5E,$01,$2F,$02 ; 82C6  TL=$5E TR=$01 BL=$2F BR=$02
        .byte   $32,$02,$01,$01 ; 82CA  TL=$32 TR=$02 BL=$01 BR=$01
        .byte   $27,$29,$27,$29 ; 82CE  TL=$27 TR=$29 BL=$27 BR=$29
        .byte   $4B,$4B,$25,$4B ; 82D2  TL=$4B TR=$4B BL=$25 BR=$4B
        .byte   $4B,$4B,$4B,$24 ; 82D6  TL=$4B TR=$4B BL=$4B BR=$24
        .byte   $1E,$4B,$1E,$68 ; 82DA  TL=$1E TR=$4B BL=$1E BR=$68
        .byte   $4B,$1F,$68,$1F ; 82DE  TL=$4B TR=$1F BL=$68 BR=$1F
        .byte   $1E,$4B,$14,$21 ; 82E2  TL=$1E TR=$4B BL=$14 BR=$21
        .byte   $4B,$1F,$21,$13 ; 82E6  TL=$4B TR=$1F BL=$21 BR=$13
        .byte   $01,$04,$01,$05 ; 82EA  TL=$01 TR=$04 BL=$01 BR=$05
        .byte   $26,$27,$26,$27 ; 82EE  TL=$26 TR=$27 BL=$26 BR=$27
        .byte   $27,$28,$27,$28 ; 82F2  TL=$27 TR=$28 BL=$27 BR=$28
        .byte   $01,$01,$01,$03 ; 82F6  TL=$01 TR=$01 BL=$01 BR=$03
        .byte   $12,$20,$6C,$68 ; 82FA  TL=$12 TR=$20 BL=$6C BR=$68
        .byte   $20,$15,$68,$6D ; 82FE  TL=$20 TR=$15 BL=$68 BR=$6D
        .byte   $15,$39,$6D,$62 ; 8302  TL=$15 TR=$39 BL=$6D BR=$62
        .byte   $3A,$12,$63,$6C ; 8306  TL=$3A TR=$12 BL=$63 BR=$6C
        .byte   $23,$4B,$68,$4B ; 830A  TL=$23 TR=$4B BL=$68 BR=$4B
        .byte   $67,$60,$13,$37 ; 830E  TL=$67 TR=$60 BL=$13 BR=$37
        .byte   $61,$66,$38,$14 ; 8312  TL=$61 TR=$66 BL=$38 BR=$14
        .byte   $28,$41,$28,$43 ; 8316  TL=$28 TR=$41 BL=$28 BR=$43
        .byte   $42,$26,$44,$26 ; 831A  TL=$42 TR=$26 BL=$44 BR=$26
        .byte   $51,$51,$51,$51 ; 831E  TL=$51 TR=$51 BL=$51 BR=$51
        .byte   $01,$45,$01,$01 ; 8322  TL=$01 TR=$45 BL=$01 BR=$01
        .byte   $46,$01,$01,$01 ; 8326  TL=$46 TR=$01 BL=$01 BR=$01
        .byte   $02,$01,$51,$51 ; 832A  TL=$02 TR=$01 BL=$51 BR=$51
        .byte   $01,$04,$51,$51 ; 832E  TL=$01 TR=$04 BL=$51 BR=$51
        .byte   $51,$51,$02,$01 ; 8332  TL=$51 TR=$51 BL=$02 BR=$01
        .byte   $51,$51,$01,$05 ; 8336  TL=$51 TR=$51 BL=$01 BR=$05
        .byte   $01,$51,$01,$51 ; 833A  TL=$01 TR=$51 BL=$01 BR=$51
        .byte   $51,$01,$51,$01 ; 833E  TL=$51 TR=$01 BL=$51 BR=$01
        .byte   $01,$2A,$04,$2B ; 8342  TL=$01 TR=$2A BL=$04 BR=$2B
        .byte   $2A,$01,$2B,$02 ; 8346  TL=$2A TR=$01 BL=$2B BR=$02
        .byte   $04,$2B,$04,$2B ; 834A  TL=$04 TR=$2B BL=$04 BR=$2B
        .byte   $2B,$02,$2B,$02 ; 834E  TL=$2B TR=$02 BL=$2B BR=$02
        .byte   $5D,$2E,$2E,$2E ; 8352  TL=$5D TR=$2E BL=$2E BR=$2E
        .byte   $2F,$02,$2F,$02 ; 8356  TL=$2F TR=$02 BL=$2F BR=$02
        .byte   $04,$2D,$04,$2D ; 835A  TL=$04 TR=$2D BL=$04 BR=$2D
        .byte   $2E,$5D,$2E,$2E ; 835E  TL=$2E TR=$5D BL=$2E BR=$2E
        .byte   $29,$0E,$29,$11 ; 8362  TL=$29 TR=$0E BL=$29 BR=$11
        .byte   $5D,$2B,$2E,$6F ; 8366  TL=$5D TR=$2B BL=$2E BR=$6F
        .byte   $2B,$02,$6F,$02 ; 836A  TL=$2B TR=$02 BL=$6F BR=$02
        .byte   $31,$2C,$01,$01 ; 836E  TL=$31 TR=$2C BL=$01 BR=$01
        .byte   $2C,$02,$01,$01 ; 8372  TL=$2C TR=$02 BL=$01 BR=$01
        .byte   $2B,$5D,$2B,$2E ; 8376  TL=$2B TR=$5D BL=$2B BR=$2E
        .byte   $2B,$31,$2B,$02 ; 837A  TL=$2B TR=$31 BL=$2B BR=$02
        .byte   $27,$27,$29,$2A ; 837E  TL=$27 TR=$27 BL=$29 BR=$2A
        .byte   $27,$27,$2A,$27 ; 8382  TL=$27 TR=$27 BL=$2A BR=$27
        .byte   $04,$6F,$04,$2C ; 8386  TL=$04 TR=$6F BL=$04 BR=$2C
        .byte   $6F,$02,$2C,$02 ; 838A  TL=$6F TR=$02 BL=$2C BR=$02
        .byte   $04,$2B,$04,$6F ; 838E  TL=$04 TR=$2B BL=$04 BR=$6F
        .byte   $04,$2C,$01,$01 ; 8392  TL=$04 TR=$2C BL=$01 BR=$01
        .byte   $01,$01,$01,$51 ; 8396  TL=$01 TR=$01 BL=$01 BR=$51
        .byte   $01,$01,$51,$51 ; 839A  TL=$01 TR=$01 BL=$51 BR=$51
        .byte   $01,$01,$51,$01 ; 839E  TL=$01 TR=$01 BL=$51 BR=$01
        .byte   $51,$01,$01,$01 ; 83A2  TL=$51 TR=$01 BL=$01 BR=$01
        .byte   $20,$6E,$68,$4B ; 83A6  TL=$20 TR=$6E BL=$68 BR=$4B
        .byte   $6E,$20,$4B,$68 ; 83AA  TL=$6E TR=$20 BL=$4B BR=$68
        .byte   $01,$51,$01,$01 ; 83AE  TL=$01 TR=$51 BL=$01 BR=$01
        .byte   $51,$51,$01,$01 ; 83B2  TL=$51 TR=$51 BL=$01 BR=$01
        .byte   $00,$00,$00,$00 ; 83B6  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$00,$00,$00 ; 83BA  TL=$00 TR=$00 BL=$00 BR=$00
; 128 ChunkDesc records — the level's Chunk definitions, each a 2×2 quad of Structures. These are
; the indices OvhdLvl5_MapData's grid holds.
OvhdLvl5_ChunkDescTable:
        .byte   $00,$01,$02,$03 ; 83BE  TL=$00 TR=$01 BL=$02 BR=$03
        .byte   $04,$05,$06,$07 ; 83C2  TL=$04 TR=$05 BL=$06 BR=$07
        .byte   $05,$05,$07,$07 ; 83C6  TL=$05 TR=$05 BL=$07 BR=$07
        .byte   $05,$08,$07,$09 ; 83CA  TL=$05 TR=$08 BL=$07 BR=$09
        .byte   $05,$05,$07,$0A ; 83CE  TL=$05 TR=$05 BL=$07 BR=$0A
        .byte   $05,$05,$0B,$0C ; 83D2  TL=$05 TR=$05 BL=$0B BR=$0C
        .byte   $0D,$0E,$0D,$0E ; 83D6  TL=$0D TR=$0E BL=$0D BR=$0E
        .byte   $0F,$10,$11,$10 ; 83DA  TL=$0F TR=$10 BL=$11 BR=$10
        .byte   $12,$13,$14,$15 ; 83DE  TL=$12 TR=$13 BL=$14 BR=$15
        .byte   $10,$16,$10,$17 ; 83E2  TL=$10 TR=$16 BL=$10 BR=$17
        .byte   $18,$18,$18,$18 ; 83E6  TL=$18 TR=$18 BL=$18 BR=$18
        .byte   $10,$17,$10,$17 ; 83EA  TL=$10 TR=$17 BL=$10 BR=$17
        .byte   $0D,$0E,$19,$1A ; 83EE  TL=$0D TR=$0E BL=$19 BR=$1A
        .byte   $10,$10,$10,$10 ; 83F2  TL=$10 TR=$10 BL=$10 BR=$10
        .byte   $10,$10,$10,$17 ; 83F6  TL=$10 TR=$10 BL=$10 BR=$17
        .byte   $1B,$1C,$0D,$0E ; 83FA  TL=$1B TR=$1C BL=$0D BR=$0E
        .byte   $10,$10,$11,$10 ; 83FE  TL=$10 TR=$10 BL=$11 BR=$10
        .byte   $11,$10,$11,$10 ; 8402  TL=$11 TR=$10 BL=$11 BR=$10
        .byte   $0D,$0E,$1D,$1E ; 8406  TL=$0D TR=$0E BL=$1D BR=$1E
        .byte   $10,$10,$1B,$1C ; 840A  TL=$10 TR=$10 BL=$1B BR=$1C
        .byte   $10,$17,$10,$10 ; 840E  TL=$10 TR=$17 BL=$10 BR=$10
        .byte   $19,$1A,$10,$10 ; 8412  TL=$19 TR=$1A BL=$10 BR=$10
        .byte   $11,$10,$10,$10 ; 8416  TL=$11 TR=$10 BL=$10 BR=$10
        .byte   $10,$1F,$10,$20 ; 841A  TL=$10 TR=$1F BL=$10 BR=$20
        .byte   $21,$22,$23,$24 ; 841E  TL=$21 TR=$22 BL=$23 BR=$24
        .byte   $25,$10,$26,$10 ; 8422  TL=$25 TR=$10 BL=$26 BR=$10
        .byte   $27,$28,$29,$2A ; 8426  TL=$27 TR=$28 BL=$29 BR=$2A
        .byte   $0D,$0E,$0D,$2B ; 842A  TL=$0D TR=$0E BL=$0D BR=$2B
        .byte   $11,$17,$2C,$2C ; 842E  TL=$11 TR=$17 BL=$2C BR=$2C
        .byte   $0D,$0E,$2D,$2D ; 8432  TL=$0D TR=$0E BL=$2D BR=$2D
        .byte   $10,$10,$2C,$2C ; 8436  TL=$10 TR=$10 BL=$2C BR=$2C
        .byte   $10,$17,$2C,$2C ; 843A  TL=$10 TR=$17 BL=$2C BR=$2C
        .byte   $11,$10,$2C,$2C ; 843E  TL=$11 TR=$10 BL=$2C BR=$2C
        .byte   $0D,$0E,$2E,$0E ; 8442  TL=$0D TR=$0E BL=$2E BR=$0E
        .byte   $2F,$2F,$30,$31 ; 8446  TL=$2F TR=$2F BL=$30 BR=$31
        .byte   $2F,$32,$31,$33 ; 844A  TL=$2F TR=$32 BL=$31 BR=$33
        .byte   $2F,$32,$30,$33 ; 844E  TL=$2F TR=$32 BL=$30 BR=$33
        .byte   $0D,$01,$0D,$03 ; 8452  TL=$0D TR=$01 BL=$0D BR=$03
        .byte   $05,$05,$07,$34 ; 8456  TL=$05 TR=$05 BL=$07 BR=$34
        .byte   $35,$36,$0D,$0E ; 845A  TL=$35 TR=$36 BL=$0D BR=$0E
        .byte   $00,$0E,$02,$0E ; 845E  TL=$00 TR=$0E BL=$02 BR=$0E
        .byte   $27,$2F,$29,$31 ; 8462  TL=$27 TR=$2F BL=$29 BR=$31
        .byte   $2F,$28,$31,$2A ; 8466  TL=$2F TR=$28 BL=$31 BR=$2A
        .byte   $37,$38,$39,$3A ; 846A  TL=$37 TR=$38 BL=$39 BR=$3A
        .byte   $10,$27,$10,$29 ; 846E  TL=$10 TR=$27 BL=$10 BR=$29
        .byte   $10,$3B,$10,$10 ; 8472  TL=$10 TR=$3B BL=$10 BR=$10
        .byte   $3C,$3D,$10,$10 ; 8476  TL=$3C TR=$3D BL=$10 BR=$10
        .byte   $10,$3E,$10,$17 ; 847A  TL=$10 TR=$3E BL=$10 BR=$17
        .byte   $3F,$40,$0D,$0E ; 847E  TL=$3F TR=$40 BL=$0D BR=$0E
        .byte   $10,$10,$2C,$40 ; 8482  TL=$10 TR=$10 BL=$2C BR=$40
        .byte   $10,$10,$41,$42 ; 8486  TL=$10 TR=$10 BL=$41 BR=$42
        .byte   $0D,$0E,$2E,$2B ; 848A  TL=$0D TR=$0E BL=$2E BR=$2B
        .byte   $0D,$0E,$43,$2B ; 848E  TL=$0D TR=$0E BL=$43 BR=$2B
        .byte   $0D,$36,$0D,$0E ; 8492  TL=$0D TR=$36 BL=$0D BR=$0E
        .byte   $05,$3A,$07,$3D ; 8496  TL=$05 TR=$3A BL=$07 BR=$3D
        .byte   $11,$17,$11,$17 ; 849A  TL=$11 TR=$17 BL=$11 BR=$17
        .byte   $0D,$36,$0D,$03 ; 849E  TL=$0D TR=$36 BL=$0D BR=$03
        .byte   $44,$45,$46,$47 ; 84A2  TL=$44 TR=$45 BL=$46 BR=$47
        .byte   $35,$01,$02,$03 ; 84A6  TL=$35 TR=$01 BL=$02 BR=$03
        .byte   $00,$36,$02,$0E ; 84AA  TL=$00 TR=$36 BL=$02 BR=$0E
        .byte   $11,$10,$11,$3E ; 84AE  TL=$11 TR=$10 BL=$11 BR=$3E
        .byte   $10,$10,$3F,$2C ; 84B2  TL=$10 TR=$10 BL=$3F BR=$2C
        .byte   $48,$48,$48,$48 ; 84B6  TL=$48 TR=$48 BL=$48 BR=$48
        .byte   $49,$4A,$10,$48 ; 84BA  TL=$49 TR=$4A BL=$10 BR=$48
        .byte   $11,$17,$11,$3B ; 84BE  TL=$11 TR=$17 BL=$11 BR=$3B
        .byte   $39,$05,$3C,$07 ; 84C2  TL=$39 TR=$05 BL=$3C BR=$07
        .byte   $35,$0E,$0D,$0E ; 84C6  TL=$35 TR=$0E BL=$0D BR=$0E
        .byte   $10,$48,$10,$48 ; 84CA  TL=$10 TR=$48 BL=$10 BR=$48
        .byte   $11,$3E,$4B,$4C ; 84CE  TL=$11 TR=$3E BL=$4B BR=$4C
        .byte   $3F,$40,$39,$3A ; 84D2  TL=$3F TR=$40 BL=$39 BR=$3A
        .byte   $10,$3E,$11,$17 ; 84D6  TL=$10 TR=$3E BL=$11 BR=$17
        .byte   $10,$17,$11,$17 ; 84DA  TL=$10 TR=$17 BL=$11 BR=$17
        .byte   $11,$10,$11,$48 ; 84DE  TL=$11 TR=$10 BL=$11 BR=$48
        .byte   $10,$48,$48,$48 ; 84E2  TL=$10 TR=$48 BL=$48 BR=$48
        .byte   $4D,$4E,$11,$10 ; 84E6  TL=$4D TR=$4E BL=$11 BR=$10
        .byte   $11,$3B,$10,$10 ; 84EA  TL=$11 TR=$3B BL=$10 BR=$10
        .byte   $3C,$3D,$4F,$50 ; 84EE  TL=$3C TR=$3D BL=$4F BR=$50
        .byte   $11,$17,$10,$17 ; 84F2  TL=$11 TR=$17 BL=$10 BR=$17
        .byte   $11,$10,$48,$10 ; 84F6  TL=$11 TR=$10 BL=$48 BR=$10
        .byte   $10,$10,$48,$48 ; 84FA  TL=$10 TR=$10 BL=$48 BR=$48
        .byte   $11,$3E,$11,$17 ; 84FE  TL=$11 TR=$3E BL=$11 BR=$17
        .byte   $10,$10,$18,$18 ; 8502  TL=$10 TR=$10 BL=$18 BR=$18
        .byte   $48,$10,$48,$10 ; 8506  TL=$48 TR=$10 BL=$48 BR=$10
        .byte   $10,$17,$48,$17 ; 850A  TL=$10 TR=$17 BL=$48 BR=$17
        .byte   $11,$3B,$11,$10 ; 850E  TL=$11 TR=$3B BL=$11 BR=$10
        .byte   $18,$18,$10,$10 ; 8512  TL=$18 TR=$18 BL=$10 BR=$10
        .byte   $51,$52,$53,$54 ; 8516  TL=$51 TR=$52 BL=$53 BR=$54
        .byte   $48,$10,$48,$48 ; 851A  TL=$48 TR=$10 BL=$48 BR=$48
        .byte   $48,$17,$48,$17 ; 851E  TL=$48 TR=$17 BL=$48 BR=$17
        .byte   $10,$3E,$4B,$4C ; 8522  TL=$10 TR=$3E BL=$4B BR=$4C
        .byte   $53,$54,$53,$54 ; 8526  TL=$53 TR=$54 BL=$53 BR=$54
        .byte   $10,$17,$10,$48 ; 852A  TL=$10 TR=$17 BL=$10 BR=$48
        .byte   $4D,$4E,$10,$10 ; 852E  TL=$4D TR=$4E BL=$10 BR=$10
        .byte   $55,$56,$31,$33 ; 8532  TL=$55 TR=$56 BL=$31 BR=$33
        .byte   $10,$10,$11,$17 ; 8536  TL=$10 TR=$10 BL=$11 BR=$17
        .byte   $18,$18,$2C,$2C ; 853A  TL=$18 TR=$18 BL=$2C BR=$2C
        .byte   $10,$3B,$2C,$2C ; 853E  TL=$10 TR=$3B BL=$2C BR=$2C
        .byte   $3C,$3D,$2C,$2C ; 8542  TL=$3C TR=$3D BL=$2C BR=$2C
        .byte   $11,$3B,$2C,$2C ; 8546  TL=$11 TR=$3B BL=$2C BR=$2C
        .byte   $57,$58,$29,$31 ; 854A  TL=$57 TR=$58 BL=$29 BR=$31
        .byte   $04,$05,$06,$34 ; 854E  TL=$04 TR=$05 BL=$06 BR=$34
        .byte   $05,$08,$07,$59 ; 8552  TL=$05 TR=$08 BL=$07 BR=$59
        .byte   $0F,$17,$11,$17 ; 8556  TL=$0F TR=$17 BL=$11 BR=$17
        .byte   $10,$17,$10,$3B ; 855A  TL=$10 TR=$17 BL=$10 BR=$3B
        .byte   $39,$3A,$3C,$3D ; 855E  TL=$39 TR=$3A BL=$3C BR=$3D
        .byte   $5A,$5B,$5C,$5D ; 8562  TL=$5A TR=$5B BL=$5C BR=$5D
        .byte   $25,$3B,$26,$10 ; 8566  TL=$25 TR=$3B BL=$26 BR=$10
        .byte   $10,$10,$10,$3E ; 856A  TL=$10 TR=$10 BL=$10 BR=$3E
        .byte   $10,$10,$3F,$40 ; 856E  TL=$10 TR=$10 BL=$3F BR=$40
        .byte   $53,$5E,$53,$5F ; 8572  TL=$53 TR=$5E BL=$53 BR=$5F
        .byte   $05,$05,$60,$61 ; 8576  TL=$05 TR=$05 BL=$60 BR=$61
        .byte   $62,$63,$10,$10 ; 857A  TL=$62 TR=$63 BL=$10 BR=$10
        .byte   $64,$5B,$65,$5D ; 857E  TL=$64 TR=$5B BL=$65 BR=$5D
        .byte   $10,$10,$10,$66 ; 8582  TL=$10 TR=$10 BL=$10 BR=$66
        .byte   $10,$10,$67,$67 ; 8586  TL=$10 TR=$10 BL=$67 BR=$67
        .byte   $10,$16,$68,$17 ; 858A  TL=$10 TR=$16 BL=$68 BR=$17
        .byte   $49,$4A,$10,$10 ; 858E  TL=$49 TR=$4A BL=$10 BR=$10
        .byte   $10,$10,$51,$52 ; 8592  TL=$10 TR=$10 BL=$51 BR=$52
        .byte   $10,$4F,$10,$4F ; 8596  TL=$10 TR=$4F BL=$10 BR=$4F
        .byte   $69,$17,$68,$17 ; 859A  TL=$69 TR=$17 BL=$68 BR=$17
        .byte   $53,$54,$6A,$6B ; 859E  TL=$53 TR=$54 BL=$6A BR=$6B
        .byte   $10,$6C,$2C,$2C ; 85A2  TL=$10 TR=$6C BL=$2C BR=$2C
        .byte   $6D,$6D,$2C,$2C ; 85A6  TL=$6D TR=$6D BL=$2C BR=$2C
        .byte   $69,$17,$2C,$2C ; 85AA  TL=$69 TR=$17 BL=$2C BR=$2C
        .byte   $6E,$6E,$6E,$6E ; 85AE  TL=$6E TR=$6E BL=$6E BR=$6E
        .byte   $00,$00,$00,$00 ; 85B2  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$00,$00,$00 ; 85B6  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$00,$00,$00 ; 85BA  TL=$00 TR=$00 BL=$00 BR=$00
; 928 bytes (level 13 is 32×29 rather than 32×32)
OvhdLvl5_MapData:
        .byte   $00,$01,$02,$03,$00,$01,$02,$04 ; 85BE
        .byte   $05,$02,$02,$02,$02,$02,$02,$04 ; 85C6
        .byte   $05,$02,$02,$02,$02,$02,$02,$04 ; 85CE
        .byte   $05,$02,$02,$03,$00,$01,$02,$03 ; 85D6
        .byte   $06,$07,$08,$09,$06,$07,$0A,$0B ; 85DE
        .byte   $0C,$0D,$0D,$0E,$0F,$10,$0D,$0B ; 85E6
        .byte   $0C,$11,$0D,$0E,$0F,$10,$0D,$0B ; 85EE
        .byte   $0C,$11,$0D,$09,$12,$07,$0D,$09 ; 85F6
        .byte   $06,$11,$0D,$0B,$06,$11,$13,$0D ; 85FE
        .byte   $0D,$0D,$13,$14,$15,$16,$13,$0D ; 8606
        .byte   $0D,$0D,$13,$14,$15,$16,$0D,$0D ; 860E
        .byte   $0D,$0D,$0D,$17,$18,$19,$0D,$1A ; 8616
        .byte   $06,$11,$0D,$1A,$1B,$1C,$1D,$1E ; 861E
        .byte   $1E,$1F,$1D,$1E,$1E,$1F,$1D,$20 ; 8626
        .byte   $1E,$1F,$1D,$1E,$1E,$1E,$1E,$1E ; 862E
        .byte   $1E,$1E,$1E,$1F,$21,$22,$23,$0B ; 8636
        .byte   $06,$24,$0D,$0B,$25,$01,$02,$03 ; 863E
        .byte   $00,$01,$02,$26,$27,$02,$02,$26 ; 8646
        .byte   $27,$02,$02,$26,$27,$02,$02,$03 ; 864E
        .byte   $00,$01,$02,$03,$28,$11,$29,$2A ; 8656
        .byte   $06,$11,$0D,$0B,$06,$07,$08,$09 ; 865E
        .byte   $06,$07,$0D,$0B,$2B,$0D,$0D,$0B ; 8666
        .byte   $2B,$0D,$0D,$0B,$2B,$0D,$0D,$09 ; 866E
        .byte   $12,$07,$0D,$09,$06,$22,$23,$0B ; 8676
        .byte   $06,$11,$2C,$2A,$06,$11,$0D,$0B ; 867E
        .byte   $06,$11,$0D,$2D,$2E,$2F,$30,$2D ; 8686
        .byte   $2E,$2F,$30,$2D,$2E,$2F,$30,$17 ; 868E
        .byte   $18,$19,$0D,$0B,$06,$11,$29,$2A ; 8696
        .byte   $06,$22,$23,$0B,$1B,$20,$31,$0B ; 869E
        .byte   $1B,$20,$32,$1E,$1E,$1F,$33,$1E ; 86A6
        .byte   $1E,$1F,$33,$1E,$1E,$1F,$33,$1F ; 86AE
        .byte   $34,$20,$31,$0B,$06,$22,$23,$0B ; 86B6
        .byte   $06,$11,$29,$2A,$35,$02,$36,$37 ; 86BE
        .byte   $38,$02,$39,$02,$3A,$01,$02,$02 ; 86C6
        .byte   $02,$02,$02,$02,$02,$02,$02,$03 ; 86CE
        .byte   $3B,$02,$36,$37,$06,$11,$29,$2A ; 86D6
        .byte   $06,$22,$23,$0B,$06,$3C,$3D,$1F ; 86DE
        .byte   $21,$3E,$3F,$3E,$06,$07,$0D,$0D ; 86E6
        .byte   $0D,$0D,$0D,$0D,$0D,$0D,$0D,$09 ; 86EE
        .byte   $06,$3C,$3D,$1F,$21,$11,$0D,$0B ; 86F6
        .byte   $06,$11,$0D,$0B,$06,$40,$41,$26 ; 86FE
        .byte   $42,$3E,$43,$3E,$06,$44,$45,$46 ; 8706
        .byte   $45,$46,$45,$46,$45,$46,$45,$47 ; 870E
        .byte   $06,$40,$41,$26,$42,$24,$0D,$0B ; 8716
        .byte   $06,$11,$0D,$1A,$1B,$20,$31,$0B ; 871E
        .byte   $06,$48,$49,$3E,$06,$4A,$2E,$4B ; 8726
        .byte   $2E,$4B,$4C,$4B,$2E,$4B,$2E,$4D ; 872E
        .byte   $1B,$20,$31,$0B,$06,$11,$0D,$1A ; 8736
        .byte   $06,$11,$0D,$0B,$35,$02,$36,$37 ; 873E
        .byte   $06,$4E,$4F,$43,$06,$50,$45,$46 ; 8746
        .byte   $45,$46,$45,$10,$51,$2F,$45,$47 ; 874E
        .byte   $35,$02,$36,$37,$06,$24,$0D,$1A ; 8756
        .byte   $06,$22,$23,$0B,$06,$3C,$3D,$1F ; 875E
        .byte   $21,$52,$3E,$53,$06,$54,$2E,$4B ; 8766
        .byte   $2E,$4B,$4C,$16,$55,$2D,$2E,$4D ; 876E
        .byte   $06,$3C,$3D,$1F,$21,$11,$0D,$0B ; 8776
        .byte   $06,$11,$56,$0B,$06,$40,$41,$26 ; 877E
        .byte   $42,$57,$43,$58,$06,$44,$45,$46 ; 8786
        .byte   $45,$46,$45,$59,$45,$59,$45,$47 ; 878E
        .byte   $06,$40,$41,$26,$42,$11,$56,$0B ; 8796
        .byte   $06,$11,$5A,$0B,$1B,$20,$31,$0B ; 879E
        .byte   $06,$3E,$43,$5B,$06,$4A,$2E,$4B ; 87A6
        .byte   $4C,$4B,$2E,$5C,$2E,$5C,$2E,$4D ; 87AE
        .byte   $1B,$20,$31,$0B,$06,$22,$5D,$0B ; 87B6
        .byte   $06,$11,$5A,$0B,$35,$02,$36,$37 ; 87BE
        .byte   $06,$57,$49,$43,$06,$50,$45,$46 ; 87C6
        .byte   $45,$46,$45,$46,$45,$46,$45,$47 ; 87CE
        .byte   $35,$02,$36,$37,$06,$11,$0D,$0B ; 87D6
        .byte   $06,$11,$5A,$0B,$06,$3C,$3D,$1F ; 87DE
        .byte   $21,$3E,$52,$49,$06,$54,$2E,$4B ; 87E6
        .byte   $2E,$4B,$2E,$4B,$4C,$4B,$2E,$4D ; 87EE
        .byte   $06,$11,$0D,$0B,$06,$11,$2C,$2A ; 87F6
        .byte   $06,$11,$5A,$0B,$06,$40,$41,$26 ; 87FE
        .byte   $42,$52,$51,$43,$06,$11,$08,$0E ; 8806
        .byte   $45,$5E,$45,$5E,$45,$5E,$45,$47 ; 880E
        .byte   $06,$11,$08,$0B,$06,$11,$0D,$0B ; 8816
        .byte   $06,$11,$5A,$0B,$1B,$20,$31,$0B ; 881E
        .byte   $1B,$20,$5F,$1F,$33,$20,$1E,$60 ; 8826
        .byte   $61,$62,$61,$62,$61,$62,$61,$1C ; 882E
        .byte   $33,$20,$1E,$1F,$21,$22,$23,$0B ; 8836
        .byte   $06,$11,$63,$2A,$35,$02,$36,$37 ; 883E
        .byte   $25,$64,$27,$02,$02,$26,$27,$02 ; 8846
        .byte   $02,$26,$27,$02,$02,$26,$27,$26 ; 884E
        .byte   $27,$02,$02,$65,$28,$11,$56,$0B ; 8856
        .byte   $06,$11,$0D,$0B,$06,$11,$0D,$0B ; 885E
        .byte   $12,$66,$2B,$0D,$0D,$0B,$2B,$0D ; 8866
        .byte   $0D,$0B,$2B,$0D,$0D,$0B,$2B,$67 ; 886E
        .byte   $68,$0D,$0D,$09,$06,$22,$69,$0B ; 8876
        .byte   $06,$11,$0D,$0B,$06,$11,$0D,$17 ; 887E
        .byte   $18,$6A,$2E,$2F,$30,$2D,$2E,$2F ; 8886
        .byte   $30,$2D,$2E,$2F,$30,$2D,$2E,$6B ; 888E
        .byte   $6C,$0D,$0D,$0B,$06,$11,$56,$0B ; 8896
        .byte   $06,$22,$23,$0B,$1B,$20,$1E,$1F ; 889E
        .byte   $33,$1E,$1E,$1F,$33,$1E,$1E,$1F ; 88A6
        .byte   $33,$1E,$1E,$1F,$33,$1E,$1E,$1F ; 88AE
        .byte   $33,$1E,$32,$1F,$21,$11,$6D,$2A ; 88B6
        .byte   $06,$11,$0D,$0B,$25,$01,$02,$02 ; 88BE
        .byte   $6E,$02,$6E,$02,$6E,$02,$6E,$02 ; 88C6
        .byte   $6E,$02,$6E,$02,$6E,$02,$02,$65 ; 88CE
        .byte   $00,$01,$39,$65,$28,$11,$6F,$0B ; 88D6
        .byte   $06,$11,$0D,$0B,$12,$07,$0D,$0D ; 88DE
        .byte   $5A,$0D,$70,$0D,$5A,$0D,$5A,$0D ; 88E6
        .byte   $5A,$0D,$5A,$0D,$70,$71,$72,$73 ; 88EE
        .byte   $06,$07,$74,$09,$06,$22,$23,$0B ; 88F6
        .byte   $06,$11,$0D,$17,$18,$19,$0D,$56 ; 88FE
        .byte   $70,$0D,$0D,$0D,$70,$56,$70,$56 ; 8906
        .byte   $70,$56,$70,$56,$75,$76,$0A,$77 ; 890E
        .byte   $06,$11,$0D,$0B,$06,$11,$08,$0B ; 8916
        .byte   $33,$20,$1E,$1F,$33,$20,$1E,$78 ; 891E
        .byte   $1E,$1E,$1E,$1E,$1E,$78,$1E,$78 ; 8926
        .byte   $1E,$78,$1E,$78,$78,$79,$7A,$7B ; 892E
        .byte   $33,$20,$1E,$1F,$33,$20,$1E,$1F ; 8936
        .byte   $02,$02,$02,$02,$02,$02,$02,$02 ; 893E
        .byte   $02,$02,$02,$02,$02,$02,$02,$02 ; 8946
        .byte   $02,$02,$02,$02,$02,$02,$02,$02 ; 894E
        .byte   $02,$02,$02,$02,$02,$02,$02,$02 ; 8956
; 16 bytes — 8 B vertical + 8 B horizontal scroll-boundary flags
OvhdLvl5_ScrollData:
        .byte   $FF,$7E,$3C,$00,$00,$3E,$7E,$FF ; 895E
        .byte   $C1,$E3,$F3,$F3,$F3,$E1,$C3,$00 ; 8966
; Tile attribute table – bits: 0-1=palette 2=walk-behind 3=Tunnel(→Tank) 4=damage 7=solid 
; 3+7=Doorway 6+7=destroyable
OvhdLvl5_TileAttrTable:
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; 896E
        .byte   $80,$80,$80,$80,$80,$80,$80,$80 ; 8976
        .byte   $80,$80,$04,$80,$80,$04,$04,$04 ; 897E
        .byte   $80,$80,$84,$84,$84,$84,$84,$84 ; 8986
        .byte   $04,$80,$84,$84,$80,$80,$80,$80 ; 898E
        .byte   $80,$80,$04,$80,$80,$80,$80,$80 ; 8996
        .byte   $80,$80,$80,$80,$80,$86,$86,$86 ; 899E
        .byte   $86,$06,$06,$86,$86,$86,$86,$86 ; 89A6
        .byte   $86,$82,$82,$8A,$8A,$02,$02,$02 ; 89AE
        .byte   $02,$02,$02,$85,$85,$85,$85,$80 ; 89B6
        .byte   $00,$11,$C3,$01,$01,$01,$01,$09 ; 89BE
        .byte   $01,$01,$01,$01,$04,$04,$04,$04 ; 89C6
        .byte   $8E,$8E,$06,$06,$8C,$8C,$8C,$8C ; 89CE
        .byte   $05,$05,$05,$05,$04,$04,$80,$80 ; 89D6
; ----------------------------------------------------------------------------
OvhdLvl2_MapPointers:
        .addr   OvhdLvl2_BgPalette              ; 89DE
        .addr   OvhdLvl2_TileAttrTable          ; 89E0
        .addr   OvhdLvl2_TileDescTable          ; 89E2
        .addr   OvhdLvl2_StructureDescTable     ; 89E4
        .addr   OvhdLvl2_ChunkDescTable         ; 89E6
        .addr   OvhdLvl2_MapData                ; 89E8
; ----------------------------------------------------------------------------
; 4 BgPalette records — the level's 4 background sub-palettes × 4 NES colour indices.
OvhdLvl2_BgPalette:
        .byte   $0F,$0B,$00,$10 ; 89EA  Backdrop=$0F Colour1=$0B Colour2=$00 Colour3=$10
        .byte   $0F,$07,$17,$10 ; 89EE  Backdrop=$0F Colour1=$07 Colour2=$17 Colour3=$10
        .byte   $0F,$07,$00,$3B ; 89F2  Backdrop=$0F Colour1=$07 Colour2=$00 Colour3=$3B
        .byte   $0F,$00,$10,$20 ; 89F6  Backdrop=$0F Colour1=$00 Colour2=$10 Colour3=$20
; 76 TileDesc records — the level's Tile definitions. NOTE: OvhdLvl2_TileAttrTable is only 75
; bytes, so the last 1 record(s) here have no attribute byte — either spare slots or a label
; boundary that needs narrowing (unresolved).
OvhdLvl2_TileDescTable:
        .byte   $00,$00,$00,$00 ; 89FA  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $03,$04,$04,$02 ; 89FE  TL=$03 TR=$04 BL=$04 BR=$02
        .byte   $02,$12,$12,$03 ; 8A02  TL=$02 TR=$12 BL=$12 BR=$03
        .byte   $9B,$97,$9C,$98 ; 8A06  TL=$9B TR=$97 BL=$9C BR=$98
        .byte   $89,$99,$8A,$9A ; 8A0A  TL=$89 TR=$99 BL=$8A BR=$9A
        .byte   $03,$08,$04,$17 ; 8A0E  TL=$03 TR=$08 BL=$04 BR=$17
        .byte   $02,$18,$12,$07 ; 8A12  TL=$02 TR=$18 BL=$12 BR=$07
        .byte   $01,$01,$01,$01 ; 8A16  TL=$01 TR=$01 BL=$01 BR=$01
        .byte   $56,$66,$57,$67 ; 8A1A  TL=$56 TR=$66 BL=$57 BR=$67
        .byte   $2E,$3E,$2F,$3F ; 8A1E  TL=$2E TR=$3E BL=$2F BR=$3F
        .byte   $5E,$5E,$5E,$5E ; 8A22  TL=$5E TR=$5E BL=$5E BR=$5E
        .byte   $5E,$5F,$5E,$5F ; 8A26  TL=$5E TR=$5F BL=$5E BR=$5F
        .byte   $7D,$7D,$7D,$6C ; 8A2A  TL=$7D TR=$7D BL=$7D BR=$6C
        .byte   $7D,$7D,$7C,$7C ; 8A2E  TL=$7D TR=$7D BL=$7C BR=$7C
        .byte   $7D,$7D,$8C,$7D ; 8A32  TL=$7D TR=$7D BL=$8C BR=$7D
        .byte   $7D,$6D,$7D,$6D ; 8A36  TL=$7D TR=$6D BL=$7D BR=$6D
        .byte   $8D,$7D,$8D,$7D ; 8A3A  TL=$8D TR=$7D BL=$8D BR=$7D
        .byte   $7D,$6E,$7D,$7D ; 8A3E  TL=$7D TR=$6E BL=$7D BR=$7D
        .byte   $7E,$7E,$7D,$7D ; 8A42  TL=$7E TR=$7E BL=$7D BR=$7D
        .byte   $8E,$7D,$7D,$7D ; 8A46  TL=$8E TR=$7D BL=$7D BR=$7D
        .byte   $27,$2B,$28,$2C ; 8A4A  TL=$27 TR=$2B BL=$28 BR=$2C
        .byte   $2B,$2B,$2C,$2C ; 8A4E  TL=$2B TR=$2B BL=$2C BR=$2C
        .byte   $2B,$37,$2C,$38 ; 8A52  TL=$2B TR=$37 BL=$2C BR=$38
        .byte   $2B,$33,$2C,$34 ; 8A56  TL=$2B TR=$33 BL=$2C BR=$34
        .byte   $29,$3B,$2A,$3C ; 8A5A  TL=$29 TR=$3B BL=$2A BR=$3C
        .byte   $3B,$3B,$3C,$3C ; 8A5E  TL=$3B TR=$3B BL=$3C BR=$3C
        .byte   $3B,$39,$3C,$3A ; 8A62  TL=$3B TR=$39 BL=$3C BR=$3A
        .byte   $3B,$35,$3C,$36 ; 8A66  TL=$3B TR=$35 BL=$3C BR=$36
        .byte   $0B,$1B,$0C,$1C ; 8A6A  TL=$0B TR=$1B BL=$0C BR=$1C
        .byte   $0C,$1C,$0C,$1C ; 8A6E  TL=$0C TR=$1C BL=$0C BR=$1C
        .byte   $0C,$1C,$0D,$1D ; 8A72  TL=$0C TR=$1C BL=$0D BR=$1D
        .byte   $0E,$1E,$0F,$1F ; 8A76  TL=$0E TR=$1E BL=$0F BR=$1F
        .byte   $8F,$16,$9E,$06 ; 8A7A  TL=$8F TR=$16 BL=$9E BR=$06
        .byte   $06,$16,$16,$06 ; 8A7E  TL=$06 TR=$16 BL=$16 BR=$06
        .byte   $06,$9F,$16,$9D ; 8A82  TL=$06 TR=$9F BL=$16 BR=$9D
        .byte   $06,$10,$16,$09 ; 8A86  TL=$06 TR=$10 BL=$16 BR=$09
        .byte   $06,$19,$0A,$1A ; 8A8A  TL=$06 TR=$19 BL=$0A BR=$1A
        .byte   $21,$31,$22,$00 ; 8A8E  TL=$21 TR=$31 BL=$22 BR=$00
        .byte   $31,$41,$00,$22 ; 8A92  TL=$31 TR=$41 BL=$00 BR=$22
        .byte   $24,$23,$25,$23 ; 8A96  TL=$24 TR=$23 BL=$25 BR=$23
        .byte   $23,$23,$23,$23 ; 8A9A  TL=$23 TR=$23 BL=$23 BR=$23
        .byte   $23,$24,$23,$25 ; 8A9E  TL=$23 TR=$24 BL=$23 BR=$25
        .byte   $25,$23,$26,$23 ; 8AA2  TL=$25 TR=$23 BL=$26 BR=$23
        .byte   $23,$25,$23,$26 ; 8AA6  TL=$23 TR=$25 BL=$23 BR=$26
        .byte   $05,$15,$13,$11 ; 8AAA  TL=$05 TR=$15 BL=$13 BR=$11
        .byte   $05,$15,$09,$13 ; 8AAE  TL=$05 TR=$15 BL=$09 BR=$13
        .byte   $14,$00,$05,$15 ; 8AB2  TL=$14 TR=$00 BL=$05 BR=$15
        .byte   $00,$14,$05,$15 ; 8AB6  TL=$00 TR=$14 BL=$05 BR=$15
        .byte   $20,$30,$20,$30 ; 8ABA  TL=$20 TR=$30 BL=$20 BR=$30
        .byte   $30,$40,$30,$40 ; 8ABE  TL=$30 TR=$40 BL=$30 BR=$40
        .byte   $27,$2B,$28,$2C ; 8AC2  TL=$27 TR=$2B BL=$28 BR=$2C
        .byte   $2B,$2B,$2C,$2C ; 8AC6  TL=$2B TR=$2B BL=$2C BR=$2C
        .byte   $2B,$37,$2C,$38 ; 8ACA  TL=$2B TR=$37 BL=$2C BR=$38
        .byte   $2B,$33,$2C,$34 ; 8ACE  TL=$2B TR=$33 BL=$2C BR=$34
        .byte   $2D,$3D,$0C,$1C ; 8AD2  TL=$2D TR=$3D BL=$0C BR=$1C
        .byte   $05,$15,$13,$11 ; 8AD6  TL=$05 TR=$15 BL=$13 BR=$11
        .byte   $05,$15,$09,$13 ; 8ADA  TL=$05 TR=$15 BL=$09 BR=$13
        .byte   $14,$00,$05,$15 ; 8ADE  TL=$14 TR=$00 BL=$05 BR=$15
        .byte   $00,$14,$05,$15 ; 8AE2  TL=$00 TR=$14 BL=$05 BR=$15
        .byte   $20,$30,$20,$23 ; 8AE6  TL=$20 TR=$30 BL=$20 BR=$23
        .byte   $30,$40,$23,$40 ; 8AEA  TL=$30 TR=$40 BL=$23 BR=$40
        .byte   $6A,$7A,$6B,$7B ; 8AEE  TL=$6A TR=$7A BL=$6B BR=$7B
        .byte   $48,$48,$49,$49 ; 8AF2  TL=$48 TR=$48 BL=$49 BR=$49
        .byte   $49,$49,$49,$49 ; 8AF6  TL=$49 TR=$49 BL=$49 BR=$49
        .byte   $59,$59,$58,$58 ; 8AFA  TL=$59 TR=$59 BL=$58 BR=$58
        .byte   $58,$58,$58,$58 ; 8AFE  TL=$58 TR=$58 BL=$58 BR=$58
        .byte   $6F,$7F,$00,$00 ; 8B02  TL=$6F TR=$7F BL=$00 BR=$00
        .byte   $22,$00,$22,$32 ; 8B06  TL=$22 TR=$00 BL=$22 BR=$32
        .byte   $00,$22,$42,$22 ; 8B0A  TL=$00 TR=$22 BL=$42 BR=$22
        .byte   $20,$30,$20,$23 ; 8B0E  TL=$20 TR=$30 BL=$20 BR=$23
        .byte   $30,$40,$23,$40 ; 8B12  TL=$30 TR=$40 BL=$23 BR=$40
        .byte   $05,$15,$13,$11 ; 8B16  TL=$05 TR=$15 BL=$13 BR=$11
        .byte   $05,$15,$09,$13 ; 8B1A  TL=$05 TR=$15 BL=$09 BR=$13
        .byte   $14,$00,$05,$15 ; 8B1E  TL=$14 TR=$00 BL=$05 BR=$15
        .byte   $00,$14,$05,$15 ; 8B22  TL=$00 TR=$14 BL=$05 BR=$15
        .byte   $00,$00,$00,$00 ; 8B26  TL=$00 TR=$00 BL=$00 BR=$00
; 124 StructureDesc records — the level's Structure definitions, each a 2×2 quad of Tiles.
OvhdLvl2_StructureDescTable:
        .byte   $2C,$2D,$2E,$2F ; 8B2A  TL=$2C TR=$2D BL=$2E BR=$2F
        .byte   $20,$21,$20,$21 ; 8B2E  TL=$20 TR=$21 BL=$20 BR=$21
        .byte   $21,$21,$21,$21 ; 8B32  TL=$21 TR=$21 BL=$21 BR=$21
        .byte   $21,$21,$23,$1C ; 8B36  TL=$21 TR=$21 BL=$23 BR=$1C
        .byte   $21,$21,$1C,$21 ; 8B3A  TL=$21 TR=$21 BL=$1C BR=$21
        .byte   $21,$23,$21,$24 ; 8B3E  TL=$21 TR=$23 BL=$21 BR=$24
        .byte   $02,$01,$01,$02 ; 8B42  TL=$02 TR=$01 BL=$01 BR=$02
        .byte   $06,$1D,$05,$1D ; 8B46  TL=$06 TR=$1D BL=$05 BR=$1D
        .byte   $1D,$01,$1D,$02 ; 8B4A  TL=$1D TR=$01 BL=$1D BR=$02
        .byte   $02,$03,$01,$04 ; 8B4E  TL=$02 TR=$03 BL=$01 BR=$04
        .byte   $2C,$2D,$27,$28 ; 8B52  TL=$2C TR=$2D BL=$27 BR=$28
        .byte   $2C,$2D,$28,$29 ; 8B56  TL=$2C TR=$2D BL=$28 BR=$29
        .byte   $3D,$3D,$3D,$02 ; 8B5A  TL=$3D TR=$3D BL=$3D BR=$02
        .byte   $3D,$3D,$01,$3D ; 8B5E  TL=$3D TR=$3D BL=$01 BR=$3D
        .byte   $3D,$01,$3D,$3D ; 8B62  TL=$3D TR=$01 BL=$3D BR=$3D
        .byte   $02,$3D,$3D,$3D ; 8B66  TL=$02 TR=$3D BL=$3D BR=$3D
        .byte   $02,$36,$05,$1D ; 8B6A  TL=$02 TR=$36 BL=$05 BR=$1D
        .byte   $36,$01,$1D,$02 ; 8B6E  TL=$36 TR=$01 BL=$1D BR=$02
        .byte   $02,$0C,$01,$0F ; 8B72  TL=$02 TR=$0C BL=$01 BR=$0F
        .byte   $0D,$0E,$42,$10 ; 8B76  TL=$0D TR=$0E BL=$42 BR=$10
        .byte   $02,$11,$01,$02 ; 8B7A  TL=$02 TR=$11 BL=$01 BR=$02
        .byte   $12,$13,$01,$02 ; 8B7E  TL=$12 TR=$13 BL=$01 BR=$02
        .byte   $06,$1E,$05,$1F ; 8B82  TL=$06 TR=$1E BL=$05 BR=$1F
        .byte   $1E,$01,$1F,$02 ; 8B86  TL=$1E TR=$01 BL=$1F BR=$02
        .byte   $02,$03,$01,$0B ; 8B8A  TL=$02 TR=$03 BL=$01 BR=$0B
        .byte   $02,$0B,$01,$04 ; 8B8E  TL=$02 TR=$0B BL=$01 BR=$04
        .byte   $2A,$28,$49,$2F ; 8B92  TL=$2A TR=$28 BL=$49 BR=$2F
        .byte   $28,$2B,$2E,$4A ; 8B96  TL=$28 TR=$2B BL=$2E BR=$4A
        .byte   $47,$2D,$2E,$2F ; 8B9A  TL=$47 TR=$2D BL=$2E BR=$2F
        .byte   $2C,$48,$2E,$2F ; 8B9E  TL=$2C TR=$48 BL=$2E BR=$2F
        .byte   $02,$01,$0A,$02 ; 8BA2  TL=$02 TR=$01 BL=$0A BR=$02
        .byte   $0A,$01,$01,$02 ; 8BA6  TL=$0A TR=$01 BL=$01 BR=$02
        .byte   $02,$32,$05,$1C ; 8BAA  TL=$02 TR=$32 BL=$05 BR=$1C
        .byte   $33,$33,$14,$15 ; 8BAE  TL=$33 TR=$33 BL=$14 BR=$15
        .byte   $1C,$18,$1D,$02 ; 8BB2  TL=$1C TR=$18 BL=$1D BR=$02
        .byte   $33,$33,$15,$15 ; 8BB6  TL=$33 TR=$33 BL=$15 BR=$15
        .byte   $19,$19,$01,$02 ; 8BBA  TL=$19 TR=$19 BL=$01 BR=$02
        .byte   $33,$33,$15,$16 ; 8BBE  TL=$33 TR=$33 BL=$15 BR=$16
        .byte   $34,$01,$1C,$02 ; 8BC2  TL=$34 TR=$01 BL=$1C BR=$02
        .byte   $1B,$1C,$05,$1D ; 8BC6  TL=$1B TR=$1C BL=$05 BR=$1D
        .byte   $37,$38,$39,$3A ; 8BCA  TL=$37 TR=$38 BL=$39 BR=$3A
        .byte   $37,$2D,$39,$2F ; 8BCE  TL=$37 TR=$2D BL=$39 BR=$2F
        .byte   $2C,$38,$2E,$3A ; 8BD2  TL=$2C TR=$38 BL=$2E BR=$3A
        .byte   $02,$01,$01,$3D ; 8BD6  TL=$02 TR=$01 BL=$01 BR=$3D
        .byte   $3D,$01,$01,$02 ; 8BDA  TL=$3D TR=$01 BL=$01 BR=$02
        .byte   $3D,$03,$01,$04 ; 8BDE  TL=$3D TR=$03 BL=$01 BR=$04
        .byte   $02,$03,$01,$3D ; 8BE2  TL=$02 TR=$03 BL=$01 BR=$3D
        .byte   $3D,$11,$01,$02 ; 8BE6  TL=$3D TR=$11 BL=$01 BR=$02
        .byte   $12,$13,$01,$3D ; 8BEA  TL=$12 TR=$13 BL=$01 BR=$3D
        .byte   $06,$1D,$05,$1E ; 8BEE  TL=$06 TR=$1D BL=$05 BR=$1E
        .byte   $1E,$32,$14,$15 ; 8BF2  TL=$1E TR=$32 BL=$14 BR=$15
        .byte   $06,$1F,$01,$02 ; 8BF6  TL=$06 TR=$1F BL=$01 BR=$02
        .byte   $18,$19,$01,$02 ; 8BFA  TL=$18 TR=$19 BL=$01 BR=$02
        .byte   $34,$1E,$15,$16 ; 8BFE  TL=$34 TR=$1E BL=$15 BR=$16
        .byte   $1D,$01,$1E,$02 ; 8C02  TL=$1D TR=$01 BL=$1E BR=$02
        .byte   $19,$1A,$01,$02 ; 8C06  TL=$19 TR=$1A BL=$01 BR=$02
        .byte   $1F,$01,$01,$02 ; 8C0A  TL=$1F TR=$01 BL=$01 BR=$02
        .byte   $3E,$3E,$3F,$3F ; 8C0E  TL=$3E TR=$3E BL=$3F BR=$3F
        .byte   $3F,$3F,$3F,$3F ; 8C12  TL=$3F TR=$3F BL=$3F BR=$3F
        .byte   $3F,$3D,$3F,$3D ; 8C16  TL=$3F TR=$3D BL=$3F BR=$3D
        .byte   $3E,$3E,$3D,$3D ; 8C1A  TL=$3E TR=$3E BL=$3D BR=$3D
        .byte   $3D,$0A,$08,$0A ; 8C1E  TL=$3D TR=$0A BL=$08 BR=$0A
        .byte   $0A,$3D,$0A,$08 ; 8C22  TL=$0A TR=$3D BL=$0A BR=$08
        .byte   $3E,$40,$3F,$41 ; 8C26  TL=$3E TR=$40 BL=$3F BR=$41
        .byte   $3D,$3F,$3D,$3F ; 8C2A  TL=$3D TR=$3F BL=$3D BR=$3F
        .byte   $3F,$41,$3F,$41 ; 8C2E  TL=$3F TR=$41 BL=$3F BR=$41
        .byte   $3D,$03,$01,$0B ; 8C32  TL=$3D TR=$03 BL=$01 BR=$0B
        .byte   $02,$0B,$01,$3D ; 8C36  TL=$02 TR=$0B BL=$01 BR=$3D
        .byte   $3F,$3F,$0A,$0A ; 8C3A  TL=$3F TR=$3F BL=$0A BR=$0A
        .byte   $3F,$3D,$0A,$3D ; 8C3E  TL=$3F TR=$3D BL=$0A BR=$3D
        .byte   $0A,$0A,$3F,$0A ; 8C42  TL=$0A TR=$0A BL=$3F BR=$0A
        .byte   $0A,$3E,$0A,$3F ; 8C46  TL=$0A TR=$3E BL=$0A BR=$3F
        .byte   $08,$0A,$3D,$0A ; 8C4A  TL=$08 TR=$0A BL=$3D BR=$0A
        .byte   $0A,$08,$0A,$3D ; 8C4E  TL=$0A TR=$08 BL=$0A BR=$3D
        .byte   $3D,$0A,$3E,$0A ; 8C52  TL=$3D TR=$0A BL=$3E BR=$0A
        .byte   $0A,$3D,$0A,$3E ; 8C56  TL=$0A TR=$3D BL=$0A BR=$3E
        .byte   $3E,$3F,$3F,$3F ; 8C5A  TL=$3E TR=$3F BL=$3F BR=$3F
        .byte   $3F,$0A,$3F,$0A ; 8C5E  TL=$3F TR=$0A BL=$3F BR=$0A
        .byte   $0A,$3F,$0A,$3F ; 8C62  TL=$0A TR=$3F BL=$0A BR=$3F
        .byte   $37,$3B,$39,$3B ; 8C66  TL=$37 TR=$3B BL=$39 BR=$3B
        .byte   $3C,$38,$3C,$3A ; 8C6A  TL=$3C TR=$38 BL=$3C BR=$3A
        .byte   $2C,$45,$2E,$30 ; 8C6E  TL=$2C TR=$45 BL=$2E BR=$30
        .byte   $46,$2D,$31,$2F ; 8C72  TL=$46 TR=$2D BL=$31 BR=$2F
        .byte   $21,$25,$21,$43 ; 8C76  TL=$21 TR=$25 BL=$21 BR=$43
        .byte   $26,$21,$44,$21 ; 8C7A  TL=$26 TR=$21 BL=$44 BR=$21
        .byte   $08,$08,$08,$08 ; 8C7E  TL=$08 TR=$08 BL=$08 BR=$08
        .byte   $3E,$0A,$3F,$08 ; 8C82  TL=$3E TR=$0A BL=$3F BR=$08
        .byte   $0A,$3E,$08,$3F ; 8C86  TL=$0A TR=$3E BL=$08 BR=$3F
        .byte   $3F,$08,$3F,$08 ; 8C8A  TL=$3F TR=$08 BL=$3F BR=$08
        .byte   $02,$01,$3D,$02 ; 8C8E  TL=$02 TR=$01 BL=$3D BR=$02
        .byte   $00,$00,$00,$00 ; 8C92  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $08,$3F,$08,$3F ; 8C96  TL=$08 TR=$3F BL=$08 BR=$3F
        .byte   $3F,$41,$08,$0B ; 8C9A  TL=$3F TR=$41 BL=$08 BR=$0B
        .byte   $3E,$08,$3F,$3E ; 8C9E  TL=$3E TR=$08 BL=$3F BR=$3E
        .byte   $08,$0B,$3E,$40 ; 8CA2  TL=$08 TR=$0B BL=$3E BR=$40
        .byte   $3F,$3F,$0A,$08 ; 8CA6  TL=$3F TR=$3F BL=$0A BR=$08
        .byte   $0A,$08,$3E,$3E ; 8CAA  TL=$0A TR=$08 BL=$3E BR=$3E
        .byte   $3F,$3E,$3F,$3F ; 8CAE  TL=$3F TR=$3E BL=$3F BR=$3F
        .byte   $08,$08,$3E,$3E ; 8CB2  TL=$08 TR=$08 BL=$3E BR=$3E
        .byte   $3E,$08,$3F,$08 ; 8CB6  TL=$3E TR=$08 BL=$3F BR=$08
        .byte   $32,$33,$14,$15 ; 8CBA  TL=$32 TR=$33 BL=$14 BR=$15
        .byte   $33,$34,$15,$16 ; 8CBE  TL=$33 TR=$34 BL=$15 BR=$16
        .byte   $02,$0A,$01,$02 ; 8CC2  TL=$02 TR=$0A BL=$01 BR=$02
        .byte   $02,$01,$01,$06 ; 8CC6  TL=$02 TR=$01 BL=$01 BR=$06
        .byte   $02,$05,$01,$02 ; 8CCA  TL=$02 TR=$05 BL=$01 BR=$02
        .byte   $33,$35,$15,$17 ; 8CCE  TL=$33 TR=$35 BL=$15 BR=$17
        .byte   $19,$1B,$01,$04 ; 8CD2  TL=$19 TR=$1B BL=$01 BR=$04
        .byte   $0C,$0D,$0F,$42 ; 8CD6  TL=$0C TR=$0D BL=$0F BR=$42
        .byte   $0E,$01,$10,$02 ; 8CDA  TL=$0E TR=$01 BL=$10 BR=$02
        .byte   $11,$12,$01,$02 ; 8CDE  TL=$11 TR=$12 BL=$01 BR=$02
        .byte   $13,$01,$01,$02 ; 8CE2  TL=$13 TR=$01 BL=$01 BR=$02
        .byte   $3F,$3F,$08,$08 ; 8CE6  TL=$3F TR=$3F BL=$08 BR=$08
        .byte   $3F,$08,$0A,$08 ; 8CEA  TL=$3F TR=$08 BL=$0A BR=$08
        .byte   $0A,$08,$3E,$08 ; 8CEE  TL=$0A TR=$08 BL=$3E BR=$08
        .byte   $08,$41,$08,$0B ; 8CF2  TL=$08 TR=$41 BL=$08 BR=$0B
        .byte   $08,$0B,$08,$40 ; 8CF6  TL=$08 TR=$0B BL=$08 BR=$40
        .byte   $3E,$41,$3F,$41 ; 8CFA  TL=$3E TR=$41 BL=$3F BR=$41
        .byte   $3E,$3E,$08,$08 ; 8CFE  TL=$3E TR=$3E BL=$08 BR=$08
        .byte   $3E,$0A,$08,$08 ; 8D02  TL=$3E TR=$0A BL=$08 BR=$08
        .byte   $0A,$08,$08,$08 ; 8D06  TL=$0A TR=$08 BL=$08 BR=$08
        .byte   $08,$3F,$08,$08 ; 8D0A  TL=$08 TR=$3F BL=$08 BR=$08
        .byte   $02,$3D,$01,$02 ; 8D0E  TL=$02 TR=$3D BL=$01 BR=$02
        .byte   $00,$00,$00,$00 ; 8D12  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$00,$00,$00 ; 8D16  TL=$00 TR=$00 BL=$00 BR=$00
; 108 ChunkDesc records — the level's Chunk definitions, each a 2×2 quad of Structures. These are
; the indices OvhdLvl2_MapData's grid holds.
OvhdLvl2_ChunkDescTable:
        .byte   $00,$00,$00,$00 ; 8D1A  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$00,$01,$02 ; 8D1E  TL=$00 TR=$00 BL=$01 BR=$02
        .byte   $00,$00,$02,$02 ; 8D22  TL=$00 TR=$00 BL=$02 BR=$02
        .byte   $00,$00,$03,$04 ; 8D26  TL=$00 TR=$00 BL=$03 BR=$04
        .byte   $00,$00,$02,$05 ; 8D2A  TL=$00 TR=$00 BL=$02 BR=$05
        .byte   $06,$06,$06,$06 ; 8D2E  TL=$06 TR=$06 BL=$06 BR=$06
        .byte   $07,$08,$07,$08 ; 8D32  TL=$07 TR=$08 BL=$07 BR=$08
        .byte   $06,$09,$06,$09 ; 8D36  TL=$06 TR=$09 BL=$06 BR=$09
        .byte   $00,$00,$0A,$0B ; 8D3A  TL=$00 TR=$00 BL=$0A BR=$0B
        .byte   $0C,$0D,$0E,$0F ; 8D3E  TL=$0C TR=$0D BL=$0E BR=$0F
        .byte   $06,$06,$10,$11 ; 8D42  TL=$06 TR=$06 BL=$10 BR=$11
        .byte   $12,$13,$14,$15 ; 8D46  TL=$12 TR=$13 BL=$14 BR=$15
        .byte   $10,$11,$07,$08 ; 8D4A  TL=$10 TR=$11 BL=$07 BR=$08
        .byte   $16,$17,$06,$06 ; 8D4E  TL=$16 TR=$17 BL=$06 BR=$06
        .byte   $06,$18,$06,$19 ; 8D52  TL=$06 TR=$18 BL=$06 BR=$19
        .byte   $1A,$1B,$1C,$1D ; 8D56  TL=$1A TR=$1B BL=$1C BR=$1D
        .byte   $1E,$06,$1F,$06 ; 8D5A  TL=$1E TR=$06 BL=$1F BR=$06
        .byte   $20,$21,$07,$22 ; 8D5E  TL=$20 TR=$21 BL=$07 BR=$22
        .byte   $23,$23,$24,$24 ; 8D62  TL=$23 TR=$23 BL=$24 BR=$24
        .byte   $25,$26,$27,$08 ; 8D66  TL=$25 TR=$26 BL=$27 BR=$08
        .byte   $06,$06,$28,$28 ; 8D6A  TL=$06 TR=$06 BL=$28 BR=$28
        .byte   $07,$08,$29,$2A ; 8D6E  TL=$07 TR=$08 BL=$29 BR=$2A
        .byte   $06,$09,$28,$28 ; 8D72  TL=$06 TR=$09 BL=$28 BR=$28
        .byte   $2B,$2C,$2C,$2B ; 8D76  TL=$2B TR=$2C BL=$2C BR=$2B
        .byte   $2B,$2D,$2C,$2E ; 8D7A  TL=$2B TR=$2D BL=$2C BR=$2E
        .byte   $12,$13,$2F,$30 ; 8D7E  TL=$12 TR=$13 BL=$2F BR=$30
        .byte   $31,$32,$33,$34 ; 8D82  TL=$31 TR=$32 BL=$33 BR=$34
        .byte   $35,$36,$37,$38 ; 8D86  TL=$35 TR=$36 BL=$37 BR=$38
        .byte   $39,$39,$3A,$3B ; 8D8A  TL=$39 TR=$39 BL=$3A BR=$3B
        .byte   $3C,$3C,$3D,$3E ; 8D8E  TL=$3C TR=$3C BL=$3D BR=$3E
        .byte   $39,$3F,$40,$41 ; 8D92  TL=$39 TR=$3F BL=$40 BR=$41
        .byte   $2B,$42,$2C,$43 ; 8D96  TL=$2B TR=$42 BL=$2C BR=$43
        .byte   $44,$45,$46,$47 ; 8D9A  TL=$44 TR=$45 BL=$46 BR=$47
        .byte   $48,$49,$4A,$4B ; 8D9E  TL=$48 TR=$49 BL=$4A BR=$4B
        .byte   $40,$41,$4C,$41 ; 8DA2  TL=$40 TR=$41 BL=$4C BR=$41
        .byte   $07,$08,$16,$17 ; 8DA6  TL=$07 TR=$08 BL=$16 BR=$17
        .byte   $2B,$2C,$28,$28 ; 8DAA  TL=$2B TR=$2C BL=$28 BR=$28
        .byte   $2B,$2D,$28,$28 ; 8DAE  TL=$2B TR=$2D BL=$28 BR=$28
        .byte   $4D,$4E,$28,$28 ; 8DB2  TL=$4D TR=$4E BL=$28 BR=$28
        .byte   $3A,$41,$28,$28 ; 8DB6  TL=$3A TR=$41 BL=$28 BR=$28
        .byte   $06,$06,$4F,$50 ; 8DBA  TL=$06 TR=$06 BL=$4F BR=$50
        .byte   $51,$52,$53,$54 ; 8DBE  TL=$51 TR=$52 BL=$53 BR=$54
        .byte   $39,$39,$3A,$55 ; 8DC2  TL=$39 TR=$39 BL=$3A BR=$55
        .byte   $39,$39,$55,$55 ; 8DC6  TL=$39 TR=$39 BL=$55 BR=$55
        .byte   $39,$3F,$55,$41 ; 8DCA  TL=$39 TR=$3F BL=$55 BR=$41
        .byte   $39,$39,$3A,$3A ; 8DCE  TL=$39 TR=$39 BL=$3A BR=$3A
        .byte   $56,$57,$58,$55 ; 8DD2  TL=$56 TR=$57 BL=$58 BR=$55
        .byte   $06,$59,$59,$06 ; 8DD6  TL=$06 TR=$59 BL=$59 BR=$06
        .byte   $59,$06,$06,$59 ; 8DDA  TL=$59 TR=$06 BL=$06 BR=$59
        .byte   $59,$09,$59,$09 ; 8DDE  TL=$59 TR=$09 BL=$59 BR=$09
        .byte   $5A,$5A,$5A,$5A ; 8DE2  TL=$5A TR=$5A BL=$5A BR=$5A
        .byte   $3A,$55,$3A,$55 ; 8DE6  TL=$3A TR=$55 BL=$3A BR=$55
        .byte   $39,$39,$55,$5B ; 8DEA  TL=$39 TR=$39 BL=$55 BR=$5B
        .byte   $55,$5C,$5D,$5E ; 8DEE  TL=$55 TR=$5C BL=$5D BR=$5E
        .byte   $5F,$3A,$60,$55 ; 8DF2  TL=$5F TR=$3A BL=$60 BR=$55
        .byte   $61,$39,$55,$55 ; 8DF6  TL=$61 TR=$39 BL=$55 BR=$55
        .byte   $55,$41,$62,$41 ; 8DFA  TL=$55 TR=$41 BL=$62 BR=$41
        .byte   $06,$06,$06,$59 ; 8DFE  TL=$06 TR=$06 BL=$06 BR=$59
        .byte   $59,$59,$06,$06 ; 8E02  TL=$59 TR=$59 BL=$06 BR=$06
        .byte   $06,$09,$59,$09 ; 8E06  TL=$06 TR=$09 BL=$59 BR=$09
        .byte   $3A,$39,$28,$28 ; 8E0A  TL=$3A TR=$39 BL=$28 BR=$28
        .byte   $63,$5B,$4F,$50 ; 8E0E  TL=$63 TR=$5B BL=$4F BR=$50
        .byte   $39,$39,$28,$28 ; 8E12  TL=$39 TR=$39 BL=$28 BR=$28
        .byte   $59,$06,$28,$28 ; 8E16  TL=$59 TR=$06 BL=$28 BR=$28
        .byte   $59,$09,$28,$28 ; 8E1A  TL=$59 TR=$09 BL=$28 BR=$28
        .byte   $64,$23,$34,$24 ; 8E1E  TL=$64 TR=$23 BL=$34 BR=$24
        .byte   $23,$65,$24,$37 ; 8E22  TL=$23 TR=$65 BL=$24 BR=$37
        .byte   $66,$1F,$06,$06 ; 8E26  TL=$66 TR=$1F BL=$06 BR=$06
        .byte   $56,$57,$58,$5B ; 8E2A  TL=$56 TR=$57 BL=$58 BR=$5B
        .byte   $39,$3F,$3A,$41 ; 8E2E  TL=$39 TR=$3F BL=$3A BR=$41
        .byte   $06,$67,$06,$68 ; 8E32  TL=$06 TR=$67 BL=$06 BR=$68
        .byte   $23,$69,$24,$6A ; 8E36  TL=$23 TR=$69 BL=$24 BR=$6A
        .byte   $55,$55,$39,$39 ; 8E3A  TL=$55 TR=$55 BL=$39 BR=$39
        .byte   $3A,$41,$3A,$41 ; 8E3E  TL=$3A TR=$41 BL=$3A BR=$41
        .byte   $6B,$6C,$6D,$6E ; 8E42  TL=$6B TR=$6C BL=$6D BR=$6E
        .byte   $3A,$55,$28,$28 ; 8E46  TL=$3A TR=$55 BL=$28 BR=$28
        .byte   $55,$5B,$4F,$50 ; 8E4A  TL=$55 TR=$5B BL=$4F BR=$50
        .byte   $3A,$3A,$3A,$3A ; 8E4E  TL=$3A TR=$3A BL=$3A BR=$3A
        .byte   $55,$55,$55,$55 ; 8E52  TL=$55 TR=$55 BL=$55 BR=$55
        .byte   $6F,$5C,$62,$5E ; 8E56  TL=$6F TR=$5C BL=$62 BR=$5E
        .byte   $70,$55,$71,$55 ; 8E5A  TL=$70 TR=$55 BL=$71 BR=$55
        .byte   $55,$72,$55,$73 ; 8E5E  TL=$55 TR=$72 BL=$55 BR=$73
        .byte   $3A,$3A,$28,$28 ; 8E62  TL=$3A TR=$3A BL=$28 BR=$28
        .byte   $61,$39,$28,$28 ; 8E66  TL=$61 TR=$39 BL=$28 BR=$28
        .byte   $39,$74,$28,$28 ; 8E6A  TL=$39 TR=$74 BL=$28 BR=$28
        .byte   $75,$75,$55,$62 ; 8E6E  TL=$75 TR=$75 BL=$55 BR=$62
        .byte   $76,$57,$62,$62 ; 8E72  TL=$76 TR=$57 BL=$62 BR=$62
        .byte   $39,$3F,$5B,$41 ; 8E76  TL=$39 TR=$3F BL=$5B BR=$41
        .byte   $56,$77,$61,$39 ; 8E7A  TL=$56 TR=$77 BL=$61 BR=$39
        .byte   $55,$3F,$55,$41 ; 8E7E  TL=$55 TR=$3F BL=$55 BR=$41
        .byte   $55,$6F,$62,$62 ; 8E82  TL=$55 TR=$6F BL=$62 BR=$62
        .byte   $6F,$6F,$62,$62 ; 8E86  TL=$6F TR=$6F BL=$62 BR=$62
        .byte   $78,$5C,$62,$5E ; 8E8A  TL=$78 TR=$5C BL=$62 BR=$5E
        .byte   $55,$3A,$3A,$3A ; 8E8E  TL=$55 TR=$3A BL=$3A BR=$3A
        .byte   $58,$5B,$58,$5B ; 8E92  TL=$58 TR=$5B BL=$58 BR=$5B
        .byte   $3A,$41,$55,$41 ; 8E96  TL=$3A TR=$41 BL=$55 BR=$41
        .byte   $3A,$3A,$55,$55 ; 8E9A  TL=$3A TR=$3A BL=$55 BR=$55
        .byte   $55,$41,$55,$41 ; 8E9E  TL=$55 TR=$41 BL=$55 BR=$41
        .byte   $58,$5B,$4F,$50 ; 8EA2  TL=$58 TR=$5B BL=$4F BR=$50
        .byte   $39,$41,$28,$28 ; 8EA6  TL=$39 TR=$41 BL=$28 BR=$28
        .byte   $06,$79,$79,$06 ; 8EAA  TL=$06 TR=$79 BL=$79 BR=$06
        .byte   $66,$1F,$06,$79 ; 8EAE  TL=$66 TR=$1F BL=$06 BR=$79
        .byte   $06,$09,$79,$09 ; 8EB2  TL=$06 TR=$09 BL=$79 BR=$09
        .byte   $1E,$79,$1F,$06 ; 8EB6  TL=$1E TR=$79 BL=$1F BR=$06
        .byte   $06,$06,$79,$79 ; 8EBA  TL=$06 TR=$06 BL=$79 BR=$79
        .byte   $79,$06,$28,$28 ; 8EBE  TL=$79 TR=$06 BL=$28 BR=$28
        .byte   $79,$09,$28,$28 ; 8EC2  TL=$79 TR=$09 BL=$28 BR=$28
        .byte   $00,$00,$00,$00 ; 8EC6  TL=$00 TR=$00 BL=$00 BR=$00
; 32×32 chunk-index grid = 1024 bytes
OvhdLvl2_MapData:
        .byte   $00,$01,$02,$03,$02,$03,$02,$04 ; 8ECA
        .byte   $00,$01,$03,$02,$02,$02,$02,$04 ; 8ED2
        .byte   $00,$01,$03,$02,$02,$02,$02,$02 ; 8EDA
        .byte   $02,$02,$02,$02,$02,$02,$02,$02 ; 8EE2
        .byte   $00,$05,$05,$06,$05,$06,$05,$07 ; 8EEA
        .byte   $08,$05,$06,$05,$05,$05,$05,$07 ; 8EF2
        .byte   $00,$09,$06,$05,$05,$05,$05,$05 ; 8EFA
        .byte   $05,$05,$05,$05,$05,$05,$0A,$07 ; 8F02
        .byte   $00,$0B,$0C,$0D,$0C,$0D,$0C,$0E ; 8F0A
        .byte   $0F,$10,$06,$05,$0A,$05,$05,$07 ; 8F12
        .byte   $00,$05,$06,$11,$12,$12,$12,$12 ; 8F1A
        .byte   $12,$12,$12,$12,$13,$0C,$06,$07 ; 8F22
        .byte   $00,$14,$15,$14,$15,$14,$15,$16 ; 8F2A
        .byte   $00,$05,$06,$05,$06,$05,$05,$07 ; 8F32
        .byte   $00,$05,$06,$06,$11,$12,$12,$12 ; 8F3A
        .byte   $12,$12,$12,$13,$06,$06,$06,$07 ; 8F42
        .byte   $00,$01,$02,$02,$02,$02,$02,$04 ; 8F4A
        .byte   $00,$05,$06,$05,$06,$05,$05,$07 ; 8F52
        .byte   $00,$05,$06,$06,$06,$11,$12,$12 ; 8F5A
        .byte   $12,$12,$13,$06,$06,$06,$06,$07 ; 8F62
        .byte   $00,$17,$17,$17,$17,$17,$17,$18 ; 8F6A
        .byte   $00,$05,$06,$05,$06,$05,$05,$07 ; 8F72
        .byte   $00,$05,$06,$06,$06,$06,$11,$12 ; 8F7A
        .byte   $12,$13,$06,$06,$06,$06,$06,$07 ; 8F82
        .byte   $00,$19,$17,$17,$17,$17,$17,$18 ; 8F8A
        .byte   $00,$05,$0D,$05,$06,$05,$09,$07 ; 8F92
        .byte   $00,$05,$06,$06,$06,$06,$06,$0C ; 8F9A
        .byte   $0B,$06,$06,$06,$06,$06,$06,$07 ; 8FA2
        .byte   $00,$17,$17,$17,$17,$17,$17,$18 ; 8FAA
        .byte   $00,$14,$14,$14,$15,$14,$14,$16 ; 8FB2
        .byte   $00,$05,$06,$06,$06,$06,$06,$1A ; 8FBA
        .byte   $12,$1B,$06,$06,$06,$06,$06,$07 ; 8FC2
        .byte   $00,$17,$17,$17,$17,$17,$17,$18 ; 8FCA
        .byte   $00,$01,$02,$04,$00,$01,$02,$04 ; 8FD2
        .byte   $00,$05,$06,$06,$06,$06,$1A,$12 ; 8FDA
        .byte   $12,$12,$1B,$06,$06,$06,$06,$07 ; 8FE2
        .byte   $00,$17,$17,$17,$17,$17,$17,$18 ; 8FEA
        .byte   $08,$1C,$1D,$1E,$00,$05,$05,$07 ; 8FF2
        .byte   $00,$05,$06,$06,$06,$1A,$12,$12 ; 8FFA
        .byte   $12,$12,$12,$1B,$06,$06,$06,$07 ; 9002
        .byte   $00,$17,$17,$17,$17,$17,$17,$1F ; 900A
        .byte   $0F,$20,$21,$22,$00,$05,$05,$07 ; 9012
        .byte   $00,$05,$23,$06,$1A,$12,$12,$12 ; 901A
        .byte   $12,$12,$12,$12,$1B,$06,$06,$07 ; 9022
        .byte   $00,$24,$24,$24,$24,$24,$24,$25 ; 902A
        .byte   $00,$26,$26,$27,$00,$14,$28,$16 ; 9032
        .byte   $00,$14,$14,$15,$14,$14,$14,$14 ; 903A
        .byte   $14,$14,$14,$14,$14,$15,$15,$16 ; 9042
        .byte   $00,$01,$02,$04,$00,$01,$02,$04 ; 904A
        .byte   $00,$01,$02,$04,$00,$01,$29,$04 ; 9052
        .byte   $00,$01,$02,$04,$00,$03,$03,$04 ; 905A
        .byte   $00,$02,$02,$02,$02,$02,$02,$02 ; 9062
        .byte   $00,$2A,$2B,$2C,$08,$05,$05,$07 ; 906A
        .byte   $08,$05,$05,$07,$08,$2D,$2E,$2C ; 9072
        .byte   $00,$2F,$30,$31,$00,$23,$23,$07 ; 907A
        .byte   $00,$32,$32,$32,$32,$32,$32,$32 ; 9082
        .byte   $00,$33,$34,$35,$0F,$10,$05,$0E ; 908A
        .byte   $0F,$10,$05,$0E,$0F,$36,$37,$38 ; 9092
        .byte   $00,$39,$3A,$3B,$00,$05,$05,$07 ; 909A
        .byte   $00,$32,$32,$32,$32,$32,$32,$32 ; 90A2
        .byte   $00,$3C,$3D,$27,$00,$14,$14,$16 ; 90AA
        .byte   $00,$14,$28,$16,$00,$3C,$3E,$27 ; 90B2
        .byte   $00,$3F,$28,$40,$00,$41,$42,$07 ; 90BA
        .byte   $00,$32,$32,$32,$32,$32,$32,$32 ; 90C2
        .byte   $00,$01,$29,$04,$00,$01,$02,$04 ; 90CA
        .byte   $00,$01,$29,$04,$00,$01,$02,$04 ; 90D2
        .byte   $00,$01,$29,$04,$00,$05,$05,$07 ; 90DA
        .byte   $00,$32,$32,$32,$32,$32,$32,$32 ; 90E2
        .byte   $00,$05,$43,$07,$08,$05,$05,$07 ; 90EA
        .byte   $00,$05,$43,$07,$00,$05,$05,$07 ; 90F2
        .byte   $00,$2D,$44,$45,$00,$46,$41,$47 ; 90FA
        .byte   $00,$32,$32,$32,$32,$32,$32,$32 ; 9102
        .byte   $00,$05,$05,$0E,$0F,$10,$05,$07 ; 910A
        .byte   $00,$41,$12,$47,$00,$05,$05,$07 ; 9112
        .byte   $00,$33,$48,$49,$00,$05,$4A,$07 ; 911A
        .byte   $00,$32,$32,$32,$32,$32,$32,$32 ; 9122
        .byte   $00,$14,$14,$16,$00,$14,$28,$16 ; 912A
        .byte   $00,$14,$28,$16,$00,$14,$28,$16 ; 9132
        .byte   $00,$4B,$4C,$27,$00,$14,$14,$16 ; 913A
        .byte   $00,$32,$32,$32,$32,$32,$32,$32 ; 9142
        .byte   $00,$01,$02,$04,$00,$01,$29,$04 ; 914A
        .byte   $00,$01,$29,$04,$00,$01,$29,$04 ; 9152
        .byte   $00,$01,$29,$04,$00,$01,$02,$04 ; 915A
        .byte   $00,$32,$32,$32,$32,$32,$32,$32 ; 9162
        .byte   $00,$05,$05,$07,$00,$2D,$44,$45 ; 916A
        .byte   $08,$05,$43,$07,$08,$2D,$44,$45 ; 9172
        .byte   $08,$05,$43,$07,$00,$05,$05,$07 ; 917A
        .byte   $00,$32,$32,$32,$32,$32,$32,$32 ; 9182
        .byte   $00,$05,$05,$07,$00,$4D,$4E,$4F ; 918A
        .byte   $0F,$10,$05,$0E,$0F,$50,$48,$51 ; 9192
        .byte   $0F,$10,$05,$07,$00,$05,$05,$07 ; 919A
        .byte   $00,$32,$32,$32,$32,$32,$32,$32 ; 91A2
        .byte   $00,$14,$28,$16,$00,$52,$53,$27 ; 91AA
        .byte   $00,$14,$28,$16,$00,$53,$52,$54 ; 91B2
        .byte   $00,$14,$14,$16,$00,$14,$28,$16 ; 91BA
        .byte   $00,$32,$32,$32,$32,$32,$32,$32 ; 91C2
        .byte   $00,$01,$29,$04,$00,$01,$02,$04 ; 91CA
        .byte   $00,$01,$29,$04,$00,$01,$02,$04 ; 91D2
        .byte   $00,$01,$02,$04,$00,$01,$29,$04 ; 91DA
        .byte   $00,$32,$32,$32,$32,$32,$32,$32 ; 91E2
        .byte   $00,$55,$56,$57,$08,$05,$05,$07 ; 91EA
        .byte   $00,$2D,$44,$2C,$00,$05,$05,$07 ; 91F2
        .byte   $08,$05,$05,$07,$08,$2D,$58,$59 ; 91FA
        .byte   $00,$32,$32,$32,$32,$32,$32,$32 ; 9202
        .byte   $00,$5A,$5B,$5C,$0F,$10,$05,$07 ; 920A
        .byte   $00,$5D,$5E,$5F,$00,$05,$05,$0E ; 9212
        .byte   $0F,$10,$05,$0E,$0F,$50,$60,$61 ; 921A
        .byte   $00,$32,$32,$32,$32,$32,$32,$32 ; 9222
        .byte   $00,$52,$52,$27,$00,$14,$28,$16 ; 922A
        .byte   $00,$52,$62,$27,$00,$14,$28,$16 ; 9232
        .byte   $00,$14,$14,$16,$00,$53,$3E,$63 ; 923A
        .byte   $00,$32,$32,$32,$32,$32,$32,$32 ; 9242
        .byte   $00,$01,$02,$04,$00,$01,$29,$04 ; 924A
        .byte   $00,$01,$29,$04,$00,$01,$29,$04 ; 9252
        .byte   $00,$01,$02,$04,$00,$01,$02,$04 ; 925A
        .byte   $00,$32,$32,$32,$32,$32,$32,$32 ; 9262
        .byte   $00,$05,$05,$07,$08,$05,$43,$07 ; 926A
        .byte   $08,$64,$65,$66,$08,$2D,$44,$45 ; 9272
        .byte   $08,$05,$05,$07,$08,$05,$05,$07 ; 927A
        .byte   $00,$32,$32,$32,$32,$32,$32,$32 ; 9282
        .byte   $00,$05,$4A,$0E,$0F,$10,$05,$0E ; 928A
        .byte   $0F,$67,$68,$0E,$0F,$50,$48,$51 ; 9292
        .byte   $0F,$10,$05,$0E,$0F,$10,$05,$07 ; 929A
        .byte   $00,$32,$32,$32,$32,$32,$32,$32 ; 92A2
        .byte   $00,$14,$14,$16,$00,$14,$14,$16 ; 92AA
        .byte   $00,$69,$14,$6A,$00,$53,$52,$54 ; 92B2
        .byte   $00,$14,$14,$16,$00,$14,$14,$16 ; 92BA
        .byte   $00,$32,$32,$32,$32,$32,$32,$32 ; 92C2
; 16 bytes — 8 B vertical + 8 B horizontal scroll-boundary flags
OvhdLvl2_ScrollData:
        .byte   $FF,$C0,$30,$FF,$F8,$FC,$FC,$FC ; 92CA
        .byte   $A8,$A8,$B8,$FE,$FE,$FE,$FE,$FE ; 92D2
; Tile attribute table – bits: 0-1=palette 2=walk-behind 3=Tunnel(→Tank) 4=damage 7=solid 
; 3+7=Doorway 6+7=destroyable
OvhdLvl2_TileAttrTable:
        .byte   $00,$01,$01,$01,$01,$01,$01,$01 ; 92DA
        .byte   $02,$02,$01,$01,$03,$03,$03,$03 ; 92E2
        .byte   $03,$03,$03,$03,$82,$82,$82,$82 ; 92EA
        .byte   $82,$82,$82,$82,$82,$82,$82,$82 ; 92F2
        .byte   $80,$80,$80,$80,$80,$81,$81,$86 ; 92FA
        .byte   $86,$86,$86,$86,$87,$87,$87,$87 ; 9302
        .byte   $86,$86,$06,$06,$06,$06,$06,$07 ; 930A
        .byte   $07,$07,$07,$06,$06,$C2,$10,$10 ; 9312
        .byte   $10,$10,$09,$89,$89,$8E,$8E,$8F ; 931A
        .byte   $8F,$8F,$8F                     ; 9322
; ----------------------------------------------------------------------------
OvhdLvl6_MapPointers:
        .addr   OvhdLvl6_BgPalette              ; 9325
        .addr   OvhdLvl6_TileAttrTable          ; 9327
        .addr   OvhdLvl6_TileDescTable          ; 9329
        .addr   OvhdLvl6_StructureDescTable     ; 932B
        .addr   OvhdLvl6_ChunkDescTable         ; 932D
        .addr   OvhdLvl6_MapData                ; 932F
; ----------------------------------------------------------------------------
; 4 BgPalette records — the level's 4 background sub-palettes × 4 NES colour indices.
OvhdLvl6_BgPalette:
        .byte   $0F,$1C,$2C,$3C ; 9331  Backdrop=$0F Colour1=$1C Colour2=$2C Colour3=$3C
        .byte   $0F,$0B,$1B,$2C ; 9335  Backdrop=$0F Colour1=$0B Colour2=$1B Colour3=$2C
        .byte   $0F,$02,$22,$31 ; 9339  Backdrop=$0F Colour1=$02 Colour2=$22 Colour3=$31
        .byte   $0F,$1C,$2C,$30 ; 933D  Backdrop=$0F Colour1=$1C Colour2=$2C Colour3=$30
; 76 TileDesc records — the level's Tile definitions. NOTE: OvhdLvl6_TileAttrTable is only 73
; bytes, so the last 3 record(s) here have no attribute byte — either spare slots or a label
; boundary that needs narrowing (unresolved).
OvhdLvl6_TileDescTable:
        .byte   $00,$00,$00,$00 ; 9341  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $47,$47,$47,$47 ; 9345  TL=$47 TR=$47 BL=$47 BR=$47
        .byte   $47,$4F,$47,$4F ; 9349  TL=$47 TR=$4F BL=$47 BR=$4F
        .byte   $4E,$4F,$4E,$4F ; 934D  TL=$4E TR=$4F BL=$4E BR=$4F
        .byte   $4A,$5A,$4B,$5B ; 9351  TL=$4A TR=$5A BL=$4B BR=$5B
        .byte   $4C,$5C,$4D,$5D ; 9355  TL=$4C TR=$5C BL=$4D BR=$5D
        .byte   $7D,$7D,$7D,$6C ; 9359  TL=$7D TR=$7D BL=$7D BR=$6C
        .byte   $7D,$7D,$7C,$7C ; 935D  TL=$7D TR=$7D BL=$7C BR=$7C
        .byte   $7D,$7D,$8C,$7D ; 9361  TL=$7D TR=$7D BL=$8C BR=$7D
        .byte   $7D,$6D,$7D,$6D ; 9365  TL=$7D TR=$6D BL=$7D BR=$6D
        .byte   $8D,$7D,$8D,$7D ; 9369  TL=$8D TR=$7D BL=$8D BR=$7D
        .byte   $7D,$6E,$7D,$7D ; 936D  TL=$7D TR=$6E BL=$7D BR=$7D
        .byte   $7E,$7E,$7D,$7D ; 9371  TL=$7E TR=$7E BL=$7D BR=$7D
        .byte   $8E,$7D,$7D,$7D ; 9375  TL=$8E TR=$7D BL=$7D BR=$7D
        .byte   $50,$60,$51,$61 ; 9379  TL=$50 TR=$60 BL=$51 BR=$61
        .byte   $52,$62,$53,$63 ; 937D  TL=$52 TR=$62 BL=$53 BR=$63
        .byte   $50,$62,$51,$63 ; 9381  TL=$50 TR=$62 BL=$51 BR=$63
        .byte   $50,$62,$51,$63 ; 9385  TL=$50 TR=$62 BL=$51 BR=$63
        .byte   $87,$44,$88,$43 ; 9389  TL=$87 TR=$44 BL=$88 BR=$43
        .byte   $43,$44,$44,$43 ; 938D  TL=$43 TR=$44 BL=$44 BR=$43
        .byte   $43,$45,$44,$46 ; 9391  TL=$43 TR=$45 BL=$44 BR=$46
        .byte   $54,$64,$55,$65 ; 9395  TL=$54 TR=$64 BL=$55 BR=$65
        .byte   $80,$90,$81,$91 ; 9399  TL=$80 TR=$90 BL=$81 BR=$91
        .byte   $82,$92,$83,$93 ; 939D  TL=$82 TR=$92 BL=$83 BR=$93
        .byte   $84,$94,$85,$95 ; 93A1  TL=$84 TR=$94 BL=$85 BR=$95
        .byte   $82,$92,$86,$96 ; 93A5  TL=$82 TR=$92 BL=$86 BR=$96
        .byte   $27,$2B,$28,$2C ; 93A9  TL=$27 TR=$2B BL=$28 BR=$2C
        .byte   $2B,$2B,$2C,$2C ; 93AD  TL=$2B TR=$2B BL=$2C BR=$2C
        .byte   $2B,$37,$2C,$38 ; 93B1  TL=$2B TR=$37 BL=$2C BR=$38
        .byte   $2B,$33,$2C,$34 ; 93B5  TL=$2B TR=$33 BL=$2C BR=$34
        .byte   $29,$3B,$2A,$3C ; 93B9  TL=$29 TR=$3B BL=$2A BR=$3C
        .byte   $3B,$3B,$3C,$3C ; 93BD  TL=$3B TR=$3B BL=$3C BR=$3C
        .byte   $3B,$39,$3C,$3A ; 93C1  TL=$3B TR=$39 BL=$3C BR=$3A
        .byte   $3B,$35,$3C,$36 ; 93C5  TL=$3B TR=$35 BL=$3C BR=$36
        .byte   $0B,$1B,$0C,$1C ; 93C9  TL=$0B TR=$1B BL=$0C BR=$1C
        .byte   $0C,$1C,$0C,$1C ; 93CD  TL=$0C TR=$1C BL=$0C BR=$1C
        .byte   $0C,$1C,$0D,$1D ; 93D1  TL=$0C TR=$1C BL=$0D BR=$1D
        .byte   $0E,$1E,$0F,$1F ; 93D5  TL=$0E TR=$1E BL=$0F BR=$1F
        .byte   $74,$75,$75,$77 ; 93D9  TL=$74 TR=$75 BL=$75 BR=$77
        .byte   $77,$70,$75,$71 ; 93DD  TL=$77 TR=$70 BL=$75 BR=$71
        .byte   $43,$44,$68,$00 ; 93E1  TL=$43 TR=$44 BL=$68 BR=$00
        .byte   $43,$76,$00,$78 ; 93E5  TL=$43 TR=$76 BL=$00 BR=$78
        .byte   $4A,$77,$4B,$75 ; 93E9  TL=$4A TR=$77 BL=$4B BR=$75
        .byte   $75,$77,$77,$75 ; 93ED  TL=$75 TR=$77 BL=$77 BR=$75
        .byte   $75,$5A,$77,$5B ; 93F1  TL=$75 TR=$5A BL=$77 BR=$5B
        .byte   $50,$60,$51,$61 ; 93F5  TL=$50 TR=$60 BL=$51 BR=$61
        .byte   $52,$62,$53,$63 ; 93F9  TL=$52 TR=$62 BL=$53 BR=$63
        .byte   $50,$62,$51,$63 ; 93FD  TL=$50 TR=$62 BL=$51 BR=$63
        .byte   $80,$90,$81,$91 ; 9401  TL=$80 TR=$90 BL=$81 BR=$91
        .byte   $27,$2B,$28,$2C ; 9405  TL=$27 TR=$2B BL=$28 BR=$2C
        .byte   $2B,$2B,$2C,$2C ; 9409  TL=$2B TR=$2B BL=$2C BR=$2C
        .byte   $2B,$37,$2C,$38 ; 940D  TL=$2B TR=$37 BL=$2C BR=$38
        .byte   $2B,$33,$2C,$34 ; 9411  TL=$2B TR=$33 BL=$2C BR=$34
        .byte   $2D,$3D,$0C,$1C ; 9415  TL=$2D TR=$3D BL=$0C BR=$1C
        .byte   $74,$75,$75,$77 ; 9419  TL=$74 TR=$75 BL=$75 BR=$77
        .byte   $77,$70,$75,$71 ; 941D  TL=$77 TR=$70 BL=$75 BR=$71
        .byte   $48,$48,$49,$49 ; 9421  TL=$48 TR=$48 BL=$49 BR=$49
        .byte   $49,$49,$49,$49 ; 9425  TL=$49 TR=$49 BL=$49 BR=$49
        .byte   $59,$59,$58,$58 ; 9429  TL=$59 TR=$59 BL=$58 BR=$58
        .byte   $58,$58,$58,$58 ; 942D  TL=$58 TR=$58 BL=$58 BR=$58
        .byte   $6A,$7A,$6B,$7B ; 9431  TL=$6A TR=$7A BL=$6B BR=$7B
        .byte   $72,$73,$73,$72 ; 9435  TL=$72 TR=$73 BL=$73 BR=$72
        .byte   $72,$73,$69,$79 ; 9439  TL=$72 TR=$73 BL=$69 BR=$79
        .byte   $72,$73,$73,$72 ; 943D  TL=$72 TR=$73 BL=$73 BR=$72
        .byte   $72,$73,$69,$79 ; 9441  TL=$72 TR=$73 BL=$69 BR=$79
        .byte   $50,$60,$51,$61 ; 9445  TL=$50 TR=$60 BL=$51 BR=$61
        .byte   $52,$62,$53,$63 ; 9449  TL=$52 TR=$62 BL=$53 BR=$63
        .byte   $50,$62,$51,$63 ; 944D  TL=$50 TR=$62 BL=$51 BR=$63
        .byte   $74,$75,$75,$77 ; 9451  TL=$74 TR=$75 BL=$75 BR=$77
        .byte   $77,$70,$75,$71 ; 9455  TL=$77 TR=$70 BL=$75 BR=$71
        .byte   $78,$00,$68,$32 ; 9459  TL=$78 TR=$00 BL=$68 BR=$32
        .byte   $00,$68,$42,$78 ; 945D  TL=$00 TR=$68 BL=$42 BR=$78
        .byte   $6F,$7F,$00,$00 ; 9461  TL=$6F TR=$7F BL=$00 BR=$00
        .byte   $00,$00,$00,$00 ; 9465  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$00,$00,$00 ; 9469  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$00,$00,$00 ; 946D  TL=$00 TR=$00 BL=$00 BR=$00
; 112 StructureDesc records — the level's Structure definitions, each a 2×2 quad of Tiles.
OvhdLvl6_StructureDescTable:
        .byte   $0E,$0F,$10,$10 ; 9471  TL=$0E TR=$0F BL=$10 BR=$10
        .byte   $12,$13,$12,$13 ; 9475  TL=$12 TR=$13 BL=$12 BR=$13
        .byte   $13,$13,$13,$13 ; 9479  TL=$13 TR=$13 BL=$13 BR=$13
        .byte   $13,$14,$13,$15 ; 947D  TL=$13 TR=$14 BL=$13 BR=$15
        .byte   $00,$00,$00,$00 ; 9481  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $01,$01,$01,$01 ; 9485  TL=$01 TR=$01 BL=$01 BR=$01
        .byte   $30,$30,$30,$30 ; 9489  TL=$30 TR=$30 BL=$30 BR=$30
        .byte   $01,$03,$01,$03 ; 948D  TL=$01 TR=$03 BL=$01 BR=$03
        .byte   $17,$17,$18,$18 ; 9491  TL=$17 TR=$17 BL=$18 BR=$18
        .byte   $0E,$0F,$2A,$2B ; 9495  TL=$0E TR=$0F BL=$2A BR=$2B
        .byte   $0E,$0F,$2B,$2C ; 9499  TL=$0E TR=$0F BL=$2B BR=$2C
        .byte   $11,$11,$11,$01 ; 949D  TL=$11 TR=$11 BL=$11 BR=$01
        .byte   $11,$11,$01,$01 ; 94A1  TL=$11 TR=$11 BL=$01 BR=$01
        .byte   $11,$01,$11,$11 ; 94A5  TL=$11 TR=$01 BL=$11 BR=$11
        .byte   $01,$01,$11,$11 ; 94A9  TL=$01 TR=$01 BL=$11 BR=$11
        .byte   $01,$01,$01,$06 ; 94AD  TL=$01 TR=$01 BL=$01 BR=$06
        .byte   $01,$01,$07,$08 ; 94B1  TL=$01 TR=$01 BL=$07 BR=$08
        .byte   $01,$09,$01,$0B ; 94B5  TL=$01 TR=$09 BL=$01 BR=$0B
        .byte   $48,$0A,$0C,$0D ; 94B9  TL=$48 TR=$0A BL=$0C BR=$0D
        .byte   $38,$38,$39,$39 ; 94BD  TL=$38 TR=$38 BL=$39 BR=$39
        .byte   $39,$39,$39,$39 ; 94C1  TL=$39 TR=$39 BL=$39 BR=$39
        .byte   $38,$3A,$39,$3B ; 94C5  TL=$38 TR=$3A BL=$39 BR=$3B
        .byte   $39,$3B,$39,$3B ; 94C9  TL=$39 TR=$3B BL=$39 BR=$3B
        .byte   $01,$03,$01,$05 ; 94CD  TL=$01 TR=$03 BL=$01 BR=$05
        .byte   $01,$05,$01,$03 ; 94D1  TL=$01 TR=$05 BL=$01 BR=$03
        .byte   $2A,$2B,$43,$10 ; 94D5  TL=$2A TR=$2B BL=$43 BR=$10
        .byte   $2B,$2C,$10,$43 ; 94D9  TL=$2B TR=$2C BL=$10 BR=$43
        .byte   $41,$0F,$10,$10 ; 94DD  TL=$41 TR=$0F BL=$10 BR=$10
        .byte   $0E,$42,$10,$10 ; 94E1  TL=$0E TR=$42 BL=$10 BR=$10
        .byte   $01,$01,$04,$01 ; 94E5  TL=$01 TR=$01 BL=$04 BR=$01
        .byte   $04,$01,$01,$01 ; 94E9  TL=$04 TR=$01 BL=$01 BR=$01
        .byte   $11,$01,$11,$01 ; 94ED  TL=$11 TR=$01 BL=$11 BR=$01
        .byte   $01,$11,$01,$11 ; 94F1  TL=$01 TR=$11 BL=$01 BR=$11
        .byte   $01,$11,$11,$11 ; 94F5  TL=$01 TR=$11 BL=$11 BR=$11
        .byte   $2F,$2F,$2D,$2E ; 94F9  TL=$2F TR=$2F BL=$2D BR=$2E
        .byte   $11,$11,$11,$11 ; 94FD  TL=$11 TR=$11 BL=$11 BR=$11
        .byte   $01,$03,$11,$11 ; 9501  TL=$01 TR=$03 BL=$11 BR=$11
        .byte   $3D,$3D,$3D,$3D ; 9505  TL=$3D TR=$3D BL=$3D BR=$3D
        .byte   $3D,$3D,$3E,$3E ; 9509  TL=$3D TR=$3D BL=$3E BR=$3E
        .byte   $04,$01,$38,$38 ; 950D  TL=$04 TR=$01 BL=$38 BR=$38
        .byte   $3D,$3F,$3D,$3F ; 9511  TL=$3D TR=$3F BL=$3D BR=$3F
        .byte   $3D,$3F,$3E,$40 ; 9515  TL=$3D TR=$3F BL=$3E BR=$40
        .byte   $01,$06,$01,$09 ; 9519  TL=$01 TR=$06 BL=$01 BR=$09
        .byte   $07,$08,$48,$0A ; 951D  TL=$07 TR=$08 BL=$48 BR=$0A
        .byte   $01,$0B,$01,$01 ; 9521  TL=$01 TR=$0B BL=$01 BR=$01
        .byte   $0C,$0D,$01,$01 ; 9525  TL=$0C TR=$0D BL=$01 BR=$01
        .byte   $2F,$36,$2F,$36 ; 9529  TL=$2F TR=$36 BL=$2F BR=$36
        .byte   $37,$2F,$37,$2F ; 952D  TL=$37 TR=$2F BL=$37 BR=$2F
        .byte   $10,$44,$10,$26 ; 9531  TL=$10 TR=$44 BL=$10 BR=$26
        .byte   $45,$10,$27,$10 ; 9535  TL=$45 TR=$10 BL=$27 BR=$10
        .byte   $13,$28,$13,$46 ; 9539  TL=$13 TR=$28 BL=$13 BR=$46
        .byte   $29,$13,$47,$13 ; 953D  TL=$29 TR=$13 BL=$47 BR=$13
        .byte   $3D,$3D,$38,$38 ; 9541  TL=$3D TR=$3D BL=$38 BR=$38
        .byte   $3D,$3D,$38,$3D ; 9545  TL=$3D TR=$3D BL=$38 BR=$3D
        .byte   $11,$11,$11,$3D ; 9549  TL=$11 TR=$11 BL=$11 BR=$3D
        .byte   $11,$11,$3D,$3D ; 954D  TL=$11 TR=$11 BL=$3D BR=$3D
        .byte   $11,$3D,$11,$3D ; 9551  TL=$11 TR=$3D BL=$11 BR=$3D
        .byte   $01,$04,$01,$01 ; 9555  TL=$01 TR=$04 BL=$01 BR=$01
        .byte   $39,$06,$39,$09 ; 9559  TL=$39 TR=$06 BL=$39 BR=$09
        .byte   $39,$0B,$3D,$3D ; 955D  TL=$39 TR=$0B BL=$3D BR=$3D
        .byte   $0C,$0D,$3D,$3D ; 9561  TL=$0C TR=$0D BL=$3D BR=$3D
        .byte   $39,$3D,$39,$3D ; 9565  TL=$39 TR=$3D BL=$39 BR=$3D
        .byte   $39,$3D,$3D,$3D ; 9569  TL=$39 TR=$3D BL=$3D BR=$3D
        .byte   $11,$3D,$11,$11 ; 956D  TL=$11 TR=$3D BL=$11 BR=$11
        .byte   $3D,$3D,$11,$11 ; 9571  TL=$3D TR=$3D BL=$11 BR=$11
        .byte   $3E,$3E,$38,$38 ; 9575  TL=$3E TR=$3E BL=$38 BR=$38
        .byte   $3E,$3D,$38,$3D ; 9579  TL=$3E TR=$3D BL=$38 BR=$3D
        .byte   $39,$3D,$39,$3E ; 957D  TL=$39 TR=$3D BL=$39 BR=$3E
        .byte   $3D,$01,$3E,$01 ; 9581  TL=$3D TR=$01 BL=$3E BR=$01
        .byte   $11,$3D,$3D,$3D ; 9585  TL=$11 TR=$3D BL=$3D BR=$3D
        .byte   $39,$01,$39,$01 ; 9589  TL=$39 TR=$01 BL=$39 BR=$01
        .byte   $01,$38,$01,$39 ; 958D  TL=$01 TR=$38 BL=$01 BR=$39
        .byte   $3D,$3E,$3D,$38 ; 9591  TL=$3D TR=$3E BL=$3D BR=$38
        .byte   $3E,$40,$38,$3A ; 9595  TL=$3E TR=$40 BL=$38 BR=$3A
        .byte   $3D,$39,$3D,$39 ; 9599  TL=$3D TR=$39 BL=$3D BR=$39
        .byte   $3C,$3C,$3C,$3C ; 959D  TL=$3C TR=$3C BL=$3C BR=$3C
        .byte   $11,$3C,$11,$3C ; 95A1  TL=$11 TR=$3C BL=$11 BR=$3C
        .byte   $39,$39,$3D,$3D ; 95A5  TL=$39 TR=$39 BL=$3D BR=$3D
        .byte   $39,$3B,$3D,$3F ; 95A9  TL=$39 TR=$3B BL=$3D BR=$3F
        .byte   $3C,$01,$3C,$01 ; 95AD  TL=$3C TR=$01 BL=$3C BR=$01
        .byte   $11,$11,$3C,$3C ; 95B1  TL=$11 TR=$11 BL=$3C BR=$3C
        .byte   $11,$3C,$3C,$3C ; 95B5  TL=$11 TR=$3C BL=$3C BR=$3C
        .byte   $3D,$3F,$11,$11 ; 95B9  TL=$3D TR=$3F BL=$11 BR=$11
        .byte   $11,$11,$01,$11 ; 95BD  TL=$11 TR=$11 BL=$01 BR=$11
        .byte   $2F,$10,$2D,$0F ; 95C1  TL=$2F TR=$10 BL=$2D BR=$0F
        .byte   $01,$35,$02,$23 ; 95C5  TL=$01 TR=$35 BL=$02 BR=$23
        .byte   $35,$01,$23,$01 ; 95C9  TL=$35 TR=$01 BL=$23 BR=$01
        .byte   $02,$23,$02,$23 ; 95CD  TL=$02 TR=$23 BL=$02 BR=$23
        .byte   $23,$01,$23,$01 ; 95D1  TL=$23 TR=$01 BL=$23 BR=$01
        .byte   $30,$30,$16,$16 ; 95D5  TL=$30 TR=$30 BL=$16 BR=$16
        .byte   $19,$19,$01,$01 ; 95D9  TL=$19 TR=$19 BL=$01 BR=$01
        .byte   $23,$01,$24,$01 ; 95DD  TL=$23 TR=$01 BL=$24 BR=$01
        .byte   $01,$01,$01,$02 ; 95E1  TL=$01 TR=$01 BL=$01 BR=$02
        .byte   $01,$02,$01,$01 ; 95E5  TL=$01 TR=$02 BL=$01 BR=$01
        .byte   $31,$32,$1A,$1B ; 95E9  TL=$31 TR=$32 BL=$1A BR=$1B
        .byte   $32,$32,$1B,$1B ; 95ED  TL=$32 TR=$32 BL=$1B BR=$1B
        .byte   $1E,$1F,$01,$01 ; 95F1  TL=$1E TR=$1F BL=$01 BR=$01
        .byte   $1F,$1F,$01,$01 ; 95F5  TL=$1F TR=$1F BL=$01 BR=$01
        .byte   $32,$34,$1B,$1D ; 95F9  TL=$32 TR=$34 BL=$1B BR=$1D
        .byte   $1F,$21,$01,$03 ; 95FD  TL=$1F TR=$21 BL=$01 BR=$03
        .byte   $19,$19,$01,$03 ; 9601  TL=$19 TR=$19 BL=$01 BR=$03
        .byte   $33,$24,$1B,$1C ; 9605  TL=$33 TR=$24 BL=$1B BR=$1C
        .byte   $1A,$32,$22,$1A ; 9609  TL=$1A TR=$32 BL=$22 BR=$1A
        .byte   $21,$22,$02,$23 ; 960D  TL=$21 TR=$22 BL=$02 BR=$23
        .byte   $23,$1E,$23,$01 ; 9611  TL=$23 TR=$1E BL=$23 BR=$01
        .byte   $32,$33,$1B,$1C ; 9615  TL=$32 TR=$33 BL=$1B BR=$1C
        .byte   $1F,$20,$01,$01 ; 9619  TL=$1F TR=$20 BL=$01 BR=$01
        .byte   $02,$24,$02,$25 ; 961D  TL=$02 TR=$24 BL=$02 BR=$25
        .byte   $24,$01,$25,$01 ; 9621  TL=$24 TR=$01 BL=$25 BR=$01
        .byte   $00,$00,$00,$00 ; 9625  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$00,$00,$00 ; 9629  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$00,$00,$00 ; 962D  TL=$00 TR=$00 BL=$00 BR=$00
; 120 ChunkDesc records — the level's Chunk definitions, each a 2×2 quad of Structures. These are
; the indices OvhdLvl6_MapData's grid holds.
OvhdLvl6_ChunkDescTable:
        .byte   $00,$00,$00,$00 ; 9631  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$00,$01,$02 ; 9635  TL=$00 TR=$00 BL=$01 BR=$02
        .byte   $00,$00,$02,$02 ; 9639  TL=$00 TR=$00 BL=$02 BR=$02
        .byte   $00,$00,$02,$03 ; 963D  TL=$00 TR=$00 BL=$02 BR=$03
        .byte   $04,$04,$04,$04 ; 9641  TL=$04 TR=$04 BL=$04 BR=$04
        .byte   $05,$06,$07,$08 ; 9645  TL=$05 TR=$06 BL=$07 BR=$08
        .byte   $05,$05,$05,$05 ; 9649  TL=$05 TR=$05 BL=$05 BR=$05
        .byte   $05,$07,$05,$07 ; 964D  TL=$05 TR=$07 BL=$05 BR=$07
        .byte   $00,$00,$09,$0A ; 9651  TL=$00 TR=$00 BL=$09 BR=$0A
        .byte   $0B,$0C,$0D,$0E ; 9655  TL=$0B TR=$0C BL=$0D BR=$0E
        .byte   $0F,$10,$11,$12 ; 9659  TL=$0F TR=$10 BL=$11 BR=$12
        .byte   $13,$13,$14,$14 ; 965D  TL=$13 TR=$13 BL=$14 BR=$14
        .byte   $13,$15,$14,$16 ; 9661  TL=$13 TR=$15 BL=$14 BR=$16
        .byte   $05,$17,$05,$18 ; 9665  TL=$05 TR=$17 BL=$05 BR=$18
        .byte   $19,$1A,$1B,$1C ; 9669  TL=$19 TR=$1A BL=$1B BR=$1C
        .byte   $1D,$05,$1E,$05 ; 966D  TL=$1D TR=$05 BL=$1E BR=$05
        .byte   $1F,$20,$0D,$21 ; 9671  TL=$1F TR=$20 BL=$0D BR=$21
        .byte   $14,$16,$14,$16 ; 9675  TL=$14 TR=$16 BL=$14 BR=$16
        .byte   $05,$05,$22,$22 ; 9679  TL=$05 TR=$05 BL=$22 BR=$22
        .byte   $05,$07,$22,$22 ; 967D  TL=$05 TR=$07 BL=$22 BR=$22
        .byte   $23,$23,$23,$23 ; 9681  TL=$23 TR=$23 BL=$23 BR=$23
        .byte   $05,$07,$0E,$24 ; 9685  TL=$05 TR=$07 BL=$0E BR=$24
        .byte   $14,$14,$14,$14 ; 9689  TL=$14 TR=$14 BL=$14 BR=$14
        .byte   $06,$06,$08,$08 ; 968D  TL=$06 TR=$06 BL=$08 BR=$08
        .byte   $05,$05,$0E,$0E ; 9691  TL=$05 TR=$05 BL=$0E BR=$0E
        .byte   $25,$25,$26,$26 ; 9695  TL=$25 TR=$25 BL=$26 BR=$26
        .byte   $05,$26,$26,$13 ; 9699  TL=$05 TR=$26 BL=$26 BR=$13
        .byte   $05,$26,$13,$05 ; 969D  TL=$05 TR=$26 BL=$13 BR=$05
        .byte   $1D,$23,$27,$23 ; 96A1  TL=$1D TR=$23 BL=$27 BR=$23
        .byte   $14,$26,$14,$05 ; 96A5  TL=$14 TR=$26 BL=$14 BR=$05
        .byte   $25,$28,$26,$29 ; 96A9  TL=$25 TR=$28 BL=$26 BR=$29
        .byte   $14,$05,$14,$26 ; 96AD  TL=$14 TR=$05 BL=$14 BR=$26
        .byte   $14,$16,$05,$16 ; 96B1  TL=$14 TR=$16 BL=$05 BR=$16
        .byte   $14,$05,$14,$05 ; 96B5  TL=$14 TR=$05 BL=$14 BR=$05
        .byte   $14,$13,$26,$14 ; 96B9  TL=$14 TR=$13 BL=$26 BR=$14
        .byte   $26,$16,$05,$16 ; 96BD  TL=$26 TR=$16 BL=$05 BR=$16
        .byte   $05,$20,$05,$20 ; 96C1  TL=$05 TR=$20 BL=$05 BR=$20
        .byte   $25,$25,$25,$25 ; 96C5  TL=$25 TR=$25 BL=$25 BR=$25
        .byte   $05,$14,$05,$14 ; 96C9  TL=$05 TR=$14 BL=$05 BR=$14
        .byte   $2A,$2B,$2C,$2D ; 96CD  TL=$2A TR=$2B BL=$2C BR=$2D
        .byte   $1D,$05,$1E,$26 ; 96D1  TL=$1D TR=$05 BL=$1E BR=$26
        .byte   $26,$05,$05,$26 ; 96D5  TL=$26 TR=$05 BL=$05 BR=$26
        .byte   $26,$07,$05,$29 ; 96D9  TL=$26 TR=$07 BL=$05 BR=$29
        .byte   $26,$05,$22,$22 ; 96DD  TL=$26 TR=$05 BL=$22 BR=$22
        .byte   $26,$07,$22,$22 ; 96E1  TL=$26 TR=$07 BL=$22 BR=$22
        .byte   $05,$05,$2E,$2F ; 96E5  TL=$05 TR=$05 BL=$2E BR=$2F
        .byte   $30,$31,$32,$33 ; 96E9  TL=$30 TR=$31 BL=$32 BR=$33
        .byte   $25,$25,$34,$34 ; 96ED  TL=$25 TR=$25 BL=$34 BR=$34
        .byte   $25,$25,$35,$25 ; 96F1  TL=$25 TR=$25 BL=$35 BR=$25
        .byte   $25,$28,$25,$28 ; 96F5  TL=$25 TR=$28 BL=$25 BR=$28
        .byte   $36,$37,$38,$25 ; 96F9  TL=$36 TR=$37 BL=$38 BR=$25
        .byte   $37,$37,$25,$25 ; 96FD  TL=$37 TR=$37 BL=$25 BR=$25
        .byte   $38,$25,$38,$25 ; 9701  TL=$38 TR=$25 BL=$38 BR=$25
        .byte   $05,$13,$26,$05 ; 9705  TL=$05 TR=$13 BL=$26 BR=$05
        .byte   $39,$1E,$26,$05 ; 9709  TL=$39 TR=$1E BL=$26 BR=$05
        .byte   $05,$13,$26,$14 ; 970D  TL=$05 TR=$13 BL=$26 BR=$14
        .byte   $05,$13,$26,$07 ; 9711  TL=$05 TR=$13 BL=$26 BR=$07
        .byte   $3A,$2B,$3B,$3C ; 9715  TL=$3A TR=$2B BL=$3B BR=$3C
        .byte   $3D,$25,$3E,$25 ; 9719  TL=$3D TR=$25 BL=$3E BR=$25
        .byte   $38,$25,$3F,$40 ; 971D  TL=$38 TR=$25 BL=$3F BR=$40
        .byte   $41,$42,$14,$3D ; 9721  TL=$41 TR=$42 BL=$14 BR=$3D
        .byte   $05,$14,$26,$05 ; 9725  TL=$05 TR=$14 BL=$26 BR=$05
        .byte   $13,$13,$43,$44 ; 9729  TL=$13 TR=$13 BL=$43 BR=$44
        .byte   $38,$25,$45,$25 ; 972D  TL=$38 TR=$25 BL=$45 BR=$25
        .byte   $13,$13,$22,$22 ; 9731  TL=$13 TR=$13 BL=$22 BR=$22
        .byte   $13,$14,$22,$22 ; 9735  TL=$13 TR=$14 BL=$22 BR=$22
        .byte   $46,$47,$2E,$2F ; 9739  TL=$46 TR=$47 BL=$2E BR=$2F
        .byte   $48,$49,$4A,$16 ; 973D  TL=$48 TR=$49 BL=$4A BR=$16
        .byte   $4B,$05,$4B,$4B ; 9741  TL=$4B TR=$05 BL=$4B BR=$4B
        .byte   $4B,$4B,$4B,$4B ; 9745  TL=$4B TR=$4B BL=$4B BR=$4B
        .byte   $4B,$4B,$4B,$05 ; 9749  TL=$4B TR=$4B BL=$4B BR=$05
        .byte   $39,$1E,$4B,$4B ; 974D  TL=$39 TR=$1E BL=$4B BR=$4B
        .byte   $4C,$4B,$4C,$4B ; 9751  TL=$4C TR=$4B BL=$4C BR=$4B
        .byte   $41,$41,$4D,$4D ; 9755  TL=$41 TR=$41 BL=$4D BR=$4D
        .byte   $41,$49,$4D,$4E ; 9759  TL=$41 TR=$49 BL=$4D BR=$4E
        .byte   $4B,$4B,$22,$22 ; 975D  TL=$4B TR=$4B BL=$22 BR=$22
        .byte   $4F,$20,$2E,$2F ; 9761  TL=$4F TR=$20 BL=$2E BR=$2F
        .byte   $50,$50,$22,$22 ; 9765  TL=$50 TR=$50 BL=$22 BR=$22
        .byte   $51,$4B,$22,$22 ; 9769  TL=$51 TR=$4B BL=$22 BR=$22
        .byte   $25,$26,$25,$13 ; 976D  TL=$25 TR=$26 BL=$25 BR=$13
        .byte   $26,$26,$13,$13 ; 9771  TL=$26 TR=$26 BL=$13 BR=$13
        .byte   $25,$26,$26,$13 ; 9775  TL=$25 TR=$26 BL=$26 BR=$13
        .byte   $13,$26,$25,$13 ; 9779  TL=$13 TR=$26 BL=$25 BR=$13
        .byte   $39,$1E,$05,$05 ; 977D  TL=$39 TR=$1E BL=$05 BR=$05
        .byte   $05,$05,$05,$13 ; 9781  TL=$05 TR=$05 BL=$05 BR=$13
        .byte   $25,$25,$40,$40 ; 9785  TL=$25 TR=$25 BL=$40 BR=$40
        .byte   $25,$28,$40,$52 ; 9789  TL=$25 TR=$28 BL=$40 BR=$52
        .byte   $13,$26,$26,$13 ; 978D  TL=$13 TR=$26 BL=$26 BR=$13
        .byte   $0C,$0C,$22,$22 ; 9791  TL=$0C TR=$0C BL=$22 BR=$22
        .byte   $05,$0C,$2E,$2F ; 9795  TL=$05 TR=$0C BL=$2E BR=$2F
        .byte   $0C,$53,$22,$54 ; 9799  TL=$0C TR=$53 BL=$22 BR=$54
        .byte   $05,$05,$55,$56 ; 979D  TL=$05 TR=$05 BL=$55 BR=$56
        .byte   $05,$05,$13,$05 ; 97A1  TL=$05 TR=$05 BL=$13 BR=$05
        .byte   $39,$1E,$05,$13 ; 97A5  TL=$39 TR=$1E BL=$05 BR=$13
        .byte   $57,$58,$57,$58 ; 97A9  TL=$57 TR=$58 BL=$57 BR=$58
        .byte   $59,$59,$5A,$5A ; 97AD  TL=$59 TR=$59 BL=$5A BR=$5A
        .byte   $1D,$05,$1E,$13 ; 97B1  TL=$1D TR=$05 BL=$1E BR=$13
        .byte   $57,$58,$57,$5B ; 97B5  TL=$57 TR=$58 BL=$57 BR=$5B
        .byte   $05,$5C,$05,$5D ; 97B9  TL=$05 TR=$5C BL=$05 BR=$5D
        .byte   $5E,$5F,$60,$61 ; 97BD  TL=$5E TR=$5F BL=$60 BR=$61
        .byte   $5F,$62,$61,$63 ; 97C1  TL=$5F TR=$62 BL=$61 BR=$63
        .byte   $59,$59,$5A,$64 ; 97C5  TL=$59 TR=$59 BL=$5A BR=$64
        .byte   $5F,$5F,$61,$61 ; 97C9  TL=$5F TR=$5F BL=$61 BR=$61
        .byte   $65,$66,$67,$68 ; 97CD  TL=$65 TR=$66 BL=$67 BR=$68
        .byte   $14,$13,$05,$14 ; 97D1  TL=$14 TR=$13 BL=$05 BR=$14
        .byte   $05,$16,$05,$16 ; 97D5  TL=$05 TR=$16 BL=$05 BR=$16
        .byte   $5F,$69,$61,$6A ; 97D9  TL=$5F TR=$69 BL=$61 BR=$6A
        .byte   $14,$05,$14,$13 ; 97DD  TL=$14 TR=$05 BL=$14 BR=$13
        .byte   $05,$14,$13,$14 ; 97E1  TL=$05 TR=$14 BL=$13 BR=$14
        .byte   $57,$58,$6B,$6C ; 97E5  TL=$57 TR=$58 BL=$6B BR=$6C
        .byte   $05,$05,$13,$13 ; 97E9  TL=$05 TR=$05 BL=$13 BR=$13
        .byte   $05,$16,$13,$16 ; 97ED  TL=$05 TR=$16 BL=$13 BR=$16
        .byte   $13,$05,$05,$13 ; 97F1  TL=$13 TR=$05 BL=$05 BR=$13
        .byte   $13,$17,$05,$18 ; 97F5  TL=$13 TR=$17 BL=$05 BR=$18
        .byte   $14,$14,$22,$22 ; 97F9  TL=$14 TR=$14 BL=$22 BR=$22
        .byte   $14,$16,$22,$22 ; 97FD  TL=$14 TR=$16 BL=$22 BR=$22
        .byte   $13,$05,$22,$22 ; 9801  TL=$13 TR=$05 BL=$22 BR=$22
        .byte   $13,$07,$22,$22 ; 9805  TL=$13 TR=$07 BL=$22 BR=$22
        .byte   $00,$00,$00,$00 ; 9809  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$00,$00,$00 ; 980D  TL=$00 TR=$00 BL=$00 BR=$00
; 32×32 chunk-index grid = 1024 bytes
OvhdLvl6_MapData:
        .byte   $00,$01,$02,$02,$02,$02,$02,$02 ; 9811
        .byte   $02,$02,$02,$03,$00,$01,$02,$03 ; 9819
        .byte   $00,$01,$02,$03,$00,$01,$02,$02 ; 9821
        .byte   $02,$02,$02,$03,$00,$04,$04,$04 ; 9829
        .byte   $00,$05,$06,$05,$06,$05,$06,$05 ; 9831
        .byte   $06,$05,$06,$07,$08,$06,$06,$07 ; 9839
        .byte   $00,$06,$09,$07,$00,$0A,$06,$06 ; 9841
        .byte   $06,$0B,$0B,$0C,$00,$04,$04,$04 ; 9849
        .byte   $00,$06,$05,$06,$05,$06,$05,$06 ; 9851
        .byte   $05,$06,$05,$0D,$0E,$0F,$10,$07 ; 9859
        .byte   $00,$06,$06,$07,$00,$06,$06,$0B ; 9861
        .byte   $06,$06,$06,$11,$00,$04,$04,$04 ; 9869
        .byte   $00,$05,$06,$05,$06,$05,$06,$05 ; 9871
        .byte   $06,$05,$06,$07,$00,$12,$12,$13 ; 9879
        .byte   $00,$06,$14,$15,$00,$0B,$0B,$16 ; 9881
        .byte   $0B,$0B,$06,$11,$00,$04,$04,$04 ; 9889
        .byte   $00,$06,$05,$17,$17,$17,$17,$17 ; 9891
        .byte   $17,$17,$17,$17,$00,$01,$02,$03 ; 9899
        .byte   $00,$18,$18,$07,$00,$16,$06,$19 ; 98A1
        .byte   $06,$06,$19,$11,$00,$04,$04,$04 ; 98A9
        .byte   $00,$05,$06,$05,$06,$05,$06,$05 ; 98B1
        .byte   $06,$05,$06,$07,$08,$1A,$1B,$0C ; 98B9
        .byte   $00,$06,$06,$07,$00,$16,$06,$0B ; 98C1
        .byte   $0B,$0B,$0B,$11,$00,$04,$04,$04 ; 98C9
        .byte   $00,$06,$05,$06,$05,$06,$05,$06 ; 98D1
        .byte   $05,$06,$05,$0D,$0E,$1C,$1D,$11 ; 98D9
        .byte   $00,$06,$14,$07,$00,$16,$19,$06 ; 98E1
        .byte   $19,$06,$06,$1E,$00,$04,$04,$04 ; 98E9
        .byte   $00,$17,$17,$17,$17,$17,$17,$17 ; 98F1
        .byte   $17,$17,$17,$17,$00,$1F,$1D,$20 ; 98F9
        .byte   $00,$06,$14,$07,$00,$16,$06,$0B ; 9901
        .byte   $06,$0B,$0B,$07,$00,$04,$04,$04 ; 9909
        .byte   $00,$06,$05,$06,$05,$06,$05,$06 ; 9911
        .byte   $05,$06,$05,$07,$00,$21,$22,$23 ; 9919
        .byte   $00,$06,$24,$07,$00,$16,$25,$16 ; 9921
        .byte   $06,$16,$06,$1E,$00,$04,$04,$04 ; 9929
        .byte   $00,$05,$06,$05,$06,$05,$06,$05 ; 9931
        .byte   $06,$05,$06,$07,$08,$1F,$26,$23 ; 9939
        .byte   $00,$14,$14,$07,$00,$16,$19,$16 ; 9941
        .byte   $19,$06,$06,$07,$00,$04,$04,$04 ; 9949
        .byte   $00,$27,$05,$06,$05,$06,$05,$06 ; 9951
        .byte   $05,$06,$05,$0D,$0E,$28,$29,$2A ; 9959
        .byte   $00,$06,$06,$07,$00,$16,$0B,$16 ; 9961
        .byte   $0B,$0B,$06,$07,$00,$04,$04,$04 ; 9969
        .byte   $00,$12,$12,$12,$12,$12,$12,$12 ; 9971
        .byte   $12,$12,$12,$13,$00,$2B,$2B,$2C ; 9979
        .byte   $00,$06,$14,$07,$00,$12,$2D,$12 ; 9981
        .byte   $12,$12,$12,$13,$00,$04,$04,$04 ; 9989
        .byte   $00,$01,$02,$02,$02,$02,$02,$03 ; 9991
        .byte   $00,$01,$02,$02,$02,$02,$02,$03 ; 9999
        .byte   $00,$14,$14,$07,$00,$01,$2E,$02 ; 99A1
        .byte   $02,$02,$02,$02,$02,$02,$02,$03 ; 99A9
        .byte   $00,$25,$2F,$30,$25,$25,$25,$31 ; 99B1
        .byte   $00,$32,$33,$34,$25,$25,$25,$31 ; 99B9
        .byte   $00,$06,$06,$07,$00,$35,$36,$35 ; 99C1
        .byte   $35,$35,$37,$35,$35,$35,$35,$38 ; 99C9
        .byte   $00,$25,$39,$3A,$25,$25,$25,$31 ; 99D1
        .byte   $00,$3B,$34,$34,$3C,$3C,$25,$31 ; 99D9
        .byte   $00,$06,$14,$14,$00,$35,$35,$35 ; 99E1
        .byte   $37,$35,$3D,$35,$37,$37,$3E,$38 ; 99E9
        .byte   $00,$25,$25,$25,$25,$25,$25,$31 ; 99F1
        .byte   $00,$3C,$3F,$3F,$3C,$3C,$25,$31 ; 99F9
        .byte   $00,$06,$06,$07,$00,$40,$40,$40 ; 9A01
        .byte   $41,$40,$40,$40,$41,$41,$42,$40 ; 9A09
        .byte   $00,$25,$25,$25,$25,$25,$25,$31 ; 9A11
        .byte   $00,$3C,$3C,$3C,$3C,$3C,$3C,$43 ; 9A19
        .byte   $00,$18,$14,$07,$00,$01,$02,$02 ; 9A21
        .byte   $02,$02,$02,$02,$02,$02,$2E,$03 ; 9A29
        .byte   $00,$25,$25,$25,$25,$25,$25,$31 ; 9A31
        .byte   $00,$3C,$3C,$3C,$3C,$3C,$3C,$43 ; 9A39
        .byte   $00,$06,$06,$07,$00,$44,$45,$45 ; 9A41
        .byte   $44,$44,$45,$44,$46,$45,$47,$48 ; 9A49
        .byte   $00,$25,$25,$25,$25,$25,$25,$31 ; 9A51
        .byte   $00,$25,$25,$25,$25,$25,$25,$31 ; 9A59
        .byte   $00,$06,$27,$07,$00,$45,$44,$46 ; 9A61
        .byte   $44,$46,$44,$44,$46,$44,$45,$48 ; 9A69
        .byte   $00,$49,$25,$49,$25,$49,$25,$4A ; 9A71
        .byte   $00,$25,$25,$25,$25,$25,$25,$31 ; 9A79
        .byte   $00,$12,$12,$13,$00,$4B,$4C,$4D ; 9A81
        .byte   $4D,$4D,$4D,$4D,$4D,$4D,$4D,$4E ; 9A89
        .byte   $00,$25,$25,$25,$25,$25,$25,$31 ; 9A91
        .byte   $00,$25,$25,$25,$25,$25,$25,$31 ; 9A99
        .byte   $00,$01,$02,$02,$02,$02,$2E,$02 ; 9AA1
        .byte   $02,$02,$02,$02,$02,$02,$02,$03 ; 9AA9
        .byte   $00,$25,$25,$25,$25,$25,$25,$31 ; 9AB1
        .byte   $02,$25,$25,$25,$25,$25,$25,$31 ; 9AB9
        .byte   $00,$4F,$50,$51,$4F,$52,$53,$54 ; 9AC1
        .byte   $54,$54,$54,$54,$54,$54,$54,$07 ; 9AC9
        .byte   $00,$55,$55,$55,$55,$55,$55,$55 ; 9AD1
        .byte   $55,$55,$55,$55,$55,$55,$55,$56 ; 9AD9
        .byte   $00,$51,$51,$57,$51,$51,$54,$54 ; 9AE1
        .byte   $54,$54,$54,$54,$54,$54,$54,$07 ; 9AE9
        .byte   $00,$12,$12,$12,$12,$12,$12,$12 ; 9AF1
        .byte   $12,$12,$12,$12,$12,$12,$12,$13 ; 9AF9
        .byte   $00,$58,$59,$58,$58,$5A,$12,$12 ; 9B01
        .byte   $12,$12,$12,$12,$12,$12,$2D,$13 ; 9B09
        .byte   $00,$01,$02,$02,$02,$02,$02,$03 ; 9B11
        .byte   $00,$01,$02,$03,$00,$01,$02,$03 ; 9B19
        .byte   $00,$01,$2E,$03,$00,$01,$02,$02 ; 9B21
        .byte   $02,$02,$02,$02,$02,$02,$2E,$03 ; 9B29
        .byte   $00,$06,$06,$06,$5B,$06,$06,$07 ; 9B31
        .byte   $08,$06,$06,$07,$00,$54,$5C,$0C ; 9B39
        .byte   $00,$06,$53,$07,$08,$54,$54,$54 ; 9B41
        .byte   $54,$54,$54,$54,$54,$54,$5D,$07 ; 9B49
        .byte   $00,$06,$06,$06,$5E,$06,$06,$0D ; 9B51
        .byte   $0E,$0F,$06,$07,$00,$5C,$21,$11 ; 9B59
        .byte   $00,$5F,$5F,$0D,$0E,$60,$54,$54 ; 9B61
        .byte   $54,$54,$54,$54,$54,$54,$54,$07 ; 9B69
        .byte   $00,$06,$06,$06,$61,$06,$06,$07 ; 9B71
        .byte   $00,$62,$63,$64,$00,$21,$21,$20 ; 9B79
        .byte   $00,$62,$5F,$65,$00,$12,$12,$12 ; 9B81
        .byte   $12,$12,$12,$12,$12,$12,$12,$13 ; 9B89
        .byte   $00,$62,$63,$66,$67,$66,$66,$64 ; 9B91
        .byte   $00,$06,$06,$07,$00,$21,$68,$69 ; 9B99
        .byte   $00,$5F,$5F,$07,$00,$01,$02,$03 ; 9BA1
        .byte   $00,$01,$02,$02,$02,$02,$02,$03 ; 9BA9
        .byte   $00,$06,$06,$06,$5E,$06,$06,$07 ; 9BB1
        .byte   $00,$63,$6A,$07,$08,$6B,$6C,$69 ; 9BB9
        .byte   $00,$62,$5F,$5F,$08,$06,$06,$07 ; 9BC1
        .byte   $00,$04,$04,$04,$04,$04,$04,$04 ; 9BC9
        .byte   $00,$27,$06,$06,$6D,$06,$06,$07 ; 9BD1
        .byte   $00,$06,$06,$0D,$0E,$60,$6E,$6F ; 9BD9
        .byte   $00,$06,$70,$71,$0E,$0F,$06,$07 ; 9BE1
        .byte   $00,$04,$04,$04,$04,$04,$04,$04 ; 9BE9
        .byte   $00,$12,$12,$12,$12,$12,$12,$13 ; 9BF1
        .byte   $00,$12,$12,$13,$00,$41,$72,$73 ; 9BF9
        .byte   $00,$12,$74,$75,$00,$12,$12,$13 ; 9C01
        .byte   $00,$04,$04,$04,$04,$04,$04,$04 ; 9C09
; 16 bytes — 8 B vertical + 8 B horizontal scroll-boundary flags
OvhdLvl6_ScrollData:
        .byte   $FF,$10,$00,$F7,$07,$0F,$FF,$07 ; 9C11
        .byte   $9D,$9D,$9D,$8C,$8C,$88,$BC,$BE ; 9C19
; Tile attribute table – bits: 0-1=palette 2=walk-behind 3=Tunnel(→Tank) 4=damage 7=solid 
; 3+7=Doorway 6+7=destroyable
OvhdLvl6_TileAttrTable:
        .byte   $00,$01,$01,$01,$01,$01,$03,$03 ; 9C21
        .byte   $03,$03,$03,$03,$03,$03,$87,$87 ; 9C29
        .byte   $87,$80,$80,$80,$80,$80,$83,$80 ; 9C31
        .byte   $80,$80,$80,$80,$80,$80,$80,$80 ; 9C39
        .byte   $80,$80,$80,$80,$80,$80,$86,$86 ; 9C41
        .byte   $82,$82,$86,$86,$86,$07,$07,$07 ; 9C49
        .byte   $07,$04,$04,$04,$04,$04,$06,$06 ; 9C51
        .byte   $11,$11,$11,$11,$C3,$14,$14,$15 ; 9C59
        .byte   $15,$8F,$8F,$8F,$8E,$8E,$8A,$8A ; 9C61
        .byte   $09                             ; 9C69
; ----------------------------------------------------------------------------
OvhdLvl8_MapPointers:
        .addr   OvhdLvl8_BgPalette              ; 9C6A
        .addr   OvhdLvl8_TileAttrTable          ; 9C6C
        .addr   OvhdLvl8_TileDescTable          ; 9C6E
        .addr   OvhdLvl8_StructureDescTable     ; 9C70
        .addr   OvhdLvl8_ChunkDescTable         ; 9C72
        .addr   OvhdLvl8_MapData                ; 9C74
; ----------------------------------------------------------------------------
; 4 BgPalette records — the level's 4 background sub-palettes × 4 NES colour indices.
OvhdLvl8_BgPalette:
        .byte   $0F,$09,$19,$04 ; 9C76  Backdrop=$0F Colour1=$09 Colour2=$19 Colour3=$04
        .byte   $0F,$07,$17,$36 ; 9C7A  Backdrop=$0F Colour1=$07 Colour2=$17 Colour3=$36
        .byte   $0F,$04,$19,$2A ; 9C7E  Backdrop=$0F Colour1=$04 Colour2=$19 Colour3=$2A
        .byte   $0F,$05,$23,$14 ; 9C82  Backdrop=$0F Colour1=$05 Colour2=$23 Colour3=$14
; 76 TileDesc records — the level's Tile definitions. NOTE: OvhdLvl8_TileAttrTable is only 75
; bytes, so the last 1 record(s) here have no attribute byte — either spare slots or a label
; boundary that needs narrowing (unresolved).
OvhdLvl8_TileDescTable:
        .byte   $00,$00,$00,$00 ; 9C86  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $62,$82,$93,$71 ; 9C8A  TL=$62 TR=$82 BL=$93 BR=$71
        .byte   $72,$82,$61,$71 ; 9C8E  TL=$72 TR=$82 BL=$61 BR=$71
        .byte   $73,$83,$81,$91 ; 9C92  TL=$73 TR=$83 BL=$81 BR=$91
        .byte   $92,$70,$93,$71 ; 9C96  TL=$92 TR=$70 BL=$93 BR=$71
        .byte   $60,$70,$61,$71 ; 9C9A  TL=$60 TR=$70 BL=$61 BR=$71
        .byte   $80,$90,$81,$91 ; 9C9E  TL=$80 TR=$90 BL=$81 BR=$91
        .byte   $4A,$49,$4A,$49 ; 9CA2  TL=$4A TR=$49 BL=$4A BR=$49
        .byte   $49,$5A,$49,$5A ; 9CA6  TL=$49 TR=$5A BL=$49 BR=$5A
        .byte   $4A,$59,$4A,$59 ; 9CAA  TL=$4A TR=$59 BL=$4A BR=$59
        .byte   $60,$70,$61,$69 ; 9CAE  TL=$60 TR=$70 BL=$61 BR=$69
        .byte   $60,$70,$89,$89 ; 9CB2  TL=$60 TR=$70 BL=$89 BR=$89
        .byte   $60,$70,$79,$71 ; 9CB6  TL=$60 TR=$70 BL=$79 BR=$71
        .byte   $60,$8A,$61,$8A ; 9CBA  TL=$60 TR=$8A BL=$61 BR=$8A
        .byte   $8A,$70,$8A,$71 ; 9CBE  TL=$8A TR=$70 BL=$8A BR=$71
        .byte   $60,$6A,$61,$71 ; 9CC2  TL=$60 TR=$6A BL=$61 BR=$71
        .byte   $89,$89,$61,$71 ; 9CC6  TL=$89 TR=$89 BL=$61 BR=$71
        .byte   $7A,$70,$61,$71 ; 9CCA  TL=$7A TR=$70 BL=$61 BR=$71
        .byte   $69,$89,$8A,$71 ; 9CCE  TL=$69 TR=$89 BL=$8A BR=$71
        .byte   $89,$79,$61,$8A ; 9CD2  TL=$89 TR=$79 BL=$61 BR=$8A
        .byte   $8A,$70,$6A,$89 ; 9CD6  TL=$8A TR=$70 BL=$6A BR=$89
        .byte   $60,$8A,$89,$7A ; 9CDA  TL=$60 TR=$8A BL=$89 BR=$7A
        .byte   $60,$70,$61,$7D ; 9CDE  TL=$60 TR=$70 BL=$61 BR=$7D
        .byte   $60,$70,$8D,$8D ; 9CE2  TL=$60 TR=$70 BL=$8D BR=$8D
        .byte   $60,$70,$9D,$71 ; 9CE6  TL=$60 TR=$70 BL=$9D BR=$71
        .byte   $60,$7E,$61,$7E ; 9CEA  TL=$60 TR=$7E BL=$61 BR=$7E
        .byte   $7E,$70,$7E,$71 ; 9CEE  TL=$7E TR=$70 BL=$7E BR=$71
        .byte   $60,$7F,$61,$71 ; 9CF2  TL=$60 TR=$7F BL=$61 BR=$71
        .byte   $8D,$8D,$61,$71 ; 9CF6  TL=$8D TR=$8D BL=$61 BR=$71
        .byte   $9E,$70,$61,$71 ; 9CFA  TL=$9E TR=$70 BL=$61 BR=$71
        .byte   $54,$56,$55,$57 ; 9CFE  TL=$54 TR=$56 BL=$55 BR=$57
        .byte   $46,$56,$47,$57 ; 9D02  TL=$46 TR=$56 BL=$47 BR=$57
        .byte   $54,$56,$64,$58 ; 9D06  TL=$54 TR=$56 BL=$64 BR=$58
        .byte   $46,$56,$48,$58 ; 9D0A  TL=$46 TR=$56 BL=$48 BR=$58
        .byte   $46,$74,$65,$75 ; 9D0E  TL=$46 TR=$74 BL=$65 BR=$75
        .byte   $66,$76,$67,$77 ; 9D12  TL=$66 TR=$76 BL=$67 BR=$77
        .byte   $4E,$5E,$4F,$00 ; 9D16  TL=$4E TR=$5E BL=$4F BR=$00
        .byte   $5E,$6E,$00,$4F ; 9D1A  TL=$5E TR=$6E BL=$00 BR=$4F
        .byte   $9B,$52,$9C,$53 ; 9D1E  TL=$9B TR=$52 BL=$9C BR=$53
        .byte   $42,$99,$43,$9A ; 9D22  TL=$42 TR=$99 BL=$43 BR=$9A
        .byte   $7B,$8B,$7C,$8C ; 9D26  TL=$7B TR=$8B BL=$7C BR=$8C
        .byte   $4C,$5C,$4D,$5D ; 9D2A  TL=$4C TR=$5C BL=$4D BR=$5D
        .byte   $5C,$6C,$5D,$6D ; 9D2E  TL=$5C TR=$6C BL=$5D BR=$6D
        .byte   $44,$52,$45,$53 ; 9D32  TL=$44 TR=$52 BL=$45 BR=$53
        .byte   $42,$52,$43,$53 ; 9D36  TL=$42 TR=$52 BL=$43 BR=$53
        .byte   $4B,$5B,$4C,$5C ; 9D3A  TL=$4B TR=$5B BL=$4C BR=$5C
        .byte   $5B,$5B,$5C,$5C ; 9D3E  TL=$5B TR=$5B BL=$5C BR=$5C
        .byte   $5B,$6B,$5C,$6C ; 9D42  TL=$5B TR=$6B BL=$5C BR=$6C
        .byte   $4C,$5C,$4D,$5D ; 9D46  TL=$4C TR=$5C BL=$4D BR=$5D
        .byte   $5C,$5C,$5D,$5D ; 9D4A  TL=$5C TR=$5C BL=$5D BR=$5D
        .byte   $5C,$6C,$5D,$6D ; 9D4E  TL=$5C TR=$6C BL=$5D BR=$6D
        .byte   $44,$52,$45,$53 ; 9D52  TL=$44 TR=$52 BL=$45 BR=$53
        .byte   $42,$52,$43,$53 ; 9D56  TL=$42 TR=$52 BL=$43 BR=$53
        .byte   $9B,$52,$9C,$53 ; 9D5A  TL=$9B TR=$52 BL=$9C BR=$53
        .byte   $42,$99,$43,$9A ; 9D5E  TL=$42 TR=$99 BL=$43 BR=$9A
        .byte   $4B,$5B,$4C,$5C ; 9D62  TL=$4B TR=$5B BL=$4C BR=$5C
        .byte   $5B,$6B,$5C,$6C ; 9D66  TL=$5B TR=$6B BL=$5C BR=$6C
        .byte   $4C,$5C,$4C,$5C ; 9D6A  TL=$4C TR=$5C BL=$4C BR=$5C
        .byte   $5C,$6C,$5C,$6C ; 9D6E  TL=$5C TR=$6C BL=$5C BR=$6C
        .byte   $0E,$1E,$0F,$1F ; 9D72  TL=$0E TR=$1E BL=$0F BR=$1F
        .byte   $63,$63,$63,$63 ; 9D76  TL=$63 TR=$63 BL=$63 BR=$63
        .byte   $86,$78,$88,$95 ; 9D7A  TL=$86 TR=$78 BL=$88 BR=$95
        .byte   $68,$78,$85,$95 ; 9D7E  TL=$68 TR=$78 BL=$85 BR=$95
        .byte   $68,$96,$85,$98 ; 9D82  TL=$68 TR=$96 BL=$85 BR=$98
        .byte   $87,$94,$88,$95 ; 9D86  TL=$87 TR=$94 BL=$88 BR=$95
        .byte   $84,$94,$85,$95 ; 9D8A  TL=$84 TR=$94 BL=$85 BR=$95
        .byte   $84,$97,$85,$98 ; 9D8E  TL=$84 TR=$97 BL=$85 BR=$98
        .byte   $8F,$9F,$8E,$8E ; 9D92  TL=$8F TR=$9F BL=$8E BR=$8E
        .byte   $4C,$5C,$4C,$5C ; 9D96  TL=$4C TR=$5C BL=$4C BR=$5C
        .byte   $5C,$6C,$5C,$6C ; 9D9A  TL=$5C TR=$6C BL=$5C BR=$6C
        .byte   $4F,$00,$4F,$5F ; 9D9E  TL=$4F TR=$00 BL=$4F BR=$5F
        .byte   $00,$4F,$6F,$4F ; 9DA2  TL=$00 TR=$4F BL=$6F BR=$4F
        .byte   $44,$52,$45,$53 ; 9DA6  TL=$44 TR=$52 BL=$45 BR=$53
        .byte   $42,$52,$43,$53 ; 9DAA  TL=$42 TR=$52 BL=$43 BR=$53
        .byte   $42,$52,$43,$53 ; 9DAE  TL=$42 TR=$52 BL=$43 BR=$53
        .byte   $00,$00,$00,$00 ; 9DB2  TL=$00 TR=$00 BL=$00 BR=$00
; 136 StructureDesc records — the level's Structure definitions, each a 2×2 quad of Tiles.
OvhdLvl8_StructureDescTable:
        .byte   $2C,$2C,$2C,$2C ; 9DB6  TL=$2C TR=$2C BL=$2C BR=$2C
        .byte   $2B,$2C,$2B,$2C ; 9DBA  TL=$2B TR=$2C BL=$2B BR=$2C
        .byte   $1E,$1F,$20,$21 ; 9DBE  TL=$1E TR=$1F BL=$20 BR=$21
        .byte   $1F,$1F,$21,$21 ; 9DC2  TL=$1F TR=$1F BL=$21 BR=$21
        .byte   $1F,$22,$21,$23 ; 9DC6  TL=$1F TR=$22 BL=$21 BR=$23
        .byte   $2C,$44,$2C,$29 ; 9DCA  TL=$2C TR=$44 BL=$2C BR=$29
        .byte   $45,$2C,$2A,$2C ; 9DCE  TL=$45 TR=$2C BL=$2A BR=$2C
        .byte   $1F,$24,$21,$46 ; 9DD2  TL=$1F TR=$24 BL=$21 BR=$46
        .byte   $25,$1F,$47,$21 ; 9DD6  TL=$25 TR=$1F BL=$47 BR=$21
        .byte   $01,$02,$04,$05 ; 9DDA  TL=$01 TR=$02 BL=$04 BR=$05
        .byte   $02,$02,$05,$05 ; 9DDE  TL=$02 TR=$02 BL=$05 BR=$05
        .byte   $04,$05,$04,$05 ; 9DE2  TL=$04 TR=$05 BL=$04 BR=$05
        .byte   $05,$05,$05,$05 ; 9DE6  TL=$05 TR=$05 BL=$05 BR=$05
        .byte   $02,$03,$05,$06 ; 9DEA  TL=$02 TR=$03 BL=$05 BR=$06
        .byte   $05,$06,$05,$06 ; 9DEE  TL=$05 TR=$06 BL=$05 BR=$06
        .byte   $02,$07,$05,$05 ; 9DF2  TL=$02 TR=$07 BL=$05 BR=$05
        .byte   $08,$02,$05,$05 ; 9DF6  TL=$08 TR=$02 BL=$05 BR=$05
        .byte   $00,$00,$00,$00 ; 9DFA  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $28,$28,$28,$3B ; 9DFE  TL=$28 TR=$28 BL=$28 BR=$3B
        .byte   $28,$28,$3B,$3B ; 9E02  TL=$28 TR=$28 BL=$3B BR=$3B
        .byte   $28,$3B,$28,$28 ; 9E06  TL=$28 TR=$3B BL=$28 BR=$28
        .byte   $3B,$3B,$28,$28 ; 9E0A  TL=$3B TR=$3B BL=$28 BR=$28
        .byte   $05,$05,$28,$28 ; 9E0E  TL=$05 TR=$05 BL=$28 BR=$28
        .byte   $05,$06,$28,$28 ; 9E12  TL=$05 TR=$06 BL=$28 BR=$28
        .byte   $28,$05,$28,$05 ; 9E16  TL=$28 TR=$05 BL=$28 BR=$05
        .byte   $05,$28,$05,$28 ; 9E1A  TL=$05 TR=$28 BL=$05 BR=$28
        .byte   $28,$28,$05,$05 ; 9E1E  TL=$28 TR=$28 BL=$05 BR=$05
        .byte   $34,$34,$34,$34 ; 9E22  TL=$34 TR=$34 BL=$34 BR=$34
        .byte   $34,$37,$34,$39 ; 9E26  TL=$34 TR=$37 BL=$34 BR=$39
        .byte   $38,$34,$3A,$34 ; 9E2A  TL=$38 TR=$34 BL=$3A BR=$34
        .byte   $28,$28,$04,$05 ; 9E2E  TL=$28 TR=$28 BL=$04 BR=$05
        .byte   $2B,$2C,$2D,$2E ; 9E32  TL=$2B TR=$2C BL=$2D BR=$2E
        .byte   $2C,$2C,$2E,$2F ; 9E36  TL=$2C TR=$2C BL=$2E BR=$2F
        .byte   $3B,$3B,$3B,$3B ; 9E3A  TL=$3B TR=$3B BL=$3B BR=$3B
        .byte   $28,$05,$05,$05 ; 9E3E  TL=$28 TR=$05 BL=$05 BR=$05
        .byte   $05,$28,$05,$05 ; 9E42  TL=$05 TR=$28 BL=$05 BR=$05
        .byte   $28,$28,$05,$09 ; 9E46  TL=$28 TR=$28 BL=$05 BR=$09
        .byte   $05,$09,$28,$28 ; 9E4A  TL=$05 TR=$09 BL=$28 BR=$28
        .byte   $30,$31,$48,$2C ; 9E4E  TL=$30 TR=$31 BL=$48 BR=$2C
        .byte   $31,$32,$2C,$49 ; 9E52  TL=$31 TR=$32 BL=$2C BR=$49
        .byte   $48,$2C,$2B,$2C ; 9E56  TL=$48 TR=$2C BL=$2B BR=$2C
        .byte   $2C,$49,$2C,$2C ; 9E5A  TL=$2C TR=$49 BL=$2C BR=$2C
        .byte   $04,$05,$07,$05 ; 9E5E  TL=$04 TR=$05 BL=$07 BR=$05
        .byte   $07,$05,$04,$05 ; 9E62  TL=$07 TR=$05 BL=$04 BR=$05
        .byte   $05,$06,$05,$09 ; 9E66  TL=$05 TR=$06 BL=$05 BR=$09
        .byte   $05,$09,$05,$06 ; 9E6A  TL=$05 TR=$09 BL=$05 BR=$06
        .byte   $3C,$3C,$3C,$3C ; 9E6E  TL=$3C TR=$3C BL=$3C BR=$3C
        .byte   $35,$34,$26,$4A ; 9E72  TL=$35 TR=$34 BL=$26 BR=$4A
        .byte   $34,$34,$4A,$4A ; 9E76  TL=$34 TR=$34 BL=$4A BR=$4A
        .byte   $20,$21,$01,$02 ; 9E7A  TL=$20 TR=$21 BL=$01 BR=$02
        .byte   $21,$21,$02,$02 ; 9E7E  TL=$21 TR=$21 BL=$02 BR=$02
        .byte   $05,$05,$04,$05 ; 9E82  TL=$05 TR=$05 BL=$04 BR=$05
        .byte   $04,$05,$05,$05 ; 9E86  TL=$04 TR=$05 BL=$05 BR=$05
        .byte   $05,$05,$05,$06 ; 9E8A  TL=$05 TR=$05 BL=$05 BR=$06
        .byte   $05,$06,$05,$05 ; 9E8E  TL=$05 TR=$06 BL=$05 BR=$05
        .byte   $33,$34,$26,$4A ; 9E92  TL=$33 TR=$34 BL=$26 BR=$4A
        .byte   $20,$21,$02,$02 ; 9E96  TL=$20 TR=$21 BL=$02 BR=$02
        .byte   $34,$36,$4A,$27 ; 9E9A  TL=$34 TR=$36 BL=$4A BR=$27
        .byte   $21,$22,$02,$03 ; 9E9E  TL=$21 TR=$22 BL=$02 BR=$03
        .byte   $16,$17,$19,$43 ; 9EA2  TL=$16 TR=$17 BL=$19 BR=$43
        .byte   $18,$3B,$1A,$3B ; 9EA6  TL=$18 TR=$3B BL=$1A BR=$3B
        .byte   $1B,$1C,$3B,$3B ; 9EAA  TL=$1B TR=$1C BL=$3B BR=$3B
        .byte   $1D,$3B,$3B,$3B ; 9EAE  TL=$1D TR=$3B BL=$3B BR=$3B
        .byte   $3E,$3E,$41,$41 ; 9EB2  TL=$3E TR=$3E BL=$41 BR=$41
        .byte   $41,$41,$41,$41 ; 9EB6  TL=$41 TR=$41 BL=$41 BR=$41
        .byte   $3E,$3F,$41,$42 ; 9EBA  TL=$3E TR=$3F BL=$41 BR=$42
        .byte   $41,$42,$41,$42 ; 9EBE  TL=$41 TR=$42 BL=$41 BR=$42
        .byte   $28,$02,$28,$05 ; 9EC2  TL=$28 TR=$02 BL=$28 BR=$05
        .byte   $02,$28,$05,$28 ; 9EC6  TL=$02 TR=$28 BL=$05 BR=$28
        .byte   $3D,$3E,$40,$41 ; 9ECA  TL=$3D TR=$3E BL=$40 BR=$41
        .byte   $40,$41,$40,$41 ; 9ECE  TL=$40 TR=$41 BL=$40 BR=$41
        .byte   $10,$10,$0B,$0B ; 9ED2  TL=$10 TR=$10 BL=$0B BR=$0B
        .byte   $11,$05,$0C,$05 ; 9ED6  TL=$11 TR=$05 BL=$0C BR=$05
        .byte   $04,$16,$04,$19 ; 9EDA  TL=$04 TR=$16 BL=$04 BR=$19
        .byte   $17,$18,$43,$1A ; 9EDE  TL=$17 TR=$18 BL=$43 BR=$1A
        .byte   $04,$1B,$04,$05 ; 9EE2  TL=$04 TR=$1B BL=$04 BR=$05
        .byte   $1C,$1D,$05,$05 ; 9EE6  TL=$1C TR=$1D BL=$05 BR=$05
        .byte   $40,$42,$40,$42 ; 9EEA  TL=$40 TR=$42 BL=$40 BR=$42
        .byte   $12,$10,$14,$0B ; 9EEE  TL=$12 TR=$10 BL=$14 BR=$0B
        .byte   $05,$0F,$05,$0A ; 9EF2  TL=$05 TR=$0F BL=$05 BR=$0A
        .byte   $28,$3C,$28,$3C ; 9EF6  TL=$28 TR=$3C BL=$28 BR=$3C
        .byte   $05,$3C,$05,$3C ; 9EFA  TL=$05 TR=$3C BL=$05 BR=$3C
        .byte   $10,$13,$0B,$15 ; 9EFE  TL=$10 TR=$13 BL=$0B BR=$15
        .byte   $3B,$3B,$3B,$05 ; 9F02  TL=$3B TR=$3B BL=$3B BR=$05
        .byte   $3B,$3B,$05,$3B ; 9F06  TL=$3B TR=$3B BL=$05 BR=$3B
        .byte   $3B,$05,$3B,$3B ; 9F0A  TL=$3B TR=$05 BL=$3B BR=$3B
        .byte   $05,$3B,$3B,$3B ; 9F0E  TL=$05 TR=$3B BL=$3B BR=$3B
        .byte   $4A,$34,$4A,$34 ; 9F12  TL=$4A TR=$34 BL=$4A BR=$34
        .byte   $34,$4A,$34,$4A ; 9F16  TL=$34 TR=$4A BL=$34 BR=$4A
        .byte   $02,$0D,$05,$0D ; 9F1A  TL=$02 TR=$0D BL=$05 BR=$0D
        .byte   $05,$0D,$05,$0D ; 9F1E  TL=$05 TR=$0D BL=$05 BR=$0D
        .byte   $0E,$02,$14,$0B ; 9F22  TL=$0E TR=$02 BL=$14 BR=$0B
        .byte   $02,$02,$0C,$05 ; 9F26  TL=$02 TR=$02 BL=$0C BR=$05
        .byte   $0E,$05,$14,$0B ; 9F2A  TL=$0E TR=$05 BL=$14 BR=$0B
        .byte   $05,$05,$0B,$0B ; 9F2E  TL=$05 TR=$05 BL=$0B BR=$0B
        .byte   $05,$05,$0C,$05 ; 9F32  TL=$05 TR=$05 BL=$0C BR=$05
        .byte   $02,$02,$28,$05 ; 9F36  TL=$02 TR=$02 BL=$28 BR=$05
        .byte   $04,$05,$28,$05 ; 9F3A  TL=$04 TR=$05 BL=$28 BR=$05
        .byte   $05,$05,$28,$05 ; 9F3E  TL=$05 TR=$05 BL=$28 BR=$05
        .byte   $02,$03,$28,$06 ; 9F42  TL=$02 TR=$03 BL=$28 BR=$06
        .byte   $07,$05,$0B,$0B ; 9F46  TL=$07 TR=$05 BL=$0B BR=$0B
        .byte   $05,$0F,$0B,$0B ; 9F4A  TL=$05 TR=$0F BL=$0B BR=$0B
        .byte   $10,$13,$0C,$0D ; 9F4E  TL=$10 TR=$13 BL=$0C BR=$0D
        .byte   $41,$41,$40,$41 ; 9F52  TL=$41 TR=$41 BL=$40 BR=$41
        .byte   $05,$06,$28,$06 ; 9F56  TL=$05 TR=$06 BL=$28 BR=$06
        .byte   $33,$34,$33,$34 ; 9F5A  TL=$33 TR=$34 BL=$33 BR=$34
        .byte   $05,$16,$05,$19 ; 9F5E  TL=$05 TR=$16 BL=$05 BR=$19
        .byte   $05,$1B,$05,$05 ; 9F62  TL=$05 TR=$1B BL=$05 BR=$05
        .byte   $05,$05,$05,$0A ; 9F66  TL=$05 TR=$05 BL=$05 BR=$0A
        .byte   $0E,$0F,$14,$0B ; 9F6A  TL=$0E TR=$0F BL=$14 BR=$0B
        .byte   $41,$41,$41,$42 ; 9F6E  TL=$41 TR=$41 BL=$41 BR=$42
        .byte   $12,$10,$0E,$0A ; 9F72  TL=$12 TR=$10 BL=$0E BR=$0A
        .byte   $11,$0D,$0B,$15 ; 9F76  TL=$11 TR=$0D BL=$0B BR=$15
        .byte   $0E,$05,$0E,$05 ; 9F7A  TL=$0E TR=$05 BL=$0E BR=$05
        .byte   $04,$05,$04,$0A ; 9F7E  TL=$04 TR=$05 BL=$04 BR=$0A
        .byte   $05,$0D,$0B,$15 ; 9F82  TL=$05 TR=$0D BL=$0B BR=$15
        .byte   $04,$0D,$0B,$15 ; 9F86  TL=$04 TR=$0D BL=$0B BR=$15
        .byte   $05,$06,$0C,$06 ; 9F8A  TL=$05 TR=$06 BL=$0C BR=$06
        .byte   $0E,$06,$14,$0B ; 9F8E  TL=$0E TR=$06 BL=$14 BR=$0B
        .byte   $11,$0D,$0C,$0D ; 9F92  TL=$11 TR=$0D BL=$0C BR=$0D
        .byte   $0E,$0D,$0E,$0D ; 9F96  TL=$0E TR=$0D BL=$0E BR=$0D
        .byte   $41,$42,$40,$42 ; 9F9A  TL=$41 TR=$42 BL=$40 BR=$42
        .byte   $11,$05,$0B,$0B ; 9F9E  TL=$11 TR=$05 BL=$0B BR=$0B
        .byte   $05,$06,$0B,$0B ; 9FA2  TL=$05 TR=$06 BL=$0B BR=$0B
        .byte   $10,$10,$04,$05 ; 9FA6  TL=$10 TR=$10 BL=$04 BR=$05
        .byte   $10,$13,$05,$0D ; 9FAA  TL=$10 TR=$13 BL=$05 BR=$0D
        .byte   $28,$28,$28,$05 ; 9FAE  TL=$28 TR=$28 BL=$28 BR=$05
        .byte   $28,$28,$05,$28 ; 9FB2  TL=$28 TR=$28 BL=$05 BR=$28
        .byte   $20,$1F,$20,$21 ; 9FB6  TL=$20 TR=$1F BL=$20 BR=$21
        .byte   $04,$05,$04,$16 ; 9FBA  TL=$04 TR=$05 BL=$04 BR=$16
        .byte   $05,$0F,$17,$18 ; 9FBE  TL=$05 TR=$0F BL=$17 BR=$18
        .byte   $04,$19,$04,$1B ; 9FC2  TL=$04 TR=$19 BL=$04 BR=$1B
        .byte   $43,$1A,$1C,$1D ; 9FC6  TL=$43 TR=$1A BL=$1C BR=$1D
        .byte   $10,$10,$05,$05 ; 9FCA  TL=$10 TR=$10 BL=$05 BR=$05
        .byte   $11,$0F,$05,$05 ; 9FCE  TL=$11 TR=$0F BL=$05 BR=$05
        .byte   $10,$10,$05,$06 ; 9FD2  TL=$10 TR=$10 BL=$05 BR=$06
; 144 ChunkDesc records — the level's Chunk definitions, each a 2×2 quad of Structures. These are
; the indices OvhdLvl8_MapData's grid holds.
OvhdLvl8_ChunkDescTable:
        .byte   $00,$00,$01,$00 ; 9FD6  TL=$00 TR=$00 BL=$01 BR=$00
        .byte   $00,$00,$02,$03 ; 9FDA  TL=$00 TR=$00 BL=$02 BR=$03
        .byte   $00,$00,$03,$03 ; 9FDE  TL=$00 TR=$00 BL=$03 BR=$03
        .byte   $00,$00,$03,$04 ; 9FE2  TL=$00 TR=$00 BL=$03 BR=$04
        .byte   $05,$06,$07,$08 ; 9FE6  TL=$05 TR=$06 BL=$07 BR=$08
        .byte   $01,$00,$01,$00 ; 9FEA  TL=$01 TR=$00 BL=$01 BR=$00
        .byte   $09,$0A,$0B,$0C ; 9FEE  TL=$09 TR=$0A BL=$0B BR=$0C
        .byte   $0A,$0A,$0C,$0C ; 9FF2  TL=$0A TR=$0A BL=$0C BR=$0C
        .byte   $0A,$0D,$0C,$0E ; 9FF6  TL=$0A TR=$0D BL=$0C BR=$0E
        .byte   $0F,$10,$0C,$0C ; 9FFA  TL=$0F TR=$10 BL=$0C BR=$0C
        .byte   $11,$11,$11,$11 ; 9FFE  TL=$11 TR=$11 BL=$11 BR=$11
        .byte   $0B,$0C,$0B,$0C ; A002  TL=$0B TR=$0C BL=$0B BR=$0C
        .byte   $12,$13,$14,$15 ; A006  TL=$12 TR=$13 BL=$14 BR=$15
        .byte   $0C,$0E,$16,$17 ; A00A  TL=$0C TR=$0E BL=$16 BR=$17
        .byte   $0C,$0C,$0C,$0C ; A00E  TL=$0C TR=$0C BL=$0C BR=$0C
        .byte   $0C,$0E,$0C,$0E ; A012  TL=$0C TR=$0E BL=$0C BR=$0E
        .byte   $18,$0C,$18,$19 ; A016  TL=$18 TR=$0C BL=$18 BR=$19
        .byte   $0C,$0E,$1A,$0E ; A01A  TL=$0C TR=$0E BL=$1A BR=$0E
        .byte   $0B,$0C,$1B,$1B ; A01E  TL=$0B TR=$0C BL=$1B BR=$1B
        .byte   $0C,$0C,$1B,$1B ; A022  TL=$0C TR=$0C BL=$1B BR=$1B
        .byte   $0C,$0E,$1B,$1B ; A026  TL=$0C TR=$0E BL=$1B BR=$1B
        .byte   $01,$00,$00,$00 ; A02A  TL=$01 TR=$00 BL=$00 BR=$00
        .byte   $0C,$0C,$1C,$1D ; A02E  TL=$0C TR=$0C BL=$1C BR=$1D
        .byte   $0B,$16,$0B,$0C ; A032  TL=$0B TR=$16 BL=$0B BR=$0C
        .byte   $18,$19,$0C,$19 ; A036  TL=$18 TR=$19 BL=$0C BR=$19
        .byte   $1E,$1A,$0B,$0C ; A03A  TL=$1E TR=$1A BL=$0B BR=$0C
        .byte   $18,$19,$18,$19 ; A03E  TL=$18 TR=$19 BL=$18 BR=$19
        .byte   $01,$00,$1F,$20 ; A042  TL=$01 TR=$00 BL=$1F BR=$20
        .byte   $21,$21,$21,$21 ; A046  TL=$21 TR=$21 BL=$21 BR=$21
        .byte   $0F,$10,$21,$21 ; A04A  TL=$0F TR=$10 BL=$21 BR=$21
        .byte   $22,$23,$16,$16 ; A04E  TL=$22 TR=$23 BL=$16 BR=$16
        .byte   $1A,$24,$16,$25 ; A052  TL=$1A TR=$24 BL=$16 BR=$25
        .byte   $26,$27,$28,$29 ; A056  TL=$26 TR=$27 BL=$28 BR=$29
        .byte   $2A,$0C,$2B,$0C ; A05A  TL=$2A TR=$0C BL=$2B BR=$0C
        .byte   $0C,$2C,$0C,$2D ; A05E  TL=$0C TR=$2C BL=$0C BR=$2D
        .byte   $2A,$21,$2B,$21 ; A062  TL=$2A TR=$21 BL=$2B BR=$21
        .byte   $21,$2C,$21,$2D ; A066  TL=$21 TR=$2C BL=$21 BR=$2D
        .byte   $2E,$2E,$0B,$0C ; A06A  TL=$2E TR=$2E BL=$0B BR=$0C
        .byte   $2E,$2E,$0C,$0C ; A06E  TL=$2E TR=$2E BL=$0C BR=$0C
        .byte   $2E,$2E,$0C,$0E ; A072  TL=$2E TR=$2E BL=$0C BR=$0E
        .byte   $2F,$30,$31,$32 ; A076  TL=$2F TR=$30 BL=$31 BR=$32
        .byte   $30,$30,$32,$32 ; A07A  TL=$30 TR=$30 BL=$32 BR=$32
        .byte   $33,$0E,$34,$0E ; A07E  TL=$33 TR=$0E BL=$34 BR=$0E
        .byte   $0B,$35,$0B,$36 ; A082  TL=$0B TR=$35 BL=$0B BR=$36
        .byte   $37,$30,$38,$32 ; A086  TL=$37 TR=$30 BL=$38 BR=$32
        .byte   $30,$39,$32,$3A ; A08A  TL=$30 TR=$39 BL=$32 BR=$3A
        .byte   $3B,$3C,$3D,$3E ; A08E  TL=$3B TR=$3C BL=$3D BR=$3E
        .byte   $33,$2C,$34,$2D ; A092  TL=$33 TR=$2C BL=$34 BR=$2D
        .byte   $21,$21,$1B,$1B ; A096  TL=$21 TR=$21 BL=$1B BR=$1B
        .byte   $3F,$3F,$40,$40 ; A09A  TL=$3F TR=$3F BL=$40 BR=$40
        .byte   $3F,$41,$40,$42 ; A09E  TL=$3F TR=$41 BL=$40 BR=$42
        .byte   $43,$0A,$18,$0C ; A0A2  TL=$43 TR=$0A BL=$18 BR=$0C
        .byte   $0A,$44,$0C,$19 ; A0A6  TL=$0A TR=$44 BL=$0C BR=$19
        .byte   $45,$3F,$46,$40 ; A0AA  TL=$45 TR=$3F BL=$46 BR=$40
        .byte   $47,$47,$3F,$3F ; A0AE  TL=$47 TR=$47 BL=$3F BR=$3F
        .byte   $47,$47,$3F,$41 ; A0B2  TL=$47 TR=$47 BL=$3F BR=$41
        .byte   $48,$0C,$18,$0C ; A0B6  TL=$48 TR=$0C BL=$18 BR=$0C
        .byte   $49,$4A,$4B,$4C ; A0BA  TL=$49 TR=$4A BL=$4B BR=$4C
        .byte   $0C,$19,$0C,$19 ; A0BE  TL=$0C TR=$19 BL=$0C BR=$19
        .byte   $4D,$4E,$46,$3F ; A0C2  TL=$4D TR=$4E BL=$46 BR=$3F
        .byte   $40,$40,$40,$40 ; A0C6  TL=$40 TR=$40 BL=$40 BR=$40
        .byte   $40,$42,$40,$42 ; A0CA  TL=$40 TR=$42 BL=$40 BR=$42
        .byte   $18,$0C,$18,$0C ; A0CE  TL=$18 TR=$0C BL=$18 BR=$0C
        .byte   $46,$40,$46,$40 ; A0D2  TL=$46 TR=$40 BL=$46 BR=$40
        .byte   $0C,$4F,$0C,$19 ; A0D6  TL=$0C TR=$4F BL=$0C BR=$19
        .byte   $47,$47,$45,$3F ; A0DA  TL=$47 TR=$47 BL=$45 BR=$3F
        .byte   $50,$2E,$51,$2E ; A0DE  TL=$50 TR=$2E BL=$51 BR=$2E
        .byte   $50,$2E,$50,$2E ; A0E2  TL=$50 TR=$2E BL=$50 BR=$2E
        .byte   $43,$0A,$0C,$0C ; A0E6  TL=$43 TR=$0A BL=$0C BR=$0C
        .byte   $0A,$44,$0C,$4F ; A0EA  TL=$0A TR=$44 BL=$0C BR=$4F
        .byte   $45,$41,$47,$47 ; A0EE  TL=$45 TR=$41 BL=$47 BR=$47
        .byte   $43,$0A,$48,$0C ; A0F2  TL=$43 TR=$0A BL=$48 BR=$0C
        .byte   $45,$41,$46,$42 ; A0F6  TL=$45 TR=$41 BL=$46 BR=$42
        .byte   $52,$4D,$3F,$42 ; A0FA  TL=$52 TR=$4D BL=$3F BR=$42
        .byte   $53,$54,$55,$56 ; A0FE  TL=$53 TR=$54 BL=$55 BR=$56
        .byte   $0C,$44,$0C,$4F ; A102  TL=$0C TR=$44 BL=$0C BR=$4F
        .byte   $43,$0C,$48,$0C ; A106  TL=$43 TR=$0C BL=$48 BR=$0C
        .byte   $47,$47,$45,$41 ; A10A  TL=$47 TR=$47 BL=$45 BR=$41
        .byte   $40,$40,$1B,$1B ; A10E  TL=$40 TR=$40 BL=$1B BR=$1B
        .byte   $40,$42,$1B,$1B ; A112  TL=$40 TR=$42 BL=$1B BR=$1B
        .byte   $18,$0C,$57,$1B ; A116  TL=$18 TR=$0C BL=$57 BR=$1B
        .byte   $50,$2E,$57,$1B ; A11A  TL=$50 TR=$2E BL=$57 BR=$1B
        .byte   $2E,$2E,$1B,$1B ; A11E  TL=$2E TR=$2E BL=$1B BR=$1B
        .byte   $0C,$19,$1B,$58 ; A122  TL=$0C TR=$19 BL=$1B BR=$58
        .byte   $45,$41,$1B,$1B ; A126  TL=$45 TR=$41 BL=$1B BR=$1B
        .byte   $46,$42,$1B,$1B ; A12A  TL=$46 TR=$42 BL=$1B BR=$1B
        .byte   $46,$40,$1B,$1B ; A12E  TL=$46 TR=$40 BL=$1B BR=$1B
        .byte   $09,$59,$0B,$5A ; A132  TL=$09 TR=$59 BL=$0B BR=$5A
        .byte   $3F,$41,$40,$40 ; A136  TL=$3F TR=$41 BL=$40 BR=$40
        .byte   $5B,$5C,$41,$5D ; A13A  TL=$5B TR=$5C BL=$41 BR=$5D
        .byte   $0A,$0A,$5E,$5E ; A13E  TL=$0A TR=$0A BL=$5E BR=$5E
        .byte   $0A,$0A,$5F,$0C ; A142  TL=$0A TR=$0A BL=$5F BR=$0C
        .byte   $09,$60,$61,$0C ; A146  TL=$09 TR=$60 BL=$61 BR=$0C
        .byte   $0A,$60,$62,$0C ; A14A  TL=$0A TR=$60 BL=$62 BR=$0C
        .byte   $0A,$63,$62,$0E ; A14E  TL=$0A TR=$63 BL=$62 BR=$0E
        .byte   $2A,$5A,$64,$65 ; A152  TL=$2A TR=$5A BL=$64 BR=$65
        .byte   $46,$40,$66,$67 ; A156  TL=$46 TR=$40 BL=$66 BR=$67
        .byte   $40,$3F,$40,$40 ; A15A  TL=$40 TR=$3F BL=$40 BR=$40
        .byte   $5D,$5F,$41,$5D ; A15E  TL=$5D TR=$5F BL=$41 BR=$5D
        .byte   $0C,$2C,$5F,$2D ; A162  TL=$0C TR=$2C BL=$5F BR=$2D
        .byte   $2A,$62,$2B,$0C ; A166  TL=$2A TR=$62 BL=$2B BR=$0C
        .byte   $0C,$62,$62,$0C ; A16A  TL=$0C TR=$62 BL=$62 BR=$0C
        .byte   $0C,$68,$62,$0E ; A16E  TL=$0C TR=$68 BL=$62 BR=$0E
        .byte   $0C,$0C,$0C,$0E ; A172  TL=$0C TR=$0C BL=$0C BR=$0E
        .byte   $69,$1B,$01,$00 ; A176  TL=$69 TR=$1B BL=$01 BR=$00
        .byte   $0C,$0C,$0B,$0C ; A17A  TL=$0C TR=$0C BL=$0B BR=$0C
        .byte   $6A,$4A,$6B,$4C ; A17E  TL=$6A TR=$4A BL=$6B BR=$4C
        .byte   $0B,$0C,$0B,$6C ; A182  TL=$0B TR=$0C BL=$0B BR=$6C
        .byte   $0C,$0C,$5E,$5E ; A186  TL=$0C TR=$0C BL=$5E BR=$5E
        .byte   $0C,$0E,$5F,$0E ; A18A  TL=$0C TR=$0E BL=$5F BR=$0E
        .byte   $45,$41,$46,$40 ; A18E  TL=$45 TR=$41 BL=$46 BR=$40
        .byte   $6D,$47,$3F,$41 ; A192  TL=$6D TR=$47 BL=$3F BR=$41
        .byte   $66,$67,$6D,$66 ; A196  TL=$66 TR=$67 BL=$6D BR=$66
        .byte   $6E,$6F,$6F,$70 ; A19A  TL=$6E TR=$6F BL=$6F BR=$70
        .byte   $40,$41,$67,$42 ; A19E  TL=$40 TR=$41 BL=$67 BR=$42
        .byte   $71,$0E,$71,$0E ; A1A2  TL=$71 TR=$0E BL=$71 BR=$0E
        .byte   $0B,$62,$61,$0C ; A1A6  TL=$0B TR=$62 BL=$61 BR=$0C
        .byte   $72,$73,$74,$45 ; A1AA  TL=$72 TR=$73 BL=$74 BR=$45
        .byte   $45,$41,$40,$40 ; A1AE  TL=$45 TR=$41 BL=$40 BR=$40
        .byte   $5D,$75,$41,$76 ; A1B2  TL=$5D TR=$75 BL=$41 BR=$76
        .byte   $41,$6D,$40,$41 ; A1B6  TL=$41 TR=$6D BL=$40 BR=$41
        .byte   $77,$45,$78,$46 ; A1BA  TL=$77 TR=$45 BL=$78 BR=$46
        .byte   $66,$79,$6D,$47 ; A1BE  TL=$66 TR=$79 BL=$6D BR=$47
        .byte   $71,$0E,$7A,$7B ; A1C2  TL=$71 TR=$0E BL=$7A BR=$7B
        .byte   $45,$40,$46,$40 ; A1C6  TL=$45 TR=$40 BL=$46 BR=$40
        .byte   $40,$41,$40,$42 ; A1CA  TL=$40 TR=$41 BL=$40 BR=$42
        .byte   $46,$40,$7C,$7D ; A1CE  TL=$46 TR=$40 BL=$7C BR=$7D
        .byte   $6E,$6F,$42,$78 ; A1D2  TL=$6E TR=$6F BL=$42 BR=$78
        .byte   $70,$46,$45,$40 ; A1D6  TL=$70 TR=$46 BL=$45 BR=$40
        .byte   $0B,$21,$0B,$21 ; A1DA  TL=$0B TR=$21 BL=$0B BR=$21
        .byte   $21,$21,$7E,$7F ; A1DE  TL=$21 TR=$21 BL=$7E BR=$7F
        .byte   $21,$0E,$21,$0E ; A1E2  TL=$21 TR=$0E BL=$21 BR=$0E
        .byte   $01,$00,$80,$03 ; A1E6  TL=$01 TR=$00 BL=$80 BR=$03
        .byte   $81,$82,$83,$84 ; A1EA  TL=$81 TR=$82 BL=$83 BR=$84
        .byte   $85,$85,$0C,$0C ; A1EE  TL=$85 TR=$85 BL=$0C BR=$0C
        .byte   $85,$86,$0C,$0C ; A1F2  TL=$85 TR=$86 BL=$0C BR=$0C
        .byte   $85,$87,$0C,$0E ; A1F6  TL=$85 TR=$87 BL=$0C BR=$0E
        .byte   $18,$19,$21,$21 ; A1FA  TL=$18 TR=$19 BL=$21 BR=$21
        .byte   $0B,$62,$1B,$1B ; A1FE  TL=$0B TR=$62 BL=$1B BR=$1B
        .byte   $0C,$62,$1B,$1B ; A202  TL=$0C TR=$62 BL=$1B BR=$1B
        .byte   $0C,$68,$1B,$1B ; A206  TL=$0C TR=$68 BL=$1B BR=$1B
        .byte   $00,$00,$00,$00 ; A20A  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$00,$00,$00 ; A20E  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$00,$00,$00 ; A212  TL=$00 TR=$00 BL=$00 BR=$00
; 32×32 chunk-index grid = 1024 bytes
OvhdLvl8_MapData:
        .byte   $00,$01,$02,$03,$00,$01,$02,$02 ; A216
        .byte   $02,$02,$04,$03,$00,$01,$02,$03 ; A21E
        .byte   $00,$01,$02,$03,$00,$01,$02,$03 ; A226
        .byte   $00,$01,$02,$03,$00,$01,$02,$03 ; A22E
        .byte   $05,$06,$07,$08,$05,$06,$07,$07 ; A236
        .byte   $07,$07,$09,$08,$05,$0A,$0A,$0A ; A23E
        .byte   $05,$06,$07,$08,$05,$06,$07,$08 ; A246
        .byte   $05,$06,$07,$08,$05,$0A,$0A,$0A ; A24E
        .byte   $05,$0B,$0C,$0D,$05,$0B,$0E,$0E ; A256
        .byte   $0E,$0E,$0E,$0F,$05,$0A,$0A,$0A ; A25E
        .byte   $05,$0B,$0E,$0F,$05,$0B,$0E,$0F ; A266
        .byte   $05,$0B,$0E,$0F,$05,$0A,$0A,$0A ; A26E
        .byte   $05,$0B,$10,$11,$05,$12,$13,$13 ; A276
        .byte   $13,$13,$13,$14,$15,$12,$13,$14 ; A27E
        .byte   $15,$12,$16,$14,$15,$12,$16,$14 ; A286
        .byte   $15,$12,$16,$14,$15,$12,$13,$14 ; A28E
        .byte   $00,$17,$18,$0F,$05,$01,$02,$03 ; A296
        .byte   $00,$01,$02,$03,$00,$01,$02,$03 ; A29E
        .byte   $00,$01,$04,$02,$02,$02,$04,$02 ; A2A6
        .byte   $02,$02,$04,$03,$00,$01,$02,$03 ; A2AE
        .byte   $05,$19,$1A,$0F,$1B,$06,$07,$08 ; A2B6
        .byte   $1B,$06,$07,$08,$05,$06,$07,$08 ; A2BE
        .byte   $1B,$1C,$1D,$1C,$1C,$1C,$1D,$1C ; A2C6
        .byte   $1C,$1C,$1D,$1C,$1B,$06,$07,$08 ; A2CE
        .byte   $05,$19,$1E,$1F,$20,$21,$0E,$22 ; A2D6
        .byte   $20,$21,$0E,$0F,$05,$0B,$0E,$22 ; A2DE
        .byte   $20,$23,$1C,$1C,$1C,$1C,$1C,$1C ; A2E6
        .byte   $1C,$1C,$1C,$24,$20,$21,$0E,$0F ; A2EE
        .byte   $15,$12,$13,$14,$15,$25,$26,$27 ; A2F6
        .byte   $05,$28,$29,$2A,$05,$12,$13,$14 ; A2FE
        .byte   $15,$1C,$1C,$1C,$1C,$1C,$1C,$1C ; A306
        .byte   $1C,$1C,$1C,$1C,$05,$12,$13,$14 ; A30E
        .byte   $00,$01,$02,$03,$00,$25,$26,$27 ; A316
        .byte   $05,$0B,$0E,$0F,$05,$01,$02,$03 ; A31E
        .byte   $00,$1C,$1C,$1C,$1C,$1C,$1C,$1C ; A326
        .byte   $1C,$1C,$1C,$1C,$05,$01,$02,$03 ; A32E
        .byte   $05,$06,$07,$08,$1B,$0B,$0E,$0F ; A336
        .byte   $1B,$2B,$2C,$2D,$05,$06,$07,$08 ; A33E
        .byte   $1B,$1C,$1C,$1C,$1C,$1C,$1C,$1C ; A346
        .byte   $1C,$1C,$1C,$1C,$1B,$06,$07,$08 ; A34E
        .byte   $05,$0B,$0E,$22,$20,$21,$0E,$22 ; A356
        .byte   $20,$21,$0E,$0F,$05,$0B,$0E,$22 ; A35E
        .byte   $20,$23,$1C,$1C,$1C,$1C,$2E,$1C ; A366
        .byte   $1C,$1C,$1C,$24,$20,$21,$0E,$0F ; A36E
        .byte   $15,$2B,$2C,$2D,$05,$25,$26,$27 ; A376
        .byte   $05,$12,$13,$14,$15,$12,$13,$14 ; A37E
        .byte   $15,$1C,$1C,$1C,$1C,$1C,$1C,$1C ; A386
        .byte   $1C,$1C,$1C,$1C,$05,$12,$13,$14 ; A38E
        .byte   $00,$28,$29,$2A,$05,$25,$26,$27 ; A396
        .byte   $05,$01,$02,$03,$00,$01,$02,$03 ; A39E
        .byte   $00,$1C,$1C,$1C,$1C,$1C,$1C,$1C ; A3A6
        .byte   $1C,$1C,$1C,$1C,$00,$01,$02,$03 ; A3AE
        .byte   $05,$2B,$2C,$2D,$1B,$0B,$0E,$0F ; A3B6
        .byte   $1B,$06,$07,$08,$05,$06,$07,$08 ; A3BE
        .byte   $1B,$1C,$1C,$1C,$1C,$1C,$1C,$1C ; A3C6
        .byte   $1C,$1C,$1C,$1C,$1B,$06,$07,$08 ; A3CE
        .byte   $05,$28,$29,$2F,$20,$21,$0E,$22 ; A3D6
        .byte   $20,$21,$0E,$0F,$05,$0B,$0E,$22 ; A3DE
        .byte   $20,$23,$1C,$1C,$1C,$1C,$1C,$1C ; A3E6
        .byte   $1C,$1C,$1C,$24,$20,$21,$0E,$0F ; A3EE
        .byte   $15,$12,$13,$14,$15,$25,$26,$27 ; A3F6
        .byte   $05,$0B,$0E,$0F,$05,$12,$13,$14 ; A3FE
        .byte   $15,$30,$16,$30,$30,$30,$16,$30 ; A406
        .byte   $30,$30,$16,$30,$15,$12,$13,$14 ; A40E
        .byte   $02,$02,$02,$03,$00,$25,$26,$27 ; A416
        .byte   $05,$0B,$0E,$0F,$05,$01,$02,$03 ; A41E
        .byte   $00,$01,$04,$03,$00,$01,$04,$03 ; A426
        .byte   $00,$01,$04,$03,$00,$01,$02,$02 ; A42E
        .byte   $31,$32,$33,$08,$05,$0B,$0E,$0F ; A436
        .byte   $1B,$0B,$0E,$0F,$05,$06,$07,$08 ; A43E
        .byte   $05,$06,$09,$08,$05,$06,$09,$08 ; A446
        .byte   $05,$06,$09,$08,$05,$06,$34,$35 ; A44E
        .byte   $36,$37,$38,$0F,$05,$39,$0E,$22 ; A456
        .byte   $20,$21,$0E,$0F,$05,$39,$0E,$0F ; A45E
        .byte   $05,$0B,$0E,$0F,$05,$0B,$0E,$0F ; A466
        .byte   $05,$0B,$0E,$0F,$05,$0B,$3A,$3B ; A46E
        .byte   $3C,$3D,$3E,$0F,$05,$12,$13,$14 ; A476
        .byte   $15,$12,$13,$14,$15,$12,$16,$14 ; A47E
        .byte   $15,$12,$13,$14,$15,$12,$13,$14 ; A486
        .byte   $15,$12,$13,$14,$15,$0B,$3A,$3F ; A48E
        .byte   $36,$37,$38,$0F,$05,$01,$02,$02 ; A496
        .byte   $02,$02,$02,$03,$00,$01,$04,$02 ; A49E
        .byte   $02,$02,$02,$02,$02,$02,$02,$02 ; A4A6
        .byte   $02,$02,$02,$03,$00,$0B,$40,$41 ; A4AE
        .byte   $3C,$3D,$3E,$0F,$1B,$06,$07,$07 ; A4B6
        .byte   $42,$43,$44,$08,$1B,$06,$09,$45 ; A4BE
        .byte   $46,$47,$07,$34,$48,$33,$07,$45 ; A4C6
        .byte   $46,$47,$07,$08,$1B,$0B,$3A,$3F ; A4CE
        .byte   $36,$49,$3E,$22,$20,$21,$0E,$4A ; A4D6
        .byte   $43,$43,$3E,$22,$20,$21,$0E,$4B ; A4DE
        .byte   $46,$4C,$0E,$40,$4D,$38,$0E,$3A ; A4E6
        .byte   $48,$3E,$0E,$22,$20,$21,$40,$41 ; A4EE
        .byte   $4E,$4F,$50,$14,$15,$12,$13,$13 ; A4F6
        .byte   $51,$52,$50,$14,$15,$12,$13,$53 ; A4FE
        .byte   $54,$50,$13,$53,$55,$50,$13,$53 ; A506
        .byte   $55,$50,$13,$14,$15,$12,$53,$56 ; A50E
        .byte   $00,$01,$02,$03,$00,$01,$02,$02 ; A516
        .byte   $02,$02,$02,$03,$00,$01,$02,$02 ; A51E
        .byte   $02,$02,$02,$03,$00,$02,$02,$02 ; A526
        .byte   $02,$02,$02,$03,$00,$01,$02,$03 ; A52E
        .byte   $05,$06,$07,$08,$1B,$57,$35,$58 ; A536
        .byte   $59,$5A,$5B,$08,$1B,$5C,$5D,$5D ; A53E
        .byte   $5D,$5D,$5D,$5E,$05,$06,$07,$07 ; A546
        .byte   $07,$07,$07,$08,$05,$06,$07,$08 ; A54E
        .byte   $05,$0B,$0E,$22,$20,$5F,$60,$3C ; A556
        .byte   $61,$58,$62,$63,$20,$64,$65,$65 ; A55E
        .byte   $65,$65,$65,$66,$05,$0B,$0E,$67 ; A566
        .byte   $68,$69,$0E,$0F,$05,$0B,$6A,$0F ; A56E
        .byte   $05,$6B,$6C,$6D,$05,$6E,$6F,$70 ; A576
        .byte   $71,$70,$72,$73,$05,$74,$65,$65 ; A57E
        .byte   $65,$65,$65,$66,$05,$0B,$0E,$0F ; A586
        .byte   $05,$0B,$0E,$0F,$05,$0B,$0E,$0F ; A58E
        .byte   $05,$75,$76,$77,$05,$3F,$3C,$78 ; A596
        .byte   $79,$78,$7A,$7B,$05,$74,$65,$65 ; A59E
        .byte   $65,$65,$65,$66,$05,$0B,$0E,$0F ; A5A6
        .byte   $05,$0B,$0E,$0F,$05,$0B,$0E,$0F ; A5AE
        .byte   $05,$7C,$3C,$7D,$05,$7E,$3C,$7F ; A5B6
        .byte   $80,$3C,$31,$32,$05,$74,$65,$65 ; A5BE
        .byte   $65,$65,$65,$66,$05,$81,$82,$83 ; A5C6
        .byte   $05,$0B,$0E,$0F,$84,$0B,$0E,$0F ; A5CE
        .byte   $05,$3F,$3C,$3D,$05,$85,$86,$87 ; A5D6
        .byte   $86,$86,$86,$88,$05,$74,$65,$65 ; A5DE
        .byte   $65,$65,$0C,$66,$05,$81,$89,$83 ; A5E6
        .byte   $05,$0B,$0E,$0E,$0E,$0E,$0E,$0F ; A5EE
        .byte   $15,$56,$4E,$4F,$15,$12,$13,$13 ; A5F6
        .byte   $13,$13,$16,$14,$15,$8A,$8B,$8B ; A5FE
        .byte   $8B,$8B,$8B,$8C,$15,$12,$13,$14 ; A606
        .byte   $15,$12,$13,$13,$13,$13,$13,$14 ; A60E
; 16 bytes — 8 B vertical + 8 B horizontal scroll-boundary flags
OvhdLvl8_ScrollData:
        .byte   $FF,$7F,$91,$31,$9F,$7E,$FF,$00 ; A616
        .byte   $DF,$F9,$F9,$F9,$7F,$51,$D4,$D4 ; A61E
; Tile attribute table – bits: 0-1=palette 2=walk-behind 3=Tunnel(→Tank) 4=damage 7=solid 
; 3+7=Doorway 6+7=destroyable
OvhdLvl8_TileAttrTable:
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; A626
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; A62E
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; A636
        .byte   $00,$00,$00,$00,$00,$00,$80,$80 ; A63E
        .byte   $80,$80,$80,$80,$83,$83,$81,$81 ; A646
        .byte   $82,$87,$87,$85,$85,$87,$87,$87 ; A64E
        .byte   $87,$87,$87,$05,$05,$05,$05,$07 ; A656
        .byte   $07,$07,$07,$C2,$13,$17,$17,$17 ; A65E
        .byte   $17,$17,$17,$09,$8F,$8F,$8B,$8B ; A666
        .byte   $8D,$8D,$81                     ; A66E
; ----------------------------------------------------------------------------
OvhdLvl4_MapPointers:
        .addr   OvhdLvl4_BgPalette              ; A671
        .addr   OvhdLvl4_TileAttrTable          ; A673
        .addr   OvhdLvl4_TileDescTable          ; A675
        .addr   OvhdLvl4_StructureDescTable     ; A677
        .addr   OvhdLvl4_ChunkDescTable         ; A679
        .addr   OvhdLvl4_MapData                ; A67B
; ----------------------------------------------------------------------------
; 4 BgPalette records — the level's 4 background sub-palettes × 4 NES colour indices.
OvhdLvl4_BgPalette:
        .byte   $0F,$0A,$1B,$20 ; A67D  Backdrop=$0F Colour1=$0A Colour2=$1B Colour3=$20
        .byte   $0F,$07,$17,$3A ; A681  Backdrop=$0F Colour1=$07 Colour2=$17 Colour3=$3A
        .byte   $0F,$19,$10,$20 ; A685  Backdrop=$0F Colour1=$19 Colour2=$10 Colour3=$20
        .byte   $0F,$0C,$1C,$31 ; A689  Backdrop=$0F Colour1=$0C Colour2=$1C Colour3=$31
; 96 TileDesc records — the level's Tile (USB) definitions. NOTE: OvhdLvl4_TileAttrTable is only
; 94 bytes, so the last 2 record(s) here have no attribute byte — either spare slots or a label
; boundary that needs narrowing (unresolved).
OvhdLvl4_TileDescTable:
        .byte   $00,$00,$00,$00 ; A68D  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $7C,$7C,$7C,$7C ; A691  TL=$7C TR=$7C BL=$7C BR=$7C
        .byte   $7C,$20,$7C,$21 ; A695  TL=$7C TR=$20 BL=$7C BR=$21
        .byte   $31,$7C,$31,$7C ; A699  TL=$31 TR=$7C BL=$31 BR=$7C
        .byte   $68,$68,$7C,$20 ; A69D  TL=$68 TR=$68 BL=$7C BR=$20
        .byte   $7C,$20,$48,$48 ; A6A1  TL=$7C TR=$20 BL=$48 BR=$48
        .byte   $4A,$7C,$4A,$7C ; A6A5  TL=$4A TR=$7C BL=$4A BR=$7C
        .byte   $7C,$58,$7C,$58 ; A6A9  TL=$7C TR=$58 BL=$7C BR=$58
        .byte   $7C,$7C,$48,$48 ; A6AD  TL=$7C TR=$7C BL=$48 BR=$48
        .byte   $68,$68,$7C,$7C ; A6B1  TL=$68 TR=$68 BL=$7C BR=$7C
        .byte   $5A,$68,$4A,$7C ; A6B5  TL=$5A TR=$68 BL=$4A BR=$7C
        .byte   $68,$6A,$7C,$58 ; A6B9  TL=$68 TR=$6A BL=$7C BR=$58
        .byte   $4A,$7C,$4B,$48 ; A6BD  TL=$4A TR=$7C BL=$4B BR=$48
        .byte   $7C,$58,$48,$69 ; A6C1  TL=$7C TR=$58 BL=$48 BR=$69
        .byte   $7C,$7C,$7C,$5B ; A6C5  TL=$7C TR=$7C BL=$7C BR=$5B
        .byte   $7C,$7C,$6B,$7C ; A6C9  TL=$7C TR=$7C BL=$6B BR=$7C
        .byte   $7C,$59,$7C,$7C ; A6CD  TL=$7C TR=$59 BL=$7C BR=$7C
        .byte   $49,$7C,$7C,$7C ; A6D1  TL=$49 TR=$7C BL=$7C BR=$7C
        .byte   $62,$62,$62,$62 ; A6D5  TL=$62 TR=$62 BL=$62 BR=$62
        .byte   $62,$5C,$62,$5C ; A6D9  TL=$62 TR=$5C BL=$62 BR=$5C
        .byte   $84,$84,$84,$80 ; A6DD  TL=$84 TR=$84 BL=$84 BR=$80
        .byte   $84,$84,$90,$90 ; A6E1  TL=$84 TR=$84 BL=$90 BR=$90
        .byte   $84,$84,$91,$84 ; A6E5  TL=$84 TR=$84 BL=$91 BR=$84
        .byte   $84,$81,$84,$81 ; A6E9  TL=$84 TR=$81 BL=$84 BR=$81
        .byte   $81,$84,$81,$84 ; A6ED  TL=$81 TR=$84 BL=$81 BR=$84
        .byte   $84,$82,$84,$84 ; A6F1  TL=$84 TR=$82 BL=$84 BR=$84
        .byte   $90,$90,$84,$84 ; A6F5  TL=$90 TR=$90 BL=$84 BR=$84
        .byte   $92,$84,$84,$84 ; A6F9  TL=$92 TR=$84 BL=$84 BR=$84
        .byte   $06,$16,$07,$17 ; A6FD  TL=$06 TR=$16 BL=$07 BR=$17
        .byte   $0C,$1C,$0D,$0D ; A701  TL=$0C TR=$1C BL=$0D BR=$0D
        .byte   $26,$36,$27,$37 ; A705  TL=$26 TR=$36 BL=$27 BR=$37
        .byte   $0C,$0E,$0D,$0F ; A709  TL=$0C TR=$0E BL=$0D BR=$0F
        .byte   $08,$18,$09,$19 ; A70D  TL=$08 TR=$18 BL=$09 BR=$19
        .byte   $28,$18,$29,$19 ; A711  TL=$28 TR=$18 BL=$29 BR=$19
        .byte   $28,$38,$29,$39 ; A715  TL=$28 TR=$38 BL=$29 BR=$39
        .byte   $28,$1E,$29,$1F ; A719  TL=$28 TR=$1E BL=$29 BR=$1F
        .byte   $2C,$3A,$2D,$3B ; A71D  TL=$2C TR=$3A BL=$2D BR=$3B
        .byte   $2C,$3A,$05,$35 ; A721  TL=$2C TR=$3A BL=$05 BR=$35
        .byte   $97,$87,$88,$98 ; A725  TL=$97 TR=$87 BL=$88 BR=$98
        .byte   $02,$12,$05,$15 ; A729  TL=$02 TR=$12 BL=$05 BR=$15
        .byte   $0A,$1A,$0B,$1B ; A72D  TL=$0A TR=$1A BL=$0B BR=$1B
        .byte   $22,$32,$25,$35 ; A731  TL=$22 TR=$32 BL=$25 BR=$35
        .byte   $0A,$2E,$0B,$2F ; A735  TL=$0A TR=$2E BL=$0B BR=$2F
        .byte   $42,$52,$43,$00 ; A739  TL=$42 TR=$52 BL=$43 BR=$00
        .byte   $52,$72,$00,$43 ; A73D  TL=$52 TR=$72 BL=$00 BR=$43
        .byte   $40,$50,$41,$51 ; A741  TL=$40 TR=$50 BL=$41 BR=$51
        .byte   $40,$50,$61,$71 ; A745  TL=$40 TR=$50 BL=$61 BR=$71
        .byte   $66,$66,$67,$67 ; A749  TL=$66 TR=$66 BL=$67 BR=$67
        .byte   $44,$66,$45,$67 ; A74D  TL=$44 TR=$66 BL=$45 BR=$67
        .byte   $66,$44,$67,$56 ; A751  TL=$66 TR=$44 BL=$67 BR=$56
        .byte   $46,$66,$47,$67 ; A755  TL=$46 TR=$66 BL=$47 BR=$67
        .byte   $66,$57,$67,$47 ; A759  TL=$66 TR=$57 BL=$67 BR=$47
        .byte   $2C,$3C,$2D,$3D ; A75D  TL=$2C TR=$3C BL=$2D BR=$3D
        .byte   $1D,$1D,$1D,$1D ; A761  TL=$1D TR=$1D BL=$1D BR=$1D
        .byte   $2A,$3A,$2B,$3B ; A765  TL=$2A TR=$3A BL=$2B BR=$3B
        .byte   $1D,$1D,$78,$7A ; A769  TL=$1D TR=$1D BL=$78 BR=$7A
        .byte   $79,$7B,$1D,$1D ; A76D  TL=$79 TR=$7B BL=$1D BR=$1D
        .byte   $0A,$1A,$1D,$1D ; A771  TL=$0A TR=$1A BL=$1D BR=$1D
        .byte   $04,$14,$05,$15 ; A775  TL=$04 TR=$14 BL=$05 BR=$15
        .byte   $1D,$1D,$0B,$1B ; A779  TL=$1D TR=$1D BL=$0B BR=$1B
        .byte   $24,$34,$25,$35 ; A77D  TL=$24 TR=$34 BL=$25 BR=$35
        .byte   $41,$60,$40,$50 ; A781  TL=$41 TR=$60 BL=$40 BR=$50
        .byte   $70,$71,$40,$50 ; A785  TL=$70 TR=$71 BL=$40 BR=$50
        .byte   $40,$50,$40,$50 ; A789  TL=$40 TR=$50 BL=$40 BR=$50
        .byte   $02,$12,$03,$13 ; A78D  TL=$02 TR=$12 BL=$03 BR=$13
        .byte   $0A,$1A,$1D,$1D ; A791  TL=$0A TR=$1A BL=$1D BR=$1D
        .byte   $22,$32,$23,$33 ; A795  TL=$22 TR=$32 BL=$23 BR=$33
        .byte   $2C,$3C,$2D,$3D ; A799  TL=$2C TR=$3C BL=$2D BR=$3D
        .byte   $1D,$1D,$1D,$1D ; A79D  TL=$1D TR=$1D BL=$1D BR=$1D
        .byte   $2A,$3A,$2B,$3B ; A7A1  TL=$2A TR=$3A BL=$2B BR=$3B
        .byte   $1D,$1D,$78,$7A ; A7A5  TL=$1D TR=$1D BL=$78 BR=$7A
        .byte   $0A,$1A,$78,$7A ; A7A9  TL=$0A TR=$1A BL=$78 BR=$7A
        .byte   $79,$7B,$0B,$1B ; A7AD  TL=$79 TR=$7B BL=$0B BR=$1B
        .byte   $02,$12,$05,$15 ; A7B1  TL=$02 TR=$12 BL=$05 BR=$15
        .byte   $0A,$1A,$0B,$1B ; A7B5  TL=$0A TR=$1A BL=$0B BR=$1B
        .byte   $22,$32,$25,$35 ; A7B9  TL=$22 TR=$32 BL=$25 BR=$35
        .byte   $0A,$2E,$0B,$2F ; A7BD  TL=$0A TR=$2E BL=$0B BR=$2F
        .byte   $02,$32,$2D,$3B ; A7C1  TL=$02 TR=$32 BL=$2D BR=$3B
        .byte   $02,$32,$05,$35 ; A7C5  TL=$02 TR=$32 BL=$05 BR=$35
        .byte   $74,$76,$75,$77 ; A7C9  TL=$74 TR=$76 BL=$75 BR=$77
        .byte   $3E,$4E,$3F,$4F ; A7CD  TL=$3E TR=$4E BL=$3F BR=$4F
        .byte   $00,$00,$4D,$5D ; A7D1  TL=$00 TR=$00 BL=$4D BR=$5D
        .byte   $5E,$00,$5F,$00 ; A7D5  TL=$5E TR=$00 BL=$5F BR=$00
        .byte   $00,$00,$4C,$00 ; A7D9  TL=$00 TR=$00 BL=$4C BR=$00
        .byte   $6E,$6E,$6E,$6E ; A7DD  TL=$6E TR=$6E BL=$6E BR=$6E
        .byte   $40,$50,$40,$50 ; A7E1  TL=$40 TR=$50 BL=$40 BR=$50
        .byte   $2C,$3C,$2D,$3D ; A7E5  TL=$2C TR=$3C BL=$2D BR=$3D
        .byte   $2A,$3A,$2B,$3B ; A7E9  TL=$2A TR=$3A BL=$2B BR=$3B
        .byte   $02,$12,$03,$13 ; A7ED  TL=$02 TR=$12 BL=$03 BR=$13
        .byte   $22,$32,$23,$33 ; A7F1  TL=$22 TR=$32 BL=$23 BR=$33
        .byte   $43,$00,$73,$53 ; A7F5  TL=$43 TR=$00 BL=$73 BR=$53
        .byte   $00,$43,$63,$73 ; A7F9  TL=$00 TR=$43 BL=$63 BR=$73
        .byte   $83,$93,$00,$00 ; A7FD  TL=$83 TR=$93 BL=$00 BR=$00
        .byte   $5E,$00,$3F,$5D ; A801  TL=$5E TR=$00 BL=$3F BR=$5D
        .byte   $00,$00,$00,$00 ; A805  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$00,$00,$00 ; A809  TL=$00 TR=$00 BL=$00 BR=$00
; 132 StructureDesc records — the level's Structure definitions, each a 2×2 quad of Tiles.
OvhdLvl4_StructureDescTable:
        .byte   $38,$35,$35,$35 ; A80D  TL=$38 TR=$35 BL=$35 BR=$35
        .byte   $34,$35,$34,$35 ; A811  TL=$34 TR=$35 BL=$34 BR=$35
        .byte   $35,$36,$35,$36 ; A815  TL=$35 TR=$36 BL=$35 BR=$36
        .byte   $38,$35,$3B,$3B ; A819  TL=$38 TR=$35 BL=$3B BR=$3B
        .byte   $1D,$1D,$21,$21 ; A81D  TL=$1D TR=$1D BL=$21 BR=$21
        .byte   $1D,$1D,$23,$24 ; A821  TL=$1D TR=$1D BL=$23 BR=$24
        .byte   $1D,$1D,$24,$21 ; A825  TL=$1D TR=$1D BL=$24 BR=$21
        .byte   $03,$01,$03,$01 ; A829  TL=$03 TR=$01 BL=$03 BR=$01
        .byte   $01,$01,$01,$01 ; A82D  TL=$01 TR=$01 BL=$01 BR=$01
        .byte   $0E,$08,$07,$51 ; A831  TL=$0E TR=$08 BL=$07 BR=$51
        .byte   $08,$0F,$53,$06 ; A835  TL=$08 TR=$0F BL=$53 BR=$06
        .byte   $07,$50,$10,$09 ; A839  TL=$07 TR=$50 BL=$10 BR=$09
        .byte   $52,$06,$09,$11 ; A83D  TL=$52 TR=$06 BL=$09 BR=$11
        .byte   $01,$07,$01,$07 ; A841  TL=$01 TR=$07 BL=$01 BR=$07
        .byte   $51,$51,$50,$50 ; A845  TL=$51 TR=$51 BL=$50 BR=$50
        .byte   $50,$50,$50,$50 ; A849  TL=$50 TR=$50 BL=$50 BR=$50
        .byte   $51,$53,$50,$52 ; A84D  TL=$51 TR=$53 BL=$50 BR=$52
        .byte   $50,$52,$50,$52 ; A851  TL=$50 TR=$52 BL=$50 BR=$52
        .byte   $06,$01,$06,$01 ; A855  TL=$06 TR=$01 BL=$06 BR=$01
        .byte   $02,$24,$02,$24 ; A859  TL=$02 TR=$24 BL=$02 BR=$24
        .byte   $24,$03,$24,$03 ; A85D  TL=$24 TR=$03 BL=$24 BR=$03
        .byte   $40,$41,$43,$44 ; A861  TL=$40 TR=$41 BL=$43 BR=$44
        .byte   $41,$42,$44,$45 ; A865  TL=$41 TR=$42 BL=$44 BR=$45
        .byte   $01,$02,$01,$02 ; A869  TL=$01 TR=$02 BL=$01 BR=$02
        .byte   $01,$07,$01,$10 ; A86D  TL=$01 TR=$07 BL=$01 BR=$10
        .byte   $01,$0E,$01,$07 ; A871  TL=$01 TR=$0E BL=$01 BR=$07
        .byte   $50,$50,$09,$09 ; A875  TL=$50 TR=$50 BL=$09 BR=$09
        .byte   $08,$08,$51,$51 ; A879  TL=$08 TR=$08 BL=$51 BR=$51
        .byte   $50,$50,$0B,$50 ; A87D  TL=$50 TR=$50 BL=$0B BR=$50
        .byte   $07,$50,$07,$50 ; A881  TL=$07 TR=$50 BL=$07 BR=$50
        .byte   $50,$0A,$52,$06 ; A885  TL=$50 TR=$0A BL=$52 BR=$06
        .byte   $09,$0B,$01,$07 ; A889  TL=$09 TR=$0B BL=$01 BR=$07
        .byte   $52,$0C,$5D,$51 ; A88D  TL=$52 TR=$0C BL=$5D BR=$51
        .byte   $08,$0D,$51,$50 ; A891  TL=$08 TR=$0D BL=$51 BR=$50
        .byte   $50,$50,$50,$0A ; A895  TL=$50 TR=$50 BL=$50 BR=$0A
        .byte   $52,$06,$52,$06 ; A899  TL=$52 TR=$06 BL=$52 BR=$06
        .byte   $50,$52,$09,$09 ; A89D  TL=$50 TR=$52 BL=$09 BR=$09
        .byte   $08,$08,$51,$53 ; A8A1  TL=$08 TR=$08 BL=$51 BR=$53
        .byte   $06,$01,$11,$01 ; A8A5  TL=$06 TR=$01 BL=$11 BR=$01
        .byte   $0F,$01,$06,$01 ; A8A9  TL=$0F TR=$01 BL=$06 BR=$01
        .byte   $34,$35,$3A,$3B ; A8AD  TL=$34 TR=$35 BL=$3A BR=$3B
        .byte   $35,$36,$3B,$3C ; A8B1  TL=$35 TR=$36 BL=$3B BR=$3C
        .byte   $1C,$1D,$20,$21 ; A8B5  TL=$1C TR=$1D BL=$20 BR=$21
        .byte   $1D,$1E,$21,$22 ; A8B9  TL=$1D TR=$1E BL=$21 BR=$22
        .byte   $50,$50,$09,$0B ; A8BD  TL=$50 TR=$50 BL=$09 BR=$0B
        .byte   $4F,$4F,$4F,$4F ; A8C1  TL=$4F TR=$4F BL=$4F BR=$4F
        .byte   $0D,$50,$50,$50 ; A8C5  TL=$0D TR=$50 BL=$50 BR=$50
        .byte   $01,$14,$01,$17 ; A8C9  TL=$01 TR=$14 BL=$01 BR=$17
        .byte   $15,$16,$5C,$18 ; A8CD  TL=$15 TR=$16 BL=$5C BR=$18
        .byte   $01,$19,$01,$01 ; A8D1  TL=$01 TR=$19 BL=$01 BR=$01
        .byte   $1A,$1B,$01,$01 ; A8D5  TL=$1A TR=$1B BL=$01 BR=$01
        .byte   $49,$4A,$27,$28 ; A8D9  TL=$49 TR=$4A BL=$27 BR=$28
        .byte   $4A,$4A,$28,$28 ; A8DD  TL=$4A TR=$4A BL=$28 BR=$28
        .byte   $1C,$1D,$06,$01 ; A8E1  TL=$1C TR=$1D BL=$06 BR=$01
        .byte   $1D,$1D,$01,$01 ; A8E5  TL=$1D TR=$1D BL=$01 BR=$01
        .byte   $4A,$3C,$28,$28 ; A8E9  TL=$4A TR=$3C BL=$28 BR=$28
        .byte   $24,$03,$3C,$03 ; A8ED  TL=$24 TR=$03 BL=$3C BR=$03
        .byte   $1D,$03,$01,$01 ; A8F1  TL=$1D TR=$03 BL=$01 BR=$01
        .byte   $1C,$1D,$03,$01 ; A8F5  TL=$1C TR=$1D BL=$03 BR=$01
        .byte   $4A,$4A,$28,$39 ; A8F9  TL=$4A TR=$4A BL=$28 BR=$39
        .byte   $4A,$4A,$39,$28 ; A8FD  TL=$4A TR=$4A BL=$39 BR=$28
        .byte   $1F,$24,$02,$24 ; A901  TL=$1F TR=$24 BL=$02 BR=$24
        .byte   $24,$1D,$24,$03 ; A905  TL=$24 TR=$1D BL=$24 BR=$03
        .byte   $4A,$4B,$28,$29 ; A909  TL=$4A TR=$4B BL=$28 BR=$29
        .byte   $1D,$1E,$01,$07 ; A90D  TL=$1D TR=$1E BL=$01 BR=$07
        .byte   $4A,$4C,$28,$2A ; A911  TL=$4A TR=$4C BL=$28 BR=$2A
        .byte   $1D,$1F,$01,$02 ; A915  TL=$1D TR=$1F BL=$01 BR=$02
        .byte   $01,$4D,$02,$24 ; A919  TL=$01 TR=$4D BL=$02 BR=$24
        .byte   $4D,$01,$24,$01 ; A91D  TL=$4D TR=$01 BL=$24 BR=$01
        .byte   $0E,$08,$07,$53 ; A921  TL=$0E TR=$08 BL=$07 BR=$53
        .byte   $02,$25,$02,$26 ; A925  TL=$02 TR=$25 BL=$02 BR=$26
        .byte   $25,$03,$26,$03 ; A929  TL=$25 TR=$03 BL=$26 BR=$03
        .byte   $07,$52,$07,$52 ; A92D  TL=$07 TR=$52 BL=$07 BR=$52
        .byte   $03,$01,$08,$08 ; A931  TL=$03 TR=$01 BL=$08 BR=$08
        .byte   $01,$01,$08,$08 ; A935  TL=$01 TR=$01 BL=$08 BR=$08
        .byte   $02,$25,$05,$26 ; A939  TL=$02 TR=$25 BL=$05 BR=$26
        .byte   $25,$03,$26,$08 ; A93D  TL=$25 TR=$03 BL=$26 BR=$08
        .byte   $01,$07,$08,$0D ; A941  TL=$01 TR=$07 BL=$08 BR=$0D
        .byte   $51,$50,$50,$50 ; A945  TL=$51 TR=$50 BL=$50 BR=$50
        .byte   $54,$54,$54,$54 ; A949  TL=$54 TR=$54 BL=$54 BR=$54
        .byte   $0D,$52,$50,$52 ; A94D  TL=$0D TR=$52 BL=$50 BR=$52
        .byte   $06,$01,$0C,$08 ; A951  TL=$06 TR=$01 BL=$0C BR=$08
        .byte   $01,$02,$08,$05 ; A955  TL=$01 TR=$02 BL=$08 BR=$05
        .byte   $50,$5D,$50,$50 ; A959  TL=$50 TR=$5D BL=$50 BR=$50
        .byte   $50,$50,$0B,$52 ; A95D  TL=$50 TR=$50 BL=$0B BR=$52
        .byte   $0A,$09,$06,$01 ; A961  TL=$0A TR=$09 BL=$06 BR=$01
        .byte   $09,$09,$01,$01 ; A965  TL=$09 TR=$09 BL=$01 BR=$01
        .byte   $09,$04,$01,$02 ; A969  TL=$09 TR=$04 BL=$01 BR=$02
        .byte   $50,$52,$50,$5D ; A96D  TL=$50 TR=$52 BL=$50 BR=$5D
        .byte   $0C,$08,$51,$51 ; A971  TL=$0C TR=$08 BL=$51 BR=$51
        .byte   $50,$50,$0A,$09 ; A975  TL=$50 TR=$50 BL=$0A BR=$09
        .byte   $4D,$01,$24,$03 ; A979  TL=$4D TR=$01 BL=$24 BR=$03
        .byte   $1C,$1D,$01,$01 ; A97D  TL=$1C TR=$1D BL=$01 BR=$01
        .byte   $4A,$36,$28,$36 ; A981  TL=$4A TR=$36 BL=$28 BR=$36
        .byte   $34,$4A,$34,$28 ; A985  TL=$34 TR=$4A BL=$34 BR=$28
        .byte   $1D,$1E,$01,$01 ; A989  TL=$1D TR=$1E BL=$01 BR=$01
        .byte   $01,$01,$03,$01 ; A98D  TL=$01 TR=$01 BL=$03 BR=$01
        .byte   $03,$01,$01,$01 ; A991  TL=$03 TR=$01 BL=$01 BR=$01
        .byte   $09,$09,$03,$01 ; A995  TL=$09 TR=$09 BL=$03 BR=$01
        .byte   $01,$01,$01,$02 ; A999  TL=$01 TR=$01 BL=$01 BR=$02
        .byte   $01,$02,$01,$01 ; A99D  TL=$01 TR=$02 BL=$01 BR=$01
        .byte   $07,$52,$10,$09 ; A9A1  TL=$07 TR=$52 BL=$10 BR=$09
        .byte   $24,$1D,$24,$01 ; A9A5  TL=$24 TR=$1D BL=$24 BR=$01
        .byte   $35,$35,$37,$35 ; A9A9  TL=$35 TR=$35 BL=$37 BR=$35
        .byte   $41,$41,$46,$44 ; A9AD  TL=$41 TR=$41 BL=$46 BR=$44
        .byte   $42,$3D,$45,$3F ; A9B1  TL=$42 TR=$3D BL=$45 BR=$3F
        .byte   $3E,$40,$3F,$43 ; A9B5  TL=$3E TR=$40 BL=$3F BR=$43
        .byte   $41,$39,$46,$35 ; A9B9  TL=$41 TR=$39 BL=$46 BR=$35
        .byte   $39,$41,$37,$44 ; A9BD  TL=$39 TR=$41 BL=$37 BR=$44
        .byte   $36,$55,$3C,$2D ; A9C1  TL=$36 TR=$55 BL=$3C BR=$2D
        .byte   $55,$34,$2E,$3A ; A9C5  TL=$55 TR=$34 BL=$2E BR=$3A
        .byte   $1E,$2B,$22,$5A ; A9C9  TL=$1E TR=$2B BL=$22 BR=$5A
        .byte   $2C,$1C,$5B,$20 ; A9CD  TL=$2C TR=$1C BL=$5B BR=$20
        .byte   $1D,$1F,$21,$23 ; A9D1  TL=$1D TR=$1F BL=$21 BR=$23
        .byte   $56,$35,$34,$35 ; A9D5  TL=$56 TR=$35 BL=$34 BR=$35
        .byte   $35,$57,$35,$36 ; A9D9  TL=$35 TR=$57 BL=$35 BR=$36
        .byte   $01,$12,$01,$01 ; A9DD  TL=$01 TR=$12 BL=$01 BR=$01
        .byte   $12,$01,$01,$01 ; A9E1  TL=$12 TR=$01 BL=$01 BR=$01
        .byte   $3A,$3B,$30,$2F ; A9E5  TL=$3A TR=$3B BL=$30 BR=$2F
        .byte   $3B,$3C,$2F,$31 ; A9E9  TL=$3B TR=$3C BL=$2F BR=$31
        .byte   $01,$02,$01,$13 ; A9ED  TL=$01 TR=$02 BL=$01 BR=$13
        .byte   $01,$13,$01,$02 ; A9F1  TL=$01 TR=$13 BL=$01 BR=$02
        .byte   $32,$2F,$58,$39 ; A9F5  TL=$32 TR=$2F BL=$58 BR=$39
        .byte   $2F,$33,$39,$59 ; A9F9  TL=$2F TR=$33 BL=$39 BR=$59
        .byte   $01,$01,$12,$01 ; A9FD  TL=$01 TR=$01 BL=$12 BR=$01
        .byte   $03,$14,$03,$17 ; AA01  TL=$03 TR=$14 BL=$03 BR=$17
        .byte   $03,$19,$03,$01 ; AA05  TL=$03 TR=$19 BL=$03 BR=$01
        .byte   $50,$50,$12,$09 ; AA09  TL=$50 TR=$50 BL=$12 BR=$09
        .byte   $12,$08,$51,$51 ; AA0D  TL=$12 TR=$08 BL=$51 BR=$51
        .byte   $0A,$09,$11,$01 ; AA11  TL=$0A TR=$09 BL=$11 BR=$01
        .byte   $0F,$01,$0C,$08 ; AA15  TL=$0F TR=$01 BL=$0C BR=$08
        .byte   $00,$00,$00,$00 ; AA19  TL=$00 TR=$00 BL=$00 BR=$00
; 108 ChunkDesc records — the level's Chunk definitions, each a 2×2 quad of Structures. These are
; the indices OvhdLvl4_MapData's grid holds.
OvhdLvl4_ChunkDescTable:
        .byte   $00,$00,$01,$02 ; AA1D  TL=$00 TR=$00 BL=$01 BR=$02
        .byte   $03,$03,$04,$04 ; AA21  TL=$03 TR=$03 BL=$04 BR=$04
        .byte   $03,$03,$05,$06 ; AA25  TL=$03 TR=$03 BL=$05 BR=$06
        .byte   $01,$02,$01,$02 ; AA29  TL=$01 TR=$02 BL=$01 BR=$02
        .byte   $07,$08,$07,$08 ; AA2D  TL=$07 TR=$08 BL=$07 BR=$08
        .byte   $09,$0A,$0B,$0C ; AA31  TL=$09 TR=$0A BL=$0B BR=$0C
        .byte   $08,$08,$08,$08 ; AA35  TL=$08 TR=$08 BL=$08 BR=$08
        .byte   $08,$0D,$08,$0D ; AA39  TL=$08 TR=$0D BL=$08 BR=$0D
        .byte   $0E,$0E,$0F,$0F ; AA3D  TL=$0E TR=$0E BL=$0F BR=$0F
        .byte   $0E,$10,$0F,$11 ; AA41  TL=$0E TR=$10 BL=$0F BR=$11
        .byte   $12,$08,$12,$08 ; AA45  TL=$12 TR=$08 BL=$12 BR=$08
        .byte   $13,$14,$13,$14 ; AA49  TL=$13 TR=$14 BL=$13 BR=$14
        .byte   $08,$08,$15,$16 ; AA4D  TL=$08 TR=$08 BL=$15 BR=$16
        .byte   $08,$17,$08,$17 ; AA51  TL=$08 TR=$17 BL=$08 BR=$17
        .byte   $08,$18,$08,$19 ; AA55  TL=$08 TR=$18 BL=$08 BR=$19
        .byte   $1A,$1A,$1B,$1B ; AA59  TL=$1A TR=$1A BL=$1B BR=$1B
        .byte   $1A,$1C,$0A,$1D ; AA5D  TL=$1A TR=$1C BL=$0A BR=$1D
        .byte   $1E,$1F,$20,$21 ; AA61  TL=$1E TR=$1F BL=$20 BR=$21
        .byte   $0F,$0F,$0F,$0F ; AA65  TL=$0F TR=$0F BL=$0F BR=$0F
        .byte   $0F,$11,$0F,$11 ; AA69  TL=$0F TR=$11 BL=$0F BR=$11
        .byte   $22,$1A,$23,$09 ; AA6D  TL=$22 TR=$1A BL=$23 BR=$09
        .byte   $1A,$24,$1B,$25 ; AA71  TL=$1A TR=$24 BL=$1B BR=$25
        .byte   $26,$08,$27,$08 ; AA75  TL=$26 TR=$08 BL=$27 BR=$08
        .byte   $28,$29,$2A,$2B ; AA79  TL=$28 TR=$29 BL=$2A BR=$2B
        .byte   $23,$1D,$23,$1D ; AA7D  TL=$23 TR=$1D BL=$23 BR=$1D
        .byte   $12,$17,$12,$17 ; AA81  TL=$12 TR=$17 BL=$12 BR=$17
        .byte   $08,$17,$15,$16 ; AA85  TL=$08 TR=$17 BL=$15 BR=$16
        .byte   $09,$21,$0B,$2C ; AA89  TL=$09 TR=$21 BL=$0B BR=$2C
        .byte   $23,$0B,$20,$1B ; AA8D  TL=$23 TR=$0B BL=$20 BR=$1B
        .byte   $2D,$2D,$2D,$2D ; AA91  TL=$2D TR=$2D BL=$2D BR=$2D
        .byte   $08,$0D,$15,$16 ; AA95  TL=$08 TR=$0D BL=$15 BR=$16
        .byte   $0C,$1D,$1B,$2E ; AA99  TL=$0C TR=$1D BL=$1B BR=$2E
        .byte   $2F,$30,$31,$32 ; AA9D  TL=$2F TR=$30 BL=$31 BR=$32
        .byte   $33,$34,$35,$36 ; AAA1  TL=$33 TR=$34 BL=$35 BR=$36
        .byte   $34,$34,$36,$36 ; AAA5  TL=$34 TR=$34 BL=$36 BR=$36
        .byte   $37,$38,$36,$39 ; AAA9  TL=$37 TR=$38 BL=$36 BR=$39
        .byte   $33,$34,$3A,$36 ; AAAD  TL=$33 TR=$34 BL=$3A BR=$36
        .byte   $3B,$3C,$3D,$3E ; AAB1  TL=$3B TR=$3C BL=$3D BR=$3E
        .byte   $34,$3F,$36,$40 ; AAB5  TL=$34 TR=$3F BL=$36 BR=$40
        .byte   $34,$41,$36,$42 ; AAB9  TL=$34 TR=$41 BL=$36 BR=$42
        .byte   $08,$08,$43,$44 ; AABD  TL=$08 TR=$08 BL=$43 BR=$44
        .byte   $22,$24,$23,$45 ; AAC1  TL=$22 TR=$24 BL=$23 BR=$45
        .byte   $13,$14,$46,$47 ; AAC5  TL=$13 TR=$14 BL=$46 BR=$47
        .byte   $23,$48,$23,$48 ; AAC9  TL=$23 TR=$48 BL=$23 BR=$48
        .byte   $07,$08,$49,$4A ; AACD  TL=$07 TR=$08 BL=$49 BR=$4A
        .byte   $08,$08,$4A,$4A ; AAD1  TL=$08 TR=$08 BL=$4A BR=$4A
        .byte   $13,$14,$4B,$4C ; AAD5  TL=$13 TR=$14 BL=$4B BR=$4C
        .byte   $08,$0D,$4A,$4D ; AAD9  TL=$08 TR=$0D BL=$4A BR=$4D
        .byte   $0E,$4E,$0F,$0F ; AADD  TL=$0E TR=$4E BL=$0F BR=$0F
        .byte   $22,$1A,$20,$1B ; AAE1  TL=$22 TR=$1A BL=$20 BR=$1B
        .byte   $4F,$4F,$4F,$4F ; AAE5  TL=$4F TR=$4F BL=$4F BR=$4F
        .byte   $08,$4F,$08,$4F ; AAE9  TL=$08 TR=$4F BL=$08 BR=$4F
        .byte   $0C,$48,$1B,$50 ; AAED  TL=$0C TR=$48 BL=$1B BR=$50
        .byte   $12,$08,$51,$4A ; AAF1  TL=$12 TR=$08 BL=$51 BR=$4A
        .byte   $08,$17,$4A,$52 ; AAF5  TL=$08 TR=$17 BL=$4A BR=$52
        .byte   $0F,$53,$0F,$0F ; AAF9  TL=$0F TR=$53 BL=$0F BR=$0F
        .byte   $1A,$54,$0A,$48 ; AAFD  TL=$1A TR=$54 BL=$0A BR=$48
        .byte   $55,$56,$12,$08 ; AB01  TL=$55 TR=$56 BL=$12 BR=$08
        .byte   $56,$56,$08,$08 ; AB05  TL=$56 TR=$56 BL=$08 BR=$08
        .byte   $56,$57,$08,$17 ; AB09  TL=$56 TR=$57 BL=$08 BR=$17
        .byte   $0F,$58,$0F,$0F ; AB0D  TL=$0F TR=$58 BL=$0F BR=$0F
        .byte   $59,$1B,$5A,$1A ; AB11  TL=$59 TR=$1B BL=$5A BR=$1A
        .byte   $1B,$1B,$1A,$1A ; AB15  TL=$1B TR=$1B BL=$1A BR=$1A
        .byte   $1B,$25,$1A,$24 ; AB19  TL=$1B TR=$25 BL=$1A BR=$24
        .byte   $27,$0D,$26,$0D ; AB1D  TL=$27 TR=$0D BL=$26 BR=$0D
        .byte   $43,$5B,$13,$14 ; AB21  TL=$43 TR=$5B BL=$13 BR=$14
        .byte   $33,$34,$5C,$36 ; AB25  TL=$33 TR=$34 BL=$5C BR=$36
        .byte   $5D,$5E,$3D,$3E ; AB29  TL=$5D TR=$5E BL=$3D BR=$3E
        .byte   $34,$3F,$36,$5F ; AB2D  TL=$34 TR=$3F BL=$36 BR=$5F
        .byte   $60,$17,$61,$17 ; AB31  TL=$60 TR=$17 BL=$61 BR=$17
        .byte   $62,$56,$07,$08 ; AB35  TL=$62 TR=$56 BL=$07 BR=$08
        .byte   $56,$1F,$08,$0D ; AB39  TL=$56 TR=$1F BL=$08 BR=$0D
        .byte   $08,$63,$08,$64 ; AB3D  TL=$08 TR=$63 BL=$08 BR=$64
        .byte   $23,$65,$20,$1B ; AB41  TL=$23 TR=$65 BL=$20 BR=$1B
        .byte   $13,$5E,$13,$3E ; AB45  TL=$13 TR=$5E BL=$13 BR=$3E
        .byte   $3B,$3C,$3D,$66 ; AB49  TL=$3B TR=$3C BL=$3D BR=$66
        .byte   $08,$08,$43,$5B ; AB4D  TL=$08 TR=$08 BL=$43 BR=$5B
        .byte   $01,$02,$67,$67 ; AB51  TL=$01 TR=$02 BL=$67 BR=$67
        .byte   $07,$08,$68,$68 ; AB55  TL=$07 TR=$08 BL=$68 BR=$68
        .byte   $08,$08,$69,$6A ; AB59  TL=$08 TR=$08 BL=$69 BR=$6A
        .byte   $08,$08,$68,$68 ; AB5D  TL=$08 TR=$08 BL=$68 BR=$68
        .byte   $13,$14,$6B,$6C ; AB61  TL=$13 TR=$14 BL=$6B BR=$6C
        .byte   $08,$0D,$68,$68 ; AB65  TL=$08 TR=$0D BL=$68 BR=$68
        .byte   $0F,$0F,$6C,$68 ; AB69  TL=$0F TR=$0F BL=$6C BR=$68
        .byte   $0F,$0F,$68,$68 ; AB6D  TL=$0F TR=$0F BL=$68 BR=$68
        .byte   $0F,$11,$68,$6B ; AB71  TL=$0F TR=$11 BL=$68 BR=$6B
        .byte   $12,$08,$68,$68 ; AB75  TL=$12 TR=$08 BL=$68 BR=$68
        .byte   $08,$17,$68,$68 ; AB79  TL=$08 TR=$17 BL=$68 BR=$68
        .byte   $6D,$6E,$6F,$70 ; AB7D  TL=$6D TR=$6E BL=$6F BR=$70
        .byte   $03,$03,$04,$71 ; AB81  TL=$03 TR=$03 BL=$04 BR=$71
        .byte   $00,$00,$72,$73 ; AB85  TL=$00 TR=$00 BL=$72 BR=$73
        .byte   $74,$75,$08,$08 ; AB89  TL=$74 TR=$75 BL=$08 BR=$08
        .byte   $72,$73,$76,$77 ; AB8D  TL=$72 TR=$73 BL=$76 BR=$77
        .byte   $08,$08,$09,$0A ; AB91  TL=$08 TR=$08 BL=$09 BR=$0A
        .byte   $08,$78,$08,$79 ; AB95  TL=$08 TR=$78 BL=$08 BR=$79
        .byte   $7A,$7B,$72,$73 ; AB99  TL=$7A TR=$7B BL=$72 BR=$73
        .byte   $7C,$08,$75,$08 ; AB9D  TL=$7C TR=$08 BL=$75 BR=$08
        .byte   $7D,$30,$7E,$32 ; ABA1  TL=$7D TR=$30 BL=$7E BR=$32
        .byte   $0B,$0C,$09,$0A ; ABA5  TL=$0B TR=$0C BL=$09 BR=$0A
        .byte   $7F,$1A,$80,$25 ; ABA9  TL=$7F TR=$1A BL=$80 BR=$25
        .byte   $81,$1F,$82,$4D ; ABAD  TL=$81 TR=$1F BL=$82 BR=$4D
        .byte   $09,$0A,$6B,$6C ; ABB1  TL=$09 TR=$0A BL=$6B BR=$6C
        .byte   $0B,$0C,$68,$68 ; ABB5  TL=$0B TR=$0C BL=$68 BR=$68
        .byte   $0F,$53,$68,$68 ; ABB9  TL=$0F TR=$53 BL=$68 BR=$68
        .byte   $0E,$4E,$68,$68 ; ABBD  TL=$0E TR=$4E BL=$68 BR=$68
        .byte   $0F,$11,$68,$68 ; ABC1  TL=$0F TR=$11 BL=$68 BR=$68
        .byte   $00,$00,$00,$00 ; ABC5  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$00,$00,$00 ; ABC9  TL=$00 TR=$00 BL=$00 BR=$00
; 32×32 chunk-index grid = 1024 bytes
OvhdLvl4_MapData:
        .byte   $00,$01,$01,$01,$01,$01,$01,$01 ; ABCD
        .byte   $01,$01,$01,$01,$01,$01,$01,$01 ; ABD5
        .byte   $02,$01,$01,$01,$01,$01,$01,$01 ; ABDD
        .byte   $01,$01,$01,$01,$01,$01,$01,$01 ; ABE5
        .byte   $03,$04,$05,$06,$05,$06,$05,$07 ; ABED
        .byte   $08,$08,$08,$08,$09,$0A,$06,$06 ; ABF5
        .byte   $0B,$06,$06,$07,$08,$08,$08,$08 ; ABFD
        .byte   $09,$0A,$06,$06,$06,$06,$0C,$0D ; AC05
        .byte   $03,$05,$06,$05,$06,$05,$06,$0E ; AC0D
        .byte   $0F,$10,$11,$12,$13,$0A,$06,$06 ; AC15
        .byte   $0B,$06,$0C,$07,$11,$12,$14,$0F ; AC1D
        .byte   $15,$16,$0C,$06,$0C,$0D,$17,$0D ; AC25
        .byte   $03,$04,$05,$06,$05,$06,$05,$07 ; AC2D
        .byte   $12,$18,$12,$14,$15,$16,$06,$06 ; AC35
        .byte   $0B,$0D,$17,$0E,$0F,$10,$18,$11 ; AC3D
        .byte   $13,$19,$17,$1A,$17,$0C,$0C,$0D ; AC45
        .byte   $03,$05,$06,$05,$06,$05,$06,$1B ; AC4D
        .byte   $12,$18,$12,$18,$13,$0A,$06,$06 ; AC55
        .byte   $0B,$06,$0C,$07,$12,$18,$18,$12 ; AC5D
        .byte   $13,$0A,$0D,$17,$1A,$17,$17,$0D ; AC65
        .byte   $03,$04,$06,$06,$05,$06,$05,$07 ; AC6D
        .byte   $12,$1C,$10,$18,$13,$0A,$1D,$06 ; AC75
        .byte   $0B,$0D,$17,$1E,$12,$1C,$1F,$12 ; AC7D
        .byte   $13,$0A,$0C,$1A,$17,$06,$06,$0D ; AC85
        .byte   $03,$04,$20,$06,$06,$05,$06,$1B ; AC8D
        .byte   $12,$12,$1C,$1F,$13,$21,$22,$22 ; AC95
        .byte   $23,$06,$1A,$17,$12,$12,$12,$11 ; AC9D
        .byte   $13,$19,$17,$17,$06,$06,$20,$0D ; ACA5
        .byte   $03,$04,$06,$06,$05,$06,$05,$07 ; ACAD
        .byte   $12,$12,$12,$12,$13,$0A,$06,$06 ; ACB5
        .byte   $06,$1A,$17,$07,$12,$12,$12,$14 ; ACBD
        .byte   $15,$16,$06,$06,$06,$06,$06,$0D ; ACC5
        .byte   $03,$24,$22,$22,$25,$22,$22,$26 ; ACCD
        .byte   $12,$11,$12,$12,$13,$0A,$0C,$0C ; ACD5
        .byte   $1A,$17,$0C,$07,$12,$12,$12,$18 ; ACDD
        .byte   $13,$21,$22,$22,$22,$22,$22,$27 ; ACE5
        .byte   $03,$04,$06,$06,$0B,$06,$28,$0E ; ACED
        .byte   $0F,$0F,$0F,$10,$13,$19,$17,$17 ; ACF5
        .byte   $17,$0D,$17,$07,$12,$12,$11,$18 ; ACFD
        .byte   $29,$16,$06,$0C,$0C,$06,$0C,$0D ; AD05
        .byte   $03,$04,$20,$06,$2A,$06,$0B,$07 ; AD0D
        .byte   $11,$12,$11,$18,$13,$0A,$0C,$06 ; AD15
        .byte   $0C,$06,$0C,$0E,$0F,$10,$12,$18 ; AD1D
        .byte   $2B,$0A,$1A,$17,$17,$0D,$17,$0D ; AD25
        .byte   $03,$2C,$2D,$2D,$2D,$2D,$2E,$2F ; AD2D
        .byte   $12,$12,$12,$18,$13,$19,$17,$0D ; AD35
        .byte   $17,$0D,$17,$07,$11,$18,$11,$18 ; AD3D
        .byte   $2B,$19,$17,$06,$0C,$0C,$06,$0D ; AD45
        .byte   $03,$08,$08,$08,$08,$08,$08,$30 ; AD4D
        .byte   $12,$12,$11,$18,$13,$21,$22,$22 ; AD55
        .byte   $22,$22,$22,$26,$12,$18,$31,$1F ; AD5D
        .byte   $2B,$0A,$06,$0D,$17,$17,$0C,$0D ; AD65
        .byte   $03,$14,$0F,$0F,$0F,$0F,$0F,$10 ; AD6D
        .byte   $12,$12,$12,$1C,$15,$16,$06,$06 ; AD75
        .byte   $06,$06,$06,$07,$12,$18,$11,$12 ; AD7D
        .byte   $2B,$0A,$0C,$06,$0C,$1A,$17,$0D ; AD85
        .byte   $03,$18,$14,$10,$11,$11,$11,$18 ; AD8D
        .byte   $11,$12,$12,$11,$13,$32,$32,$32 ; AD95
        .byte   $32,$32,$33,$32,$12,$1C,$0F,$0F ; AD9D
        .byte   $34,$19,$17,$1A,$17,$17,$1D,$0D ; ADA5
        .byte   $03,$18,$18,$18,$14,$10,$11,$1C ; ADAD
        .byte   $0F,$0F,$0F,$0F,$15,$16,$06,$06 ; ADB5
        .byte   $06,$06,$06,$07,$12,$11,$12,$12 ; ADBD
        .byte   $13,$35,$36,$17,$2D,$2D,$2D,$36 ; ADC5
        .byte   $03,$18,$18,$18,$18,$18,$14,$10 ; ADCD
        .byte   $12,$12,$14,$10,$13,$21,$22,$22 ; ADD5
        .byte   $22,$22,$22,$26,$11,$14,$10,$11 ; ADDD
        .byte   $37,$08,$08,$08,$08,$08,$08,$09 ; ADE5
        .byte   $03,$18,$18,$18,$18,$18,$18,$18 ; ADED
        .byte   $11,$12,$18,$1C,$15,$16,$06,$06 ; ADF5
        .byte   $06,$06,$06,$07,$12,$18,$1C,$0F ; ADFD
        .byte   $38,$39,$3A,$3A,$3A,$3A,$3A,$3B ; AE05
        .byte   $03,$18,$18,$1C,$1F,$1C,$1F,$18 ; AE0D
        .byte   $12,$11,$18,$11,$3C,$3D,$3E,$3E ; AE15
        .byte   $3E,$3E,$3F,$40,$11,$18,$12,$11 ; AE1D
        .byte   $2B,$0A,$06,$06,$41,$06,$06,$0D ; AE25
        .byte   $03,$1C,$1F,$11,$12,$12,$11,$1C ; AE2D
        .byte   $0F,$0F,$1F,$14,$15,$16,$06,$06 ; AE35
        .byte   $06,$06,$06,$07,$12,$1C,$10,$12 ; AE3D
        .byte   $2B,$0A,$42,$22,$43,$22,$44,$45 ; AE45
        .byte   $03,$11,$12,$12,$12,$12,$12,$12 ; AE4D
        .byte   $11,$12,$12,$18,$13,$21,$22,$22 ; AE55
        .byte   $22,$22,$22,$26,$11,$12,$18,$11 ; AE5D
        .byte   $2B,$0A,$06,$06,$0B,$06,$06,$0D ; AE65
        .byte   $03,$46,$3A,$3A,$3A,$3A,$3A,$47 ; AE6D
        .byte   $12,$12,$11,$18,$13,$0A,$06,$06 ; AE75
        .byte   $06,$06,$06,$0E,$0F,$10,$18,$12 ; AE7D
        .byte   $2B,$0A,$06,$06,$0B,$48,$42,$27 ; AE85
        .byte   $03,$04,$1D,$06,$06,$06,$06,$0E ; AE8D
        .byte   $0F,$0F,$10,$18,$13,$0A,$20,$06 ; AE95
        .byte   $06,$06,$06,$07,$12,$1C,$1F,$11 ; AE9D
        .byte   $2B,$0A,$06,$06,$0B,$06,$06,$0D ; AEA5
        .byte   $03,$04,$06,$06,$06,$06,$06,$07 ; AEAD
        .byte   $12,$11,$1C,$1F,$13,$0A,$06,$06 ; AEB5
        .byte   $06,$06,$06,$07,$12,$11,$12,$12 ; AEBD
        .byte   $49,$16,$06,$06,$4A,$22,$44,$45 ; AEC5
        .byte   $03,$24,$22,$22,$22,$22,$4B,$26 ; AECD
        .byte   $12,$12,$12,$12,$13,$21,$4B,$22 ; AED5
        .byte   $22,$22,$4B,$26,$14,$10,$12,$11 ; AEDD
        .byte   $13,$21,$4B,$22,$23,$06,$06,$0D ; AEE5
        .byte   $03,$04,$06,$06,$4C,$06,$0B,$0E ; AEED
        .byte   $0F,$10,$11,$14,$15,$16,$0B,$06 ; AEF5
        .byte   $4C,$06,$0B,$07,$18,$18,$11,$14 ; AEFD
        .byte   $15,$16,$0B,$06,$4C,$48,$42,$27 ; AF05
        .byte   $03,$04,$06,$06,$0B,$06,$2A,$07 ; AF0D
        .byte   $12,$1C,$0F,$1F,$13,$0A,$2A,$06 ; AF15
        .byte   $0B,$06,$2A,$0E,$1F,$1C,$0F,$1F ; AF1D
        .byte   $13,$0A,$2A,$06,$0B,$06,$06,$0D ; AF25
        .byte   $4D,$4E,$4F,$50,$51,$50,$50,$52 ; AF2D
        .byte   $53,$54,$54,$54,$55,$56,$50,$50 ; AF35
        .byte   $51,$50,$50,$52,$53,$54,$54,$54 ; AF3D
        .byte   $55,$56,$50,$50,$51,$50,$50,$57 ; AF45
        .byte   $00,$01,$58,$01,$01,$01,$01,$59 ; AF4D
        .byte   $5A,$01,$01,$59,$00,$01,$01,$01 ; AF55
        .byte   $01,$01,$01,$01,$01,$01,$01,$59 ; AF5D
        .byte   $00,$01,$01,$59,$00,$01,$01,$01 ; AF65
        .byte   $03,$04,$5B,$06,$06,$06,$06,$0D ; AF6D
        .byte   $5C,$06,$06,$0D,$03,$04,$05,$5D ; AF75
        .byte   $05,$5D,$05,$5D,$05,$5D,$05,$0D ; AF7D
        .byte   $5C,$08,$08,$09,$03,$08,$08,$09 ; AF85
        .byte   $03,$04,$06,$06,$06,$06,$06,$5E ; AF8D
        .byte   $5F,$60,$06,$0D,$03,$61,$06,$62 ; AF95
        .byte   $05,$62,$05,$62,$05,$62,$05,$5E ; AF9D
        .byte   $5F,$63,$64,$13,$03,$12,$12,$13 ; AFA5
        .byte   $4D,$4E,$50,$50,$50,$50,$50,$57 ; AFAD
        .byte   $4D,$50,$50,$57,$4D,$4E,$65,$66 ; AFB5
        .byte   $65,$66,$65,$66,$65,$66,$65,$57 ; AFBD
        .byte   $4D,$67,$68,$69,$4D,$54,$54,$69 ; AFC5
; 16 bytes — 8 B vertical + 8 B horizontal scroll-boundary flags
OvhdLvl4_ScrollData:
        .byte   $FF,$00,$00,$00,$00,$00,$00,$FF ; AFCD
        .byte   $80,$80,$80,$80,$80,$80,$80,$B2 ; AFD5
; Tile attribute table – bits: 0-1=palette 2=walk-behind 3=Tunnel(→Tank) 4=damage 7=solid 
; 3+7=Doorway 6+7=destroyable
OvhdLvl4_TileAttrTable:
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; AFDD
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; AFE5
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; AFED
        .byte   $00,$00,$00,$00,$80,$80,$80,$80 ; AFF5
        .byte   $83,$83,$83,$83,$82,$82,$80,$82 ; AFFD
        .byte   $82,$82,$82,$81,$81,$85,$85,$85 ; B005
        .byte   $85,$85,$85,$85,$86,$86,$86,$86 ; B00D
        .byte   $86,$86,$86,$86,$86,$05,$05,$05 ; B015
        .byte   $06,$06,$06,$06,$06,$06,$06,$06 ; B01D
        .byte   $06,$06,$06,$06,$06,$06,$06,$C1 ; B025
        .byte   $17,$17,$17,$17,$11,$8D,$8E,$8E ; B02D
        .byte   $8E,$8E,$89,$89,$0B,$17         ; B035
; ----------------------------------------------------------------------------
OvhdLvl7_MapPointers:
        .addr   OvhdLvl7_BgPalette              ; B03B
        .addr   OvhdLvl7_TileAttrTable          ; B03D
        .addr   OvhdLvl7_TileDescTable          ; B03F
        .addr   OvhdLvl7_StructureDescTable     ; B041
        .addr   OvhdLvl7_ChunkDescTable         ; B043
        .addr   OvhdLvl7_MapData                ; B045
; ----------------------------------------------------------------------------
; 4 BgPalette records — the level's 4 background sub-palettes × 4 NES colour indices.
OvhdLvl7_BgPalette:
        .byte   $0F,$08,$1A,$2B ; B047  Backdrop=$0F Colour1=$08 Colour2=$1A Colour3=$2B
        .byte   $0F,$03,$12,$22 ; B04B  Backdrop=$0F Colour1=$03 Colour2=$12 Colour3=$22
        .byte   $0F,$07,$17,$10 ; B04F  Backdrop=$0F Colour1=$07 Colour2=$17 Colour3=$10
        .byte   $0F,$05,$15,$27 ; B053  Backdrop=$0F Colour1=$05 Colour2=$15 Colour3=$27
; 92 TileDesc records — the level's Tile definitions. Only 91 are usable: OvhdLvl7_TileAttrTable
; shares this index space and is 91 bytes ($BA07-$BA61, ending where DemoInputStream_0_TankArea1
; begins), so the last record has no attribute byte. OvhdLvl2 and OvhdLvl8 have the same 1-record
; overhang.
OvhdLvl7_TileDescTable:
        .byte   $00,$00,$00,$00 ; B057  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $6F,$6F,$6F,$6F ; B05B  TL=$6F TR=$6F BL=$6F BR=$6F
        .byte   $6F,$7F,$6F,$7F ; B05F  TL=$6F TR=$7F BL=$6F BR=$7F
        .byte   $6F,$8E,$6F,$7F ; B063  TL=$6F TR=$8E BL=$6F BR=$7F
        .byte   $6F,$7F,$6F,$8F ; B067  TL=$6F TR=$7F BL=$6F BR=$8F
        .byte   $62,$62,$62,$62 ; B06B  TL=$62 TR=$62 BL=$62 BR=$62
        .byte   $62,$5C,$62,$5C ; B06F  TL=$62 TR=$5C BL=$62 BR=$5C
        .byte   $84,$84,$84,$80 ; B073  TL=$84 TR=$84 BL=$84 BR=$80
        .byte   $84,$84,$90,$90 ; B077  TL=$84 TR=$84 BL=$90 BR=$90
        .byte   $84,$84,$91,$84 ; B07B  TL=$84 TR=$84 BL=$91 BR=$84
        .byte   $84,$81,$84,$81 ; B07F  TL=$84 TR=$81 BL=$84 BR=$81
        .byte   $81,$84,$81,$84 ; B083  TL=$81 TR=$84 BL=$81 BR=$84
        .byte   $84,$82,$84,$84 ; B087  TL=$84 TR=$82 BL=$84 BR=$84
        .byte   $90,$90,$84,$84 ; B08B  TL=$90 TR=$90 BL=$84 BR=$84
        .byte   $92,$84,$84,$84 ; B08F  TL=$92 TR=$84 BL=$84 BR=$84
        .byte   $8D,$6F,$8D,$6F ; B093  TL=$8D TR=$6F BL=$8D BR=$6F
        .byte   $6F,$8D,$6F,$8D ; B097  TL=$6F TR=$8D BL=$6F BR=$8D
        .byte   $9C,$9C,$6F,$6F ; B09B  TL=$9C TR=$9C BL=$6F BR=$6F
        .byte   $6F,$6F,$9C,$9C ; B09F  TL=$6F TR=$6F BL=$9C BR=$9C
        .byte   $8C,$9C,$8D,$6F ; B0A3  TL=$8C TR=$9C BL=$8D BR=$6F
        .byte   $9C,$9E,$6F,$8D ; B0A7  TL=$9C TR=$9E BL=$6F BR=$8D
        .byte   $8D,$6F,$9F,$9C ; B0AB  TL=$8D TR=$6F BL=$9F BR=$9C
        .byte   $6F,$8D,$9C,$9D ; B0AF  TL=$6F TR=$8D BL=$9C BR=$9D
        .byte   $6F,$6F,$6F,$8C ; B0B3  TL=$6F TR=$6F BL=$6F BR=$8C
        .byte   $6F,$6F,$9E,$6F ; B0B7  TL=$6F TR=$6F BL=$9E BR=$6F
        .byte   $6F,$9F,$6F,$6F ; B0BB  TL=$6F TR=$9F BL=$6F BR=$6F
        .byte   $9D,$6F,$6F,$6F ; B0BF  TL=$9D TR=$6F BL=$6F BR=$6F
        .byte   $54,$64,$55,$65 ; B0C3  TL=$54 TR=$64 BL=$55 BR=$65
        .byte   $06,$16,$07,$17 ; B0C7  TL=$06 TR=$16 BL=$07 BR=$17
        .byte   $0C,$1C,$0D,$0D ; B0CB  TL=$0C TR=$1C BL=$0D BR=$0D
        .byte   $26,$36,$27,$37 ; B0CF  TL=$26 TR=$36 BL=$27 BR=$37
        .byte   $0C,$0E,$0D,$0F ; B0D3  TL=$0C TR=$0E BL=$0D BR=$0F
        .byte   $08,$18,$09,$19 ; B0D7  TL=$08 TR=$18 BL=$09 BR=$19
        .byte   $28,$18,$29,$19 ; B0DB  TL=$28 TR=$18 BL=$29 BR=$19
        .byte   $28,$38,$29,$39 ; B0DF  TL=$28 TR=$38 BL=$29 BR=$39
        .byte   $28,$1E,$29,$1F ; B0E3  TL=$28 TR=$1E BL=$29 BR=$1F
        .byte   $02,$12,$05,$15 ; B0E7  TL=$02 TR=$12 BL=$05 BR=$15
        .byte   $0A,$1A,$0B,$1B ; B0EB  TL=$0A TR=$1A BL=$0B BR=$1B
        .byte   $22,$32,$25,$35 ; B0EF  TL=$22 TR=$32 BL=$25 BR=$35
        .byte   $0A,$2E,$0B,$2F ; B0F3  TL=$0A TR=$2E BL=$0B BR=$2F
        .byte   $02,$32,$05,$35 ; B0F7  TL=$02 TR=$32 BL=$05 BR=$35
        .byte   $97,$87,$88,$98 ; B0FB  TL=$97 TR=$87 BL=$88 BR=$98
        .byte   $42,$52,$43,$00 ; B0FF  TL=$42 TR=$52 BL=$43 BR=$00
        .byte   $52,$72,$00,$43 ; B103  TL=$52 TR=$72 BL=$00 BR=$43
        .byte   $0A,$1A,$1D,$1D ; B107  TL=$0A TR=$1A BL=$1D BR=$1D
        .byte   $2C,$3C,$2D,$3D ; B10B  TL=$2C TR=$3C BL=$2D BR=$3D
        .byte   $1D,$1D,$1D,$1D ; B10F  TL=$1D TR=$1D BL=$1D BR=$1D
        .byte   $2A,$3A,$2B,$3B ; B113  TL=$2A TR=$3A BL=$2B BR=$3B
        .byte   $04,$14,$05,$15 ; B117  TL=$04 TR=$14 BL=$05 BR=$15
        .byte   $1D,$1D,$0B,$1B ; B11B  TL=$1D TR=$1D BL=$0B BR=$1B
        .byte   $24,$34,$25,$35 ; B11F  TL=$24 TR=$34 BL=$25 BR=$35
        .byte   $44,$66,$45,$67 ; B123  TL=$44 TR=$66 BL=$45 BR=$67
        .byte   $66,$44,$67,$56 ; B127  TL=$66 TR=$44 BL=$67 BR=$56
        .byte   $46,$66,$47,$67 ; B12B  TL=$46 TR=$66 BL=$47 BR=$67
        .byte   $66,$57,$67,$47 ; B12F  TL=$66 TR=$57 BL=$67 BR=$47
        .byte   $66,$66,$67,$67 ; B133  TL=$66 TR=$66 BL=$67 BR=$67
        .byte   $40,$50,$41,$51 ; B137  TL=$40 TR=$50 BL=$41 BR=$51
        .byte   $40,$50,$61,$71 ; B13B  TL=$40 TR=$50 BL=$61 BR=$71
        .byte   $02,$12,$03,$13 ; B13F  TL=$02 TR=$12 BL=$03 BR=$13
        .byte   $0A,$1A,$1D,$1D ; B143  TL=$0A TR=$1A BL=$1D BR=$1D
        .byte   $22,$32,$23,$33 ; B147  TL=$22 TR=$32 BL=$23 BR=$33
        .byte   $2C,$3C,$2D,$3D ; B14B  TL=$2C TR=$3C BL=$2D BR=$3D
        .byte   $1D,$1D,$1D,$1D ; B14F  TL=$1D TR=$1D BL=$1D BR=$1D
        .byte   $2A,$3A,$2B,$3B ; B153  TL=$2A TR=$3A BL=$2B BR=$3B
        .byte   $02,$12,$05,$15 ; B157  TL=$02 TR=$12 BL=$05 BR=$15
        .byte   $0A,$1A,$0B,$1B ; B15B  TL=$0A TR=$1A BL=$0B BR=$1B
        .byte   $22,$32,$25,$35 ; B15F  TL=$22 TR=$32 BL=$25 BR=$35
        .byte   $0A,$2E,$0B,$2F ; B163  TL=$0A TR=$2E BL=$0B BR=$2F
        .byte   $02,$32,$05,$35 ; B167  TL=$02 TR=$32 BL=$05 BR=$35
        .byte   $41,$60,$40,$50 ; B16B  TL=$41 TR=$60 BL=$40 BR=$50
        .byte   $70,$71,$40,$50 ; B16F  TL=$70 TR=$71 BL=$40 BR=$50
        .byte   $40,$50,$40,$50 ; B173  TL=$40 TR=$50 BL=$40 BR=$50
        .byte   $74,$76,$75,$77 ; B177  TL=$74 TR=$76 BL=$75 BR=$77
        .byte   $6E,$6E,$6E,$6E ; B17B  TL=$6E TR=$6E BL=$6E BR=$6E
        .byte   $00,$00,$96,$99 ; B17F  TL=$00 TR=$00 BL=$96 BR=$99
        .byte   $00,$00,$89,$99 ; B183  TL=$00 TR=$00 BL=$89 BR=$99
        .byte   $00,$00,$7D,$00 ; B187  TL=$00 TR=$00 BL=$7D BR=$00
        .byte   $85,$9A,$86,$9B ; B18B  TL=$85 TR=$9A BL=$86 BR=$9B
        .byte   $8A,$9A,$8B,$9B ; B18F  TL=$8A TR=$9A BL=$8B BR=$9B
        .byte   $6C,$00,$6D,$00 ; B193  TL=$6C TR=$00 BL=$6D BR=$00
        .byte   $43,$00,$73,$53 ; B197  TL=$43 TR=$00 BL=$73 BR=$53
        .byte   $00,$43,$63,$73 ; B19B  TL=$00 TR=$43 BL=$63 BR=$73
        .byte   $40,$50,$40,$50 ; B19F  TL=$40 TR=$50 BL=$40 BR=$50
        .byte   $02,$12,$03,$13 ; B1A3  TL=$02 TR=$12 BL=$03 BR=$13
        .byte   $22,$32,$23,$33 ; B1A7  TL=$22 TR=$32 BL=$23 BR=$33
        .byte   $2C,$3C,$2D,$3D ; B1AB  TL=$2C TR=$3C BL=$2D BR=$3D
        .byte   $2A,$3A,$2B,$3B ; B1AF  TL=$2A TR=$3A BL=$2B BR=$3B
        .byte   $83,$93,$00,$00 ; B1B3  TL=$83 TR=$93 BL=$00 BR=$00
        .byte   $6C,$00,$94,$99 ; B1B7  TL=$6C TR=$00 BL=$94 BR=$99
        .byte   $9C,$9C,$6F,$7F ; B1BB  TL=$9C TR=$9C BL=$6F BR=$7F
        .byte   $6F,$7F,$9C,$9C ; B1BF  TL=$6F TR=$7F BL=$9C BR=$9C
        .byte   $00,$00,$00,$00 ; B1C3  TL=$00 TR=$00 BL=$00 BR=$00
; 116 StructureDesc records — the level's Structure definitions, each a 2×2 quad of Tiles.
OvhdLvl7_StructureDescTable:
        .byte   $2E,$2E,$31,$31 ; B1C7  TL=$2E TR=$2E BL=$31 BR=$31
        .byte   $1D,$1D,$21,$21 ; B1CB  TL=$1D TR=$1D BL=$21 BR=$21
        .byte   $2E,$2E,$2E,$2E ; B1CF  TL=$2E TR=$2E BL=$2E BR=$2E
        .byte   $2D,$2E,$2D,$2E ; B1D3  TL=$2D TR=$2E BL=$2D BR=$2E
        .byte   $2E,$2F,$2E,$2F ; B1D7  TL=$2E TR=$2F BL=$2E BR=$2F
        .byte   $1D,$1F,$21,$23 ; B1DB  TL=$1D TR=$1F BL=$21 BR=$23
        .byte   $00,$00,$00,$00 ; B1DF  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $01,$01,$01,$01 ; B1E3  TL=$01 TR=$01 BL=$01 BR=$01
        .byte   $01,$02,$01,$02 ; B1E7  TL=$01 TR=$02 BL=$01 BR=$02
        .byte   $4A,$4B,$4D,$4E ; B1EB  TL=$4A TR=$4B BL=$4D BR=$4E
        .byte   $4B,$4B,$4E,$4E ; B1EF  TL=$4B TR=$4B BL=$4E BR=$4E
        .byte   $4D,$4E,$4D,$4E ; B1F3  TL=$4D TR=$4E BL=$4D BR=$4E
        .byte   $4E,$4E,$4E,$4F ; B1F7  TL=$4E TR=$4E BL=$4E BR=$4F
        .byte   $13,$11,$0F,$01 ; B1FB  TL=$13 TR=$11 BL=$0F BR=$01
        .byte   $11,$14,$01,$10 ; B1FF  TL=$11 TR=$14 BL=$01 BR=$10
        .byte   $4B,$4C,$4E,$4F ; B203  TL=$4B TR=$4C BL=$4E BR=$4F
        .byte   $4E,$4E,$4D,$4E ; B207  TL=$4E TR=$4E BL=$4D BR=$4E
        .byte   $4E,$4F,$4E,$4F ; B20B  TL=$4E TR=$4F BL=$4E BR=$4F
        .byte   $4E,$58,$4E,$4E ; B20F  TL=$4E TR=$58 BL=$4E BR=$4E
        .byte   $0F,$01,$15,$18 ; B213  TL=$0F TR=$01 BL=$15 BR=$18
        .byte   $01,$10,$17,$16 ; B217  TL=$01 TR=$10 BL=$17 BR=$16
        .byte   $4C,$0F,$4F,$0F ; B21B  TL=$4C TR=$0F BL=$4F BR=$0F
        .byte   $10,$4A,$10,$4D ; B21F  TL=$10 TR=$4A BL=$10 BR=$4D
        .byte   $4D,$4E,$4E,$4E ; B223  TL=$4D TR=$4E BL=$4E BR=$4E
        .byte   $3B,$3B,$3E,$3E ; B227  TL=$3B TR=$3B BL=$3E BR=$3E
        .byte   $3C,$45,$3F,$47 ; B22B  TL=$3C TR=$45 BL=$3F BR=$47
        .byte   $46,$3A,$47,$3D ; B22F  TL=$46 TR=$3A BL=$47 BR=$3D
        .byte   $11,$11,$01,$01 ; B233  TL=$11 TR=$11 BL=$01 BR=$01
        .byte   $11,$1A,$01,$01 ; B237  TL=$11 TR=$1A BL=$01 BR=$01
        .byte   $19,$11,$01,$01 ; B23B  TL=$19 TR=$11 BL=$01 BR=$01
        .byte   $11,$59,$01,$02 ; B23F  TL=$11 TR=$59 BL=$01 BR=$02
        .byte   $2F,$52,$32,$38 ; B243  TL=$2F TR=$52 BL=$32 BR=$38
        .byte   $52,$2D,$39,$30 ; B247  TL=$52 TR=$2D BL=$39 BR=$30
        .byte   $1E,$2A,$21,$50 ; B24B  TL=$1E TR=$2A BL=$21 BR=$50
        .byte   $2B,$1C,$51,$20 ; B24F  TL=$2B TR=$1C BL=$51 BR=$20
        .byte   $01,$01,$01,$07 ; B253  TL=$01 TR=$01 BL=$01 BR=$07
        .byte   $01,$01,$08,$09 ; B257  TL=$01 TR=$01 BL=$08 BR=$09
        .byte   $01,$0A,$01,$0C ; B25B  TL=$01 TR=$0A BL=$01 BR=$0C
        .byte   $57,$0B,$0D,$0E ; B25F  TL=$57 TR=$0B BL=$0D BR=$0E
        .byte   $01,$01,$1B,$1B ; B263  TL=$01 TR=$01 BL=$1B BR=$1B
        .byte   $01,$10,$01,$10 ; B267  TL=$01 TR=$10 BL=$01 BR=$10
        .byte   $0F,$01,$0F,$01 ; B26B  TL=$0F TR=$01 BL=$0F BR=$01
        .byte   $0F,$01,$15,$12 ; B26F  TL=$0F TR=$01 BL=$15 BR=$12
        .byte   $01,$01,$12,$12 ; B273  TL=$01 TR=$01 BL=$12 BR=$12
        .byte   $01,$05,$01,$01 ; B277  TL=$01 TR=$05 BL=$01 BR=$01
        .byte   $05,$01,$01,$01 ; B27B  TL=$05 TR=$01 BL=$01 BR=$01
        .byte   $01,$01,$12,$18 ; B27F  TL=$01 TR=$01 BL=$12 BR=$18
        .byte   $01,$01,$17,$12 ; B283  TL=$01 TR=$01 BL=$17 BR=$12
        .byte   $01,$10,$12,$16 ; B287  TL=$01 TR=$10 BL=$12 BR=$16
        .byte   $4E,$4E,$4E,$4E ; B28B  TL=$4E TR=$4E BL=$4E BR=$4E
        .byte   $1A,$01,$01,$01 ; B28F  TL=$1A TR=$01 BL=$01 BR=$01
        .byte   $48,$48,$48,$48 ; B293  TL=$48 TR=$48 BL=$48 BR=$48
        .byte   $01,$19,$01,$01 ; B297  TL=$01 TR=$19 BL=$01 BR=$01
        .byte   $01,$1B,$01,$1B ; B29B  TL=$01 TR=$1B BL=$01 BR=$1B
        .byte   $01,$1B,$1B,$1B ; B29F  TL=$01 TR=$1B BL=$1B BR=$1B
        .byte   $4F,$0F,$4F,$0F ; B2A3  TL=$4F TR=$0F BL=$4F BR=$0F
        .byte   $10,$4D,$10,$4D ; B2A7  TL=$10 TR=$4D BL=$10 BR=$4D
        .byte   $01,$10,$01,$19 ; B2AB  TL=$01 TR=$10 BL=$01 BR=$19
        .byte   $01,$17,$01,$10 ; B2AF  TL=$01 TR=$17 BL=$01 BR=$10
        .byte   $4D,$4E,$11,$11 ; B2B3  TL=$4D TR=$4E BL=$11 BR=$11
        .byte   $4E,$4F,$11,$11 ; B2B7  TL=$4E TR=$4F BL=$11 BR=$11
        .byte   $12,$12,$4A,$4B ; B2BB  TL=$12 TR=$12 BL=$4A BR=$4B
        .byte   $12,$12,$4B,$4C ; B2BF  TL=$12 TR=$12 BL=$4B BR=$4C
        .byte   $0F,$01,$1A,$01 ; B2C3  TL=$0F TR=$01 BL=$1A BR=$01
        .byte   $18,$01,$0F,$01 ; B2C7  TL=$18 TR=$01 BL=$0F BR=$01
        .byte   $17,$12,$10,$4A ; B2CB  TL=$17 TR=$12 BL=$10 BR=$4A
        .byte   $12,$18,$4C,$0F ; B2CF  TL=$12 TR=$18 BL=$4C BR=$0F
        .byte   $10,$4D,$19,$11 ; B2D3  TL=$10 TR=$4D BL=$19 BR=$11
        .byte   $4F,$0F,$11,$1A ; B2D7  TL=$4F TR=$0F BL=$11 BR=$1A
        .byte   $1B,$01,$1B,$01 ; B2DB  TL=$1B TR=$01 BL=$1B BR=$01
        .byte   $01,$01,$01,$17 ; B2DF  TL=$01 TR=$01 BL=$01 BR=$17
        .byte   $4F,$15,$58,$4B ; B2E3  TL=$4F TR=$15 BL=$58 BR=$4B
        .byte   $12,$12,$4B,$4B ; B2E7  TL=$12 TR=$12 BL=$4B BR=$4B
        .byte   $4E,$4E,$11,$11 ; B2EB  TL=$4E TR=$4E BL=$11 BR=$11
        .byte   $4E,$4E,$14,$4E ; B2EF  TL=$4E TR=$4E BL=$14 BR=$4E
        .byte   $01,$01,$18,$01 ; B2F3  TL=$01 TR=$01 BL=$18 BR=$01
        .byte   $01,$02,$12,$5A ; B2F7  TL=$01 TR=$02 BL=$12 BR=$5A
        .byte   $4A,$4C,$4D,$4F ; B2FB  TL=$4A TR=$4C BL=$4D BR=$4F
        .byte   $4E,$4E,$4E,$13 ; B2FF  TL=$4E TR=$4E BL=$4E BR=$13
        .byte   $4D,$4F,$4E,$4F ; B303  TL=$4D TR=$4F BL=$4E BR=$4F
        .byte   $1B,$01,$1B,$1B ; B307  TL=$1B TR=$01 BL=$1B BR=$1B
        .byte   $01,$10,$1B,$1B ; B30B  TL=$01 TR=$10 BL=$1B BR=$1B
        .byte   $4E,$4F,$4D,$4F ; B30F  TL=$4E TR=$4F BL=$4D BR=$4F
        .byte   $3A,$3B,$3D,$3E ; B313  TL=$3A TR=$3B BL=$3D BR=$3E
        .byte   $3B,$3C,$3E,$3F ; B317  TL=$3B TR=$3C BL=$3E BR=$3F
        .byte   $01,$01,$41,$41 ; B31B  TL=$01 TR=$01 BL=$41 BR=$41
        .byte   $25,$25,$1D,$1D ; B31F  TL=$25 TR=$25 BL=$1D BR=$1D
        .byte   $01,$10,$41,$42 ; B323  TL=$01 TR=$10 BL=$41 BR=$42
        .byte   $25,$26,$1D,$1E ; B327  TL=$25 TR=$26 BL=$1D BR=$1E
        .byte   $16,$4D,$4B,$4D ; B32B  TL=$16 TR=$4D BL=$4B BR=$4D
        .byte   $01,$01,$40,$41 ; B32F  TL=$01 TR=$01 BL=$40 BR=$41
        .byte   $24,$25,$1C,$1D ; B333  TL=$24 TR=$25 BL=$1C BR=$1D
        .byte   $2D,$2E,$30,$31 ; B337  TL=$2D TR=$2E BL=$30 BR=$31
        .byte   $1C,$1D,$20,$21 ; B33B  TL=$1C TR=$1D BL=$20 BR=$21
        .byte   $2E,$2F,$31,$32 ; B33F  TL=$2E TR=$2F BL=$31 BR=$32
        .byte   $1D,$1E,$21,$22 ; B343  TL=$1D TR=$1E BL=$21 BR=$22
        .byte   $1B,$1B,$1B,$01 ; B347  TL=$1B TR=$1B BL=$1B BR=$01
        .byte   $1B,$1B,$01,$1B ; B34B  TL=$1B TR=$1B BL=$01 BR=$1B
        .byte   $14,$4E,$10,$4D ; B34F  TL=$14 TR=$4E BL=$10 BR=$4D
        .byte   $4E,$13,$4F,$0F ; B353  TL=$4E TR=$13 BL=$4F BR=$0F
        .byte   $49,$49,$49,$49 ; B357  TL=$49 TR=$49 BL=$49 BR=$49
        .byte   $11,$14,$01,$19 ; B35B  TL=$11 TR=$14 BL=$01 BR=$19
        .byte   $01,$01,$01,$02 ; B35F  TL=$01 TR=$01 BL=$01 BR=$02
        .byte   $01,$04,$01,$01 ; B363  TL=$01 TR=$04 BL=$01 BR=$01
        .byte   $44,$44,$28,$28 ; B367  TL=$44 TR=$44 BL=$28 BR=$28
        .byte   $29,$29,$01,$01 ; B36B  TL=$29 TR=$29 BL=$01 BR=$01
        .byte   $0F,$01,$0F,$02 ; B36F  TL=$0F TR=$01 BL=$0F BR=$02
        .byte   $0F,$04,$0F,$01 ; B373  TL=$0F TR=$04 BL=$0F BR=$01
        .byte   $12,$16,$4B,$4B ; B377  TL=$12 TR=$16 BL=$4B BR=$4B
        .byte   $4E,$4E,$11,$14 ; B37B  TL=$4E TR=$4E BL=$11 BR=$14
        .byte   $1B,$1B,$01,$01 ; B37F  TL=$1B TR=$1B BL=$01 BR=$01
        .byte   $10,$4D,$16,$4D ; B383  TL=$10 TR=$4D BL=$16 BR=$4D
        .byte   $4F,$0F,$4F,$15 ; B387  TL=$4F TR=$0F BL=$4F BR=$15
        .byte   $4B,$4D,$4E,$4E ; B38B  TL=$4B TR=$4D BL=$4E BR=$4E
        .byte   $58,$4B,$4E,$4E ; B38F  TL=$58 TR=$4B BL=$4E BR=$4E
        .byte   $2C,$2C,$2E,$2E ; B393  TL=$2C TR=$2C BL=$2E BR=$2E
; 152 ChunkDesc records — the level's Chunk definitions, each a 2×2 quad of Structures. These are
; the indices OvhdLvl7_MapData's grid holds.
OvhdLvl7_ChunkDescTable:
        .byte   $00,$00,$01,$01 ; B397  TL=$00 TR=$00 BL=$01 BR=$01
        .byte   $02,$02,$03,$04 ; B39B  TL=$02 TR=$02 BL=$03 BR=$04
        .byte   $00,$00,$01,$05 ; B39F  TL=$00 TR=$00 BL=$01 BR=$05
        .byte   $06,$06,$06,$06 ; B3A3  TL=$06 TR=$06 BL=$06 BR=$06
        .byte   $03,$04,$03,$04 ; B3A7  TL=$03 TR=$04 BL=$03 BR=$04
        .byte   $07,$07,$07,$07 ; B3AB  TL=$07 TR=$07 BL=$07 BR=$07
        .byte   $07,$08,$07,$08 ; B3AF  TL=$07 TR=$08 BL=$07 BR=$08
        .byte   $09,$0A,$0B,$0C ; B3B3  TL=$09 TR=$0A BL=$0B BR=$0C
        .byte   $0A,$0A,$0D,$0E ; B3B7  TL=$0A TR=$0A BL=$0D BR=$0E
        .byte   $0A,$0F,$10,$11 ; B3BB  TL=$0A TR=$0F BL=$10 BR=$11
        .byte   $0B,$11,$0B,$12 ; B3BF  TL=$0B TR=$11 BL=$0B BR=$12
        .byte   $13,$14,$15,$16 ; B3C3  TL=$13 TR=$14 BL=$15 BR=$16
        .byte   $0B,$11,$17,$11 ; B3C7  TL=$0B TR=$11 BL=$17 BR=$11
        .byte   $03,$04,$02,$02 ; B3CB  TL=$03 TR=$04 BL=$02 BR=$02
        .byte   $07,$07,$18,$18 ; B3CF  TL=$07 TR=$07 BL=$18 BR=$18
        .byte   $07,$07,$19,$1A ; B3D3  TL=$07 TR=$07 BL=$19 BR=$1A
        .byte   $07,$08,$18,$18 ; B3D7  TL=$07 TR=$08 BL=$18 BR=$18
        .byte   $1B,$1B,$18,$18 ; B3DB  TL=$1B TR=$1B BL=$18 BR=$18
        .byte   $1C,$1D,$19,$1A ; B3DF  TL=$1C TR=$1D BL=$19 BR=$1A
        .byte   $1B,$1E,$18,$18 ; B3E3  TL=$1B TR=$1E BL=$18 BR=$18
        .byte   $1F,$20,$21,$22 ; B3E7  TL=$1F TR=$20 BL=$21 BR=$22
        .byte   $23,$24,$25,$26 ; B3EB  TL=$23 TR=$24 BL=$25 BR=$26
        .byte   $07,$07,$27,$27 ; B3EF  TL=$07 TR=$07 BL=$27 BR=$27
        .byte   $07,$28,$07,$28 ; B3F3  TL=$07 TR=$28 BL=$07 BR=$28
        .byte   $09,$0F,$0B,$11 ; B3F7  TL=$09 TR=$0F BL=$0B BR=$11
        .byte   $29,$07,$2A,$2B ; B3FB  TL=$29 TR=$07 BL=$2A BR=$2B
        .byte   $2C,$2D,$2E,$2F ; B3FF  TL=$2C TR=$2D BL=$2E BR=$2F
        .byte   $07,$28,$2B,$30 ; B403  TL=$07 TR=$28 BL=$2B BR=$30
        .byte   $09,$0A,$0B,$31 ; B407  TL=$09 TR=$0A BL=$0B BR=$31
        .byte   $0A,$0A,$31,$31 ; B40B  TL=$0A TR=$0A BL=$31 BR=$31
        .byte   $0A,$0A,$31,$0C ; B40F  TL=$0A TR=$0A BL=$31 BR=$0C
        .byte   $0F,$29,$0D,$32 ; B413  TL=$0F TR=$29 BL=$0D BR=$32
        .byte   $07,$07,$33,$33 ; B417  TL=$07 TR=$07 BL=$33 BR=$33
        .byte   $28,$09,$34,$0E ; B41B  TL=$28 TR=$09 BL=$34 BR=$0E
        .byte   $0A,$0A,$10,$0C ; B41F  TL=$0A TR=$0A BL=$10 BR=$0C
        .byte   $2C,$2D,$33,$33 ; B423  TL=$2C TR=$2D BL=$33 BR=$33
        .byte   $28,$0F,$34,$1E ; B427  TL=$28 TR=$0F BL=$34 BR=$1E
        .byte   $07,$35,$27,$36 ; B42B  TL=$07 TR=$35 BL=$27 BR=$36
        .byte   $0B,$12,$0B,$31 ; B42F  TL=$0B TR=$12 BL=$0B BR=$31
        .byte   $15,$16,$37,$38 ; B433  TL=$15 TR=$16 BL=$37 BR=$38
        .byte   $17,$31,$31,$31 ; B437  TL=$17 TR=$31 BL=$31 BR=$31
        .byte   $31,$31,$31,$31 ; B43B  TL=$31 TR=$31 BL=$31 BR=$31
        .byte   $31,$11,$31,$11 ; B43F  TL=$31 TR=$11 BL=$31 BR=$11
        .byte   $29,$33,$29,$33 ; B443  TL=$29 TR=$33 BL=$29 BR=$33
        .byte   $33,$33,$33,$33 ; B447  TL=$33 TR=$33 BL=$33 BR=$33
        .byte   $33,$39,$33,$3A ; B44B  TL=$33 TR=$39 BL=$33 BR=$3A
        .byte   $3B,$3C,$3D,$3E ; B44F  TL=$3B TR=$3C BL=$3D BR=$3E
        .byte   $3F,$33,$40,$33 ; B453  TL=$3F TR=$33 BL=$40 BR=$33
        .byte   $33,$08,$33,$08 ; B457  TL=$33 TR=$08 BL=$33 BR=$08
        .byte   $41,$42,$43,$44 ; B45B  TL=$41 TR=$42 BL=$43 BR=$44
        .byte   $45,$07,$45,$07 ; B45F  TL=$45 TR=$07 BL=$45 BR=$07
        .byte   $07,$07,$07,$46 ; B463  TL=$07 TR=$07 BL=$07 BR=$46
        .byte   $07,$07,$2B,$2B ; B467  TL=$07 TR=$07 BL=$2B BR=$2B
        .byte   $0B,$31,$0B,$31 ; B46B  TL=$0B TR=$31 BL=$0B BR=$31
        .byte   $37,$43,$47,$48 ; B46F  TL=$37 TR=$43 BL=$47 BR=$48
        .byte   $49,$49,$48,$48 ; B473  TL=$49 TR=$49 BL=$48 BR=$48
        .byte   $49,$4A,$42,$38 ; B477  TL=$49 TR=$4A BL=$42 BR=$38
        .byte   $31,$11,$31,$12 ; B47B  TL=$31 TR=$11 BL=$31 BR=$12
        .byte   $2A,$4B,$0F,$2A ; B47F  TL=$2A TR=$4B BL=$0F BR=$2A
        .byte   $33,$33,$2E,$2F ; B483  TL=$33 TR=$33 BL=$2E BR=$2F
        .byte   $46,$30,$30,$09 ; B487  TL=$46 TR=$30 BL=$30 BR=$09
        .byte   $0B,$11,$17,$12 ; B48B  TL=$0B TR=$11 BL=$17 BR=$12
        .byte   $46,$4C,$30,$4D ; B48F  TL=$46 TR=$4C BL=$30 BR=$4D
        .byte   $4E,$49,$37,$41 ; B493  TL=$4E TR=$49 BL=$37 BR=$41
        .byte   $37,$38,$37,$38 ; B497  TL=$37 TR=$38 BL=$37 BR=$38
        .byte   $12,$0A,$31,$31 ; B49B  TL=$12 TR=$0A BL=$31 BR=$31
        .byte   $0A,$17,$31,$31 ; B49F  TL=$0A TR=$17 BL=$31 BR=$31
        .byte   $0A,$4F,$31,$11 ; B4A3  TL=$0A TR=$4F BL=$31 BR=$11
        .byte   $45,$07,$50,$27 ; B4A7  TL=$45 TR=$07 BL=$50 BR=$27
        .byte   $07,$28,$27,$51 ; B4AB  TL=$07 TR=$28 BL=$27 BR=$51
        .byte   $31,$31,$31,$0C ; B4AF  TL=$31 TR=$31 BL=$31 BR=$0C
        .byte   $0C,$0D,$0D,$32 ; B4B3  TL=$0C TR=$0D BL=$0D BR=$32
        .byte   $1C,$1D,$33,$33 ; B4B7  TL=$1C TR=$1D BL=$33 BR=$33
        .byte   $0E,$10,$34,$0E ; B4BB  TL=$0E TR=$10 BL=$34 BR=$0E
        .byte   $31,$31,$10,$0C ; B4BF  TL=$31 TR=$31 BL=$10 BR=$0C
        .byte   $0E,$52,$34,$1E ; B4C3  TL=$0E TR=$52 BL=$34 BR=$1E
        .byte   $45,$35,$45,$35 ; B4C7  TL=$45 TR=$35 BL=$45 BR=$35
        .byte   $33,$33,$2B,$2B ; B4CB  TL=$33 TR=$33 BL=$2B BR=$2B
        .byte   $31,$31,$53,$54 ; B4CF  TL=$31 TR=$31 BL=$53 BR=$54
        .byte   $0A,$31,$31,$31 ; B4D3  TL=$0A TR=$31 BL=$31 BR=$31
        .byte   $1B,$1B,$07,$07 ; B4D7  TL=$1B TR=$1B BL=$07 BR=$07
        .byte   $1B,$0E,$07,$28 ; B4DB  TL=$1B TR=$0E BL=$07 BR=$28
        .byte   $10,$31,$0B,$31 ; B4DF  TL=$10 TR=$31 BL=$0B BR=$31
        .byte   $31,$0C,$31,$11 ; B4E3  TL=$31 TR=$0C BL=$31 BR=$11
        .byte   $0D,$1B,$29,$07 ; B4E7  TL=$0D TR=$1B BL=$29 BR=$07
        .byte   $1C,$1D,$07,$07 ; B4EB  TL=$1C TR=$1D BL=$07 BR=$07
        .byte   $1B,$1E,$07,$08 ; B4EF  TL=$1B TR=$1E BL=$07 BR=$08
        .byte   $07,$39,$07,$3A ; B4F3  TL=$07 TR=$39 BL=$07 BR=$3A
        .byte   $3B,$49,$3D,$48 ; B4F7  TL=$3B TR=$49 BL=$3D BR=$48
        .byte   $49,$3C,$48,$3E ; B4FB  TL=$49 TR=$3C BL=$48 BR=$3E
        .byte   $3F,$07,$40,$07 ; B4FF  TL=$3F TR=$07 BL=$40 BR=$07
        .byte   $55,$55,$56,$56 ; B503  TL=$55 TR=$55 BL=$56 BR=$56
        .byte   $55,$57,$56,$58 ; B507  TL=$55 TR=$57 BL=$56 BR=$58
        .byte   $44,$38,$48,$59 ; B50B  TL=$44 TR=$38 BL=$48 BR=$59
        .byte   $29,$07,$29,$07 ; B50F  TL=$29 TR=$07 BL=$29 BR=$07
        .byte   $49,$49,$42,$41 ; B513  TL=$49 TR=$49 BL=$42 BR=$41
        .byte   $07,$5A,$08,$5B ; B517  TL=$07 TR=$5A BL=$08 BR=$5B
        .byte   $29,$07,$53,$18 ; B51B  TL=$29 TR=$07 BL=$53 BR=$18
        .byte   $07,$28,$18,$54 ; B51F  TL=$07 TR=$28 BL=$18 BR=$54
        .byte   $37,$38,$47,$59 ; B523  TL=$37 TR=$38 BL=$47 BR=$59
        .byte   $5C,$00,$5D,$01 ; B527  TL=$5C TR=$00 BL=$5D BR=$01
        .byte   $00,$5E,$01,$5F ; B52B  TL=$00 TR=$5E BL=$01 BR=$5F
        .byte   $37,$43,$37,$41 ; B52F  TL=$37 TR=$43 BL=$37 BR=$41
        .byte   $60,$61,$45,$35 ; B533  TL=$60 TR=$61 BL=$45 BR=$35
        .byte   $31,$12,$31,$31 ; B537  TL=$31 TR=$12 BL=$31 BR=$31
        .byte   $62,$63,$38,$37 ; B53B  TL=$62 TR=$63 BL=$38 BR=$37
        .byte   $10,$0C,$0B,$11 ; B53F  TL=$10 TR=$0C BL=$0B BR=$11
        .byte   $0D,$1B,$29,$64 ; B543  TL=$0D TR=$1B BL=$29 BR=$64
        .byte   $1B,$1B,$64,$64 ; B547  TL=$1B TR=$1B BL=$64 BR=$64
        .byte   $1B,$0E,$64,$28 ; B54B  TL=$1B TR=$0E BL=$64 BR=$28
        .byte   $1B,$65,$07,$3A ; B54F  TL=$1B TR=$65 BL=$07 BR=$3A
        .byte   $49,$3C,$3D,$3E ; B553  TL=$49 TR=$3C BL=$3D BR=$3E
        .byte   $38,$37,$38,$37 ; B557  TL=$38 TR=$37 BL=$38 BR=$37
        .byte   $0B,$11,$0B,$11 ; B55B  TL=$0B TR=$11 BL=$0B BR=$11
        .byte   $29,$64,$29,$64 ; B55F  TL=$29 TR=$64 BL=$29 BR=$64
        .byte   $64,$28,$64,$28 ; B563  TL=$64 TR=$28 BL=$64 BR=$28
        .byte   $29,$66,$29,$67 ; B567  TL=$29 TR=$66 BL=$29 BR=$67
        .byte   $68,$66,$69,$67 ; B56B  TL=$68 TR=$66 BL=$69 BR=$67
        .byte   $68,$28,$69,$28 ; B56F  TL=$68 TR=$28 BL=$69 BR=$28
        .byte   $07,$08,$2B,$4C ; B573  TL=$07 TR=$08 BL=$2B BR=$4C
        .byte   $41,$48,$43,$49 ; B577  TL=$41 TR=$48 BL=$43 BR=$49
        .byte   $59,$37,$49,$44 ; B57B  TL=$59 TR=$37 BL=$49 BR=$44
        .byte   $41,$42,$38,$37 ; B57F  TL=$41 TR=$42 BL=$38 BR=$37
        .byte   $29,$64,$2A,$2B ; B583  TL=$29 TR=$64 BL=$2A BR=$2B
        .byte   $64,$64,$2B,$2B ; B587  TL=$64 TR=$64 BL=$2B BR=$2B
        .byte   $64,$64,$2E,$2F ; B58B  TL=$64 TR=$64 BL=$2E BR=$2F
        .byte   $07,$07,$2E,$2F ; B58F  TL=$07 TR=$07 BL=$2E BR=$2F
        .byte   $64,$28,$2B,$30 ; B593  TL=$64 TR=$28 BL=$2B BR=$30
        .byte   $6A,$68,$6B,$69 ; B597  TL=$6A TR=$68 BL=$6B BR=$69
        .byte   $66,$68,$67,$69 ; B59B  TL=$66 TR=$68 BL=$67 BR=$69
        .byte   $17,$11,$31,$11 ; B59F  TL=$17 TR=$11 BL=$31 BR=$11
        .byte   $0B,$0C,$0B,$11 ; B5A3  TL=$0B TR=$0C BL=$0B BR=$11
        .byte   $32,$07,$07,$07 ; B5A7  TL=$32 TR=$07 BL=$07 BR=$07
        .byte   $48,$6C,$49,$6D ; B5AB  TL=$48 TR=$6C BL=$49 BR=$6D
        .byte   $0B,$31,$10,$31 ; B5AF  TL=$0B TR=$31 BL=$10 BR=$31
        .byte   $10,$11,$0B,$11 ; B5B3  TL=$10 TR=$11 BL=$0B BR=$11
        .byte   $07,$34,$07,$07 ; B5B7  TL=$07 TR=$34 BL=$07 BR=$07
        .byte   $07,$07,$4B,$07 ; B5BB  TL=$07 TR=$07 BL=$4B BR=$07
        .byte   $0A,$0F,$31,$11 ; B5BF  TL=$0A TR=$0F BL=$31 BR=$11
        .byte   $6E,$61,$27,$36 ; B5C3  TL=$6E TR=$61 BL=$27 BR=$36
        .byte   $17,$12,$31,$31 ; B5C7  TL=$17 TR=$12 BL=$31 BR=$31
        .byte   $38,$37,$6F,$70 ; B5CB  TL=$38 TR=$37 BL=$6F BR=$70
        .byte   $0B,$31,$18,$18 ; B5CF  TL=$0B TR=$31 BL=$18 BR=$18
        .byte   $31,$31,$18,$18 ; B5D3  TL=$31 TR=$31 BL=$18 BR=$18
        .byte   $31,$12,$18,$18 ; B5D7  TL=$31 TR=$12 BL=$18 BR=$18
        .byte   $0A,$0A,$18,$18 ; B5DB  TL=$0A TR=$0A BL=$18 BR=$18
        .byte   $71,$72,$18,$18 ; B5DF  TL=$71 TR=$72 BL=$18 BR=$18
        .byte   $17,$31,$18,$18 ; B5E3  TL=$17 TR=$31 BL=$18 BR=$18
        .byte   $31,$11,$18,$73 ; B5E7  TL=$31 TR=$11 BL=$18 BR=$73
        .byte   $29,$07,$18,$18 ; B5EB  TL=$29 TR=$07 BL=$18 BR=$18
        .byte   $00,$00,$00,$00 ; B5EF  TL=$00 TR=$00 BL=$00 BR=$00
        .byte   $00,$00,$00,$00 ; B5F3  TL=$00 TR=$00 BL=$00 BR=$00
; 32×32 chunk-index grid = 1024 bytes
OvhdLvl7_MapData:
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B5F7
        .byte   $00,$00,$00,$00,$01,$00,$00,$02 ; B5FF
        .byte   $01,$00,$00,$00,$00,$00,$00,$02 ; B607
        .byte   $01,$00,$00,$02,$01,$00,$00,$00 ; B60F
        .byte   $03,$03,$03,$03,$03,$03,$03,$03 ; B617
        .byte   $03,$03,$03,$03,$04,$05,$05,$06 ; B61F
        .byte   $04,$03,$03,$03,$03,$03,$03,$03 ; B627
        .byte   $04,$07,$08,$09,$04,$03,$03,$03 ; B62F
        .byte   $03,$03,$03,$03,$03,$03,$03,$03 ; B637
        .byte   $03,$03,$03,$03,$04,$05,$05,$06 ; B63F
        .byte   $04,$03,$03,$03,$03,$03,$03,$03 ; B647
        .byte   $04,$0A,$0B,$0C,$04,$03,$03,$03 ; B64F
        .byte   $03,$03,$03,$03,$03,$03,$03,$03 ; B657
        .byte   $03,$03,$03,$03,$0D,$0E,$0F,$10 ; B65F
        .byte   $0D,$03,$03,$03,$03,$03,$03,$03 ; B667
        .byte   $0D,$11,$12,$13,$0D,$03,$03,$03 ; B66F
        .byte   $01,$00,$00,$00,$00,$00,$00,$00 ; B677
        .byte   $00,$00,$00,$00,$00,$00,$14,$00 ; B67F
        .byte   $00,$00,$00,$00,$00,$00,$00,$00 ; B687
        .byte   $00,$00,$14,$00,$00,$00,$00,$02 ; B68F
        .byte   $04,$15,$05,$16,$16,$16,$16,$16 ; B697
        .byte   $16,$16,$16,$17,$18,$19,$1A,$1B ; B69F
        .byte   $1C,$1D,$1D,$1D,$1E,$1F,$20,$21 ; B6A7
        .byte   $22,$1F,$23,$21,$22,$1F,$20,$24 ; B6AF
        .byte   $04,$16,$16,$16,$16,$16,$16,$16 ; B6B7
        .byte   $16,$16,$25,$17,$26,$1D,$27,$1D ; B6BF
        .byte   $28,$29,$29,$29,$2A,$2B,$2C,$2D ; B6C7
        .byte   $2E,$2F,$2C,$2D,$2E,$2F,$2C,$30 ; B6CF
        .byte   $04,$31,$31,$05,$05,$05,$32,$33 ; B6D7
        .byte   $34,$34,$34,$1B,$35,$29,$36,$37 ; B6DF
        .byte   $37,$37,$38,$29,$39,$3A,$3B,$3C ; B6E7
        .byte   $3D,$3A,$3B,$3C,$3D,$3A,$3B,$3E ; B6EF
        .byte   $04,$31,$31,$31,$32,$05,$32,$17 ; B6F7
        .byte   $1C,$1D,$1D,$1D,$28,$29,$3F,$37 ; B6FF
        .byte   $37,$38,$40,$29,$29,$41,$27,$42 ; B707
        .byte   $29,$41,$27,$42,$29,$41,$27,$43 ; B70F
        .byte   $04,$31,$31,$31,$44,$16,$16,$45 ; B717
        .byte   $35,$29,$29,$29,$29,$29,$40,$29 ; B71F
        .byte   $29,$40,$40,$29,$46,$47,$48,$49 ; B727
        .byte   $4A,$47,$48,$49,$4A,$47,$48,$4B ; B72F
        .byte   $04,$31,$31,$31,$05,$05,$4C,$17 ; B737
        .byte   $35,$29,$29,$29,$29,$29,$40,$29 ; B73F
        .byte   $29,$40,$40,$29,$2A,$2B,$2C,$2D ; B747
        .byte   $2E,$2F,$15,$2D,$2E,$2F,$2C,$30 ; B74F
        .byte   $04,$34,$34,$34,$34,$34,$34,$1B ; B757
        .byte   $35,$29,$29,$29,$29,$29,$40,$29 ; B75F
        .byte   $29,$40,$40,$29,$39,$3A,$4D,$3C ; B767
        .byte   $3D,$3A,$4D,$3C,$3D,$3A,$4D,$3E ; B76F
        .byte   $04,$1C,$1D,$1D,$1D,$1D,$1D,$1D ; B777
        .byte   $28,$29,$29,$29,$29,$29,$40,$29 ; B77F
        .byte   $4E,$40,$40,$29,$29,$41,$1D,$42 ; B787
        .byte   $29,$41,$1D,$4F,$29,$41,$1D,$43 ; B78F
        .byte   $04,$50,$50,$51,$52,$29,$29,$29 ; B797
        .byte   $29,$29,$29,$29,$53,$54,$55,$56 ; B79F
        .byte   $04,$55,$55,$51,$52,$29,$3F,$37 ; B7A7
        .byte   $38,$29,$29,$3F,$37,$37,$38,$2A ; B7AF
        .byte   $04,$05,$05,$57,$58,$37,$38,$29 ; B7B7
        .byte   $29,$29,$29,$3F,$59,$5A,$05,$06 ; B7BF
        .byte   $04,$5B,$5B,$5C,$35,$29,$40,$29 ; B7C7
        .byte   $36,$37,$37,$5D,$29,$29,$40,$2A ; B7CF
        .byte   $04,$05,$05,$17,$35,$29,$40,$29 ; B7D7
        .byte   $29,$3F,$37,$5D,$2A,$5E,$05,$06 ; B7DF
        .byte   $04,$15,$05,$57,$58,$37,$5D,$29 ; B7E7
        .byte   $3F,$37,$37,$5F,$37,$37,$5D,$2A ; B7EF
        .byte   $04,$60,$5B,$5C,$35,$29,$36,$38 ; B7F7
        .byte   $29,$40,$29,$29,$2A,$61,$0E,$10 ; B7FF
        .byte   $0D,$0E,$0E,$62,$35,$3F,$37,$38 ; B807
        .byte   $63,$29,$29,$40,$29,$29,$29,$2A ; B80F
        .byte   $04,$05,$05,$57,$58,$37,$38,$36 ; B817
        .byte   $37,$5D,$29,$29,$2A,$64,$00,$00 ; B81F
        .byte   $00,$00,$00,$65,$35,$36,$38,$66 ; B827
        .byte   $37,$5F,$37,$5D,$53,$54,$50,$56 ; B82F
        .byte   $04,$05,$05,$17,$35,$29,$40,$29 ; B837
        .byte   $29,$3F,$37,$37,$59,$5A,$05,$05 ; B83F
        .byte   $05,$05,$05,$57,$58,$38,$36,$5D ; B847
        .byte   $29,$40,$29,$29,$2A,$5E,$67,$06 ; B84F
        .byte   $04,$34,$34,$1B,$35,$29,$36,$37 ; B857
        .byte   $37,$5D,$29,$29,$2A,$19,$34,$34 ; B85F
        .byte   $34,$34,$34,$1B,$35,$36,$37,$37 ; B867
        .byte   $37,$5D,$29,$29,$2A,$5E,$05,$06 ; B86F
        .byte   $04,$1C,$1D,$1D,$28,$29,$29,$29 ; B877
        .byte   $29,$29,$29,$29,$68,$1D,$1D,$1D ; B87F
        .byte   $1D,$1D,$1D,$1D,$28,$29,$29,$29 ; B887
        .byte   $29,$29,$29,$29,$2A,$5E,$05,$06 ; B88F
        .byte   $04,$35,$29,$29,$53,$54,$50,$50 ; B897
        .byte   $69,$50,$50,$51,$6A,$6B,$6C,$6C ; B89F
        .byte   $6C,$6C,$6C,$6C,$6C,$6C,$6C,$6D ; B8A7
        .byte   $6A,$54,$50,$6E,$6F,$5A,$05,$06 ; B8AF
        .byte   $04,$35,$29,$29,$2A,$5E,$31,$31 ; B8B7
        .byte   $70,$31,$31,$17,$71,$72,$15,$05 ; B8BF
        .byte   $05,$05,$05,$05,$05,$05,$05,$73 ; B8C7
        .byte   $71,$74,$75,$76,$71,$19,$34,$77 ; B8CF
        .byte   $04,$35,$29,$29,$2A,$5E,$31,$78 ; B8D7
        .byte   $79,$7A,$31,$17,$71,$7B,$7C,$7C ; B8DF
        .byte   $7C,$7C,$7D,$7C,$7C,$7C,$7E,$7F ; B8E7
        .byte   $71,$80,$81,$17,$26,$1D,$1D,$1D ; B8EF
        .byte   $04,$35,$29,$29,$2A,$5E,$31,$31 ; B8F7
        .byte   $31,$70,$31,$17,$26,$1D,$1D,$1D ; B8FF
        .byte   $1D,$1D,$27,$1D,$1D,$1D,$27,$1D ; B907
        .byte   $82,$74,$75,$76,$83,$54,$50,$56 ; B90F
        .byte   $04,$83,$54,$50,$50,$84,$31,$7A ; B917
        .byte   $31,$70,$78,$85,$86,$29,$29,$29 ; B91F
        .byte   $53,$6B,$55,$6D,$6A,$54,$55,$51 ; B927
        .byte   $87,$80,$81,$17,$71,$5E,$05,$06 ; B92F
        .byte   $04,$71,$5E,$15,$31,$31,$78,$79 ; B937
        .byte   $31,$70,$31,$88,$50,$50,$51,$52 ; B93F
        .byte   $2A,$72,$05,$73,$71,$5E,$05,$17 ; B947
        .byte   $71,$74,$75,$76,$71,$5E,$05,$06 ; B94F
        .byte   $04,$71,$19,$34,$34,$89,$31,$7A ; B957
        .byte   $31,$70,$31,$31,$31,$31,$17,$35 ; B95F
        .byte   $2A,$7B,$7D,$7F,$71,$19,$34,$1B ; B967
        .byte   $71,$19,$7E,$1B,$71,$5E,$05,$06 ; B96F
        .byte   $04,$26,$1D,$1D,$8A,$5E,$31,$70 ; B977
        .byte   $31,$70,$31,$05,$8B,$7A,$17,$35 ; B97F
        .byte   $68,$1D,$27,$1D,$8C,$1D,$1D,$1D ; B987
        .byte   $8C,$1D,$27,$1D,$82,$5E,$05,$06 ; B98F
        .byte   $04,$35,$29,$29,$2A,$5E,$31,$70 ; B997
        .byte   $31,$70,$31,$31,$78,$79,$17,$35 ; B99F
        .byte   $53,$54,$55,$50,$50,$50,$50,$50 ; B9A7
        .byte   $50,$50,$55,$50,$50,$84,$05,$06 ; B9AF
        .byte   $04,$35,$29,$29,$2A,$19,$34,$8D ; B9B7
        .byte   $34,$8D,$34,$34,$34,$34,$1B,$35 ; B9BF
        .byte   $2A,$5E,$05,$05,$05,$05,$05,$05 ; B9C7
        .byte   $05,$05,$05,$05,$05,$05,$05,$06 ; B9CF
        .byte   $0D,$8E,$8F,$8F,$90,$91,$91,$92 ; B9D7
        .byte   $91,$92,$91,$91,$91,$91,$91,$93 ; B9DF
        .byte   $94,$95,$0E,$0E,$0E,$0E,$0E,$0E ; B9E7
        .byte   $0E,$0E,$0E,$0E,$0E,$0E,$0E,$10 ; B9EF
; 16 bytes — 8 B vertical + 8 B horizontal scroll-boundary flags
OvhdLvl7_ScrollData:
        .byte   $FF,$FF,$00,$00,$00,$00,$00,$00 ; B9F7
        .byte   $1B,$80,$80,$80,$80,$80,$80,$80 ; B9FF
; Tile attribute table – bits: 0-1=palette 2=walk-behind 3=Tunnel(→Tank) 4=damage 7=solid 
; 3+7=Doorway 6+7=destroyable
OvhdLvl7_TileAttrTable:
        .byte   $00,$02,$02,$02,$02,$02,$02,$01 ; BA07
        .byte   $01,$01,$01,$01,$01,$01,$01,$02 ; BA0F
        .byte   $02,$02,$02,$02,$02,$02,$02,$02 ; BA17
        .byte   $02,$02,$02,$82,$80,$80,$80,$80 ; BA1F
        .byte   $81,$81,$81,$81,$80,$80,$80,$80 ; BA27
        .byte   $80,$80,$82,$82,$84,$84,$84,$84 ; BA2F
        .byte   $84,$84,$84,$86,$86,$86,$86,$86 ; BA37
        .byte   $86,$86,$04,$04,$04,$04,$04,$04 ; BA3F
        .byte   $04,$04,$04,$04,$04,$06,$06,$06 ; BA47
        .byte   $C2,$13,$17,$17,$17,$17,$17,$17 ; BA4F
        .byte   $8A,$8A,$8E,$8C,$8C,$8C,$8C,$08 ; BA57
        .byte   $17,$02,$02                     ; BA5F
L_BA62: .byte   $00,$1C,$01,$59,$00,$01,$40,$04 ; BA62
        .byte   $00,$04,$40,$06,$00,$03,$40,$04 ; BA6A
        .byte   $00,$03,$40,$05,$01,$1E,$40,$02 ; BA72
        .byte   $00,$03,$40,$04,$00,$03,$40,$06 ; BA7A
        .byte   $00,$05,$01,$28,$00,$0B,$80,$09 ; BA82
        .byte   $00,$05,$01,$18,$00,$07,$40,$05 ; BA8A
        .byte   $00,$03,$40,$0E,$00,$04,$40,$05 ; BA92
        .byte   $00,$02,$40,$05,$00,$06,$40,$02 ; BA9A
        .byte   $00,$13,$01,$05,$00,$01,$80,$0A ; BAA2
        .byte   $00,$2C,$01,$0F,$81,$13,$01,$1D ; BAAA
        .byte   $81,$18,$01,$14,$41,$04,$01,$04 ; BAB2
        .byte   $41,$05,$01,$03,$41,$05,$01,$02 ; BABA
        .byte   $41,$0C,$01,$32,$81,$29,$01,$03 ; BAC2
        .byte   $00,$1B,$08,$03,$48,$02,$08,$02 ; BACA
        .byte   $48,$02,$08,$02,$48,$03,$08,$01 ; BAD2
        .byte   $48,$03,$08,$01,$48,$03,$08,$02 ; BADA
        .byte   $48,$02,$40,$01,$00,$02,$02,$04 ; BAE2
        .byte   $00,$0D,$80,$20,$00,$0F,$01,$2B ; BAEA
        .byte   $00,$03,$02,$08,$01,$05,$40,$04 ; BAF2
        .byte   $00,$03,$40,$04,$00,$02,$40,$06 ; BAFA
        .byte   $00,$02,$40,$04,$00,$16,$01,$03 ; BB02
        .byte   $81,$0B,$01,$27,$81,$12,$01,$16 ; BB0A
        .byte   $81,$1D,$01,$35,$81,$21,$01,$0B ; BB12
        .byte   $00,$05,$02,$02,$00,$16,$01,$0C ; BB1A
        .byte   $00,$10,$02,$07,$00,$06,$80,$02 ; BB22
        .byte   $82,$05,$80,$0D,$82,$0B,$00,$03 ; BB2A
        .byte   $01,$0A,$00,$19,$01,$01,$81,$1E ; BB32
        .byte   $01,$18,$41,$01,$01,$04,$41,$06 ; BB3A
        .byte   $01,$01,$41,$05,$01,$1E,$00,$02 ; BB42
        .byte   $02,$0B,$00,$0B,$80,$07,$82,$0B ; BB4A
        .byte   $02,$01,$00,$0B,$01,$08,$00,$10 ; BB52
        .byte   $80,$04,$81,$0C,$01,$2F,$81,$2A ; BB5A
L_BB62: .byte   $00,$26,$08,$31,$00,$73,$08,$2C ; BB62
        .byte   $00,$23,$80,$72,$84,$0F,$80,$03 ; BB6A
        .byte   $C0,$16,$80,$DF,$C0,$03,$C4,$03 ; BB72
        .byte   $C1,$0B,$81,$01,$80,$03,$C0,$07 ; BB7A
        .byte   $80,$02,$C0,$04,$80,$03,$C0,$03 ; BB82
        .byte   $C1,$01,$81,$03,$C1,$01,$C0,$06 ; BB8A
        .byte   $81,$02,$C1,$06,$C0,$01,$80,$03 ; BB92
        .byte   $C0,$01,$C1,$03,$C0,$02,$80,$04 ; BB9A
        .byte   $C0,$06,$80,$04,$C0,$06,$80,$03 ; BBA2
        .byte   $C0,$01,$C1,$05,$81,$02,$80,$02 ; BBAA
        .byte   $C0,$07,$80,$03,$C0,$06,$80,$04 ; BBB2
        .byte   $C0,$05,$C8,$02,$88,$03,$C8,$02 ; BBBA
        .byte   $C0,$01,$C1,$03,$81,$04,$C1,$07 ; BBC2
        .byte   $80,$04,$C0,$01,$C1,$04,$C0,$01 ; BBCA
        .byte   $80,$04,$C0,$06,$80,$04,$C2,$02 ; BBD2
        .byte   $C0,$02,$C4,$02,$84,$03,$C4,$02 ; BBDA
        .byte   $C5,$04,$85,$03,$C4,$04,$84,$03 ; BBE2
        .byte   $C4,$02,$C1,$02,$80,$02,$C2,$07 ; BBEA
        .byte   $82,$09,$C2,$07,$82,$03,$C2,$08 ; BBF2
        .byte   $82,$03,$8A,$01,$C8,$05,$88,$04 ; BBFA
        .byte   $C8,$06,$88,$04,$C8,$07,$88,$03 ; BC02
        .byte   $C8,$02,$C2,$05,$82,$01,$88,$02 ; BC0A
        .byte   $C8,$05,$C0,$01,$80,$04,$C0,$01 ; BC12
        .byte   $C2,$05,$C0,$01,$80,$03,$C0,$06 ; BC1A
        .byte   $80,$03,$C0,$07,$80,$01,$82,$02 ; BC22
        .byte   $C2,$05,$C0,$01,$80,$03,$88,$01 ; BC2A
        .byte   $08,$04,$88,$05,$08,$02,$88,$02 ; BC32
        .byte   $80,$05,$00,$01,$80,$03,$84,$03 ; BC3A
        .byte   $04,$06,$05,$05,$01,$04,$05,$02 ; BC42
        .byte   $04,$09,$06,$06,$02,$03,$08,$05 ; BC4A
        .byte   $88,$02,$C8,$02,$C0,$01,$C2,$01 ; BC52
        .byte   $82,$03,$C2,$0C,$82,$04,$C2,$06 ; BC5A
L_BC62: .byte   $00,$25,$01,$38,$00,$17,$01,$04 ; BC62
        .byte   $81,$16,$01,$58,$00,$02,$02,$1E ; BC6A
        .byte   $00,$02,$01,$04,$41,$01,$40,$06 ; BC72
        .byte   $00,$04,$40,$07,$00,$02,$40,$03 ; BC7A
        .byte   $00,$04,$40,$03,$00,$02,$40,$03 ; BC82
        .byte   $00,$01,$40,$04,$01,$01,$41,$04 ; BC8A
        .byte   $01,$01,$41,$05,$01,$01,$41,$06 ; BC92
        .byte   $01,$04,$41,$05,$01,$0B,$41,$06 ; BC9A
        .byte   $01,$05,$41,$06,$01,$04,$41,$06 ; BCA2
        .byte   $01,$04,$41,$06,$01,$5B,$80,$0B ; BCAA
        .byte   $81,$15,$01,$0B,$00,$07,$80,$0A ; BCB2
        .byte   $81,$01,$80,$03,$81,$04,$80,$0A ; BCBA
        .byte   $00,$0D,$80,$14,$81,$17,$01,$15 ; BCC2
        .byte   $00,$82,$01,$2F,$00,$24,$01,$24 ; BCCA
        .byte   $00,$13,$80,$0F,$82,$1C,$02,$41 ; BCD2
        .byte   $00,$11,$02,$13,$00,$04,$01,$35 ; BCDA
        .byte   $00,$01,$04,$01,$00,$02,$02,$3C ; BCE2
        .byte   $00,$85,$02,$12,$82,$29,$02,$31 ; BCEA
        .byte   $00,$0F,$01,$4A,$00,$12,$01,$1B ; BCF2
        .byte   $00,$13,$02,$42,$00,$0D,$01,$20 ; BCFA
        .byte   $81,$0C,$01,$13,$00,$20,$01,$0C ; BD02
        .byte   $00,$8F,$01,$03,$81,$25,$01,$40 ; BD0A
        .byte   $81,$08,$01,$53,$81,$17,$01,$31 ; BD12
        .byte   $00,$A9,$80,$17,$81,$10,$01,$0D ; BD1A
        .byte   $00,$0A,$02,$06,$82,$28,$02,$04 ; BD22
        .byte   $00,$1C,$80,$01,$81,$22,$00,$0D ; BD2A
        .byte   $02,$0A,$00,$06,$01,$0F,$00,$14 ; BD32
        .byte   $02,$06,$00,$09,$80,$09,$81,$20 ; BD3A
        .byte   $01,$37,$00,$1A,$80,$0C,$82,$1A ; BD42
        .byte   $02,$09,$82,$29,$02,$48,$00,$92 ; BD4A
        .byte   $02,$19,$82,$28,$02,$16,$00,$08 ; BD52
        .byte   $01,$05,$00,$07,$80,$0E,$81,$12 ; BD5A
L_BD62: .byte   $00,$26,$01,$1B,$00,$5C,$01,$2C ; BD62
        .byte   $05,$03,$04,$10,$05,$03,$01,$05 ; BD6A
        .byte   $00,$05,$08,$11,$00,$00,$00,$5C ; BD72
        .byte   $80,$01,$C0,$01,$C4,$1A,$C5,$06 ; BD7A
        .byte   $C1,$02,$C0,$13,$80,$0A,$88,$0E ; BD82
        .byte   $80,$02,$82,$0A,$80,$01,$84,$03 ; BD8A
        .byte   $80,$80,$C0,$01,$C1,$06,$81,$02 ; BD92
        .byte   $80,$01,$C2,$04,$82,$03,$C2,$06 ; BD9A
        .byte   $82,$0A,$80,$01,$81,$08,$80,$05 ; BDA2
        .byte   $81,$06,$C1,$04,$81,$04,$C1,$01 ; BDAA
        .byte   $C0,$03,$C2,$02,$82,$03,$C0,$02 ; BDB2
        .byte   $C2,$03,$82,$0E,$80,$3A,$81,$06 ; BDBA
        .byte   $C1,$02,$C0,$05,$80,$03,$84,$01 ; BDC2
        .byte   $C4,$04,$84,$04,$C0,$02,$C2,$04 ; BDCA
        .byte   $82,$04,$C2,$01,$C0,$01,$C8,$02 ; BDD2
        .byte   $88,$06,$C8,$03,$C0,$01,$C2,$03 ; BDDA
        .byte   $82,$04,$C2,$06,$82,$0C,$80,$01 ; BDE2
        .byte   $88,$07,$81,$07,$80,$01,$88,$04 ; BDEA
        .byte   $C0,$03,$C2,$01,$82,$02,$80,$01 ; BDF2
        .byte   $84,$01,$C4,$02,$C5,$04,$84,$02 ; BDFA
        .byte   $82,$02,$C2,$04,$82,$04,$80,$02 ; BE02
        .byte   $88,$0F,$80,$04,$81,$06,$80,$01 ; BE0A
        .byte   $88,$01,$80,$08,$81,$0A,$C1,$04 ; BE12
        .byte   $81,$02,$85,$01,$C5,$03,$C4,$03 ; BE1A
        .byte   $84,$04,$C4,$03,$C0,$01,$C8,$02 ; BE22
        .byte   $88,$01,$80,$03,$C2,$05,$C0,$01 ; BE2A
        .byte   $84,$03,$C4,$03,$84,$02,$82,$03 ; BE32
        .byte   $C2,$07,$80,$01,$88,$01,$80,$01 ; BE3A
        .byte   $C1,$06,$81,$04,$C1,$06,$81,$04 ; BE42
        .byte   $C0,$03,$80,$02,$84,$09,$80,$0F ; BE4A
        .byte   $81,$0F,$80,$07,$81,$0E,$80,$0B ; BE52
        .byte   $88,$0B,$80,$03,$81,$01,$80,$0F ; BE5A
L_BE62: .byte   $23,$0C,$26,$0C,$B0,$07,$5E,$BE ; BE62
        .byte   $B1,$00,$52,$BE,$80,$60,$B0,$07 ; BE6A
        .byte   $6E,$BE,$C2,$00,$8B,$BE,$5F,$60 ; BE72
        .byte   $56,$01,$5A,$5F,$B0,$00,$78,$BE ; BE7A
        .byte   $B9,$B6,$B6,$B5,$B5,$B5,$00,$FF ; BE82
        .byte   $05,$BC,$B8,$B3,$B1,$B1,$B9,$B4 ; BE8A
        .byte   $B1,$B1,$B7,$B3,$B1,$B1,$B6,$B3 ; BE92
        .byte   $B1,$B1,$B1,$B5,$B2,$B1,$B1,$B1 ; BE9A
        .byte   $B4,$B2,$B1,$B1,$B1,$B1,$B3,$B1 ; BEA2
        .byte   $B1,$B1,$B1,$B2,$B1,$B1,$B1,$B1 ; BEAA
        .byte   $B1,$B0,$00,$FF,$28,$D1,$BE,$C1 ; BEB2
        .byte   $BE,$C5,$BE,$CD,$BE,$C9,$BE,$0B ; BEBA
        .byte   $6F,$FB,$11,$0A,$6F,$FB,$11,$02 ; BEC2
        .byte   $10,$FB,$20,$03,$10,$FB,$20,$A0 ; BECA
        .byte   $60,$A0,$60,$A0,$60,$A0,$60,$B0 ; BED2
        .byte   $01,$D1,$BE,$00,$60,$00,$60,$00 ; BEDA
        .byte   $60,$00,$60,$01,$60,$01,$60,$01 ; BEE2
        .byte   $60,$01,$60,$B0,$00,$DD,$BE     ; BEEA
L_BEF1: .byte   $F8,$BE,$A9,$0F,$20,$B5,$B2,$60 ; BEF1
        .byte   $4C,$53,$BF,$A9,$80,$85,$42,$A9 ; BEF9
        .byte   $80,$85,$43,$20,$4B,$C0,$85,$4C ; BF01
        .byte   $A9,$3F,$A2,$4C,$20,$4D,$C1,$A2 ; BF09
        .byte   $03,$20,$0A,$C2,$85,$4C,$20,$27 ; BF11
        .byte   $C0,$20,$44,$B2,$20,$15,$C0,$20 ; BF19
        .byte   $54,$C0,$85,$4D,$A9,$3F,$A2,$4D ; BF21
        .byte   $20,$4D,$C1,$A2,$03,$20,$0A,$C2 ; BF29
        .byte   $85,$4D,$20,$3F,$C0,$20,$65,$B2 ; BF31
        .byte   $20,$18,$C0,$20,$B3,$C1,$29,$40 ; BF39
        .byte   $D0,$10,$A5,$11,$29,$CF,$D0,$0A ; BF41
        .byte   $20,$2F,$C1,$F0,$05,$A9,$58,$9D ; BF49
        .byte   $00,$04,$A9,$10,$85,$40,$A9,$10 ; BF51
        .byte   $85,$41,$20,$FF,$C0,$F0,$03,$4C ; BF59
        .byte   $7A,$C1,$A9,$0F,$20,$C6,$B2,$20 ; BF61
        .byte   $38,$C1,$20,$A2,$C0,$D0,$06,$A5 ; BF69
        .byte   $11,$29,$03,$D0,$14,$A9,$00,$85 ; BF71
        .byte   $44,$A5,$11,$29,$08,$D0,$05,$A9 ; BF79
        .byte   $46,$4C,$87,$BF,$A9,$47,$4C,$63 ; BF81
        .byte   $C0,$60,$01,$02,$04,$08,$10,$20 ; BF89
        .byte   $40,$80,$FF,$FF,$FF,$FF,$FF,$FF ; BF91
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF99
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFA1
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFA9
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFB1
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFB9
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFC1
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFC9
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFD1
        .byte   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFD9
        .byte   $FF                             ; BFE1
L_BFE2: .byte   $4C,$00,$00,$4C,$00,$80,$4C,$13 ; BFE2
        .byte   $80,$4C,$00,$00,$4C,$00,$00,$4C ; BFEA
        .byte   $77,$80                         ; BFF2
L_BFF4: .byte   $EE,$F4,$FF,$4C,$32,$F2,$00,$00 ; BFF4
        .byte   $F4,$FF,$FF                     ; BFFC
        .byte   $FF                             ; BFFF

; End of "BANK02" segment
; ----------------------------------------------------------------------------
.code

