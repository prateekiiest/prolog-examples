post_order(Pre,In,Post):-
	construct(Pre,In,Tree),
	postorder(Tree,Post).

construct([],[],nil).
construct([Root|Preorder],Inorder,tree(Root,Left,Right)) :- 
	append(ILeft,[Root|IRight],Inorder),
	append(PLeft,PRight,Preorder),
	construct(PLeft,ILeft,Left),
	construct(PRight,IRight,Right).
