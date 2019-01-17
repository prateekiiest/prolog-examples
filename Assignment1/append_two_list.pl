append([],List,List).
append([X|List1],List2,[X|List3]):-append(List1,List2,List3).
