oper(+).
oper(-).
oper(*).

listaari([X],[X]):-!.
listaari([X|R],[X, Op| Rari]):-oper(Op), listaari(R, Rari).

calcular([X],X).
calcular([X,+,Y|L], R):- !, Z is X+Y, calcular([Z|L],R).
calcular([X,-,Y|L], R):- !, Z is X-Y, calcular([Z|L],R).
calcular([X,*,Y|L], R):- Z is X*Y, calcular([Z|L],R).



igu(L,LF):- append(L1,L2,L),L1\=[],L2\=[], 
		listaari(L1,L1ari), listaari(L2,L2ari), 
		calcular(L1ari,R), calcular(L2ari,R),!,
		append(L1ari,[=|L2ari],LF).

