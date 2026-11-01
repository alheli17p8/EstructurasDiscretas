import Auxiliar


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
Funcion: potenciaNat
Descripcion: Reibe 2 naturales y da la potencia del primero elevado al segundo
Uso:potencia ( S ( S ( S Cero ) ) ) ( S ( S Cero ) ) -> S ( S ( S ( S ( S ( S ( S ( S ( S Cero ) ) ) ) ) ) ) )
-}
potenciaNat :: Natural -> Natural -> Natural
potenciaNat x Cero = S Cero
potenciaNat b (S n) = multNat b (potenciaNat b n)

{-
Funcion: facNat
Descripcion: Recibe un natural y regresa su factorial
Uso: facNat (S (S (S Cero))) -> S (S (S (S (S (S Cero)))))
-}
facNat :: Natural -> Natural
facNat Cero = S Cero
facNat (S n) = multNat (S n) (facNat n)

