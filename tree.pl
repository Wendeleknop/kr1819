% Tree representation

% 1) nil is a tree
% 2) t(Label, Left, Right), Left and Right are trees.

% num_nodes (+Tree, -Num)
% it is true if Num unify with the number of 
% nodes in Tree.


% Induction
% 1) p(n0)
% 2) p(n-1) -> p(n)
%    p(N) :- N2 is N-1, p(N2).

% 1) P(n0)
num_nodes(nil, 0).

% 2) p(n-1) -> p(n)
num_nodes(t(_, L, R), RT):- 
num_nodes(L, RL),
num_nodes(R, RR), 
RT is RL + RR + 1.

% RT is totaal
% RL is left
% RR right
% 1 stands for the root because you also have to count that one. 
% t is for tree 

tree1(t(9, t(5, t(2, nil, nil), t(6, nil, nil)), t(12, t(10, nil, nil), t(14, nil, nil)))).



