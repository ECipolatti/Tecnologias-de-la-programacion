lista(L):-forall(member(X,L),number(X)),!.
lista(L):-forall(member(X,L),atom(X)),!.
lista(L):-forall(member(X,L),(not(number(X)),not(atom(X)))).