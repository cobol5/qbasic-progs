1 RANDOMIZE TIMER
COLOR 7
CLS
GOSUB scre
coun = 0
e = 30
f = 20
col = 13
hi = 15
ine = 0
inee = 2
inee1 = -2
inee3 = 2
inee4 = -2
inf = 0
inyy = 1
inx = -INT(RND * 2 + 1)
iny = -INT(RND * 3 + 1)
x1 = 14
y1 = e + 2

INPUT "Number of players (1 : 2) "; num
IF num = 1 THEN col = 0: hi = 20
LOCATE 1, 1: PRINT "Press space to start."
DO: LOOP UNTIL INKEY$ = " "
LOCATE 1, 1: PRINT "                                        "
LOCATE 19, 1: PRINT "                                        "
start = TIMER
DO
i$ = INKEY$
SELECT CASE i$
CASE CHR$(0) + "K": IF ine > 0 THEN ine = 0: ine = ine - 1 ELSE ine = ine - 1
CASE CHR$(0) + "M": IF ine < 0 THEN ine = 0: ine = ine + 1 ELSE ine = ine + 1
CASE "a": IF inf > 0 THEN inf = 0: inf = inf - 1 ELSE inf = inf - 1
CASE "d": IF inf < 0 THEN inf = 0: inf = inf + 1 ELSE inf = inf + 1
CASE ".": IF cheat = 0 THEN cheat = 1: ch = 1: LOCATE 15, e: PRINT "     " ELSE cheat = 0
CASE "c": IF cheat1 = 0 THEN cheat1 = 1: ch1 = 1: LOCATE 15, f: PRINT "     " ELSE cheat1 = 0
CASE "q": GOTO again
CASE "r": GOTO 1
END SELECT

IF coun = 21 THEN coun = 0: GOSUB newblock:

IF ch = 1 THEN e = y1 + 2: ch = 0
IF ch1 = 1 THEN f = y1 + 2: ch1 = 0

IF e < 3 THEN e = 3
IF e > 75 THEN e = 75
IF f < 3 THEN f = 3
IF f > 75 THEN f = 75

IF cheat = 1 THEN LOCATE 15, e: PRINT "     "
IF cheat = 1 THEN ine = iny
IF cheat = 1 THEN IF y1 > e - 1 AND y1 < e + 5 THEN GOTO 15

IF cheat = 1 THEN IF iny >= 2 THEN inee = iny + 1
IF cheat = 1 THEN IF iny <= -2 THEN inee1 = iny - 1

IF cheat = 1 THEN IF y1 > e + 2 THEN ine = inee
IF cheat = 1 THEN IF y1 < e + 2 THEN ine = inee1

15
IF cheat1 = 1 THEN LOCATE 15, f: PRINT "     "
IF cheat1 = 1 THEN inf = iny
IF cheat1 = 1 THEN IF y1 > f - 1 AND y1 < f + 5 THEN GOTO 16

IF cheat1 = 1 THEN IF iny >= 2 THEN inee3 = iny + 1
IF cheat1 = 1 THEN IF iny <= -2 THEN inee4 = iny - 1

IF cheat1 = 1 THEN IF y1 > f + 2 THEN inf = inee3
IF cheat1 = 1 THEN IF y1 < f + 2 THEN inf = inee4
16

COLOR 15
fin = TIMER
tim = INT(fin - start)
LOCATE 1, 10: PRINT tim; " seconds"
LOCATE x1, y1: PRINT " "

LOCATE 15, e: PRINT "     "
LOCATE 15, f: PRINT "     "

'IF ine = iny AND y1 > e - 1 AND y1 < e + 5 THEN iny = iny + inyy: inyy = -inyy
'IF inf = iny AND y1 > f - 1 AND y1 < f + 5 THEN iny = iny + inyy: inyy = -inyy
 
IF iny = 0 THEN iny = 1

IF iny > 3 THEN iny = iny - 1
IF iny < -3 THEN iny = iny + 1

IF ine < -4 THEN ine = -4
IF ine > 4 THEN ine = 4
IF inf < -4 THEN inf = -4
IF inf > 4 THEN inf = 4

