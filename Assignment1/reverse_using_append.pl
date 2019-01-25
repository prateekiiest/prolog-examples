reverse([],[]).
reverse([X|Rest],Z):-my_reverse(Rest,L),append(L,[X],Z).
