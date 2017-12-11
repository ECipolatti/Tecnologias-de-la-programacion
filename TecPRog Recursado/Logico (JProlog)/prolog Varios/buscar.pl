semejanza([],[],0):-!.
semejanza([],[_|L],S):- semejanza([],L,R),S is R-1,!.
semejanza([_|L],[],S):- semejanza(L,[],R), S is R-1,!.
semejanza([C1|L1],[C1|L2],S):- semejanza(L1,L2,R), S is R+1,!.
semejanza([C1|L1],[C2|L2],S):- C1\==C2, semejanza(L1,L2,R), S is R-1.

dic([sanar, hola, sabana, sabalo, prueba, computadora, cartera, mate, termo, mesa, silla, sarna]).



buscar(X,C):- X=:=C, dic([C|L]),!.
 
