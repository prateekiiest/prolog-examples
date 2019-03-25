max_elem(bst(_,X,nil),X).
max_elem(bst(_,Root,Right),X):-
    max_elem(Right, X).
