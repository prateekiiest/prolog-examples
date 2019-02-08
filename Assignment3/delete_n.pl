my_delete([],N,[]).
my_delete([Head|Rest],N,Rest):-
	N = 1.
my_delete([Head|Rest],N,[Head|L1]):-
	N > 1,
	N1 is N - 1,
	my_delete(Rest,N1,L1).
