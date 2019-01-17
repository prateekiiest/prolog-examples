my_reverse([],[]).
my_reverse([X|Rest],Z):-my_reverse(Rest,L),append(L,[X],Z).
