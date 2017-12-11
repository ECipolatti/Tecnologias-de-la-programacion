intercambio(X1,Y1,Y1,X1).


concatenar([],L2,L2):-!.
concatenar([C|L],L2,[C|L3]):-concatenar(L,L2,L3).

insertar(X,[],[X]).
insertar(X,[C|L],[C|LF]):- X>C, insertar(X,L,LF),!.
insertar(X,L,LF):- concatenar([X],L,LF). 

ordenar([],[]):-!.
ordenar([X1,X2|L1],[C1,C2|L2]):- X1>X2, intercambio(X1,X2 ,C1,C2), ordenar(L1,L2),!.
ordenar([X1|L1],[X1|L2]):-ordenar(L1,L2).