10 input "Ingrese un numero para calculoar su factorial";num
11 factorial=1
15 if (num = 1) then goto 40
20 do
25 factorial = (factorial * num)
27 num =(num-1)
30 loop until num=1
40 print "el numero factorial es: ";factorial
