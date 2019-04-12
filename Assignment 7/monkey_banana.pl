% state: Monkey is at door, 
%        Monkey is on floor, 
%        Box position is at window, 
%        Monkey has not taken the banana.

% Actions
% 
% % Action = take the banana

do( state(middle, onbox, middle, hasnot),   
    grab, 
    state(middle, onbox, middle, has) ). 
% Action = climb box
do( state(L, onfloor, L, Banana),           
    climb, 
    state(L, onbox, L, Banana) ).

% Action = push box from L1 to L2
do( state(L1, onfloor, L1, Banana),         
    push(L1, L2),  
    state(L2, onfloor, L2, Banana) ).
% Action = walk from L1 to L2
do( state(L1, onfloor, Box, Banana),        
    walk(L1, L2), 
    state(L2, onfloor, Box, Banana) ).



% if the monkey already has the banana, no route required
goto2(state(_, _, _, has)).                

% else check to change state from current state
% State1 => State2
goto2(State1) :-                           % not goal state, do some work to get it
      do(State1, Action, State2),           % do something (grab, climb, push, walk) 
      goto2(State2).                       % canget from State2



goto2(state(_, _, _, has), []).            % Monkey already has it, goal state

goto2(State1, Route) :-                     % not goal state, do some work to get it
      do(State1, Action, State2),           % do something (grab, climb, push, walk) 
      goto2(State2, Intermediate_Route),          % goto from State2
      add(Action, Intermediate_Route, Route).       % add action to Plan

add(X,L,[X|L]).

% goto(state(atdoor, onfloor, atwindow, hasnot), Route).
