% myAppend(+List1, +List2, -Result)
% it is true if Result is a list with
% the elements of List1 followed by
% the elements of List2.

% 1)
myAppend([], List2, List2).

% 2)
myAppend([Head|Tail], List2, [Head|R]) :-   myAppend(Tail, List2, R). 

% Result is dus de tail van list1 plus list2
% ? list1 is [1,2,3] list2 is [4,5,6] -> result is [1,2,3,4,5,6]
% ? Tail is [2,3], tail list2 [4,5,6] -> result is [2,3,4,5,6]
% so you need the head