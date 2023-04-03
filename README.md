# Prolog
## family_relationship
Write a PROLOG program that investigates family relationships using lists. The facts should be organized as follows:
```
m([first_male_name, second_male_name, …, last_male_name]).
f([first_female_name, second_female_name, .., last_female_name]).
family([father, mother, [child_1, child_2, …, child_n]]).
```
Write rules that define the following relations:
```
male(X)
female(X)
father, mother, parent
siblings1, siblings2
brother1, brother2
sister1, sister2
cousins
uncle, aunt
grandchild, grandson, granddaughter
greatgrandparent
ancestor
 ```

## list_checking
Write a PROLOG program that includes the following operations with lists:
```
membership testing( is an element member of a list?)
first element
last element
two adjacent elements
three adjacent elements
append list1 to list2 producing list3
delete element from a list
append element to a list
insert element in a list
compute the length of list
reverse a list
check whether a list is a palindrome
display a list
```
For each of these operations write your implementation of the operation and show an example of its use. If a predicate already exists (predefined in Prolog), modify its name (e.g. myappend or append1). Lists to be processed can be breasted by an auxiliary program, defined as facts, or entered from the keyboard.

## eight_queen
Write a PROLOG program that solves the 8 queen problem (location of 8 queens on a chess board so that no queens have each other in check, i.e. are not located in the same row/column/diagonal).

