10 input "ingrese el primer numero:";n1
20 input "ingrese el segundo numero:";n2
30 input "ingrese tercer numero:";n3
40 if (((n2 > n1) and (n2 < n3)) or ((n2 > n3) and (n2 <n1))) then
50 	print "el central es:"; n2
52	goto 100
55 end if
60 if (((n1 > n2) and (n1 < n3)) or ((n1 > n3) and (n1 < n2))) then
65	print "el central es:"; n1
68 else
70	print "el central es:"; n3
90 end if
100 print "FIN"

