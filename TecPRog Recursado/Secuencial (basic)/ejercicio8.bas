10 input "ingrese un numero: ";n
12 binario$ = ""
15 do while n<>0
20 	resto = n mod 2
25 	n = (int (n / 2))
30 	if resto=0 then goto 70 else goto 90 end if 
40 loop
55 goto 150

70 binario$ = "0" + binario$
80 goto 40
90 binario$ = "1" + binario$
100 goto 40

150 print binario$
