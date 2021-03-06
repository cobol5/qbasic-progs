5 DEFINT A-Z: GOTO 10

10 pi = 3.141593: SCREEN 1: COLOR 0, 1: DIM bomb!(48), bucket!(96): 'GOSUB 5000

20 CLS : quit = 0: start! = TIMER: upvel = 0: lftvel = 0: w = 0: dir = -1
30 CIRCLE (159, 99), 8, 3, .6 * pi, .4 * pi: CIRCLE (159, 90), 2, 3, , , 5 / 18
40 CIRCLE (159, 95), 2, 3, pi, 2 * pi, 5 / 18: LINE (157, 90)-(157, 95), 3: LINE (161, 90)-(161, 95), 3
50 PAINT (159, 99), 2, 3: PAINT (159, 92), 2, 3: CIRCLE (159, 99), 7, 0, 1.5 * pi, .2 * pi
60 CIRCLE (155, 97), 1, 3: LINE (160, 92)-(160, 95), 0
70 CIRCLE (152, 90), 7, 1, 0, .5 * pi: CIRCLE (152, 78), 7, 1, 1.2 * pi, 1.5 * pi
80 PSET (146, 81), 2: DRAW "NU2NH2NL2NR2NG2"

100 CIRCLE (159, 178), 16, 1, 0, pi, 1 / 3: CIRCLE (159, 194), 12, 1, pi, 2 * pi, 5 / 18

110 LINE (144, 178)-(147, 194), 1: LINE (174, 178)-(171, 194), 1
120 PAINT (159, 178), 1, 1: CIRCLE (159, 178), 16, 0, pi, 0, 6 / 18
130 CIRCLE (159, 170), 17, 3, , , 1 / 3: CIRCLE (159, 194), 13, 3, pi, 2 * pi, 1 / 3
140 LINE (142, 170)-(146, 194), 3: LINE (176, 170)-(172, 194), 3
150 CIRCLE (142, 170), 2, 2: CIRCLE (176, 170), 2, 2: CIRCLE (159, 170), 19, 3, pi, 2 * pi, 15 / 14
160 CIRCLE (159, 171), 19, 3, pi, 2 * pi, 15 / 14: LINE (154, 188)-(164, 190), 2, BF
400 xloc = 144: yloc = 79: GET (xloc, yloc)-(167, 106), bomb!
410 bloc = 140: GET (bloc, 164)-(178, 198), bucket!
500 LINE (39, 160)-(279, 160), 3: LINE (39, 16)-(39, 160), 3: LINE (279, 16)-(279, 160), 3
510 j = 0: FOR i = 39 TO 279 STEP 48: LINE (i, 160)-(j, 199), 3: j = j + 64: NEXT i

1000 GOSUB 1300: IF quit THEN GOSUB 1180: GOTO 3000

1010 xold = xloc: yold = yloc: bold = bloc: GOSUB 1100: IF quit THEN GOSUB 1180: GOTO 4000
1020 q = 3 + RND * 5: w = w + dir * q: bloc = bloc + dir * q: IF ABS(w) > 120 THEN dir = dir * -1
1030 PUT (x + blod, 164), bucket!: PUT (x + bloc, 164), bucket!, PSET
1040 PUT (xold, yold), bomb!: PUT (xloc, yloc), bomb!

