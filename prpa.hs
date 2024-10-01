-- Spuštění ghci na školním pc: & 'C:\Program Files\ghc-9.10.1-x86_64-unknown-mingw32\bin\ghci.exe'

-- výpis textu
-- main = putStrLn "Hello word!"

-- součet čísel 1 až 4 a poté vynásobit *2
-- soucet = (1+2+3+4)*2

-- odečíst -1-1
-- odecet = -1-(-1)

-- rozhodni zdali se jedná o trojuhelník a vypsání pak zdali ANO x NE 

{- a = 3
b = 6
c = 7

trojuhelnik = if a > 0 && b > 0 && c > 0 && (a+b) > c && (b+c) > a && (a+c) > b then "ANO" else "NE" -}

-- pravouhly = sqrt(3 ^ 2 + 4 ^ 2)

-- úlohy jak probíhá počítání
{- 
a = 1-2-3
b = (1-2)-3
c = 1-(2-3)
 -}

{- 
a = 2 ^ 3 ^ 2
b = 2 ^ (3 ^ 2)
c = (2 ^ 3) ^ 2 
-}

-- mocnina (funkce má nejvyšší prioritu)

--mocnina a b = abs(a) ^ abs(b)

--dvojnásobek

--dvojnasobek a = a * 2

-- součet dvou čtverců
-- soucetCtvercu a b = (a * a) + (b * b) 

-- True zdali je první číslo menší než druhé 
-- jeMensi a b = (a < b)

-- vrat menší číslo
-- mensi a b = if a < b then a else b

-- logicky soušet bez použití || &&...
-- logickySoucet a b = if a then True else (if b then True else False)