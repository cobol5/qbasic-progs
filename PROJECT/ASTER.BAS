k = INT(RND * 280)
j = INT(RND * 170)
GOSUB hik
game:
RANDOMIZE TIMER

a = INT(RND * 280) '3
b = INT(RND * 170)
c = INT(RND * 280) '2
d = INT(RND * 170)
e = INT(RND * 280) '1
f = INT(RND * 170)

g = INT(RND * 280)
h = INT(RND * 170)

o = INT(RND * 280)
p = INT(RND * 170)

q = INT(RND * 280)
r = INT(RND * 170)
SCREEN 1
DIM ship(100)
DIM circle1(100)
DIM circle2(100)
DIM circle3(100)
PSET (100, 100)
DRAW "r10f5d3g5u5l6f4l3h7u5r1"
PSET (100, 50)
DRAW "d5g6l3h4u3e4r8"
PSET (50, 100)
DRAW "u4r3e5r3f4d6g4l4h3l4u1"
GET (95, 100)-(120, 120), circle1
GET (85, 50)-(120, 75), circle2
GET (48, 85)-(70, 115), circle3
CLS
SCREEN 1
PSET (150, 100)    '150 = left,right  100 = up,down
DRAW "C2g5r10h5u2"
GET (140, 90)-(160, 110), ship
CLS

in:
i$ = INKEY$
SELECT CASE i$
CASE CHR$(0) + "H": m = m - 1
CASE CHR$(0) + "P": m = m + 1
CASE CHR$(0) + "K": n = n - 1
CASE CHR$(0) + "M": n = n + 1
CASE "l": k = INT(RND * 280): j = INT(RND * 170): CLS
CASE "e": m = 0: n = 0
CASE "p": GOSUB p:
CASE " ": GOSUB shot
CASE "q": END
CASE ELSE
END SELECT

IF n > 5 THEN n = 5
IF n < -5 THEN n = -5
IF m > 5 THEN m = 5
IF m < -5 THEN m = -5
k = k + n: j = j + m
IF j < 0 THEN LINE (k - 20, j - 20)-(k + 50, j + 50), 0, BF: j = 170
IF j > 170 THEN LINE (k - 20, j - 20)-(k + 50, j + 50), 0, BF: j = 0
IF k < 0 THEN LINE (k - 20, j - 20)-(k + 50, j + 50), 0, BF: k = 280
IF k > 280 THEN LINE (k - 20, j - 20)-(k + 50, j + 50), 0, BF: k = 0
'FOR i = 1 TO 100: NEXT i
IF s > hi THEN hi = s
LOCATE 1, 1: PRINT "Score = "; s: LOCATE 1, 15: PRINT "High score ="; hi
PUT (k, j), ship, PSET

RANDOMIZE TIMER

a = a + INT(RND * 2) + 1: b = b + INT(RND * 2) + 3
c = c + INT(RND * 2) - 7: d = d + INT(RND * 2) - 2
e = e + INT(RND * 2) - 3: f = f + INT(RND * 2) - 5
g = g + INT(RND * 2) - 3: h = h + INT(RND * 2) - 3
o = o + INT(RND * 2) + 1: p = p + INT(RND * 2) + 2
q = q + INT(RND * 2) - 4: r = r + INT(RND * 2) - 3

