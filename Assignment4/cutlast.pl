cutlast([X],[]).
cutlast([X|T],[X|T1]):-
cutlast(T,T1).
