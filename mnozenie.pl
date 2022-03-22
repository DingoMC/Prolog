mul(0,_,0) :- !. % warunki graniczne
mul(1,X,X) :- !. % warunki graniczne
mul(X,Y,R) :- X > 1, X1 is X - 1, mul(X1, Y, R1), R is R1 + Y.
