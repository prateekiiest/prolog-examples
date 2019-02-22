list_length([],0).
list_length([H|T],N):-list_length(T,N1), N is N1+1.

interleave([X],[],[X]).
interleave([X|L1],[Y|L2],[X|[Y|L3]]):-
interleave(L1,L2,L3).

interleave([],[],[]).
interleave(L1,L2,L3):-
list_length(L1,N1),
list_length(L2,N2),
N1>=N2,
interleave(L1,L2,L3);
interleave(L2,L1,L3).

