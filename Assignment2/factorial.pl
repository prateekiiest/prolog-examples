factorial(X,N):-
	factorial_acc(X,1,N).
factorial_acc(0,A,A).
factorial_acc(X,A,N):-
	N1 is X * A,
	T is X - 1,
	factorial_acc(T,N1,N).
