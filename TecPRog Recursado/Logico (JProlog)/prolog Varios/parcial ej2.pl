f(0).
f(1).
f(2).
f(a).
f(3).
f(4).

concatenar([],L,L):-!.
concatenar([X|L1],L2,[X|L3]):-concatenar(L1,L2,L3).

pertenece(X,[X|_]).%sin corte porque necesito las unificaciones
pertenece(X,[_|C]):-pertenece(X,C).

obtener(L):-findall(X,(f(X),integer(X)),L).

divide([],[],[]):-!.
divide([P|L],[P|R],I):- 0 =:= P mod 2, divide(L,R,I),!.
divide([I|L],P,[I|R]):- divide(L,P,R).

armar(LF):-obtener(L),divide(L,P,I),orda(P,PF),ordd(I,IF),concatenar(PF,IF,LF).

menor(X,Y):- X<Y,!.  
menorig(X,Y):- X=<Y.
orda([],[]):-!.  
orda([X|L],XenLord) :-  orda(L,Lord),  inserta(X,Lord,XenLord).
inserta(X,[],[X]):-!.  
inserta(X,[Y|L],[Y|XenL]) :-  menor(Y,X),!, inserta(X,L,XenL).  
inserta(X,[Y|L],[X,Y|L]) :- menorig(X,Y).

mayor(X,Y):- X<Y,!.  
mayorig(X,Y):- X>=Y.
ordd([],[]):-!.  
ordd([X|L],XenLord) :-  ordd(L,Lord),  inserta2(X,Lord,XenLord).
inserta2(X,[],[X]):-!.  
inserta2(X,[Y|L],[Y|XenL]):-  mayor(Y,X),!, inserta2(X,L,XenL).  
inserta2(X,[Y|L],[X,Y|L]):- mayorig(X,Y).