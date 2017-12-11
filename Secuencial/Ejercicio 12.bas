10 print "Ingresará dos numero, el primero debe ser mayor que el segundo!"
11 input "Ingrese el n: ";n
12 input "Ingrese el i: ";i
15 resultado=0
25	 factorial1=1
26	 num =n
27	 if (num = 1) then goto 45
29	 do
32		 factorial1 = (factorial1 * num)
35		 num =(num-1)
40	 loop until num=1
45	 factorial2=1
50	num = i
52	 if (num = 1) then goto 60
53	 do
54		 factorial2 = (factorial2 * num)
55		 num =(num-1)
56	 loop until num=1
60	 factorial3=1
62	 num = (n-i)
64	 if (num = 1) then goto 80
66	 do
68		 factorial3 = (factorial3 * num)
70		 num =(num-1)
72	 loop until num=1
80 resultado = (factorial1/(factorial2 * factorial3))
85 print "El resultado es: ";resultado