add(X,0,X).
add(X,Y,R):-
	T is X + 1,
	P is Y - 1,
	add(T,P,R).
