

% myLength(List, Result)
% it is true if Result unify with the lenght of
% List

% this symbol is only for the programmer, prolog ignore the sentence behind this symbol

myLength([], 0).

% if myLength(n-1) -> myLength(n)   this will be true

% | -> [Head|Tail] = [1,2,3,4,5]
% Head = 1
% Tail = [2,3,4,5]

% if myLength (n-1) -> myLength(n)

% myLength([Head|Tail], ) :- myLength(Tail, Result).
%-------------------       ------------------------             
%  P(n)                <-             P(n-1)

% the Tail is always a list and the head is never a  list because it is only one element.

% myLength([Head|Tail], Result2) :- 
%     myLength(Tail, Result), Result2 is Result + 1.
	 
myLength([_|Tail], Result2) :- 
     myLength(Tail, Result), Result2 is Result + 1.
	 
% Omdat je het nu alleen hebt over de tail kun je dus ook voor head weglaten met dit teken _