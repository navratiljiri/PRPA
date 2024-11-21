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
    Predek(Predek, Rodic).

potomek(Potomek, Predek) :-
     Predek(Predek, Potomek).