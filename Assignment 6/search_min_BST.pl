minimum(bst(nil,X,_),X).
minimum(bst(Left,Root,_),X):-
	minimum(Left,X).
