reverse(X, Xrev) :- reverse(X, [], Rev).

reverse([], Rev, Rev).     
reverse([H|T], Prev, Rev) :-
    reverse(T, [H|Prev], Rev).
    
    
% reverse([1,2,3,4], [], A)
% returns [4,3,2,1]
