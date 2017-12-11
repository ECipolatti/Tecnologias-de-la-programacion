cantidad([],0).
cantidad([_|L], Cant):- cantidad(L,C2), Cant is C2+1.