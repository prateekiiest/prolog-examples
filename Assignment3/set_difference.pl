our_member(X,[X|Rest]).
our_member(X,[Y|Rest]):-our_member(X,Rest).


set_difference([],L,[]).
set_difference([X|L1],L2,L3):-our_member(X,L2),!,
    set_difference(L1,L2,L3).
set_difference([X|L1],L2,[X|L3]):-set_difference(L1,L2,L3).              
