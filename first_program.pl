women(lisanne).
woman(wendele).
woman(andrea).

% man(Person).
% it is true if Person is a man.

man(jose).
man(sebastian).
man(justus).
man(kevin).
man(teun).
man(lars).

% person (P).
% it is true of P is a an or woman.
person(P):- man(P).
person(P):- woman(P).

% person(P) -> animal(P) and human(P).
% person(P) -> human(P).
% person(P) -> animal(P). 

human(P):- person(P).
animal(P):- person(P).