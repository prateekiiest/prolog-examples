div(_,0,0):-
	write('Can not divide by zero :('),
	!
	.
div(0,_,0).
div(X,Y,R):-
	div_acc(X,Y,0,R).
div_acc(X,1,A,X).
div_acc(X,Y,D,R):-
	X < Y,
		write('Reminder is ':X),nl,
		write('Result is : ':D),
		!
		.
div_acc(X,Y,D,R):-
	my_sub(X,Y,P),
	A is D + 1,
	div_acc(P,Y,A,R).
