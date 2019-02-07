efface(_,[],[]).
efface(A,[A|L],L):-!.
efface(A,[B|L],[B|M]):-efface(A,L,M).
