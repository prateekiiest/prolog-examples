length3(L,N):- lengthacc(L,0,N).
lengthacc([],A,A).
lengthacc([H|T],A,N):-A1 is A+1,
    lengthacc(T,A1,N).

deln([X|L],1,L).
deln([X|L],N,[X|L1]):-
N1 is N-1,
deln(L,N1,L1).



delmid2([],[]).
delmid2(L,L1):-
length3(L,N),
N1 is N/2,
deln(L,N1,L2),
deln(L2,N1,L1).
