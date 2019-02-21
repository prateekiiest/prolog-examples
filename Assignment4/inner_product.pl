inner(L1,L2,S):-
inneracc(L1,L2,0,S).

inneracc([],[],A,A).
inneracc([X|L1],[Y|L2],A,S):-
S1 is X*Y,
S2 is A+S1,
inneracc(L1,L2,S2,S).
