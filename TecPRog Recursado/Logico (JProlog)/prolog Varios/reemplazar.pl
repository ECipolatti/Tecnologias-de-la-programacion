reemplazar(_,_,_,_,[],[]):-!.
reemplazar(_,_,_,0,L,L):-!.
reemplazar(X,Y,0,-1,[X|L],[Y|L2]):- reemplazar(X,Y,0,-1,L,L2),!.
reemplazar(X,Y,0,Cant,[X|L],[Y|L2]):- C is Cant -1, reemplazar(X,Y,0,C,L,L2),!.
reemplazar(X,Y,Desde,Cant,[X|L],[X|L2]):- Desde>0, D is Desde-1, reemplazar(X,Y,D,Cant,L,L2),!.
reemplazar(X,Y,Desde,Cant,[R|L],[R|L2]):-X\==R,reemplazar(X,Y,Desde,Cant,L,L2).

