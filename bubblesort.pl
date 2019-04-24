
% bubbleSort(+List -Result)
% it is true if Result unify with a list
% with same elements than List but ordered 
% from lowest to highest

bubbleSort(List, ) :- append(L1, [E1, E2], List), 
E1 > E2,
appen(L1, [E2, E1|L2], List2),
bubbleSort(List2, R).


% if the list is ordered we are finished.
% with n-1 ben je klaar wanneer je op gegeven moment een empty list heb. Bij bubblesort is het einde als je alles
% op orde hebben. 

bubbleSort(List, List ) :- ordered(List).
& R will be List because the list is already ordered and a list that is already is ordered is just the list.

% ordered(+List)
% it is true if List elements are ordered from lowest to highest

% 1)
ordered([]).

% 2)
ordered([_]).
ordered([E1, R2| Tail]) :- E1 =< E2, 
oredered([E2|Tail]).