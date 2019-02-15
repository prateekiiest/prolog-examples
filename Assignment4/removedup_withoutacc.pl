our_member(X,[X|Rest]).
our_member(X,[Y|Rest]):-our_member(X,Rest).

// First ccheck whether the given element is a member of a list

remove_duplicates([],[]).

// if member remove it
remove_duplicates([H | T], List) :-    
     our_member(H, T),
     remove_duplicates( T, List).

remove_duplicates([H | T], [H|T1]) :- 
      \+our_member(H, T),
      remove_duplicates( T, T1).
