cll([],[]).
cll([H|T],Y):-
append(T,[H],Y).
