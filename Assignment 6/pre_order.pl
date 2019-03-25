pre_order(nil,[]).
pre_order(bt(Left,Root, Right), List):-
    pre_order(Left, List1),
    pre_order(Right, List2),
    append(Root,[List1|List2], List).