IF a < 0 THEN LINE (a - 20, b - 20)-(a + 50, b + 50), 0, BF: a = 250
IF a > 250 THEN LINE (a - 20, b - 20)-(a + 50, b + 50), 0, BF: a = 0
IF c < 0 THEN LINE (c - 20, d - 20)-(c + 50, d + 50), 0, BF: c = 280
IF c > 280 THEN LINE (c - 20, d - 20)-(c + 50, d + 50), 0, BF: c = 0
IF e < 0 THEN LINE (e - 20, f - 20)-(e + 50, f + 50), 0, BF: e = 280
IF e > 280 THEN LINE (e - 20, f - 20)-(e + 50, f + 50), 0, BF: e = 0
IF b < 0 THEN LINE (a - 20, b - 20)-(a + 50, b + 50), 0, BF: b = 160
IF b > 160 THEN LINE (a - 20, b - 20)-(a + 50, b + 50), 0, BF: b = 0
IF d < 0 THEN LINE (c - 20, d - 20)-(c + 50, d + 50), 0, BF: d = 170
IF d > 170 THEN LINE (c - 20, d - 20)-(c + 50, d + 50), 0, BF: d = 0
IF f < 0 THEN LINE (e - 20, f - 20)-(e + 50, f + 50), 0, BF: f = 170
IF f > 170 THEN LINE (e - 20, f - 20)-(e + 50, f + 50), 0, BF: f = 0
IF g < 0 THEN LINE (g - 20, h - 20)-(g + 50, h + 50), 0, BF: g = 280
IF g > 280 THEN LINE (g - 20, h - 20)-(g + 50, h + 50), 0, BF: g = 0
IF h < 0 THEN LINE (g - 20, h - 20)-(g + 50, h + 50), 0, BF: h = 170
IF h > 170 THEN LINE (g - 20, h - 20)-(g + 50, h + 50), 0, BF: h = 0
IF o < 0 THEN LINE (o - 20, p - 20)-(o + 50, p + 50), 0, BF: o = 260
IF o > 260 THEN LINE (o - 20, p - 20)-(o + 50, p + 50), 0, BF: o = 0
IF p < 0 THEN LINE (o - 20, p - 20)-(o + 50, p + 50), 0, BF: p = 160
IF p > 160 THEN LINE (o - 20, p - 20)-(o + 50, p + 50), 0, BF: p = 0
IF q < 0 THEN LINE (q - 20, r - 20)-(q + 50, r + 50), 0, BF: q = 280
IF q > 280 THEN LINE (q - 20, r - 20)-(q + 50, r + 50), 0, BF: q = 0
IF r < 0 THEN LINE (q - 20, r - 20)-(q + 50, r + 50), 0, BF: r = 170
IF r > 170 THEN LINE (q - 20, r - 20)-(q + 50, r + 50), 0, BF: r = 0


IF k + 10 > e AND k + 10 < e + 20 AND j + 7 > f AND j + 7 < f + 20 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "YOU ARE KILLED": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$: NEXT  _
i4: GOTO try
IF k + 10 > a AND k + 10 < a + 20 AND j + 7 > b AND j + 7 < b + 20 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "YOU ARE KILLED": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$: NEXT  _
i4: GOTO try
IF k + 10 > c AND k + 10 < c + 20 AND j + 7 > d AND j + 7 < d + 10 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "YOU ARE KILLED": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$: NEXT  _
i4: GOTO try
IF k + 10 > g AND k + 10 < g + 20 AND j + 7 > h AND j + 7 < h + 15 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "YOU ARE KILLED": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$: NEXT  _
i4: GOTO try
IF k + 10 > o AND k + 10 < o + 20 AND j + 7 > p AND j + 7 < p + 20 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "YOU ARE KILLED": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$: NEXT  _
i4: GOTO try
IF k + 10 > q AND k + 10 < q + 20 AND j + 7 > r AND j + 7 < r + 20 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "YOU ARE KILLED": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$: NEXT  _
i4: GOTO try

IF k + 15 > e AND k + 15 < e + 20 AND j + 15 > f AND j + 15 < f + 20 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "YOU ARE KILLED": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$:     _
NEXT i4: GOTO try
IF k + 15 > a AND k + 15 < a + 20 AND j + 15 > b AND j + 15 < b + 20 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "YOU ARE KILLED": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$:     _
NEXT i4: GOTO try
IF k + 15 > c AND k + 15 < c + 20 AND j + 15 > d AND j + 15 < d + 10 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "YOU ARE KILLED": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$:     _
NEXT i4: GOTO try
IF k + 15 > g AND k + 15 < g + 20 AND j + 15 > h AND j + 15 < h + 15 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "YOU ARE KILLED": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$:     _
NEXT i4: GOTO try
IF k + 15 > o AND k + 15 < o + 20 AND j + 15 > p AND j + 15 < p + 20 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "YOU ARE KILLED": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$:     _
NEXT i4: GOTO try
IF k + 15 > q AND k + 15 < q + 20 AND j + 15 > r AND j + 15 < r + 20 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "YOU ARE KILLED": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$:     _
NEXT i4: GOTO try

