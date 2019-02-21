interleave([X],[],[X]).

interleave([X|L1],[Y|L2],[X|[Y|L3]]):-
interleave(L1,L2,L3).

inter([],[],[]).
inter(L1,L2,L3):-
length3(L1,N1),
length3(L2,N2),
N1>=N2,
interleave(L1,L2,L3);
interleave(L2,L1,L3).

