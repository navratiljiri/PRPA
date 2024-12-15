/* Tři čísla co dávají dohromady 20 */ 
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

vetsiNez(A,B,C):- 
    cisla(A),
    cisla(B),
    cisla(C),
    20 =:= A + B + C.

muz(jirka).
zena(miku).
zena(megu).
muz(filip).

rodice(jirka, miku, megu).
rodice(jirka, miku, filip).

bratr(A,B):-
    muz(B),
    rodice(Otec, Matka, A),
    rodice(Otec, Matka, B),
    A \= B.

trojuhelnik(A,B,C) :-
cisla(A),
cisla(B),
cisla(C),
AB is A + B, 
AC is A + C, 
BC is B + C,
C < AB, 
B < AC,
A < BC.

/* vypiš délku seznamu */ 
delka([], 0).
delka([H|T], I):-
delka(T, I2),
I is I2 +1. 

/* ztrojnasob prvky v seznamu */ 
ztrojnasob([],[]).
ztrojnasob([H|T], [H2|T2]):-
H2 is H * 3, 
ztrojnasob(T, T2).

/* Kladne cisla - true x false */ 
kladne([]).
kladne([H|T]):- 
H > 0,
kladne(T).


/* Napiste (nularni?) predikat najdi, kterej rekne, kolik odpracoval zamestnanaec definovany faktem zamestnanec(Jmeno, Prichod, Odchod). */

zamestnanec(jirka, 7:00,15:15).

odpracoval:-
    zamestnanec(Jmeno, Prichod, Odchod),
    Cas is Odchod - Prichod,
    write(Cas),
    nl.

/* Celková známka ze dvou známek */ 

znamky(A,B):-
    C is (A+B)/2,
    write(C).

