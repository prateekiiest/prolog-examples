flatten(List, Flattened):-
  flattenacc(List, [], Flattened).

flattenacc([], Flattened, Flattened).
flattenacc([H|T], L, Flattened):-
  flattenacc(H, L1, Flattened),
  flattenacc(T, L, L1).
flattenacc(H, Flattened, [H|Flattened]):-
  \+ is_list(H).
