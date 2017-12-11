10 dim vector(20)
12 input "ingrese numero: ";n
14 max=n
16 posicion=1
18 vector(0)=n
20 for i=1 to 19 step 1
30 	input "ingrese numero: ";n
40 	vector(i)=n
50 	if (n>max) then goto 70 end if
55	
60 next
62 goto 80

70 posicion=i+1
71 max =n
72 goto 55

80 print "el maximo se encuentra en la posicion: ";posicion
90 print max;"es el mayor"
