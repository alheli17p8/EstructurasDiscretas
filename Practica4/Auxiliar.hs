module Auxiliar where
data Natural = Cero | S Natural deriving (Eq, Show)
data Entero = Zero | Succ Entero | Neg Entero deriving ( Eq, Show)
data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)
{-
Funcion: sumaNat
Descripcion: Recibe 2 naturales y los suma
-}
sumaNat :: Natural -> Natural -> Natural
sumaNat Cero m = m
sumaNat (S n) m = S (sumaNat n m)

{-
Funcion: multNat
Descripcion: Recibe 2 naturales y los multiplica

-}

multNat :: Natural -> Natural -> Natural
multNat Cero _ = Cero
multNat (S n) m = sumaNat m (multNat n m)

{-
Funcion: negativos
Descripcion: Recibe un entero y regresa su negativo
-}
negativos :: Entero -> Entero
negativos Zero = Zero
negativos (Neg n) = n
negativos (Succ n) = Neg (Succ n)

{-
Funcion: sumaEnt
Descripcion: Recibe 2 enteros y los suma
nota: esta y la funcion restaEnt las copie del archivo enteros.hs del classroom
-}
sumaEnt :: Entero -> Entero -> Entero
sumaEnt Zero (Succ m) = (Succ m)
sumaEnt Zero (Neg m) = (Neg m)
sumaEnt (Succ n) Zero = (Succ n)
sumaEnt (Neg n) Zero = (Neg n)
sumaEnt (Succ n) (Succ m) = Succ(sumaEnt n (Succ m))
sumaEnt (Neg n) (Neg m) = Neg (sumaEnt n m)
sumaEnt (Succ n) (Neg m) = if (Succ n)==m then Zero else restaEnt (Succ n) m
sumaEnt (Neg n) (Succ m) = if n==(Succ m) then Zero else restaEnt (Succ m) n

{-
Funcion: restaEnt
Descripcion: Recibe 2 enteros y los resta (fue copiada del classroom)
-}
restaEnt :: Entero -> Entero -> Entero
restaEnt (Succ n) Zero = (Succ n)
restaEnt (Neg n) Zero = (Neg n)
restaEnt Zero (Neg m) = m
restaEnt Zero (Succ m) = Neg (Succ m)
restaEnt (Succ n) (Succ m) = if ((Succ n) == (Succ m)) then Zero else if (mayorEnt (Succ n) (Succ m)) then restaEnt n m else Neg (restaEnt m n)
restaEnt (Neg n) (Neg m) = sumaEnt (Neg n) m
restaEnt (Succ n) (Neg m) = sumaEnt (Succ n) m
restaEnt (Neg n) (Succ m) = Neg (Succ (sumaEnt n m))

{-
Funcion: mayorEnt
Descripcion: Recibe 2 enteros y determina cual es mayorEnt
(copiada del classroom)
-}
mayorEnt :: Entero -> Entero -> Bool
mayorEnt (Succ n) Zero = True
mayorEnt Zero (Succ m) = False
mayorEnt (Neg n) Zero = False
mayorEnt Zero (Neg m) = True
mayorEnt (Neg n) (Succ m) = False
mayorEnt (Succ n) (Neg m) = True
mayorEnt (Succ n) (Succ m) = mayorEnt n m
mayorEnt (Neg n) (Neg m) = not (mayorEnt n m)