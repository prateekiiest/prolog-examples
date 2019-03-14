select(_,[],[]).
select(X,[X|L],L):-!.
select(X, [H|L1], [H|L]):- select(X,L1,L).





smaller(_,[]).
smaller(X, [H|T]):- X =< H,
    smaller(X,T).

least(X,L,R):-select(X,L,R),
    smaller(X,R).
    
selectionsort([],[]).
selectionsort(L,[H|T]):-least(H,L,R),
    selectionsort(R,T).
