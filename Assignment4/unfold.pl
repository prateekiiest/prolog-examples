
findmiddle([X|L],1,X).
findmiddle([X|L],N,X1):-
N1 is N-1,
findmiddle(L,N1,X1).


length3(L,N):- lengthacc(L,0,N).
lengthacc([],A,A).
lengthacc([H|T],A,N):-A1 is A+1,
    lengthacc(T,A1,N).

unfold([X],[X]).
unfold(L,L1):-
length3(L,N),
N1 is integer(N/2),
N2 is N1-1,
trim(N1,L,L2),
N3 is N-N1+1,
findmiddle(L,N1,X),
trim(N3,L,L3),
reverse(L2,L4),
reverse(L3,L5),
append(L4,[X],L6),
append(L6,L5,L1).