1050 IF (xloc > bloc AND xloc < bloc + 8) AND yloc > 166 AND upvel > 0 THEN GOSUB 1180: GOTO 2000 ELSE GOTO 1000
1100 FOR z = 0 TO 100: kb$ = INKEY$: IF kb$ = "" THEN GOTO 1130
1110 kb = ASC(kb$): IF kb = 27 THEN quit = -1: GOTO 1190
1120 IF kb <> 0 THEN BEEP ELSE kb = ASC(RIGHT$(kb$, 1)): GOSUB 1200: GOTO 1140
1130 NEXT z
1140 LOCATE 2, 1: PRINT SPC(24); : yloc = yloc + upvel: IF yloc < 0 THEN yloc = 0: upvel = -upvel: GOTO 1180
1150 IF yloc > 172 THEN yloc = 172: upvel = -upvel: GOTO 1180
1160 xloc = xloc + lftvel: IF xloc < 0 THEN xloc = 0: lftvel = -lftvel: GOTO 1180
1170 IF xloc > 296 THEN xloc = 296: lftvel = -lftvel ELSE GOTO 1190
1180 BEEP: FOR i = 1 TO 16: q$ = INKEY$: NEXT i
1190 RETURN
1200 IF kb = 72 THEN upacc = -1: GOTO 1250
1210 IF kb = 80 THEN upacc = 1: GOTO 1250
1220 IF kb = 75 THEN lftacc = -1: GOTO 1250
1230 IF kb = 77 THEN lftacc = 1: GOTO 1250
1240 BEEP: RETURN
1250 upvel = upvel + upacc: lftvel = lftvel + lftacc: upacc = 0: lftacc = 0: RETURN
1300 LOCATE 1, 1: PRINT USING "TIME: ###     SPEED UP: ##- ACROSS: ##-"; TIMER - start!; upvel * -1; lftvel * -1
1310 IF TIMER - start! > 119 THEN PRINT "   OUT OF TIME!": BEEP: BEEP: BEEP: quit = -1: GOTO 1330
1320 IF TIMER - start! > 105 THEN PRINT "   TIME IS RUNNING SHORT!": BEEP
1330 RETURN
2000 LOCATE 2, 1: PRINT "NICE WORK!": CIRCLE (bloc + 19, 189), 40, 3, .66 * pi, .38 * pi, 5 / 18
2010 PAINT (bloc, 189), 1, 3: PAINT (bloc + 38, 189), 1, 3
2020 PAINT (bloc - 19, 189), 1, 3: PAINT (bloc + 57, 189), 1, 3
2030 FOR i = 0 TO 18 STEP 5: CIRCLE (xloc, yloc - i), 3, 3, 1.5 * pi, .5 * pi: CIRCLE (xloc, yloc - i - 3), 3, 3, .5 * pi, 1.5 * pi: NEXT i
'2040 PLAY "T25503ce2eedef2.e2ed2ddcde2.c2de2eedef2.a1agagf2dc1"
2040 GOTO 4000
3000 FOR i = 1 TO 60: CIRCLE (xloc + 15, yloc + 20), i, (i MOD 4): NEXT i
3010 SOUND 37, 50: SOUND 75, 25: SOUND 150, 12: SOUND 300, 6: SOUND 150, 25: SOUND 75, 50: SOUND 37, 100
3020 FOR i = 60 TO 1 STEP -1: CIRCLE (xloc + 15, yloc + 20), i, 0: NEXT i
4000 LOCATE 3, 1: INPUT "WANT TO PLAY AGAIN (Y OT N"; q$: IF q$ = "y" OR q$ = "Y" THEN GOTO 20
4010 END
5000 CLS : PRINT : PRINT TAB(15); "MAD BOMBER": PRINT
5010 PRINT "  You must dunk the bomb into the"
5020 PRINT "  bucket of water before it goes off."
5030 PRINT "  You must dunk the bomb into the"
5040 PRINT "  You must dunk the bomb into the"
5050 PRINT "  You must dunk the bomb into the"
5060 PRINT "  You must dunk the bomb into the"
5070 PRINT "  You must dunk the bomb into the"
5080 PRINT "  You must dunk the bomb into the"
5090 PRINT "  You must dunk the bomb into the"
5100 PRINT "  You must dunk the bomb into the"
5110 PRINT "  You must dunk the bomb into the"
5120 PRINT "  You must dunk the bomb into the": PRINT
5130 PRINT "  Press RETURN to begin.", q$: RETURN















