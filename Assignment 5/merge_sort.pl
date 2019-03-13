divide([],[],[]).
divide([X],[X],[]).
divide([X|[Y|L1]],[X|L2],[Y|L3]):-
    divide(L1,L2,L3).

merge([],[],[]).
merge([],[X],[X]).
merge([X],[],[X]).
merge([X|L1],[Y|L2],[X|L3]):-
    X < Y,!,
    merge(L1,[Y|L2],L3).

merge([X|L1],[Y|L2],[Y|L3]):-
    X > Y, !,
    merge([X|L1],L2,L3).

merge([X|L1],[Y|L2],[X|[Y|L3]]):-
    X = Y , !,
    merge(L1,L2,L3).



mergesort([],[]).
mergesort(unsortedList, sortedList):-
    divide(unsortedList, List1, List2),
    mergesort(List1,sortedList1),
    mergesort(List2,sortedList2),
    merge(sortedList1, sortedList2, sortedList).
