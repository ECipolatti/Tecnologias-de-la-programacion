10 n = (int (rnd*49)+1)
11 
12 print n
20 for cant=1 to 5 step 1
30 input "ingrese un numero: ";numero
40 if n=numero then goto 60 
42 end if
50 next
55 goto 90
60 print "el num coincide"

70 goto 100

90 print "erró mas de cinco veces"
100 print "fin"