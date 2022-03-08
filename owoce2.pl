ciezszy(pomarancz,jablko). % pomarańcz jest cięższa od jabłka
ciezszy(jablko,mandarynka).
ciezszy(arbuz,pomarancz).
ciezszy(jablko,winogrono).
ciezszy(X,Y) :- ciezszy(X,Z), ciezszy(Z,Y).
lzejszy(X,Y) :- ciezszy(Z,X), ciezszy(Y,Z).