eliminar_elem(_,[],[]).
eliminar_elem(X,[C|L],LS):- X=C, eliminar_elem(X,L,LS).
eliminar_elem(X,[C|L],[CL|LS]):- eliminar_elem(X,L,LS), CL is C.

duplicados([],[]).
duplicados([C1|L1],[C2|L2]):- eliminar_elem(C1,L1,L2), duplicados(L1,L2), C2 is C1.

