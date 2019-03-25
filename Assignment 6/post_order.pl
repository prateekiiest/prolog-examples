post_order(nil,[]).
post_order(bt(Left,Root, Right), List):-
    post_order(Left, List1),
    post_order(Right, List2),
    append(List1,[List2|Root], List).
