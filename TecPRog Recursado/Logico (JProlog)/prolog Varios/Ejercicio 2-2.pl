contar(X,[],0).
contar(X,[C|L], Cant):- X=C , contar(X, L, Cant2), Cant is Cant2+1,!.
contar(X,[_|L], Cant):- contar(X, L, Cant).
