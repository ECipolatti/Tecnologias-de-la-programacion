agr(E,[],[E]):-!.
agr(E,[E|L],[E|L]):-!.
agr(E,[C|L],[C|LF]):-agr(E,L,LF).