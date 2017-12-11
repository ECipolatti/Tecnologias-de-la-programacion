mayor(X,Y):- X<Y,!.  
mayorig(X,Y):- X>=Y.
ordd([],[]):-!.  
ordd([X|L],XenLord) :-  ordd(L,Lord),  inserta2(X,Lord,XenLord).
inserta2(X,[],[X]):-!.  
inserta2(X,[Y|L],[Y|XenL]):-  mayor(Y,X),!, inserta2(X,L,XenL).  
inserta2(X,[Y|L],[X,Y|L]):- mayorig(X,Y).