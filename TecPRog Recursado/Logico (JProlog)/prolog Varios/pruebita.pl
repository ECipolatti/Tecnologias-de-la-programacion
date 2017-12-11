concatenar([],L,L):-!.
concatenar([X|C],L,[X|LF]):-concatenar(C,L,LF).

%aplana([],[]),!.
%aplana([X|L]
%aplana([X1|C1],LF):-aplana(C1,L2)concatenar(X1,L2,LF).



lista([_|_]).
lista([]).
aplanar([],[]). 
aplanar([X|L1],[X|L2]):- not(lista(X)), aplanar(L1,L2). 
aplanar([X|L1],L):-  aplanar(L1,L2),  concatenar(X,L2,L). 
