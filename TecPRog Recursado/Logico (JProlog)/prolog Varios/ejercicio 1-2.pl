padre(leoncio, alberto).
padre(leoncio, geronimo).
padre(alberto, juan).
padre(alberto, luis).
padre(geronimo, luisa).
hermano(A,B):-padre(X,B)=:=padre(X,A).
nieto(A,B):-padre(X,A),padre(B,X).