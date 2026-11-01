data Natural = Cero | S Natural deriving (Eq, Show)
data Entero = Zero | Succ Entero | Neg Entero deriving ( Eq, Show)

{-
Funcion: a_entero
Descripcion: Recibe un Natural y lo devuelvo en Entero
Uso: a_entero (S (S (S Cero))) -> 3
-}
a_entero :: Natural -> Int
a_entero Cero = 0
a_entero (S n) = 1 + a_entero n 
