10 input "Ingrese un numero:";numero
11 numero =int(numero)
12 largo = (numero)^0,5
13 largo=integer(largo)
15 Dim vector(largo) As integer

20 for i=largo-1 to 1 step -1
25 	resto = ((numero mod 2)*2)
27 	numero = (numero*0,5)
32 	vector(i) = resto
38 next
40 print "el numero pasado a binario es: "
45 for y=1 to largo
46 print vertor(y)
47 next


