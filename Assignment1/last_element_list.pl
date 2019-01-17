last_element([X],X).
last_element([X|Rest],N):-last_element(Rest,N).
