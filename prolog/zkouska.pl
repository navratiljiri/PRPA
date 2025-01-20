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

dvacet(A,B,C):-
cisla(A),
cisla(B),
cisla(C),
20 =:= A+B+C.


/* Kladne cisla - true x false */                  
kladne([]).                 
kladne([H|T]):-                 
H>0,                
kladne(T).                 

/* Celková známka ze dvou známek */
znamka(A,B):-
C is (A+B)/2,
write(C).

/* vypiš všechny prvky */ 
vypis([]).
vypis([H|T]):-
vypis(T),
write(H),
nl.

/* sečíst čísla ze seznamu */ 
sectiCisla([], 0).
sectiCisla([H|T], C):-
sectiCisla(T,C2),
C is C2+H.

/* Najdi nTy prvek seznamu */

najdiPrvek([A|_],A).
najdiPrvek([H|T],A):-
najdiPrvek(T,A).

/* Napište, jaký bude výsledek následujících dotazů */ 
celkem :-
X = Y,
Y = 2+2,
X =:= Y.

/* Co bude výsledkem dotazu p([2,4,3,7], V)., když máme v databázi následující pravidla:*/

p([], []).
p([H|T], [K|V]) :-
K is H*H-1,
p(T,V).

/*3,15,8,48*/

/* kolik výsledků a jakých má následující dotaz při dané databázi */

a(1,2).
a(2,2).
a(1,1).
b(2,1).
b(2,2).

celkem12 :-
a(X,Y),
a(X,Z),
b(Y,Z),
!.

/* X = 1, Z = 2, Y = 2*/

/*vypust_suda([2,3,4,6,5], V).*/

vypust_suda([], []).  % Prázdný vstup dává prázdný výstup.
vypust_suda([H|T], [H1|T1]) :- 
    H mod 2 =:= 1,     % Pokud je číslo sudé, přidáme ho do výstupního seznamu.
    H1 is H,
    vypust_suda(T, T1).
vypust_suda([H|T], T1) :- 
    H mod 2 =\= 1,     % Pokud číslo není sudé, přeskočíme ho.
    vypust_suda(T, T1).

nohy(PK,PH):-
cisla(PK),
cisla(PH),
PK<PH,
30 is (PK*4)+(PH*2).


vypust_suda([], []).  
vypust_suda([H|T], V) :-  
    (H mod 2 =\= 0 -> V = [H|T1] ; V = T1),  
    vypust_suda(T, T1).


/* vypiš pouze kladná čísla ze seznamu */ 
vypisKladna([]).

vypisKladna([H|T]):-
vypisKladna(T),
H > 0,
write(H),
nl.


kladna([]).
kladna([H|T]) :-
number(H),
H > 0,
kladna(T).

/*vypisKladna [] = []
vypisKladna (h:t) = if (h > 0) then h:vypisKladna t else vypisKladna t*/  

/* vzestupně */ 
vzestupne(0).
vzestupne(N) :-
 N > 0,
 asserta(cislo(N)),
 N2 is N - 1,
 vzestupne(N2).


/* sestupne */ 

sestupne(0).
sestupne(N) :-
 N > 0,
 assertz(cislo1(N)),
 N2 is N - 1,
 sestupne(N2).

/*
zestupne(100).
zestupne(N) :-
 N > 0,
 asserta(cislo2(N)),
 N2 is N + 1,
 zestupne(N2).*/


 /* faktorial */ 

faktorial(0,1).
 faktorial(A, F) :-
 A2 is A - 1,
 faktorial(A2, A3),
 F is A * A3.

seznam([]).
 seznam([H,H2|T]):-
 seznam(T),
 H < H2.

 /* Urči, zda je číslo sudé nebo liché:*/ 
 
 sudeLiche(A):-
mod(A,2) =:= 0,
 write("sude").

  sudeLiche(A):-
  mod(A,2) =:= 1,
 write("Lichos").
 
 /*Výpočet součtu všech čísel v seznamu:*/
secti([],0).
secti([H|T], A):-
secti(T,A2),
A is A2 + H.

vek(karel, 45).
vek(jana, 42).
vek(jan, 20).
vek(michala, 18).

/*nejvetsi([X], X).
nejvetsi([H|T], X):-
nejvetsi(T, X2),
X2 < H,
X is H.*/

nejvetsi([X], X). % Základní případ: pokud je seznam jednoprvkový, vrátí tento prvek.
nejvetsi([H|T], Nejvetsi) :-
    nejvetsi(T, X2), % Rekurzivní volání na zbytek seznamu.
    H > X2, % Pokud je H větší než X2, Nejvetsi je H.
    Nejvetsi = H.
nejvetsi([H|T], Nejvetsi) :-
    nejvetsi(T, X2), % Rekurzivní volání na zbytek seznamu.
    H =< X2, % Pokud H není větší než X2, Nejvetsi je X2.
    Nejvetsi = X2.

deleni(A,B) :-
C is rem(A,B),
write(C).

/*vynasobDvema*/

/*vynasobDvema([], []).
vynasobDvema([H1|T1], [H2,T2]):-
    H2 is H1*2,
    vynasobDvema(T1,T2).*/

/*vynasobDvema([], []).
vynasobDvema([H1|T1], [H2|T2]):- 
    H2 is H1*2,
    vynasobDvema(T1,T2).*/

vypustSude1([], []).
vypustSude1([H|T],T2):-
mod(H,2) =:= 0,
vypustSude1(T,T2).

vypustSude1([H|T],[H2|T2]):-
mod(H,2) =:= 1,
H2 is H,
vypustSude1(T,T2).

