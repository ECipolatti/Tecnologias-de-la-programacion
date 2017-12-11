ordena([],[]):-!.
ordena(L,[X|LF]):-min_list(L,X),delete(L,X,L1),ordena(L1,LF).


pertenece(_,[]):-fail,!.
pertenece(X,[X|_]).
pertenece(X,[_|L]):-pertenece(X,L).