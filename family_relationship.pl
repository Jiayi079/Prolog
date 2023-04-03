% facts organized by using list
m([lucas, william, benjamin, leo, henry, logan, isaac, andrew]).
f([lily, alice, charlotte, emily, harley, sarah, julia, amy, katy]).
family([lucas, lily, [william]]).
family([william, alice, [benjamin, emily]]).
family([benjamin, charlotte, [sarah, logan, julia, henry]]).
family([leo, emily, [amy, isaac]]).
family([leo, harley, [andrew, katy]]).


% rules
male(X) :- m(Males), member(X, Males).
female(X) :- f(Females), member(X, Females).

parent(X, Y) :- family([X, _, Children]), member(Y, Children).
parent(X, Y) :- family([_, X, Children]), member(Y, Children).

father(X, Y) :- male(X), parent(X,Y).
mother(X, Y) :- female(X), parent(X,Y).


% one parents in common
siblings1(X, Y) :- father(F, X), father(F, Y), mother(MX, X), mother(MY, Y), X \= Y, MX \= MY.
siblings1(X, Y) :- mother(M, X), mother(M, Y), father(FX, X), father(FY, Y), X \= Y, FX \= FY.
sister1(X, Y) :- siblings1(X, Y), female(X), female(Y).
brother1(X, Y) :- siblings1(X, Y), male(X), male(Y).


% two parents in common
siblings2(X, Y) :- family([_, _, Children]), member(X, Children), member(Y, Children), X \= Y.
sister2(X, Y) :- siblings2(X,Y), female(X), female(Y).
brother2(X, Y) :- siblings2(X, Y), male(X), male(Y).

% either one or two parents in common
siblings(X, Y) :- parent(P, X), parent(P, Y), X \= Y.
cousin(X, Y) :- siblings(A, B), parent(A, X), parent(B, Y).
uncle(X, Y) :- siblings(X, A), parent(A, Y), male(X).
aunt(X, Y) :- siblings(X, A), parent(A, Y), female(X).
grandchild(X, Y) :- parent(A, X), parent(Y, A).
grandson(X, Y) :- grandchild(X, Y), male(X).
granddaughter(X, Y) :- grandchild(X, Y), female(X).
greatgrandparent(X, Y) :- parent(X, A), grandchild(Y, A).
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(A, Y), ancestor(X, A).


