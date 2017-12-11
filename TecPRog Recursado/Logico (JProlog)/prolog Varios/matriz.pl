ins(X, L, [ X | L ]).
ins(X, [ Y | L1 ], [ Y | L2 ]) :-ins(X, L1, L2).

per([],[]).
per([ X | L ], Lp) :- per(L, L1), ins(X, L1, Lp).

sumas([A,B,C,D,E,F,G,H,I]):-  X is A+B+C, X is D+E+F, X is G+H+I,	
					X is A+D+G, X is B+E+H, X is C+F+I,
					X is A+E+I, X is C+E+G.
matriz(LF):- L = [1,2,3,4,5,6,7,8,9],per(L,LF),sumas(LF).