split([], [], []).
split([Head|Rest], [Head|List1], List2) :- 
	Head >= 0, 
	split(Rest, List1, List2).
split([Head|Rest], List1, [Head|List2]) :- 
	Head < 0, 
	split(Rest, List1, List2).
