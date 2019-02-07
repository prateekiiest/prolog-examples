mul(_,0,0).
mul(0,_,0).
mul(X,Y,R):-
	mul_acc(X,Y,X,R).
mul_acc(X,1,_,X).
mul_acc(X,Y,S,R):-
	add(X,S,P),
	T is Y - 1,
	mul_acc(P,T,S,R).
