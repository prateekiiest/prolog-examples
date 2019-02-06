max(X,Y,R):-
	X >= Y,
	R is X.
max(X,Y,R):-
	Y > X,
	R is Y.

max_list([X],X).
max_list([X|Rest],R):-
	max_list(Rest,R2),
	max(X,R2,R).
