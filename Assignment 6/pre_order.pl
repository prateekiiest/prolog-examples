pre_order(nil,[]).
pre_order(bt(Left,Root, Right), List):-
    linearize(Left, List1),
    linearize(Right, List2),
    append(Root,[List1|List2], List).
