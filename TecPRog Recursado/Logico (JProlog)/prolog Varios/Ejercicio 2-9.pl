aplanar([],[]):-!.
aplanar([X|L],[X|L2]):-not(lista(X)), aplanar(L,L2),!.
aplanar([X|L],LF):-aplanar(X,L2),aplanar(L,L3),concat(L2,L3,LF).

concat([],L,L).
concat([C|L],L2, [C|LF]):-concat(L,L2,LF).

lista([]).
lista([_|_]).