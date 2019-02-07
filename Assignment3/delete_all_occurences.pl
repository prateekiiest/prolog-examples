% delete all occurences of an element from a given list
delete(_,[],[]). 
% if the list is empty, nothing to delete

% delete the first occurence, no need to backtrack again , go forward to delete further occurences of the element
delete(A,[A|L],M):-!,
    delete(A,L,M).
delete(A,[B|L],[B|M]):-
    delete(A,L,M).
