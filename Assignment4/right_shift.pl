cutlast([X|T],[X|T1]):-
cutlast(T,T1).

find_last([X],X).
find_last([_|Rest],X):-
find_last(Rest,X).

rll([],[]).
rll(L,Y):-
find_last(L,X),cutlast(L,L1),
append([X],L1,Y).
