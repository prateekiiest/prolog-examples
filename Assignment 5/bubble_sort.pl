bubblesort([],[]).
bubblesort(In, [H|Out]):-
  pulldown(In, [H|T]),
  bubblesort(T, Out).

pulldown([],[]).
pulldown([A], [A]).
pulldown([H|T], [H,X|Y]):-
  pulldown(T,[X|Y]),
  H =< X.

pulldown([H|T], [X,H|Y]):-
  pulldown(T,[X|Y]),
  H > X.