IF k + 5 > e AND k + 5 < e + 20 AND j + 15 > f AND j + 15 < f + 20 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "YOU ARE KILLED": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$: NEXT  _
i4: GOTO try
IF k + 5 > a AND k + 5 < a + 20 AND j + 15 > b AND j + 15 < b + 20 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "YOU ARE KILLED": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$: NEXT  _
i4: GOTO try
IF k + 5 > c AND k + 5 < c + 20 AND j + 15 > d AND j + 15 < d + 10 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "YOU ARE KILLED": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$: NEXT  _
i4: GOTO try
IF k + 5 > g AND k + 5 < g + 20 AND j + 15 > h AND j + 15 < h + 15 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "YOU ARE KILLED": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$: NEXT  _
i4: GOTO try
IF k + 5 > o AND k + 5 < o + 20 AND j + 15 > p AND j + 15 < p + 20 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "YOU ARE KILLED": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$: NEXT  _
i4: GOTO try
IF k + 5 > q AND k + 5 < q + 20 AND j + 15 > r AND j + 15 < r + 20 THEN CLS : LOCATE 10, 15: PRINT "BOOM !": LOCATE 13, 15: PRINT "YOU ARE KILLED": LOCATE 16, 15: PRINT "Score ="; s: FOR i3 = 1 TO 5000: NEXT i3: FOR i4 = 1 TO 16: i$ = INKEY$: NEXT  _
i4: GOTO try


PUT (a, b), circle3, PSET: PUT (c, d), circle2, PSET
PUT (e, f), circle1, PSET: PUT (g, h), circle2, PSET
PUT (o, p), circle3, PSET: PUT (q, r), circle1, PSET
                             
GOTO in

shot:
FOR x = j TO 0 STEP -5
k1 = k + 10
PSET (k1, x)
IF k1 > e AND k1 < e + 20 AND x > f AND x < f + 20 THEN PRINT "****": LINE (e, f)-(e + 60, y + 60), 0, BF: e = INT(RND * 280): f = INT(RND * 170): s = s + 100
IF k1 > a AND k1 < a + 20 AND x > b AND x < b + 20 THEN PRINT "****": LINE (a, b)-(a + 60, b + 60), 0, BF: a = INT(RND * 280): b = INT(RND * 170): s = s + 100
IF k1 > c AND k1 < c + 30 AND x > d AND x < d + 20 THEN PRINT "****": LINE (c, d)-(c + 60, d + 60), 0, BF: c = INT(RND * 280): d = INT(RND * 170): s = s + 100
IF k1 > g AND k1 < g + 30 AND x > h AND x < h + 20 THEN PRINT "****": LINE (g, h)-(g + 60, h + 60), 0, BF: g = INT(RND * 280): h = INT(RND * 170): s = s + 100
IF k1 > o AND k1 < o + 30 AND x > p AND x < p + 20 THEN PRINT "****": LINE (o, p)-(o + 60, p + 60), 0, BF: o = INT(RND * 280): p = INT(RND * 170): s = s + 100
IF k1 > q AND k1 < q + 30 AND x > r AND x < r + 20 THEN PRINT "****": LINE (q, r)-(q + 60, r + 60), 0, BF: q = INT(RND * 280): r = INT(RND * 170): s = s + 100
NEXT x
FOR x = j TO 0 STEP -5
k1 = k + 10
PRESET (k1, x)
NEXT x
FOR x = 2 TO 7
LOCATE x, 1: PRINT "      "
NEXT x
RETURN

p:
DO: LOOP WHILE INKEY$ = ""
RETURN


try:
CLS
SCREEN 2: SCREEN 0
LOCATE 10, 25
INPUT "Do you wish to try again"; try$
IF try$ = "y" OR try$ = "Y" THEN GOTO hil
IF try$ = "cheat" OR try$ = "CHEAT" THEN GOTO him ELSE GOTO hic


hic:
 IF s <= hi THEN END
 OPEN "b:\project\hiscore.ast" FOR OUTPUT AS #1
 WRITE #1, hi
 CLOSE #1
 END

hik:
 OPEN "b:\hiscore.ast" FOR INPUT AS #1
 INPUT #1, hi
 CLOSE #1
 RETURN

hil:
 IF s < hi THEN s = 0: GOTO game
 OPEN "b:\hiscore.ast" FOR OUTPUT AS #1
 WRITE #1, hi
 CLOSE #1
 s = 0
 GOTO game

him:
 IF s < hi THEN GOTO game
 OPEN "b:hiscore.ast" FOR OUTPUT AS #1
 WRITE #1, hi
 CLOSE #1
 GOTO game

