/* Vypíše všechny možné kombinace čísel, které dávají dohromady 20 */
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
vypis(A,B,C):-
    cisla(A),
    cisla(B),
    cisla(C),
    D is A + B + C,
    D =:= 20.

/*Predikát na výpis celkové známky z dvou testů.*/

znamka(A,B):-
Vypocet is (A+B)/2,
write(Vypocet),
nl.

/* Zdvojnasob prvky v seznamu */

zdvojnasob([], []).
zdvojnasob([H|T], [H2|T2]):-
    H2 is H*2,
    zdvojnasob(T,T2).

muz(karel).
zena(jana).

muz(jan).
zena(michala).
rodice(karel, jana, jan).
rodice(karel, jana, michala).

zena(anna).
zena(iveta).
muz(josef).
rodice(josef, michala, iveta).
rodice(josef, michala, anna).

muz(jiri).
muz(hektor).
rodice(jiri, anna, hektor).

muz(petr).
zena(julie).
rodice(petr, iveta, julie).

zena(sarka).
muz(tomas).
muz(franta).
zena(eliska).
rodice(jan, sarka, franta).
rodice(jan, sarka, tomas).
rodice(jan, sarka, eliska).

zena(petra).
zena(vera).
rodice(tomas,petra, vera).

zena(sylva).
zena(romana).
rodice(franta, sylva, romana).

sourozenec(S1,S2) :-
    muz(S1),
    rodice(Otec,Matka, S1),
    rodice(Otec,Matka, S2),
    S1 \= S2.*/

/* Napište dotaz na databázi s faktem cislo(X) | X € R tak, aby vznikly trojice cisel tvorici strany trojuhelnika */
cislo(1).
cislo(2). 
cislo(3). 
cislo(4). 
cislo(5). 
cislo(6). 
cislo(7). 
cislo(8). 
cislo(9).     

trojuhelnik(A,B,C):-
    cislo(A),
    cislo(B),
    cislo(C),
    AC is A + C,
    BC is B + C,
    AB is A + B,
    BC > A,
    AC > B,
    AB > C.

/* Napiste (nularni?) predikat najdi, kterej rekne, kolik odpracoval zamestnanaec definovany faktem zamestnanec(Jmeno, Prichod, Odchod). */ 
     
zamestnanec(marek, 8, 15).
zamestnanec(petr, 8, 12).
zamestnanec(jirkos, 7, 14).

najdi:- 
zamestnanec(Zamestnanecc,S1,S2),
write(Zamestnanecc),
Odpracovano is S2 - S1,
write(" Odpracoval: "),
write(Odpracovano).

/* vylozene predikat pro sestru (musej se rovnat rodice a je to zena) !!!!  */ 

muz(franta).
zena(marie).
zena(eliska).
zena(jana).
muz(martin). 
rodic(franta,marie,eliska).
rodic(franta,marie,martin).
rodic(franta,marie,jana).
sestra(A,B):-
    zena(B),
    rodic(Otec, Matka, A),
    rodic(Otec, Matka, B),
    A \= B.

vynasobDvema([], []).
vynasobDvema([H1|T1], [H2|T2]):- 
    H2 is H1*2,
    vynasobDvema(T1,T2).

/* vypiš pouze kladná čísla ze seznamu */ 

kladne([]).
kladne([H|T]):-
number(H),
H > 0,
write(H),
nl,
kladne(T).

/* Najdi nTy prvek seznamu */

najdiPrvek([X|_],X).
najdiPrvek([_|T], X):-
    najdiPrvek(T, X).

/* sečíst čísla ze seznamu */ 
secti([], 0).
secti([H|T], X):-
secti(T, H2),
X is H2 + H.

/* Délka seznamu */ 

delka([], 0).
delka([H|T], X):-,delka(T, H2),
X is H2 + 1.

/* vypiš všechny prvky */ 
vypis([]).
vypis([H|T]):-
write(H),
nl,
vypis(T).

/* faktorial */ 

factorial(N, F) :- 
    N > 0,
    N2 is N-1,
    factorial(N2, F2),
    F is N * F2.
factorial(0, 1).

