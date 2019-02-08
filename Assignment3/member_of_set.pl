member_of(X,[X|Rest]).
member_of(X,[Y|Rest]):-member_of(X,Rest).
