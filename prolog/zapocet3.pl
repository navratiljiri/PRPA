/* počet prvků v poli */ 
pocetPrvku([], 0).
pocetPrvku([H|T], X):-
    pocetPrvku(T, XS),
     X is XS + 1.

/* Trojuhelnik */ 

cisla(1).
cisla(2).
cisla(3).
cisla(4).
cisla(5).
cisla(6).
cisla(7).
cisla(8).
cisla(9).

trojuhelnik(A,B,C) :-
cisla(A),
cisla(B),
cisla(C),
BC is  B + C,
BA is B + A,
CA is C + A,
BA > C,
BC > A,
CA > B.

/* zčtyřnásob prvky v seznamu */ 

nasob([],[]).
nasob([H|T],[H2|T2]):-
nasob(T,T2),
H2 is H * 4.

/* kladne */ 
kladne([]).
kladne([H|T]):-
H > 0,
kladne(T).

znamky(A,B):-
Vypocet is (A+B)/2,
write(Vypocet).

muz(jirka).
zena(miku).
zena(hanka).
muz(tomas).
muz(marek).

rodice(jirka, miku, hanka).
rodice(jirka, miku, tomas).
rodice(jirka, miku, marek).

bratr(A, B):-
muz(B),
rodice(Otec, Matka, A),
rodice(Otec, Matka, B),
A \= B.

/* poslední prvek */

posledni(H,[H|[]]).

posledni(X,[H|T]):-
posledni(X,T).

prvni(Prvni, [Prvni|_]).

/*prvek v seznamu */

najdi(Prvek, [Prvek|_]).
najdi(Prvek, [H|T]):-
najdi(Prvek, T).

druhy(Druhy, [_, Druhy|_]).