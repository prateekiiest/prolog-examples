trimlast(0,L,[]).
trimlast(N,[X|H],[X|H1]):-
N1 is N-1,
trimlast(N1,H,H1).
