puerta(a,b).
puerta(a,d).
puerta(d,f).
puerta(e,f).
puerta(b,c).
puerta(f,g).
puerta(c,g).
puerta(g,salida).
pasa(X,Y):-puerta(X,Y);puerta(Y,X).

salir(X,C):-camino([X],C1),reverse(C1,C).
camino([salida|R],[salida|R]).
camino([X|R],C):- pasa(X,Y), not(member(Y,R)), camino([Y,X|R],C).


