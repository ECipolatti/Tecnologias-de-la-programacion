10 dim vector (20)
20 for i=0 to 19
30	input "ingrese un numero:";num
39  for j=19 to 0 step -1
40		if (num>=vector(j)) then 
42			vector(j+1)=vector(j)
43			vector(j)=num
44		else	
46			j=0
48		end if
50 	next
60 next
150 for i=0 to 19
151 print vector(i)
152 next

