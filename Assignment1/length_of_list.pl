length_1(0,[]).
length_1(L+1, [H|T]) :- length_1(L,T).
