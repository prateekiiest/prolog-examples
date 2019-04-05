delete_element(X,nil,nil):-
        write("No element is found"),
        nl,
        !
        .
delete_element(X,tree(X,Left,nil),Left).
delete_element(X,tree(X,nil,Right),Right).
delete_element(X,tree(X,Left,Right),tree(Predecessor,New_left,Right)):-
        gen_pred(Left,Predecessor,New_left).
delete_element(X,tree(Root,Left,Right),tree(Root,New_left,Right)):-
        X < Root,
        delete_element(X,Left,New_left).
delete_element(X,tree(Root,Left,Right),tree(Root,Left,New_right)):-
        X > Root,
        delete_element(X,Right,New_right).

gen_pred(tree(X,Left,nil),X,Left).
gen_pred(tree(X,Left,Right),Predecessor,tree(X,Left,New_right)):-
        gen_pred(Right,Predecessor,New_right).
