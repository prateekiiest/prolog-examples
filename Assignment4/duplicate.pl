dup(L,L1):-
dupacc(L,[],L1).
dupacc([],A,A).
dupacc([H|T],A,L1):-
member(H,T),!,
dupacc(T,A,L1).
dupacc([H|T],A,L1):-
dupacc(T,[H|A],L1).
