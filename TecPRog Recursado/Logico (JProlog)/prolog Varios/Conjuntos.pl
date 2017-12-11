validar([]):-true,!.
validar([X|L]):-not(member(X,L)), validar(L).

unir([],L2,L2):- validar(L2),!.
unir([X|L1],L2,[X|LF]):- validar([X|L1]),not(member(X,L2)), unir(L1,L2,LF),!.
unir([_|L1],L2,LF):- validar(L1), unir(L1,L2,LF).


inter([],_,[]):-!.
inter([X|L1],L2,[X|LF]):-validar([X|L1]),validar(L2), member(X,L2),inter(L1,L2,LF),!.
inter([_|L1],L2,LF):-validar(L1),validar(L2), inter(L1,L2,LF).

dif([],_,[]):-!.
dif([X|L1],L2,[X|LF]):- validar([X|L1]),validar(L2),not(member(X,L2)),dif(L1,L2,LF) ,!.
dif([_|L1],L2,LF):- validar(L1),validar(L2),dif(L1,L2,LF).
%unir([1,2,3],[3,4,5],L).L1
