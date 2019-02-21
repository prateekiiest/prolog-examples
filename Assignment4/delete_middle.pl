deln([X|L],1,L).
deln([X|L],N,[X|L1]):-
N1 is N-1,
deln(L,N1,L1).



delmiddle([X],[]).
delmiddle(L,L1):-
length3(L,N),
N2 is integer(N/2),
deln(L,N2,L1).
