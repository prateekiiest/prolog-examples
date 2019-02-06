list_length([],0).
list_length([H|T],N):-list_length(T,N1), N is N1+1.

sum([],0).
sum([Head|Rest],N):-
	sum(Rest,N1),
	N is Head + N1.


avg(B,M):-
    sum(B,P), 
    list_length(B,L),
    M is P/L.
