

% palindrome(+List)
% it is true if List is a palindrome

% palindrome([a,b,c,b,a]).
% true

% palindrome([a,b,c,b,z]).
% false


palindrome(L) :- myReverse


% myReverse(+List, -Result).
% it is true if Result unify with a list with same elements that  List have but in myReverse order.


% myReverse([1,2,3,4,5], R).
% R = [5,4,3,2,1]

% Induction
%
% 1) p(n)                         first one
% 2) p(n-1) -> P(n)               a list minus 1  
%    P(N) :- N2 is N-1, p(N2).

myReverse([], []).

myReverse([Head|Tail], R):- myReverse(Tail, Result), 
  append(Result, [Head], R).



% append put lists together

% myReverse([1,2,3,4,5], R). 
% R = [5,4,3,2,1]

% myReverse([2,3,4,5], R).
% R = 5,4,3,2]
