multi([X],[Y]):-not(X=[_|_]), Y is X*X,!.
multi([],[]):-!.
multi([X,Y|C], [R|LF]):- R is X*Y,multi(C,LF).

pertenece(X,[X|_]).%sin corte porque necesito las unificaciones
pertenece(X,[_|C]):-pertenece(X,C).

armar(L,LF):- validar(L),multi(L,LF),!.
armar(_,_):-true.

validar(L):- not(forall(pertenece(X,L),integer(X)))->(write('Lista Invalida'),fail);true.