our_member(X,[X|Rest]).
our_member(X,[Y|Rest]):-our_member(X,Rest).

our_add(A,[],[A]).
our_add(A,L,L):- our_member(A,L),!.
    our_add(A,L,[A|L]).
