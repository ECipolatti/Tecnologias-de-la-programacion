10 bajo=0
12 medio=0
14 alto=0
20 input "ingrese numero: ";n
30 if n = 0 then goto 100
35 if n<160 then
40 	bajo = bajo + 1
50 else
60	if n>180 then
65		alto = alto+ 1
70	else
75		medio = medio + 1
80	end if
85 end if
90 goto 20
100 print "bajos: ";bajo;" medios ";medio; " y altos ";alto
150 print "fin"
