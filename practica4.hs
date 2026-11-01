data Natural = Cero | S Natural deriving (Eq, Show)
data Entero = Zero | Succ Entero | Neg Entero deriving ( Eq, Show)
data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)

{-
Funcion: a_natural
Descripcion: Recibe un entero y lo convierte a su equivalente en la reprentacion Natural
Uso: a_natural 2 -> S (S Cero)
-}
a_natural :: Int -> Natural
a_natural 0 = Cero
a_natural n 
   |n > 0     = S (a_natural (n - 1))
   |otherwise = error "Solo se permiten numeros naturales (>=0)"

{-
Funcion: a_entero
Descripcion: Recibe un Natural y lo devuelvo en Entero
Uso: a_entero (S (S (S Cero)))
-}
a_entero :: Natural -> Int
a_entero Cero = 0
a_entero (S n) = 1 + a_entero n 