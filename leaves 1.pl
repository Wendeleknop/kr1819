
% leaves (+Tree, -List)
% it is true if List unify with the labels in leaves of Tree

leaves(nil, []).


leaves(t(E, L, R), RT):-
  L \= nil, R\= nil,
  leaves(L, RL),
  leaves(R, RR),
  append(RL, RR, RT).
  
  
leaves(t(E, nil, nil),[E]).


leaves(t(E, nil, R), RR) :-
R \= nil, 
leaves(R, RR).



leaves(t(E, L, nil), RL) :-
L \= nil, 
leaves(L, RL).


tree1(t(9, t(5, t(2, nil, nil), t(6, nil, nil)), t(12, t(10, nil, nil), t(14, nil, nil)))).