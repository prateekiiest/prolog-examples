% Whether a given entity can cross the river bank

% if w crosses the river to reach bank e
% State w => State e
cross(w, e).

% if e crosses the river to reach bank on the other side w
% State e => State w
cross(e, w).

% Plan if man crosses the river along with the tiger
% M = current state of man
% NM = new state of man
% T = current state of tiger
% NT = new state of tiger

execmove([M, T, G, C], 0, [NM, NT, NG, NC]) :- M = T, % man's current state is tiger's current state
                                               cross(M, NM),
                                               cross(T, NT),
                                               NG = G, % new state of cabbage and goat is same as before(not updated)
                                               NC = C.
                                               
% Plan if man crosses the river along with the goat
execmove([M, T, G, C], 1, [NM, NT, NG, NC]) :- M = G, % man's current state is goat's current state
                                               cross(M, NM),
                                               NT = T, % new state of tiger (not updated), we do this before goat so that tiger does not eat it.
                                               cross(G, NG),
                                               NC = C.
                                               
% Plan if man crosses the river along with the cabbage
execmove([M, T, G, C], 2, [NM, NT, NG, NC]) :- M = C,
                                               cross(M, NM),
                                               NT = T,
                                               NG = G,
                                               cross(C, NC).
% Only the man crosses the river alone.
execmove([M, T, G, C], 3, [NM, NT, NG, NC]) :- cross(M, NM),
                                               NT = T,
                                               NG = G,
                                               NC = C.


answer([e,e,e,e], []).
answer(State, [Move|Moves]) :- execmove(State, Move, [F, W, G, C]),
                               (W \= G; G = F),
                               (G \= C; C = F),
                               answer([F, W, G, C], Moves).
                               
anshelp(S, L, X) :- length(X, L), answer(S, X);
                 L2 is L + 1, anshelp(S, L2, X).
                 
getans(S, X) :- anshelp(S, 0, X).
printans([]).
printans([0|T]) :- write('The man takes the tiger across.\n'), printans(T).
printans([1|T]) :- write('The man takes the goat across.\n'), printans(T).
printans([2|T]) :- write('The man takes the cabbage across.\n'), printans(T).
printans([3|T]) :- write('The man crosses alone.\n'), printans(T).
