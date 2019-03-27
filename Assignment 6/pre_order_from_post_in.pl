pre_order(Post,In,Pre):-
        construct(Post,In,Tree),
        preorder(Tree,Pre).

construct([],[],nil).
construct(Post,Inorder,tree(Root,Left,Right)) :-
	my_last(Post,Root),
        append(ILeft,[Root|IRight],Inorder),
	trim_last(1,Post,New_post),
        append(PLeft,PRight,New_post),
        construct(PLeft,ILeft,Left),
        construct(PRight,IRight,Right).

my_last([X],X).
my_last([Head|Rest],R):-
	my_last(Rest,R).
