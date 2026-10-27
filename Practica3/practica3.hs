{-
Tipo de dato que usaremos para representar el plazo de inversion,
puede darse en dias o en meses
-}

data Plazo = Dias Double | Meses Double

{-
Funcion: aDias
Descripcion: Convierte el plazo a dias
Uso: Es necesaria para la funcion cetes
-}
aDias :: Plazo -> Double
aDias (Dias d) = d
aDias (Meses m) = 
    if m == 1 
        then 28
    else if m == 6 
            then 182
            else if m == 12 then 364
            else 0

{-
Funcion: tasa
Descripcion: Da la tasa de interes bruto anual, segun la cantidad de dias,
aunque solo acepta 3 cantidades de dias especificos (28, 182 y 364)
Uso: Se ocupa en la funcion cetes
-}

tasa :: Double -> Double
tasa d = if d== 28 then 0.0609
            else if d == 182 then 0.0691
                    else if d == 364 then 0.0744
                            else 0

{-
Funcion: cetes
Descripcion: Recibe el valor inicial y plazo y regresa el valor final ya aplicando la tasa segun el plazo seleccionado
Uso: cetes 100 (Dias 28) -> 100.4
y tambien cetes 100 (Meses 1) -> 100.4
Formula : VF = VI * (1 + i * t / 360)
-}
cetes :: Double -> Plazo -> Double
cetes vi plazo = vi * (1 + t * p / 360)
    where
        p = aDias plazo
        t = tasa p
{-
Funcion: mensajeCetes
Descripcion: Recibe el monto inicial y el plazo (en dias o meses) y regresa un mensaje con el plazo
de la inversion, el rendimiento bruto obtenido y el monto total acumulado al finalizar el plazo
Uso: mensajeCetes 100 (Dias 28)
-}
mensajeCetes :: Double -> Plazo -> String
mensajeCetes vi plazo =
    "Despues de " ++ show (aDias plazo) ++ " dias obtuve " ++ show (cetes vi plazo - vi) ++ " de rendimiento bruto sin asumir ningun riesgo crediticio. " ++ "El monto total de mi inversion es de " ++ show (cetes vi plazo) ++ "."

{-
Funcion: negativos
Descripcion: Recibe una lista de numeros y regresa cuantos de ellos son negativos
Uso: negativos [-1, 2, 4, 6, -4] -> 2
-}
negativos :: [Int] -> Int
negativos [] = 0
negativos (x:xs) = if x < 0
                    then 1 + negativos xs 
                    else negativos xs

