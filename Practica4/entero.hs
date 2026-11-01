import Auxiliar
{-
Funcion: a_entero
Descripcion: Recibe un Natural y lo devuelvo en Entero
Uso: a_entero (S (S (S Cero))) -> 3
-}
a_entero :: Natural -> Int
a_entero Cero = 0
a_entero (S n) = 1 + a_entero n 

{-
Funcion: multiEnt
Descripcion: Recibe dos enteros y los multiplica
Uso: multiEnt ( Neg ( Succ ( Succ ( Succ ( Succ Zero ) ) ) ) ) ( Succ (
Succ Zero ) ) -> Neg ( Succ ( Succ ( Succ ( Succ ( Succ ( Succ ( Succ ( Succ Zero ) )
) ) ) ) ) )
-}
multiEnt :: Entero -> Entero -> Entero
multiEnt Zero _ = Zero
multiEnt (Succ n) m = sumaEnt m (multiEnt n m)
multiEnt (Neg n) m = negativos (multiEnt n m)