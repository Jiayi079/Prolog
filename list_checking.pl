% membership testing to check if an element member is in the list
is_member(X, [X|_]).
is_member(X, [_|T]) :- is_member(X, T). 

% find first element
first_element(X, [X|_]).

% find last element
last_element(X, [X]).
last_element(X, [_|T]) :- last_element(X, T).

% find two adjacent elements
two_adjacent(X, Y, [X, Y|_]).
two_adjacent(X, Y, [_|T]) :- two_adjacent(X, Y, T).

% find three adjacent elements
three_adjacent(X, Y, Z, [X, Y, Z|_]).
three_adjacent(X, Y, Z, [_|T]) :- three_adjacent(X, Y, Z, T).

% append list1 to list2 producing list3
append1([], L2, L2).
append1([X|T1], L2, [X|T3]) :- append1(T1, L2, T3).

% delete element from a list
delete_element(X, [X|T], T).
delete_element(X, [H|T], [H|T1]) :- delete_element(X, T, T1).

% append element to a list
append_element(L1, X, L2) :- append1(L1, [X], L2).

% insert element in a list
insert_element(X, L, XL) :- delete_element(X, XL, L).

% compute the length of the list
len([], 0).
len([_|T], N) :- len(T, N1), N is 1 + N1.

% reverse a list
reverse([],[]).
reverse([H|T], Rev) :- reverse(T, RT), append(RT, [H], Rev).

% check whether a list is a palindrome
palidrome(L) :- reverse(L,L).

% display a list
display([]) :- nl.
display([H|T]) :- write(H), tab(1), display(T).
