silnia(0, W) :- W is 1, !.
silnia(N, W) :- silnia2(N, 1, 1, W).
silnia2(N, N, W, W) :- !.
silnia2(N, L, A, W) :- L1 is L+1, A1 is A*L1, silnia2(N, L1, A1, W).