ins(X, L, [ X | L ]).
ins(X, [ Y | L1 ], [ Y | L2 ]) :- ins(X, L1, L2).
permutacion([],[]).
permutacion([ X | L ], Lp) :- permutacion(L, L1), ins(X, L1, Lp).

matriz(A,B,C,D,E,F,G,H,I,L):-   R is A+B+C, R is D+E+F, R is G+H+I, 
				R is A+D+G, R is B+E+H, R is C+F+I,
				R is A+E+I, R is C+E+G,matrix(A,B,C,D,E,F,G,H,I,L).
matrix(A,B,C,D,E,F,G,H,I,L):-permutacion([A,B,C,D,E,F,G,H,I],L),matriz(A,B,C,D,E,F,G,H,I,L).
