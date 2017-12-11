sem([],[],0):-!.
sem([],[_|L],S):- sem([],L,R),S is R-1,!.
sem([_|L],[],S):- sem(L,[],R), S is R-1,!.
sem([C1|L1],[C1|L2],S):- sem(L1,L2,R), S is R+1,!.
sem([C1|L1],[C2|L2],S):- C1\==C2, sem(L1,L2,R), S is R-1.
