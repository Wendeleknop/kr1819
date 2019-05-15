% State problem game of Gallons 
%
% We need to obtain exactly 4 gallons using 
% two bottles. One with five gallons and the other with three gallons
% try to disarm the bom. 


% 1) represent the state

% represent the state
% state(Gallons5, Gallons3)
% Gallons represent the number of gallons inside 5 gallons bottle.
% Gallons represent the number of gallons inside 3 gallons bottle. 

% initial state:
% state(0,0).

% Final state:
% state(4,_).


% 2) create the movements


% 1. Fill 5 gallons bottle.
% 2. Fill 3 gallons bottle.
% 3. Put 5 gallons in 3 gallons bottle.
% 4. put 3 gallons in 5 gallons bottle.
% 5. empty 5 gallons bottle.
% 6. empty 3 gallons bottle.

% mov(+MovementName, +StateBefore, +StateAfter)
% 1.
mov(fill5, state(_, G3), state(5, G3 )).

% 2.
mov(fill3, state(G5,_), state(G5,3)).

% 5.
mov(empty5, state(_, G3), state(0, G3)).

% 6.
mov(empty3, state(G5, _), state(G5, 0)).

% 3.
% option 3.1:
mov(put5in3, state(G5, G3), state(0, GT)) :-
GT is G5 + G3, GT =< 3. 

% option 3.2:
mov(put5in3, state(G5, G3), state(G5N , 3)) :-
GT is G5 + G3, GT > 3, G5N is GT-3.

% 4.
% option 4.1
mov(put3in5, state(G5, G3), state(GT, 0)) :-
GT is G5 + G3, GT =< 5.

% option 4.2
mov(put3in5, state(G5, G3), state(5, G3N)) :-
GT is G5 + G3, GT > 5, G3N is GT-5.


% 3) create a path to the solution

% path(+InitialState, +FinalState, +Visited, -Path)
%
% it is true if Path unify with a list of movements to go
% from InitialState to Finalstate without repeating states
% in Visited list of states.

path(Initial, Initial,_ ,[]).


path(Initial, Final, Visited, [MovName|Path]) :-
  mov(MovName, Initial, Temp),
  \+ member(Temp, Visited),
  path(Temp, Final, [Temp|Visited], Path).
  
% line 77 means that we want a new temp and not that we already visited.



% wat moet je in prolog vragen
% path(state(0,0), state(4,_), [state(0,0)], Path), length(Path, 6), write(Path).

