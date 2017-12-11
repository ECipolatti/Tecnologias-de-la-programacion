positivo([],[]).
positivo([C|L],[Cab1|Lista1]):- C>0, positivo(L,Lista1), Cab1 is C, !.
positivo([_|L],L2):- positivo(L,L2).