next_to(X,Y,[X|[Y|Rest]]).
next_to(X,Y,[Z|Rest]):-next_to(X,Y,Rest).
