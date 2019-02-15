our_member(X,[X|Rest]).
our_member(X,[Y|Rest]):-our_member(X,Rest).

removeduplicate(L,L1):-removeacc(L,[],L1).
removeacc([],A,A).
removeacc([H|T],A,L1):- our_member(H,A),
    !,
    removeacc(T,A,L1).

removeacc([H|T],A,L1):-removeacc(T, [H|A], L1).
