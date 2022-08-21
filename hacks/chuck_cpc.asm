8000: 08          ex   af,af'
8001: 08          ex   af,af'
8002: 00          nop
8003: 01 08 08    ld   bc,$0808
8006: 08          ex   af,af'
8007: 01 08 08    ld   bc,$0808
800A: 10 01       djnz $800D
800C: 08          ex   af,af'
800D: 08          ex   af,af'
800E: 18 01       jr   $8011
8010: 10 04       djnz $8016
8012: 20 01       jr   nz,$8015
8014: 08          ex   af,af'
8015: 10 28       djnz $803F
8017: 01 08 10    ld   bc,$1008
801A: 38 01       jr   c,$801D
801C: 08          ex   af,af'
801D: 10 48       djnz $8067
801F: 01 08 10    ld   bc,$1008
8022: 58          ld   e,b
8023: 01 08 10    ld   bc,$1008
8026: 68          ld   l,b
8027: 01 08 10    ld   bc,$1008
802A: 78          ld   a,b
802B: 01 08 10    ld   bc,$1008
802E: 88          adc  a,b
802F: 01 08 12    ld   bc,$1208
8032: 98          sbc  a,b
8033: 01 08 12    ld   bc,$1208
8036: AA          xor  d
8037: 01 10 18    ld   bc,$1810
803A: BC          cp   h
803B: 01 10 18    ld   bc,$1810
803E: EC 01 10    call pe,$1001
8041: 18 1C       jr   $805F
8043: 02          ld   (bc),a
8044: 10 18       djnz $805E
8046: 4C          ld   c,h
8047: 02          ld   (bc),a
8048: 18 30       jr   $807A
804A: 7C          ld   a,h
804B: 02          ld   (bc),a
804C: 18 30       jr   $807E
804E: 0C          inc  c
804F: 03          inc  bc
8050: 08          ex   af,af'
8051: 14          inc  d
8052: 9C          sbc  a,h
8053: 03          inc  bc
8054: 08          ex   af,af'
8055: 14          inc  d
8056: B0          or   b
8057: 03          inc  bc
8058: 08          ex   af,af'
8059: 14          inc  d
805A: C4 03 08    call nz,$0803
805D: 14          inc  d
805E: D8          ret  c
805F: 03          inc  bc
8060: 08          ex   af,af'
8061: 14          inc  d
8062: EC 03 08    call pe,$0803
8065: 16 00       ld   d,$00
8067: 04          inc  b
8068: 10 14       djnz $807E
806A: 16 04       ld   d,$04
806C: 10 14       djnz $8082
806E: 3E 04       ld   a,$04
8070: 10 14       djnz $8086
8072: 66          ld   h,(hl)
8073: 04          inc  b
8074: 10 14       djnz $808A
8076: 8E          adc  a,(hl)
8077: 04          inc  b
8078: 08          ex   af,af'
8079: 07          rlca
807A: B6          or   (hl)
807B: 04          inc  b
807C: 08          ex   af,af'
807D: 07          rlca
807E: BD          cp   l
807F: 04          inc  b
8080: 08          ex   af,af'
8081: 07          rlca
8082: C4 04 08    call nz,$0804
8085: 07          rlca
8086: CB 04       rlc  h
8088: 08          ex   af,af'
8089: 07          rlca
808A: D2 04 08    jp   nc,$0804
808D: 07          rlca
808E: D9          exx
808F: 04          inc  b
8090: 08          ex   af,af'
8091: 07          rlca
8092: E0          ret  po
8093: 04          inc  b
8094: 08          ex   af,af'
8095: 07          rlca
8096: E7          rst  $20
8097: 04          inc  b
8098: 08          ex   af,af'
8099: 07          rlca
809A: EE 04       xor  $04
809C: 08          ex   af,af'
809D: 07          rlca
809E: F5          push af
809F: 04          inc  b
80A0: 18 09       jr   $80AB
80A2: FC 04 20    call m,$2004
80A5: 09          add  hl,bc
80A6: 17          rla
80A7: 05          dec  b
80A8: 20 09       jr   nz,$80B3
80AA: 3B          dec  sp
80AB: 05          dec  b
80AC: 28 09       jr   z,$80B7
80AE: 5F          ld   e,a
80AF: 05          dec  b
80B0: 30 09       jr   nc,$80BB
80B2: 8C          adc  a,h
80B3: 05          dec  b
80B4: 28 09       jr   z,$80BF
80B6: C2 05 08    jp   nz,$0805
80B9: 03          inc  bc
80BA: EF          rst  $28
80BB: 05          dec  b
80BC: 10 1E       djnz $80DC
80BE: F2 05 10    jp   p,$1005
80C1: 1E 2E       ld   e,$2E
80C3: 06 10       ld   b,$10
80C5: 1E 6A       ld   e,$6A
80C7: 06 10       ld   b,$10
80C9: 1E A6       ld   e,$A6
80CB: 06 10       ld   b,$10
80CD: 1E E2       ld   e,$E2
80CF: 06 10       ld   b,$10
80D1: 1E 1E       ld   e,$1E
80D3: 07          rlca
80D4: 10 1E       djnz $80F4
80D6: 5A          ld   e,d
80D7: 07          rlca
80D8: 10 06       djnz $80E0
80DA: 96          sub  (hl)
80DB: 07          rlca
80DC: 00          nop
80DD: 00          nop
80DE: 00          nop
80DF: 00          nop
80E0: 00          nop
80E1: 00          nop
80E2: 00          nop
80E3: 00          nop
80E4: 00          nop
80E5: 00          nop
80E6: 00          nop
80E7: 00          nop
80E8: 00          nop
80E9: 00          nop
80EA: 00          nop
80EB: 00          nop
80EC: 00          nop
80ED: 00          nop
80EE: 00          nop
80EF: 00          nop
80F0: 00          nop
80F1: 00          nop
80F2: 00          nop
80F3: 00          nop
80F4: 00          nop
80F5: 00          nop
80F6: 00          nop
80F7: 00          nop
80F8: 00          nop
80F9: 00          nop
80FA: 00          nop
80FB: 00          nop
80FC: 00          nop
80FD: 00          nop
80FE: 00          nop
80FF: 00          nop
8100: FB          ei
8101: 00          nop
8102: BF          cp   a
8103: 00          nop
8104: EF          rst  $28
8105: 00          nop
8106: 00          nop
8107: 00          nop
8108: 42          ld   b,d
8109: 42          ld   b,d
810A: 42          ld   b,d
810B: 42          ld   b,d
810C: 7E          ld   a,(hl)
810D: 42          ld   b,d
810E: 42          ld   b,d
810F: 42          ld   b,d
8110: 00          nop
8111: 38 6C       jr   c,$817F
8113: 5E          ld   e,(hl)
8114: 7E          ld   a,(hl)
8115: 7C          ld   a,h
8116: 38 00       jr   c,$8118
8118: 00          nop
8119: 00          nop
811A: 00          nop
811B: 08          ex   af,af'
811C: 14          inc  d
811D: 2A 55 00    ld   hl,($0055)
8120: 1F          rra
8121: F8          ret  m
8122: 1F          rra
8123: F8          ret  m
8124: 1B          dec  de
8125: D8          ret  c
8126: 11 88 18    ld   de,$1888
8129: 3C          inc  a
812A: FF          rst  $38
812B: 34          inc  (hl)
812C: 3C          inc  a
812D: 10 18       djnz $8147
812F: 3C          inc  a
8130: 6E          ld   l,(hl)
8131: 6E          ld   l,(hl)
8132: 6E          ld   l,(hl)
8133: 6E          ld   l,(hl)
8134: 3C          inc  a
8135: 18 10       jr   $8147
8137: 18 18       jr   $8151
8139: 3C          inc  a
813A: FF          rst  $38
813B: 34          inc  (hl)
813C: 3C          inc  a
813D: 10 18       djnz $8157
813F: 3C          inc  a
8140: 6E          ld   l,(hl)
8141: 6E          ld   l,(hl)
8142: 76          halt
8143: 76          halt
8144: 3C          inc  a
8145: 38 4A       jr   c,$8191
8147: 24          inc  h
8148: 18 3C       jr   $8186
814A: FF          rst  $38
814B: 34          inc  (hl)
814C: 3C          inc  a
814D: 10 18       djnz $8167
814F: 3C          inc  a
8150: 6E          ld   l,(hl)
8151: 6E          ld   l,(hl)
8152: 5E          ld   e,(hl)
8153: 5E          ld   e,(hl)
8154: 3C          inc  a
8155: 38 4A       jr   c,$81A1
8157: 24          inc  h
8158: 18 3C       jr   $8196
815A: FF          rst  $38
815B: 2C          inc  l
815C: 3C          inc  a
815D: 08          ex   af,af'
815E: 18 3C       jr   $819C
8160: 76          halt
8161: 76          halt
8162: 76          halt
8163: 76          halt
8164: 3C          inc  a
8165: 18 08       jr   $816F
8167: 18 18       jr   $8181
8169: 3C          inc  a
816A: FF          rst  $38
816B: 2C          inc  l
816C: 3C          inc  a
816D: 08          ex   af,af'
816E: 18 3C       jr   $81AC
8170: 76          halt
8171: 76          halt
8172: 6E          ld   l,(hl)
8173: 6E          ld   l,(hl)
8174: 3C          inc  a
8175: 1C          inc  e
8176: 52          ld   d,d
8177: 24          inc  h
8178: 18 3C       jr   $81B6
817A: FF          rst  $38
817B: 2C          inc  l
817C: 3C          inc  a
817D: 08          ex   af,af'
817E: 18 3C       jr   $81BC
8180: 76          halt
8181: 76          halt
8182: 7A          ld   a,d
8183: 7A          ld   a,d
8184: 3C          inc  a
8185: 1C          inc  e
8186: 52          ld   d,d
8187: 24          inc  h
8188: 18 3C       jr   $81C6
818A: FF          rst  $38
818B: 3C          inc  a
818C: 3C          inc  a
818D: 18 18       jr   $81A7
818F: BD          cp   l
8190: FF          rst  $38
8191: 7E          ld   a,(hl)
8192: 7E          ld   a,(hl)
8193: 7E          ld   a,(hl)
8194: 3C          inc  a
8195: 24          inc  h
8196: 24          inc  h
8197: 66          ld   h,(hl)
8198: 18 3C       jr   $81D6
819A: FF          rst  $38
819B: 3C          inc  a
819C: 3D          dec  a
819D: 19          add  hl,de
819E: 19          add  hl,de
819F: 3D          dec  a
81A0: FF          rst  $38
81A1: FE FE       cp   $FE
81A3: FE BC       cp   $BC
81A5: 3E 20       ld   a,$20
81A7: 20 20       jr   nz,$81C9
81A9: 60          ld   h,b
81AA: 18 3C       jr   $81E8
81AC: FF          rst  $38
81AD: 3C          inc  a
81AE: BC          cp   h
81AF: 98          sbc  a,b
81B0: 98          sbc  a,b
81B1: BC          cp   h
81B2: FF          rst  $38
81B3: 7F          ld   a,a
81B4: 7F          ld   a,a
81B5: 7F          ld   a,a
81B6: 3D          dec  a
81B7: 7C          ld   a,h
81B8: 04          inc  b
81B9: 04          inc  b
81BA: 04          inc  b
81BB: 06 00       ld   b,$00
81BD: 70          ld   (hl),b
81BE: 00          nop
81BF: F8          ret  m
81C0: 01 E8 01    ld   bc,$01E8
81C3: EF          rst  $28
81C4: 01 FF 01    ld   bc,$01FF
81C7: F8          ret  m
81C8: 00          nop
81C9: F0          ret  p
81CA: 00          nop
81CB: E0          ret  po
81CC: 00          nop
81CD: 60          ld   h,b
81CE: 0E 70       ld   c,$70
81D0: 1F          rra
81D1: 70          ld   (hl),b
81D2: 3F          ccf
81D3: F8          ret  m
81D4: 7F          ld   a,a
81D5: F8          ret  m
81D6: FF          rst  $38
81D7: 78          ld   a,b
81D8: FF          rst  $38
81D9: B8          cp   b
81DA: BF          cp   a
81DB: BC          cp   h
81DC: BF          cp   a
81DD: BC          cp   h
81DE: DF          rst  $18
81DF: BC          cp   h
81E0: 6F          ld   l,a
81E1: 7C          ld   a,h
81E2: 76          halt
81E3: FC 39 F8    call m,$F839
81E6: 1F          rra
81E7: F8          ret  m
81E8: 0F          rrca
81E9: F0          ret  p
81EA: 03          inc  bc
81EB: E0          ret  po
81EC: 00          nop
81ED: 70          ld   (hl),b
81EE: 00          nop
81EF: F9          ld   sp,hl
81F0: 01 EA 01    ld   bc,$01EA
81F3: EC 01 FC    call pe,$FC01
81F6: 01 FA 00    ld   bc,$00FA
81F9: F1          pop  af
81FA: 00          nop
81FB: E0          ret  po
81FC: 00          nop
81FD: 60          ld   h,b
81FE: 0E 70       ld   c,$70
8200: 1F          rra
8201: 70          ld   (hl),b
8202: 3F          ccf
8203: F8          ret  m
8204: 71          ld   (hl),c
8205: F8          ret  m
8206: EE 78       xor  $78
8208: DF          rst  $18
8209: B8          cp   b
820A: BF          cp   a
820B: FC FF FC    call m,$FCFF
820E: FF          rst  $38
820F: FC 7F FC    call m,$FC7F
8212: 7F          ld   a,a
8213: FC 3F F8    call m,$F83F
8216: 1F          rra
8217: F8          ret  m
8218: 0F          rrca
8219: F0          ret  p
821A: 03          inc  bc
821B: E0          ret  po
821C: 0E 00       ld   c,$00
821E: 1F          rra
821F: 00          nop
8220: 17          rla
8221: 80          add  a,b
8222: F7          rst  $30
8223: 80          add  a,b
8224: FF          rst  $38
8225: 80          add  a,b
8226: 1F          rra
8227: 80          add  a,b
8228: 0F          rrca
8229: 00          nop
822A: 07          rlca
822B: 00          nop
822C: 06 00       ld   b,$00
822E: 0E 70       ld   c,$70
8230: 0E F8       ld   c,$F8
8232: 1F          rra
8233: FC 1F FE    call m,$FE1F
8236: 1E FF       ld   e,$FF
8238: 1D          dec  e
8239: FF          rst  $38
823A: 3D          dec  a
823B: FD          db   $fd
823C: 3D          dec  a
823D: FD          db   $fd
823E: 3D          dec  a
823F: FB          ei
8240: 3E F6       ld   a,$F6
8242: 3F          ccf
8243: 6E          ld   l,(hl)
8244: 1F          rra
8245: 9C          sbc  a,h
8246: 1F          rra
8247: F8          ret  m
8248: 0F          rrca
8249: F0          ret  p
824A: 07          rlca
824B: C0          ret  nz
824C: 0E 00       ld   c,$00
824E: 9F          sbc  a,a
824F: 00          nop
8250: 57          ld   d,a
8251: 80          add  a,b
8252: 37          scf
8253: 80          add  a,b
8254: 3F          ccf
8255: 80          add  a,b
8256: 5F          ld   e,a
8257: 80          add  a,b
8258: 8F          adc  a,a
8259: 00          nop
825A: 07          rlca
825B: 00          nop
825C: 06 00       ld   b,$00
825E: 0E 70       ld   c,$70
8260: 0E F8       ld   c,$F8
8262: 1F          rra
8263: FC 1F 8E    call m,$8E1F
8266: 1E 77       ld   e,$77
8268: 1D          dec  e
8269: FB          ei
826A: 3F          ccf
826B: FD          db   $fd
826C: 3F          ccf
826D: FF          rst  $38
826E: 3F          ccf
826F: FF          rst  $38
8270: 3F          ccf
8271: FE 3F       cp   $3F
8273: FE 1F       cp   $1F
8275: FC 1F F8    call m,$F81F
8278: 0F          rrca
8279: F0          ret  p
827A: 07          rlca
827B: C0          ret  nz
827C: 00          nop
827D: 38 00       jr   c,$827F
827F: 00          nop
8280: 44          ld   b,h
8281: 00          nop
8282: 00          nop
8283: 44          ld   b,h
8284: 00          nop
8285: 00          nop
8286: 44          ld   b,h
8287: 00          nop
8288: 00          nop
8289: 38 00       jr   c,$828B
828B: 00          nop
828C: 10 00       djnz $828E
828E: 00          nop
828F: FE 00       cp   $00
8291: 03          inc  bc
8292: 7D          ld   a,l
8293: 80          add  a,b
8294: 0C          inc  c
8295: D6 60       sub  $60
8297: 11 55 10    ld   de,$1055
829A: 22 54 88    ld   ($8854),hl
829D: 24          inc  h
829E: 92          sub  d
829F: 48          ld   c,b
82A0: 44          ld   b,h
82A1: 92          sub  d
82A2: 44          ld   b,h
82A3: 48          ld   c,b
82A4: 92          sub  d
82A5: 24          inc  h
82A6: 88          adc  a,b
82A7: 92          sub  d
82A8: 22 89 11    ld   ($1189),hl
82AB: 22 D1 10    ld   ($10D1),hl
82AE: 16 B1       ld   d,$B1
82B0: 10 0A       djnz $82BC
82B2: 99          sbc  a,c
82B3: 00          nop
82B4: 02          ld   (bc),a
82B5: 97          sub  a
82B6: 00          nop
82B7: 02          ld   (bc),a
82B8: 91          sub  c
82B9: E0          ret  po
82BA: 02          ld   (bc),a
82BB: 91          sub  c
82BC: 00          nop
82BD: 02          ld   (bc),a
82BE: 91          sub  c
82BF: 10 02       djnz $82C3
82C1: 91          sub  c
82C2: 10 12       djnz $82D6
82C4: 91          sub  c
82C5: 10 12       djnz $82D9
82C7: 91          sub  c
82C8: 10 12       djnz $82DC
82CA: 90          sub  b
82CB: 00          nop
82CC: 12          ld   (de),a
82CD: 90          sub  b
82CE: 00          nop
82CF: 12          ld   (de),a
82D0: 90          sub  b
82D1: 00          nop
82D2: 12          ld   (de),a
82D3: D0          ret  nc
82D4: 00          nop
82D5: 16 B0       ld   d,$B0
82D7: 00          nop
82D8: 1A          ld   a,(de)
82D9: 90          sub  b
82DA: 00          nop
82DB: 32 90 00    ld   ($0090),a
82DE: 12          ld   (de),a
82DF: 90          sub  b
82E0: 00          nop
82E1: 12          ld   (de),a
82E2: 90          sub  b
82E3: 00          nop
82E4: 12          ld   (de),a
82E5: 90          sub  b
82E6: 00          nop
82E7: 12          ld   (de),a
82E8: 90          sub  b
82E9: 00          nop
82EA: 12          ld   (de),a
82EB: 90          sub  b
82EC: 00          nop
82ED: 12          ld   (de),a
82EE: 91          sub  c
82EF: 00          nop
82F0: 12          ld   (de),a
82F1: 91          sub  c
82F2: 01 12 91    ld   bc,$9112
82F5: 11 12 91    ld   de,$9112
82F8: 11 12 91    ld   de,$9112
82FB: 11 12 51    ld   de,$5112
82FE: 11 14 31    ld   de,$3114
8301: 11 18 19    ld   de,$1918
8304: 11 30 07    ld   de,$0730
8307: 11 C0 00    ld   de,$00C0
830A: FE 00       cp   $00
830C: 00          nop
830D: 38 00       jr   c,$830F
830F: 00          nop
8310: 44          ld   b,h
8311: 00          nop
8312: 00          nop
8313: 44          ld   b,h
8314: 00          nop
8315: 00          nop
8316: 44          ld   b,h
8317: 00          nop
8318: 00          nop
8319: 38 00       jr   c,$831B
831B: 00          nop
831C: 10 00       djnz $831E
831E: 00          nop
831F: FE 00       cp   $00
8321: 03          inc  bc
8322: 7D          ld   a,l
8323: 80          add  a,b
8324: 0C          inc  c
8325: D6 60       sub  $60
8327: 11 55 10    ld   de,$1055
832A: 22 54 88    ld   ($8854),hl
832D: 24          inc  h
832E: 92          sub  d
832F: 48          ld   c,b
8330: 44          ld   b,h
8331: 92          sub  d
8332: 44          ld   b,h
8333: 48          ld   c,b
8334: 92          sub  d
8335: 24          inc  h
8336: 88          adc  a,b
8337: 92          sub  d
8338: 22 89 11    ld   ($1189),hl
833B: 22 D1 11    ld   ($11D1),hl
833E: 16 B1       ld   d,$B1
8340: 11 1A 99    ld   de,$991A
8343: 11 32 97    ld   de,$9732
8346: 11 D2 91    ld   de,$91D2
8349: FF          rst  $38
834A: 12          ld   (de),a
834B: 91          sub  c
834C: 11 12 91    ld   de,$9112
834F: 11 12 91    ld   de,$9112
8352: 11 12 91    ld   de,$9112
8355: 11 12 91    ld   de,$9112
8358: 11 12 91    ld   de,$9112
835B: 11 12 91    ld   de,$9112
835E: 11 12 91    ld   de,$9112
8361: 11 12 D1    ld   de,$D112
8364: 11 16 B1    ld   de,$B116
8367: 11 1A 99    ld   de,$991A
836A: 11 32 97    ld   de,$9732
836D: 11 D2 91    ld   de,$91D2
8370: FF          rst  $38
8371: 12          ld   (de),a
8372: 91          sub  c
8373: 11 12 91    ld   de,$9112
8376: 11 12 91    ld   de,$9112
8379: 11 12 91    ld   de,$9112
837C: 11 12 91    ld   de,$9112
837F: 11 12 91    ld   de,$9112
8382: 11 12 91    ld   de,$9112
8385: 11 12 91    ld   de,$9112
8388: 11 12 91    ld   de,$9112
838B: 11 12 51    ld   de,$5112
838E: 11 14 31    ld   de,$3114
8391: 11 18 19    ld   de,$1918
8394: 11 30 07    ld   de,$0730
8397: 11 C0 00    ld   de,$00C0
839A: FE 00       cp   $00
839C: 0C          inc  c
839D: 1B          dec  de
839E: 1C          inc  e
839F: 08          ex   af,af'
83A0: 08          ex   af,af'
83A1: 04          inc  b
83A2: 04          inc  b
83A3: 02          ld   (bc),a
83A4: 32 7B 7F    ld   ($7F7B),a
83A7: 7F          ld   a,a
83A8: 7F          ld   a,a
83A9: 3E 18       ld   a,$18
83AB: 10 10       djnz $83BD
83AD: 10 10       djnz $83BF
83AF: 18 0D       jr   $83BE
83B1: 1A          ld   a,(de)
83B2: 1D          dec  e
83B3: 08          ex   af,af'
83B4: 08          ex   af,af'
83B5: 04          inc  b
83B6: 04          inc  b
83B7: 02          ld   (bc),a
83B8: 32 7B 7F    ld   ($7F7B),a
83BB: 7F          ld   a,a
83BC: 7F          ld   a,a
83BD: 3E 18       ld   a,$18
83BF: 28 28       jr   z,$83E9
83C1: 44          ld   b,h
83C2: 45          ld   b,l
83C3: 22 30 D8    ld   ($D830),hl
83C6: 38 10       jr   c,$83D8
83C8: 10 20       djnz $83EA
83CA: 20 40       jr   nz,$840C
83CC: 4C          ld   c,h
83CD: DE FE       sbc  a,$FE
83CF: FE FE       cp   $FE
83D1: 7C          ld   a,h
83D2: 18 08       jr   $83DC
83D4: 08          ex   af,af'
83D5: 08          ex   af,af'
83D6: 08          ex   af,af'
83D7: 18 B0       jr   $8389
83D9: 58          ld   e,b
83DA: B8          cp   b
83DB: 10 10       djnz $83ED
83DD: 20 20       jr   nz,$83FF
83DF: 40          ld   b,b
83E0: 4C          ld   c,h
83E1: DE FE       sbc  a,$FE
83E3: FE FE       cp   $FE
83E5: 7C          ld   a,h
83E6: 18 14       jr   $83FC
83E8: 14          inc  d
83E9: 22 A2 44    ld   ($44A2),hl
83EC: 18 3C       jr   $842A
83EE: 3C          inc  a
83EF: 3C          inc  a
83F0: 18 18       jr   $840A
83F2: 18 3C       jr   $8430
83F4: 7E          ld   a,(hl)
83F5: 7E          ld   a,(hl)
83F6: 7E          ld   a,(hl)
83F7: 7E          ld   a,(hl)
83F8: 7E          ld   a,(hl)
83F9: 3C          inc  a
83FA: 3C          inc  a
83FB: 24          inc  h
83FC: 24          inc  h
83FD: 26 20       ld   h,$20
83FF: 60          ld   h,b
8400: 18 3C       jr   $843E
8402: 3C          inc  a
8403: 3C          inc  a
8404: 18 18       jr   $841E
8406: 18 3C       jr   $8444
8408: 7E          ld   a,(hl)
8409: 7E          ld   a,(hl)
840A: 7E          ld   a,(hl)
840B: 7E          ld   a,(hl)
840C: 7E          ld   a,(hl)
840D: 3C          inc  a
840E: 3C          inc  a
840F: 24          inc  h
8410: 24          inc  h
8411: 64          ld   h,h
8412: 04          inc  b
8413: 04          inc  b
8414: 04          inc  b
8415: 06 00       ld   b,$00
8417: 00          nop
8418: 00          nop
8419: 00          nop
841A: 00          nop
841B: 00          nop
841C: 00          nop
841D: 00          nop
841E: 00          nop
841F: 00          nop
8420: 00          nop
8421: 00          nop
8422: 00          nop
8423: 38 30       jr   c,$8455
8425: 28 78       jr   z,$849F
8427: 78          ld   a,b
8428: 7C          ld   a,h
8429: C4 7F 82    call nz,$827F
842C: 7F          ld   a,a
842D: 80          add  a,b
842E: 3F          ccf
842F: 00          nop
8430: 3F          ccf
8431: 00          nop
8432: 1F          rra
8433: 00          nop
8434: 16 00       ld   d,$00
8436: 10 00       djnz $8438
8438: 10 00       djnz $843A
843A: 10 00       djnz $843C
843C: 18 00       jr   $843E
843E: 00          nop
843F: 00          nop
8440: 00          nop
8441: 00          nop
8442: 00          nop
8443: 00          nop
8444: 00          nop
8445: 00          nop
8446: 00          nop
8447: 00          nop
8448: 00          nop
8449: 00          nop
844A: 00          nop
844B: 00          nop
844C: 30 00       jr   nc,$844E
844E: 78          ld   a,b
844F: 00          nop
8450: 7C          ld   a,h
8451: 00          nop
8452: 7E          ld   a,(hl)
8453: 00          nop
8454: 7F          ld   a,a
8455: F8          ret  m
8456: 3F          ccf
8457: F4 3F 14    call p,$143F
845A: 1F          rra
845B: 08          ex   af,af'
845C: 16 08       ld   d,$08
845E: 10 08       djnz $8468
8460: 10 00       djnz $8462
8462: 10 00       djnz $8464
8464: 18 00       jr   $8466
8466: 00          nop
8467: 00          nop
8468: 00          nop
8469: 00          nop
846A: 00          nop
846B: 00          nop
846C: 00          nop
846D: 00          nop
846E: 00          nop
846F: 00          nop
8470: 00          nop
8471: 00          nop
8472: 1C          inc  e
8473: 00          nop
8474: 14          inc  d
8475: 0C          inc  c
8476: 1E 1E       ld   e,$1E
8478: 23          inc  hl
8479: 3E 43       ld   a,$43
847B: FE 01       cp   $01
847D: FE 00       cp   $00
847F: FC 00 FC    call m,$FC00
8482: 00          nop
8483: F8          ret  m
8484: 00          nop
8485: 68          ld   l,b
8486: 00          nop
8487: 08          ex   af,af'
8488: 00          nop
8489: 08          ex   af,af'
848A: 00          nop
848B: 08          ex   af,af'
848C: 00          nop
848D: 18 00       jr   $848F
848F: 00          nop
8490: 00          nop
8491: 00          nop
8492: 00          nop
8493: 00          nop
8494: 00          nop
8495: 00          nop
8496: 00          nop
8497: 00          nop
8498: 00          nop
8499: 00          nop
849A: 00          nop
849B: 00          nop
849C: 00          nop
849D: 0C          inc  c
849E: 00          nop
849F: 1E 00       ld   e,$00
84A1: 3E 00       ld   a,$00
84A3: 7E          ld   a,(hl)
84A4: 1F          rra
84A5: FE 2F       cp   $2F
84A7: FC 28 FC    call m,$FC28
84AA: 10 F8       djnz $84A4
84AC: 10 68       djnz $8516
84AE: 10 08       djnz $84B8
84B0: 00          nop
84B1: 08          ex   af,af'
84B2: 00          nop
84B3: 08          ex   af,af'
84B4: 00          nop
84B5: 18 60       jr   $8517
84B7: 90          sub  b
84B8: 90          sub  b
84B9: 90          sub  b
84BA: 90          sub  b
84BB: 90          sub  b
84BC: 60          ld   h,b
84BD: 20 60       jr   nz,$851F
84BF: 20 20       jr   nz,$84E1
84C1: 20 20       jr   nz,$84E3
84C3: 70          ld   (hl),b
84C4: 60          ld   h,b
84C5: 90          sub  b
84C6: 10 20       djnz $84E8
84C8: 40          ld   b,b
84C9: 80          add  a,b
84CA: F0          ret  p
84CB: 60          ld   h,b
84CC: 90          sub  b
84CD: 10 20       djnz $84EF
84CF: 10 90       djnz $8461
84D1: 60          ld   h,b
84D2: 80          add  a,b
84D3: 80          add  a,b
84D4: A0          and  b
84D5: A0          and  b
84D6: F0          ret  p
84D7: 20 20       jr   nz,$84F9
84D9: F0          ret  p
84DA: 80          add  a,b
84DB: E0          ret  po
84DC: 10 10       djnz $84EE
84DE: 90          sub  b
84DF: 60          ld   h,b
84E0: 60          ld   h,b
84E1: 90          sub  b
84E2: 80          add  a,b
84E3: E0          ret  po
84E4: 90          sub  b
84E5: 90          sub  b
84E6: 60          ld   h,b
84E7: F0          ret  p
84E8: 10 10       djnz $84FA
84EA: 20 20       jr   nz,$850C
84EC: 40          ld   b,b
84ED: 40          ld   b,b
84EE: 60          ld   h,b
84EF: 90          sub  b
84F0: 90          sub  b
84F1: 60          ld   h,b
84F2: 90          sub  b
84F3: 90          sub  b
84F4: 60          ld   h,b
84F5: 60          ld   h,b
84F6: 90          sub  b
84F7: 90          sub  b
84F8: 70          ld   (hl),b
84F9: 10 90       djnz $848B
84FB: 60          ld   h,b
84FC: FF          rst  $38
84FD: FF          rst  $38
84FE: F8          ret  m
84FF: 88          adc  a,b
8500: 89          adc  a,c
8501: 88          adc  a,b
8502: BB          cp   e
8503: AA          xor  d
8504: B8          cp   b
8505: BB          cp   e
8506: AA          xor  d
8507: B8          cp   b
8508: 8B          adc  a,e
8509: A9          xor  c
850A: 98          sbc  a,b
850B: EB          ex   de,hl
850C: AA          xor  d
850D: B8          cp   b
850E: EB          ex   de,hl
850F: AA          xor  d
8510: B8          cp   b
8511: 88          adc  a,b
8512: 8A          adc  a,d
8513: 88          adc  a,b
8514: FF          rst  $38
8515: FF          rst  $38
8516: F8          ret  m
8517: FF          rst  $38
8518: FF          rst  $38
8519: FF          rst  $38
851A: FE FF       cp   $FF
851C: FF          rst  $38
851D: FF          rst  $38
851E: FE FF       cp   $FF
8520: FF          rst  $38
8521: FF          rst  $38
8522: FE FF       cp   $FF
8524: FF          rst  $38
8525: FF          rst  $38
8526: FE FF       cp   $FF
8528: FF          rst  $38
8529: FF          rst  $38
852A: FE FF       cp   $FF
852C: FF          rst  $38
852D: FF          rst  $38
852E: FE FF       cp   $FF
8530: FF          rst  $38
8531: FF          rst  $38
8532: FE FF       cp   $FF
8534: FF          rst  $38
8535: FF          rst  $38
8536: FE FF       cp   $FF
8538: FF          rst  $38
8539: FF          rst  $38
853A: FE FF       cp   $FF
853C: FF          rst  $38
853D: FF          rst  $38
853E: FF          rst  $38
853F: 9B          sbc  a,e
8540: DA 89 FF    jp   c,$FF89
8543: AB          xor  e
8544: AA          xor  d
8545: BA          cp   d
8546: FF          rst  $38
8547: AB          xor  e
8548: AA          xor  d
8549: BA          cp   d
854A: FF          rst  $38
854B: 9B          sbc  a,e
854C: 8D          adc  a,l
854D: 99          sbc  a,c
854E: FF          rst  $38
854F: BB          cp   e
8550: AD          xor  l
8551: BA          cp   d
8552: FF          rst  $38
8553: BB          cp   e
8554: AD          xor  l
8555: BA          cp   d
8556: FF          rst  $38
8557: B8          cp   b
8558: AD          xor  l
8559: 8A          adc  a,d
855A: FF          rst  $38
855B: FF          rst  $38
855C: FF          rst  $38
855D: FF          rst  $38
855E: FF          rst  $38
855F: FF          rst  $38
8560: FF          rst  $38
8561: FF          rst  $38
8562: FF          rst  $38
8563: FC B8 A8    call m,$A8B8
8566: BF          cp   a
8567: FF          rst  $38
8568: FC BB AB    call m,$ABBB
856B: BF          cp   a
856C: FF          rst  $38
856D: FC BB AB    call m,$ABBB
8570: BF          cp   a
8571: FF          rst  $38
8572: FC B9 A9    call m,$A9B9
8575: BF          cp   a
8576: FF          rst  $38
8577: FC BB AB    call m,$ABBB
857A: BF          cp   a
857B: FF          rst  $38
857C: FC BB DB    call m,$DBBB
857F: BF          cp   a
8580: FF          rst  $38
8581: FC 88 D8    call m,$D888
8584: 8F          adc  a,a
8585: FF          rst  $38
8586: FC FF FF    call m,$FFFF
8589: FF          rst  $38
858A: FF          rst  $38
858B: FC FF FF    call m,$FFFF
858E: FF          rst  $38
858F: FF          rst  $38
8590: FF          rst  $38
8591: F0          ret  p
8592: 98          sbc  a,b
8593: B5          or   l
8594: 47          ld   b,a
8595: FF          rst  $38
8596: FF          rst  $38
8597: F0          ret  p
8598: AA          xor  d
8599: 95          sub  l
859A: 5F          ld   e,a
859B: FF          rst  $38
859C: FF          rst  $38
859D: F0          ret  p
859E: AA          xor  d
859F: 95          sub  l
85A0: 5F          ld   e,a
85A1: FF          rst  $38
85A2: FF          rst  $38
85A3: F0          ret  p
85A4: 9A          sbc  a,d
85A5: A5          and  l
85A6: 47          ld   b,a
85A7: FF          rst  $38
85A8: FF          rst  $38
85A9: F0          ret  p
85AA: AA          xor  d
85AB: A5          and  l
85AC: 77          ld   (hl),a
85AD: FF          rst  $38
85AE: FF          rst  $38
85AF: F0          ret  p
85B0: AA          xor  d
85B1: B5          or   l
85B2: 77          ld   (hl),a
85B3: FF          rst  $38
85B4: FF          rst  $38
85B5: F0          ret  p
85B6: 98          sbc  a,b
85B7: B4          or   h
85B8: 47          ld   b,a
85B9: FF          rst  $38
85BA: FF          rst  $38
85BB: F0          ret  p
85BC: FF          rst  $38
85BD: FF          rst  $38
85BE: FF          rst  $38
85BF: FF          rst  $38
85C0: FF          rst  $38
85C1: F0          ret  p
85C2: FF          rst  $38
85C3: FF          rst  $38
85C4: FF          rst  $38
85C5: FF          rst  $38
85C6: C0          ret  nz
85C7: 8A          adc  a,d
85C8: 48          ld   c,b
85C9: FF          rst  $38
85CA: FF          rst  $38
85CB: C0          ret  nz
85CC: DA 4B FF    jp   c,$FF4B
85CF: FF          rst  $38
85D0: C0          ret  nz
85D1: DA AB FF    jp   c,$FFAB
85D4: FF          rst  $38
85D5: C0          ret  nz
85D6: DA A9 FF    jp   c,$FFA9
85D9: FF          rst  $38
85DA: C0          ret  nz
85DB: DA AB FF    jp   c,$FFAB
85DE: FF          rst  $38
85DF: C0          ret  nz
85E0: DA EB FF    jp   c,$FFEB
85E3: FF          rst  $38
85E4: C0          ret  nz
85E5: DA E8 FF    jp   c,$FFE8
85E8: FF          rst  $38
85E9: C0          ret  nz
85EA: FF          rst  $38
85EB: FF          rst  $38
85EC: FF          rst  $38
85ED: FF          rst  $38
85EE: C0          ret  nz
85EF: 40          ld   b,b
85F0: E0          ret  po
85F1: 00          nop
85F2: 03          inc  bc
85F3: 80          add  a,b
85F4: 0F          rrca
85F5: E0          ret  po
85F6: 1F          rra
85F7: F0          ret  p
85F8: 1F          rra
85F9: F8          ret  m
85FA: 3F          ccf
85FB: F8          ret  m
85FC: 3F          ccf
85FD: FC 7F FC    call m,$FC7F
8600: 7F          ld   a,a
8601: FC 7E 7C    call m,$7C7E
8604: 7C          ld   a,h
8605: 38 F8       jr   c,$85FF
8607: 18 F8       jr   $8601
8609: 00          nop
860A: F0          ret  p
860B: 00          nop
860C: F0          ret  p
860D: 00          nop
860E: F0          ret  p
860F: 00          nop
8610: F0          ret  p
8611: 00          nop
8612: F0          ret  p
8613: 00          nop
8614: F0          ret  p
8615: 00          nop
8616: F8          ret  m
8617: 00          nop
8618: F8          ret  m
8619: 18 7C       jr   $8697
861B: 38 7E       jr   c,$869B
861D: 7C          ld   a,h
861E: 7F          ld   a,a
861F: FC 7F FC    call m,$FC7F
8622: 3F          ccf
8623: FC 3F F8    call m,$F83F
8626: 1F          rra
8627: F8          ret  m
8628: 1F          rra
8629: F0          ret  p
862A: 0F          rrca
862B: E0          ret  po
862C: 03          inc  bc
862D: 80          add  a,b
862E: 60          ld   h,b
862F: 18 F0       jr   $8621
8631: 3C          inc  a
8632: F0          ret  p
8633: 3C          inc  a
8634: F0          ret  p
8635: 3C          inc  a
8636: F0          ret  p
8637: 3C          inc  a
8638: F0          ret  p
8639: 3C          inc  a
863A: F0          ret  p
863B: 3C          inc  a
863C: F0          ret  p
863D: 3C          inc  a
863E: F0          ret  p
863F: 3C          inc  a
8640: F0          ret  p
8641: 3C          inc  a
8642: F0          ret  p
8643: 3C          inc  a
8644: F0          ret  p
8645: 3C          inc  a
8646: FF          rst  $38
8647: FC FF FC    call m,$FCFF
864A: FF          rst  $38
864B: FC FF FC    call m,$FCFF
864E: FF          rst  $38
864F: FC FF FC    call m,$FCFF
8652: F0          ret  p
8653: 3C          inc  a
8654: F0          ret  p
8655: 3C          inc  a
8656: F0          ret  p
8657: 3C          inc  a
8658: F0          ret  p
8659: 3C          inc  a
865A: F0          ret  p
865B: 3C          inc  a
865C: F0          ret  p
865D: 3C          inc  a
865E: F0          ret  p
865F: 3C          inc  a
8660: F0          ret  p
8661: 3C          inc  a
8662: F0          ret  p
8663: 3C          inc  a
8664: F0          ret  p
8665: 3C          inc  a
8666: F0          ret  p
8667: 3C          inc  a
8668: 60          ld   h,b
8669: 18 60       jr   $86CB
866B: 18 F0       jr   $865D
866D: 3C          inc  a
866E: F0          ret  p
866F: 3C          inc  a
8670: F0          ret  p
8671: 3C          inc  a
8672: F0          ret  p
8673: 3C          inc  a
8674: F0          ret  p
8675: 3C          inc  a
8676: F0          ret  p
8677: 3C          inc  a
8678: F0          ret  p
8679: 3C          inc  a
867A: F0          ret  p
867B: 3C          inc  a
867C: F0          ret  p
867D: 3C          inc  a
867E: F0          ret  p
867F: 3C          inc  a
8680: F0          ret  p
8681: 3C          inc  a
8682: F0          ret  p
8683: 3C          inc  a
8684: F0          ret  p
8685: 3C          inc  a
8686: F0          ret  p
8687: 3C          inc  a
8688: F0          ret  p
8689: 3C          inc  a
868A: F0          ret  p
868B: 3C          inc  a
868C: F0          ret  p
868D: 3C          inc  a
868E: F0          ret  p
868F: 3C          inc  a
8690: F0          ret  p
8691: 3C          inc  a
8692: F0          ret  p
8693: 3C          inc  a
8694: F0          ret  p
8695: 3C          inc  a
8696: F8          ret  m
8697: 7C          ld   a,h
8698: FC FC FF    call m,$FFFC
869B: FC FF FC    call m,$FCFF
869E: FF          rst  $38
869F: FC 7F F8    call m,$F87F
86A2: 7F          ld   a,a
86A3: F8          ret  m
86A4: 3F          ccf
86A5: F0          ret  p
86A6: 60          ld   h,b
86A7: 10 F0       djnz $8699
86A9: 38 F0       jr   c,$869B
86AB: 38 F0       jr   c,$869D
86AD: 7C          ld   a,h
86AE: F0          ret  p
86AF: 7C          ld   a,h
86B0: F0          ret  p
86B1: FC F0 FC    call m,$FCF0
86B4: F1          pop  af
86B5: F8          ret  m
86B6: F1          pop  af
86B7: F8          ret  m
86B8: F3          di
86B9: F0          ret  p
86BA: F3          di
86BB: F0          ret  p
86BC: F7          rst  $30
86BD: E0          ret  po
86BE: FF          rst  $38
86BF: E0          ret  po
86C0: FF          rst  $38
86C1: C0          ret  nz
86C2: FF          rst  $38
86C3: 80          add  a,b
86C4: FF          rst  $38
86C5: C0          ret  nz
86C6: FF          rst  $38
86C7: C0          ret  nz
86C8: FF          rst  $38
86C9: E0          ret  po
86CA: FF          rst  $38
86CB: E0          ret  po
86CC: F3          di
86CD: F0          ret  p
86CE: F3          di
86CF: F0          ret  p
86D0: F1          pop  af
86D1: F8          ret  m
86D2: F1          pop  af
86D3: F8          ret  m
86D4: F0          ret  p
86D5: FC F0 FC    call m,$FCF0
86D8: F0          ret  p
86D9: 7C          ld   a,h
86DA: F0          ret  p
86DB: 7C          ld   a,h
86DC: F0          ret  p
86DD: 38 F0       jr   c,$86CF
86DF: 38 60       jr   c,$8741
86E1: 10 7F       djnz $8762
86E3: F8          ret  m
86E4: FF          rst  $38
86E5: FC FF FC    call m,$FCFF
86E8: FF          rst  $38
86E9: FC FF FC    call m,$FCFF
86EC: 7F          ld   a,a
86ED: F8          ret  m
86EE: 07          rlca
86EF: 80          add  a,b
86F0: 07          rlca
86F1: 80          add  a,b
86F2: 07          rlca
86F3: 80          add  a,b
86F4: 07          rlca
86F5: 80          add  a,b
86F6: 07          rlca
86F7: 80          add  a,b
86F8: 07          rlca
86F9: 80          add  a,b
86FA: 07          rlca
86FB: 80          add  a,b
86FC: 07          rlca
86FD: 80          add  a,b
86FE: 07          rlca
86FF: 80          add  a,b
8700: 07          rlca
8701: 80          add  a,b
8702: 07          rlca
8703: 80          add  a,b
8704: 07          rlca
8705: 80          add  a,b
8706: 07          rlca
8707: 80          add  a,b
8708: 07          rlca
8709: 80          add  a,b
870A: 07          rlca
870B: 80          add  a,b
870C: 07          rlca
870D: 80          add  a,b
870E: 07          rlca
870F: 80          add  a,b
8710: 07          rlca
8711: 80          add  a,b
8712: 7F          ld   a,a
8713: F8          ret  m
8714: FF          rst  $38
8715: FC FF FC    call m,$FCFF
8718: FF          rst  $38
8719: FC FF FC    call m,$FCFF
871C: 7F          ld   a,a
871D: F8          ret  m
871E: 3F          ccf
871F: F8          ret  m
8720: 7F          ld   a,a
8721: FC 7F FC    call m,$FC7F
8724: FF          rst  $38
8725: FC FF FC    call m,$FCFF
8728: FF          rst  $38
8729: F8          ret  m
872A: F8          ret  m
872B: 00          nop
872C: F0          ret  p
872D: 00          nop
872E: F0          ret  p
872F: 00          nop
8730: F0          ret  p
8731: 00          nop
8732: F0          ret  p
8733: 00          nop
8734: F0          ret  p
8735: 00          nop
8736: FF          rst  $38
8737: E0          ret  po
8738: FF          rst  $38
8739: F0          ret  p
873A: FF          rst  $38
873B: F0          ret  p
873C: FF          rst  $38
873D: F0          ret  p
873E: FF          rst  $38
873F: F0          ret  p
8740: FF          rst  $38
8741: E0          ret  po
8742: F0          ret  p
8743: 00          nop
8744: F0          ret  p
8745: 00          nop
8746: F0          ret  p
8747: 00          nop
8748: F0          ret  p
8749: 00          nop
874A: F0          ret  p
874B: 00          nop
874C: F8          ret  m
874D: 00          nop
874E: FF          rst  $38
874F: F8          ret  m
8750: FF          rst  $38
8751: FC FF FC    call m,$FCFF
8754: 7F          ld   a,a
8755: FC 7F FC    call m,$FC7F
8758: 3F          ccf
8759: F8          ret  m
875A: 03          inc  bc
875B: 80          add  a,b
875C: 0F          rrca
875D: E0          ret  po
875E: 1F          rra
875F: F0          ret  p
8760: 1F          rra
8761: F8          ret  m
8762: 3F          ccf
8763: F8          ret  m
8764: 3F          ccf
8765: FC 7F FC    call m,$FC7F
8768: 7F          ld   a,a
8769: FC 7E 7C    call m,$7C7E
876C: 7C          ld   a,h
876D: 38 F8       jr   c,$8767
876F: 18 F8       jr   $8769
8771: 00          nop
8772: F0          ret  p
8773: 00          nop
8774: F0          ret  p
8775: 00          nop
8776: F0          ret  p
8777: 00          nop
8778: F0          ret  p
8779: 00          nop
877A: F0          ret  p
877B: F8          ret  m
877C: F0          ret  p
877D: F8          ret  m
877E: F8          ret  m
877F: FC F8 7C    call m,$7CF8
8782: 7C          ld   a,h
8783: 3C          inc  a
8784: 7E          ld   a,(hl)
8785: 3C          inc  a
8786: 7F          ld   a,a
8787: 7C          ld   a,h
8788: 7F          ld   a,a
8789: FC 3F FC    call m,$FC3F
878C: 3F          ccf
878D: FC 1F FC    call m,$FC1F
8790: 1F          rra
8791: F8          ret  m
8792: 0F          rrca
8793: F8          ret  m
8794: 03          inc  bc
8795: F0          ret  p
8796: 1F          rra
8797: F8          ret  m
8798: 1F          rra
8799: F8          ret  m
879A: 04          inc  b
879B: 20 0E       jr   nz,$87AB
879D: 70          ld   (hl),b
879E: 1B          dec  de
879F: D8          ret  c
87A0: 11 88 B2    ld   de,$B288
87A3: 87          add  a,a
87A4: 20 88       jr   nz,$872E
87A6: 94          sub  h
87A7: 88          adc  a,b
87A8: 2D          dec  l
87A9: 89          adc  a,c
87AA: BE          cp   (hl)
87AB: 89          adc  a,c
87AC: 4E          ld   c,(hl)
87AD: 8A          adc  a,d
87AE: CA 8A 54    jp   z,$548A
87B1: 8B          adc  a,e
87B2: 0D          dec  c
87B3: 04          inc  b
87B4: 00          nop
87B5: 0A          ld   a,(bc)
87B6: 02          ld   (bc),a
87B7: 00          nop
87B8: 00          nop
87B9: 13          inc  de
87BA: 04          inc  b
87BB: 01 12 08    ld   bc,$0812
87BE: 02          ld   (bc),a
87BF: 08          ex   af,af'
87C0: 08          ex   af,af'
87C1: 0E 12       ld   c,$12
87C3: 09          add  hl,bc
87C4: 09          add  hl,bc
87C5: 0A          ld   a,(bc)
87C6: 0A          ld   a,(bc)
87C7: 0B          dec  bc
87C8: 0C          inc  c
87C9: 0B          dec  bc
87CA: 0D          dec  c
87CB: 0E 0C       ld   c,$0C
87CD: 0F          rrca
87CE: 10 0C       djnz $87DC
87D0: 03          inc  bc
87D1: 07          rlca
87D2: 0D          dec  c
87D3: 09          add  hl,bc
87D4: 0B          dec  bc
87D5: 10 05       djnz $87DC
87D7: 09          add  hl,bc
87D8: 10 0B       djnz $87E5
87DA: 10 10       djnz $87EC
87DC: 12          ld   (de),a
87DD: 13          inc  de
87DE: 03          inc  bc
87DF: 05          dec  b
87E0: 0A          ld   a,(bc)
87E1: 07          rlca
87E2: 01 12 0B    ld   bc,$0B12
87E5: 01 06 10    ld   bc,$1006
87E8: 01 06 04    ld   bc,$0406
87EB: 01 01 05    ld   bc,$0501
87EE: 0D          dec  c
87EF: 05          dec  b
87F0: 12          ld   (de),a
87F1: 05          dec  b
87F2: 02          ld   (bc),a
87F3: 09          add  hl,bc
87F4: 0A          ld   a,(bc)
87F5: 0A          ld   a,(bc)
87F6: 11 09 04    ld   de,$0409
87F9: 0D          dec  c
87FA: 0A          ld   a,(bc)
87FB: 0E 06       ld   c,$06
87FD: 11 0D 11    ld   de,$110D
8800: 13          inc  de
8801: 11 02 01    ld   de,$0102
8804: 0D          dec  c
8805: 01 05 05    ld   bc,$0505
8808: 0E 05       ld   c,$05
880A: 05          dec  b
880B: 09          add  hl,bc
880C: 0F          rrca
880D: 09          add  hl,bc
880E: 10 0D       djnz $881D
8810: 0B          dec  bc
8811: 0E 09       ld   c,$09
8813: 11 0E 11    ld   de,$110E
8816: 05          dec  b
8817: 0D          dec  c
8818: 08          ex   af,af'
8819: 11 04 09    ld   de,$0904
881C: 06 05       ld   b,$05
881E: 0C          inc  c
881F: 01 0D 08    ld   bc,$080D
8822: 00          nop
8823: 07          rlca
8824: 03          inc  bc
8825: 00          nop
8826: 00          nop
8827: 03          inc  bc
8828: 00          nop
8829: 05          dec  b
882A: 13          inc  de
882B: 04          inc  b
882C: 00          nop
882D: 06 04       ld   b,$04
882F: 08          ex   af,af'
8830: 0A          ld   a,(bc)
8831: 04          inc  b
8832: 0C          inc  c
8833: 0E 04       ld   c,$04
8835: 10 13       djnz $884A
8837: 08          ex   af,af'
8838: 00          nop
8839: 03          inc  bc
883A: 08          ex   af,af'
883B: 05          dec  b
883C: 0E 08       ld   c,$08
883E: 10 13       djnz $8853
8840: 0C          inc  c
8841: 00          nop
8842: 0A          ld   a,(bc)
8843: 0C          inc  c
8844: 0C          inc  c
8845: 13          inc  de
8846: 10 04       djnz $884C
8848: 0A          ld   a,(bc)
8849: 10 0C       djnz $8857
884B: 13          inc  de
884C: 02          ld   (bc),a
884D: 01 0E 04    ld   bc,$040E
8850: 0D          dec  c
8851: 12          ld   (de),a
8852: 06 05       ld   b,$05
8854: 0E 09       ld   c,$09
8856: 01 06 09    ld   bc,$0906
8859: 09          add  hl,bc
885A: 12          ld   (de),a
885B: 0D          dec  c
885C: 09          add  hl,bc
885D: 0E 11       ld   c,$11
885F: 01 0A 11    ld   bc,$110A
8862: 0D          dec  c
8863: 12          ld   (de),a
8864: 05          dec  b
8865: 01 0C 01    ld   bc,$010C
8868: 00          nop
8869: 05          dec  b
886A: 04          inc  b
886B: 05          dec  b
886C: 0D          dec  c
886D: 05          dec  b
886E: 00          nop
886F: 09          add  hl,bc
8870: 07          rlca
8871: 09          add  hl,bc
8872: 13          inc  de
8873: 09          add  hl,bc
8874: 07          rlca
8875: 0D          dec  c
8876: 07          rlca
8877: 11 0F 11    ld   de,$110F
887A: 13          inc  de
887B: 11 00 01    ld   de,$0100
887E: 03          inc  bc
887F: 01 0F 01    ld   bc,$010F
8882: 10 05       djnz $8889
8884: 00          nop
8885: 0D          dec  c
8886: 0A          ld   a,(bc)
8887: 0D          dec  c
8888: 0C          inc  c
8889: 11 06 11    ld   de,$1106
888C: 01 01 12    ld   bc,$1201
888F: 09          add  hl,bc
8890: 0B          dec  bc
8891: 09          add  hl,bc
8892: 0D          dec  c
8893: 11 18 07    ld   de,$0718
8896: 01 0A 03    ld   bc,$030A
8899: 00          nop
889A: 00          nop
889B: 02          ld   (bc),a
889C: 01 03 04    ld   bc,$0403
889F: 00          nop
88A0: 07          rlca
88A1: 09          add  hl,bc
88A2: 00          nop
88A3: 0B          dec  bc
88A4: 13          inc  de
88A5: 03          inc  bc
88A6: 10 12       djnz $88BA
88A8: 07          rlca
88A9: 00          nop
88AA: 04          inc  b
88AB: 0C          inc  c
88AC: 00          nop
88AD: 03          inc  bc
88AE: 0F          rrca
88AF: 03          inc  bc
88B0: 04          inc  b
88B1: 04          inc  b
88B2: 07          rlca
88B3: 0A          ld   a,(bc)
88B4: 04          inc  b
88B5: 0C          inc  c
88B6: 0C          inc  c
88B7: 05          dec  b
88B8: 0E 0E       ld   c,$0E
88BA: 06 0F       ld   b,$0F
88BC: 0F          rrca
88BD: 07          rlca
88BE: 11 11 08    ld   de,$0811
88C1: 12          ld   (de),a
88C2: 13          inc  de
88C3: 09          add  hl,bc
88C4: 0C          inc  c
88C5: 0D          dec  c
88C6: 09          add  hl,bc
88C7: 0F          rrca
88C8: 0F          rrca
88C9: 0B          dec  bc
88CA: 12          ld   (de),a
88CB: 13          inc  de
88CC: 0C          inc  c
88CD: 11 11 0D    ld   de,$0D11
88D0: 0F          rrca
88D1: 0F          rrca
88D2: 0E 0C       ld   c,$0C
88D4: 0D          dec  c
88D5: 0F          rrca
88D6: 07          rlca
88D7: 0B          dec  bc
88D8: 11 0D 0F    ld   de,$0F0D
88DB: 10 10       djnz $88ED
88DD: 10 10       djnz $88EF
88DF: 12          ld   (de),a
88E0: 13          inc  de
88E1: 01 01 09    ld   bc,$0901
88E4: 03          inc  bc
88E5: 08          ex   af,af'
88E6: 11 08 05    ld   de,$0508
88E9: 11 0A 05    ld   de,$050A
88EC: 11 0D 0F    ld   de,$0F0D
88EF: 13          inc  de
88F0: 12          ld   (de),a
88F1: 01 05 13    ld   bc,$1305
88F4: 09          add  hl,bc
88F5: 0D          dec  c
88F6: 05          dec  b
88F7: 04          inc  b
88F8: 02          ld   (bc),a
88F9: 0F          rrca
88FA: 01 10 04    ld   bc,$0410
88FD: 04          inc  b
88FE: 08          ex   af,af'
88FF: 04          inc  b
8900: 10 09       djnz $890B
8902: 05          dec  b
8903: 0F          rrca
8904: 07          rlca
8905: 0F          rrca
8906: 0A          ld   a,(bc)
8907: 01 0D 11    ld   bc,$110D
890A: 0D          dec  c
890B: 13          inc  de
890C: 0E 13       ld   c,$13
890E: 11 02 01    ld   de,$0102
8911: 02          ld   (bc),a
8912: 08          ex   af,af'
8913: 07          rlca
8914: 05          dec  b
8915: 07          rlca
8916: 10 00       djnz $8918
8918: 0D          dec  c
8919: 0D          dec  c
891A: 01 0C 0F    ld   bc,$0F0C
891D: 0F          rrca
891E: 0E 0D       ld   c,$0D
8920: 0A          ld   a,(bc)
8921: 12          ld   (de),a
8922: 11 02 0D    ld   de,$0D02
8925: 09          add  hl,bc
8926: 10 11       djnz $8939
8928: 04          inc  b
8929: 00          nop
892A: 01 08 05    ld   bc,$0508
892D: 1A          ld   a,(de)
892E: 05          dec  b
892F: 01 06 04    ld   bc,$0406
8932: 00          nop
8933: 00          nop
8934: 04          inc  b
8935: 00          nop
8936: 06 0A       ld   b,$0A
8938: 00          nop
8939: 0D          dec  c
893A: 13          inc  de
893B: 04          inc  b
893C: 00          nop
893D: 04          inc  b
893E: 04          inc  b
893F: 07          rlca
8940: 0A          ld   a,(bc)
8941: 04          inc  b
8942: 0D          dec  c
8943: 11 03 13    ld   de,$1303
8946: 13          inc  de
8947: 08          ex   af,af'
8948: 00          nop
8949: 01 09 03    ld   bc,$0309
894C: 03          inc  bc
894D: 0A          ld   a,(bc)
894E: 05          dec  b
894F: 05          dec  b
8950: 0B          dec  bc
8951: 07          rlca
8952: 08          ex   af,af'
8953: 08          ex   af,af'
8954: 07          rlca
8955: 08          ex   af,af'
8956: 08          ex   af,af'
8957: 0D          dec  c
8958: 10 07       djnz $8961
895A: 12          ld   (de),a
895B: 13          inc  de
895C: 0C          inc  c
895D: 08          ex   af,af'
895E: 0A          ld   a,(bc)
895F: 0C          inc  c
8960: 00          nop
8961: 00          nop
8962: 0D          dec  c
8963: 02          ld   (bc),a
8964: 02          ld   (bc),a
8965: 0E 03       ld   c,$03
8967: 03          inc  bc
8968: 0F          rrca
8969: 04          inc  b
896A: 04          inc  b
896B: 10 05       djnz $8972
896D: 05          dec  b
896E: 10 07       djnz $8977
8970: 0A          ld   a,(bc)
8971: 0C          inc  c
8972: 0D          dec  c
8973: 0E 0C       ld   c,$0C
8975: 10 10       djnz $8987
8977: 0C          inc  c
8978: 12          ld   (de),a
8979: 13          inc  de
897A: 10 0D       djnz $8989
897C: 0F          rrca
897D: 10 11       djnz $8990
897F: 13          inc  de
8980: 03          inc  bc
8981: 01 06 08    ld   bc,$0806
8984: 01 12 0E    ld   bc,$0E12
8987: 09          add  hl,bc
8988: 12          ld   (de),a
8989: 0F          rrca
898A: 01 06 13    ld   bc,$1306
898D: 0C          inc  c
898E: 12          ld   (de),a
898F: 0B          dec  bc
8990: 00          nop
8991: 01 00 09    ld   bc,$0900
8994: 00          nop
8995: 0D          dec  c
8996: 07          rlca
8997: 05          dec  b
8998: 09          add  hl,bc
8999: 0D          dec  c
899A: 0D          dec  c
899B: 01 10 05    ld   bc,$0510
899E: 0D          dec  c
899F: 09          add  hl,bc
89A0: 13          inc  de
89A1: 08          ex   af,af'
89A2: 11 0C 10    ld   de,$100C
89A5: 10 10       djnz $89B7
89A7: 13          inc  de
89A8: 00          nop
89A9: 05          dec  b
89AA: 0A          ld   a,(bc)
89AB: 01 12 01    ld   bc,$0112
89AE: 05          dec  b
89AF: 0B          dec  bc
89B0: 09          add  hl,bc
89B1: 11 0D 11    ld   de,$110D
89B4: 0A          ld   a,(bc)
89B5: 11 11 11    ld   de,$1111
89B8: 11 01 04    ld   de,$0401
89BB: 01 0A 05    ld   bc,$050A
89BE: 11 09 01    ld   de,$0109
89C1: 0D          dec  c
89C2: 04          inc  b
89C3: 00          nop
89C4: 00          nop
89C5: 01 00 03    ld   bc,$0300
89C8: 0B          dec  bc
89C9: 00          nop
89CA: 0D          dec  c
89CB: 0F          rrca
89CC: 00          nop
89CD: 12          ld   (de),a
89CE: 13          inc  de
89CF: 04          inc  b
89D0: 00          nop
89D1: 05          dec  b
89D2: 04          inc  b
89D3: 09          add  hl,bc
89D4: 0C          inc  c
89D5: 04          inc  b
89D6: 0E 0F       ld   c,$0F
89D8: 08          ex   af,af'
89D9: 00          nop
89DA: 05          dec  b
89DB: 08          ex   af,af'
89DC: 0A          ld   a,(bc)
89DD: 0F          rrca
89DE: 08          ex   af,af'
89DF: 13          inc  de
89E0: 13          inc  de
89E1: 0C          inc  c
89E2: 00          nop
89E3: 05          dec  b
89E4: 10 03       djnz $89E9
89E6: 07          rlca
89E7: 0F          rrca
89E8: 09          add  hl,bc
89E9: 09          add  hl,bc
89EA: 0E 0B       ld   c,$0B
89EC: 0D          dec  c
89ED: 0D          dec  c
89EE: 0E 0E       ld   c,$0E
89F0: 11 0C 0F    ld   de,$0F0C
89F3: 10 12       djnz $8A07
89F5: 13          inc  de
89F6: 03          inc  bc
89F7: 01 06 02    ld   bc,$0206
89FA: 09          add  hl,bc
89FB: 0E 04       ld   c,$04
89FD: 09          add  hl,bc
89FE: 12          ld   (de),a
89FF: 07          rlca
8A00: 01 05 07    ld   bc,$0705
8A03: 08          ex   af,af'
8A04: 0D          dec  c
8A05: 0A          ld   a,(bc)
8A06: 01 06 0C    ld   bc,$0C06
8A09: 05          dec  b
8A0A: 0A          ld   a,(bc)
8A0B: 0C          inc  c
8A0C: 0F          rrca
8A0D: 13          inc  de
8A0E: 0E 01       ld   c,$01
8A10: 06 10       ld   b,$10
8A12: 00          nop
8A13: 01 00 05    ld   bc,$0500
8A16: 00          nop
8A17: 09          add  hl,bc
8A18: 00          nop
8A19: 0D          dec  c
8A1A: 05          dec  b
8A1B: 05          dec  b
8A1C: 05          dec  b
8A1D: 11 09 08    ld   de,$0809
8A20: 0D          dec  c
8A21: 04          inc  b
8A22: 0B          dec  bc
8A23: 0F          rrca
8A24: 0D          dec  c
8A25: 12          ld   (de),a
8A26: 13          inc  de
8A27: 09          add  hl,bc
8A28: 13          inc  de
8A29: 11 04 01    ld   de,$0104
8A2C: 05          dec  b
8A2D: 01 06 01    ld   bc,$0106
8A30: 0D          dec  c
8A31: 01 0F 01    ld   bc,$010F
8A34: 12          ld   (de),a
8A35: 01 0A 09    ld   bc,$090A
8A38: 0F          rrca
8A39: 09          add  hl,bc
8A3A: 03          inc  bc
8A3B: 11 06 11    ld   de,$1106
8A3E: 07          rlca
8A3F: 11 0F 12    ld   de,$120F
8A42: 12          ld   (de),a
8A43: 11 01 05    ld   de,$0501
8A46: 03          inc  bc
8A47: 09          add  hl,bc
8A48: 01 0D 0E    ld   bc,$0E0D
8A4B: 09          add  hl,bc
8A4C: 0F          rrca
8A4D: 05          dec  b
8A4E: 10 06       djnz $8A56
8A50: 01 09 04    ld   bc,$0409
8A53: 00          nop
8A54: 00          nop
8A55: 02          ld   (bc),a
8A56: 00          nop
8A57: 06 08       ld   b,$08
8A59: 00          nop
8A5A: 0B          dec  bc
8A5B: 0E 04       ld   c,$04
8A5D: 00          nop
8A5E: 01 04 03    ld   bc,$0304
8A61: 05          dec  b
8A62: 04          inc  b
8A63: 0C          inc  c
8A64: 0E 08       ld   c,$08
8A66: 02          ld   (bc),a
8A67: 07          rlca
8A68: 08          ex   af,af'
8A69: 0C          inc  c
8A6A: 11 07 11    ld   de,$1107
8A6D: 13          inc  de
8A6E: 0C          inc  c
8A6F: 00          nop
8A70: 05          dec  b
8A71: 0D          dec  c
8A72: 10 13       djnz $8A87
8A74: 10 06       djnz $8A7C
8A76: 06 10       ld   b,$10
8A78: 08          ex   af,af'
8A79: 08          ex   af,af'
8A7A: 10 0C       djnz $8A88
8A7C: 11 11 11    ld   de,$1111
8A7F: 13          inc  de
8A80: 01 11 11    ld   bc,$1111
8A83: 00          nop
8A84: 01 06 04    ld   bc,$0406
8A87: 03          inc  bc
8A88: 0E 0E       ld   c,$0E
8A8A: 05          dec  b
8A8B: 0A          ld   a,(bc)
8A8C: 0E 0F       ld   c,$0F
8A8E: 13          inc  de
8A8F: 11 01 0A    ld   de,$0A01
8A92: 11 0D 13    ld   de,$130D
8A95: 09          add  hl,bc
8A96: 02          ld   (bc),a
8A97: 01 10 01    ld   bc,$0110
8A9A: 05          dec  b
8A9B: 05          dec  b
8A9C: 0C          inc  c
8A9D: 05          dec  b
8A9E: 0C          inc  c
8A9F: 09          add  hl,bc
8AA0: 10 09       djnz $8AAB
8AA2: 07          rlca
8AA3: 0D          dec  c
8AA4: 03          inc  bc
8AA5: 10 06       djnz $8AAD
8AA7: 11 0C 11    ld   de,$110C
8AAA: 13          inc  de
8AAB: 0E 13       ld   c,$13
8AAD: 12          ld   (de),a
8AAE: 0B          dec  bc
8AAF: 01 0C 01    ld   bc,$010C
8AB2: 0D          dec  c
8AB3: 01 0E 01    ld   bc,$010E
8AB6: 00          nop
8AB7: 0D          dec  c
8AB8: 02          ld   (bc),a
8AB9: 0D          dec  c
8ABA: 03          inc  bc
8ABB: 0D          dec  c
8ABC: 07          rlca
8ABD: 09          add  hl,bc
8ABE: 13          inc  de
8ABF: 08          ex   af,af'
8AC0: 01 0D 01    ld   bc,$010D
8AC3: 01 12 0E    ld   bc,$0E12
8AC6: 0D          dec  c
8AC7: 05          dec  b
8AC8: 12          ld   (de),a
8AC9: 08          ex   af,af'
8ACA: 17          rla
8ACB: 07          rlca
8ACC: 01 04 03    ld   bc,$0304
8ACF: 10 0B       djnz $8ADC
8AD1: 10 0C       djnz $8ADF
8AD3: 00          nop
8AD4: 04          inc  b
8AD5: 0C          inc  c
8AD6: 06 07       ld   b,$07
8AD8: 08          ex   af,af'
8AD9: 00          nop
8ADA: 02          ld   (bc),a
8ADB: 04          inc  b
8ADC: 01 03 03    ld   bc,$0303
8ADF: 00          nop
8AE0: 01 00 03    ld   bc,$0300
8AE3: 04          inc  b
8AE4: 01 05 06    ld   bc,$0605
8AE7: 00          nop
8AE8: 07          rlca
8AE9: 08          ex   af,af'
8AEA: 01 09 09    ld   bc,$0909
8AED: 02          ld   (bc),a
8AEE: 09          add  hl,bc
8AEF: 09          add  hl,bc
8AF0: 02          ld   (bc),a
8AF1: 0C          inc  c
8AF2: 0C          inc  c
8AF3: 05          dec  b
8AF4: 05          dec  b
8AF5: 08          ex   af,af'
8AF6: 06 05       ld   b,$05
8AF8: 05          dec  b
8AF9: 07          rlca
8AFA: 05          dec  b
8AFB: 05          dec  b
8AFC: 08          ex   af,af'
8AFD: 05          dec  b
8AFE: 05          dec  b
8AFF: 09          add  hl,bc
8B00: 05          dec  b
8B01: 05          dec  b
8B02: 08          ex   af,af'
8B03: 08          ex   af,af'
8B04: 08          ex   af,af'
8B05: 09          add  hl,bc
8B06: 08          ex   af,af'
8B07: 08          ex   af,af'
8B08: 0B          dec  bc
8B09: 0C          inc  c
8B0A: 0F          rrca
8B0B: 08          ex   af,af'
8B0C: 0A          ld   a,(bc)
8B0D: 0B          dec  bc
8B0E: 06 0E       ld   b,$0E
8B10: 10 01       djnz $8B13
8B12: 0F          rrca
8B13: 10 01       djnz $8B16
8B15: 01 0E 03    ld   bc,$030E
8B18: 01 06 05    ld   bc,$0506
8B1B: 10 13       djnz $8B30
8B1D: 07          rlca
8B1E: 10 13       djnz $8B33
8B20: 09          add  hl,bc
8B21: 10 13       djnz $8B36
8B23: 0D          dec  c
8B24: 0C          inc  c
8B25: 12          ld   (de),a
8B26: 0F          rrca
8B27: 07          rlca
8B28: 0D          dec  c
8B29: 12          ld   (de),a
8B2A: 06 12       ld   b,$12
8B2C: 08          ex   af,af'
8B2D: 12          ld   (de),a
8B2E: 0A          ld   a,(bc)
8B2F: 12          ld   (de),a
8B30: 0F          rrca
8B31: 11 07 0D    ld   de,$0D07
8B34: 02          ld   (bc),a
8B35: 02          ld   (bc),a
8B36: 07          rlca
8B37: 06 0B       ld   b,$0B
8B39: 09          add  hl,bc
8B3A: 10 0B       djnz $8B47
8B3C: 10 07       djnz $8B45
8B3E: 0C          inc  c
8B3F: 03          inc  bc
8B40: 11 01 02    ld   de,$0201
8B43: 05          dec  b
8B44: 03          inc  bc
8B45: 0D          dec  c
8B46: 08          ex   af,af'
8B47: 06 0C       ld   b,$0C
8B49: 11 0D 11    ld   de,$110D
8B4C: 01 0D 0E    ld   bc,$0E0D
8B4F: 07          rlca
8B50: 00          nop
8B51: 04          inc  b
8B52: 02          ld   (bc),a
8B53: 09          add  hl,bc
8B54: 0F          rrca
8B55: 06 00       ld   b,$00
8B57: 10 03       djnz $8B5C
8B59: 00          nop
8B5A: 00          nop
8B5B: 13          inc  de
8B5C: 04          inc  b
8B5D: 02          ld   (bc),a
8B5E: 04          inc  b
8B5F: 04          inc  b
8B60: 07          rlca
8B61: 0D          dec  c
8B62: 04          inc  b
8B63: 10 12       djnz $8B77
8B65: 08          ex   af,af'
8B66: 02          ld   (bc),a
8B67: 05          dec  b
8B68: 08          ex   af,af'
8B69: 08          ex   af,af'
8B6A: 0C          inc  c
8B6B: 08          ex   af,af'
8B6C: 0F          rrca
8B6D: 12          ld   (de),a
8B6E: 0C          inc  c
8B6F: 03          inc  bc
8B70: 06 0C       ld   b,$0C
8B72: 09          add  hl,bc
8B73: 0B          dec  bc
8B74: 0C          inc  c
8B75: 0E 11       ld   c,$11
8B77: 10 03       djnz $8B7C
8B79: 03          inc  bc
8B7A: 10 06       djnz $8B82
8B7C: 06 10       ld   b,$10
8B7E: 08          ex   af,af'
8B7F: 0C          inc  c
8B80: 10 0E       djnz $8B90
8B82: 0E 10       ld   c,$10
8B84: 11 11 03    ld   de,$0311
8B87: 01 06 11    ld   bc,$1106
8B8A: 01 06 0A    ld   bc,$0A06
8B8D: 05          dec  b
8B8E: 0A          ld   a,(bc)
8B8F: 04          inc  b
8B90: 09          add  hl,bc
8B91: 0E 10       ld   c,$10
8B93: 09          add  hl,bc
8B94: 0E 0A       ld   c,$0A
8B96: 0D          dec  c
8B97: 12          ld   (de),a
8B98: 05          dec  b
8B99: 04          inc  b
8B9A: 0F          rrca
8B9B: 04          inc  b
8B9C: 06 08       ld   b,$08
8B9E: 0E 08       ld   c,$08
8BA0: 08          ex   af,af'
8BA1: 0C          inc  c
8BA2: 0C          inc  c
8BA3: 0C          inc  c
8BA4: 05          dec  b
8BA5: 10 0F       djnz $8BB6
8BA7: 10 07       djnz $8BB0
8BA9: 10 0D       djnz $8BB8
8BAB: 10 03       djnz $8BB0
8BAD: 13          inc  de
8BAE: 11 13 01    ld   de,$0113
8BB1: 01 02 01    ld   bc,$0102
8BB4: 04          inc  b
8BB5: 01 05 01    ld   bc,$0105
8BB8: 06 01       ld   b,$01
8BBA: 08          ex   af,af'
8BBB: 01 09 01    ld   bc,$0109
8BBE: 0A          ld   a,(bc)
8BBF: 01 0B 01    ld   bc,$010B
8BC2: 0C          inc  c
8BC3: 01 0D 01    ld   bc,$010D
8BC6: 0E 01       ld   c,$01
8BC8: 0F          rrca
8BC9: 01 10 01    ld   bc,$0110
8BCC: 12          ld   (de),a
8BCD: 01 13 01    ld   bc,$0113
8BD0: 11 01 0A    ld   de,$0A01
8BD3: 09          add  hl,bc
8BD4: 0A          ld   a,(bc)
8BD5: 11 03 0D    ld   de,$0D03
8BD8: 11 0D C3    ld   de,$C30D
8BDB: B9          cp   c
8BDC: 8C          adc  a,h
8BDD: C3 CD 8C    jp   $8CCD
8BE0: C3 E2 8F    jp   $8FE2
8BE3: C3 91 8F    jp   $8F91
8BE6: C3 FD 8F    jp   $8FFD
8BE9: C3 C3 91    jp   $91C3
8BEC: C3 6D 91    jp   $916D
8BEF: C3 74 8E    jp   $8E74
8BF2: C3 55 90    jp   $9055
8BF5: C3 2D 8D    jp   $8D2D
8BF8: C3 06 8D    jp   $8D06
8BFB: C3 F3 8C    jp   $8CF3
8BFE: C3 A3 8F    jp   $8FA3
8C01: C3 B7 8F    jp   $8FB7
8C04: C3 4A 91    jp   $914A
8C07: C3 59 8E    jp   $8E59
8C0A: 3E C7       ld   a,$C7
8C0C: 93          sub  e
8C0D: F5          push af
8C0E: E6 F8       and  $F8
8C10: 6F          ld   l,a
8C11: 26 00       ld   h,$00
8C13: 29          add  hl,hl
8C14: 29          add  hl,hl
8C15: 85          add  a,l
8C16: 6F          ld   l,a
8C17: 7C          ld   a,h
8C18: CE 00       adc  a,$00
8C1A: 67          ld   h,a
8C1B: 29          add  hl,hl
8C1C: F1          pop  af
8C1D: E6 07       and  $07
8C1F: 07          rlca
8C20: 07          rlca
8C21: 07          rlca
8C22: C6 C0       add  a,$C0
8C24: 84          add  a,h
8C25: 67          ld   h,a
8C26: 7A          ld   a,d
8C27: CB 3F       srl  a
8C29: 85          add  a,l
8C2A: 6F          ld   l,a
8C2B: 3E 00       ld   a,$00
8C2D: 8C          adc  a,h
8C2E: 67          ld   h,a
8C2F: 7A          ld   a,d
8C30: E6 01       and  $01
8C32: 57          ld   d,a
8C33: C9          ret
8C34: E5          push hl
8C35: 21 00 80    ld   hl,$8000
8C38: 87          add  a,a
8C39: 87          add  a,a
8C3A: 85          add  a,l
8C3B: 6F          ld   l,a
8C3C: 3E 00       ld   a,$00
8C3E: 8C          adc  a,h
8C3F: 67          ld   h,a
8C40: 7E          ld   a,(hl)
8C41: C6 07       add  a,$07
8C43: CB 3F       srl  a
8C45: CB 3F       srl  a
8C47: CB 3F       srl  a
8C49: 47          ld   b,a
8C4A: 23          inc  hl
8C4B: 4E          ld   c,(hl)
8C4C: C5          push bc
8C4D: 23          inc  hl
8C4E: 4E          ld   c,(hl)
8C4F: 23          inc  hl
8C50: 46          ld   b,(hl)
8C51: 21 00 80    ld   hl,$8000
8C54: 09          add  hl,bc
8C55: E5          push hl
8C56: DD E1       pop  ix
8C58: C1          pop  bc
8C59: E1          pop  hl
8C5A: C9          ret
8C5B: 21 66 8C    ld   hl,$8C66
8C5E: 85          add  a,l
8C5F: 6F          ld   l,a
8C60: 7C          ld   a,h
8C61: CE 00       adc  a,$00
8C63: 67          ld   h,a
8C64: 5E          ld   e,(hl)
8C65: C9          ret
8C66: 00          nop
8C67: 80          add  a,b
8C68: 08          ex   af,af'
8C69: 88          adc  a,b
8C6A: 20 A0       jr   nz,$8C0C
8C6C: 28 A8       jr   z,$8C16
8C6E: 02          ld   (bc),a
8C6F: 82          add  a,d
8C70: 0A          ld   a,(bc)
8C71: 8A          adc  a,d
8C72: 22 A2 2A    ld   ($2AA2),hl
8C75: AA          xor  d
8C76: C5          push bc
8C77: D5          push de
8C78: E5          push hl
8C79: CB 42       bit  0,d
8C7B: 28 02       jr   z,$8C7F
8C7D: CB 3B       srl  e
8C7F: C5          push bc
8C80: DD 4E 00    ld   c,(ix+$00)
8C83: DD 23       inc  ix
8C85: 06 08       ld   b,$08
8C87: CB 21       sla  c
8C89: 30 03       jr   nc,$8C8E
8C8B: 7E          ld   a,(hl)
8C8C: AB          xor  e
8C8D: 77          ld   (hl),a
8C8E: 14          inc  d
8C8F: CB 42       bit  0,d
8C91: 28 05       jr   z,$8C98
8C93: CB 3B       srl  e
8C95: C3 9B 8C    jp   $8C9B
8C98: CB 23       sla  e
8C9A: 23          inc  hl
8C9B: 10 EA       djnz $8C87
8C9D: C1          pop  bc
8C9E: 10 DF       djnz $8C7F
8CA0: E1          pop  hl
8CA1: 7C          ld   a,h
8CA2: FE F8       cp   $F8
8CA4: 30 07       jr   nc,$8CAD
8CA6: 11 00 08    ld   de,$0800
8CA9: 19          add  hl,de
8CAA: C3 B3 8C    jp   $8CB3
8CAD: AF          xor  a
8CAE: 11 B0 37    ld   de,$37B0
8CB1: ED 52       sbc  hl,de
8CB3: D1          pop  de
8CB4: C1          pop  bc
8CB5: 0D          dec  c
8CB6: 20 BE       jr   nz,$8C76
8CB8: C9          ret
8CB9: F5          push af
8CBA: CD 0A 8C    call $8C0A
8CBD: F1          pop  af
8CBE: F5          push af
8CBF: E5          push hl
8CC0: 78          ld   a,b
8CC1: CD 5B 8C    call $8C5B
8CC4: E1          pop  hl
8CC5: F1          pop  af
8CC6: CD 34 8C    call $8C34
8CC9: CD 76 8C    call $8C76
8CCC: C9          ret
8CCD: C5          push bc
8CCE: D5          push de
8CCF: E5          push hl
8CD0: 3E 18       ld   a,$18
8CD2: 93          sub  e
8CD3: 5F          ld   e,a
8CD4: 87          add  a,a
8CD5: 87          add  a,a
8CD6: 83          add  a,e
8CD7: 6F          ld   l,a
8CD8: 26 00       ld   h,$00
8CDA: 29          add  hl,hl
8CDB: 29          add  hl,hl
8CDC: 7D          ld   a,l
8CDD: 82          add  a,d
8CDE: 6F          ld   l,a
8CDF: 7C          ld   a,h
8CE0: CE 00       adc  a,$00
8CE2: 67          ld   h,a
8CE3: 29          add  hl,hl
8CE4: 29          add  hl,hl
8CE5: 11 00 C0    ld   de,$C000
8CE8: 19          add  hl,de
8CE9: 16 00       ld   d,$00
8CEB: 79          ld   a,c
8CEC: CD BE 8C    call $8CBE
8CEF: E1          pop  hl
8CF0: D1          pop  de
8CF1: C1          pop  bc
8CF2: C9          ret
8CF3: 06 10       ld   b,$10
8CF5: 3E 00       ld   a,$00
8CF7: C5          push bc
8CF8: 06 00       ld   b,$00
8CFA: 0E 00       ld   c,$00
8CFC: F5          push af
8CFD: CD 32 BC    call $BC32
8D00: F1          pop  af
8D01: 3C          inc  a
8D02: C1          pop  bc
8D03: 10 F2       djnz $8CF7
8D05: C9          ret
8D06: 21 1D 8D    ld   hl,$8D1D
8D09: 06 10       ld   b,$10
8D0B: 3E 00       ld   a,$00
8D0D: C5          push bc
8D0E: 46          ld   b,(hl)
8D0F: 23          inc  hl
8D10: 48          ld   c,b
8D11: F5          push af
8D12: E5          push hl
8D13: CD 32 BC    call $BC32
8D16: E1          pop  hl
8D17: F1          pop  af
8D18: C1          pop  bc
8D19: 3C          inc  a
8D1A: 10 F1       djnz $8D0D
8D1C: C9          ret
8D1D: 00          nop
8D1E: 09          add  hl,bc
8D1F: 08          ex   af,af'
8D20: 1A          ld   a,(de)
8D21: 14          inc  d
8D22: 06 14       ld   b,$14
8D24: 14          inc  d
8D25: 19          add  hl,de
8D26: 19          add  hl,de
8D27: 19          add  hl,de
8D28: 19          add  hl,de
8D29: 19          add  hl,de
8D2A: 19          add  hl,de
8D2B: 19          add  hl,de
8D2C: 19          add  hl,de
8D2D: 21 00 C0    ld   hl,$C000
8D30: 11 01 C0    ld   de,$C001
8D33: 01 FF 3F    ld   bc,$3FFF
8D36: 36 00       ld   (hl),$00
8D38: ED B0       ldir
8D3A: C9          ret
8D3B: 3E 28       ld   a,$28
8D3D: 06 02       ld   b,$02
8D3F: 16 00       ld   d,$00
8D41: 1E C7       ld   e,$C7
8D43: CD B9 8C    call $8CB9
8D46: 3A 00 7B    ld   a,($7B00)
8D49: 47          ld   b,a
8D4A: 04          inc  b
8D4B: AF          xor  a
8D4C: C6 22       add  a,$22
8D4E: 10 FC       djnz $8D4C
8D50: D6 07       sub  $07
8D52: 06 05       ld   b,$05
8D54: 57          ld   d,a
8D55: 1E C7       ld   e,$C7
8D57: 3E 29       ld   a,$29
8D59: CD B9 8C    call $8CB9
8D5C: 3A 99 7B    ld   a,($7B99)
8D5F: 47          ld   b,a
8D60: C5          push bc
8D61: CD 0F 8E    call $8E0F
8D64: C1          pop  bc
8D65: 10 F9       djnz $8D60
8D67: 3E 2A       ld   a,$2A
8D69: 06 02       ld   b,$02
8D6B: 16 00       ld   d,$00
8D6D: 1E B8       ld   e,$B8
8D6F: CD B9 8C    call $8CB9
8D72: 3A 00 7B    ld   a,($7B00)
8D75: C6 1F       add  a,$1F
8D77: 06 02       ld   b,$02
8D79: 16 1B       ld   d,$1B
8D7B: 1E B7       ld   e,$B7
8D7D: CD B9 8C    call $8CB9
8D80: 3E 2B       ld   a,$2B
8D82: 06 02       ld   b,$02
8D84: 16 24       ld   d,$24
8D86: 1E B8       ld   e,$B8
8D88: CD B9 8C    call $8CB9
8D8B: 3A 5D 7B    ld   a,($7B5D)
8D8E: 3C          inc  a
8D8F: CD 6A 8E    call $8E6A
8D92: F5          push af
8D93: 78          ld   a,b
8D94: CD 6A 8E    call $8E6A
8D97: F5          push af
8D98: 78          ld   a,b
8D99: B7          or   a
8D9A: 28 09       jr   z,$8DA5
8D9C: 0E 02       ld   c,$02
8D9E: 16 3B       ld   d,$3B
8DA0: 1E B7       ld   e,$B7
8DA2: CD 59 8E    call $8E59
8DA5: F1          pop  af
8DA6: 0E 02       ld   c,$02
8DA8: 16 40       ld   d,$40
8DAA: 1E B7       ld   e,$B7
8DAC: CD 59 8E    call $8E59
8DAF: F1          pop  af
8DB0: CD 59 8E    call $8E59
8DB3: 3E 2C       ld   a,$2C
8DB5: 06 02       ld   b,$02
8DB7: 16 4E       ld   d,$4E
8DB9: 1E B8       ld   e,$B8
8DBB: CD B9 8C    call $8CB9
8DBE: 0E 02       ld   c,$02
8DC0: 16 66       ld   d,$66
8DC2: 1E B7       ld   e,$B7
8DC4: 3A 66 7B    ld   a,($7B66)
8DC7: CD 59 8E    call $8E59
8DCA: 3A 67 7B    ld   a,($7B67)
8DCD: CD 59 8E    call $8E59
8DD0: 3A 68 7B    ld   a,($7B68)
8DD3: CD 59 8E    call $8E59
8DD6: AF          xor  a
8DD7: CD 59 8E    call $8E59
8DDA: 3E 2D       ld   a,$2D
8DDC: 06 02       ld   b,$02
8DDE: 16 7E       ld   d,$7E
8DE0: 1E B8       ld   e,$B8
8DE2: CD B9 8C    call $8CB9
8DE5: 3A 02 7B    ld   a,($7B02)
8DE8: CB 3F       srl  a
8DEA: FE 08       cp   $08
8DEC: 38 02       jr   c,$8DF0
8DEE: 3E 08       ld   a,$08
8DF0: ED 44       neg
8DF2: C6 09       add  a,$09
8DF4: 32 96 7B    ld   ($7B96),a
8DF7: 0E 02       ld   c,$02
8DF9: 16 91       ld   d,$91
8DFB: 1E B7       ld   e,$B7
8DFD: CD 59 8E    call $8E59
8E00: AF          xor  a
8E01: 32 97 7B    ld   ($7B97),a
8E04: CD 59 8E    call $8E59
8E07: AF          xor  a
8E08: 32 98 7B    ld   ($7B98),a
8E0B: CD 59 8E    call $8E59
8E0E: C9          ret
8E0F: 21 00 7A    ld   hl,$7A00
8E12: 78          ld   a,b
8E13: 3D          dec  a
8E14: 87          add  a,a
8E15: 87          add  a,a
8E16: 87          add  a,a
8E17: 87          add  a,a
8E18: 87          add  a,a
8E19: 87          add  a,a
8E1A: 85          add  a,l
8E1B: 6F          ld   l,a
8E1C: 4E          ld   c,(hl)
8E1D: C5          push bc
8E1E: 23          inc  hl
8E1F: 23          inc  hl
8E20: 23          inc  hl
8E21: 23          inc  hl
8E22: AF          xor  a
8E23: C6 22       add  a,$22
8E25: 10 FC       djnz $8E23
8E27: D6 07       sub  $07
8E29: 57          ld   d,a
8E2A: 1E C6       ld   e,$C6
8E2C: D5          push de
8E2D: 14          inc  d
8E2E: 06 06       ld   b,$06
8E30: 0E 06       ld   c,$06
8E32: 7E          ld   a,(hl)
8E33: 23          inc  hl
8E34: CD 59 8E    call $8E59
8E37: 10 F9       djnz $8E32
8E39: D1          pop  de
8E3A: C1          pop  bc
8E3B: 79          ld   a,c
8E3C: B7          or   a
8E3D: C8          ret  z
8E3E: FE 08       cp   $08
8E40: 38 02       jr   c,$8E44
8E42: 3E 08       ld   a,$08
8E44: 47          ld   b,a
8E45: 1E BD       ld   e,$BD
8E47: C5          push bc
8E48: D5          push de
8E49: 3E 2E       ld   a,$2E
8E4B: 06 08       ld   b,$08
8E4D: CD B9 8C    call $8CB9
8E50: D1          pop  de
8E51: 7A          ld   a,d
8E52: C6 04       add  a,$04
8E54: 57          ld   d,a
8E55: C1          pop  bc
8E56: 10 EF       djnz $8E47
8E58: C9          ret
8E59: C5          push bc
8E5A: D5          push de
8E5B: E5          push hl
8E5C: C6 1E       add  a,$1E
8E5E: 41          ld   b,c
8E5F: CD B9 8C    call $8CB9
8E62: E1          pop  hl
8E63: D1          pop  de
8E64: 7A          ld   a,d
8E65: C6 05       add  a,$05
8E67: 57          ld   d,a
8E68: C1          pop  bc
8E69: C9          ret
8E6A: 06 00       ld   b,$00
8E6C: FE 0A       cp   $0A
8E6E: D8          ret  c
8E6F: D6 0A       sub  $0A
8E71: 04          inc  b
8E72: 18 F8       jr   $8E6C
8E74: CD F3 8C    call $8CF3
8E77: CD 2D 8D    call $8D2D
8E7A: CD D3 8F    call $8FD3
8E7D: CD 3B 8D    call $8D3B
8E80: 21 A2 87    ld   hl,$87A2
8E83: 3A 01 7B    ld   a,($7B01)
8E86: 87          add  a,a
8E87: 85          add  a,l
8E88: 6F          ld   l,a
8E89: 7C          ld   a,h
8E8A: CE 00       adc  a,$00
8E8C: 67          ld   h,a
8E8D: 5E          ld   e,(hl)
8E8E: 23          inc  hl
8E8F: 56          ld   d,(hl)
8E90: EB          ex   de,hl
8E91: 7E          ld   a,(hl)
8E92: 32 03 7B    ld   ($7B03),a
8E95: 23          inc  hl
8E96: 7E          ld   a,(hl)
8E97: 32 04 7B    ld   ($7B04),a
8E9A: 23          inc  hl
8E9B: 7E          ld   a,(hl)
8E9C: 32 05 7B    ld   ($7B05),a
8E9F: 23          inc  hl
8EA0: 7E          ld   a,(hl)
8EA1: 32 06 7B    ld   ($7B06),a
8EA4: 23          inc  hl
8EA5: 7E          ld   a,(hl)
8EA6: 32 07 7B    ld   ($7B07),a
8EA9: 23          inc  hl
8EAA: 3A 03 7B    ld   a,($7B03)
8EAD: 47          ld   b,a
8EAE: C5          push bc
8EAF: 5E          ld   e,(hl)
8EB0: 23          inc  hl
8EB1: 56          ld   d,(hl)
8EB2: 23          inc  hl
8EB3: 7E          ld   a,(hl)
8EB4: 23          inc  hl
8EB5: 3C          inc  a
8EB6: 92          sub  d
8EB7: 47          ld   b,a
8EB8: C5          push bc
8EB9: 06 01       ld   b,$01
8EBB: 0E 00       ld   c,$00
8EBD: CD CD 8C    call $8CCD
8EC0: 3E 01       ld   a,$01
8EC2: CD B7 8F    call $8FB7
8EC5: 14          inc  d
8EC6: C1          pop  bc
8EC7: 10 EF       djnz $8EB8
8EC9: C1          pop  bc
8ECA: 10 E2       djnz $8EAE
8ECC: 3A 04 7B    ld   a,($7B04)
8ECF: 47          ld   b,a
8ED0: C5          push bc
8ED1: 56          ld   d,(hl)
8ED2: 23          inc  hl
8ED3: 5E          ld   e,(hl)
8ED4: 23          inc  hl
8ED5: 7E          ld   a,(hl)
8ED6: 23          inc  hl
8ED7: 3C          inc  a
8ED8: 93          sub  e
8ED9: 47          ld   b,a
8EDA: C5          push bc
8EDB: CD A3 8F    call $8FA3
8EDE: B7          or   a
8EDF: 28 07       jr   z,$8EE8
8EE1: 06 01       ld   b,$01
8EE3: 0E 00       ld   c,$00
8EE5: CD CD 8C    call $8CCD
8EE8: 06 02       ld   b,$02
8EEA: 0E 01       ld   c,$01
8EEC: CD CD 8C    call $8CCD
8EEF: CD A3 8F    call $8FA3
8EF2: F6 02       or   $02
8EF4: CD B7 8F    call $8FB7
8EF7: 1C          inc  e
8EF8: C1          pop  bc
8EF9: 10 DF       djnz $8EDA
8EFB: C1          pop  bc
8EFC: 10 D2       djnz $8ED0
8EFE: 3A 05 7B    ld   a,($7B05)
8F01: B7          or   a
8F02: 28 08       jr   z,$8F0C
8F04: 7E          ld   a,(hl)
8F05: 23          inc  hl
8F06: 87          add  a,a
8F07: 87          add  a,a
8F08: 87          add  a,a
8F09: 32 08 7B    ld   ($7B08),a
8F0C: 06 0C       ld   b,$0C
8F0E: C5          push bc
8F0F: 56          ld   d,(hl)
8F10: 23          inc  hl
8F11: 5E          ld   e,(hl)
8F12: 23          inc  hl
8F13: 05          dec  b
8F14: 78          ld   a,b
8F15: E5          push hl
8F16: 21 6A 7B    ld   hl,$7B6A
8F19: 85          add  a,l
8F1A: 6F          ld   l,a
8F1B: 7E          ld   a,(hl)
8F1C: B7          or   a
8F1D: E1          pop  hl
8F1E: 78          ld   a,b
8F1F: 20 10       jr   nz,$8F31
8F21: 87          add  a,a
8F22: 87          add  a,a
8F23: 87          add  a,a
8F24: 87          add  a,a
8F25: C6 04       add  a,$04
8F27: CD B7 8F    call $8FB7
8F2A: 06 03       ld   b,$03
8F2C: 0E 02       ld   c,$02
8F2E: CD CD 8C    call $8CCD
8F31: C1          pop  bc
8F32: 10 DA       djnz $8F0E
8F34: 3A 06 7B    ld   a,($7B06)
8F37: 47          ld   b,a
8F38: C5          push bc
8F39: 56          ld   d,(hl)
8F3A: 23          inc  hl
8F3B: 5E          ld   e,(hl)
8F3C: 23          inc  hl
8F3D: 05          dec  b
8F3E: 78          ld   a,b
8F3F: E5          push hl
8F40: 21 76 7B    ld   hl,$7B76
8F43: 85          add  a,l
8F44: 6F          ld   l,a
8F45: 7E          ld   a,(hl)
8F46: B7          or   a
8F47: E1          pop  hl
8F48: 78          ld   a,b
8F49: 20 10       jr   nz,$8F5B
8F4B: 87          add  a,a
8F4C: 87          add  a,a
8F4D: 87          add  a,a
8F4E: 87          add  a,a
8F4F: C6 08       add  a,$08
8F51: CD B7 8F    call $8FB7
8F54: 06 05       ld   b,$05
8F56: 0E 03       ld   c,$03
8F58: CD CD 8C    call $8CCD
8F5B: C1          pop  bc
8F5C: 10 DA       djnz $8F38
8F5E: FD 21 4E 7B ld   iy,$7B4E
8F62: 06 12       ld   b,$12
8F64: FD 7E 04    ld   a,(iy+$04)
8F67: B7          or   a
8F68: 28 01       jr   z,$8F6B
8F6A: 04          inc  b
8F6B: 78          ld   a,b
8F6C: 06 08       ld   b,$08
8F6E: 16 00       ld   d,$00
8F70: 1E AE       ld   e,$AE
8F72: E5          push hl
8F73: CD B9 8C    call $8CB9
8F76: E1          pop  hl
8F77: 3E 00       ld   a,$00
8F79: F5          push af
8F7A: CD 91 8F    call $8F91
8F7D: 7E          ld   a,(hl)
8F7E: 23          inc  hl
8F7F: FD 77 02    ld   (iy+$02),a
8F82: 7E          ld   a,(hl)
8F83: 23          inc  hl
8F84: FD 77 03    ld   (iy+$03),a
8F87: F1          pop  af
8F88: 3C          inc  a
8F89: FE 05       cp   $05
8F8B: 38 EC       jr   c,$8F79
8F8D: CD 06 8D    call $8D06
8F90: C9          ret
8F91: E5          push hl
8F92: 21 0E 7B    ld   hl,$7B0E
8F95: 87          add  a,a
8F96: 87          add  a,a
8F97: 87          add  a,a
8F98: 85          add  a,l
8F99: 6F          ld   l,a
8F9A: 7C          ld   a,h
8F9B: CE 00       adc  a,$00
8F9D: 67          ld   h,a
8F9E: E5          push hl
8F9F: FD E1       pop  iy
8FA1: E1          pop  hl
8FA2: C9          ret
8FA3: 7A          ld   a,d
8FA4: FE 14       cp   $14
8FA6: 30 0C       jr   nc,$8FB4
8FA8: 7B          ld   a,e
8FA9: FE 19       cp   $19
8FAB: 30 07       jr   nc,$8FB4
8FAD: E5          push hl
8FAE: CD C0 8F    call $8FC0
8FB1: 7E          ld   a,(hl)
8FB2: E1          pop  hl
8FB3: C9          ret
8FB4: 3E 00       ld   a,$00
8FB6: C9          ret
8FB7: E5          push hl
8FB8: F5          push af
8FB9: CD C0 8F    call $8FC0
8FBC: F1          pop  af
8FBD: 77          ld   (hl),a
8FBE: E1          pop  hl
8FBF: C9          ret
8FC0: 21 E0 03    ld   hl,$03E0
8FC3: 7D          ld   a,l
8FC4: 82          add  a,d
8FC5: 6F          ld   l,a
8FC6: 7C          ld   a,h
8FC7: CE 00       adc  a,$00
8FC9: 67          ld   h,a
8FCA: 29          add  hl,hl
8FCB: 29          add  hl,hl
8FCC: 29          add  hl,hl
8FCD: 29          add  hl,hl
8FCE: 29          add  hl,hl
8FCF: 7D          ld   a,l
8FD0: 83          add  a,e
8FD1: 6F          ld   l,a
8FD2: C9          ret
8FD3: 21 00 7C    ld   hl,$7C00
8FD6: 11 01 7C    ld   de,$7C01
8FD9: 01 FF 03    ld   bc,$03FF
8FDC: 3E 00       ld   a,$00
8FDE: 77          ld   (hl),a
8FDF: ED B0       ldir
8FE1: C9          ret
8FE2: FD 56 00    ld   d,(iy+$00)
8FE5: FD 5E 01    ld   e,(iy+$01)
8FE8: 06 04       ld   b,$04
8FEA: FD 7E 05    ld   a,(iy+$05)
8FED: C6 14       add  a,$14
8FEF: FE 1C       cp   $1C
8FF1: 38 06       jr   c,$8FF9
8FF3: F5          push af
8FF4: 7A          ld   a,d
8FF5: D6 08       sub  $08
8FF7: 57          ld   d,a
8FF8: F1          pop  af
8FF9: CD B9 8C    call $8CB9
8FFC: C9          ret
8FFD: FD 56 00    ld   d,(iy+$00)
9000: FD 5E 01    ld   e,(iy+$01)
9003: 06 08       ld   b,$08
9005: FD 7E 05    ld   a,(iy+$05)
9008: C6 0E       add  a,$0E
900A: CD B9 8C    call $8CB9
900D: C9          ret
900E: FD 56 00    ld   d,(iy+$00)
9011: FD 5E 01    ld   e,(iy+$01)
9014: CD 0A 8C    call $8C0A
9017: E5          push hl
9018: 3E 08       ld   a,$08
901A: CD 5B 8C    call $8C5B
901D: E1          pop  hl
901E: FD 7E 05    ld   a,(iy+$05)
9021: C6 05       add  a,$05
9023: CD 34 8C    call $8C34
9026: C5          push bc
9027: D5          push de
9028: E5          push hl
9029: DD E5       push ix
902B: ED 4B 46 7B ld   bc,($7B46)
902F: ED 5B 48 7B ld   de,($7B48)
9033: 2A 4A 7B    ld   hl,($7B4A)
9036: DD 2A 4C 7B ld   ix,($7B4C)
903A: CD 76 8C    call $8C76
903D: DD E1       pop  ix
903F: E1          pop  hl
9040: D1          pop  de
9041: C1          pop  bc
9042: ED 43 46 7B ld   ($7B46),bc
9046: ED 53 48 7B ld   ($7B48),de
904A: 22 4A 7B    ld   ($7B4A),hl
904D: DD 22 4C 7B ld   ($7B4C),ix
9051: CD 76 8C    call $8C76
9054: C9          ret
9055: 3A 02 7B    ld   a,($7B02)
9058: FE 01       cp   $01
905A: 20 08       jr   nz,$9064
905C: 3E 00       ld   a,$00
905E: 32 07 7B    ld   ($7B07),a
9061: C3 6D 90    jp   $906D
9064: FE 03       cp   $03
9066: 38 05       jr   c,$906D
9068: 3E 05       ld   a,$05
906A: 32 07 7B    ld   ($7B07),a
906D: 3A 07 7B    ld   a,($7B07)
9070: B7          or   a
9071: 28 32       jr   z,$90A5
9073: 3E 00       ld   a,$00
9075: F5          push af
9076: CD 91 8F    call $8F91
9079: FD 7E 02    ld   a,(iy+$02)
907C: 87          add  a,a
907D: 87          add  a,a
907E: 87          add  a,a
907F: FD 77 00    ld   (iy+$00),a
9082: FD 7E 03    ld   a,(iy+$03)
9085: 87          add  a,a
9086: 87          add  a,a
9087: 87          add  a,a
9088: C6 14       add  a,$14
908A: FD 77 01    ld   (iy+$01),a
908D: FD 36 04 00 ld   (iy+$04),$00
9091: FD 36 05 00 ld   (iy+$05),$00
9095: FD 36 06 02 ld   (iy+$06),$02
9099: CD E2 8F    call $8FE2
909C: 3A 07 7B    ld   a,($7B07)
909F: 47          ld   b,a
90A0: F1          pop  af
90A1: 3C          inc  a
90A2: B8          cp   b
90A3: 38 D0       jr   c,$9075
90A5: FD 21 4E 7B ld   iy,$7B4E
90A9: FD 36 00 04 ld   (iy+$00),$04
90AD: FD 36 01 9E ld   (iy+$01),$9E
90B1: FD 36 02 00 ld   (iy+$02),$00
90B5: FD 36 03 00 ld   (iy+$03),$00
90B9: FD 36 05 00 ld   (iy+$05),$00
90BD: CD FD 8F    call $8FFD
90C0: 3A 05 7B    ld   a,($7B05)
90C3: B7          or   a
90C4: 28 27       jr   z,$90ED
90C6: 3E 00       ld   a,$00
90C8: 32 0B 7B    ld   ($7B0B),a
90CB: 3A 08 7B    ld   a,($7B08)
90CE: 57          ld   d,a
90CF: 3E 04       ld   a,$04
90D1: 32 09 7B    ld   ($7B09),a
90D4: 5F          ld   e,a
90D5: 3E 04       ld   a,$04
90D7: 06 03       ld   b,$03
90D9: CD B9 8C    call $8CB9
90DC: 3A 08 7B    ld   a,($7B08)
90DF: 57          ld   d,a
90E0: 3E 42       ld   a,$42
90E2: 32 0A 7B    ld   ($7B0A),a
90E5: 5F          ld   e,a
90E6: 3E 04       ld   a,$04
90E8: 06 03       ld   b,$03
90EA: CD B9 8C    call $8CB9
90ED: 06 32       ld   b,$32
90EF: CD 19 BD    call $BD19
90F2: 10 FB       djnz $90EF
90F4: FD 21 36 7B ld   iy,$7B36
90F8: FD 36 00 3C ld   (iy+$00),$3C
90FC: FD 36 01 18 ld   (iy+$01),$18
9100: FD 36 05 00 ld   (iy+$05),$00
9104: FD 36 02 07 ld   (iy+$02),$07
9108: FD 36 08 07 ld   (iy+$08),$07
910C: FD 36 03 01 ld   (iy+$03),$01
9110: FD 36 09 00 ld   (iy+$09),$00
9114: FD 36 04 00 ld   (iy+$04),$00
9118: FD 36 0C 01 ld   (iy+$0c),$01
911C: FD 56 00    ld   d,(iy+$00)
911F: FD 5E 01    ld   e,(iy+$01)
9122: CD 0A 8C    call $8C0A
9125: E5          push hl
9126: 3E 08       ld   a,$08
9128: CD 5B 8C    call $8C5B
912B: E1          pop  hl
912C: FD 7E 05    ld   a,(iy+$05)
912F: C6 05       add  a,$05
9131: CD 34 8C    call $8C34
9134: ED 43 46 7B ld   ($7B46),bc
9138: ED 53 48 7B ld   ($7B48),de
913C: 22 4A 7B    ld   ($7B4A),hl
913F: DD 22 4C 7B ld   ($7B4C),ix
9143: CD 76 8C    call $8C76
9146: CD 4A 91    call $914A
9149: C9          ret
914A: 3A 00 7B    ld   a,($7B00)
914D: 47          ld   b,a
914E: 04          inc  b
914F: AF          xor  a
9150: C6 22       add  a,$22
9152: 10 FC       djnz $9150
9154: 47          ld   b,a
9155: 3A 5C 7B    ld   a,($7B5C)
9158: FE 09       cp   $09
915A: D0          ret  nc
915B: CB 27       sla  a
915D: CB 27       sla  a
915F: 80          add  a,b
9160: D6 0B       sub  $0B
9162: 57          ld   d,a
9163: 1E BD       ld   e,$BD
9165: 3E 2E       ld   a,$2E
9167: 06 08       ld   b,$08
9169: CD B9 8C    call $8CB9
916C: C9          ret
916D: 3E 2C       ld   a,$2C
916F: CD 1E BB    call $BB1E
9172: 28 1D       jr   z,$9191
9174: 3E 2C       ld   a,$2C
9176: CD 1E BB    call $BB1E
9179: 28 0D       jr   z,$9188
917B: 3E 42       ld   a,$42
917D: CD 1E BB    call $BB1E
9180: 28 06       jr   z,$9188
9182: 3E 80       ld   a,$80
9184: 32 56 7B    ld   ($7B56),a
9187: C9          ret
9188: CD 91 91    call $9191
918B: B7          or   a
918C: 28 E6       jr   z,$9174
918E: C3 6D 91    jp   $916D
9191: 16 00       ld   d,$00
9193: 1E 01       ld   e,$01
9195: 3A 57 7B    ld   a,($7B57)
9198: CD B8 91    call $91B8
919B: 3A 58 7B    ld   a,($7B58)
919E: CD B8 91    call $91B8
91A1: 3A 59 7B    ld   a,($7B59)
91A4: CD B8 91    call $91B8
91A7: 3A 5A 7B    ld   a,($7B5A)
91AA: CD B8 91    call $91B8
91AD: 3A 5B 7B    ld   a,($7B5B)
91B0: CD B8 91    call $91B8
91B3: 7A          ld   a,d
91B4: 32 56 7B    ld   ($7B56),a
91B7: C9          ret
91B8: CD 1E BB    call $BB1E
91BB: 28 03       jr   z,$91C0
91BD: 7A          ld   a,d
91BE: B3          or   e
91BF: 57          ld   d,a
91C0: CB 23       sla  e
91C2: C9          ret
91C3: FD 21 36 7B ld   iy,$7B36
91C7: 06 00       ld   b,$00
91C9: 0E 00       ld   c,$00
91CB: 3A 56 7B    ld   a,($7B56)
91CE: 1F          rra
91CF: 30 01       jr   nc,$91D2
91D1: 04          inc  b
91D2: 1F          rra
91D3: 30 01       jr   nc,$91D6
91D5: 05          dec  b
91D6: 1F          rra
91D7: 30 02       jr   nc,$91DB
91D9: 0D          dec  c
91DA: 0D          dec  c
91DB: 1F          rra
91DC: 30 02       jr   nc,$91E0
91DE: 0C          inc  c
91DF: 0C          inc  c
91E0: FD 70 06    ld   (iy+$06),b
91E3: FD 71 07    ld   (iy+$07),c
91E6: FD 56 02    ld   d,(iy+$02)
91E9: FD 5E 03    ld   e,(iy+$03)
91EC: FD 66 08    ld   h,(iy+$08)
91EF: FD 6E 09    ld   l,(iy+$09)
91F2: FD 7E 04    ld   a,(iy+$04)
91F5: B7          or   a
91F6: CA 09 92    jp   z,$9209
91F9: FE 02       cp   $02
91FB: CA 0C 93    jp   z,$930C
91FE: DA 93 92    jp   c,$9293
9201: FE 03       cp   $03
9203: CA 45 94    jp   z,$9445
9206: C3 8E 94    jp   $948E
9209: 3A 56 7B    ld   a,($7B56)
920C: E6 10       and  $10
920E: C2 FA 92    jp   nz,$92FA
9211: 79          ld   a,c
9212: B7          or   a
9213: 28 2D       jr   z,$9242
9215: 7C          ld   a,h
9216: FE 03       cp   $03
9218: 20 28       jr   nz,$9242
921A: 79          ld   a,c
921B: B7          or   a
921C: FA 2D 92    jp   m,$922D
921F: D5          push de
9220: 1C          inc  e
9221: 1C          inc  e
9222: CD A3 8F    call $8FA3
9225: D1          pop  de
9226: E6 02       and  $02
9228: 28 18       jr   z,$9242
922A: C3 37 92    jp   $9237
922D: D5          push de
922E: 1D          dec  e
922F: CD A3 8F    call $8FA3
9232: D1          pop  de
9233: E6 02       and  $02
9235: 28 0B       jr   z,$9242
9237: FD 36 06 00 ld   (iy+$06),$00
923B: FD 36 04 01 ld   (iy+$04),$01
923F: C3 86 92    jp   $9286
9242: FD 36 07 00 ld   (iy+$07),$00
9246: 0E 00       ld   c,$00
9248: D5          push de
9249: 7C          ld   a,h
924A: 80          add  a,b
924B: F2 4F 92    jp   p,$924F
924E: 15          dec  d
924F: FE 08       cp   $08
9251: FA 55 92    jp   m,$9255
9254: 14          inc  d
9255: 1D          dec  e
9256: CD A3 8F    call $8FA3
9259: D1          pop  de
925A: E6 01       and  $01
925C: 20 1F       jr   nz,$927D
925E: FD 36 04 03 ld   (iy+$04),$03
9262: 78          ld   a,b
9263: 84          add  a,h
9264: E6 07       and  $07
9266: FE 04       cp   $04
9268: 38 0B       jr   c,$9275
926A: FD 36 0B FF ld   (iy+$0b),$FF
926E: FD 36 0A 00 ld   (iy+$0a),$00
9272: C3 7D 92    jp   $927D
9275: FD 36 0B 01 ld   (iy+$0b),$01
9279: FD 36 0A 01 ld   (iy+$0a),$01
927D: CD CA 94    call $94CA
9280: 30 04       jr   nc,$9286
9282: FD 36 06 00 ld   (iy+$06),$00
9286: FD 7E 06    ld   a,(iy+$06)
9289: B7          or   a
928A: CA 22 95    jp   z,$9522
928D: FD 77 0C    ld   (iy+$0c),a
9290: C3 22 95    jp   $9522
9293: 3A 56 7B    ld   a,($7B56)
9296: E6 10       and  $10
9298: C2 FA 92    jp   nz,$92FA
929B: 78          ld   a,b
929C: B7          or   a
929D: 28 23       jr   z,$92C2
929F: 7D          ld   a,l
92A0: B7          or   a
92A1: 20 1F       jr   nz,$92C2
92A3: D5          push de
92A4: 1D          dec  e
92A5: CD A3 8F    call $8FA3
92A8: D1          pop  de
92A9: E6 01       and  $01
92AB: 28 15       jr   z,$92C2
92AD: FD 36 07 00 ld   (iy+$07),$00
92B1: FD 36 04 00 ld   (iy+$04),$00
92B5: CD CA 94    call $94CA
92B8: D2 F3 92    jp   nc,$92F3
92BB: FD 36 06 00 ld   (iy+$06),$00
92BF: C3 F3 92    jp   $92F3
92C2: FD 36 06 00 ld   (iy+$06),$00
92C6: 79          ld   a,c
92C7: B7          or   a
92C8: 28 29       jr   z,$92F3
92CA: 7D          ld   a,l
92CB: B7          or   a
92CC: 20 25       jr   nz,$92F3
92CE: 79          ld   a,c
92CF: B7          or   a
92D0: FA E5 92    jp   m,$92E5
92D3: D5          push de
92D4: 1C          inc  e
92D5: 1C          inc  e
92D6: CD A3 8F    call $8FA3
92D9: D1          pop  de
92DA: E6 02       and  $02
92DC: 20 15       jr   nz,$92F3
92DE: FD 36 07 00 ld   (iy+$07),$00
92E2: C3 F3 92    jp   $92F3
92E5: D5          push de
92E6: 1D          dec  e
92E7: CD A3 8F    call $8FA3
92EA: D1          pop  de
92EB: E6 02       and  $02
92ED: 20 04       jr   nz,$92F3
92EF: FD 36 07 00 ld   (iy+$07),$00
92F3: FD 36 0C 00 ld   (iy+$0c),$00
92F7: C3 22 95    jp   $9522
92FA: FD 36 0A 00 ld   (iy+$0a),$00
92FE: FD 36 04 02 ld   (iy+$04),$02
9302: 78          ld   a,b
9303: FD 77 0B    ld   (iy+$0b),a
9306: B7          or   a
9307: 28 03       jr   z,$930C
9309: FD 77 0C    ld   (iy+$0c),a
930C: FD 46 0B    ld   b,(iy+$0b)
930F: FD 7E 0A    ld   a,(iy+$0a)
9312: CB 3F       srl  a
9314: CB 3F       srl  a
9316: FE 06       cp   $06
9318: 38 02       jr   c,$931C
931A: 3E 06       ld   a,$06
931C: ED 44       neg
931E: C6 02       add  a,$02
9320: 4F          ld   c,a
9321: FD 34 0A    inc  (iy+$0a)
9324: B7          or   a
9325: 28 26       jr   z,$934D
9327: FA 4D 93    jp   m,$934D
932A: D5          push de
932B: CD A3 8F    call $8FA3
932E: D1          pop  de
932F: E6 01       and  $01
9331: 20 0A       jr   nz,$933D
9333: D5          push de
9334: 1C          inc  e
9335: CD A3 8F    call $8FA3
9338: D1          pop  de
9339: FE 01       cp   $01
933B: 28 07       jr   z,$9344
933D: FD 7E 01    ld   a,(iy+$01)
9340: FE AE       cp   $AE
9342: 38 09       jr   c,$934D
9344: 0E FF       ld   c,$FF
9346: FD 36 0A 0C ld   (iy+$0a),$0C
934A: C3 D0 93    jp   $93D0
934D: 7C          ld   a,h
934E: 80          add  a,b
934F: FE 03       cp   $03
9351: 20 52       jr   nz,$93A5
9353: FD 7E 07    ld   a,(iy+$07)
9356: B7          or   a
9357: 28 4C       jr   z,$93A5
9359: FA 85 93    jp   m,$9385
935C: D5          push de
935D: 1C          inc  e
935E: CD A3 8F    call $8FA3
9361: D1          pop  de
9362: E6 02       and  $02
9364: 20 10       jr   nz,$9376
9366: D5          push de
9367: 1C          inc  e
9368: 7D          ld   a,l
9369: FE 04       cp   $04
936B: 38 01       jr   c,$936E
936D: 1C          inc  e
936E: CD A3 8F    call $8FA3
9371: D1          pop  de
9372: E6 02       and  $02
9374: 28 2F       jr   z,$93A5
9376: FD 36 04 01 ld   (iy+$04),$01
937A: 7D          ld   a,l
937B: 81          add  a,c
937C: E6 01       and  $01
937E: CA 3C 94    jp   z,$943C
9381: 0C          inc  c
9382: C3 3C 94    jp   $943C
9385: CD A3 8F    call $8FA3
9388: E6 02       and  $02
938A: 28 19       jr   z,$93A5
938C: D5          push de
938D: 1C          inc  e
938E: CD A3 8F    call $8FA3
9391: D1          pop  de
9392: E6 02       and  $02
9394: 28 0F       jr   z,$93A5
9396: FD 36 04 01 ld   (iy+$04),$01
939A: 7D          ld   a,l
939B: 81          add  a,c
939C: E6 01       and  $01
939E: CA 3C 94    jp   z,$943C
93A1: 0D          dec  c
93A2: C3 3C 94    jp   $943C
93A5: 79          ld   a,c
93A6: 85          add  a,l
93A7: 28 03       jr   z,$93AC
93A9: F2 C1 93    jp   p,$93C1
93AC: D5          push de
93AD: 1D          dec  e
93AE: CD A3 8F    call $8FA3
93B1: D1          pop  de
93B2: E6 01       and  $01
93B4: 28 1A       jr   z,$93D0
93B6: FD 36 04 00 ld   (iy+$04),$00
93BA: 7D          ld   a,l
93BB: ED 44       neg
93BD: 4F          ld   c,a
93BE: C3 D0 93    jp   $93D0
93C1: FE 08       cp   $08
93C3: 20 0B       jr   nz,$93D0
93C5: CD A3 8F    call $8FA3
93C8: E6 01       and  $01
93CA: 28 04       jr   z,$93D0
93CC: FD 36 04 00 ld   (iy+$04),$00
93D0: 3A 05 7B    ld   a,($7B05)
93D3: B7          or   a
93D4: 28 5A       jr   z,$9430
93D6: 3A 08 7B    ld   a,($7B08)
93D9: D6 01       sub  $01
93DB: FD BE 00    cp   (iy+$00)
93DE: 30 50       jr   nc,$9430
93E0: C6 0A       add  a,$0A
93E2: FD BE 00    cp   (iy+$00)
93E5: 38 49       jr   c,$9430
93E7: FD 7E 01    ld   a,(iy+$01)
93EA: D6 11       sub  $11
93EC: D5          push de
93ED: 57          ld   d,a
93EE: D6 02       sub  $02
93F0: 81          add  a,c
93F1: 5F          ld   e,a
93F2: 3A 09 7B    ld   a,($7B09)
93F5: BA          cp   d
93F6: 28 05       jr   z,$93FD
93F8: 30 10       jr   nc,$940A
93FA: BB          cp   e
93FB: 38 0D       jr   c,$940A
93FD: 5F          ld   e,a
93FE: 3A 0B 7B    ld   a,($7B0B)
9401: B7          or   a
9402: 7B          ld   a,e
9403: 20 1A       jr   nz,$941F
9405: C6 01       add  a,$01
9407: C3 1F 94    jp   $941F
940A: 3A 0A 7B    ld   a,($7B0A)
940D: BA          cp   d
940E: 28 05       jr   z,$9415
9410: 30 1D       jr   nc,$942F
9412: BB          cp   e
9413: 38 1A       jr   c,$942F
9415: 5F          ld   e,a
9416: 3A 0B 7B    ld   a,($7B0B)
9419: B7          or   a
941A: 7B          ld   a,e
941B: 28 02       jr   z,$941F
941D: C6 01       add  a,$01
941F: 92          sub  d
9420: C6 01       add  a,$01
9422: 4F          ld   c,a
9423: FD 36 0A 00 ld   (iy+$0a),$00
9427: FD 36 04 04 ld   (iy+$04),$04
942B: D1          pop  de
942C: C3 3C 94    jp   $943C
942F: D1          pop  de
9430: CD CA 94    call $94CA
9433: 30 07       jr   nc,$943C
9435: 78          ld   a,b
9436: ED 44       neg
9438: 47          ld   b,a
9439: FD 77 0B    ld   (iy+$0b),a
943C: FD 70 06    ld   (iy+$06),b
943F: FD 71 07    ld   (iy+$07),c
9442: C3 22 95    jp   $9522
9445: FD 34 0A    inc  (iy+$0a)
9448: FD 7E 0A    ld   a,(iy+$0a)
944B: FE 04       cp   $04
944D: 30 0F       jr   nc,$945E
944F: FD 7E 0B    ld   a,(iy+$0b)
9452: 47          ld   b,a
9453: FD 77 06    ld   (iy+$06),a
9456: 0E FF       ld   c,$FF
9458: FD 71 07    ld   (iy+$07),c
945B: C3 72 94    jp   $9472
945E: FD 36 06 00 ld   (iy+$06),$00
9462: CB 3F       srl  a
9464: CB 3F       srl  a
9466: FE 04       cp   $04
9468: 38 02       jr   c,$946C
946A: 3E 03       ld   a,$03
946C: EE FF       xor  $FF
946E: 4F          ld   c,a
946F: FD 77 07    ld   (iy+$07),a
9472: 79          ld   a,c
9473: 85          add  a,l
9474: F2 8B 94    jp   p,$948B
9477: D5          push de
9478: 1D          dec  e
9479: CD A3 8F    call $8FA3
947C: D1          pop  de
947D: E6 01       and  $01
947F: 28 0A       jr   z,$948B
9481: FD 36 04 00 ld   (iy+$04),$00
9485: 7D          ld   a,l
9486: ED 44       neg
9488: FD 77 07    ld   (iy+$07),a
948B: C3 22 95    jp   $9522
948E: 3A 56 7B    ld   a,($7B56)
9491: E6 10       and  $10
9493: C2 FA 92    jp   nz,$92FA
9496: 3A 08 7B    ld   a,($7B08)
9499: D6 01       sub  $01
949B: FD BE 00    cp   (iy+$00)
949E: 30 07       jr   nc,$94A7
94A0: C6 0A       add  a,$0A
94A2: FD BE 00    cp   (iy+$00)
94A5: 30 0C       jr   nc,$94B3
94A7: FD 36 0A 00 ld   (iy+$0a),$00
94AB: FD 36 0B 00 ld   (iy+$0b),$00
94AF: FD 36 04 03 ld   (iy+$04),$03
94B3: FD 36 07 01 ld   (iy+$07),$01
94B7: 78          ld   a,b
94B8: B7          or   a
94B9: 28 03       jr   z,$94BE
94BB: FD 77 0C    ld   (iy+$0c),a
94BE: CD CA 94    call $94CA
94C1: 30 04       jr   nc,$94C7
94C3: FD 36 06 00 ld   (iy+$06),$00
94C7: C3 22 95    jp   $9522
94CA: 78          ld   a,b
94CB: B7          or   a
94CC: D5          push de
94CD: FA D7 94    jp   m,$94D7
94D0: C2 EB 94    jp   nz,$94EB
94D3: D1          pop  de
94D4: 37          scf
94D5: 3F          ccf
94D6: C9          ret
94D7: FD 7E 00    ld   a,(iy+$00)
94DA: B7          or   a
94DB: 28 42       jr   z,$951F
94DD: 7C          ld   a,h
94DE: FE 02       cp   $02
94E0: 30 F1       jr   nc,$94D3
94E2: 79          ld   a,c
94E3: FE 02       cp   $02
94E5: 28 EC       jr   z,$94D3
94E7: 15          dec  d
94E8: C3 FD 94    jp   $94FD
94EB: FD 7E 00    ld   a,(iy+$00)
94EE: FE 98       cp   $98
94F0: 30 2D       jr   nc,$951F
94F2: 7C          ld   a,h
94F3: FE 05       cp   $05
94F5: 38 DC       jr   c,$94D3
94F7: 79          ld   a,c
94F8: FE 02       cp   $02
94FA: 28 D7       jr   z,$94D3
94FC: 14          inc  d
94FD: 7D          ld   a,l
94FE: 81          add  a,c
94FF: FE 08       cp   $08
9501: 38 08       jr   c,$950B
9503: F2 0A 95    jp   p,$950A
9506: 1D          dec  e
9507: C3 0B 95    jp   $950B
950A: 1C          inc  e
950B: CD A3 8F    call $8FA3
950E: FE 01       cp   $01
9510: 28 0D       jr   z,$951F
9512: 79          ld   a,c
9513: B7          or   a
9514: F2 D3 94    jp   p,$94D3
9517: 1C          inc  e
9518: CD A3 8F    call $8FA3
951B: FE 01       cp   $01
951D: 20 B4       jr   nz,$94D3
951F: D1          pop  de
9520: 37          scf
9521: C9          ret
9522: FD 46 00    ld   b,(iy+$00)
9525: FD 4E 01    ld   c,(iy+$01)
9528: FD 56 06    ld   d,(iy+$06)
952B: FD 5E 07    ld   e,(iy+$07)
952E: FD 66 08    ld   h,(iy+$08)
9531: FD 6E 09    ld   l,(iy+$09)
9534: 78          ld   a,b
9535: 82          add  a,d
9536: 47          ld   b,a
9537: 79          ld   a,c
9538: 83          add  a,e
9539: 4F          ld   c,a
953A: 7C          ld   a,h
953B: 82          add  a,d
953C: F2 42 95    jp   p,$9542
953F: FD 35 02    dec  (iy+$02)
9542: FE 08       cp   $08
9544: FA 4A 95    jp   m,$954A
9547: FD 34 02    inc  (iy+$02)
954A: E6 07       and  $07
954C: 67          ld   h,a
954D: 7D          ld   a,l
954E: 83          add  a,e
954F: F2 55 95    jp   p,$9555
9552: FD 35 03    dec  (iy+$03)
9555: FE 08       cp   $08
9557: FA 5D 95    jp   m,$955D
955A: FD 34 03    inc  (iy+$03)
955D: E6 07       and  $07
955F: 6F          ld   l,a
9560: FD 70 00    ld   (iy+$00),b
9563: FD 71 01    ld   (iy+$01),c
9566: FD 74 08    ld   (iy+$08),h
9569: FD 75 09    ld   (iy+$09),l
956C: FD 7E 0C    ld   a,(iy+$0c)
956F: B7          or   a
9570: 28 0F       jr   z,$9581
9572: FA 7B 95    jp   m,$957B
9575: 3E 00       ld   a,$00
9577: 4F          ld   c,a
9578: 7C          ld   a,h
9579: 18 0A       jr   $9585
957B: 3E 03       ld   a,$03
957D: 4F          ld   c,a
957E: 7C          ld   a,h
957F: 18 04       jr   $9585
9581: 3E 06       ld   a,$06
9583: 4F          ld   c,a
9584: 7D          ld   a,l
9585: CB 3F       srl  a
9587: CB 4F       bit  1,a
9589: 28 04       jr   z,$958F
958B: E6 01       and  $01
958D: CB 27       sla  a
958F: 47          ld   b,a
9590: FD 7E 04    ld   a,(iy+$04)
9593: FE 01       cp   $01
9595: 20 09       jr   nz,$95A0
9597: 7B          ld   a,e
9598: B7          or   a
9599: 20 0B       jr   nz,$95A6
959B: 06 00       ld   b,$00
959D: C3 A6 95    jp   $95A6
95A0: 7A          ld   a,d
95A1: B7          or   a
95A2: 20 02       jr   nz,$95A6
95A4: 06 00       ld   b,$00
95A6: 78          ld   a,b
95A7: 81          add  a,c
95A8: FD 4E 05    ld   c,(iy+$05)
95AB: FD 77 05    ld   (iy+$05),a
95AE: 91          sub  c
95AF: B2          or   d
95B0: B3          or   e
95B1: C8          ret  z
95B2: CD 0E 90    call $900E
95B5: C9          ret
95B6: C3 DA 95    jp   $95DA
95B9: C3 30 96    jp   $9630
95BC: C3 50 96    jp   $9650
95BF: C3 56 96    jp   $9656
95C2: C3 6F 96    jp   $966F
95C5: C3 BB 96    jp   $96BB
95C8: C3 46 99    jp   $9946
95CB: C3 90 99    jp   $9990
95CE: C3 13 9A    jp   $9A13
95D1: C3 5C 9A    jp   $9A5C
95D4: C3 79 9A    jp   $9A79
95D7: C3 85 9A    jp   $9A85
95DA: 3A 5D 7B    ld   a,($7B5D)
95DD: 4F          ld   c,a
95DE: E6 07       and  $07
95E0: 32 01 7B    ld   ($7B01),a
95E3: 79          ld   a,c
95E4: CB 3F       srl  a
95E6: CB 3F       srl  a
95E8: CB 3F       srl  a
95EA: 47          ld   b,a
95EB: 32 02 7B    ld   ($7B02),a
95EE: 0E 00       ld   c,$00
95F0: B7          or   a
95F1: 28 01       jr   z,$95F4
95F3: 0C          inc  c
95F4: 79          ld   a,c
95F5: 32 52 7B    ld   ($7B52),a
95F8: 0E 08       ld   c,$08
95FA: 78          ld   a,b
95FB: FE 04       cp   $04
95FD: 38 02       jr   c,$9601
95FF: 0E 05       ld   c,$05
9601: 79          ld   a,c
9602: 32 0D 7B    ld   ($7B0D),a
9605: 3E 00       ld   a,$00
9607: 32 9C 7B    ld   ($7B9C),a
960A: 32 9B 7B    ld   ($7B9B),a
960D: 32 9D 7B    ld   ($7B9D),a
9610: 32 9E 7B    ld   ($7B9E),a
9613: 3E 76       ld   a,$76
9615: 32 A0 7B    ld   ($7BA0),a
9618: 32 A1 7B    ld   ($7BA1),a
961B: 32 A2 7B    ld   ($7BA2),a
961E: 32 A3 7B    ld   ($7BA3),a
9621: 3A 00 7B    ld   a,($7B00)
9624: 47          ld   b,a
9625: 04          inc  b
9626: 3E 13       ld   a,$13
9628: C6 22       add  a,$22
962A: 10 FC       djnz $9628
962C: 32 9F 7B    ld   ($7B9F),a
962F: C9          ret
9630: 21 66 7B    ld   hl,$7B66
9633: 11 67 7B    ld   de,$7B67
9636: 01 2F 00    ld   bc,$002F
9639: AF          xor  a
963A: 77          ld   (hl),a
963B: ED B0       ldir
963D: 3E 0C       ld   a,$0C
963F: 32 69 7B    ld   ($7B69),a
9642: 3A 5D 7B    ld   a,($7B5D)
9645: 3C          inc  a
9646: FE 0A       cp   $0A
9648: 38 02       jr   c,$964C
964A: 3E 09       ld   a,$09
964C: 32 66 7B    ld   ($7B66),a
964F: C9          ret
9650: CD 5D 96    call $965D
9653: ED B0       ldir
9655: C9          ret
9656: CD 5D 96    call $965D
9659: EB          ex   de,hl
965A: ED B0       ldir
965C: C9          ret
965D: 21 00 7A    ld   hl,$7A00
9660: 87          add  a,a
9661: 87          add  a,a
9662: 87          add  a,a
9663: 87          add  a,a
9664: 87          add  a,a
9665: 87          add  a,a
9666: 85          add  a,l
9667: 6F          ld   l,a
9668: 11 5C 7B    ld   de,$7B5C
966B: 01 3A 00    ld   bc,$003A
966E: C9          ret
966F: 3A 05 7B    ld   a,($7B05)
9672: B7          or   a
9673: 28 45       jr   z,$96BA
9675: 21 09 7B    ld   hl,$7B09
9678: 3A 0B 7B    ld   a,($7B0B)
967B: B7          or   a
967C: 28 01       jr   z,$967F
967E: 23          inc  hl
967F: 7E          ld   a,(hl)
9680: FE AE       cp   $AE
9682: 30 12       jr   nc,$9696
9684: C6 02       add  a,$02
9686: 77          ld   (hl),a
9687: 5F          ld   e,a
9688: 3A 08 7B    ld   a,($7B08)
968B: 57          ld   d,a
968C: 3E 36       ld   a,$36
968E: 06 03       ld   b,$03
9690: CD DA 8B    call $8BDA
9693: C3 B2 96    jp   $96B2
9696: 5F          ld   e,a
9697: 3E 04       ld   a,$04
9699: 77          ld   (hl),a
969A: 3A 08 7B    ld   a,($7B08)
969D: 57          ld   d,a
969E: 3E 04       ld   a,$04
96A0: 06 03       ld   b,$03
96A2: CD DA 8B    call $8BDA
96A5: 3A 08 7B    ld   a,($7B08)
96A8: 57          ld   d,a
96A9: 1E 04       ld   e,$04
96AB: 3E 04       ld   a,$04
96AD: 06 03       ld   b,$03
96AF: CD DA 8B    call $8BDA
96B2: 3A 0B 7B    ld   a,($7B0B)
96B5: EE FF       xor  $FF
96B7: 32 0B 7B    ld   ($7B0B),a
96BA: C9          ret
96BB: 3A 9B 7B    ld   a,($7B9B)
96BE: 3C          inc  a
96BF: E6 07       and  $07
96C1: 32 9B 7B    ld   ($7B9B),a
96C4: CA 5A 98    jp   z,$985A
96C7: FE 04       cp   $04
96C9: CA F3 98    jp   z,$98F3
96CC: 3A 07 7B    ld   a,($7B07)
96CF: 47          ld   b,a
96D0: 3A 9C 7B    ld   a,($7B9C)
96D3: 3D          dec  a
96D4: F2 DA 96    jp   p,$96DA
96D7: 3A 0D 7B    ld   a,($7B0D)
96DA: 32 9C 7B    ld   ($7B9C),a
96DD: B8          cp   b
96DE: 38 01       jr   c,$96E1
96E0: C9          ret
96E1: CD E3 8B    call $8BE3
96E4: FD 56 02    ld   d,(iy+$02)
96E7: FD 5E 03    ld   e,(iy+$03)
96EA: FD 66 04    ld   h,(iy+$04)
96ED: FD 6E 06    ld   l,(iy+$06)
96F0: 7C          ld   a,h
96F1: FE 01       cp   $01
96F3: CA AE 97    jp   z,$97AE
96F6: D2 84 97    jp   nc,$9784
96F9: D5          push de
96FA: 15          dec  d
96FB: 1D          dec  e
96FC: CD FE 8B    call $8BFE
96FF: D1          pop  de
9700: E6 01       and  $01
9702: 4F          ld   c,a
9703: D5          push de
9704: 14          inc  d
9705: 1D          dec  e
9706: CD FE 8B    call $8BFE
9709: D1          pop  de
970A: E6 01       and  $01
970C: 28 04       jr   z,$9712
970E: 79          ld   a,c
970F: F6 02       or   $02
9711: 4F          ld   c,a
9712: D5          push de
9713: 1D          dec  e
9714: CD FE 8B    call $8BFE
9717: D1          pop  de
9718: E6 02       and  $02
971A: 28 04       jr   z,$9720
971C: 79          ld   a,c
971D: F6 08       or   $08
971F: 4F          ld   c,a
9720: D5          push de
9721: 1C          inc  e
9722: 1C          inc  e
9723: CD FE 8B    call $8BFE
9726: D1          pop  de
9727: E6 02       and  $02
9729: 28 04       jr   z,$972F
972B: 79          ld   a,c
972C: F6 04       or   $04
972E: 4F          ld   c,a
972F: CD 4C 98    call $984C
9732: FE 01       cp   $01
9734: 20 04       jr   nz,$973A
9736: 69          ld   l,c
9737: C3 60 97    jp   $9760
973A: 7D          ld   a,l
973B: FE 04       cp   $04
973D: 30 04       jr   nc,$9743
973F: EE FC       xor  $FC
9741: 18 02       jr   $9745
9743: EE F3       xor  $F3
9745: A1          and  c
9746: 4F          ld   c,a
9747: CD 4C 98    call $984C
974A: FE 01       cp   $01
974C: 20 04       jr   nz,$9752
974E: 69          ld   l,c
974F: C3 60 97    jp   $9760
9752: 41          ld   b,c
9753: CD 5C 9A    call $9A5C
9756: A0          and  b
9757: 4F          ld   c,a
9758: CD 4C 98    call $984C
975B: FE 01       cp   $01
975D: 20 F4       jr   nz,$9753
975F: 69          ld   l,c
9760: 7D          ld   a,l
9761: E6 03       and  $03
9763: 28 49       jr   z,$97AE
9765: E6 01       and  $01
9767: 28 09       jr   z,$9772
9769: D5          push de
976A: 15          dec  d
976B: CD FE 8B    call $8BFE
976E: D1          pop  de
976F: C3 78 97    jp   $9778
9772: D5          push de
9773: 14          inc  d
9774: CD FE 8B    call $8BFE
9777: D1          pop  de
9778: E6 08       and  $08
977A: 28 32       jr   z,$97AE
977C: 26 02       ld   h,$02
977E: FD 74 04    ld   (iy+$04),h
9781: C3 AE 97    jp   $97AE
9784: FE 04       cp   $04
9786: 20 26       jr   nz,$97AE
9788: 7D          ld   a,l
9789: D5          push de
978A: 15          dec  d
978B: E6 01       and  $01
978D: 20 02       jr   nz,$9791
978F: 14          inc  d
9790: 14          inc  d
9791: CD FE 8B    call $8BFE
9794: 4F          ld   c,a
9795: E6 08       and  $08
9797: 28 14       jr   z,$97AD
9799: E5          push hl
979A: 21 76 7B    ld   hl,$7B76
979D: 79          ld   a,c
979E: CB 3F       srl  a
97A0: CB 3F       srl  a
97A2: CB 3F       srl  a
97A4: CB 3F       srl  a
97A6: 85          add  a,l
97A7: 6F          ld   l,a
97A8: 35          dec  (hl)
97A9: E1          pop  hl
97AA: CD 07 9A    call $9A07
97AD: D1          pop  de
97AE: D5          push de
97AF: E5          push hl
97B0: CD E0 8B    call $8BE0
97B3: E1          pop  hl
97B4: D1          pop  de
97B5: 7C          ld   a,h
97B6: FE 02       cp   $02
97B8: 30 69       jr   nc,$9823
97BA: 7D          ld   a,l
97BB: CB 3F       srl  a
97BD: 38 2C       jr   c,$97EB
97BF: CB 3F       srl  a
97C1: 38 3A       jr   c,$97FD
97C3: CB 3F       srl  a
97C5: 38 12       jr   c,$97D9
97C7: FD 7E 01    ld   a,(iy+$01)
97CA: D6 04       sub  $04
97CC: FD 77 01    ld   (iy+$01),a
97CF: 7C          ld   a,h
97D0: B7          or   a
97D1: 28 01       jr   z,$97D4
97D3: 1D          dec  e
97D4: 0E 04       ld   c,$04
97D6: C3 0C 98    jp   $980C
97D9: FD 7E 01    ld   a,(iy+$01)
97DC: C6 04       add  a,$04
97DE: FD 77 01    ld   (iy+$01),a
97E1: 7C          ld   a,h
97E2: B7          or   a
97E3: 28 01       jr   z,$97E6
97E5: 1C          inc  e
97E6: 0E 04       ld   c,$04
97E8: C3 0C 98    jp   $980C
97EB: FD 7E 00    ld   a,(iy+$00)
97EE: D6 04       sub  $04
97F0: FD 77 00    ld   (iy+$00),a
97F3: 7C          ld   a,h
97F4: B7          or   a
97F5: 28 01       jr   z,$97F8
97F7: 15          dec  d
97F8: 0E 02       ld   c,$02
97FA: C3 0C 98    jp   $980C
97FD: FD 7E 00    ld   a,(iy+$00)
9800: C6 04       add  a,$04
9802: FD 77 00    ld   (iy+$00),a
9805: 7C          ld   a,h
9806: B7          or   a
9807: 28 01       jr   z,$980A
9809: 14          inc  d
980A: 0E 00       ld   c,$00
980C: 7C          ld   a,h
980D: EE 01       xor  $01
980F: FD 77 04    ld   (iy+$04),a
9812: 81          add  a,c
9813: FD 77 05    ld   (iy+$05),a
9816: FD 72 02    ld   (iy+$02),d
9819: FD 73 03    ld   (iy+$03),e
981C: FD 75 06    ld   (iy+$06),l
981F: CD E0 8B    call $8BE0
9822: C9          ret
9823: 7C          ld   a,h
9824: CB 27       sla  a
9826: E6 1F       and  $1F
9828: 67          ld   h,a
9829: 28 02       jr   z,$982D
982B: 3E 06       ld   a,$06
982D: 4F          ld   c,a
982E: 7D          ld   a,l
982F: FE 01       cp   $01
9831: 79          ld   a,c
9832: 20 02       jr   nz,$9836
9834: C6 02       add  a,$02
9836: 4F          ld   c,a
9837: 7C          ld   a,h
9838: FE 08       cp   $08
983A: 79          ld   a,c
983B: 20 02       jr   nz,$983F
983D: C6 01       add  a,$01
983F: FD 77 05    ld   (iy+$05),a
9842: FD 74 04    ld   (iy+$04),h
9845: FD 75 06    ld   (iy+$06),l
9848: CD E0 8B    call $8BE0
984B: C9          ret
984C: C5          push bc
984D: 3E 00       ld   a,$00
984F: 06 04       ld   b,$04
9851: CB 39       srl  c
9853: 30 01       jr   nc,$9856
9855: 3C          inc  a
9856: 10 F9       djnz $9851
9858: C1          pop  bc
9859: C9          ret
985A: FD 21 4E 7B ld   iy,$7B4E
985E: FD 7E 05    ld   a,(iy+$05)
9861: E6 02       and  $02
9863: 4F          ld   c,a
9864: FD 66 00    ld   h,(iy+$00)
9867: FD 6E 01    ld   l,(iy+$01)
986A: FD 56 02    ld   d,(iy+$02)
986D: FD 5E 03    ld   e,(iy+$03)
9870: FD 7E 04    ld   a,(iy+$04)
9873: B7          or   a
9874: CA C9 98    jp   z,$98C9
9877: DD 21 36 7B ld   ix,$7B36
987B: 7C          ld   a,h
987C: C6 04       add  a,$04
987E: DD BE 00    cp   (ix+$00)
9881: 30 0D       jr   nc,$9890
9883: 14          inc  d
9884: 7A          ld   a,d
9885: FE 06       cp   $06
9887: FA 8B 98    jp   m,$988B
988A: 15          dec  d
988B: 0E 00       ld   c,$00
988D: C3 9A 98    jp   $989A
9890: 15          dec  d
9891: 7A          ld   a,d
9892: FE FB       cp   $FB
9894: F2 98 98    jp   p,$9898
9897: 14          inc  d
9898: 0E 02       ld   c,$02
989A: DD 7E 01    ld   a,(ix+$01)
989D: C6 04       add  a,$04
989F: BD          cp   l
98A0: 38 0B       jr   c,$98AD
98A2: 1C          inc  e
98A3: 7B          ld   a,e
98A4: FE 07       cp   $07
98A6: FA B5 98    jp   m,$98B5
98A9: 1D          dec  e
98AA: C3 B5 98    jp   $98B5
98AD: 1D          dec  e
98AE: 7B          ld   a,e
98AF: FE FA       cp   $FA
98B1: F2 B5 98    jp   p,$98B5
98B4: 1C          inc  e
98B5: 7D          ld   a,l
98B6: 83          add  a,e
98B7: FE 20       cp   $20
98B9: 30 04       jr   nc,$98BF
98BB: 7B          ld   a,e
98BC: ED 44       neg
98BE: 5F          ld   e,a
98BF: 7C          ld   a,h
98C0: 82          add  a,d
98C1: FE 90       cp   $90
98C3: 38 04       jr   c,$98C9
98C5: 7A          ld   a,d
98C6: ED 44       neg
98C8: 57          ld   d,a
98C9: C5          push bc
98CA: D5          push de
98CB: E5          push hl
98CC: CD E6 8B    call $8BE6
98CF: E1          pop  hl
98D0: D1          pop  de
98D1: C1          pop  bc
98D2: 7C          ld   a,h
98D3: 82          add  a,d
98D4: 67          ld   h,a
98D5: 7D          ld   a,l
98D6: 83          add  a,e
98D7: 6F          ld   l,a
98D8: FD 74 00    ld   (iy+$00),h
98DB: FD 75 01    ld   (iy+$01),l
98DE: FD 72 02    ld   (iy+$02),d
98E1: FD 73 03    ld   (iy+$03),e
98E4: FD 7E 05    ld   a,(iy+$05)
98E7: E6 01       and  $01
98E9: EE 01       xor  $01
98EB: B1          or   c
98EC: FD 77 05    ld   (iy+$05),a
98EF: CD E6 8B    call $8BE6
98F2: C9          ret
98F3: 3A 9E 7B    ld   a,($7B9E)
98F6: B7          or   a
98F7: 28 05       jr   z,$98FE
98F9: 3D          dec  a
98FA: 32 9E 7B    ld   ($7B9E),a
98FD: C9          ret
98FE: 21 98 7B    ld   hl,$7B98
9901: 16 9B       ld   d,$9B
9903: CD 83 99    call $9983
9906: 35          dec  (hl)
9907: F5          push af
9908: F2 0D 99    jp   p,$990D
990B: 36 09       ld   (hl),$09
990D: 16 9B       ld   d,$9B
990F: CD 83 99    call $9983
9912: F1          pop  af
9913: F2 3D 99    jp   p,$993D
9916: 2B          dec  hl
9917: 16 96       ld   d,$96
9919: CD 83 99    call $9983
991C: 35          dec  (hl)
991D: F5          push af
991E: F2 23 99    jp   p,$9923
9921: 36 09       ld   (hl),$09
9923: 16 96       ld   d,$96
9925: CD 83 99    call $9983
9928: F1          pop  af
9929: F2 3D 99    jp   p,$993D
992C: 2B          dec  hl
992D: 16 91       ld   d,$91
992F: CD 83 99    call $9983
9932: 35          dec  (hl)
9933: F2 38 99    jp   p,$9938
9936: 36 09       ld   (hl),$09
9938: 16 91       ld   d,$91
993A: CD 83 99    call $9983
993D: 3A 98 7B    ld   a,($7B98)
9940: B7          or   a
9941: 28 03       jr   z,$9946
9943: FE 05       cp   $05
9945: C0          ret  nz
9946: 21 66 7B    ld   hl,$7B66
9949: 7E          ld   a,(hl)
994A: 23          inc  hl
994B: B6          or   (hl)
994C: 23          inc  hl
994D: B6          or   (hl)
994E: C8          ret  z
994F: 16 70       ld   d,$70
9951: CD 83 99    call $9983
9954: 35          dec  (hl)
9955: F5          push af
9956: F2 5B 99    jp   p,$995B
9959: 36 09       ld   (hl),$09
995B: 16 70       ld   d,$70
995D: CD 83 99    call $9983
9960: F1          pop  af
9961: F0          ret  p
9962: 2B          dec  hl
9963: 16 6B       ld   d,$6B
9965: CD 83 99    call $9983
9968: 35          dec  (hl)
9969: F5          push af
996A: F2 6F 99    jp   p,$996F
996D: 36 09       ld   (hl),$09
996F: 16 6B       ld   d,$6B
9971: CD 83 99    call $9983
9974: F1          pop  af
9975: F0          ret  p
9976: 2B          dec  hl
9977: 16 66       ld   d,$66
9979: CD 83 99    call $9983
997C: 35          dec  (hl)
997D: 16 66       ld   d,$66
997F: CD 83 99    call $9983
9982: C9          ret
9983: E5          push hl
9984: 1E B7       ld   e,$B7
9986: 7E          ld   a,(hl)
9987: C6 1E       add  a,$1E
9989: 06 02       ld   b,$02
998B: CD DA 8B    call $8BDA
998E: E1          pop  hl
998F: C9          ret
9990: FD 21 36 7B ld   iy,$7B36
9994: FD 56 02    ld   d,(iy+$02)
9997: FD 5E 03    ld   e,(iy+$03)
999A: FD 7E 09    ld   a,(iy+$09)
999D: FE 04       cp   $04
999F: 38 01       jr   c,$99A2
99A1: 1C          inc  e
99A2: CD FE 8B    call $8BFE
99A5: 4F          ld   c,a
99A6: E6 0C       and  $0C
99A8: C8          ret  z
99A9: E6 08       and  $08
99AB: 20 2E       jr   nz,$99DB
99AD: 21 69 7B    ld   hl,$7B69
99B0: 35          dec  (hl)
99B1: 21 6A 7B    ld   hl,$7B6A
99B4: 79          ld   a,c
99B5: CB 3F       srl  a
99B7: CB 3F       srl  a
99B9: CB 3F       srl  a
99BB: CB 3F       srl  a
99BD: 85          add  a,l
99BE: 6F          ld   l,a
99BF: 35          dec  (hl)
99C0: CD FB 99    call $99FB
99C3: 3A 5D 7B    ld   a,($7B5D)
99C6: CB 3F       srl  a
99C8: CB 3F       srl  a
99CA: C6 01       add  a,$01
99CC: FE 0A       cp   $0A
99CE: 38 02       jr   c,$99D2
99D0: 3E 0A       ld   a,$0A
99D2: 0E 02       ld   c,$02
99D4: CD 13 9A    call $9A13
99D7: 3E 01       ld   a,$01
99D9: B7          or   a
99DA: C9          ret
99DB: 21 76 7B    ld   hl,$7B76
99DE: 79          ld   a,c
99DF: CB 3F       srl  a
99E1: CB 3F       srl  a
99E3: CB 3F       srl  a
99E5: CB 3F       srl  a
99E7: 85          add  a,l
99E8: 6F          ld   l,a
99E9: 35          dec  (hl)
99EA: CD 07 9A    call $9A07
99ED: 3E 05       ld   a,$05
99EF: 0E 01       ld   c,$01
99F1: CD 13 9A    call $9A13
99F4: 3E 14       ld   a,$14
99F6: 32 9E 7B    ld   ($7B9E),a
99F9: B7          or   a
99FA: C9          ret
99FB: AF          xor  a
99FC: CD 01 8C    call $8C01
99FF: 0E 02       ld   c,$02
9A01: 06 03       ld   b,$03
9A03: CD DD 8B    call $8BDD
9A06: C9          ret
9A07: AF          xor  a
9A08: CD 01 8C    call $8C01
9A0B: 0E 03       ld   c,$03
9A0D: 06 05       ld   b,$05
9A0F: CD DD 8B    call $8BDD
9A12: C9          ret
9A13: 21 65 7B    ld   hl,$7B65
9A16: 41          ld   b,c
9A17: 2B          dec  hl
9A18: 10 FD       djnz $9A17
9A1A: CD 3D 9A    call $9A3D
9A1D: 86          add  a,(hl)
9A1E: FE 0A       cp   $0A
9A20: F5          push af
9A21: 38 02       jr   c,$9A25
9A23: D6 0A       sub  $0A
9A25: 77          ld   (hl),a
9A26: CD 3D 9A    call $9A3D
9A29: 79          ld   a,c
9A2A: FE 04       cp   $04
9A2C: 20 07       jr   nz,$9A35
9A2E: 3A 9D 7B    ld   a,($7B9D)
9A31: 3C          inc  a
9A32: 32 9D 7B    ld   ($7B9D),a
9A35: F1          pop  af
9A36: D8          ret  c
9A37: 0C          inc  c
9A38: 3E 01       ld   a,$01
9A3A: C3 13 9A    jp   $9A13
9A3D: F5          push af
9A3E: 79          ld   a,c
9A3F: FE 06       cp   $06
9A41: 30 17       jr   nc,$9A5A
9A43: C5          push bc
9A44: E5          push hl
9A45: 3A 9F 7B    ld   a,($7B9F)
9A48: 41          ld   b,c
9A49: D6 05       sub  $05
9A4B: 10 FC       djnz $9A49
9A4D: 57          ld   d,a
9A4E: 1E C6       ld   e,$C6
9A50: 7E          ld   a,(hl)
9A51: C6 1E       add  a,$1E
9A53: 06 06       ld   b,$06
9A55: CD DA 8B    call $8BDA
9A58: E1          pop  hl
9A59: C1          pop  bc
9A5A: F1          pop  af
9A5B: C9          ret
9A5C: E5          push hl
9A5D: 21 A3 7B    ld   hl,$7BA3
9A60: 3A A0 7B    ld   a,($7BA0)
9A63: E6 48       and  $48
9A65: C6 38       add  a,$38
9A67: CB 27       sla  a
9A69: CB 27       sla  a
9A6B: CB 16       rl   (hl)
9A6D: 2B          dec  hl
9A6E: CB 16       rl   (hl)
9A70: 2B          dec  hl
9A71: CB 16       rl   (hl)
9A73: 2B          dec  hl
9A74: CB 16       rl   (hl)
9A76: 7E          ld   a,(hl)
9A77: E1          pop  hl
9A78: C9          ret
9A79: E1          pop  hl
9A7A: 7E          ld   a,(hl)
9A7B: 23          inc  hl
9A7C: E5          push hl
9A7D: FE FF       cp   $FF
9A7F: C8          ret  z
9A80: CD 5A BB    call $BB5A
9A83: 18 F4       jr   $9A79
9A85: CD 0D BD    call $BD0D
9A88: 7D          ld   a,l
9A89: FE 09       cp   $09
9A8B: 38 F8       jr   c,$9A85
9A8D: 21 00 00    ld   hl,$0000
9A90: 11 00 00    ld   de,$0000
9A93: CD 10 BD    call $BD10
9A96: C9          ret
9A97: CD 60 9C    call $9C60
9A9A: CD 22 9D    call $9D22
9A9D: CD B5 9C    call $9CB5
9AA0: CD 4E BB    call $BB4E
9AA3: CD 6C BB    call $BB6C
9AA6: CD D4 95    call $95D4
9AA9: 1A          ld   a,(de)
9AAA: 04          inc  b
9AAB: 0F          rrca
9AAC: 09          add  hl,bc
9AAD: 0D          dec  c
9AAE: 0F          rrca
9AAF: 08          ex   af,af'
9AB0: 0A          ld   a,(bc)
9AB1: 09          add  hl,bc
9AB2: 47          ld   b,a
9AB3: 65          ld   h,l
9AB4: 74          ld   (hl),h
9AB5: 20 20       jr   nz,$9AD7
9AB7: 72          ld   (hl),d
9AB8: 65          ld   h,l
9AB9: 61          ld   h,c
9ABA: 64          ld   h,h
9ABB: 79          ld   a,c
9ABC: 0F          rrca
9ABD: 04          inc  b
9ABE: 0D          dec  c
9ABF: 0A          ld   a,(bc)
9AC0: 0A          ld   a,(bc)
9AC1: 09          add  hl,bc
9AC2: 20 50       jr   nz,$9B14
9AC4: 6C          ld   l,h
9AC5: 61          ld   h,c
9AC6: 79          ld   a,c
9AC7: 65          ld   h,l
9AC8: 72          ld   (hl),d
9AC9: 20 FF       jr   nz,$9ACA
9ACB: 3A 00 7B    ld   a,($7B00)
9ACE: C6 31       add  a,$31
9AD0: CD 5A BB    call $BB5A
9AD3: 06 96       ld   b,$96
9AD5: CD 1C 9D    call $9D1C
9AD8: CD B6 95    call $95B6
9ADB: CD EF 8B    call $8BEF
9ADE: CD F2 8B    call $8BF2
9AE1: CD EC 8B    call $8BEC
9AE4: CD E9 8B    call $8BE9
9AE7: CD 2E A2    call $A22E
9AEA: CD CB 95    call $95CB
9AED: C4 AD A2    call nz,$A2AD
9AF0: CD 4B 9C    call $9C4B
9AF3: 3A 69 7B    ld   a,($7B69)
9AF6: B7          or   a
9AF7: CA 1A 9B    jp   z,$9B1A
9AFA: CD C2 95    call $95C2
9AFD: CD C5 95    call $95C5
9B00: 3A A7 7B    ld   a,($7BA7)
9B03: 47          ld   b,a
9B04: 3A 56 7B    ld   a,($7B56)
9B07: B0          or   b
9B08: FA 9A 9A    jp   m,$9A9A
9B0B: FE 7F       cp   $7F
9B0D: 28 33       jr   z,$9B42
9B0F: CD C6 9B    call $9BC6
9B12: 38 41       jr   c,$9B55
9B14: CD D7 95    call $95D7
9B17: C3 E1 9A    jp   $9AE1
9B1A: 21 66 7B    ld   hl,$7B66
9B1D: 7E          ld   a,(hl)
9B1E: 23          inc  hl
9B1F: B6          or   (hl)
9B20: 23          inc  hl
9B21: B6          or   (hl)
9B22: 28 1E       jr   z,$9B42
9B24: 7E          ld   a,(hl)
9B25: B7          or   a
9B26: 28 04       jr   z,$9B2C
9B28: FE 05       cp   $05
9B2A: 20 06       jr   nz,$9B32
9B2C: 11 64 00    ld   de,$0064
9B2F: CD 99 A2    call $A299
9B32: 3E 01       ld   a,$01
9B34: 0E 01       ld   c,$01
9B36: CD CE 95    call $95CE
9B39: CD C8 95    call $95C8
9B3C: CD 4B 9C    call $9C4B
9B3F: C3 1A 9B    jp   $9B1A
9B42: 3A 5D 7B    ld   a,($7B5D)
9B45: 3C          inc  a
9B46: 32 5D 7B    ld   ($7B5D),a
9B49: CD B9 95    call $95B9
9B4C: 3A 00 7B    ld   a,($7B00)
9B4F: CD BF 95    call $95BF
9B52: C3 D8 9A    jp   $9AD8
9B55: CD C4 A2    call $A2C4
9B58: 3A 5C 7B    ld   a,($7B5C)
9B5B: 3D          dec  a
9B5C: 32 5C 7B    ld   ($7B5C),a
9B5F: F5          push af
9B60: 3A 00 7B    ld   a,($7B00)
9B63: CD BF 95    call $95BF
9B66: F1          pop  af
9B67: B7          or   a
9B68: 20 40       jr   nz,$9BAA
9B6A: CD D4 95    call $95D4
9B6D: 1A          ld   a,(de)
9B6E: 04          inc  b
9B6F: 0F          rrca
9B70: 09          add  hl,bc
9B71: 0D          dec  c
9B72: 0E 05       ld   c,$05
9B74: 0F          rrca
9B75: 03          inc  bc
9B76: 0C          inc  c
9B77: 0A          ld   a,(bc)
9B78: 09          add  hl,bc
9B79: 47          ld   b,a
9B7A: 41          ld   b,c
9B7B: 4D          ld   c,l
9B7C: 45          ld   b,l
9B7D: 20 20       jr   nz,$9B9F
9B7F: 4F          ld   c,a
9B80: 56          ld   d,(hl)
9B81: 45          ld   b,l
9B82: 52          ld   d,d
9B83: 0D          dec  c
9B84: 0A          ld   a,(bc)
9B85: 0A          ld   a,(bc)
9B86: 09          add  hl,bc
9B87: 20 50       jr   nz,$9BD9
9B89: 6C          ld   l,h
9B8A: 61          ld   h,c
9B8B: 79          ld   a,c
9B8C: 65          ld   h,l
9B8D: 72          ld   (hl),d
9B8E: 20 FF       jr   nz,$9B8F
9B90: 3A 00 7B    ld   a,($7B00)
9B93: C6 31       add  a,$31
9B95: CD 5A BB    call $BB5A
9B98: 06 C8       ld   b,$C8
9B9A: CD 1C 9D    call $9D1C
9B9D: CD F0 A0    call $A0F0
9BA0: 3A 9A 7B    ld   a,($7B9A)
9BA3: 3D          dec  a
9BA4: 32 9A 7B    ld   ($7B9A),a
9BA7: CA 9A 9A    jp   z,$9A9A
9BAA: 3A 99 7B    ld   a,($7B99)
9BAD: 47          ld   b,a
9BAE: 3A 00 7B    ld   a,($7B00)
9BB1: 3C          inc  a
9BB2: E6 03       and  $03
9BB4: 32 00 7B    ld   ($7B00),a
9BB7: B8          cp   b
9BB8: 30 F0       jr   nc,$9BAA
9BBA: CD BC 95    call $95BC
9BBD: 3A 5C 7B    ld   a,($7B5C)
9BC0: B7          or   a
9BC1: 28 E7       jr   z,$9BAA
9BC3: C3 A0 9A    jp   $9AA0
9BC6: FD 21 36 7B ld   iy,$7B36
9BCA: FD 7E 01    ld   a,(iy+$01)
9BCD: FE 14       cp   $14
9BCF: 38 55       jr   c,$9C26
9BD1: FE B0       cp   $B0
9BD3: 30 51       jr   nc,$9C26
9BD5: 21 96 7B    ld   hl,$7B96
9BD8: 7E          ld   a,(hl)
9BD9: 23          inc  hl
9BDA: B6          or   (hl)
9BDB: 23          inc  hl
9BDC: B6          or   (hl)
9BDD: 28 49       jr   z,$9C28
9BDF: 3A 36 7B    ld   a,($7B36)
9BE2: 57          ld   d,a
9BE3: 3A 37 7B    ld   a,($7B37)
9BE6: 5F          ld   e,a
9BE7: 3A 07 7B    ld   a,($7B07)
9BEA: B7          or   a
9BEB: 28 1C       jr   z,$9C09
9BED: 47          ld   b,a
9BEE: 78          ld   a,b
9BEF: 3D          dec  a
9BF0: CD E3 8B    call $8BE3
9BF3: FD 7E 00    ld   a,(iy+$00)
9BF6: 92          sub  d
9BF7: C6 05       add  a,$05
9BF9: FE 0B       cp   $0B
9BFB: 30 0A       jr   nc,$9C07
9BFD: FD 7E 01    ld   a,(iy+$01)
9C00: 93          sub  e
9C01: C6 0D       add  a,$0D
9C03: FE 1D       cp   $1D
9C05: 38 1F       jr   c,$9C26
9C07: 10 E5       djnz $9BEE
9C09: 3A 52 7B    ld   a,($7B52)
9C0C: B7          or   a
9C0D: 28 14       jr   z,$9C23
9C0F: 3A 4E 7B    ld   a,($7B4E)
9C12: C6 09       add  a,$09
9C14: 92          sub  d
9C15: FE 0B       cp   $0B
9C17: 30 0A       jr   nc,$9C23
9C19: 3A 4F 7B    ld   a,($7B4F)
9C1C: C6 09       add  a,$09
9C1E: 93          sub  e
9C1F: FE 1D       cp   $1D
9C21: 38 03       jr   c,$9C26
9C23: 37          scf
9C24: 3F          ccf
9C25: C9          ret
9C26: 37          scf
9C27: C9          ret
9C28: CD D4 95    call $95D4
9C2B: 1A          ld   a,(de)
9C2C: 06 0D       ld   b,$0D
9C2E: 09          add  hl,bc
9C2F: 0D          dec  c
9C30: 0E 05       ld   c,$05
9C32: 0F          rrca
9C33: 04          inc  b
9C34: 0C          inc  c
9C35: 09          add  hl,bc
9C36: 0A          ld   a,(bc)
9C37: 4F          ld   c,a
9C38: 75          ld   (hl),l
9C39: 74          ld   (hl),h
9C3A: 20 6F       jr   nz,$9CAB
9C3C: 66          ld   h,(hl)
9C3D: 0D          dec  c
9C3E: 0A          ld   a,(bc)
9C3F: 0A          ld   a,(bc)
9C40: 09          add  hl,bc
9C41: 54          ld   d,h
9C42: 69          ld   l,c
9C43: 6D          ld   l,l
9C44: 65          ld   h,l
9C45: 20 21       jr   nz,$9C68
9C47: FF          rst  $38
9C48: C3 26 9C    jp   $9C26
9C4B: 3A 9D 7B    ld   a,($7B9D)
9C4E: B7          or   a
9C4F: C8          ret  z
9C50: AF          xor  a
9C51: 32 9D 7B    ld   ($7B9D),a
9C54: CD 04 8C    call $8C04
9C57: 3A 5C 7B    ld   a,($7B5C)
9C5A: 3C          inc  a
9C5B: C8          ret  z
9C5C: 32 5C 7B    ld   ($7B5C),a
9C5F: C9          ret
9C60: 21 9C 9C    ld   hl,$9C9C
9C63: 11 57 7B    ld   de,$7B57
9C66: 01 05 00    ld   bc,$0005
9C69: ED B0       ldir
9C6B: 3E C9       ld   a,$C9
9C6D: 32 EE BD    ld   ($BDEE),a
9C70: 3E 00       ld   a,$00
9C72: 32 A7 7B    ld   ($7BA7),a
9C75: CD 0E BC    call $BC0E
9C78: 06 00       ld   b,$00
9C7A: 0E 00       ld   c,$00
9C7C: CD 38 BC    call $BC38
9C7F: CD F8 8B    call $8BF8
9C82: 11 00 79    ld   de,$7900
9C85: 06 0A       ld   b,$0A
9C87: C5          push bc
9C88: 21 A1 9C    ld   hl,$9CA1
9C8B: 01 10 00    ld   bc,$0010
9C8E: ED B0       ldir
9C90: C1          pop  bc
9C91: 10 F4       djnz $9C87
9C93: 3E 01       ld   a,$01
9C95: 21 B1 9C    ld   hl,$9CB1
9C98: CD BC BC    call $BCBC
9C9B: C9          ret
9C9C: 1F          rra
9C9D: 27          daa
9C9E: 47          ld   b,a
9C9F: 45          ld   b,l
9CA0: 2F          cpl
9CA1: 00          nop
9CA2: 00          nop
9CA3: 00          nop
9CA4: 00          nop
9CA5: 01 00 00    ld   bc,$0000
9CA8: 00          nop
9CA9: 41          ld   b,c
9CAA: 27          daa
9CAB: 6E          ld   l,(hl)
9CAC: 27          daa
9CAD: 46          ld   b,(hl)
9CAE: 20 20       jr   nz,$9CD0
9CB0: 20 01       jr   nz,$9CB3
9CB2: 0F          rrca
9CB3: FF          rst  $38
9CB4: 05          dec  b
9CB5: CD F5 8B    call $8BF5
9CB8: CD D4 95    call $95D4
9CBB: 1F          rra
9CBC: 01 0A 0F    ld   bc,$0F0A
9CBF: 04          inc  b
9CC0: 48          ld   c,b
9CC1: 6F          ld   l,a
9CC2: 77          ld   (hl),a
9CC3: 20 6D       jr   nz,$9D32
9CC5: 61          ld   h,c
9CC6: 6E          ld   l,(hl)
9CC7: 79          ld   a,c
9CC8: 20 70       jr   nz,$9D3A
9CCA: 6C          ld   l,h
9CCB: 61          ld   h,c
9CCC: 79          ld   a,c
9CCD: 65          ld   h,l
9CCE: 72          ld   (hl),d
9CCF: 73          ld   (hl),e
9CD0: 3F          ccf
9CD1: 20 FF       jr   nz,$9CD2
9CD3: CD 06 BB    call $BB06
9CD6: 4F          ld   c,a
9CD7: D6 31       sub  $31
9CD9: FE 04       cp   $04
9CDB: 30 F6       jr   nc,$9CD3
9CDD: 79          ld   a,c
9CDE: CD 5A BB    call $BB5A
9CE1: D6 30       sub  $30
9CE3: 32 99 7B    ld   ($7B99),a
9CE6: 32 9A 7B    ld   ($7B9A),a
9CE9: 06 32       ld   b,$32
9CEB: CD 1C 9D    call $9D1C
9CEE: 3E 05       ld   a,$05
9CF0: 32 5C 7B    ld   ($7B5C),a
9CF3: AF          xor  a
9CF4: 32 5D 7B    ld   ($7B5D),a
9CF7: 21 5E 7B    ld   hl,$7B5E
9CFA: 06 08       ld   b,$08
9CFC: 77          ld   (hl),a
9CFD: 23          inc  hl
9CFE: 10 FC       djnz $9CFC
9D00: CD B9 95    call $95B9
9D03: 3E 00       ld   a,$00
9D05: CD BF 95    call $95BF
9D08: 3E 01       ld   a,$01
9D0A: CD BF 95    call $95BF
9D0D: 3E 02       ld   a,$02
9D0F: CD BF 95    call $95BF
9D12: 3E 03       ld   a,$03
9D14: CD BF 95    call $95BF
9D17: AF          xor  a
9D18: 32 00 7B    ld   ($7B00),a
9D1B: C9          ret
9D1C: CD 19 BD    call $BD19
9D1F: 10 FB       djnz $9D1C
9D21: C9          ret
9D22: ED 73 A4 7B ld   ($7BA4),sp
9D26: CD 4E BB    call $BB4E
9D29: AF          xor  a
9D2A: 32 A6 7B    ld   ($7BA6),a
9D2D: CD F5 8B    call $8BF5
9D30: CD 7C 9D    call $9D7C
9D33: CD 60 A0    call $A060
9D36: CD CA 9D    call $9DCA
9D39: 06 FA       ld   b,$FA
9D3B: CD 58 9D    call $9D58
9D3E: CD 00 9E    call $9E00
9D41: CD F5 8B    call $8BF5
9D44: CD 7C 9D    call $9D7C
9D47: CD 3F 9E    call $9E3F
9D4A: CD CA 9D    call $9DCA
9D4D: 06 FA       ld   b,$FA
9D4F: CD 58 9D    call $9D58
9D52: CD 00 9E    call $9E00
9D55: C3 2D 9D    jp   $9D2D
9D58: 3E 3C       ld   a,$3C
9D5A: CD 1E BB    call $BB1E
9D5D: C2 77 9D    jp   nz,$9D77
9D60: 3E 25       ld   a,$25
9D62: CD 1E BB    call $BB1E
9D65: 28 0A       jr   z,$9D71
9D67: CD BE 9F    call $9FBE
9D6A: ED 7B A4 7B ld   sp,($7BA4)
9D6E: C3 2D 9D    jp   $9D2D
9D71: CD 19 BD    call $BD19
9D74: 10 E2       djnz $9D58
9D76: C9          ret
9D77: ED 7B A4 7B ld   sp,($7BA4)
9D7B: C9          ret
9D7C: 3E 2F       ld   a,$2F
9D7E: 16 02       ld   d,$02
9D80: CD C3 9D    call $9DC3
9D83: 3E 30       ld   a,$30
9D85: 16 11       ld   d,$11
9D87: CD C3 9D    call $9DC3
9D8A: 3E 31       ld   a,$31
9D8C: 16 20       ld   d,$20
9D8E: CD C3 9D    call $9DC3
9D91: 3E 2F       ld   a,$2F
9D93: 16 2F       ld   d,$2F
9D95: CD C3 9D    call $9DC3
9D98: 3E 32       ld   a,$32
9D9A: 16 3E       ld   d,$3E
9D9C: CD C3 9D    call $9DC3
9D9F: 3E 33       ld   a,$33
9DA1: 16 4D       ld   d,$4D
9DA3: CD C3 9D    call $9DC3
9DA6: 3E 34       ld   a,$34
9DA8: 16 5C       ld   d,$5C
9DAA: CD C3 9D    call $9DC3
9DAD: 3E 34       ld   a,$34
9DAF: 16 72       ld   d,$72
9DB1: CD C3 9D    call $9DC3
9DB4: 3E 35       ld   a,$35
9DB6: 16 81       ld   d,$81
9DB8: CD C3 9D    call $9DC3
9DBB: 3E 35       ld   a,$35
9DBD: 16 90       ld   d,$90
9DBF: CD C3 9D    call $9DC3
9DC2: C9          ret
9DC3: 06 08       ld   b,$08
9DC5: 1E C7       ld   e,$C7
9DC7: C3 DA 8B    jp   $8BDA
9DCA: CD D4 95    call $95D4
9DCD: 1F          rra
9DCE: 03          inc  bc
9DCF: 18 0F       jr   $9DE0
9DD1: 08          ex   af,af'
9DD2: 50          ld   d,b
9DD3: 72          ld   (hl),d
9DD4: 65          ld   h,l
9DD5: 73          ld   (hl),e
9DD6: 73          ld   (hl),e
9DD7: 20 0F       jr   nz,$9DE8
9DD9: 04          inc  b
9DDA: 53          ld   d,e
9DDB: 0F          rrca
9DDC: 08          ex   af,af'
9DDD: 20 74       jr   nz,$9E53
9DDF: 6F          ld   l,a
9DE0: 20 73       jr   nz,$9E55
9DE2: 74          ld   (hl),h
9DE3: 61          ld   h,c
9DE4: 72          ld   (hl),d
9DE5: 74          ld   (hl),h
9DE6: 0F          rrca
9DE7: 04          inc  b
9DE8: 0D          dec  c
9DE9: 0A          ld   a,(bc)
9DEA: 20 20       jr   nz,$9E0C
9DEC: 4B          ld   c,e
9DED: 0F          rrca
9DEE: 08          ex   af,af'
9DEF: 20 74       jr   nz,$9E65
9DF1: 6F          ld   l,a
9DF2: 20 63       jr   nz,$9E57
9DF4: 68          ld   l,b
9DF5: 61          ld   h,c
9DF6: 6E          ld   l,(hl)
9DF7: 67          ld   h,a
9DF8: 65          ld   h,l
9DF9: 20 6B       jr   nz,$9E66
9DFB: 65          ld   h,l
9DFC: 79          ld   a,c
9DFD: 73          ld   (hl),e
9DFE: FF          rst  $38
9DFF: C9          ret
9E00: 3E 04       ld   a,$04
9E02: 32 99 7B    ld   ($7B99),a
9E05: 32 9A 7B    ld   ($7B9A),a
9E08: CD EE 9C    call $9CEE
9E0B: 3A A6 7B    ld   a,($7BA6)
9E0E: 3C          inc  a
9E0F: 32 A6 7B    ld   ($7BA6),a
9E12: 47          ld   b,a
9E13: CD D1 95    call $95D1
9E16: 10 FB       djnz $9E13
9E18: 3A A0 7B    ld   a,($7BA0)
9E1B: E6 1F       and  $1F
9E1D: 32 5D 7B    ld   ($7B5D),a
9E20: CD B6 95    call $95B6
9E23: CD EF 8B    call $8BEF
9E26: CD F2 8B    call $8BF2
9E29: AF          xor  a
9E2A: 32 56 7B    ld   ($7B56),a
9E2D: 06 AF       ld   b,$AF
9E2F: C5          push bc
9E30: CD C2 95    call $95C2
9E33: CD C5 95    call $95C5
9E36: 06 01       ld   b,$01
9E38: CD 58 9D    call $9D58
9E3B: C1          pop  bc
9E3C: 10 F1       djnz $9E2F
9E3E: C9          ret
9E3F: CD D4 95    call $95D4
9E42: 1F          rra
9E43: 07          rlca
9E44: 07          rlca
9E45: 0F          rrca
9E46: 04          inc  b
9E47: 4B          ld   c,e
9E48: 20 45       jr   nz,$9E8F
9E4A: 20 59       jr   nz,$9EA5
9E4C: 20 53       jr   nz,$9EA1
9E4E: 0D          dec  c
9E4F: 0A          ld   a,(bc)
9E50: FF          rst  $38
9E51: CD 82 9E    call $9E82
9E54: 3A 5A 7B    ld   a,($7B5A)
9E57: CD 04 9F    call $9F04
9E5A: CD 93 9E    call $9E93
9E5D: 3A 59 7B    ld   a,($7B59)
9E60: CD 04 9F    call $9F04
9E63: CD A4 9E    call $9EA4
9E66: 3A 58 7B    ld   a,($7B58)
9E69: CD 04 9F    call $9F04
9E6C: CD B5 9E    call $9EB5
9E6F: 3A 57 7B    ld   a,($7B57)
9E72: CD 04 9F    call $9F04
9E75: CD C6 9E    call $9EC6
9E78: 3A 5B 7B    ld   a,($7B5B)
9E7B: CD 04 9F    call $9F04
9E7E: CD D7 9E    call $9ED7
9E81: C9          ret
9E82: CD D4 95    call $95D4
9E85: 0D          dec  c
9E86: 0A          ld   a,(bc)
9E87: 0A          ld   a,(bc)
9E88: 20 20       jr   nz,$9EAA
9E8A: 20 55       jr   nz,$9EE1
9E8C: 70          ld   (hl),b
9E8D: 20 2E       jr   nz,$9EBD
9E8F: 2E 20       ld   l,$20
9E91: FF          rst  $38
9E92: C9          ret
9E93: CD D4 95    call $95D4
9E96: 0D          dec  c
9E97: 0A          ld   a,(bc)
9E98: 0A          ld   a,(bc)
9E99: 20 44       jr   nz,$9EDF
9E9B: 6F          ld   l,a
9E9C: 77          ld   (hl),a
9E9D: 6E          ld   l,(hl)
9E9E: 20 2E       jr   nz,$9ECE
9EA0: 2E 20       ld   l,$20
9EA2: FF          rst  $38
9EA3: C9          ret
9EA4: CD D4 95    call $95D4
9EA7: 0D          dec  c
9EA8: 0A          ld   a,(bc)
9EA9: 0A          ld   a,(bc)
9EAA: 20 4C       jr   nz,$9EF8
9EAC: 65          ld   h,l
9EAD: 66          ld   h,(hl)
9EAE: 74          ld   (hl),h
9EAF: 20 2E       jr   nz,$9EDF
9EB1: 2E 20       ld   l,$20
9EB3: FF          rst  $38
9EB4: C9          ret
9EB5: CD D4 95    call $95D4
9EB8: 0D          dec  c
9EB9: 0A          ld   a,(bc)
9EBA: 0A          ld   a,(bc)
9EBB: 52          ld   d,d
9EBC: 69          ld   l,c
9EBD: 67          ld   h,a
9EBE: 68          ld   l,b
9EBF: 74          ld   (hl),h
9EC0: 20 2E       jr   nz,$9EF0
9EC2: 2E 20       ld   l,$20
9EC4: FF          rst  $38
9EC5: C9          ret
9EC6: CD D4 95    call $95D4
9EC9: 0D          dec  c
9ECA: 0A          ld   a,(bc)
9ECB: 0A          ld   a,(bc)
9ECC: 20 4A       jr   nz,$9F18
9ECE: 75          ld   (hl),l
9ECF: 6D          ld   l,l
9ED0: 70          ld   (hl),b
9ED1: 20 2E       jr   nz,$9F01
9ED3: 2E 20       ld   l,$20
9ED5: FF          rst  $38
9ED6: C9          ret
9ED7: CD D4 95    call $95D4
9EDA: 0D          dec  c
9EDB: 0A          ld   a,(bc)
9EDC: 0A          ld   a,(bc)
9EDD: 0A          ld   a,(bc)
9EDE: 0F          rrca
9EDF: 02          ld   (bc),a
9EE0: 20 48       jr   nz,$9F2A
9EE2: 6F          ld   l,a
9EE3: 6C          ld   l,h
9EE4: 64          ld   h,h
9EE5: 20 2E       jr   nz,$9F15
9EE7: 2E 20       ld   l,$20
9EE9: 27          daa
9EEA: 48          ld   c,b
9EEB: 27          daa
9EEC: 0D          dec  c
9EED: 0A          ld   a,(bc)
9EEE: 41          ld   b,c
9EEF: 62          ld   h,d
9EF0: 6F          ld   l,a
9EF1: 72          ld   (hl),d
9EF2: 74          ld   (hl),h
9EF3: 20 2E       jr   nz,$9F23
9EF5: 2E 20       ld   l,$20
9EF7: 45          ld   b,l
9EF8: 73          ld   (hl),e
9EF9: 63          ld   h,e
9EFA: 61          ld   h,c
9EFB: 70          ld   (hl),b
9EFC: 65          ld   h,l
9EFD: 20 2B       jr   nz,$9F2A
9EFF: 27          daa
9F00: 48          ld   c,b
9F01: 27          daa
9F02: FF          rst  $38
9F03: C9          ret
9F04: 21 36 9F    ld   hl,$9F36
9F07: BE          cp   (hl)
9F08: 28 0E       jr   z,$9F18
9F0A: 38 17       jr   c,$9F23
9F0C: 47          ld   b,a
9F0D: 3E FF       ld   a,$FF
9F0F: 23          inc  hl
9F10: BE          cp   (hl)
9F11: 20 FC       jr   nz,$9F0F
9F13: 23          inc  hl
9F14: 78          ld   a,b
9F15: C3 07 9F    jp   $9F07
9F18: 23          inc  hl
9F19: 7E          ld   a,(hl)
9F1A: FE FF       cp   $FF
9F1C: C8          ret  z
9F1D: CD 5A BB    call $BB5A
9F20: C3 18 9F    jp   $9F18
9F23: CD 2A BB    call $BB2A
9F26: F5          push af
9F27: 3E 27       ld   a,$27
9F29: CD 5D BB    call $BB5D
9F2C: F1          pop  af
9F2D: CD 5D BB    call $BB5D
9F30: 3E 27       ld   a,$27
9F32: CD 5D BB    call $BB5D
9F35: C9          ret
9F36: 03          inc  bc
9F37: 46          ld   b,(hl)
9F38: 28 39       jr   z,$9F73
9F3A: 29          add  hl,hl
9F3B: FF          rst  $38
9F3C: 04          inc  b
9F3D: 46          ld   b,(hl)
9F3E: 28 36       jr   z,$9F76
9F40: 29          add  hl,hl
9F41: FF          rst  $38
9F42: 05          dec  b
9F43: 46          ld   b,(hl)
9F44: 28 33       jr   z,$9F79
9F46: 29          add  hl,hl
9F47: FF          rst  $38
9F48: 06 46       ld   b,$46
9F4A: 28 65       jr   z,$9FB1
9F4C: 6E          ld   l,(hl)
9F4D: 74          ld   (hl),h
9F4E: 65          ld   h,l
9F4F: 72          ld   (hl),d
9F50: 29          add  hl,hl
9F51: FF          rst  $38
9F52: 07          rlca
9F53: 46          ld   b,(hl)
9F54: 28 2E       jr   z,$9F84
9F56: 29          add  hl,hl
9F57: FF          rst  $38
9F58: 09          add  hl,bc
9F59: 43          ld   b,e
9F5A: 4F          ld   c,a
9F5B: 50          ld   d,b
9F5C: 59          ld   e,c
9F5D: FF          rst  $38
9F5E: 0A          ld   a,(bc)
9F5F: 46          ld   b,(hl)
9F60: 28 37       jr   z,$9F99
9F62: 29          add  hl,hl
9F63: FF          rst  $38
9F64: 0B          dec  bc
9F65: 46          ld   b,(hl)
9F66: 28 38       jr   z,$9FA0
9F68: 29          add  hl,hl
9F69: FF          rst  $38
9F6A: 0C          inc  c
9F6B: 46          ld   b,(hl)
9F6C: 28 35       jr   z,$9FA3
9F6E: 29          add  hl,hl
9F6F: FF          rst  $38
9F70: 0D          dec  c
9F71: 46          ld   b,(hl)
9F72: 28 31       jr   z,$9FA5
9F74: 29          add  hl,hl
9F75: FF          rst  $38
9F76: 0E 46       ld   c,$46
9F78: 28 32       jr   z,$9FAC
9F7A: 29          add  hl,hl
9F7B: FF          rst  $38
9F7C: 0F          rrca
9F7D: 46          ld   b,(hl)
9F7E: 28 30       jr   z,$9FB0
9F80: 29          add  hl,hl
9F81: FF          rst  $38
9F82: 10 43       djnz $9FC7
9F84: 4C          ld   c,h
9F85: 52          ld   d,d
9F86: FF          rst  $38
9F87: 12          ld   (de),a
9F88: 45          ld   b,l
9F89: 4E          ld   c,(hl)
9F8A: 54          ld   d,h
9F8B: 45          ld   b,l
9F8C: 52          ld   d,d
9F8D: FF          rst  $38
9F8E: 14          inc  d
9F8F: 46          ld   b,(hl)
9F90: 28 34       jr   z,$9FC6
9F92: 29          add  hl,hl
9F93: FF          rst  $38
9F94: 15          dec  d
9F95: 53          ld   d,e
9F96: 48          ld   c,b
9F97: 49          ld   c,c
9F98: 46          ld   b,(hl)
9F99: 54          ld   d,h
9F9A: FF          rst  $38
9F9B: 17          rla
9F9C: 43          ld   b,e
9F9D: 54          ld   d,h
9F9E: 52          ld   d,d
9F9F: 4C          ld   c,h
9FA0: FF          rst  $38
9FA1: 2F          cpl
9FA2: 53          ld   d,e
9FA3: 50          ld   d,b
9FA4: 41          ld   b,c
9FA5: 43          ld   b,e
9FA6: 45          ld   b,l
9FA7: FF          rst  $38
9FA8: 44          ld   b,h
9FA9: 54          ld   d,h
9FAA: 41          ld   b,c
9FAB: 42          ld   b,d
9FAC: FF          rst  $38
9FAD: 46          ld   b,(hl)
9FAE: 43          ld   b,e
9FAF: 41          ld   b,c
9FB0: 50          ld   d,b
9FB1: 53          ld   d,e
9FB2: 20 4C       jr   nz,$A000
9FB4: 4F          ld   c,a
9FB5: 43          ld   b,e
9FB6: 4B          ld   c,e
9FB7: FF          rst  $38
9FB8: 4F          ld   c,a
9FB9: 44          ld   b,h
9FBA: 45          ld   b,l
9FBB: 4C          ld   c,h
9FBC: FF          rst  $38
9FBD: FF          rst  $38
9FBE: CD F5 8B    call $8BF5
9FC1: CD 7C 9D    call $9D7C
9FC4: 3E FF       ld   a,$FF
9FC6: 06 05       ld   b,$05
9FC8: 21 57 7B    ld   hl,$7B57
9FCB: 77          ld   (hl),a
9FCC: 23          inc  hl
9FCD: 10 FC       djnz $9FCB
9FCF: CD D4 95    call $95D4
9FD2: 1F          rra
9FD3: 04          inc  b
9FD4: 07          rlca
9FD5: 0F          rrca
9FD6: 04          inc  b
9FD7: 4B          ld   c,e
9FD8: 45          ld   b,l
9FD9: 59          ld   e,c
9FDA: 20 53       jr   nz,$A02F
9FDC: 45          ld   b,l
9FDD: 4C          ld   c,h
9FDE: 45          ld   b,l
9FDF: 43          ld   b,e
9FE0: 54          ld   d,h
9FE1: 49          ld   c,c
9FE2: 4F          ld   c,a
9FE3: 4E          ld   c,(hl)
9FE4: 0D          dec  c
9FE5: 0A          ld   a,(bc)
9FE6: 0A          ld   a,(bc)
9FE7: 50          ld   d,b
9FE8: 72          ld   (hl),d
9FE9: 65          ld   h,l
9FEA: 73          ld   (hl),e
9FEB: 73          ld   (hl),e
9FEC: 20 6B       jr   nz,$A059
9FEE: 65          ld   h,l
9FEF: 79          ld   a,c
9FF0: 20 66       jr   nz,$A058
9FF2: 6F          ld   l,a
9FF3: 72          ld   (hl),d
9FF4: 2E 2E       ld   l,$2E
9FF6: 0D          dec  c
9FF7: 0A          ld   a,(bc)
9FF8: FF          rst  $38
9FF9: 3E 25       ld   a,$25
9FFB: CD 1E BB    call $BB1E
9FFE: 20 F9       jr   nz,$9FF9
A000: CD 82 9E    call $9E82
A003: CD 36 A0    call $A036
A006: 32 5A 7B    ld   ($7B5A),a
A009: CD 93 9E    call $9E93
A00C: CD 36 A0    call $A036
A00F: 32 59 7B    ld   ($7B59),a
A012: CD A4 9E    call $9EA4
A015: CD 36 A0    call $A036
A018: 32 58 7B    ld   ($7B58),a
A01B: CD B5 9E    call $9EB5
A01E: CD 36 A0    call $A036
A021: 32 57 7B    ld   ($7B57),a
A024: CD C6 9E    call $9EC6
A027: CD 36 A0    call $A036
A02A: 32 5B 7B    ld   ($7B5B),a
A02D: CD D7 9E    call $9ED7
A030: 06 FA       ld   b,$FA
A032: CD 58 9D    call $9D58
A035: C9          ret
A036: 16 00       ld   d,$00
A038: 7A          ld   a,d
A039: CD 1E BB    call $BB1E
A03C: 20 08       jr   nz,$A046
A03E: 14          inc  d
A03F: 7A          ld   a,d
A040: FE 50       cp   $50
A042: 38 F5       jr   c,$A039
A044: 18 F0       jr   $A036
A046: 7A          ld   a,d
A047: FE 2C       cp   $2C
A049: 28 EB       jr   z,$A036
A04B: FE 42       cp   $42
A04D: 28 E7       jr   z,$A036
A04F: 21 57 7B    ld   hl,$7B57
A052: 06 05       ld   b,$05
A054: BE          cp   (hl)
A055: 28 DF       jr   z,$A036
A057: 23          inc  hl
A058: 10 FA       djnz $A054
A05A: F5          push af
A05B: CD 04 9F    call $9F04
A05E: F1          pop  af
A05F: C9          ret
A060: CD D4 95    call $95D4
A063: 1F          rra
A064: 05          dec  b
A065: 07          rlca
A066: 0F          rrca
A067: 03          inc  bc
A068: 0E 00       ld   c,$00
A06A: 48          ld   c,b
A06B: 49          ld   c,c
A06C: 47          ld   b,a
A06D: 48          ld   c,b
A06E: 20 20       jr   nz,$A090
A070: 53          ld   d,e
A071: 43          ld   b,e
A072: 4F          ld   c,a
A073: 52          ld   d,d
A074: 45          ld   b,l
A075: 53          ld   d,e
A076: FF          rst  $38
A077: 3E FF       ld   a,$FF
A079: CD 63 BB    call $BB63
A07C: 3E 04       ld   a,$04
A07E: CD DE BB    call $BBDE
A081: 06 00       ld   b,$00
A083: C5          push bc
A084: 04          inc  b
A085: 3E 94       ld   a,$94
A087: D6 0C       sub  $0C
A089: 10 FC       djnz $A087
A08B: 6F          ld   l,a
A08C: 26 00       ld   h,$00
A08E: 29          add  hl,hl
A08F: 11 00 00    ld   de,$0000
A092: CD C0 BB    call $BBC0
A095: C1          pop  bc
A096: 78          ld   a,b
A097: 3C          inc  a
A098: 0E 20       ld   c,$20
A09A: FE 0A       cp   $0A
A09C: 20 02       jr   nz,$A0A0
A09E: 0E 31       ld   c,$31
A0A0: 79          ld   a,c
A0A1: CD 5A BB    call $BB5A
A0A4: 78          ld   a,b
A0A5: C6 31       add  a,$31
A0A7: FE 3A       cp   $3A
A0A9: 20 02       jr   nz,$A0AD
A0AB: 3E 30       ld   a,$30
A0AD: CD 5A BB    call $BB5A
A0B0: 3E 20       ld   a,$20
A0B2: CD 5A BB    call $BB5A
A0B5: 21 00 79    ld   hl,$7900
A0B8: 78          ld   a,b
A0B9: 87          add  a,a
A0BA: 87          add  a,a
A0BB: 87          add  a,a
A0BC: 87          add  a,a
A0BD: 85          add  a,l
A0BE: 6F          ld   l,a
A0BF: 0E 20       ld   c,$20
A0C1: C5          push bc
A0C2: 06 08       ld   b,$08
A0C4: 7E          ld   a,(hl)
A0C5: B7          or   a
A0C6: 20 03       jr   nz,$A0CB
A0C8: 79          ld   a,c
A0C9: 18 04       jr   $A0CF
A0CB: C6 30       add  a,$30
A0CD: 0E 30       ld   c,$30
A0CF: CD 5A BB    call $BB5A
A0D2: 23          inc  hl
A0D3: 10 EF       djnz $A0C4
A0D5: 3E 20       ld   a,$20
A0D7: CD 5A BB    call $BB5A
A0DA: 06 08       ld   b,$08
A0DC: 7E          ld   a,(hl)
A0DD: 23          inc  hl
A0DE: CD 5A BB    call $BB5A
A0E1: 10 F9       djnz $A0DC
A0E3: C1          pop  bc
A0E4: 04          inc  b
A0E5: 78          ld   a,b
A0E6: FE 0A       cp   $0A
A0E8: DA 83 A0    jp   c,$A083
A0EB: AF          xor  a
A0EC: CD 63 BB    call $BB63
A0EF: C9          ret
A0F0: 0E 00       ld   c,$00
A0F2: 21 00 79    ld   hl,$7900
A0F5: 79          ld   a,c
A0F6: 87          add  a,a
A0F7: 87          add  a,a
A0F8: 87          add  a,a
A0F9: 87          add  a,a
A0FA: 85          add  a,l
A0FB: 6F          ld   l,a
A0FC: 11 5E 7B    ld   de,$7B5E
A0FF: 06 08       ld   b,$08
A101: 7E          ld   a,(hl)
A102: EB          ex   de,hl
A103: BE          cp   (hl)
A104: EB          ex   de,hl
A105: 13          inc  de
A106: 23          inc  hl
A107: 38 0B       jr   c,$A114
A109: 20 02       jr   nz,$A10D
A10B: 10 F4       djnz $A101
A10D: 0C          inc  c
A10E: 79          ld   a,c
A10F: FE 0A       cp   $0A
A111: 38 DF       jr   c,$A0F2
A113: C9          ret
A114: 21 8F 79    ld   hl,$798F
A117: 11 9F 79    ld   de,$799F
A11A: C5          push bc
A11B: 3E 09       ld   a,$09
A11D: 91          sub  c
A11E: 28 09       jr   z,$A129
A120: 87          add  a,a
A121: 87          add  a,a
A122: 87          add  a,a
A123: 87          add  a,a
A124: 4F          ld   c,a
A125: 06 00       ld   b,$00
A127: ED B8       lddr
A129: 23          inc  hl
A12A: 11 5E 7B    ld   de,$7B5E
A12D: EB          ex   de,hl
A12E: 01 08 00    ld   bc,$0008
A131: ED B0       ldir
A133: EB          ex   de,hl
A134: 22 A4 7B    ld   ($7BA4),hl
A137: 3E 20       ld   a,$20
A139: 06 08       ld   b,$08
A13B: 77          ld   (hl),a
A13C: 23          inc  hl
A13D: 10 FC       djnz $A13B
A13F: 11 00 00    ld   de,$0000
A142: 21 5E 01    ld   hl,$015E
A145: CD D2 BB    call $BBD2
A148: CD DB BB    call $BBDB
A14B: CD D4 95    call $95D4
A14E: 1A          ld   a,(de)
A14F: 00          nop
A150: 13          inc  de
A151: 00          nop
A152: 18 FF       jr   $A153
A154: CD 60 A0    call $A060
A157: CD D4 95    call $95D4
A15A: 1F          rra
A15B: 03          inc  bc
A15C: 18 0F       jr   $A16D
A15E: 08          ex   af,af'
A15F: 45          ld   b,l
A160: 4E          ld   c,(hl)
A161: 54          ld   d,h
A162: 45          ld   b,l
A163: 52          ld   d,d
A164: 20 59       jr   nz,$A1BF
A166: 4F          ld   c,a
A167: 55          ld   d,l
A168: 52          ld   d,d
A169: 20 4E       jr   nz,$A1B9
A16B: 41          ld   b,c
A16C: 4D          ld   c,l
A16D: 45          ld   b,l
A16E: 1F          rra
A16F: 06 19       ld   b,$19
A171: 50          ld   d,b
A172: 6C          ld   l,h
A173: 61          ld   h,c
A174: 79          ld   a,c
A175: 65          ld   h,l
A176: 72          ld   (hl),d
A177: 20 20       jr   nz,$A199
A179: FF          rst  $38
A17A: 3A 00 7B    ld   a,($7B00)
A17D: C6 31       add  a,$31
A17F: CD 5A BB    call $BB5A
A182: 3E FF       ld   a,$FF
A184: CD 63 BB    call $BB63
A187: 3E 03       ld   a,$03
A189: CD DE BB    call $BBDE
A18C: C1          pop  bc
A18D: 41          ld   b,c
A18E: 04          inc  b
A18F: 3E 94       ld   a,$94
A191: D6 0C       sub  $0C
A193: 10 FC       djnz $A191
A195: 6F          ld   l,a
A196: 26 00       ld   h,$00
A198: 29          add  hl,hl
A199: 11 60 01    ld   de,$0160
A19C: CD C0 BB    call $BBC0
A19F: 3E 3E       ld   a,$3E
A1A1: CD 5A BB    call $BB5A
A1A4: CD F7 A1    call $A1F7
A1A7: 2A A4 7B    ld   hl,($7BA4)
A1AA: 0E 00       ld   c,$00
A1AC: CD 06 BB    call $BB06
A1AF: FE 0D       cp   $0D
A1B1: 28 37       jr   z,$A1EA
A1B3: FE 7F       cp   $7F
A1B5: 28 0F       jr   z,$A1C6
A1B7: 47          ld   b,a
A1B8: 79          ld   a,c
A1B9: FE 08       cp   $08
A1BB: 30 EF       jr   nc,$A1AC
A1BD: 78          ld   a,b
A1BE: 77          ld   (hl),a
A1BF: 0C          inc  c
A1C0: 23          inc  hl
A1C1: CD 5A BB    call $BB5A
A1C4: 18 E6       jr   $A1AC
A1C6: 79          ld   a,c
A1C7: B7          or   a
A1C8: 28 E2       jr   z,$A1AC
A1CA: 0D          dec  c
A1CB: 2B          dec  hl
A1CC: 3E 20       ld   a,$20
A1CE: 77          ld   (hl),a
A1CF: C5          push bc
A1D0: E5          push hl
A1D1: CD E0 A1    call $A1E0
A1D4: 3E 20       ld   a,$20
A1D6: CD 5A BB    call $BB5A
A1D9: CD E0 A1    call $A1E0
A1DC: E1          pop  hl
A1DD: C1          pop  bc
A1DE: 18 CC       jr   $A1AC
A1E0: 11 E0 FF    ld   de,$FFE0
A1E3: 21 00 00    ld   hl,$0000
A1E6: CD C3 BB    call $BBC3
A1E9: C9          ret
A1EA: CD FD A1    call $A1FD
A1ED: AF          xor  a
A1EE: CD 63 BB    call $BB63
A1F1: 06 64       ld   b,$64
A1F3: CD 1C 9D    call $9D1C
A1F6: C9          ret
A1F7: CD 1B BB    call $BB1B
A1FA: 38 FB       jr   c,$A1F7
A1FC: C9          ret
A1FD: 2A A4 7B    ld   hl,($7BA4)
A200: 11 1E A2    ld   de,$A21E
A203: 06 08       ld   b,$08
A205: 1A          ld   a,(de)
A206: BE          cp   (hl)
A207: C0          ret  nz
A208: 23          inc  hl
A209: 13          inc  de
A20A: 10 F9       djnz $A205
A20C: 3E 60       ld   a,$60
A20E: 32 A7 7B    ld   ($7BA7),a
A211: 21 26 A2    ld   hl,$A226
A214: ED 5B A4 7B ld   de,($7BA4)
A218: 01 08 00    ld   bc,$0008
A21B: ED B0       ldir
A21D: C9          ret
A21E: E1          pop  hl
A21F: E1          pop  hl
A220: 04          inc  b
A221: 0F          rrca
A222: 15          dec  d
A223: 07          rlca
A224: E0          ret  po
A225: E0          ret  po
A226: 44          ld   b,h
A227: 6F          ld   l,a
A228: 75          ld   (hl),l
A229: 67          ld   h,a
A22A: 20 20       jr   nz,$A24C
A22C: 20 20       jr   nz,$A24E
A22E: FD 21 36 7B ld   iy,$7B36
A232: FD 7E 06    ld   a,(iy+$06)
A235: FD 4E 0A    ld   c,(iy+$0a)
A238: FD B6 07    or   (iy+$07)
A23B: C8          ret  z
A23C: 3A 9B 7B    ld   a,($7B9B)
A23F: E6 01       and  $01
A241: C0          ret  nz
A242: FD 7E 04    ld   a,(iy+$04)
A245: B7          or   a
A246: 20 06       jr   nz,$A24E
A248: 11 E0 01    ld   de,$01E0
A24B: C3 99 A2    jp   $A299
A24E: FE 01       cp   $01
A250: 20 06       jr   nz,$A258
A252: 11 18 01    ld   de,$0118
A255: C3 99 A2    jp   $A299
A258: FE 02       cp   $02
A25A: 20 23       jr   nz,$A27F
A25C: 79          ld   a,c
A25D: FE 0B       cp   $0B
A25F: 38 0E       jr   c,$A26F
A261: 11 78 00    ld   de,$0078
A264: 69          ld   l,c
A265: 26 00       ld   h,$00
A267: 29          add  hl,hl
A268: 29          add  hl,hl
A269: 29          add  hl,hl
A26A: 19          add  hl,de
A26B: EB          ex   de,hl
A26C: C3 99 A2    jp   $A299
A26F: 11 18 01    ld   de,$0118
A272: 69          ld   l,c
A273: 26 00       ld   h,$00
A275: 29          add  hl,hl
A276: 29          add  hl,hl
A277: 29          add  hl,hl
A278: EB          ex   de,hl
A279: ED 52       sbc  hl,de
A27B: EB          ex   de,hl
A27C: C3 99 A2    jp   $A299
A27F: FE 03       cp   $03
A281: 20 0E       jr   nz,$A291
A283: 11 AA 01    ld   de,$01AA
A286: 69          ld   l,c
A287: 26 00       ld   h,$00
A289: 29          add  hl,hl
A28A: 29          add  hl,hl
A28B: 29          add  hl,hl
A28C: 19          add  hl,de
A28D: EB          ex   de,hl
A28E: C3 99 A2    jp   $A299
A291: FD 7E 06    ld   a,(iy+$06)
A294: B7          or   a
A295: C8          ret  z
A296: 11 E0 01    ld   de,$01E0
A299: ED 53 A7 A2 ld   ($A2A7),de
A29D: 21 A4 A2    ld   hl,$A2A4
A2A0: CD AA BC    call $BCAA
A2A3: C9          ret
A2A4: 83          add  a,e
A2A5: 00          nop
A2A6: 00          nop
A2A7: 64          ld   h,h
A2A8: 00          nop
A2A9: 00          nop
A2AA: 05          dec  b
A2AB: 02          ld   (bc),a
A2AC: 00          nop
A2AD: C6 14       add  a,$14
A2AF: E6 1F       and  $1F
A2B1: 32 C0 A2    ld   ($A2C0),a
A2B4: 21 BB A2    ld   hl,$A2BB
A2B7: CD AA BC    call $BCAA
A2BA: C9          ret
A2BB: 84          add  a,h
A2BC: 01 00 00    ld   bc,$0000
A2BF: 00          nop
A2C0: 15          dec  d
A2C1: 0F          rrca
A2C2: 14          inc  d
A2C3: 00          nop
A2C4: 21 0E A3    ld   hl,$A30E
A2C7: 06 10       ld   b,$10
A2C9: C5          push bc
A2CA: 5E          ld   e,(hl)
A2CB: 23          inc  hl
A2CC: 56          ld   d,(hl)
A2CD: 23          inc  hl
A2CE: 7E          ld   a,(hl)
A2CF: 23          inc  hl
A2D0: ED 53 FF A2 ld   ($A2FF),de
A2D4: CB 3A       srl  d
A2D6: CB 1B       rr   e
A2D8: CB 3A       srl  d
A2DA: CB 1B       rr   e
A2DC: ED 53 08 A3 ld   ($A308),de
A2E0: 32 03 A3    ld   ($A303),a
A2E3: 32 0C A3    ld   ($A30C),a
A2E6: E5          push hl
A2E7: 21 FC A2    ld   hl,$A2FC
A2EA: CD AA BC    call $BCAA
A2ED: 30 FB       jr   nc,$A2EA
A2EF: 21 05 A3    ld   hl,$A305
A2F2: CD AA BC    call $BCAA
A2F5: 30 FB       jr   nc,$A2F2
A2F7: E1          pop  hl
A2F8: C1          pop  bc
A2F9: 10 CE       djnz $A2C9
A2FB: C9          ret
A2FC: 11 00 00    ld   de,$0000
A2FF: DE 01       sbc  a,$01
A301: 00          nop
A302: 0F          rrca
A303: 05          dec  b
A304: 00          nop
A305: 0A          ld   a,(bc)
A306: 00          nop
A307: 00          nop
A308: 77          ld   (hl),a
A309: 00          nop
A30A: 00          nop
A30B: 0F          rrca
A30C: 05          dec  b
A30D: 00          nop
A30E: 7E          ld   a,(hl)
A30F: 02          ld   (bc),a
A310: 14          inc  d
A311: 38 02       jr   c,$A315
A313: 0A          ld   a,(bc)
A314: 7E          ld   a,(hl)
A315: 02          ld   (bc),a
A316: 14          inc  d
A317: CC 02 0A    call z,$0A02
A31A: F6 02       or   $02
A31C: 14          inc  d
A31D: BC          cp   h
A31E: 03          inc  bc
A31F: 0A          ld   a,(bc)
A320: 53          ld   d,e
A321: 03          inc  bc
A322: 14          inc  d
A323: F4 03 0A    call p,$0A03
A326: BC          cp   h
A327: 03          inc  bc
A328: 3C          inc  a
A329: BC          cp   h
A32A: 03          inc  bc
A32B: 05          dec  b
A32C: 53          ld   d,e
A32D: 03          inc  bc
A32E: 05          dec  b
A32F: F6 02       or   $02
A331: 05          dec  b
A332: CC 02 05    call z,$0502
A335: 7E          ld   a,(hl)
A336: 02          ld   (bc),a
A337: 05          dec  b
A338: FA 01 05    jp   m,$0501
A33B: DE 01       sbc  a,$01
A33D: 05          dec  b
