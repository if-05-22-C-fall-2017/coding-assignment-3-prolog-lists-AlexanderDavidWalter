prepend(E,L,[E|L]).

addElement([],E,[E]).
addElement([H|T],E,[H|L]) :- addElement(T,E,L).

hasLength([],0).
hasLength([_|T],N) :- hasLength(T,N2), N is N2 + 1.

remove([H|T],E,T).
remove([H|T],E,[H|L]) :- remove(T,E,L).
