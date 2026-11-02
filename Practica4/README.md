# Practica 4

## Objetivo
El objetivo de esta practica es familiarizarnos con el tipo de notación Suc n, y sus derivadas, de tal manera que seamos capaces de hacer códigos con ellas.

## Sobre la Practica
Para hacer esta practica me tomo aprox unas 4 hr, que fueron intermitentes, la verdad lo que mas se complico fue lograr pasar bien el tipo de notación. Para mi el ejercicio que mas me gusto fue el de a_entero, ya que este me sirvió mucho para el resto de la practica, asi ya no tuve que contar manualmente cuantos Suc daban para corroborar las funciones.

## Análisis entero.hs

### ¿Cuál es la diferencia de las operaciones implementadas en ambos archivos? ¿Como se manejan todos los casos en cada implementación?
Para empezar el que esta en el repositorio solo implementa dos funciones, mientras que el del classroom necesita 3.Ademas que el del repo se ve mucho mas compacto al no tener tantas funciones,notemos que en el repo usa Zero y Succ, mientras que en el del classroom usa Cero y Succ.
También en el archivo del classroom los casos son mas explícitos viene un caso para los positivos y aparte otro para los que tengan Neg, ademas de usar if para ver si se cancelan y para hacer la resta de dos enteros usa el mayorEnt para decidir el signo.
Por otro lado en el repo se agrupan los casos base y recursivos, ademas que en la resta no compara nada, solo quita un Succ a cada lado hasta que uno llega a Zero y ahi el caso base decide el signo.


## ¿ Por que se tiene implementada la operación mayorEnt en el archivo enteros.hs?
Para poder determinar el signo del resultado, asi en caso de que el primero sea positivo y mayor,el resultado sera positivo, si es negativo y mayor, el resultado sera negativo, si no el resultado tomara el signo del segundo numero.

## Si pudieras quedarte con una sola implementación. ¿Cual seria? Justifica tu respuesta. 
La que esta en el classroom, principalmente por que la función mayorEnt es util para otras funciones, ademas es mas fácil de entender por que tiene cada caso escrito de manera explicita.
