10 input "Ingrese un numero: ";numero
11 numero =int(numero)
12 b=1
16 incremento=10
20 do while (numero<>0)
25 	resto = ((numero mod 2)*2)
27 	numero = (numero*0,5)
32 	b=(b+resto*incremento)
34 	incremento = 10
38 loop
40 print "el numero pasado a binario es: ";b

