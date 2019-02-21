findlast([X],X).
findlast([_|Rest],X):-
findlast(Rest,X).



exchange([],[]).
exchange([X],[X]).
exchange([X|T],L3):-
findlast(T,L),cutlast(T,L1),
append([L],L1,L2),
append(L2,[X],L3).
