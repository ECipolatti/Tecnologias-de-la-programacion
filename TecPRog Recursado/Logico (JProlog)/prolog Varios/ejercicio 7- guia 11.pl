igualdad(X,L):- forall(member(R,X),integer(R)),
		length(X,Largo),Largo>=2,
		findall(Aux,member(Aux,X),L),compara(X,L).

compara([X,Y],[X,'=',Y]):-X=:=Y,!.
%compara(