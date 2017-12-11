:-dynamic(f/1).
f(1).
f(3).
f(4).

agregar(X):-findall(X,f(X),L),not(member(X,L)),assert(f(X)).