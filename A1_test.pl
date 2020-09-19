%Written by Jonathan Williams (z5162987)
:- use_module(a1).

sumsq_even_tests :-
    sumsq_even([],A),
    write('sumsq_even([],A)'),nl,
    format('A = ~d . ~n',[A]),
    
    sumsq_even([2],B),
    write('sumsq_even([2],A)'),nl,
    format('A = ~d . ~n',[B]),
    
    sumsq_even([1],C),
    write('sumsq_even([1],A)'),nl,
    format('A = ~d . ~n',[C]),
    
    sumsq_even([0],D),
    write('sumsq_even([0],A)'),nl,
    format('A = ~d . ~n',[D]),

    sumsq_even([1,2,3,4,5,6,7,8,9,10],E),
    write('sumsq_even([1,2,3,4,5,6,7,8,9,10],A)'),nl,
    format('A = ~d . ~n',[E]),

    sumsq_even([2,4,6,8,10],F),
    write('sumsq_even([2,4,6,8,10],A)'),nl,
    format('A = ~d . ~n',[F]),

    sumsq_even([1,3,5,7,9],G),
    write('sumsq_even([1,3,5,7,9],A)'),nl,
    format('A = ~d . ~n',[G]).

log_table_tests :-
    log_table([],A),
    write('log_table([],A)'),nl,
    format('A = '),
    print(A),nl,

    log_table([1],B),
    write('log_table([1],A)'),nl,
    format('A = '),
    print(B),nl,

    log_table([1,2,3],C),
    write('log_table([1,2,3],A)'),nl,
    format('A = '),
    print(C),nl.

paruns_tests :-
    paruns([],A),
    write('paruns([],A)'),nl,
    write('A = '),
    print(A),nl,

    paruns([1],B),
    write('paruns([1],A)'),nl,
    write('A = '),
    print(B),nl,

    paruns([0,1],C),
    write('paruns([0,1],A)'),nl,
    write('A = '),
    print(C),nl,

    paruns([-5,-4,-3,-1,0,1,2,3,4,5],D),
    write('paruns([-5,-4,-3,-1,0,1,2,3,4,5],A)'),nl,
    write('A = '),
    print(D),nl,

    paruns([-4,-2,0,2,4],E),
    write('paruns([-4,-2,0,2,4],A)'),nl,
    write('A = '),
    print(E),nl,

    paruns([-2,0,2,4,6,-3,-1,1,3,5,7],F),
    write('paruns([-2,0,2,4,6,-3,-1,1,3,5,7],A)'),nl,
    write('A = '),
    print(F),nl,

    paruns([4,0,-2,6,2,7,-1,3,-11,5,55],G),
    write('paruns([4,0,-2,6,2,7,-1,3,-11,5,55],A)'),nl,
    write('A = '),
    print(G),nl,

    paruns([8,0,4,3,7,2,-1,9,9],H),
    write('paruns([8,0,4,3,7,2,-1,9,9],A)'),nl,
    write('A = '),
    print(H),nl.

eval_tests :-
    eval(add(0,add(1,add(2,add(3,add(4,5))))),A),
    write('eval(add(0,add(1,add(2,add(3,add(4,5))))), A)'),nl,
    format('A = ~f ~n',[A]),
    
    eval(mul(1,mul(2,mul(3,mul(4,5)))),B),
    write('eval(mul(1,mul(2,mul(3,mul(4,5)))), A)'),nl,
    format('A = ~f ~n',[B]),

    eval(div(96, div(4, 7)),C),
    write('eval(div(96, div(4, 7), A)'),nl,
    format('A = ~f ~n',[C]),

    eval(sub(15, sub(4, sub(3,2))),D),
    write('eval(sub(15, sub(4, sub(3,2))), A)'),nl,
    format('A = ~f ~n',[D]),

    eval(add(1, mul(2, 3)), E),
    write('eval(add(1, mul(2, 3)), A)'),nl,
    format('A = ~f ~n',[E]),

    eval(div(add(1, mul(2, 3)), 2), F),
    write('eval(div(add(1, mul(2, 3)), 2), A)'),nl,
    format('A = ~f ~n',[F]).
