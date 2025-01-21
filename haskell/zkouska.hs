-- Absolutní hodnota bez použití funkce 

absolute x 
   | x > 0 = x 
   | otherwise = x * (-1) 

-- Výpočet faktoriálu

faktorial x 
    | x > 1 = x*faktorial(x-1)
    | otherwise = x

--druhá mocnina od 1 do 10 

mocniny[] = [x^2 | x <- [1..10]]

-- sečti čísla ze seznamu 

secti [] = 0
secti (h:t) = h + secti(t)

-- Napište funkci, která ze seznamu čísel smaže všechna lichá čísla ([1,2,3,4,6]  [2,4,6]

smazLicha[] = []
smazLicha (h:t) = if(h `mod` 2 == 0) then h:smazLicha t else smazLicha t

-- délka seznamu
seznam [] = 0
seznam (h:t) = 1 + seznam t

-- je členem seznamu 
jeClenem [] x = False 
jeClenem (h:t) x = if(h == x) then True else jeClenem t x

-- Určete výslednou hodnotu výrazu: [x | x <- [1,3..9], rem x 4 /= 1]
-- [3,7]

zbytek = [x | x <- [1,3..9], rem x 4 /= 1]

-- Ve funkci fch9 je právě jedna syntaktická chyba.
--fche9 (x:y:xs) = if(x > 0) then x else xs

-- Je definovaná funkce fn2

fn2 0 = 1
fn2 1 = 2
fn2 x 
    | x < 0 = error "Chyba"
    | otherwise = x * fn2(x-2)
--4*2*1
--fn2 3 = 6
--fn2 4 = 8

-- Napiště predikát jeSouctem s x y, který bude pravdivý, pokud celé číslo s je součtem hodnot x a y

jeSouctem s x y = if(s == x+y) then True else False

-- napište funkci opakujNKrat n x, která vytvoří seznam obsahující n prvků x.
-- POznámka není povolené využívat vestavěné funkce.
-- Příklady:
-- opakujNkrat 4 1 > [1,1,1,1]
-- opakujNkrat 0 1 > []

opakujNKrat n x = [x | y <- [1..n]]

-- Lichý prvek vynásob 2

vynasobLiche2[] = []
vynasobLiche2 (h:t) = if(h `rem` 2 == 0) then h:vynasobLiche2 t else h*2:vynasobLiche2 t

-- Napište funkci, která ze seznamu smaže všechny prvky větší než je zadaná mez m (3 [1,5,3,2,5]  [1,3,2])

vratMensi x [] = []
vratMensi x (h:t) = if(x >= h) then h:vratMensi x t else vratMensi x t

-- Napište funkci, která ze seznamu smaže všechna záporná čísla ([1,-2,-3,4,-5]  [1,4])

smazZaporna [] = []
smazZaporna (h:t) = if(h > 0) then h:smazZaporna t else smazZaporna t

-- Smaž určitý počet prvků 

smazPrvky x [] = []
smazPrvky x (h:t) = if(x == 1) then t else smazPrvky (x-1) t

-- Odstran určitý prvek (ve všech výskytech)

smazPr x [] = []
smazPr x (h:t) = if(x == h) then smazPr x t else h:smazPr x t

-- generuj lichá čísla vynásobená dvěma od 1..20

generuj = [x *2 | x <- [1,3..20]]

-- spoj dva seznamy 

spoj [] s2 = s2
spoj (h:t) s2 = h:spoj t s2



aplikujBinarniFunkci a b f = f a b 

abf12 = aplikujBinarniFunkci 1 2

-- Poslední prvek seznamu 

posledni (h:[]) = h
posledni (h:t) = posledni t

-- Predposledni prvek seznamu 

predposledni [] = []
predposledni (h:_:[]) = h
predposledni (h:t) = predposledni t


-- najdi největší prvek ze seznamu 

vetsi x [] = x
vetsi x (h:t) = if(h > x) then vetsi h t else vetsi x t
nejvetsi (h:t) = vetsi h t

-- smaž n-tý prvek 

smazN x [] = []
smazN x (h:t) = if(x == 1) then t else h:smazN (x-1) t

-- pokus zadas liche cislo vynasob ho 5 kdyz sude vynasob ho 10 kdyz 0 
-- tak hod error kdyz zaporne tak udelas absolutni hodnotu

vypocti1 x 
    | x == 0 = error "Chyba"
    | x `rem` 2 == 1 = x * 5
    | x `rem` 2 == 0 = x * 10
    | otherwise = x*(-1)

-- na vstup dostaneš číslo a znak 
-- 3 n -> [n,n,n]

negr x n = [n | y <- [1..x]]

-- vygeneruj dvojici čísel (1,2) (2,3) (4,5)

generuj2 = [(x,y) | x <- [1..10], y <- [2,4..10], x > 5 && y > 5]

-- Smaž první výskyt prvku 
smazPrvni x [] = []
smazPrvni x (h:t) = if(x == h) then t else h:smazPrvni x t

-- Smaž všechny výskyty
smazVsechny x [] = []
smazVsechny x (h:t) = if(x == h) then smazVsechny x t else h:smazVsechny x t

smazLiche1 [] = []
smazLiche1 (h:t) = if(h `mod` 2 == 1) then smazLiche1 t else h:smazLiche1 t

delka1 [] = 0
delka1 (h:t) = 1 + delka1 t

-- napište funkci opakujNKrat n x, která vytvoří seznam obsahující n prvků x.
-- POznámka není povolené využívat vestavěné funkce.
-- Příklady:
-- opakujNkrat 4 1 > [1,1,1,1]
-- opakujNkrat 0 1 > []

opakujNkrat1 n x = [x | y <- [1..n]] 

-- Odstran určitý prvek (ve všech výskytech)
odstran [] x = []
odstran(h:t) x
    | x == h = odstran(t) x
    | otherwise = h:odstran(t) x

-- Odstran určitý prvek (první výskyt)

odstran1 [] x = []
odstran1(h:t) x
    | x == h = t
    | otherwise = h:odstran1(t) x

-- Napište funkci, která ze seznamu čísel smaže všechna lichá čísla ([1,2,3,4,6]  [2,4,6]

odstranLicha [] = [] 
odstranLicha (h:t) = if(h `rem` 2 == 1) then odstranLicha(t) else h:odstranLicha(t)

-- spoj dva seznamy 
spojSeznamy [] t = t
spojSeznamy (h:t) s2 = h:spojSeznamy (t) s2

-- vygeneruj seznamy kde budou dvojice čísel (x,y) x 1-20 y - 1-50 x < y v poli 
generaceCisel = [ [x,y] | x <- [1..20], y <- [1..50], x < y]

-- Napište funkci, která ze seznamu smaže všechny prvky větší než je zadaná mez m (3 [1,5,3,2,5]  [1,3,2])
smazVetsi x [] = []
smazVetsi x (h:t) = if(x > h) then smazVetsi x t else h:smazVetsi x t

-- Určete výslednou hodnotu výrazu: [x | x <- [1,3..9], rem x 4 /= 1]

faktorial21 x = if(x > 1) then x*faktorial21 (x-1) else x

-- Absolutní hodnotu 

absol x = if(x < 0) then (x*(-1)) else x

aplikujBinarniFunkci1 a b f = f a b 

abf122 = aplikujBinarniFunkci1 1 2

