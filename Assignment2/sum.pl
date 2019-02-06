sum([],0).
sum([Head|Rest],N):-
	sum(Rest,N1),
	N is Head + N1.
