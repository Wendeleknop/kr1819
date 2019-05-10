

% num_leaves(+Tree, -N)
% it is true if N unify with the number of leaves 
% in Tree

% N stands for Number

num_leaves(nil, 0).

num_leaves(t(_, L, R), RT) :-
L \= nil, R\= nil,
num_leaves(L, RL),
num_leaves(R, RR), 
RT is RL + RR.

num_leaves(t(_, nil,nil),1).

num_leaves(t(_, nil, R), RR) :-
R \= nil, 
num_leaves(R, RR).

num_leaves(t(_, L, nil), RL) :-
L \= nil, 
num_leaves(L, RL).

tree1(t(9, t(5, t(2, nil, nil), t(6, nil, nil)), t(12, t(10, nil, nil), t(14, nil, nil)))).

% total numbers in a leaves tree you don´t need to count the root with it.

% regel 12 is voor dat als je 0 en 0 krijgt zou het antwoord 0 moeten zijn maar dan telt die een ander niet mee ofso 
% en dat klopt niet.

% in prolog you need to always write the true facts. 