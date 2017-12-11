largo([],0).
largo([_|L],C):-largo(L,C2), C is C2+1.
suma_lista([],[],[]).
suma_lista([C1|L1],[C2|L2],[C3|L3]):- largo(L1,Largo1),largo(L2,Largo2), Largo1=:=Largo2,
				suma_lista(L1,L2,L3), C3 is C1+C2.
					
