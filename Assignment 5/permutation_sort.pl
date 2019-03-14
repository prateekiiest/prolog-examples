sorted([]).
sorted([A]).
sorted([A,B|T]) :- A=<B, sorted([B|T]).

% sort list holds if A is sorted list of B
sort(A,B) :- permutation(A,B), sorted(B).
