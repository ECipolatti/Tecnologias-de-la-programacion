:-dynamic(f/1).
f(1).
f(3).
f(4).

agregar(X):-not(f(X)), assert(f(X)).