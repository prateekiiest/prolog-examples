range(Low, Low, High).
range(Out,Low,High) :- NewLow is Low+1, range(Out, NewLow, High).
