fib(1, 1) :- !.
fib(2, 1) :- !.
fib(N, W) :- N > 2, N1 is N-1, N2 is N-2, fib(N1, W1), fib(N2, W2), W is W1 + W2.

fib2(1, 1) :- !.
fib2(2, 1) :- !.
fib2(N, W) :- fibbo2(N, 1, 1, 1, W).
fibbo2(N, N, _, X, W) :- W is X, !.
fibbo2(N, L, X1, X2, W) :- L =< N, L1 is L + 1, X3 is X1+X2, fibbo2(N, L1, X2, X3, W).
% fib2(3, W).
% fibbo2(3, 1, 1, 1, W).
% fibbo2(3, 1, 1, 1, W) :- 1 =< 3, L1 is 2, X3 is 2, fibbo2(3, 2, 1, 2, W) ->
% -> fibbo2(3, 2, 1, 2, W) :- 2 =< 3, L1 is 3, X3 is 3, fibbo2(3, 3, 2, 3, W) ->
% -> -> fibbo2(3, 3, 2, 3, W) :- W is 3. <-
% -> W is 3 <-
% W is 3.