check:
IF inx > 0 AND iny > 0 THEN GOTO 8        '\  down
IF inx < 0 AND iny < 0 THEN GOTO 9        '\  up
IF inx > 0 AND iny < 0 THEN GOTO 10       '/  down
IF inx < 0 AND iny > 0 THEN GOTO 11       '/  up

8
IF SCREEN(x1, y1 + 1) = 219 THEN iny = -iny: GOTO 2
IF SCREEN(x1 + 1, y1) = 219 THEN inx = -inx: GOTO 2
IF SCREEN(x1 + 1, y1 + 1) = 219 THEN inx = -inx: iny = -iny: GOTO 2
9
IF SCREEN(x1, y1 - 1) = 219 THEN iny = -iny: GOTO 2
IF SCREEN(x1 - 1, y1) = 219 THEN inx = -inx: GOTO 2
IF SCREEN(x1 - 1, y1 - 1) = 219 THEN inx = -inx: GOTO 2
10
IF SCREEN(x1, y1 - 1) = 219 THEN iny = -iny: GOTO 2
IF SCREEN(x1 + 1, y1) = 219 THEN inx = -inx: GOTO 2
IF SCREEN(x1 + 1, y1 - 1) = 219 THEN inx = -inx: GOTO 2
11
IF SCREEN(x1, y1 + 1) = 219 THEN iny = -iny: GOTO 2
IF SCREEN(x1 - 1, y1) = 219 THEN inx = -inx: GOTO 2
IF SCREEN(x1 - 1, y1 + 1) = 219 THEN inx = -inx: GOTO 2

2 IF x1 + inx > 16 THEN inx = -inx
  IF x1 + inx < 3 THEN inx = -inx
  IF y1 + iny > 76 THEN iny = -iny
  IF y1 + iny < 5 THEN iny = -iny

x1 = x1 + inx
y1 = y1 + iny
e = e + ine
f = f + inf

IF e < 3 THEN e = 3
IF e > 75 THEN e = 75
IF f < 3 THEN f = 3
IF f > 75 THEN f = 75

COLOR 12
LOCATE x1, y1: PRINT "*"

IF x1 > 13 AND x1 < 16 AND y1 > e - 1 AND y1 < e + 5 THEN inx = -inx
IF x1 + inx > 14 AND x1 < 16 AND y1 > e - 1 AND y1 < e + 5 THEN inx = -inx

IF x1 > hi - 2 AND x1 < hi + 1 AND y1 > f - 1 AND y1 < f + 5 THEN inx = -inx
IF x1 + inx > 14 AND x1 < 16 AND y1 > f - 1 AND y1 < f + 5 THEN inx = -inx

IF x1 > 15 THEN GOTO ag:
COLOR 11
LOCATE 15, e: PRINT "����-"
COLOR col
LOCATE hi, f: PRINT "����-"
FOR i = 1 TO 500: NEXT
coun = coun + 1
LOOP

scre:
FOR i = 3 TO 79
LOCATE 2, i: PRINT "�"
LOCATE 18, i: PRINT "�"
NEXT
FOR i = 3 TO 17
LOCATE i, 2: PRINT "�"
LOCATE i, 80: PRINT "�"
NEXT
LOCATE 2, 2: PRINT "�"
LOCATE 2, 80: PRINT "�"
LOCATE 18, 2: PRINT "�"
LOCATE 18, 80: PRINT "�"
RETURN

ag:
fin = TIMER
tim = INT(fin - start)
COLOR 15
LOCATE 10, 30: PRINT "Time taken = "; tim; " seconds"
FOR i = 1 TO 1000: NEXT
GOTO again

newblock:
COLOR 10
kl = INT(RND * 10 + 3)
kj = INT(RND * 75 + 3)
LOCATE kl, kj: PRINT "�"
RETURN

again:
COLOR 15
LOCATE 13, 26: INPUT "Do you want to play again (y/n) "; aga$
IF LCASE$(aga$) = "y" THEN GOTO 1 ELSE RUN "b:\project\manager1.bas"

