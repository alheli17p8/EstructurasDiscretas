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
reconversion :: Float -> Float
reconversion x = x / 1000