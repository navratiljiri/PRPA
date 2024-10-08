-- Největší prvek z pole 
 {- vetsi a b = if a > b then a else b
maxSez (h:t) = if(t==[]) then h else vetsi(maxSez t) h -}

-- Smaž prvek ze seznamu 

{- smaz _[] = []
smaz x (y:s) = if x == y then s else (y:smaz x s) -}

-- Spojení seznamů 

{- spoj [] s2 = s2
spoj (h:t) s2 = (h:spoj t s2) -}


