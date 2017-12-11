factorial(0,1).
factorial(N,F):- N>= 0, G is N-1, factorial(G,F1), F is N*F1.
 

