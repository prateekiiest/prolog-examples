has_duplicate(Lst) :-
    setof(X, member(X, Lst), Set),
    length(Lst, N),
    length(Set, N).
