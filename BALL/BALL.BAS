RANDOMIZE TIMER
CLS
b = 100
x = 10
y = 10
x1 = 5
y1 = 5
e = INT(RND * 70 + 3)
inx = INT(RND * 2 + 1)
iny = INT(RND * 2 + 1)
ine = 1
DIM pos1(b)
DIM pos2(b)
GOSUB scre
num = 0
DO
i$ = INKEY$
SELECT CASE i$
CASE "w": LOCATE x, y: PRINT " ": x = x - 1
CASE "s", "x": LOCATE x, y: PRINT " ": x = x + 1
CASE "a": LOCATE x, y: PRINT " ": y = y - 1
CASE "d": LOCATE x, y: PRINT " ": y = y + 1
CASE "q": END
CASE " ": IF num > b - 1 THEN GOTO 1 ELSE num = num + 1: pos1(num) = x: pos2(num) = y
END SELECT
IF x > 17 THEN x = 17
IF x < 2 THEN x = 2
IF y > 78 THEN y = 78
IF y < 3 THEN y = 3
1 LOCATE x, y: PRINT "�"
LOCATE 16, e: PRINT "�"
LOCATE 16, e + 1: PRINT "�"
LOCATE 16, e + 2: PRINT "�"
LOCATE 16, e - 1: PRINT "�"
LOCATE 16, e - 2: PRINT "�"
FOR k = 1 TO num
LOCATE pos1(k), pos2(k): PRINT "�"
NEXT
LOCATE x1, y1: PRINT " "
IF SCREEN(x1 + 1, y1 + 1) = 219 THEN inx = -inx: iny = -iny: GOTO 2
IF SCREEN(x1 - 1, y1 - 1) = 219 THEN inx = -inx: iny = -iny: GOTO 2
IF SCREEN(x1 + 1, y1 - 1) = 219 THEN inx = -inx: iny = -iny: GOTO 2
IF SCREEN(x1 - 1, y1 + 1) = 219 THEN inx = -inx: iny = -iny: GOTO 2
IF SCREEN(x1 + 1, y1) = 219 THEN inx = -inx: iny = -iny: GOTO 2
IF SCREEN(x1 - 1, y1) = 219 THEN inx = -inx: iny = -iny: GOTO 2
IF SCREEN(x1, y1 - 1) = 219 THEN inx = -inx: iny = -iny: GOTO 2
IF SCREEN(x1, y1 + 1) = 219 THEN inx = -inx: iny = -iny: GOTO 2
2 x1 = x1 + inx
y1 = y1 + iny
IF x1 > 16 THEN inx = -inx
IF x1 < 4 THEN inx = -inx
IF y1 > 76 THEN iny = -iny
IF y1 < 5 THEN iny = -iny
LOCATE x1, y1: PRINT "*": FOR i = 1 TO 200: NEXT

IF e + 2 > 76 THEN ine = -ine
IF e - 2 < 5 THEN ine = -ine
LOCATE 16, e - 2: PRINT "     ": e = e + ine
IF x1 > 15 AND y1 > e - 2 AND y1 < e + 2 THEN END
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





