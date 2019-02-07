rec_sub(X,0,X).
rec_sub(X,Y,R):-
	T is X - 1,
	P is Y - 1,
	rec_sub(T,P,R).
