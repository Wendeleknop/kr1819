

% sum(?X, ?Y, ?Z)
% it is true if Z is X + Y.

sum(0, Y, Y).


% sum(n-1,....) -> sum(n, .....)

sum(n(x), Y, n(Z)) :- sum(X, Y, Z).


% substr(?X, ?Y, ?Z)
% it is true if Z is X - Y

substr(X, 0, X).
% substr(n-1, .....)  -> substr(n,....)

substra(X, n(Y), Z)   :- substr(X, Y, n(Z)).