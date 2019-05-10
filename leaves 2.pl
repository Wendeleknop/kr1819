

% Element can be in the root, in the left and in the right.
% member(+Tree, +Element)
% it is true if Element is a label inside Tree.

% induction 1), in a empty list it is not possible to have an Element so we don´t write that one
% you can´t write things that are false in Prolog

% induction 2


% Element in the root

member(t(E, _, _), E).



% Element in the left

member(t(_, L, _), E) :-
  member(L, E).

% Element in the right

member(t(_, _, R), E) :-
   member(R, E). 
   
tree1(t(9, t(5, t(2, nil, nil), t(6, nil, nil)), t(12, t(10, nil, nil), t(14, nil, nil)))).