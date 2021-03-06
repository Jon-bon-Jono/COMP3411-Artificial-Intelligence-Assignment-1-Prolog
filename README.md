# COMP3411-Artificial-Intelligence-Assignment-1-Prolog
Prolog programs to perform some list and tree operations. The aim of the assignment is to give experience with typical Prolog programming techniques. 

## Question 1.1: List Processing
Write a predicate sumsq_even(Numbers, Sum) that sums the squares of only the even numbers in a list of integers.
- Example: `?- sumsq_even([1,3,5,2,-4,6,8,-7], Sum).Sum = 120`

## Question 1.2: List Processing
Write a predicate log_table(NumberList,ResultList) that binds ResultList to the list of pairs consisting of a number and its log, for each number in NumberList. 
- Example: `?- log_table([1, 3.7, 5], Result).`
  - `Result = [[1, 0.0], [3.7, 1.308332819650179], [5, 1.6094379124341003]].`

## Question 1.3: List Processing
Any  list  of  integers  can  (uniquely)  be  broken  into  "parity  runs"  where  each  run  is  a (maximal)  sequence  of  consecutive  even  or  odd  numbers  within  the  original  list.  For example, the list `List=[8,0,4,3,7,2,-1,9,9]` can be broken into `[8,0,4], [3,7], [2]`  and `[-1,9,9]`. Write  a  predicate `paruns(List,RunList)` that converts a list of numbers into the corresponding list of parity runs. 
- Example: `?- paruns([8,0,4,3,7,2,-1,9,9], RunList).`
  - `RunList = [[8, 0, 4], [3, 7], [2], [-1, 9, 9]]`

## Question 1.4: Prolog Terms
Arithmetic  expressions  can  be  written  in prefix  format,  e.g  1+2*3  can  be  written  as `add(1, mul(2, 3))`.   If the operators available are add, sub, mul, div, write a Prolog program, `eval(Expr, Val)`, that will evaluate a prefix expression
- Example: `?- eval(add(1, mul(2, 3)), V).`
  - `V = 7`
  - `?- eval(div(add(1, mul(2, 3)), 2), V).`
  - `V = 3.5`

## Testing
Unit tests can be found in A1_test.pl, testing the procedures:
- `sumsq_even_tests.`
- `log_table_tests.`
- `paruns_tests.`
- `eval_tests.`
