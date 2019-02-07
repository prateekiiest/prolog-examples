our_member(X,[X|Rest]).
our_member(X,[Y|Rest]):-our_member(X,Rest).


union([],L,L).
union([X|L1],L2,L3):-our_member(X,L2),!,
    union(L1,L2,L3).
union([X|L1],L2,[X|L3]):-union(L1,L2,L3).

set_difference([],L,[]).
set_difference([X|L1],L2,L3):-our_member(X,L2),!,
    set_difference(L1,L2,L3).
set_difference([X|L1],L2,[X|L3]):-set_difference(L1,L2,L3).              

intersection([],L,[]).
intersection([X|L1],L2,[X|L3]):- our_member(X,L2),!,
    
    intersection(L1,L2,L3).
intersection([X|L1],L2,L3):- intersection(L1,L2,L3).

difference(L1,L2,L3):-
    union(L1,L2,L4),
    intersection(L1,L2,L5),
    set_difference(L4,L5,L3).
