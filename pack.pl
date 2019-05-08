% pack consecutive duplicates of list elements into sublists.
% if a list contains repeated elements they should be placed in separate sublists.

% ?- pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
% X = [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]


% elements = E
% list = List

% 1) P(n0)
pack([],[]).

% 2) P(n-1) -> P(n)


pack([E], [E]).


pack([Head|Tail], [[Head|Head]|Tail]):- pack(Tail, [Head|Tail]).




pack([H1, H1|Tail], )[H1|Hr]|[Tr]) :- pack(H1|Tail], [Head|Tail]).

% you use the second one if you want to take one element out and the next is not the same.


pack([H1, H2|Tail], [H1|R]) :- H1 \= H2, pack ([H2|Tail], R).

% this one you use when the elements are not the same.