insert_bst(X, nil, bst(nil,	X,bil)).
insert_bst(X,bst(Left, Root, Right),bst(Left1, Root, Right)):-
    X =< Root,
    !,
    insert(X,Left, Left1).

insert_bst(X, bst(Left,Root, Right),bst(Left,Root,Right1)):-
    X> Root,
    insert_bst(X,Right,Right1).


delete(Tree, X, NewTree):-
    insert_bst(NewTree, X, Tree).
