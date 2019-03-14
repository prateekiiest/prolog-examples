quicksort(L,L1):-quickacc(L,[],L1).
quickacc([],A,A).
quickacc([H|T],A,L1):-
    partition(T,Lt,H,Gt),
    quickacc(Gt, R, GtSorted),
    quickacc(Lt, [H|GtSorted], L1).

partition([],[],_,[]).
partition([H|T],[X|TLt],X,Gt):-
    H =< X ,!,
    partition(T,TLt,X,Gt).

partition([H|T],Lt,X,[H|TGt]):-
    X > H,
    partition(T,Lt,X,TGt).

