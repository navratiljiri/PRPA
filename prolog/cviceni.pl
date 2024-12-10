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
predposledni(H,[H|[_]]).

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

/* Kladná čísla */ 
kladna([]).
kladna([H|T]) :-
number(H),
H > 0,
kladna(T).

/* Délka */
delka([],0).
delka([_|T], N) :-
delka(T, N2),
N is N2 + 1.


/* Součet */ 
soucet([], 0).
soucet([H|T], V) :-
soucet(T, V2),
V is V2 + H.

/* spo(S1,S2,S3) - spoj seznamy */ 
spoj([], S2, S2).
spoj([H|T], S2, [H|S3]) :- 
    spoj(T, S2, S3).

/* Smazat prvkek - jeho první výskyt */
smaz(_, [], []).
smaz(Prvek, [Prvek|T], T).
smaz(Prvek, [H|T], [H|S]) :-
Prvek \= H,
smaz(Prvek, T, S).

/* Smazat všechny výskyty */ 
smazVse(_, [], []).
smazVse(Prvek, [Prvek|T], S) :-
smazVse(Prvek, T, S).
smazVse(Prvek, [H|T], [H|S]) :-
Prvek \= H,
smaz(Prvek, T, S).

/* vytkni */ 
vytkni(Prvek, [Prvek|T], T).
vytkni(Prvek, [H|T], [H|S]) :-
    vytkni(Prvek, T, S).

/* otočení seznamu */ 
otoc(S1, S2) :-
otoc(S1, [], S2).

otoc([],A,A).
otoc([H|S1], A, S2) :-
    otoc(S1, [H|A], S2).

slovo:-
    write("Zadejte slovo: "),
    read(Slovo),
    name(Slovo, Seznam),
    prvni(Prvni, Seznam),
    posledni(Prvni, Seznam).

/* Opakuj dokud nedostane sušenku */ 
vir:-
repeat, 
write("CHCI SUSENKU!!"),
nl,
read(susenka),
!.

/* Požádá o slovo a opakuje ho dokud se nezada konec */ 
/* repeat a něco jako if else */ 
opakuj :-
repeat,
    write("Zadej slovo: "),
    read(Slovo),
    (
    (Slovo = konec, !)
    ;
    write('Opakuji slovo: '),
    write(Slovo),
    nl,
    fail
    ).

opakuj2_konec(zastav).
opakuj2_konec(konec).

opakuj2 :-
repeat,
    write("Zadej slovo: "),
    read(Slovo),
    (
    (opakuj2_konec(Slovo), !)
    ;
    write('Opakuji slovo: '),
    write(Slovo),
    nl,
    fail
    ).

/* vzestupně */ 
vzestupne(0).
vzestupne(N) :-
    N > 0,
    asserta(c(N)),
    N2 is N -1,
    vzestupne(N2).

/* sestupna */ 
sestupne(0).
sestupne(N) :-
    N > 0,
    assertz(d(N)),
    N2 is N -1,
    sestupne(N2).

/* počítadlo - uložené v paměti jako proměnná */ 

pocet:-
    retractall(pocitadlo(_)),
    assert(pocitadlo(0)),
    c(_),
    retract(pocitadlo(N)),
    N2 is N +1,
    assert(pocitadlo(N2)),
    fail.
pocet:-
    pocitadlo(N),
    write('Pocet: '),
    write(N),
    nl.