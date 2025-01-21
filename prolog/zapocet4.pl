/* najdi prvni prvek v seznamu */
prvni(H, [H|_]).

/* vypiš počet prvků se seznamu */ 
pocet([], 0).
pocet([H|T],N):-
pocet(T,N2),
N is N2 + 1.

/* vypiš poslední prvek se seznamu */ 


/* vypiš předposlední prvek */

/*Zdvojnásob */ 

/*1*/

cislo(1).
cislo(2).
cislo(3).
cislo(4).
cislo(5).
cislo(6).
cislo(7).
cislo(8).
cislo(9).
cislo(10).
cislo(11).
cislo(12).
cislo(13).
cislo(14).
cislo(15).
cislo(16).
cislo(17).
cislo(18).
cislo(19).
cislo(20).

soucet(A,B,C):-
cislo(A),
cislo(B),
cislo(C),
20 =:= A + B + C.

student(matej, 22,32).

najdi:-
write("Zadejte jmeno:"),
read(A),
student(A, Prvni1, Prvni2),
Vypocet is Prvni1 + Prvni2,
write(Vypocet).

/*3*/

muz(mira).
muz(jirka).
zena(janicka).
muz(marek).
zena(miku).

rodice(marek, janicka, jirka).
rodice(marek, janicka, mira).
rodice(marek, janicka, miku).

bratr(A, B):-
muz(A),
rodice(Otec, Matka, A),
rodice(Otec, Matka, B),
A \= B.

/* 4*/ 

zdvoj([], []).
zdvoj([H|T], [H,H|T2]) :-
    zdvoj(T, T2). 

druhy(Druhy, [_, Druhy|_]).

posledni(X, [X]).
posledni(X, [_|T]):-
posledni(X, T).

/* Zdvojnasob prvky */
zdvojn([], []).
zdvojn([H|T], [H2|T2]):-
zdvojn(T, T2),
H2 is H * 2.

predposledni(H, [H|[_]]).
predposledni(PredPosledni,[_|T]):- 
predposledni(PredPosledni,T).

/* spocitej prvky */
spocitej([], 0).
spocitej([H|T], N):-
spocitej(T, N2),
N is N2 + 1.

prvni(H, [H|_]).

sectiPrvky([], 0).
sectiPrvky([H|T], X):-
sectiPrvky(T, XS),
X is XS + 1.

zdvojPr([], []).
zdvojPr([H|T], [H, H|T2]):-
zdvojPr(T, T2).

ztrojNasob([], []).
ztrojNasob([H|T], [H2|T2]):-
ztrojNasob(T, T2),
H2 is H * 2.

druhy(Druhy, [_, Druhy|_]).


predposledni2(H, [H|[_]]).
predposledni2(X, [_|T]):-
predposledni2(X,T).