our_member(X,[X|Rest]).
our_member(X,[Y|Rest]):-our_member(X,Rest).

intersection([],L,[]).
intersection([X|L1],L2,[X|L3]):- our_member(X,L2),!,
    
    intersection(L1,L2,L3).
intersection([X|L1],L2,L3):- intersection(L1,L2,L3).

