% add the labels

% total left and total right

sum_nodes(nil, 0).

sum_nodes(t(E, L, R), RT) :-
sum_nodes(R, RR),
sum_nodes(L, RL),
RT is RL + RR + E.

tree1(t(9, t(5, t(2, nil, nil), t(6, nil, nil)), t(12, t(10, nil, nil), t(14, nil, nil)))).