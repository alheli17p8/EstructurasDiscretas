{-Reconversion
Para hacer esta funcion ocuparemos los tipo de datos
Double que representan números reales con parte decimal
con mayor precision, exactitud y con un rango bastante mas amplio
que el del tipo Float
-}

{-
Funcion: Reconversion
Descripcion: Realiza una reconversión monetaria quitándole tres
ceros al valor ingresado.
Uso: reconversion 1000 -> 1

-}
reconversion :: Double -> Double
reconversion x = x / 1000

{-
Funcion: cashback
Descripcion: Calcula el 10% de cashback de un monto dado
Uso: cashback 2545 -> 254.5
-}

cashback :: Float -> Float
cashback x = x * 0.10
