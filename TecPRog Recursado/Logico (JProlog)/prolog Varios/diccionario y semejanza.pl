dic([sanar, hola, sabana, sabalo, prueba, computadora, cartera, mate, termo, mesa, silla, sarna]).

semejanza([],[],0):-!.
semejanza([],[_|L],S):- semejanza([],L,R),S is R-1,!.
semejanza([_|L],[],S):- semejanza(L,[],R), S is R-1,!.
semejanza([C1|L1],[C1|L2],S):- semejanza(L1,L2,R), S is R+1,!.
semejanza([C1|L1],[C2|L2],S):- C1\==C2, semejanza(L1,L2,R), S is R-1.

procesar(_,[],[]):-!.
procesar(P,L,P):-  existe(P,L),!.
procesar(P,[X|L],[[X,S]|L1]):-  atom_chars(P,PC), atom_chars(X,XC), semejanza(PC,XC,S), S>0,!,procesar(P,L,L1).
procesar(P,[_|L],L1):- procesar(P,L,L1).

buscar(P,R):- dic(D), procesar(P,D,R).

largo([],0).
largo([_|L],N):- largo(L,N2), N is N2+1.

existe(_,[]):-fail.
existe(P,[P|_]):-!.
existe(P,[_|L]):-existe(P,L).



