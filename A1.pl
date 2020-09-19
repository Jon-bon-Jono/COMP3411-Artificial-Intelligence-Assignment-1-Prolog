/*
Written by Jonathan Williams
z5162987
*/
:- module(a1, [sumsq_even/2, log_table/2, paruns/2, eval/2]).

%Q1.1
%sums the squares of only even numbers in a list of integers
sumsq_even([], 0).
sumsq_even([A|B], Sum1):-
    0 is A mod 2,
    A2 is A*A,
    sumsq_even(B, Sum2),
    Sum1 is Sum2 + A2.
sumsq_even([A|B], Sum):-
    1 is A mod 2,
    sumsq_even(B, Sum).

%Q1.2
%produces a log table for each number in the list
log_table([], []).
log_table([A|B], [[A, LA]|C]):-
    log_table(B, C),
    LA is log(A).

%Q1.3
%converts a list of numbers into a list of parity runs
myappend(A, B, [A|B]).

paruns([],[]).
paruns([A|B], Runlist):-
    M_ is A mod 2,
    sequence(M_,[A|B],[],Seq,Remainder),
    paruns(Remainder, Runlist2),
    myappend(Seq,Runlist2,Runlist).

/*Terminates when there's no more numbers to iterrate through
Return empty list as our Remainder
Return Seq as it is
*/
sequence(M_,[],Seq,Seq,[]).
/*Terminate if modulo is not equal to M
Return [A|B] as our Remainder
Return Seq as is
*/
sequence(M_, [A|B], Seq, Seq, [A|B]):-
    \+ M_ is A mod 2.
/*Recurse if modulo is equal to M
Append A to Seq
Remainder and Return_seq still unknown
*/
sequence(M_, [A|B], Seq, Return_seq, Remainder):-
    M_ is A mod 2,
    append(Seq, [A], Seq2),
    sequence(M_, B, Seq2, Return_seq, Remainder).

%Q1.4
%Evaluates arithmetic expressions that are written in prefix format
eval(X,X):-
    atomic(X).
eval(add(X,Y),V):-
    eval(X,X2),
    eval(Y,Y2),
    V is X2 + Y2.
eval(sub(X,Y),V):-
    eval(X,X2),
    eval(Y,Y2),
    V is X2 - Y2.
eval(mul(X,Y),V):-
    eval(X,X2),
    eval(Y,Y2),
    V is X2 * Y2.
eval(div(X,Y),V):-
    eval(X,X2),
    eval(Y,Y2),
    V is X2 / Y2.
