% example [1,2] => [1,1,2,2]
twice([], []).
twice([A|B], [A,A|Rest]) :- twice(B, Rest).
