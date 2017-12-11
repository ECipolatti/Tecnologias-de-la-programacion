10 dim vector (20)
12 nummax = 0
14 posicion = 0
20 for i=0 to 19
30	input "ingrese un numero:";num
32	vector(i)=num
35	if (num>nummax) then
36		posicion = i
39  		nummax=num
40 	end if
60 next
70 print "la pocicion del mayor es: ";(posicion+1)
