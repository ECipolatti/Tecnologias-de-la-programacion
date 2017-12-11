eliminar_primero(L,0,L):-!.
eliminar_primero([_|L1],X,LF):- X2 is X-1, eliminar_primero(L1,X2,LF).
