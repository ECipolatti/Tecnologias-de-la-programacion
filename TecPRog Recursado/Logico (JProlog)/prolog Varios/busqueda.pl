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

%quiero dividir en char, comparar M.A.M. y devolver las coincidencias
procesar(X,L):-atom_chars(X,L2),busqueda(L2,L,LF).

busqueda([],_,[]):-!.
busqueda(L2,[X|L],LF):-atom_chars(X,B),.

%busca las palabras iguales.
compara(_,[],[]):-!. 
compara(X,[X|L],[X|LF]):-compara(X,L,LF),!.
compara(X,[_|L],LF):-compara(X,L,LF).

buscar(*,L):- findall(X,p(X),L).
buscar(X,LF):- findall(X,p(X),L),compara(X,L,LF).


