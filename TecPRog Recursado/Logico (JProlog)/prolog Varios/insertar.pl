concatenar([],L2,L2):-!.
concatenar([C|L],L2,[C|L3]):-concatenar(L,L2,L3).

insertar(X,[],[X]).
insertar(X,[C|L],[C|LF]):- X>C, insertar(X,L,LF),!.
insertar(X,L,LF):- concatenar([X],L,LF). 
