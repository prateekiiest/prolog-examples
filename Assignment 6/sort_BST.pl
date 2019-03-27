sort_BST([],[]).
sort_BST(List,Result):-
	construct_BST(List,Tree),
	inorder(Tree,Result).

construct_BST(List,Tree):-
	construct_acc(List,nil,Tree).
construct_acc([],A,A).
construct_acc([Head|Rest],A,Tree):-
	insert(Head,A,Temp),
	construct_acc(Rest,Temp,Tree).
