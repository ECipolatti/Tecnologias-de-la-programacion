p(árbol).
p(animal).
p(base).
p(caramelo).
p(caracol).
p(curso).
p(dedo).
p(dedal).
p(diferencia).
p(diferencial).
p(diferente).
p(elefante).
p(electricidad).
p(esfera).
p(fenómeno).
p(fiera).
p(guante).
p(hormiga).
p(hormigón).
p(irlanda).

buscar(P,L):-findall(X,p(X),D), match(P,D,L).

match(_,[],[]):-!.
match(P,[X|R],[X|R1]):- atom_chars(P,Pl), atom_chars(X,Xl),
		aplanar(Pl,Pa),aplanar(Xl,Xa), verifica(Pa,Xa), !, match(P,R,R1).
match(P,[_|R],R1):- match(P,R,R1).

verifica([*],[]):-!.
verifica([],[]):-!.
verifica([?|Pr],[_|Dr]):- !, verifica(Pr,Dr).
verifica([*|Pr],[X|Dr]):-  verifica(Pr,[X|Dr]) ; verifica([*|Pr],Dr) .
verifica([X|Pr],[X|Dr]):- verifica(Pr,Dr).

aplanar([],[]):-!.
aplanar([ñ|R],[n|R1]):-aplanar(R,R1).
aplanar([á|R],[a|R1]):-aplanar(R,R1).
aplanar([é|R],[e|R1]):-aplanar(R,R1).
aplanar([í|R],[i|R1]):-aplanar(R,R1).
aplanar([ó|R],[o|R1]):-aplanar(R,R1).
aplanar([ú|R],[u|R1]):-aplanar(R,R1).
aplanar([X|R],[X|R1]):-aplanar(R,R1).





