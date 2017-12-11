10 suma = 0
15 input "ingrese un número: ";n
20 for i=1 to n step 1
22 	num = i
25	 factorial=1
27	 if (num = 1) then goto 45
29	 do
32		 factorial = (factorial * num)
35		 num =(num-1)
40	 loop until num=1
45 suma= suma + (1/factorial)
50 next
55 print "la suma es igual a: ";suma