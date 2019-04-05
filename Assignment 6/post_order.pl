postorder(nil,[]).
postorder(tree(X,Left,Right),Traversal):-
	postorder(Left,Left_t),
	postorder(Right,Right_t),
	my_append(Left_t,Right_t,Temp),
	my_append(Temp,[X],Traversal).

my_append([],List,List).
my_append([Head1|List1],List2,[Head1|List3]):-
        my_append(List1,List2,List3).
