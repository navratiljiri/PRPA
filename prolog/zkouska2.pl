/* Kladne cisla - true x false */ 
jeKladne([]).
jeKladne([H|T]):-
H>0,
jeKladne(T).

/* sečíst čísla ze seznamu */ 
secti([], 0).
secti([H|T],X):-
secti(T,X2),
X is X2 + H.

celkem1 :-
X is 1+1,
Y = 2,
Y =:= X.

celkem2 :-
X = 1,
X = Y, 
Y is 3*X.

celkem3 :- 
X is 1,
Y is X+1,
X is Y-1.

celkem4 :- 
X = Y, 
Y = 2+2,
X =:= Y.

/* Co bude výsledkem dotazu p([2,4,3,7], V)., když máme v databázi následující pravidla:*/

p([], []).
p([H|T], [K|V]) :-
K is H*H-1,
p(T,V).

 /* Urči, zda je číslo sudé nebo liché:*/ 

 urci(X):-
 mod(X,2) =:= 1,
 write("Liche").
 urci(X):-
  mod(X,2) =:= 0,
 write("Sude").

 /* Ztrojnásob prvky v seznamu */ 

ztrojNasob([], []).
ztrojNasob([H|T], [H2|T2]):-
ztrojNasob(T, T2),
H2 is H * 3.

/* sečti prvky v seznamu */
sectiPole([],0).
sectiPole([H|T],X):-
sectiPole(T,X2),
X is (X2+H).


najdi([X|_],X).
najdi([H|T], X):-
najdi(T,X).

zdvojPr([], []).
zdvojPr([H|T], [H, H|T2]):-
zdvojPr(T, T2).


posledniPrvek([X],X).
posledniPrvek([H|T],X):-
posledniPrvek(T, X).

cisla(0).
cisla(1).
cisla(2).
cisla(3).
cisla(4).
cisla(5).
cisla(6).
cisla(7).
cisla(8).
cisla(9).
cisla(10).
cisla(11).
cisla(12).
cisla(13).
cisla(14).
cisla(15).
cisla(16).
cisla(17).
cisla(18).
cisla(19).
cisla(20).
cisla(21).
cisla(22).
cisla(23).
cisla(24).
cisla(25).
cisla(26).
cisla(27).
cisla(28).
cisla(29).
cisla(30).
dvacet(A,B,C):-
cisla(A),
cisla(B),
cisla(C),
20 =:= A+B+C.

vypustSude([], []).
vypustSude([H|T],T2):-
mod(H,2) =:= 0,
vypustSude(T,T2).

vypustSude([H|T],[H|T2]):-
mod(H,2) =:= 1,
vypustSude(T,T2).

/* 30 nohou a koz (4) je více než hus (2) */

farma(K, H):-
cisla(K),
cisla(H),
K < H, 
30 =:= (K*4)+(H*2).

/* vzestupně */ 
vzestupne(0).
vzestupne(N) :-
 N > 0,
 assertz(cislo(N)),
 N2 is N - 1,
 vzestupne(N2).


