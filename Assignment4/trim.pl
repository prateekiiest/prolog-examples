trim(0,L,L).
trim(N,[X|H],L1):-
N1 is N-1,
trim(N1,H,L1).
