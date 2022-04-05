ile([], 0).
ile([_|T], W) :- ile(T, W1), W is W1 + 1.
% ile([1,2,3],W)
% ile([1|2,3], W) :- ile([2,3], W1) ->
% -> ile([2|3], W1) :- ile(3, W1) ->
% ->-> ile(3, W1) :- ile([], W1) W1 = 0 <-
% W is 0 + 1 = 1 <-
% W is 1 + 1 = 2 <-
% W is 2 + 1 = 3
suma([], 0).
suma([H|T], W) :- suma(T, W1), W is W1 + H.
suma2([], A, A).
suma2([H|T], A, W) :- A1 is A + H, suma2(T, A1, W).
