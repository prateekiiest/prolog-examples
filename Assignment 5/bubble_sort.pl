bubblesort([],[]).
bubblesort(In, [H|Out]):-
  order(In, [H|T]),
  bubblesort(T, Out).

order([],[]).
order([A], [A]).
order([H|T], [H,X|Y]):-
  order(T,[X|Y]),
  H =< X.

order([H|T], [X,H|Y]):-
  order(T,[X|Y]),
  H > X.
