replace(_, _ , [], []).
replace(X, Y, [ X | Z ], [ Y | ZZ]):- ! , replace( X, Y, Z, ZZ).
replace(X, Y, [ W | Z], [ W | ZZ]) :- replace(X, Y, Z, ZZ).  
