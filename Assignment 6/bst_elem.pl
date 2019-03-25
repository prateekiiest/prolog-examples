in(X,bt(nil, X, nil)):-!.
in(X,bt(Left,X, Right)):-!.
in(X,bt(Left,Root,Right)):-
    X < Root,
    in(X, Left),!
    ;   
    X>Root,
    in(X, Right).



% example in(7,bt(bt(1,2,4),5,bt(6,7,8))) = true
