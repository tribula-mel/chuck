0000: 8B 56    ane #$56
0002: AD 56 00 lda $0056
0005: 7C 00 7C nop $7c00, x
0008: FF FF 01 isb $01ff, x
000B: CB 42    sbx #$42
000D: FF FF FF isb $ffff, x
0010: FF FF 8B isb $8bff, x
0013: 56 0A    lsr $0a, x
0015: 00       brk
0016: 33 B4    rla ($b4), y
0018: 39 C7 42 and $42c7, y
001B: FB 00 39 isb $3900, y
001E: 00       brk
001F: 00       brk
0020: 05 05    ora $05
0022: 05 05    ora $05
0024: 00       brk
0025: 00       brk
0026: 00       brk
0027: 00       brk
0028: 00       brk
0029: 00       brk
002A: 00       brk
002B: 00       brk
002C: 00       brk
002D: 00       brk
002E: 00       brk
002F: 00       brk
0030: 00       brk
0031: 00       brk
0032: 00       brk
0033: 00       brk
0034: 00       brk
0035: 00       brk
0036: 00       brk
0037: 08       php
0038: 00       brk
0039: 02       kil
003A: 01 00    ora ($00, x)
003C: 00       brk
003D: 00       brk
003E: 00       brk
003F: 0D 00 00 ora $0000
0042: 00       brk
0043: 01 00    ora ($00, x)
0045: 00       brk
0046: 00       brk
0047: 00       brk
0048: 00       brk
0049: 00       brk
004A: FF 08 05 isb $0508, x
004D: 00       brk
004E: 00       brk
004F: 00       brk
0050: 00       brk
0051: FF FF FF isb $ffff, x
0054: FF FF FF isb $ffff, x
0057: FF FF FF isb $ffff, x
005A: FF FF 00 isb $00ff, x
005D: 00       brk
005E: 01 01    ora ($01, x)
0060: 05 86    ora $86
0062: E6 D6    inc $d6
0064: C6 FE    dec $fe
0066: 76 76    ror $76, x
0068: 76 76    ror $76, x
006A: FF FF FF isb $ffff, x
006D: FF FF FF isb $ffff, x
0070: BF 2A 04 lax $042a, y
0073: 00       brk
0074: 02       kil
0075: 0D C0 04 ora $04c0
0078: 00       brk
0079: 10 02    bpl $007d
007B: FF FF FF isb $ffff, x
007E: FF 02 FF isb $ff02, x
0081: 01 01    ora ($01, x)
0083: 00       brk
0084: 00       brk
0085: FF FF 00 isb $00ff, x
0088: FF FE 12 isb $12fe, x
008B: 58       cli
008C: 5A       nop
008D: 00       brk
008E: 00       brk
008F: FF FF FF isb $ffff, x
0092: FF FF FF isb $ffff, x
0095: FF FF FF isb $ffff, x
0098: FF FF FF isb $ffff, x
009B: FF FF FF isb $ffff, x
009E: FF FF FF isb $ffff, x
00A1: 53 0A    sre ($0a), y
00A3: 00       brk
00A4: 00       brk
00A5: 00       brk
00A6: C0 56    cpy #$56
00A8: FF FF FF isb $ffff, x
00AB: FF FF FF isb $ffff, x
00AE: BF B3 37 lax $37b3, y
00B1: 00       brk
00B2: FF 08 FF isb $ff08, x
00B5: 00       brk
00B6: 18       clc
00B7: 0E 21 AD asl $ad21
00BA: 10 70    bpl $012c
00BC: 00       brk
00BD: 11 8B    ora ($8b), y
00BF: 56 C0    lsr $c0, x
00C1: 45 00    eor $00
00C3: 03 FF    slo ($ff, x)
00C5: 43 05    sre ($05, x)
00C7: 55 4B    eor $4b, x
00C9: 45 47    eor $47
00CB: 47 24    sre $24
00CD: 00       brk
00CE: 08       php
00CF: 00       brk
00D0: 20 AA C0 jsr $c0aa
00D3: C0 FF    cpy #$ff
00D5: 3F B8 63 rla $63b8, x
00D8: 00       brk
00D9: 30 00    bmi $00db
00DB: 00       brk
00DC: 07 00    slo $00
00DE: 88       dey
00DF: C0 75    cpy #$75
00E1: C3 00    dcp ($00, x)
00E3: A1 01    lda ($01, x)
00E5: FF 20 01 isb $0120, x
00E8: 00       brk
00E9: 07 00    slo $00
00EB: 00       brk
00EC: 00       brk
00ED: 00       brk
00EE: 00       brk
00EF: 81 CF    sta ($cf, x)
00F1: FF 57 3C isb $3c57, x
00F4: 0F 00 00 slo $0000
00F7: 00       brk
00F8: 00       brk
00F9: 00       brk
00FA: FF 03 14 isb $1403, x
00FD: 0E 80 00 asl $0080
0100: FF FF FF isb $ffff, x
0103: FF FF FF isb $ffff, x
0106: FF FF FF isb $ffff, x
0109: FF FF FF isb $ffff, x
010C: FF FF FF isb $ffff, x
010F: FF FF FF isb $ffff, x
0112: FF FF FF isb $ffff, x
0115: FF FF FF isb $ffff, x
0118: FF FF FF isb $ffff, x
011B: FF FF FF isb $ffff, x
011E: FF FF FF isb $ffff, x
0121: FF FF FF isb $ffff, x
0124: FF FF FF isb $ffff, x
0127: FF FF FF isb $ffff, x
012A: FF FF FF isb $ffff, x
012D: FF FF FF isb $ffff, x
0130: FF FF FF isb $ffff, x
0133: FF FF FF isb $ffff, x
0136: FF FF FF isb $ffff, x
0139: FF FF FF isb $ffff, x
013C: FF FF FF isb $ffff, x
013F: FF FF FF isb $ffff, x
0142: FF FF FF isb $ffff, x
0145: FF FF FF isb $ffff, x
0148: FF FF FF isb $ffff, x
014B: FF FF FF isb $ffff, x
014E: FF FF FF isb $ffff, x
0151: FF FF FF isb $ffff, x
0154: FF FF FF isb $ffff, x
0157: FF FF FF isb $ffff, x
015A: FF FF FF isb $ffff, x
015D: FF FF FF isb $ffff, x
0160: FF FF FF isb $ffff, x
0163: FF FF FF isb $ffff, x
0166: FF FF FF isb $ffff, x
0169: FF FF FF isb $ffff, x
016C: FF FF FF isb $ffff, x
016F: FF FF FF isb $ffff, x
0172: FF FF FF isb $ffff, x
0175: FF FF FF isb $ffff, x
0178: FF FF FF isb $ffff, x
017B: FF FF FF isb $ffff, x
017E: FF FF FF isb $ffff, x
0181: FF FF FF isb $ffff, x
0184: FF FF FF isb $ffff, x
0187: FF FF FF isb $ffff, x
018A: FF FF FF isb $ffff, x
018D: FF FF FF isb $ffff, x
0190: FF FF FF isb $ffff, x
0193: FF FF FF isb $ffff, x
0196: FF FF FF isb $ffff, x
0199: FF FF FF isb $ffff, x
019C: FF FF FF isb $ffff, x
019F: FF FF FF isb $ffff, x
01A2: FF FF FF isb $ffff, x
01A5: FF FF FF isb $ffff, x
01A8: FF FF FF isb $ffff, x
01AB: FF FF FF isb $ffff, x
01AE: FF FF FF isb $ffff, x
01B1: FF FF FF isb $ffff, x
01B4: FF FF FF isb $ffff, x
01B7: FF FF FF isb $ffff, x
01BA: FF FF FF isb $ffff, x
01BD: FF FF FF isb $ffff, x
01C0: FF FF FF isb $ffff, x
01C3: 0C FF 0C nop $0cff
01C6: 0C 32 07 nop $0732
01C9: 35 41    and $41, x
01CB: DD FF 34 cmp $34ff, x
01CE: 6B 2B    arr #$2b
01D0: F1 E5    sbc ($e5), y
01D2: FF 2B F1 isb $f12b, x
01D5: 2B FF    anc #$ff
01D7: 2B 2B    anc #$2b
01D9: 2B F1    anc #$f1
01DB: 0D 07 18 ora $1807
01DE: 09 35    ora #$35
01E0: 18       clc
01E1: 74 40    nop $40, x
01E3: DE 81 DE dec $de81, x
01E6: FF 34 6B isb $6b34, x
01E9: DE 81 DE dec $de81, x
01EC: 00       brk
01ED: 05 00    ora $00
01EF: 62       kil
01F0: FF 34 6B isb $6b34, x
01F3: DE 81 DE dec $de81, x
01F6: 09 8C    ora #$8c
01F8: 14 A0    nop $a0, x
01FA: 5B 2C CE sre $ce2c, y
01FD: 29 16    and #$16
01FF: 8F 10 E3 sax $e310
0202: 02       kil
0203: B4 93    ldy $93, x
0205: DC 89 DE nop $de89, x
0208: 89 DF    nop #$df
020A: 72       kil
020B: E7 EB    isb $eb
020D: E7 A4    isb $a4
020F: E0 C5    cpx #$c5
0211: DE 7D F2 dec $f27d, x
0214: 8E F1 C9 stx $c9f1
0217: F4 29    nop $29, x
0219: F5 A6    sbc $a6, x
021B: FF CA F3 isb $f3ca, x
021E: B1 F1    lda ($f1), y
0220: A6 FF    ldx $ff
0222: A6 FF    ldx $ff
0224: A6 FF    ldx $ff
0226: A6 FF    ldx $ff
0228: 02       kil
0229: EF B3 E4 isb $e4b3
022C: 64 E4    nop $e4
022E: D1 E1    cmp ($e1), y
0230: A6 FF    ldx $ff
0232: A6 FF    ldx $ff
0234: A6 FF    ldx $ff
0236: 90 01    bcc $0239
0238: 9F 0D A1 sha $a10d, y
023B: 02       kil
023C: 2B F0    anc #$f0
023E: 00       brk
023F: 03 E8    slo ($e8, x)
0241: 00       brk
0242: 00       brk
0243: 19 19 01 ora $0119, y
0246: 00       brk
0247: 00       brk
0248: F5 07    sbc $07, x
024A: 00       brk
024B: 0F 03 04 slo $0403
024E: 00       brk
024F: FF 56 08 isb $0856, x
0252: 19 19 32 ora $3219, y
0255: 08       php
0256: 00       brk
0257: 00       brk
0258: 02       kil
0259: 00       brk
025A: 20 09 00 jsr $0009
025D: 00       brk
025E: 00       brk
025F: 00       brk
0260: 00       brk
0261: 50 00    bvc $0263
0263: 03 90    slo ($90, x)
0265: 64 06    nop $06
0267: 81 00    sta ($00, x)
0269: 00       brk
026A: 00       brk
026B: 09 1B    ora #$1b
026D: 01 D0    ora ($d0, x)
026F: E0 F0    cpx #$f0
0271: 01 80    ora ($80, x)
0273: 90 00    bcc $0275
0275: 00       brk
0276: 00       brk
0277: FF FF FF isb $ffff, x
027A: 00       brk
027B: 00       brk
027C: 00       brk
027D: 00       brk
027E: 00       brk
027F: 00       brk
0280: 00       brk
0281: 00       brk
0282: 64 0A    nop $0a
0284: 00       brk
0285: 01 0A    ora ($0a, x)
0287: 00       brk
0288: 00       brk
0289: 00       brk
028A: 00       brk
028B: 00       brk
028C: 0F 01 80 slo $8001
028F: FF FF 01 isb $01ff, x
0292: 00       brk
0293: 00       brk
0294: 00       brk
0295: 10 24    bpl $02bb
0297: 00       brk
0298: 00       brk
0299: 00       brk
029A: 10 25    bpl $02c1
029C: 00       brk
029D: 00       brk
029E: 00       brk
029F: 10 25    bpl $02c6
02A1: 00       brk
02A2: 00       brk
02A3: 00       brk
02A4: 00       brk
02A5: 00       brk
02A6: 00       brk
02A7: 00       brk
02A8: 00       brk
02A9: 00       brk
02AA: 00       brk
02AB: 00       brk
02AC: 00       brk
02AD: 82 00    nop #$00
02AF: 00       brk
02B0: 60       rts
02B1: 00       brk
02B2: 00       brk
02B3: EE 20 FF inc $ff20
02B6: 00       brk
02B7: 00       brk
02B8: 00       brk
02B9: 00       brk
02BA: FF FF FF isb $ffff, x
02BD: FF 04 00 isb $0004, x
02C0: 00       brk
02C1: 00       brk
02C2: 00       brk
02C3: 00       brk
02C4: 00       brk
02C5: 00       brk
02C6: 00       brk
02C7: 00       brk
02C8: 00       brk
02C9: 10 32    bpl $02fd
02CB: 10 10    bpl $02dd
02CD: 10 FF    bpl $02ce
02CF: FF FF FF isb $ffff, x
02D2: AF 00 00 lax $0000
02D5: 00       brk
02D6: 00       brk
02D7: FF FE FF isb $fffe, x
02DA: FF C1 FF isb $ffc1, x
02DD: FF FF F2 isb $f2ff, x
02E0: FF E5 FF isb $ffe5, x
02E3: FF C1 FF isb $ffc1, x
02E6: FF FF F2 isb $f2ff, x
02E9: FF FF FF isb $ffff, x
02EC: FF FF FF isb $ffff, x
02EF: FF FF FF isb $ffff, x
02F2: FF FF FF isb $ffff, x
02F5: FF FF FF isb $ffff, x
02F8: FF FF FF isb $ffff, x
02FB: FF FF FF isb $ffff, x
02FE: FF FF 00 isb $00ff, x
0301: 00       brk
0302: 00       brk
0303: 00       brk
0304: 9F 00 FF sha $ff00, y
0307: 00       brk
0308: 00       brk
0309: 1F 13 00 slo $0013, x
030C: 00       brk
030D: 00       brk
030E: 00       brk
030F: 00       brk
0310: 80 03    nop #$03
0312: 90 01    bcc $0315
0314: 74 00    nop $00, x
0316: 7D 00 00 adc $0000, x
0319: 00       brk
031A: 01 00    ora ($00, x)
031C: 00       brk
031D: 00       brk
031E: 00       brk
031F: 04 30    nop $30
0321: 00       brk
0322: 64 00    nop $00
0324: 70 00    bvs $0326
0326: 64 00    nop $00
0328: 68       pla
0329: 00       brk
032A: 64 00    nop $00
032C: 9F 00 FF sha $ff00, y
032F: FF 00 00 isb $0000, x
0332: 00       brk
0333: 00       brk
0334: 00       brk
0335: 00       brk
0336: 00       brk
0337: 00       brk
0338: 00       brk
0339: 00       brk
033A: 00       brk
033B: 00       brk
033C: 00       brk
033D: 00       brk
033E: 00       brk
033F: 00       brk
0340: 00       brk
0341: 00       brk
0342: 00       brk
0343: 00       brk
0344: 00       brk
0345: 00       brk
0346: 00       brk
0347: 00       brk
0348: 00       brk
0349: 00       brk
034A: 00       brk
034B: 30 80    bmi $02cd
034D: 02       kil
034E: 30 20    bmi $0370
0350: 00       brk
0351: 30 80    bmi $02d3
0353: 02       kil
0354: 50 02    bvc $0358
0356: 00       brk
0357: 3F 00 C0 rla $c000, x
035A: 00       brk
035B: 00       brk
035C: 00       brk
035D: 8C C9 67 sty $67c9
0360: 0F 01 AA slo $aa01
0363: 55 00    eor $00, x
0365: 00       brk
0366: 7F 0F 0C rra $0c0f, x
0369: 0C 0C 0C nop $0c0c
036C: 0C 0C 0C nop $0c0c
036F: 00       brk
0370: 03 05    slo ($05, x)
0372: 02       kil
0373: 03 03    slo ($03, x)
0375: 03 03    slo ($03, x)
0377: 06 06    asl $06
0379: 06 06    asl $06
037B: 03 03    slo ($03, x)
037D: 03 03    slo ($03, x)
037F: FF FF FF isb $ffff, x
0382: FF FF FF isb $ffff, x
0385: FF FF FF isb $ffff, x
0388: FF FF FF isb $ffff, x
038B: FF FF FF isb $ffff, x
038E: FF FF FF isb $ffff, x
0391: FF FF FF isb $ffff, x
0394: FF FF FF isb $ffff, x
0397: FF FF FF isb $ffff, x
039A: FF FF FF isb $ffff, x
039D: FF FF FF isb $ffff, x
03A0: FF FF FF isb $ffff, x
03A3: FF FF FF isb $ffff, x
03A6: FF FF FF isb $ffff, x
03A9: FF FF FF isb $ffff, x
03AC: FF FF FF isb $ffff, x
03AF: FF FF FF isb $ffff, x
03B2: FF FF FF isb $ffff, x
03B5: FF FF FF isb $ffff, x
03B8: FF FF FF isb $ffff, x
03BB: FF FF FF isb $ffff, x
03BE: FF FF FF isb $ffff, x
03C1: FF FF FF isb $ffff, x
03C4: FF FF FF isb $ffff, x
03C7: FF FF FF isb $ffff, x
03CA: FF FF FF isb $ffff, x
03CD: FF FF FF isb $ffff, x
03D0: FF 19 FF isb $ff19, x
03D3: FF FF FF isb $ffff, x
03D6: FF FF FF isb $ffff, x
03D9: FF FF FF isb $ffff, x
03DC: FF FF FF isb $ffff, x
03DF: FF 8E 8C isb $8c8e, x
03E2: 8D 53 31 sta $3153
03E5: 22       kil
03E6: 4C 4F 41 jmp $414f
03E9: 44 2A    nop $2a
03EB: 7F 22 0D rra $0d22, x
03EE: D0 3D    bne $042d
03F0: 26 33    rol $33
03F2: 39 30 30 and $3030, y
03F5: 0D 4F 2E ora $2e4f
03F8: 0D F9 06 ora $06f9
03FB: 0B 0D    anc #$0d
03FD: 20 4B 8F jsr $8f4b
0400: 0A       asl a
0401: 09 00    ora #$00
0403: 00       brk
0404: 20 00 00 jsr $0000
0407: 00       brk
0408: 00       brk
0409: 00       brk
040A: 00       brk
040B: 00       brk
040C: 00       brk
040D: 00       brk
040E: 00       brk
040F: 00       brk
0410: 00       brk
0411: 00       brk
0412: 00       brk
0413: 00       brk
0414: 00       brk
0415: 00       brk
0416: 00       brk
0417: 00       brk
0418: 00       brk
0419: 00       brk
041A: 00       brk
041B: 00       brk
041C: 00       brk
041D: 00       brk
041E: 00       brk
041F: 00       brk
0420: 00       brk
0421: 00       brk
0422: 00       brk
0423: 00       brk
0424: 00       brk
0425: 00       brk
0426: 00       brk
0427: 00       brk
0428: 00       brk
0429: 00       brk
042A: 00       brk
042B: 00       brk
042C: 00       brk
042D: 00       brk
042E: 00       brk
042F: 00       brk
0430: 00       brk
0431: 00       brk
0432: 00       brk
0433: 00       brk
0434: 01 00    ora ($00, x)
0436: 00       brk
0437: 00       brk
0438: 41 26    eor ($26, x)
043A: 46 20    lsr $20
043C: 20 20 20 jsr $2020
043F: 20 00 00 jsr $0000
0442: 00       brk
0443: 00       brk
0444: 01 00    ora ($00, x)
0446: 00       brk
0447: 00       brk
0448: 41 26    eor ($26, x)
044A: 46 20    lsr $20
044C: 20 20 20 jsr $2020
044F: 20 00 00 jsr $0000
0452: 00       brk
0453: 00       brk
0454: 01 00    ora ($00, x)
0456: 00       brk
0457: 00       brk
0458: 41 26    eor ($26, x)
045A: 46 20    lsr $20
045C: 20 20 20 jsr $2020
045F: 20 00 00 jsr $0000
0462: 00       brk
0463: 00       brk
0464: 01 00    ora ($00, x)
0466: 00       brk
0467: 00       brk
0468: 41 26    eor ($26, x)
046A: 46 20    lsr $20
046C: 20 20 20 jsr $2020
046F: 20 00 00 jsr $0000
0472: 00       brk
0473: 00       brk
0474: 01 00    ora ($00, x)
0476: 00       brk
0477: 00       brk
0478: 41 26    eor ($26, x)
047A: 46 20    lsr $20
047C: 20 20 20 jsr $2020
047F: 20 00 00 jsr $0000
0482: 00       brk
0483: 00       brk
0484: 01 00    ora ($00, x)
0486: 00       brk
0487: 00       brk
0488: 41 26    eor ($26, x)
048A: 46 20    lsr $20
048C: 20 20 20 jsr $2020
048F: 20 00 00 jsr $0000
0492: 00       brk
0493: 00       brk
0494: 01 00    ora ($00, x)
0496: 00       brk
0497: 00       brk
0498: 41 26    eor ($26, x)
049A: 46 20    lsr $20
049C: 20 20 20 jsr $2020
049F: 20 00 00 jsr $0000
04A2: 00       brk
04A3: 00       brk
04A4: 01 00    ora ($00, x)
04A6: 00       brk
04A7: 00       brk
04A8: 41 26    eor ($26, x)
04AA: 46 20    lsr $20
04AC: 20 20 20 jsr $2020
04AF: 20 00 00 jsr $0000
04B2: 00       brk
04B3: 00       brk
04B4: 01 00    ora ($00, x)
04B6: 00       brk
04B7: 00       brk
04B8: 41 26    eor ($26, x)
04BA: 46 20    lsr $20
04BC: 20 20 20 jsr $2020
04BF: 20 00 00 jsr $0000
04C2: 00       brk
04C3: 00       brk
04C4: 01 00    ora ($00, x)
04C6: 00       brk
04C7: 00       brk
04C8: 41 26    eor ($26, x)
04CA: 46 20    lsr $20
04CC: 20 20 20 jsr $2020
04CF: 20 00 00 jsr $0000
04D2: 00       brk
04D3: 00       brk
04D4: 00       brk
04D5: 00       brk
04D6: 00       brk
04D7: 00       brk
04D8: 00       brk
04D9: 00       brk
04DA: 00       brk
04DB: 00       brk
04DC: 00       brk
04DD: 00       brk
04DE: 00       brk
04DF: 00       brk
04E0: 00       brk
04E1: 00       brk
04E2: 00       brk
04E3: 00       brk
04E4: 00       brk
04E5: 00       brk
04E6: 9C 56 00 shy $0056, x
04E9: 00       brk
04EA: 00       brk
04EB: 00       brk
04EC: 00       brk
04ED: 00       brk
04EE: 00       brk
04EF: 00       brk
04F0: 00       brk
04F1: 00       brk
04F2: 00       brk
04F3: 00       brk
04F4: 00       brk
04F5: 00       brk
04F6: 00       brk
04F7: 00       brk
04F8: A5 56    lda $56
04FA: 00       brk
04FB: 00       brk
04FC: 00       brk
04FD: 00       brk
04FE: 00       brk
04FF: 00       brk
0500: 00       brk
0501: 00       brk
0502: 00       brk
0503: 00       brk
0504: 00       brk
0505: 00       brk
0506: 00       brk
0507: 00       brk
0508: 01 00    ora ($00, x)
050A: 00       brk
050B: 00       brk
050C: 00       brk
050D: CC 3A 00 cpy $003a
0510: 00       brk
0511: 00       brk
0512: 00       brk
0513: 00       brk
0514: 00       brk
0515: 00       brk
0516: 00       brk
0517: 00       brk
0518: 00       brk
0519: 00       brk
051A: 00       brk
051B: 00       brk
051C: 00       brk
051D: 00       brk
051E: 00       brk
051F: 00       brk
0520: 00       brk
0521: 00       brk
0522: 00       brk
0523: 00       brk
0524: 00       brk
0525: 00       brk
0526: 00       brk
0527: 00       brk
0528: 00       brk
0529: 00       brk
052A: 00       brk
052B: 00       brk
052C: 00       brk
052D: 00       brk
052E: 00       brk
052F: 00       brk
0530: 00       brk
0531: 00       brk
0532: 00       brk
0533: 00       brk
0534: 00       brk
0535: 00       brk
0536: 00       brk
0537: 00       brk
0538: 00       brk
0539: 00       brk
053A: 00       brk
053B: 00       brk
053C: 00       brk
053D: 00       brk
053E: 00       brk
053F: 00       brk
0540: 00       brk
0541: 00       brk
0542: 00       brk
0543: 00       brk
0544: 00       brk
0545: 00       brk
0546: 00       brk
0547: 00       brk
0548: 01 00    ora ($00, x)
054A: 00       brk
054B: 00       brk
054C: 00       brk
054D: 00       brk
054E: 00       brk
054F: 00       brk
0550: 00       brk
0551: 00       brk
0552: 00       brk
0553: 00       brk
0554: 00       brk
0555: 00       brk
0556: 00       brk
0557: 00       brk
0558: 00       brk
0559: 00       brk
055A: 00       brk
055B: 00       brk
055C: 00       brk
055D: 00       brk
055E: 00       brk
055F: 00       brk
0560: 00       brk
0561: 00       brk
0562: 00       brk
0563: 00       brk
0564: 00       brk
0565: 00       brk
0566: 00       brk
0567: 00       brk
0568: 00       brk
0569: 00       brk
056A: 00       brk
056B: 00       brk
056C: 00       brk
056D: 00       brk
056E: 00       brk
056F: 00       brk
0570: 00       brk
0571: 00       brk
0572: 00       brk
0573: 00       brk
0574: 00       brk
0575: 00       brk
0576: 00       brk
0577: 00       brk
0578: 00       brk
0579: 00       brk
057A: 00       brk
057B: 00       brk
057C: 00       brk
057D: 00       brk
057E: 00       brk
057F: 00       brk
0580: 00       brk
0581: 00       brk
0582: 00       brk
0583: 00       brk
0584: 00       brk
0585: 00       brk
0586: 00       brk
0587: 00       brk
0588: 01 00    ora ($00, x)
058A: 00       brk
058B: 00       brk
058C: 00       brk
058D: 00       brk
058E: 00       brk
058F: 00       brk
0590: 00       brk
0591: 00       brk
0592: 00       brk
0593: 00       brk
0594: 00       brk
0595: 00       brk
0596: 00       brk
0597: 00       brk
0598: 00       brk
0599: 00       brk
059A: 00       brk
059B: 00       brk
059C: 00       brk
059D: 00       brk
059E: 00       brk
059F: 00       brk
05A0: 00       brk
05A1: 00       brk
05A2: 00       brk
05A3: 00       brk
05A4: 00       brk
05A5: 00       brk
05A6: 00       brk
05A7: 00       brk
05A8: 00       brk
05A9: 00       brk
05AA: 00       brk
05AB: 00       brk
05AC: 00       brk
05AD: 00       brk
05AE: 00       brk
05AF: 00       brk
05B0: 00       brk
05B1: 00       brk
05B2: 00       brk
05B3: 00       brk
05B4: 00       brk
05B5: 00       brk
05B6: 00       brk
05B7: 00       brk
05B8: 3C 00 00 nop $0000, x
05BB: 00       brk
05BC: 00       brk
05BD: 00       brk
05BE: 00       brk
05BF: 00       brk
05C0: 00       brk
05C1: 00       brk
05C2: 00       brk
05C3: 00       brk
05C4: 00       brk
05C5: 00       brk
05C6: 00       brk
05C7: 00       brk
05C8: 01 00    ora ($00, x)
05CA: 00       brk
05CB: 00       brk
05CC: 00       brk
05CD: 00       brk
05CE: 00       brk
05CF: 00       brk
05D0: 00       brk
05D1: 00       brk
05D2: 00       brk
05D3: 00       brk
05D4: 00       brk
05D5: 00       brk
05D6: 00       brk
05D7: 00       brk
05D8: 00       brk
05D9: 00       brk
05DA: 00       brk
05DB: 00       brk
05DC: 00       brk
05DD: 00       brk
05DE: 00       brk
05DF: 00       brk
05E0: 00       brk
05E1: 00       brk
05E2: 00       brk
05E3: 00       brk
05E4: 00       brk
05E5: 00       brk
05E6: 00       brk
05E7: 00       brk
05E8: 00       brk
05E9: 00       brk
05EA: 00       brk
05EB: 00       brk
05EC: 00       brk
05ED: 00       brk
05EE: 00       brk
05EF: 00       brk
05F0: 00       brk
05F1: 00       brk
05F2: 00       brk
05F3: 00       brk
05F4: 00       brk
05F5: 00       brk
05F6: 00       brk
05F7: 00       brk
05F8: 00       brk
05F9: 00       brk
05FA: 00       brk
05FB: 00       brk
05FC: 00       brk
05FD: 00       brk
05FE: 00       brk
05FF: 00       brk
0600: 00       brk
0601: 6F 72 20 rra $2072
0604: 52       kil
0605: 45 54    eor $54
0607: 55 52    eor $52, x
0609: 4E 20 66 lsr $6620
060C: 6F 72 20 rra $2072
060F: 6D 6F 64 adc $646f
0612: 69 66    adc #$66
0614: 69 65    adc #$65
0616: 64 20    nop $20
0618: 67 61    rra $61
061A: 6D 65 22 adc $2265
061D: 74 22    nop $22, x
061F: 86 6B    stx $6b
0621: 65 79    adc $79
0623: 73 20    rra ($20), y
0625: 62       kil
0626: 75 74    adc $74, x
0628: 20 73 6F jsr $6f73
062B: 6D 65 20 adc $2065
062E: 63 6F    rra ($6f, x)
0630: 6D 62 69 adc $6962
0633: 6E 61 74 ror $7461
0636: 69 6F    adc #$6f
0638: 6E 73 20 ror $2073
063B: 61 72    adc ($72, x)
063D: 65 86    adc $86
063F: 6E 6F 74 ror $746f
0642: 20 70 6F jsr $6f70
0645: 73 73    rra ($73), y
0647: 69 62    adc #$62
0649: 6C 65 20 jmp ($2065)
064C: 64 75    nop $75
064E: 65 20    adc $20
0650: 74 6F    nop $6f, x
0652: 20 6B 65 jsr $656b
0655: 79 62 6F adc $6f62, y
0658: 61 72    adc ($72, x)
065A: 64 22    nop $22
065C: 00       brk
065D: 00       brk
065E: 00       brk
065F: 00       brk
0660: 00       brk
0661: 00       brk
0662: 00       brk
0663: 00       brk
0664: 00       brk
0665: 00       brk
0666: 00       brk
0667: 00       brk
0668: 00       brk
0669: 00       brk
066A: 00       brk
066B: 00       brk
066C: 00       brk
066D: 00       brk
066E: 00       brk
066F: 00       brk
0670: 00       brk
0671: 00       brk
0672: 00       brk
0673: 00       brk
0674: 00       brk
0675: 00       brk
0676: 00       brk
0677: 00       brk
0678: 00       brk
0679: 00       brk
067A: 00       brk
067B: 00       brk
067C: 00       brk
067D: 00       brk
067E: 00       brk
067F: 00       brk
0680: 00       brk
0681: 00       brk
0682: 00       brk
0683: 00       brk
0684: 00       brk
0685: 00       brk
0686: 00       brk
0687: 00       brk
0688: 00       brk
0689: 00       brk
068A: 00       brk
068B: 00       brk
068C: 00       brk
068D: 00       brk
068E: 00       brk
068F: 00       brk
0690: 00       brk
0691: 00       brk
0692: 00       brk
0693: 00       brk
0694: 00       brk
0695: 00       brk
0696: 00       brk
0697: 00       brk
0698: 00       brk
0699: 00       brk
069A: 00       brk
069B: 00       brk
069C: 00       brk
069D: 00       brk
069E: 00       brk
069F: 00       brk
06A0: 00       brk
06A1: 00       brk
06A2: 00       brk
06A3: 00       brk
06A4: 00       brk
06A5: 00       brk
06A6: 00       brk
06A7: 00       brk
06A8: 00       brk
06A9: 00       brk
06AA: 00       brk
06AB: 00       brk
06AC: 00       brk
06AD: 00       brk
06AE: 00       brk
06AF: 00       brk
06B0: 00       brk
06B1: 00       brk
06B2: 00       brk
06B3: 00       brk
06B4: 00       brk
06B5: 00       brk
06B6: 00       brk
06B7: 00       brk
06B8: 00       brk
06B9: 00       brk
06BA: 00       brk
06BB: 00       brk
06BC: 00       brk
06BD: 00       brk
06BE: 00       brk
06BF: 00       brk
06C0: 00       brk
06C1: 00       brk
06C2: 00       brk
06C3: 00       brk
06C4: 00       brk
06C5: 00       brk
06C6: 00       brk
06C7: 00       brk
06C8: 00       brk
06C9: 00       brk
06CA: 00       brk
06CB: 00       brk
06CC: 00       brk
06CD: 00       brk
06CE: 00       brk
06CF: 00       brk
06D0: 00       brk
06D1: 00       brk
06D2: 00       brk
06D3: 00       brk
06D4: 00       brk
06D5: 00       brk
06D6: 00       brk
06D7: 00       brk
06D8: 00       brk
06D9: 00       brk
06DA: 00       brk
06DB: 00       brk
06DC: 00       brk
06DD: 00       brk
06DE: 00       brk
06DF: 00       brk
06E0: 00       brk
06E1: 00       brk
06E2: 00       brk
06E3: 00       brk
06E4: 00       brk
06E5: 00       brk
06E6: 00       brk
06E7: 00       brk
06E8: 00       brk
06E9: 00       brk
06EA: 00       brk
06EB: 00       brk
06EC: 00       brk
06ED: 00       brk
06EE: 00       brk
06EF: 00       brk
06F0: 00       brk
06F1: 00       brk
06F2: 00       brk
06F3: 00       brk
06F4: 00       brk
06F5: 00       brk
06F6: 00       brk
06F7: 00       brk
06F8: 00       brk
06F9: 00       brk
06FA: 00       brk
06FB: 00       brk
06FC: 00       brk
06FD: 00       brk
06FE: 00       brk
06FF: 00       brk
0700: F9 0D 0D sbc $0d0d, y
0703: 33 39    rla ($39), y
0705: 30 30    bmi $0737
0707: 0D 41 44 ora $4441
070A: 22       kil
070B: 0D 00 00 ora $0000
070E: 00       brk
070F: 00       brk
0710: 00       brk
0711: 00       brk
0712: 00       brk
0713: 00       brk
0714: 00       brk
0715: 00       brk
0716: 00       brk
0717: 00       brk
0718: 00       brk
0719: 00       brk
071A: 00       brk
071B: 00       brk
071C: 00       brk
071D: 00       brk
071E: 00       brk
071F: 00       brk
0720: 00       brk
0721: 00       brk
0722: 00       brk
0723: 00       brk
0724: 00       brk
0725: 00       brk
0726: 00       brk
0727: 00       brk
0728: 00       brk
0729: 00       brk
072A: 00       brk
072B: 00       brk
072C: 00       brk
072D: 00       brk
072E: 00       brk
072F: 00       brk
0730: 00       brk
0731: 00       brk
0732: 00       brk
0733: 00       brk
0734: 00       brk
0735: 00       brk
0736: 00       brk
0737: 00       brk
0738: 00       brk
0739: 00       brk
073A: 00       brk
073B: 00       brk
073C: 00       brk
073D: 00       brk
073E: 00       brk
073F: 00       brk
0740: 00       brk
0741: 00       brk
0742: 00       brk
0743: 00       brk
0744: 00       brk
0745: 00       brk
0746: 00       brk
0747: 00       brk
0748: 00       brk
0749: 00       brk
074A: 00       brk
074B: 00       brk
074C: 00       brk
074D: 00       brk
074E: 00       brk
074F: 00       brk
0750: 00       brk
0751: 00       brk
0752: 00       brk
0753: 00       brk
0754: 00       brk
0755: 00       brk
0756: 00       brk
0757: 00       brk
0758: 00       brk
0759: 00       brk
075A: 00       brk
075B: 00       brk
075C: 00       brk
075D: 00       brk
075E: 00       brk
075F: 00       brk
0760: 00       brk
0761: 00       brk
0762: 00       brk
0763: 00       brk
0764: 00       brk
0765: 00       brk
0766: 00       brk
0767: 00       brk
0768: 00       brk
0769: 00       brk
076A: 00       brk
076B: 00       brk
076C: 00       brk
076D: 00       brk
076E: 00       brk
076F: 00       brk
0770: 00       brk
0771: 00       brk
0772: 00       brk
0773: 00       brk
0774: 00       brk
0775: 00       brk
0776: 00       brk
0777: 00       brk
0778: 00       brk
0779: 00       brk
077A: 00       brk
077B: 00       brk
077C: 00       brk
077D: 00       brk
077E: 00       brk
077F: 00       brk
0780: 00       brk
0781: 00       brk
0782: 00       brk
0783: 00       brk
0784: 00       brk
0785: 00       brk
0786: 00       brk
0787: 00       brk
0788: 00       brk
0789: 00       brk
078A: 00       brk
078B: 00       brk
078C: 00       brk
078D: 00       brk
078E: 00       brk
078F: 00       brk
0790: 00       brk
0791: 00       brk
0792: 00       brk
0793: 00       brk
0794: 00       brk
0795: 00       brk
0796: 00       brk
0797: 00       brk
0798: 00       brk
0799: 00       brk
079A: 00       brk
079B: 00       brk
079C: 00       brk
079D: 00       brk
079E: 00       brk
079F: 00       brk
07A0: 00       brk
07A1: 00       brk
07A2: 00       brk
07A3: 00       brk
07A4: 00       brk
07A5: 00       brk
07A6: 00       brk
07A7: 00       brk
07A8: 00       brk
07A9: 00       brk
07AA: 00       brk
07AB: 00       brk
07AC: 00       brk
07AD: 00       brk
07AE: 00       brk
07AF: 00       brk
07B0: 00       brk
07B1: 00       brk
07B2: 00       brk
07B3: 00       brk
07B4: 00       brk
07B5: 00       brk
07B6: 00       brk
07B7: 00       brk
07B8: 00       brk
07B9: 00       brk
07BA: 00       brk
07BB: 00       brk
07BC: 00       brk
07BD: 00       brk
07BE: 00       brk
07BF: 00       brk
07C0: 00       brk
07C1: 00       brk
07C2: 00       brk
07C3: 00       brk
07C4: 00       brk
07C5: 00       brk
07C6: 00       brk
07C7: 00       brk
07C8: 00       brk
07C9: 00       brk
07CA: 00       brk
07CB: 00       brk
07CC: 00       brk
07CD: 00       brk
07CE: 00       brk
07CF: 00       brk
07D0: 00       brk
07D1: 00       brk
07D2: 00       brk
07D3: 00       brk
07D4: 00       brk
07D5: 00       brk
07D6: 00       brk
07D7: 00       brk
07D8: 00       brk
07D9: 00       brk
07DA: 00       brk
07DB: 00       brk
07DC: 00       brk
07DD: 00       brk
07DE: 00       brk
07DF: 00       brk
07E0: 00       brk
07E1: 00       brk
07E2: 00       brk
07E3: 00       brk
07E4: 00       brk
07E5: 00       brk
07E6: 00       brk
07E7: 00       brk
07E8: 00       brk
07E9: 00       brk
07EA: 00       brk
07EB: 00       brk
07EC: 00       brk
07ED: 00       brk
07EE: 00       brk
07EF: 00       brk
07F0: 00       brk
07F1: 00       brk
07F2: 00       brk
07F3: 00       brk
07F4: 00       brk
07F5: 00       brk
07F6: 00       brk
07F7: 00       brk
07F8: 00       brk
07F9: 00       brk
07FA: 00       brk
07FB: 00       brk
07FC: 00       brk
07FD: 00       brk
07FE: 00       brk
07FF: 00       brk
0800: FF 00 00 isb $0000, x
0803: 00       brk
0804: 00       brk
0805: 00       brk
0806: 00       brk
0807: 00       brk
0808: C0 C0    cpy #$c0
080A: C0 C0    cpy #$c0
080C: 04 04    nop $04
080E: 04 04    nop $04
0810: 00       brk
0811: 00       brk
0812: 00       brk
0813: 64 00    nop $00
0815: 00       brk
0816: 00       brk
0817: FF 00 00 isb $0000, x
081A: 00       brk
081B: 00       brk
081C: 00       brk
081D: 00       brk
081E: 00       brk
081F: 00       brk
0820: 00       brk
0821: 00       brk
0822: 00       brk
0823: 05 00    ora $00
0825: 00       brk
0826: 00       brk
0827: FF 00 00 isb $0000, x
082A: 00       brk
082B: 00       brk
082C: 00       brk
082D: 00       brk
082E: 00       brk
082F: 00       brk
0830: 00       brk
0831: 00       brk
0832: 00       brk
0833: 64 00    nop $00
0835: 00       brk
0836: 00       brk
0837: 00       brk
0838: FF 00 00 isb $0000, x
083B: 00       brk
083C: 00       brk
083D: EF 00 0D isb $0d00
0840: 00       brk
0841: 00       brk
0842: 00       brk
0843: 00       brk
0844: 00       brk
0845: 00       brk
0846: 00       brk
0847: 00       brk
0848: 00       brk
0849: 00       brk
084A: 00       brk
084B: 00       brk
084C: 00       brk
084D: 00       brk
084E: 00       brk
084F: 00       brk
0850: 00       brk
0851: 00       brk
0852: 00       brk
0853: 00       brk
0854: 00       brk
0855: 00       brk
0856: 00       brk
0857: 00       brk
0858: 00       brk
0859: 00       brk
085A: 00       brk
085B: 00       brk
085C: 00       brk
085D: 00       brk
085E: 00       brk
085F: 00       brk
0860: 00       brk
0861: 00       brk
0862: 00       brk
0863: 00       brk
0864: 00       brk
0865: 00       brk
0866: 00       brk
0867: 00       brk
0868: 00       brk
0869: 00       brk
086A: 00       brk
086B: 00       brk
086C: 00       brk
086D: 00       brk
086E: 00       brk
086F: 00       brk
0870: 64 06    nop $06
0872: 00       brk
0873: 00       brk
0874: 00       brk
0875: 00       brk
0876: 00       brk
0877: 00       brk
0878: 00       brk
0879: 00       brk
087A: 00       brk
087B: 00       brk
087C: 00       brk
087D: 00       brk
087E: 00       brk
087F: 90 0D    bcc $088e
0881: 00       brk
0882: 00       brk
0883: 00       brk
0884: 00       brk
0885: 00       brk
0886: 00       brk
0887: 00       brk
0888: 00       brk
0889: 00       brk
088A: 00       brk
088B: 00       brk
088C: 00       brk
088D: 00       brk
088E: 00       brk
088F: 00       brk
0890: 00       brk
0891: 00       brk
0892: 00       brk
0893: 00       brk
0894: 00       brk
0895: 00       brk
0896: 00       brk
0897: 00       brk
0898: 00       brk
0899: 00       brk
089A: 00       brk
089B: 00       brk
089C: 00       brk
089D: 00       brk
089E: 00       brk
089F: 00       brk
08A0: 00       brk
08A1: 00       brk
08A2: 00       brk
08A3: 00       brk
08A4: 00       brk
08A5: 00       brk
08A6: 00       brk
08A7: 00       brk
08A8: 00       brk
08A9: 00       brk
08AA: 00       brk
08AB: 00       brk
08AC: 00       brk
08AD: 00       brk
08AE: 00       brk
08AF: 00       brk
08B0: 00       brk
08B1: 00       brk
08B2: 00       brk
08B3: 00       brk
08B4: 00       brk
08B5: 00       brk
08B6: 00       brk
08B7: 00       brk
08B8: 00       brk
08B9: 00       brk
08BA: 00       brk
08BB: 00       brk
08BC: 00       brk
08BD: 00       brk
08BE: 00       brk
08BF: 0D 01 00 ora $0001
08C2: 00       brk
08C3: 00       brk
08C4: 00       brk
08C5: 00       brk
08C6: 00       brk
08C7: 7E CE 00 ror $00ce, x
08CA: 00       brk
08CB: 64 00    nop $00
08CD: 00       brk
08CE: 00       brk
08CF: 00       brk
08D0: 01 00    ora ($00, x)
08D2: 00       brk
08D3: 00       brk
08D4: 00       brk
08D5: 00       brk
08D6: 00       brk
08D7: 7E FE 00 ror $00fe, x
08DA: FB 7E 64 isb $647e, y
08DD: 00       brk
08DE: 00       brk
08DF: 00       brk
08E0: 01 00    ora ($00, x)
08E2: 00       brk
08E3: 00       brk
08E4: 00       brk
08E5: 00       brk
08E6: 00       brk
08E7: 32       kil
08E8: 00       brk
08E9: 00       brk
08EA: E7 64    isb $64
08EC: 00       brk
08ED: 00       brk
08EE: 00       brk
08EF: 00       brk
08F0: 00       brk
08F1: 00       brk
08F2: 00       brk
08F3: 00       brk
08F4: 00       brk
08F5: 00       brk
08F6: 00       brk
08F7: 00       brk
08F8: 00       brk
08F9: 00       brk
08FA: 00       brk
08FB: 00       brk
08FC: 00       brk
08FD: 00       brk
08FE: 00       brk
08FF: 00       brk
0900: 4C 98 0B jmp $0b98
0903: A2 B2    ldx #$b2
0905: A0 0A    ldy #$0a
0907: 20 26 1A jsr $1a26
090A: A9 AC    lda #$ac
090C: A2 00    ldx #$00
090E: A0 FF    ldy #$ff
0910: 20 F4 FF jsr $fff4
0913: 86 76    stx $76
0915: 84 77    sty $77
0917: A9 00    lda #$00
0919: 85 60    sta $60
091B: A9 54    lda #$54
091D: 85 28    sta $28
091F: A2 DC    ldx #$dc
0921: A0 0A    ldy #$0a
0923: 20 26 1A jsr $1a26
0926: 20 5C 09 jsr $095c
0929: 85 64    sta $64
092B: A2 E9    ldx #$e9
092D: A0 0A    ldy #$0a
092F: 20 26 1A jsr $1a26
0932: 20 5C 09 jsr $095c
0935: 85 63    sta $63
0937: A2 F8    ldx #$f8
0939: A0 0A    ldy #$0a
093B: 20 26 1A jsr $1a26
093E: 20 5C 09 jsr $095c
0941: 85 62    sta $62
0943: A2 07    ldx #$07
0945: A0 0B    ldy #$0b
0947: 20 26 1A jsr $1a26
094A: 20 5C 09 jsr $095c
094D: 85 61    sta $61
094F: A2 17    ldx #$17
0951: A0 0B    ldy #$0b
0953: 20 26 1A jsr $1a26
0956: 20 5C 09 jsr $095c
0959: 85 65    sta $65
095B: 60       rts
095C: A9 79    lda #$79
095E: A2 80    ldx #$80
0960: 20 F4 FF jsr $fff4
0963: 8A       txa
0964: 10 05    bpl $096b
0966: A2 00    ldx #$00
0968: 4C 83 09 jmp $0983
096B: A9 79    lda #$79
096D: A2 81    ldx #$81
096F: 20 F4 FF jsr $fff4
0972: 8A       txa
0973: 10 05    bpl $097a
0975: A2 01    ldx #$01
0977: 4C 83 09 jmp $0983
097A: A9 7A    lda #$7a
097C: 20 F4 FF jsr $fff4
097F: E0 FF    cpx #$ff
0981: F0 D9    beq $095c
0983: 86 88    stx $88
0985: 8A       txa
0986: 49 FF    eor #$ff
0988: 85 89    sta $89
098A: A4 60    ldy $60
098C: 8A       txa
098D: 29 0F    and #$0f
098F: 85 8B    sta $8b
0991: 8A       txa
0992: 29 F0    and #$f0
0994: 85 8C    sta $8c
0996: A9 00    lda #$00
0998: 85 8D    sta $8d
099A: 85 8E    sta $8e
099C: 8A       txa
099D: D9 28 00 cmp $0028, y
09A0: F0 BA    beq $095c
09A2: B9 28 00 lda $0028, y
09A5: 29 0F    and #$0f
09A7: C5 8B    cmp $8b
09A9: D0 02    bne $09ad
09AB: E6 8D    inc $8d
09AD: B9 28 00 lda $0028, y
09B0: 29 F0    and #$f0
09B2: C5 8C    cmp $8c
09B4: D0 02    bne $09b8
09B6: E6 8E    inc $8e
09B8: 88       dey
09B9: 10 E1    bpl $099c
09BB: A5 8D    lda $8d
09BD: F0 15    beq $09d4
09BF: A5 8E    lda $8e
09C1: F0 11    beq $09d4
09C3: A9 D6    lda #$d6
09C5: A2 01    ldx #$01
09C7: A0 00    ldy #$00
09C9: 20 F4 FF jsr $fff4
09CC: A9 07    lda #$07
09CE: 20 EE FF jsr $ffee
09D1: 4C 5C 09 jmp $095c
09D4: E6 60    inc $60
09D6: A4 60    ldy $60
09D8: 8A       txa
09D9: 99 28 00 sta $0028, y
09DC: E0 02    cpx #$02
09DE: B0 12    bcs $09f2
09E0: E0 00    cpx #$00
09E2: D0 07    bne $09eb
09E4: A2 8A    ldx #$8a
09E6: A0 0B    ldy #$0b
09E8: 4C AC 0A jmp $0aac
09EB: A2 90    ldx #$90
09ED: A0 0B    ldy #$0b
09EF: 4C AC 0A jmp $0aac
09F2: A4 88    ldy $88
09F4: B1 76    lda ($76), y
09F6: C9 21    cmp #$21
09F8: 90 16    bcc $0a10
09FA: C9 7F    cmp #$7f
09FC: B0 12    bcs $0a10
09FE: 48       pha
09FF: A9 27    lda #$27
0A01: 20 EE FF jsr $ffee
0A04: 68       pla
0A05: 20 EE FF jsr $ffee
0A08: A9 27    lda #$27
0A0A: 20 EE FF jsr $ffee
0A0D: 4C AF 0A jmp $0aaf
0A10: C9 00    cmp #$00
0A12: D0 07    bne $0a1b
0A14: A2 26    ldx #$26
0A16: A0 0B    ldy #$0b
0A18: 4C AC 0A jmp $0aac
0A1B: C9 01    cmp #$01
0A1D: D0 07    bne $0a26
0A1F: A2 2A    ldx #$2a
0A21: A0 0B    ldy #$0b
0A23: 4C AC 0A jmp $0aac
0A26: C9 02    cmp #$02
0A28: D0 07    bne $0a31
0A2A: A2 34    ldx #$34
0A2C: A0 0B    ldy #$0b
0A2E: 4C AC 0A jmp $0aac
0A31: C9 1B    cmp #$1b
0A33: D0 07    bne $0a3c
0A35: A2 3F    ldx #$3f
0A37: A0 0B    ldy #$0b
0A39: 4C AC 0A jmp $0aac
0A3C: C9 20    cmp #$20
0A3E: D0 07    bne $0a47
0A40: A2 46    ldx #$46
0A42: A0 0B    ldy #$0b
0A44: 4C AC 0A jmp $0aac
0A47: C9 7F    cmp #$7f
0A49: D0 07    bne $0a52
0A4B: A2 4C    ldx #$4c
0A4D: A0 0B    ldy #$0b
0A4F: 4C AC 0A jmp $0aac
0A52: C9 0D    cmp #$0d
0A54: D0 07    bne $0a5d
0A56: A2 53    ldx #$53
0A58: A0 0B    ldy #$0b
0A5A: 4C AC 0A jmp $0aac
0A5D: C9 8B    cmp #$8b
0A5F: D0 07    bne $0a68
0A61: A2 5A    ldx #$5a
0A63: A0 0B    ldy #$0b
0A65: 4C AC 0A jmp $0aac
0A68: C9 8C    cmp #$8c
0A6A: D0 07    bne $0a73
0A6C: A2 5F    ldx #$5f
0A6E: A0 0B    ldy #$0b
0A70: 4C AC 0A jmp $0aac
0A73: C9 8D    cmp #$8d
0A75: D0 07    bne $0a7e
0A77: A2 6A    ldx #$6a
0A79: A0 0B    ldy #$0b
0A7B: 4C AC 0A jmp $0aac
0A7E: C9 8E    cmp #$8e
0A80: D0 07    bne $0a89
0A82: A2 76    ldx #$76
0A84: A0 0B    ldy #$0b
0A86: 4C AC 0A jmp $0aac
0A89: C9 8F    cmp #$8f
0A8B: D0 07    bne $0a94
0A8D: A2 81    ldx #$81
0A8F: A0 0B    ldy #$0b
0A91: 4C AC 0A jmp $0aac
0A94: C9 80    cmp #$80
0A96: 90 17    bcc $0aaf
0A98: C9 8A    cmp #$8a
0A9A: B0 13    bcs $0aaf
0A9C: 48       pha
0A9D: A9 66    lda #$66
0A9F: 20 EE FF jsr $ffee
0AA2: 68       pla
0AA3: 38       sec
0AA4: E9 50    sbc #$50
0AA6: 20 EE FF jsr $ffee
0AA9: 4C AF 0A jmp $0aaf
0AAC: 20 26 1A jsr $1a26
0AAF: A5 89    lda $89
0AB1: 60       rts
0AB2: 29 10    and #$10
0AB4: 12       kil
0AB5: 00       brk
0AB6: 04 19    nop $19
0AB8: 04 E0    nop $e0
0ABA: 01 B6    ora ($b6, x)
0ABC: 03 4B    slo ($4b, x)
0ABE: 20 45 20 jsr $2045
0AC1: 59 19 04 eor $0419, y
0AC4: 60       rts
0AC5: 00       brk
0AC6: 52       kil
0AC7: 03 53    slo ($53, x)
0AC9: 20 45 20 jsr $2045
0ACC: 4C 20 45 jmp $4520
0ACF: 20 43 20 jsr $2043
0AD2: 54 20    nop $20, x
0AD4: 49 20    eor #$20
0AD6: 4F 20 4E sre $4e20
0AD9: 12       kil
0ADA: 00       brk
0ADB: 02       kil
0ADC: 0C 19 04 nop $0419
0ADF: C4 00    cpy $00
0AE1: BC 02 55 ldy $5502, x
0AE4: 70 20    bvs $0b06
0AE6: 2E 2E 20 rol $202e
0AE9: 0E 19 04 asl $0419
0AEC: 40       rti
0AED: 00       brk
0AEE: 6C 02 44 jmp ($4402)
0AF1: 6F 77 6E rra $6e77
0AF4: 20 2E 2E jsr $2e2e
0AF7: 20 0E 19 jsr $190e
0AFA: 04 40    nop $40
0AFC: 00       brk
0AFD: 1C 02 4C nop $4c02, x
0B00: 65 66    adc $66
0B02: 74 20    nop $20, x
0B04: 2E 2E 20 rol $202e
0B07: 0F 19 04 slo $0419
0B0A: 00       brk
0B0B: 00       brk
0B0C: CC 01 52 cpy $5201
0B0F: 69 67    adc #$67
0B11: 68       pla
0B12: 74 20    nop $20, x
0B14: 2E 2E 20 rol $202e
0B17: 0E 19 04 asl $0419
0B1A: 40       rti
0B1B: 00       brk
0B1C: 7C 01 4A nop $4a01, x
0B1F: 75 6D    adc $6d, x
0B21: 70 20    bvs $0b43
0B23: 2E 2E 20 rol $202e
0B26: 03 54    slo ($54, x)
0B28: 61 62    adc ($62, x)
0B2A: 09 43    ora #$43
0B2C: 61 70    adc ($70, x)
0B2E: 73 20    rra ($20), y
0B30: 4C 6F 63 jmp $636f
0B33: 6B 0A    arr #$0a
0B35: 53 68    sre ($68), y
0B37: 69 66    adc #$66
0B39: 74 20    nop $20, x
0B3B: 4C 6F 63 jmp $636f
0B3E: 6B 06    arr #$06
0B40: 45 73    eor $73
0B42: 63 61    rra ($61, x)
0B44: 70 65    bvs $0bab
0B46: 05 53    ora $53
0B48: 70 61    bvs $0bab
0B4A: 63 65    rra ($65, x)
0B4C: 06 44    asl $44
0B4E: 65 6C    adc $6c
0B50: 65 74    adc $74
0B52: 65 06    adc $06
0B54: 52       kil
0B55: 65 74    adc $74
0B57: 75 72    adc $72, x
0B59: 6E 04 43 ror $4304
0B5C: 6F 70 79 rra $7970
0B5F: 0A       asl a
0B60: 4C 65 66 jmp $6665
0B63: 74 20    nop $20, x
0B65: 41 72    eor ($72, x)
0B67: 72       kil
0B68: 6F 77 0B rra $0b77
0B6B: 52       kil
0B6C: 69 67    adc #$67
0B6E: 68       pla
0B6F: 74 20    nop $20, x
0B71: 41 72    eor ($72, x)
0B73: 72       kil
0B74: 6F 77 0A rra $0a77
0B77: 44 6F    nop $6f
0B79: 77 6E    rra $6e, x
0B7B: 20 41 72 jsr $7241
0B7E: 72       kil
0B7F: 6F 77 08 rra $0877
0B82: 55 70    eor $70, x
0B84: 20 41 72 jsr $7241
0B87: 72       kil
0B88: 6F 77 05 rra $0577
0B8B: 53 68    sre ($68), y
0B8D: 69 66    adc #$66
0B8F: 74 07    nop $07, x
0B91: 43 6F    sre ($6f, x)
0B93: 6E 74 72 ror $7274
0B96: 6F 6C A2 rra $a26c
0B99: F8       sed
0B9A: A0 0B    ldy #$0b
0B9C: 20 26 1A jsr $1a26
0B9F: A9 AC    lda #$ac
0BA1: A2 00    ldx #$00
0BA3: A0 FF    ldy #$ff
0BA5: 20 F4 FF jsr $fff4
0BA8: 86 76    stx $76
0BAA: 84 77    sty $77
0BAC: A2 DC    ldx #$dc
0BAE: A0 0A    ldy #$0a
0BB0: 20 26 1A jsr $1a26
0BB3: A5 64    lda $64
0BB5: 20 F0 0B jsr $0bf0
0BB8: A2 E9    ldx #$e9
0BBA: A0 0A    ldy #$0a
0BBC: 20 26 1A jsr $1a26
0BBF: A5 63    lda $63
0BC1: 20 F0 0B jsr $0bf0
0BC4: A2 F8    ldx #$f8
0BC6: A0 0A    ldy #$0a
0BC8: 20 26 1A jsr $1a26
0BCB: A5 62    lda $62
0BCD: 20 F0 0B jsr $0bf0
0BD0: A2 07    ldx #$07
0BD2: A0 0B    ldy #$0b
0BD4: 20 26 1A jsr $1a26
0BD7: A5 61    lda $61
0BD9: 20 F0 0B jsr $0bf0
0BDC: A2 17    ldx #$17
0BDE: A0 0B    ldy #$0b
0BE0: 20 26 1A jsr $1a26
0BE3: A5 65    lda $65
0BE5: 20 F0 0B jsr $0bf0
0BE8: A2 09    ldx #$09
0BEA: A0 0C    ldy #$0c
0BEC: 20 26 1A jsr $1a26
0BEF: 60       rts
0BF0: 49 FF    eor #$ff
0BF2: AA       tax
0BF3: 85 88    sta $88
0BF5: 4C DC 09 jmp $09dc
0BF8: 10 19    bpl $0c13
0BFA: 04 00    nop $00
0BFC: 02       kil
0BFD: 20 03 12 jsr $1203
0C00: 00       brk
0C01: 04 4B    nop $4b
0C03: 45 59    eor $59
0C05: 53 12    sre ($12), y
0C07: 00       brk
0C08: 08       php
0C09: 2E 12 00 rol $0012
0C0C: 02       kil
0C0D: 19 04 40 ora $4004, y
0C10: 00       brk
0C11: 18       clc
0C12: 01 48    ora ($48, x)
0C14: 6F 6C 64 rra $646c
0C17: 20 2E 2E jsr $2e2e
0C1A: 20 27 48 jsr $4827
0C1D: 27 19    rla $19
0C1F: 04 00    nop $00
0C21: 00       brk
0C22: C8       iny
0C23: 00       brk
0C24: 41 62    eor ($62, x)
0C26: 6F 72 74 rra $7472
0C29: 20 2E 2E jsr $2e2e
0C2C: 20 45 73 jsr $7345
0C2F: 63 61    rra ($61, x)
0C31: 70 65    bvs $0c98
0C33: 20 2B 27 jsr $272b
0C36: 48       pha
0C37: 27 A5    rla $a5
0C39: 46 05    lsr $05
0C3B: 47 D0    sre $d0
0C3D: 01 60    ora ($60, x)
0C3F: A5 38    lda $38
0C41: 29 01    and #$01
0C43: F0 01    beq $0c46
0C45: 60       rts
0C46: A5 49    lda $49
0C48: D0 05    bne $0c4f
0C4A: A9 64    lda #$64
0C4C: 4C 8B 0C jmp $0c8b
0C4F: C9 01    cmp #$01
0C51: D0 05    bne $0c58
0C53: A9 96    lda #$96
0C55: 4C 8B 0C jmp $0c8b
0C58: C9 02    cmp #$02
0C5A: D0 1A    bne $0c76
0C5C: A5 4A    lda $4a
0C5E: C9 0B    cmp #$0b
0C60: 90 0A    bcc $0c6c
0C62: A9 BE    lda #$be
0C64: 38       sec
0C65: E5 4A    sbc $4a
0C67: E5 4A    sbc $4a
0C69: 4C 8B 0C jmp $0c8b
0C6C: A9 96    lda #$96
0C6E: 18       clc
0C6F: 65 4A    adc $4a
0C71: 65 4A    adc $4a
0C73: 4C 8B 0C jmp $0c8b
0C76: C9 03    cmp #$03
0C78: D0 0A    bne $0c84
0C7A: A9 6E    lda #$6e
0C7C: 38       sec
0C7D: E5 4A    sbc $4a
0C7F: E5 4A    sbc $4a
0C81: 4C 8B 0C jmp $0c8b
0C84: A5 46    lda $46
0C86: D0 01    bne $0c89
0C88: 60       rts
0C89: A9 64    lda #$64
0C8B: 8D 9C 0C sta $0c9c
0C8E: A2 98    ldx #$98
0C90: A0 0C    ldy #$0c
0C92: A9 07    lda #$07
0C94: 20 F1 FF jsr $fff1
0C97: 60       rts
0C98: 13 00    slo ($00), y
0C9A: 01 00    ora ($00, x)
0C9C: 00       brk
0C9D: 00       brk
0C9E: 01 00    ora ($00, x)
0CA0: 03 00    slo ($00, x)
0CA2: 02       kil
0CA3: 00       brk
0CA4: 78       sei
0CA5: 00       brk
0CA6: 1E 00 10 asl $1000, x
0CA9: 00       brk
0CAA: 03 00    slo ($00, x)
0CAC: 00       brk
0CAD: 00       brk
0CAE: 04 00    nop $00
0CB0: 10 00    bpl $0cb2
0CB2: 01 00    ora ($00, x)
0CB4: 04 00    nop $00
0CB6: 01 00    ora ($00, x)
0CB8: 00       brk
0CB9: 00       brk
0CBA: 00       brk
0CBB: 00       brk
0CBC: 00       brk
0CBD: 00       brk
0CBE: 00       brk
0CBF: 00       brk
0CC0: D0 0C    bne $0cce
0CC2: 3E 0D B2 rol $b20d, x
0CC5: 0D 4B 0E ora $0e4b
0CC8: DC 0E 6C nop $6c0e, x
0CCB: 0F E8 0F slo $0fe8
0CCE: 72       kil
0CCF: 10 0D    bpl $0cde
0CD1: 04 00    nop $00
0CD3: 0A       asl a
0CD4: 02       kil
0CD5: 01 00    ora ($00, x)
0CD7: 13 06    slo ($06), y
0CD9: 01 12    ora ($12, x)
0CDB: 0B 02    anc #$02
0CDD: 08       php
0CDE: 0B 0E    anc #$0e
0CE0: 12       kil
0CE1: 0C 09 0A nop $0a09
0CE4: 0D 0B 0C ora $0c0b
0CE7: 0E 0D 0E asl $0e0d
0CEA: 0F 0F 10 slo $100f
0CED: 10 03    bpl $0cf2
0CEF: 07 11    slo $11
0CF1: 09 0B    ora #$0b
0CF3: 15 05    ora $05, x
0CF5: 09 15    ora #$15
0CF7: 0B 10    anc #$10
0CF9: 15 12    ora $12, x
0CFB: 13 03    slo ($03), y
0CFD: 07 0D    slo $0d
0CFF: 07 02    slo $02
0D01: 17 0B    slo $0b, x
0D03: 02       kil
0D04: 08       php
0D05: 10 02    bpl $0d09
0D07: 08       php
0D08: 04 02    nop $02
0D0A: 01 07    ora ($07, x)
0D0C: 0D 07 12 ora $1207
0D0F: 07 02    slo $02
0D11: 0C 0A 0D nop $0d0a
0D14: 11 0C    ora ($0c), y
0D16: 04 11    nop $11
0D18: 0A       asl a
0D19: 12       kil
0D1A: 06 16    asl $16
0D1C: 0D 16 13 ora $1316
0D1F: 16 02    asl $02, x
0D21: 02       kil
0D22: 0D 02 05 ora $0502
0D25: 07 0E    slo $0e
0D27: 07 05    slo $05
0D29: 0C 0F 0C nop $0c0f
0D2C: 10 10    bpl $0d3e
0D2E: 0B 12    anc #$12
0D30: 09 16    ora #$16
0D32: 0E 16 05 asl $0516
0D35: 11 08    ora ($08), y
0D37: 16 04    asl $04, x
0D39: 0C 06 07 nop $0706
0D3C: 0C 02 0D nop $0d02
0D3F: 08       php
0D40: 00       brk
0D41: 07 03    slo $03
0D43: 01 00    ora ($00, x)
0D45: 03 01    slo ($01, x)
0D47: 05 13    ora $13
0D49: 06 00    asl $00
0D4B: 06 06    asl $06
0D4D: 08       php
0D4E: 0A       asl a
0D4F: 06 0C    asl $0c
0D51: 0E 06 10 asl $1006
0D54: 13 0B    slo ($0b), y
0D56: 00       brk
0D57: 03 0B    slo ($0b, x)
0D59: 05 0E    ora $0e
0D5B: 0B 10    anc #$10
0D5D: 13 10    slo ($10), y
0D5F: 00       brk
0D60: 0A       asl a
0D61: 10 0C    bpl $0d6f
0D63: 13 15    slo ($15), y
0D65: 04 0A    nop $0a
0D67: 15 0C    ora $0c, x
0D69: 13 02    slo ($02), y
0D6B: 02       kil
0D6C: 12       kil
0D6D: 04 11    nop $11
0D6F: 17 06    slo $06, x
0D71: 07 12    slo $12
0D73: 09 02    ora #$02
0D75: 08       php
0D76: 09 0C    ora #$0c
0D78: 17 0D    slo $0d, x
0D7A: 0C 12 11 nop $1112
0D7D: 02       kil
0D7E: 0D 11 11 ora $1111
0D81: 17 05    slo $05, x
0D83: 02       kil
0D84: 0C 02 00 nop $0002
0D87: 07 04    slo $04
0D89: 07 0D    slo $0d
0D8B: 07 00    slo $00
0D8D: 0C 07 0C nop $0c07
0D90: 13 0C    slo ($0c), y
0D92: 07 11    slo $11
0D94: 07 16    slo $16
0D96: 0F 16 13 slo $1316
0D99: 16 00    asl $00, x
0D9B: 02       kil
0D9C: 03 02    slo ($02, x)
0D9E: 0F 02 10 slo $1002
0DA1: 07 00    slo $00
0DA3: 11 0A    ora ($0a), y
0DA5: 11 0C    ora ($0c), y
0DA7: 16 06    asl $06, x
0DA9: 16 01    asl $01, x
0DAB: 02       kil
0DAC: 12       kil
0DAD: 0C 0B 0C nop $0c0b
0DB0: 0D 16 18 ora $1816
0DB3: 07 01    slo $01
0DB5: 0A       asl a
0DB6: 03 01    slo ($01, x)
0DB8: 00       brk
0DB9: 02       kil
0DBA: 02       kil
0DBB: 03 04    slo ($04, x)
0DBD: 01 07    ora ($07, x)
0DBF: 09 01    ora #$01
0DC1: 0B 13    anc #$13
0DC3: 05 0F    ora $0f
0DC5: 12       kil
0DC6: 0A       asl a
0DC7: 00       brk
0DC8: 04 0F    nop $0f
0DCA: 00       brk
0DCB: 03 13    slo ($13, x)
0DCD: 03 04    slo ($04, x)
0DCF: 06 07    asl $07
0DD1: 0A       asl a
0DD2: 06 0C    asl $0c
0DD4: 0C 07 0E nop $0e07
0DD7: 0E 08 0F asl $0f08
0DDA: 0F 09 11 slo $1109
0DDD: 11 0A    ora ($0a), y
0DDF: 12       kil
0DE0: 13 0C    slo ($0c), y
0DE2: 0C 0D 0C nop $0c0d
0DE5: 0F 0F 0F slo $0f0f
0DE8: 12       kil
0DE9: 13 10    slo ($10), y
0DEB: 11 11    ora ($11), y
0DED: 11 0F    ora ($0f), y
0DEF: 0F 12 0C slo $0c12
0DF2: 0D 13 07 ora $0713
0DF5: 0B 15    anc #$15
0DF7: 0D 0F 14 ora $140f
0DFA: 10 10    bpl $0e0c
0DFC: 14 12    nop $12, x
0DFE: 13 01    slo ($01), y
0E00: 02       kil
0E01: 0C 03 0B nop $0b03
0E04: 15 08    ora $08, x
0E06: 07 15    slo $15
0E08: 0A       asl a
0E09: 07 15    slo $15
0E0B: 0D 13 17 ora $1713
0E0E: 12       kil
0E0F: 02       kil
0E10: 07 13    slo $13
0E12: 0B 11    anc #$11
0E14: 05 04    ora $04
0E16: 03 0F    slo ($0f, x)
0E18: 02       kil
0E19: 10 06    bpl $0e21
0E1B: 04 0B    nop $0b
0E1D: 04 14    nop $14
0E1F: 09 07    ora #$07
0E21: 0F 09 0F slo $0f09
0E24: 0D 01 10 ora $1001
0E27: 11 11    ora ($11), y
0E29: 13 12    slo ($12), y
0E2B: 13 15    slo ($15), y
0E2D: 02       kil
0E2E: 02       kil
0E2F: 02       kil
0E30: 0B 07    anc #$07
0E32: 07 07    slo $07
0E34: 14 00    nop $00, x
0E36: 10 0D    bpl $0e45
0E38: 02       kil
0E39: 0C 13 0F nop $0f13
0E3C: 12       kil
0E3D: 0D 0D 12 ora $120d
0E40: 15 02    ora $02, x
0E42: 10 09    bpl $0e4d
0E44: 14 11    nop $11, x
0E46: 06 00    asl $00
0E48: 02       kil
0E49: 08       php
0E4A: 07 1A    slo $1a
0E4C: 05 01    ora $01
0E4E: 06 04    asl $04
0E50: 01 00    ora ($00, x)
0E52: 04 01    nop $01
0E54: 06 0A    asl $0a
0E56: 01 0D    ora ($0d, x)
0E58: 13 06    slo ($06), y
0E5A: 00       brk
0E5B: 04 06    nop $06
0E5D: 07 0A    slo $0a
0E5F: 06 0D    asl $0d
0E61: 11 05    ora ($05), y
0E63: 13 13    slo ($13), y
0E65: 0C 00 01 nop $0100
0E68: 0D 03 03 ora $0303
0E6B: 0E 05 05 asl $0505
0E6E: 0F 07 08 slo $0807
0E71: 0B 07    anc #$07
0E73: 08       php
0E74: 0B 0D    anc #$0d
0E76: 10 0A    bpl $0e82
0E78: 12       kil
0E79: 13 10    slo ($10), y
0E7B: 08       php
0E7C: 0A       asl a
0E7D: 11 00    ora ($00), y
0E7F: 00       brk
0E80: 12       kil
0E81: 02       kil
0E82: 02       kil
0E83: 13 03    slo ($03), y
0E85: 03 14    slo ($14, x)
0E87: 04 04    nop $04
0E89: 15 05    ora $05, x
0E8B: 05 15    ora $15
0E8D: 07 0A    slo $0a
0E8F: 10 0D    bpl $0e9e
0E91: 0E 10 10 asl $1010
0E94: 10 10    bpl $0ea6
0E96: 12       kil
0E97: 13 15    slo ($15), y
0E99: 0D 0F 15 ora $150f
0E9C: 11 13    ora ($13), y
0E9E: 03 02    slo ($02, x)
0EA0: 08       php
0EA1: 08       php
0EA2: 02       kil
0EA3: 17 0E    slo $0e, x
0EA5: 0C 17 0F nop $0f17
0EA8: 02       kil
0EA9: 08       php
0EAA: 13 10    slo ($10), y
0EAC: 17 0B    slo $0b, x
0EAE: 00       brk
0EAF: 02       kil
0EB0: 00       brk
0EB1: 0D 00 12 ora $1200
0EB4: 07 07    slo $07
0EB6: 09 11    ora #$11
0EB8: 0D 02 10 ora $1002
0EBB: 07 0D    slo $0d
0EBD: 0C 13 0B nop $0b13
0EC0: 11 10    ora ($10), y
0EC2: 10 15    bpl $0ed9
0EC4: 10 18    bpl $0ede
0EC6: 00       brk
0EC7: 07 0A    slo $0a
0EC9: 02       kil
0ECA: 12       kil
0ECB: 02       kil
0ECC: 05 0F    ora $0f
0ECE: 09 16    ora #$16
0ED0: 0D 16 0A ora $0a16
0ED3: 16 11    asl $11, x
0ED5: 16 11    asl $11, x
0ED7: 02       kil
0ED8: 04 02    nop $02
0EDA: 0A       asl a
0EDB: 07 11    slo $11
0EDD: 09 01    ora #$01
0EDF: 0D 04 01 ora $0104
0EE2: 00       brk
0EE3: 01 01    ora ($01, x)
0EE5: 03 0B    slo ($0b, x)
0EE7: 01 0D    ora ($0d, x)
0EE9: 0F 01 12 slo $1201
0EEC: 13 06    slo ($06), y
0EEE: 00       brk
0EEF: 05 06    ora $06
0EF1: 09 0C    ora #$0c
0EF3: 06 0E    asl $0e
0EF5: 0F 0B 00 slo $000b
0EF8: 05 0B    ora $0b
0EFA: 0A       asl a
0EFB: 0F 0B 13 slo $130b
0EFE: 13 10    slo ($10), y
0F00: 00       brk
0F01: 05 15    ora $15
0F03: 03 07    slo ($07, x)
0F05: 14 09    nop $09, x
0F07: 09 13    ora #$13
0F09: 0B 0D    anc #$0d
0F0B: 12       kil
0F0C: 0E 0E 16 asl $160e
0F0F: 0C 0F 15 nop $150f
0F12: 12       kil
0F13: 13 03    slo ($03), y
0F15: 02       kil
0F16: 08       php
0F17: 02       kil
0F18: 0C 12 04 nop $0412
0F1B: 0C 17 07 nop $0717
0F1E: 02       kil
0F1F: 07 07    slo $07
0F21: 0A       asl a
0F22: 11 0A    ora ($0a), y
0F24: 02       kil
0F25: 08       php
0F26: 0C 07 0D nop $0d07
0F29: 0C 14 18 nop $1814
0F2C: 0E 02 08 asl $0802
0F2F: 10 00    bpl $0f31
0F31: 02       kil
0F32: 00       brk
0F33: 07 00    slo $00
0F35: 0C 00 11 nop $1100
0F38: 05 07    ora $07
0F3A: 05 16    ora $16
0F3C: 09 0B    ora #$0b
0F3E: 0D 06 0B ora $0b06
0F41: 14 0D    nop $0d, x
0F43: 17 13    slo $13, x
0F45: 0C 13 16 nop $1613
0F48: 04 02    nop $02
0F4A: 05 02    ora $02
0F4C: 06 02    asl $02
0F4E: 0D 02 0F ora $0f02
0F51: 02       kil
0F52: 12       kil
0F53: 02       kil
0F54: 0A       asl a
0F55: 0C 0F 0C nop $0c0f
0F58: 03 16    slo ($16, x)
0F5A: 06 16    asl $16
0F5C: 07 16    slo $16
0F5E: 0F 17 12 slo $1217
0F61: 16 01    asl $01, x
0F63: 07 03    slo $03
0F65: 0C 01 11 nop $1101
0F68: 0E 0C 0F asl $0f0c
0F6B: 07 10    slo $10
0F6D: 06 01    asl $01
0F6F: 09 04    ora #$04
0F71: 01 00    ora ($00, x)
0F73: 02       kil
0F74: 01 06    ora ($06, x)
0F76: 08       php
0F77: 01 0B    ora ($0b, x)
0F79: 0E 06 00 asl $0006
0F7C: 01 06    ora ($06, x)
0F7E: 03 05    slo ($05, x)
0F80: 06 0C    asl $0c
0F82: 0E 0B 02 asl $020b
0F85: 07 0B    slo $0b
0F87: 0C 11 0A nop $0a11
0F8A: 11 13    ora ($13), y
0F8C: 10 00    bpl $0f8e
0F8E: 05 10    ora $10
0F90: 10 13    bpl $0fa5
0F92: 15 06    ora $06, x
0F94: 06 15    asl $15
0F96: 08       php
0F97: 08       php
0F98: 14 0C    nop $0c, x
0F9A: 11 16    ora ($16), y
0F9C: 11 13    ora ($13), y
0F9E: 02       kil
0F9F: 11 11    ora ($11), y
0FA1: 00       brk
0FA2: 02       kil
0FA3: 08       php
0FA4: 04 04    nop $04
0FA6: 12       kil
0FA7: 0E 07 0D asl $0d07
0FAA: 0E 13 17 asl $1713
0FAD: 11 02    ora ($02), y
0FAF: 0D 11 10 ora $1011
0FB2: 18       clc
0FB3: 09 02    ora #$02
0FB5: 02       kil
0FB6: 10 02    bpl $0fba
0FB8: 05 07    ora $07
0FBA: 0C 07 0C nop $0c07
0FBD: 0C 10 0C nop $0c10
0FC0: 07 11    slo $11
0FC2: 03 15    slo ($15, x)
0FC4: 06 16    asl $16
0FC6: 0C 15 13 nop $1315
0FC9: 11 13    ora ($13), y
0FCB: 17 0B    slo $0b, x
0FCD: 02       kil
0FCE: 0C 02 0D nop $0d02
0FD1: 02       kil
0FD2: 0E 02 00 asl $0002
0FD5: 11 02    ora ($02), y
0FD7: 11 03    ora ($03), y
0FD9: 11 07    ora ($07), y
0FDB: 0C 13 0B nop $0b13
0FDE: 01 11    ora ($11, x)
0FE0: 01 02    ora ($02, x)
0FE2: 12       kil
0FE3: 11 0D    ora ($0d), y
0FE5: 07 12    slo $12
0FE7: 0B 17    anc #$17
0FE9: 07 01    slo $01
0FEB: 04 03    nop $03
0FED: 15 0B    ora $0b, x
0FEF: 10 10    bpl $1001
0FF1: 00       brk
0FF2: 04 10    nop $10
0FF4: 06 07    asl $07
0FF6: 0B 00    anc #$00
0FF8: 02       kil
0FF9: 06 01    asl $01
0FFB: 03 04    slo ($04, x)
0FFD: 00       brk
0FFE: 01 01    ora ($01, x)
1000: 03 04    slo ($04, x)
1002: 02       kil
1003: 05 06    ora $06
1005: 01 07    ora ($07, x)
1007: 08       php
1008: 02       kil
1009: 09 09    ora #$09
100B: 03 09    slo ($09, x)
100D: 09 03    ora #$03
100F: 0C 0C 08 nop $080c
1012: 05 08    ora $08
1014: 09 05    ora #$05
1016: 05 0A    ora $0a
1018: 05 05    ora $05
101A: 0B 05    anc #$05
101C: 05 0C    ora $0c
101E: 05 05    ora $05
1020: 0B 08    anc #$08
1022: 08       php
1023: 0C 08 08 nop $0808
1026: 0F 0C 0F slo $0f0c
1029: 0B 0A    anc #$0a
102B: 0B 09    anc #$09
102D: 0E 10 02 asl $0210
1030: 0F 10 01 slo $0110
1033: 02       kil
1034: 12       kil
1035: 03 02    slo ($02, x)
1037: 08       php
1038: 05 14    ora $14
103A: 18       clc
103B: 07 14    slo $14
103D: 18       clc
103E: 09 14    ora #$14
1040: 18       clc
1041: 0D 10 17 ora $1710
1044: 0F 0A 11 slo $110a
1047: 12       kil
1048: 06 17    asl $17
104A: 08       php
104B: 17 0A    slo $0a, x
104D: 17 0F    slo $0f, x
104F: 16 07    asl $07, x
1051: 11 02    ora ($02), y
1053: 03 07    slo ($07, x)
1055: 09 0B    ora #$0b
1057: 0C 10 0F nop $0f10
105A: 10 0A    bpl $1066
105C: 0C 04 11 nop $1104
105F: 02       kil
1060: 02       kil
1061: 07 03    slo $03
1063: 11 08    ora ($08), y
1065: 09 0C    ora #$0c
1067: 16 0D    asl $0d, x
1069: 16 01    asl $01, x
106B: 11 0E    ora ($0e), y
106D: 0A       asl a
106E: 00       brk
106F: 05 02    ora $02
1071: 0C 0F 06 nop $060f
1074: 00       brk
1075: 10 03    bpl $107a
1077: 01 00    ora ($00, x)
1079: 13 06    slo ($06), y
107B: 02       kil
107C: 04 06    nop $06
107E: 07 0D    slo $0d
1080: 06 10    asl $10
1082: 12       kil
1083: 0B 02    anc #$02
1085: 05 0B    ora $0b
1087: 08       php
1088: 0C 0B 0F nop $0f0b
108B: 12       kil
108C: 10 03    bpl $1091
108E: 06 10    asl $10
1090: 09 0B    ora #$0b
1092: 10 0E    bpl $10a2
1094: 11 15    ora ($15), y
1096: 03 03    slo ($03, x)
1098: 15 06    ora $06, x
109A: 06 15    asl $15
109C: 08       php
109D: 0C 15 0E nop $0e15
10A0: 0E 15 11 asl $1115
10A3: 11 03    ora ($03), y
10A5: 02       kil
10A6: 08       php
10A7: 11 02    ora ($02), y
10A9: 08       php
10AA: 0A       asl a
10AB: 07 0D    slo $0d
10AD: 04 0C    nop $0c
10AF: 12       kil
10B0: 10 0C    bpl $10be
10B2: 12       kil
10B3: 0A       asl a
10B4: 11 17    ora ($17), y
10B6: 05 06    ora $06
10B8: 0F 06 06 slo $0606
10BB: 0B 0E    anc #$0e
10BD: 0B 08    anc #$08
10BF: 10 0C    bpl $10cd
10C1: 10 05    bpl $10c8
10C3: 15 0F    ora $0f, x
10C5: 15 07    ora $07, x
10C7: 15 0D    ora $0d, x
10C9: 15 03    ora $03, x
10CB: 18       clc
10CC: 11 18    ora ($18), y
10CE: 01 02    ora ($02, x)
10D0: 02       kil
10D1: 02       kil
10D2: 04 02    nop $02
10D4: 05 02    ora $02
10D6: 06 02    asl $02
10D8: 08       php
10D9: 02       kil
10DA: 09 02    ora #$02
10DC: 0A       asl a
10DD: 02       kil
10DE: 0B 02    anc #$02
10E0: 0C 02 0D nop $0d02
10E3: 02       kil
10E4: 0E 02 0F asl $0f02
10E7: 02       kil
10E8: 10 02    bpl $10ec
10EA: 12       kil
10EB: 02       kil
10EC: 13 02    slo ($02), y
10EE: 11 02    ora ($02), y
10F0: 0A       asl a
10F1: 0C 0A 16 nop $160a
10F4: 03 11    slo ($11, x)
10F6: 11 11    ora ($11), y
10F8: 55 42    eor $42, x
10FA: 28       plp
10FB: 34 29    nop $29, x
10FD: 3A       nop
10FE: 20 45 96 jsr $9645
1101: 18       clc
1102: 00       brk
1103: 36 08    rol $08, x
1105: 08       php
1106: 00       brk
1107: 12       kil
1108: 08       php
1109: 08       php
110A: 08       php
110B: 12       kil
110C: 08       php
110D: 08       php
110E: 10 12    bpl $1122
1110: 08       php
1111: 08       php
1112: 18       clc
1113: 12       kil
1114: 10 04    bpl $111a
1116: 20 12 08 jsr $0812
1119: 10 28    bpl $1143
111B: 12       kil
111C: 08       php
111D: 10 38    bpl $1157
111F: 12       kil
1120: 08       php
1121: 10 48    bpl $116b
1123: 12       kil
1124: 08       php
1125: 10 58    bpl $117f
1127: 12       kil
1128: 08       php
1129: 10 68    bpl $1193
112B: 12       kil
112C: 08       php
112D: 10 78    bpl $11a7
112F: 12       kil
1130: 08       php
1131: 10 88    bpl $10bb
1133: 12       kil
1134: 08       php
1135: 12       kil
1136: 98       tya
1137: 12       kil
1138: 08       php
1139: 12       kil
113A: AA       tax
113B: 12       kil
113C: 10 18    bpl $1156
113E: BC 12 10 ldy $1012, x
1141: 18       clc
1142: EC 12 10 cpx $1012
1145: 18       clc
1146: 1C 13 10 nop $1013, x
1149: 18       clc
114A: 4C 13 18 jmp $1813
114D: 30 7C    bmi $11cb
114F: 13 18    slo ($18), y
1151: 30 0C    bmi $115f
1153: 14 08    nop $08, x
1155: 14 9C    nop $9c, x
1157: 14 08    nop $08, x
1159: 14 B0    nop $b0, x
115B: 14 08    nop $08, x
115D: 14 C4    nop $c4, x
115F: 14 08    nop $08, x
1161: 14 D8    nop $d8, x
1163: 14 08    nop $08, x
1165: 14 EC    nop $ec, x
1167: 14 08    nop $08, x
1169: 16 00    asl $00, x
116B: 15 10    ora $10, x
116D: 14 16    nop $16, x
116F: 15 10    ora $10, x
1171: 14 3E    nop $3e, x
1173: 15 10    ora $10, x
1175: 14 66    nop $66, x
1177: 15 10    ora $10, x
1179: 14 8E    nop $8e, x
117B: 15 08    ora $08, x
117D: 07 B6    slo $b6
117F: 15 08    ora $08, x
1181: 07 BD    slo $bd
1183: 15 08    ora $08, x
1185: 07 C4    slo $c4
1187: 15 08    ora $08, x
1189: 07 CB    slo $cb
118B: 15 08    ora $08, x
118D: 07 D2    slo $d2
118F: 15 08    ora $08, x
1191: 07 D9    slo $d9
1193: 15 08    ora $08, x
1195: 07 E0    slo $e0
1197: 15 08    ora $08, x
1199: 07 E7    slo $e7
119B: 15 08    ora $08, x
119D: 07 EE    slo $ee
119F: 15 08    ora $08, x
11A1: 07 F5    slo $f5
11A3: 15 18    ora $18, x
11A5: 09 FC    ora #$fc
11A7: 15 20    ora $20, x
11A9: 09 17    ora #$17
11AB: 16 20    asl $20, x
11AD: 09 3B    ora #$3b
11AF: 16 28    asl $28, x
11B1: 09 5F    ora #$5f
11B3: 16 30    asl $30, x
11B5: 09 8C    ora #$8c
11B7: 16 28    asl $28, x
11B9: 09 C2    ora #$c2
11BB: 16 08    asl $08, x
11BD: 03 EF    slo ($ef, x)
11BF: 16 10    asl $10, x
11C1: 1E F2 16 asl $16f2, x
11C4: 10 1E    bpl $11e4
11C6: 2E 17 10 rol $1017
11C9: 1E 6A 17 asl $176a, x
11CC: 10 1E    bpl $11ec
11CE: A6 17    ldx $17
11D0: 10 1E    bpl $11f0
11D2: E2 17    nop #$17
11D4: 10 1E    bpl $11f4
11D6: 1E 18 10 asl $1018, x
11D9: 1E 5A 18 asl $185a, x
11DC: 00       brk
11DD: 00       brk
11DE: 00       brk
11DF: 00       brk
11E0: 00       brk
11E1: 00       brk
11E2: 00       brk
11E3: 00       brk
11E4: 00       brk
11E5: 00       brk
11E6: 00       brk
11E7: 00       brk
11E8: 00       brk
11E9: 00       brk
11EA: 00       brk
11EB: 00       brk
11EC: 00       brk
11ED: 00       brk
11EE: 00       brk
11EF: 00       brk
11F0: 00       brk
11F1: 00       brk
11F2: 00       brk
11F3: 00       brk
11F4: 00       brk
11F5: 00       brk
11F6: 00       brk
11F7: 00       brk
11F8: 00       brk
11F9: 00       brk
11FA: 00       brk
11FB: 00       brk
11FC: 00       brk
11FD: 00       brk
11FE: 00       brk
11FF: 00       brk
1200: FB 00 BF isb $bf00, y
1203: 00       brk
1204: EF 00 00 isb $0000
1207: 00       brk
1208: 42       kil
1209: 42       kil
120A: 42       kil
120B: 42       kil
120C: 7E 42 42 ror $4242, x
120F: 42       kil
1210: 00       brk
1211: 38       sec
1212: 6C 5E 7E jmp ($7e5e)
1215: 7C 38 00 nop $0038, x
1218: 00       brk
1219: 00       brk
121A: 00       brk
121B: 08       php
121C: 14 2A    nop $2a, x
121E: 55 00    eor $00, x
1220: 1F F8 1F slo $1ff8, x
1223: F8       sed
1224: 1B D8 11 slo $11d8, y
1227: 88       dey
1228: 18       clc
1229: 3C FF 34 nop $34ff, x
122C: 3C 10 18 nop $1810, x
122F: 3C 6E 6E nop $6e6e, x
1232: 6E 6E 3C ror $3c6e
1235: 18       clc
1236: 10 18    bpl $1250
1238: 18       clc
1239: 3C FF 34 nop $34ff, x
123C: 3C 10 18 nop $1810, x
123F: 3C 6E 6E nop $6e6e, x
1242: 76 76    ror $76, x
1244: 3C 38 4A nop $4a38, x
1247: 24 18    bit $18
1249: 3C FF 34 nop $34ff, x
124C: 3C 10 18 nop $1810, x
124F: 3C 6E 6E nop $6e6e, x
1252: 5E 5E 3C lsr $3c5e, x
1255: 38       sec
1256: 4A       lsr a
1257: 24 18    bit $18
1259: 3C FF 2C nop $2cff, x
125C: 3C 08 18 nop $1808, x
125F: 3C 76 76 nop $7676, x
1262: 76 76    ror $76, x
1264: 3C 18 08 nop $0818, x
1267: 18       clc
1268: 18       clc
1269: 3C FF 2C nop $2cff, x
126C: 3C 08 18 nop $1808, x
126F: 3C 76 76 nop $7676, x
1272: 6E 6E 3C ror $3c6e
1275: 1C 52 24 nop $2452, x
1278: 18       clc
1279: 3C FF 2C nop $2cff, x
127C: 3C 08 18 nop $1808, x
127F: 3C 76 76 nop $7676, x
1282: 7A       nop
1283: 7A       nop
1284: 3C 1C 52 nop $521c, x
1287: 24 18    bit $18
1289: 3C FF 3C nop $3cff, x
128C: 3C 18 18 nop $1818, x
128F: BD FF 7E lda $7eff, x
1292: 7E 7E 3C ror $3c7e, x
1295: 24 24    bit $24
1297: 66 18    ror $18
1299: 3C FF 3C nop $3cff, x
129C: 3D 19 19 and $1919, x
129F: 3D FF FE and $feff, x
12A2: FE FE BC inc $bcfe, x
12A5: 3E 20 20 rol $2020, x
12A8: 20 60 18 jsr $1860
12AB: 3C FF 3C nop $3cff, x
12AE: BC 98 98 ldy $9898, x
12B1: BC FF 7F ldy $7fff, x
12B4: 7F 7F 3D rra $3d7f, x
12B7: 7C 04 04 nop $0404, x
12BA: 04 06    nop $06
12BC: 00       brk
12BD: 70 00    bvs $12bf
12BF: F8       sed
12C0: 01 E8    ora ($e8, x)
12C2: 01 EF    ora ($ef, x)
12C4: 01 FF    ora ($ff, x)
12C6: 01 F8    ora ($f8, x)
12C8: 00       brk
12C9: F0 00    beq $12cb
12CB: E0 00    cpx #$00
12CD: 60       rts
12CE: 0E 70 1F asl $1f70
12D1: 70 3F    bvs $1312
12D3: F8       sed
12D4: 7F F8 FF rra $fff8, x
12D7: 78       sei
12D8: FF B8 BF isb $bfb8, x
12DB: BC BF BC ldy $bcbf, x
12DE: DF BC 6F dcp $6fbc, x
12E1: 7C 76 FC nop $fc76, x
12E4: 39 F8 1F and $1ff8, y
12E7: F8       sed
12E8: 0F F0 03 slo $03f0
12EB: E0 00    cpx #$00
12ED: 70 00    bvs $12ef
12EF: F9 01 EA sbc $ea01, y
12F2: 01 EC    ora ($ec, x)
12F4: 01 FC    ora ($fc, x)
12F6: 01 FA    ora ($fa, x)
12F8: 00       brk
12F9: F1 00    sbc ($00), y
12FB: E0 00    cpx #$00
12FD: 60       rts
12FE: 0E 70 1F asl $1f70
1301: 70 3F    bvs $1342
1303: F8       sed
1304: 71 F8    adc ($f8), y
1306: EE 78 DF inc $df78
1309: B8       clv
130A: BF FC FF lax $fffc, y
130D: FC FF FC nop $fcff, x
1310: 7F FC 7F rra $7ffc, x
1313: FC 3F F8 nop $f83f, x
1316: 1F F8 0F slo $0ff8, x
1319: F0 03    beq $131e
131B: E0 0E    cpx #$0e
131D: 00       brk
131E: 1F 00 17 slo $1700, x
1321: 80 F7    nop #$f7
1323: 80 FF    nop #$ff
1325: 80 1F    nop #$1f
1327: 80 0F    nop #$0f
1329: 00       brk
132A: 07 00    slo $00
132C: 06 00    asl $00
132E: 0E 70 0E asl $0e70
1331: F8       sed
1332: 1F FC 1F slo $1ffc, x
1335: FE 1E FF inc $ff1e, x
1338: 1D FF 3D ora $3dff, x
133B: FD 3D FD sbc $fd3d, x
133E: 3D FB 3E and $3efb, x
1341: F6 3F    inc $3f, x
1343: 6E 1F 9C ror $9c1f
1346: 1F F8 0F slo $0ff8, x
1349: F0 07    beq $1352
134B: C0 0E    cpy #$0e
134D: 00       brk
134E: 9F 00 57 sha $5700, y
1351: 80 37    nop #$37
1353: 80 3F    nop #$3f
1355: 80 5F    nop #$5f
1357: 80 8F    nop #$8f
1359: 00       brk
135A: 07 00    slo $00
135C: 06 00    asl $00
135E: 0E 70 0E asl $0e70
1361: F8       sed
1362: 1F FC 1F slo $1ffc, x
1365: 8E 1E 77 stx $771e
1368: 1D FB 3F ora $3ffb, x
136B: FD 3F FF sbc $ff3f, x
136E: 3F FF 3F rla $3fff, x
1371: FE 3F FE inc $fe3f, x
1374: 1F FC 1F slo $1ffc, x
1377: F8       sed
1378: 0F F0 07 slo $07f0
137B: C0 00    cpy #$00
137D: 38       sec
137E: 00       brk
137F: 00       brk
1380: 44 00    nop $00
1382: 00       brk
1383: 44 00    nop $00
1385: 00       brk
1386: 44 00    nop $00
1388: 00       brk
1389: 38       sec
138A: 00       brk
138B: 00       brk
138C: 10 00    bpl $138e
138E: 00       brk
138F: FE 00 03 inc $0300, x
1392: 7D 80 0C adc $0c80, x
1395: D6 60    dec $60, x
1397: 11 55    ora ($55), y
1399: 10 22    bpl $13bd
139B: 54 88    nop $88, x
139D: 24 92    bit $92
139F: 48       pha
13A0: 44 92    nop $92
13A2: 44 48    nop $48
13A4: 92       kil
13A5: 24 88    bit $88
13A7: 92       kil
13A8: 22       kil
13A9: 89 11    nop #$11
13AB: 22       kil
13AC: D1 10    cmp ($10), y
13AE: 16 B1    asl $b1, x
13B0: 10 0A    bpl $13bc
13B2: 99 00 02 sta $0200, y
13B5: 97 00    sax $00, y
13B7: 02       kil
13B8: 91 E0    sta ($e0), y
13BA: 02       kil
13BB: 91 00    sta ($00), y
13BD: 02       kil
13BE: 91 10    sta ($10), y
13C0: 02       kil
13C1: 91 10    sta ($10), y
13C3: 12       kil
13C4: 91 10    sta ($10), y
13C6: 12       kil
13C7: 91 10    sta ($10), y
13C9: 12       kil
13CA: 90 00    bcc $13cc
13CC: 12       kil
13CD: 90 00    bcc $13cf
13CF: 12       kil
13D0: 90 00    bcc $13d2
13D2: 12       kil
13D3: D0 00    bne $13d5
13D5: 16 B0    asl $b0, x
13D7: 00       brk
13D8: 1A       nop
13D9: 90 00    bcc $13db
13DB: 32       kil
13DC: 90 00    bcc $13de
13DE: 12       kil
13DF: 90 00    bcc $13e1
13E1: 12       kil
13E2: 90 00    bcc $13e4
13E4: 12       kil
13E5: 90 00    bcc $13e7
13E7: 12       kil
13E8: 90 00    bcc $13ea
13EA: 12       kil
13EB: 90 00    bcc $13ed
13ED: 12       kil
13EE: 91 00    sta ($00), y
13F0: 12       kil
13F1: 91 01    sta ($01), y
13F3: 12       kil
13F4: 91 11    sta ($11), y
13F6: 12       kil
13F7: 91 11    sta ($11), y
13F9: 12       kil
13FA: D1 11    cmp ($11), y
13FC: 12       kil
13FD: 51 11    eor ($11), y
13FF: 14 31    nop $31, x
1401: 11 18    ora ($18), y
1403: 19 11 30 ora $3011, y
1406: 07 11    slo $11
1408: C0 00    cpy #$00
140A: FE 00 00 inc $0000, x
140D: 38       sec
140E: 00       brk
140F: 00       brk
1410: 44 00    nop $00
1412: 00       brk
1413: 44 00    nop $00
1415: 00       brk
1416: 44 00    nop $00
1418: 00       brk
1419: 38       sec
141A: 00       brk
141B: 00       brk
141C: 10 00    bpl $141e
141E: 00       brk
141F: FE 00 03 inc $0300, x
1422: 7D 80 0C adc $0c80, x
1425: D6 60    dec $60, x
1427: 11 55    ora ($55), y
1429: 10 22    bpl $144d
142B: 54 88    nop $88, x
142D: 24 92    bit $92
142F: 48       pha
1430: 44 92    nop $92
1432: 44 48    nop $48
1434: 92       kil
1435: 24 88    bit $88
1437: 92       kil
1438: 22       kil
1439: 89 11    nop #$11
143B: 22       kil
143C: D1 11    cmp ($11), y
143E: 16 B1    asl $b1, x
1440: 11 1A    ora ($1a), y
1442: 99 11 32 sta $3211, y
1445: 97 11    sax $11, y
1447: D2       kil
1448: 91 FF    sta ($ff), y
144A: 12       kil
144B: 91 11    sta ($11), y
144D: 12       kil
144E: 91 11    sta ($11), y
1450: 12       kil
1451: 91 11    sta ($11), y
1453: 12       kil
1454: 91 11    sta ($11), y
1456: 12       kil
1457: 91 11    sta ($11), y
1459: 12       kil
145A: 91 11    sta ($11), y
145C: 12       kil
145D: 91 11    sta ($11), y
145F: 12       kil
1460: 91 11    sta ($11), y
1462: 12       kil
1463: D1 11    cmp ($11), y
1465: 16 B1    asl $b1, x
1467: 11 1A    ora ($1a), y
1469: 99 11 32 sta $3211, y
146C: 97 11    sax $11, y
146E: D2       kil
146F: 91 FF    sta ($ff), y
1471: 12       kil
1472: 91 11    sta ($11), y
1474: 12       kil
1475: 91 11    sta ($11), y
1477: 12       kil
1478: 91 11    sta ($11), y
147A: 12       kil
147B: 91 11    sta ($11), y
147D: 12       kil
147E: 91 11    sta ($11), y
1480: 12       kil
1481: 91 11    sta ($11), y
1483: 12       kil
1484: 91 11    sta ($11), y
1486: 12       kil
1487: 91 11    sta ($11), y
1489: 12       kil
148A: D1 11    cmp ($11), y
148C: 12       kil
148D: 51 11    eor ($11), y
148F: 14 31    nop $31, x
1491: 11 18    ora ($18), y
1493: 19 11 30 ora $3011, y
1496: 07 11    slo $11
1498: C0 00    cpy #$00
149A: FE 00 0C inc $0c00, x
149D: 1B 1C 08 slo $081c, y
14A0: 08       php
14A1: 04 04    nop $04
14A3: 02       kil
14A4: 32       kil
14A5: 7B 7F 7F rra $7f7f, y
14A8: 7F 3E 18 rra $183e, x
14AB: 10 10    bpl $14bd
14AD: 10 10    bpl $14bf
14AF: 18       clc
14B0: 0D 1A 1D ora $1d1a
14B3: 08       php
14B4: 08       php
14B5: 04 04    nop $04
14B7: 02       kil
14B8: 32       kil
14B9: 7B 7F 7F rra $7f7f, y
14BC: 7F 3E 18 rra $183e, x
14BF: 28       plp
14C0: 28       plp
14C1: 44 45    nop $45
14C3: 22       kil
14C4: 30 D8    bmi $149e
14C6: 38       sec
14C7: 10 10    bpl $14d9
14C9: 20 20 40 jsr $4020
14CC: 4C DE FE jmp $fede
14CF: FE FE 7C inc $7cfe, x
14D2: 18       clc
14D3: 08       php
14D4: 08       php
14D5: 08       php
14D6: 08       php
14D7: 18       clc
14D8: B0 58    bcs $1532
14DA: B8       clv
14DB: 10 10    bpl $14ed
14DD: 20 20 40 jsr $4020
14E0: 4C DE FE jmp $fede
14E3: FE FE 7C inc $7cfe, x
14E6: 18       clc
14E7: 14 14    nop $14, x
14E9: 22       kil
14EA: A2 44    ldx #$44
14EC: 18       clc
14ED: 3C 3C 3C nop $3c3c, x
14F0: 18       clc
14F1: 18       clc
14F2: 18       clc
14F3: 3C 7E 7E nop $7e7e, x
14F6: 7E 7E 7E ror $7e7e, x
14F9: 3C 3C 24 nop $243c, x
14FC: 24 26    bit $26
14FE: 20 60 18 jsr $1860
1501: 3C 3C 3C nop $3c3c, x
1504: 18       clc
1505: 18       clc
1506: 18       clc
1507: 3C 7E 7E nop $7e7e, x
150A: 7E 7E 7E ror $7e7e, x
150D: 3C 3C 24 nop $243c, x
1510: 24 64    bit $64
1512: 04 04    nop $04
1514: 04 06    nop $06
1516: 00       brk
1517: 00       brk
1518: 00       brk
1519: 00       brk
151A: 00       brk
151B: 00       brk
151C: 00       brk
151D: 00       brk
151E: 00       brk
151F: 00       brk
1520: 00       brk
1521: 00       brk
1522: 00       brk
1523: 38       sec
1524: 30 28    bmi $154e
1526: 78       sei
1527: 78       sei
1528: 7C C4 7F nop $7fc4, x
152B: C2 7F    nop #$7f
152D: 80 3F    nop #$3f
152F: 00       brk
1530: 3F 00 1F rla $1f00, x
1533: 00       brk
1534: 16 00    asl $00, x
1536: 10 00    bpl $1538
1538: 10 00    bpl $153a
153A: 10 00    bpl $153c
153C: 18       clc
153D: 00       brk
153E: 00       brk
153F: 00       brk
1540: 00       brk
1541: 00       brk
1542: 00       brk
1543: 00       brk
1544: 00       brk
1545: 00       brk
1546: 00       brk
1547: 00       brk
1548: 00       brk
1549: 00       brk
154A: 00       brk
154B: 00       brk
154C: 30 00    bmi $154e
154E: 78       sei
154F: 00       brk
1550: 7C 00 7E nop $7e00, x
1553: 00       brk
1554: 7F F8 3F rra $3ff8, x
1557: F4 3F    nop $3f, x
1559: 14 1F    nop $1f, x
155B: 08       php
155C: 16 08    asl $08, x
155E: 10 08    bpl $1568
1560: 10 00    bpl $1562
1562: 10 00    bpl $1564
1564: 18       clc
1565: 00       brk
1566: 00       brk
1567: 00       brk
1568: 00       brk
1569: 00       brk
156A: 00       brk
156B: 00       brk
156C: 00       brk
156D: 00       brk
156E: 00       brk
156F: 00       brk
1570: 00       brk
1571: 00       brk
1572: 1C 00 14 nop $1400, x
1575: 0C 1E 1E nop $1e1e
1578: 23 3E    rla ($3e, x)
157A: 43 FE    sre ($fe, x)
157C: 01 FE    ora ($fe, x)
157E: 00       brk
157F: FC 00 FC nop $fc00, x
1582: 00       brk
1583: F8       sed
1584: 00       brk
1585: 68       pla
1586: 00       brk
1587: 08       php
1588: 00       brk
1589: 08       php
158A: 00       brk
158B: 08       php
158C: 00       brk
158D: 18       clc
158E: 00       brk
158F: 00       brk
1590: 00       brk
1591: 00       brk
1592: 00       brk
1593: 00       brk
1594: 00       brk
1595: 00       brk
1596: 00       brk
1597: 00       brk
1598: 00       brk
1599: 00       brk
159A: 00       brk
159B: 00       brk
159C: 00       brk
159D: 0C 00 1E nop $1e00
15A0: 00       brk
15A1: 3E 00 7E rol $7e00, x
15A4: 1F FE 2F slo $2ffe, x
15A7: FC 28 FC nop $fc28, x
15AA: 10 F8    bpl $15a4
15AC: 10 68    bpl $1616
15AE: 10 08    bpl $15b8
15B0: 00       brk
15B1: 08       php
15B2: 00       brk
15B3: 08       php
15B4: 00       brk
15B5: 18       clc
15B6: 60       rts
15B7: 90 90    bcc $1549
15B9: 90 90    bcc $154b
15BB: 90 60    bcc $161d
15BD: 20 60 20 jsr $2060
15C0: 20 20 20 jsr $2020
15C3: 70 60    bvs $1625
15C5: 90 10    bcc $15d7
15C7: 20 40 80 jsr $8040
15CA: F0 60    beq $162c
15CC: 90 10    bcc $15de
15CE: 20 10 90 jsr $9010
15D1: 60       rts
15D2: 80 80    nop #$80
15D4: A0 A0    ldy #$a0
15D6: F0 20    beq $15f8
15D8: 20 F0 80 jsr $80f0
15DB: E0 10    cpx #$10
15DD: 10 90    bpl $156f
15DF: 60       rts
15E0: 60       rts
15E1: 90 80    bcc $1563
15E3: E0 90    cpx #$90
15E5: 90 60    bcc $1647
15E7: F0 10    beq $15f9
15E9: 10 20    bpl $160b
15EB: 20 40 40 jsr $4040
15EE: 60       rts
15EF: 90 90    bcc $1581
15F1: 60       rts
15F2: 90 90    bcc $1584
15F4: 60       rts
15F5: 60       rts
15F6: 90 90    bcc $1588
15F8: 70 10    bvs $160a
15FA: 90 60    bcc $165c
15FC: FF FF F8 isb $f8ff, x
15FF: 88       dey
1600: 89 88    nop #$88
1602: BB AA B8 las $b8aa, y
1605: BB AA B8 las $b8aa, y
1608: 8B A9    ane #$a9
160A: 98       tya
160B: EB AA    sbc #$aa
160D: B8       clv
160E: EB AA    sbc #$aa
1610: B8       clv
1611: 88       dey
1612: 8A       txa
1613: 88       dey
1614: FF FF F8 isb $f8ff, x
1617: FF FF FF isb $ffff, x
161A: FE FF FF inc $ffff, x
161D: FF FE FF isb $fffe, x
1620: FF FF FE isb $feff, x
1623: FF FF FF isb $ffff, x
1626: FE FF FF inc $ffff, x
1629: FF FE FF isb $fffe, x
162C: FF FF FE isb $feff, x
162F: FF FF FF isb $ffff, x
1632: FE FF FF inc $ffff, x
1635: FF FE FF isb $fffe, x
1638: FF FF FE isb $feff, x
163B: FF FF FF isb $ffff, x
163E: FF 9B DA isb $da9b, x
1641: 89 FF    nop #$ff
1643: AB AA    lxa #$aa
1645: BA       tsx
1646: FF AB AA isb $aaab, x
1649: BA       tsx
164A: FF 9B 8D isb $8d9b, x
164D: 99 FF BB sta $bbff, y
1650: AD BA FF lda $ffba
1653: BB AD BA las $baad, y
1656: FF B8 AD isb $adb8, x
1659: 8A       txa
165A: FF FF FF isb $ffff, x
165D: FF FF FF isb $ffff, x
1660: FF FF FF isb $ffff, x
1663: FC B8 A8 nop $a8b8, x
1666: BF FF FC lax $fcff, y
1669: BB AB BF las $bfab, y
166C: FF FC BB isb $bbfc, x
166F: AB BF    lxa #$bf
1671: FF FC B9 isb $b9fc, x
1674: A9 BF    lda #$bf
1676: FF FC BB isb $bbfc, x
1679: AB BF    lxa #$bf
167B: FF FC BB isb $bbfc, x
167E: DB BF FF dcp $ffbf, y
1681: FC 88 D8 nop $d888, x
1684: 8F FF FC sax $fcff
1687: FF FF FF isb $ffff, x
168A: FF FC FF isb $fffc, x
168D: FF FF FF isb $ffff, x
1690: FF F0 98 isb $98f0, x
1693: B5 47    lda $47, x
1695: FF FF F0 isb $f0ff, x
1698: AA       tax
1699: 95 5F    sta $5f, x
169B: FF FF F0 isb $f0ff, x
169E: AA       tax
169F: 95 5F    sta $5f, x
16A1: FF FF F0 isb $f0ff, x
16A4: 9A       txs
16A5: A5 47    lda $47
16A7: FF FF F0 isb $f0ff, x
16AA: AA       tax
16AB: A5 77    lda $77
16AD: FF FF F0 isb $f0ff, x
16B0: AA       tax
16B1: B5 77    lda $77, x
16B3: FF FF F0 isb $f0ff, x
16B6: 98       tya
16B7: B4 47    ldy $47, x
16B9: FF FF F0 isb $f0ff, x
16BC: FF FF FF isb $ffff, x
16BF: FF FF F0 isb $f0ff, x
16C2: FF FF FF isb $ffff, x
16C5: FF C0 8A isb $8ac0, x
16C8: 48       pha
16C9: FF FF C0 isb $c0ff, x
16CC: DA       nop
16CD: 4B FF    asr #$ff
16CF: FF C0 DA isb $dac0, x
16D2: AB FF    lxa #$ff
16D4: FF C0 DA isb $dac0, x
16D7: A9 FF    lda #$ff
16D9: FF C0 DA isb $dac0, x
16DC: AB FF    lxa #$ff
16DE: FF C0 DA isb $dac0, x
16E1: EB FF    sbc #$ff
16E3: FF C0 DA isb $dac0, x
16E6: E8       inx
16E7: FF FF C0 isb $c0ff, x
16EA: FF FF FF isb $ffff, x
16ED: FF C0 40 isb $40c0, x
16F0: E0 00    cpx #$00
16F2: 03 80    slo ($80, x)
16F4: 0F E0 1F slo $1fe0
16F7: F0 1F    beq $1718
16F9: F8       sed
16FA: 3F F8 3F rla $3ff8, x
16FD: FC 7F FC nop $fc7f, x
1700: 7F FC 7E rra $7efc, x
1703: 7C 7C 38 nop $387c, x
1706: F8       sed
1707: 18       clc
1708: F8       sed
1709: 00       brk
170A: F0 00    beq $170c
170C: F0 00    beq $170e
170E: F0 00    beq $1710
1710: F0 00    beq $1712
1712: F0 00    beq $1714
1714: F0 00    beq $1716
1716: F8       sed
1717: 00       brk
1718: F8       sed
1719: 18       clc
171A: 7C 38 7E nop $7e38, x
171D: 7C 7F FC nop $fc7f, x
1720: 7F FC 3F rra $3ffc, x
1723: FC 3F F8 nop $f83f, x
1726: 1F F8 1F slo $1ff8, x
1729: F0 0F    beq $173a
172B: E0 03    cpx #$03
172D: 80 60    nop #$60
172F: 18       clc
1730: F0 3C    beq $176e
1732: F0 3C    beq $1770
1734: F0 3C    beq $1772
1736: F0 3C    beq $1774
1738: F0 3C    beq $1776
173A: F0 3C    beq $1778
173C: F0 3C    beq $177a
173E: F0 3C    beq $177c
1740: F0 3C    beq $177e
1742: F0 3C    beq $1780
1744: F0 3C    beq $1782
1746: FF FC FF isb $fffc, x
1749: FC FF FC nop $fcff, x
174C: FF FC FF isb $fffc, x
174F: FC FF FC nop $fcff, x
1752: F0 3C    beq $1790
1754: F0 3C    beq $1792
1756: F0 3C    beq $1794
1758: F0 3C    beq $1796
175A: F0 3C    beq $1798
175C: F0 3C    beq $179a
175E: F0 3C    beq $179c
1760: F0 3C    beq $179e
1762: F0 3C    beq $17a0
1764: F0 3C    beq $17a2
1766: F0 3C    beq $17a4
1768: 60       rts
1769: 18       clc
176A: 60       rts
176B: 18       clc
176C: F0 3C    beq $17aa
176E: F0 3C    beq $17ac
1770: F0 3C    beq $17ae
1772: F0 3C    beq $17b0
1774: F0 3C    beq $17b2
1776: F0 3C    beq $17b4
1778: F0 3C    beq $17b6
177A: F0 3C    beq $17b8
177C: F0 3C    beq $17ba
177E: F0 3C    beq $17bc
1780: F0 3C    beq $17be
1782: F0 3C    beq $17c0
1784: F0 3C    beq $17c2
1786: F0 3C    beq $17c4
1788: F0 3C    beq $17c6
178A: F0 3C    beq $17c8
178C: F0 3C    beq $17ca
178E: F0 3C    beq $17cc
1790: F0 3C    beq $17ce
1792: F0 3C    beq $17d0
1794: F0 3C    beq $17d2
1796: F8       sed
1797: 7C FC FC nop $fcfc, x
179A: FF FC FF isb $fffc, x
179D: FC FF FC nop $fcff, x
17A0: 7F F8 7F rra $7ff8, x
17A3: F8       sed
17A4: 3F F0 60 rla $60f0, x
17A7: 10 F0    bpl $1799
17A9: 38       sec
17AA: F0 38    beq $17e4
17AC: F0 7C    beq $182a
17AE: F0 7C    beq $182c
17B0: F0 FC    beq $17ae
17B2: F0 FC    beq $17b0
17B4: F1 F8    sbc ($f8), y
17B6: F1 F8    sbc ($f8), y
17B8: F3 F0    isb ($f0), y
17BA: F3 F0    isb ($f0), y
17BC: F7 E0    isb $e0, x
17BE: FF E0 FF isb $ffe0, x
17C1: C0 FF    cpy #$ff
17C3: 80 FF    nop #$ff
17C5: C0 FF    cpy #$ff
17C7: C0 FF    cpy #$ff
17C9: E0 FF    cpx #$ff
17CB: E0 F3    cpx #$f3
17CD: F0 F3    beq $17c2
17CF: F0 F1    beq $17c2
17D1: F8       sed
17D2: F1 F8    sbc ($f8), y
17D4: F0 FC    beq $17d2
17D6: F0 FC    beq $17d4
17D8: F0 7C    beq $1856
17DA: F0 7C    beq $1858
17DC: F0 38    beq $1816
17DE: F0 38    beq $1818
17E0: 60       rts
17E1: 10 7F    bpl $1862
17E3: F8       sed
17E4: FF FC FF isb $fffc, x
17E7: FC FF FC nop $fcff, x
17EA: FF FC 7F isb $7ffc, x
17ED: F8       sed
17EE: 07 80    slo $80
17F0: 07 80    slo $80
17F2: 07 80    slo $80
17F4: 07 80    slo $80
17F6: 07 80    slo $80
17F8: 07 80    slo $80
17FA: 07 80    slo $80
17FC: 07 80    slo $80
17FE: 07 80    slo $80
1800: 07 80    slo $80
1802: 07 80    slo $80
1804: 07 80    slo $80
1806: 07 80    slo $80
1808: 07 80    slo $80
180A: 07 80    slo $80
180C: 07 80    slo $80
180E: 07 80    slo $80
1810: 07 80    slo $80
1812: 7F F8 FF rra $fff8, x
1815: FC FF FC nop $fcff, x
1818: FF FC FF isb $fffc, x
181B: FC 7F F8 nop $f87f, x
181E: 3F F8 7F rla $7ff8, x
1821: FC 7F FC nop $fc7f, x
1824: FF FC FF isb $fffc, x
1827: FC FF F8 nop $f8ff, x
182A: F8       sed
182B: 00       brk
182C: F0 00    beq $182e
182E: F0 00    beq $1830
1830: F0 00    beq $1832
1832: F0 00    beq $1834
1834: F0 00    beq $1836
1836: FF E0 FF isb $ffe0, x
1839: F0 FF    beq $183a
183B: F0 FF    beq $183c
183D: F0 FF    beq $183e
183F: F0 FF    beq $1840
1841: E0 F0    cpx #$f0
1843: 00       brk
1844: F0 00    beq $1846
1846: F0 00    beq $1848
1848: F0 00    beq $184a
184A: F0 00    beq $184c
184C: F8       sed
184D: 00       brk
184E: FF F8 FF isb $fff8, x
1851: FC FF FC nop $fcff, x
1854: 7F FC 7F rra $7ffc, x
1857: FC 3F F8 nop $f83f, x
185A: 03 80    slo ($80, x)
185C: 0F E0 1F slo $1fe0
185F: F0 1F    beq $1880
1861: F8       sed
1862: 3F F8 3F rla $3ff8, x
1865: FC 7F FC nop $fc7f, x
1868: 7F FC 7E rra $7efc, x
186B: 7C 7C 38 nop $387c, x
186E: F8       sed
186F: 18       clc
1870: F8       sed
1871: 00       brk
1872: F0 00    beq $1874
1874: F0 00    beq $1876
1876: F0 00    beq $1878
1878: F0 00    beq $187a
187A: F0 F8    beq $1874
187C: F0 F8    beq $1876
187E: F8       sed
187F: FC F8 7C nop $7cf8, x
1882: 7C 3C 7E nop $7e3c, x
1885: 3C 7F 7C nop $7c7f, x
1888: 7F FC 3F rra $3ffc, x
188B: FC 3F FC nop $fc3f, x
188E: 1F FC 1F slo $1ffc, x
1891: F8       sed
1892: 0F F8 03 slo $03f8
1895: F0 20    beq $18b7
1897: 00       brk
1898: 00       brk
1899: 00       brk
189A: 00       brk
189B: 00       brk
189C: 00       brk
189D: 00       brk
189E: 00       brk
189F: 00       brk
18A0: 00       brk
18A1: 00       brk
18A2: 00       brk
18A3: 00       brk
18A4: 00       brk
18A5: 00       brk
18A6: 00       brk
18A7: 00       brk
18A8: 00       brk
18A9: 00       brk
18AA: 00       brk
18AB: 00       brk
18AC: 00       brk
18AD: 00       brk
18AE: 00       brk
18AF: 00       brk
18B0: 00       brk
18B1: 00       brk
18B2: 00       brk
18B3: 00       brk
18B4: 00       brk
18B5: 00       brk
18B6: 00       brk
18B7: 00       brk
18B8: 00       brk
18B9: 00       brk
18BA: 00       brk
18BB: 00       brk
18BC: 00       brk
18BD: 00       brk
18BE: 00       brk
18BF: 00       brk
18C0: 00       brk
18C1: 00       brk
18C2: 00       brk
18C3: 00       brk
18C4: 00       brk
18C5: 00       brk
18C6: 00       brk
18C7: 00       brk
18C8: 00       brk
18C9: 00       brk
18CA: 00       brk
18CB: 00       brk
18CC: 00       brk
18CD: 00       brk
18CE: 00       brk
18CF: 00       brk
18D0: 00       brk
18D1: 00       brk
18D2: 00       brk
18D3: 00       brk
18D4: 00       brk
18D5: 00       brk
18D6: 00       brk
18D7: 00       brk
18D8: 00       brk
18D9: 00       brk
18DA: 00       brk
18DB: 00       brk
18DC: 00       brk
18DD: 00       brk
18DE: 00       brk
18DF: 00       brk
18E0: 00       brk
18E1: 00       brk
18E2: 00       brk
18E3: 00       brk
18E4: 00       brk
18E5: 00       brk
18E6: 00       brk
18E7: 00       brk
18E8: 00       brk
18E9: 00       brk
18EA: 00       brk
18EB: 00       brk
18EC: 00       brk
18ED: 00       brk
18EE: 00       brk
18EF: 00       brk
18F0: 00       brk
18F1: 00       brk
18F2: 00       brk
18F3: 00       brk
18F4: 00       brk
18F5: 00       brk
18F6: 00       brk
18F7: 00       brk
18F8: 00       brk
18F9: 00       brk
18FA: 00       brk
18FB: 00       brk
18FC: 00       brk
18FD: 00       brk
18FE: 00       brk
18FF: 00       brk
1900: 0D FF A5 ora $a5ff
1903: 73 85    rra ($85), y
1905: 81 A0    sta ($a0, x)
1907: 00       brk
1908: A5 7A    lda $7a
190A: 85 87    sta $87
190C: A2 00    ldx #$00
190E: A1 76    lda ($76, x)
1910: 85 84    sta $84
1912: A9 08    lda #$08
1914: 85 83    sta $83
1916: A5 7F    lda $7f
1918: A6 81    ldx $81
191A: F0 04    beq $1920
191C: 4A       lsr a
191D: CA       dex
191E: D0 FC    bne $191c
1920: 85 82    sta $82
1922: A9 02    lda #$02
1924: 38       sec
1925: E5 81    sbc $81
1927: 85 81    sta $81
1929: A2 00    ldx #$00
192B: 06 84    asl $84
192D: 90 06    bcc $1935
192F: B1 70    lda ($70), y
1931: 45 82    eor $82
1933: 91 70    sta ($70), y
1935: C6 83    dec $83
1937: D0 12    bne $194b
1939: E6 76    inc $76
193B: D0 02    bne $193f
193D: E6 77    inc $77
193F: C6 87    dec $87
1941: F0 1E    beq $1961
1943: A1 76    lda ($76, x)
1945: 85 84    sta $84
1947: A9 08    lda #$08
1949: 85 83    sta $83
194B: 46 82    lsr $82
194D: C6 81    dec $81
194F: D0 DA    bne $192b
1951: 98       tya
1952: 18       clc
1953: 69 08    adc #$08
1955: A8       tay
1956: A5 7F    lda $7f
1958: 85 82    sta $82
195A: A9 02    lda #$02
195C: 85 81    sta $81
195E: 4C 2B 19 jmp $192b
1961: C6 78    dec $78
1963: F0 06    beq $196b
1965: 20 6C 19 jsr $196c
1968: 4C 02 19 jmp $1902
196B: 60       rts
196C: E6 72    inc $72
196E: A5 72    lda $72
1970: 29 07    and #$07
1972: F0 03    beq $1977
1974: E6 70    inc $70
1976: 60       rts
1977: 85 72    sta $72
1979: 18       clc
197A: A5 70    lda $70
197C: 69 79    adc #$79
197E: 85 70    sta $70
1980: A5 71    lda $71
1982: 69 02    adc #$02
1984: 85 71    sta $71
1986: 60       rts
1987: A9 00    lda #$00
1989: 85 71    sta $71
198B: 85 74    sta $74
198D: 98       tya
198E: 49 FF    eor #$ff
1990: A8       tay
1991: 29 F8    and #$f8
1993: 85 70    sta $70
1995: 0A       asl a
1996: 26 71    rol $71
1998: 0A       asl a
1999: 26 71    rol $71
199B: 18       clc
199C: 65 70    adc $70
199E: 85 70    sta $70
19A0: A9 00    lda #$00
19A2: 65 71    adc $71
19A4: 85 71    sta $71
19A6: 06 70    asl $70
19A8: 26 71    rol $71
19AA: 06 70    asl $70
19AC: 26 71    rol $71
19AE: 06 70    asl $70
19B0: 26 71    rol $71
19B2: 06 70    asl $70
19B4: 26 71    rol $71
19B6: 98       tya
19B7: 29 07    and #$07
19B9: 85 72    sta $72
19BB: 18       clc
19BC: 65 70    adc $70
19BE: 85 70    sta $70
19C0: 8A       txa
19C1: 29 01    and #$01
19C3: 85 73    sta $73
19C5: 8A       txa
19C6: 29 FE    and #$fe
19C8: 0A       asl a
19C9: 26 74    rol $74
19CB: 0A       asl a
19CC: 26 74    rol $74
19CE: 65 70    adc $70
19D0: 85 70    sta $70
19D2: A5 74    lda $74
19D4: 65 71    adc $71
19D6: 69 30    adc #$30
19D8: 85 71    sta $71
19DA: 60       rts
19DB: A0 00    ldy #$00
19DD: 84 77    sty $77
19DF: 0A       asl a
19E0: 26 77    rol $77
19E2: 0A       asl a
19E3: 26 77    rol $77
19E5: 69 00    adc #$00
19E7: 85 76    sta $76
19E9: A5 77    lda $77
19EB: 69 11    adc #$11
19ED: 85 77    sta $77
19EF: B1 76    lda ($76), y
19F1: 85 79    sta $79
19F3: 18       clc
19F4: 69 07    adc #$07
19F6: 4A       lsr a
19F7: 4A       lsr a
19F8: 4A       lsr a
19F9: 85 7A    sta $7a
19FB: C8       iny
19FC: B1 76    lda ($76), y
19FE: 85 78    sta $78
1A00: C8       iny
1A01: B1 76    lda ($76), y
1A03: AA       tax
1A04: C8       iny
1A05: B1 76    lda ($76), y
1A07: 86 76    stx $76
1A09: 85 77    sta $77
1A0B: 60       rts
1A0C: 48       pha
1A0D: 8A       txa
1A0E: 18       clc
1A0F: 2A       rol a
1A10: 2A       rol a
1A11: 2A       rol a
1A12: AA       tax
1A13: 98       tya
1A14: 38       sec
1A15: 2A       rol a
1A16: 38       sec
1A17: 2A       rol a
1A18: 38       sec
1A19: 2A       rol a
1A1A: A8       tay
1A1B: 20 87 19 jsr $1987
1A1E: 68       pla
1A1F: 20 DB 19 jsr $19db
1A22: 20 02 19 jsr $1902
1A25: 60       rts
1A26: 86 70    stx $70
1A28: 84 71    sty $71
1A2A: A0 00    ldy #$00
1A2C: B1 70    lda ($70), y
1A2E: 85 75    sta $75
1A30: C8       iny
1A31: B1 70    lda ($70), y
1A33: 20 EE FF jsr $ffee
1A36: C4 75    cpy $75
1A38: D0 F6    bne $1a30
1A3A: 60       rts
1A3B: A2 AB    ldx #$ab
1A3D: A0 FF    ldy #$ff
1A3F: A9 81    lda #$81
1A41: 20 F4 FF jsr $fff4
1A44: C0 00    cpy #$00
1A46: F0 26    beq $1a6e
1A48: A2 AB    ldx #$ab
1A4A: A0 FF    ldy #$ff
1A4C: A9 81    lda #$81
1A4E: 20 F4 FF jsr $fff4
1A51: C0 00    cpy #$00
1A53: F0 12    beq $1a67
1A55: A2 8F    ldx #$8f
1A57: A0 FF    ldy #$ff
1A59: A9 81    lda #$81
1A5B: 20 F4 FF jsr $fff4
1A5E: C0 00    cpy #$00
1A60: F0 05    beq $1a67
1A62: A9 80    lda #$80
1A64: 85 60    sta $60
1A66: 60       rts
1A67: 20 6E 1A jsr $1a6e
1A6A: A5 60    lda $60
1A6C: F0 DA    beq $1a48
1A6E: A9 00    lda #$00
1A70: 85 60    sta $60
1A72: A9 01    lda #$01
1A74: 85 80    sta $80
1A76: A6 61    ldx $61
1A78: 20 90 1A jsr $1a90
1A7B: A6 62    ldx $62
1A7D: 20 90 1A jsr $1a90
1A80: A6 63    ldx $63
1A82: 20 90 1A jsr $1a90
1A85: A6 64    ldx $64
1A87: 20 90 1A jsr $1a90
1A8A: A6 65    ldx $65
1A8C: 20 90 1A jsr $1a90
1A8F: 60       rts
1A90: A0 FF    ldy #$ff
1A92: A9 81    lda #$81
1A94: 20 F4 FF jsr $fff4
1A97: C0 00    cpy #$00
1A99: F0 06    beq $1aa1
1A9B: A5 60    lda $60
1A9D: 05 80    ora $80
1A9F: 85 60    sta $60
1AA1: 06 80    asl $80
1AA3: 60       rts
1AA4: A5 66    lda $66
1AA6: 29 48    and #$48
1AA8: 69 38    adc #$38
1AAA: 0A       asl a
1AAB: 0A       asl a
1AAC: 26 69    rol $69
1AAE: 26 68    rol $68
1AB0: 26 67    rol $67
1AB2: 26 66    rol $66
1AB4: 60       rts
1AB5: A0 08    ldy #$08
1AB7: 84 7F    sty $7f
1AB9: B4 28    ldy $28, x
1ABB: 18       clc
1ABC: 75 28    adc $28, x
1ABE: E0 03    cpx #$03
1AC0: D0 02    bne $1ac4
1AC2: E6 3E    inc $3e
1AC4: C9 0A    cmp #$0a
1AC6: 90 0E    bcc $1ad6
1AC8: 38       sec
1AC9: E9 0A    sbc #$0a
1ACB: 95 28    sta $28, x
1ACD: 20 D8 1A jsr $1ad8
1AD0: A9 01    lda #$01
1AD2: CA       dex
1AD3: 10 E0    bpl $1ab5
1AD5: 60       rts
1AD6: 95 28    sta $28, x
1AD8: E0 02    cpx #$02
1ADA: B0 01    bcs $1add
1ADC: 60       rts
1ADD: 85 8C    sta $8c
1ADF: 86 8D    stx $8d
1AE1: 84 8E    sty $8e
1AE3: A5 3F    lda $3f
1AE5: 18       clc
1AE6: 69 05    adc #$05
1AE8: CA       dex
1AE9: 10 FB    bpl $1ae6
1AEB: 85 8B    sta $8b
1AED: AA       tax
1AEE: A5 8E    lda $8e
1AF0: A0 F7    ldy #$f7
1AF2: 20 01 1B jsr $1b01
1AF5: A5 8C    lda $8c
1AF7: A6 8B    ldx $8b
1AF9: A0 F7    ldy #$f7
1AFB: 20 01 1B jsr $1b01
1AFE: A6 8D    ldx $8d
1B00: 60       rts
1B01: 48       pha
1B02: 20 87 19 jsr $1987
1B05: 68       pla
1B06: 18       clc
1B07: 69 1F    adc #$1f
1B09: 20 DB 19 jsr $19db
1B0C: 20 02 19 jsr $1902
1B0F: 60       rts
1B10: A9 03    lda #$03
1B12: A2 00    ldx #$00
1B14: A0 00    ldy #$00
1B16: 20 F1 FF jsr $fff1
1B19: A5 01    lda $01
1B1B: D0 06    bne $1b23
1B1D: A5 00    lda $00
1B1F: C9 03    cmp #$03
1B21: 90 ED    bcc $1b10
1B23: A9 00    lda #$00
1B25: 85 00    sta $00
1B27: 85 01    sta $01
1B29: A9 04    lda #$04
1B2B: A2 00    ldx #$00
1B2D: A0 00    ldy #$00
1B2F: 20 F1 FF jsr $fff1
1B32: 60       rts
1B33: A9 10    lda #$10
1B35: 20 EE FF jsr $ffee
1B38: 20 C3 1C jsr $1cc3
1B3B: A5 5C    lda $5c
1B3D: 0A       asl a
1B3E: A8       tay
1B3F: B9 C0 0C lda $0cc0, y
1B42: 85 51    sta $51
1B44: C8       iny
1B45: B9 C0 0C lda $0cc0, y
1B48: 85 52    sta $52
1B4A: A0 00    ldy #$00
1B4C: B1 51    lda ($51), y
1B4E: 85 53    sta $53
1B50: C8       iny
1B51: B1 51    lda ($51), y
1B53: 85 54    sta $54
1B55: C8       iny
1B56: B1 51    lda ($51), y
1B58: 85 55    sta $55
1B5A: C8       iny
1B5B: B1 51    lda ($51), y
1B5D: 85 56    sta $56
1B5F: C8       iny
1B60: B1 51    lda ($51), y
1B62: 85 57    sta $57
1B64: A9 00    lda #$00
1B66: AA       tax
1B67: 9D 00 06 sta $0600, x
1B6A: 9D 00 07 sta $0700, x
1B6D: CA       dex
1B6E: D0 F7    bne $1b67
1B70: A9 0A    lda #$0a
1B72: 85 7F    sta $7f
1B74: A5 53    lda $53
1B76: 85 8A    sta $8a
1B78: 84 89    sty $89
1B7A: A4 89    ldy $89
1B7C: C8       iny
1B7D: B1 51    lda ($51), y
1B7F: 85 8B    sta $8b
1B81: C8       iny
1B82: B1 51    lda ($51), y
1B84: 85 8C    sta $8c
1B86: C8       iny
1B87: B1 51    lda ($51), y
1B89: 38       sec
1B8A: E5 8C    sbc $8c
1B8C: 85 8D    sta $8d
1B8E: 84 89    sty $89
1B90: A9 01    lda #$01
1B92: A4 8B    ldy $8b
1B94: A6 8C    ldx $8c
1B96: 20 E0 23 jsr $23e0
1B99: A6 8C    ldx $8c
1B9B: 20 0C 1A jsr $1a0c
1B9E: E6 8C    inc $8c
1BA0: C6 8D    dec $8d
1BA2: 10 EC    bpl $1b90
1BA4: C6 8A    dec $8a
1BA6: D0 D2    bne $1b7a
1BA8: A9 08    lda #$08
1BAA: 85 7F    sta $7f
1BAC: A5 54    lda $54
1BAE: 85 8A    sta $8a
1BB0: A4 89    ldy $89
1BB2: C8       iny
1BB3: B1 51    lda ($51), y
1BB5: 85 8B    sta $8b
1BB7: C8       iny
1BB8: B1 51    lda ($51), y
1BBA: 85 8C    sta $8c
1BBC: C8       iny
1BBD: B1 51    lda ($51), y
1BBF: 38       sec
1BC0: E5 8C    sbc $8c
1BC2: 85 8D    sta $8d
1BC4: 84 89    sty $89
1BC6: A6 8B    ldx $8b
1BC8: A4 8C    ldy $8c
1BCA: 20 C8 23 jsr $23c8
1BCD: F0 0F    beq $1bde
1BCF: A2 0A    ldx #$0a
1BD1: 86 7F    stx $7f
1BD3: A6 8B    ldx $8b
1BD5: 20 0C 1A jsr $1a0c
1BD8: A9 01    lda #$01
1BDA: A2 08    ldx #$08
1BDC: 86 7F    stx $7f
1BDE: 09 02    ora #$02
1BE0: A6 8B    ldx $8b
1BE2: A4 8C    ldy $8c
1BE4: 20 E0 23 jsr $23e0
1BE7: A9 02    lda #$02
1BE9: A6 8B    ldx $8b
1BEB: A4 8C    ldy $8c
1BED: 20 0C 1A jsr $1a0c
1BF0: E6 8C    inc $8c
1BF2: C6 8D    dec $8d
1BF4: 10 D0    bpl $1bc6
1BF6: C6 8A    dec $8a
1BF8: D0 B6    bne $1bb0
1BFA: A5 55    lda $55
1BFC: F0 0C    beq $1c0a
1BFE: A4 89    ldy $89
1C00: C8       iny
1C01: B1 51    lda ($51), y
1C03: 84 89    sty $89
1C05: 0A       asl a
1C06: 0A       asl a
1C07: 0A       asl a
1C08: 85 58    sta $58
1C0A: A9 02    lda #$02
1C0C: 85 7F    sta $7f
1C0E: A9 00    lda #$00
1C10: 85 8A    sta $8a
1C12: 85 39    sta $39
1C14: A5 4E    lda $4e
1C16: 85 88    sta $88
1C18: A4 89    ldy $89
1C1A: C8       iny
1C1B: B1 51    lda ($51), y
1C1D: 85 8B    sta $8b
1C1F: C8       iny
1C20: B1 51    lda ($51), y
1C22: 85 8C    sta $8c
1C24: 84 89    sty $89
1C26: A6 88    ldx $88
1C28: BD 10 05 lda $0510, x
1C2B: D0 1A    bne $1c47
1C2D: A5 8A    lda $8a
1C2F: 0A       asl a
1C30: 0A       asl a
1C31: 0A       asl a
1C32: 0A       asl a
1C33: 69 04    adc #$04
1C35: A6 8B    ldx $8b
1C37: A4 8C    ldy $8c
1C39: 20 E0 23 jsr $23e0
1C3C: A9 03    lda #$03
1C3E: A6 8B    ldx $8b
1C40: A4 8C    ldy $8c
1C42: 20 0C 1A jsr $1a0c
1C45: E6 39    inc $39
1C47: E6 88    inc $88
1C49: E6 8A    inc $8a
1C4B: A5 8A    lda $8a
1C4D: C9 0C    cmp #$0c
1C4F: 90 C7    bcc $1c18
1C51: A9 08    lda #$08
1C53: 85 7F    sta $7f
1C55: A9 00    lda #$00
1C57: 85 8A    sta $8a
1C59: A5 4E    lda $4e
1C5B: 85 88    sta $88
1C5D: A4 89    ldy $89
1C5F: C8       iny
1C60: B1 51    lda ($51), y
1C62: 85 8B    sta $8b
1C64: C8       iny
1C65: B1 51    lda ($51), y
1C67: 85 8C    sta $8c
1C69: 84 89    sty $89
1C6B: A6 88    ldx $88
1C6D: BD 20 05 lda $0520, x
1C70: D0 18    bne $1c8a
1C72: A5 8A    lda $8a
1C74: 0A       asl a
1C75: 0A       asl a
1C76: 0A       asl a
1C77: 0A       asl a
1C78: 69 08    adc #$08
1C7A: A6 8B    ldx $8b
1C7C: A4 8C    ldy $8c
1C7E: 20 E0 23 jsr $23e0
1C81: A9 04    lda #$04
1C83: A6 8B    ldx $8b
1C85: A4 8C    ldy $8c
1C87: 20 0C 1A jsr $1a0c
1C8A: E6 88    inc $88
1C8C: E6 8A    inc $8a
1C8E: A5 8A    lda $8a
1C90: C5 56    cmp $56
1C92: 90 C9    bcc $1c5d
1C94: A9 20    lda #$20
1C96: 85 7F    sta $7f
1C98: A2 00    ldx #$00
1C9A: A0 DC    ldy #$dc
1C9C: 20 87 19 jsr $1987
1C9F: A2 13    ldx #$13
1CA1: A5 35    lda $35
1CA3: F0 01    beq $1ca6
1CA5: E8       inx
1CA6: 8A       txa
1CA7: 20 DB 19 jsr $19db
1CAA: 20 02 19 jsr $1902
1CAD: A4 89    ldy $89
1CAF: A2 00    ldx #$00
1CB1: C8       iny
1CB2: B1 51    lda ($51), y
1CB4: 9D 0A 04 sta $040a, x
1CB7: C8       iny
1CB8: B1 51    lda ($51), y
1CBA: 9D 0F 04 sta $040f, x
1CBD: E8       inx
1CBE: E0 05    cpx #$05
1CC0: 90 EF    bcc $1cb1
1CC2: 60       rts
1CC3: A9 08    lda #$08
1CC5: 85 7F    sta $7f
1CC7: A2 00    ldx #$00
1CC9: A0 F8    ldy #$f8
1CCB: 20 87 19 jsr $1987
1CCE: A9 29    lda #$29
1CD0: 20 DB 19 jsr $19db
1CD3: 20 02 19 jsr $1902
1CD6: A6 5D    ldx $5d
1CD8: A9 00    lda #$00
1CDA: 18       clc
1CDB: 69 22    adc #$22
1CDD: CA       dex
1CDE: 10 FB    bpl $1cdb
1CE0: 38       sec
1CE1: E9 07    sbc #$07
1CE3: AA       tax
1CE4: A0 F8    ldy #$f8
1CE6: 20 87 19 jsr $1987
1CE9: A9 2A    lda #$2a
1CEB: 20 DB 19 jsr $19db
1CEE: 20 02 19 jsr $1902
1CF1: A2 00    ldx #$00
1CF3: 86 88    stx $88
1CF5: 20 EF 1D jsr $1def
1CF8: E6 88    inc $88
1CFA: A6 88    ldx $88
1CFC: E4 5E    cpx $5e
1CFE: 90 F5    bcc $1cf5
1D00: A9 08    lda #$08
1D02: 85 7F    sta $7f
1D04: A2 00    ldx #$00
1D06: A0 E8    ldy #$e8
1D08: 20 87 19 jsr $1987
1D0B: A9 2B    lda #$2b
1D0D: 20 DB 19 jsr $19db
1D10: 20 02 19 jsr $1902
1D13: A2 1B    ldx #$1b
1D15: A0 E7    ldy #$e7
1D17: 20 87 19 jsr $1987
1D1A: A5 5D    lda $5d
1D1C: 18       clc
1D1D: 69 20    adc #$20
1D1F: 20 DB 19 jsr $19db
1D22: 20 02 19 jsr $1902
1D25: A2 24    ldx #$24
1D27: A0 E8    ldy #$e8
1D29: 20 87 19 jsr $1987
1D2C: A9 2C    lda #$2c
1D2E: 20 DB 19 jsr $19db
1D31: 20 02 19 jsr $1902
1D34: A9 00    lda #$00
1D36: 85 8B    sta $8b
1D38: 85 8C    sta $8c
1D3A: A6 50    ldx $50
1D3C: E8       inx
1D3D: 86 8D    stx $8d
1D3F: A5 8D    lda $8d
1D41: A2 00    ldx #$00
1D43: C9 0A    cmp #$0a
1D45: 90 07    bcc $1d4e
1D47: 38       sec
1D48: E9 0A    sbc #$0a
1D4A: E8       inx
1D4B: 4C 43 1D jmp $1d43
1D4E: 85 8D    sta $8d
1D50: 8A       txa
1D51: A2 00    ldx #$00
1D53: C9 0A    cmp #$0a
1D55: 90 07    bcc $1d5e
1D57: 38       sec
1D58: E9 0A    sbc #$0a
1D5A: E8       inx
1D5B: 4C 53 1D jmp $1d53
1D5E: 85 8C    sta $8c
1D60: 86 8B    stx $8b
1D62: A5 8B    lda $8b
1D64: F0 07    beq $1d6d
1D66: A2 3B    ldx #$3b
1D68: A0 E7    ldy #$e7
1D6A: 20 01 1B jsr $1b01
1D6D: A5 8C    lda $8c
1D6F: A2 40    ldx #$40
1D71: A0 E7    ldy #$e7
1D73: 20 01 1B jsr $1b01
1D76: A5 8D    lda $8d
1D78: A2 45    ldx #$45
1D7A: A0 E7    ldy #$e7
1D7C: 20 01 1B jsr $1b01
1D7F: A2 4E    ldx #$4e
1D81: A0 E8    ldy #$e8
1D83: 20 87 19 jsr $1987
1D86: A9 2D    lda #$2d
1D88: 20 DB 19 jsr $19db
1D8B: 20 02 19 jsr $1902
1D8E: A5 3A    lda $3a
1D90: A2 66    ldx #$66
1D92: A0 E7    ldy #$e7
1D94: 20 01 1B jsr $1b01
1D97: A5 3B    lda $3b
1D99: A2 6B    ldx #$6b
1D9B: A0 E7    ldy #$e7
1D9D: 20 01 1B jsr $1b01
1DA0: A5 3C    lda $3c
1DA2: A2 70    ldx #$70
1DA4: A0 E7    ldy #$e7
1DA6: 20 01 1B jsr $1b01
1DA9: A9 00    lda #$00
1DAB: A2 75    ldx #$75
1DAD: A0 E7    ldy #$e7
1DAF: 20 01 1B jsr $1b01
1DB2: A2 7E    ldx #$7e
1DB4: A0 E8    ldy #$e8
1DB6: 20 87 19 jsr $1987
1DB9: A9 2E    lda #$2e
1DBB: 20 DB 19 jsr $19db
1DBE: 20 02 19 jsr $1902
1DC1: A5 4D    lda $4d
1DC3: 4A       lsr a
1DC4: C9 08    cmp #$08
1DC6: 90 02    bcc $1dca
1DC8: A9 08    lda #$08
1DCA: 49 FF    eor #$ff
1DCC: 38       sec
1DCD: 69 09    adc #$09
1DCF: 85 1D    sta $1d
1DD1: A2 91    ldx #$91
1DD3: A0 E7    ldy #$e7
1DD5: 20 01 1B jsr $1b01
1DD8: A9 00    lda #$00
1DDA: 85 1E    sta $1e
1DDC: A2 96    ldx #$96
1DDE: A0 E7    ldy #$e7
1DE0: 20 01 1B jsr $1b01
1DE3: A9 00    lda #$00
1DE5: 85 1F    sta $1f
1DE7: A2 9B    ldx #$9b
1DE9: A0 E7    ldy #$e7
1DEB: 20 01 1B jsr $1b01
1DEE: 60       rts
1DEF: A9 00    lda #$00
1DF1: 18       clc
1DF2: 69 22    adc #$22
1DF4: CA       dex
1DF5: 10 FB    bpl $1df2
1DF7: 38       sec
1DF8: E9 07    sbc #$07
1DFA: 85 8B    sta $8b
1DFC: A9 08    lda #$08
1DFE: 85 7F    sta $7f
1E00: A5 88    lda $88
1E02: 0A       asl a
1E03: 0A       asl a
1E04: 0A       asl a
1E05: 0A       asl a
1E06: 0A       asl a
1E07: 0A       asl a
1E08: AA       tax
1E09: E8       inx
1E0A: E8       inx
1E0B: 86 8D    stx $8d
1E0D: A6 8B    ldx $8b
1E0F: E8       inx
1E10: 86 8C    stx $8c
1E12: A9 06    lda #$06
1E14: 85 8E    sta $8e
1E16: A6 8D    ldx $8d
1E18: BD 00 05 lda $0500, x
1E1B: A6 8C    ldx $8c
1E1D: A0 F7    ldy #$f7
1E1F: 20 01 1B jsr $1b01
1E22: A5 8C    lda $8c
1E24: 18       clc
1E25: 69 05    adc #$05
1E27: 85 8C    sta $8c
1E29: E6 8D    inc $8d
1E2B: C6 8E    dec $8e
1E2D: D0 E7    bne $1e16
1E2F: A9 20    lda #$20
1E31: 85 7F    sta $7f
1E33: A6 88    ldx $88
1E35: B5 20    lda $20, x
1E37: F0 29    beq $1e62
1E39: C9 08    cmp #$08
1E3B: 90 02    bcc $1e3f
1E3D: A9 08    lda #$08
1E3F: 85 8E    sta $8e
1E41: A5 8B    lda $8b
1E43: 85 8C    sta $8c
1E45: A6 8C    ldx $8c
1E47: A0 EE    ldy #$ee
1E49: 20 87 19 jsr $1987
1E4C: A9 2F    lda #$2f
1E4E: 20 DB 19 jsr $19db
1E51: 20 02 19 jsr $1902
1E54: C6 8E    dec $8e
1E56: F0 0A    beq $1e62
1E58: A5 8C    lda $8c
1E5A: 18       clc
1E5B: 69 04    adc #$04
1E5D: 85 8C    sta $8c
1E5F: 4C 45 1E jmp $1e45
1E62: 60       rts
1E63: A9 00    lda #$00
1E65: 85 46    sta $46
1E67: 85 47    sta $47
1E69: A5 60    lda $60
1E6B: 4A       lsr a
1E6C: 90 02    bcc $1e70
1E6E: E6 46    inc $46
1E70: 4A       lsr a
1E71: 90 02    bcc $1e75
1E73: C6 46    dec $46
1E75: 4A       lsr a
1E76: 90 02    bcc $1e7a
1E78: C6 47    dec $47
1E7A: 4A       lsr a
1E7B: 90 02    bcc $1e7f
1E7D: E6 47    inc $47
1E7F: 06 47    asl $47
1E81: A5 49    lda $49
1E83: F0 16    beq $1e9b
1E85: C9 02    cmp #$02
1E87: D0 03    bne $1e8c
1E89: 4C 81 1F jmp $1f81
1E8C: B0 03    bcs $1e91
1E8E: 4C 22 1F jmp $1f22
1E91: C9 03    cmp #$03
1E93: D0 03    bne $1e98
1E95: 4C E3 20 jmp $20e3
1E98: 4C 3E 21 jmp $213e
1E9B: A5 60    lda $60
1E9D: 29 10    and #$10
1E9F: F0 03    beq $1ea4
1EA1: 4C D0 20 jmp $20d0
1EA4: A5 47    lda $47
1EA6: F0 30    beq $1ed8
1EA8: A6 44    ldx $44
1EAA: E0 03    cpx #$03
1EAC: D0 2A    bne $1ed8
1EAE: A5 47    lda $47
1EB0: 30 0F    bmi $1ec1
1EB2: A6 42    ldx $42
1EB4: A4 43    ldy $43
1EB6: C8       iny
1EB7: C8       iny
1EB8: 20 C8 23 jsr $23c8
1EBB: 29 02    and #$02
1EBD: F0 19    beq $1ed8
1EBF: D0 0C    bne $1ecd
1EC1: A6 42    ldx $42
1EC3: A4 43    ldy $43
1EC5: 88       dey
1EC6: 20 C8 23 jsr $23c8
1EC9: 29 02    and #$02
1ECB: F0 0B    beq $1ed8
1ECD: A9 00    lda #$00
1ECF: 85 46    sta $46
1ED1: A9 01    lda #$01
1ED3: 85 49    sta $49
1ED5: 4C 19 1F jmp $1f19
1ED8: A9 00    lda #$00
1EDA: 85 47    sta $47
1EDC: A5 44    lda $44
1EDE: 18       clc
1EDF: 65 46    adc $46
1EE1: A6 42    ldx $42
1EE3: C9 00    cmp #$00
1EE5: 10 01    bpl $1ee8
1EE7: CA       dex
1EE8: C9 08    cmp #$08
1EEA: 30 01    bmi $1eed
1EEC: E8       inx
1EED: A4 43    ldy $43
1EEF: 88       dey
1EF0: 20 C8 23 jsr $23c8
1EF3: 29 01    and #$01
1EF5: D0 19    bne $1f10
1EF7: A8       tay
1EF8: A2 FF    ldx #$ff
1EFA: A5 46    lda $46
1EFC: 18       clc
1EFD: 65 44    adc $44
1EFF: 29 07    and #$07
1F01: C9 04    cmp #$04
1F03: B0 03    bcs $1f08
1F05: A2 01    ldx #$01
1F07: C8       iny
1F08: 86 4B    stx $4b
1F0A: 84 4A    sty $4a
1F0C: A9 03    lda #$03
1F0E: 85 49    sta $49
1F10: 20 76 22 jsr $2276
1F13: 90 04    bcc $1f19
1F15: A9 00    lda #$00
1F17: 85 46    sta $46
1F19: A5 46    lda $46
1F1B: F0 02    beq $1f1f
1F1D: 85 4C    sta $4c
1F1F: 4C 7B 21 jmp $217b
1F22: A5 60    lda $60
1F24: 29 10    and #$10
1F26: F0 03    beq $1f2b
1F28: 4C D0 20 jmp $20d0
1F2B: A5 46    lda $46
1F2D: F0 1B    beq $1f4a
1F2F: A6 45    ldx $45
1F31: D0 17    bne $1f4a
1F33: A6 42    ldx $42
1F35: A4 43    ldy $43
1F37: 88       dey
1F38: 20 C8 23 jsr $23c8
1F3B: 29 01    and #$01
1F3D: F0 0B    beq $1f4a
1F3F: A9 00    lda #$00
1F41: 85 47    sta $47
1F43: A9 00    lda #$00
1F45: 85 49    sta $49
1F47: 4C 7A 1F jmp $1f7a
1F4A: A9 00    lda #$00
1F4C: 85 46    sta $46
1F4E: A5 47    lda $47
1F50: F0 28    beq $1f7a
1F52: A5 45    lda $45
1F54: D0 24    bne $1f7a
1F56: A5 47    lda $47
1F58: 30 12    bmi $1f6c
1F5A: A6 42    ldx $42
1F5C: A4 43    ldy $43
1F5E: C8       iny
1F5F: C8       iny
1F60: 20 C8 23 jsr $23c8
1F63: 29 02    and #$02
1F65: D0 13    bne $1f7a
1F67: 85 47    sta $47
1F69: 4C 7A 1F jmp $1f7a
1F6C: A6 42    ldx $42
1F6E: A4 43    ldy $43
1F70: 88       dey
1F71: 20 C8 23 jsr $23c8
1F74: 29 02    and #$02
1F76: D0 02    bne $1f7a
1F78: 85 47    sta $47
1F7A: A9 00    lda #$00
1F7C: 85 4C    sta $4c
1F7E: 4C 7B 21 jmp $217b
1F81: A5 4B    lda $4b
1F83: 85 46    sta $46
1F85: A5 47    lda $47
1F87: 85 89    sta $89
1F89: A5 4A    lda $4a
1F8B: 4A       lsr a
1F8C: 4A       lsr a
1F8D: C9 06    cmp #$06
1F8F: 90 02    bcc $1f93
1F91: A9 06    lda #$06
1F93: 49 FF    eor #$ff
1F95: 38       sec
1F96: 69 02    adc #$02
1F98: 85 47    sta $47
1F9A: E6 4A    inc $4a
1F9C: A5 41    lda $41
1F9E: C9 DC    cmp #$dc
1FA0: 90 0B    bcc $1fad
1FA2: A9 FF    lda #$ff
1FA4: 85 47    sta $47
1FA6: A9 0C    lda #$0c
1FA8: 85 4A    sta $4a
1FAA: 4C 62 20 jmp $2062
1FAD: A5 44    lda $44
1FAF: 18       clc
1FB0: 65 46    adc $46
1FB2: C9 03    cmp #$03
1FB4: D0 60    bne $2016
1FB6: A5 89    lda $89
1FB8: F0 5C    beq $2016
1FBA: 30 31    bmi $1fed
1FBC: A6 42    ldx $42
1FBE: A4 43    ldy $43
1FC0: C8       iny
1FC1: 20 C8 23 jsr $23c8
1FC4: 29 02    and #$02
1FC6: D0 13    bne $1fdb
1FC8: A6 42    ldx $42
1FCA: A4 43    ldy $43
1FCC: C8       iny
1FCD: A5 45    lda $45
1FCF: C9 04    cmp #$04
1FD1: 90 01    bcc $1fd4
1FD3: C8       iny
1FD4: 20 C8 23 jsr $23c8
1FD7: 29 02    and #$02
1FD9: F0 3B    beq $2016
1FDB: A9 01    lda #$01
1FDD: 85 49    sta $49
1FDF: A5 45    lda $45
1FE1: 18       clc
1FE2: 65 47    adc $47
1FE4: 29 01    and #$01
1FE6: F0 02    beq $1fea
1FE8: E6 47    inc $47
1FEA: 4C CD 20 jmp $20cd
1FED: A6 42    ldx $42
1FEF: A4 43    ldy $43
1FF1: 20 C8 23 jsr $23c8
1FF4: 29 02    and #$02
1FF6: F0 1E    beq $2016
1FF8: A6 42    ldx $42
1FFA: A4 43    ldy $43
1FFC: C8       iny
1FFD: 20 C8 23 jsr $23c8
2000: 29 02    and #$02
2002: F0 12    beq $2016
2004: A9 01    lda #$01
2006: 85 49    sta $49
2008: A5 45    lda $45
200A: 18       clc
200B: 65 47    adc $47
200D: 29 01    and #$01
200F: F0 02    beq $2013
2011: C6 47    dec $47
2013: 4C CD 20 jmp $20cd
2016: A5 47    lda $47
2018: 18       clc
2019: 65 45    adc $45
201B: F0 1C    beq $2039
201D: 10 2D    bpl $204c
201F: A6 42    ldx $42
2021: A4 43    ldy $43
2023: 88       dey
2024: 20 C8 23 jsr $23c8
2027: 29 01    and #$01
2029: F0 37    beq $2062
202B: A9 00    lda #$00
202D: 85 49    sta $49
202F: A9 00    lda #$00
2031: 38       sec
2032: E5 45    sbc $45
2034: 85 47    sta $47
2036: 4C 62 20 jmp $2062
2039: A6 42    ldx $42
203B: A4 43    ldy $43
203D: 88       dey
203E: 20 C8 23 jsr $23c8
2041: 29 01    and #$01
2043: F0 1D    beq $2062
2045: A9 00    lda #$00
2047: 85 49    sta $49
2049: 4C 62 20 jmp $2062
204C: C9 08    cmp #$08
204E: D0 12    bne $2062
2050: A6 42    ldx $42
2052: A4 43    ldy $43
2054: 20 C8 23 jsr $23c8
2057: 29 01    and #$01
2059: F0 07    beq $2062
205B: A9 00    lda #$00
205D: 85 49    sta $49
205F: 4C 62 20 jmp $2062
2062: A5 55    lda $55
2064: F0 59    beq $20bf
2066: A5 58    lda $58
2068: 38       sec
2069: E9 01    sbc #$01
206B: C5 40    cmp $40
206D: B0 50    bcs $20bf
206F: 69 0A    adc #$0a
2071: C5 40    cmp $40
2073: 90 4A    bcc $20bf
2075: A5 41    lda $41
2077: 38       sec
2078: E9 11    sbc #$11
207A: 85 8B    sta $8b
207C: E9 02    sbc #$02
207E: 18       clc
207F: 65 47    adc $47
2081: 85 8C    sta $8c
2083: A5 59    lda $59
2085: C5 8B    cmp $8b
2087: F0 06    beq $208f
2089: B0 0E    bcs $2099
208B: C5 8C    cmp $8c
208D: 90 0A    bcc $2099
208F: A6 5B    ldx $5b
2091: D0 03    bne $2096
2093: 18       clc
2094: 69 01    adc #$01
2096: 4C AC 20 jmp $20ac
2099: A5 5A    lda $5a
209B: C5 8B    cmp $8b
209D: F0 06    beq $20a5
209F: B0 1E    bcs $20bf
20A1: C5 8C    cmp $8c
20A3: 90 1A    bcc $20bf
20A5: A6 5B    ldx $5b
20A7: F0 03    beq $20ac
20A9: 18       clc
20AA: 69 01    adc #$01
20AC: 38       sec
20AD: E5 8B    sbc $8b
20AF: 18       clc
20B0: 69 01    adc #$01
20B2: 85 47    sta $47
20B4: A9 00    lda #$00
20B6: 85 4A    sta $4a
20B8: A9 04    lda #$04
20BA: 85 49    sta $49
20BC: 4C CD 20 jmp $20cd
20BF: 20 76 22 jsr $2276
20C2: 90 09    bcc $20cd
20C4: A9 00    lda #$00
20C6: 38       sec
20C7: E5 46    sbc $46
20C9: 85 46    sta $46
20CB: 85 4B    sta $4b
20CD: 4C 7B 21 jmp $217b
20D0: A9 00    lda #$00
20D2: 85 4A    sta $4a
20D4: A9 02    lda #$02
20D6: 85 49    sta $49
20D8: A5 46    lda $46
20DA: 85 4B    sta $4b
20DC: F0 02    beq $20e0
20DE: 85 4C    sta $4c
20E0: 4C 81 1F jmp $1f81
20E3: E6 4A    inc $4a
20E5: A5 4A    lda $4a
20E7: C9 04    cmp #$04
20E9: B0 0B    bcs $20f6
20EB: A5 4B    lda $4b
20ED: 85 46    sta $46
20EF: A9 FF    lda #$ff
20F1: 85 47    sta $47
20F3: 4C 08 21 jmp $2108
20F6: A9 00    lda #$00
20F8: 85 46    sta $46
20FA: A5 4A    lda $4a
20FC: 4A       lsr a
20FD: 4A       lsr a
20FE: C9 04    cmp #$04
2100: 90 02    bcc $2104
2102: A9 03    lda #$03
2104: 49 FF    eor #$ff
2106: 85 47    sta $47
2108: A5 47    lda $47
210A: 18       clc
210B: 65 45    adc $45
210D: F0 1C    beq $212b
210F: 10 2A    bpl $213b
2111: A6 42    ldx $42
2113: A4 43    ldy $43
2115: 88       dey
2116: 20 C8 23 jsr $23c8
2119: 29 01    and #$01
211B: F0 1E    beq $213b
211D: A9 00    lda #$00
211F: 85 49    sta $49
2121: A9 00    lda #$00
2123: 38       sec
2124: E5 45    sbc $45
2126: 85 47    sta $47
2128: 4C 3B 21 jmp $213b
212B: A6 42    ldx $42
212D: A4 43    ldy $43
212F: 88       dey
2130: 20 C8 23 jsr $23c8
2133: 29 01    and #$01
2135: F0 04    beq $213b
2137: A9 00    lda #$00
2139: 85 49    sta $49
213B: 4C 7B 21 jmp $217b
213E: A5 60    lda $60
2140: 29 10    and #$10
2142: F0 03    beq $2147
2144: 4C D0 20 jmp $20d0
2147: A5 58    lda $58
2149: 38       sec
214A: E9 01    sbc #$01
214C: C5 40    cmp $40
214E: B0 06    bcs $2156
2150: 69 0A    adc #$0a
2152: C5 40    cmp $40
2154: B0 0A    bcs $2160
2156: A9 00    lda #$00
2158: 85 4A    sta $4a
215A: 85 4B    sta $4b
215C: A9 03    lda #$03
215E: 85 49    sta $49
2160: A9 01    lda #$01
2162: 85 47    sta $47
2164: A5 46    lda $46
2166: F0 02    beq $216a
2168: 85 4C    sta $4c
216A: 20 76 22 jsr $2276
216D: 90 04    bcc $2173
216F: A9 00    lda #$00
2171: 85 46    sta $46
2173: A5 41    lda $41
2175: C9 DC    cmp #$dc
2177: 90 02    bcc $217b
2179: E6 4F    inc $4f
217B: A5 48    lda $48
217D: 20 24 23 jsr $2324
2180: A5 40    lda $40
2182: 18       clc
2183: 65 46    adc $46
2185: 85 40    sta $40
2187: A5 44    lda $44
2189: 18       clc
218A: 65 46    adc $46
218C: 10 02    bpl $2190
218E: C6 42    dec $42
2190: C9 08    cmp #$08
2192: 30 02    bmi $2196
2194: E6 42    inc $42
2196: 29 07    and #$07
2198: 85 44    sta $44
219A: A5 41    lda $41
219C: 18       clc
219D: 65 47    adc $47
219F: 85 41    sta $41
21A1: A5 45    lda $45
21A3: 18       clc
21A4: 65 47    adc $47
21A6: 10 02    bpl $21aa
21A8: C6 43    dec $43
21AA: C9 08    cmp #$08
21AC: 30 02    bmi $21b0
21AE: E6 43    inc $43
21B0: 29 07    and #$07
21B2: 85 45    sta $45
21B4: A2 06    ldx #$06
21B6: A5 4C    lda $4c
21B8: F0 0C    beq $21c6
21BA: 10 02    bpl $21be
21BC: A2 09    ldx #$09
21BE: 86 88    stx $88
21C0: A5 44    lda $44
21C2: 4A       lsr a
21C3: 4C CD 21 jmp $21cd
21C6: A9 0C    lda #$0c
21C8: 85 88    sta $88
21CA: A5 45    lda $45
21CC: 4A       lsr a
21CD: A2 02    ldx #$02
21CF: 86 89    stx $89
21D1: 24 89    bit $89
21D3: F0 03    beq $21d8
21D5: 29 01    and #$01
21D7: 0A       asl a
21D8: A6 49    ldx $49
21DA: E0 01    cpx #$01
21DC: D0 09    bne $21e7
21DE: A6 47    ldx $47
21E0: D0 0B    bne $21ed
21E2: A9 00    lda #$00
21E4: 4C ED 21 jmp $21ed
21E7: A6 46    ldx $46
21E9: D0 02    bne $21ed
21EB: A9 00    lda #$00
21ED: 18       clc
21EE: 65 88    adc $88
21F0: 85 48    sta $48
21F2: 20 24 23 jsr $2324
21F5: A6 42    ldx $42
21F7: A4 43    ldy $43
21F9: A5 45    lda $45
21FB: C9 04    cmp #$04
21FD: 90 01    bcc $2200
21FF: C8       iny
2200: 84 89    sty $89
2202: 20 C8 23 jsr $23c8
2205: 85 88    sta $88
2207: 29 0C    and #$0c
2209: F0 6A    beq $2275
220B: 29 08    and #$08
220D: D0 39    bne $2248
220F: C6 39    dec $39
2211: A9 06    lda #$06
2213: 8D AC 0C sta $0cac
2216: A2 A8    ldx #$a8
2218: A0 0C    ldy #$0c
221A: A9 07    lda #$07
221C: 20 F1 FF jsr $fff1
221F: A5 88    lda $88
2221: 4A       lsr a
2222: 4A       lsr a
2223: 4A       lsr a
2224: 4A       lsr a
2225: 18       clc
2226: 65 4E    adc $4e
2228: AA       tax
2229: DE 10 05 dec $0510, x
222C: A6 42    ldx $42
222E: A4 89    ldy $89
2230: 20 FE 22 jsr $22fe
2233: A5 50    lda $50
2235: 4A       lsr a
2236: 4A       lsr a
2237: 18       clc
2238: 69 01    adc #$01
223A: C9 0A    cmp #$0a
223C: 90 02    bcc $2240
223E: A9 0A    lda #$0a
2240: A2 05    ldx #$05
2242: 20 B5 1A jsr $1ab5
2245: 4C 75 22 jmp $2275
2248: A9 05    lda #$05
224A: 8D AC 0C sta $0cac
224D: A2 A8    ldx #$a8
224F: A0 0C    ldy #$0c
2251: A9 07    lda #$07
2253: 20 F1 FF jsr $fff1
2256: A5 88    lda $88
2258: 4A       lsr a
2259: 4A       lsr a
225A: 4A       lsr a
225B: 4A       lsr a
225C: 18       clc
225D: 65 4E    adc $4e
225F: AA       tax
2260: DE 20 05 dec $0520, x
2263: A6 42    ldx $42
2265: A4 89    ldy $89
2267: 20 11 23 jsr $2311
226A: A9 05    lda #$05
226C: A2 06    ldx #$06
226E: 20 B5 1A jsr $1ab5
2271: A9 14    lda #$14
2273: 85 1C    sta $1c
2275: 60       rts
2276: A5 46    lda $46
2278: 30 04    bmi $227e
227A: D0 41    bne $22bd
227C: 18       clc
227D: 60       rts
227E: A5 40    lda $40
2280: C9 01    cmp #$01
2282: 90 78    bcc $22fc
2284: A5 44    lda $44
2286: C9 02    cmp #$02
2288: B0 70    bcs $22fa
228A: A5 47    lda $47
228C: C9 02    cmp #$02
228E: F0 6A    beq $22fa
2290: A6 42    ldx $42
2292: CA       dex
2293: A4 43    ldy $43
2295: A5 45    lda $45
2297: 18       clc
2298: 65 47    adc $47
229A: C9 08    cmp #$08
229C: 90 07    bcc $22a5
229E: 10 04    bpl $22a4
22A0: 88       dey
22A1: 4C A5 22 jmp $22a5
22A4: C8       iny
22A5: 20 C8 23 jsr $23c8
22A8: C9 01    cmp #$01
22AA: F0 50    beq $22fc
22AC: A5 47    lda $47
22AE: 10 4A    bpl $22fa
22B0: A6 42    ldx $42
22B2: CA       dex
22B3: C8       iny
22B4: 20 C8 23 jsr $23c8
22B7: C9 01    cmp #$01
22B9: F0 41    beq $22fc
22BB: D0 3D    bne $22fa
22BD: A5 40    lda $40
22BF: C9 98    cmp #$98
22C1: B0 39    bcs $22fc
22C3: A5 44    lda $44
22C5: C9 05    cmp #$05
22C7: 90 31    bcc $22fa
22C9: A5 47    lda $47
22CB: C9 02    cmp #$02
22CD: F0 2B    beq $22fa
22CF: A6 42    ldx $42
22D1: E8       inx
22D2: A4 43    ldy $43
22D4: A5 45    lda $45
22D6: 18       clc
22D7: 65 47    adc $47
22D9: C9 08    cmp #$08
22DB: 90 07    bcc $22e4
22DD: 10 04    bpl $22e3
22DF: 88       dey
22E0: 4C E4 22 jmp $22e4
22E3: C8       iny
22E4: 20 C8 23 jsr $23c8
22E7: C9 01    cmp #$01
22E9: F0 11    beq $22fc
22EB: A5 47    lda $47
22ED: 10 0B    bpl $22fa
22EF: A6 42    ldx $42
22F1: E8       inx
22F2: C8       iny
22F3: 20 C8 23 jsr $23c8
22F6: C9 01    cmp #$01
22F8: F0 02    beq $22fc
22FA: 18       clc
22FB: 60       rts
22FC: 38       sec
22FD: 60       rts
22FE: 8A       txa
22FF: 48       pha
2300: A9 00    lda #$00
2302: 20 E0 23 jsr $23e0
2305: A9 02    lda #$02
2307: 85 7F    sta $7f
2309: 68       pla
230A: AA       tax
230B: A9 03    lda #$03
230D: 20 0C 1A jsr $1a0c
2310: 60       rts
2311: 8A       txa
2312: 48       pha
2313: A9 00    lda #$00
2315: 20 E0 23 jsr $23e0
2318: A9 08    lda #$08
231A: 85 7F    sta $7f
231C: 68       pla
231D: AA       tax
231E: A9 04    lda #$04
2320: 20 0C 1A jsr $1a0c
2323: 60       rts
2324: A2 20    ldx #$20
2326: 86 7F    stx $7f
2328: 20 DB 19 jsr $19db
232B: A6 40    ldx $40
232D: A4 41    ldy $41
232F: 20 87 19 jsr $1987
2332: 20 02 19 jsr $1902
2335: 60       rts
2336: A2 20    ldx #$20
2338: 86 7F    stx $7f
233A: 18       clc
233B: 69 0F    adc #$0f
233D: 20 DB 19 jsr $19db
2340: A6 30    ldx $30
2342: A4 31    ldy $31
2344: 20 87 19 jsr $1987
2347: 20 02 19 jsr $1902
234A: 60       rts
234B: A2 80    ldx #$80
234D: 86 7F    stx $7f
234F: A6 88    ldx $88
2351: BD 19 04 lda $0419, x
2354: 18       clc
2355: 69 15    adc #$15
2357: 48       pha
2358: 20 DB 19 jsr $19db
235B: A6 88    ldx $88
235D: BD 00 04 lda $0400, x
2360: BC 05 04 ldy $0405, x
2363: AA       tax
2364: 68       pla
2365: C9 1D    cmp #$1d
2367: 90 04    bcc $236d
2369: 8A       txa
236A: E9 08    sbc #$08
236C: AA       tax
236D: 20 87 19 jsr $1987
2370: 20 02 19 jsr $1902
2373: 60       rts
2374: A5 55    lda $55
2376: F0 4F    beq $23c7
2378: A4 59    ldy $59
237A: A5 5B    lda $5b
237C: F0 02    beq $2380
237E: A4 5A    ldy $5a
2380: 84 89    sty $89
2382: A9 02    lda #$02
2384: 85 7F    sta $7f
2386: A9 05    lda #$05
2388: 20 DB 19 jsr $19db
238B: A6 58    ldx $58
238D: A4 89    ldy $89
238F: 20 87 19 jsr $1987
2392: 20 02 19 jsr $1902
2395: E6 89    inc $89
2397: E6 89    inc $89
2399: A5 89    lda $89
239B: C9 E0    cmp #$e0
239D: D0 04    bne $23a3
239F: A9 06    lda #$06
23A1: 85 89    sta $89
23A3: A9 05    lda #$05
23A5: 20 DB 19 jsr $19db
23A8: A6 58    ldx $58
23AA: A4 89    ldy $89
23AC: 20 87 19 jsr $1987
23AF: 20 02 19 jsr $1902
23B2: A5 5B    lda $5b
23B4: F0 07    beq $23bd
23B6: A5 89    lda $89
23B8: 85 5A    sta $5a
23BA: 4C C1 23 jmp $23c1
23BD: A5 89    lda $89
23BF: 85 59    sta $59
23C1: A5 5B    lda $5b
23C3: 49 FF    eor #$ff
23C5: 85 5B    sta $5b
23C7: 60       rts
23C8: C0 19    cpy #$19
23CA: B0 11    bcs $23dd
23CC: E0 14    cpx #$14
23CE: B0 0D    bcs $23dd
23D0: 20 ED 23 jsr $23ed
23D3: B0 04    bcs $23d9
23D5: BD 00 06 lda $0600, x
23D8: 60       rts
23D9: BD 00 07 lda $0700, x
23DC: 60       rts
23DD: A9 00    lda #$00
23DF: 60       rts
23E0: 20 ED 23 jsr $23ed
23E3: B0 04    bcs $23e9
23E5: 9D 00 06 sta $0600, x
23E8: 60       rts
23E9: 9D 00 07 sta $0700, x
23EC: 60       rts
23ED: 48       pha
23EE: 84 8E    sty $8e
23F0: 98       tya
23F1: 0A       asl a
23F2: 0A       asl a
23F3: 65 8E    adc $8e
23F5: 0A       asl a
23F6: 0A       asl a
23F7: 08       php
23F8: 18       clc
23F9: 85 8E    sta $8e
23FB: 8A       txa
23FC: 65 8E    adc $8e
23FE: AA       tax
23FF: B0 03    bcs $2404
2401: 28       plp
2402: 68       pla
2403: 60       rts
2404: 68       pla
2405: 68       pla
2406: 60       rts
2407: E6 38    inc $38
2409: A5 38    lda $38
240B: C9 08    cmp #$08
240D: D0 07    bne $2416
240F: A9 00    lda #$00
2411: 85 38    sta $38
2413: 4C 20 24 jmp $2420
2416: C9 04    cmp #$04
2418: D0 03    bne $241d
241A: 4C 9D 26 jmp $269d
241D: 4C B5 24 jmp $24b5
2420: A5 34    lda $34
2422: 29 02    and #$02
2424: 85 8B    sta $8b
2426: A5 35    lda $35
2428: F0 6A    beq $2494
242A: A5 30    lda $30
242C: 18       clc
242D: 69 04    adc #$04
242F: C5 40    cmp $40
2431: B0 11    bcs $2444
2433: E6 32    inc $32
2435: A5 32    lda $32
2437: C9 06    cmp #$06
2439: 30 02    bmi $243d
243B: C6 32    dec $32
243D: A9 00    lda #$00
243F: 85 8B    sta $8b
2441: 4C 52 24 jmp $2452
2444: C6 32    dec $32
2446: A5 32    lda $32
2448: C9 FB    cmp #$fb
244A: 10 02    bpl $244e
244C: E6 32    inc $32
244E: A9 02    lda #$02
2450: 85 8B    sta $8b
2452: A5 41    lda $41
2454: 18       clc
2455: 69 04    adc #$04
2457: C5 31    cmp $31
2459: 90 0D    bcc $2468
245B: E6 33    inc $33
245D: A5 33    lda $33
245F: C9 06    cmp #$06
2461: 30 02    bmi $2465
2463: C6 33    dec $33
2465: 4C 72 24 jmp $2472
2468: C6 33    dec $33
246A: A5 33    lda $33
246C: C9 FB    cmp #$fb
246E: 10 02    bpl $2472
2470: E6 33    inc $33
2472: A5 31    lda $31
2474: 18       clc
2475: 65 33    adc $33
2477: C9 28    cmp #$28
2479: B0 08    bcs $2483
247B: A5 33    lda $33
247D: 49 FF    eor #$ff
247F: 85 33    sta $33
2481: E6 33    inc $33
2483: A5 30    lda $30
2485: 18       clc
2486: 65 32    adc $32
2488: C9 90    cmp #$90
248A: 90 08    bcc $2494
248C: A5 32    lda $32
248E: 49 FF    eor #$ff
2490: 85 32    sta $32
2492: E6 32    inc $32
2494: A5 34    lda $34
2496: 20 36 23 jsr $2336
2499: A5 30    lda $30
249B: 18       clc
249C: 65 32    adc $32
249E: 85 30    sta $30
24A0: A5 31    lda $31
24A2: 18       clc
24A3: 65 33    adc $33
24A5: 85 31    sta $31
24A7: A5 34    lda $34
24A9: 29 01    and #$01
24AB: 49 01    eor #$01
24AD: 05 8B    ora $8b
24AF: 85 34    sta $34
24B1: 20 36 23 jsr $2336
24B4: 60       rts
24B5: C6 36    dec $36
24B7: A6 36    ldx $36
24B9: 10 04    bpl $24bf
24BB: A6 37    ldx $37
24BD: 86 36    stx $36
24BF: E4 57    cpx $57
24C1: 90 01    bcc $24c4
24C3: 60       rts
24C4: 86 88    stx $88
24C6: BD 14 04 lda $0414, x
24C9: C9 01    cmp #$01
24CB: D0 03    bne $24d0
24CD: 4C EF 25 jmp $25ef
24D0: 90 03    bcc $24d5
24D2: 4C B6 25 jmp $25b6
24D5: BD 0A 04 lda $040a, x
24D8: 85 8B    sta $8b
24DA: BD 0F 04 lda $040f, x
24DD: 85 8C    sta $8c
24DF: A9 00    lda #$00
24E1: 85 8D    sta $8d
24E3: A6 8B    ldx $8b
24E5: A4 8C    ldy $8c
24E7: CA       dex
24E8: 88       dey
24E9: 20 C8 23 jsr $23c8
24EC: 29 01    and #$01
24EE: F0 02    beq $24f2
24F0: 85 8D    sta $8d
24F2: A6 8B    ldx $8b
24F4: A4 8C    ldy $8c
24F6: E8       inx
24F7: 88       dey
24F8: 20 C8 23 jsr $23c8
24FB: 29 01    and #$01
24FD: F0 06    beq $2505
24FF: A9 02    lda #$02
2501: 05 8D    ora $8d
2503: 85 8D    sta $8d
2505: A6 8B    ldx $8b
2507: A4 8C    ldy $8c
2509: 88       dey
250A: 20 C8 23 jsr $23c8
250D: 29 02    and #$02
250F: F0 06    beq $2517
2511: A9 08    lda #$08
2513: 05 8D    ora $8d
2515: 85 8D    sta $8d
2517: A6 8B    ldx $8b
2519: A4 8C    ldy $8c
251B: C8       iny
251C: C8       iny
251D: 20 C8 23 jsr $23c8
2520: 29 02    and #$02
2522: F0 06    beq $252a
2524: A9 04    lda #$04
2526: 05 8D    ora $8d
2528: 85 8D    sta $8d
252A: 20 A9 25 jsr $25a9
252D: E0 01    cpx #$01
252F: D0 0A    bne $253b
2531: A5 8D    lda $8d
2533: A6 88    ldx $88
2535: 9D 1E 04 sta $041e, x
2538: 4C 7B 25 jmp $257b
253B: A6 88    ldx $88
253D: BD 1E 04 lda $041e, x
2540: C9 04    cmp #$04
2542: B0 05    bcs $2549
2544: 49 FC    eor #$fc
2546: 4C 4B 25 jmp $254b
2549: 49 F3    eor #$f3
254B: 25 8D    and $8d
254D: 85 8D    sta $8d
254F: 20 A9 25 jsr $25a9
2552: E0 01    cpx #$01
2554: D0 0A    bne $2560
2556: A6 88    ldx $88
2558: A5 8D    lda $8d
255A: 9D 1E 04 sta $041e, x
255D: 4C 7B 25 jmp $257b
2560: A5 8D    lda $8d
2562: 85 8E    sta $8e
2564: 20 A4 1A jsr $1aa4
2567: A5 66    lda $66
2569: 25 8E    and $8e
256B: 85 8D    sta $8d
256D: 20 A9 25 jsr $25a9
2570: E0 01    cpx #$01
2572: D0 F0    bne $2564
2574: A6 88    ldx $88
2576: A5 8D    lda $8d
2578: 9D 1E 04 sta $041e, x
257B: A6 88    ldx $88
257D: BD 1E 04 lda $041e, x
2580: 29 03    and #$03
2582: F0 6B    beq $25ef
2584: 29 01    and #$01
2586: F0 0B    beq $2593
2588: A6 8B    ldx $8b
258A: A4 8C    ldy $8c
258C: CA       dex
258D: 20 C8 23 jsr $23c8
2590: 4C 9B 25 jmp $259b
2593: A6 8B    ldx $8b
2595: A4 8C    ldy $8c
2597: E8       inx
2598: 20 C8 23 jsr $23c8
259B: 29 08    and #$08
259D: F0 50    beq $25ef
259F: A6 88    ldx $88
25A1: A9 02    lda #$02
25A3: 9D 14 04 sta $0414, x
25A6: 4C EF 25 jmp $25ef
25A9: A2 00    ldx #$00
25AB: A5 8D    lda $8d
25AD: 4A       lsr a
25AE: 90 01    bcc $25b1
25B0: E8       inx
25B1: C9 00    cmp #$00
25B3: D0 F8    bne $25ad
25B5: 60       rts
25B6: C9 04    cmp #$04
25B8: D0 35    bne $25ef
25BA: BD 1E 04 lda $041e, x
25BD: BC 0A 04 ldy $040a, x
25C0: 84 8B    sty $8b
25C2: BC 0F 04 ldy $040f, x
25C5: 84 8C    sty $8c
25C7: A6 8B    ldx $8b
25C9: CA       dex
25CA: 29 01    and #$01
25CC: D0 02    bne $25d0
25CE: E8       inx
25CF: E8       inx
25D0: 86 8D    stx $8d
25D2: 20 C8 23 jsr $23c8
25D5: 85 89    sta $89
25D7: 29 08    and #$08
25D9: F0 14    beq $25ef
25DB: A5 89    lda $89
25DD: 4A       lsr a
25DE: 4A       lsr a
25DF: 4A       lsr a
25E0: 4A       lsr a
25E1: 18       clc
25E2: 65 4E    adc $4e
25E4: AA       tax
25E5: DE 20 05 dec $0520, x
25E8: A6 8D    ldx $8d
25EA: A4 8C    ldy $8c
25EC: 20 11 23 jsr $2311
25EF: 20 4B 23 jsr $234b
25F2: A6 88    ldx $88
25F4: BD 14 04 lda $0414, x
25F7: C9 02    cmp #$02
25F9: B0 7A    bcs $2675
25FB: BD 1E 04 lda $041e, x
25FE: 4A       lsr a
25FF: B0 32    bcs $2633
2601: 4A       lsr a
2602: B0 45    bcs $2649
2604: 4A       lsr a
2605: B0 16    bcs $261d
2607: BD 05 04 lda $0405, x
260A: 38       sec
260B: E9 04    sbc #$04
260D: 9D 05 04 sta $0405, x
2610: BD 14 04 lda $0414, x
2613: F0 03    beq $2618
2615: DE 0F 04 dec $040f, x
2618: A9 04    lda #$04
261A: 4C 5F 26 jmp $265f
261D: BD 05 04 lda $0405, x
2620: 18       clc
2621: 69 04    adc #$04
2623: 9D 05 04 sta $0405, x
2626: BD 14 04 lda $0414, x
2629: F0 03    beq $262e
262B: FE 0F 04 inc $040f, x
262E: A9 04    lda #$04
2630: 4C 5F 26 jmp $265f
2633: BD 00 04 lda $0400, x
2636: 38       sec
2637: E9 04    sbc #$04
2639: 9D 00 04 sta $0400, x
263C: BD 14 04 lda $0414, x
263F: F0 03    beq $2644
2641: DE 0A 04 dec $040a, x
2644: A9 02    lda #$02
2646: 4C 5F 26 jmp $265f
2649: BD 00 04 lda $0400, x
264C: 18       clc
264D: 69 04    adc #$04
264F: 9D 00 04 sta $0400, x
2652: BD 14 04 lda $0414, x
2655: F0 03    beq $265a
2657: FE 0A 04 inc $040a, x
265A: A9 00    lda #$00
265C: 4C 5F 26 jmp $265f
265F: 9D 19 04 sta $0419, x
2662: BD 14 04 lda $0414, x
2665: 49 01    eor #$01
2667: 9D 14 04 sta $0414, x
266A: 18       clc
266B: 7D 19 04 adc $0419, x
266E: 9D 19 04 sta $0419, x
2671: 20 4B 23 jsr $234b
2674: 60       rts
2675: BD 14 04 lda $0414, x
2678: 0A       asl a
2679: 29 1F    and #$1f
267B: 9D 14 04 sta $0414, x
267E: F0 02    beq $2682
2680: A9 06    lda #$06
2682: BC 1E 04 ldy $041e, x
2685: C0 01    cpy #$01
2687: D0 03    bne $268c
2689: 18       clc
268A: 69 02    adc #$02
268C: BC 14 04 ldy $0414, x
268F: C0 08    cpy #$08
2691: D0 03    bne $2696
2693: 18       clc
2694: 69 01    adc #$01
2696: 9D 19 04 sta $0419, x
2699: 20 4B 23 jsr $234b
269C: 60       rts
269D: A9 08    lda #$08
269F: 85 7F    sta $7f
26A1: A5 1C    lda $1c
26A3: F0 03    beq $26a8
26A5: C6 1C    dec $1c
26A7: 60       rts
26A8: A2 02    ldx #$02
26AA: 86 88    stx $88
26AC: 20 02 27 jsr $2702
26AF: A6 88    ldx $88
26B1: D6 1D    dec $1d, x
26B3: 08       php
26B4: 10 04    bpl $26ba
26B6: A9 09    lda #$09
26B8: 95 1D    sta $1d, x
26BA: 20 02 27 jsr $2702
26BD: C6 88    dec $88
26BF: 28       plp
26C0: 30 EA    bmi $26ac
26C2: 18       clc
26C3: A5 1D    lda $1d
26C5: 65 1E    adc $1e
26C7: 65 1F    adc $1f
26C9: D0 03    bne $26ce
26CB: E6 4F    inc $4f
26CD: 60       rts
26CE: A5 1F    lda $1f
26D0: F0 05    beq $26d7
26D2: C9 05    cmp #$05
26D4: F0 01    beq $26d7
26D6: 60       rts
26D7: A5 3D    lda $3d
26D9: F0 01    beq $26dc
26DB: 60       rts
26DC: A2 02    ldx #$02
26DE: 86 88    stx $88
26E0: 20 15 27 jsr $2715
26E3: A6 88    ldx $88
26E5: D6 3A    dec $3a, x
26E7: 08       php
26E8: 10 04    bpl $26ee
26EA: A9 09    lda #$09
26EC: 95 3A    sta $3a, x
26EE: 20 15 27 jsr $2715
26F1: C6 88    dec $88
26F3: 28       plp
26F4: 30 EA    bmi $26e0
26F6: 18       clc
26F7: A5 3A    lda $3a
26F9: 65 3B    adc $3b
26FB: 65 3C    adc $3c
26FD: D0 02    bne $2701
26FF: E6 3D    inc $3d
2701: 60       rts
2702: A5 88    lda $88
2704: A8       tay
2705: 0A       asl a
2706: 0A       asl a
2707: 65 88    adc $88
2709: 69 91    adc #$91
270B: AA       tax
270C: B9 1D 00 lda $001d, y
270F: A0 E7    ldy #$e7
2711: 20 01 1B jsr $1b01
2714: 60       rts
2715: A5 88    lda $88
2717: A8       tay
2718: 0A       asl a
2719: 0A       asl a
271A: 65 88    adc $88
271C: 69 66    adc #$66
271E: AA       tax
271F: B9 3A 00 lda $003a, y
2722: A0 E7    ldy #$e7
2724: 20 01 1B jsr $1b01
2727: 60       rts
2728: A5 57    lda $57
272A: F0 2C    beq $2758
272C: A9 00    lda #$00
272E: 85 8A    sta $8a
2730: A6 8A    ldx $8a
2732: BD 00 04 lda $0400, x
2735: 38       sec
2736: E5 40    sbc $40
2738: 18       clc
2739: 69 05    adc #$05
273B: C9 0B    cmp #$0b
273D: B0 11    bcs $2750
273F: BD 05 04 lda $0405, x
2742: 38       sec
2743: E9 01    sbc #$01
2745: E5 41    sbc $41
2747: 18       clc
2748: 69 0E    adc #$0e
274A: C9 1D    cmp #$1d
274C: B0 02    bcs $2750
274E: E6 4F    inc $4f
2750: E6 8A    inc $8a
2752: A5 8A    lda $8a
2754: C5 57    cmp $57
2756: 90 D8    bcc $2730
2758: A5 35    lda $35
275A: F0 1F    beq $277b
275C: A5 30    lda $30
275E: 18       clc
275F: 69 04    adc #$04
2761: 38       sec
2762: E5 40    sbc $40
2764: 18       clc
2765: 69 05    adc #$05
2767: C9 0B    cmp #$0b
2769: B0 10    bcs $277b
276B: A5 31    lda $31
276D: 38       sec
276E: E9 05    sbc #$05
2770: E5 41    sbc $41
2772: 18       clc
2773: 69 0E    adc #$0e
2775: C9 1D    cmp #$1d
2777: B0 02    bcs $277b
2779: E6 4F    inc $4f
277B: 60       rts
277C: A9 00    lda #$00
277E: 85 77    sta $77
2780: CA       dex
2781: 8A       txa
2782: 0A       asl a
2783: 0A       asl a
2784: 0A       asl a
2785: 26 77    rol $77
2787: 0A       asl a
2788: 26 77    rol $77
278A: 18       clc
278B: 69 30    adc #$30
278D: 85 76    sta $76
278F: A5 77    lda $77
2791: 69 04    adc #$04
2793: 85 77    sta $77
2795: 60       rts
2796: A9 0A    lda #$0a
2798: 85 8A    sta $8a
279A: A6 8A    ldx $8a
279C: 20 7C 27 jsr $277c
279F: A0 0F    ldy #$0f
27A1: A9 20    lda #$20
27A3: 91 76    sta ($76), y
27A5: 88       dey
27A6: C0 0A    cpy #$0a
27A8: D0 F9    bne $27a3
27AA: A9 46    lda #$46
27AC: 91 76    sta ($76), y
27AE: 88       dey
27AF: A9 26    lda #$26
27B1: 91 76    sta ($76), y
27B3: 88       dey
27B4: A9 41    lda #$41
27B6: 91 76    sta ($76), y
27B8: 88       dey
27B9: A9 00    lda #$00
27BB: 91 76    sta ($76), y
27BD: 88       dey
27BE: 10 FB    bpl $27bb
27C0: A9 01    lda #$01
27C2: A0 04    ldy #$04
27C4: 91 76    sta ($76), y
27C6: C6 8A    dec $8a
27C8: D0 D0    bne $279a
27CA: 60       rts
27CB: A9 01    lda #$01
27CD: 85 8A    sta $8a
27CF: A6 8A    ldx $8a
27D1: 20 7C 27 jsr $277c
27D4: A0 00    ldy #$00
27D6: B1 76    lda ($76), y
27D8: D9 28 00 cmp $0028, y
27DB: 30 10    bmi $27ed
27DD: D0 05    bne $27e4
27DF: C8       iny
27E0: C0 08    cpy #$08
27E2: D0 F2    bne $27d6
27E4: E6 8A    inc $8a
27E6: A5 8A    lda $8a
27E8: C9 0B    cmp #$0b
27EA: 90 E3    bcc $27cf
27EC: 60       rts
27ED: 20 06 28 jsr $2806
27F0: A0 07    ldy #$07
27F2: B9 28 00 lda $0028, y
27F5: 91 76    sta ($76), y
27F7: 88       dey
27F8: 10 F8    bpl $27f2
27FA: A0 0F    ldy #$0f
27FC: A9 20    lda #$20
27FE: 91 76    sta ($76), y
2800: 88       dey
2801: C0 07    cpy #$07
2803: D0 F9    bne $27fe
2805: 60       rts
2806: A9 09    lda #$09
2808: 85 8B    sta $8b
280A: A6 8B    ldx $8b
280C: E4 8A    cpx $8a
280E: 90 22    bcc $2832
2810: 20 7C 27 jsr $277c
2813: A0 0F    ldy #$0f
2815: B1 76    lda ($76), y
2817: 99 30 00 sta $0030, y
281A: 88       dey
281B: 10 F8    bpl $2815
281D: A6 8B    ldx $8b
281F: E8       inx
2820: 20 7C 27 jsr $277c
2823: A0 0F    ldy #$0f
2825: B9 30 00 lda $0030, y
2828: 91 76    sta ($76), y
282A: 88       dey
282B: 10 F8    bpl $2825
282D: C6 8B    dec $8b
282F: 4C 0A 28 jmp $280a
2832: A6 8A    ldx $8a
2834: 20 7C 27 jsr $277c
2837: 60       rts
2838: A9 01    lda #$01
283A: 85 8A    sta $8a
283C: A2 3F    ldx #$3f
283E: A0 29    ldy #$29
2840: 20 26 1A jsr $1a26
2843: A9 C0    lda #$c0
2845: 8D 5C 29 sta $295c
2848: A9 02    lda #$02
284A: 8D 5D 29 sta $295d
284D: A2 57    ldx #$57
284F: A0 29    ldy #$29
2851: 20 26 1A jsr $1a26
2854: A9 20    lda #$20
2856: A6 8A    ldx $8a
2858: 86 8B    stx $8b
285A: E0 0A    cpx #$0a
285C: D0 06    bne $2864
285E: A9 31    lda #$31
2860: A2 00    ldx #$00
2862: 86 8B    stx $8b
2864: 20 EE FF jsr $ffee
2867: A5 8B    lda $8b
2869: 18       clc
286A: 69 30    adc #$30
286C: 20 EE FF jsr $ffee
286F: A6 8A    ldx $8a
2871: 20 7C 27 jsr $277c
2874: A0 00    ldy #$00
2876: 84 8B    sty $8b
2878: B1 76    lda ($76), y
287A: D0 09    bne $2885
287C: A6 8B    ldx $8b
287E: D0 05    bne $2885
2880: A9 20    lda #$20
2882: 4C 8A 28 jmp $288a
2885: 18       clc
2886: 69 30    adc #$30
2888: E6 8B    inc $8b
288A: 20 EE FF jsr $ffee
288D: C8       iny
288E: C0 08    cpy #$08
2890: 90 E6    bcc $2878
2892: A9 20    lda #$20
2894: 20 EE FF jsr $ffee
2897: B1 76    lda ($76), y
2899: 20 EE FF jsr $ffee
289C: C8       iny
289D: C0 10    cpy #$10
289F: 90 F6    bcc $2897
28A1: E6 8A    inc $8a
28A3: A5 8A    lda $8a
28A5: C9 0B    cmp #$0b
28A7: F0 14    beq $28bd
28A9: AD 5C 29 lda $295c
28AC: 38       sec
28AD: E9 30    sbc #$30
28AF: 8D 5C 29 sta $295c
28B2: AD 5D 29 lda $295d
28B5: E9 00    sbc #$00
28B7: 8D 5D 29 sta $295d
28BA: 4C 4D 28 jmp $284d
28BD: 60       rts
28BE: 20 CB 27 jsr $27cb
28C1: A5 8A    lda $8a
28C3: C9 0B    cmp #$0b
28C5: D0 01    bne $28c8
28C7: 60       rts
28C8: 85 88    sta $88
28CA: A9 C0    lda #$c0
28CC: 8D 66 29 sta $2966
28CF: A9 02    lda #$02
28D1: 8D 67 29 sta $2967
28D4: A5 88    lda $88
28D6: 38       sec
28D7: E9 01    sbc #$01
28D9: F0 15    beq $28f0
28DB: AA       tax
28DC: AD 66 29 lda $2966
28DF: 38       sec
28E0: E9 30    sbc #$30
28E2: 8D 66 29 sta $2966
28E5: AD 67 29 lda $2967
28E8: E9 00    sbc #$00
28EA: 8D 67 29 sta $2967
28ED: CA       dex
28EE: D0 EC    bne $28dc
28F0: A2 69    ldx #$69
28F2: A0 29    ldy #$29
28F4: 20 26 1A jsr $1a26
28F7: A5 5D    lda $5d
28F9: 18       clc
28FA: 69 31    adc #$31
28FC: 20 EE FF jsr $ffee
28FF: 20 38 28 jsr $2838
2902: A2 5E    ldx #$5e
2904: A0 29    ldy #$29
2906: 20 26 1A jsr $1a26
2909: A9 04    lda #$04
290B: A2 01    ldx #$01
290D: 20 F4 FF jsr $fff4
2910: A9 0F    lda #$0f
2912: A2 01    ldx #$01
2914: 20 F4 FF jsr $fff4
2917: A9 E5    lda #$e5
2919: A2 01    ldx #$01
291B: A0 00    ldy #$00
291D: 20 F4 FF jsr $fff4
2920: A2 9D    ldx #$9d
2922: A0 29    ldy #$29
2924: A9 00    lda #$00
2926: 20 F1 FF jsr $fff1
2929: A6 88    ldx $88
292B: 20 7C 27 jsr $277c
292E: A0 08    ldy #$08
2930: B9 9A 29 lda $299a, y
2933: C9 0D    cmp #$0d
2935: F0 07    beq $293e
2937: 91 76    sta ($76), y
2939: C8       iny
293A: C0 10    cpy #$10
293C: 90 F2    bcc $2930
293E: 60       rts
293F: 17 12    slo $12, x
2941: 00       brk
2942: 01 19    ora ($19, x)
2944: 04 20    nop $20
2946: 01 20    ora ($20, x)
2948: 03 48    slo ($48, x)
294A: 49 47    eor #$47
294C: 48       pha
294D: 20 53 43 jsr $4353
2950: 4F 52 45 sre $4552
2953: 53 12    sre ($12), y
2955: 00       brk
2956: 03 06    slo ($06, x)
2958: 19 04 20 ora $2004, y
295B: 00       brk
295C: 10 01    bpl $295f
295E: 0A       asl a
295F: 12       kil
2960: 00       brk
2961: 01 19    ora ($19, x)
2963: 04 A0    nop $a0
2965: 02       kil
2966: 00       brk
2967: 00       brk
2968: 3E 33 18 rol $1833, x
296B: 00       brk
296C: 00       brk
296D: 00       brk
296E: 00       brk
296F: FF 04 7C isb $7c04, x
2972: 03 10    slo ($10, x)
2974: 1A       nop
2975: 12       kil
2976: 00       brk
2977: 01 19    ora ($19, x)
2979: 04 A0    nop $a0
297B: 00       brk
297C: A0 00    ldy #$00
297E: 45 4E    eor $4e
2980: 54 45    nop $45, x
2982: 52       kil
2983: 20 59 4F jsr $4f59
2986: 55 52    eor $52, x
2988: 20 4E 41 jsr $414e
298B: 4D 45 19 eor $1945
298E: 04 80    nop $80
2990: 01 64    ora ($64, x)
2992: 00       brk
2993: 12       kil
2994: 00       brk
2995: 02       kil
2996: 50 6C    bvc $2a04
2998: 61 79    adc ($79, x)
299A: 65 72    adc $72
299C: 20 A2 29 jsr $29a2
299F: 08       php
29A0: 20 7F 00 jsr $007f
29A3: 00       brk
29A4: 00       brk
29A5: 00       brk
29A6: 00       brk
29A7: 00       brk
29A8: 00       brk
29A9: 00       brk
29AA: 00       brk
29AB: 20 CD 2A jsr $2acd
29AE: 20 65 2C jsr $2c65
29B1: 20 83 2B jsr $2b83
29B4: A2 A8    ldx #$a8
29B6: A0 2A    ldy #$2a
29B8: 20 26 1A jsr $1a26
29BB: A2 BF    ldx #$bf
29BD: A0 2A    ldy #$2a
29BF: 20 26 1A jsr $1a26
29C2: A5 5D    lda $5d
29C4: 18       clc
29C5: 69 31    adc #$31
29C7: 20 EE FF jsr $ffee
29CA: A9 14    lda #$14
29CC: 20 54 2C jsr $2c54
29CF: 20 C0 2D jsr $2dc0
29D2: 20 33 1B jsr $1b33
29D5: 20 92 2E jsr $2e92
29D8: 20 3B 1A jsr $1a3b
29DB: 20 63 1E jsr $1e63
29DE: 20 38 0C jsr $0c38
29E1: 20 74 23 jsr $2374
29E4: 20 07 24 jsr $2407
29E7: 20 49 2F jsr $2f49
29EA: 20 28 27 jsr $2728
29ED: 20 10 1B jsr $1b10
29F0: A5 4F    lda $4f
29F2: D0 45    bne $2a39
29F4: A5 41    lda $41
29F6: C9 11    cmp #$11
29F8: 90 3F    bcc $2a39
29FA: A5 39    lda $39
29FC: F0 07    beq $2a05
29FE: A5 60    lda $60
2A00: 30 AC    bmi $29ae
2A02: 4C D8 29 jmp $29d8
2A05: A5 3D    lda $3d
2A07: D0 22    bne $2a2b
2A09: A9 01    lda #$01
2A0B: A2 06    ldx #$06
2A0D: 20 B5 1A jsr $1ab5
2A10: 20 DC 26 jsr $26dc
2A13: 20 49 2F jsr $2f49
2A16: A5 3C    lda $3c
2A18: F0 04    beq $2a1e
2A1A: C9 05    cmp #$05
2A1C: D0 09    bne $2a27
2A1E: A2 B0    ldx #$b0
2A20: A0 0C    ldy #$0c
2A22: A9 07    lda #$07
2A24: 20 F1 FF jsr $fff1
2A27: A5 3D    lda $3d
2A29: F0 DE    beq $2a09
2A2B: E6 50    inc $50
2A2D: 20 6B 2E jsr $2e6b
2A30: 20 FE 2D jsr $2dfe
2A33: 20 2D 2E jsr $2e2d
2A36: 4C CF 29 jmp $29cf
2A39: 20 6B 2E jsr $2e6b
2A3C: A2 A6    ldx #$a6
2A3E: A0 2F    ldy #$2f
2A40: 20 7C 2F jsr $2f7c
2A43: A6 5D    ldx $5d
2A45: D6 20    dec $20, x
2A47: D0 27    bne $2a70
2A49: A2 8A    ldx #$8a
2A4B: A0 2A    ldy #$2a
2A4D: 20 26 1A jsr $1a26
2A50: A2 BF    ldx #$bf
2A52: A0 2A    ldy #$2a
2A54: 20 26 1A jsr $1a26
2A57: A5 5D    lda $5d
2A59: 18       clc
2A5A: 69 31    adc #$31
2A5C: 20 EE FF jsr $ffee
2A5F: A9 0A    lda #$0a
2A61: 20 54 2C jsr $2c54
2A64: 20 BE 28 jsr $28be
2A67: A9 05    lda #$05
2A69: 20 54 2C jsr $2c54
2A6C: C6 5F    dec $5f
2A6E: F0 17    beq $2a87
2A70: A6 5D    ldx $5d
2A72: E8       inx
2A73: 8A       txa
2A74: 29 03    and #$03
2A76: 85 5D    sta $5d
2A78: C5 5E    cmp $5e
2A7A: B0 F4    bcs $2a70
2A7C: AA       tax
2A7D: B5 20    lda $20, x
2A7F: F0 EF    beq $2a70
2A81: 20 2D 2E jsr $2e2d
2A84: 4C B4 29 jmp $29b4
2A87: 4C AE 29 jmp $29ae
2A8A: 1D 18 00 ora $0018, x
2A8D: 01 50    ora ($50, x)
2A8F: 01 00    ora ($00, x)
2A91: 04 14    nop $14
2A93: 02       kil
2A94: 10 1A    bpl $2ab0
2A96: 19 04 60 ora $6004, y
2A99: 01 F4    ora ($f4, x)
2A9B: 01 12    ora ($12, x)
2A9D: 00       brk
2A9E: 08       php
2A9F: 47 41    sre $41
2AA1: 4D 45 20 eor $2045
2AA4: 4F 56 45 sre $4556
2AA7: 52       kil
2AA8: 16 10    asl $10, x
2AAA: 19 04 60 ora $6004, y
2AAD: 01 F4    ora ($f4, x)
2AAF: 01 12    ora ($12, x)
2AB1: 00       brk
2AB2: 04 47    nop $47
2AB4: 65 74    adc $74
2AB6: 20 52 65 jsr $6552
2AB9: 61 64    adc ($64, x)
2ABB: 79 12 00 adc $0012, y
2ABE: 08       php
2ABF: 0D 19 04 ora $0419
2AC2: 80 01    nop #$01
2AC4: 90 01    bcc $2ac7
2AC6: 50 6C    bvc $2b34
2AC8: 61 79    adc ($79, x)
2ACA: 65 72    adc $72
2ACC: 20 A9 C8 jsr $c8a9
2ACF: A2 02    ldx #$02
2AD1: A0 00    ldy #$00
2AD3: 20 F4 FF jsr $fff4
2AD6: A2 00    ldx #$00
2AD8: BD 00 30 lda $3000, x
2ADB: 9D 00 09 sta $0900, x
2ADE: BD 00 31 lda $3100, x
2AE1: 9D 00 0A sta $0a00, x
2AE4: BD 00 32 lda $3200, x
2AE7: 9D 00 0B sta $0b00, x
2AEA: BD 00 33 lda $3300, x
2AED: 9D 00 0C sta $0c00, x
2AF0: BD 00 34 lda $3400, x
2AF3: 9D 00 0D sta $0d00, x
2AF6: BD 00 35 lda $3500, x
2AF9: 9D 00 0E sta $0e00, x
2AFC: BD 00 36 lda $3600, x
2AFF: 9D 00 0F sta $0f00, x
2B02: BD 00 37 lda $3700, x
2B05: 9D 00 10 sta $1000, x
2B08: CA       dex
2B09: D0 CD    bne $2ad8
2B0B: A9 16    lda #$16
2B0D: 20 EE FF jsr $ffee
2B10: A9 02    lda #$02
2B12: 20 EE FF jsr $ffee
2B15: A9 05    lda #$05
2B17: 20 EE FF jsr $ffee
2B1A: A9 05    lda #$05
2B1C: 20 EE FF jsr $ffee
2B1F: A9 9D    lda #$9d
2B21: 85 65    sta $65
2B23: A9 BE    lda #$be
2B25: 85 64    sta $64
2B27: A9 9E    lda #$9e
2B29: 85 63    sta $63
2B2B: A9 99    lda #$99
2B2D: 85 62    sta $62
2B2F: A9 98    lda #$98
2B31: 85 61    sta $61
2B33: 20 96 27 jsr $2796
2B36: A2 C7    ldx #$c7
2B38: A0 2F    ldy #$2f
2B3A: A9 08    lda #$08
2B3C: 20 F1 FF jsr $fff1
2B3F: A2 D5    ldx #$d5
2B41: A0 2F    ldy #$2f
2B43: A9 08    lda #$08
2B45: 20 F1 FF jsr $fff1
2B48: A2 E3    ldx #$e3
2B4A: A0 2F    ldy #$2f
2B4C: A9 08    lda #$08
2B4E: 20 F1 FF jsr $fff1
2B51: A2 0F    ldx #$0f
2B53: 86 88    stx $88
2B55: A6 88    ldx $88
2B57: 8E 6E 2B stx $2b6e
2B5A: BD 73 2B lda $2b73, x
2B5D: 8D 6F 2B sta $2b6f
2B60: A2 6C    ldx #$6c
2B62: A0 2B    ldy #$2b
2B64: 20 26 1A jsr $1a26
2B67: C6 88    dec $88
2B69: 10 EA    bpl $2b55
2B6B: 60       rts
2B6C: 06 13    asl $13
2B6E: 00       brk
2B6F: 00       brk
2B70: 00       brk
2B71: 00       brk
2B72: 00       brk
2B73: 00       brk
2B74: 03 05    slo ($05, x)
2B76: 02       kil
2B77: 03 03    slo ($03, x)
2B79: 03 03    slo ($03, x)
2B7B: 06 06    asl $06
2B7D: 06 06    asl $06
2B7F: 03 03    slo ($03, x)
2B81: 03 03    slo ($03, x)
2B83: A2 3A    ldx #$3a
2B85: A0 2C    ldy #$2c
2B87: 20 26 1A jsr $1a26
2B8A: A9 00    lda #$00
2B8C: 85 8B    sta $8b
2B8E: A9 64    lda #$64
2B90: 85 8C    sta $8c
2B92: A2 CF    ldx #$cf
2B94: A0 FF    ldy #$ff
2B96: A9 81    lda #$81
2B98: 20 F4 FF jsr $fff4
2B9B: C0 00    cpy #$00
2B9D: F0 05    beq $2ba4
2B9F: A9 01    lda #$01
2BA1: 4C E7 2B jmp $2be7
2BA4: A2 CE    ldx #$ce
2BA6: A0 FF    ldy #$ff
2BA8: A9 81    lda #$81
2BAA: 20 F4 FF jsr $fff4
2BAD: C0 00    cpy #$00
2BAF: F0 05    beq $2bb6
2BB1: A9 02    lda #$02
2BB3: 4C E7 2B jmp $2be7
2BB6: A2 EE    ldx #$ee
2BB8: A0 FF    ldy #$ff
2BBA: A9 81    lda #$81
2BBC: 20 F4 FF jsr $fff4
2BBF: C0 00    cpy #$00
2BC1: F0 05    beq $2bc8
2BC3: A9 03    lda #$03
2BC5: 4C E7 2B jmp $2be7
2BC8: A2 ED    ldx #$ed
2BCA: A0 FF    ldy #$ff
2BCC: A9 81    lda #$81
2BCE: 20 F4 FF jsr $fff4
2BD1: C0 00    cpy #$00
2BD3: F0 05    beq $2bda
2BD5: A9 04    lda #$04
2BD7: 4C E7 2B jmp $2be7
2BDA: C6 8B    dec $8b
2BDC: D0 B4    bne $2b92
2BDE: C6 8C    dec $8c
2BE0: D0 B0    bne $2b92
2BE2: 68       pla
2BE3: 68       pla
2BE4: 4C AE 29 jmp $29ae
2BE7: 85 5E    sta $5e
2BE9: 85 5F    sta $5f
2BEB: 18       clc
2BEC: 69 30    adc #$30
2BEE: 20 EE FF jsr $ffee
2BF1: A9 05    lda #$05
2BF3: 20 54 2C jsr $2c54
2BF6: A2 03    ldx #$03
2BF8: A9 00    lda #$00
2BFA: 95 24    sta $24, x
2BFC: A9 05    lda #$05
2BFE: 95 20    sta $20, x
2C00: CA       dex
2C01: 10 F5    bpl $2bf8
2C03: A2 03    ldx #$03
2C05: 86 88    stx $88
2C07: 8A       txa
2C08: 0A       asl a
2C09: 0A       asl a
2C0A: 0A       asl a
2C0B: 0A       asl a
2C0C: 0A       asl a
2C0D: 0A       asl a
2C0E: AA       tax
2C0F: A0 07    ldy #$07
2C11: A9 00    lda #$00
2C13: 9D 00 05 sta $0500, x
2C16: E8       inx
2C17: 88       dey
2C18: 10 F9    bpl $2c13
2C1A: C6 88    dec $88
2C1C: A6 88    ldx $88
2C1E: 10 E7    bpl $2c07
2C20: A9 00    lda #$00
2C22: 85 50    sta $50
2C24: A9 04    lda #$04
2C26: 85 5D    sta $5d
2C28: C6 5D    dec $5d
2C2A: 20 FE 2D jsr $2dfe
2C2D: A5 5D    lda $5d
2C2F: D0 F7    bne $2c28
2C31: 20 2D 2E jsr $2e2d
2C34: A9 1A    lda #$1a
2C36: 20 EE FF jsr $ffee
2C39: 60       rts
2C3A: 19 10 19 ora $1910, y
2C3D: 04 20    nop $20
2C3F: 00       brk
2C40: F4 01    nop $01, x
2C42: 48       pha
2C43: 6F 77 20 rra $2077
2C46: 6D 61 6E adc $6e61
2C49: 79 20 70 adc $7020, y
2C4C: 6C 61 79 jmp ($7961)
2C4F: 65 72    adc $72
2C51: 73 3F    rra ($3f), y
2C53: 20 85 8A jsr $8a85
2C56: A0 00    ldy #$00
2C58: A2 00    ldx #$00
2C5A: CA       dex
2C5B: D0 FD    bne $2c5a
2C5D: 88       dey
2C5E: D0 FA    bne $2c5a
2C60: C6 8A    dec $8a
2C62: D0 F2    bne $2c56
2C64: 60       rts
2C65: BA       tsx
2C66: 86 1B    stx $1b
2C68: 20 CE 2C jsr $2cce
2C6B: A9 10    lda #$10
2C6D: 20 EE FF jsr $ffee
2C70: 20 DB 2C jsr $2cdb
2C73: 20 38 28 jsr $2838
2C76: 20 3A 2D jsr $2d3a
2C79: A9 1E    lda #$1e
2C7B: 85 8A    sta $8a
2C7D: 20 A6 2D jsr $2da6
2C80: C6 8A    dec $8a
2C82: D0 F9    bne $2c7d
2C84: 20 BC 2C jsr $2cbc
2C87: A9 14    lda #$14
2C89: 85 8A    sta $8a
2C8B: 20 A6 2D jsr $2da6
2C8E: C6 8A    dec $8a
2C90: D0 F9    bne $2c8b
2C92: A9 10    lda #$10
2C94: 20 EE FF jsr $ffee
2C97: 20 DB 2C jsr $2cdb
2C9A: 20 00 09 jsr $0900
2C9D: 20 3A 2D jsr $2d3a
2CA0: A9 1E    lda #$1e
2CA2: 85 8A    sta $8a
2CA4: 20 A6 2D jsr $2da6
2CA7: C6 8A    dec $8a
2CA9: D0 F9    bne $2ca4
2CAB: 20 BC 2C jsr $2cbc
2CAE: A9 14    lda #$14
2CB0: 85 8A    sta $8a
2CB2: 20 A6 2D jsr $2da6
2CB5: C6 8A    dec $8a
2CB7: D0 F9    bne $2cb2
2CB9: 4C 6B 2C jmp $2c6b
2CBC: 20 A4 1A jsr $1aa4
2CBF: A5 66    lda $66
2CC1: 29 07    and #$07
2CC3: 85 50    sta $50
2CC5: 85 5C    sta $5c
2CC7: 20 33 1B jsr $1b33
2CCA: 20 92 2E jsr $2e92
2CCD: 60       rts
2CCE: A9 04    lda #$04
2CD0: 85 5E    sta $5e
2CD2: 85 5F    sta $5f
2CD4: 20 F6 2B jsr $2bf6
2CD7: 20 C0 2D jsr $2dc0
2CDA: 60       rts
2CDB: A9 02    lda #$02
2CDD: 85 7F    sta $7f
2CDF: A9 30    lda #$30
2CE1: A2 02    ldx #$02
2CE3: A0 F0    ldy #$f0
2CE5: 20 B4 2D jsr $2db4
2CE8: A9 31    lda #$31
2CEA: A2 11    ldx #$11
2CEC: A0 F0    ldy #$f0
2CEE: 20 B4 2D jsr $2db4
2CF1: A9 32    lda #$32
2CF3: A2 20    ldx #$20
2CF5: A0 F0    ldy #$f0
2CF7: 20 B4 2D jsr $2db4
2CFA: A9 30    lda #$30
2CFC: A2 2F    ldx #$2f
2CFE: A0 F0    ldy #$f0
2D00: 20 B4 2D jsr $2db4
2D03: A9 33    lda #$33
2D05: A2 3E    ldx #$3e
2D07: A0 F0    ldy #$f0
2D09: 20 B4 2D jsr $2db4
2D0C: A9 34    lda #$34
2D0E: A2 4D    ldx #$4d
2D10: A0 F0    ldy #$f0
2D12: 20 B4 2D jsr $2db4
2D15: A9 35    lda #$35
2D17: A2 5C    ldx #$5c
2D19: A0 F0    ldy #$f0
2D1B: 20 B4 2D jsr $2db4
2D1E: A9 35    lda #$35
2D20: A2 72    ldx #$72
2D22: A0 F0    ldy #$f0
2D24: 20 B4 2D jsr $2db4
2D27: A9 36    lda #$36
2D29: A2 81    ldx #$81
2D2B: A0 F0    ldy #$f0
2D2D: 20 B4 2D jsr $2db4
2D30: A9 36    lda #$36
2D32: A2 90    ldx #$90
2D34: A0 F0    ldy #$f0
2D36: 20 B4 2D jsr $2db4
2D39: 60       rts
2D3A: A2 42    ldx #$42
2D3C: A0 2D    ldy #$2d
2D3E: 20 26 1A jsr $1a26
2D41: 60       rts
2D42: 3B 19 04 rla $0419, y
2D45: 80 00    nop #$00
2D47: 64 00    nop $00
2D49: 12       kil
2D4A: 00       brk
2D4B: 04 50    nop $50
2D4D: 72       kil
2D4E: 65 73    adc $73
2D50: 73 20    rra ($20), y
2D52: 12       kil
2D53: 00       brk
2D54: 08       php
2D55: 53 20    sre ($20), y
2D57: 12       kil
2D58: 00       brk
2D59: 04 74    nop $74
2D5B: 6F 20 73 rra $7320
2D5E: 74 61    nop $61, x
2D60: 72       kil
2D61: 74 19    nop $19, x
2D63: 04 80    nop $80
2D65: 00       brk
2D66: 32       kil
2D67: 00       brk
2D68: 12       kil
2D69: 00       brk
2D6A: 08       php
2D6B: 4B 20    asr #$20
2D6D: 12       kil
2D6E: 00       brk
2D6F: 04 74    nop $74
2D71: 6F 20 63 rra $6320
2D74: 68       pla
2D75: 61 6E    adc ($6e, x)
2D77: 67 65    rra $65
2D79: 20 6B 65 jsr $656b
2D7C: 79 73 A9 adc $a973, y
2D7F: 81 A2    sta ($a2, x)
2D81: AE A0 FF ldx $ffa0
2D84: 20 F4 FF jsr $fff4
2D87: C0 00    cpy #$00
2D89: F0 04    beq $2d8f
2D8B: A6 1B    ldx $1b
2D8D: 9A       txs
2D8E: 60       rts
2D8F: A9 81    lda #$81
2D91: A2 B9    ldx #$b9
2D93: A0 FF    ldy #$ff
2D95: 20 F4 FF jsr $fff4
2D98: C0 00    cpy #$00
2D9A: D0 01    bne $2d9d
2D9C: 60       rts
2D9D: A6 1B    ldx $1b
2D9F: 9A       txs
2DA0: 20 03 09 jsr $0903
2DA3: 4C 6B 2C jmp $2c6b
2DA6: 20 7E 2D jsr $2d7e
2DA9: A2 00    ldx #$00
2DAB: A0 00    ldy #$00
2DAD: CA       dex
2DAE: D0 FD    bne $2dad
2DB0: 88       dey
2DB1: D0 FA    bne $2dad
2DB3: 60       rts
2DB4: 48       pha
2DB5: 20 87 19 jsr $1987
2DB8: 68       pla
2DB9: 20 DB 19 jsr $19db
2DBC: 20 02 19 jsr $1902
2DBF: 60       rts
2DC0: A5 50    lda $50
2DC2: 29 07    and #$07
2DC4: 85 5C    sta $5c
2DC6: A5 50    lda $50
2DC8: 4A       lsr a
2DC9: 4A       lsr a
2DCA: 4A       lsr a
2DCB: 85 4D    sta $4d
2DCD: A9 00    lda #$00
2DCF: 85 35    sta $35
2DD1: A5 4D    lda $4d
2DD3: F0 02    beq $2dd7
2DD5: E6 35    inc $35
2DD7: A9 00    lda #$00
2DD9: 85 38    sta $38
2DDB: A9 00    lda #$00
2DDD: 85 36    sta $36
2DDF: A9 08    lda #$08
2DE1: A6 4D    ldx $4d
2DE3: E0 04    cpx #$04
2DE5: 90 02    bcc $2de9
2DE7: A9 05    lda #$05
2DE9: 85 37    sta $37
2DEB: A9 00    lda #$00
2DED: 85 3E    sta $3e
2DEF: 85 4F    sta $4f
2DF1: 85 1C    sta $1c
2DF3: A9 76    lda #$76
2DF5: 85 66    sta $66
2DF7: 85 67    sta $67
2DF9: 85 68    sta $68
2DFB: 85 69    sta $69
2DFD: 60       rts
2DFE: A5 5D    lda $5d
2E00: 0A       asl a
2E01: 0A       asl a
2E02: 0A       asl a
2E03: 0A       asl a
2E04: 0A       asl a
2E05: 0A       asl a
2E06: AA       tax
2E07: A5 50    lda $50
2E09: 18       clc
2E0A: 69 01    adc #$01
2E0C: C9 0A    cmp #$0a
2E0E: 90 02    bcc $2e12
2E10: A9 09    lda #$09
2E12: 9D 08 05 sta $0508, x
2E15: A9 00    lda #$00
2E17: 9D 09 05 sta $0509, x
2E1A: 9D 0A 05 sta $050a, x
2E1D: 9D 0B 05 sta $050b, x
2E20: A0 10    ldy #$10
2E22: 9D 10 05 sta $0510, x
2E25: 9D 20 05 sta $0520, x
2E28: E8       inx
2E29: 88       dey
2E2A: D0 F6    bne $2e22
2E2C: 60       rts
2E2D: A6 5D    ldx $5d
2E2F: B5 24    lda $24, x
2E31: 85 50    sta $50
2E33: 8A       txa
2E34: 0A       asl a
2E35: 0A       asl a
2E36: 0A       asl a
2E37: 0A       asl a
2E38: 0A       asl a
2E39: 0A       asl a
2E3A: 85 4E    sta $4e
2E3C: AA       tax
2E3D: A0 00    ldy #$00
2E3F: BD 00 05 lda $0500, x
2E42: 99 28 00 sta $0028, y
2E45: E8       inx
2E46: C8       iny
2E47: C0 08    cpy #$08
2E49: 90 F4    bcc $2e3f
2E4B: A6 4E    ldx $4e
2E4D: A0 00    ldy #$00
2E4F: BD 08 05 lda $0508, x
2E52: 99 3A 00 sta $003a, y
2E55: E8       inx
2E56: C8       iny
2E57: C0 04    cpy #$04
2E59: 90 F4    bcc $2e4f
2E5B: A6 5D    ldx $5d
2E5D: A9 00    lda #$00
2E5F: 18       clc
2E60: 69 22    adc #$22
2E62: CA       dex
2E63: 10 FB    bpl $2e60
2E65: 38       sec
2E66: E9 15    sbc #$15
2E68: 85 3F    sta $3f
2E6A: 60       rts
2E6B: A6 5D    ldx $5d
2E6D: A5 50    lda $50
2E6F: 95 24    sta $24, x
2E71: A6 4E    ldx $4e
2E73: A0 00    ldy #$00
2E75: B9 28 00 lda $0028, y
2E78: 9D 00 05 sta $0500, x
2E7B: E8       inx
2E7C: C8       iny
2E7D: C0 08    cpy #$08
2E7F: 90 F4    bcc $2e75
2E81: A6 4E    ldx $4e
2E83: A0 00    ldy #$00
2E85: B9 3A 00 lda $003a, y
2E88: 9D 08 05 sta $0508, x
2E8B: E8       inx
2E8C: C8       iny
2E8D: C0 04    cpy #$04
2E8F: 90 F4    bcc $2e85
2E91: 60       rts
2E92: A5 55    lda $55
2E94: F0 2E    beq $2ec4
2E96: A9 08    lda #$08
2E98: 85 59    sta $59
2E9A: A9 5A    lda #$5a
2E9C: 85 5A    sta $5a
2E9E: A9 00    lda #$00
2EA0: 85 5B    sta $5b
2EA2: A9 02    lda #$02
2EA4: 85 7F    sta $7f
2EA6: A9 05    lda #$05
2EA8: 20 DB 19 jsr $19db
2EAB: A6 58    ldx $58
2EAD: A4 59    ldy $59
2EAF: 20 87 19 jsr $1987
2EB2: 20 02 19 jsr $1902
2EB5: A9 05    lda #$05
2EB7: 20 DB 19 jsr $19db
2EBA: A6 58    ldx $58
2EBC: A4 5A    ldy $5a
2EBE: 20 87 19 jsr $1987
2EC1: 20 02 19 jsr $1902
2EC4: A9 04    lda #$04
2EC6: 85 30    sta $30
2EC8: A9 CC    lda #$cc
2ECA: 85 31    sta $31
2ECC: A9 00    lda #$00
2ECE: 85 32    sta $32
2ED0: 85 33    sta $33
2ED2: 85 34    sta $34
2ED4: 20 36 23 jsr $2336
2ED7: A2 FF    ldx #$ff
2ED9: 86 88    stx $88
2EDB: A5 4D    lda $4d
2EDD: C9 01    cmp #$01
2EDF: D0 04    bne $2ee5
2EE1: A2 00    ldx #$00
2EE3: 86 57    stx $57
2EE5: C9 03    cmp #$03
2EE7: 90 04    bcc $2eed
2EE9: A2 05    ldx #$05
2EEB: 86 57    stx $57
2EED: E6 88    inc $88
2EEF: A6 88    ldx $88
2EF1: E4 57    cpx $57
2EF3: B0 28    bcs $2f1d
2EF5: BD 0A 04 lda $040a, x
2EF8: 0A       asl a
2EF9: 0A       asl a
2EFA: 0A       asl a
2EFB: 9D 00 04 sta $0400, x
2EFE: BD 0F 04 lda $040f, x
2F01: 0A       asl a
2F02: 0A       asl a
2F03: 0A       asl a
2F04: 18       clc
2F05: 69 14    adc #$14
2F07: 9D 05 04 sta $0405, x
2F0A: A9 00    lda #$00
2F0C: 9D 14 04 sta $0414, x
2F0F: 9D 19 04 sta $0419, x
2F12: A9 02    lda #$02
2F14: 9D 1E 04 sta $041e, x
2F17: 20 4B 23 jsr $234b
2F1A: 4C ED 2E jmp $2eed
2F1D: A9 03    lda #$03
2F1F: 20 54 2C jsr $2c54
2F22: A9 3C    lda #$3c
2F24: 85 40    sta $40
2F26: A9 20    lda #$20
2F28: 85 41    sta $41
2F2A: A9 06    lda #$06
2F2C: 85 48    sta $48
2F2E: 20 24 23 jsr $2324
2F31: A9 07    lda #$07
2F33: 85 42    sta $42
2F35: 85 44    sta $44
2F37: A9 02    lda #$02
2F39: 85 43    sta $43
2F3B: A9 00    lda #$00
2F3D: 85 45    sta $45
2F3F: 85 49    sta $49
2F41: A9 01    lda #$01
2F43: 85 4C    sta $4c
2F45: 20 5A 2F jsr $2f5a
2F48: 60       rts
2F49: A5 3E    lda $3e
2F4B: D0 01    bne $2f4e
2F4D: 60       rts
2F4E: A9 00    lda #$00
2F50: 85 3E    sta $3e
2F52: 20 5A 2F jsr $2f5a
2F55: A6 5D    ldx $5d
2F57: F6 20    inc $20, x
2F59: 60       rts
2F5A: A9 20    lda #$20
2F5C: 85 7F    sta $7f
2F5E: A6 5D    ldx $5d
2F60: B5 20    lda $20, x
2F62: C9 09    cmp #$09
2F64: 90 01    bcc $2f67
2F66: 60       rts
2F67: 0A       asl a
2F68: 0A       asl a
2F69: 65 3F    adc $3f
2F6B: 69 0A    adc #$0a
2F6D: AA       tax
2F6E: A0 EE    ldy #$ee
2F70: 20 87 19 jsr $1987
2F73: A9 2F    lda #$2f
2F75: 20 DB 19 jsr $19db
2F78: 20 02 19 jsr $1902
2F7B: 60       rts
2F7C: 86 76    stx $76
2F7E: 84 77    sty $77
2F80: A0 00    ldy #$00
2F82: 84 89    sty $89
2F84: B1 76    lda ($76), y
2F86: 85 8A    sta $8a
2F88: A4 89    ldy $89
2F8A: C8       iny
2F8B: B1 76    lda ($76), y
2F8D: 8D A4 0C sta $0ca4
2F90: C8       iny
2F91: B1 76    lda ($76), y
2F93: 8D A6 0C sta $0ca6
2F96: 84 89    sty $89
2F98: A2 A0    ldx #$a0
2F9A: A0 0C    ldy #$0c
2F9C: A9 07    lda #$07
2F9E: 20 F1 FF jsr $fff1
2FA1: C6 8A    dec $8a
2FA3: D0 E3    bne $2f88
2FA5: 60       rts
2FA6: 10 21    bpl $2fc9
2FA8: 04 29    nop $29
2FAA: 02       kil
2FAB: 21 04    and ($04, x)
2FAD: 19 02 15 ora $1502, y
2FB0: 04 05    nop $05
2FB2: 02       kil
2FB3: 0D 04 01 ora $0104
2FB6: 02       kil
2FB7: 05 0C    ora $0c
2FB9: 05 01    ora $01
2FBB: 0D 01 15 ora $1501
2FBE: 01 19    ora ($19, x)
2FC0: 01 21    ora ($21, x)
2FC2: 01 31    ora ($31, x)
2FC4: 01 35    ora ($35, x)
2FC6: 01 01    ora ($01, x)
2FC8: 01 00    ora ($00, x)
2FCA: 00       brk
2FCB: 00       brk
2FCC: 00       brk
2FCD: 00       brk
2FCE: 00       brk
2FCF: 7E CE 00 ror $00ce, x
2FD2: 00       brk
2FD3: 64 00    nop $00
2FD5: 02       kil
2FD6: 01 00    ora ($00, x)
2FD8: 00       brk
2FD9: 00       brk
2FDA: 00       brk
2FDB: 00       brk
2FDC: 00       brk
2FDD: 7E FE 00 ror $00fe, x
2FE0: FB 7E 64 isb $647e, y
2FE3: 03 01    slo ($01, x)
2FE5: 00       brk
2FE6: 00       brk
2FE7: 00       brk
2FE8: 00       brk
2FE9: 00       brk
2FEA: 00       brk
2FEB: 32       kil
2FEC: 00       brk
2FED: 00       brk
2FEE: E7 64    isb $64
2FF0: 00       brk
2FF1: 23 31    rla ($31, x)
2FF3: 36 3A    rol $3a, x
2FF5: 20 4A 53 jsr $534a
2FF8: 52       kil
2FF9: 20 4F 53 jsr $534f
2FFC: 57 52    sre $52, x
2FFE: 43 48    sre ($48, x)
3000: 00       brk
3001: 00       brk
3002: 00       brk
3003: 00       brk
3004: 00       brk
3005: 00       brk
3006: 00       brk
3007: 00       brk
3008: 00       brk
3009: 00       brk
300A: 00       brk
300B: 00       brk
300C: 00       brk
300D: 00       brk
300E: 00       brk
300F: 00       brk
3010: 00       brk
3011: 00       brk
3012: 00       brk
3013: 00       brk
3014: 00       brk
3015: 00       brk
3016: 00       brk
3017: 00       brk
3018: 00       brk
3019: 00       brk
301A: 00       brk
301B: 00       brk
301C: 00       brk
301D: 00       brk
301E: 00       brk
301F: 00       brk
3020: 00       brk
3021: 00       brk
3022: 00       brk
3023: 00       brk
3024: 00       brk
3025: 00       brk
3026: 00       brk
3027: 00       brk
3028: 00       brk
3029: 00       brk
302A: 00       brk
302B: 00       brk
302C: 00       brk
302D: 00       brk
302E: 00       brk
302F: 00       brk
3030: 00       brk
3031: 00       brk
3032: 00       brk
3033: 00       brk
3034: 00       brk
3035: 00       brk
3036: 00       brk
3037: 00       brk
3038: 00       brk
3039: 00       brk
303A: 00       brk
303B: 00       brk
303C: 00       brk
303D: 00       brk
303E: 00       brk
303F: 00       brk
3040: 00       brk
3041: 00       brk
3042: 00       brk
3043: 00       brk
3044: 00       brk
3045: 00       brk
3046: 00       brk
3047: 00       brk
3048: 00       brk
3049: 00       brk
304A: 00       brk
304B: 00       brk
304C: 00       brk
304D: 00       brk
304E: 00       brk
304F: 00       brk
3050: 00       brk
3051: 00       brk
3052: 00       brk
3053: 00       brk
3054: 00       brk
3055: 00       brk
3056: 00       brk
3057: 00       brk
3058: 00       brk
3059: 00       brk
305A: 00       brk
305B: 00       brk
305C: 00       brk
305D: 00       brk
305E: 00       brk
305F: 00       brk
3060: 00       brk
3061: 00       brk
3062: 00       brk
3063: 00       brk
3064: 00       brk
3065: 00       brk
3066: 00       brk
3067: 00       brk
3068: 00       brk
3069: 00       brk
306A: 00       brk
306B: 00       brk
306C: 00       brk
306D: 00       brk
306E: 00       brk
306F: 00       brk
3070: 00       brk
3071: 00       brk
3072: 00       brk
3073: 00       brk
3074: 00       brk
3075: 00       brk
3076: 00       brk
3077: 00       brk
3078: 00       brk
3079: 00       brk
307A: 00       brk
307B: 00       brk
307C: 00       brk
307D: 00       brk
307E: 00       brk
307F: 00       brk
3080: 00       brk
3081: 00       brk
3082: 00       brk
3083: 00       brk
3084: 00       brk
3085: 00       brk
3086: 00       brk
3087: 00       brk
3088: 00       brk
3089: 00       brk
308A: 00       brk
308B: 00       brk
308C: 00       brk
308D: 00       brk
308E: 00       brk
308F: 00       brk
3090: 00       brk
3091: 00       brk
3092: 00       brk
3093: 00       brk
3094: 00       brk
3095: 00       brk
3096: 00       brk
3097: 00       brk
3098: 00       brk
3099: 00       brk
309A: 00       brk
309B: 00       brk
309C: 00       brk
309D: 00       brk
309E: 00       brk
309F: 00       brk
30A0: 00       brk
30A1: 00       brk
30A2: 00       brk
30A3: 00       brk
30A4: 00       brk
30A5: 00       brk
30A6: 00       brk
30A7: 00       brk
30A8: 00       brk
30A9: 00       brk
30AA: 00       brk
30AB: 00       brk
30AC: 00       brk
30AD: 00       brk
30AE: 00       brk
30AF: 00       brk
30B0: 00       brk
30B1: 00       brk
30B2: 00       brk
30B3: 00       brk
30B4: 00       brk
30B5: 00       brk
30B6: 00       brk
30B7: 00       brk
30B8: 00       brk
30B9: 00       brk
30BA: 00       brk
30BB: 00       brk
30BC: 00       brk
30BD: 00       brk
30BE: 00       brk
30BF: 00       brk
30C0: 00       brk
30C1: 00       brk
30C2: 00       brk
30C3: 00       brk
30C4: 00       brk
30C5: 00       brk
30C6: 00       brk
30C7: 00       brk
30C8: 00       brk
30C9: 00       brk
30CA: 00       brk
30CB: 00       brk
30CC: 00       brk
30CD: 00       brk
30CE: 00       brk
30CF: 00       brk
30D0: 00       brk
30D1: 00       brk
30D2: 00       brk
30D3: 00       brk
30D4: 00       brk
30D5: 00       brk
30D6: 00       brk
30D7: 00       brk
30D8: 00       brk
30D9: 00       brk
30DA: 00       brk
30DB: 00       brk
30DC: 00       brk
30DD: 00       brk
30DE: 00       brk
30DF: 00       brk
30E0: 00       brk
30E1: 00       brk
30E2: 00       brk
30E3: 00       brk
30E4: 00       brk
30E5: 00       brk
30E6: 00       brk
30E7: 00       brk
30E8: 00       brk
30E9: 00       brk
30EA: 00       brk
30EB: 00       brk
30EC: 00       brk
30ED: 00       brk
30EE: 00       brk
30EF: 00       brk
30F0: 00       brk
30F1: 00       brk
30F2: 00       brk
30F3: 00       brk
30F4: 00       brk
30F5: 00       brk
30F6: 00       brk
30F7: 00       brk
30F8: 00       brk
30F9: 00       brk
30FA: 00       brk
30FB: 00       brk
30FC: 00       brk
30FD: 00       brk
30FE: 00       brk
30FF: 00       brk
3100: 00       brk
3101: 00       brk
3102: 00       brk
3103: 00       brk
3104: 00       brk
3105: 00       brk
3106: 00       brk
3107: 00       brk
3108: 00       brk
3109: 00       brk
310A: 00       brk
310B: 00       brk
310C: 00       brk
310D: 00       brk
310E: 00       brk
310F: 00       brk
3110: 00       brk
3111: 00       brk
3112: 00       brk
3113: 00       brk
3114: 00       brk
3115: 00       brk
3116: 00       brk
3117: 00       brk
3118: 00       brk
3119: 00       brk
311A: 00       brk
311B: 00       brk
311C: 00       brk
311D: 00       brk
311E: 00       brk
311F: 00       brk
3120: 00       brk
3121: 00       brk
3122: 00       brk
3123: 00       brk
3124: 00       brk
3125: 00       brk
3126: 00       brk
3127: 00       brk
3128: 00       brk
3129: 00       brk
312A: 00       brk
312B: 00       brk
312C: 00       brk
312D: 00       brk
312E: 00       brk
312F: 00       brk
3130: 00       brk
3131: 00       brk
3132: 00       brk
3133: 00       brk
3134: 00       brk
3135: 00       brk
3136: 00       brk
3137: 00       brk
3138: 00       brk
3139: 00       brk
313A: 00       brk
313B: 00       brk
313C: 00       brk
313D: 00       brk
313E: 00       brk
313F: 00       brk
3140: 00       brk
3141: 00       brk
3142: 00       brk
3143: 00       brk
3144: 00       brk
3145: 00       brk
3146: 00       brk
3147: 00       brk
3148: 00       brk
3149: 00       brk
314A: 00       brk
314B: 00       brk
314C: 00       brk
314D: 00       brk
314E: 00       brk
314F: 00       brk
3150: 00       brk
3151: 00       brk
3152: 00       brk
3153: 00       brk
3154: 00       brk
3155: 00       brk
3156: 00       brk
3157: 00       brk
3158: 00       brk
3159: 00       brk
315A: 00       brk
315B: 00       brk
315C: 00       brk
315D: 00       brk
315E: 00       brk
315F: 00       brk
3160: 00       brk
3161: 00       brk
3162: 00       brk
3163: 00       brk
3164: 00       brk
3165: 00       brk
3166: 00       brk
3167: 00       brk
3168: 00       brk
3169: 00       brk
316A: 00       brk
316B: 00       brk
316C: 00       brk
316D: 00       brk
316E: 00       brk
316F: 00       brk
3170: 00       brk
3171: 00       brk
3172: 00       brk
3173: 00       brk
3174: 00       brk
3175: 00       brk
3176: 00       brk
3177: 00       brk
3178: 00       brk
3179: 00       brk
317A: 00       brk
317B: 00       brk
317C: 00       brk
317D: 00       brk
317E: 00       brk
317F: 00       brk
3180: 00       brk
3181: 00       brk
3182: 00       brk
3183: 00       brk
3184: 00       brk
3185: 00       brk
3186: 00       brk
3187: 00       brk
3188: 00       brk
3189: 00       brk
318A: 00       brk
318B: 00       brk
318C: 00       brk
318D: 00       brk
318E: 00       brk
318F: 00       brk
3190: 00       brk
3191: 00       brk
3192: 00       brk
3193: 00       brk
3194: 00       brk
3195: 00       brk
3196: 00       brk
3197: 00       brk
3198: 00       brk
3199: 00       brk
319A: 00       brk
319B: 00       brk
319C: 00       brk
319D: 00       brk
319E: 00       brk
319F: 00       brk
31A0: 00       brk
31A1: 00       brk
31A2: 00       brk
31A3: 00       brk
31A4: 00       brk
31A5: 00       brk
31A6: 00       brk
31A7: 00       brk
31A8: 00       brk
31A9: 00       brk
31AA: 00       brk
31AB: 00       brk
31AC: 00       brk
31AD: 00       brk
31AE: 00       brk
31AF: 00       brk
31B0: 00       brk
31B1: 00       brk
31B2: 00       brk
31B3: 00       brk
31B4: 00       brk
31B5: 00       brk
31B6: 00       brk
31B7: 00       brk
31B8: 00       brk
31B9: 00       brk
31BA: 00       brk
31BB: 00       brk
31BC: 00       brk
31BD: 00       brk
31BE: 00       brk
31BF: 00       brk
31C0: 00       brk
31C1: 00       brk
31C2: 00       brk
31C3: 00       brk
31C4: 00       brk
31C5: 00       brk
31C6: 00       brk
31C7: 00       brk
31C8: 00       brk
31C9: 00       brk
31CA: 00       brk
31CB: 00       brk
31CC: 00       brk
31CD: 00       brk
31CE: 00       brk
31CF: 00       brk
31D0: 00       brk
31D1: 00       brk
31D2: 00       brk
31D3: 00       brk
31D4: 00       brk
31D5: 00       brk
31D6: 00       brk
31D7: 00       brk
31D8: 00       brk
31D9: 00       brk
31DA: 00       brk
31DB: 00       brk
31DC: 00       brk
31DD: 00       brk
31DE: 00       brk
31DF: 00       brk
31E0: 00       brk
31E1: 00       brk
31E2: 00       brk
31E3: 00       brk
31E4: 00       brk
31E5: 00       brk
31E6: 00       brk
31E7: 00       brk
31E8: 00       brk
31E9: 00       brk
31EA: 00       brk
31EB: 00       brk
31EC: 00       brk
31ED: 00       brk
31EE: 00       brk
31EF: 00       brk
31F0: 00       brk
31F1: 00       brk
31F2: 00       brk
31F3: 00       brk
31F4: 00       brk
31F5: 00       brk
31F6: 00       brk
31F7: 00       brk
31F8: 00       brk
31F9: 00       brk
31FA: 00       brk
31FB: 00       brk
31FC: 00       brk
31FD: 00       brk
31FE: 00       brk
31FF: 00       brk
3200: 00       brk
3201: 00       brk
3202: 00       brk
3203: 00       brk
3204: 00       brk
3205: 00       brk
3206: 00       brk
3207: 00       brk
3208: 00       brk
3209: 00       brk
320A: 00       brk
320B: 00       brk
320C: 00       brk
320D: 00       brk
320E: 00       brk
320F: 00       brk
3210: 00       brk
3211: 00       brk
3212: 00       brk
3213: 00       brk
3214: 00       brk
3215: 00       brk
3216: 00       brk
3217: 00       brk
3218: 00       brk
3219: 00       brk
321A: 00       brk
321B: 00       brk
321C: 00       brk
321D: 00       brk
321E: 00       brk
321F: 00       brk
3220: 00       brk
3221: 00       brk
3222: 00       brk
3223: 00       brk
3224: 00       brk
3225: 00       brk
3226: 00       brk
3227: 00       brk
3228: 00       brk
3229: 00       brk
322A: 00       brk
322B: 00       brk
322C: 00       brk
322D: 00       brk
322E: 00       brk
322F: 00       brk
3230: 00       brk
3231: 00       brk
3232: 00       brk
3233: 00       brk
3234: 00       brk
3235: 00       brk
3236: 00       brk
3237: 00       brk
3238: 00       brk
3239: 00       brk
323A: 00       brk
323B: 00       brk
323C: 00       brk
323D: 00       brk
323E: 00       brk
323F: 00       brk
3240: 00       brk
3241: 00       brk
3242: 00       brk
3243: 00       brk
3244: 00       brk
3245: 00       brk
3246: 00       brk
3247: 00       brk
3248: 00       brk
3249: 00       brk
324A: 00       brk
324B: 00       brk
324C: 00       brk
324D: 00       brk
324E: 00       brk
324F: 00       brk
3250: 00       brk
3251: 00       brk
3252: 00       brk
3253: 00       brk
3254: 00       brk
3255: 00       brk
3256: 00       brk
3257: 00       brk
3258: 00       brk
3259: 00       brk
325A: 00       brk
325B: 00       brk
325C: 00       brk
325D: 00       brk
325E: 00       brk
325F: 00       brk
3260: 00       brk
3261: 00       brk
3262: 00       brk
3263: 00       brk
3264: 00       brk
3265: 00       brk
3266: 00       brk
3267: 00       brk
3268: 00       brk
3269: 00       brk
326A: 00       brk
326B: 00       brk
326C: 00       brk
326D: 00       brk
326E: 00       brk
326F: 00       brk
3270: 00       brk
3271: 00       brk
3272: 00       brk
3273: 00       brk
3274: 00       brk
3275: 00       brk
3276: 00       brk
3277: 00       brk
3278: 00       brk
3279: 00       brk
327A: 00       brk
327B: 00       brk
327C: 00       brk
327D: 00       brk
327E: 00       brk
327F: 00       brk
3280: 00       brk
3281: 00       brk
3282: 00       brk
3283: 00       brk
3284: 00       brk
3285: 00       brk
3286: 00       brk
3287: 00       brk
3288: 00       brk
3289: 00       brk
328A: 00       brk
328B: 00       brk
328C: 00       brk
328D: 00       brk
328E: 00       brk
328F: 00       brk
3290: 00       brk
3291: 00       brk
3292: 00       brk
3293: 00       brk
3294: 00       brk
3295: 00       brk
3296: 00       brk
3297: 00       brk
3298: 00       brk
3299: 00       brk
329A: 00       brk
329B: 00       brk
329C: 00       brk
329D: 00       brk
329E: 00       brk
329F: 00       brk
32A0: 00       brk
32A1: 00       brk
32A2: 00       brk
32A3: 00       brk
32A4: 00       brk
32A5: 00       brk
32A6: 00       brk
32A7: 00       brk
32A8: 00       brk
32A9: 00       brk
32AA: 00       brk
32AB: 00       brk
32AC: 00       brk
32AD: 00       brk
32AE: 00       brk
32AF: 00       brk
32B0: 00       brk
32B1: 00       brk
32B2: 00       brk
32B3: 00       brk
32B4: 00       brk
32B5: 00       brk
32B6: 00       brk
32B7: 00       brk
32B8: 00       brk
32B9: 00       brk
32BA: 00       brk
32BB: 00       brk
32BC: 00       brk
32BD: 00       brk
32BE: 00       brk
32BF: 00       brk
32C0: 00       brk
32C1: 00       brk
32C2: 00       brk
32C3: 00       brk
32C4: 00       brk
32C5: 00       brk
32C6: 00       brk
32C7: 00       brk
32C8: 00       brk
32C9: 00       brk
32CA: 00       brk
32CB: 00       brk
32CC: 00       brk
32CD: 00       brk
32CE: 00       brk
32CF: 00       brk
32D0: 00       brk
32D1: 00       brk
32D2: 00       brk
32D3: 00       brk
32D4: 00       brk
32D5: 00       brk
32D6: 00       brk
32D7: 00       brk
32D8: 00       brk
32D9: 00       brk
32DA: 00       brk
32DB: 00       brk
32DC: 00       brk
32DD: 00       brk
32DE: 00       brk
32DF: 00       brk
32E0: 00       brk
32E1: 00       brk
32E2: 00       brk
32E3: 00       brk
32E4: 00       brk
32E5: 00       brk
32E6: 00       brk
32E7: 00       brk
32E8: 00       brk
32E9: 00       brk
32EA: 00       brk
32EB: 00       brk
32EC: 00       brk
32ED: 00       brk
32EE: 00       brk
32EF: 00       brk
32F0: 00       brk
32F1: 00       brk
32F2: 00       brk
32F3: 00       brk
32F4: 00       brk
32F5: 00       brk
32F6: 00       brk
32F7: 00       brk
32F8: 00       brk
32F9: 00       brk
32FA: 00       brk
32FB: 00       brk
32FC: 00       brk
32FD: 00       brk
32FE: 00       brk
32FF: 00       brk
3300: 00       brk
3301: 00       brk
3302: 00       brk
3303: 00       brk
3304: 00       brk
3305: 00       brk
3306: 00       brk
3307: 00       brk
3308: 00       brk
3309: 00       brk
330A: 00       brk
330B: 00       brk
330C: 00       brk
330D: 00       brk
330E: 00       brk
330F: 00       brk
3310: 00       brk
3311: 00       brk
3312: 00       brk
3313: 00       brk
3314: 00       brk
3315: 00       brk
3316: 00       brk
3317: 00       brk
3318: 00       brk
3319: 00       brk
331A: 00       brk
331B: 00       brk
331C: 00       brk
331D: 00       brk
331E: 00       brk
331F: 00       brk
3320: 00       brk
3321: 00       brk
3322: 00       brk
3323: 00       brk
3324: 00       brk
3325: 00       brk
3326: 00       brk
3327: 00       brk
3328: 00       brk
3329: 00       brk
332A: 00       brk
332B: 00       brk
332C: 00       brk
332D: 00       brk
332E: 00       brk
332F: 00       brk
3330: 00       brk
3331: 00       brk
3332: 00       brk
3333: 00       brk
3334: 00       brk
3335: 00       brk
3336: 00       brk
3337: 00       brk
3338: 00       brk
3339: 00       brk
333A: 00       brk
333B: 00       brk
333C: 00       brk
333D: 00       brk
333E: 00       brk
333F: 00       brk
3340: 00       brk
3341: 00       brk
3342: 00       brk
3343: 00       brk
3344: 00       brk
3345: 00       brk
3346: 00       brk
3347: 00       brk
3348: 00       brk
3349: 00       brk
334A: 00       brk
334B: 00       brk
334C: 00       brk
334D: 00       brk
334E: 00       brk
334F: 00       brk
3350: 00       brk
3351: 00       brk
3352: 00       brk
3353: 00       brk
3354: 00       brk
3355: 00       brk
3356: 00       brk
3357: 00       brk
3358: 00       brk
3359: 00       brk
335A: 00       brk
335B: 00       brk
335C: 00       brk
335D: 00       brk
335E: 00       brk
335F: 00       brk
3360: 00       brk
3361: 00       brk
3362: 00       brk
3363: 00       brk
3364: 00       brk
3365: 00       brk
3366: 00       brk
3367: 00       brk
3368: 00       brk
3369: 00       brk
336A: 00       brk
336B: 00       brk
336C: 00       brk
336D: 00       brk
336E: 00       brk
336F: 00       brk
3370: 00       brk
3371: 00       brk
3372: 00       brk
3373: 00       brk
3374: 00       brk
3375: 00       brk
3376: 00       brk
3377: 00       brk
3378: 00       brk
3379: 00       brk
337A: 00       brk
337B: 00       brk
337C: 00       brk
337D: 00       brk
337E: 00       brk
337F: 00       brk
3380: 00       brk
3381: 00       brk
3382: 00       brk
3383: 00       brk
3384: 00       brk
3385: 00       brk
3386: 00       brk
3387: 00       brk
3388: 00       brk
3389: 00       brk
338A: 00       brk
338B: 00       brk
338C: 00       brk
338D: 00       brk
338E: 00       brk
338F: 00       brk
3390: 00       brk
3391: 00       brk
3392: 00       brk
3393: 00       brk
3394: 00       brk
3395: 00       brk
3396: 00       brk
3397: 00       brk
3398: 00       brk
3399: 00       brk
339A: 00       brk
339B: 00       brk
339C: 00       brk
339D: 00       brk
339E: 00       brk
339F: 00       brk
33A0: 00       brk
33A1: 00       brk
33A2: 00       brk
33A3: 00       brk
33A4: 00       brk
33A5: 00       brk
33A6: 00       brk
33A7: 00       brk
33A8: 00       brk
33A9: 00       brk
33AA: 00       brk
33AB: 00       brk
33AC: 00       brk
33AD: 00       brk
33AE: 00       brk
33AF: 00       brk
33B0: 00       brk
33B1: 00       brk
33B2: 00       brk
33B3: 00       brk
33B4: 00       brk
33B5: 00       brk
33B6: 00       brk
33B7: 00       brk
33B8: 00       brk
33B9: 00       brk
33BA: 00       brk
33BB: 00       brk
33BC: 00       brk
33BD: 00       brk
33BE: 00       brk
33BF: 00       brk
33C0: 00       brk
33C1: 00       brk
33C2: 00       brk
33C3: 00       brk
33C4: 00       brk
33C5: 00       brk
33C6: 00       brk
33C7: 00       brk
33C8: 00       brk
33C9: 00       brk
33CA: 00       brk
33CB: 00       brk
33CC: 00       brk
33CD: 00       brk
33CE: 00       brk
33CF: 00       brk
33D0: 00       brk
33D1: 00       brk
33D2: 00       brk
33D3: 00       brk
33D4: 00       brk
33D5: 00       brk
33D6: 00       brk
33D7: 00       brk
33D8: 00       brk
33D9: 00       brk
33DA: 00       brk
33DB: 00       brk
33DC: 00       brk
33DD: 00       brk
33DE: 00       brk
33DF: 00       brk
33E0: 00       brk
33E1: 00       brk
33E2: 00       brk
33E3: 00       brk
33E4: 00       brk
33E5: 00       brk
33E6: 00       brk
33E7: 00       brk
33E8: 00       brk
33E9: 00       brk
33EA: 00       brk
33EB: 00       brk
33EC: 00       brk
33ED: 00       brk
33EE: 00       brk
33EF: 00       brk
33F0: 00       brk
33F1: 00       brk
33F2: 00       brk
33F3: 00       brk
33F4: 00       brk
33F5: 00       brk
33F6: 00       brk
33F7: 00       brk
33F8: 00       brk
33F9: 00       brk
33FA: 00       brk
33FB: 00       brk
33FC: 00       brk
33FD: 00       brk
33FE: 00       brk
33FF: 00       brk
3400: 00       brk
3401: 00       brk
3402: 00       brk
3403: 00       brk
3404: 00       brk
3405: 00       brk
3406: 00       brk
3407: 00       brk
3408: 00       brk
3409: 00       brk
340A: 00       brk
340B: 00       brk
340C: 00       brk
340D: 00       brk
340E: 00       brk
340F: 00       brk
3410: 00       brk
3411: 00       brk
3412: 00       brk
3413: 00       brk
3414: 00       brk
3415: 00       brk
3416: 00       brk
3417: 00       brk
3418: 00       brk
3419: 00       brk
341A: 00       brk
341B: 00       brk
341C: 00       brk
341D: 00       brk
341E: 00       brk
341F: 00       brk
3420: 00       brk
3421: 00       brk
3422: 00       brk
3423: 00       brk
3424: 00       brk
3425: 00       brk
3426: 00       brk
3427: 00       brk
3428: 00       brk
3429: 00       brk
342A: 00       brk
342B: 00       brk
342C: 00       brk
342D: 00       brk
342E: 00       brk
342F: 00       brk
3430: 00       brk
3431: 00       brk
3432: 00       brk
3433: 00       brk
3434: 00       brk
3435: 00       brk
3436: 00       brk
3437: 00       brk
3438: 00       brk
3439: 00       brk
343A: 00       brk
343B: 00       brk
343C: 00       brk
343D: 00       brk
343E: 00       brk
343F: 00       brk
3440: 00       brk
3441: 00       brk
3442: 00       brk
3443: 00       brk
3444: 00       brk
3445: 00       brk
3446: 00       brk
3447: 00       brk
3448: 00       brk
3449: 00       brk
344A: 00       brk
344B: 00       brk
344C: 00       brk
344D: 00       brk
344E: 00       brk
344F: 00       brk
3450: 00       brk
3451: 00       brk
3452: 00       brk
3453: 00       brk
3454: 00       brk
3455: 00       brk
3456: 00       brk
3457: 00       brk
3458: 00       brk
3459: 00       brk
345A: 00       brk
345B: 00       brk
345C: 00       brk
345D: 00       brk
345E: 00       brk
345F: 00       brk
3460: 00       brk
3461: 00       brk
3462: 00       brk
3463: 00       brk
3464: 00       brk
3465: 00       brk
3466: 00       brk
3467: 00       brk
3468: 00       brk
3469: 00       brk
346A: 00       brk
346B: 00       brk
346C: 00       brk
346D: 00       brk
346E: 00       brk
346F: 00       brk
3470: 00       brk
3471: 00       brk
3472: 00       brk
3473: 00       brk
3474: 00       brk
3475: 00       brk
3476: 00       brk
3477: 00       brk
3478: 00       brk
3479: 00       brk
347A: 00       brk
347B: 00       brk
347C: 00       brk
347D: 00       brk
347E: 00       brk
347F: 00       brk
3480: 00       brk
3481: 00       brk
3482: 00       brk
3483: 00       brk
3484: 00       brk
3485: 00       brk
3486: 00       brk
3487: 00       brk
3488: 00       brk
3489: 00       brk
348A: 00       brk
348B: 00       brk
348C: 00       brk
348D: 00       brk
348E: 00       brk
348F: 00       brk
3490: 00       brk
3491: 00       brk
3492: 00       brk
3493: 00       brk
3494: 00       brk
3495: 00       brk
3496: 00       brk
3497: 00       brk
3498: 00       brk
3499: 00       brk
349A: 00       brk
349B: 00       brk
349C: 00       brk
349D: 00       brk
349E: 00       brk
349F: 00       brk
34A0: 00       brk
34A1: 00       brk
34A2: 00       brk
34A3: 00       brk
34A4: 00       brk
34A5: 00       brk
34A6: 00       brk
34A7: 00       brk
34A8: 00       brk
34A9: 00       brk
34AA: 00       brk
34AB: 00       brk
34AC: 00       brk
34AD: 00       brk
34AE: 00       brk
34AF: 00       brk
34B0: 00       brk
34B1: 00       brk
34B2: 00       brk
34B3: 00       brk
34B4: 00       brk
34B5: 00       brk
34B6: 00       brk
34B7: 00       brk
34B8: 00       brk
34B9: 00       brk
34BA: 00       brk
34BB: 00       brk
34BC: 00       brk
34BD: 00       brk
34BE: 00       brk
34BF: 00       brk
34C0: 00       brk
34C1: 00       brk
34C2: 00       brk
34C3: 00       brk
34C4: 00       brk
34C5: 00       brk
34C6: 00       brk
34C7: 00       brk
34C8: 00       brk
34C9: 00       brk
34CA: 00       brk
34CB: 00       brk
34CC: 00       brk
34CD: 00       brk
34CE: 00       brk
34CF: 00       brk
34D0: 00       brk
34D1: 00       brk
34D2: 00       brk
34D3: 00       brk
34D4: 00       brk
34D5: 00       brk
34D6: 00       brk
34D7: 00       brk
34D8: 00       brk
34D9: 00       brk
34DA: 00       brk
34DB: 00       brk
34DC: 00       brk
34DD: 00       brk
34DE: 00       brk
34DF: 00       brk
34E0: 00       brk
34E1: 00       brk
34E2: 00       brk
34E3: 00       brk
34E4: 00       brk
34E5: 00       brk
34E6: 00       brk
34E7: 00       brk
34E8: 00       brk
34E9: 00       brk
34EA: 00       brk
34EB: 00       brk
34EC: 00       brk
34ED: 00       brk
34EE: 00       brk
34EF: 00       brk
34F0: 00       brk
34F1: 00       brk
34F2: 00       brk
34F3: 00       brk
34F4: 00       brk
34F5: 00       brk
34F6: 00       brk
34F7: 00       brk
34F8: 00       brk
34F9: 00       brk
34FA: 00       brk
34FB: 00       brk
34FC: 00       brk
34FD: 00       brk
34FE: 00       brk
34FF: 00       brk
3500: 00       brk
3501: 00       brk
3502: 00       brk
3503: 00       brk
3504: 00       brk
3505: 00       brk
3506: 00       brk
3507: 00       brk
3508: 00       brk
3509: 00       brk
350A: 00       brk
350B: 00       brk
350C: 00       brk
350D: 00       brk
350E: 00       brk
350F: 00       brk
3510: 00       brk
3511: 00       brk
3512: 00       brk
3513: 00       brk
3514: 00       brk
3515: 00       brk
3516: 00       brk
3517: 00       brk
3518: 00       brk
3519: 00       brk
351A: 00       brk
351B: 00       brk
351C: 00       brk
351D: 00       brk
351E: 00       brk
351F: 00       brk
3520: 00       brk
3521: 00       brk
3522: 00       brk
3523: 00       brk
3524: 00       brk
3525: 00       brk
3526: 00       brk
3527: 00       brk
3528: 00       brk
3529: 00       brk
352A: 00       brk
352B: 00       brk
352C: 00       brk
352D: 00       brk
352E: 00       brk
352F: 00       brk
3530: 00       brk
3531: 00       brk
3532: 00       brk
3533: 00       brk
3534: 00       brk
3535: 00       brk
3536: 00       brk
3537: 00       brk
3538: 00       brk
3539: 00       brk
353A: 00       brk
353B: 00       brk
353C: 00       brk
353D: 00       brk
353E: 00       brk
353F: 00       brk
3540: 00       brk
3541: 00       brk
3542: 00       brk
3543: 00       brk
3544: 00       brk
3545: 00       brk
3546: 00       brk
3547: 00       brk
3548: 00       brk
3549: 00       brk
354A: 00       brk
354B: 00       brk
354C: 00       brk
354D: 00       brk
354E: 00       brk
354F: 00       brk
3550: 00       brk
3551: 00       brk
3552: 00       brk
3553: 00       brk
3554: 00       brk
3555: 00       brk
3556: 00       brk
3557: 00       brk
3558: 00       brk
3559: 00       brk
355A: 00       brk
355B: 00       brk
355C: 00       brk
355D: 00       brk
355E: 00       brk
355F: 00       brk
3560: 00       brk
3561: 00       brk
3562: 00       brk
3563: 00       brk
3564: 00       brk
3565: 00       brk
3566: 00       brk
3567: 00       brk
3568: 00       brk
3569: 00       brk
356A: 00       brk
356B: 00       brk
356C: 00       brk
356D: 00       brk
356E: 00       brk
356F: 00       brk
3570: 00       brk
3571: 00       brk
3572: 00       brk
3573: 00       brk
3574: 00       brk
3575: 00       brk
3576: 00       brk
3577: 00       brk
3578: 00       brk
3579: 00       brk
357A: 00       brk
357B: 00       brk
357C: 00       brk
357D: 00       brk
357E: 00       brk
357F: 00       brk
3580: 00       brk
3581: 00       brk
3582: 00       brk
3583: 00       brk
3584: 00       brk
3585: 00       brk
3586: 00       brk
3587: 00       brk
3588: 00       brk
3589: 00       brk
358A: 00       brk
358B: 00       brk
358C: 00       brk
358D: 00       brk
358E: 00       brk
358F: 00       brk
3590: 00       brk
3591: 00       brk
3592: 00       brk
3593: 00       brk
3594: 00       brk
3595: 00       brk
3596: 00       brk
3597: 00       brk
3598: 00       brk
3599: 00       brk
359A: 00       brk
359B: 00       brk
359C: 00       brk
359D: 00       brk
359E: 00       brk
359F: 00       brk
35A0: 00       brk
35A1: 00       brk
35A2: 00       brk
35A3: 00       brk
35A4: 00       brk
35A5: 00       brk
35A6: 00       brk
35A7: 00       brk
35A8: 00       brk
35A9: 00       brk
35AA: 00       brk
35AB: 00       brk
35AC: 00       brk
35AD: 00       brk
35AE: 00       brk
35AF: 00       brk
35B0: 00       brk
35B1: 00       brk
35B2: 00       brk
35B3: 00       brk
35B4: 00       brk
35B5: 00       brk
35B6: 00       brk
35B7: 00       brk
35B8: 00       brk
35B9: 00       brk
35BA: 00       brk
35BB: 00       brk
35BC: 00       brk
35BD: 00       brk
35BE: 00       brk
35BF: 00       brk
35C0: 00       brk
35C1: 00       brk
35C2: 00       brk
35C3: 00       brk
35C4: 00       brk
35C5: 00       brk
35C6: 00       brk
35C7: 00       brk
35C8: 00       brk
35C9: 00       brk
35CA: 00       brk
35CB: 00       brk
35CC: 00       brk
35CD: 00       brk
35CE: 00       brk
35CF: 00       brk
35D0: 00       brk
35D1: 00       brk
35D2: 00       brk
35D3: 00       brk
35D4: 00       brk
35D5: 00       brk
35D6: 00       brk
35D7: 00       brk
35D8: 00       brk
35D9: 00       brk
35DA: 00       brk
35DB: 00       brk
35DC: 00       brk
35DD: 00       brk
35DE: 00       brk
35DF: 00       brk
35E0: 00       brk
35E1: 00       brk
35E2: 00       brk
35E3: 00       brk
35E4: 00       brk
35E5: 00       brk
35E6: 00       brk
35E7: 00       brk
35E8: 00       brk
35E9: 00       brk
35EA: 00       brk
35EB: 00       brk
35EC: 00       brk
35ED: 00       brk
35EE: 00       brk
35EF: 00       brk
35F0: 00       brk
35F1: 00       brk
35F2: 00       brk
35F3: 00       brk
35F4: 00       brk
35F5: 00       brk
35F6: 00       brk
35F7: 00       brk
35F8: 00       brk
35F9: 00       brk
35FA: 00       brk
35FB: 00       brk
35FC: 00       brk
35FD: 00       brk
35FE: 00       brk
35FF: 00       brk
3600: 00       brk
3601: 00       brk
3602: 00       brk
3603: 00       brk
3604: 00       brk
3605: 00       brk
3606: 00       brk
3607: 00       brk
3608: 00       brk
3609: 00       brk
360A: 00       brk
360B: 00       brk
360C: 00       brk
360D: 00       brk
360E: 00       brk
360F: 00       brk
3610: 00       brk
3611: 00       brk
3612: 00       brk
3613: 00       brk
3614: 00       brk
3615: 00       brk
3616: 00       brk
3617: 00       brk
3618: 00       brk
3619: 00       brk
361A: 00       brk
361B: 00       brk
361C: 00       brk
361D: 00       brk
361E: 00       brk
361F: 00       brk
3620: 00       brk
3621: 00       brk
3622: 00       brk
3623: 00       brk
3624: 00       brk
3625: 00       brk
3626: 00       brk
3627: 00       brk
3628: 00       brk
3629: 00       brk
362A: 00       brk
362B: 00       brk
362C: 00       brk
362D: 00       brk
362E: 00       brk
362F: 00       brk
3630: 00       brk
3631: 00       brk
3632: 00       brk
3633: 00       brk
3634: 00       brk
3635: 00       brk
3636: 00       brk
3637: 00       brk
3638: 00       brk
3639: 00       brk
363A: 00       brk
363B: 00       brk
363C: 00       brk
363D: 00       brk
363E: 00       brk
363F: 00       brk
3640: 00       brk
3641: 00       brk
3642: 00       brk
3643: 00       brk
3644: 00       brk
3645: 00       brk
3646: 00       brk
3647: 00       brk
3648: 00       brk
3649: 00       brk
364A: 00       brk
364B: 00       brk
364C: 00       brk
364D: 00       brk
364E: 00       brk
364F: 00       brk
3650: 00       brk
3651: 00       brk
3652: 00       brk
3653: 00       brk
3654: 00       brk
3655: 00       brk
3656: 00       brk
3657: 00       brk
3658: 00       brk
3659: 00       brk
365A: 00       brk
365B: 00       brk
365C: 00       brk
365D: 00       brk
365E: 00       brk
365F: 00       brk
3660: 00       brk
3661: 00       brk
3662: 00       brk
3663: 00       brk
3664: 00       brk
3665: 00       brk
3666: 00       brk
3667: 00       brk
3668: 00       brk
3669: 00       brk
366A: 00       brk
366B: 00       brk
366C: 00       brk
366D: 00       brk
366E: 00       brk
366F: 00       brk
3670: 00       brk
3671: 00       brk
3672: 00       brk
3673: 00       brk
3674: 00       brk
3675: 00       brk
3676: 00       brk
3677: 00       brk
3678: 00       brk
3679: 00       brk
367A: 00       brk
367B: 00       brk
367C: 00       brk
367D: 00       brk
367E: 00       brk
367F: 00       brk
3680: 00       brk
3681: 00       brk
3682: 00       brk
3683: 00       brk
3684: 00       brk
3685: 00       brk
3686: 00       brk
3687: 00       brk
3688: 00       brk
3689: 00       brk
368A: 00       brk
368B: 00       brk
368C: 00       brk
368D: 00       brk
368E: 00       brk
368F: 00       brk
3690: 00       brk
3691: 00       brk
3692: 00       brk
3693: 00       brk
3694: 00       brk
3695: 00       brk
3696: 00       brk
3697: 00       brk
3698: 00       brk
3699: 00       brk
369A: 00       brk
369B: 00       brk
369C: 00       brk
369D: 00       brk
369E: 00       brk
369F: 00       brk
36A0: 00       brk
36A1: 00       brk
36A2: 00       brk
36A3: 00       brk
36A4: 00       brk
36A5: 00       brk
36A6: 00       brk
36A7: 00       brk
36A8: 00       brk
36A9: 00       brk
36AA: 00       brk
36AB: 00       brk
36AC: 00       brk
36AD: 00       brk
36AE: 00       brk
36AF: 00       brk
36B0: 00       brk
36B1: 00       brk
36B2: 00       brk
36B3: 00       brk
36B4: 00       brk
36B5: 00       brk
36B6: 00       brk
36B7: 00       brk
36B8: 00       brk
36B9: 00       brk
36BA: 00       brk
36BB: 00       brk
36BC: 00       brk
36BD: 00       brk
36BE: 00       brk
36BF: 00       brk
36C0: 00       brk
36C1: 00       brk
36C2: 00       brk
36C3: 00       brk
36C4: 00       brk
36C5: 00       brk
36C6: 00       brk
36C7: 00       brk
36C8: 00       brk
36C9: 00       brk
36CA: 00       brk
36CB: 00       brk
36CC: 00       brk
36CD: 00       brk
36CE: 00       brk
36CF: 00       brk
36D0: 00       brk
36D1: 00       brk
36D2: 00       brk
36D3: 00       brk
36D4: 00       brk
36D5: 00       brk
36D6: 00       brk
36D7: 00       brk
36D8: 00       brk
36D9: 00       brk
36DA: 00       brk
36DB: 00       brk
36DC: 00       brk
36DD: 00       brk
36DE: 00       brk
36DF: 00       brk
36E0: 00       brk
36E1: 00       brk
36E2: 00       brk
36E3: 00       brk
36E4: 00       brk
36E5: 00       brk
36E6: 00       brk
36E7: 00       brk
36E8: 00       brk
36E9: 00       brk
36EA: 00       brk
36EB: 00       brk
36EC: 00       brk
36ED: 00       brk
36EE: 00       brk
36EF: 00       brk
36F0: 00       brk
36F1: 00       brk
36F2: 00       brk
36F3: 00       brk
36F4: 00       brk
36F5: 00       brk
36F6: 00       brk
36F7: 00       brk
36F8: 00       brk
36F9: 00       brk
36FA: 00       brk
36FB: 00       brk
36FC: 00       brk
36FD: 00       brk
36FE: 00       brk
36FF: 00       brk
3700: 00       brk
3701: 00       brk
3702: 00       brk
3703: 00       brk
3704: 00       brk
3705: 00       brk
3706: 00       brk
3707: 00       brk
3708: 00       brk
3709: 00       brk
370A: 00       brk
370B: 00       brk
370C: 00       brk
370D: 00       brk
370E: 00       brk
370F: 00       brk
3710: 00       brk
3711: 00       brk
3712: 00       brk
3713: 00       brk
3714: 00       brk
3715: 00       brk
3716: 00       brk
3717: 00       brk
3718: 00       brk
3719: 00       brk
371A: 00       brk
371B: 00       brk
371C: 00       brk
371D: 00       brk
371E: 00       brk
371F: 00       brk
3720: 00       brk
3721: 00       brk
3722: 00       brk
3723: 00       brk
3724: 00       brk
3725: 00       brk
3726: 00       brk
3727: 00       brk
3728: 00       brk
3729: 00       brk
372A: 00       brk
372B: 00       brk
372C: 00       brk
372D: 00       brk
372E: 00       brk
372F: 00       brk
3730: 00       brk
3731: 00       brk
3732: 00       brk
3733: 00       brk
3734: 00       brk
3735: 00       brk
3736: 00       brk
3737: 00       brk
3738: 00       brk
3739: 00       brk
373A: 00       brk
373B: 00       brk
373C: 00       brk
373D: 00       brk
373E: 00       brk
373F: 00       brk
3740: 00       brk
3741: 00       brk
3742: 00       brk
3743: 00       brk
3744: 00       brk
3745: 00       brk
3746: 00       brk
3747: 00       brk
3748: 00       brk
3749: 00       brk
374A: 00       brk
374B: 00       brk
374C: 00       brk
374D: 00       brk
374E: 00       brk
374F: 00       brk
3750: 00       brk
3751: 00       brk
3752: 00       brk
3753: 00       brk
3754: 00       brk
3755: 00       brk
3756: 00       brk
3757: 00       brk
3758: 00       brk
3759: 00       brk
375A: 00       brk
375B: 00       brk
375C: 00       brk
375D: 00       brk
375E: 00       brk
375F: 00       brk
3760: 00       brk
3761: 00       brk
3762: 00       brk
3763: 00       brk
3764: 00       brk
3765: 00       brk
3766: 00       brk
3767: 00       brk
3768: 00       brk
3769: 00       brk
376A: 00       brk
376B: 00       brk
376C: 00       brk
376D: 00       brk
376E: 00       brk
376F: 00       brk
3770: 00       brk
3771: 00       brk
3772: 00       brk
3773: 00       brk
3774: 00       brk
3775: 00       brk
3776: 00       brk
3777: 00       brk
3778: 00       brk
3779: 00       brk
377A: 00       brk
377B: 00       brk
377C: 00       brk
377D: 00       brk
377E: 00       brk
377F: 00       brk
3780: 00       brk
3781: 00       brk
3782: 00       brk
3783: 00       brk
3784: 00       brk
3785: 00       brk
3786: 00       brk
3787: 00       brk
3788: 00       brk
3789: 00       brk
378A: 00       brk
378B: 00       brk
378C: 00       brk
378D: 00       brk
378E: 00       brk
378F: 00       brk
3790: 00       brk
3791: 00       brk
3792: 00       brk
3793: 00       brk
3794: 00       brk
3795: 00       brk
3796: 00       brk
3797: 00       brk
3798: 00       brk
3799: 00       brk
379A: 00       brk
379B: 00       brk
379C: 00       brk
379D: 00       brk
379E: 00       brk
379F: 00       brk
37A0: 00       brk
37A1: 00       brk
37A2: 00       brk
37A3: 00       brk
37A4: 00       brk
37A5: 00       brk
37A6: 00       brk
37A7: 00       brk
37A8: 00       brk
37A9: 00       brk
37AA: 00       brk
37AB: 00       brk
37AC: 00       brk
37AD: 00       brk
37AE: 00       brk
37AF: 00       brk
37B0: 00       brk
37B1: 00       brk
37B2: 00       brk
37B3: 00       brk
37B4: 00       brk
37B5: 00       brk
37B6: 00       brk
37B7: 00       brk
37B8: 00       brk
37B9: 00       brk
37BA: 00       brk
37BB: 00       brk
37BC: 00       brk
37BD: 00       brk
37BE: 00       brk
37BF: 00       brk
37C0: 00       brk
37C1: 00       brk
37C2: 00       brk
37C3: 00       brk
37C4: 00       brk
37C5: 00       brk
37C6: 00       brk
37C7: 00       brk
37C8: 00       brk
37C9: 00       brk
37CA: 00       brk
37CB: 00       brk
37CC: 00       brk
37CD: 00       brk
37CE: 00       brk
37CF: 00       brk
37D0: 00       brk
37D1: 00       brk
37D2: 00       brk
37D3: 00       brk
37D4: 00       brk
37D5: 00       brk
37D6: 00       brk
37D7: 00       brk
37D8: 00       brk
37D9: 00       brk
37DA: 00       brk
37DB: 00       brk
37DC: 00       brk
37DD: 00       brk
37DE: 00       brk
37DF: 00       brk
37E0: 00       brk
37E1: 00       brk
37E2: 00       brk
37E3: 00       brk
37E4: 00       brk
37E5: 00       brk
37E6: 00       brk
37E7: 00       brk
37E8: 00       brk
37E9: 00       brk
37EA: 00       brk
37EB: 00       brk
37EC: 00       brk
37ED: 00       brk
37EE: 00       brk
37EF: 00       brk
37F0: 00       brk
37F1: 00       brk
37F2: 00       brk
37F3: 00       brk
37F4: 00       brk
37F5: 00       brk
37F6: 00       brk
37F7: 00       brk
37F8: 00       brk
37F9: 00       brk
37FA: 00       brk
37FB: 00       brk
37FC: 00       brk
37FD: 00       brk
37FE: 00       brk
37FF: 00       brk
3800: 00       brk
3801: 00       brk
3802: 00       brk
3803: 00       brk
3804: 00       brk
3805: 00       brk
3806: 00       brk
3807: 00       brk
3808: 00       brk
3809: 00       brk
380A: 00       brk
380B: 00       brk
380C: 00       brk
380D: 00       brk
380E: 00       brk
380F: 00       brk
3810: 00       brk
3811: 00       brk
3812: 00       brk
3813: 00       brk
3814: 00       brk
3815: 00       brk
3816: 00       brk
3817: 00       brk
3818: 00       brk
3819: 00       brk
381A: 00       brk
381B: 00       brk
381C: 00       brk
381D: 00       brk
381E: 00       brk
381F: 00       brk
3820: 00       brk
3821: 00       brk
3822: 00       brk
3823: 00       brk
3824: 00       brk
3825: 00       brk
3826: 00       brk
3827: 00       brk
3828: 00       brk
3829: 00       brk
382A: 00       brk
382B: 00       brk
382C: 00       brk
382D: 00       brk
382E: 00       brk
382F: 00       brk
3830: 00       brk
3831: 00       brk
3832: 00       brk
3833: 00       brk
3834: 00       brk
3835: 00       brk
3836: 00       brk
3837: 00       brk
3838: 00       brk
3839: 00       brk
383A: 00       brk
383B: 00       brk
383C: 00       brk
383D: 00       brk
383E: 00       brk
383F: 00       brk
3840: 00       brk
3841: 00       brk
3842: 00       brk
3843: 00       brk
3844: 00       brk
3845: 00       brk
3846: 00       brk
3847: 00       brk
3848: 00       brk
3849: 00       brk
384A: 00       brk
384B: 00       brk
384C: 00       brk
384D: 00       brk
384E: 00       brk
384F: 00       brk
3850: 00       brk
3851: 00       brk
3852: 00       brk
3853: 00       brk
3854: 00       brk
3855: 00       brk
3856: 00       brk
3857: 00       brk
3858: 00       brk
3859: 00       brk
385A: 00       brk
385B: 00       brk
385C: 00       brk
385D: 00       brk
385E: 00       brk
385F: 00       brk
3860: 00       brk
3861: 00       brk
3862: 00       brk
3863: 00       brk
3864: 00       brk
3865: 00       brk
3866: 00       brk
3867: 00       brk
3868: 00       brk
3869: 00       brk
386A: 00       brk
386B: 00       brk
386C: 00       brk
386D: 00       brk
386E: 00       brk
386F: 00       brk
3870: 00       brk
3871: 00       brk
3872: 00       brk
3873: 00       brk
3874: 00       brk
3875: 00       brk
3876: 00       brk
3877: 00       brk
3878: 00       brk
3879: 00       brk
387A: 00       brk
387B: 00       brk
387C: 00       brk
387D: 00       brk
387E: 00       brk
387F: 00       brk
3880: 00       brk
3881: 00       brk
3882: 00       brk
3883: 00       brk
3884: 00       brk
3885: 00       brk
3886: 00       brk
3887: 00       brk
3888: 00       brk
3889: 00       brk
388A: 00       brk
388B: 00       brk
388C: 00       brk
388D: 00       brk
388E: 00       brk
388F: 00       brk
3890: 00       brk
3891: 00       brk
3892: 00       brk
3893: 00       brk
3894: 00       brk
3895: 00       brk
3896: 00       brk
3897: 00       brk
3898: 00       brk
3899: 00       brk
389A: 00       brk
389B: 00       brk
389C: 00       brk
389D: 00       brk
389E: 00       brk
389F: 00       brk
38A0: 00       brk
38A1: 00       brk
38A2: 00       brk
38A3: 00       brk
38A4: 00       brk
38A5: 00       brk
38A6: 00       brk
38A7: 00       brk
38A8: 00       brk
38A9: 00       brk
38AA: 00       brk
38AB: 00       brk
38AC: 00       brk
38AD: 00       brk
38AE: 00       brk
38AF: 00       brk
38B0: 00       brk
38B1: 00       brk
38B2: 00       brk
38B3: 00       brk
38B4: 00       brk
38B5: 00       brk
38B6: 00       brk
38B7: 00       brk
38B8: 00       brk
38B9: 00       brk
38BA: 00       brk
38BB: 00       brk
38BC: 00       brk
38BD: 00       brk
38BE: 00       brk
38BF: 00       brk
38C0: 00       brk
38C1: 00       brk
38C2: 00       brk
38C3: 00       brk
38C4: 00       brk
38C5: 00       brk
38C6: 00       brk
38C7: 00       brk
38C8: 00       brk
38C9: 00       brk
38CA: 00       brk
38CB: 00       brk
38CC: 00       brk
38CD: 00       brk
38CE: 00       brk
38CF: 00       brk
38D0: 00       brk
38D1: 00       brk
38D2: 00       brk
38D3: 00       brk
38D4: 00       brk
38D5: 00       brk
38D6: 00       brk
38D7: 00       brk
38D8: 00       brk
38D9: 00       brk
38DA: 00       brk
38DB: 00       brk
38DC: 00       brk
38DD: 00       brk
38DE: 00       brk
38DF: 00       brk
38E0: 00       brk
38E1: 00       brk
38E2: 00       brk
38E3: 00       brk
38E4: 00       brk
38E5: 00       brk
38E6: 00       brk
38E7: 00       brk
38E8: 00       brk
38E9: 00       brk
38EA: 00       brk
38EB: 00       brk
38EC: 00       brk
38ED: 00       brk
38EE: 00       brk
38EF: 00       brk
38F0: 00       brk
38F1: 00       brk
38F2: 00       brk
38F3: 00       brk
38F4: 00       brk
38F5: 00       brk
38F6: 00       brk
38F7: 00       brk
38F8: 00       brk
38F9: 00       brk
38FA: 00       brk
38FB: 00       brk
38FC: 00       brk
38FD: 00       brk
38FE: 00       brk
38FF: 00       brk
3900: 00       brk
3901: 00       brk
3902: 00       brk
3903: 00       brk
3904: 00       brk
3905: 00       brk
3906: 00       brk
3907: 00       brk
3908: 00       brk
3909: 00       brk
390A: 00       brk
390B: 00       brk
390C: 00       brk
390D: 00       brk
390E: 00       brk
390F: 00       brk
3910: 00       brk
3911: 00       brk
3912: 00       brk
3913: 00       brk
3914: 00       brk
3915: 00       brk
3916: 00       brk
3917: 00       brk
3918: 00       brk
3919: 00       brk
391A: 00       brk
391B: 00       brk
391C: 00       brk
391D: 00       brk
391E: 00       brk
391F: 00       brk
3920: 00       brk
3921: 00       brk
3922: 00       brk
3923: 00       brk
3924: 00       brk
3925: 00       brk
3926: 00       brk
3927: 00       brk
3928: 00       brk
3929: 00       brk
392A: 00       brk
392B: 00       brk
392C: 00       brk
392D: 00       brk
392E: 00       brk
392F: 00       brk
3930: 00       brk
3931: 00       brk
3932: 00       brk
3933: 00       brk
3934: 00       brk
3935: 00       brk
3936: 00       brk
3937: 00       brk
3938: 00       brk
3939: 00       brk
393A: 00       brk
393B: 00       brk
393C: 00       brk
393D: 00       brk
393E: 00       brk
393F: 00       brk
3940: 00       brk
3941: 00       brk
3942: 00       brk
3943: 00       brk
3944: 00       brk
3945: 00       brk
3946: 00       brk
3947: 00       brk
3948: 00       brk
3949: 00       brk
394A: 00       brk
394B: 00       brk
394C: 00       brk
394D: 00       brk
394E: 00       brk
394F: 00       brk
3950: 00       brk
3951: 00       brk
3952: 00       brk
3953: 00       brk
3954: 00       brk
3955: 00       brk
3956: 00       brk
3957: 00       brk
3958: 00       brk
3959: 00       brk
395A: 00       brk
395B: 00       brk
395C: 00       brk
395D: 00       brk
395E: 00       brk
395F: 00       brk
3960: 00       brk
3961: 00       brk
3962: 00       brk
3963: 00       brk
3964: 00       brk
3965: 00       brk
3966: 00       brk
3967: 00       brk
3968: 00       brk
3969: 00       brk
396A: 00       brk
396B: 00       brk
396C: 00       brk
396D: 00       brk
396E: 00       brk
396F: 00       brk
3970: 00       brk
3971: 00       brk
3972: 00       brk
3973: 00       brk
3974: 00       brk
3975: 00       brk
3976: 00       brk
3977: 00       brk
3978: 00       brk
3979: 00       brk
397A: 00       brk
397B: 00       brk
397C: 00       brk
397D: 00       brk
397E: 00       brk
397F: 00       brk
3980: 00       brk
3981: 00       brk
3982: 00       brk
3983: 00       brk
3984: 00       brk
3985: 00       brk
3986: 00       brk
3987: 00       brk
3988: 00       brk
3989: 00       brk
398A: 00       brk
398B: 00       brk
398C: 00       brk
398D: 00       brk
398E: 00       brk
398F: 00       brk
3990: 00       brk
3991: 00       brk
3992: 00       brk
3993: 00       brk
3994: 00       brk
3995: 00       brk
3996: 00       brk
3997: 00       brk
3998: 00       brk
3999: 00       brk
399A: 00       brk
399B: 00       brk
399C: 00       brk
399D: 00       brk
399E: 00       brk
399F: 00       brk
39A0: 00       brk
39A1: 00       brk
39A2: 00       brk
39A3: 00       brk
39A4: 00       brk
39A5: 00       brk
39A6: 00       brk
39A7: 00       brk
39A8: 00       brk
39A9: 00       brk
39AA: 00       brk
39AB: 00       brk
39AC: 00       brk
39AD: 00       brk
39AE: 00       brk
39AF: 00       brk
39B0: 00       brk
39B1: 00       brk
39B2: 00       brk
39B3: 00       brk
39B4: 00       brk
39B5: 00       brk
39B6: 00       brk
39B7: 00       brk
39B8: 00       brk
39B9: 00       brk
39BA: 00       brk
39BB: 00       brk
39BC: 00       brk
39BD: 00       brk
39BE: 00       brk
39BF: 00       brk
39C0: 00       brk
39C1: 00       brk
39C2: 00       brk
39C3: 00       brk
39C4: 00       brk
39C5: 00       brk
39C6: 00       brk
39C7: 00       brk
39C8: 00       brk
39C9: 00       brk
39CA: 00       brk
39CB: 00       brk
39CC: 00       brk
39CD: 00       brk
39CE: 00       brk
39CF: 00       brk
39D0: 00       brk
39D1: 00       brk
39D2: 00       brk
39D3: 00       brk
39D4: 00       brk
39D5: 00       brk
39D6: 00       brk
39D7: 00       brk
39D8: 00       brk
39D9: 00       brk
39DA: 00       brk
39DB: 00       brk
39DC: 00       brk
39DD: 00       brk
39DE: 00       brk
39DF: 00       brk
39E0: 00       brk
39E1: 00       brk
39E2: 00       brk
39E3: 00       brk
39E4: 00       brk
39E5: 00       brk
39E6: 00       brk
39E7: 00       brk
39E8: 00       brk
39E9: 00       brk
39EA: 00       brk
39EB: 00       brk
39EC: 00       brk
39ED: 00       brk
39EE: 00       brk
39EF: 00       brk
39F0: 00       brk
39F1: 00       brk
39F2: 00       brk
39F3: 00       brk
39F4: 00       brk
39F5: 00       brk
39F6: 00       brk
39F7: 00       brk
39F8: 00       brk
39F9: 00       brk
39FA: 00       brk
39FB: 00       brk
39FC: 00       brk
39FD: 00       brk
39FE: 00       brk
39FF: 00       brk
3A00: 00       brk
3A01: 00       brk
3A02: 00       brk
3A03: 00       brk
3A04: 00       brk
3A05: 00       brk
3A06: 00       brk
3A07: 00       brk
3A08: 00       brk
3A09: 00       brk
3A0A: 00       brk
3A0B: 00       brk
3A0C: 00       brk
3A0D: 00       brk
3A0E: 00       brk
3A0F: 00       brk
3A10: 00       brk
3A11: 00       brk
3A12: 00       brk
3A13: 00       brk
3A14: 00       brk
3A15: 00       brk
3A16: 00       brk
3A17: 00       brk
3A18: 00       brk
3A19: 00       brk
3A1A: 00       brk
3A1B: 00       brk
3A1C: 00       brk
3A1D: 00       brk
3A1E: 00       brk
3A1F: 00       brk
3A20: 00       brk
3A21: 00       brk
3A22: 00       brk
3A23: 00       brk
3A24: 00       brk
3A25: 00       brk
3A26: 00       brk
3A27: 00       brk
3A28: 00       brk
3A29: 00       brk
3A2A: 00       brk
3A2B: 00       brk
3A2C: 00       brk
3A2D: 00       brk
3A2E: 00       brk
3A2F: 00       brk
3A30: 00       brk
3A31: 00       brk
3A32: 00       brk
3A33: 00       brk
3A34: 00       brk
3A35: 00       brk
3A36: 00       brk
3A37: 00       brk
3A38: 00       brk
3A39: 00       brk
3A3A: 00       brk
3A3B: 00       brk
3A3C: 00       brk
3A3D: 00       brk
3A3E: 00       brk
3A3F: 00       brk
3A40: 00       brk
3A41: 00       brk
3A42: 00       brk
3A43: 00       brk
3A44: 00       brk
3A45: 00       brk
3A46: 00       brk
3A47: 00       brk
3A48: 00       brk
3A49: 00       brk
3A4A: 00       brk
3A4B: 00       brk
3A4C: 00       brk
3A4D: 00       brk
3A4E: 00       brk
3A4F: 00       brk
3A50: 00       brk
3A51: 00       brk
3A52: 00       brk
3A53: 00       brk
3A54: 00       brk
3A55: 00       brk
3A56: 00       brk
3A57: 00       brk
3A58: 00       brk
3A59: 00       brk
3A5A: 00       brk
3A5B: 00       brk
3A5C: 00       brk
3A5D: 00       brk
3A5E: 00       brk
3A5F: 00       brk
3A60: 00       brk
3A61: 00       brk
3A62: 00       brk
3A63: 00       brk
3A64: 00       brk
3A65: 00       brk
3A66: 00       brk
3A67: 00       brk
3A68: 00       brk
3A69: 00       brk
3A6A: 00       brk
3A6B: 00       brk
3A6C: 00       brk
3A6D: 00       brk
3A6E: 00       brk
3A6F: 00       brk
3A70: 00       brk
3A71: 00       brk
3A72: 00       brk
3A73: 00       brk
3A74: 00       brk
3A75: 00       brk
3A76: 00       brk
3A77: 00       brk
3A78: 00       brk
3A79: 00       brk
3A7A: 00       brk
3A7B: 00       brk
3A7C: 00       brk
3A7D: 00       brk
3A7E: 00       brk
3A7F: 00       brk
3A80: 00       brk
3A81: 00       brk
3A82: 00       brk
3A83: 00       brk
3A84: 00       brk
3A85: 00       brk
3A86: 00       brk
3A87: 00       brk
3A88: 00       brk
3A89: 00       brk
3A8A: 00       brk
3A8B: 00       brk
3A8C: 00       brk
3A8D: 00       brk
3A8E: 00       brk
3A8F: 00       brk
3A90: 00       brk
3A91: 00       brk
3A92: 00       brk
3A93: 00       brk
3A94: 00       brk
3A95: 00       brk
3A96: 00       brk
3A97: 00       brk
3A98: 00       brk
3A99: 00       brk
3A9A: 00       brk
3A9B: 00       brk
3A9C: 00       brk
3A9D: 00       brk
3A9E: 00       brk
3A9F: 00       brk
3AA0: 00       brk
3AA1: 00       brk
3AA2: 00       brk
3AA3: 00       brk
3AA4: 00       brk
3AA5: 00       brk
3AA6: 00       brk
3AA7: 00       brk
3AA8: 00       brk
3AA9: 00       brk
3AAA: 00       brk
3AAB: 00       brk
3AAC: 00       brk
3AAD: 00       brk
3AAE: 00       brk
3AAF: 00       brk
3AB0: 00       brk
3AB1: 00       brk
3AB2: 00       brk
3AB3: 00       brk
3AB4: 00       brk
3AB5: 00       brk
3AB6: 00       brk
3AB7: 00       brk
3AB8: 00       brk
3AB9: 00       brk
3ABA: 00       brk
3ABB: 00       brk
3ABC: 00       brk
3ABD: 00       brk
3ABE: 00       brk
3ABF: 00       brk
3AC0: 00       brk
3AC1: 00       brk
3AC2: 00       brk
3AC3: 00       brk
3AC4: 00       brk
3AC5: 00       brk
3AC6: 00       brk
3AC7: 00       brk
3AC8: 00       brk
3AC9: 00       brk
3ACA: 00       brk
3ACB: 00       brk
3ACC: 00       brk
3ACD: 00       brk
3ACE: 00       brk
3ACF: 00       brk
3AD0: 00       brk
3AD1: 00       brk
3AD2: 00       brk
3AD3: 00       brk
3AD4: 00       brk
3AD5: 00       brk
3AD6: 00       brk
3AD7: 00       brk
3AD8: 00       brk
3AD9: 00       brk
3ADA: 00       brk
3ADB: 00       brk
3ADC: 00       brk
3ADD: 00       brk
3ADE: 00       brk
3ADF: 00       brk
3AE0: 00       brk
3AE1: 00       brk
3AE2: 00       brk
3AE3: 00       brk
3AE4: 00       brk
3AE5: 00       brk
3AE6: 00       brk
3AE7: 00       brk
3AE8: 00       brk
3AE9: 00       brk
3AEA: 00       brk
3AEB: 00       brk
3AEC: 00       brk
3AED: 00       brk
3AEE: 00       brk
3AEF: 00       brk
3AF0: 00       brk
3AF1: 00       brk
3AF2: 00       brk
3AF3: 00       brk
3AF4: 00       brk
3AF5: 00       brk
3AF6: 00       brk
3AF7: 00       brk
3AF8: 00       brk
3AF9: 00       brk
3AFA: 00       brk
3AFB: 00       brk
3AFC: 00       brk
3AFD: 00       brk
3AFE: 00       brk
3AFF: 00       brk
3B00: 00       brk
3B01: 00       brk
3B02: 00       brk
3B03: 00       brk
3B04: 00       brk
3B05: 00       brk
3B06: 00       brk
3B07: 00       brk
3B08: 00       brk
3B09: 00       brk
3B0A: 00       brk
3B0B: 00       brk
3B0C: 00       brk
3B0D: 00       brk
3B0E: 00       brk
3B0F: 00       brk
3B10: 00       brk
3B11: 00       brk
3B12: 00       brk
3B13: 00       brk
3B14: 00       brk
3B15: 00       brk
3B16: 00       brk
3B17: 00       brk
3B18: 00       brk
3B19: 00       brk
3B1A: 00       brk
3B1B: 00       brk
3B1C: 00       brk
3B1D: 00       brk
3B1E: 00       brk
3B1F: 00       brk
3B20: 00       brk
3B21: 00       brk
3B22: 00       brk
3B23: 00       brk
3B24: 00       brk
3B25: 00       brk
3B26: 00       brk
3B27: 00       brk
3B28: 00       brk
3B29: 00       brk
3B2A: 00       brk
3B2B: 00       brk
3B2C: 00       brk
3B2D: 00       brk
3B2E: 00       brk
3B2F: 00       brk
3B30: 00       brk
3B31: 00       brk
3B32: 00       brk
3B33: 00       brk
3B34: 00       brk
3B35: 00       brk
3B36: 00       brk
3B37: 00       brk
3B38: 00       brk
3B39: 00       brk
3B3A: 00       brk
3B3B: 00       brk
3B3C: 00       brk
3B3D: 00       brk
3B3E: 00       brk
3B3F: 00       brk
3B40: 00       brk
3B41: 00       brk
3B42: 00       brk
3B43: 00       brk
3B44: 00       brk
3B45: 00       brk
3B46: 00       brk
3B47: 00       brk
3B48: 00       brk
3B49: 00       brk
3B4A: 00       brk
3B4B: 00       brk
3B4C: 00       brk
3B4D: 00       brk
3B4E: 00       brk
3B4F: 00       brk
3B50: 00       brk
3B51: 00       brk
3B52: 00       brk
3B53: 00       brk
3B54: 00       brk
3B55: 00       brk
3B56: 00       brk
3B57: 00       brk
3B58: 00       brk
3B59: 00       brk
3B5A: 00       brk
3B5B: 00       brk
3B5C: 00       brk
3B5D: 00       brk
3B5E: 00       brk
3B5F: 00       brk
3B60: 00       brk
3B61: 00       brk
3B62: 00       brk
3B63: 00       brk
3B64: 00       brk
3B65: 00       brk
3B66: 00       brk
3B67: 00       brk
3B68: 00       brk
3B69: 00       brk
3B6A: 00       brk
3B6B: 00       brk
3B6C: 00       brk
3B6D: 00       brk
3B6E: 00       brk
3B6F: 00       brk
3B70: 00       brk
3B71: 00       brk
3B72: 00       brk
3B73: 00       brk
3B74: 00       brk
3B75: 00       brk
3B76: 00       brk
3B77: 00       brk
3B78: 00       brk
3B79: 00       brk
3B7A: 00       brk
3B7B: 00       brk
3B7C: 00       brk
3B7D: 00       brk
3B7E: 00       brk
3B7F: 00       brk
3B80: 00       brk
3B81: 00       brk
3B82: 00       brk
3B83: 00       brk
3B84: 00       brk
3B85: 00       brk
3B86: 00       brk
3B87: 00       brk
3B88: 00       brk
3B89: 00       brk
3B8A: 00       brk
3B8B: 00       brk
3B8C: 00       brk
3B8D: 00       brk
3B8E: 00       brk
3B8F: 00       brk
3B90: 00       brk
3B91: 00       brk
3B92: 00       brk
3B93: 00       brk
3B94: 00       brk
3B95: 00       brk
3B96: 00       brk
3B97: 00       brk
3B98: 00       brk
3B99: 00       brk
3B9A: 00       brk
3B9B: 00       brk
3B9C: 00       brk
3B9D: 00       brk
3B9E: 00       brk
3B9F: 00       brk
3BA0: 00       brk
3BA1: 00       brk
3BA2: 00       brk
3BA3: 00       brk
3BA4: 00       brk
3BA5: 00       brk
3BA6: 00       brk
3BA7: 00       brk
3BA8: 00       brk
3BA9: 00       brk
3BAA: 00       brk
3BAB: 00       brk
3BAC: 00       brk
3BAD: 00       brk
3BAE: 00       brk
3BAF: 00       brk
3BB0: 00       brk
3BB1: 00       brk
3BB2: 00       brk
3BB3: 00       brk
3BB4: 00       brk
3BB5: 00       brk
3BB6: 00       brk
3BB7: 00       brk
3BB8: 00       brk
3BB9: 00       brk
3BBA: 00       brk
3BBB: 00       brk
3BBC: 00       brk
3BBD: 00       brk
3BBE: 00       brk
3BBF: 00       brk
3BC0: 00       brk
3BC1: 00       brk
3BC2: 00       brk
3BC3: 00       brk
3BC4: 00       brk
3BC5: 00       brk
3BC6: 00       brk
3BC7: 00       brk
3BC8: 00       brk
3BC9: 00       brk
3BCA: 00       brk
3BCB: 00       brk
3BCC: 00       brk
3BCD: 00       brk
3BCE: 00       brk
3BCF: 00       brk
3BD0: 00       brk
3BD1: 00       brk
3BD2: 00       brk
3BD3: 00       brk
3BD4: 00       brk
3BD5: 00       brk
3BD6: 00       brk
3BD7: 00       brk
3BD8: 00       brk
3BD9: 00       brk
3BDA: 00       brk
3BDB: 00       brk
3BDC: 00       brk
3BDD: 00       brk
3BDE: 00       brk
3BDF: 00       brk
3BE0: 00       brk
3BE1: 00       brk
3BE2: 00       brk
3BE3: 00       brk
3BE4: 00       brk
3BE5: 00       brk
3BE6: 00       brk
3BE7: 00       brk
3BE8: 00       brk
3BE9: 00       brk
3BEA: 00       brk
3BEB: 00       brk
3BEC: 00       brk
3BED: 00       brk
3BEE: 00       brk
3BEF: 00       brk
3BF0: 00       brk
3BF1: 00       brk
3BF2: 00       brk
3BF3: 00       brk
3BF4: 00       brk
3BF5: 00       brk
3BF6: 00       brk
3BF7: 00       brk
3BF8: 00       brk
3BF9: 00       brk
3BFA: 00       brk
3BFB: 00       brk
3BFC: 00       brk
3BFD: 00       brk
3BFE: 00       brk
3BFF: 00       brk
3C00: 00       brk
3C01: 00       brk
3C02: 00       brk
3C03: 00       brk
3C04: 00       brk
3C05: 00       brk
3C06: 00       brk
3C07: 00       brk
3C08: 00       brk
3C09: 00       brk
3C0A: 00       brk
3C0B: 00       brk
3C0C: 00       brk
3C0D: 00       brk
3C0E: 00       brk
3C0F: 00       brk
3C10: 00       brk
3C11: 00       brk
3C12: 00       brk
3C13: 00       brk
3C14: 00       brk
3C15: 00       brk
3C16: 00       brk
3C17: 00       brk
3C18: 00       brk
3C19: 00       brk
3C1A: 00       brk
3C1B: 00       brk
3C1C: 00       brk
3C1D: 00       brk
3C1E: 00       brk
3C1F: 00       brk
3C20: 00       brk
3C21: 00       brk
3C22: 00       brk
3C23: 00       brk
3C24: 00       brk
3C25: 00       brk
3C26: 00       brk
3C27: 00       brk
3C28: 00       brk
3C29: 00       brk
3C2A: 00       brk
3C2B: 00       brk
3C2C: 00       brk
3C2D: 00       brk
3C2E: 00       brk
3C2F: 00       brk
3C30: 00       brk
3C31: 00       brk
3C32: 00       brk
3C33: 00       brk
3C34: 00       brk
3C35: 00       brk
3C36: 00       brk
3C37: 00       brk
3C38: 00       brk
3C39: 00       brk
3C3A: 00       brk
3C3B: 00       brk
3C3C: 00       brk
3C3D: 00       brk
3C3E: 00       brk
3C3F: 00       brk
3C40: 00       brk
3C41: 00       brk
3C42: 00       brk
3C43: 00       brk
3C44: 00       brk
3C45: 00       brk
3C46: 00       brk
3C47: 00       brk
3C48: 00       brk
3C49: 00       brk
3C4A: 00       brk
3C4B: 00       brk
3C4C: 00       brk
3C4D: 00       brk
3C4E: 00       brk
3C4F: 00       brk
3C50: 00       brk
3C51: 00       brk
3C52: 00       brk
3C53: 00       brk
3C54: 00       brk
3C55: 00       brk
3C56: 00       brk
3C57: 00       brk
3C58: 00       brk
3C59: 00       brk
3C5A: 00       brk
3C5B: 00       brk
3C5C: 00       brk
3C5D: 00       brk
3C5E: 00       brk
3C5F: 00       brk
3C60: 00       brk
3C61: 00       brk
3C62: 00       brk
3C63: 00       brk
3C64: 00       brk
3C65: 00       brk
3C66: 00       brk
3C67: 00       brk
3C68: 00       brk
3C69: 00       brk
3C6A: 00       brk
3C6B: 00       brk
3C6C: 00       brk
3C6D: 00       brk
3C6E: 00       brk
3C6F: 00       brk
3C70: 00       brk
3C71: 00       brk
3C72: 00       brk
3C73: 00       brk
3C74: 00       brk
3C75: 00       brk
3C76: 00       brk
3C77: 00       brk
3C78: 00       brk
3C79: 00       brk
3C7A: 00       brk
3C7B: 00       brk
3C7C: 00       brk
3C7D: 00       brk
3C7E: 00       brk
3C7F: 00       brk
3C80: 00       brk
3C81: 00       brk
3C82: 00       brk
3C83: 00       brk
3C84: 00       brk
3C85: 00       brk
3C86: 00       brk
3C87: 00       brk
3C88: 00       brk
3C89: 00       brk
3C8A: 00       brk
3C8B: 00       brk
3C8C: 00       brk
3C8D: 00       brk
3C8E: 00       brk
3C8F: 00       brk
3C90: 00       brk
3C91: 00       brk
3C92: 00       brk
3C93: 00       brk
3C94: 00       brk
3C95: 00       brk
3C96: 00       brk
3C97: 00       brk
3C98: 00       brk
3C99: 00       brk
3C9A: 00       brk
3C9B: 00       brk
3C9C: 00       brk
3C9D: 00       brk
3C9E: 00       brk
3C9F: 00       brk
3CA0: 00       brk
3CA1: 00       brk
3CA2: 00       brk
3CA3: 00       brk
3CA4: 00       brk
3CA5: 00       brk
3CA6: 00       brk
3CA7: 00       brk
3CA8: 00       brk
3CA9: 00       brk
3CAA: 00       brk
3CAB: 00       brk
3CAC: 00       brk
3CAD: 00       brk
3CAE: 00       brk
3CAF: 00       brk
3CB0: 00       brk
3CB1: 00       brk
3CB2: 00       brk
3CB3: 00       brk
3CB4: 00       brk
3CB5: 00       brk
3CB6: 00       brk
3CB7: 00       brk
3CB8: 00       brk
3CB9: 00       brk
3CBA: 00       brk
3CBB: 00       brk
3CBC: 00       brk
3CBD: 00       brk
3CBE: 00       brk
3CBF: 00       brk
3CC0: 00       brk
3CC1: 00       brk
3CC2: 00       brk
3CC3: 00       brk
3CC4: 00       brk
3CC5: 00       brk
3CC6: 00       brk
3CC7: 00       brk
3CC8: 00       brk
3CC9: 00       brk
3CCA: 00       brk
3CCB: 00       brk
3CCC: 00       brk
3CCD: 00       brk
3CCE: 00       brk
3CCF: 00       brk
3CD0: 00       brk
3CD1: 00       brk
3CD2: 00       brk
3CD3: 00       brk
3CD4: 00       brk
3CD5: 00       brk
3CD6: 00       brk
3CD7: 00       brk
3CD8: 00       brk
3CD9: 00       brk
3CDA: 00       brk
3CDB: 00       brk
3CDC: 00       brk
3CDD: 00       brk
3CDE: 00       brk
3CDF: 00       brk
3CE0: 00       brk
3CE1: 00       brk
3CE2: 00       brk
3CE3: 00       brk
3CE4: 00       brk
3CE5: 00       brk
3CE6: 00       brk
3CE7: 00       brk
3CE8: 00       brk
3CE9: 00       brk
3CEA: 00       brk
3CEB: 00       brk
3CEC: 00       brk
3CED: 00       brk
3CEE: 00       brk
3CEF: 00       brk
3CF0: 00       brk
3CF1: 00       brk
3CF2: 00       brk
3CF3: 00       brk
3CF4: 00       brk
3CF5: 00       brk
3CF6: 00       brk
3CF7: 00       brk
3CF8: 00       brk
3CF9: 00       brk
3CFA: 00       brk
3CFB: 00       brk
3CFC: 00       brk
3CFD: 00       brk
3CFE: 00       brk
3CFF: 00       brk
3D00: 00       brk
3D01: 00       brk
3D02: 00       brk
3D03: 00       brk
3D04: 00       brk
3D05: 00       brk
3D06: 00       brk
3D07: 00       brk
3D08: 00       brk
3D09: 00       brk
3D0A: 00       brk
3D0B: 00       brk
3D0C: 00       brk
3D0D: 00       brk
3D0E: 00       brk
3D0F: 00       brk
3D10: 00       brk
3D11: 00       brk
3D12: 00       brk
3D13: 00       brk
3D14: 00       brk
3D15: 00       brk
3D16: 00       brk
3D17: 00       brk
3D18: 00       brk
3D19: 00       brk
3D1A: 00       brk
3D1B: 00       brk
3D1C: 00       brk
3D1D: 00       brk
3D1E: 00       brk
3D1F: 00       brk
3D20: 00       brk
3D21: 00       brk
3D22: 00       brk
3D23: 00       brk
3D24: 00       brk
3D25: 00       brk
3D26: 00       brk
3D27: 00       brk
3D28: 00       brk
3D29: 00       brk
3D2A: 00       brk
3D2B: 00       brk
3D2C: 00       brk
3D2D: 00       brk
3D2E: 00       brk
3D2F: 00       brk
3D30: 00       brk
3D31: 00       brk
3D32: 00       brk
3D33: 00       brk
3D34: 00       brk
3D35: 00       brk
3D36: 00       brk
3D37: 00       brk
3D38: 00       brk
3D39: 00       brk
3D3A: 00       brk
3D3B: 00       brk
3D3C: 00       brk
3D3D: 00       brk
3D3E: 00       brk
3D3F: 00       brk
3D40: 00       brk
3D41: 00       brk
3D42: 00       brk
3D43: 00       brk
3D44: 00       brk
3D45: 00       brk
3D46: 00       brk
3D47: 00       brk
3D48: 00       brk
3D49: 00       brk
3D4A: 00       brk
3D4B: 00       brk
3D4C: 00       brk
3D4D: 00       brk
3D4E: 00       brk
3D4F: 00       brk
3D50: 00       brk
3D51: 00       brk
3D52: 00       brk
3D53: 00       brk
3D54: 00       brk
3D55: 00       brk
3D56: 00       brk
3D57: 00       brk
3D58: 00       brk
3D59: 00       brk
3D5A: 00       brk
3D5B: 00       brk
3D5C: 00       brk
3D5D: 00       brk
3D5E: 00       brk
3D5F: 00       brk
3D60: 00       brk
3D61: 00       brk
3D62: 00       brk
3D63: 00       brk
3D64: 00       brk
3D65: 00       brk
3D66: 00       brk
3D67: 00       brk
3D68: 00       brk
3D69: 00       brk
3D6A: 00       brk
3D6B: 00       brk
3D6C: 00       brk
3D6D: 00       brk
3D6E: 00       brk
3D6F: 00       brk
3D70: 00       brk
3D71: 00       brk
3D72: 00       brk
3D73: 00       brk
3D74: 00       brk
3D75: 00       brk
3D76: 00       brk
3D77: 00       brk
3D78: 00       brk
3D79: 00       brk
3D7A: 00       brk
3D7B: 00       brk
3D7C: 00       brk
3D7D: 00       brk
3D7E: 00       brk
3D7F: 00       brk
3D80: 00       brk
3D81: 00       brk
3D82: 00       brk
3D83: 00       brk
3D84: 00       brk
3D85: 00       brk
3D86: 00       brk
3D87: 00       brk
3D88: 00       brk
3D89: 00       brk
3D8A: 00       brk
3D8B: 00       brk
3D8C: 00       brk
3D8D: 00       brk
3D8E: 00       brk
3D8F: 00       brk
3D90: 00       brk
3D91: 00       brk
3D92: 00       brk
3D93: 00       brk
3D94: 00       brk
3D95: 00       brk
3D96: 00       brk
3D97: 00       brk
3D98: 00       brk
3D99: 00       brk
3D9A: 00       brk
3D9B: 00       brk
3D9C: 00       brk
3D9D: 00       brk
3D9E: 00       brk
3D9F: 00       brk
3DA0: 00       brk
3DA1: 00       brk
3DA2: 00       brk
3DA3: 00       brk
3DA4: 00       brk
3DA5: 00       brk
3DA6: 00       brk
3DA7: 00       brk
3DA8: 00       brk
3DA9: 00       brk
3DAA: 00       brk
3DAB: 00       brk
3DAC: 00       brk
3DAD: 00       brk
3DAE: 00       brk
3DAF: 00       brk
3DB0: 00       brk
3DB1: 00       brk
3DB2: 00       brk
3DB3: 00       brk
3DB4: 00       brk
3DB5: 00       brk
3DB6: 00       brk
3DB7: 00       brk
3DB8: 00       brk
3DB9: 00       brk
3DBA: 00       brk
3DBB: 00       brk
3DBC: 00       brk
3DBD: 00       brk
3DBE: 00       brk
3DBF: 00       brk
3DC0: 00       brk
3DC1: 00       brk
3DC2: 00       brk
3DC3: 00       brk
3DC4: 00       brk
3DC5: 00       brk
3DC6: 00       brk
3DC7: 00       brk
3DC8: 00       brk
3DC9: 00       brk
3DCA: 00       brk
3DCB: 00       brk
3DCC: 00       brk
3DCD: 00       brk
3DCE: 00       brk
3DCF: 00       brk
3DD0: 00       brk
3DD1: 00       brk
3DD2: 00       brk
3DD3: 00       brk
3DD4: 00       brk
3DD5: 00       brk
3DD6: 00       brk
3DD7: 00       brk
3DD8: 00       brk
3DD9: 00       brk
3DDA: 00       brk
3DDB: 00       brk
3DDC: 00       brk
3DDD: 00       brk
3DDE: 00       brk
3DDF: 00       brk
3DE0: 00       brk
3DE1: 00       brk
3DE2: 00       brk
3DE3: 00       brk
3DE4: 00       brk
3DE5: 00       brk
3DE6: 00       brk
3DE7: 00       brk
3DE8: 00       brk
3DE9: 00       brk
3DEA: 00       brk
3DEB: 00       brk
3DEC: 00       brk
3DED: 00       brk
3DEE: 00       brk
3DEF: 00       brk
3DF0: 00       brk
3DF1: 00       brk
3DF2: 00       brk
3DF3: 00       brk
3DF4: 00       brk
3DF5: 00       brk
3DF6: 00       brk
3DF7: 00       brk
3DF8: 00       brk
3DF9: 00       brk
3DFA: 00       brk
3DFB: 00       brk
3DFC: 00       brk
3DFD: 00       brk
3DFE: 00       brk
3DFF: 00       brk
3E00: 00       brk
3E01: 00       brk
3E02: 00       brk
3E03: 00       brk
3E04: 00       brk
3E05: 00       brk
3E06: 00       brk
3E07: 00       brk
3E08: 00       brk
3E09: 00       brk
3E0A: 00       brk
3E0B: 00       brk
3E0C: 00       brk
3E0D: 00       brk
3E0E: 00       brk
3E0F: 00       brk
3E10: 00       brk
3E11: 00       brk
3E12: 00       brk
3E13: 00       brk
3E14: 00       brk
3E15: 00       brk
3E16: 00       brk
3E17: 00       brk
3E18: 00       brk
3E19: 00       brk
3E1A: 00       brk
3E1B: 00       brk
3E1C: 00       brk
3E1D: 00       brk
3E1E: 00       brk
3E1F: 00       brk
3E20: 00       brk
3E21: 00       brk
3E22: 00       brk
3E23: 00       brk
3E24: 00       brk
3E25: 00       brk
3E26: 00       brk
3E27: 00       brk
3E28: 00       brk
3E29: 00       brk
3E2A: 00       brk
3E2B: 00       brk
3E2C: 00       brk
3E2D: 00       brk
3E2E: 00       brk
3E2F: 00       brk
3E30: 00       brk
3E31: 00       brk
3E32: 00       brk
3E33: 00       brk
3E34: 00       brk
3E35: 00       brk
3E36: 00       brk
3E37: 00       brk
3E38: 00       brk
3E39: 00       brk
3E3A: 00       brk
3E3B: 00       brk
3E3C: 00       brk
3E3D: 00       brk
3E3E: 00       brk
3E3F: 00       brk
3E40: 00       brk
3E41: 00       brk
3E42: 00       brk
3E43: 00       brk
3E44: 00       brk
3E45: 00       brk
3E46: 00       brk
3E47: 00       brk
3E48: 00       brk
3E49: 00       brk
3E4A: 00       brk
3E4B: 00       brk
3E4C: 00       brk
3E4D: 00       brk
3E4E: 00       brk
3E4F: 00       brk
3E50: 00       brk
3E51: 00       brk
3E52: 00       brk
3E53: 00       brk
3E54: 00       brk
3E55: 00       brk
3E56: 00       brk
3E57: 00       brk
3E58: 00       brk
3E59: 00       brk
3E5A: 00       brk
3E5B: 00       brk
3E5C: 00       brk
3E5D: 00       brk
3E5E: 00       brk
3E5F: 00       brk
3E60: 00       brk
3E61: 00       brk
3E62: 00       brk
3E63: 00       brk
3E64: 00       brk
3E65: 00       brk
3E66: 00       brk
3E67: 00       brk
3E68: 00       brk
3E69: 00       brk
3E6A: 00       brk
3E6B: 00       brk
3E6C: 00       brk
3E6D: 00       brk
3E6E: 00       brk
3E6F: 00       brk
3E70: 00       brk
3E71: 00       brk
3E72: 00       brk
3E73: 00       brk
3E74: 00       brk
3E75: 00       brk
3E76: 00       brk
3E77: 00       brk
3E78: 00       brk
3E79: 00       brk
3E7A: 00       brk
3E7B: 00       brk
3E7C: 00       brk
3E7D: 00       brk
3E7E: 00       brk
3E7F: 00       brk
3E80: 00       brk
3E81: 00       brk
3E82: 00       brk
3E83: 00       brk
3E84: 00       brk
3E85: 00       brk
3E86: 00       brk
3E87: 00       brk
3E88: 00       brk
3E89: 00       brk
3E8A: 00       brk
3E8B: 00       brk
3E8C: 00       brk
3E8D: 00       brk
3E8E: 00       brk
3E8F: 00       brk
3E90: 00       brk
3E91: 00       brk
3E92: 00       brk
3E93: 00       brk
3E94: 00       brk
3E95: 00       brk
3E96: 00       brk
3E97: 00       brk
3E98: 00       brk
3E99: 00       brk
3E9A: 00       brk
3E9B: 00       brk
3E9C: 00       brk
3E9D: 00       brk
3E9E: 00       brk
3E9F: 00       brk
3EA0: 00       brk
3EA1: 00       brk
3EA2: 00       brk
3EA3: 00       brk
3EA4: 00       brk
3EA5: 00       brk
3EA6: 00       brk
3EA7: 00       brk
3EA8: 00       brk
3EA9: 00       brk
3EAA: 00       brk
3EAB: 00       brk
3EAC: 00       brk
3EAD: 00       brk
3EAE: 00       brk
3EAF: 00       brk
3EB0: 00       brk
3EB1: 00       brk
3EB2: 00       brk
3EB3: 00       brk
3EB4: 00       brk
3EB5: 00       brk
3EB6: 00       brk
3EB7: 00       brk
3EB8: 00       brk
3EB9: 00       brk
3EBA: 00       brk
3EBB: 00       brk
3EBC: 00       brk
3EBD: 00       brk
3EBE: 00       brk
3EBF: 00       brk
3EC0: 00       brk
3EC1: 00       brk
3EC2: 00       brk
3EC3: 00       brk
3EC4: 00       brk
3EC5: 00       brk
3EC6: 00       brk
3EC7: 00       brk
3EC8: 00       brk
3EC9: 00       brk
3ECA: 00       brk
3ECB: 00       brk
3ECC: 00       brk
3ECD: 00       brk
3ECE: 00       brk
3ECF: 00       brk
3ED0: 00       brk
3ED1: 00       brk
3ED2: 00       brk
3ED3: 00       brk
3ED4: 00       brk
3ED5: 00       brk
3ED6: 00       brk
3ED7: 00       brk
3ED8: 00       brk
3ED9: 00       brk
3EDA: 00       brk
3EDB: 00       brk
3EDC: 00       brk
3EDD: 00       brk
3EDE: 00       brk
3EDF: 00       brk
3EE0: 00       brk
3EE1: 00       brk
3EE2: 00       brk
3EE3: 00       brk
3EE4: 00       brk
3EE5: 00       brk
3EE6: 00       brk
3EE7: 00       brk
3EE8: 00       brk
3EE9: 00       brk
3EEA: 00       brk
3EEB: 00       brk
3EEC: 00       brk
3EED: 00       brk
3EEE: 00       brk
3EEF: 00       brk
3EF0: 00       brk
3EF1: 00       brk
3EF2: 00       brk
3EF3: 00       brk
3EF4: 00       brk
3EF5: 00       brk
3EF6: 00       brk
3EF7: 00       brk
3EF8: 00       brk
3EF9: 00       brk
3EFA: 00       brk
3EFB: 00       brk
3EFC: 00       brk
3EFD: 00       brk
3EFE: 00       brk
3EFF: 00       brk
3F00: 00       brk
3F01: 00       brk
3F02: 00       brk
3F03: 00       brk
3F04: 00       brk
3F05: 00       brk
3F06: 00       brk
3F07: 00       brk
3F08: 00       brk
3F09: 00       brk
3F0A: 00       brk
3F0B: 00       brk
3F0C: 00       brk
3F0D: 00       brk
3F0E: 00       brk
3F0F: 00       brk
3F10: 00       brk
3F11: 00       brk
3F12: 00       brk
3F13: 00       brk
3F14: 00       brk
3F15: 00       brk
3F16: 00       brk
3F17: 00       brk
3F18: 00       brk
3F19: 00       brk
3F1A: 00       brk
3F1B: 00       brk
3F1C: 00       brk
3F1D: 00       brk
3F1E: 00       brk
3F1F: 00       brk
3F20: 00       brk
3F21: 00       brk
3F22: 00       brk
3F23: 00       brk
3F24: 00       brk
3F25: 00       brk
3F26: 00       brk
3F27: 00       brk
3F28: 00       brk
3F29: 00       brk
3F2A: 00       brk
3F2B: 00       brk
3F2C: 00       brk
3F2D: 00       brk
3F2E: 00       brk
3F2F: 00       brk
3F30: 00       brk
3F31: 00       brk
3F32: 00       brk
3F33: 00       brk
3F34: 00       brk
3F35: 00       brk
3F36: 00       brk
3F37: 00       brk
3F38: 00       brk
3F39: 00       brk
3F3A: 00       brk
3F3B: 00       brk
3F3C: 00       brk
3F3D: 00       brk
3F3E: 00       brk
3F3F: 00       brk
3F40: 00       brk
3F41: 00       brk
3F42: 00       brk
3F43: 00       brk
3F44: 00       brk
3F45: 00       brk
3F46: 00       brk
3F47: 00       brk
3F48: 00       brk
3F49: 00       brk
3F4A: 00       brk
3F4B: 00       brk
3F4C: 00       brk
3F4D: 00       brk
3F4E: 00       brk
3F4F: 00       brk
3F50: 00       brk
3F51: 00       brk
3F52: 00       brk
3F53: 00       brk
3F54: 00       brk
3F55: 00       brk
3F56: 00       brk
3F57: 00       brk
3F58: 00       brk
3F59: 00       brk
3F5A: 00       brk
3F5B: 00       brk
3F5C: 00       brk
3F5D: 00       brk
3F5E: 00       brk
3F5F: 00       brk
3F60: 00       brk
3F61: 00       brk
3F62: 00       brk
3F63: 00       brk
3F64: 00       brk
3F65: 00       brk
3F66: 00       brk
3F67: 00       brk
3F68: 00       brk
3F69: 00       brk
3F6A: 00       brk
3F6B: 00       brk
3F6C: 00       brk
3F6D: 00       brk
3F6E: 00       brk
3F6F: 00       brk
3F70: 00       brk
3F71: 00       brk
3F72: 00       brk
3F73: 00       brk
3F74: 00       brk
3F75: 00       brk
3F76: 00       brk
3F77: 00       brk
3F78: 00       brk
3F79: 00       brk
3F7A: 00       brk
3F7B: 00       brk
3F7C: 00       brk
3F7D: 00       brk
3F7E: 00       brk
3F7F: 00       brk
3F80: 00       brk
3F81: 00       brk
3F82: 00       brk
3F83: 00       brk
3F84: 00       brk
3F85: 00       brk
3F86: 00       brk
3F87: 00       brk
3F88: 00       brk
3F89: 00       brk
3F8A: 00       brk
3F8B: 00       brk
3F8C: 00       brk
3F8D: 00       brk
3F8E: 00       brk
3F8F: 00       brk
3F90: 00       brk
3F91: 00       brk
3F92: 00       brk
3F93: 00       brk
3F94: 00       brk
3F95: 00       brk
3F96: 00       brk
3F97: 00       brk
3F98: 00       brk
3F99: 00       brk
3F9A: 00       brk
3F9B: 00       brk
3F9C: 00       brk
3F9D: 00       brk
3F9E: 00       brk
3F9F: 00       brk
3FA0: 00       brk
3FA1: 00       brk
3FA2: 00       brk
3FA3: 00       brk
3FA4: 00       brk
3FA5: 00       brk
3FA6: 00       brk
3FA7: 00       brk
3FA8: 00       brk
3FA9: 00       brk
3FAA: 00       brk
3FAB: 00       brk
3FAC: 00       brk
3FAD: 00       brk
3FAE: 00       brk
3FAF: 00       brk
3FB0: 00       brk
3FB1: 00       brk
3FB2: 00       brk
3FB3: 00       brk
3FB4: 00       brk
3FB5: 00       brk
3FB6: 00       brk
3FB7: 00       brk
3FB8: 00       brk
3FB9: 00       brk
3FBA: 00       brk
3FBB: 00       brk
3FBC: 00       brk
3FBD: 00       brk
3FBE: 00       brk
3FBF: 00       brk
3FC0: 00       brk
3FC1: 00       brk
3FC2: 00       brk
3FC3: 00       brk
3FC4: 00       brk
3FC5: 00       brk
3FC6: 00       brk
3FC7: 00       brk
3FC8: 00       brk
3FC9: 00       brk
3FCA: 00       brk
3FCB: 00       brk
3FCC: 00       brk
3FCD: 00       brk
3FCE: 00       brk
3FCF: 00       brk
3FD0: 00       brk
3FD1: 00       brk
3FD2: 00       brk
3FD3: 00       brk
3FD4: 00       brk
3FD5: 00       brk
3FD6: 00       brk
3FD7: 00       brk
3FD8: 00       brk
3FD9: 00       brk
3FDA: 00       brk
3FDB: 00       brk
3FDC: 00       brk
3FDD: 00       brk
3FDE: 00       brk
3FDF: 00       brk
3FE0: 00       brk
3FE1: 00       brk
3FE2: 00       brk
3FE3: 00       brk
3FE4: 00       brk
3FE5: 00       brk
3FE6: 00       brk
3FE7: 00       brk
3FE8: 00       brk
3FE9: 00       brk
3FEA: 00       brk
3FEB: 00       brk
3FEC: 00       brk
3FED: 00       brk
3FEE: 00       brk
3FEF: 00       brk
3FF0: 00       brk
3FF1: 00       brk
3FF2: 00       brk
3FF3: 00       brk
3FF4: 00       brk
3FF5: 00       brk
3FF6: 00       brk
3FF7: 00       brk
3FF8: 00       brk
3FF9: 00       brk
3FFA: 00       brk
3FFB: 00       brk
3FFC: 00       brk
3FFD: 00       brk
3FFE: 00       brk
3FFF: 00       brk
4000: 00       brk
4001: 00       brk
4002: 00       brk
4003: 00       brk
4004: 00       brk
4005: 00       brk
4006: 00       brk
4007: 00       brk
4008: 00       brk
4009: 00       brk
400A: 00       brk
400B: 00       brk
400C: 00       brk
400D: 00       brk
400E: 00       brk
400F: 00       brk
4010: 00       brk
4011: 00       brk
4012: 00       brk
4013: 00       brk
4014: 00       brk
4015: 00       brk
4016: 00       brk
4017: 00       brk
4018: 00       brk
4019: 00       brk
401A: 00       brk
401B: 00       brk
401C: 00       brk
401D: 00       brk
401E: 00       brk
401F: 00       brk
4020: 00       brk
4021: 00       brk
4022: 00       brk
4023: 00       brk
4024: 00       brk
4025: 00       brk
4026: 00       brk
4027: 00       brk
4028: 00       brk
4029: 00       brk
402A: 00       brk
402B: 00       brk
402C: 00       brk
402D: 00       brk
402E: 00       brk
402F: 00       brk
4030: 00       brk
4031: 00       brk
4032: 00       brk
4033: 00       brk
4034: 00       brk
4035: 00       brk
4036: 00       brk
4037: 00       brk
4038: 00       brk
4039: 00       brk
403A: 00       brk
403B: 00       brk
403C: 00       brk
403D: 00       brk
403E: 00       brk
403F: 00       brk
4040: 00       brk
4041: 00       brk
4042: 00       brk
4043: 00       brk
4044: 00       brk
4045: 00       brk
4046: 00       brk
4047: 00       brk
4048: 00       brk
4049: 00       brk
404A: 00       brk
404B: 00       brk
404C: 00       brk
404D: 00       brk
404E: 00       brk
404F: 00       brk
4050: 00       brk
4051: 00       brk
4052: 00       brk
4053: 00       brk
4054: 00       brk
4055: 00       brk
4056: 00       brk
4057: 00       brk
4058: 00       brk
4059: 00       brk
405A: 00       brk
405B: 00       brk
405C: 00       brk
405D: 00       brk
405E: 00       brk
405F: 00       brk
4060: 00       brk
4061: 00       brk
4062: 00       brk
4063: 00       brk
4064: 00       brk
4065: 00       brk
4066: 00       brk
4067: 00       brk
4068: 00       brk
4069: 00       brk
406A: 00       brk
406B: 00       brk
406C: 00       brk
406D: 00       brk
406E: 00       brk
406F: 00       brk
4070: 00       brk
4071: 00       brk
4072: 00       brk
4073: 00       brk
4074: 00       brk
4075: 00       brk
4076: 00       brk
4077: 00       brk
4078: 00       brk
4079: 00       brk
407A: 00       brk
407B: 00       brk
407C: 00       brk
407D: 00       brk
407E: 00       brk
407F: 00       brk
4080: 00       brk
4081: 00       brk
4082: 00       brk
4083: 00       brk
4084: 00       brk
4085: 00       brk
4086: 00       brk
4087: 00       brk
4088: 00       brk
4089: 00       brk
408A: 00       brk
408B: 00       brk
408C: 00       brk
408D: 00       brk
408E: 00       brk
408F: 00       brk
4090: 00       brk
4091: 00       brk
4092: 00       brk
4093: 00       brk
4094: 00       brk
4095: 00       brk
4096: 00       brk
4097: 00       brk
4098: 00       brk
4099: 00       brk
409A: 00       brk
409B: 00       brk
409C: 00       brk
409D: 00       brk
409E: 00       brk
409F: 00       brk
40A0: 00       brk
40A1: 00       brk
40A2: 00       brk
40A3: 00       brk
40A4: 00       brk
40A5: 00       brk
40A6: 00       brk
40A7: 00       brk
40A8: 00       brk
40A9: 00       brk
40AA: 00       brk
40AB: 00       brk
40AC: 00       brk
40AD: 00       brk
40AE: 00       brk
40AF: 00       brk
40B0: 00       brk
40B1: 00       brk
40B2: 00       brk
40B3: 00       brk
40B4: 00       brk
40B5: 00       brk
40B6: 00       brk
40B7: 00       brk
40B8: 00       brk
40B9: 00       brk
40BA: 00       brk
40BB: 00       brk
40BC: 00       brk
40BD: 00       brk
40BE: 00       brk
40BF: 00       brk
40C0: 00       brk
40C1: 00       brk
40C2: 00       brk
40C3: 00       brk
40C4: 00       brk
40C5: 00       brk
40C6: 00       brk
40C7: 00       brk
40C8: 00       brk
40C9: 00       brk
40CA: 00       brk
40CB: 00       brk
40CC: 00       brk
40CD: 00       brk
40CE: 00       brk
40CF: 00       brk
40D0: 00       brk
40D1: 00       brk
40D2: 00       brk
40D3: 00       brk
40D4: 00       brk
40D5: 00       brk
40D6: 00       brk
40D7: 00       brk
40D8: 00       brk
40D9: 00       brk
40DA: 00       brk
40DB: 00       brk
40DC: 00       brk
40DD: 00       brk
40DE: 00       brk
40DF: 00       brk
40E0: 00       brk
40E1: 00       brk
40E2: 00       brk
40E3: 00       brk
40E4: 00       brk
40E5: 00       brk
40E6: 00       brk
40E7: 00       brk
40E8: 00       brk
40E9: 00       brk
40EA: 00       brk
40EB: 00       brk
40EC: 00       brk
40ED: 00       brk
40EE: 00       brk
40EF: 00       brk
40F0: 00       brk
40F1: 00       brk
40F2: 00       brk
40F3: 00       brk
40F4: 00       brk
40F5: 00       brk
40F6: 00       brk
40F7: 00       brk
40F8: 00       brk
40F9: 00       brk
40FA: 00       brk
40FB: 00       brk
40FC: 00       brk
40FD: 00       brk
40FE: 00       brk
40FF: 00       brk
4100: 00       brk
4101: 00       brk
4102: 00       brk
4103: 00       brk
4104: 00       brk
4105: 00       brk
4106: 00       brk
4107: 00       brk
4108: 00       brk
4109: 00       brk
410A: 00       brk
410B: 00       brk
410C: 00       brk
410D: 00       brk
410E: 00       brk
410F: 00       brk
4110: 00       brk
4111: 00       brk
4112: 00       brk
4113: 00       brk
4114: 00       brk
4115: 00       brk
4116: 00       brk
4117: 00       brk
4118: 00       brk
4119: 00       brk
411A: 00       brk
411B: 00       brk
411C: 00       brk
411D: 00       brk
411E: 00       brk
411F: 00       brk
4120: 00       brk
4121: 00       brk
4122: 00       brk
4123: 00       brk
4124: 00       brk
4125: 00       brk
4126: 00       brk
4127: 00       brk
4128: 00       brk
4129: 00       brk
412A: 00       brk
412B: 00       brk
412C: 00       brk
412D: 00       brk
412E: 00       brk
412F: 00       brk
4130: 00       brk
4131: 00       brk
4132: 00       brk
4133: 00       brk
4134: 00       brk
4135: 00       brk
4136: 00       brk
4137: 00       brk
4138: 00       brk
4139: 00       brk
413A: 00       brk
413B: 00       brk
413C: 00       brk
413D: 00       brk
413E: 00       brk
413F: 00       brk
4140: 00       brk
4141: 00       brk
4142: 00       brk
4143: 00       brk
4144: 00       brk
4145: 00       brk
4146: 00       brk
4147: 00       brk
4148: 00       brk
4149: 00       brk
414A: 00       brk
414B: 00       brk
414C: 00       brk
414D: 00       brk
414E: 00       brk
414F: 00       brk
4150: 00       brk
4151: 00       brk
4152: 00       brk
4153: 00       brk
4154: 00       brk
4155: 00       brk
4156: 00       brk
4157: 00       brk
4158: 00       brk
4159: 00       brk
415A: 00       brk
415B: 00       brk
415C: 00       brk
415D: 00       brk
415E: 00       brk
415F: 00       brk
4160: 00       brk
4161: 00       brk
4162: 00       brk
4163: 00       brk
4164: 00       brk
4165: 00       brk
4166: 00       brk
4167: 00       brk
4168: 00       brk
4169: 00       brk
416A: 00       brk
416B: 00       brk
416C: 00       brk
416D: 00       brk
416E: 00       brk
416F: 00       brk
4170: 00       brk
4171: 00       brk
4172: 00       brk
4173: 00       brk
4174: 00       brk
4175: 00       brk
4176: 00       brk
4177: 00       brk
4178: 00       brk
4179: 00       brk
417A: 00       brk
417B: 00       brk
417C: 00       brk
417D: 00       brk
417E: 00       brk
417F: 00       brk
4180: 00       brk
4181: 00       brk
4182: 00       brk
4183: 00       brk
4184: 00       brk
4185: 00       brk
4186: 00       brk
4187: 00       brk
4188: 00       brk
4189: 00       brk
418A: 00       brk
418B: 00       brk
418C: 00       brk
418D: 00       brk
418E: 00       brk
418F: 00       brk
4190: 00       brk
4191: 00       brk
4192: 00       brk
4193: 00       brk
4194: 00       brk
4195: 00       brk
4196: 00       brk
4197: 00       brk
4198: 00       brk
4199: 00       brk
419A: 00       brk
419B: 00       brk
419C: 00       brk
419D: 00       brk
419E: 00       brk
419F: 00       brk
41A0: 00       brk
41A1: 00       brk
41A2: 00       brk
41A3: 00       brk
41A4: 00       brk
41A5: 00       brk
41A6: 00       brk
41A7: 00       brk
41A8: 00       brk
41A9: 00       brk
41AA: 00       brk
41AB: 00       brk
41AC: 00       brk
41AD: 00       brk
41AE: 00       brk
41AF: 00       brk
41B0: 00       brk
41B1: 00       brk
41B2: 00       brk
41B3: 00       brk
41B4: 00       brk
41B5: 00       brk
41B6: 00       brk
41B7: 00       brk
41B8: 00       brk
41B9: 00       brk
41BA: 00       brk
41BB: 00       brk
41BC: 00       brk
41BD: 00       brk
41BE: 00       brk
41BF: 00       brk
41C0: 00       brk
41C1: 00       brk
41C2: 00       brk
41C3: 00       brk
41C4: 00       brk
41C5: 00       brk
41C6: 00       brk
41C7: 00       brk
41C8: 00       brk
41C9: 00       brk
41CA: 00       brk
41CB: 00       brk
41CC: 00       brk
41CD: 00       brk
41CE: 00       brk
41CF: 00       brk
41D0: 00       brk
41D1: 00       brk
41D2: 00       brk
41D3: 00       brk
41D4: 00       brk
41D5: 00       brk
41D6: 00       brk
41D7: 00       brk
41D8: 00       brk
41D9: 00       brk
41DA: 00       brk
41DB: 00       brk
41DC: 00       brk
41DD: 00       brk
41DE: 00       brk
41DF: 00       brk
41E0: 00       brk
41E1: 00       brk
41E2: 00       brk
41E3: 00       brk
41E4: 00       brk
41E5: 00       brk
41E6: 00       brk
41E7: 00       brk
41E8: 00       brk
41E9: 00       brk
41EA: 00       brk
41EB: 00       brk
41EC: 00       brk
41ED: 00       brk
41EE: 00       brk
41EF: 00       brk
41F0: 00       brk
41F1: 00       brk
41F2: 00       brk
41F3: 00       brk
41F4: 00       brk
41F5: 00       brk
41F6: 00       brk
41F7: 00       brk
41F8: 00       brk
41F9: 00       brk
41FA: 00       brk
41FB: 00       brk
41FC: 00       brk
41FD: 00       brk
41FE: 00       brk
41FF: 00       brk
4200: 00       brk
4201: 00       brk
4202: 00       brk
4203: 00       brk
4204: 00       brk
4205: 00       brk
4206: 00       brk
4207: 00       brk
4208: 00       brk
4209: 00       brk
420A: 00       brk
420B: 00       brk
420C: 00       brk
420D: 00       brk
420E: 00       brk
420F: 00       brk
4210: 00       brk
4211: 00       brk
4212: 00       brk
4213: 00       brk
4214: 00       brk
4215: 00       brk
4216: 00       brk
4217: 00       brk
4218: 00       brk
4219: 00       brk
421A: 00       brk
421B: 00       brk
421C: 00       brk
421D: 00       brk
421E: 00       brk
421F: 00       brk
4220: 00       brk
4221: 00       brk
4222: 00       brk
4223: 00       brk
4224: 00       brk
4225: 00       brk
4226: 00       brk
4227: 00       brk
4228: 00       brk
4229: 00       brk
422A: 00       brk
422B: 00       brk
422C: 00       brk
422D: 00       brk
422E: 00       brk
422F: 00       brk
4230: 00       brk
4231: 00       brk
4232: 00       brk
4233: 00       brk
4234: 00       brk
4235: 00       brk
4236: 00       brk
4237: 00       brk
4238: 00       brk
4239: 00       brk
423A: 00       brk
423B: 00       brk
423C: 00       brk
423D: 00       brk
423E: 00       brk
423F: 00       brk
4240: 00       brk
4241: 00       brk
4242: 00       brk
4243: 00       brk
4244: 00       brk
4245: 00       brk
4246: 00       brk
4247: 00       brk
4248: 00       brk
4249: 00       brk
424A: 00       brk
424B: 00       brk
424C: 00       brk
424D: 00       brk
424E: 00       brk
424F: 00       brk
4250: 00       brk
4251: 00       brk
4252: 00       brk
4253: 00       brk
4254: 00       brk
4255: 00       brk
4256: 00       brk
4257: 00       brk
4258: 00       brk
4259: 00       brk
425A: 00       brk
425B: 00       brk
425C: 00       brk
425D: 00       brk
425E: 00       brk
425F: 00       brk
4260: 00       brk
4261: 00       brk
4262: 00       brk
4263: 00       brk
4264: 00       brk
4265: 00       brk
4266: 00       brk
4267: 00       brk
4268: 00       brk
4269: 00       brk
426A: 00       brk
426B: 00       brk
426C: 00       brk
426D: 00       brk
426E: 00       brk
426F: 00       brk
4270: 00       brk
4271: 00       brk
4272: 00       brk
4273: 00       brk
4274: 00       brk
4275: 00       brk
4276: 00       brk
4277: 00       brk
4278: 00       brk
4279: 00       brk
427A: 00       brk
427B: 00       brk
427C: 00       brk
427D: 00       brk
427E: 00       brk
427F: 00       brk
4280: 00       brk
4281: 00       brk
4282: 00       brk
4283: 00       brk
4284: 00       brk
4285: 00       brk
4286: 00       brk
4287: 00       brk
4288: 00       brk
4289: 00       brk
428A: 00       brk
428B: 00       brk
428C: 00       brk
428D: 00       brk
428E: 00       brk
428F: 00       brk
4290: 00       brk
4291: 00       brk
4292: 00       brk
4293: 00       brk
4294: 00       brk
4295: 00       brk
4296: 00       brk
4297: 00       brk
4298: 00       brk
4299: 00       brk
429A: 00       brk
429B: 00       brk
429C: 00       brk
429D: 00       brk
429E: 00       brk
429F: 00       brk
42A0: 00       brk
42A1: 00       brk
42A2: 00       brk
42A3: 00       brk
42A4: 00       brk
42A5: 00       brk
42A6: 00       brk
42A7: 00       brk
42A8: 00       brk
42A9: 00       brk
42AA: 00       brk
42AB: 00       brk
42AC: 00       brk
42AD: 00       brk
42AE: 00       brk
42AF: 00       brk
42B0: 00       brk
42B1: 00       brk
42B2: 00       brk
42B3: 00       brk
42B4: 00       brk
42B5: 00       brk
42B6: 00       brk
42B7: 00       brk
42B8: 00       brk
42B9: 00       brk
42BA: 00       brk
42BB: 00       brk
42BC: 00       brk
42BD: 00       brk
42BE: 00       brk
42BF: 00       brk
42C0: 00       brk
42C1: 00       brk
42C2: 00       brk
42C3: 00       brk
42C4: 00       brk
42C5: 00       brk
42C6: 00       brk
42C7: 00       brk
42C8: 00       brk
42C9: 00       brk
42CA: 00       brk
42CB: 00       brk
42CC: 00       brk
42CD: 00       brk
42CE: 00       brk
42CF: 00       brk
42D0: 00       brk
42D1: 00       brk
42D2: 00       brk
42D3: 00       brk
42D4: 00       brk
42D5: 00       brk
42D6: 00       brk
42D7: 00       brk
42D8: 00       brk
42D9: 00       brk
42DA: 00       brk
42DB: 00       brk
42DC: 00       brk
42DD: 00       brk
42DE: 00       brk
42DF: 00       brk
42E0: 00       brk
42E1: 00       brk
42E2: 00       brk
42E3: 00       brk
42E4: 00       brk
42E5: 00       brk
42E6: 00       brk
42E7: 00       brk
42E8: 00       brk
42E9: 00       brk
42EA: 00       brk
42EB: 00       brk
42EC: 00       brk
42ED: 00       brk
42EE: 00       brk
42EF: 00       brk
42F0: 00       brk
42F1: 00       brk
42F2: 00       brk
42F3: 00       brk
42F4: 00       brk
42F5: 00       brk
42F6: 00       brk
42F7: 00       brk
42F8: 00       brk
42F9: 00       brk
42FA: 00       brk
42FB: 00       brk
42FC: 00       brk
42FD: 00       brk
42FE: 00       brk
42FF: 00       brk
4300: 00       brk
4301: 00       brk
4302: 00       brk
4303: 00       brk
4304: 00       brk
4305: 00       brk
4306: 00       brk
4307: 00       brk
4308: 00       brk
4309: 00       brk
430A: 00       brk
430B: 00       brk
430C: 00       brk
430D: 00       brk
430E: 00       brk
430F: 00       brk
4310: 00       brk
4311: 00       brk
4312: 00       brk
4313: 00       brk
4314: 00       brk
4315: 00       brk
4316: 00       brk
4317: 00       brk
4318: 00       brk
4319: 00       brk
431A: 00       brk
431B: 00       brk
431C: 00       brk
431D: 00       brk
431E: 00       brk
431F: 00       brk
4320: 00       brk
4321: 00       brk
4322: 00       brk
4323: 00       brk
4324: 00       brk
4325: 00       brk
4326: 00       brk
4327: 00       brk
4328: 00       brk
4329: 00       brk
432A: 00       brk
432B: 00       brk
432C: 00       brk
432D: 00       brk
432E: 00       brk
432F: 00       brk
4330: 00       brk
4331: 00       brk
4332: 00       brk
4333: 00       brk
4334: 00       brk
4335: 00       brk
4336: 00       brk
4337: 00       brk
4338: 00       brk
4339: 00       brk
433A: 00       brk
433B: 00       brk
433C: 00       brk
433D: 00       brk
433E: 00       brk
433F: 00       brk
4340: 00       brk
4341: 00       brk
4342: 00       brk
4343: 00       brk
4344: 00       brk
4345: 00       brk
4346: 00       brk
4347: 00       brk
4348: 00       brk
4349: 00       brk
434A: 00       brk
434B: 00       brk
434C: 00       brk
434D: 00       brk
434E: 00       brk
434F: 00       brk
4350: 00       brk
4351: 00       brk
4352: 00       brk
4353: 00       brk
4354: 00       brk
4355: 00       brk
4356: 00       brk
4357: 00       brk
4358: 00       brk
4359: 00       brk
435A: 00       brk
435B: 00       brk
435C: 00       brk
435D: 00       brk
435E: 00       brk
435F: 00       brk
4360: 00       brk
4361: 00       brk
4362: 00       brk
4363: 00       brk
4364: 00       brk
4365: 00       brk
4366: 00       brk
4367: 00       brk
4368: 00       brk
4369: 00       brk
436A: 00       brk
436B: 00       brk
436C: 00       brk
436D: 00       brk
436E: 00       brk
436F: 00       brk
4370: 00       brk
4371: 00       brk
4372: 00       brk
4373: 00       brk
4374: 00       brk
4375: 00       brk
4376: 00       brk
4377: 00       brk
4378: 00       brk
4379: 00       brk
437A: 00       brk
437B: 00       brk
437C: 00       brk
437D: 00       brk
437E: 00       brk
437F: 00       brk
4380: 00       brk
4381: 00       brk
4382: 00       brk
4383: 00       brk
4384: 00       brk
4385: 00       brk
4386: 00       brk
4387: 00       brk
4388: 00       brk
4389: 00       brk
438A: 00       brk
438B: 00       brk
438C: 00       brk
438D: 00       brk
438E: 00       brk
438F: 00       brk
4390: 00       brk
4391: 00       brk
4392: 00       brk
4393: 00       brk
4394: 00       brk
4395: 00       brk
4396: 00       brk
4397: 00       brk
4398: 00       brk
4399: 00       brk
439A: 00       brk
439B: 00       brk
439C: 00       brk
439D: 00       brk
439E: 00       brk
439F: 00       brk
43A0: 00       brk
43A1: 00       brk
43A2: 00       brk
43A3: 00       brk
43A4: 00       brk
43A5: 00       brk
43A6: 00       brk
43A7: 00       brk
43A8: 00       brk
43A9: 00       brk
43AA: 00       brk
43AB: 00       brk
43AC: 00       brk
43AD: 00       brk
43AE: 00       brk
43AF: 00       brk
43B0: 00       brk
43B1: 00       brk
43B2: 00       brk
43B3: 00       brk
43B4: 00       brk
43B5: 00       brk
43B6: 00       brk
43B7: 00       brk
43B8: 00       brk
43B9: 00       brk
43BA: 00       brk
43BB: 00       brk
43BC: 00       brk
43BD: 00       brk
43BE: 00       brk
43BF: 00       brk
43C0: 00       brk
43C1: 00       brk
43C2: 00       brk
43C3: 00       brk
43C4: 00       brk
43C5: 00       brk
43C6: 00       brk
43C7: 00       brk
43C8: 00       brk
43C9: 00       brk
43CA: 00       brk
43CB: 00       brk
43CC: 00       brk
43CD: 00       brk
43CE: 00       brk
43CF: 00       brk
43D0: 00       brk
43D1: 00       brk
43D2: 00       brk
43D3: 00       brk
43D4: 00       brk
43D5: 00       brk
43D6: 00       brk
43D7: 00       brk
43D8: 00       brk
43D9: 00       brk
43DA: 00       brk
43DB: 00       brk
43DC: 00       brk
43DD: 00       brk
43DE: 00       brk
43DF: 00       brk
43E0: 00       brk
43E1: 00       brk
43E2: 00       brk
43E3: 00       brk
43E4: 00       brk
43E5: 00       brk
43E6: 00       brk
43E7: 00       brk
43E8: 00       brk
43E9: 00       brk
43EA: 00       brk
43EB: 00       brk
43EC: 00       brk
43ED: 00       brk
43EE: 00       brk
43EF: 00       brk
43F0: 00       brk
43F1: 00       brk
43F2: 00       brk
43F3: 00       brk
43F4: 00       brk
43F5: 00       brk
43F6: 00       brk
43F7: 00       brk
43F8: 00       brk
43F9: 00       brk
43FA: 00       brk
43FB: 00       brk
43FC: 00       brk
43FD: 00       brk
43FE: 00       brk
43FF: 00       brk
4400: 00       brk
4401: 00       brk
4402: 00       brk
4403: 00       brk
4404: 00       brk
4405: 00       brk
4406: 00       brk
4407: 00       brk
4408: 00       brk
4409: 00       brk
440A: 00       brk
440B: 00       brk
440C: 00       brk
440D: 00       brk
440E: 00       brk
440F: 00       brk
4410: 00       brk
4411: 00       brk
4412: 00       brk
4413: 00       brk
4414: 00       brk
4415: 00       brk
4416: 00       brk
4417: 00       brk
4418: 00       brk
4419: 00       brk
441A: 00       brk
441B: 00       brk
441C: 00       brk
441D: 00       brk
441E: 00       brk
441F: 00       brk
4420: 00       brk
4421: 00       brk
4422: 00       brk
4423: 00       brk
4424: 00       brk
4425: 00       brk
4426: 00       brk
4427: 00       brk
4428: 00       brk
4429: 00       brk
442A: 00       brk
442B: 00       brk
442C: 00       brk
442D: 00       brk
442E: 00       brk
442F: 00       brk
4430: 00       brk
4431: 00       brk
4432: 00       brk
4433: 00       brk
4434: 00       brk
4435: 00       brk
4436: 00       brk
4437: 00       brk
4438: 00       brk
4439: 00       brk
443A: 00       brk
443B: 00       brk
443C: 00       brk
443D: 00       brk
443E: 00       brk
443F: 00       brk
4440: 00       brk
4441: 00       brk
4442: 00       brk
4443: 00       brk
4444: 00       brk
4445: 00       brk
4446: 00       brk
4447: 00       brk
4448: 00       brk
4449: 00       brk
444A: 00       brk
444B: 00       brk
444C: 00       brk
444D: 00       brk
444E: 00       brk
444F: 00       brk
4450: 00       brk
4451: 00       brk
4452: 00       brk
4453: 00       brk
4454: 00       brk
4455: 00       brk
4456: 00       brk
4457: 00       brk
4458: 00       brk
4459: 00       brk
445A: 00       brk
445B: 00       brk
445C: 00       brk
445D: 00       brk
445E: 00       brk
445F: 00       brk
4460: 00       brk
4461: 00       brk
4462: 00       brk
4463: 00       brk
4464: 00       brk
4465: 00       brk
4466: 00       brk
4467: 00       brk
4468: 00       brk
4469: 00       brk
446A: 00       brk
446B: 00       brk
446C: 00       brk
446D: 00       brk
446E: 00       brk
446F: 00       brk
4470: 00       brk
4471: 00       brk
4472: 00       brk
4473: 00       brk
4474: 00       brk
4475: 00       brk
4476: 00       brk
4477: 00       brk
4478: 00       brk
4479: 00       brk
447A: 00       brk
447B: 00       brk
447C: 00       brk
447D: 00       brk
447E: 00       brk
447F: 00       brk
4480: 00       brk
4481: 00       brk
4482: 00       brk
4483: 00       brk
4484: 00       brk
4485: 00       brk
4486: 00       brk
4487: 00       brk
4488: 00       brk
4489: 00       brk
448A: 00       brk
448B: 00       brk
448C: 00       brk
448D: 00       brk
448E: 00       brk
448F: 00       brk
4490: 00       brk
4491: 00       brk
4492: 00       brk
4493: 00       brk
4494: 00       brk
4495: 00       brk
4496: 00       brk
4497: 00       brk
4498: 00       brk
4499: 00       brk
449A: 00       brk
449B: 00       brk
449C: 00       brk
449D: 00       brk
449E: 00       brk
449F: 00       brk
44A0: 00       brk
44A1: 00       brk
44A2: 00       brk
44A3: 00       brk
44A4: 00       brk
44A5: 00       brk
44A6: 00       brk
44A7: 00       brk
44A8: 00       brk
44A9: 00       brk
44AA: 00       brk
44AB: 00       brk
44AC: 00       brk
44AD: 00       brk
44AE: 00       brk
44AF: 00       brk
44B0: 00       brk
44B1: 00       brk
44B2: 00       brk
44B3: 00       brk
44B4: 00       brk
44B5: 00       brk
44B6: 00       brk
44B7: 00       brk
44B8: 00       brk
44B9: 00       brk
44BA: 00       brk
44BB: 00       brk
44BC: 00       brk
44BD: 00       brk
44BE: 00       brk
44BF: 00       brk
44C0: 00       brk
44C1: 00       brk
44C2: 00       brk
44C3: 00       brk
44C4: 00       brk
44C5: 00       brk
44C6: 00       brk
44C7: 00       brk
44C8: 00       brk
44C9: 00       brk
44CA: 00       brk
44CB: 00       brk
44CC: 00       brk
44CD: 00       brk
44CE: 00       brk
44CF: 00       brk
44D0: 00       brk
44D1: 00       brk
44D2: 00       brk
44D3: 00       brk
44D4: 00       brk
44D5: 00       brk
44D6: 00       brk
44D7: 00       brk
44D8: 00       brk
44D9: 00       brk
44DA: 00       brk
44DB: 00       brk
44DC: 00       brk
44DD: 00       brk
44DE: 00       brk
44DF: 00       brk
44E0: 00       brk
44E1: 00       brk
44E2: 00       brk
44E3: 00       brk
44E4: 00       brk
44E5: 00       brk
44E6: 00       brk
44E7: 00       brk
44E8: 00       brk
44E9: 00       brk
44EA: 00       brk
44EB: 00       brk
44EC: 00       brk
44ED: 00       brk
44EE: 00       brk
44EF: 00       brk
44F0: 00       brk
44F1: 00       brk
44F2: 00       brk
44F3: 00       brk
44F4: 00       brk
44F5: 00       brk
44F6: 00       brk
44F7: 00       brk
44F8: 00       brk
44F9: 00       brk
44FA: 00       brk
44FB: 00       brk
44FC: 00       brk
44FD: 00       brk
44FE: 00       brk
44FF: 00       brk
4500: 00       brk
4501: 00       brk
4502: 00       brk
4503: 00       brk
4504: 00       brk
4505: 00       brk
4506: 00       brk
4507: 00       brk
4508: 00       brk
4509: 00       brk
450A: 00       brk
450B: 00       brk
450C: 00       brk
450D: 00       brk
450E: 00       brk
450F: 00       brk
4510: 00       brk
4511: 00       brk
4512: 00       brk
4513: 00       brk
4514: 00       brk
4515: 00       brk
4516: 00       brk
4517: 00       brk
4518: 00       brk
4519: 00       brk
451A: 00       brk
451B: 00       brk
451C: 00       brk
451D: 00       brk
451E: 00       brk
451F: 00       brk
4520: 00       brk
4521: 00       brk
4522: 00       brk
4523: 00       brk
4524: 00       brk
4525: 00       brk
4526: 00       brk
4527: 00       brk
4528: 00       brk
4529: 00       brk
452A: 00       brk
452B: 00       brk
452C: 00       brk
452D: 00       brk
452E: 00       brk
452F: 00       brk
4530: 00       brk
4531: 00       brk
4532: 00       brk
4533: 00       brk
4534: 00       brk
4535: 00       brk
4536: 00       brk
4537: 00       brk
4538: 00       brk
4539: 00       brk
453A: 00       brk
453B: 00       brk
453C: 00       brk
453D: 00       brk
453E: 00       brk
453F: 00       brk
4540: 00       brk
4541: 00       brk
4542: 00       brk
4543: 00       brk
4544: 00       brk
4545: 00       brk
4546: 00       brk
4547: 00       brk
4548: 00       brk
4549: 00       brk
454A: 00       brk
454B: 00       brk
454C: 00       brk
454D: 00       brk
454E: 00       brk
454F: 00       brk
4550: 00       brk
4551: 00       brk
4552: 00       brk
4553: 00       brk
4554: 00       brk
4555: 00       brk
4556: 00       brk
4557: 00       brk
4558: 00       brk
4559: 00       brk
455A: 00       brk
455B: 00       brk
455C: 00       brk
455D: 00       brk
455E: 00       brk
455F: 00       brk
4560: 00       brk
4561: 00       brk
4562: 00       brk
4563: 00       brk
4564: 00       brk
4565: 00       brk
4566: 00       brk
4567: 00       brk
4568: 00       brk
4569: 00       brk
456A: 00       brk
456B: 00       brk
456C: 00       brk
456D: 00       brk
456E: 00       brk
456F: 00       brk
4570: 00       brk
4571: 00       brk
4572: 00       brk
4573: 00       brk
4574: 00       brk
4575: 00       brk
4576: 00       brk
4577: 00       brk
4578: 00       brk
4579: 00       brk
457A: 00       brk
457B: 00       brk
457C: 00       brk
457D: 00       brk
457E: 00       brk
457F: 00       brk
4580: 00       brk
4581: 00       brk
4582: 00       brk
4583: 00       brk
4584: 00       brk
4585: 00       brk
4586: 00       brk
4587: 00       brk
4588: 00       brk
4589: 00       brk
458A: 00       brk
458B: 00       brk
458C: 00       brk
458D: 00       brk
458E: 00       brk
458F: 00       brk
4590: 00       brk
4591: 00       brk
4592: 00       brk
4593: 00       brk
4594: 00       brk
4595: 00       brk
4596: 00       brk
4597: 00       brk
4598: 00       brk
4599: 00       brk
459A: 00       brk
459B: 00       brk
459C: 00       brk
459D: 00       brk
459E: 00       brk
459F: 00       brk
45A0: 00       brk
45A1: 00       brk
45A2: 00       brk
45A3: 00       brk
45A4: 00       brk
45A5: 00       brk
45A6: 00       brk
45A7: 00       brk
45A8: 00       brk
45A9: 00       brk
45AA: 00       brk
45AB: 00       brk
45AC: 00       brk
45AD: 00       brk
45AE: 00       brk
45AF: 00       brk
45B0: 00       brk
45B1: 00       brk
45B2: 00       brk
45B3: 00       brk
45B4: 00       brk
45B5: 00       brk
45B6: 00       brk
45B7: 00       brk
45B8: 00       brk
45B9: 00       brk
45BA: 00       brk
45BB: 00       brk
45BC: 00       brk
45BD: 00       brk
45BE: 00       brk
45BF: 00       brk
45C0: 00       brk
45C1: 00       brk
45C2: 00       brk
45C3: 00       brk
45C4: 00       brk
45C5: 00       brk
45C6: 00       brk
45C7: 00       brk
45C8: 00       brk
45C9: 00       brk
45CA: 00       brk
45CB: 00       brk
45CC: 00       brk
45CD: 00       brk
45CE: 00       brk
45CF: 00       brk
45D0: 00       brk
45D1: 00       brk
45D2: 00       brk
45D3: 00       brk
45D4: 00       brk
45D5: 00       brk
45D6: 00       brk
45D7: 00       brk
45D8: 00       brk
45D9: 00       brk
45DA: 00       brk
45DB: 00       brk
45DC: 00       brk
45DD: 00       brk
45DE: 00       brk
45DF: 00       brk
45E0: 00       brk
45E1: 00       brk
45E2: 00       brk
45E3: 00       brk
45E4: 00       brk
45E5: 00       brk
45E6: 00       brk
45E7: 00       brk
45E8: 00       brk
45E9: 00       brk
45EA: 00       brk
45EB: 00       brk
45EC: 00       brk
45ED: 00       brk
45EE: 00       brk
45EF: 00       brk
45F0: 00       brk
45F1: 00       brk
45F2: 00       brk
45F3: 00       brk
45F4: 00       brk
45F5: 00       brk
45F6: 00       brk
45F7: 00       brk
45F8: 00       brk
45F9: 00       brk
45FA: 00       brk
45FB: 00       brk
45FC: 00       brk
45FD: 00       brk
45FE: 00       brk
45FF: 00       brk
4600: 00       brk
4601: 00       brk
4602: 00       brk
4603: 00       brk
4604: 00       brk
4605: 00       brk
4606: 00       brk
4607: 00       brk
4608: 00       brk
4609: 00       brk
460A: 00       brk
460B: 00       brk
460C: 00       brk
460D: 00       brk
460E: 00       brk
460F: 00       brk
4610: 00       brk
4611: 00       brk
4612: 00       brk
4613: 00       brk
4614: 00       brk
4615: 00       brk
4616: 00       brk
4617: 00       brk
4618: 00       brk
4619: 00       brk
461A: 00       brk
461B: 00       brk
461C: 00       brk
461D: 00       brk
461E: 00       brk
461F: 00       brk
4620: 00       brk
4621: 00       brk
4622: 00       brk
4623: 00       brk
4624: 00       brk
4625: 00       brk
4626: 00       brk
4627: 00       brk
4628: 00       brk
4629: 00       brk
462A: 00       brk
462B: 00       brk
462C: 00       brk
462D: 00       brk
462E: 00       brk
462F: 00       brk
4630: 00       brk
4631: 00       brk
4632: 00       brk
4633: 00       brk
4634: 00       brk
4635: 00       brk
4636: 00       brk
4637: 00       brk
4638: 00       brk
4639: 00       brk
463A: 00       brk
463B: 00       brk
463C: 00       brk
463D: 00       brk
463E: 00       brk
463F: 00       brk
4640: 00       brk
4641: 00       brk
4642: 00       brk
4643: 00       brk
4644: 00       brk
4645: 00       brk
4646: 00       brk
4647: 00       brk
4648: 00       brk
4649: 00       brk
464A: 00       brk
464B: 00       brk
464C: 00       brk
464D: 00       brk
464E: 00       brk
464F: 00       brk
4650: 00       brk
4651: 00       brk
4652: 00       brk
4653: 00       brk
4654: 00       brk
4655: 00       brk
4656: 00       brk
4657: 00       brk
4658: 00       brk
4659: 00       brk
465A: 00       brk
465B: 00       brk
465C: 00       brk
465D: 00       brk
465E: 00       brk
465F: 00       brk
4660: 00       brk
4661: 00       brk
4662: 00       brk
4663: 00       brk
4664: 00       brk
4665: 00       brk
4666: 00       brk
4667: 00       brk
4668: 00       brk
4669: 00       brk
466A: 00       brk
466B: 00       brk
466C: 00       brk
466D: 00       brk
466E: 00       brk
466F: 00       brk
4670: 00       brk
4671: 00       brk
4672: 00       brk
4673: 00       brk
4674: 00       brk
4675: 00       brk
4676: 00       brk
4677: 00       brk
4678: 00       brk
4679: 00       brk
467A: 00       brk
467B: 00       brk
467C: 00       brk
467D: 00       brk
467E: 00       brk
467F: 00       brk
4680: 00       brk
4681: 00       brk
4682: 00       brk
4683: 00       brk
4684: 00       brk
4685: 00       brk
4686: 00       brk
4687: 00       brk
4688: 00       brk
4689: 00       brk
468A: 00       brk
468B: 00       brk
468C: 00       brk
468D: 00       brk
468E: 00       brk
468F: 00       brk
4690: 00       brk
4691: 00       brk
4692: 00       brk
4693: 00       brk
4694: 00       brk
4695: 00       brk
4696: 00       brk
4697: 00       brk
4698: 00       brk
4699: 00       brk
469A: 00       brk
469B: 00       brk
469C: 00       brk
469D: 00       brk
469E: 00       brk
469F: 00       brk
46A0: 00       brk
46A1: 00       brk
46A2: 00       brk
46A3: 00       brk
46A4: 00       brk
46A5: 00       brk
46A6: 00       brk
46A7: 00       brk
46A8: 00       brk
46A9: 00       brk
46AA: 00       brk
46AB: 00       brk
46AC: 00       brk
46AD: 00       brk
46AE: 00       brk
46AF: 00       brk
46B0: 00       brk
46B1: 00       brk
46B2: 00       brk
46B3: 00       brk
46B4: 00       brk
46B5: 00       brk
46B6: 00       brk
46B7: 00       brk
46B8: 00       brk
46B9: 00       brk
46BA: 00       brk
46BB: 00       brk
46BC: 00       brk
46BD: 00       brk
46BE: 00       brk
46BF: 00       brk
46C0: 00       brk
46C1: 00       brk
46C2: 00       brk
46C3: 00       brk
46C4: 00       brk
46C5: 00       brk
46C6: 00       brk
46C7: 00       brk
46C8: 00       brk
46C9: 00       brk
46CA: 00       brk
46CB: 00       brk
46CC: 00       brk
46CD: 00       brk
46CE: 00       brk
46CF: 00       brk
46D0: 00       brk
46D1: 00       brk
46D2: 00       brk
46D3: 00       brk
46D4: 00       brk
46D5: 00       brk
46D6: 00       brk
46D7: 00       brk
46D8: 00       brk
46D9: 00       brk
46DA: 00       brk
46DB: 00       brk
46DC: 00       brk
46DD: 00       brk
46DE: 00       brk
46DF: 00       brk
46E0: 00       brk
46E1: 00       brk
46E2: 00       brk
46E3: 00       brk
46E4: 00       brk
46E5: 00       brk
46E6: 00       brk
46E7: 00       brk
46E8: 00       brk
46E9: 00       brk
46EA: 00       brk
46EB: 00       brk
46EC: 00       brk
46ED: 00       brk
46EE: 00       brk
46EF: 00       brk
46F0: 00       brk
46F1: 00       brk
46F2: 00       brk
46F3: 00       brk
46F4: 00       brk
46F5: 00       brk
46F6: 00       brk
46F7: 00       brk
46F8: 00       brk
46F9: 00       brk
46FA: 00       brk
46FB: 00       brk
46FC: 00       brk
46FD: 00       brk
46FE: 00       brk
46FF: 00       brk
4700: 00       brk
4701: 00       brk
4702: 00       brk
4703: 00       brk
4704: 00       brk
4705: 00       brk
4706: 00       brk
4707: 00       brk
4708: 00       brk
4709: 00       brk
470A: 00       brk
470B: 00       brk
470C: 00       brk
470D: 00       brk
470E: 00       brk
470F: 00       brk
4710: 00       brk
4711: 00       brk
4712: 00       brk
4713: 00       brk
4714: 00       brk
4715: 00       brk
4716: 00       brk
4717: 00       brk
4718: 00       brk
4719: 00       brk
471A: 00       brk
471B: 00       brk
471C: 00       brk
471D: 00       brk
471E: 00       brk
471F: 00       brk
4720: 00       brk
4721: 00       brk
4722: 00       brk
4723: 00       brk
4724: 00       brk
4725: 00       brk
4726: 00       brk
4727: 00       brk
4728: 00       brk
4729: 00       brk
472A: 00       brk
472B: 00       brk
472C: 00       brk
472D: 00       brk
472E: 00       brk
472F: 00       brk
4730: 00       brk
4731: 00       brk
4732: 00       brk
4733: 00       brk
4734: 00       brk
4735: 00       brk
4736: 00       brk
4737: 00       brk
4738: 00       brk
4739: 00       brk
473A: 00       brk
473B: 00       brk
473C: 00       brk
473D: 00       brk
473E: 00       brk
473F: 00       brk
4740: 00       brk
4741: 00       brk
4742: 00       brk
4743: 00       brk
4744: 00       brk
4745: 00       brk
4746: 00       brk
4747: 00       brk
4748: 00       brk
4749: 00       brk
474A: 00       brk
474B: 00       brk
474C: 00       brk
474D: 00       brk
474E: 00       brk
474F: 00       brk
4750: 00       brk
4751: 00       brk
4752: 00       brk
4753: 00       brk
4754: 00       brk
4755: 00       brk
4756: 00       brk
4757: 00       brk
4758: 00       brk
4759: 00       brk
475A: 00       brk
475B: 00       brk
475C: 00       brk
475D: 00       brk
475E: 00       brk
475F: 00       brk
4760: 00       brk
4761: 00       brk
4762: 00       brk
4763: 00       brk
4764: 00       brk
4765: 00       brk
4766: 00       brk
4767: 00       brk
4768: 00       brk
4769: 00       brk
476A: 00       brk
476B: 00       brk
476C: 00       brk
476D: 00       brk
476E: 00       brk
476F: 00       brk
4770: 00       brk
4771: 00       brk
4772: 00       brk
4773: 00       brk
4774: 00       brk
4775: 00       brk
4776: 00       brk
4777: 00       brk
4778: 00       brk
4779: 00       brk
477A: 00       brk
477B: 00       brk
477C: 00       brk
477D: 00       brk
477E: 00       brk
477F: 00       brk
4780: 00       brk
4781: 00       brk
4782: 00       brk
4783: 00       brk
4784: 00       brk
4785: 00       brk
4786: 00       brk
4787: 00       brk
4788: 00       brk
4789: 00       brk
478A: 00       brk
478B: 00       brk
478C: 00       brk
478D: 00       brk
478E: 00       brk
478F: 00       brk
4790: 00       brk
4791: 00       brk
4792: 00       brk
4793: 00       brk
4794: 00       brk
4795: 00       brk
4796: 00       brk
4797: 00       brk
4798: 00       brk
4799: 00       brk
479A: 00       brk
479B: 00       brk
479C: 00       brk
479D: 00       brk
479E: 00       brk
479F: 00       brk
47A0: 00       brk
47A1: 00       brk
47A2: 00       brk
47A3: 00       brk
47A4: 00       brk
47A5: 00       brk
47A6: 00       brk
47A7: 00       brk
47A8: 00       brk
47A9: 00       brk
47AA: 00       brk
47AB: 00       brk
47AC: 00       brk
47AD: 00       brk
47AE: 00       brk
47AF: 00       brk
47B0: 00       brk
47B1: 00       brk
47B2: 00       brk
47B3: 00       brk
47B4: 00       brk
47B5: 00       brk
47B6: 00       brk
47B7: 00       brk
47B8: 00       brk
47B9: 00       brk
47BA: 00       brk
47BB: 00       brk
47BC: 00       brk
47BD: 00       brk
47BE: 00       brk
47BF: 00       brk
47C0: 00       brk
47C1: 00       brk
47C2: 00       brk
47C3: 00       brk
47C4: 00       brk
47C5: 00       brk
47C6: 00       brk
47C7: 00       brk
47C8: 00       brk
47C9: 00       brk
47CA: 00       brk
47CB: 00       brk
47CC: 00       brk
47CD: 00       brk
47CE: 00       brk
47CF: 00       brk
47D0: 00       brk
47D1: 00       brk
47D2: 00       brk
47D3: 00       brk
47D4: 00       brk
47D5: 00       brk
47D6: 00       brk
47D7: 00       brk
47D8: 00       brk
47D9: 00       brk
47DA: 00       brk
47DB: 00       brk
47DC: 00       brk
47DD: 00       brk
47DE: 00       brk
47DF: 00       brk
47E0: 00       brk
47E1: 00       brk
47E2: 00       brk
47E3: 00       brk
47E4: 00       brk
47E5: 00       brk
47E6: 00       brk
47E7: 00       brk
47E8: 00       brk
47E9: 00       brk
47EA: 00       brk
47EB: 00       brk
47EC: 00       brk
47ED: 00       brk
47EE: 00       brk
47EF: 00       brk
47F0: 00       brk
47F1: 00       brk
47F2: 00       brk
47F3: 00       brk
47F4: 00       brk
47F5: 00       brk
47F6: 00       brk
47F7: 00       brk
47F8: 00       brk
47F9: 00       brk
47FA: 00       brk
47FB: 00       brk
47FC: 00       brk
47FD: 00       brk
47FE: 00       brk
47FF: 00       brk
4800: 00       brk
4801: 00       brk
4802: 00       brk
4803: 00       brk
4804: 00       brk
4805: 00       brk
4806: 00       brk
4807: 00       brk
4808: 00       brk
4809: 00       brk
480A: 00       brk
480B: 00       brk
480C: 00       brk
480D: 00       brk
480E: 00       brk
480F: 00       brk
4810: 00       brk
4811: 00       brk
4812: 00       brk
4813: 00       brk
4814: 00       brk
4815: 00       brk
4816: 00       brk
4817: 00       brk
4818: 00       brk
4819: 00       brk
481A: 00       brk
481B: 00       brk
481C: 00       brk
481D: 00       brk
481E: 00       brk
481F: 00       brk
4820: 00       brk
4821: 00       brk
4822: 00       brk
4823: 00       brk
4824: 00       brk
4825: 00       brk
4826: 00       brk
4827: 00       brk
4828: 00       brk
4829: 00       brk
482A: 00       brk
482B: 00       brk
482C: 00       brk
482D: 00       brk
482E: 00       brk
482F: 00       brk
4830: 00       brk
4831: 00       brk
4832: 00       brk
4833: 00       brk
4834: 00       brk
4835: 00       brk
4836: 00       brk
4837: 00       brk
4838: 00       brk
4839: 00       brk
483A: 00       brk
483B: 00       brk
483C: 00       brk
483D: 00       brk
483E: 00       brk
483F: 00       brk
4840: 00       brk
4841: 00       brk
4842: 00       brk
4843: 00       brk
4844: 00       brk
4845: 00       brk
4846: 00       brk
4847: 00       brk
4848: 00       brk
4849: 00       brk
484A: 00       brk
484B: 00       brk
484C: 00       brk
484D: 00       brk
484E: 00       brk
484F: 00       brk
4850: 00       brk
4851: 00       brk
4852: 00       brk
4853: 00       brk
4854: 00       brk
4855: 00       brk
4856: 00       brk
4857: 00       brk
4858: 00       brk
4859: 00       brk
485A: 00       brk
485B: 00       brk
485C: 00       brk
485D: 00       brk
485E: 00       brk
485F: 00       brk
4860: 00       brk
4861: 00       brk
4862: 00       brk
4863: 00       brk
4864: 00       brk
4865: 00       brk
4866: 00       brk
4867: 00       brk
4868: 00       brk
4869: 00       brk
486A: 00       brk
486B: 00       brk
486C: 00       brk
486D: 00       brk
486E: 00       brk
486F: 00       brk
4870: 00       brk
4871: 00       brk
4872: 00       brk
4873: 00       brk
4874: 00       brk
4875: 00       brk
4876: 00       brk
4877: 00       brk
4878: 00       brk
4879: 00       brk
487A: 00       brk
487B: 00       brk
487C: 00       brk
487D: 00       brk
487E: 00       brk
487F: 00       brk
4880: 00       brk
4881: 00       brk
4882: 00       brk
4883: 00       brk
4884: 00       brk
4885: 00       brk
4886: 00       brk
4887: 00       brk
4888: 00       brk
4889: 00       brk
488A: 00       brk
488B: 00       brk
488C: 00       brk
488D: 00       brk
488E: 00       brk
488F: 00       brk
4890: 00       brk
4891: 00       brk
4892: 00       brk
4893: 00       brk
4894: 00       brk
4895: 00       brk
4896: 00       brk
4897: 00       brk
4898: 00       brk
4899: 00       brk
489A: 00       brk
489B: 00       brk
489C: 00       brk
489D: 00       brk
489E: 00       brk
489F: 00       brk
48A0: 00       brk
48A1: 00       brk
48A2: 00       brk
48A3: 00       brk
48A4: 00       brk
48A5: 00       brk
48A6: 00       brk
48A7: 00       brk
48A8: 00       brk
48A9: 00       brk
48AA: 00       brk
48AB: 00       brk
48AC: 00       brk
48AD: 00       brk
48AE: 00       brk
48AF: 00       brk
48B0: 00       brk
48B1: 00       brk
48B2: 00       brk
48B3: 00       brk
48B4: 00       brk
48B5: 00       brk
48B6: 00       brk
48B7: 00       brk
48B8: 00       brk
48B9: 00       brk
48BA: 00       brk
48BB: 00       brk
48BC: 00       brk
48BD: 00       brk
48BE: 00       brk
48BF: 00       brk
48C0: 00       brk
48C1: 00       brk
48C2: 00       brk
48C3: 00       brk
48C4: 00       brk
48C5: 00       brk
48C6: 00       brk
48C7: 00       brk
48C8: 00       brk
48C9: 00       brk
48CA: 00       brk
48CB: 00       brk
48CC: 00       brk
48CD: 00       brk
48CE: 00       brk
48CF: 00       brk
48D0: 00       brk
48D1: 00       brk
48D2: 00       brk
48D3: 00       brk
48D4: 00       brk
48D5: 00       brk
48D6: 00       brk
48D7: 00       brk
48D8: 00       brk
48D9: 00       brk
48DA: 00       brk
48DB: 00       brk
48DC: 00       brk
48DD: 00       brk
48DE: 00       brk
48DF: 00       brk
48E0: 00       brk
48E1: 00       brk
48E2: 00       brk
48E3: 00       brk
48E4: 00       brk
48E5: 00       brk
48E6: 00       brk
48E7: 00       brk
48E8: 00       brk
48E9: 00       brk
48EA: 00       brk
48EB: 00       brk
48EC: 00       brk
48ED: 00       brk
48EE: 00       brk
48EF: 00       brk
48F0: 00       brk
48F1: 00       brk
48F2: 00       brk
48F3: 00       brk
48F4: 00       brk
48F5: 00       brk
48F6: 00       brk
48F7: 00       brk
48F8: 00       brk
48F9: 00       brk
48FA: 00       brk
48FB: 00       brk
48FC: 00       brk
48FD: 00       brk
48FE: 00       brk
48FF: 00       brk
4900: 00       brk
4901: 00       brk
4902: 00       brk
4903: 00       brk
4904: 00       brk
4905: 00       brk
4906: 00       brk
4907: 00       brk
4908: 00       brk
4909: 00       brk
490A: 00       brk
490B: 00       brk
490C: 00       brk
490D: 00       brk
490E: 00       brk
490F: 00       brk
4910: 00       brk
4911: 00       brk
4912: 00       brk
4913: 00       brk
4914: 00       brk
4915: 00       brk
4916: 00       brk
4917: 00       brk
4918: 00       brk
4919: 00       brk
491A: 00       brk
491B: 00       brk
491C: 00       brk
491D: 00       brk
491E: 00       brk
491F: 00       brk
4920: 00       brk
4921: 00       brk
4922: 00       brk
4923: 00       brk
4924: 00       brk
4925: 00       brk
4926: 00       brk
4927: 00       brk
4928: 00       brk
4929: 00       brk
492A: 00       brk
492B: 00       brk
492C: 00       brk
492D: 00       brk
492E: 00       brk
492F: 00       brk
4930: 00       brk
4931: 00       brk
4932: 00       brk
4933: 00       brk
4934: 00       brk
4935: 00       brk
4936: 00       brk
4937: 00       brk
4938: 00       brk
4939: 00       brk
493A: 00       brk
493B: 00       brk
493C: 00       brk
493D: 00       brk
493E: 00       brk
493F: 00       brk
4940: 00       brk
4941: 00       brk
4942: 00       brk
4943: 00       brk
4944: 00       brk
4945: 00       brk
4946: 00       brk
4947: 00       brk
4948: 00       brk
4949: 00       brk
494A: 00       brk
494B: 00       brk
494C: 00       brk
494D: 00       brk
494E: 00       brk
494F: 00       brk
4950: 00       brk
4951: 00       brk
4952: 00       brk
4953: 00       brk
4954: 00       brk
4955: 00       brk
4956: 00       brk
4957: 00       brk
4958: 00       brk
4959: 00       brk
495A: 00       brk
495B: 00       brk
495C: 00       brk
495D: 00       brk
495E: 00       brk
495F: 00       brk
4960: 00       brk
4961: 00       brk
4962: 00       brk
4963: 00       brk
4964: 00       brk
4965: 00       brk
4966: 00       brk
4967: 00       brk
4968: 00       brk
4969: 00       brk
496A: 00       brk
496B: 00       brk
496C: 00       brk
496D: 00       brk
496E: 00       brk
496F: 00       brk
4970: 00       brk
4971: 00       brk
4972: 00       brk
4973: 00       brk
4974: 00       brk
4975: 00       brk
4976: 00       brk
4977: 00       brk
4978: 00       brk
4979: 00       brk
497A: 00       brk
497B: 00       brk
497C: 00       brk
497D: 00       brk
497E: 00       brk
497F: 00       brk
4980: 00       brk
4981: 00       brk
4982: 00       brk
4983: 00       brk
4984: 00       brk
4985: 00       brk
4986: 00       brk
4987: 00       brk
4988: 00       brk
4989: 00       brk
498A: 00       brk
498B: 00       brk
498C: 00       brk
498D: 00       brk
498E: 00       brk
498F: 00       brk
4990: 00       brk
4991: 00       brk
4992: 00       brk
4993: 00       brk
4994: 00       brk
4995: 00       brk
4996: 00       brk
4997: 00       brk
4998: 00       brk
4999: 00       brk
499A: 00       brk
499B: 00       brk
499C: 00       brk
499D: 00       brk
499E: 00       brk
499F: 00       brk
49A0: 00       brk
49A1: 00       brk
49A2: 00       brk
49A3: 00       brk
49A4: 00       brk
49A5: 00       brk
49A6: 00       brk
49A7: 00       brk
49A8: 00       brk
49A9: 00       brk
49AA: 00       brk
49AB: 00       brk
49AC: 00       brk
49AD: 00       brk
49AE: 00       brk
49AF: 00       brk
49B0: 00       brk
49B1: 00       brk
49B2: 00       brk
49B3: 00       brk
49B4: 00       brk
49B5: 00       brk
49B6: 00       brk
49B7: 00       brk
49B8: 00       brk
49B9: 00       brk
49BA: 00       brk
49BB: 00       brk
49BC: 00       brk
49BD: 00       brk
49BE: 00       brk
49BF: 00       brk
49C0: 00       brk
49C1: 00       brk
49C2: 00       brk
49C3: 00       brk
49C4: 00       brk
49C5: 00       brk
49C6: 00       brk
49C7: 00       brk
49C8: 00       brk
49C9: 00       brk
49CA: 00       brk
49CB: 00       brk
49CC: 00       brk
49CD: 00       brk
49CE: 00       brk
49CF: 00       brk
49D0: 00       brk
49D1: 00       brk
49D2: 00       brk
49D3: 00       brk
49D4: 00       brk
49D5: 00       brk
49D6: 00       brk
49D7: 00       brk
49D8: 00       brk
49D9: 00       brk
49DA: 00       brk
49DB: 00       brk
49DC: 00       brk
49DD: 00       brk
49DE: 00       brk
49DF: 00       brk
49E0: 00       brk
49E1: 00       brk
49E2: 00       brk
49E3: 00       brk
49E4: 00       brk
49E5: 00       brk
49E6: 00       brk
49E7: 00       brk
49E8: 00       brk
49E9: 00       brk
49EA: 00       brk
49EB: 00       brk
49EC: 00       brk
49ED: 00       brk
49EE: 00       brk
49EF: 00       brk
49F0: 00       brk
49F1: 00       brk
49F2: 00       brk
49F3: 00       brk
49F4: 00       brk
49F5: 00       brk
49F6: 00       brk
49F7: 00       brk
49F8: 00       brk
49F9: 00       brk
49FA: 00       brk
49FB: 00       brk
49FC: 00       brk
49FD: 00       brk
49FE: 00       brk
49FF: 00       brk
4A00: 00       brk
4A01: 00       brk
4A02: 00       brk
4A03: 00       brk
4A04: 00       brk
4A05: 00       brk
4A06: 00       brk
4A07: 00       brk
4A08: 00       brk
4A09: 00       brk
4A0A: 00       brk
4A0B: 00       brk
4A0C: 00       brk
4A0D: 00       brk
4A0E: 00       brk
4A0F: 00       brk
4A10: 00       brk
4A11: 00       brk
4A12: 00       brk
4A13: 00       brk
4A14: 00       brk
4A15: 00       brk
4A16: 00       brk
4A17: 00       brk
4A18: 00       brk
4A19: 00       brk
4A1A: 00       brk
4A1B: 00       brk
4A1C: 00       brk
4A1D: 00       brk
4A1E: 00       brk
4A1F: 00       brk
4A20: 00       brk
4A21: 00       brk
4A22: 00       brk
4A23: 00       brk
4A24: 00       brk
4A25: 00       brk
4A26: 00       brk
4A27: 00       brk
4A28: 00       brk
4A29: 00       brk
4A2A: 00       brk
4A2B: 00       brk
4A2C: 00       brk
4A2D: 00       brk
4A2E: 00       brk
4A2F: 00       brk
4A30: 00       brk
4A31: 00       brk
4A32: 00       brk
4A33: 00       brk
4A34: 00       brk
4A35: 00       brk
4A36: 00       brk
4A37: 00       brk
4A38: 00       brk
4A39: 00       brk
4A3A: 00       brk
4A3B: 00       brk
4A3C: 00       brk
4A3D: 00       brk
4A3E: 00       brk
4A3F: 00       brk
4A40: 00       brk
4A41: 00       brk
4A42: 00       brk
4A43: 00       brk
4A44: 00       brk
4A45: 00       brk
4A46: 00       brk
4A47: 00       brk
4A48: 00       brk
4A49: 00       brk
4A4A: 00       brk
4A4B: 00       brk
4A4C: 00       brk
4A4D: 00       brk
4A4E: 00       brk
4A4F: 00       brk
4A50: 00       brk
4A51: 00       brk
4A52: 00       brk
4A53: 00       brk
4A54: 00       brk
4A55: 00       brk
4A56: 00       brk
4A57: 00       brk
4A58: 00       brk
4A59: 00       brk
4A5A: 00       brk
4A5B: 00       brk
4A5C: 00       brk
4A5D: 00       brk
4A5E: 00       brk
4A5F: 00       brk
4A60: 00       brk
4A61: 00       brk
4A62: 00       brk
4A63: 00       brk
4A64: 00       brk
4A65: 00       brk
4A66: 00       brk
4A67: 00       brk
4A68: 00       brk
4A69: 00       brk
4A6A: 00       brk
4A6B: 00       brk
4A6C: 00       brk
4A6D: 00       brk
4A6E: 00       brk
4A6F: 00       brk
4A70: 00       brk
4A71: 00       brk
4A72: 00       brk
4A73: 00       brk
4A74: 00       brk
4A75: 00       brk
4A76: 00       brk
4A77: 00       brk
4A78: 00       brk
4A79: 00       brk
4A7A: 00       brk
4A7B: 00       brk
4A7C: 00       brk
4A7D: 00       brk
4A7E: 00       brk
4A7F: 00       brk
4A80: 00       brk
4A81: 00       brk
4A82: 00       brk
4A83: 00       brk
4A84: 00       brk
4A85: 00       brk
4A86: 00       brk
4A87: 00       brk
4A88: 00       brk
4A89: 00       brk
4A8A: 00       brk
4A8B: 00       brk
4A8C: 00       brk
4A8D: 00       brk
4A8E: 00       brk
4A8F: 00       brk
4A90: 00       brk
4A91: 00       brk
4A92: 00       brk
4A93: 00       brk
4A94: 00       brk
4A95: 00       brk
4A96: 00       brk
4A97: 00       brk
4A98: 00       brk
4A99: 00       brk
4A9A: 00       brk
4A9B: 00       brk
4A9C: 00       brk
4A9D: 00       brk
4A9E: 00       brk
4A9F: 00       brk
4AA0: 00       brk
4AA1: 00       brk
4AA2: 00       brk
4AA3: 00       brk
4AA4: 00       brk
4AA5: 00       brk
4AA6: 00       brk
4AA7: 00       brk
4AA8: 00       brk
4AA9: 00       brk
4AAA: 00       brk
4AAB: 00       brk
4AAC: 00       brk
4AAD: 00       brk
4AAE: 00       brk
4AAF: 00       brk
4AB0: 00       brk
4AB1: 00       brk
4AB2: 00       brk
4AB3: 00       brk
4AB4: 00       brk
4AB5: 00       brk
4AB6: 00       brk
4AB7: 00       brk
4AB8: 00       brk
4AB9: 00       brk
4ABA: 00       brk
4ABB: 00       brk
4ABC: 00       brk
4ABD: 00       brk
4ABE: 00       brk
4ABF: 00       brk
4AC0: 00       brk
4AC1: 00       brk
4AC2: 00       brk
4AC3: 00       brk
4AC4: 00       brk
4AC5: 00       brk
4AC6: 00       brk
4AC7: 00       brk
4AC8: 00       brk
4AC9: 00       brk
4ACA: 00       brk
4ACB: 00       brk
4ACC: 00       brk
4ACD: 00       brk
4ACE: 00       brk
4ACF: 00       brk
4AD0: 00       brk
4AD1: 00       brk
4AD2: 00       brk
4AD3: 00       brk
4AD4: 00       brk
4AD5: 00       brk
4AD6: 00       brk
4AD7: 00       brk
4AD8: 00       brk
4AD9: 00       brk
4ADA: 00       brk
4ADB: 00       brk
4ADC: 00       brk
4ADD: 00       brk
4ADE: 00       brk
4ADF: 00       brk
4AE0: 00       brk
4AE1: 00       brk
4AE2: 00       brk
4AE3: 00       brk
4AE4: 00       brk
4AE5: 00       brk
4AE6: 00       brk
4AE7: 00       brk
4AE8: 00       brk
4AE9: 00       brk
4AEA: 00       brk
4AEB: 00       brk
4AEC: 00       brk
4AED: 00       brk
4AEE: 00       brk
4AEF: 00       brk
4AF0: 00       brk
4AF1: 00       brk
4AF2: 00       brk
4AF3: 00       brk
4AF4: 00       brk
4AF5: 00       brk
4AF6: 00       brk
4AF7: 00       brk
4AF8: 00       brk
4AF9: 00       brk
4AFA: 00       brk
4AFB: 00       brk
4AFC: 00       brk
4AFD: 00       brk
4AFE: 00       brk
4AFF: 00       brk
4B00: 00       brk
4B01: 00       brk
4B02: 00       brk
4B03: 00       brk
4B04: 00       brk
4B05: 00       brk
4B06: 00       brk
4B07: 00       brk
4B08: 00       brk
4B09: 00       brk
4B0A: 00       brk
4B0B: 00       brk
4B0C: 00       brk
4B0D: 00       brk
4B0E: 00       brk
4B0F: 00       brk
4B10: 00       brk
4B11: 00       brk
4B12: 00       brk
4B13: 00       brk
4B14: 00       brk
4B15: 00       brk
4B16: 00       brk
4B17: 00       brk
4B18: 00       brk
4B19: 00       brk
4B1A: 00       brk
4B1B: 00       brk
4B1C: 00       brk
4B1D: 00       brk
4B1E: 00       brk
4B1F: 00       brk
4B20: 00       brk
4B21: 00       brk
4B22: 00       brk
4B23: 00       brk
4B24: 00       brk
4B25: 00       brk
4B26: 00       brk
4B27: 00       brk
4B28: 00       brk
4B29: 00       brk
4B2A: 00       brk
4B2B: 00       brk
4B2C: 00       brk
4B2D: 00       brk
4B2E: 00       brk
4B2F: 00       brk
4B30: 00       brk
4B31: 00       brk
4B32: 00       brk
4B33: 00       brk
4B34: 00       brk
4B35: 00       brk
4B36: 00       brk
4B37: 00       brk
4B38: 00       brk
4B39: 00       brk
4B3A: 00       brk
4B3B: 00       brk
4B3C: 00       brk
4B3D: 00       brk
4B3E: 00       brk
4B3F: 00       brk
4B40: 00       brk
4B41: 00       brk
4B42: 00       brk
4B43: 00       brk
4B44: 00       brk
4B45: 00       brk
4B46: 00       brk
4B47: 00       brk
4B48: 00       brk
4B49: 00       brk
4B4A: 00       brk
4B4B: 00       brk
4B4C: 00       brk
4B4D: 00       brk
4B4E: 00       brk
4B4F: 00       brk
4B50: 00       brk
4B51: 00       brk
4B52: 00       brk
4B53: 00       brk
4B54: 00       brk
4B55: 00       brk
4B56: 00       brk
4B57: 00       brk
4B58: 00       brk
4B59: 00       brk
4B5A: 00       brk
4B5B: 00       brk
4B5C: 00       brk
4B5D: 00       brk
4B5E: 00       brk
4B5F: 00       brk
4B60: 00       brk
4B61: 00       brk
4B62: 00       brk
4B63: 00       brk
4B64: 00       brk
4B65: 00       brk
4B66: 00       brk
4B67: 00       brk
4B68: 00       brk
4B69: 00       brk
4B6A: 00       brk
4B6B: 00       brk
4B6C: 00       brk
4B6D: 00       brk
4B6E: 00       brk
4B6F: 00       brk
4B70: 00       brk
4B71: 00       brk
4B72: 00       brk
4B73: 00       brk
4B74: 00       brk
4B75: 00       brk
4B76: 00       brk
4B77: 00       brk
4B78: 00       brk
4B79: 00       brk
4B7A: 00       brk
4B7B: 00       brk
4B7C: 00       brk
4B7D: 00       brk
4B7E: 00       brk
4B7F: 00       brk
4B80: 00       brk
4B81: 00       brk
4B82: 00       brk
4B83: 00       brk
4B84: 00       brk
4B85: 00       brk
4B86: 00       brk
4B87: 00       brk
4B88: 00       brk
4B89: 00       brk
4B8A: 00       brk
4B8B: 00       brk
4B8C: 00       brk
4B8D: 00       brk
4B8E: 00       brk
4B8F: 00       brk
4B90: 00       brk
4B91: 00       brk
4B92: 00       brk
4B93: 00       brk
4B94: 00       brk
4B95: 00       brk
4B96: 00       brk
4B97: 00       brk
4B98: 00       brk
4B99: 00       brk
4B9A: 00       brk
4B9B: 00       brk
4B9C: 00       brk
4B9D: 00       brk
4B9E: 00       brk
4B9F: 00       brk
4BA0: 00       brk
4BA1: 00       brk
4BA2: 00       brk
4BA3: 00       brk
4BA4: 00       brk
4BA5: 00       brk
4BA6: 00       brk
4BA7: 00       brk
4BA8: 00       brk
4BA9: 00       brk
4BAA: 00       brk
4BAB: 00       brk
4BAC: 00       brk
4BAD: 00       brk
4BAE: 00       brk
4BAF: 00       brk
4BB0: 00       brk
4BB1: 00       brk
4BB2: 00       brk
4BB3: 00       brk
4BB4: 00       brk
4BB5: 00       brk
4BB6: 00       brk
4BB7: 00       brk
4BB8: 00       brk
4BB9: 00       brk
4BBA: 00       brk
4BBB: 00       brk
4BBC: 00       brk
4BBD: 00       brk
4BBE: 00       brk
4BBF: 00       brk
4BC0: 00       brk
4BC1: 00       brk
4BC2: 00       brk
4BC3: 00       brk
4BC4: 00       brk
4BC5: 00       brk
4BC6: 00       brk
4BC7: 00       brk
4BC8: 00       brk
4BC9: 00       brk
4BCA: 00       brk
4BCB: 00       brk
4BCC: 00       brk
4BCD: 00       brk
4BCE: 00       brk
4BCF: 00       brk
4BD0: 00       brk
4BD1: 00       brk
4BD2: 00       brk
4BD3: 00       brk
4BD4: 00       brk
4BD5: 00       brk
4BD6: 00       brk
4BD7: 00       brk
4BD8: 00       brk
4BD9: 00       brk
4BDA: 00       brk
4BDB: 00       brk
4BDC: 00       brk
4BDD: 00       brk
4BDE: 00       brk
4BDF: 00       brk
4BE0: 00       brk
4BE1: 00       brk
4BE2: 00       brk
4BE3: 00       brk
4BE4: 00       brk
4BE5: 00       brk
4BE6: 00       brk
4BE7: 00       brk
4BE8: 00       brk
4BE9: 00       brk
4BEA: 00       brk
4BEB: 00       brk
4BEC: 00       brk
4BED: 00       brk
4BEE: 00       brk
4BEF: 00       brk
4BF0: 00       brk
4BF1: 00       brk
4BF2: 00       brk
4BF3: 00       brk
4BF4: 00       brk
4BF5: 00       brk
4BF6: 00       brk
4BF7: 00       brk
4BF8: 00       brk
4BF9: 00       brk
4BFA: 00       brk
4BFB: 00       brk
4BFC: 00       brk
4BFD: 00       brk
4BFE: 00       brk
4BFF: 00       brk
4C00: 00       brk
4C01: 00       brk
4C02: 00       brk
4C03: 00       brk
4C04: 00       brk
4C05: 00       brk
4C06: 00       brk
4C07: 00       brk
4C08: 00       brk
4C09: 00       brk
4C0A: 00       brk
4C0B: 00       brk
4C0C: 00       brk
4C0D: 00       brk
4C0E: 00       brk
4C0F: 00       brk
4C10: 00       brk
4C11: 00       brk
4C12: 00       brk
4C13: 00       brk
4C14: 00       brk
4C15: 00       brk
4C16: 00       brk
4C17: 00       brk
4C18: 00       brk
4C19: 00       brk
4C1A: 00       brk
4C1B: 00       brk
4C1C: 00       brk
4C1D: 00       brk
4C1E: 00       brk
4C1F: 00       brk
4C20: 00       brk
4C21: 00       brk
4C22: 00       brk
4C23: 00       brk
4C24: 00       brk
4C25: 00       brk
4C26: 00       brk
4C27: 00       brk
4C28: 00       brk
4C29: 00       brk
4C2A: 00       brk
4C2B: 00       brk
4C2C: 00       brk
4C2D: 00       brk
4C2E: 00       brk
4C2F: 00       brk
4C30: 00       brk
4C31: 00       brk
4C32: 00       brk
4C33: 00       brk
4C34: 00       brk
4C35: 00       brk
4C36: 00       brk
4C37: 00       brk
4C38: 00       brk
4C39: 00       brk
4C3A: 00       brk
4C3B: 00       brk
4C3C: 00       brk
4C3D: 00       brk
4C3E: 00       brk
4C3F: 00       brk
4C40: 00       brk
4C41: 00       brk
4C42: 00       brk
4C43: 00       brk
4C44: 00       brk
4C45: 00       brk
4C46: 00       brk
4C47: 00       brk
4C48: 00       brk
4C49: 00       brk
4C4A: 00       brk
4C4B: 00       brk
4C4C: 00       brk
4C4D: 00       brk
4C4E: 00       brk
4C4F: 00       brk
4C50: 00       brk
4C51: 00       brk
4C52: 00       brk
4C53: 00       brk
4C54: 00       brk
4C55: 00       brk
4C56: 00       brk
4C57: 00       brk
4C58: 00       brk
4C59: 00       brk
4C5A: 00       brk
4C5B: 00       brk
4C5C: 00       brk
4C5D: 00       brk
4C5E: 00       brk
4C5F: 00       brk
4C60: 00       brk
4C61: 00       brk
4C62: 00       brk
4C63: 00       brk
4C64: 00       brk
4C65: 00       brk
4C66: 00       brk
4C67: 00       brk
4C68: 00       brk
4C69: 00       brk
4C6A: 00       brk
4C6B: 00       brk
4C6C: 00       brk
4C6D: 00       brk
4C6E: 00       brk
4C6F: 00       brk
4C70: 00       brk
4C71: 00       brk
4C72: 00       brk
4C73: 00       brk
4C74: 00       brk
4C75: 00       brk
4C76: 00       brk
4C77: 00       brk
4C78: 00       brk
4C79: 00       brk
4C7A: 00       brk
4C7B: 00       brk
4C7C: 00       brk
4C7D: 00       brk
4C7E: 00       brk
4C7F: 00       brk
4C80: 00       brk
4C81: 00       brk
4C82: 00       brk
4C83: 00       brk
4C84: 00       brk
4C85: 00       brk
4C86: 00       brk
4C87: 00       brk
4C88: 00       brk
4C89: 00       brk
4C8A: 00       brk
4C8B: 00       brk
4C8C: 00       brk
4C8D: 00       brk
4C8E: 00       brk
4C8F: 00       brk
4C90: 00       brk
4C91: 00       brk
4C92: 00       brk
4C93: 00       brk
4C94: 00       brk
4C95: 00       brk
4C96: 00       brk
4C97: 00       brk
4C98: 00       brk
4C99: 00       brk
4C9A: 00       brk
4C9B: 00       brk
4C9C: 00       brk
4C9D: 00       brk
4C9E: 00       brk
4C9F: 00       brk
4CA0: 00       brk
4CA1: 00       brk
4CA2: 00       brk
4CA3: 00       brk
4CA4: 00       brk
4CA5: 00       brk
4CA6: 00       brk
4CA7: 00       brk
4CA8: 00       brk
4CA9: 00       brk
4CAA: 00       brk
4CAB: 00       brk
4CAC: 00       brk
4CAD: 00       brk
4CAE: 00       brk
4CAF: 00       brk
4CB0: 00       brk
4CB1: 00       brk
4CB2: 00       brk
4CB3: 00       brk
4CB4: 00       brk
4CB5: 00       brk
4CB6: 00       brk
4CB7: 00       brk
4CB8: 00       brk
4CB9: 00       brk
4CBA: 00       brk
4CBB: 00       brk
4CBC: 00       brk
4CBD: 00       brk
4CBE: 00       brk
4CBF: 00       brk
4CC0: 00       brk
4CC1: 00       brk
4CC2: 00       brk
4CC3: 00       brk
4CC4: 00       brk
4CC5: 00       brk
4CC6: 00       brk
4CC7: 00       brk
4CC8: 00       brk
4CC9: 00       brk
4CCA: 00       brk
4CCB: 00       brk
4CCC: 00       brk
4CCD: 00       brk
4CCE: 00       brk
4CCF: 00       brk
4CD0: 00       brk
4CD1: 00       brk
4CD2: 00       brk
4CD3: 00       brk
4CD4: 00       brk
4CD5: 00       brk
4CD6: 00       brk
4CD7: 00       brk
4CD8: 00       brk
4CD9: 00       brk
4CDA: 00       brk
4CDB: 00       brk
4CDC: 00       brk
4CDD: 00       brk
4CDE: 00       brk
4CDF: 00       brk
4CE0: 00       brk
4CE1: 00       brk
4CE2: 00       brk
4CE3: 00       brk
4CE4: 00       brk
4CE5: 00       brk
4CE6: 00       brk
4CE7: 00       brk
4CE8: 00       brk
4CE9: 00       brk
4CEA: 00       brk
4CEB: 00       brk
4CEC: 00       brk
4CED: 00       brk
4CEE: 00       brk
4CEF: 00       brk
4CF0: 00       brk
4CF1: 00       brk
4CF2: 00       brk
4CF3: 00       brk
4CF4: 00       brk
4CF5: 00       brk
4CF6: 00       brk
4CF7: 00       brk
4CF8: 00       brk
4CF9: 00       brk
4CFA: 00       brk
4CFB: 00       brk
4CFC: 00       brk
4CFD: 00       brk
4CFE: 00       brk
4CFF: 00       brk
4D00: 00       brk
4D01: 00       brk
4D02: 00       brk
4D03: 00       brk
4D04: 00       brk
4D05: 00       brk
4D06: 00       brk
4D07: 00       brk
4D08: 00       brk
4D09: 00       brk
4D0A: 00       brk
4D0B: 00       brk
4D0C: 00       brk
4D0D: 00       brk
4D0E: 00       brk
4D0F: 00       brk
4D10: 00       brk
4D11: 00       brk
4D12: 00       brk
4D13: 00       brk
4D14: 00       brk
4D15: 00       brk
4D16: 00       brk
4D17: 00       brk
4D18: 00       brk
4D19: 00       brk
4D1A: 00       brk
4D1B: 00       brk
4D1C: 00       brk
4D1D: 00       brk
4D1E: 00       brk
4D1F: 00       brk
4D20: 00       brk
4D21: 00       brk
4D22: 00       brk
4D23: 00       brk
4D24: 00       brk
4D25: 00       brk
4D26: 00       brk
4D27: 00       brk
4D28: 00       brk
4D29: 00       brk
4D2A: 00       brk
4D2B: 00       brk
4D2C: 00       brk
4D2D: 00       brk
4D2E: 00       brk
4D2F: 00       brk
4D30: 00       brk
4D31: 00       brk
4D32: 00       brk
4D33: 00       brk
4D34: 00       brk
4D35: 00       brk
4D36: 00       brk
4D37: 00       brk
4D38: 00       brk
4D39: 00       brk
4D3A: 00       brk
4D3B: 00       brk
4D3C: 00       brk
4D3D: 00       brk
4D3E: 00       brk
4D3F: 00       brk
4D40: 00       brk
4D41: 00       brk
4D42: 00       brk
4D43: 00       brk
4D44: 00       brk
4D45: 00       brk
4D46: 00       brk
4D47: 00       brk
4D48: 00       brk
4D49: 00       brk
4D4A: 00       brk
4D4B: 00       brk
4D4C: 00       brk
4D4D: 00       brk
4D4E: 00       brk
4D4F: 00       brk
4D50: 00       brk
4D51: 00       brk
4D52: 00       brk
4D53: 00       brk
4D54: 00       brk
4D55: 00       brk
4D56: 00       brk
4D57: 00       brk
4D58: 00       brk
4D59: 00       brk
4D5A: 00       brk
4D5B: 00       brk
4D5C: 00       brk
4D5D: 00       brk
4D5E: 00       brk
4D5F: 00       brk
4D60: 00       brk
4D61: 00       brk
4D62: 00       brk
4D63: 00       brk
4D64: 00       brk
4D65: 00       brk
4D66: 00       brk
4D67: 00       brk
4D68: 00       brk
4D69: 00       brk
4D6A: 00       brk
4D6B: 00       brk
4D6C: 00       brk
4D6D: 00       brk
4D6E: 00       brk
4D6F: 00       brk
4D70: 00       brk
4D71: 00       brk
4D72: 00       brk
4D73: 00       brk
4D74: 00       brk
4D75: 00       brk
4D76: 00       brk
4D77: 00       brk
4D78: 00       brk
4D79: 00       brk
4D7A: 00       brk
4D7B: 00       brk
4D7C: 00       brk
4D7D: 00       brk
4D7E: 00       brk
4D7F: 00       brk
4D80: 00       brk
4D81: 00       brk
4D82: 00       brk
4D83: 00       brk
4D84: 00       brk
4D85: 00       brk
4D86: 00       brk
4D87: 00       brk
4D88: 00       brk
4D89: 00       brk
4D8A: 00       brk
4D8B: 00       brk
4D8C: 00       brk
4D8D: 00       brk
4D8E: 00       brk
4D8F: 00       brk
4D90: 00       brk
4D91: 00       brk
4D92: 00       brk
4D93: 00       brk
4D94: 00       brk
4D95: 00       brk
4D96: 00       brk
4D97: 00       brk
4D98: 00       brk
4D99: 00       brk
4D9A: 00       brk
4D9B: 00       brk
4D9C: 00       brk
4D9D: 00       brk
4D9E: 00       brk
4D9F: 00       brk
4DA0: 00       brk
4DA1: 00       brk
4DA2: 00       brk
4DA3: 00       brk
4DA4: 00       brk
4DA5: 00       brk
4DA6: 00       brk
4DA7: 00       brk
4DA8: 00       brk
4DA9: 00       brk
4DAA: 00       brk
4DAB: 00       brk
4DAC: 00       brk
4DAD: 00       brk
4DAE: 00       brk
4DAF: 00       brk
4DB0: 00       brk
4DB1: 00       brk
4DB2: 00       brk
4DB3: 00       brk
4DB4: 00       brk
4DB5: 00       brk
4DB6: 00       brk
4DB7: 00       brk
4DB8: 00       brk
4DB9: 00       brk
4DBA: 00       brk
4DBB: 00       brk
4DBC: 00       brk
4DBD: 00       brk
4DBE: 00       brk
4DBF: 00       brk
4DC0: 00       brk
4DC1: 00       brk
4DC2: 00       brk
4DC3: 00       brk
4DC4: 00       brk
4DC5: 00       brk
4DC6: 00       brk
4DC7: 00       brk
4DC8: 00       brk
4DC9: 00       brk
4DCA: 00       brk
4DCB: 00       brk
4DCC: 00       brk
4DCD: 00       brk
4DCE: 00       brk
4DCF: 00       brk
4DD0: 00       brk
4DD1: 00       brk
4DD2: 00       brk
4DD3: 00       brk
4DD4: 00       brk
4DD5: 00       brk
4DD6: 00       brk
4DD7: 00       brk
4DD8: 00       brk
4DD9: 00       brk
4DDA: 00       brk
4DDB: 00       brk
4DDC: 00       brk
4DDD: 00       brk
4DDE: 00       brk
4DDF: 00       brk
4DE0: 00       brk
4DE1: 00       brk
4DE2: 00       brk
4DE3: 00       brk
4DE4: 00       brk
4DE5: 00       brk
4DE6: 00       brk
4DE7: 00       brk
4DE8: 00       brk
4DE9: 00       brk
4DEA: 00       brk
4DEB: 00       brk
4DEC: 00       brk
4DED: 00       brk
4DEE: 00       brk
4DEF: 00       brk
4DF0: 00       brk
4DF1: 00       brk
4DF2: 00       brk
4DF3: 00       brk
4DF4: 00       brk
4DF5: 00       brk
4DF6: 00       brk
4DF7: 00       brk
4DF8: 00       brk
4DF9: 00       brk
4DFA: 00       brk
4DFB: 00       brk
4DFC: 00       brk
4DFD: 00       brk
4DFE: 00       brk
4DFF: 00       brk
4E00: 00       brk
4E01: 00       brk
4E02: 00       brk
4E03: 00       brk
4E04: 00       brk
4E05: 00       brk
4E06: 00       brk
4E07: 00       brk
4E08: 00       brk
4E09: 00       brk
4E0A: 00       brk
4E0B: 00       brk
4E0C: 00       brk
4E0D: 00       brk
4E0E: 00       brk
4E0F: 00       brk
4E10: 00       brk
4E11: 00       brk
4E12: 00       brk
4E13: 00       brk
4E14: 00       brk
4E15: 00       brk
4E16: 00       brk
4E17: 00       brk
4E18: 00       brk
4E19: 00       brk
4E1A: 00       brk
4E1B: 00       brk
4E1C: 00       brk
4E1D: 00       brk
4E1E: 00       brk
4E1F: 00       brk
4E20: 00       brk
4E21: 00       brk
4E22: 00       brk
4E23: 00       brk
4E24: 00       brk
4E25: 00       brk
4E26: 00       brk
4E27: 00       brk
4E28: 00       brk
4E29: 00       brk
4E2A: 00       brk
4E2B: 00       brk
4E2C: 00       brk
4E2D: 00       brk
4E2E: 00       brk
4E2F: 00       brk
4E30: 00       brk
4E31: 00       brk
4E32: 00       brk
4E33: 00       brk
4E34: 00       brk
4E35: 00       brk
4E36: 00       brk
4E37: 00       brk
4E38: 00       brk
4E39: 00       brk
4E3A: 00       brk
4E3B: 00       brk
4E3C: 00       brk
4E3D: 00       brk
4E3E: 00       brk
4E3F: 00       brk
4E40: 00       brk
4E41: 00       brk
4E42: 00       brk
4E43: 00       brk
4E44: 00       brk
4E45: 00       brk
4E46: 00       brk
4E47: 00       brk
4E48: 00       brk
4E49: 00       brk
4E4A: 00       brk
4E4B: 00       brk
4E4C: 00       brk
4E4D: 00       brk
4E4E: 00       brk
4E4F: 00       brk
4E50: 00       brk
4E51: 00       brk
4E52: 00       brk
4E53: 00       brk
4E54: 00       brk
4E55: 00       brk
4E56: 00       brk
4E57: 00       brk
4E58: 00       brk
4E59: 00       brk
4E5A: 00       brk
4E5B: 00       brk
4E5C: 00       brk
4E5D: 00       brk
4E5E: 00       brk
4E5F: 00       brk
4E60: 00       brk
4E61: 00       brk
4E62: 00       brk
4E63: 00       brk
4E64: 00       brk
4E65: 00       brk
4E66: 00       brk
4E67: 00       brk
4E68: 00       brk
4E69: 00       brk
4E6A: 00       brk
4E6B: 00       brk
4E6C: 00       brk
4E6D: 00       brk
4E6E: 00       brk
4E6F: 00       brk
4E70: 00       brk
4E71: 00       brk
4E72: 00       brk
4E73: 00       brk
4E74: 00       brk
4E75: 00       brk
4E76: 00       brk
4E77: 00       brk
4E78: 00       brk
4E79: 00       brk
4E7A: 00       brk
4E7B: 00       brk
4E7C: 00       brk
4E7D: 00       brk
4E7E: 00       brk
4E7F: 00       brk
4E80: 00       brk
4E81: 00       brk
4E82: 00       brk
4E83: 00       brk
4E84: 00       brk
4E85: 00       brk
4E86: 00       brk
4E87: 00       brk
4E88: 00       brk
4E89: 00       brk
4E8A: 00       brk
4E8B: 00       brk
4E8C: 00       brk
4E8D: 00       brk
4E8E: 00       brk
4E8F: 00       brk
4E90: 00       brk
4E91: 00       brk
4E92: 00       brk
4E93: 00       brk
4E94: 00       brk
4E95: 00       brk
4E96: 00       brk
4E97: 00       brk
4E98: 00       brk
4E99: 00       brk
4E9A: 00       brk
4E9B: 00       brk
4E9C: 00       brk
4E9D: 00       brk
4E9E: 00       brk
4E9F: 00       brk
4EA0: 00       brk
4EA1: 00       brk
4EA2: 00       brk
4EA3: 00       brk
4EA4: 00       brk
4EA5: 00       brk
4EA6: 00       brk
4EA7: 00       brk
4EA8: 00       brk
4EA9: 00       brk
4EAA: 00       brk
4EAB: 00       brk
4EAC: 00       brk
4EAD: 00       brk
4EAE: 00       brk
4EAF: 00       brk
4EB0: 00       brk
4EB1: 00       brk
4EB2: 00       brk
4EB3: 00       brk
4EB4: 00       brk
4EB5: 00       brk
4EB6: 00       brk
4EB7: 00       brk
4EB8: 00       brk
4EB9: 00       brk
4EBA: 00       brk
4EBB: 00       brk
4EBC: 00       brk
4EBD: 00       brk
4EBE: 00       brk
4EBF: 00       brk
4EC0: 00       brk
4EC1: 00       brk
4EC2: 00       brk
4EC3: 00       brk
4EC4: 00       brk
4EC5: 00       brk
4EC6: 00       brk
4EC7: 00       brk
4EC8: 00       brk
4EC9: 00       brk
4ECA: 00       brk
4ECB: 00       brk
4ECC: 00       brk
4ECD: 00       brk
4ECE: 00       brk
4ECF: 00       brk
4ED0: 00       brk
4ED1: 00       brk
4ED2: 00       brk
4ED3: 00       brk
4ED4: 00       brk
4ED5: 00       brk
4ED6: 00       brk
4ED7: 00       brk
4ED8: 00       brk
4ED9: 00       brk
4EDA: 00       brk
4EDB: 00       brk
4EDC: 00       brk
4EDD: 00       brk
4EDE: 00       brk
4EDF: 00       brk
4EE0: 00       brk
4EE1: 00       brk
4EE2: 00       brk
4EE3: 00       brk
4EE4: 00       brk
4EE5: 00       brk
4EE6: 00       brk
4EE7: 00       brk
4EE8: 00       brk
4EE9: 00       brk
4EEA: 00       brk
4EEB: 00       brk
4EEC: 00       brk
4EED: 00       brk
4EEE: 00       brk
4EEF: 00       brk
4EF0: 00       brk
4EF1: 00       brk
4EF2: 00       brk
4EF3: 00       brk
4EF4: 00       brk
4EF5: 00       brk
4EF6: 00       brk
4EF7: 00       brk
4EF8: 00       brk
4EF9: 00       brk
4EFA: 00       brk
4EFB: 00       brk
4EFC: 00       brk
4EFD: 00       brk
4EFE: 00       brk
4EFF: 00       brk
4F00: 00       brk
4F01: 00       brk
4F02: 00       brk
4F03: 00       brk
4F04: 00       brk
4F05: 00       brk
4F06: 00       brk
4F07: 00       brk
4F08: 00       brk
4F09: 00       brk
4F0A: 00       brk
4F0B: 00       brk
4F0C: 00       brk
4F0D: 00       brk
4F0E: 00       brk
4F0F: 00       brk
4F10: 00       brk
4F11: 00       brk
4F12: 00       brk
4F13: 00       brk
4F14: 00       brk
4F15: 00       brk
4F16: 00       brk
4F17: 00       brk
4F18: 00       brk
4F19: 00       brk
4F1A: 00       brk
4F1B: 00       brk
4F1C: 00       brk
4F1D: 00       brk
4F1E: 00       brk
4F1F: 00       brk
4F20: 00       brk
4F21: 00       brk
4F22: 00       brk
4F23: 00       brk
4F24: 00       brk
4F25: 00       brk
4F26: 00       brk
4F27: 00       brk
4F28: 00       brk
4F29: 00       brk
4F2A: 00       brk
4F2B: 00       brk
4F2C: 00       brk
4F2D: 00       brk
4F2E: 00       brk
4F2F: 00       brk
4F30: 00       brk
4F31: 00       brk
4F32: 00       brk
4F33: 00       brk
4F34: 00       brk
4F35: 00       brk
4F36: 00       brk
4F37: 00       brk
4F38: 00       brk
4F39: 00       brk
4F3A: 00       brk
4F3B: 00       brk
4F3C: 00       brk
4F3D: 00       brk
4F3E: 00       brk
4F3F: 00       brk
4F40: 00       brk
4F41: 00       brk
4F42: 00       brk
4F43: 00       brk
4F44: 00       brk
4F45: 00       brk
4F46: 00       brk
4F47: 00       brk
4F48: 00       brk
4F49: 00       brk
4F4A: 00       brk
4F4B: 00       brk
4F4C: 00       brk
4F4D: 00       brk
4F4E: 00       brk
4F4F: 00       brk
4F50: 00       brk
4F51: 00       brk
4F52: 00       brk
4F53: 00       brk
4F54: 00       brk
4F55: 00       brk
4F56: 00       brk
4F57: 00       brk
4F58: 00       brk
4F59: 00       brk
4F5A: 00       brk
4F5B: 00       brk
4F5C: 00       brk
4F5D: 00       brk
4F5E: 00       brk
4F5F: 00       brk
4F60: 00       brk
4F61: 00       brk
4F62: 00       brk
4F63: 00       brk
4F64: 00       brk
4F65: 00       brk
4F66: 00       brk
4F67: 00       brk
4F68: 00       brk
4F69: 00       brk
4F6A: 00       brk
4F6B: 00       brk
4F6C: 00       brk
4F6D: 00       brk
4F6E: 00       brk
4F6F: 00       brk
4F70: 00       brk
4F71: 00       brk
4F72: 00       brk
4F73: 00       brk
4F74: 00       brk
4F75: 00       brk
4F76: 00       brk
4F77: 00       brk
4F78: 00       brk
4F79: 00       brk
4F7A: 00       brk
4F7B: 00       brk
4F7C: 00       brk
4F7D: 00       brk
4F7E: 00       brk
4F7F: 00       brk
4F80: 00       brk
4F81: 00       brk
4F82: 00       brk
4F83: 00       brk
4F84: 00       brk
4F85: 00       brk
4F86: 00       brk
4F87: 00       brk
4F88: 00       brk
4F89: 00       brk
4F8A: 00       brk
4F8B: 00       brk
4F8C: 00       brk
4F8D: 00       brk
4F8E: 00       brk
4F8F: 00       brk
4F90: 00       brk
4F91: 00       brk
4F92: 00       brk
4F93: 00       brk
4F94: 00       brk
4F95: 00       brk
4F96: 00       brk
4F97: 00       brk
4F98: 00       brk
4F99: 00       brk
4F9A: 00       brk
4F9B: 00       brk
4F9C: 00       brk
4F9D: 00       brk
4F9E: 00       brk
4F9F: 00       brk
4FA0: 00       brk
4FA1: 00       brk
4FA2: 00       brk
4FA3: 00       brk
4FA4: 00       brk
4FA5: 00       brk
4FA6: 00       brk
4FA7: 00       brk
4FA8: 00       brk
4FA9: 00       brk
4FAA: 00       brk
4FAB: 00       brk
4FAC: 00       brk
4FAD: 00       brk
4FAE: 00       brk
4FAF: 00       brk
4FB0: 00       brk
4FB1: 00       brk
4FB2: 00       brk
4FB3: 00       brk
4FB4: 00       brk
4FB5: 00       brk
4FB6: 00       brk
4FB7: 00       brk
4FB8: 00       brk
4FB9: 00       brk
4FBA: 00       brk
4FBB: 00       brk
4FBC: 00       brk
4FBD: 00       brk
4FBE: 00       brk
4FBF: 00       brk
4FC0: 00       brk
4FC1: 00       brk
4FC2: 00       brk
4FC3: 00       brk
4FC4: 00       brk
4FC5: 00       brk
4FC6: 00       brk
4FC7: 00       brk
4FC8: 00       brk
4FC9: 00       brk
4FCA: 00       brk
4FCB: 00       brk
4FCC: 00       brk
4FCD: 00       brk
4FCE: 00       brk
4FCF: 00       brk
4FD0: 00       brk
4FD1: 00       brk
4FD2: 00       brk
4FD3: 00       brk
4FD4: 00       brk
4FD5: 00       brk
4FD6: 00       brk
4FD7: 00       brk
4FD8: 00       brk
4FD9: 00       brk
4FDA: 00       brk
4FDB: 00       brk
4FDC: 00       brk
4FDD: 00       brk
4FDE: 00       brk
4FDF: 00       brk
4FE0: 00       brk
4FE1: 00       brk
4FE2: 00       brk
4FE3: 00       brk
4FE4: 00       brk
4FE5: 00       brk
4FE6: 00       brk
4FE7: 00       brk
4FE8: 00       brk
4FE9: 00       brk
4FEA: 00       brk
4FEB: 00       brk
4FEC: 00       brk
4FED: 00       brk
4FEE: 00       brk
4FEF: 00       brk
4FF0: 00       brk
4FF1: 00       brk
4FF2: 00       brk
4FF3: 00       brk
4FF4: 00       brk
4FF5: 00       brk
4FF6: 00       brk
4FF7: 00       brk
4FF8: 00       brk
4FF9: 00       brk
4FFA: 00       brk
4FFB: 00       brk
4FFC: 00       brk
4FFD: 00       brk
4FFE: 00       brk
4FFF: 00       brk
5000: 00       brk
5001: 00       brk
5002: 00       brk
5003: 00       brk
5004: 00       brk
5005: 00       brk
5006: 00       brk
5007: 00       brk
5008: 00       brk
5009: 00       brk
500A: 00       brk
500B: 00       brk
500C: 00       brk
500D: 00       brk
500E: 00       brk
500F: 00       brk
5010: 00       brk
5011: 00       brk
5012: 00       brk
5013: 00       brk
5014: 00       brk
5015: 00       brk
5016: 00       brk
5017: 00       brk
5018: 00       brk
5019: 00       brk
501A: 00       brk
501B: 00       brk
501C: 00       brk
501D: 00       brk
501E: 00       brk
501F: 00       brk
5020: 00       brk
5021: 00       brk
5022: 00       brk
5023: 00       brk
5024: 00       brk
5025: 00       brk
5026: 00       brk
5027: 00       brk
5028: 00       brk
5029: 00       brk
502A: 00       brk
502B: 00       brk
502C: 00       brk
502D: 00       brk
502E: 00       brk
502F: 00       brk
5030: 00       brk
5031: 00       brk
5032: 00       brk
5033: 00       brk
5034: 00       brk
5035: 00       brk
5036: 00       brk
5037: 00       brk
5038: 00       brk
5039: 00       brk
503A: 00       brk
503B: 00       brk
503C: 00       brk
503D: 00       brk
503E: 00       brk
503F: 00       brk
5040: 00       brk
5041: 00       brk
5042: 00       brk
5043: 00       brk
5044: 00       brk
5045: 00       brk
5046: 00       brk
5047: 00       brk
5048: 00       brk
5049: 00       brk
504A: 00       brk
504B: 00       brk
504C: 00       brk
504D: 00       brk
504E: 00       brk
504F: 00       brk
5050: 00       brk
5051: 00       brk
5052: 00       brk
5053: 00       brk
5054: 00       brk
5055: 00       brk
5056: 00       brk
5057: 00       brk
5058: 00       brk
5059: 00       brk
505A: 00       brk
505B: 00       brk
505C: 00       brk
505D: 00       brk
505E: 00       brk
505F: 00       brk
5060: 00       brk
5061: 00       brk
5062: 00       brk
5063: 00       brk
5064: 00       brk
5065: 00       brk
5066: 00       brk
5067: 00       brk
5068: 00       brk
5069: 00       brk
506A: 00       brk
506B: 00       brk
506C: 00       brk
506D: 00       brk
506E: 00       brk
506F: 00       brk
5070: 00       brk
5071: 00       brk
5072: 00       brk
5073: 00       brk
5074: 00       brk
5075: 00       brk
5076: 00       brk
5077: 00       brk
5078: 00       brk
5079: 00       brk
507A: 00       brk
507B: 00       brk
507C: 00       brk
507D: 00       brk
507E: 00       brk
507F: 00       brk
5080: 00       brk
5081: 00       brk
5082: 00       brk
5083: 00       brk
5084: 00       brk
5085: 00       brk
5086: 00       brk
5087: 00       brk
5088: 00       brk
5089: 00       brk
508A: 00       brk
508B: 00       brk
508C: 00       brk
508D: 00       brk
508E: 00       brk
508F: 00       brk
5090: 00       brk
5091: 00       brk
5092: 00       brk
5093: 00       brk
5094: 00       brk
5095: 00       brk
5096: 00       brk
5097: 00       brk
5098: 00       brk
5099: 00       brk
509A: 00       brk
509B: 00       brk
509C: 00       brk
509D: 00       brk
509E: 00       brk
509F: 00       brk
50A0: 00       brk
50A1: 00       brk
50A2: 00       brk
50A3: 00       brk
50A4: 00       brk
50A5: 00       brk
50A6: 00       brk
50A7: 00       brk
50A8: 00       brk
50A9: 00       brk
50AA: 00       brk
50AB: 00       brk
50AC: 00       brk
50AD: 00       brk
50AE: 00       brk
50AF: 00       brk
50B0: 00       brk
50B1: 00       brk
50B2: 00       brk
50B3: 00       brk
50B4: 00       brk
50B5: 00       brk
50B6: 00       brk
50B7: 00       brk
50B8: 00       brk
50B9: 00       brk
50BA: 00       brk
50BB: 00       brk
50BC: 00       brk
50BD: 00       brk
50BE: 00       brk
50BF: 00       brk
50C0: 00       brk
50C1: 00       brk
50C2: 00       brk
50C3: 00       brk
50C4: 00       brk
50C5: 00       brk
50C6: 00       brk
50C7: 00       brk
50C8: 00       brk
50C9: 00       brk
50CA: 00       brk
50CB: 00       brk
50CC: 00       brk
50CD: 00       brk
50CE: 00       brk
50CF: 00       brk
50D0: 00       brk
50D1: 00       brk
50D2: 00       brk
50D3: 00       brk
50D4: 00       brk
50D5: 00       brk
50D6: 00       brk
50D7: 00       brk
50D8: 00       brk
50D9: 00       brk
50DA: 00       brk
50DB: 00       brk
50DC: 00       brk
50DD: 00       brk
50DE: 00       brk
50DF: 00       brk
50E0: 00       brk
50E1: 00       brk
50E2: 00       brk
50E3: 00       brk
50E4: 00       brk
50E5: 00       brk
50E6: 00       brk
50E7: 00       brk
50E8: 00       brk
50E9: 00       brk
50EA: 00       brk
50EB: 00       brk
50EC: 00       brk
50ED: 00       brk
50EE: 00       brk
50EF: 00       brk
50F0: 00       brk
50F1: 00       brk
50F2: 00       brk
50F3: 00       brk
50F4: 00       brk
50F5: 00       brk
50F6: 00       brk
50F7: 00       brk
50F8: 00       brk
50F9: 00       brk
50FA: 00       brk
50FB: 00       brk
50FC: 00       brk
50FD: 00       brk
50FE: 00       brk
50FF: 00       brk
5100: 00       brk
5101: 00       brk
5102: 00       brk
5103: 00       brk
5104: 00       brk
5105: 00       brk
5106: 00       brk
5107: 00       brk
5108: 00       brk
5109: 00       brk
510A: 00       brk
510B: 00       brk
510C: 00       brk
510D: 00       brk
510E: 00       brk
510F: 00       brk
5110: 00       brk
5111: 00       brk
5112: 00       brk
5113: 00       brk
5114: 00       brk
5115: 00       brk
5116: 00       brk
5117: 00       brk
5118: 00       brk
5119: 00       brk
511A: 00       brk
511B: 00       brk
511C: 00       brk
511D: 00       brk
511E: 00       brk
511F: 00       brk
5120: 00       brk
5121: 00       brk
5122: 00       brk
5123: 00       brk
5124: 00       brk
5125: 00       brk
5126: 00       brk
5127: 00       brk
5128: 00       brk
5129: 00       brk
512A: 00       brk
512B: 00       brk
512C: 00       brk
512D: 00       brk
512E: 00       brk
512F: 00       brk
5130: 00       brk
5131: 00       brk
5132: 00       brk
5133: 00       brk
5134: 00       brk
5135: 00       brk
5136: 00       brk
5137: 00       brk
5138: 00       brk
5139: 00       brk
513A: 00       brk
513B: 00       brk
513C: 00       brk
513D: 00       brk
513E: 00       brk
513F: 00       brk
5140: 00       brk
5141: 00       brk
5142: 00       brk
5143: 00       brk
5144: 00       brk
5145: 00       brk
5146: 00       brk
5147: 00       brk
5148: 00       brk
5149: 00       brk
514A: 00       brk
514B: 00       brk
514C: 00       brk
514D: 00       brk
514E: 00       brk
514F: 00       brk
5150: 00       brk
5151: 00       brk
5152: 00       brk
5153: 00       brk
5154: 00       brk
5155: 00       brk
5156: 00       brk
5157: 00       brk
5158: 00       brk
5159: 00       brk
515A: 00       brk
515B: 00       brk
515C: 00       brk
515D: 00       brk
515E: 00       brk
515F: 00       brk
5160: 00       brk
5161: 00       brk
5162: 00       brk
5163: 00       brk
5164: 00       brk
5165: 00       brk
5166: 00       brk
5167: 00       brk
5168: 00       brk
5169: 00       brk
516A: 00       brk
516B: 00       brk
516C: 00       brk
516D: 00       brk
516E: 00       brk
516F: 00       brk
5170: 00       brk
5171: 00       brk
5172: 00       brk
5173: 00       brk
5174: 00       brk
5175: 00       brk
5176: 00       brk
5177: 00       brk
5178: 00       brk
5179: 00       brk
517A: 00       brk
517B: 00       brk
517C: 00       brk
517D: 00       brk
517E: 00       brk
517F: 00       brk
5180: 00       brk
5181: 00       brk
5182: 00       brk
5183: 00       brk
5184: 00       brk
5185: 00       brk
5186: 00       brk
5187: 00       brk
5188: 00       brk
5189: 00       brk
518A: 00       brk
518B: 00       brk
518C: 00       brk
518D: 00       brk
518E: 00       brk
518F: 00       brk
5190: 00       brk
5191: 00       brk
5192: 00       brk
5193: 00       brk
5194: 00       brk
5195: 00       brk
5196: 00       brk
5197: 00       brk
5198: 00       brk
5199: 00       brk
519A: 00       brk
519B: 00       brk
519C: 00       brk
519D: 00       brk
519E: 00       brk
519F: 00       brk
51A0: 00       brk
51A1: 00       brk
51A2: 00       brk
51A3: 00       brk
51A4: 00       brk
51A5: 00       brk
51A6: 00       brk
51A7: 00       brk
51A8: 00       brk
51A9: 00       brk
51AA: 00       brk
51AB: 00       brk
51AC: 00       brk
51AD: 00       brk
51AE: 00       brk
51AF: 00       brk
51B0: 00       brk
51B1: 00       brk
51B2: 00       brk
51B3: 00       brk
51B4: 00       brk
51B5: 00       brk
51B6: 00       brk
51B7: 00       brk
51B8: 00       brk
51B9: 00       brk
51BA: 00       brk
51BB: 00       brk
51BC: 00       brk
51BD: 00       brk
51BE: 00       brk
51BF: 00       brk
51C0: 00       brk
51C1: 00       brk
51C2: 00       brk
51C3: 00       brk
51C4: 00       brk
51C5: 00       brk
51C6: 00       brk
51C7: 00       brk
51C8: 00       brk
51C9: 00       brk
51CA: 00       brk
51CB: 00       brk
51CC: 00       brk
51CD: 00       brk
51CE: 00       brk
51CF: 00       brk
51D0: 00       brk
51D1: 00       brk
51D2: 00       brk
51D3: 00       brk
51D4: 00       brk
51D5: 00       brk
51D6: 00       brk
51D7: 00       brk
51D8: 00       brk
51D9: 00       brk
51DA: 00       brk
51DB: 00       brk
51DC: 00       brk
51DD: 00       brk
51DE: 00       brk
51DF: 00       brk
51E0: 00       brk
51E1: 00       brk
51E2: 00       brk
51E3: 00       brk
51E4: 00       brk
51E5: 00       brk
51E6: 00       brk
51E7: 00       brk
51E8: 00       brk
51E9: 00       brk
51EA: 00       brk
51EB: 00       brk
51EC: 00       brk
51ED: 00       brk
51EE: 00       brk
51EF: 00       brk
51F0: 00       brk
51F1: 00       brk
51F2: 00       brk
51F3: 00       brk
51F4: 00       brk
51F5: 00       brk
51F6: 00       brk
51F7: 00       brk
51F8: 00       brk
51F9: 00       brk
51FA: 00       brk
51FB: 00       brk
51FC: 00       brk
51FD: 00       brk
51FE: 00       brk
51FF: 00       brk
5200: 00       brk
5201: 00       brk
5202: 00       brk
5203: 00       brk
5204: 00       brk
5205: 00       brk
5206: 00       brk
5207: 00       brk
5208: 00       brk
5209: 00       brk
520A: 00       brk
520B: 00       brk
520C: 00       brk
520D: 00       brk
520E: 00       brk
520F: 00       brk
5210: 00       brk
5211: 00       brk
5212: 00       brk
5213: 00       brk
5214: 00       brk
5215: 00       brk
5216: 00       brk
5217: 00       brk
5218: 00       brk
5219: 00       brk
521A: 00       brk
521B: 00       brk
521C: 00       brk
521D: 00       brk
521E: 00       brk
521F: 00       brk
5220: 00       brk
5221: 00       brk
5222: 00       brk
5223: 00       brk
5224: 00       brk
5225: 00       brk
5226: 00       brk
5227: 00       brk
5228: 00       brk
5229: 00       brk
522A: 00       brk
522B: 00       brk
522C: 00       brk
522D: 00       brk
522E: 00       brk
522F: 00       brk
5230: 00       brk
5231: 00       brk
5232: 00       brk
5233: 00       brk
5234: 00       brk
5235: 00       brk
5236: 00       brk
5237: 00       brk
5238: 00       brk
5239: 00       brk
523A: 00       brk
523B: 00       brk
523C: 00       brk
523D: 00       brk
523E: 00       brk
523F: 00       brk
5240: 00       brk
5241: 00       brk
5242: 00       brk
5243: 00       brk
5244: 00       brk
5245: 00       brk
5246: 00       brk
5247: 00       brk
5248: 00       brk
5249: 00       brk
524A: 00       brk
524B: 00       brk
524C: 00       brk
524D: 00       brk
524E: 00       brk
524F: 00       brk
5250: 00       brk
5251: 00       brk
5252: 00       brk
5253: 00       brk
5254: 00       brk
5255: 00       brk
5256: 00       brk
5257: 00       brk
5258: 00       brk
5259: 00       brk
525A: 00       brk
525B: 00       brk
525C: 00       brk
525D: 00       brk
525E: 00       brk
525F: 00       brk
5260: 00       brk
5261: 00       brk
5262: 00       brk
5263: 00       brk
5264: 00       brk
5265: 00       brk
5266: 00       brk
5267: 00       brk
5268: 00       brk
5269: 00       brk
526A: 00       brk
526B: 00       brk
526C: 00       brk
526D: 00       brk
526E: 00       brk
526F: 00       brk
5270: 00       brk
5271: 00       brk
5272: 00       brk
5273: 00       brk
5274: 00       brk
5275: 00       brk
5276: 00       brk
5277: 00       brk
5278: 00       brk
5279: 00       brk
527A: 00       brk
527B: 00       brk
527C: 00       brk
527D: 00       brk
527E: 00       brk
527F: 00       brk
5280: 00       brk
5281: 00       brk
5282: 00       brk
5283: 00       brk
5284: 00       brk
5285: 00       brk
5286: 00       brk
5287: 00       brk
5288: 00       brk
5289: 00       brk
528A: 00       brk
528B: 00       brk
528C: 00       brk
528D: 00       brk
528E: 00       brk
528F: 00       brk
5290: 00       brk
5291: 00       brk
5292: 00       brk
5293: 00       brk
5294: 00       brk
5295: 00       brk
5296: 00       brk
5297: 00       brk
5298: 00       brk
5299: 00       brk
529A: 00       brk
529B: 00       brk
529C: 00       brk
529D: 00       brk
529E: 00       brk
529F: 00       brk
52A0: 00       brk
52A1: 00       brk
52A2: 00       brk
52A3: 00       brk
52A4: 00       brk
52A5: 00       brk
52A6: 00       brk
52A7: 00       brk
52A8: 00       brk
52A9: 00       brk
52AA: 00       brk
52AB: 00       brk
52AC: 00       brk
52AD: 00       brk
52AE: 00       brk
52AF: 00       brk
52B0: 00       brk
52B1: 00       brk
52B2: 00       brk
52B3: 00       brk
52B4: 00       brk
52B5: 00       brk
52B6: 00       brk
52B7: 00       brk
52B8: 00       brk
52B9: 00       brk
52BA: 00       brk
52BB: 00       brk
52BC: 00       brk
52BD: 00       brk
52BE: 00       brk
52BF: 00       brk
52C0: 00       brk
52C1: 00       brk
52C2: 00       brk
52C3: 00       brk
52C4: 00       brk
52C5: 00       brk
52C6: 00       brk
52C7: 00       brk
52C8: 00       brk
52C9: 00       brk
52CA: 00       brk
52CB: 00       brk
52CC: 00       brk
52CD: 00       brk
52CE: 00       brk
52CF: 00       brk
52D0: 00       brk
52D1: 00       brk
52D2: 00       brk
52D3: 00       brk
52D4: 00       brk
52D5: 00       brk
52D6: 00       brk
52D7: 00       brk
52D8: 00       brk
52D9: 00       brk
52DA: 00       brk
52DB: 00       brk
52DC: 00       brk
52DD: 00       brk
52DE: 00       brk
52DF: 00       brk
52E0: 00       brk
52E1: 00       brk
52E2: 00       brk
52E3: 00       brk
52E4: 00       brk
52E5: 00       brk
52E6: 00       brk
52E7: 00       brk
52E8: 00       brk
52E9: 00       brk
52EA: 00       brk
52EB: 00       brk
52EC: 00       brk
52ED: 00       brk
52EE: 00       brk
52EF: 00       brk
52F0: 00       brk
52F1: 00       brk
52F2: 00       brk
52F3: 00       brk
52F4: 00       brk
52F5: 00       brk
52F6: 00       brk
52F7: 00       brk
52F8: 00       brk
52F9: 00       brk
52FA: 00       brk
52FB: 00       brk
52FC: 00       brk
52FD: 00       brk
52FE: 00       brk
52FF: 00       brk
5300: 00       brk
5301: 00       brk
5302: 00       brk
5303: 00       brk
5304: 00       brk
5305: 00       brk
5306: 00       brk
5307: 00       brk
5308: 00       brk
5309: 00       brk
530A: 00       brk
530B: 00       brk
530C: 00       brk
530D: 00       brk
530E: 00       brk
530F: 00       brk
5310: 00       brk
5311: 00       brk
5312: 00       brk
5313: 00       brk
5314: 00       brk
5315: 00       brk
5316: 00       brk
5317: 00       brk
5318: 00       brk
5319: 00       brk
531A: 00       brk
531B: 00       brk
531C: 00       brk
531D: 00       brk
531E: 00       brk
531F: 00       brk
5320: 00       brk
5321: 00       brk
5322: 00       brk
5323: 00       brk
5324: 00       brk
5325: 00       brk
5326: 00       brk
5327: 00       brk
5328: 00       brk
5329: 00       brk
532A: 00       brk
532B: 00       brk
532C: 00       brk
532D: 00       brk
532E: 00       brk
532F: 00       brk
5330: 00       brk
5331: 00       brk
5332: 00       brk
5333: 00       brk
5334: 00       brk
5335: 00       brk
5336: 00       brk
5337: 00       brk
5338: 00       brk
5339: 00       brk
533A: 00       brk
533B: 00       brk
533C: 00       brk
533D: 00       brk
533E: 00       brk
533F: 00       brk
5340: 00       brk
5341: 00       brk
5342: 00       brk
5343: 00       brk
5344: 00       brk
5345: 00       brk
5346: 00       brk
5347: 00       brk
5348: 00       brk
5349: 00       brk
534A: 00       brk
534B: 00       brk
534C: 00       brk
534D: 00       brk
534E: 00       brk
534F: 00       brk
5350: 00       brk
5351: 00       brk
5352: 00       brk
5353: 00       brk
5354: 00       brk
5355: 00       brk
5356: 00       brk
5357: 00       brk
5358: 00       brk
5359: 00       brk
535A: 00       brk
535B: 00       brk
535C: 00       brk
535D: 00       brk
535E: 00       brk
535F: 00       brk
5360: 00       brk
5361: 00       brk
5362: 00       brk
5363: 00       brk
5364: 00       brk
5365: 00       brk
5366: 00       brk
5367: 00       brk
5368: 00       brk
5369: 00       brk
536A: 00       brk
536B: 00       brk
536C: 00       brk
536D: 00       brk
536E: 00       brk
536F: 00       brk
5370: 00       brk
5371: 00       brk
5372: 00       brk
5373: 00       brk
5374: 00       brk
5375: 00       brk
5376: 00       brk
5377: 00       brk
5378: 00       brk
5379: 00       brk
537A: 00       brk
537B: 00       brk
537C: 00       brk
537D: 00       brk
537E: 00       brk
537F: 00       brk
5380: 00       brk
5381: 00       brk
5382: 00       brk
5383: 00       brk
5384: 00       brk
5385: 00       brk
5386: 00       brk
5387: 00       brk
5388: 00       brk
5389: 00       brk
538A: 00       brk
538B: 00       brk
538C: 00       brk
538D: 00       brk
538E: 00       brk
538F: 00       brk
5390: 00       brk
5391: 00       brk
5392: 00       brk
5393: 00       brk
5394: 00       brk
5395: 00       brk
5396: 00       brk
5397: 00       brk
5398: 00       brk
5399: 00       brk
539A: 00       brk
539B: 00       brk
539C: 00       brk
539D: 00       brk
539E: 00       brk
539F: 00       brk
53A0: 00       brk
53A1: 00       brk
53A2: 00       brk
53A3: 00       brk
53A4: 00       brk
53A5: 00       brk
53A6: 00       brk
53A7: 00       brk
53A8: 00       brk
53A9: 00       brk
53AA: 00       brk
53AB: 00       brk
53AC: 00       brk
53AD: 00       brk
53AE: 00       brk
53AF: 00       brk
53B0: 00       brk
53B1: 00       brk
53B2: 00       brk
53B3: 00       brk
53B4: 00       brk
53B5: 00       brk
53B6: 00       brk
53B7: 00       brk
53B8: 00       brk
53B9: 00       brk
53BA: 00       brk
53BB: 00       brk
53BC: 00       brk
53BD: 00       brk
53BE: 00       brk
53BF: 00       brk
53C0: 00       brk
53C1: 00       brk
53C2: 00       brk
53C3: 00       brk
53C4: 00       brk
53C5: 00       brk
53C6: 00       brk
53C7: 00       brk
53C8: 00       brk
53C9: 00       brk
53CA: 00       brk
53CB: 00       brk
53CC: 00       brk
53CD: 00       brk
53CE: 00       brk
53CF: 00       brk
53D0: 00       brk
53D1: 00       brk
53D2: 00       brk
53D3: 00       brk
53D4: 00       brk
53D5: 00       brk
53D6: 00       brk
53D7: 00       brk
53D8: 00       brk
53D9: 00       brk
53DA: 00       brk
53DB: 00       brk
53DC: 00       brk
53DD: 00       brk
53DE: 00       brk
53DF: 00       brk
53E0: 00       brk
53E1: 00       brk
53E2: 00       brk
53E3: 00       brk
53E4: 00       brk
53E5: 00       brk
53E6: 00       brk
53E7: 00       brk
53E8: 00       brk
53E9: 00       brk
53EA: 00       brk
53EB: 00       brk
53EC: 00       brk
53ED: 00       brk
53EE: 00       brk
53EF: 00       brk
53F0: 00       brk
53F1: 00       brk
53F2: 00       brk
53F3: 00       brk
53F4: 00       brk
53F5: 00       brk
53F6: 00       brk
53F7: 00       brk
53F8: 00       brk
53F9: 00       brk
53FA: 00       brk
53FB: 00       brk
53FC: 00       brk
53FD: 00       brk
53FE: 00       brk
53FF: 00       brk
5400: 00       brk
5401: 00       brk
5402: 00       brk
5403: 00       brk
5404: 00       brk
5405: 00       brk
5406: 00       brk
5407: 00       brk
5408: 00       brk
5409: 00       brk
540A: 00       brk
540B: 00       brk
540C: 00       brk
540D: 00       brk
540E: 00       brk
540F: 00       brk
5410: 00       brk
5411: 00       brk
5412: 00       brk
5413: 00       brk
5414: 00       brk
5415: 00       brk
5416: 00       brk
5417: 00       brk
5418: 00       brk
5419: 00       brk
541A: 00       brk
541B: 00       brk
541C: 00       brk
541D: 00       brk
541E: 00       brk
541F: 00       brk
5420: 00       brk
5421: 00       brk
5422: 00       brk
5423: 00       brk
5424: 00       brk
5425: 00       brk
5426: 00       brk
5427: 00       brk
5428: 00       brk
5429: 00       brk
542A: 00       brk
542B: 00       brk
542C: 00       brk
542D: 00       brk
542E: 00       brk
542F: 00       brk
5430: 00       brk
5431: 00       brk
5432: 00       brk
5433: 00       brk
5434: 00       brk
5435: 00       brk
5436: 00       brk
5437: 00       brk
5438: 00       brk
5439: 00       brk
543A: 00       brk
543B: 00       brk
543C: 00       brk
543D: 00       brk
543E: 00       brk
543F: 00       brk
5440: 00       brk
5441: 00       brk
5442: 00       brk
5443: 00       brk
5444: 00       brk
5445: 00       brk
5446: 00       brk
5447: 00       brk
5448: 00       brk
5449: 00       brk
544A: 00       brk
544B: 00       brk
544C: 00       brk
544D: 00       brk
544E: 00       brk
544F: 00       brk
5450: 00       brk
5451: 00       brk
5452: 00       brk
5453: 00       brk
5454: 00       brk
5455: 00       brk
5456: 00       brk
5457: 00       brk
5458: 00       brk
5459: 00       brk
545A: 00       brk
545B: 00       brk
545C: 00       brk
545D: 00       brk
545E: 00       brk
545F: 00       brk
5460: 00       brk
5461: 00       brk
5462: 00       brk
5463: 00       brk
5464: 00       brk
5465: 00       brk
5466: 00       brk
5467: 00       brk
5468: 00       brk
5469: 00       brk
546A: 00       brk
546B: 00       brk
546C: 00       brk
546D: 00       brk
546E: 00       brk
546F: 00       brk
5470: 00       brk
5471: 00       brk
5472: 00       brk
5473: 00       brk
5474: 00       brk
5475: 00       brk
5476: 00       brk
5477: 00       brk
5478: 00       brk
5479: 00       brk
547A: 00       brk
547B: 00       brk
547C: 00       brk
547D: 00       brk
547E: 00       brk
547F: 00       brk
5480: 00       brk
5481: 00       brk
5482: 00       brk
5483: 00       brk
5484: 00       brk
5485: 00       brk
5486: 00       brk
5487: 00       brk
5488: 00       brk
5489: 00       brk
548A: 00       brk
548B: 00       brk
548C: 00       brk
548D: 00       brk
548E: 00       brk
548F: 00       brk
5490: 00       brk
5491: 00       brk
5492: 00       brk
5493: 00       brk
5494: 00       brk
5495: 00       brk
5496: 00       brk
5497: 00       brk
5498: 00       brk
5499: 00       brk
549A: 00       brk
549B: 00       brk
549C: 00       brk
549D: 00       brk
549E: 00       brk
549F: 00       brk
54A0: 00       brk
54A1: 00       brk
54A2: 00       brk
54A3: 00       brk
54A4: 00       brk
54A5: 00       brk
54A6: 00       brk
54A7: 00       brk
54A8: 00       brk
54A9: 00       brk
54AA: 00       brk
54AB: 00       brk
54AC: 00       brk
54AD: 00       brk
54AE: 00       brk
54AF: 00       brk
54B0: 00       brk
54B1: 00       brk
54B2: 00       brk
54B3: 00       brk
54B4: 00       brk
54B5: 00       brk
54B6: 00       brk
54B7: 00       brk
54B8: 00       brk
54B9: 00       brk
54BA: 00       brk
54BB: 00       brk
54BC: 00       brk
54BD: 00       brk
54BE: 00       brk
54BF: 00       brk
54C0: 00       brk
54C1: 00       brk
54C2: 00       brk
54C3: 00       brk
54C4: 00       brk
54C5: 00       brk
54C6: 00       brk
54C7: 00       brk
54C8: 00       brk
54C9: 00       brk
54CA: 00       brk
54CB: 00       brk
54CC: 00       brk
54CD: 00       brk
54CE: 00       brk
54CF: 00       brk
54D0: 00       brk
54D1: 00       brk
54D2: 00       brk
54D3: 00       brk
54D4: 00       brk
54D5: 00       brk
54D6: 00       brk
54D7: 00       brk
54D8: 00       brk
54D9: 00       brk
54DA: 00       brk
54DB: 00       brk
54DC: 00       brk
54DD: 00       brk
54DE: 00       brk
54DF: 00       brk
54E0: 00       brk
54E1: 00       brk
54E2: 00       brk
54E3: 00       brk
54E4: 00       brk
54E5: 00       brk
54E6: 00       brk
54E7: 00       brk
54E8: 00       brk
54E9: 00       brk
54EA: 00       brk
54EB: 00       brk
54EC: 00       brk
54ED: 00       brk
54EE: 00       brk
54EF: 00       brk
54F0: 00       brk
54F1: 00       brk
54F2: 00       brk
54F3: 00       brk
54F4: 00       brk
54F5: 00       brk
54F6: 00       brk
54F7: 00       brk
54F8: 00       brk
54F9: 00       brk
54FA: 00       brk
54FB: 00       brk
54FC: 00       brk
54FD: 00       brk
54FE: 00       brk
54FF: 00       brk
5500: 00       brk
5501: 00       brk
5502: 00       brk
5503: 00       brk
5504: 00       brk
5505: 00       brk
5506: 00       brk
5507: 00       brk
5508: 00       brk
5509: 00       brk
550A: 00       brk
550B: 00       brk
550C: 00       brk
550D: 00       brk
550E: 00       brk
550F: 00       brk
5510: 00       brk
5511: 00       brk
5512: 00       brk
5513: 00       brk
5514: 00       brk
5515: 00       brk
5516: 00       brk
5517: 00       brk
5518: 00       brk
5519: 00       brk
551A: 00       brk
551B: 00       brk
551C: 00       brk
551D: 00       brk
551E: 00       brk
551F: 00       brk
5520: 00       brk
5521: 00       brk
5522: 00       brk
5523: 00       brk
5524: 00       brk
5525: 00       brk
5526: 00       brk
5527: 00       brk
5528: 00       brk
5529: 00       brk
552A: 00       brk
552B: 00       brk
552C: 00       brk
552D: 00       brk
552E: 00       brk
552F: 00       brk
5530: 00       brk
5531: 00       brk
5532: 00       brk
5533: 00       brk
5534: 00       brk
5535: 00       brk
5536: 00       brk
5537: 00       brk
5538: 00       brk
5539: 00       brk
553A: 00       brk
553B: 00       brk
553C: 00       brk
553D: 00       brk
553E: 00       brk
553F: 00       brk
5540: 00       brk
5541: 00       brk
5542: 00       brk
5543: 00       brk
5544: 00       brk
5545: 00       brk
5546: 00       brk
5547: 00       brk
5548: 00       brk
5549: 00       brk
554A: 00       brk
554B: 00       brk
554C: 00       brk
554D: 00       brk
554E: 00       brk
554F: 00       brk
5550: 00       brk
5551: 00       brk
5552: 00       brk
5553: 00       brk
5554: 00       brk
5555: 00       brk
5556: 00       brk
5557: 00       brk
5558: 00       brk
5559: 00       brk
555A: 00       brk
555B: 00       brk
555C: 00       brk
555D: 00       brk
555E: 00       brk
555F: 00       brk
5560: 00       brk
5561: 00       brk
5562: 00       brk
5563: 00       brk
5564: 00       brk
5565: 00       brk
5566: 00       brk
5567: 00       brk
5568: 00       brk
5569: 00       brk
556A: 00       brk
556B: 00       brk
556C: 00       brk
556D: 00       brk
556E: 00       brk
556F: 00       brk
5570: 00       brk
5571: 00       brk
5572: 00       brk
5573: 00       brk
5574: 00       brk
5575: 00       brk
5576: 00       brk
5577: 00       brk
5578: 00       brk
5579: 00       brk
557A: 00       brk
557B: 00       brk
557C: 00       brk
557D: 00       brk
557E: 00       brk
557F: 00       brk
5580: 00       brk
5581: 00       brk
5582: 00       brk
5583: 00       brk
5584: 00       brk
5585: 00       brk
5586: 00       brk
5587: 00       brk
5588: 00       brk
5589: 00       brk
558A: 00       brk
558B: 00       brk
558C: 00       brk
558D: 00       brk
558E: 00       brk
558F: 00       brk
5590: 00       brk
5591: 00       brk
5592: 00       brk
5593: 00       brk
5594: 00       brk
5595: 00       brk
5596: 00       brk
5597: 00       brk
5598: 00       brk
5599: 00       brk
559A: 00       brk
559B: 00       brk
559C: 00       brk
559D: 00       brk
559E: 00       brk
559F: 00       brk
55A0: 00       brk
55A1: 00       brk
55A2: 00       brk
55A3: 00       brk
55A4: 00       brk
55A5: 00       brk
55A6: 00       brk
55A7: 00       brk
55A8: 00       brk
55A9: 00       brk
55AA: 00       brk
55AB: 00       brk
55AC: 00       brk
55AD: 00       brk
55AE: 00       brk
55AF: 00       brk
55B0: 00       brk
55B1: 00       brk
55B2: 00       brk
55B3: 00       brk
55B4: 00       brk
55B5: 00       brk
55B6: 00       brk
55B7: 00       brk
55B8: 00       brk
55B9: 00       brk
55BA: 00       brk
55BB: 00       brk
55BC: 00       brk
55BD: 00       brk
55BE: 00       brk
55BF: 00       brk
55C0: 00       brk
55C1: 00       brk
55C2: 00       brk
55C3: 00       brk
55C4: 00       brk
55C5: 00       brk
55C6: 00       brk
55C7: 00       brk
55C8: 00       brk
55C9: 00       brk
55CA: 00       brk
55CB: 00       brk
55CC: 00       brk
55CD: 00       brk
55CE: 00       brk
55CF: 00       brk
55D0: 00       brk
55D1: 00       brk
55D2: 00       brk
55D3: 00       brk
55D4: 00       brk
55D5: 00       brk
55D6: 00       brk
55D7: 00       brk
55D8: 00       brk
55D9: 00       brk
55DA: 00       brk
55DB: 00       brk
55DC: 00       brk
55DD: 00       brk
55DE: 00       brk
55DF: 00       brk
55E0: 00       brk
55E1: 00       brk
55E2: 00       brk
55E3: 00       brk
55E4: 00       brk
55E5: 00       brk
55E6: 00       brk
55E7: 00       brk
55E8: 00       brk
55E9: 00       brk
55EA: 00       brk
55EB: 00       brk
55EC: 00       brk
55ED: 00       brk
55EE: 00       brk
55EF: 00       brk
55F0: 00       brk
55F1: 00       brk
55F2: 00       brk
55F3: 00       brk
55F4: 00       brk
55F5: 00       brk
55F6: 00       brk
55F7: 00       brk
55F8: 00       brk
55F9: 00       brk
55FA: 00       brk
55FB: 00       brk
55FC: 00       brk
55FD: 00       brk
55FE: 00       brk
55FF: 00       brk
5600: 00       brk
5601: 00       brk
5602: 00       brk
5603: 00       brk
5604: 00       brk
5605: 00       brk
5606: 00       brk
5607: 00       brk
5608: 00       brk
5609: 00       brk
560A: 00       brk
560B: 00       brk
560C: 00       brk
560D: 00       brk
560E: 00       brk
560F: 00       brk
5610: 00       brk
5611: 00       brk
5612: 00       brk
5613: 00       brk
5614: 00       brk
5615: 00       brk
5616: 00       brk
5617: 00       brk
5618: 00       brk
5619: 00       brk
561A: 00       brk
561B: 00       brk
561C: 00       brk
561D: 00       brk
561E: 00       brk
561F: 00       brk
5620: 00       brk
5621: 00       brk
5622: 00       brk
5623: 00       brk
5624: 00       brk
5625: 00       brk
5626: 00       brk
5627: 00       brk
5628: 00       brk
5629: 00       brk
562A: 00       brk
562B: 00       brk
562C: 00       brk
562D: 00       brk
562E: 00       brk
562F: 00       brk
5630: 00       brk
5631: 00       brk
5632: 00       brk
5633: 00       brk
5634: 00       brk
5635: 00       brk
5636: 00       brk
5637: 00       brk
5638: 00       brk
5639: 00       brk
563A: 00       brk
563B: 00       brk
563C: 00       brk
563D: 00       brk
563E: 00       brk
563F: 00       brk
5640: 00       brk
5641: 00       brk
5642: 00       brk
5643: 00       brk
5644: 00       brk
5645: 00       brk
5646: 00       brk
5647: 00       brk
5648: 00       brk
5649: 00       brk
564A: 00       brk
564B: 00       brk
564C: 00       brk
564D: 00       brk
564E: 00       brk
564F: 00       brk
5650: 00       brk
5651: 00       brk
5652: 00       brk
5653: 00       brk
5654: 00       brk
5655: 00       brk
5656: 00       brk
5657: 00       brk
5658: 00       brk
5659: 00       brk
565A: 00       brk
565B: 00       brk
565C: 00       brk
565D: 00       brk
565E: 00       brk
565F: 00       brk
5660: 00       brk
5661: 00       brk
5662: 00       brk
5663: 00       brk
5664: 00       brk
5665: 00       brk
5666: 00       brk
5667: 00       brk
5668: 00       brk
5669: 00       brk
566A: 00       brk
566B: 00       brk
566C: 00       brk
566D: 00       brk
566E: 00       brk
566F: 00       brk
5670: 00       brk
5671: 00       brk
5672: 00       brk
5673: 00       brk
5674: 00       brk
5675: 00       brk
5676: 00       brk
5677: 00       brk
5678: 00       brk
5679: 00       brk
567A: 00       brk
567B: 00       brk
567C: 00       brk
567D: 00       brk
567E: 00       brk
567F: 00       brk
5680: 00       brk
5681: 00       brk
5682: 00       brk
5683: 00       brk
5684: 00       brk
5685: 00       brk
5686: 00       brk
5687: 00       brk
5688: 00       brk
5689: 00       brk
568A: 00       brk
568B: 00       brk
568C: 00       brk
568D: 00       brk
568E: 00       brk
568F: 00       brk
5690: 00       brk
5691: 00       brk
5692: 00       brk
5693: 00       brk
5694: 00       brk
5695: 00       brk
5696: 00       brk
5697: 00       brk
5698: 00       brk
5699: 00       brk
569A: 00       brk
569B: 00       brk
569C: 00       brk
569D: 00       brk
569E: 00       brk
569F: 00       brk
56A0: 00       brk
56A1: 00       brk
56A2: 00       brk
56A3: 00       brk
56A4: 00       brk
56A5: 00       brk
56A6: 00       brk
56A7: 00       brk
56A8: 00       brk
56A9: 00       brk
56AA: 00       brk
56AB: 00       brk
56AC: 00       brk
56AD: 00       brk
56AE: 00       brk
56AF: 00       brk
56B0: 00       brk
56B1: 00       brk
56B2: 00       brk
56B3: 00       brk
56B4: 00       brk
56B5: 00       brk
56B6: 00       brk
56B7: 00       brk
56B8: 00       brk
56B9: 00       brk
56BA: 00       brk
56BB: 00       brk
56BC: 00       brk
56BD: 00       brk
56BE: 00       brk
56BF: 00       brk
56C0: 00       brk
56C1: 00       brk
56C2: 00       brk
56C3: 00       brk
56C4: 00       brk
56C5: 00       brk
56C6: 00       brk
56C7: 00       brk
56C8: 00       brk
56C9: 00       brk
56CA: 00       brk
56CB: 00       brk
56CC: 00       brk
56CD: 00       brk
56CE: 00       brk
56CF: 00       brk
56D0: 00       brk
56D1: 00       brk
56D2: 00       brk
56D3: 00       brk
56D4: 00       brk
56D5: 00       brk
56D6: 00       brk
56D7: 00       brk
56D8: 00       brk
56D9: 00       brk
56DA: 00       brk
56DB: 00       brk
56DC: 00       brk
56DD: 00       brk
56DE: 00       brk
56DF: 00       brk
56E0: 00       brk
56E1: 00       brk
56E2: 00       brk
56E3: 00       brk
56E4: 00       brk
56E5: 00       brk
56E6: 00       brk
56E7: 00       brk
56E8: 00       brk
56E9: 00       brk
56EA: 00       brk
56EB: 00       brk
56EC: 00       brk
56ED: 00       brk
56EE: 00       brk
56EF: 00       brk
56F0: 00       brk
56F1: 00       brk
56F2: 00       brk
56F3: 00       brk
56F4: 00       brk
56F5: 00       brk
56F6: 00       brk
56F7: 00       brk
56F8: 00       brk
56F9: 00       brk
56FA: 00       brk
56FB: 00       brk
56FC: 00       brk
56FD: 00       brk
56FE: 00       brk
56FF: 00       brk
5700: 00       brk
5701: 00       brk
5702: 00       brk
5703: 00       brk
5704: 00       brk
5705: 00       brk
5706: 00       brk
5707: 00       brk
5708: 00       brk
5709: 00       brk
570A: 00       brk
570B: 00       brk
570C: 00       brk
570D: 00       brk
570E: 00       brk
570F: 00       brk
5710: 00       brk
5711: 00       brk
5712: 00       brk
5713: 00       brk
5714: 00       brk
5715: 00       brk
5716: 00       brk
5717: 00       brk
5718: 00       brk
5719: 00       brk
571A: 00       brk
571B: 00       brk
571C: 00       brk
571D: 00       brk
571E: 00       brk
571F: 00       brk
5720: 00       brk
5721: 00       brk
5722: 00       brk
5723: 00       brk
5724: 00       brk
5725: 00       brk
5726: 00       brk
5727: 00       brk
5728: 00       brk
5729: 00       brk
572A: 00       brk
572B: 00       brk
572C: 00       brk
572D: 00       brk
572E: 00       brk
572F: 00       brk
5730: 00       brk
5731: 00       brk
5732: 00       brk
5733: 00       brk
5734: 00       brk
5735: 00       brk
5736: 00       brk
5737: 00       brk
5738: 00       brk
5739: 00       brk
573A: 00       brk
573B: 00       brk
573C: 00       brk
573D: 00       brk
573E: 00       brk
573F: 00       brk
5740: 00       brk
5741: 00       brk
5742: 00       brk
5743: 00       brk
5744: 00       brk
5745: 00       brk
5746: 00       brk
5747: 00       brk
5748: 00       brk
5749: 00       brk
574A: 00       brk
574B: 00       brk
574C: 00       brk
574D: 00       brk
574E: 00       brk
574F: 00       brk
5750: 00       brk
5751: 00       brk
5752: 00       brk
5753: 00       brk
5754: 00       brk
5755: 00       brk
5756: 00       brk
5757: 00       brk
5758: 00       brk
5759: 00       brk
575A: 00       brk
575B: 00       brk
575C: 00       brk
575D: 00       brk
575E: 00       brk
575F: 00       brk
5760: 00       brk
5761: 00       brk
5762: 00       brk
5763: 00       brk
5764: 00       brk
5765: 00       brk
5766: 00       brk
5767: 00       brk
5768: 00       brk
5769: 00       brk
576A: 00       brk
576B: 00       brk
576C: 00       brk
576D: 00       brk
576E: 00       brk
576F: 00       brk
5770: 00       brk
5771: 00       brk
5772: 00       brk
5773: 00       brk
5774: 00       brk
5775: 00       brk
5776: 00       brk
5777: 00       brk
5778: 00       brk
5779: 00       brk
577A: 00       brk
577B: 00       brk
577C: 00       brk
577D: 00       brk
577E: 00       brk
577F: 00       brk
5780: 00       brk
5781: 00       brk
5782: 00       brk
5783: 00       brk
5784: 00       brk
5785: 00       brk
5786: 00       brk
5787: 00       brk
5788: 00       brk
5789: 00       brk
578A: 00       brk
578B: 00       brk
578C: 00       brk
578D: 00       brk
578E: 00       brk
578F: 00       brk
5790: 00       brk
5791: 00       brk
5792: 00       brk
5793: 00       brk
5794: 00       brk
5795: 00       brk
5796: 00       brk
5797: 00       brk
5798: 00       brk
5799: 00       brk
579A: 00       brk
579B: 00       brk
579C: 00       brk
579D: 00       brk
579E: 00       brk
579F: 00       brk
57A0: 00       brk
57A1: 00       brk
57A2: 00       brk
57A3: 00       brk
57A4: 00       brk
57A5: 00       brk
57A6: 00       brk
57A7: 00       brk
57A8: 00       brk
57A9: 00       brk
57AA: 00       brk
57AB: 00       brk
57AC: 00       brk
57AD: 00       brk
57AE: 00       brk
57AF: 00       brk
57B0: 00       brk
57B1: 00       brk
57B2: 00       brk
57B3: 00       brk
57B4: 00       brk
57B5: 00       brk
57B6: 00       brk
57B7: 00       brk
57B8: 00       brk
57B9: 00       brk
57BA: 00       brk
57BB: 00       brk
57BC: 00       brk
57BD: 00       brk
57BE: 00       brk
57BF: 00       brk
57C0: 00       brk
57C1: 00       brk
57C2: 00       brk
57C3: 00       brk
57C4: 00       brk
57C5: 00       brk
57C6: 00       brk
57C7: 00       brk
57C8: 00       brk
57C9: 00       brk
57CA: 00       brk
57CB: 00       brk
57CC: 00       brk
57CD: 00       brk
57CE: 00       brk
57CF: 00       brk
57D0: 00       brk
57D1: 00       brk
57D2: 00       brk
57D3: 00       brk
57D4: 00       brk
57D5: 00       brk
57D6: 00       brk
57D7: 00       brk
57D8: 00       brk
57D9: 00       brk
57DA: 00       brk
57DB: 00       brk
57DC: 00       brk
57DD: 00       brk
57DE: 00       brk
57DF: 00       brk
57E0: 00       brk
57E1: 00       brk
57E2: 00       brk
57E3: 00       brk
57E4: 00       brk
57E5: 00       brk
57E6: 00       brk
57E7: 00       brk
57E8: 00       brk
57E9: 00       brk
57EA: 00       brk
57EB: 00       brk
57EC: 00       brk
57ED: 00       brk
57EE: 00       brk
57EF: 00       brk
57F0: 00       brk
57F1: 00       brk
57F2: 00       brk
57F3: 00       brk
57F4: 00       brk
57F5: 00       brk
57F6: 00       brk
57F7: 00       brk
57F8: 00       brk
57F9: 00       brk
57FA: 00       brk
57FB: 00       brk
57FC: 00       brk
57FD: 00       brk
57FE: 00       brk
57FF: 00       brk
5800: 00       brk
5801: 00       brk
5802: 00       brk
5803: 00       brk
5804: 00       brk
5805: 00       brk
5806: 00       brk
5807: 00       brk
5808: 00       brk
5809: 00       brk
580A: 00       brk
580B: 00       brk
580C: 00       brk
580D: 00       brk
580E: 00       brk
580F: 00       brk
5810: 00       brk
5811: 00       brk
5812: 00       brk
5813: 00       brk
5814: 00       brk
5815: 00       brk
5816: 00       brk
5817: 00       brk
5818: 00       brk
5819: 00       brk
581A: 00       brk
581B: 00       brk
581C: 00       brk
581D: 00       brk
581E: 00       brk
581F: 00       brk
5820: 00       brk
5821: 00       brk
5822: 00       brk
5823: 00       brk
5824: 00       brk
5825: 00       brk
5826: 00       brk
5827: 00       brk
5828: 00       brk
5829: 00       brk
582A: 00       brk
582B: 00       brk
582C: 00       brk
582D: 00       brk
582E: 00       brk
582F: 00       brk
5830: 00       brk
5831: 00       brk
5832: 00       brk
5833: 00       brk
5834: 00       brk
5835: 00       brk
5836: 00       brk
5837: 00       brk
5838: 00       brk
5839: 00       brk
583A: 00       brk
583B: 00       brk
583C: 00       brk
583D: 00       brk
583E: 00       brk
583F: 00       brk
5840: 00       brk
5841: 00       brk
5842: 00       brk
5843: 00       brk
5844: 00       brk
5845: 00       brk
5846: 00       brk
5847: 00       brk
5848: 00       brk
5849: 00       brk
584A: 00       brk
584B: 00       brk
584C: 00       brk
584D: 00       brk
584E: 00       brk
584F: 00       brk
5850: 00       brk
5851: 00       brk
5852: 00       brk
5853: 00       brk
5854: 00       brk
5855: 00       brk
5856: 00       brk
5857: 00       brk
5858: 00       brk
5859: 00       brk
585A: 00       brk
585B: 00       brk
585C: 00       brk
585D: 00       brk
585E: 00       brk
585F: 00       brk
5860: 00       brk
5861: 00       brk
5862: 00       brk
5863: 00       brk
5864: 00       brk
5865: 00       brk
5866: 00       brk
5867: 00       brk
5868: 00       brk
5869: 00       brk
586A: 00       brk
586B: 00       brk
586C: 00       brk
586D: 00       brk
586E: 00       brk
586F: 00       brk
5870: 00       brk
5871: 00       brk
5872: 00       brk
5873: 00       brk
5874: 00       brk
5875: 00       brk
5876: 00       brk
5877: 00       brk
5878: 00       brk
5879: 00       brk
587A: 00       brk
587B: 00       brk
587C: 00       brk
587D: 00       brk
587E: 00       brk
587F: 00       brk
5880: 00       brk
5881: 00       brk
5882: 00       brk
5883: 00       brk
5884: 00       brk
5885: 00       brk
5886: 00       brk
5887: 00       brk
5888: 00       brk
5889: 00       brk
588A: 00       brk
588B: 00       brk
588C: 00       brk
588D: 00       brk
588E: 00       brk
588F: 00       brk
5890: 00       brk
5891: 00       brk
5892: 00       brk
5893: 00       brk
5894: 00       brk
5895: 00       brk
5896: 00       brk
5897: 00       brk
5898: 00       brk
5899: 00       brk
589A: 00       brk
589B: 00       brk
589C: 00       brk
589D: 00       brk
589E: 00       brk
589F: 00       brk
58A0: 00       brk
58A1: 00       brk
58A2: 00       brk
58A3: 00       brk
58A4: 00       brk
58A5: 00       brk
58A6: 00       brk
58A7: 00       brk
58A8: 00       brk
58A9: 00       brk
58AA: 00       brk
58AB: 00       brk
58AC: 00       brk
58AD: 00       brk
58AE: 00       brk
58AF: 00       brk
58B0: 00       brk
58B1: 00       brk
58B2: 00       brk
58B3: 10 10    bpl $58c5
58B5: 10 10    bpl $58c7
58B7: 10 00    bpl $58b9
58B9: 00       brk
58BA: 30 20    bmi $58dc
58BC: 20 20 20 jsr $2020
58BF: 20 00 00 jsr $0000
58C2: 30 10    bmi $58d4
58C4: 00       brk
58C5: 30 10    bmi $58d7
58C7: 10 00    bpl $58c9
58C9: 00       brk
58CA: 00       brk
58CB: 20 00 20 jsr $2000
58CE: 20 20 00 jsr $0020
58D1: 00       brk
58D2: 00       brk
58D3: 00       brk
58D4: 00       brk
58D5: 10 10    bpl $58e7
58D7: 10 00    bpl $58d9
58D9: 00       brk
58DA: 00       brk
58DB: 00       brk
58DC: 30 20    bmi $58fe
58DE: 30 20    bmi $5900
58E0: 00       brk
58E1: 00       brk
58E2: 00       brk
58E3: 00       brk
58E4: 30 10    bmi $58f6
58E6: 30 00    bmi $58e8
58E8: 00       brk
58E9: 00       brk
58EA: 00       brk
58EB: 00       brk
58EC: 00       brk
58ED: 20 20 00 jsr $0020
58F0: 00       brk
58F1: 00       brk
58F2: 00       brk
58F3: 00       brk
58F4: 10 00    bpl $58f6
58F6: 00       brk
58F7: 00       brk
58F8: 00       brk
58F9: 00       brk
58FA: 30 30    bmi $592c
58FC: 30 30    bmi $592e
58FE: 30 30    bmi $5930
5900: 00       brk
5901: 00       brk
5902: 00       brk
5903: 00       brk
5904: 30 00    bmi $5906
5906: 00       brk
5907: 00       brk
5908: 00       brk
5909: 00       brk
590A: 00       brk
590B: 00       brk
590C: 00       brk
590D: 00       brk
590E: 00       brk
590F: 00       brk
5910: 00       brk
5911: 00       brk
5912: 00       brk
5913: 00       brk
5914: 00       brk
5915: 00       brk
5916: 00       brk
5917: 00       brk
5918: 00       brk
5919: 00       brk
591A: 00       brk
591B: 00       brk
591C: 00       brk
591D: 00       brk
591E: 00       brk
591F: 00       brk
5920: 00       brk
5921: 00       brk
5922: 00       brk
5923: 00       brk
5924: 00       brk
5925: 00       brk
5926: 00       brk
5927: 00       brk
5928: 00       brk
5929: 00       brk
592A: 00       brk
592B: 00       brk
592C: 00       brk
592D: 00       brk
592E: 00       brk
592F: 00       brk
5930: 00       brk
5931: 00       brk
5932: 10 10    bpl $5944
5934: 10 10    bpl $5946
5936: 10 10    bpl $5948
5938: 00       brk
5939: 00       brk
593A: 30 20    bmi $595c
593C: 20 30 20 jsr $2030
593F: 20 00 00 jsr $0000
5942: 30 10    bmi $5954
5944: 10 30    bpl $5976
5946: 30 10    bmi $5958
5948: 00       brk
5949: 00       brk
594A: 00       brk
594B: 20 20 00 jsr $0020
594E: 00       brk
594F: 20 00 00 jsr $0000
5952: 00       brk
5953: 00       brk
5954: 00       brk
5955: 10 10    bpl $5967
5957: 10 00    bpl $5959
5959: 00       brk
595A: 00       brk
595B: 00       brk
595C: 30 20    bmi $597e
595E: 30 20    bmi $5980
5960: 00       brk
5961: 00       brk
5962: 00       brk
5963: 00       brk
5964: 30 10    bmi $5976
5966: 30 00    bmi $5968
5968: 00       brk
5969: 00       brk
596A: 00       brk
596B: 00       brk
596C: 00       brk
596D: 20 20 00 jsr $0020
5970: 00       brk
5971: 00       brk
5972: 00       brk
5973: 00       brk
5974: 00       brk
5975: 00       brk
5976: 00       brk
5977: 10 00    bpl $5979
5979: 00       brk
597A: 00       brk
597B: 00       brk
597C: 30 00    bmi $597e
597E: 30 20    bmi $59a0
5980: 00       brk
5981: 00       brk
5982: 00       brk
5983: 00       brk
5984: 30 10    bmi $5996
5986: 30 10    bmi $5998
5988: 00       brk
5989: 00       brk
598A: 00       brk
598B: 00       brk
598C: 00       brk
598D: 20 20 20 jsr $2020
5990: 00       brk
5991: 00       brk
5992: 00       brk
5993: 00       brk
5994: 00       brk
5995: 10 10    bpl $59a7
5997: 10 00    bpl $5999
5999: 00       brk
599A: 00       brk
599B: 00       brk
599C: 30 20    bmi $59be
599E: 20 20 00 jsr $0020
59A1: 00       brk
59A2: 10 10    bpl $59b4
59A4: 30 10    bmi $59b6
59A6: 10 10    bpl $59b8
59A8: 00       brk
59A9: 00       brk
59AA: 20 20 20 jsr $2020
59AD: 20 20 20 jsr $2020
59B0: 00       brk
59B1: 00       brk
59B2: 00       brk
59B3: 00       brk
59B4: 10 10    bpl $59c6
59B6: 10 00    bpl $59b8
59B8: 00       brk
59B9: 00       brk
59BA: 00       brk
59BB: 00       brk
59BC: 20 20 20 jsr $2020
59BF: 30 00    bmi $59c1
59C1: 00       brk
59C2: 00       brk
59C3: 00       brk
59C4: 10 10    bpl $59d6
59C6: 10 30    bpl $59f8
59C8: 00       brk
59C9: 00       brk
59CA: 00       brk
59CB: 00       brk
59CC: 20 20 20 jsr $2020
59CF: 20 00 00 jsr $0000
59D2: 00       brk
59D3: 00       brk
59D4: 00       brk
59D5: 00       brk
59D6: 00       brk
59D7: 00       brk
59D8: 00       brk
59D9: 00       brk
59DA: 00       brk
59DB: 00       brk
59DC: 00       brk
59DD: 00       brk
59DE: 00       brk
59DF: 00       brk
59E0: 00       brk
59E1: 00       brk
59E2: 00       brk
59E3: 00       brk
59E4: 00       brk
59E5: 00       brk
59E6: 00       brk
59E7: 00       brk
59E8: 00       brk
59E9: 00       brk
59EA: 00       brk
59EB: 00       brk
59EC: 00       brk
59ED: 00       brk
59EE: 00       brk
59EF: 00       brk
59F0: 00       brk
59F1: 00       brk
59F2: 00       brk
59F3: 00       brk
59F4: 00       brk
59F5: 00       brk
59F6: 00       brk
59F7: 00       brk
59F8: 00       brk
59F9: 00       brk
59FA: 00       brk
59FB: 00       brk
59FC: 00       brk
59FD: 00       brk
59FE: 00       brk
59FF: 00       brk
5A00: 00       brk
5A01: 00       brk
5A02: 00       brk
5A03: 00       brk
5A04: 00       brk
5A05: 00       brk
5A06: 00       brk
5A07: 00       brk
5A08: 00       brk
5A09: 00       brk
5A0A: 00       brk
5A0B: 00       brk
5A0C: 00       brk
5A0D: 00       brk
5A0E: 00       brk
5A0F: 00       brk
5A10: 00       brk
5A11: 00       brk
5A12: 00       brk
5A13: 00       brk
5A14: 00       brk
5A15: 00       brk
5A16: 00       brk
5A17: 00       brk
5A18: 00       brk
5A19: 00       brk
5A1A: 00       brk
5A1B: 00       brk
5A1C: 00       brk
5A1D: 00       brk
5A1E: 00       brk
5A1F: 00       brk
5A20: 00       brk
5A21: 00       brk
5A22: 00       brk
5A23: 00       brk
5A24: 00       brk
5A25: 00       brk
5A26: 00       brk
5A27: 00       brk
5A28: 00       brk
5A29: 00       brk
5A2A: 00       brk
5A2B: 00       brk
5A2C: 00       brk
5A2D: 00       brk
5A2E: 00       brk
5A2F: 00       brk
5A30: 00       brk
5A31: 00       brk
5A32: 00       brk
5A33: 00       brk
5A34: 00       brk
5A35: 00       brk
5A36: 00       brk
5A37: 00       brk
5A38: 00       brk
5A39: 00       brk
5A3A: 00       brk
5A3B: 00       brk
5A3C: 00       brk
5A3D: 00       brk
5A3E: 00       brk
5A3F: 00       brk
5A40: 00       brk
5A41: 00       brk
5A42: 00       brk
5A43: 00       brk
5A44: 00       brk
5A45: 00       brk
5A46: 00       brk
5A47: 00       brk
5A48: 00       brk
5A49: 00       brk
5A4A: 00       brk
5A4B: 00       brk
5A4C: 00       brk
5A4D: 00       brk
5A4E: 00       brk
5A4F: 00       brk
5A50: 00       brk
5A51: 00       brk
5A52: 00       brk
5A53: 00       brk
5A54: 00       brk
5A55: 00       brk
5A56: 00       brk
5A57: 00       brk
5A58: 00       brk
5A59: 00       brk
5A5A: 00       brk
5A5B: 00       brk
5A5C: 00       brk
5A5D: 00       brk
5A5E: 00       brk
5A5F: 00       brk
5A60: 00       brk
5A61: 00       brk
5A62: 00       brk
5A63: 00       brk
5A64: 00       brk
5A65: 00       brk
5A66: 00       brk
5A67: 00       brk
5A68: 00       brk
5A69: 00       brk
5A6A: 00       brk
5A6B: 00       brk
5A6C: 00       brk
5A6D: 00       brk
5A6E: 00       brk
5A6F: 00       brk
5A70: 00       brk
5A71: 00       brk
5A72: 00       brk
5A73: 00       brk
5A74: 00       brk
5A75: 00       brk
5A76: 00       brk
5A77: 00       brk
5A78: 00       brk
5A79: 00       brk
5A7A: 00       brk
5A7B: 00       brk
5A7C: 00       brk
5A7D: 00       brk
5A7E: 00       brk
5A7F: 00       brk
5A80: 00       brk
5A81: 00       brk
5A82: 00       brk
5A83: 00       brk
5A84: 00       brk
5A85: 00       brk
5A86: 00       brk
5A87: 00       brk
5A88: 00       brk
5A89: 00       brk
5A8A: 00       brk
5A8B: 00       brk
5A8C: 00       brk
5A8D: 00       brk
5A8E: 00       brk
5A8F: 00       brk
5A90: 00       brk
5A91: 00       brk
5A92: 00       brk
5A93: 00       brk
5A94: 00       brk
5A95: 00       brk
5A96: 00       brk
5A97: 00       brk
5A98: 00       brk
5A99: 00       brk
5A9A: 00       brk
5A9B: 00       brk
5A9C: 00       brk
5A9D: 00       brk
5A9E: 00       brk
5A9F: 00       brk
5AA0: 00       brk
5AA1: 00       brk
5AA2: 00       brk
5AA3: 00       brk
5AA4: 00       brk
5AA5: 00       brk
5AA6: 00       brk
5AA7: 00       brk
5AA8: 00       brk
5AA9: 00       brk
5AAA: 00       brk
5AAB: 00       brk
5AAC: 00       brk
5AAD: 00       brk
5AAE: 00       brk
5AAF: 00       brk
5AB0: 00       brk
5AB1: 00       brk
5AB2: 00       brk
5AB3: 00       brk
5AB4: 00       brk
5AB5: 00       brk
5AB6: 00       brk
5AB7: 00       brk
5AB8: 00       brk
5AB9: 00       brk
5ABA: 00       brk
5ABB: 00       brk
5ABC: 00       brk
5ABD: 00       brk
5ABE: 00       brk
5ABF: 00       brk
5AC0: 00       brk
5AC1: 00       brk
5AC2: 00       brk
5AC3: 00       brk
5AC4: 00       brk
5AC5: 00       brk
5AC6: 00       brk
5AC7: 00       brk
5AC8: 00       brk
5AC9: 00       brk
5ACA: 00       brk
5ACB: 00       brk
5ACC: 00       brk
5ACD: 00       brk
5ACE: 00       brk
5ACF: 00       brk
5AD0: 00       brk
5AD1: 00       brk
5AD2: 00       brk
5AD3: 00       brk
5AD4: 00       brk
5AD5: 00       brk
5AD6: 00       brk
5AD7: 00       brk
5AD8: 00       brk
5AD9: 00       brk
5ADA: 00       brk
5ADB: 00       brk
5ADC: 00       brk
5ADD: 00       brk
5ADE: 00       brk
5ADF: 00       brk
5AE0: 00       brk
5AE1: 00       brk
5AE2: 00       brk
5AE3: 00       brk
5AE4: 00       brk
5AE5: 00       brk
5AE6: 00       brk
5AE7: 00       brk
5AE8: 00       brk
5AE9: 00       brk
5AEA: 00       brk
5AEB: 00       brk
5AEC: 00       brk
5AED: 00       brk
5AEE: 00       brk
5AEF: 00       brk
5AF0: 00       brk
5AF1: 00       brk
5AF2: 00       brk
5AF3: 00       brk
5AF4: 00       brk
5AF5: 00       brk
5AF6: 00       brk
5AF7: 00       brk
5AF8: 00       brk
5AF9: 00       brk
5AFA: 00       brk
5AFB: 00       brk
5AFC: 00       brk
5AFD: 00       brk
5AFE: 00       brk
5AFF: 00       brk
5B00: 00       brk
5B01: 00       brk
5B02: 00       brk
5B03: 00       brk
5B04: 00       brk
5B05: 00       brk
5B06: 00       brk
5B07: 00       brk
5B08: 00       brk
5B09: 00       brk
5B0A: 00       brk
5B0B: 00       brk
5B0C: 00       brk
5B0D: 00       brk
5B0E: 00       brk
5B0F: 00       brk
5B10: 00       brk
5B11: 00       brk
5B12: 00       brk
5B13: 00       brk
5B14: 00       brk
5B15: 00       brk
5B16: 00       brk
5B17: 00       brk
5B18: 00       brk
5B19: 00       brk
5B1A: 00       brk
5B1B: 00       brk
5B1C: 00       brk
5B1D: 00       brk
5B1E: 00       brk
5B1F: 00       brk
5B20: 00       brk
5B21: 00       brk
5B22: 00       brk
5B23: 00       brk
5B24: 00       brk
5B25: 00       brk
5B26: 00       brk
5B27: 00       brk
5B28: 00       brk
5B29: 00       brk
5B2A: 00       brk
5B2B: 00       brk
5B2C: 00       brk
5B2D: 00       brk
5B2E: 00       brk
5B2F: 00       brk
5B30: 00       brk
5B31: 00       brk
5B32: 00       brk
5B33: 00       brk
5B34: 00       brk
5B35: 00       brk
5B36: 00       brk
5B37: 00       brk
5B38: 30 00    bmi $5b3a
5B3A: 00       brk
5B3B: 00       brk
5B3C: 00       brk
5B3D: 00       brk
5B3E: 00       brk
5B3F: 00       brk
5B40: 30 00    bmi $5b42
5B42: 00       brk
5B43: 00       brk
5B44: 00       brk
5B45: 00       brk
5B46: 00       brk
5B47: 00       brk
5B48: 00       brk
5B49: 00       brk
5B4A: 00       brk
5B4B: 00       brk
5B4C: 00       brk
5B4D: 00       brk
5B4E: 00       brk
5B4F: 00       brk
5B50: 00       brk
5B51: 00       brk
5B52: 00       brk
5B53: 00       brk
5B54: 00       brk
5B55: 00       brk
5B56: 00       brk
5B57: 00       brk
5B58: 30 00    bmi $5b5a
5B5A: 00       brk
5B5B: 00       brk
5B5C: 00       brk
5B5D: 00       brk
5B5E: 00       brk
5B5F: 00       brk
5B60: 30 00    bmi $5b62
5B62: 00       brk
5B63: 00       brk
5B64: 00       brk
5B65: 00       brk
5B66: 00       brk
5B67: 00       brk
5B68: 00       brk
5B69: 00       brk
5B6A: 00       brk
5B6B: 00       brk
5B6C: 00       brk
5B6D: 00       brk
5B6E: 00       brk
5B6F: 00       brk
5B70: 00       brk
5B71: 00       brk
5B72: 00       brk
5B73: 00       brk
5B74: 00       brk
5B75: 00       brk
5B76: 00       brk
5B77: 00       brk
5B78: 10 00    bpl $5b7a
5B7A: 00       brk
5B7B: 00       brk
5B7C: 00       brk
5B7D: 00       brk
5B7E: 00       brk
5B7F: 00       brk
5B80: 30 00    bmi $5b82
5B82: 00       brk
5B83: 00       brk
5B84: 00       brk
5B85: 00       brk
5B86: 00       brk
5B87: 00       brk
5B88: 00       brk
5B89: 00       brk
5B8A: 00       brk
5B8B: 00       brk
5B8C: 00       brk
5B8D: 00       brk
5B8E: 00       brk
5B8F: 00       brk
5B90: 00       brk
5B91: 00       brk
5B92: 00       brk
5B93: 00       brk
5B94: 00       brk
5B95: 00       brk
5B96: 00       brk
5B97: 00       brk
5B98: 00       brk
5B99: 00       brk
5B9A: 00       brk
5B9B: 00       brk
5B9C: 00       brk
5B9D: 00       brk
5B9E: 00       brk
5B9F: 00       brk
5BA0: 00       brk
5BA1: 00       brk
5BA2: 00       brk
5BA3: 00       brk
5BA4: 00       brk
5BA5: 00       brk
5BA6: 00       brk
5BA7: 00       brk
5BA8: 00       brk
5BA9: 00       brk
5BAA: 00       brk
5BAB: 00       brk
5BAC: 00       brk
5BAD: 00       brk
5BAE: 00       brk
5BAF: 00       brk
5BB0: 10 00    bpl $5bb2
5BB2: 00       brk
5BB3: 00       brk
5BB4: 00       brk
5BB5: 00       brk
5BB6: 00       brk
5BB7: 00       brk
5BB8: 20 00 00 jsr $0000
5BBB: 00       brk
5BBC: 00       brk
5BBD: 00       brk
5BBE: 00       brk
5BBF: 00       brk
5BC0: 10 00    bpl $5bc2
5BC2: 00       brk
5BC3: 00       brk
5BC4: 00       brk
5BC5: 00       brk
5BC6: 00       brk
5BC7: 00       brk
5BC8: 20 00 00 jsr $0000
5BCB: 00       brk
5BCC: 00       brk
5BCD: 00       brk
5BCE: 00       brk
5BCF: 00       brk
5BD0: 00       brk
5BD1: 00       brk
5BD2: 00       brk
5BD3: 00       brk
5BD4: 00       brk
5BD5: 00       brk
5BD6: 00       brk
5BD7: 00       brk
5BD8: 30 00    bmi $5bda
5BDA: 00       brk
5BDB: 00       brk
5BDC: 00       brk
5BDD: 00       brk
5BDE: 00       brk
5BDF: 00       brk
5BE0: 30 00    bmi $5be2
5BE2: 00       brk
5BE3: 00       brk
5BE4: 00       brk
5BE5: 00       brk
5BE6: 00       brk
5BE7: 00       brk
5BE8: 00       brk
5BE9: 00       brk
5BEA: 00       brk
5BEB: 00       brk
5BEC: 00       brk
5BED: 00       brk
5BEE: 00       brk
5BEF: 00       brk
5BF0: 00       brk
5BF1: 00       brk
5BF2: 00       brk
5BF3: 00       brk
5BF4: 00       brk
5BF5: 00       brk
5BF6: 00       brk
5BF7: 00       brk
5BF8: 30 00    bmi $5bfa
5BFA: 00       brk
5BFB: 00       brk
5BFC: 00       brk
5BFD: 00       brk
5BFE: 00       brk
5BFF: 00       brk
5C00: 30 00    bmi $5c02
5C02: 00       brk
5C03: 00       brk
5C04: 00       brk
5C05: 00       brk
5C06: 00       brk
5C07: 00       brk
5C08: 20 00 00 jsr $0000
5C0B: 00       brk
5C0C: 00       brk
5C0D: 00       brk
5C0E: 00       brk
5C0F: 00       brk
5C10: 00       brk
5C11: 00       brk
5C12: 00       brk
5C13: 00       brk
5C14: 00       brk
5C15: 00       brk
5C16: 00       brk
5C17: 00       brk
5C18: 30 00    bmi $5c1a
5C1A: 00       brk
5C1B: 00       brk
5C1C: 00       brk
5C1D: 00       brk
5C1E: 00       brk
5C1F: 00       brk
5C20: 30 00    bmi $5c22
5C22: 00       brk
5C23: 00       brk
5C24: 00       brk
5C25: 00       brk
5C26: 00       brk
5C27: 00       brk
5C28: 20 00 00 jsr $0000
5C2B: 00       brk
5C2C: 00       brk
5C2D: 00       brk
5C2E: 00       brk
5C2F: 00       brk
5C30: 00       brk
5C31: 00       brk
5C32: 00       brk
5C33: 00       brk
5C34: 00       brk
5C35: 00       brk
5C36: 00       brk
5C37: 00       brk
5C38: 00       brk
5C39: 30 00    bmi $5c3b
5C3B: 00       brk
5C3C: 00       brk
5C3D: 00       brk
5C3E: 00       brk
5C3F: 00       brk
5C40: 10 30    bpl $5c72
5C42: 00       brk
5C43: 00       brk
5C44: 00       brk
5C45: 00       brk
5C46: 00       brk
5C47: 00       brk
5C48: 20 00 00 jsr $0000
5C4B: 00       brk
5C4C: 00       brk
5C4D: 00       brk
5C4E: 00       brk
5C4F: 00       brk
5C50: 00       brk
5C51: 00       brk
5C52: 00       brk
5C53: 00       brk
5C54: 00       brk
5C55: 00       brk
5C56: 00       brk
5C57: 00       brk
5C58: 00       brk
5C59: 00       brk
5C5A: 00       brk
5C5B: 00       brk
5C5C: 00       brk
5C5D: 00       brk
5C5E: 00       brk
5C5F: 00       brk
5C60: 00       brk
5C61: 00       brk
5C62: 00       brk
5C63: 00       brk
5C64: 00       brk
5C65: 00       brk
5C66: 00       brk
5C67: 00       brk
5C68: 00       brk
5C69: 00       brk
5C6A: 00       brk
5C6B: 00       brk
5C6C: 00       brk
5C6D: 00       brk
5C6E: 00       brk
5C6F: 00       brk
5C70: 00       brk
5C71: 00       brk
5C72: 00       brk
5C73: 00       brk
5C74: 00       brk
5C75: 00       brk
5C76: 00       brk
5C77: 00       brk
5C78: 00       brk
5C79: 00       brk
5C7A: 00       brk
5C7B: 00       brk
5C7C: 00       brk
5C7D: 00       brk
5C7E: 00       brk
5C7F: 00       brk
5C80: 00       brk
5C81: 00       brk
5C82: 00       brk
5C83: 00       brk
5C84: 00       brk
5C85: 00       brk
5C86: 00       brk
5C87: 00       brk
5C88: 00       brk
5C89: 00       brk
5C8A: 00       brk
5C8B: 00       brk
5C8C: 00       brk
5C8D: 00       brk
5C8E: 00       brk
5C8F: 00       brk
5C90: 00       brk
5C91: 00       brk
5C92: 00       brk
5C93: 00       brk
5C94: 00       brk
5C95: 00       brk
5C96: 00       brk
5C97: 00       brk
5C98: 00       brk
5C99: 00       brk
5C9A: 00       brk
5C9B: 00       brk
5C9C: 00       brk
5C9D: 00       brk
5C9E: 00       brk
5C9F: 00       brk
5CA0: 00       brk
5CA1: 00       brk
5CA2: 00       brk
5CA3: 00       brk
5CA4: 00       brk
5CA5: 00       brk
5CA6: 00       brk
5CA7: 00       brk
5CA8: 00       brk
5CA9: 00       brk
5CAA: 00       brk
5CAB: 00       brk
5CAC: 00       brk
5CAD: 00       brk
5CAE: 00       brk
5CAF: 00       brk
5CB0: 00       brk
5CB1: 00       brk
5CB2: 00       brk
5CB3: 00       brk
5CB4: 00       brk
5CB5: 00       brk
5CB6: 00       brk
5CB7: 00       brk
5CB8: 00       brk
5CB9: 00       brk
5CBA: 00       brk
5CBB: 00       brk
5CBC: 00       brk
5CBD: 00       brk
5CBE: 00       brk
5CBF: 00       brk
5CC0: 00       brk
5CC1: 00       brk
5CC2: 00       brk
5CC3: 00       brk
5CC4: 00       brk
5CC5: 00       brk
5CC6: 00       brk
5CC7: 00       brk
5CC8: 00       brk
5CC9: 00       brk
5CCA: 00       brk
5CCB: 00       brk
5CCC: 00       brk
5CCD: 00       brk
5CCE: 00       brk
5CCF: 00       brk
5CD0: 00       brk
5CD1: 00       brk
5CD2: 00       brk
5CD3: 00       brk
5CD4: 00       brk
5CD5: 00       brk
5CD6: 00       brk
5CD7: 00       brk
5CD8: 00       brk
5CD9: 00       brk
5CDA: 00       brk
5CDB: 00       brk
5CDC: 00       brk
5CDD: 00       brk
5CDE: 00       brk
5CDF: 00       brk
5CE0: 00       brk
5CE1: 00       brk
5CE2: 00       brk
5CE3: 00       brk
5CE4: 00       brk
5CE5: 00       brk
5CE6: 00       brk
5CE7: 00       brk
5CE8: 00       brk
5CE9: 00       brk
5CEA: 00       brk
5CEB: 00       brk
5CEC: 00       brk
5CED: 00       brk
5CEE: 00       brk
5CEF: 00       brk
5CF0: 00       brk
5CF1: 00       brk
5CF2: 00       brk
5CF3: 00       brk
5CF4: 00       brk
5CF5: 00       brk
5CF6: 00       brk
5CF7: 00       brk
5CF8: 00       brk
5CF9: 00       brk
5CFA: 00       brk
5CFB: 00       brk
5CFC: 00       brk
5CFD: 00       brk
5CFE: 00       brk
5CFF: 00       brk
5D00: 00       brk
5D01: 00       brk
5D02: 00       brk
5D03: 00       brk
5D04: 00       brk
5D05: 00       brk
5D06: 00       brk
5D07: 00       brk
5D08: 00       brk
5D09: 00       brk
5D0A: 00       brk
5D0B: 00       brk
5D0C: 00       brk
5D0D: 00       brk
5D0E: 00       brk
5D0F: 00       brk
5D10: 00       brk
5D11: 00       brk
5D12: 00       brk
5D13: 00       brk
5D14: 00       brk
5D15: 00       brk
5D16: 00       brk
5D17: 00       brk
5D18: 00       brk
5D19: 00       brk
5D1A: 00       brk
5D1B: 00       brk
5D1C: 00       brk
5D1D: 00       brk
5D1E: 00       brk
5D1F: 00       brk
5D20: 00       brk
5D21: 00       brk
5D22: 00       brk
5D23: 00       brk
5D24: 00       brk
5D25: 00       brk
5D26: 00       brk
5D27: 00       brk
5D28: 00       brk
5D29: 00       brk
5D2A: 00       brk
5D2B: 00       brk
5D2C: 00       brk
5D2D: 00       brk
5D2E: 00       brk
5D2F: 00       brk
5D30: 00       brk
5D31: 00       brk
5D32: 00       brk
5D33: 00       brk
5D34: 00       brk
5D35: 00       brk
5D36: 00       brk
5D37: 00       brk
5D38: 00       brk
5D39: 00       brk
5D3A: 00       brk
5D3B: 00       brk
5D3C: 00       brk
5D3D: 00       brk
5D3E: 00       brk
5D3F: 00       brk
5D40: 00       brk
5D41: 00       brk
5D42: 00       brk
5D43: 00       brk
5D44: 00       brk
5D45: 00       brk
5D46: 00       brk
5D47: 00       brk
5D48: 00       brk
5D49: 00       brk
5D4A: 00       brk
5D4B: 00       brk
5D4C: 00       brk
5D4D: 00       brk
5D4E: 00       brk
5D4F: 00       brk
5D50: 00       brk
5D51: 00       brk
5D52: 00       brk
5D53: 00       brk
5D54: 00       brk
5D55: 00       brk
5D56: 00       brk
5D57: 00       brk
5D58: 00       brk
5D59: 00       brk
5D5A: 00       brk
5D5B: 00       brk
5D5C: 00       brk
5D5D: 00       brk
5D5E: 00       brk
5D5F: 00       brk
5D60: 00       brk
5D61: 00       brk
5D62: 00       brk
5D63: 00       brk
5D64: 00       brk
5D65: 00       brk
5D66: 00       brk
5D67: 00       brk
5D68: 00       brk
5D69: 00       brk
5D6A: 00       brk
5D6B: 00       brk
5D6C: 00       brk
5D6D: 00       brk
5D6E: 00       brk
5D6F: 00       brk
5D70: 00       brk
5D71: 00       brk
5D72: 00       brk
5D73: 00       brk
5D74: 00       brk
5D75: 00       brk
5D76: 00       brk
5D77: 00       brk
5D78: 00       brk
5D79: 00       brk
5D7A: 00       brk
5D7B: 00       brk
5D7C: 00       brk
5D7D: 00       brk
5D7E: 00       brk
5D7F: 00       brk
5D80: 00       brk
5D81: 00       brk
5D82: 00       brk
5D83: 00       brk
5D84: 00       brk
5D85: 00       brk
5D86: 00       brk
5D87: 00       brk
5D88: 00       brk
5D89: 00       brk
5D8A: 00       brk
5D8B: 00       brk
5D8C: 00       brk
5D8D: 00       brk
5D8E: 00       brk
5D8F: 00       brk
5D90: 00       brk
5D91: 00       brk
5D92: 00       brk
5D93: 00       brk
5D94: 00       brk
5D95: 00       brk
5D96: 00       brk
5D97: 00       brk
5D98: 00       brk
5D99: 00       brk
5D9A: 00       brk
5D9B: 00       brk
5D9C: 00       brk
5D9D: 00       brk
5D9E: 00       brk
5D9F: 00       brk
5DA0: 00       brk
5DA1: 00       brk
5DA2: 00       brk
5DA3: 00       brk
5DA4: 00       brk
5DA5: 00       brk
5DA6: 00       brk
5DA7: 00       brk
5DA8: 00       brk
5DA9: 00       brk
5DAA: 00       brk
5DAB: 00       brk
5DAC: 00       brk
5DAD: 00       brk
5DAE: 00       brk
5DAF: 00       brk
5DB0: 00       brk
5DB1: 00       brk
5DB2: 00       brk
5DB3: 00       brk
5DB4: 00       brk
5DB5: 00       brk
5DB6: 00       brk
5DB7: 00       brk
5DB8: 00       brk
5DB9: 00       brk
5DBA: 00       brk
5DBB: 00       brk
5DBC: 00       brk
5DBD: 00       brk
5DBE: 00       brk
5DBF: 00       brk
5DC0: 00       brk
5DC1: 00       brk
5DC2: 00       brk
5DC3: 00       brk
5DC4: 00       brk
5DC5: 00       brk
5DC6: 00       brk
5DC7: 00       brk
5DC8: 00       brk
5DC9: 00       brk
5DCA: 00       brk
5DCB: 00       brk
5DCC: 00       brk
5DCD: 00       brk
5DCE: 00       brk
5DCF: 00       brk
5DD0: 00       brk
5DD1: 00       brk
5DD2: 00       brk
5DD3: 00       brk
5DD4: 00       brk
5DD5: 00       brk
5DD6: 00       brk
5DD7: 00       brk
5DD8: 00       brk
5DD9: 00       brk
5DDA: 00       brk
5DDB: 00       brk
5DDC: 00       brk
5DDD: 00       brk
5DDE: 00       brk
5DDF: 00       brk
5DE0: 00       brk
5DE1: 00       brk
5DE2: 00       brk
5DE3: 00       brk
5DE4: 00       brk
5DE5: 00       brk
5DE6: 00       brk
5DE7: 00       brk
5DE8: 00       brk
5DE9: 00       brk
5DEA: 00       brk
5DEB: 00       brk
5DEC: 00       brk
5DED: 00       brk
5DEE: 00       brk
5DEF: 00       brk
5DF0: 00       brk
5DF1: 00       brk
5DF2: 00       brk
5DF3: 00       brk
5DF4: 00       brk
5DF5: 00       brk
5DF6: 00       brk
5DF7: 00       brk
5DF8: 00       brk
5DF9: 00       brk
5DFA: 00       brk
5DFB: 00       brk
5DFC: 00       brk
5DFD: 00       brk
5DFE: 00       brk
5DFF: 00       brk
5E00: 00       brk
5E01: 00       brk
5E02: 00       brk
5E03: 00       brk
5E04: 00       brk
5E05: 00       brk
5E06: 00       brk
5E07: 00       brk
5E08: 00       brk
5E09: 00       brk
5E0A: 00       brk
5E0B: 00       brk
5E0C: 00       brk
5E0D: 00       brk
5E0E: 00       brk
5E0F: 00       brk
5E10: 00       brk
5E11: 00       brk
5E12: 00       brk
5E13: 00       brk
5E14: 00       brk
5E15: 00       brk
5E16: 00       brk
5E17: 00       brk
5E18: 00       brk
5E19: 00       brk
5E1A: 00       brk
5E1B: 00       brk
5E1C: 00       brk
5E1D: 00       brk
5E1E: 00       brk
5E1F: 00       brk
5E20: 00       brk
5E21: 00       brk
5E22: 00       brk
5E23: 00       brk
5E24: 00       brk
5E25: 00       brk
5E26: 00       brk
5E27: 00       brk
5E28: 00       brk
5E29: 00       brk
5E2A: 00       brk
5E2B: 00       brk
5E2C: 00       brk
5E2D: 00       brk
5E2E: 00       brk
5E2F: 00       brk
5E30: 00       brk
5E31: 00       brk
5E32: 00       brk
5E33: 00       brk
5E34: 00       brk
5E35: 00       brk
5E36: 00       brk
5E37: 00       brk
5E38: 00       brk
5E39: 00       brk
5E3A: 00       brk
5E3B: 00       brk
5E3C: 00       brk
5E3D: 00       brk
5E3E: 00       brk
5E3F: 00       brk
5E40: 00       brk
5E41: 00       brk
5E42: 00       brk
5E43: 00       brk
5E44: 00       brk
5E45: 00       brk
5E46: 00       brk
5E47: 00       brk
5E48: 00       brk
5E49: 00       brk
5E4A: 00       brk
5E4B: 00       brk
5E4C: 00       brk
5E4D: 00       brk
5E4E: 00       brk
5E4F: 00       brk
5E50: 00       brk
5E51: 00       brk
5E52: 00       brk
5E53: 00       brk
5E54: 00       brk
5E55: 00       brk
5E56: 00       brk
5E57: 00       brk
5E58: 00       brk
5E59: 00       brk
5E5A: 00       brk
5E5B: 00       brk
5E5C: 00       brk
5E5D: 00       brk
5E5E: 00       brk
5E5F: 00       brk
5E60: 00       brk
5E61: 00       brk
5E62: 00       brk
5E63: 00       brk
5E64: 00       brk
5E65: 00       brk
5E66: 00       brk
5E67: 00       brk
5E68: 00       brk
5E69: 00       brk
5E6A: 00       brk
5E6B: 00       brk
5E6C: 00       brk
5E6D: 00       brk
5E6E: 00       brk
5E6F: 00       brk
5E70: 00       brk
5E71: 00       brk
5E72: 00       brk
5E73: 00       brk
5E74: 00       brk
5E75: 00       brk
5E76: 00       brk
5E77: 00       brk
5E78: 00       brk
5E79: 00       brk
5E7A: 00       brk
5E7B: 00       brk
5E7C: 00       brk
5E7D: 00       brk
5E7E: 00       brk
5E7F: 00       brk
5E80: 00       brk
5E81: 00       brk
5E82: 00       brk
5E83: 00       brk
5E84: 00       brk
5E85: 00       brk
5E86: 00       brk
5E87: 00       brk
5E88: 00       brk
5E89: 00       brk
5E8A: 00       brk
5E8B: 00       brk
5E8C: 00       brk
5E8D: 00       brk
5E8E: 00       brk
5E8F: 00       brk
5E90: 00       brk
5E91: 00       brk
5E92: 00       brk
5E93: 00       brk
5E94: 00       brk
5E95: 00       brk
5E96: 00       brk
5E97: 00       brk
5E98: 00       brk
5E99: 00       brk
5E9A: 00       brk
5E9B: 00       brk
5E9C: 00       brk
5E9D: 00       brk
5E9E: 00       brk
5E9F: 00       brk
5EA0: 00       brk
5EA1: 00       brk
5EA2: 00       brk
5EA3: 00       brk
5EA4: 00       brk
5EA5: 00       brk
5EA6: 00       brk
5EA7: 00       brk
5EA8: 00       brk
5EA9: 00       brk
5EAA: 00       brk
5EAB: 00       brk
5EAC: 00       brk
5EAD: 00       brk
5EAE: 00       brk
5EAF: 00       brk
5EB0: 00       brk
5EB1: 00       brk
5EB2: 00       brk
5EB3: 00       brk
5EB4: 00       brk
5EB5: 00       brk
5EB6: 00       brk
5EB7: 00       brk
5EB8: 00       brk
5EB9: 00       brk
5EBA: 00       brk
5EBB: 00       brk
5EBC: 00       brk
5EBD: 00       brk
5EBE: 00       brk
5EBF: 00       brk
5EC0: 00       brk
5EC1: 00       brk
5EC2: 00       brk
5EC3: 00       brk
5EC4: 00       brk
5EC5: 00       brk
5EC6: 00       brk
5EC7: 00       brk
5EC8: 00       brk
5EC9: 00       brk
5ECA: 00       brk
5ECB: 00       brk
5ECC: 00       brk
5ECD: 00       brk
5ECE: 00       brk
5ECF: 00       brk
5ED0: 00       brk
5ED1: 00       brk
5ED2: 00       brk
5ED3: 00       brk
5ED4: 00       brk
5ED5: 00       brk
5ED6: 00       brk
5ED7: 00       brk
5ED8: 00       brk
5ED9: 00       brk
5EDA: 00       brk
5EDB: 00       brk
5EDC: 00       brk
5EDD: 00       brk
5EDE: 00       brk
5EDF: 00       brk
5EE0: 00       brk
5EE1: 00       brk
5EE2: 00       brk
5EE3: 00       brk
5EE4: 00       brk
5EE5: 00       brk
5EE6: 00       brk
5EE7: 00       brk
5EE8: 00       brk
5EE9: 00       brk
5EEA: 00       brk
5EEB: 00       brk
5EEC: 00       brk
5EED: 00       brk
5EEE: 00       brk
5EEF: 00       brk
5EF0: 00       brk
5EF1: 00       brk
5EF2: 00       brk
5EF3: 00       brk
5EF4: 00       brk
5EF5: 00       brk
5EF6: 00       brk
5EF7: 00       brk
5EF8: 00       brk
5EF9: 00       brk
5EFA: 00       brk
5EFB: 00       brk
5EFC: 00       brk
5EFD: 00       brk
5EFE: 00       brk
5EFF: 00       brk
5F00: 00       brk
5F01: 00       brk
5F02: 00       brk
5F03: 00       brk
5F04: 00       brk
5F05: 00       brk
5F06: 00       brk
5F07: 00       brk
5F08: 00       brk
5F09: 00       brk
5F0A: 00       brk
5F0B: 00       brk
5F0C: 00       brk
5F0D: 00       brk
5F0E: 00       brk
5F0F: 00       brk
5F10: 00       brk
5F11: 00       brk
5F12: 00       brk
5F13: 00       brk
5F14: 00       brk
5F15: 00       brk
5F16: 00       brk
5F17: 00       brk
5F18: 00       brk
5F19: 00       brk
5F1A: 00       brk
5F1B: 00       brk
5F1C: 00       brk
5F1D: 00       brk
5F1E: 00       brk
5F1F: 00       brk
5F20: 00       brk
5F21: 00       brk
5F22: 00       brk
5F23: 00       brk
5F24: 00       brk
5F25: 00       brk
5F26: 00       brk
5F27: 00       brk
5F28: 00       brk
5F29: 00       brk
5F2A: 00       brk
5F2B: 00       brk
5F2C: 00       brk
5F2D: 00       brk
5F2E: 00       brk
5F2F: 00       brk
5F30: 00       brk
5F31: 00       brk
5F32: 00       brk
5F33: 00       brk
5F34: 00       brk
5F35: 00       brk
5F36: 00       brk
5F37: 00       brk
5F38: 00       brk
5F39: 00       brk
5F3A: 00       brk
5F3B: 00       brk
5F3C: 00       brk
5F3D: 00       brk
5F3E: 00       brk
5F3F: 00       brk
5F40: 00       brk
5F41: 00       brk
5F42: 00       brk
5F43: 00       brk
5F44: 00       brk
5F45: 00       brk
5F46: 00       brk
5F47: 00       brk
5F48: 00       brk
5F49: 00       brk
5F4A: 00       brk
5F4B: 00       brk
5F4C: 00       brk
5F4D: 00       brk
5F4E: 00       brk
5F4F: 00       brk
5F50: 00       brk
5F51: 00       brk
5F52: 00       brk
5F53: 00       brk
5F54: 00       brk
5F55: 00       brk
5F56: 00       brk
5F57: 00       brk
5F58: 00       brk
5F59: 00       brk
5F5A: 00       brk
5F5B: 00       brk
5F5C: 00       brk
5F5D: 00       brk
5F5E: 00       brk
5F5F: 00       brk
5F60: 00       brk
5F61: 00       brk
5F62: 00       brk
5F63: 00       brk
5F64: 00       brk
5F65: 00       brk
5F66: 00       brk
5F67: 00       brk
5F68: 00       brk
5F69: 00       brk
5F6A: 00       brk
5F6B: 00       brk
5F6C: 00       brk
5F6D: 00       brk
5F6E: 00       brk
5F6F: 00       brk
5F70: 00       brk
5F71: 00       brk
5F72: 00       brk
5F73: 00       brk
5F74: 00       brk
5F75: 00       brk
5F76: 00       brk
5F77: 00       brk
5F78: 00       brk
5F79: 00       brk
5F7A: 00       brk
5F7B: 00       brk
5F7C: 00       brk
5F7D: 00       brk
5F7E: 00       brk
5F7F: 00       brk
5F80: 00       brk
5F81: 00       brk
5F82: 00       brk
5F83: 00       brk
5F84: 00       brk
5F85: 00       brk
5F86: 00       brk
5F87: 00       brk
5F88: 00       brk
5F89: 00       brk
5F8A: 00       brk
5F8B: 00       brk
5F8C: 00       brk
5F8D: 00       brk
5F8E: 00       brk
5F8F: 00       brk
5F90: 00       brk
5F91: 00       brk
5F92: 00       brk
5F93: 00       brk
5F94: 00       brk
5F95: 00       brk
5F96: 00       brk
5F97: 00       brk
5F98: 00       brk
5F99: 00       brk
5F9A: 00       brk
5F9B: 00       brk
5F9C: 00       brk
5F9D: 00       brk
5F9E: 00       brk
5F9F: 00       brk
5FA0: 00       brk
5FA1: 00       brk
5FA2: 00       brk
5FA3: 00       brk
5FA4: 00       brk
5FA5: 00       brk
5FA6: 00       brk
5FA7: 00       brk
5FA8: 00       brk
5FA9: 00       brk
5FAA: 00       brk
5FAB: 00       brk
5FAC: 00       brk
5FAD: 00       brk
5FAE: 00       brk
5FAF: 00       brk
5FB0: 00       brk
5FB1: 00       brk
5FB2: 00       brk
5FB3: 00       brk
5FB4: 00       brk
5FB5: 00       brk
5FB6: 00       brk
5FB7: 00       brk
5FB8: 00       brk
5FB9: 00       brk
5FBA: 00       brk
5FBB: 00       brk
5FBC: 00       brk
5FBD: 00       brk
5FBE: 00       brk
5FBF: 00       brk
5FC0: 00       brk
5FC1: 00       brk
5FC2: 00       brk
5FC3: 00       brk
5FC4: 00       brk
5FC5: 00       brk
5FC6: 00       brk
5FC7: 00       brk
5FC8: 00       brk
5FC9: 00       brk
5FCA: 00       brk
5FCB: 00       brk
5FCC: 00       brk
5FCD: 00       brk
5FCE: 00       brk
5FCF: 00       brk
5FD0: 00       brk
5FD1: 00       brk
5FD2: 00       brk
5FD3: 00       brk
5FD4: 00       brk
5FD5: 00       brk
5FD6: 00       brk
5FD7: 00       brk
5FD8: 00       brk
5FD9: 00       brk
5FDA: 00       brk
5FDB: 00       brk
5FDC: 00       brk
5FDD: 00       brk
5FDE: 00       brk
5FDF: 00       brk
5FE0: 00       brk
5FE1: 00       brk
5FE2: 00       brk
5FE3: 00       brk
5FE4: 00       brk
5FE5: 00       brk
5FE6: 00       brk
5FE7: 00       brk
5FE8: 00       brk
5FE9: 00       brk
5FEA: 00       brk
5FEB: 00       brk
5FEC: 00       brk
5FED: 00       brk
5FEE: 00       brk
5FEF: 00       brk
5FF0: 00       brk
5FF1: 00       brk
5FF2: 00       brk
5FF3: 00       brk
5FF4: 00       brk
5FF5: 00       brk
5FF6: 00       brk
5FF7: 00       brk
5FF8: 00       brk
5FF9: 00       brk
5FFA: 00       brk
5FFB: 00       brk
5FFC: 00       brk
5FFD: 00       brk
5FFE: 00       brk
5FFF: 00       brk
6000: 00       brk
6001: 00       brk
6002: 00       brk
6003: 00       brk
6004: 00       brk
6005: 00       brk
6006: 00       brk
6007: 00       brk
6008: 00       brk
6009: 00       brk
600A: 00       brk
600B: 00       brk
600C: 00       brk
600D: 00       brk
600E: 00       brk
600F: 00       brk
6010: 00       brk
6011: 00       brk
6012: 00       brk
6013: 00       brk
6014: 00       brk
6015: 00       brk
6016: 00       brk
6017: 00       brk
6018: 00       brk
6019: 00       brk
601A: 00       brk
601B: 00       brk
601C: 00       brk
601D: 00       brk
601E: 00       brk
601F: 00       brk
6020: 00       brk
6021: 00       brk
6022: 00       brk
6023: 00       brk
6024: 00       brk
6025: 00       brk
6026: 00       brk
6027: 00       brk
6028: 00       brk
6029: 00       brk
602A: 00       brk
602B: 00       brk
602C: 00       brk
602D: 00       brk
602E: 00       brk
602F: 00       brk
6030: 00       brk
6031: 00       brk
6032: 00       brk
6033: 00       brk
6034: 00       brk
6035: 00       brk
6036: 00       brk
6037: 00       brk
6038: 00       brk
6039: 00       brk
603A: 00       brk
603B: 00       brk
603C: 00       brk
603D: 00       brk
603E: 00       brk
603F: 00       brk
6040: 00       brk
6041: 00       brk
6042: 00       brk
6043: 40       rti
6044: 40       rti
6045: 40       rti
6046: 40       rti
6047: 40       rti
6048: 00       brk
6049: 00       brk
604A: 00       brk
604B: C0 80    cpy #$80
604D: 80 C0    nop #$c0
604F: 80 00    nop #$00
6051: 00       brk
6052: 00       brk
6053: C0 40    cpy #$40
6055: 40       rti
6056: C0 00    cpy #$00
6058: 00       brk
6059: 00       brk
605A: 00       brk
605B: 00       brk
605C: 80 80    nop #$80
605E: 00       brk
605F: 00       brk
6060: 00       brk
6061: 00       brk
6062: 00       brk
6063: 00       brk
6064: 00       brk
6065: 00       brk
6066: 00       brk
6067: 00       brk
6068: 00       brk
6069: 00       brk
606A: 00       brk
606B: C0 40    cpy #$40
606D: 40       rti
606E: 40       rti
606F: 40       rti
6070: 00       brk
6071: 00       brk
6072: 00       brk
6073: 80 80    nop #$80
6075: 80 80    nop #$80
6077: 80 00    nop #$00
6079: 00       brk
607A: 00       brk
607B: 00       brk
607C: 00       brk
607D: 00       brk
607E: 00       brk
607F: 00       brk
6080: 00       brk
6081: 00       brk
6082: 00       brk
6083: 00       brk
6084: 00       brk
6085: 00       brk
6086: 00       brk
6087: 00       brk
6088: 00       brk
6089: 00       brk
608A: 00       brk
608B: 00       brk
608C: 00       brk
608D: C0 00    cpy #$00
608F: C0 00    cpy #$00
6091: 00       brk
6092: 00       brk
6093: 00       brk
6094: 00       brk
6095: C0 40    cpy #$40
6097: C0 00    cpy #$00
6099: 00       brk
609A: 00       brk
609B: 00       brk
609C: 00       brk
609D: 00       brk
609E: 80 80    nop #$80
60A0: 00       brk
60A1: 00       brk
60A2: 00       brk
60A3: 00       brk
60A4: 00       brk
60A5: 40       rti
60A6: 40       rti
60A7: 40       rti
60A8: 00       brk
60A9: 00       brk
60AA: 00       brk
60AB: 00       brk
60AC: 00       brk
60AD: 80 80    nop #$80
60AF: 80 00    nop #$00
60B1: 00       brk
60B2: 00       brk
60B3: 00       brk
60B4: 00       brk
60B5: 40       rti
60B6: 40       rti
60B7: 40       rti
60B8: 00       brk
60B9: 00       brk
60BA: 00       brk
60BB: 00       brk
60BC: 00       brk
60BD: 80 80    nop #$80
60BF: 80 00    nop #$00
60C1: 00       brk
60C2: 00       brk
60C3: 00       brk
60C4: 00       brk
60C5: 00       brk
60C6: 40       rti
60C7: 40       rti
60C8: 00       brk
60C9: 00       brk
60CA: 00       brk
60CB: 00       brk
60CC: 00       brk
60CD: C0 80    cpy #$80
60CF: C0 00    cpy #$00
60D1: 00       brk
60D2: 00       brk
60D3: 00       brk
60D4: 00       brk
60D5: C0 40    cpy #$40
60D7: C0 00    cpy #$00
60D9: 00       brk
60DA: 00       brk
60DB: 00       brk
60DC: 00       brk
60DD: 00       brk
60DE: 80 80    nop #$80
60E0: 00       brk
60E1: 00       brk
60E2: 00       brk
60E3: 00       brk
60E4: 00       brk
60E5: 40       rti
60E6: 40       rti
60E7: 40       rti
60E8: 00       brk
60E9: 00       brk
60EA: 00       brk
60EB: 00       brk
60EC: 00       brk
60ED: 80 C0    nop #$c0
60EF: 80 00    nop #$00
60F1: 00       brk
60F2: 00       brk
60F3: 00       brk
60F4: 00       brk
60F5: C0 40    cpy #$40
60F7: 00       brk
60F8: 00       brk
60F9: 00       brk
60FA: 00       brk
60FB: 00       brk
60FC: 00       brk
60FD: 00       brk
60FE: 80 00    nop #$00
6100: 00       brk
6101: 00       brk
6102: 00       brk
6103: 00       brk
6104: 00       brk
6105: 00       brk
6106: 00       brk
6107: 00       brk
6108: 00       brk
6109: 00       brk
610A: 00       brk
610B: 00       brk
610C: 00       brk
610D: 00       brk
610E: 00       brk
610F: 00       brk
6110: 00       brk
6111: 00       brk
6112: 00       brk
6113: 00       brk
6114: 00       brk
6115: 00       brk
6116: 00       brk
6117: 00       brk
6118: 00       brk
6119: 00       brk
611A: 00       brk
611B: 00       brk
611C: 00       brk
611D: 00       brk
611E: 00       brk
611F: 00       brk
6120: 00       brk
6121: 00       brk
6122: 00       brk
6123: 00       brk
6124: 00       brk
6125: 00       brk
6126: 00       brk
6127: 00       brk
6128: 00       brk
6129: 00       brk
612A: 00       brk
612B: 40       rti
612C: C0 40    cpy #$40
612E: 40       rti
612F: 40       rti
6130: 00       brk
6131: 00       brk
6132: 00       brk
6133: 80 80    nop #$80
6135: 80 80    nop #$80
6137: 80 00    nop #$00
6139: 00       brk
613A: 00       brk
613B: 00       brk
613C: 00       brk
613D: 00       brk
613E: 00       brk
613F: 00       brk
6140: 00       brk
6141: 00       brk
6142: 00       brk
6143: 00       brk
6144: 00       brk
6145: 00       brk
6146: 00       brk
6147: 00       brk
6148: 00       brk
6149: 00       brk
614A: 00       brk
614B: 00       brk
614C: 00       brk
614D: 00       brk
614E: 00       brk
614F: 00       brk
6150: 00       brk
6151: 00       brk
6152: 00       brk
6153: 00       brk
6154: 00       brk
6155: 00       brk
6156: 00       brk
6157: 00       brk
6158: 00       brk
6159: 00       brk
615A: 00       brk
615B: 00       brk
615C: 00       brk
615D: 00       brk
615E: 00       brk
615F: 00       brk
6160: 00       brk
6161: 00       brk
6162: 00       brk
6163: 00       brk
6164: 00       brk
6165: 00       brk
6166: 00       brk
6167: 00       brk
6168: 00       brk
6169: 00       brk
616A: 00       brk
616B: 00       brk
616C: 00       brk
616D: 00       brk
616E: 00       brk
616F: 00       brk
6170: 00       brk
6171: 00       brk
6172: 00       brk
6173: 00       brk
6174: 00       brk
6175: 00       brk
6176: 00       brk
6177: 00       brk
6178: 00       brk
6179: 00       brk
617A: 00       brk
617B: 00       brk
617C: 00       brk
617D: 00       brk
617E: 00       brk
617F: 00       brk
6180: 00       brk
6181: 00       brk
6182: 00       brk
6183: 00       brk
6184: 00       brk
6185: 00       brk
6186: 00       brk
6187: 00       brk
6188: 00       brk
6189: 00       brk
618A: 00       brk
618B: 00       brk
618C: 00       brk
618D: 00       brk
618E: 00       brk
618F: 00       brk
6190: 00       brk
6191: 00       brk
6192: 00       brk
6193: 00       brk
6194: 00       brk
6195: 00       brk
6196: 00       brk
6197: 00       brk
6198: 00       brk
6199: 00       brk
619A: 00       brk
619B: 00       brk
619C: 00       brk
619D: 00       brk
619E: 00       brk
619F: 00       brk
61A0: 00       brk
61A1: 00       brk
61A2: 00       brk
61A3: 00       brk
61A4: 00       brk
61A5: 00       brk
61A6: 00       brk
61A7: 00       brk
61A8: 00       brk
61A9: 00       brk
61AA: 00       brk
61AB: 00       brk
61AC: 00       brk
61AD: 00       brk
61AE: 00       brk
61AF: 00       brk
61B0: 00       brk
61B1: 00       brk
61B2: 00       brk
61B3: 00       brk
61B4: 00       brk
61B5: 00       brk
61B6: 00       brk
61B7: 00       brk
61B8: 00       brk
61B9: 00       brk
61BA: 00       brk
61BB: 00       brk
61BC: 00       brk
61BD: 00       brk
61BE: 00       brk
61BF: 00       brk
61C0: 00       brk
61C1: 00       brk
61C2: 00       brk
61C3: 00       brk
61C4: 00       brk
61C5: 00       brk
61C6: 00       brk
61C7: 00       brk
61C8: 00       brk
61C9: 00       brk
61CA: 00       brk
61CB: 00       brk
61CC: 00       brk
61CD: 00       brk
61CE: 00       brk
61CF: 00       brk
61D0: 00       brk
61D1: 00       brk
61D2: 00       brk
61D3: 00       brk
61D4: 00       brk
61D5: 00       brk
61D6: 00       brk
61D7: 00       brk
61D8: 00       brk
61D9: 00       brk
61DA: 00       brk
61DB: 00       brk
61DC: 00       brk
61DD: 00       brk
61DE: 00       brk
61DF: 00       brk
61E0: 00       brk
61E1: 00       brk
61E2: 00       brk
61E3: 00       brk
61E4: 00       brk
61E5: 00       brk
61E6: 00       brk
61E7: 00       brk
61E8: 00       brk
61E9: 00       brk
61EA: 00       brk
61EB: 00       brk
61EC: 00       brk
61ED: 00       brk
61EE: 00       brk
61EF: 00       brk
61F0: 00       brk
61F1: 00       brk
61F2: 00       brk
61F3: 00       brk
61F4: 00       brk
61F5: 00       brk
61F6: 00       brk
61F7: 00       brk
61F8: 00       brk
61F9: 00       brk
61FA: 00       brk
61FB: 00       brk
61FC: 00       brk
61FD: 00       brk
61FE: 00       brk
61FF: 00       brk
6200: 00       brk
6201: 00       brk
6202: 00       brk
6203: 00       brk
6204: 00       brk
6205: 00       brk
6206: 00       brk
6207: 00       brk
6208: 00       brk
6209: 00       brk
620A: 00       brk
620B: 00       brk
620C: 00       brk
620D: 00       brk
620E: 00       brk
620F: 00       brk
6210: 00       brk
6211: 00       brk
6212: 00       brk
6213: 00       brk
6214: 00       brk
6215: 00       brk
6216: 00       brk
6217: 00       brk
6218: 00       brk
6219: 00       brk
621A: 00       brk
621B: 00       brk
621C: 00       brk
621D: 00       brk
621E: 00       brk
621F: 00       brk
6220: 00       brk
6221: 00       brk
6222: 00       brk
6223: 00       brk
6224: 00       brk
6225: 00       brk
6226: 00       brk
6227: 00       brk
6228: 00       brk
6229: 00       brk
622A: 00       brk
622B: 00       brk
622C: 00       brk
622D: 00       brk
622E: 00       brk
622F: 00       brk
6230: 00       brk
6231: 00       brk
6232: 00       brk
6233: 00       brk
6234: 00       brk
6235: 00       brk
6236: 00       brk
6237: 00       brk
6238: 00       brk
6239: 00       brk
623A: 00       brk
623B: 00       brk
623C: 00       brk
623D: 00       brk
623E: 00       brk
623F: 00       brk
6240: 00       brk
6241: 00       brk
6242: 00       brk
6243: 00       brk
6244: 00       brk
6245: 00       brk
6246: 00       brk
6247: 00       brk
6248: 00       brk
6249: 00       brk
624A: 00       brk
624B: 00       brk
624C: 00       brk
624D: 00       brk
624E: 00       brk
624F: 00       brk
6250: 00       brk
6251: 00       brk
6252: 00       brk
6253: 00       brk
6254: 00       brk
6255: 00       brk
6256: 00       brk
6257: 00       brk
6258: 00       brk
6259: 00       brk
625A: 00       brk
625B: 00       brk
625C: 00       brk
625D: 00       brk
625E: 00       brk
625F: 00       brk
6260: 00       brk
6261: 00       brk
6262: 00       brk
6263: 00       brk
6264: 00       brk
6265: 00       brk
6266: 00       brk
6267: 00       brk
6268: 00       brk
6269: 00       brk
626A: 00       brk
626B: 00       brk
626C: 00       brk
626D: 00       brk
626E: 00       brk
626F: 00       brk
6270: 00       brk
6271: 00       brk
6272: 00       brk
6273: 00       brk
6274: 00       brk
6275: 00       brk
6276: 00       brk
6277: 00       brk
6278: 00       brk
6279: 00       brk
627A: 00       brk
627B: 00       brk
627C: 00       brk
627D: 00       brk
627E: 00       brk
627F: 00       brk
6280: 00       brk
6281: 00       brk
6282: 00       brk
6283: 00       brk
6284: 00       brk
6285: 00       brk
6286: 00       brk
6287: 00       brk
6288: 00       brk
6289: 00       brk
628A: 00       brk
628B: 00       brk
628C: 00       brk
628D: 00       brk
628E: 00       brk
628F: 00       brk
6290: 00       brk
6291: 00       brk
6292: 00       brk
6293: 00       brk
6294: 00       brk
6295: 00       brk
6296: 00       brk
6297: 00       brk
6298: 00       brk
6299: 00       brk
629A: 00       brk
629B: 00       brk
629C: 00       brk
629D: 00       brk
629E: 00       brk
629F: 00       brk
62A0: 00       brk
62A1: 00       brk
62A2: 00       brk
62A3: 00       brk
62A4: 00       brk
62A5: 00       brk
62A6: 00       brk
62A7: 00       brk
62A8: 00       brk
62A9: 00       brk
62AA: 00       brk
62AB: 00       brk
62AC: 00       brk
62AD: 00       brk
62AE: 00       brk
62AF: 00       brk
62B0: 00       brk
62B1: 00       brk
62B2: 00       brk
62B3: 00       brk
62B4: 00       brk
62B5: 00       brk
62B6: 00       brk
62B7: 00       brk
62B8: 00       brk
62B9: 00       brk
62BA: 00       brk
62BB: 00       brk
62BC: 00       brk
62BD: 00       brk
62BE: 00       brk
62BF: 00       brk
62C0: 40       rti
62C1: 40       rti
62C2: 00       brk
62C3: 00       brk
62C4: 00       brk
62C5: 00       brk
62C6: 00       brk
62C7: 00       brk
62C8: 80 80    nop #$80
62CA: 00       brk
62CB: 00       brk
62CC: 00       brk
62CD: 00       brk
62CE: 00       brk
62CF: 00       brk
62D0: 00       brk
62D1: 00       brk
62D2: 00       brk
62D3: 00       brk
62D4: 00       brk
62D5: 00       brk
62D6: 00       brk
62D7: 00       brk
62D8: 00       brk
62D9: 00       brk
62DA: 00       brk
62DB: 00       brk
62DC: 00       brk
62DD: 00       brk
62DE: 00       brk
62DF: 00       brk
62E0: 00       brk
62E1: 00       brk
62E2: 00       brk
62E3: 00       brk
62E4: 00       brk
62E5: 00       brk
62E6: 00       brk
62E7: 00       brk
62E8: 40       rti
62E9: C0 00    cpy #$00
62EB: 00       brk
62EC: 00       brk
62ED: 00       brk
62EE: 00       brk
62EF: 00       brk
62F0: 80 C0    nop #$c0
62F2: 00       brk
62F3: 00       brk
62F4: 00       brk
62F5: 00       brk
62F6: 00       brk
62F7: 00       brk
62F8: 00       brk
62F9: 00       brk
62FA: 00       brk
62FB: 00       brk
62FC: 00       brk
62FD: 00       brk
62FE: 00       brk
62FF: 00       brk
6300: 40       rti
6301: 00       brk
6302: 00       brk
6303: 00       brk
6304: 00       brk
6305: 00       brk
6306: 00       brk
6307: 00       brk
6308: 80 C0    nop #$c0
630A: 00       brk
630B: 00       brk
630C: 00       brk
630D: 00       brk
630E: 00       brk
630F: 00       brk
6310: 40       rti
6311: C0 00    cpy #$00
6313: 00       brk
6314: 00       brk
6315: 00       brk
6316: 00       brk
6317: 00       brk
6318: 80 80    nop #$80
631A: 00       brk
631B: 00       brk
631C: 00       brk
631D: 00       brk
631E: 00       brk
631F: 00       brk
6320: 00       brk
6321: 00       brk
6322: 00       brk
6323: 00       brk
6324: 00       brk
6325: 00       brk
6326: 00       brk
6327: 00       brk
6328: C0 00    cpy #$00
632A: C0 00    cpy #$00
632C: 00       brk
632D: 00       brk
632E: 00       brk
632F: 00       brk
6330: C0 40    cpy #$40
6332: C0 00    cpy #$00
6334: 00       brk
6335: 00       brk
6336: 00       brk
6337: 00       brk
6338: 80 80    nop #$80
633A: 00       brk
633B: 00       brk
633C: 00       brk
633D: 00       brk
633E: 00       brk
633F: 00       brk
6340: 40       rti
6341: 00       brk
6342: 00       brk
6343: 00       brk
6344: 00       brk
6345: 00       brk
6346: 00       brk
6347: 00       brk
6348: 80 C0    nop #$c0
634A: 00       brk
634B: 00       brk
634C: 00       brk
634D: 00       brk
634E: 00       brk
634F: 00       brk
6350: 00       brk
6351: C0 00    cpy #$00
6353: 00       brk
6354: 00       brk
6355: 00       brk
6356: 00       brk
6357: 00       brk
6358: 00       brk
6359: 00       brk
635A: 00       brk
635B: 00       brk
635C: 00       brk
635D: 00       brk
635E: 00       brk
635F: 00       brk
6360: 40       rti
6361: 40       rti
6362: 00       brk
6363: 00       brk
6364: 00       brk
6365: 00       brk
6366: 00       brk
6367: 00       brk
6368: 80 80    nop #$80
636A: 00       brk
636B: 00       brk
636C: 00       brk
636D: 00       brk
636E: 00       brk
636F: 00       brk
6370: 00       brk
6371: 00       brk
6372: 00       brk
6373: 00       brk
6374: 00       brk
6375: 00       brk
6376: 00       brk
6377: 00       brk
6378: 00       brk
6379: 00       brk
637A: 00       brk
637B: 00       brk
637C: 00       brk
637D: 00       brk
637E: 00       brk
637F: 00       brk
6380: 00       brk
6381: 00       brk
6382: 00       brk
6383: 00       brk
6384: 00       brk
6385: 00       brk
6386: 00       brk
6387: 00       brk
6388: 00       brk
6389: 00       brk
638A: 00       brk
638B: 00       brk
638C: 00       brk
638D: 00       brk
638E: 00       brk
638F: 00       brk
6390: 00       brk
6391: 00       brk
6392: 00       brk
6393: 00       brk
6394: 00       brk
6395: 00       brk
6396: 00       brk
6397: 00       brk
6398: 00       brk
6399: 00       brk
639A: 00       brk
639B: 00       brk
639C: 00       brk
639D: 00       brk
639E: 00       brk
639F: 00       brk
63A0: 00       brk
63A1: 40       rti
63A2: 00       brk
63A3: 00       brk
63A4: 00       brk
63A5: 00       brk
63A6: 00       brk
63A7: 00       brk
63A8: 40       rti
63A9: C0 00    cpy #$00
63AB: 00       brk
63AC: 00       brk
63AD: 00       brk
63AE: 00       brk
63AF: 00       brk
63B0: 80 C0    nop #$c0
63B2: 00       brk
63B3: 00       brk
63B4: 00       brk
63B5: 00       brk
63B6: 00       brk
63B7: 00       brk
63B8: 00       brk
63B9: 80 00    nop #$00
63BB: 00       brk
63BC: 00       brk
63BD: 00       brk
63BE: 00       brk
63BF: 00       brk
63C0: 00       brk
63C1: 00       brk
63C2: 00       brk
63C3: 00       brk
63C4: 00       brk
63C5: 00       brk
63C6: 00       brk
63C7: 00       brk
63C8: 00       brk
63C9: 00       brk
63CA: 00       brk
63CB: 00       brk
63CC: 00       brk
63CD: 00       brk
63CE: 00       brk
63CF: 00       brk
63D0: 00       brk
63D1: 00       brk
63D2: 00       brk
63D3: 00       brk
63D4: 00       brk
63D5: 00       brk
63D6: 00       brk
63D7: 00       brk
63D8: 00       brk
63D9: 00       brk
63DA: 00       brk
63DB: 00       brk
63DC: 00       brk
63DD: 00       brk
63DE: 00       brk
63DF: 00       brk
63E0: 00       brk
63E1: 00       brk
63E2: 00       brk
63E3: 00       brk
63E4: 00       brk
63E5: 00       brk
63E6: 00       brk
63E7: 00       brk
63E8: 00       brk
63E9: 00       brk
63EA: 00       brk
63EB: 00       brk
63EC: 00       brk
63ED: 00       brk
63EE: 00       brk
63EF: 00       brk
63F0: 00       brk
63F1: 00       brk
63F2: 00       brk
63F3: 00       brk
63F4: 00       brk
63F5: 00       brk
63F6: 00       brk
63F7: 00       brk
63F8: 00       brk
63F9: 00       brk
63FA: 00       brk
63FB: 00       brk
63FC: 00       brk
63FD: 00       brk
63FE: 00       brk
63FF: 00       brk
6400: 00       brk
6401: 00       brk
6402: 00       brk
6403: 00       brk
6404: 00       brk
6405: 00       brk
6406: 00       brk
6407: 00       brk
6408: 00       brk
6409: 00       brk
640A: 00       brk
640B: 00       brk
640C: 00       brk
640D: 00       brk
640E: 00       brk
640F: 00       brk
6410: 00       brk
6411: 00       brk
6412: 00       brk
6413: 00       brk
6414: 00       brk
6415: 00       brk
6416: 00       brk
6417: 00       brk
6418: 00       brk
6419: 00       brk
641A: 00       brk
641B: 00       brk
641C: 00       brk
641D: 00       brk
641E: 00       brk
641F: 00       brk
6420: 00       brk
6421: 00       brk
6422: 00       brk
6423: 00       brk
6424: 00       brk
6425: 00       brk
6426: 00       brk
6427: 00       brk
6428: 00       brk
6429: 00       brk
642A: 00       brk
642B: 00       brk
642C: 00       brk
642D: 00       brk
642E: 00       brk
642F: 00       brk
6430: 00       brk
6431: 00       brk
6432: 00       brk
6433: 00       brk
6434: 00       brk
6435: 00       brk
6436: 00       brk
6437: 00       brk
6438: 00       brk
6439: 00       brk
643A: 00       brk
643B: 00       brk
643C: 00       brk
643D: 00       brk
643E: 00       brk
643F: 00       brk
6440: 00       brk
6441: 00       brk
6442: 00       brk
6443: 00       brk
6444: 00       brk
6445: 00       brk
6446: 00       brk
6447: 00       brk
6448: 00       brk
6449: 00       brk
644A: 00       brk
644B: 00       brk
644C: 00       brk
644D: 00       brk
644E: 00       brk
644F: 00       brk
6450: 00       brk
6451: 00       brk
6452: 00       brk
6453: 00       brk
6454: 00       brk
6455: 00       brk
6456: 00       brk
6457: 00       brk
6458: 00       brk
6459: 00       brk
645A: 00       brk
645B: 00       brk
645C: 00       brk
645D: 00       brk
645E: 00       brk
645F: 00       brk
6460: 00       brk
6461: 00       brk
6462: 00       brk
6463: 00       brk
6464: 00       brk
6465: 00       brk
6466: 00       brk
6467: 00       brk
6468: 00       brk
6469: 00       brk
646A: 00       brk
646B: 00       brk
646C: 00       brk
646D: 00       brk
646E: 00       brk
646F: 00       brk
6470: 00       brk
6471: 00       brk
6472: 00       brk
6473: 00       brk
6474: 00       brk
6475: 00       brk
6476: 00       brk
6477: 00       brk
6478: 00       brk
6479: 00       brk
647A: 00       brk
647B: 00       brk
647C: 00       brk
647D: 00       brk
647E: 00       brk
647F: 00       brk
6480: 00       brk
6481: 00       brk
6482: 00       brk
6483: 00       brk
6484: 00       brk
6485: 00       brk
6486: 00       brk
6487: 00       brk
6488: 00       brk
6489: 00       brk
648A: 00       brk
648B: 00       brk
648C: 00       brk
648D: 00       brk
648E: 00       brk
648F: 00       brk
6490: 00       brk
6491: 00       brk
6492: 00       brk
6493: 00       brk
6494: 00       brk
6495: 00       brk
6496: 00       brk
6497: 00       brk
6498: 00       brk
6499: 00       brk
649A: 00       brk
649B: 00       brk
649C: 00       brk
649D: 00       brk
649E: 00       brk
649F: 00       brk
64A0: 00       brk
64A1: 00       brk
64A2: 00       brk
64A3: 00       brk
64A4: 00       brk
64A5: 00       brk
64A6: 00       brk
64A7: 00       brk
64A8: 00       brk
64A9: 00       brk
64AA: 00       brk
64AB: 00       brk
64AC: 00       brk
64AD: 00       brk
64AE: 00       brk
64AF: 00       brk
64B0: 00       brk
64B1: 00       brk
64B2: 00       brk
64B3: 00       brk
64B4: 00       brk
64B5: 00       brk
64B6: 00       brk
64B7: 00       brk
64B8: 00       brk
64B9: 00       brk
64BA: 00       brk
64BB: 00       brk
64BC: 00       brk
64BD: 00       brk
64BE: 00       brk
64BF: 00       brk
64C0: 00       brk
64C1: 00       brk
64C2: 00       brk
64C3: 00       brk
64C4: 00       brk
64C5: 00       brk
64C6: 00       brk
64C7: 00       brk
64C8: 00       brk
64C9: 00       brk
64CA: 00       brk
64CB: 00       brk
64CC: 00       brk
64CD: 00       brk
64CE: 00       brk
64CF: 00       brk
64D0: 00       brk
64D1: 00       brk
64D2: 00       brk
64D3: 00       brk
64D4: 00       brk
64D5: 00       brk
64D6: 00       brk
64D7: 00       brk
64D8: 00       brk
64D9: 00       brk
64DA: 00       brk
64DB: 00       brk
64DC: 00       brk
64DD: 00       brk
64DE: 00       brk
64DF: 00       brk
64E0: 00       brk
64E1: 00       brk
64E2: 00       brk
64E3: 00       brk
64E4: 00       brk
64E5: 00       brk
64E6: 00       brk
64E7: 00       brk
64E8: 00       brk
64E9: 00       brk
64EA: 00       brk
64EB: 00       brk
64EC: 00       brk
64ED: 00       brk
64EE: 00       brk
64EF: 00       brk
64F0: 00       brk
64F1: 00       brk
64F2: 00       brk
64F3: 00       brk
64F4: 00       brk
64F5: 00       brk
64F6: 00       brk
64F7: 00       brk
64F8: 00       brk
64F9: 00       brk
64FA: 00       brk
64FB: 00       brk
64FC: 00       brk
64FD: 00       brk
64FE: 00       brk
64FF: 00       brk
6500: 00       brk
6501: 00       brk
6502: 00       brk
6503: 00       brk
6504: 00       brk
6505: 00       brk
6506: 00       brk
6507: 00       brk
6508: 00       brk
6509: 00       brk
650A: 00       brk
650B: 00       brk
650C: 00       brk
650D: 00       brk
650E: 00       brk
650F: 00       brk
6510: 00       brk
6511: 00       brk
6512: 00       brk
6513: 00       brk
6514: 00       brk
6515: 00       brk
6516: 00       brk
6517: 00       brk
6518: 00       brk
6519: 00       brk
651A: 00       brk
651B: 00       brk
651C: 00       brk
651D: 00       brk
651E: 00       brk
651F: 00       brk
6520: 00       brk
6521: 00       brk
6522: 00       brk
6523: 00       brk
6524: 00       brk
6525: 00       brk
6526: 00       brk
6527: 00       brk
6528: 00       brk
6529: 00       brk
652A: 00       brk
652B: 00       brk
652C: 00       brk
652D: 00       brk
652E: 00       brk
652F: 00       brk
6530: 00       brk
6531: 00       brk
6532: 00       brk
6533: 00       brk
6534: 00       brk
6535: 00       brk
6536: 00       brk
6537: 00       brk
6538: 00       brk
6539: 00       brk
653A: 00       brk
653B: 00       brk
653C: 00       brk
653D: 00       brk
653E: 00       brk
653F: 00       brk
6540: 00       brk
6541: 00       brk
6542: 00       brk
6543: 00       brk
6544: 00       brk
6545: 00       brk
6546: 00       brk
6547: 00       brk
6548: 00       brk
6549: 00       brk
654A: 00       brk
654B: 00       brk
654C: 00       brk
654D: 00       brk
654E: 00       brk
654F: 00       brk
6550: 00       brk
6551: 00       brk
6552: 00       brk
6553: 00       brk
6554: 00       brk
6555: 00       brk
6556: 00       brk
6557: 00       brk
6558: 00       brk
6559: 00       brk
655A: 00       brk
655B: 00       brk
655C: 00       brk
655D: 00       brk
655E: 00       brk
655F: 00       brk
6560: 00       brk
6561: 00       brk
6562: 00       brk
6563: 00       brk
6564: 00       brk
6565: 00       brk
6566: 00       brk
6567: 00       brk
6568: 00       brk
6569: 00       brk
656A: 00       brk
656B: 00       brk
656C: 00       brk
656D: 00       brk
656E: 00       brk
656F: 00       brk
6570: 00       brk
6571: 00       brk
6572: 00       brk
6573: 00       brk
6574: 00       brk
6575: 00       brk
6576: 00       brk
6577: 00       brk
6578: 00       brk
6579: 00       brk
657A: 00       brk
657B: 00       brk
657C: 00       brk
657D: 00       brk
657E: 00       brk
657F: 00       brk
6580: 00       brk
6581: 00       brk
6582: 00       brk
6583: 00       brk
6584: 00       brk
6585: 00       brk
6586: 00       brk
6587: 00       brk
6588: 00       brk
6589: 00       brk
658A: 00       brk
658B: 00       brk
658C: 00       brk
658D: 00       brk
658E: 00       brk
658F: 00       brk
6590: 00       brk
6591: 00       brk
6592: 00       brk
6593: 00       brk
6594: 00       brk
6595: 00       brk
6596: 00       brk
6597: 00       brk
6598: 00       brk
6599: 00       brk
659A: 00       brk
659B: 00       brk
659C: 00       brk
659D: 00       brk
659E: 00       brk
659F: 00       brk
65A0: 00       brk
65A1: 00       brk
65A2: 00       brk
65A3: 00       brk
65A4: 00       brk
65A5: 00       brk
65A6: 00       brk
65A7: 00       brk
65A8: 00       brk
65A9: 00       brk
65AA: 00       brk
65AB: 00       brk
65AC: 00       brk
65AD: 00       brk
65AE: 00       brk
65AF: 00       brk
65B0: 00       brk
65B1: 00       brk
65B2: 00       brk
65B3: 00       brk
65B4: 00       brk
65B5: 00       brk
65B6: 00       brk
65B7: 00       brk
65B8: 00       brk
65B9: 00       brk
65BA: 00       brk
65BB: 00       brk
65BC: 00       brk
65BD: 00       brk
65BE: 00       brk
65BF: 00       brk
65C0: 00       brk
65C1: 00       brk
65C2: 00       brk
65C3: 00       brk
65C4: 00       brk
65C5: 00       brk
65C6: 00       brk
65C7: 00       brk
65C8: 00       brk
65C9: 00       brk
65CA: 00       brk
65CB: 00       brk
65CC: 00       brk
65CD: 00       brk
65CE: 00       brk
65CF: 00       brk
65D0: 00       brk
65D1: 00       brk
65D2: 00       brk
65D3: 00       brk
65D4: 00       brk
65D5: 00       brk
65D6: 00       brk
65D7: 00       brk
65D8: 00       brk
65D9: 00       brk
65DA: 00       brk
65DB: 00       brk
65DC: 00       brk
65DD: 00       brk
65DE: 00       brk
65DF: 00       brk
65E0: 00       brk
65E1: 00       brk
65E2: 00       brk
65E3: 00       brk
65E4: 00       brk
65E5: 00       brk
65E6: 00       brk
65E7: 00       brk
65E8: 00       brk
65E9: 00       brk
65EA: 00       brk
65EB: 00       brk
65EC: 00       brk
65ED: 00       brk
65EE: 00       brk
65EF: 00       brk
65F0: 00       brk
65F1: 00       brk
65F2: 00       brk
65F3: 00       brk
65F4: 00       brk
65F5: 00       brk
65F6: 00       brk
65F7: 00       brk
65F8: 00       brk
65F9: 00       brk
65FA: 00       brk
65FB: 00       brk
65FC: 00       brk
65FD: 00       brk
65FE: 00       brk
65FF: 00       brk
6600: 00       brk
6601: 00       brk
6602: 00       brk
6603: 00       brk
6604: 00       brk
6605: 00       brk
6606: 00       brk
6607: 00       brk
6608: 00       brk
6609: 00       brk
660A: 00       brk
660B: 00       brk
660C: 00       brk
660D: 00       brk
660E: 00       brk
660F: 00       brk
6610: 00       brk
6611: 00       brk
6612: 00       brk
6613: 00       brk
6614: 00       brk
6615: 00       brk
6616: 00       brk
6617: 00       brk
6618: 00       brk
6619: 00       brk
661A: 00       brk
661B: 00       brk
661C: 00       brk
661D: 00       brk
661E: 00       brk
661F: 00       brk
6620: 00       brk
6621: 00       brk
6622: 00       brk
6623: 00       brk
6624: 00       brk
6625: 00       brk
6626: 00       brk
6627: 00       brk
6628: 00       brk
6629: 00       brk
662A: 00       brk
662B: 00       brk
662C: 00       brk
662D: 00       brk
662E: 00       brk
662F: 00       brk
6630: 00       brk
6631: 00       brk
6632: 00       brk
6633: 00       brk
6634: 00       brk
6635: 00       brk
6636: 00       brk
6637: 00       brk
6638: 00       brk
6639: 00       brk
663A: 00       brk
663B: 00       brk
663C: 00       brk
663D: 00       brk
663E: 00       brk
663F: 00       brk
6640: 00       brk
6641: 00       brk
6642: 00       brk
6643: 00       brk
6644: 00       brk
6645: 00       brk
6646: 00       brk
6647: 00       brk
6648: 00       brk
6649: 00       brk
664A: 00       brk
664B: 00       brk
664C: 00       brk
664D: 00       brk
664E: 00       brk
664F: 00       brk
6650: 00       brk
6651: 00       brk
6652: 00       brk
6653: 00       brk
6654: 00       brk
6655: 00       brk
6656: 00       brk
6657: 00       brk
6658: 00       brk
6659: 00       brk
665A: 00       brk
665B: 00       brk
665C: 00       brk
665D: 00       brk
665E: 00       brk
665F: 00       brk
6660: 00       brk
6661: 00       brk
6662: 00       brk
6663: 00       brk
6664: 00       brk
6665: 00       brk
6666: 00       brk
6667: 00       brk
6668: 00       brk
6669: 00       brk
666A: 00       brk
666B: 00       brk
666C: 00       brk
666D: 00       brk
666E: 00       brk
666F: 00       brk
6670: 00       brk
6671: 00       brk
6672: 00       brk
6673: 00       brk
6674: 00       brk
6675: 00       brk
6676: 00       brk
6677: 00       brk
6678: 00       brk
6679: 00       brk
667A: 00       brk
667B: 00       brk
667C: 00       brk
667D: 00       brk
667E: 00       brk
667F: 00       brk
6680: 00       brk
6681: 00       brk
6682: 00       brk
6683: 00       brk
6684: 00       brk
6685: 00       brk
6686: 00       brk
6687: 00       brk
6688: 00       brk
6689: 00       brk
668A: 00       brk
668B: 00       brk
668C: 00       brk
668D: 00       brk
668E: 00       brk
668F: 00       brk
6690: 00       brk
6691: 00       brk
6692: 00       brk
6693: 00       brk
6694: 00       brk
6695: 00       brk
6696: 00       brk
6697: 00       brk
6698: 00       brk
6699: 00       brk
669A: 00       brk
669B: 00       brk
669C: 00       brk
669D: 00       brk
669E: 00       brk
669F: 00       brk
66A0: 00       brk
66A1: 00       brk
66A2: 00       brk
66A3: 00       brk
66A4: 00       brk
66A5: 00       brk
66A6: 00       brk
66A7: 00       brk
66A8: 00       brk
66A9: 00       brk
66AA: 00       brk
66AB: 00       brk
66AC: 00       brk
66AD: 00       brk
66AE: 00       brk
66AF: 00       brk
66B0: 00       brk
66B1: 00       brk
66B2: 00       brk
66B3: 00       brk
66B4: 00       brk
66B5: 00       brk
66B6: 00       brk
66B7: 00       brk
66B8: 00       brk
66B9: 00       brk
66BA: 00       brk
66BB: 00       brk
66BC: 00       brk
66BD: 00       brk
66BE: 00       brk
66BF: 00       brk
66C0: 00       brk
66C1: 00       brk
66C2: 00       brk
66C3: 00       brk
66C4: 00       brk
66C5: 00       brk
66C6: 00       brk
66C7: 00       brk
66C8: 00       brk
66C9: 00       brk
66CA: 00       brk
66CB: 00       brk
66CC: 00       brk
66CD: 00       brk
66CE: 00       brk
66CF: 00       brk
66D0: 00       brk
66D1: 00       brk
66D2: 00       brk
66D3: 00       brk
66D4: 00       brk
66D5: 00       brk
66D6: 00       brk
66D7: 00       brk
66D8: 00       brk
66D9: 00       brk
66DA: 00       brk
66DB: 00       brk
66DC: 00       brk
66DD: 00       brk
66DE: 00       brk
66DF: 00       brk
66E0: 00       brk
66E1: 00       brk
66E2: 00       brk
66E3: 00       brk
66E4: 00       brk
66E5: 00       brk
66E6: 00       brk
66E7: 00       brk
66E8: 00       brk
66E9: 00       brk
66EA: 00       brk
66EB: 00       brk
66EC: 00       brk
66ED: 00       brk
66EE: 00       brk
66EF: 00       brk
66F0: 00       brk
66F1: 00       brk
66F2: 00       brk
66F3: 00       brk
66F4: 00       brk
66F5: 00       brk
66F6: 00       brk
66F7: 00       brk
66F8: 00       brk
66F9: 00       brk
66FA: 00       brk
66FB: 00       brk
66FC: 00       brk
66FD: 00       brk
66FE: 00       brk
66FF: 00       brk
6700: 00       brk
6701: 00       brk
6702: 00       brk
6703: 00       brk
6704: 00       brk
6705: 00       brk
6706: 00       brk
6707: 00       brk
6708: 00       brk
6709: 00       brk
670A: 00       brk
670B: 00       brk
670C: 00       brk
670D: 00       brk
670E: 00       brk
670F: 00       brk
6710: 00       brk
6711: 00       brk
6712: 00       brk
6713: 00       brk
6714: 00       brk
6715: 00       brk
6716: 00       brk
6717: 00       brk
6718: 00       brk
6719: 00       brk
671A: 00       brk
671B: 00       brk
671C: 00       brk
671D: 00       brk
671E: 00       brk
671F: 00       brk
6720: 00       brk
6721: 00       brk
6722: 00       brk
6723: 00       brk
6724: 00       brk
6725: 00       brk
6726: 00       brk
6727: 00       brk
6728: 00       brk
6729: 00       brk
672A: 00       brk
672B: 00       brk
672C: 00       brk
672D: 00       brk
672E: 00       brk
672F: 00       brk
6730: 00       brk
6731: 00       brk
6732: 00       brk
6733: 00       brk
6734: 00       brk
6735: 00       brk
6736: 00       brk
6737: 00       brk
6738: 00       brk
6739: 00       brk
673A: 00       brk
673B: 00       brk
673C: 00       brk
673D: 00       brk
673E: 00       brk
673F: 00       brk
6740: 00       brk
6741: 00       brk
6742: 00       brk
6743: 00       brk
6744: 00       brk
6745: 00       brk
6746: 00       brk
6747: 00       brk
6748: 00       brk
6749: 00       brk
674A: 00       brk
674B: 00       brk
674C: 00       brk
674D: 00       brk
674E: 00       brk
674F: 00       brk
6750: 00       brk
6751: 00       brk
6752: 00       brk
6753: 00       brk
6754: 00       brk
6755: 00       brk
6756: 00       brk
6757: 00       brk
6758: 00       brk
6759: 00       brk
675A: 00       brk
675B: 00       brk
675C: 00       brk
675D: 00       brk
675E: 00       brk
675F: 00       brk
6760: 00       brk
6761: 00       brk
6762: 00       brk
6763: 00       brk
6764: 00       brk
6765: 00       brk
6766: 00       brk
6767: 00       brk
6768: 00       brk
6769: 00       brk
676A: 00       brk
676B: 00       brk
676C: 00       brk
676D: 00       brk
676E: 00       brk
676F: 00       brk
6770: 00       brk
6771: 00       brk
6772: 00       brk
6773: 00       brk
6774: 00       brk
6775: 00       brk
6776: 00       brk
6777: 00       brk
6778: 00       brk
6779: 00       brk
677A: 00       brk
677B: 00       brk
677C: 00       brk
677D: 00       brk
677E: 00       brk
677F: 00       brk
6780: 00       brk
6781: 00       brk
6782: 00       brk
6783: 00       brk
6784: 00       brk
6785: 00       brk
6786: 00       brk
6787: 00       brk
6788: 00       brk
6789: 00       brk
678A: 00       brk
678B: 00       brk
678C: 00       brk
678D: 00       brk
678E: 00       brk
678F: 00       brk
6790: 00       brk
6791: 00       brk
6792: 00       brk
6793: 00       brk
6794: 00       brk
6795: 00       brk
6796: 00       brk
6797: 00       brk
6798: 00       brk
6799: 00       brk
679A: 00       brk
679B: 00       brk
679C: 00       brk
679D: 00       brk
679E: 00       brk
679F: 00       brk
67A0: 00       brk
67A1: 00       brk
67A2: 00       brk
67A3: 00       brk
67A4: 00       brk
67A5: 00       brk
67A6: 00       brk
67A7: 00       brk
67A8: 00       brk
67A9: 00       brk
67AA: 00       brk
67AB: 00       brk
67AC: 00       brk
67AD: 00       brk
67AE: 00       brk
67AF: 00       brk
67B0: 00       brk
67B1: 00       brk
67B2: 00       brk
67B3: 00       brk
67B4: 00       brk
67B5: 00       brk
67B6: 00       brk
67B7: 00       brk
67B8: 00       brk
67B9: 00       brk
67BA: 00       brk
67BB: 00       brk
67BC: 00       brk
67BD: 00       brk
67BE: 00       brk
67BF: 00       brk
67C0: 00       brk
67C1: 00       brk
67C2: 00       brk
67C3: 00       brk
67C4: 00       brk
67C5: 00       brk
67C6: 00       brk
67C7: 00       brk
67C8: 00       brk
67C9: 00       brk
67CA: 00       brk
67CB: 00       brk
67CC: 00       brk
67CD: 00       brk
67CE: 00       brk
67CF: 00       brk
67D0: 00       brk
67D1: 00       brk
67D2: 00       brk
67D3: 00       brk
67D4: 00       brk
67D5: 00       brk
67D6: 00       brk
67D7: 00       brk
67D8: 00       brk
67D9: 00       brk
67DA: 00       brk
67DB: 00       brk
67DC: 00       brk
67DD: 00       brk
67DE: 00       brk
67DF: 00       brk
67E0: 00       brk
67E1: 00       brk
67E2: 00       brk
67E3: 00       brk
67E4: 00       brk
67E5: 00       brk
67E6: 00       brk
67E7: 00       brk
67E8: 00       brk
67E9: 00       brk
67EA: 00       brk
67EB: 00       brk
67EC: 00       brk
67ED: 00       brk
67EE: 00       brk
67EF: 00       brk
67F0: 00       brk
67F1: 00       brk
67F2: 00       brk
67F3: 00       brk
67F4: 00       brk
67F5: 00       brk
67F6: 00       brk
67F7: 00       brk
67F8: 00       brk
67F9: 00       brk
67FA: 00       brk
67FB: 00       brk
67FC: 00       brk
67FD: 00       brk
67FE: 00       brk
67FF: 00       brk
6800: 00       brk
6801: 00       brk
6802: 00       brk
6803: 00       brk
6804: 00       brk
6805: 00       brk
6806: 00       brk
6807: 00       brk
6808: 00       brk
6809: 00       brk
680A: 00       brk
680B: 00       brk
680C: 00       brk
680D: 00       brk
680E: 00       brk
680F: 00       brk
6810: 00       brk
6811: 00       brk
6812: 00       brk
6813: 00       brk
6814: 00       brk
6815: 00       brk
6816: 00       brk
6817: 00       brk
6818: 00       brk
6819: 00       brk
681A: 00       brk
681B: 00       brk
681C: 00       brk
681D: 00       brk
681E: 00       brk
681F: 00       brk
6820: 00       brk
6821: 00       brk
6822: 00       brk
6823: 00       brk
6824: 00       brk
6825: 00       brk
6826: 00       brk
6827: 00       brk
6828: 00       brk
6829: 00       brk
682A: 00       brk
682B: 00       brk
682C: 00       brk
682D: 00       brk
682E: 00       brk
682F: 00       brk
6830: 00       brk
6831: 00       brk
6832: 00       brk
6833: 00       brk
6834: 00       brk
6835: 00       brk
6836: 00       brk
6837: 00       brk
6838: 00       brk
6839: 00       brk
683A: 00       brk
683B: 00       brk
683C: 00       brk
683D: 00       brk
683E: 00       brk
683F: 00       brk
6840: 00       brk
6841: 00       brk
6842: 00       brk
6843: 00       brk
6844: 00       brk
6845: 00       brk
6846: 00       brk
6847: 00       brk
6848: 00       brk
6849: 00       brk
684A: 00       brk
684B: 00       brk
684C: 00       brk
684D: 00       brk
684E: 00       brk
684F: 00       brk
6850: 00       brk
6851: 00       brk
6852: 00       brk
6853: 00       brk
6854: 00       brk
6855: 00       brk
6856: 00       brk
6857: 00       brk
6858: 00       brk
6859: 00       brk
685A: 00       brk
685B: 00       brk
685C: 00       brk
685D: 00       brk
685E: 00       brk
685F: 00       brk
6860: 00       brk
6861: 00       brk
6862: 00       brk
6863: 00       brk
6864: 00       brk
6865: 00       brk
6866: 00       brk
6867: 00       brk
6868: 00       brk
6869: 00       brk
686A: 00       brk
686B: 00       brk
686C: 00       brk
686D: 00       brk
686E: 00       brk
686F: 00       brk
6870: 00       brk
6871: 00       brk
6872: 00       brk
6873: 00       brk
6874: 00       brk
6875: 00       brk
6876: 00       brk
6877: 00       brk
6878: 00       brk
6879: 00       brk
687A: 00       brk
687B: 00       brk
687C: 00       brk
687D: 00       brk
687E: 00       brk
687F: 00       brk
6880: 00       brk
6881: 00       brk
6882: 00       brk
6883: 00       brk
6884: 00       brk
6885: 00       brk
6886: 00       brk
6887: 00       brk
6888: 00       brk
6889: 00       brk
688A: 00       brk
688B: 00       brk
688C: 00       brk
688D: 00       brk
688E: 00       brk
688F: 00       brk
6890: 00       brk
6891: 00       brk
6892: 00       brk
6893: 00       brk
6894: 00       brk
6895: 00       brk
6896: 00       brk
6897: 00       brk
6898: 00       brk
6899: 00       brk
689A: 00       brk
689B: 00       brk
689C: 00       brk
689D: 00       brk
689E: 00       brk
689F: 00       brk
68A0: 00       brk
68A1: 00       brk
68A2: 00       brk
68A3: 00       brk
68A4: 00       brk
68A5: 00       brk
68A6: 00       brk
68A7: 00       brk
68A8: 00       brk
68A9: 00       brk
68AA: 00       brk
68AB: 00       brk
68AC: 00       brk
68AD: 00       brk
68AE: 00       brk
68AF: 00       brk
68B0: 00       brk
68B1: 00       brk
68B2: 00       brk
68B3: 00       brk
68B4: 00       brk
68B5: 00       brk
68B6: 00       brk
68B7: 00       brk
68B8: 00       brk
68B9: 00       brk
68BA: 00       brk
68BB: 00       brk
68BC: 00       brk
68BD: 00       brk
68BE: 00       brk
68BF: 00       brk
68C0: 00       brk
68C1: 00       brk
68C2: 00       brk
68C3: 00       brk
68C4: 00       brk
68C5: 00       brk
68C6: 00       brk
68C7: 00       brk
68C8: 00       brk
68C9: 00       brk
68CA: 00       brk
68CB: 00       brk
68CC: 00       brk
68CD: 00       brk
68CE: 00       brk
68CF: 00       brk
68D0: 00       brk
68D1: 00       brk
68D2: 00       brk
68D3: 00       brk
68D4: 00       brk
68D5: 00       brk
68D6: 00       brk
68D7: 00       brk
68D8: 00       brk
68D9: 00       brk
68DA: 00       brk
68DB: 00       brk
68DC: 00       brk
68DD: 00       brk
68DE: 00       brk
68DF: 00       brk
68E0: 00       brk
68E1: 00       brk
68E2: 00       brk
68E3: 00       brk
68E4: 00       brk
68E5: 00       brk
68E6: 00       brk
68E7: 00       brk
68E8: 00       brk
68E9: 00       brk
68EA: 00       brk
68EB: 00       brk
68EC: 00       brk
68ED: 00       brk
68EE: 00       brk
68EF: 00       brk
68F0: 00       brk
68F1: 00       brk
68F2: 00       brk
68F3: 00       brk
68F4: 00       brk
68F5: 00       brk
68F6: 00       brk
68F7: 00       brk
68F8: 00       brk
68F9: 00       brk
68FA: 00       brk
68FB: 00       brk
68FC: 00       brk
68FD: 00       brk
68FE: 00       brk
68FF: 00       brk
6900: 00       brk
6901: 00       brk
6902: 00       brk
6903: 00       brk
6904: 00       brk
6905: 00       brk
6906: 00       brk
6907: 00       brk
6908: 00       brk
6909: 00       brk
690A: 00       brk
690B: 00       brk
690C: 00       brk
690D: 00       brk
690E: 00       brk
690F: 00       brk
6910: 00       brk
6911: 00       brk
6912: 00       brk
6913: 00       brk
6914: 00       brk
6915: 00       brk
6916: 00       brk
6917: 00       brk
6918: 00       brk
6919: 00       brk
691A: 00       brk
691B: 00       brk
691C: 00       brk
691D: 00       brk
691E: 00       brk
691F: 00       brk
6920: 00       brk
6921: 00       brk
6922: 00       brk
6923: 00       brk
6924: 00       brk
6925: 00       brk
6926: 00       brk
6927: 00       brk
6928: 00       brk
6929: 00       brk
692A: 00       brk
692B: 00       brk
692C: 00       brk
692D: 00       brk
692E: 00       brk
692F: 00       brk
6930: 00       brk
6931: 00       brk
6932: 00       brk
6933: 00       brk
6934: 00       brk
6935: 00       brk
6936: 00       brk
6937: 00       brk
6938: 00       brk
6939: 00       brk
693A: 00       brk
693B: 00       brk
693C: 00       brk
693D: 00       brk
693E: 00       brk
693F: 00       brk
6940: 00       brk
6941: 00       brk
6942: 00       brk
6943: 00       brk
6944: 00       brk
6945: 00       brk
6946: 00       brk
6947: 00       brk
6948: 00       brk
6949: 00       brk
694A: 00       brk
694B: 00       brk
694C: 00       brk
694D: 00       brk
694E: 00       brk
694F: 00       brk
6950: 00       brk
6951: 00       brk
6952: 00       brk
6953: 00       brk
6954: 00       brk
6955: 00       brk
6956: 00       brk
6957: 00       brk
6958: 00       brk
6959: 00       brk
695A: 00       brk
695B: 00       brk
695C: 00       brk
695D: 00       brk
695E: 00       brk
695F: 00       brk
6960: 00       brk
6961: 00       brk
6962: 00       brk
6963: 00       brk
6964: 00       brk
6965: 00       brk
6966: 00       brk
6967: 00       brk
6968: 00       brk
6969: 00       brk
696A: 00       brk
696B: 00       brk
696C: 00       brk
696D: 00       brk
696E: 00       brk
696F: 00       brk
6970: 00       brk
6971: 00       brk
6972: 00       brk
6973: 00       brk
6974: 00       brk
6975: 00       brk
6976: 00       brk
6977: 00       brk
6978: 00       brk
6979: 00       brk
697A: 00       brk
697B: 00       brk
697C: 00       brk
697D: 00       brk
697E: 00       brk
697F: 00       brk
6980: 00       brk
6981: 00       brk
6982: 00       brk
6983: 00       brk
6984: 00       brk
6985: 00       brk
6986: 00       brk
6987: 00       brk
6988: 00       brk
6989: 00       brk
698A: 00       brk
698B: 00       brk
698C: 00       brk
698D: 00       brk
698E: 00       brk
698F: 00       brk
6990: 00       brk
6991: 00       brk
6992: 00       brk
6993: 00       brk
6994: 00       brk
6995: 00       brk
6996: 00       brk
6997: 00       brk
6998: 00       brk
6999: 00       brk
699A: 00       brk
699B: 00       brk
699C: 00       brk
699D: 00       brk
699E: 00       brk
699F: 00       brk
69A0: 00       brk
69A1: 00       brk
69A2: 00       brk
69A3: 00       brk
69A4: 00       brk
69A5: 00       brk
69A6: 00       brk
69A7: 00       brk
69A8: 00       brk
69A9: 00       brk
69AA: 00       brk
69AB: 00       brk
69AC: 00       brk
69AD: 00       brk
69AE: 00       brk
69AF: 00       brk
69B0: 00       brk
69B1: 00       brk
69B2: 00       brk
69B3: 00       brk
69B4: 00       brk
69B5: 00       brk
69B6: 00       brk
69B7: 00       brk
69B8: 00       brk
69B9: 00       brk
69BA: 00       brk
69BB: 00       brk
69BC: 00       brk
69BD: 00       brk
69BE: 00       brk
69BF: 00       brk
69C0: 00       brk
69C1: 00       brk
69C2: 00       brk
69C3: 00       brk
69C4: 00       brk
69C5: 00       brk
69C6: 00       brk
69C7: 00       brk
69C8: 00       brk
69C9: 00       brk
69CA: 00       brk
69CB: 00       brk
69CC: 00       brk
69CD: 00       brk
69CE: 00       brk
69CF: 00       brk
69D0: 00       brk
69D1: 00       brk
69D2: 00       brk
69D3: 00       brk
69D4: 00       brk
69D5: 00       brk
69D6: 00       brk
69D7: 00       brk
69D8: 00       brk
69D9: 00       brk
69DA: 00       brk
69DB: 00       brk
69DC: 00       brk
69DD: 00       brk
69DE: 00       brk
69DF: 00       brk
69E0: 00       brk
69E1: 00       brk
69E2: 00       brk
69E3: 00       brk
69E4: 00       brk
69E5: 00       brk
69E6: 00       brk
69E7: 00       brk
69E8: 00       brk
69E9: 00       brk
69EA: 00       brk
69EB: 00       brk
69EC: 00       brk
69ED: 00       brk
69EE: 00       brk
69EF: 00       brk
69F0: 00       brk
69F1: 00       brk
69F2: 00       brk
69F3: 00       brk
69F4: 00       brk
69F5: 00       brk
69F6: 00       brk
69F7: 00       brk
69F8: 00       brk
69F9: 00       brk
69FA: 00       brk
69FB: 00       brk
69FC: 00       brk
69FD: 00       brk
69FE: 00       brk
69FF: 00       brk
6A00: 00       brk
6A01: 00       brk
6A02: 00       brk
6A03: 00       brk
6A04: 00       brk
6A05: 00       brk
6A06: 00       brk
6A07: 00       brk
6A08: 00       brk
6A09: 00       brk
6A0A: 00       brk
6A0B: 00       brk
6A0C: 00       brk
6A0D: 00       brk
6A0E: 00       brk
6A0F: 00       brk
6A10: 00       brk
6A11: 00       brk
6A12: 00       brk
6A13: 00       brk
6A14: 00       brk
6A15: 00       brk
6A16: 00       brk
6A17: 00       brk
6A18: 00       brk
6A19: 00       brk
6A1A: 00       brk
6A1B: 00       brk
6A1C: 00       brk
6A1D: 00       brk
6A1E: 00       brk
6A1F: 00       brk
6A20: 00       brk
6A21: 00       brk
6A22: 00       brk
6A23: 00       brk
6A24: 00       brk
6A25: 00       brk
6A26: 00       brk
6A27: 00       brk
6A28: 00       brk
6A29: 00       brk
6A2A: 00       brk
6A2B: 00       brk
6A2C: 00       brk
6A2D: 00       brk
6A2E: 00       brk
6A2F: 00       brk
6A30: 00       brk
6A31: 00       brk
6A32: 00       brk
6A33: 00       brk
6A34: 00       brk
6A35: 00       brk
6A36: 00       brk
6A37: 00       brk
6A38: 00       brk
6A39: 00       brk
6A3A: 00       brk
6A3B: 00       brk
6A3C: 00       brk
6A3D: 00       brk
6A3E: 00       brk
6A3F: 00       brk
6A40: 00       brk
6A41: 00       brk
6A42: 00       brk
6A43: 00       brk
6A44: 00       brk
6A45: 00       brk
6A46: 00       brk
6A47: 00       brk
6A48: 00       brk
6A49: 00       brk
6A4A: 00       brk
6A4B: 00       brk
6A4C: 00       brk
6A4D: 00       brk
6A4E: 00       brk
6A4F: 00       brk
6A50: 00       brk
6A51: 00       brk
6A52: 00       brk
6A53: 00       brk
6A54: 00       brk
6A55: 00       brk
6A56: 00       brk
6A57: 00       brk
6A58: 00       brk
6A59: 00       brk
6A5A: 00       brk
6A5B: 00       brk
6A5C: 00       brk
6A5D: 00       brk
6A5E: 00       brk
6A5F: 00       brk
6A60: 00       brk
6A61: 00       brk
6A62: 00       brk
6A63: 00       brk
6A64: 00       brk
6A65: 00       brk
6A66: 00       brk
6A67: 00       brk
6A68: 00       brk
6A69: 00       brk
6A6A: 00       brk
6A6B: 00       brk
6A6C: 00       brk
6A6D: 00       brk
6A6E: 00       brk
6A6F: 00       brk
6A70: 00       brk
6A71: 00       brk
6A72: 00       brk
6A73: 00       brk
6A74: 00       brk
6A75: 00       brk
6A76: 00       brk
6A77: 00       brk
6A78: 00       brk
6A79: 00       brk
6A7A: 00       brk
6A7B: 00       brk
6A7C: 00       brk
6A7D: 00       brk
6A7E: 00       brk
6A7F: 00       brk
6A80: 00       brk
6A81: 00       brk
6A82: 00       brk
6A83: 00       brk
6A84: 00       brk
6A85: 00       brk
6A86: 00       brk
6A87: 00       brk
6A88: 00       brk
6A89: 00       brk
6A8A: 00       brk
6A8B: 00       brk
6A8C: 00       brk
6A8D: 00       brk
6A8E: 00       brk
6A8F: 00       brk
6A90: 00       brk
6A91: 00       brk
6A92: 00       brk
6A93: 00       brk
6A94: 00       brk
6A95: 00       brk
6A96: 00       brk
6A97: 00       brk
6A98: 00       brk
6A99: 00       brk
6A9A: 00       brk
6A9B: 00       brk
6A9C: 00       brk
6A9D: 00       brk
6A9E: 00       brk
6A9F: 00       brk
6AA0: 00       brk
6AA1: 00       brk
6AA2: 00       brk
6AA3: 00       brk
6AA4: 00       brk
6AA5: 00       brk
6AA6: 00       brk
6AA7: 00       brk
6AA8: 00       brk
6AA9: 00       brk
6AAA: 00       brk
6AAB: 00       brk
6AAC: 00       brk
6AAD: 00       brk
6AAE: 00       brk
6AAF: 00       brk
6AB0: 00       brk
6AB1: 00       brk
6AB2: 00       brk
6AB3: 00       brk
6AB4: 00       brk
6AB5: 00       brk
6AB6: 00       brk
6AB7: 00       brk
6AB8: 00       brk
6AB9: 00       brk
6ABA: 00       brk
6ABB: 00       brk
6ABC: 00       brk
6ABD: 00       brk
6ABE: 00       brk
6ABF: 00       brk
6AC0: 00       brk
6AC1: 00       brk
6AC2: 00       brk
6AC3: 00       brk
6AC4: 00       brk
6AC5: 00       brk
6AC6: 00       brk
6AC7: 00       brk
6AC8: 00       brk
6AC9: 00       brk
6ACA: 00       brk
6ACB: 00       brk
6ACC: 00       brk
6ACD: 00       brk
6ACE: 00       brk
6ACF: 00       brk
6AD0: 00       brk
6AD1: 00       brk
6AD2: 00       brk
6AD3: 00       brk
6AD4: 00       brk
6AD5: 00       brk
6AD6: 00       brk
6AD7: 00       brk
6AD8: 00       brk
6AD9: 00       brk
6ADA: 00       brk
6ADB: 00       brk
6ADC: 00       brk
6ADD: 00       brk
6ADE: 00       brk
6ADF: 00       brk
6AE0: 00       brk
6AE1: 00       brk
6AE2: 00       brk
6AE3: 00       brk
6AE4: 00       brk
6AE5: 00       brk
6AE6: 00       brk
6AE7: 00       brk
6AE8: 00       brk
6AE9: 00       brk
6AEA: 00       brk
6AEB: 00       brk
6AEC: 00       brk
6AED: 00       brk
6AEE: 00       brk
6AEF: 00       brk
6AF0: 00       brk
6AF1: 00       brk
6AF2: 00       brk
6AF3: 00       brk
6AF4: 00       brk
6AF5: 00       brk
6AF6: 00       brk
6AF7: 00       brk
6AF8: 00       brk
6AF9: 00       brk
6AFA: 00       brk
6AFB: 00       brk
6AFC: 00       brk
6AFD: 00       brk
6AFE: 00       brk
6AFF: 00       brk
6B00: 00       brk
6B01: 00       brk
6B02: 00       brk
6B03: 00       brk
6B04: 00       brk
6B05: 00       brk
6B06: 00       brk
6B07: 00       brk
6B08: 00       brk
6B09: 00       brk
6B0A: 00       brk
6B0B: 00       brk
6B0C: 00       brk
6B0D: 00       brk
6B0E: 00       brk
6B0F: 00       brk
6B10: 00       brk
6B11: 00       brk
6B12: 00       brk
6B13: 00       brk
6B14: 00       brk
6B15: 00       brk
6B16: 00       brk
6B17: 00       brk
6B18: 00       brk
6B19: 00       brk
6B1A: 00       brk
6B1B: 00       brk
6B1C: 00       brk
6B1D: 00       brk
6B1E: 00       brk
6B1F: 00       brk
6B20: 00       brk
6B21: 00       brk
6B22: 00       brk
6B23: 00       brk
6B24: 00       brk
6B25: 00       brk
6B26: 00       brk
6B27: 00       brk
6B28: 00       brk
6B29: 00       brk
6B2A: 00       brk
6B2B: 00       brk
6B2C: 00       brk
6B2D: 00       brk
6B2E: 00       brk
6B2F: 00       brk
6B30: 00       brk
6B31: 00       brk
6B32: 00       brk
6B33: 00       brk
6B34: 00       brk
6B35: 00       brk
6B36: 00       brk
6B37: 00       brk
6B38: 00       brk
6B39: 00       brk
6B3A: 00       brk
6B3B: 00       brk
6B3C: 00       brk
6B3D: 00       brk
6B3E: 00       brk
6B3F: 00       brk
6B40: 00       brk
6B41: 00       brk
6B42: 00       brk
6B43: 00       brk
6B44: 00       brk
6B45: 00       brk
6B46: 00       brk
6B47: 00       brk
6B48: 00       brk
6B49: 00       brk
6B4A: 00       brk
6B4B: 00       brk
6B4C: 00       brk
6B4D: 00       brk
6B4E: 00       brk
6B4F: 00       brk
6B50: 00       brk
6B51: 00       brk
6B52: 00       brk
6B53: 00       brk
6B54: 00       brk
6B55: 00       brk
6B56: 00       brk
6B57: 00       brk
6B58: 00       brk
6B59: 00       brk
6B5A: 00       brk
6B5B: 00       brk
6B5C: 00       brk
6B5D: 00       brk
6B5E: 00       brk
6B5F: 00       brk
6B60: 00       brk
6B61: 00       brk
6B62: 00       brk
6B63: 00       brk
6B64: 00       brk
6B65: 00       brk
6B66: 00       brk
6B67: 00       brk
6B68: 00       brk
6B69: 00       brk
6B6A: 00       brk
6B6B: 00       brk
6B6C: 00       brk
6B6D: 00       brk
6B6E: 00       brk
6B6F: 00       brk
6B70: 00       brk
6B71: 00       brk
6B72: 00       brk
6B73: 00       brk
6B74: 00       brk
6B75: 00       brk
6B76: 00       brk
6B77: 00       brk
6B78: 00       brk
6B79: 00       brk
6B7A: 00       brk
6B7B: 00       brk
6B7C: 00       brk
6B7D: 00       brk
6B7E: 00       brk
6B7F: 00       brk
6B80: 00       brk
6B81: 00       brk
6B82: 00       brk
6B83: 00       brk
6B84: 00       brk
6B85: 00       brk
6B86: 00       brk
6B87: 00       brk
6B88: 00       brk
6B89: 00       brk
6B8A: 00       brk
6B8B: 00       brk
6B8C: 00       brk
6B8D: 00       brk
6B8E: 00       brk
6B8F: 00       brk
6B90: 00       brk
6B91: 00       brk
6B92: 00       brk
6B93: 00       brk
6B94: 00       brk
6B95: 00       brk
6B96: 00       brk
6B97: 00       brk
6B98: 00       brk
6B99: 00       brk
6B9A: 00       brk
6B9B: 00       brk
6B9C: 00       brk
6B9D: 00       brk
6B9E: 00       brk
6B9F: 00       brk
6BA0: 00       brk
6BA1: 00       brk
6BA2: 00       brk
6BA3: 00       brk
6BA4: 00       brk
6BA5: 00       brk
6BA6: 00       brk
6BA7: 00       brk
6BA8: 00       brk
6BA9: 00       brk
6BAA: 00       brk
6BAB: 00       brk
6BAC: 00       brk
6BAD: 00       brk
6BAE: 00       brk
6BAF: 00       brk
6BB0: 00       brk
6BB1: 00       brk
6BB2: 00       brk
6BB3: 00       brk
6BB4: 00       brk
6BB5: 00       brk
6BB6: 00       brk
6BB7: 00       brk
6BB8: 00       brk
6BB9: 00       brk
6BBA: 00       brk
6BBB: 00       brk
6BBC: 00       brk
6BBD: 00       brk
6BBE: 00       brk
6BBF: 00       brk
6BC0: 00       brk
6BC1: 00       brk
6BC2: 00       brk
6BC3: 00       brk
6BC4: 00       brk
6BC5: 00       brk
6BC6: 00       brk
6BC7: 00       brk
6BC8: 00       brk
6BC9: 00       brk
6BCA: 00       brk
6BCB: 00       brk
6BCC: 00       brk
6BCD: 00       brk
6BCE: 00       brk
6BCF: 00       brk
6BD0: 00       brk
6BD1: 00       brk
6BD2: 00       brk
6BD3: 00       brk
6BD4: 00       brk
6BD5: 00       brk
6BD6: 00       brk
6BD7: 00       brk
6BD8: 00       brk
6BD9: 00       brk
6BDA: 00       brk
6BDB: 00       brk
6BDC: 00       brk
6BDD: 00       brk
6BDE: 00       brk
6BDF: 00       brk
6BE0: 00       brk
6BE1: 00       brk
6BE2: 00       brk
6BE3: 00       brk
6BE4: 00       brk
6BE5: 00       brk
6BE6: 00       brk
6BE7: 00       brk
6BE8: 00       brk
6BE9: 00       brk
6BEA: 00       brk
6BEB: 00       brk
6BEC: 00       brk
6BED: 00       brk
6BEE: 00       brk
6BEF: 00       brk
6BF0: 00       brk
6BF1: 00       brk
6BF2: 00       brk
6BF3: 00       brk
6BF4: 00       brk
6BF5: 00       brk
6BF6: 00       brk
6BF7: 00       brk
6BF8: 00       brk
6BF9: 00       brk
6BFA: 00       brk
6BFB: 00       brk
6BFC: 00       brk
6BFD: 00       brk
6BFE: 00       brk
6BFF: 00       brk
6C00: 00       brk
6C01: 00       brk
6C02: 00       brk
6C03: 00       brk
6C04: 00       brk
6C05: 00       brk
6C06: 00       brk
6C07: 00       brk
6C08: 00       brk
6C09: 00       brk
6C0A: 00       brk
6C0B: 00       brk
6C0C: 00       brk
6C0D: 00       brk
6C0E: 00       brk
6C0F: 00       brk
6C10: 00       brk
6C11: 00       brk
6C12: 00       brk
6C13: 00       brk
6C14: 00       brk
6C15: 00       brk
6C16: 00       brk
6C17: 00       brk
6C18: 00       brk
6C19: 00       brk
6C1A: 00       brk
6C1B: 00       brk
6C1C: 00       brk
6C1D: 00       brk
6C1E: 00       brk
6C1F: 00       brk
6C20: 00       brk
6C21: 00       brk
6C22: 00       brk
6C23: 00       brk
6C24: 00       brk
6C25: 00       brk
6C26: 00       brk
6C27: 00       brk
6C28: 00       brk
6C29: 00       brk
6C2A: 00       brk
6C2B: 00       brk
6C2C: 00       brk
6C2D: 00       brk
6C2E: 00       brk
6C2F: 00       brk
6C30: 00       brk
6C31: 00       brk
6C32: 00       brk
6C33: 00       brk
6C34: 00       brk
6C35: 00       brk
6C36: 00       brk
6C37: 00       brk
6C38: 00       brk
6C39: 00       brk
6C3A: 00       brk
6C3B: 00       brk
6C3C: 00       brk
6C3D: 00       brk
6C3E: 00       brk
6C3F: 00       brk
6C40: 00       brk
6C41: 00       brk
6C42: 00       brk
6C43: 00       brk
6C44: 00       brk
6C45: 00       brk
6C46: 00       brk
6C47: 00       brk
6C48: 00       brk
6C49: 00       brk
6C4A: 00       brk
6C4B: 00       brk
6C4C: 00       brk
6C4D: 00       brk
6C4E: 00       brk
6C4F: 00       brk
6C50: 00       brk
6C51: 00       brk
6C52: 00       brk
6C53: 00       brk
6C54: 00       brk
6C55: 00       brk
6C56: 00       brk
6C57: 00       brk
6C58: 00       brk
6C59: 00       brk
6C5A: 00       brk
6C5B: 00       brk
6C5C: 00       brk
6C5D: 00       brk
6C5E: 00       brk
6C5F: 00       brk
6C60: 00       brk
6C61: 00       brk
6C62: 00       brk
6C63: 00       brk
6C64: 00       brk
6C65: 00       brk
6C66: 00       brk
6C67: 00       brk
6C68: 00       brk
6C69: 00       brk
6C6A: 00       brk
6C6B: 00       brk
6C6C: 00       brk
6C6D: 00       brk
6C6E: 00       brk
6C6F: 00       brk
6C70: 00       brk
6C71: 00       brk
6C72: 00       brk
6C73: 00       brk
6C74: 00       brk
6C75: 00       brk
6C76: 00       brk
6C77: 00       brk
6C78: 00       brk
6C79: 00       brk
6C7A: 00       brk
6C7B: 00       brk
6C7C: 00       brk
6C7D: 00       brk
6C7E: 00       brk
6C7F: 00       brk
6C80: 00       brk
6C81: 00       brk
6C82: 00       brk
6C83: 00       brk
6C84: 00       brk
6C85: 00       brk
6C86: 00       brk
6C87: 00       brk
6C88: 00       brk
6C89: 00       brk
6C8A: 00       brk
6C8B: 00       brk
6C8C: 00       brk
6C8D: 00       brk
6C8E: 00       brk
6C8F: 00       brk
6C90: 00       brk
6C91: 00       brk
6C92: 00       brk
6C93: 00       brk
6C94: 00       brk
6C95: 00       brk
6C96: 00       brk
6C97: 00       brk
6C98: 00       brk
6C99: 00       brk
6C9A: 00       brk
6C9B: 00       brk
6C9C: 00       brk
6C9D: 00       brk
6C9E: 00       brk
6C9F: 00       brk
6CA0: 00       brk
6CA1: 00       brk
6CA2: 00       brk
6CA3: 00       brk
6CA4: 00       brk
6CA5: 00       brk
6CA6: 00       brk
6CA7: 00       brk
6CA8: 00       brk
6CA9: 00       brk
6CAA: 00       brk
6CAB: 00       brk
6CAC: 00       brk
6CAD: 00       brk
6CAE: 00       brk
6CAF: 00       brk
6CB0: 00       brk
6CB1: 00       brk
6CB2: 00       brk
6CB3: 00       brk
6CB4: 00       brk
6CB5: 00       brk
6CB6: 00       brk
6CB7: 00       brk
6CB8: 00       brk
6CB9: 00       brk
6CBA: 00       brk
6CBB: 00       brk
6CBC: 00       brk
6CBD: 00       brk
6CBE: 00       brk
6CBF: 00       brk
6CC0: 00       brk
6CC1: 00       brk
6CC2: 00       brk
6CC3: 00       brk
6CC4: 00       brk
6CC5: 00       brk
6CC6: 00       brk
6CC7: 00       brk
6CC8: 00       brk
6CC9: 00       brk
6CCA: 00       brk
6CCB: 00       brk
6CCC: 00       brk
6CCD: 00       brk
6CCE: 00       brk
6CCF: 00       brk
6CD0: 00       brk
6CD1: 00       brk
6CD2: 00       brk
6CD3: 00       brk
6CD4: 00       brk
6CD5: 00       brk
6CD6: 00       brk
6CD7: 00       brk
6CD8: 00       brk
6CD9: 00       brk
6CDA: 00       brk
6CDB: 00       brk
6CDC: 00       brk
6CDD: 00       brk
6CDE: 00       brk
6CDF: 00       brk
6CE0: 00       brk
6CE1: 00       brk
6CE2: 00       brk
6CE3: 00       brk
6CE4: 00       brk
6CE5: 00       brk
6CE6: 00       brk
6CE7: 00       brk
6CE8: 00       brk
6CE9: 00       brk
6CEA: 00       brk
6CEB: 00       brk
6CEC: 00       brk
6CED: 00       brk
6CEE: 00       brk
6CEF: 00       brk
6CF0: 00       brk
6CF1: 00       brk
6CF2: 00       brk
6CF3: 00       brk
6CF4: 00       brk
6CF5: 00       brk
6CF6: 00       brk
6CF7: 00       brk
6CF8: 00       brk
6CF9: 00       brk
6CFA: 00       brk
6CFB: 00       brk
6CFC: 00       brk
6CFD: 00       brk
6CFE: 00       brk
6CFF: 00       brk
6D00: 00       brk
6D01: 00       brk
6D02: 00       brk
6D03: 00       brk
6D04: 00       brk
6D05: 00       brk
6D06: 00       brk
6D07: 00       brk
6D08: 00       brk
6D09: 00       brk
6D0A: 00       brk
6D0B: 00       brk
6D0C: 00       brk
6D0D: 00       brk
6D0E: 00       brk
6D0F: 00       brk
6D10: 00       brk
6D11: 00       brk
6D12: 00       brk
6D13: 00       brk
6D14: 00       brk
6D15: 00       brk
6D16: 00       brk
6D17: 00       brk
6D18: 00       brk
6D19: 00       brk
6D1A: 00       brk
6D1B: 00       brk
6D1C: 00       brk
6D1D: 00       brk
6D1E: 00       brk
6D1F: 00       brk
6D20: 00       brk
6D21: 00       brk
6D22: 00       brk
6D23: 00       brk
6D24: 00       brk
6D25: 00       brk
6D26: 00       brk
6D27: 00       brk
6D28: 00       brk
6D29: 00       brk
6D2A: 00       brk
6D2B: 00       brk
6D2C: 00       brk
6D2D: 00       brk
6D2E: 00       brk
6D2F: 00       brk
6D30: 00       brk
6D31: 00       brk
6D32: 00       brk
6D33: 00       brk
6D34: 00       brk
6D35: 00       brk
6D36: 00       brk
6D37: 00       brk
6D38: 00       brk
6D39: 00       brk
6D3A: 00       brk
6D3B: 00       brk
6D3C: 00       brk
6D3D: 00       brk
6D3E: 00       brk
6D3F: 00       brk
6D40: 00       brk
6D41: 00       brk
6D42: 00       brk
6D43: 00       brk
6D44: 00       brk
6D45: 00       brk
6D46: 00       brk
6D47: 00       brk
6D48: 00       brk
6D49: 00       brk
6D4A: 00       brk
6D4B: 00       brk
6D4C: 00       brk
6D4D: 00       brk
6D4E: 00       brk
6D4F: 00       brk
6D50: 00       brk
6D51: 00       brk
6D52: 00       brk
6D53: 00       brk
6D54: 00       brk
6D55: 00       brk
6D56: 00       brk
6D57: 00       brk
6D58: 00       brk
6D59: 00       brk
6D5A: 00       brk
6D5B: 00       brk
6D5C: 00       brk
6D5D: 00       brk
6D5E: 00       brk
6D5F: 00       brk
6D60: 00       brk
6D61: 00       brk
6D62: 00       brk
6D63: 00       brk
6D64: 00       brk
6D65: 00       brk
6D66: 00       brk
6D67: 00       brk
6D68: 00       brk
6D69: 00       brk
6D6A: 00       brk
6D6B: 00       brk
6D6C: 00       brk
6D6D: 00       brk
6D6E: 00       brk
6D6F: 00       brk
6D70: 00       brk
6D71: 00       brk
6D72: 00       brk
6D73: 00       brk
6D74: 00       brk
6D75: 00       brk
6D76: 00       brk
6D77: 00       brk
6D78: 00       brk
6D79: 00       brk
6D7A: 00       brk
6D7B: 00       brk
6D7C: 00       brk
6D7D: 00       brk
6D7E: 00       brk
6D7F: 00       brk
6D80: 00       brk
6D81: 00       brk
6D82: 00       brk
6D83: 00       brk
6D84: 00       brk
6D85: 00       brk
6D86: 00       brk
6D87: 00       brk
6D88: 00       brk
6D89: 00       brk
6D8A: 00       brk
6D8B: 00       brk
6D8C: 00       brk
6D8D: 00       brk
6D8E: 00       brk
6D8F: 00       brk
6D90: 00       brk
6D91: 00       brk
6D92: 00       brk
6D93: 00       brk
6D94: 00       brk
6D95: 00       brk
6D96: 00       brk
6D97: 00       brk
6D98: 00       brk
6D99: 00       brk
6D9A: 00       brk
6D9B: 00       brk
6D9C: 00       brk
6D9D: 00       brk
6D9E: 00       brk
6D9F: 00       brk
6DA0: 00       brk
6DA1: 00       brk
6DA2: 00       brk
6DA3: 00       brk
6DA4: 00       brk
6DA5: 00       brk
6DA6: 00       brk
6DA7: 00       brk
6DA8: 00       brk
6DA9: 00       brk
6DAA: 00       brk
6DAB: 00       brk
6DAC: 00       brk
6DAD: 00       brk
6DAE: 00       brk
6DAF: 00       brk
6DB0: 00       brk
6DB1: 00       brk
6DB2: 00       brk
6DB3: 00       brk
6DB4: 00       brk
6DB5: 00       brk
6DB6: 00       brk
6DB7: 00       brk
6DB8: 00       brk
6DB9: 00       brk
6DBA: 00       brk
6DBB: 00       brk
6DBC: 00       brk
6DBD: 00       brk
6DBE: 00       brk
6DBF: 00       brk
6DC0: 00       brk
6DC1: 00       brk
6DC2: 00       brk
6DC3: 00       brk
6DC4: 00       brk
6DC5: 00       brk
6DC6: 00       brk
6DC7: 00       brk
6DC8: 00       brk
6DC9: 00       brk
6DCA: 00       brk
6DCB: 00       brk
6DCC: 00       brk
6DCD: 00       brk
6DCE: 00       brk
6DCF: 00       brk
6DD0: 00       brk
6DD1: 00       brk
6DD2: 00       brk
6DD3: 00       brk
6DD4: 00       brk
6DD5: 00       brk
6DD6: 00       brk
6DD7: 00       brk
6DD8: 00       brk
6DD9: 00       brk
6DDA: 00       brk
6DDB: 00       brk
6DDC: 00       brk
6DDD: 00       brk
6DDE: 00       brk
6DDF: 00       brk
6DE0: 00       brk
6DE1: 00       brk
6DE2: 00       brk
6DE3: 00       brk
6DE4: 00       brk
6DE5: 00       brk
6DE6: 00       brk
6DE7: 00       brk
6DE8: 00       brk
6DE9: 00       brk
6DEA: 00       brk
6DEB: 00       brk
6DEC: 00       brk
6DED: 00       brk
6DEE: 00       brk
6DEF: 00       brk
6DF0: 00       brk
6DF1: 00       brk
6DF2: 00       brk
6DF3: 00       brk
6DF4: 00       brk
6DF5: 00       brk
6DF6: 00       brk
6DF7: 00       brk
6DF8: 00       brk
6DF9: 00       brk
6DFA: 00       brk
6DFB: 00       brk
6DFC: 00       brk
6DFD: 00       brk
6DFE: 00       brk
6DFF: 00       brk
6E00: 00       brk
6E01: 00       brk
6E02: 00       brk
6E03: 00       brk
6E04: 00       brk
6E05: 00       brk
6E06: 00       brk
6E07: 00       brk
6E08: 00       brk
6E09: 00       brk
6E0A: 00       brk
6E0B: 00       brk
6E0C: 00       brk
6E0D: 00       brk
6E0E: 00       brk
6E0F: 00       brk
6E10: 00       brk
6E11: 00       brk
6E12: 00       brk
6E13: 00       brk
6E14: 00       brk
6E15: 00       brk
6E16: 00       brk
6E17: 00       brk
6E18: 00       brk
6E19: 00       brk
6E1A: 00       brk
6E1B: 00       brk
6E1C: 00       brk
6E1D: 00       brk
6E1E: 00       brk
6E1F: 00       brk
6E20: 00       brk
6E21: 00       brk
6E22: 00       brk
6E23: 00       brk
6E24: 00       brk
6E25: 00       brk
6E26: 00       brk
6E27: 00       brk
6E28: 00       brk
6E29: 00       brk
6E2A: 00       brk
6E2B: 00       brk
6E2C: 00       brk
6E2D: 00       brk
6E2E: 00       brk
6E2F: 00       brk
6E30: 00       brk
6E31: 00       brk
6E32: 00       brk
6E33: 00       brk
6E34: 00       brk
6E35: 00       brk
6E36: 00       brk
6E37: 00       brk
6E38: 00       brk
6E39: 00       brk
6E3A: 00       brk
6E3B: 00       brk
6E3C: 00       brk
6E3D: 00       brk
6E3E: 00       brk
6E3F: 00       brk
6E40: 00       brk
6E41: 00       brk
6E42: 00       brk
6E43: 00       brk
6E44: 00       brk
6E45: 00       brk
6E46: 00       brk
6E47: 00       brk
6E48: 00       brk
6E49: 00       brk
6E4A: 00       brk
6E4B: 00       brk
6E4C: 00       brk
6E4D: 00       brk
6E4E: 00       brk
6E4F: 00       brk
6E50: 00       brk
6E51: 00       brk
6E52: 00       brk
6E53: 00       brk
6E54: 00       brk
6E55: 00       brk
6E56: 00       brk
6E57: 00       brk
6E58: 00       brk
6E59: 00       brk
6E5A: 00       brk
6E5B: 00       brk
6E5C: 00       brk
6E5D: 00       brk
6E5E: 00       brk
6E5F: 00       brk
6E60: 00       brk
6E61: 00       brk
6E62: 00       brk
6E63: 00       brk
6E64: 00       brk
6E65: 00       brk
6E66: 00       brk
6E67: 00       brk
6E68: 00       brk
6E69: 00       brk
6E6A: 00       brk
6E6B: 00       brk
6E6C: 00       brk
6E6D: 00       brk
6E6E: 00       brk
6E6F: 00       brk
6E70: 00       brk
6E71: 00       brk
6E72: 00       brk
6E73: 00       brk
6E74: 00       brk
6E75: 00       brk
6E76: 00       brk
6E77: 00       brk
6E78: 00       brk
6E79: 00       brk
6E7A: 00       brk
6E7B: 00       brk
6E7C: 00       brk
6E7D: 00       brk
6E7E: 00       brk
6E7F: 00       brk
6E80: 00       brk
6E81: 00       brk
6E82: 00       brk
6E83: 00       brk
6E84: 00       brk
6E85: 00       brk
6E86: 00       brk
6E87: 00       brk
6E88: 00       brk
6E89: 00       brk
6E8A: 00       brk
6E8B: 00       brk
6E8C: 00       brk
6E8D: 00       brk
6E8E: 00       brk
6E8F: 00       brk
6E90: 00       brk
6E91: 00       brk
6E92: 00       brk
6E93: 00       brk
6E94: 00       brk
6E95: 00       brk
6E96: 00       brk
6E97: 00       brk
6E98: 00       brk
6E99: 00       brk
6E9A: 00       brk
6E9B: 00       brk
6E9C: 00       brk
6E9D: 00       brk
6E9E: 00       brk
6E9F: 00       brk
6EA0: 00       brk
6EA1: 00       brk
6EA2: 00       brk
6EA3: 00       brk
6EA4: 00       brk
6EA5: 00       brk
6EA6: 00       brk
6EA7: 00       brk
6EA8: 00       brk
6EA9: 00       brk
6EAA: 00       brk
6EAB: 00       brk
6EAC: 00       brk
6EAD: 00       brk
6EAE: 00       brk
6EAF: 00       brk
6EB0: 00       brk
6EB1: 00       brk
6EB2: 00       brk
6EB3: 00       brk
6EB4: 00       brk
6EB5: 00       brk
6EB6: 00       brk
6EB7: 00       brk
6EB8: 00       brk
6EB9: 00       brk
6EBA: 00       brk
6EBB: 00       brk
6EBC: 00       brk
6EBD: 00       brk
6EBE: 00       brk
6EBF: 00       brk
6EC0: 00       brk
6EC1: 00       brk
6EC2: 00       brk
6EC3: 00       brk
6EC4: 00       brk
6EC5: 00       brk
6EC6: 00       brk
6EC7: 00       brk
6EC8: 00       brk
6EC9: 00       brk
6ECA: 00       brk
6ECB: 00       brk
6ECC: 00       brk
6ECD: 00       brk
6ECE: 00       brk
6ECF: 00       brk
6ED0: 00       brk
6ED1: 00       brk
6ED2: 00       brk
6ED3: 00       brk
6ED4: 00       brk
6ED5: 00       brk
6ED6: 00       brk
6ED7: 00       brk
6ED8: 00       brk
6ED9: 00       brk
6EDA: 00       brk
6EDB: 00       brk
6EDC: 00       brk
6EDD: 00       brk
6EDE: 00       brk
6EDF: 00       brk
6EE0: 00       brk
6EE1: 00       brk
6EE2: 00       brk
6EE3: 00       brk
6EE4: 00       brk
6EE5: 00       brk
6EE6: 00       brk
6EE7: 00       brk
6EE8: 00       brk
6EE9: 00       brk
6EEA: 00       brk
6EEB: 00       brk
6EEC: 00       brk
6EED: 00       brk
6EEE: 00       brk
6EEF: 00       brk
6EF0: 00       brk
6EF1: 00       brk
6EF2: 00       brk
6EF3: 00       brk
6EF4: 00       brk
6EF5: 00       brk
6EF6: 00       brk
6EF7: 00       brk
6EF8: 00       brk
6EF9: 00       brk
6EFA: 00       brk
6EFB: 00       brk
6EFC: 00       brk
6EFD: 00       brk
6EFE: 00       brk
6EFF: 00       brk
6F00: 00       brk
6F01: 00       brk
6F02: 00       brk
6F03: 00       brk
6F04: 00       brk
6F05: 00       brk
6F06: 00       brk
6F07: 00       brk
6F08: 00       brk
6F09: 00       brk
6F0A: 00       brk
6F0B: 00       brk
6F0C: 00       brk
6F0D: 00       brk
6F0E: 00       brk
6F0F: 00       brk
6F10: 00       brk
6F11: 00       brk
6F12: 00       brk
6F13: 00       brk
6F14: 00       brk
6F15: 00       brk
6F16: 00       brk
6F17: 00       brk
6F18: 00       brk
6F19: 00       brk
6F1A: 00       brk
6F1B: 00       brk
6F1C: 00       brk
6F1D: 00       brk
6F1E: 00       brk
6F1F: 00       brk
6F20: 00       brk
6F21: 00       brk
6F22: 00       brk
6F23: 00       brk
6F24: 00       brk
6F25: 00       brk
6F26: 00       brk
6F27: 00       brk
6F28: 00       brk
6F29: 00       brk
6F2A: 00       brk
6F2B: 00       brk
6F2C: 00       brk
6F2D: 00       brk
6F2E: 00       brk
6F2F: 00       brk
6F30: 00       brk
6F31: 00       brk
6F32: 00       brk
6F33: 00       brk
6F34: 00       brk
6F35: 00       brk
6F36: 00       brk
6F37: 00       brk
6F38: 00       brk
6F39: 00       brk
6F3A: 00       brk
6F3B: 00       brk
6F3C: 00       brk
6F3D: 00       brk
6F3E: 00       brk
6F3F: 00       brk
6F40: 00       brk
6F41: 00       brk
6F42: 00       brk
6F43: 00       brk
6F44: 00       brk
6F45: 00       brk
6F46: 00       brk
6F47: 00       brk
6F48: 00       brk
6F49: 00       brk
6F4A: 00       brk
6F4B: 00       brk
6F4C: 00       brk
6F4D: 00       brk
6F4E: 00       brk
6F4F: 00       brk
6F50: 00       brk
6F51: 00       brk
6F52: 00       brk
6F53: 00       brk
6F54: 00       brk
6F55: 00       brk
6F56: 00       brk
6F57: 00       brk
6F58: 00       brk
6F59: 00       brk
6F5A: 00       brk
6F5B: 00       brk
6F5C: 00       brk
6F5D: 00       brk
6F5E: 00       brk
6F5F: 00       brk
6F60: 00       brk
6F61: 00       brk
6F62: 00       brk
6F63: 00       brk
6F64: 00       brk
6F65: 00       brk
6F66: 00       brk
6F67: 00       brk
6F68: 00       brk
6F69: 00       brk
6F6A: 00       brk
6F6B: 00       brk
6F6C: 00       brk
6F6D: 00       brk
6F6E: 00       brk
6F6F: 00       brk
6F70: 00       brk
6F71: 00       brk
6F72: 00       brk
6F73: 00       brk
6F74: 00       brk
6F75: 00       brk
6F76: 00       brk
6F77: 00       brk
6F78: 00       brk
6F79: 00       brk
6F7A: 00       brk
6F7B: 00       brk
6F7C: 00       brk
6F7D: 00       brk
6F7E: 00       brk
6F7F: 00       brk
6F80: 00       brk
6F81: 00       brk
6F82: 00       brk
6F83: 00       brk
6F84: 00       brk
6F85: 00       brk
6F86: 00       brk
6F87: 00       brk
6F88: 00       brk
6F89: 00       brk
6F8A: 00       brk
6F8B: 00       brk
6F8C: 00       brk
6F8D: 00       brk
6F8E: 00       brk
6F8F: 00       brk
6F90: 00       brk
6F91: 00       brk
6F92: 00       brk
6F93: 00       brk
6F94: 00       brk
6F95: 00       brk
6F96: 00       brk
6F97: 00       brk
6F98: 00       brk
6F99: 00       brk
6F9A: 00       brk
6F9B: 00       brk
6F9C: 00       brk
6F9D: 00       brk
6F9E: 00       brk
6F9F: 00       brk
6FA0: 00       brk
6FA1: 00       brk
6FA2: 00       brk
6FA3: 00       brk
6FA4: 00       brk
6FA5: 00       brk
6FA6: 00       brk
6FA7: 00       brk
6FA8: 00       brk
6FA9: 00       brk
6FAA: 00       brk
6FAB: 00       brk
6FAC: 00       brk
6FAD: 00       brk
6FAE: 00       brk
6FAF: 00       brk
6FB0: 00       brk
6FB1: 00       brk
6FB2: 00       brk
6FB3: 00       brk
6FB4: 00       brk
6FB5: 00       brk
6FB6: 00       brk
6FB7: 00       brk
6FB8: 00       brk
6FB9: 00       brk
6FBA: 00       brk
6FBB: 00       brk
6FBC: 00       brk
6FBD: 00       brk
6FBE: 00       brk
6FBF: 00       brk
6FC0: 00       brk
6FC1: 00       brk
6FC2: 00       brk
6FC3: 00       brk
6FC4: 00       brk
6FC5: 00       brk
6FC6: 00       brk
6FC7: 00       brk
6FC8: 00       brk
6FC9: 00       brk
6FCA: 00       brk
6FCB: 00       brk
6FCC: 00       brk
6FCD: 00       brk
6FCE: 00       brk
6FCF: 00       brk
6FD0: 00       brk
6FD1: 00       brk
6FD2: 00       brk
6FD3: 00       brk
6FD4: 00       brk
6FD5: 00       brk
6FD6: 00       brk
6FD7: 00       brk
6FD8: 00       brk
6FD9: 00       brk
6FDA: 00       brk
6FDB: 00       brk
6FDC: 00       brk
6FDD: 00       brk
6FDE: 00       brk
6FDF: 00       brk
6FE0: 00       brk
6FE1: 00       brk
6FE2: 00       brk
6FE3: 00       brk
6FE4: 00       brk
6FE5: 00       brk
6FE6: 00       brk
6FE7: 00       brk
6FE8: 00       brk
6FE9: 00       brk
6FEA: 00       brk
6FEB: 00       brk
6FEC: 00       brk
6FED: 00       brk
6FEE: 00       brk
6FEF: 00       brk
6FF0: 00       brk
6FF1: 00       brk
6FF2: 00       brk
6FF3: 00       brk
6FF4: 00       brk
6FF5: 00       brk
6FF6: 00       brk
6FF7: 00       brk
6FF8: 00       brk
6FF9: 00       brk
6FFA: 00       brk
6FFB: 00       brk
6FFC: 00       brk
6FFD: 00       brk
6FFE: 00       brk
6FFF: 00       brk
7000: 00       brk
7001: 00       brk
7002: 00       brk
7003: 00       brk
7004: 00       brk
7005: 00       brk
7006: 00       brk
7007: 00       brk
7008: 00       brk
7009: 00       brk
700A: 00       brk
700B: 00       brk
700C: 00       brk
700D: 00       brk
700E: 00       brk
700F: 00       brk
7010: 00       brk
7011: 00       brk
7012: 00       brk
7013: 00       brk
7014: 00       brk
7015: 00       brk
7016: 00       brk
7017: 00       brk
7018: 00       brk
7019: 00       brk
701A: 00       brk
701B: 00       brk
701C: 00       brk
701D: 00       brk
701E: 00       brk
701F: 00       brk
7020: 00       brk
7021: 00       brk
7022: 00       brk
7023: 00       brk
7024: 00       brk
7025: 00       brk
7026: 00       brk
7027: 00       brk
7028: 00       brk
7029: 00       brk
702A: 00       brk
702B: 00       brk
702C: 00       brk
702D: 00       brk
702E: 00       brk
702F: 00       brk
7030: 00       brk
7031: 00       brk
7032: 00       brk
7033: 00       brk
7034: 00       brk
7035: 00       brk
7036: 00       brk
7037: 00       brk
7038: 00       brk
7039: 00       brk
703A: 00       brk
703B: 00       brk
703C: 00       brk
703D: 00       brk
703E: 00       brk
703F: 00       brk
7040: 00       brk
7041: 00       brk
7042: 00       brk
7043: 00       brk
7044: 00       brk
7045: 00       brk
7046: 00       brk
7047: 00       brk
7048: 00       brk
7049: 00       brk
704A: 00       brk
704B: 00       brk
704C: 00       brk
704D: 00       brk
704E: 00       brk
704F: 00       brk
7050: 00       brk
7051: 00       brk
7052: 00       brk
7053: 00       brk
7054: 00       brk
7055: 00       brk
7056: 00       brk
7057: 00       brk
7058: 00       brk
7059: 00       brk
705A: 00       brk
705B: 00       brk
705C: 00       brk
705D: 00       brk
705E: 00       brk
705F: 00       brk
7060: 00       brk
7061: 00       brk
7062: 00       brk
7063: 00       brk
7064: 00       brk
7065: 00       brk
7066: 00       brk
7067: 00       brk
7068: 00       brk
7069: 00       brk
706A: 00       brk
706B: 00       brk
706C: 00       brk
706D: 00       brk
706E: 00       brk
706F: 00       brk
7070: 00       brk
7071: 00       brk
7072: 00       brk
7073: 00       brk
7074: 00       brk
7075: 00       brk
7076: 00       brk
7077: 00       brk
7078: 00       brk
7079: 00       brk
707A: 00       brk
707B: 00       brk
707C: 00       brk
707D: 00       brk
707E: 00       brk
707F: 00       brk
7080: 00       brk
7081: 00       brk
7082: 00       brk
7083: 00       brk
7084: 00       brk
7085: 00       brk
7086: 00       brk
7087: 00       brk
7088: 00       brk
7089: 00       brk
708A: 00       brk
708B: 00       brk
708C: 00       brk
708D: 00       brk
708E: 00       brk
708F: 00       brk
7090: 00       brk
7091: 00       brk
7092: 00       brk
7093: 00       brk
7094: 00       brk
7095: 00       brk
7096: 00       brk
7097: 00       brk
7098: 00       brk
7099: 00       brk
709A: 00       brk
709B: 00       brk
709C: 00       brk
709D: 00       brk
709E: 00       brk
709F: 00       brk
70A0: 00       brk
70A1: 00       brk
70A2: 00       brk
70A3: 00       brk
70A4: 00       brk
70A5: 00       brk
70A6: 00       brk
70A7: 00       brk
70A8: 00       brk
70A9: 00       brk
70AA: 00       brk
70AB: 00       brk
70AC: 00       brk
70AD: 00       brk
70AE: 00       brk
70AF: 00       brk
70B0: 00       brk
70B1: 00       brk
70B2: 00       brk
70B3: 00       brk
70B4: 00       brk
70B5: 00       brk
70B6: 00       brk
70B7: 00       brk
70B8: 00       brk
70B9: 00       brk
70BA: 00       brk
70BB: 00       brk
70BC: 00       brk
70BD: 00       brk
70BE: 00       brk
70BF: 00       brk
70C0: 00       brk
70C1: 00       brk
70C2: 00       brk
70C3: 00       brk
70C4: 00       brk
70C5: 00       brk
70C6: 00       brk
70C7: 00       brk
70C8: 00       brk
70C9: 00       brk
70CA: 00       brk
70CB: 00       brk
70CC: 00       brk
70CD: 00       brk
70CE: 00       brk
70CF: 00       brk
70D0: 00       brk
70D1: 00       brk
70D2: 00       brk
70D3: 00       brk
70D4: 00       brk
70D5: 00       brk
70D6: 00       brk
70D7: 00       brk
70D8: 00       brk
70D9: 00       brk
70DA: 00       brk
70DB: 00       brk
70DC: 00       brk
70DD: 00       brk
70DE: 00       brk
70DF: 00       brk
70E0: 00       brk
70E1: 00       brk
70E2: 00       brk
70E3: 00       brk
70E4: 00       brk
70E5: 00       brk
70E6: 00       brk
70E7: 00       brk
70E8: 00       brk
70E9: 00       brk
70EA: 00       brk
70EB: 00       brk
70EC: 00       brk
70ED: 00       brk
70EE: 00       brk
70EF: 00       brk
70F0: 00       brk
70F1: 00       brk
70F2: 00       brk
70F3: 00       brk
70F4: 00       brk
70F5: 00       brk
70F6: 00       brk
70F7: 00       brk
70F8: 00       brk
70F9: 00       brk
70FA: 00       brk
70FB: 00       brk
70FC: 00       brk
70FD: 00       brk
70FE: 00       brk
70FF: 00       brk
7100: 00       brk
7101: 00       brk
7102: 00       brk
7103: 00       brk
7104: 00       brk
7105: 00       brk
7106: 00       brk
7107: 00       brk
7108: 00       brk
7109: 00       brk
710A: 00       brk
710B: 00       brk
710C: 00       brk
710D: 00       brk
710E: 00       brk
710F: 00       brk
7110: 00       brk
7111: 00       brk
7112: 00       brk
7113: 00       brk
7114: 00       brk
7115: 00       brk
7116: 00       brk
7117: 00       brk
7118: 00       brk
7119: 00       brk
711A: 00       brk
711B: 00       brk
711C: 00       brk
711D: 00       brk
711E: 00       brk
711F: 00       brk
7120: 00       brk
7121: 00       brk
7122: 00       brk
7123: 00       brk
7124: 00       brk
7125: 00       brk
7126: 00       brk
7127: 00       brk
7128: 00       brk
7129: 00       brk
712A: 00       brk
712B: 00       brk
712C: 00       brk
712D: 00       brk
712E: 00       brk
712F: 00       brk
7130: 00       brk
7131: 00       brk
7132: 00       brk
7133: 00       brk
7134: 00       brk
7135: 00       brk
7136: 00       brk
7137: 00       brk
7138: 00       brk
7139: 00       brk
713A: 00       brk
713B: 00       brk
713C: 00       brk
713D: 00       brk
713E: 00       brk
713F: 00       brk
7140: 00       brk
7141: 00       brk
7142: 00       brk
7143: 00       brk
7144: 00       brk
7145: 00       brk
7146: 00       brk
7147: 00       brk
7148: 00       brk
7149: 00       brk
714A: 00       brk
714B: 00       brk
714C: 00       brk
714D: 00       brk
714E: 00       brk
714F: 00       brk
7150: 00       brk
7151: 00       brk
7152: 00       brk
7153: 00       brk
7154: 00       brk
7155: 00       brk
7156: 00       brk
7157: 00       brk
7158: 00       brk
7159: 00       brk
715A: 00       brk
715B: 00       brk
715C: 00       brk
715D: 00       brk
715E: 00       brk
715F: 00       brk
7160: 00       brk
7161: 00       brk
7162: 00       brk
7163: 00       brk
7164: 00       brk
7165: 00       brk
7166: 00       brk
7167: 00       brk
7168: 00       brk
7169: 00       brk
716A: 00       brk
716B: 00       brk
716C: 00       brk
716D: 00       brk
716E: 00       brk
716F: 00       brk
7170: 00       brk
7171: 00       brk
7172: 00       brk
7173: 00       brk
7174: 00       brk
7175: 00       brk
7176: 00       brk
7177: 00       brk
7178: 00       brk
7179: 00       brk
717A: 00       brk
717B: 00       brk
717C: 00       brk
717D: 00       brk
717E: 00       brk
717F: 00       brk
7180: 00       brk
7181: 00       brk
7182: 00       brk
7183: 00       brk
7184: 00       brk
7185: 00       brk
7186: 00       brk
7187: 00       brk
7188: 00       brk
7189: 00       brk
718A: 00       brk
718B: 00       brk
718C: 00       brk
718D: 00       brk
718E: 00       brk
718F: 00       brk
7190: 00       brk
7191: 00       brk
7192: 00       brk
7193: 00       brk
7194: 00       brk
7195: 00       brk
7196: 00       brk
7197: 00       brk
7198: 00       brk
7199: 00       brk
719A: 00       brk
719B: 00       brk
719C: 00       brk
719D: 00       brk
719E: 00       brk
719F: 00       brk
71A0: 00       brk
71A1: 00       brk
71A2: 00       brk
71A3: 00       brk
71A4: 00       brk
71A5: 00       brk
71A6: 00       brk
71A7: 00       brk
71A8: 00       brk
71A9: 00       brk
71AA: 00       brk
71AB: 00       brk
71AC: 00       brk
71AD: 00       brk
71AE: 00       brk
71AF: 00       brk
71B0: 00       brk
71B1: 00       brk
71B2: 00       brk
71B3: 00       brk
71B4: 00       brk
71B5: 00       brk
71B6: 00       brk
71B7: 00       brk
71B8: 00       brk
71B9: 00       brk
71BA: 00       brk
71BB: 00       brk
71BC: 00       brk
71BD: 00       brk
71BE: 00       brk
71BF: 00       brk
71C0: 00       brk
71C1: 00       brk
71C2: 00       brk
71C3: 00       brk
71C4: 00       brk
71C5: 00       brk
71C6: 00       brk
71C7: 00       brk
71C8: 00       brk
71C9: 00       brk
71CA: 00       brk
71CB: 00       brk
71CC: 00       brk
71CD: 00       brk
71CE: 00       brk
71CF: 00       brk
71D0: 00       brk
71D1: 00       brk
71D2: 00       brk
71D3: 00       brk
71D4: 00       brk
71D5: 00       brk
71D6: 00       brk
71D7: 00       brk
71D8: 00       brk
71D9: 00       brk
71DA: 00       brk
71DB: 00       brk
71DC: 00       brk
71DD: 00       brk
71DE: 00       brk
71DF: 00       brk
71E0: 00       brk
71E1: 00       brk
71E2: 00       brk
71E3: 00       brk
71E4: 00       brk
71E5: 00       brk
71E6: 00       brk
71E7: 00       brk
71E8: 00       brk
71E9: 00       brk
71EA: 00       brk
71EB: 00       brk
71EC: 00       brk
71ED: 00       brk
71EE: 00       brk
71EF: 00       brk
71F0: 00       brk
71F1: 00       brk
71F2: 00       brk
71F3: 00       brk
71F4: 00       brk
71F5: 00       brk
71F6: 00       brk
71F7: 00       brk
71F8: 00       brk
71F9: 00       brk
71FA: 00       brk
71FB: 00       brk
71FC: 00       brk
71FD: 00       brk
71FE: 00       brk
71FF: 00       brk
7200: 00       brk
7201: 00       brk
7202: 00       brk
7203: 00       brk
7204: 00       brk
7205: 00       brk
7206: 00       brk
7207: 00       brk
7208: 00       brk
7209: 00       brk
720A: 00       brk
720B: 00       brk
720C: 00       brk
720D: 00       brk
720E: 00       brk
720F: 00       brk
7210: 00       brk
7211: 00       brk
7212: 00       brk
7213: 00       brk
7214: 00       brk
7215: 00       brk
7216: 00       brk
7217: 00       brk
7218: 00       brk
7219: 00       brk
721A: 00       brk
721B: 00       brk
721C: 00       brk
721D: 00       brk
721E: 00       brk
721F: 00       brk
7220: 00       brk
7221: 00       brk
7222: 00       brk
7223: 00       brk
7224: 00       brk
7225: 00       brk
7226: 00       brk
7227: 00       brk
7228: 00       brk
7229: 00       brk
722A: 00       brk
722B: 00       brk
722C: 00       brk
722D: 00       brk
722E: 00       brk
722F: 00       brk
7230: 00       brk
7231: 00       brk
7232: 00       brk
7233: 00       brk
7234: 00       brk
7235: 00       brk
7236: 00       brk
7237: 00       brk
7238: 00       brk
7239: 00       brk
723A: 00       brk
723B: 00       brk
723C: 00       brk
723D: 00       brk
723E: 00       brk
723F: 00       brk
7240: 00       brk
7241: 00       brk
7242: 00       brk
7243: 00       brk
7244: 00       brk
7245: 00       brk
7246: 00       brk
7247: 00       brk
7248: 00       brk
7249: 00       brk
724A: 00       brk
724B: 00       brk
724C: 00       brk
724D: 00       brk
724E: 00       brk
724F: 00       brk
7250: 00       brk
7251: 00       brk
7252: 00       brk
7253: 00       brk
7254: 00       brk
7255: 00       brk
7256: 00       brk
7257: 00       brk
7258: 00       brk
7259: 00       brk
725A: 00       brk
725B: 00       brk
725C: 00       brk
725D: 00       brk
725E: 00       brk
725F: 00       brk
7260: 00       brk
7261: 00       brk
7262: 00       brk
7263: 00       brk
7264: 00       brk
7265: 00       brk
7266: 00       brk
7267: 00       brk
7268: 00       brk
7269: 00       brk
726A: 00       brk
726B: 00       brk
726C: 00       brk
726D: 00       brk
726E: 00       brk
726F: 00       brk
7270: 00       brk
7271: 00       brk
7272: 00       brk
7273: 00       brk
7274: 00       brk
7275: 00       brk
7276: 00       brk
7277: 00       brk
7278: 00       brk
7279: 00       brk
727A: 00       brk
727B: 00       brk
727C: 00       brk
727D: 00       brk
727E: 00       brk
727F: 00       brk
7280: 00       brk
7281: 00       brk
7282: 00       brk
7283: 00       brk
7284: 00       brk
7285: 00       brk
7286: 00       brk
7287: 00       brk
7288: 00       brk
7289: 00       brk
728A: 00       brk
728B: 00       brk
728C: 00       brk
728D: 00       brk
728E: 00       brk
728F: 00       brk
7290: 00       brk
7291: 00       brk
7292: 00       brk
7293: 00       brk
7294: 00       brk
7295: 00       brk
7296: 00       brk
7297: 00       brk
7298: 00       brk
7299: 00       brk
729A: 00       brk
729B: 00       brk
729C: 00       brk
729D: 00       brk
729E: 00       brk
729F: 00       brk
72A0: 00       brk
72A1: 00       brk
72A2: 00       brk
72A3: 00       brk
72A4: 00       brk
72A5: 00       brk
72A6: 00       brk
72A7: 00       brk
72A8: 00       brk
72A9: 00       brk
72AA: 00       brk
72AB: 00       brk
72AC: 00       brk
72AD: 00       brk
72AE: 00       brk
72AF: 00       brk
72B0: 00       brk
72B1: 00       brk
72B2: 00       brk
72B3: 00       brk
72B4: 00       brk
72B5: 00       brk
72B6: 00       brk
72B7: 00       brk
72B8: 00       brk
72B9: 00       brk
72BA: 00       brk
72BB: 00       brk
72BC: 00       brk
72BD: 00       brk
72BE: 00       brk
72BF: 00       brk
72C0: 00       brk
72C1: 00       brk
72C2: 00       brk
72C3: 00       brk
72C4: 00       brk
72C5: 00       brk
72C6: 00       brk
72C7: 00       brk
72C8: 00       brk
72C9: 00       brk
72CA: 00       brk
72CB: 00       brk
72CC: 00       brk
72CD: 00       brk
72CE: 00       brk
72CF: 00       brk
72D0: 00       brk
72D1: 00       brk
72D2: 00       brk
72D3: 00       brk
72D4: 00       brk
72D5: 00       brk
72D6: 00       brk
72D7: 00       brk
72D8: 00       brk
72D9: 00       brk
72DA: 00       brk
72DB: 00       brk
72DC: 00       brk
72DD: 00       brk
72DE: 00       brk
72DF: 00       brk
72E0: 00       brk
72E1: 00       brk
72E2: 00       brk
72E3: 00       brk
72E4: 00       brk
72E5: 00       brk
72E6: 00       brk
72E7: 00       brk
72E8: 00       brk
72E9: 00       brk
72EA: 00       brk
72EB: 00       brk
72EC: 00       brk
72ED: 00       brk
72EE: 00       brk
72EF: 00       brk
72F0: 00       brk
72F1: 00       brk
72F2: 00       brk
72F3: 00       brk
72F4: 00       brk
72F5: 00       brk
72F6: 00       brk
72F7: 00       brk
72F8: 00       brk
72F9: 00       brk
72FA: 00       brk
72FB: 00       brk
72FC: 00       brk
72FD: 00       brk
72FE: 00       brk
72FF: 00       brk
7300: 00       brk
7301: 00       brk
7302: 00       brk
7303: 00       brk
7304: 00       brk
7305: 00       brk
7306: 00       brk
7307: 00       brk
7308: 00       brk
7309: 00       brk
730A: 00       brk
730B: 00       brk
730C: 00       brk
730D: 00       brk
730E: 00       brk
730F: 00       brk
7310: 00       brk
7311: 00       brk
7312: 00       brk
7313: 00       brk
7314: 00       brk
7315: 00       brk
7316: 00       brk
7317: 00       brk
7318: 00       brk
7319: 00       brk
731A: 00       brk
731B: 00       brk
731C: 00       brk
731D: 00       brk
731E: 00       brk
731F: 00       brk
7320: 00       brk
7321: 00       brk
7322: 00       brk
7323: 00       brk
7324: 00       brk
7325: 00       brk
7326: 00       brk
7327: 00       brk
7328: 00       brk
7329: 00       brk
732A: 00       brk
732B: 00       brk
732C: 00       brk
732D: 00       brk
732E: 00       brk
732F: 00       brk
7330: 00       brk
7331: 00       brk
7332: 00       brk
7333: 00       brk
7334: 00       brk
7335: 00       brk
7336: 00       brk
7337: 00       brk
7338: 00       brk
7339: 00       brk
733A: 00       brk
733B: 00       brk
733C: 00       brk
733D: 00       brk
733E: 00       brk
733F: 00       brk
7340: 00       brk
7341: 00       brk
7342: 00       brk
7343: 00       brk
7344: 00       brk
7345: 00       brk
7346: 00       brk
7347: 00       brk
7348: 00       brk
7349: 00       brk
734A: 00       brk
734B: 00       brk
734C: 00       brk
734D: 00       brk
734E: 00       brk
734F: 00       brk
7350: 00       brk
7351: 00       brk
7352: 00       brk
7353: 00       brk
7354: 00       brk
7355: 00       brk
7356: 00       brk
7357: 00       brk
7358: 00       brk
7359: 00       brk
735A: 00       brk
735B: 00       brk
735C: 00       brk
735D: 00       brk
735E: 00       brk
735F: 00       brk
7360: 00       brk
7361: 00       brk
7362: 00       brk
7363: 00       brk
7364: 00       brk
7365: 00       brk
7366: 00       brk
7367: 00       brk
7368: 00       brk
7369: 00       brk
736A: 00       brk
736B: 00       brk
736C: 00       brk
736D: 00       brk
736E: 00       brk
736F: 00       brk
7370: 00       brk
7371: 00       brk
7372: 00       brk
7373: 00       brk
7374: 00       brk
7375: 00       brk
7376: 00       brk
7377: 00       brk
7378: 00       brk
7379: 00       brk
737A: 00       brk
737B: 00       brk
737C: 00       brk
737D: 00       brk
737E: 00       brk
737F: 00       brk
7380: 00       brk
7381: 00       brk
7382: 00       brk
7383: 00       brk
7384: 00       brk
7385: 00       brk
7386: 00       brk
7387: 00       brk
7388: 00       brk
7389: 00       brk
738A: 00       brk
738B: 00       brk
738C: 00       brk
738D: 00       brk
738E: 00       brk
738F: 00       brk
7390: 00       brk
7391: 00       brk
7392: 00       brk
7393: 00       brk
7394: 00       brk
7395: 00       brk
7396: 00       brk
7397: 00       brk
7398: 00       brk
7399: 00       brk
739A: 00       brk
739B: 00       brk
739C: 00       brk
739D: 00       brk
739E: 00       brk
739F: 00       brk
73A0: 00       brk
73A1: 00       brk
73A2: 00       brk
73A3: 00       brk
73A4: 00       brk
73A5: 00       brk
73A6: 00       brk
73A7: 00       brk
73A8: 00       brk
73A9: 00       brk
73AA: 00       brk
73AB: 00       brk
73AC: 00       brk
73AD: 00       brk
73AE: 00       brk
73AF: 00       brk
73B0: 00       brk
73B1: 00       brk
73B2: 00       brk
73B3: 00       brk
73B4: 00       brk
73B5: 00       brk
73B6: 00       brk
73B7: 00       brk
73B8: 00       brk
73B9: 00       brk
73BA: 00       brk
73BB: 00       brk
73BC: 00       brk
73BD: 00       brk
73BE: 00       brk
73BF: 00       brk
73C0: 00       brk
73C1: 00       brk
73C2: 00       brk
73C3: 00       brk
73C4: 00       brk
73C5: 00       brk
73C6: 00       brk
73C7: 00       brk
73C8: 00       brk
73C9: 00       brk
73CA: 00       brk
73CB: 00       brk
73CC: 00       brk
73CD: 00       brk
73CE: 00       brk
73CF: 00       brk
73D0: 00       brk
73D1: 00       brk
73D2: 00       brk
73D3: 00       brk
73D4: 00       brk
73D5: 00       brk
73D6: 00       brk
73D7: 00       brk
73D8: 00       brk
73D9: 00       brk
73DA: 00       brk
73DB: 00       brk
73DC: 00       brk
73DD: 00       brk
73DE: 00       brk
73DF: 00       brk
73E0: 00       brk
73E1: 00       brk
73E2: 00       brk
73E3: 00       brk
73E4: 00       brk
73E5: 00       brk
73E6: 00       brk
73E7: 00       brk
73E8: 00       brk
73E9: 00       brk
73EA: 00       brk
73EB: 00       brk
73EC: 00       brk
73ED: 00       brk
73EE: 00       brk
73EF: 00       brk
73F0: 00       brk
73F1: 00       brk
73F2: 00       brk
73F3: 00       brk
73F4: 00       brk
73F5: 00       brk
73F6: 00       brk
73F7: 00       brk
73F8: 00       brk
73F9: 00       brk
73FA: 00       brk
73FB: 00       brk
73FC: 00       brk
73FD: 00       brk
73FE: 00       brk
73FF: 00       brk
7400: 00       brk
7401: 00       brk
7402: 00       brk
7403: 00       brk
7404: 00       brk
7405: 00       brk
7406: 00       brk
7407: 00       brk
7408: 00       brk
7409: 00       brk
740A: 00       brk
740B: 00       brk
740C: 00       brk
740D: 00       brk
740E: 00       brk
740F: 00       brk
7410: 00       brk
7411: 00       brk
7412: 00       brk
7413: 00       brk
7414: 00       brk
7415: 00       brk
7416: 00       brk
7417: 00       brk
7418: 00       brk
7419: 00       brk
741A: 00       brk
741B: 00       brk
741C: 00       brk
741D: 00       brk
741E: 00       brk
741F: 00       brk
7420: 00       brk
7421: 00       brk
7422: 00       brk
7423: 00       brk
7424: 00       brk
7425: 00       brk
7426: 00       brk
7427: 00       brk
7428: 00       brk
7429: 00       brk
742A: 00       brk
742B: 00       brk
742C: 00       brk
742D: 00       brk
742E: 00       brk
742F: 00       brk
7430: 00       brk
7431: 00       brk
7432: 00       brk
7433: 00       brk
7434: 00       brk
7435: 00       brk
7436: 00       brk
7437: 00       brk
7438: 00       brk
7439: 00       brk
743A: 00       brk
743B: 00       brk
743C: 00       brk
743D: 00       brk
743E: 00       brk
743F: 00       brk
7440: 00       brk
7441: 00       brk
7442: 00       brk
7443: 00       brk
7444: 00       brk
7445: 00       brk
7446: 00       brk
7447: 00       brk
7448: 00       brk
7449: 00       brk
744A: 00       brk
744B: 00       brk
744C: 00       brk
744D: 00       brk
744E: 00       brk
744F: 00       brk
7450: 00       brk
7451: 00       brk
7452: 00       brk
7453: 00       brk
7454: 00       brk
7455: 00       brk
7456: 00       brk
7457: 00       brk
7458: 00       brk
7459: 00       brk
745A: 00       brk
745B: 00       brk
745C: 00       brk
745D: 00       brk
745E: 00       brk
745F: 00       brk
7460: 00       brk
7461: 00       brk
7462: 00       brk
7463: 00       brk
7464: 00       brk
7465: 00       brk
7466: 00       brk
7467: 00       brk
7468: 00       brk
7469: 00       brk
746A: 00       brk
746B: 00       brk
746C: 00       brk
746D: 00       brk
746E: 00       brk
746F: 00       brk
7470: 00       brk
7471: 00       brk
7472: 00       brk
7473: 00       brk
7474: 00       brk
7475: 00       brk
7476: 00       brk
7477: 00       brk
7478: 00       brk
7479: 00       brk
747A: 00       brk
747B: 00       brk
747C: 00       brk
747D: 00       brk
747E: 00       brk
747F: 00       brk
7480: 00       brk
7481: 00       brk
7482: 00       brk
7483: 00       brk
7484: 00       brk
7485: 00       brk
7486: 00       brk
7487: 00       brk
7488: 00       brk
7489: 00       brk
748A: 00       brk
748B: 00       brk
748C: 00       brk
748D: 00       brk
748E: 00       brk
748F: 00       brk
7490: 00       brk
7491: 00       brk
7492: 00       brk
7493: 00       brk
7494: 00       brk
7495: 00       brk
7496: 00       brk
7497: 00       brk
7498: 00       brk
7499: 00       brk
749A: 00       brk
749B: 00       brk
749C: 00       brk
749D: 00       brk
749E: 00       brk
749F: 00       brk
74A0: 00       brk
74A1: 00       brk
74A2: 00       brk
74A3: 00       brk
74A4: 00       brk
74A5: 00       brk
74A6: 00       brk
74A7: 00       brk
74A8: 00       brk
74A9: 00       brk
74AA: 00       brk
74AB: 00       brk
74AC: 00       brk
74AD: 00       brk
74AE: 00       brk
74AF: 00       brk
74B0: 00       brk
74B1: 00       brk
74B2: 00       brk
74B3: 00       brk
74B4: 00       brk
74B5: 00       brk
74B6: 00       brk
74B7: 00       brk
74B8: 00       brk
74B9: 00       brk
74BA: 00       brk
74BB: 00       brk
74BC: 00       brk
74BD: 00       brk
74BE: 00       brk
74BF: 00       brk
74C0: 00       brk
74C1: 00       brk
74C2: 00       brk
74C3: 00       brk
74C4: 00       brk
74C5: 00       brk
74C6: 00       brk
74C7: 00       brk
74C8: 00       brk
74C9: 00       brk
74CA: 00       brk
74CB: 00       brk
74CC: 00       brk
74CD: 00       brk
74CE: 00       brk
74CF: 00       brk
74D0: 00       brk
74D1: 00       brk
74D2: 00       brk
74D3: 00       brk
74D4: 00       brk
74D5: 00       brk
74D6: 00       brk
74D7: 00       brk
74D8: 00       brk
74D9: 00       brk
74DA: 00       brk
74DB: 00       brk
74DC: 00       brk
74DD: 00       brk
74DE: 00       brk
74DF: 00       brk
74E0: 00       brk
74E1: 00       brk
74E2: 00       brk
74E3: 00       brk
74E4: 00       brk
74E5: 00       brk
74E6: 00       brk
74E7: 00       brk
74E8: 00       brk
74E9: 00       brk
74EA: 00       brk
74EB: 00       brk
74EC: 00       brk
74ED: 00       brk
74EE: 00       brk
74EF: 00       brk
74F0: 00       brk
74F1: 00       brk
74F2: 00       brk
74F3: 00       brk
74F4: 00       brk
74F5: 00       brk
74F6: 00       brk
74F7: 00       brk
74F8: 00       brk
74F9: 00       brk
74FA: 00       brk
74FB: 00       brk
74FC: 00       brk
74FD: 00       brk
74FE: 00       brk
74FF: 00       brk
7500: 00       brk
7501: 00       brk
7502: 00       brk
7503: 00       brk
7504: 00       brk
7505: 00       brk
7506: 00       brk
7507: 00       brk
7508: 00       brk
7509: 00       brk
750A: 00       brk
750B: 00       brk
750C: 00       brk
750D: 00       brk
750E: 00       brk
750F: 00       brk
7510: 00       brk
7511: 00       brk
7512: 00       brk
7513: 00       brk
7514: 00       brk
7515: 00       brk
7516: 00       brk
7517: 00       brk
7518: 00       brk
7519: 00       brk
751A: 00       brk
751B: 00       brk
751C: 00       brk
751D: 00       brk
751E: 00       brk
751F: 00       brk
7520: 00       brk
7521: 00       brk
7522: 00       brk
7523: 00       brk
7524: 00       brk
7525: 00       brk
7526: 00       brk
7527: 00       brk
7528: 00       brk
7529: 00       brk
752A: 00       brk
752B: 00       brk
752C: 00       brk
752D: 00       brk
752E: 00       brk
752F: 00       brk
7530: 00       brk
7531: 00       brk
7532: 00       brk
7533: 00       brk
7534: 00       brk
7535: 00       brk
7536: 00       brk
7537: 00       brk
7538: 00       brk
7539: 00       brk
753A: 00       brk
753B: 00       brk
753C: 00       brk
753D: 00       brk
753E: 00       brk
753F: 00       brk
7540: 00       brk
7541: 00       brk
7542: 00       brk
7543: 00       brk
7544: 00       brk
7545: 00       brk
7546: 00       brk
7547: 00       brk
7548: 00       brk
7549: 00       brk
754A: 00       brk
754B: 00       brk
754C: 00       brk
754D: 00       brk
754E: 00       brk
754F: 00       brk
7550: 00       brk
7551: 00       brk
7552: 00       brk
7553: 00       brk
7554: 00       brk
7555: 00       brk
7556: 00       brk
7557: 00       brk
7558: 00       brk
7559: 00       brk
755A: 00       brk
755B: 00       brk
755C: 00       brk
755D: 00       brk
755E: 00       brk
755F: 00       brk
7560: 00       brk
7561: 00       brk
7562: 00       brk
7563: 00       brk
7564: 00       brk
7565: 00       brk
7566: 00       brk
7567: 00       brk
7568: 00       brk
7569: 00       brk
756A: 00       brk
756B: 00       brk
756C: 00       brk
756D: 00       brk
756E: 00       brk
756F: 00       brk
7570: 00       brk
7571: 00       brk
7572: 00       brk
7573: 00       brk
7574: 00       brk
7575: 00       brk
7576: 00       brk
7577: 00       brk
7578: 00       brk
7579: 00       brk
757A: 00       brk
757B: 00       brk
757C: 00       brk
757D: 00       brk
757E: 00       brk
757F: 00       brk
7580: 00       brk
7581: 00       brk
7582: 00       brk
7583: 00       brk
7584: 00       brk
7585: 00       brk
7586: 00       brk
7587: 00       brk
7588: 00       brk
7589: 00       brk
758A: 00       brk
758B: 00       brk
758C: 00       brk
758D: 00       brk
758E: 00       brk
758F: 00       brk
7590: 00       brk
7591: 00       brk
7592: 00       brk
7593: 00       brk
7594: 00       brk
7595: 00       brk
7596: 00       brk
7597: 00       brk
7598: 00       brk
7599: 00       brk
759A: 00       brk
759B: 00       brk
759C: 00       brk
759D: 00       brk
759E: 00       brk
759F: 00       brk
75A0: 00       brk
75A1: 00       brk
75A2: 00       brk
75A3: 00       brk
75A4: 00       brk
75A5: 00       brk
75A6: 00       brk
75A7: 00       brk
75A8: 00       brk
75A9: 00       brk
75AA: 00       brk
75AB: 00       brk
75AC: 00       brk
75AD: 00       brk
75AE: 00       brk
75AF: 00       brk
75B0: 00       brk
75B1: 00       brk
75B2: 00       brk
75B3: 00       brk
75B4: 00       brk
75B5: 00       brk
75B6: 00       brk
75B7: 00       brk
75B8: 00       brk
75B9: 00       brk
75BA: 00       brk
75BB: 00       brk
75BC: 00       brk
75BD: 00       brk
75BE: 00       brk
75BF: 00       brk
75C0: 00       brk
75C1: 00       brk
75C2: 00       brk
75C3: 00       brk
75C4: 00       brk
75C5: 00       brk
75C6: 00       brk
75C7: 00       brk
75C8: 00       brk
75C9: 00       brk
75CA: 00       brk
75CB: 00       brk
75CC: 00       brk
75CD: 00       brk
75CE: 00       brk
75CF: 00       brk
75D0: 00       brk
75D1: 00       brk
75D2: 00       brk
75D3: 00       brk
75D4: 00       brk
75D5: 00       brk
75D6: 00       brk
75D7: 00       brk
75D8: 00       brk
75D9: 00       brk
75DA: 00       brk
75DB: 00       brk
75DC: 00       brk
75DD: 00       brk
75DE: 00       brk
75DF: 00       brk
75E0: 00       brk
75E1: 00       brk
75E2: 00       brk
75E3: 00       brk
75E4: 00       brk
75E5: 00       brk
75E6: 00       brk
75E7: 00       brk
75E8: 00       brk
75E9: 00       brk
75EA: 00       brk
75EB: 00       brk
75EC: 00       brk
75ED: 00       brk
75EE: 00       brk
75EF: 00       brk
75F0: 00       brk
75F1: 00       brk
75F2: 00       brk
75F3: 00       brk
75F4: 00       brk
75F5: 00       brk
75F6: 00       brk
75F7: 00       brk
75F8: 00       brk
75F9: 00       brk
75FA: 00       brk
75FB: 00       brk
75FC: 00       brk
75FD: 00       brk
75FE: 00       brk
75FF: 00       brk
7600: 00       brk
7601: 00       brk
7602: 00       brk
7603: 00       brk
7604: 00       brk
7605: 00       brk
7606: 00       brk
7607: 00       brk
7608: 00       brk
7609: 00       brk
760A: 00       brk
760B: 00       brk
760C: 00       brk
760D: 00       brk
760E: 00       brk
760F: 00       brk
7610: 00       brk
7611: 00       brk
7612: 00       brk
7613: 00       brk
7614: 00       brk
7615: 00       brk
7616: 00       brk
7617: 00       brk
7618: 00       brk
7619: 00       brk
761A: 00       brk
761B: 00       brk
761C: 00       brk
761D: 00       brk
761E: 00       brk
761F: 00       brk
7620: 00       brk
7621: 00       brk
7622: 00       brk
7623: 00       brk
7624: 00       brk
7625: 00       brk
7626: 00       brk
7627: 00       brk
7628: 00       brk
7629: 00       brk
762A: 00       brk
762B: 00       brk
762C: 00       brk
762D: 00       brk
762E: 00       brk
762F: 00       brk
7630: 00       brk
7631: 00       brk
7632: 00       brk
7633: 00       brk
7634: 00       brk
7635: 00       brk
7636: 00       brk
7637: 00       brk
7638: 00       brk
7639: 00       brk
763A: 00       brk
763B: 00       brk
763C: 00       brk
763D: 00       brk
763E: 00       brk
763F: 00       brk
7640: 00       brk
7641: 00       brk
7642: 00       brk
7643: 00       brk
7644: 00       brk
7645: 00       brk
7646: 00       brk
7647: 00       brk
7648: 00       brk
7649: 00       brk
764A: 00       brk
764B: 00       brk
764C: 00       brk
764D: 00       brk
764E: 00       brk
764F: 00       brk
7650: 00       brk
7651: 00       brk
7652: 00       brk
7653: 00       brk
7654: 00       brk
7655: 00       brk
7656: 00       brk
7657: 00       brk
7658: 00       brk
7659: 00       brk
765A: 00       brk
765B: 00       brk
765C: 00       brk
765D: 00       brk
765E: 00       brk
765F: 00       brk
7660: 00       brk
7661: 00       brk
7662: 00       brk
7663: 00       brk
7664: 00       brk
7665: 00       brk
7666: 00       brk
7667: 00       brk
7668: 00       brk
7669: 00       brk
766A: 00       brk
766B: 00       brk
766C: 00       brk
766D: 00       brk
766E: 00       brk
766F: 00       brk
7670: 00       brk
7671: 00       brk
7672: 00       brk
7673: 00       brk
7674: 00       brk
7675: 00       brk
7676: 00       brk
7677: 00       brk
7678: 00       brk
7679: 00       brk
767A: 00       brk
767B: 00       brk
767C: 00       brk
767D: 00       brk
767E: 00       brk
767F: 00       brk
7680: 00       brk
7681: 00       brk
7682: 00       brk
7683: 00       brk
7684: 00       brk
7685: 00       brk
7686: 00       brk
7687: 00       brk
7688: 00       brk
7689: 00       brk
768A: 00       brk
768B: 00       brk
768C: 00       brk
768D: 00       brk
768E: 00       brk
768F: 00       brk
7690: 00       brk
7691: 00       brk
7692: 00       brk
7693: 00       brk
7694: 00       brk
7695: 00       brk
7696: 00       brk
7697: 00       brk
7698: 00       brk
7699: 00       brk
769A: 00       brk
769B: 00       brk
769C: 00       brk
769D: 00       brk
769E: 00       brk
769F: 00       brk
76A0: 00       brk
76A1: 00       brk
76A2: 00       brk
76A3: 00       brk
76A4: 00       brk
76A5: 00       brk
76A6: 00       brk
76A7: 00       brk
76A8: 00       brk
76A9: 00       brk
76AA: 00       brk
76AB: 00       brk
76AC: 00       brk
76AD: 00       brk
76AE: 00       brk
76AF: 00       brk
76B0: 00       brk
76B1: 00       brk
76B2: 00       brk
76B3: 00       brk
76B4: 00       brk
76B5: 00       brk
76B6: 00       brk
76B7: 00       brk
76B8: 00       brk
76B9: 00       brk
76BA: 00       brk
76BB: 00       brk
76BC: 00       brk
76BD: 00       brk
76BE: 00       brk
76BF: 00       brk
76C0: 00       brk
76C1: 00       brk
76C2: 00       brk
76C3: 00       brk
76C4: 00       brk
76C5: 00       brk
76C6: 00       brk
76C7: 00       brk
76C8: 00       brk
76C9: 00       brk
76CA: 00       brk
76CB: 00       brk
76CC: 00       brk
76CD: 00       brk
76CE: 00       brk
76CF: 00       brk
76D0: 00       brk
76D1: 00       brk
76D2: 00       brk
76D3: 00       brk
76D4: 00       brk
76D5: 00       brk
76D6: 00       brk
76D7: 00       brk
76D8: 00       brk
76D9: 00       brk
76DA: 00       brk
76DB: 00       brk
76DC: 00       brk
76DD: 00       brk
76DE: 00       brk
76DF: 00       brk
76E0: 00       brk
76E1: 00       brk
76E2: 00       brk
76E3: 00       brk
76E4: 00       brk
76E5: 00       brk
76E6: 00       brk
76E7: 00       brk
76E8: 00       brk
76E9: 00       brk
76EA: 00       brk
76EB: 00       brk
76EC: 00       brk
76ED: 00       brk
76EE: 00       brk
76EF: 00       brk
76F0: 00       brk
76F1: 00       brk
76F2: 00       brk
76F3: 00       brk
76F4: 00       brk
76F5: 00       brk
76F6: 00       brk
76F7: 00       brk
76F8: 00       brk
76F9: 00       brk
76FA: 00       brk
76FB: 00       brk
76FC: 00       brk
76FD: 00       brk
76FE: 00       brk
76FF: 00       brk
7700: 00       brk
7701: 00       brk
7702: 00       brk
7703: 00       brk
7704: 00       brk
7705: 00       brk
7706: 00       brk
7707: 00       brk
7708: 00       brk
7709: 00       brk
770A: 00       brk
770B: 00       brk
770C: 00       brk
770D: 00       brk
770E: 00       brk
770F: 00       brk
7710: 00       brk
7711: 00       brk
7712: 00       brk
7713: 00       brk
7714: 00       brk
7715: 00       brk
7716: 00       brk
7717: 00       brk
7718: 00       brk
7719: 00       brk
771A: 00       brk
771B: 00       brk
771C: 00       brk
771D: 00       brk
771E: 00       brk
771F: 00       brk
7720: 00       brk
7721: 00       brk
7722: 00       brk
7723: 00       brk
7724: 00       brk
7725: 00       brk
7726: 00       brk
7727: 00       brk
7728: 00       brk
7729: 00       brk
772A: 00       brk
772B: 00       brk
772C: 00       brk
772D: 00       brk
772E: 00       brk
772F: 00       brk
7730: 00       brk
7731: 00       brk
7732: 00       brk
7733: 00       brk
7734: 00       brk
7735: 00       brk
7736: 00       brk
7737: 00       brk
7738: 00       brk
7739: 00       brk
773A: 00       brk
773B: 00       brk
773C: 00       brk
773D: 00       brk
773E: 00       brk
773F: 00       brk
7740: 00       brk
7741: 00       brk
7742: 00       brk
7743: 00       brk
7744: 00       brk
7745: 00       brk
7746: 00       brk
7747: 00       brk
7748: 00       brk
7749: 00       brk
774A: 00       brk
774B: 00       brk
774C: 00       brk
774D: 00       brk
774E: 00       brk
774F: 00       brk
7750: 00       brk
7751: 00       brk
7752: 00       brk
7753: 00       brk
7754: 00       brk
7755: 00       brk
7756: 00       brk
7757: 00       brk
7758: 00       brk
7759: 00       brk
775A: 00       brk
775B: 00       brk
775C: 00       brk
775D: 00       brk
775E: 00       brk
775F: 00       brk
7760: 00       brk
7761: 00       brk
7762: 00       brk
7763: 00       brk
7764: 00       brk
7765: 00       brk
7766: 00       brk
7767: 00       brk
7768: 00       brk
7769: 00       brk
776A: 00       brk
776B: 00       brk
776C: 00       brk
776D: 00       brk
776E: 00       brk
776F: 00       brk
7770: 00       brk
7771: 00       brk
7772: 00       brk
7773: 00       brk
7774: 00       brk
7775: 00       brk
7776: 00       brk
7777: 00       brk
7778: 00       brk
7779: 00       brk
777A: 00       brk
777B: 00       brk
777C: 00       brk
777D: 00       brk
777E: 00       brk
777F: 00       brk
7780: 00       brk
7781: 00       brk
7782: 00       brk
7783: 00       brk
7784: 00       brk
7785: 00       brk
7786: 00       brk
7787: 00       brk
7788: 00       brk
7789: 00       brk
778A: 00       brk
778B: 00       brk
778C: 00       brk
778D: 00       brk
778E: 00       brk
778F: 00       brk
7790: 00       brk
7791: 00       brk
7792: 00       brk
7793: 00       brk
7794: 00       brk
7795: 00       brk
7796: 00       brk
7797: 00       brk
7798: 00       brk
7799: 00       brk
779A: 00       brk
779B: 00       brk
779C: 00       brk
779D: 00       brk
779E: 00       brk
779F: 00       brk
77A0: 00       brk
77A1: 00       brk
77A2: 00       brk
77A3: 00       brk
77A4: 00       brk
77A5: 00       brk
77A6: 00       brk
77A7: 00       brk
77A8: 00       brk
77A9: 00       brk
77AA: 00       brk
77AB: 00       brk
77AC: 00       brk
77AD: 00       brk
77AE: 00       brk
77AF: 00       brk
77B0: 00       brk
77B1: 00       brk
77B2: 00       brk
77B3: 00       brk
77B4: 00       brk
77B5: 00       brk
77B6: 00       brk
77B7: 00       brk
77B8: 00       brk
77B9: 00       brk
77BA: 00       brk
77BB: 00       brk
77BC: 00       brk
77BD: 00       brk
77BE: 00       brk
77BF: 00       brk
77C0: 00       brk
77C1: 00       brk
77C2: 00       brk
77C3: 00       brk
77C4: 00       brk
77C5: 00       brk
77C6: 00       brk
77C7: 00       brk
77C8: 00       brk
77C9: 00       brk
77CA: 00       brk
77CB: 00       brk
77CC: 00       brk
77CD: 00       brk
77CE: 00       brk
77CF: 00       brk
77D0: 00       brk
77D1: 00       brk
77D2: 00       brk
77D3: 00       brk
77D4: 00       brk
77D5: 00       brk
77D6: 00       brk
77D7: 00       brk
77D8: 00       brk
77D9: 00       brk
77DA: 00       brk
77DB: 00       brk
77DC: 00       brk
77DD: 00       brk
77DE: 00       brk
77DF: 00       brk
77E0: 00       brk
77E1: 00       brk
77E2: 00       brk
77E3: 00       brk
77E4: 00       brk
77E5: 00       brk
77E6: 00       brk
77E7: 00       brk
77E8: 00       brk
77E9: 00       brk
77EA: 00       brk
77EB: 00       brk
77EC: 00       brk
77ED: 00       brk
77EE: 00       brk
77EF: 00       brk
77F0: 00       brk
77F1: 00       brk
77F2: 00       brk
77F3: 00       brk
77F4: 00       brk
77F5: 00       brk
77F6: 00       brk
77F7: 00       brk
77F8: 00       brk
77F9: 00       brk
77FA: 00       brk
77FB: 00       brk
77FC: 00       brk
77FD: 00       brk
77FE: 00       brk
77FF: 00       brk
7800: 00       brk
7801: 00       brk
7802: 00       brk
7803: 00       brk
7804: 00       brk
7805: 00       brk
7806: 00       brk
7807: 00       brk
7808: 00       brk
7809: 00       brk
780A: 00       brk
780B: 00       brk
780C: 00       brk
780D: 00       brk
780E: 00       brk
780F: 00       brk
7810: 00       brk
7811: 00       brk
7812: 00       brk
7813: 00       brk
7814: 00       brk
7815: 00       brk
7816: 00       brk
7817: 00       brk
7818: 00       brk
7819: 00       brk
781A: 00       brk
781B: 00       brk
781C: 00       brk
781D: 00       brk
781E: 00       brk
781F: 00       brk
7820: 00       brk
7821: 00       brk
7822: 00       brk
7823: 00       brk
7824: 00       brk
7825: 00       brk
7826: 00       brk
7827: 00       brk
7828: 00       brk
7829: 00       brk
782A: 00       brk
782B: 00       brk
782C: 00       brk
782D: 00       brk
782E: 00       brk
782F: 00       brk
7830: 00       brk
7831: 00       brk
7832: 00       brk
7833: 00       brk
7834: 00       brk
7835: 00       brk
7836: 00       brk
7837: 00       brk
7838: 00       brk
7839: 00       brk
783A: 00       brk
783B: 00       brk
783C: 00       brk
783D: 00       brk
783E: 00       brk
783F: 00       brk
7840: 00       brk
7841: 00       brk
7842: 00       brk
7843: 00       brk
7844: 00       brk
7845: 00       brk
7846: 00       brk
7847: 00       brk
7848: 00       brk
7849: 00       brk
784A: 00       brk
784B: 00       brk
784C: 00       brk
784D: 00       brk
784E: 00       brk
784F: 00       brk
7850: 00       brk
7851: 00       brk
7852: 00       brk
7853: 00       brk
7854: 00       brk
7855: 00       brk
7856: 00       brk
7857: 00       brk
7858: 00       brk
7859: 00       brk
785A: 00       brk
785B: 00       brk
785C: 00       brk
785D: 00       brk
785E: 00       brk
785F: 00       brk
7860: 00       brk
7861: 00       brk
7862: 00       brk
7863: 00       brk
7864: 00       brk
7865: 00       brk
7866: 00       brk
7867: 00       brk
7868: 00       brk
7869: 00       brk
786A: 00       brk
786B: 00       brk
786C: 00       brk
786D: 00       brk
786E: 00       brk
786F: 00       brk
7870: 00       brk
7871: 00       brk
7872: 00       brk
7873: 00       brk
7874: 00       brk
7875: 00       brk
7876: 00       brk
7877: 00       brk
7878: 00       brk
7879: 00       brk
787A: 00       brk
787B: 00       brk
787C: 00       brk
787D: 00       brk
787E: 00       brk
787F: 00       brk
7880: 00       brk
7881: 00       brk
7882: 00       brk
7883: 00       brk
7884: 00       brk
7885: 00       brk
7886: 00       brk
7887: 00       brk
7888: 00       brk
7889: 00       brk
788A: 00       brk
788B: 00       brk
788C: 00       brk
788D: 00       brk
788E: 00       brk
788F: 00       brk
7890: 00       brk
7891: 00       brk
7892: 00       brk
7893: 00       brk
7894: 00       brk
7895: 00       brk
7896: 00       brk
7897: 00       brk
7898: 00       brk
7899: 00       brk
789A: 00       brk
789B: 00       brk
789C: 00       brk
789D: 00       brk
789E: 00       brk
789F: 00       brk
78A0: 00       brk
78A1: 00       brk
78A2: 00       brk
78A3: 00       brk
78A4: 00       brk
78A5: 00       brk
78A6: 00       brk
78A7: 00       brk
78A8: 00       brk
78A9: 00       brk
78AA: 00       brk
78AB: 00       brk
78AC: 00       brk
78AD: 00       brk
78AE: 00       brk
78AF: 00       brk
78B0: 00       brk
78B1: 00       brk
78B2: 00       brk
78B3: 00       brk
78B4: 00       brk
78B5: 00       brk
78B6: 00       brk
78B7: 00       brk
78B8: 00       brk
78B9: 00       brk
78BA: 00       brk
78BB: 00       brk
78BC: 00       brk
78BD: 00       brk
78BE: 00       brk
78BF: 00       brk
78C0: 00       brk
78C1: 00       brk
78C2: 00       brk
78C3: 00       brk
78C4: 00       brk
78C5: 00       brk
78C6: 00       brk
78C7: 00       brk
78C8: 00       brk
78C9: 00       brk
78CA: 00       brk
78CB: 00       brk
78CC: 00       brk
78CD: 00       brk
78CE: 00       brk
78CF: 00       brk
78D0: 00       brk
78D1: 00       brk
78D2: 00       brk
78D3: 00       brk
78D4: 00       brk
78D5: 00       brk
78D6: 00       brk
78D7: 00       brk
78D8: 00       brk
78D9: 00       brk
78DA: 00       brk
78DB: 00       brk
78DC: 00       brk
78DD: 00       brk
78DE: 00       brk
78DF: 00       brk
78E0: 00       brk
78E1: 00       brk
78E2: 00       brk
78E3: 00       brk
78E4: 00       brk
78E5: 00       brk
78E6: 00       brk
78E7: 00       brk
78E8: 00       brk
78E9: 00       brk
78EA: 00       brk
78EB: 00       brk
78EC: 00       brk
78ED: 00       brk
78EE: 00       brk
78EF: 00       brk
78F0: 00       brk
78F1: 00       brk
78F2: 00       brk
78F3: 00       brk
78F4: 00       brk
78F5: 00       brk
78F6: 00       brk
78F7: 00       brk
78F8: 00       brk
78F9: 00       brk
78FA: 00       brk
78FB: 00       brk
78FC: 00       brk
78FD: 00       brk
78FE: 00       brk
78FF: 00       brk
7900: 00       brk
7901: 00       brk
7902: 00       brk
7903: 00       brk
7904: 00       brk
7905: 00       brk
7906: 00       brk
7907: 00       brk
7908: 00       brk
7909: 00       brk
790A: 00       brk
790B: 00       brk
790C: 00       brk
790D: 00       brk
790E: 00       brk
790F: 00       brk
7910: 00       brk
7911: 00       brk
7912: 00       brk
7913: 00       brk
7914: 00       brk
7915: 00       brk
7916: 00       brk
7917: 00       brk
7918: 00       brk
7919: 00       brk
791A: 00       brk
791B: 00       brk
791C: 00       brk
791D: 00       brk
791E: 00       brk
791F: 00       brk
7920: 00       brk
7921: 00       brk
7922: 00       brk
7923: 00       brk
7924: 00       brk
7925: 00       brk
7926: 00       brk
7927: 00       brk
7928: 00       brk
7929: 00       brk
792A: 00       brk
792B: 00       brk
792C: 00       brk
792D: 00       brk
792E: 00       brk
792F: 00       brk
7930: 00       brk
7931: 00       brk
7932: 00       brk
7933: 00       brk
7934: 00       brk
7935: 00       brk
7936: 00       brk
7937: 00       brk
7938: 00       brk
7939: 00       brk
793A: 00       brk
793B: 00       brk
793C: 00       brk
793D: 00       brk
793E: 00       brk
793F: 00       brk
7940: 00       brk
7941: 00       brk
7942: 00       brk
7943: 00       brk
7944: 00       brk
7945: 00       brk
7946: 00       brk
7947: 00       brk
7948: 00       brk
7949: 00       brk
794A: 00       brk
794B: 00       brk
794C: 00       brk
794D: 00       brk
794E: 00       brk
794F: 00       brk
7950: 00       brk
7951: 00       brk
7952: 00       brk
7953: 00       brk
7954: 00       brk
7955: 00       brk
7956: 00       brk
7957: 00       brk
7958: 00       brk
7959: 00       brk
795A: 00       brk
795B: 00       brk
795C: 00       brk
795D: 00       brk
795E: 00       brk
795F: 00       brk
7960: 00       brk
7961: 00       brk
7962: 00       brk
7963: 00       brk
7964: 00       brk
7965: 00       brk
7966: 00       brk
7967: 00       brk
7968: 00       brk
7969: 00       brk
796A: 00       brk
796B: 00       brk
796C: 00       brk
796D: 00       brk
796E: 00       brk
796F: 00       brk
7970: 00       brk
7971: 00       brk
7972: 00       brk
7973: 00       brk
7974: 00       brk
7975: 00       brk
7976: 00       brk
7977: 00       brk
7978: 00       brk
7979: 00       brk
797A: 00       brk
797B: 00       brk
797C: 00       brk
797D: 00       brk
797E: 00       brk
797F: 00       brk
7980: 00       brk
7981: 00       brk
7982: 00       brk
7983: 00       brk
7984: 00       brk
7985: 00       brk
7986: 00       brk
7987: 00       brk
7988: 00       brk
7989: 00       brk
798A: 00       brk
798B: 00       brk
798C: 00       brk
798D: 00       brk
798E: 00       brk
798F: 00       brk
7990: 00       brk
7991: 00       brk
7992: 00       brk
7993: 00       brk
7994: 00       brk
7995: 00       brk
7996: 00       brk
7997: 00       brk
7998: 00       brk
7999: 00       brk
799A: 00       brk
799B: 00       brk
799C: 00       brk
799D: 00       brk
799E: 00       brk
799F: 00       brk
79A0: 00       brk
79A1: 00       brk
79A2: 00       brk
79A3: 00       brk
79A4: 00       brk
79A5: 00       brk
79A6: 00       brk
79A7: 00       brk
79A8: 00       brk
79A9: 00       brk
79AA: 00       brk
79AB: 00       brk
79AC: 00       brk
79AD: 00       brk
79AE: 00       brk
79AF: 00       brk
79B0: 00       brk
79B1: 00       brk
79B2: 00       brk
79B3: 00       brk
79B4: 00       brk
79B5: 00       brk
79B6: 00       brk
79B7: 00       brk
79B8: 00       brk
79B9: 00       brk
79BA: 00       brk
79BB: 00       brk
79BC: 00       brk
79BD: 00       brk
79BE: 00       brk
79BF: 00       brk
79C0: 00       brk
79C1: 00       brk
79C2: 00       brk
79C3: 00       brk
79C4: 00       brk
79C5: 00       brk
79C6: 00       brk
79C7: 00       brk
79C8: 00       brk
79C9: 00       brk
79CA: 00       brk
79CB: 00       brk
79CC: 00       brk
79CD: 00       brk
79CE: 00       brk
79CF: 00       brk
79D0: 00       brk
79D1: 00       brk
79D2: 00       brk
79D3: 00       brk
79D4: 00       brk
79D5: 00       brk
79D6: 00       brk
79D7: 00       brk
79D8: 00       brk
79D9: 00       brk
79DA: 00       brk
79DB: 00       brk
79DC: 00       brk
79DD: 00       brk
79DE: 00       brk
79DF: 00       brk
79E0: 00       brk
79E1: 00       brk
79E2: 00       brk
79E3: 00       brk
79E4: 00       brk
79E5: 00       brk
79E6: 00       brk
79E7: 00       brk
79E8: 00       brk
79E9: 00       brk
79EA: 00       brk
79EB: 00       brk
79EC: 00       brk
79ED: 00       brk
79EE: 00       brk
79EF: 00       brk
79F0: 00       brk
79F1: 00       brk
79F2: 00       brk
79F3: 00       brk
79F4: 00       brk
79F5: 00       brk
79F6: 00       brk
79F7: 00       brk
79F8: 00       brk
79F9: 00       brk
79FA: 00       brk
79FB: 00       brk
79FC: 00       brk
79FD: 00       brk
79FE: 00       brk
79FF: 00       brk
7A00: 00       brk
7A01: 00       brk
7A02: 00       brk
7A03: 00       brk
7A04: 00       brk
7A05: 00       brk
7A06: 00       brk
7A07: 00       brk
7A08: 00       brk
7A09: 00       brk
7A0A: 00       brk
7A0B: 00       brk
7A0C: 00       brk
7A0D: 00       brk
7A0E: 00       brk
7A0F: 00       brk
7A10: 00       brk
7A11: 00       brk
7A12: 00       brk
7A13: 00       brk
7A14: 00       brk
7A15: 00       brk
7A16: 00       brk
7A17: 00       brk
7A18: 00       brk
7A19: 00       brk
7A1A: 00       brk
7A1B: 00       brk
7A1C: 00       brk
7A1D: 00       brk
7A1E: 00       brk
7A1F: 00       brk
7A20: 00       brk
7A21: 00       brk
7A22: 00       brk
7A23: 00       brk
7A24: 00       brk
7A25: 00       brk
7A26: 00       brk
7A27: 00       brk
7A28: 00       brk
7A29: 00       brk
7A2A: 00       brk
7A2B: 00       brk
7A2C: 00       brk
7A2D: 00       brk
7A2E: 00       brk
7A2F: 00       brk
7A30: 00       brk
7A31: 00       brk
7A32: 00       brk
7A33: 00       brk
7A34: 00       brk
7A35: 00       brk
7A36: 00       brk
7A37: 00       brk
7A38: 00       brk
7A39: 00       brk
7A3A: 00       brk
7A3B: 00       brk
7A3C: 00       brk
7A3D: 00       brk
7A3E: 00       brk
7A3F: 00       brk
7A40: 00       brk
7A41: 00       brk
7A42: 00       brk
7A43: 00       brk
7A44: 00       brk
7A45: 00       brk
7A46: 00       brk
7A47: 00       brk
7A48: 00       brk
7A49: 00       brk
7A4A: 00       brk
7A4B: 00       brk
7A4C: 00       brk
7A4D: 00       brk
7A4E: 00       brk
7A4F: 00       brk
7A50: 00       brk
7A51: 00       brk
7A52: 00       brk
7A53: 00       brk
7A54: 00       brk
7A55: 00       brk
7A56: 00       brk
7A57: 00       brk
7A58: 00       brk
7A59: 00       brk
7A5A: 00       brk
7A5B: 00       brk
7A5C: 00       brk
7A5D: 00       brk
7A5E: 00       brk
7A5F: 00       brk
7A60: 00       brk
7A61: 00       brk
7A62: 00       brk
7A63: 00       brk
7A64: 00       brk
7A65: 00       brk
7A66: 00       brk
7A67: 00       brk
7A68: 00       brk
7A69: 00       brk
7A6A: 00       brk
7A6B: 00       brk
7A6C: 00       brk
7A6D: 00       brk
7A6E: 00       brk
7A6F: 00       brk
7A70: 00       brk
7A71: 00       brk
7A72: 00       brk
7A73: 00       brk
7A74: 00       brk
7A75: 00       brk
7A76: 00       brk
7A77: 00       brk
7A78: 00       brk
7A79: 00       brk
7A7A: 00       brk
7A7B: 00       brk
7A7C: 00       brk
7A7D: 00       brk
7A7E: 00       brk
7A7F: 00       brk
7A80: 00       brk
7A81: 00       brk
7A82: 00       brk
7A83: 00       brk
7A84: 00       brk
7A85: 00       brk
7A86: 00       brk
7A87: 00       brk
7A88: 00       brk
7A89: 00       brk
7A8A: 00       brk
7A8B: 00       brk
7A8C: 00       brk
7A8D: 00       brk
7A8E: 00       brk
7A8F: 00       brk
7A90: 00       brk
7A91: 00       brk
7A92: 00       brk
7A93: 00       brk
7A94: 00       brk
7A95: 00       brk
7A96: 00       brk
7A97: 00       brk
7A98: 00       brk
7A99: 00       brk
7A9A: 00       brk
7A9B: 00       brk
7A9C: 00       brk
7A9D: 00       brk
7A9E: 00       brk
7A9F: 00       brk
7AA0: 00       brk
7AA1: 00       brk
7AA2: 00       brk
7AA3: 00       brk
7AA4: 00       brk
7AA5: 00       brk
7AA6: 00       brk
7AA7: 00       brk
7AA8: 00       brk
7AA9: 00       brk
7AAA: 00       brk
7AAB: 00       brk
7AAC: 00       brk
7AAD: 00       brk
7AAE: 00       brk
7AAF: 00       brk
7AB0: 00       brk
7AB1: 00       brk
7AB2: 00       brk
7AB3: 00       brk
7AB4: 00       brk
7AB5: 00       brk
7AB6: 00       brk
7AB7: 00       brk
7AB8: 00       brk
7AB9: 00       brk
7ABA: 00       brk
7ABB: 00       brk
7ABC: 00       brk
7ABD: 00       brk
7ABE: 00       brk
7ABF: 00       brk
7AC0: 00       brk
7AC1: 00       brk
7AC2: 00       brk
7AC3: 00       brk
7AC4: 00       brk
7AC5: 00       brk
7AC6: 00       brk
7AC7: 00       brk
7AC8: 00       brk
7AC9: 00       brk
7ACA: 00       brk
7ACB: 00       brk
7ACC: 00       brk
7ACD: 00       brk
7ACE: 00       brk
7ACF: 00       brk
7AD0: 00       brk
7AD1: 00       brk
7AD2: 00       brk
7AD3: 00       brk
7AD4: 00       brk
7AD5: 00       brk
7AD6: 00       brk
7AD7: 00       brk
7AD8: 00       brk
7AD9: 00       brk
7ADA: 00       brk
7ADB: 00       brk
7ADC: 00       brk
7ADD: 00       brk
7ADE: 00       brk
7ADF: 00       brk
7AE0: 00       brk
7AE1: 00       brk
7AE2: 00       brk
7AE3: 00       brk
7AE4: 00       brk
7AE5: 00       brk
7AE6: 00       brk
7AE7: 00       brk
7AE8: 00       brk
7AE9: 00       brk
7AEA: 00       brk
7AEB: 00       brk
7AEC: 00       brk
7AED: 00       brk
7AEE: 00       brk
7AEF: 00       brk
7AF0: 00       brk
7AF1: 00       brk
7AF2: 00       brk
7AF3: 00       brk
7AF4: 00       brk
7AF5: 00       brk
7AF6: 00       brk
7AF7: 00       brk
7AF8: 00       brk
7AF9: 00       brk
7AFA: 00       brk
7AFB: 00       brk
7AFC: 00       brk
7AFD: 00       brk
7AFE: 00       brk
7AFF: 00       brk
7B00: 00       brk
7B01: 00       brk
7B02: 00       brk
7B03: 00       brk
7B04: 00       brk
7B05: 00       brk
7B06: 00       brk
7B07: 00       brk
7B08: 00       brk
7B09: 00       brk
7B0A: 00       brk
7B0B: 00       brk
7B0C: 00       brk
7B0D: 00       brk
7B0E: 00       brk
7B0F: 00       brk
7B10: 00       brk
7B11: 00       brk
7B12: 00       brk
7B13: 00       brk
7B14: 00       brk
7B15: 00       brk
7B16: 00       brk
7B17: 00       brk
7B18: 00       brk
7B19: 00       brk
7B1A: 00       brk
7B1B: 00       brk
7B1C: 00       brk
7B1D: 00       brk
7B1E: 00       brk
7B1F: 00       brk
7B20: 00       brk
7B21: 00       brk
7B22: 00       brk
7B23: 00       brk
7B24: 00       brk
7B25: 00       brk
7B26: 00       brk
7B27: 00       brk
7B28: 00       brk
7B29: 00       brk
7B2A: 00       brk
7B2B: 00       brk
7B2C: 00       brk
7B2D: 00       brk
7B2E: 00       brk
7B2F: 00       brk
7B30: 00       brk
7B31: 00       brk
7B32: 00       brk
7B33: 00       brk
7B34: 00       brk
7B35: 00       brk
7B36: 00       brk
7B37: 00       brk
7B38: 00       brk
7B39: 00       brk
7B3A: 00       brk
7B3B: 00       brk
7B3C: 00       brk
7B3D: 00       brk
7B3E: 00       brk
7B3F: 00       brk
7B40: 00       brk
7B41: 00       brk
7B42: 00       brk
7B43: 00       brk
7B44: 00       brk
7B45: 00       brk
7B46: 00       brk
7B47: 00       brk
7B48: 00       brk
7B49: 00       brk
7B4A: 00       brk
7B4B: 00       brk
7B4C: 00       brk
7B4D: 00       brk
7B4E: 00       brk
7B4F: 00       brk
7B50: 00       brk
7B51: 00       brk
7B52: 00       brk
7B53: 00       brk
7B54: 00       brk
7B55: 00       brk
7B56: 00       brk
7B57: 00       brk
7B58: 00       brk
7B59: 00       brk
7B5A: 00       brk
7B5B: 00       brk
7B5C: 00       brk
7B5D: 00       brk
7B5E: 00       brk
7B5F: 00       brk
7B60: 00       brk
7B61: 00       brk
7B62: 00       brk
7B63: 00       brk
7B64: 00       brk
7B65: 00       brk
7B66: 00       brk
7B67: 00       brk
7B68: 00       brk
7B69: 00       brk
7B6A: 00       brk
7B6B: 00       brk
7B6C: 00       brk
7B6D: 00       brk
7B6E: 00       brk
7B6F: 00       brk
7B70: 00       brk
7B71: 00       brk
7B72: 00       brk
7B73: 00       brk
7B74: 00       brk
7B75: 00       brk
7B76: 00       brk
7B77: 00       brk
7B78: 00       brk
7B79: 00       brk
7B7A: 00       brk
7B7B: 00       brk
7B7C: 00       brk
7B7D: 00       brk
7B7E: 00       brk
7B7F: 00       brk
7B80: 00       brk
7B81: 00       brk
7B82: 00       brk
7B83: 00       brk
7B84: 00       brk
7B85: 00       brk
7B86: 00       brk
7B87: 00       brk
7B88: 00       brk
7B89: 00       brk
7B8A: 00       brk
7B8B: 00       brk
7B8C: 00       brk
7B8D: 00       brk
7B8E: 00       brk
7B8F: 00       brk
7B90: 00       brk
7B91: 00       brk
7B92: 00       brk
7B93: 00       brk
7B94: 00       brk
7B95: 00       brk
7B96: 00       brk
7B97: 00       brk
7B98: 00       brk
7B99: 00       brk
7B9A: 00       brk
7B9B: 00       brk
7B9C: 00       brk
7B9D: 00       brk
7B9E: 00       brk
7B9F: 00       brk
7BA0: 00       brk
7BA1: 00       brk
7BA2: 00       brk
7BA3: 00       brk
7BA4: 00       brk
7BA5: 00       brk
7BA6: 00       brk
7BA7: 00       brk
7BA8: 00       brk
7BA9: 00       brk
7BAA: 00       brk
7BAB: 00       brk
7BAC: 00       brk
7BAD: 00       brk
7BAE: 00       brk
7BAF: 00       brk
7BB0: 00       brk
7BB1: 00       brk
7BB2: 00       brk
7BB3: 00       brk
7BB4: 00       brk
7BB5: 00       brk
7BB6: 00       brk
7BB7: 00       brk
7BB8: 00       brk
7BB9: 00       brk
7BBA: 00       brk
7BBB: 00       brk
7BBC: 00       brk
7BBD: 00       brk
7BBE: 00       brk
7BBF: 00       brk
7BC0: 00       brk
7BC1: 00       brk
7BC2: 00       brk
7BC3: 00       brk
7BC4: 00       brk
7BC5: 00       brk
7BC6: 00       brk
7BC7: 00       brk
7BC8: 00       brk
7BC9: 00       brk
7BCA: 00       brk
7BCB: 00       brk
7BCC: 00       brk
7BCD: 00       brk
7BCE: 00       brk
7BCF: 00       brk
7BD0: 00       brk
7BD1: 00       brk
7BD2: 00       brk
7BD3: 00       brk
7BD4: 00       brk
7BD5: 00       brk
7BD6: 00       brk
7BD7: 00       brk
7BD8: 00       brk
7BD9: 00       brk
7BDA: 00       brk
7BDB: 00       brk
7BDC: 00       brk
7BDD: 00       brk
7BDE: 00       brk
7BDF: 00       brk
7BE0: 00       brk
7BE1: 00       brk
7BE2: 00       brk
7BE3: 00       brk
7BE4: 00       brk
7BE5: 00       brk
7BE6: 00       brk
7BE7: 00       brk
7BE8: 00       brk
7BE9: 00       brk
7BEA: 00       brk
7BEB: 00       brk
7BEC: 00       brk
7BED: 00       brk
7BEE: 00       brk
7BEF: 00       brk
7BF0: 00       brk
7BF1: 00       brk
7BF2: 00       brk
7BF3: 00       brk
7BF4: 00       brk
7BF5: 00       brk
7BF6: 00       brk
7BF7: 00       brk
7BF8: 00       brk
7BF9: 00       brk
7BFA: 00       brk
7BFB: 00       brk
7BFC: 00       brk
7BFD: 00       brk
7BFE: 00       brk
7BFF: 00       brk
7C00: 00       brk
7C01: 00       brk
7C02: 00       brk
7C03: 00       brk
7C04: 00       brk
7C05: 00       brk
7C06: 00       brk
7C07: 00       brk
7C08: 00       brk
7C09: 00       brk
7C0A: 00       brk
7C0B: 00       brk
7C0C: 00       brk
7C0D: 00       brk
7C0E: 00       brk
7C0F: 00       brk
7C10: 00       brk
7C11: 00       brk
7C12: 00       brk
7C13: 00       brk
7C14: 00       brk
7C15: 00       brk
7C16: 00       brk
7C17: 00       brk
7C18: 00       brk
7C19: 00       brk
7C1A: 00       brk
7C1B: 00       brk
7C1C: 00       brk
7C1D: 00       brk
7C1E: 00       brk
7C1F: 00       brk
7C20: 00       brk
7C21: 00       brk
7C22: 00       brk
7C23: 00       brk
7C24: 00       brk
7C25: 00       brk
7C26: 00       brk
7C27: 00       brk
7C28: 00       brk
7C29: 00       brk
7C2A: 00       brk
7C2B: 00       brk
7C2C: 00       brk
7C2D: 00       brk
7C2E: 00       brk
7C2F: 00       brk
7C30: 00       brk
7C31: 00       brk
7C32: 00       brk
7C33: 00       brk
7C34: 00       brk
7C35: 00       brk
7C36: 00       brk
7C37: 00       brk
7C38: 00       brk
7C39: 00       brk
7C3A: 00       brk
7C3B: 00       brk
7C3C: 00       brk
7C3D: 00       brk
7C3E: 00       brk
7C3F: 00       brk
7C40: 00       brk
7C41: 00       brk
7C42: 00       brk
7C43: 00       brk
7C44: 00       brk
7C45: 00       brk
7C46: 00       brk
7C47: 00       brk
7C48: 00       brk
7C49: 00       brk
7C4A: 00       brk
7C4B: 00       brk
7C4C: 00       brk
7C4D: 00       brk
7C4E: 00       brk
7C4F: 00       brk
7C50: 00       brk
7C51: 00       brk
7C52: 00       brk
7C53: 00       brk
7C54: 00       brk
7C55: 00       brk
7C56: 00       brk
7C57: 00       brk
7C58: 00       brk
7C59: 00       brk
7C5A: 00       brk
7C5B: 00       brk
7C5C: 00       brk
7C5D: 00       brk
7C5E: 00       brk
7C5F: 00       brk
7C60: 00       brk
7C61: 00       brk
7C62: 00       brk
7C63: 00       brk
7C64: 00       brk
7C65: 00       brk
7C66: 00       brk
7C67: 00       brk
7C68: 00       brk
7C69: 00       brk
7C6A: 00       brk
7C6B: 00       brk
7C6C: 00       brk
7C6D: 00       brk
7C6E: 00       brk
7C6F: 00       brk
7C70: 00       brk
7C71: 00       brk
7C72: 00       brk
7C73: 00       brk
7C74: 00       brk
7C75: 00       brk
7C76: 00       brk
7C77: 00       brk
7C78: 00       brk
7C79: 00       brk
7C7A: 00       brk
7C7B: 00       brk
7C7C: 00       brk
7C7D: 00       brk
7C7E: 00       brk
7C7F: 00       brk
7C80: 00       brk
7C81: 00       brk
7C82: 00       brk
7C83: 00       brk
7C84: 00       brk
7C85: 00       brk
7C86: 00       brk
7C87: 00       brk
7C88: 00       brk
7C89: 00       brk
7C8A: 00       brk
7C8B: 00       brk
7C8C: 00       brk
7C8D: 00       brk
7C8E: 00       brk
7C8F: 00       brk
7C90: 00       brk
7C91: 00       brk
7C92: 00       brk
7C93: 00       brk
7C94: 00       brk
7C95: 00       brk
7C96: 00       brk
7C97: 00       brk
7C98: 00       brk
7C99: 00       brk
7C9A: 00       brk
7C9B: 00       brk
7C9C: 00       brk
7C9D: 00       brk
7C9E: 00       brk
7C9F: 00       brk
7CA0: 00       brk
7CA1: 00       brk
7CA2: 00       brk
7CA3: 00       brk
7CA4: 00       brk
7CA5: 00       brk
7CA6: 00       brk
7CA7: 00       brk
7CA8: 00       brk
7CA9: 00       brk
7CAA: 00       brk
7CAB: 00       brk
7CAC: 00       brk
7CAD: 00       brk
7CAE: 00       brk
7CAF: 00       brk
7CB0: 00       brk
7CB1: 00       brk
7CB2: 00       brk
7CB3: 00       brk
7CB4: 00       brk
7CB5: 00       brk
7CB6: 00       brk
7CB7: 00       brk
7CB8: 00       brk
7CB9: 00       brk
7CBA: 00       brk
7CBB: 00       brk
7CBC: 00       brk
7CBD: 00       brk
7CBE: 00       brk
7CBF: 00       brk
7CC0: 00       brk
7CC1: 00       brk
7CC2: 00       brk
7CC3: 00       brk
7CC4: 00       brk
7CC5: 00       brk
7CC6: 00       brk
7CC7: 00       brk
7CC8: 00       brk
7CC9: 00       brk
7CCA: 00       brk
7CCB: 00       brk
7CCC: 00       brk
7CCD: 00       brk
7CCE: 00       brk
7CCF: 00       brk
7CD0: 00       brk
7CD1: 00       brk
7CD2: 00       brk
7CD3: 00       brk
7CD4: 00       brk
7CD5: 00       brk
7CD6: 00       brk
7CD7: 00       brk
7CD8: 00       brk
7CD9: 00       brk
7CDA: 00       brk
7CDB: 00       brk
7CDC: 00       brk
7CDD: 00       brk
7CDE: 00       brk
7CDF: 00       brk
7CE0: 00       brk
7CE1: 00       brk
7CE2: 00       brk
7CE3: 00       brk
7CE4: 00       brk
7CE5: 00       brk
7CE6: 00       brk
7CE7: 00       brk
7CE8: 00       brk
7CE9: 00       brk
7CEA: 00       brk
7CEB: 00       brk
7CEC: 00       brk
7CED: 00       brk
7CEE: 00       brk
7CEF: 00       brk
7CF0: 00       brk
7CF1: 00       brk
7CF2: 00       brk
7CF3: 00       brk
7CF4: 00       brk
7CF5: 00       brk
7CF6: 00       brk
7CF7: 00       brk
7CF8: 00       brk
7CF9: 00       brk
7CFA: 00       brk
7CFB: 00       brk
7CFC: 00       brk
7CFD: 00       brk
7CFE: 00       brk
7CFF: 00       brk
7D00: 00       brk
7D01: 00       brk
7D02: 00       brk
7D03: 00       brk
7D04: 00       brk
7D05: 00       brk
7D06: 00       brk
7D07: 00       brk
7D08: 00       brk
7D09: 00       brk
7D0A: 00       brk
7D0B: 00       brk
7D0C: 00       brk
7D0D: 00       brk
7D0E: 00       brk
7D0F: 00       brk
7D10: 00       brk
7D11: 00       brk
7D12: 00       brk
7D13: 00       brk
7D14: 00       brk
7D15: 00       brk
7D16: 00       brk
7D17: 00       brk
7D18: 00       brk
7D19: 00       brk
7D1A: 00       brk
7D1B: 00       brk
7D1C: 00       brk
7D1D: 00       brk
7D1E: 00       brk
7D1F: 00       brk
7D20: 00       brk
7D21: 00       brk
7D22: 00       brk
7D23: 00       brk
7D24: 00       brk
7D25: 00       brk
7D26: 00       brk
7D27: 00       brk
7D28: 00       brk
7D29: 00       brk
7D2A: 00       brk
7D2B: 00       brk
7D2C: 00       brk
7D2D: 00       brk
7D2E: 00       brk
7D2F: 00       brk
7D30: 00       brk
7D31: 00       brk
7D32: 00       brk
7D33: 00       brk
7D34: 00       brk
7D35: 00       brk
7D36: 00       brk
7D37: 00       brk
7D38: 00       brk
7D39: 00       brk
7D3A: 00       brk
7D3B: 00       brk
7D3C: 00       brk
7D3D: 00       brk
7D3E: 00       brk
7D3F: 00       brk
7D40: 00       brk
7D41: 00       brk
7D42: 00       brk
7D43: 00       brk
7D44: 00       brk
7D45: 00       brk
7D46: 00       brk
7D47: 00       brk
7D48: 00       brk
7D49: 00       brk
7D4A: 00       brk
7D4B: 00       brk
7D4C: 00       brk
7D4D: 00       brk
7D4E: 00       brk
7D4F: 00       brk
7D50: 00       brk
7D51: 00       brk
7D52: 00       brk
7D53: 00       brk
7D54: 00       brk
7D55: 00       brk
7D56: 00       brk
7D57: 00       brk
7D58: 00       brk
7D59: 00       brk
7D5A: 00       brk
7D5B: 00       brk
7D5C: 00       brk
7D5D: 00       brk
7D5E: 00       brk
7D5F: 00       brk
7D60: 00       brk
7D61: 00       brk
7D62: 00       brk
7D63: 00       brk
7D64: 00       brk
7D65: 00       brk
7D66: 00       brk
7D67: 00       brk
7D68: 00       brk
7D69: 00       brk
7D6A: 00       brk
7D6B: 00       brk
7D6C: 00       brk
7D6D: 00       brk
7D6E: 00       brk
7D6F: 00       brk
7D70: 00       brk
7D71: 00       brk
7D72: 00       brk
7D73: 00       brk
7D74: 00       brk
7D75: 00       brk
7D76: 00       brk
7D77: 00       brk
7D78: 00       brk
7D79: 00       brk
7D7A: 00       brk
7D7B: 00       brk
7D7C: 00       brk
7D7D: 00       brk
7D7E: 00       brk
7D7F: 00       brk
7D80: 00       brk
7D81: 00       brk
7D82: 00       brk
7D83: 00       brk
7D84: 00       brk
7D85: 00       brk
7D86: 00       brk
7D87: 00       brk
7D88: 00       brk
7D89: 00       brk
7D8A: 00       brk
7D8B: 00       brk
7D8C: 00       brk
7D8D: 00       brk
7D8E: 00       brk
7D8F: 00       brk
7D90: 00       brk
7D91: 00       brk
7D92: 00       brk
7D93: 00       brk
7D94: 00       brk
7D95: 00       brk
7D96: 00       brk
7D97: 00       brk
7D98: 00       brk
7D99: 00       brk
7D9A: 00       brk
7D9B: 00       brk
7D9C: 00       brk
7D9D: 00       brk
7D9E: 00       brk
7D9F: 00       brk
7DA0: 00       brk
7DA1: 00       brk
7DA2: 00       brk
7DA3: 00       brk
7DA4: 00       brk
7DA5: 00       brk
7DA6: 00       brk
7DA7: 00       brk
7DA8: 00       brk
7DA9: 00       brk
7DAA: 00       brk
7DAB: 00       brk
7DAC: 00       brk
7DAD: 00       brk
7DAE: 00       brk
7DAF: 00       brk
7DB0: 00       brk
7DB1: 00       brk
7DB2: 00       brk
7DB3: 00       brk
7DB4: 00       brk
7DB5: 00       brk
7DB6: 00       brk
7DB7: 00       brk
7DB8: 00       brk
7DB9: 00       brk
7DBA: 00       brk
7DBB: 00       brk
7DBC: 00       brk
7DBD: 00       brk
7DBE: 00       brk
7DBF: 00       brk
7DC0: 00       brk
7DC1: 00       brk
7DC2: 00       brk
7DC3: 00       brk
7DC4: 00       brk
7DC5: 00       brk
7DC6: 00       brk
7DC7: 00       brk
7DC8: 00       brk
7DC9: 00       brk
7DCA: 00       brk
7DCB: 00       brk
7DCC: 00       brk
7DCD: 00       brk
7DCE: 00       brk
7DCF: 00       brk
7DD0: 00       brk
7DD1: 00       brk
7DD2: 00       brk
7DD3: 00       brk
7DD4: 00       brk
7DD5: 00       brk
7DD6: 00       brk
7DD7: 00       brk
7DD8: 00       brk
7DD9: 00       brk
7DDA: 00       brk
7DDB: 00       brk
7DDC: 00       brk
7DDD: 00       brk
7DDE: 00       brk
7DDF: 00       brk
7DE0: 00       brk
7DE1: 00       brk
7DE2: 00       brk
7DE3: 00       brk
7DE4: 00       brk
7DE5: 00       brk
7DE6: 00       brk
7DE7: 00       brk
7DE8: 00       brk
7DE9: 00       brk
7DEA: 00       brk
7DEB: 00       brk
7DEC: 00       brk
7DED: 00       brk
7DEE: 00       brk
7DEF: 00       brk
7DF0: 00       brk
7DF1: 00       brk
7DF2: 00       brk
7DF3: 00       brk
7DF4: 00       brk
7DF5: 00       brk
7DF6: 00       brk
7DF7: 00       brk
7DF8: 00       brk
7DF9: 00       brk
7DFA: 00       brk
7DFB: 00       brk
7DFC: 00       brk
7DFD: 00       brk
7DFE: 00       brk
7DFF: 00       brk
7E00: 00       brk
7E01: 00       brk
7E02: 00       brk
7E03: 00       brk
7E04: 00       brk
7E05: 00       brk
7E06: 00       brk
7E07: 00       brk
7E08: 00       brk
7E09: 00       brk
7E0A: 00       brk
7E0B: 00       brk
7E0C: 00       brk
7E0D: 00       brk
7E0E: 00       brk
7E0F: 00       brk
7E10: 00       brk
7E11: 00       brk
7E12: 00       brk
7E13: 00       brk
7E14: 00       brk
7E15: 00       brk
7E16: 00       brk
7E17: 00       brk
7E18: 00       brk
7E19: 00       brk
7E1A: 00       brk
7E1B: 00       brk
7E1C: 00       brk
7E1D: 00       brk
7E1E: 00       brk
7E1F: 00       brk
7E20: 00       brk
7E21: 00       brk
7E22: 00       brk
7E23: 00       brk
7E24: 00       brk
7E25: 00       brk
7E26: 00       brk
7E27: 00       brk
7E28: 00       brk
7E29: 00       brk
7E2A: 00       brk
7E2B: 00       brk
7E2C: 00       brk
7E2D: 00       brk
7E2E: 00       brk
7E2F: 00       brk
7E30: 00       brk
7E31: 00       brk
7E32: 00       brk
7E33: 00       brk
7E34: 00       brk
7E35: 00       brk
7E36: 00       brk
7E37: 00       brk
7E38: 00       brk
7E39: 00       brk
7E3A: 00       brk
7E3B: 00       brk
7E3C: 00       brk
7E3D: 00       brk
7E3E: 00       brk
7E3F: 00       brk
7E40: 00       brk
7E41: 00       brk
7E42: 00       brk
7E43: 00       brk
7E44: 00       brk
7E45: 00       brk
7E46: 00       brk
7E47: 00       brk
7E48: 00       brk
7E49: 00       brk
7E4A: 00       brk
7E4B: 00       brk
7E4C: 00       brk
7E4D: 00       brk
7E4E: 00       brk
7E4F: 00       brk
7E50: 00       brk
7E51: 00       brk
7E52: 00       brk
7E53: 00       brk
7E54: 00       brk
7E55: 00       brk
7E56: 00       brk
7E57: 00       brk
7E58: 00       brk
7E59: 00       brk
7E5A: 00       brk
7E5B: 00       brk
7E5C: 00       brk
7E5D: 00       brk
7E5E: 00       brk
7E5F: 00       brk
7E60: 00       brk
7E61: 00       brk
7E62: 00       brk
7E63: 00       brk
7E64: 00       brk
7E65: 00       brk
7E66: 00       brk
7E67: 00       brk
7E68: 00       brk
7E69: 00       brk
7E6A: 00       brk
7E6B: 00       brk
7E6C: 00       brk
7E6D: 00       brk
7E6E: 00       brk
7E6F: 00       brk
7E70: 00       brk
7E71: 00       brk
7E72: 00       brk
7E73: 00       brk
7E74: 00       brk
7E75: 00       brk
7E76: 00       brk
7E77: 00       brk
7E78: 00       brk
7E79: 00       brk
7E7A: 00       brk
7E7B: 00       brk
7E7C: 00       brk
7E7D: 00       brk
7E7E: 00       brk
7E7F: 00       brk
7E80: 00       brk
7E81: 00       brk
7E82: 00       brk
7E83: 00       brk
7E84: 00       brk
7E85: 00       brk
7E86: 00       brk
7E87: 00       brk
7E88: 00       brk
7E89: 00       brk
7E8A: 00       brk
7E8B: 00       brk
7E8C: 00       brk
7E8D: 00       brk
7E8E: 00       brk
7E8F: 00       brk
7E90: 00       brk
7E91: 00       brk
7E92: 00       brk
7E93: 00       brk
7E94: 00       brk
7E95: 00       brk
7E96: 00       brk
7E97: 00       brk
7E98: 00       brk
7E99: 00       brk
7E9A: 00       brk
7E9B: 00       brk
7E9C: 00       brk
7E9D: 00       brk
7E9E: 00       brk
7E9F: 00       brk
7EA0: 00       brk
7EA1: 00       brk
7EA2: 00       brk
7EA3: 00       brk
7EA4: 00       brk
7EA5: 00       brk
7EA6: 00       brk
7EA7: 00       brk
7EA8: 00       brk
7EA9: 00       brk
7EAA: 00       brk
7EAB: 00       brk
7EAC: 00       brk
7EAD: 00       brk
7EAE: 00       brk
7EAF: 00       brk
7EB0: 00       brk
7EB1: 00       brk
7EB2: 00       brk
7EB3: 00       brk
7EB4: 00       brk
7EB5: 00       brk
7EB6: 00       brk
7EB7: 00       brk
7EB8: 00       brk
7EB9: 00       brk
7EBA: 00       brk
7EBB: 00       brk
7EBC: 00       brk
7EBD: 00       brk
7EBE: 00       brk
7EBF: 00       brk
7EC0: 00       brk
7EC1: 00       brk
7EC2: 00       brk
7EC3: 00       brk
7EC4: 00       brk
7EC5: 00       brk
7EC6: 00       brk
7EC7: 00       brk
7EC8: 00       brk
7EC9: 00       brk
7ECA: 00       brk
7ECB: 00       brk
7ECC: 00       brk
7ECD: 00       brk
7ECE: 00       brk
7ECF: 00       brk
7ED0: 00       brk
7ED1: 00       brk
7ED2: 00       brk
7ED3: 00       brk
7ED4: 00       brk
7ED5: 00       brk
7ED6: 00       brk
7ED7: 00       brk
7ED8: 00       brk
7ED9: 00       brk
7EDA: 00       brk
7EDB: 00       brk
7EDC: 00       brk
7EDD: 00       brk
7EDE: 00       brk
7EDF: 00       brk
7EE0: 00       brk
7EE1: 00       brk
7EE2: 00       brk
7EE3: 00       brk
7EE4: 00       brk
7EE5: 00       brk
7EE6: 00       brk
7EE7: 00       brk
7EE8: 00       brk
7EE9: 00       brk
7EEA: 00       brk
7EEB: 00       brk
7EEC: 00       brk
7EED: 00       brk
7EEE: 00       brk
7EEF: 00       brk
7EF0: 00       brk
7EF1: 00       brk
7EF2: 00       brk
7EF3: 00       brk
7EF4: 00       brk
7EF5: 00       brk
7EF6: 00       brk
7EF7: 00       brk
7EF8: 00       brk
7EF9: 00       brk
7EFA: 00       brk
7EFB: 00       brk
7EFC: 00       brk
7EFD: 00       brk
7EFE: 00       brk
7EFF: 00       brk
7F00: 00       brk
7F01: 00       brk
7F02: 00       brk
7F03: 00       brk
7F04: 00       brk
7F05: 00       brk
7F06: 00       brk
7F07: 00       brk
7F08: 00       brk
7F09: 00       brk
7F0A: 00       brk
7F0B: 00       brk
7F0C: 00       brk
7F0D: 00       brk
7F0E: 00       brk
7F0F: 00       brk
7F10: 00       brk
7F11: 00       brk
7F12: 00       brk
7F13: 00       brk
7F14: 00       brk
7F15: 00       brk
7F16: 00       brk
7F17: 00       brk
7F18: 00       brk
7F19: 00       brk
7F1A: 00       brk
7F1B: 00       brk
7F1C: 00       brk
7F1D: 00       brk
7F1E: 00       brk
7F1F: 00       brk
7F20: 00       brk
7F21: 00       brk
7F22: 00       brk
7F23: 00       brk
7F24: 00       brk
7F25: 00       brk
7F26: 00       brk
7F27: 00       brk
7F28: 00       brk
7F29: 00       brk
7F2A: 00       brk
7F2B: 00       brk
7F2C: 00       brk
7F2D: 00       brk
7F2E: 00       brk
7F2F: 00       brk
7F30: 00       brk
7F31: 00       brk
7F32: 00       brk
7F33: 00       brk
7F34: 00       brk
7F35: 00       brk
7F36: 00       brk
7F37: 00       brk
7F38: 00       brk
7F39: 00       brk
7F3A: 00       brk
7F3B: 00       brk
7F3C: 00       brk
7F3D: 00       brk
7F3E: 00       brk
7F3F: 00       brk
7F40: 00       brk
7F41: 00       brk
7F42: 00       brk
7F43: 00       brk
7F44: 00       brk
7F45: 00       brk
7F46: 00       brk
7F47: 00       brk
7F48: 00       brk
7F49: 00       brk
7F4A: 00       brk
7F4B: 00       brk
7F4C: 00       brk
7F4D: 00       brk
7F4E: 00       brk
7F4F: 00       brk
7F50: 00       brk
7F51: 00       brk
7F52: 00       brk
7F53: 00       brk
7F54: 00       brk
7F55: 00       brk
7F56: 00       brk
7F57: 00       brk
7F58: 00       brk
7F59: 00       brk
7F5A: 00       brk
7F5B: 00       brk
7F5C: 00       brk
7F5D: 00       brk
7F5E: 00       brk
7F5F: 00       brk
7F60: 00       brk
7F61: 00       brk
7F62: 00       brk
7F63: 00       brk
7F64: 00       brk
7F65: 00       brk
7F66: 00       brk
7F67: 00       brk
7F68: 00       brk
7F69: 00       brk
7F6A: 00       brk
7F6B: 00       brk
7F6C: 00       brk
7F6D: 00       brk
7F6E: 00       brk
7F6F: 00       brk
7F70: 00       brk
7F71: 00       brk
7F72: 00       brk
7F73: 00       brk
7F74: 00       brk
7F75: 00       brk
7F76: 00       brk
7F77: 00       brk
7F78: 00       brk
7F79: 00       brk
7F7A: 00       brk
7F7B: 00       brk
7F7C: 00       brk
7F7D: 00       brk
7F7E: 00       brk
7F7F: 00       brk
7F80: 00       brk
7F81: 00       brk
7F82: 00       brk
7F83: 00       brk
7F84: 00       brk
7F85: 00       brk
7F86: 00       brk
7F87: 00       brk
7F88: 00       brk
7F89: 00       brk
7F8A: 00       brk
7F8B: 00       brk
7F8C: 00       brk
7F8D: 00       brk
7F8E: 00       brk
7F8F: 00       brk
7F90: 00       brk
7F91: 00       brk
7F92: 00       brk
7F93: 00       brk
7F94: 00       brk
7F95: 00       brk
7F96: 00       brk
7F97: 00       brk
7F98: 00       brk
7F99: 00       brk
7F9A: 00       brk
7F9B: 00       brk
7F9C: 00       brk
7F9D: 00       brk
7F9E: 00       brk
7F9F: 00       brk
7FA0: 00       brk
7FA1: 00       brk
7FA2: 00       brk
7FA3: 00       brk
7FA4: 00       brk
7FA5: 00       brk
7FA6: 00       brk
7FA7: 00       brk
7FA8: 00       brk
7FA9: 00       brk
7FAA: 00       brk
7FAB: 00       brk
7FAC: 00       brk
7FAD: 00       brk
7FAE: 00       brk
7FAF: 00       brk
7FB0: 00       brk
7FB1: 00       brk
7FB2: 00       brk
7FB3: 00       brk
7FB4: 00       brk
7FB5: 00       brk
7FB6: 00       brk
7FB7: 00       brk
7FB8: 00       brk
7FB9: 00       brk
7FBA: 00       brk
7FBB: 00       brk
7FBC: 00       brk
7FBD: 00       brk
7FBE: 00       brk
7FBF: 00       brk
7FC0: 00       brk
7FC1: 00       brk
7FC2: 00       brk
7FC3: 00       brk
7FC4: 00       brk
7FC5: 00       brk
7FC6: 00       brk
7FC7: 00       brk
7FC8: 00       brk
7FC9: 00       brk
7FCA: 00       brk
7FCB: 00       brk
7FCC: 00       brk
7FCD: 00       brk
7FCE: 00       brk
7FCF: 00       brk
7FD0: 00       brk
7FD1: 00       brk
7FD2: 00       brk
7FD3: 00       brk
7FD4: 00       brk
7FD5: 00       brk
7FD6: 00       brk
7FD7: 00       brk
7FD8: 00       brk
7FD9: 00       brk
7FDA: 00       brk
7FDB: 00       brk
7FDC: 00       brk
7FDD: 00       brk
7FDE: 00       brk
7FDF: 00       brk
7FE0: 00       brk
7FE1: 00       brk
7FE2: 00       brk
7FE3: 00       brk
7FE4: 00       brk
7FE5: 00       brk
7FE6: 00       brk
7FE7: 00       brk
7FE8: 00       brk
7FE9: 00       brk
7FEA: 00       brk
7FEB: 00       brk
7FEC: 00       brk
7FED: 00       brk
7FEE: 00       brk
7FEF: 00       brk
7FF0: 00       brk
7FF1: 00       brk
7FF2: 00       brk
7FF3: 00       brk
7FF4: 00       brk
7FF5: 00       brk
7FF6: 00       brk
7FF7: 00       brk
7FF8: 00       brk
7FF9: 00       brk
7FFA: 00       brk
7FFB: 00       brk
7FFC: 00       brk
7FFD: 00       brk
7FFE: 00       brk
7FFF: 00       brk
