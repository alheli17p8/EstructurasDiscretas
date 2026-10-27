module EsParBit where
{-
Funcion: esParBit
Descripcion: Recibe un numero y determina si un numero entero es par o no
Uso: esParBit 4 -> True
-}
esParBit :: Int -> Bool
esParBit n = (n `mod` 2) == 0