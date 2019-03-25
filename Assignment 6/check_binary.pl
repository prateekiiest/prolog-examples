binary_tree(nil).
binary_tree(bt(Left, Root, Right)):-
    binary_tree(Left),
    binary_tree(Right).
    
% error present
