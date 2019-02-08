count_elems(L, N, Count) :-
    count_elems(L, N, 0, Count).

count_elems([H|T], N, Acc, Count) :-
    H > N,                            % count this element if it's > N
    Acc1 is Acc + 1,                  % increment the accumulator
    count_elems(T, N, Acc1, Count).   % check the rest of the list
count_elems([H|T], N, Acc, Count) :-
    H =< N,                           % don't count this element if it's <= N
    count_elems(T, N, Acc, Count).    % check rest of list (w/out incrementing acc)
count_elems([], _, Count, Count).  
