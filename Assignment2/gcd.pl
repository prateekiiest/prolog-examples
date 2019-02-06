gcd(X,X,X).
gcd(X,Y,Result):-
	Y = 0,
	Result is X,!.
gcd(X,Y,Result):-
	X1 is X mod Y,
	gcd(Y,X1,Result).
