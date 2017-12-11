f(1).
f(2).
f(a).

lista(L):-findall(X,(f(X),number(X)),L).