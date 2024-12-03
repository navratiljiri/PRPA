/* pravidlo zdali je číslice */ 
cislice(0).
cislice(1).
cislice(2).
cislice(3).
cislice(4).
cislice(5).
cislice(6).
cislice(7).
cislice(8).
cislice(9).

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
rodice(jan, sarka, franta).
rodice(jan, sarka, tomas).

zena(petra).
zena(vera).
rodice(tomas,petra, vera).

zena(sylva).
zena(romana).
rodice(franta, sylva, romana).

/* otec(Otec, Potomek) */
otec(Otec, Potomek):-
 rodice(Otec, _, Potomek).
matka(Matka, Potomek):-
 rodice(_, Matka, Potomek).

/*rodic(Rodic, Potomek) :-
 otec(Rodic, Potomek); matka(Rodic, Potomek).*/

rodic(Rodic, Potomek) :-
 otec(Rodic, Potomek).

rodic(Rodic, Potomek) :-
 matka(Rodic, Potomek).

 % syn(Syn, Rodic).

syn(Syn, Rodic) :- 
    muz(Syn),
    rodic(Rodic, Syn).

dcera(Dcera, Rodic) :- 
zena(Dcera),
rodic(Rodic, Dcera).

sourozenec(S1,S2) :-
    rodice(Otec,Matka, S1),
    rodice(Otec,Matka, S2),
    S1 \= S2.

predek(Predek, Osoba) :- 
    rodic(Predek, Osoba).

predek(Predek, Osoba) :- 
    rodic(Rodic, Osoba),
    predek(Predek, Rodic).

potomek(Potomek, Predek) :-
     petrredek(Predek, Potomek).
  
osoba(A) :- muz(A); zena(A).

% Načtení jména a výpis jeho předků 

vypis_predky :- 
write('Zadejte osobu (ukoncene teckou)'),
read(Osoba),
predek(Predek, Osoba),
write('Nalezeny predek: '),
write(Predek),
nl,
fail.
vypis_predky.

% Vypiš najednou všechny muže 

vypis_muze :-
muz(A),
write(A),
nl,
fail.

% zadáte dva čísla a vrátíme aritmetický průměr 

aritmeticky_prumer :- 
write('Zadejte prvni cislo: '),
read(A),
write('Zadejte druhe cislo: '),
read(B),
write('Aritmeticky prumer cini: '),
Vypocet is (A+B)/2,
write(Vypocet),
nl.

% faktorial 

factorial(N, F) :- 
    N > 0,
    N2 is N-1,
    factorial(N2, F2),
    F is N * F2.
factorial(0, 1).

/* Trojúhelníkový problém - každá strana musí mít stejný součet */
/* Metoda generuj a testuj */ 
cislo(1).
cislo(2).
cislo(3).
cislo(4).
cislo(5).
cislo(6).
trojuhelnik(A,B,C,D,E,F) :-
cislo(A),
cislo(B),
cislo(C),
cislo(D),
cislo(E),
cislo(F),
A \= B, 
A \= C, 
A \= D, 
A \= E, 
A \= F, 

B \= C,
B \= D,
B \= E,
B \= F, 

C \= D,
C \= E,
C \= F,

D \= E,
D \= F,

E \= F,

C + D + E =:= E + F + A,
A + B + C =:= C + D + E,
A + B + C =:= E + F + A.

/* Vypsání všech možných variant */ 

vypis_trojuhelnik :- 
    trojuhelnik(A,B,C,D,E,F),
    write(A:B:C:D:E:F),
nl,
fail.
vypis_trojuhelnik.

/* seznamy */

vypis_hlavu_a_telo(Seznam) :- 
    Seznam = [Hlava|Telo],
    write('Hlava: '),
    write(Hlava),
    nl,
    write('Telo: '),
    write(Telo).

 vypis_hlavu_a_telo2([Hlava|Telo]) :- 
    write('Hlava: '),
    write(Hlava),
    nl,
    write('Telo: '),
    write(Telo).   

/* první prvek seznamu */ 
prvni(Prvni, [Prvni|_]).

/* Druhý prvek seznamu */ 
druhy(Druhy, [_, Druhy|_]).

/* Poslední prvek */ 
posledni(H,[H|[]]).

posledni(Posledni,[_|T]):- 
posledni(Posledni,T).

/* Předposlední prvek */ 
predposledni(H,[H|[A]]).

predposledni(PredPosledni,[_|T]):- 
predposledni(PredPosledni,T).

/* Je prvek v seznamu? */

najdiPrvek(Prvek, [Prvek|_]).
najdiPrvek(Prvek, [_|T]):- najdiPrvek(Prvek, T).

/* Vypiš všechny prvky */

vypis([]).
vypis([H|T]) :-
write(H),
nl,
vypis(T).

/* vypiš všechny prvky pozadu */ 
vypispozadu([A]).
vypispozadu([H|T]) :-
vypispozadu(T),
write(H),
nl.

/* nTý prvek */ 

nTy(Seznam, N, Prvek).
nTy([H|_], 1, H).
nTy([_|T], N, Prvek):-
N >1,
N2 is N - 1,
nTy(T, N2, Prvek).


