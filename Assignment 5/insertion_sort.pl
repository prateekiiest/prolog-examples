insertionsort([],[]).
insertionsort([H|T],L):-
    insertionsort(T,L1),
    insert(H,L1,L).

insert(X,[],[X]).
insert(X,[H|T],[X|[H|T]]):- X =< H, !.
insert(X,[H|T],[H|T1]):- X > H ,!,
    insert(X,T,T1).

