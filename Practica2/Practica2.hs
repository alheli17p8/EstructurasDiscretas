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

{-
Funcion: cashbackMonto
Descripcion:Recibe una cantidad de puntos y devuelve lo equivalente en dinero
Uso: cashbackMonto 264 0.10 -> 26.4
-}
cashbackMonto :: Float -> Float
cashbackMonto x = x * 0.10



{-
Funcion: minutosHoras
Descripcion: Convierte una cantidad de minutos a horas
Uso: minutosHoras 112 -> "1 hora y 52 minutos"

-}
minutosHoras :: Int -> (Int, Int)
minutosHoras x = (x `div` 60, x `mod` 60)

{- mod- lo que hace es dividir dos numeros y devolver el resto
-}

{-
Funcion: esEstafa
Descripcion: Verifica si en una compra el vendedor fue estafado
o no, dependiendo del cambio dado y su costo
Uso: esEstafa 100 200 100 0 -> True
-}
esEstafa :: Double -> Double -> Double -> Double -> Bool
esEstafa costo billeteGrande billeteJusto cambioDevuelto = 
    if billeteJusto == costo  
    then billeteGrande - costo > cambioDevuelto
    else False



{-
Funcion: esDescendente
Descripcion: Verifica si los 4 valores ingresados son descendentes o no
Uso: esDescendente 10 9 8 7 -> True

-}

esDescendente :: Double -> Double -> Double -> Double -> Bool
esDescendente x y z w =
    if x > y
    then (if y > z
            then z>w
            else False)
    else False

{-
Funcion: imc
Descripcion: Divide el peso entre la estatura en metros^2, dando el imc ya sea bajo, normal, sobrepeso u obesidad
Uso: imc 53.5 161 -> normal
-}

{-
Parametros segun la OMS:
IMC	            Resultado
menos de 18	bajo
de 18 a 25	normal
de 25 a 30	sobrepeso
30 o más	    obesidad

-}

imc :: Double -> Double -> String
imc kg estatura  = 
    if kg / (estatura ^ 2) < 18
    then "bajo"
    else if kg / (estatura ^ 2) < 25
        then "normal"
        else if kg / (estatura ^ 2) < 30
            then "sobrepeso"
            else "obesidad"

{-
Funcion: hipotenusa
Descripcion: Calcula la hipotenusa de un triangulo
Uso: hipotenusa 9.0 12.0 -> 15.0  

nota- sqrt sirve para sacar la raiz cuadrada
-}

hipotenusa :: Float -> Float -> Float
hipotenusa b h = sqrt ( b ^ 2 + h ^ 2 )

{-
Funcion: pendiente
Descripcion: Calcula la pendiente de la recta que pasa por dos puntos
Uso: (3.0, 2.0) (7.0, 8.0) -> 1.5
-}
pendiente :: (Float, Float) -> (Float, Float) -> Float
pendiente (x1, y1)  (x2, y2) = (y2 - y1) / (x2 - x1)

{-
Funcion: distanciaPuntos
Descripcion: Calcula la distancia entre dos puntos
Uso: distanciaPuntos (2.0 , 1.0) (5.0 , 5.0) -> 5
-}
distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float
distanciaPuntos (x1, y1) (x2, y2) =
    sqrt ((x2 - x1)^2 + (y2- y1)^2)