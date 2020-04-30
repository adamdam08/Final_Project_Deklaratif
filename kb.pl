
pria(budi).
pria(toni).

wanita(rima).
orangtua(rima, toni).
orangtua(budi, toni).

%Soal Pengenalan Prolog
ibu(X,Y):- wanita(X), orangtua(X,Y).
ayah(X,Y):- pria(X), orangtua(X,Y).

%Soal Manipulasi List
findsecondlast(X,[X,_]).
findsecondlast(X,[_|T]):- findsecondlast(X,T).

%Soal Manipulasi List
findlast(X,[X]).
findlast(X,[_|T]):- findlast(X,T).


%Soal Aritmatika
perkalian(X,1,X):- !.
perkalian(X,Y,Z):- K is Y-1, perkalian(X,K,Z1), Z is X+Z1.

%Soal Aritmatika
pangkat(X,1,X):-!.
pangkat(X,Y,Z):- K is Y-1, pangkat(X,K,Z1), Z is X*Z1.

%Soal Logika
equal(A,B):- A==B.

%Soal Logika
and(A,B):- A=presiden,B=istrinya.

ubah([],[]).
ubah([[X|Xt]|Y],[[N,X]|Z]):- length([X|Xt],N), ubah(Y,Z).
lengthSubList(X1,X2):- subList(X1,X), ubah(X,X2).



count_leaves(nil,0).
count_leaves(t(_,nil,nil),1).
count_leaves(t(_,L,nil),N) :- L = t(_,_,_), count_leaves(L,N).
count_leaves(t(_,nil,R),N) :- R = t(_,_,_), count_leaves(R,N).
count_leaves(t(_,L,R),N) :- L = t(_,_,_), R = t(_,_,_),
   count_leaves(L,NL), count_leaves(R,NR), N is NL + NR.


nnodes(t(_,F),N) :- nnodes(F,NF), N is NF+1.

nnodes([],0).
nnodes([T|Ts],N) :- nnodes(T,NT), nnodes(Ts,NTs), N is NT+NTs.

nnodes2(t(_,F),N) :- N > 0, NF is N-1, nnodes2F(F,NF).

nnodes2F([],0).
nnodes2F([T|Ts],N) :- N > 0,
   between(1,N,NT), nnodes2(T,NT),
   NTs is N-NT, nnodes2F(Ts,NTs).

leaves_count(nil,0).
leaves_count(t(_,nil,nil),1) :- !.
leaves_count(t(_,L,R),N) :-
    leaves_count(L,NL), leaves_count(R,NR), N is NL + NR.

bumi([X,Y],Z):- X=atmosfer, Y=daratan_lautan,Z=bulan.
