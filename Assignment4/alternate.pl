alternate([],[]).
alternate(L,L1):-
alt(L,0,L1).

alt([],_,L1):-
append(L1,[],L1).
alt([X|L],A,[X|L1]):-
A1 is A mod 2,
A1 = 0,!,
A2 is A+1,
alt(L,A2,L1).

alt([X|L],A,L1):-
A1 is A+1,
alt(L,A1,L1).
