suma([],0).
suma([C|L],S):- suma(L,S2), S is C+S2.