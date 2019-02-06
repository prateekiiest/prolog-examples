list_length([],0).
list_length([H|T],N):-my_length(T,N1), N is N1+1.
