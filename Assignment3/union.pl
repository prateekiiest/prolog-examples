our_member(X,[X|Rest]).
our_member(X,[Y|Rest]):-our_member(X,Rest).

union([],L,L).
union([X|L1],L2,L3):-our_member(X,L2),!,
    union(L1,L2,L3).
union([X|L1],L2,[X|L3]):-union(L1,L2,L3).
