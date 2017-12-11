10 num =2
20 input "Ingrese la cantidad de numeros Fibonacci que desea mostrar: ";num
25 suma=0
26 n1=1
27 n2=1
28 print n1
29 if num=1 then goto 60
30 print n2
31 if (num = 2) then goto 60
35 for i=0 to (num -3) step 1
40 suma = (n1 + n2)
45 print suma
50 n1=n2
51 n2=suma
55 next
60 print "Serie FIBONACCI hasta el numero solicitado"
