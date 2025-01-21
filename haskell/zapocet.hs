-- Lichý prvek vynásob 2
lichy [] = []
lichy (h:xs) = if h `mod` 2 == 0 then h:lichy(xs) else h*2:lichy(xs)  

-- sečti čísla ze seznamu 
secti [] = 0
secti (h:xs) = h + secti(xs)

-- Napište funkci, která ze seznamu smaže všechny prvky větší než je zadaná mez m (3 [1,5,3,2,5]  [1,3,2])
smazVsechny _ [] = []
smazVsechny x (h:t) = if(x < h) then smazVsechny x t else h: smazVsechny x t

-- Napište funkci počítající součet dvou vektorů/seznamů čísel stejné délky ([1,2,3] [4,5,2]  [5,7,5]) 
delky [] [] = [] 
delky (h1:t1) (h2:t2) = h1 + h2: delky t1 t2

-- Napište funkci, která ze seznamu smaže všechna záporná čísla ([1,-2,-3,4,-5]  [1,4])
neZaporna [] = []
neZaporna (h:t) = if(h < 0) then neZaporna t else h:neZaporna t  

-- Napište funkci, která ze seznamu smaže všechny prvky na sudých pozicích ([1,2,3,4,6]  [1,3,6])

neSude' _ [] = []
neSude' c (h:t) = if(c `mod` 2 == 0) then neSude' (c+1) t else h:neSude' (c+1) t
neSude (xs) = neSude' 1 (xs) 

-- Napište funkci, která ze seznamu čísel smaže všechna lichá čísla ([1,2,3,4,6]  [2,4,6])

neLichaCisla [] = []
neLichaCisla (h:t) = if(h `mod` 2 == 0) then h:neLichaCisla t else neLichaCisla t

-- Vygenerujte všechny sudá čísla z 1..500 dělitelná současně 3 a 7 (bude jich 11)
cisla = [x | x <- [2,4..500], x `mod` 3 == 0, x `mod` 7 == 0]

-- Najdi nTy prvek 
nTy 1 (h:_) = h
nTy x (_:t) = nTy (x-1) t

-- Absolutní hodnota bez použití funkce 

absolute x 
    | x > 0 = x
    | otherwise = x * (-1)

krat a = (*) a

fce4 x y 
    | x < 0 = y*2
    | x == 0 = y *3
    | otherwise =  y *4

ztrojSude [] = []
ztrojSude (h:xs) = if(h `mod` 2 == 0) then h*3: ztrojSude xs else h:ztrojSude xs

seznam [] = []
seznam (h:t) 
    | h `mod` 2 == 0 || h `mod` 3 == 0 = h*5 : seznam t
    | otherwise =  seznam t

seznam2 [] = 0 
seznam2 (h:t) 
    | h > 0 = h*2 + seznam2 t  
    | otherwise = seznam2 t

-- je členem seznamu 
jeClen a [] = False
jeClen a (h:t) = if(a == h) then True else jeClen a t

-- vrat poslední prvek ze seznamu 
posledni (h:[]) = h
posledni (_:t) = posledni t

-- délka seznamu
delka [] = 0
delka (_:t) = 1 + delka t

-- Smaž první výskyt prvku 
smaz  _ [] = []
smaz x (h:t) = if(x == h) then t else h:smaz x t

-- vymaž nty prvek ze seznamu
vymazNty 1 (_:t) = t 
vymazNty a (h:t)=  h:vymazNty (a-1) t 

-- Lichý prvek vynásob 2

lichy2 [] = []
lichy2 (h:t)= if(h `mod` 2 == 0) then h:lichy2 t else h*2: lichy2 t

-- Napište funkci, která ze seznamu smaže všechny prvky větší než je zadaná mez m (3 [1,5,3,2,5]  [1,3,2])

-- Najdi nTy prvek 
nTy2 1 (h:_) = h
nTy2 x (_:t) = nTy (x-1) t

celkem = map (3*) [1,2,3]

/*napište funkci vypocti f x y pokud f se rovná " + "spočítat součet x a y. pokud f se rovná" - " vypočítat rozdíl x a y. v opačném případě bude nula.*/


spocti f x y
 |f == "+" = x+y
 |f == "-" = x-y
 |otherwise = 0
vypisLicheI [] _ = []
 vypisLicheI (h:t) i = if(i mod 2 == 1) then h:vypisLicheI t (i+1) else vypisLicheI t (i+1)

vypisLicheI [] _ = []
vypisLicheI (h:t) i
    | i `mod` 2 == 1 = h : vypisLicheI t (i + 1)  -- Přidá prvek, pokud je index lichý
    | otherwise       = vypisLicheI t (i + 1)     -- Jinak pokračuje dál


ntyPrvek [] x = [] 
ntyPrvek (h:t) x = if(x == 1) then h else ntyPrvek (t) (x-1)


generujCisla = [x | x <- [1..500], x `mod` 5 == 0, x `mod` 7 == 0]

nTy 1 (x:_) = x
nTy k (_:t) = nTy(k-1) t 
